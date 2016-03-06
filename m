X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1940" "Sunday" "6" "March" "2016" "16:33:46" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160306213346.BF6846C0559@smtpvmsrv1.mitre.org>" "57" "[oss-security] Re: Aufs Union Filesystem Privilege Escalation In User Namespaces" nil nil nil "3" "2016030621:33:46" "[oss-security] Re: Aufs Union Filesystem Privilege Escalation In User Namespaces" (number mark "U       cve-assign@m Mar  6   57/1940  " thread-indent "\"[oss-security] Re: Aufs Union Filesystem Privilege Escalation In User Namespaces\"\n") "<80fa3a77-b8df-722e-0e9f-a0af21bfced3@halfdog.net>" ("<80fa3a77-b8df-722e-0e9f-a0af21bfced3@halfdog.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26096 invoked by uid 550); 6 Mar 2016 21:34:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26040 invoked from network); 6 Mar 2016 21:33:58 -0000
From: cve-assign@mitre.org
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
In-Reply-To: <80fa3a77-b8df-722e-0e9f-a0af21bfced3@halfdog.net>
Message-Id: <20160306213346.BF6846C0559@smtpvmsrv1.mitre.org>
Date: Sun,  6 Mar 2016 16:33:46 -0500 (EST)
Subject: [oss-security] Re: Aufs Union Filesystem Privilege Escalation In User Namespaces

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://www.halfdog.net/Security/2016/AufsPrivilegeEscalationInUserNamespaces/

> AUFS Over Fuse: Loss of Nosuid

> Those files can be exposed
> using aufs including the problematic SUID properties.

>     Mount aufs on top of fuse
>     Execute the SUID binary via aufs from outside the namespace

> In my optionion the workarounds should be to restrict access to fuse
> also only to the mount namespace where it was created.

> https://sourceforge.net/p/aufs/mailman/message/34864744/

>> test mnt_ns in open(2) for fuse branch

Use CVE-2016-2853.


> AUFS Xattr Setgid Privilege Escalation

> Due to inheritance of Posix ACL information (xattrs) when aufs is
> copying files and not cleaning those additional and unintended ACL
> attribues, SGID directories may become user writable

> https://sourceforge.net/p/aufs/mailman/message/34864744/

>> copy-up resets ACL

Use CVE-2016-2854.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW3KG9AAoJEL54rhJi8gl5uk0P/j2vNmJ1Q5x3eWMfnlfoobCr
+GjgC7LPHk6Y1t3P1Rvkd1+Di7oqABso7FnZrHmfRuCk8txuzxOx/nAhQ7Jw8ROJ
607J36pYSWoCvkOo6tGdrisfaqDT+z0RmVVw8jhecZUE4n8m2BwLcHhMVHBehoDp
nOhzwMvxMNjNWw+qhVPFFOUM2gOxv1NQFdQ9YBflMgszb+8LW7AdTQgHrKuwCose
2ynF0JwbeVdtIcOPyqVlUNJOvqclOVEPQOyd7Y6P1v4ykDPhfI8pgObyLU9Kt6vL
MY1lCmKGfkuM0/nGlTlvF5jhKqUPJeBzVsjnY7/uI2/zxDSboTsFGCaOx8nbL3Ut
diKtUDaKmQwn8Tm00JPWBm7cFPVdtGsQTfosfbbZC4rjerzV831dh69zTA+hn79k
nrH9QeRGPSZVh/sl3WzP2QvlWNoFyBUPUrb4Q+oOS8ttC5cnOwuynHyva951ZBC0
B9223w347nise9fclv3tYr1XIRV/o0wmn6N39aQUdNOhplNGu5lqflwC/rIz2rYB
eubUoXGBsBB/dSBSLEFhGt2oQZVqtEH9b0FjFpSI0jpKwPR0U2Mt/OKGPnlRznvI
20w2wZBh4nxtsxSOcTP8MRqPwWgo695vdKviDPXLd7JXQ8v5ctozY1RypVKPJus8
8E6zCgbi02SxlmhHG+5l
=6N7V
-----END PGP SIGNATURE-----
