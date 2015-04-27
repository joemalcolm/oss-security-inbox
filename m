X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1282" "Monday" "27" "April" "2015" "01:53:24" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150427055324.B67FD42E03C@smtpvbsrv1.mitre.org>" "35" "[oss-security] Re: CVE request: Dovecot remote DoS on TLS connections" nil nil nil "4" "2015042705:53:24" "[oss-security] Re: CVE request: Dovecot remote DoS on TLS connections" (number mark "        cve-assign@m Apr 27   35/1282  " thread-indent "\"[oss-security] Re: CVE request: Dovecot remote DoS on TLS connections\"\n") "<20150426203114.7f951c77@pc1.fritz.box>" ("<20150426203114.7f951c77@pc1.fritz.box>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3921 invoked by uid 550); 27 Apr 2015 05:53:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3896 invoked from network); 27 Apr 2015 05:53:36 -0000
In-Reply-To: <20150426203114.7f951c77@pc1.fritz.box>
Message-Id: <20150427055324.B67FD42E03C@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Mon, 27 Apr 2015 01:53:24 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: Dovecot remote DoS on TLS connections
To: hanno@hboeck.de

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> The current Dovecot (2.2.16) imap/pop3 server has an issue that
> handshake failures will lead to a crash of the login process.

> can cause the imap-login
> and pop3-login processes to crash on handshake failures

> An example where this is triggered is if the server is configured to
> not allow SSLv3 connections and a client tries to connect with SSLv3
> only.

> The reason is that the error handling routine will try to finish the
> handshake and that will crash. Details here:
> http://dovecot.org/pipermail/dovecot/2015-April/100618.html

Use CVE-2015-3420.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVPc40AAoJEKllVAevmvmsjm0IALZ9S88W+i5Z2yyVbzXWpzj3
DtNlA3z4eOTidJST+DqlmoaBbU+chSuON/0P6Wtkeoj62AiWU8EKmnCTmlJ+KmKX
FUtesTpxz26xeMC62tZpyo+KH+0NqSPALStj7QIxlY6yJpe9Sfvmg9I+AomLbLyW
8yWqxnINOpIWAmIMWgMkotn97y1+StSY8kbf0yhr8by03Zk4WqYNzpmg1AJ0EwPe
27aJ9leFdvufSShEmAJynX2KiPNhe07Vtauv8Fk1dCynLel0rnBg2KuuygoEH+6l
MZ4p3Svmbb4NLiwGCeg93hNFMxDNDkMv4mUVC/FRz9Co6NVqGeptgFCxUr9T+4w=
=2DrH
-----END PGP SIGNATURE-----
