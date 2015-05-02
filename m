X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5963" "Saturday" "2" "May" "2015" "21:18:23" "+0800" "Wen Xu" "hotdog3645@gmail.com" "<CADOUnBKNwkU=AMukgCB3N=SWaDzKv8DTb8Z-NmphK=GB+eNM6A@mail.gmail.com>" "157" "Re: [oss-security] CVE request for a fixed bug existed in all versions of linux kernel from KeenTeam" nil nil nil "5" "2015050213:18:23" "[oss-security] CVE request for a fixed bug existed in all versions of linux kernel from KeenTeam" (number mark "        hotdog3645@g May  2  157/5963  " thread-indent "\"Re: [oss-security] CVE request for a fixed bug existed in all versions of linux kernel from KeenTeam\"\n") "<20150502125329.GA6820@openwall.com>" ("<CADOUnBK=jW36v6X2Q6EXLL35Wxqait7cWJR-adCFwRaMJtucPQ@mail.gmail.com>" "<20150502125329.GA6820@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32185 invoked by uid 550); 2 May 2015 13:18:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32167 invoked from network); 2 May 2015 13:18:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=gsHUsKakGW7ZrlygO2wp///SKMNSeFXxzz80IrfUMyE=;
        b=oz6043d2whFdEp11kdAlsbGOBQAodxiUjtimHyQ3SHAwj/posz8DlBWCezZNaA0r3V
         yvln6oBi7QLJCMJpGPTb4whOSHF6TG/Xcgh8tHeFe8uCrnUMHhkW8TodKF52roXYEYBi
         LE6p86AcMKRVfASTg2yjfCqVjS77SigwXXWtUl7W5oyl/7PXqi4ZHocVg89o2h3BbNXb
         c2bLys10bBp3wuHwKw1Xr+F356Ir80hgPXSJpgzf9o0MzJL49O3AVDjiD0e5X3exJICO
         M1zTZzIzQt7a9EanpSt2m8Yf62fZPf1Oh9r3zh9RagrhNyFtIgwpEfse/CRQsTOqOzir
         wSdA==
X-Received: by 10.42.50.81 with SMTP id z17mr19323634icf.57.1430572723312;
 Sat, 02 May 2015 06:18:43 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150502125329.GA6820@openwall.com>
References: <CADOUnBK=jW36v6X2Q6EXLL35Wxqait7cWJR-adCFwRaMJtucPQ@mail.gmail.com>
 <20150502125329.GA6820@openwall.com>
Message-ID: <CADOUnBKNwkU=AMukgCB3N=SWaDzKv8DTb8Z-NmphK=GB+eNM6A@mail.gmail.com>
Content-Type: multipart/alternative; boundary=90e6ba2124d3ff9b790515192a44
Cc: oss-security@lists.openwall.com, Vasily Kulikov <segoon@openwall.com>
Date: Sat, 2 May 2015 21:18:23 +0800
From: Wen Xu <hotdog3645@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request for a fixed bug existed in all
 versions of linux kernel from KeenTeam
To: Solar Designer <solar@openwall.com>

--90e6ba2124d3ff9b790515192a44
Content-Type: text/plain; charset=UTF-8

Hi, Alexander,

Really sorry, what you said is all right. Actually we've successfully seen
the potential that we can take advantage of this bug to achieve privilege
escalation (root) on android (both 32bit/64bit)(>=4.3), even on android
64bit, the list poison value is 0x200200 which can be mapped ;) That's why
we think this vulnerability is high-threat. For linux PC, the normal user
does not have the privilege to create a icmp(ping) socket, I agree with
your analysis including on PC, the dead value is 0xdead000000000000. And
also it does not exist in some versions and distributions, I write the mail
in a hurry and do not explain it in detail ;) Sorry for my mistakes again.
So as you said MITRE could give us a CVE ID? That's nice, so where could I
get informed when it is given? ;)

Wen Xu of KeenTeam


2015-05-02 20:53 GMT+08:00 Solar Designer <solar@openwall.com>:

> Hi,
>
> I expect MITRE will assign a CVE ID.
>
> On Sat, May 02, 2015 at 06:31:12PM +0800, Wen Xu wrote:
> > Recently we found a use-after-free bug which can lead to kernel arbitrary
> > execution in Linux kernel.
> > The bug was reported to the linux security group and it has been
> fixed.(commit
> > a134f083e79f ("ipv4: Missing sk_nulls_node_init() in ping_unhash()"). You
> > can find the fix commit here:
> >
> https://github.com/torvalds/linux/commit/6c3c1eb3c35e8856d6dcb01b412316a676f58bbe
>
> More specifically:
>
>
> https://github.com/torvalds/linux/commit/a134f083e79fb4c3d0a925691e732c56911b4326
>
> > The bug exists in all versions of linux kernel.
>
> "All" as in "all upstream versions that contain the feature at all
> (3.0+), and likely some backports".  It appears the bug got introduced
> in Vasily's forward-porting of the functionality to newer 2.6.x kernels
> before it finally got merged in this thread:
>
> https://lkml.org/lkml/2011/5/13/382
>
> Vasily's patch against RHEL5 kernels that we still use in Owl looks
> unaffected.  It has:
>
> +               write_lock_bh(&ping_table.lock);
> +               sk_del_node_init(sk);
> +               sock_put(sk);
>
> where sk_del_node_init() calls sk_node_init(), which does
> "node->pprev = NULL;"  I'd like Vasily to double-check this, though.
>
> > And the credit is to Wen Xu and wushi of KeenTeam.
>
> Cool!  How did you find this bug?  Did/do you actively search for more
> bugs with usage of these and similar kernel interfaces?  (I think
> someone should!)
>
> Do you have a reproducer (non-weaponized exploit) that you could post?
>
> Is my understanding correct that to trigger the bug you need direct
> access to a ping socket, not indirect via the ping utility (if that is
> enabled at all)?  By default, access to ping sockets is disabled:
>
>         /*
>          * Sane defaults - nobody may create ping sockets.
>          * Boot scripts should set this to distro-specific group.
>          */
>         net->ipv4.ping_group_range.range[0] = make_kgid(&init_user_ns, 1);
>         net->ipv4.ping_group_range.range[1] = make_kgid(&init_user_ns, 0);
>
> and distros are supposed to enable it selectively - e.g., on Owl we
> enable it for group _icmp only:
>
> _icmp:x:111:
>
> # Range of group IDs permitted to access non-raw (datagram) ICMP sockets.
> #
> # These are an Openwall extension to the Linux kernel.  Our ping(1)
> program is
> # able to use these sockets, which enables it to start and run without
> # requiring root privileges nor a capability.  Access to these sockets is
> # restricted at all primarily in order to reduce direct exposure of the
> added
> # kernel code to potential attacks.  In other words, we gain privilege
> # separation due to keeping this access restricted and installing ping(1)
> SGID.
> #
> net.ipv4.ping_group_range = 111 111
>
> and install ping as:
>
> -rwx--s--x 1 root _icmp 34336 Aug 14  2012 /bin/ping
>
> So there's a layer of privsep here.
>
> I'd like us to learn something useful from this.  Maybe it's "don't add
> more code to the kernel, even if it's for security" - but we knew that,
> and this is why there's the layer of privsep mentioned above (to make
> things no worse than before even in presence of bugs in the new code).
>
> Are there distros that enable access to ping sockets for all users by
> default?
>
> Then, perhaps we should harden the poison pointers to be either below
> typical mmap_min_addr or in an unmapped portion of kernel space?  Do I
> understand correctly that, short of possible mmap_min_addr bypasses in
> general (if relevant), this would mitigate the issue?
>
> Right now, they are:
>
> /*
>  * These are non-NULL pointers that will result in page faults
>  * under normal circumstances, used to verify that nobody uses
>  * non-initialized list entries.
>  */
> #define LIST_POISON1  ((void *) 0x00100100 + POISON_POINTER_DELTA)
> #define LIST_POISON2  ((void *) 0x00200200 + POISON_POINTER_DELTA)
>
> I'd change them to e.g.:
>
> #define LIST_POISON1  ((void *) 0x00000100 + POISON_POINTER_DELTA)
> #define LIST_POISON2  ((void *) 0x00000200 + POISON_POINTER_DELTA)
>
> where POISON_POINTER_DELTA would normally be 0 on 32-bit x86, so they'd
> be below mmap_min_addr on that arch.  Meanwhile, a mitigation appears to
> be to set mmap_min_addr higher than 0x00200200 (slightly over 2 MB), but
> that's not great as it leaves significantly less ASCII-armored space for
> libraries.
>
> BTW, it appears that on x86_64 POISON_POINTER_DELTA is
> 0xdead000000000000 by default, which I guess would hit an unmapped page
> even with the current LIST_POISON2 value?  If so, is the bug at worst a
> kernel Oops on x86_64 unless someone changed POISON_POINTER_DELTA in
> their build?
>
> config ILLEGAL_POINTER_VALUE
>         hex
>         default 0 if X86_32
>         default 0xdead000000000000 if X86_64
>
> Regardless, as a supporter of that kernel patch, I am embarrassed!
>
> Thanks,
>
> Alexander
>

--90e6ba2124d3ff9b790515192a44--
