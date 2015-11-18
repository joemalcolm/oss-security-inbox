X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2144" "Wednesday" "18" "November" "2015" "07:40:58" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151118124058.C6B0B3320C3@smtpvbsrv1.mitre.org>" "55" "[oss-security] Re: CVE request - Linux kernel - Unix sockets use after free - peer_wait_queue prematurely freed" nil nil nil "11" "2015111812:40:58" "[oss-security] Re: CVE request - Linux kernel - Unix sockets use after free - peer_wait_queue prematurely freed" (number mark "U       cve-assign@m Nov 18   55/2144  " thread-indent "\"[oss-security] Re: CVE request - Linux kernel - Unix sockets use after free - peer_wait_queue prematurely freed\"\n") "<225451526.7843702.1447833457143.JavaMail.zimbra@redhat.com>" ("<225451526.7843702.1447833457143.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25991 invoked by uid 550); 18 Nov 2015 12:41:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25973 invoked from network); 18 Nov 2015 12:41:10 -0000
From: cve-assign@mitre.org
To: wmealing@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <225451526.7843702.1447833457143.JavaMail.zimbra@redhat.com>
Message-Id: <20151118124058.C6B0B3320C3@smtpvbsrv1.mitre.org>
Date: Wed, 18 Nov 2015 07:40:58 -0500 (EST)
Subject: [oss-security] Re: CVE request - Linux kernel - Unix sockets use after free - peer_wait_queue prematurely freed

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://forums.grsecurity.net/viewtopic.php?f=3&t=4150

> https://lkml.org/lkml/2014/5/15/532
> eventpoll __list_del_entry corruption

> https://lkml.org/lkml/2013/10/14/424
> Re: epoll oops.

> http://www.spinics.net/lists/netdev/msg318826.html
> [PATCH net] af_unix: don't poll dead peers

> https://lkml.org/lkml/2015/9/13/195
> List corruption on epoll_ctl(EPOLL_CTL_DEL)
> AF_UNIX socket

> https://groups.google.com/forum/#!topic/syzkaller/3twDUI4Cpm8
> Use-after-free in ep_remove_wait_queue

> https://bugzilla.redhat.com/show_bug.cgi?id=1282688
> Unix sockets use after free - peer_wait_queue prematurely freed
>
> A flaw was found in the Linux kernel's implementation of Unix sockets(AF_UNIX). A
> server polling for data coming from a client socket may put the peer
> socket on a wait list. This peer may close the connection making
> the reference on the wait list no longer valid. A determined attacker
> could poison this memory and lead to bypassing permissions on a the socket,
> and packets being injected into the stream. This may also panic the machine.

Use CVE-2013-7446.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWTHAWAAoJEL54rhJi8gl5RAQQAKe8eoD2rfjGta3FfDkU9RUU
62Qx2Cdvggp2Z921D9KYzOnBBzEC0D5FkZDLBPEbrZQxrhIW4i6qdsEkJG5JvED6
cipsXz9VoIJtDhmfl2t16OmveEOk2Cu6U1qlJ3dnbXxLl3bH/Q/iP0fm18nSGR/Z
3NexudadJUobLvxtjbaama+s3J5OYa2TuXrAhBut9+gkACHvJW7Rt+25jTu8ziCD
ndJ+0UD9HOiJ/eJsXSyJ7MNvcVYdJdj8YkbWdEJPODpLyTEDGZ5eKIPbhwrImP/Q
7rXKqQXUe5mEiklwxKOCHdTjRbFRVajHpqMWj0nobXM+mCFNxzsIfzLQoeFSQv+I
hSNGj0R6Hi6NtIioKq4m3P3M9Vl7ZReZx+RquQvKXF3AAm5BkhnOrPkQZtvrEXV6
x5jDRxixLkQsvskwNevTfuwBQxEkZSl0kbvKTkDLudpvFZFDqv8aa8Qi2tOMH4ZP
Sh7y6v+TvNhaDs/VMb5LQRG2teI2b87lqaygSyBjQJA3F2o+zJWxSd1iR5hH/RR9
XVX0IdMX+4kxO2XDMBava9xmllF+K4ipEYiJKFWkng1zQVNKzoShu8h1CRQXVZ/6
Hw+LUrzN8eyf7O3uB3VyMOWqRBjXBNygoVjSKU8KMcCJc7xW3M0uYIuZRybrWmPA
zwOIRg/G/qOu1IOqKBzk
=lWXE
-----END PGP SIGNATURE-----
