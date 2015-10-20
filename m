X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2633" "Tuesday" "20" "October" "2015" "13:19:37" "+0200" "Adam Maris" "amaris@redhat.com" "<56262349.9030805@redhat.com>" "72" "[oss-security] CVE request: crash when attempt to garbage collect an uninstantiated keyring" nil nil nil "10" "2015102011:19:37" "[oss-security] CVE request: crash when attempt to garbage collect an uninstantiated keyring" (number mark "U       amaris@redha Oct 20   72/2633  " thread-indent "\"[oss-security] CVE request: crash when attempt to garbage collect an uninstantiated keyring\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30704 invoked by uid 550); 20 Oct 2015 11:19:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30681 invoked from network); 20 Oct 2015 11:19:51 -0000
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
From: Adam Maris <amaris@redhat.com>
Message-ID: <56262349.9030805@redhat.com>
Date: Tue, 20 Oct 2015 13:19:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Subject: [oss-security] CVE request: crash when attempt to garbage collect an uninstantiated
 keyring

Hello,

I'd like to request CVE for the following issue.

------------------------------------------------------------

The following sequence of commands:

     i=`keyctl add user a a @s`
     keyctl request2 keyring foo bar @t
     keyctl unlink $i @s

tries to invoke an upcall to instantiate a keyring if one doesn't already
exist by that name within the user's keyring set. However, if the upcall
fails, the code sets keyring->type_data.reject_error to -ENOKEY or some
other error code.  When the key is garbage collected, the key destroy
function is called unconditionally and keyring_destroy() uses list_empty()
on keyring->type_data.link - which is in a union with reject_error.
Subsequently, the kernel tries to unlink the keyring from the keyring names
list - which oopses like this:

	BUG: unable to handle kernel paging request at 00000000ffffff8a
	IP: [<ffffffff8126e051>] keyring_destroy+0x3d/0x88
	...
	Workqueue: events key_garbage_collector
	...
	RIP: 0010:[<ffffffff8126e051>] keyring_destroy+0x3d/0x88
	RSP: 0018:ffff88003e2f3d30  EFLAGS: 00010203
	RAX: 00000000ffffff82 RBX: ffff88003bf1a900 RCX: 0000000000000000
	RDX: 0000000000000000 RSI: 000000003bfc6901 RDI: ffffffff81a73a40
	RBP: ffff88003e2f3d38 R08: 0000000000000152 R09: 0000000000000000
	R10: ffff88003e2f3c18 R11: 000000000000865b R12: ffff88003bf1a900
	R13: 0000000000000000 R14: ffff88003bf1a908 R15: ffff88003e2f4000
	...
	CR2: 00000000ffffff8a CR3: 000000003e3ec000 CR4: 00000000000006f0
	...
	Call Trace:
	 [<ffffffff8126c756>] key_gc_unused_keys.constprop.1+0x5d/0x10f
	 [<ffffffff8126ca71>] key_garbage_collector+0x1fa/0x351
	 [<ffffffff8105ec9b>] process_one_work+0x28e/0x547
	 [<ffffffff8105fd17>] worker_thread+0x26e/0x361
	 [<ffffffff8105faa9>] ? rescuer_thread+0x2a8/0x2a8
	 [<ffffffff810648ad>] kthread+0xf3/0xfb
	 [<ffffffff810647ba>] ? kthread_create_on_node+0x1c2/0x1c2
	 [<ffffffff815f2ccf>] ret_from_fork+0x3f/0x70
	 [<ffffffff810647ba>] ? kthread_create_on_node+0x1c2/0x1c2
Note the value in RAX. This is a 32-bit representation of -ENOKEY.

The solution is to only call ->destroy() if the key was successfully
instantiated.

Upstream patch:

http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=ce1fad2740c648a4340f6f6c391a8a83769d2e8c

Reported by: Dmitry Vyukov
Fixed by: David Howells

References:

https://bugzilla.redhat.com/show_bug.cgi?id=1272371
https://bugzilla.redhat.com/show_bug.cgi?id=1272172

------------------------------------------------------
Note that provided commit contains two fixes, although the second one is 
not a security fix.

Thanks!

-- 
Adam Mariš / Red Hat Product Security

