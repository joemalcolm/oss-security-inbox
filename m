X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1841" "Monday" "11" "January" "2016" "12:43:11" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160111174311.7B06D6C00D9@smtpvmsrv1.mitre.org>" "42" "[oss-security] Re: CVE Request: Linux kernel - SCTP denial of service during heartbeat timeout functions." nil nil nil "1" "2016011117:43:11" "[oss-security] Re: CVE Request: Linux kernel - SCTP denial of service during heartbeat timeout functions." (number mark "U       cve-assign@m Jan 11   42/1841  " thread-indent "\"[oss-security] Re: CVE Request: Linux kernel - SCTP denial of service during heartbeat timeout functions.\"\n") "<993560327.6397475.1452519141475.JavaMail.zimbra@redhat.com>" ("<993560327.6397475.1452519141475.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17460 invoked by uid 550); 11 Jan 2016 17:43:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17412 invoked from network); 11 Jan 2016 17:43:23 -0000
From: cve-assign@mitre.org
To: wmealing@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <993560327.6397475.1452519141475.JavaMail.zimbra@redhat.com>
Message-Id: <20160111174311.7B06D6C00D9@smtpvmsrv1.mitre.org>
Date: Mon, 11 Jan 2016 12:43:11 -0500 (EST)
Subject: [oss-security] Re: CVE Request: Linux kernel - SCTP denial of service during heartbeat timeout functions.

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> A case can occur when sctp_accept() is called by the user during
> a heartbeat timeout event after the 4-way handshake.  Since
> sctp_assoc_migrate() changes both assoc->base.sk and assoc->ep, the
> bh_sock_lock in sctp_generate_heartbeat_event() will be taken with
> the listening socket but released with the new association socket.
> The result is a deadlock on any future attempts to take the listening
> socket lock.

> Ensure the socket taken is also the same one that is released by
> saving a copy of the socket before entering the timeout event
> critical section.

> https://bugzilla.redhat.com/show_bug.cgi?id=1297389
> http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/net/sctp/sm_sideeffect.c?id=635682a14427d241bab7bbdeebb48a7d7b91638e

Use CVE-2015-8767.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWk+k+AAoJEL54rhJi8gl5nzEP/R0YgH6KMRbLsizjooACajGq
DEFdPkZnEKKUY846dC5wE7FOv9REuXCqAxszvg9M5r+Oje7riOKJl5pnFSvC5abx
zgUWCjdKgOOZE74YKfsNPd6EVh6qmhPvJ7y5/hNW6zYqLOEJhqlk9Gkfqmx/0O2A
941849R/aPvsZ4Wcg/MvmEk7kuol8LcufauXAQyUWc5cAFnwHPtsyvlpLFcoOU30
QwYqTPVx2NzOuYN/aoJlIZyAzcuacp/RLrBW2VOL6fOA8FNFexDf0G0yWM5xSbab
DRPqY/eNx1iOzQUNFOi8tVdc//HrQXemM3vIdesJc2/BVWiNslhTdkc9m7IRou0i
reBUqqqjkBaHjzN6dHYCqw8O1H9Nsdv0Z8nKAzzoaGSO4TuXlxj/sjbbolfQpg2B
0QUhbkB977ARyxrUjnstL9jyBoXxJGLanSByq7imsXBjSCWyhs9k3BkUsjwavE8J
thNB1ULSn4KbeGHrIM1jj3qAVIvQtwa+cUWp0CXHPN+oevH+kUCGJK2fpb+t9g1b
s3w4uLyXeMEoHKjn1jrwO4jl8L17f7uGMUXpxPV0bWuLg182V4zvf2WekfvzKGgB
McFeoNTpUCvg8lM5eja0rR5GjAyR1zJR2xc/zQsDBmFMITJcmOk7ZXYTbMuxfu3c
/IrELQSgNN9Svqk1Rjyg
=CDOr
-----END PGP SIGNATURE-----
