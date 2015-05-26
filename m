X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1837" "Tuesday" "26" "May" "2015" "02:18:53" "-0400" "Wade Mealing" "wmealing@redhat.com" "<435842836.3987672.1432621133397.JavaMail.zimbra@redhat.com>" "45" "[oss-security] CVE request: vulnerability in the kernel tty subsystem." nil nil nil "5" "2015052606:18:53" "[oss-security] CVE request: vulnerability in the kernel tty subsystem." (number mark "        wmealing@red May 26   45/1837  " thread-indent "\"[oss-security] CVE request: vulnerability in the kernel tty subsystem.\"\n") "<926476450.3946717.1432609079414.JavaMail.zimbra@redhat.com>" ("<926476450.3946717.1432609079414.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27969 invoked by uid 550); 26 May 2015 06:19:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27951 invoked from network); 26 May 2015 06:19:06 -0000
Message-ID: <435842836.3987672.1432621133397.JavaMail.zimbra@redhat.com>
In-Reply-To: <926476450.3946717.1432609079414.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.64.51.240]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - GC43 (Mac)/8.0.6_GA_5922)
Thread-Topic: CVE request: vulnerability in the kernel tty subsystem.
Thread-Index: Q0TdDZxuGNj9dL+QUSECJV6PkHbuvQ==
Cc: cve-assign@mitre.org
Date: Tue, 26 May 2015 02:18:53 -0400 (EDT)
From: Wade Mealing <wmealing@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: vulnerability in the kernel tty subsystem.
To: OSS Security List <oss-security@lists.openwall.com>

Gday,

An issue was discovered in the linux kernel's tty subsystem handling during shutdown. The
flaw was that a new tty thread could hold a reference to the ldisc lock used during
the shutdown phase in the original thread and create a deadlock.

This race occurs on hangup of tty.  It races and hangs on ldsem_down_write on a semaphore 
that is being aquired by a new reader(CPU 1).  The new reader/writer is sleeping
in ldsem_down_read() and the hangup is sleeping in ldsem_down_write().

The deadlock can occur under these conditions.

   CPU 0                                   |  CPU 1
					   |
_raw_spin_unlock_irq                       | _raw_spin_unlock_irq+0x24/0x26
down_write_failed                          | down_read_failed+0xe3/0x1b9
ldsem_down_write <-- here                  | ldsem_down_read  <--- here
tty_ldisc_lock_pair_timeout                | tty_ldisc_ref_wait
tty_ldisc_lock_pair_timeout                | tty_write
tty_ldisc_hangup                           | redirected_tty_write
__tty_hangup                               | tty_write
disassociate_ctty                          | o_loop_readv_writev
do_exit                                    | do_readv_writev
                                           | SyS_writev


This section of code was re-written upstream by creating a read/write semaphore to
specially to handle ldisc, ldsem ( 4898e640caf03fdbaf2122d5a33949bf3e4a5b34 ).  

This issue was reproduced on a system under load when testing the reproducer for
CVE-2014-0196, on a system that already has this issue fixed.  No root permissions
are required to recreate the deadlock.

I would like to request a CVE for this issue.

Thanks,

Wade Mealing
Red Hat Product Security


References:

https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2014-0196
https://bugzilla.redhat.com/show_bug.cgi?id=1218879
