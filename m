X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1159" "Tuesday" "12" "May" "2015" "14:33:55" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150512183355.76334B2E0A0@smtpvbsrv1.mitre.org>" "29" "[oss-security] Re: [oCERT-2015-006] dcraw input sanitization errors" nil nil nil "5" "2015051218:33:55" "[oss-security] Re: [oCERT-2015-006] dcraw input sanitization errors" (number mark "        cve-assign@m May 12   29/1159  " thread-indent "\"[oss-security] Re: [oCERT-2015-006] dcraw input sanitization errors\"\n") "<20150511135955.GJ6507@core.inversepath.com>" ("<20150511135955.GJ6507@core.inversepath.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13765 invoked by uid 550); 12 May 2015 18:34:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13721 invoked from network); 12 May 2015 18:34:07 -0000
In-Reply-To: <20150511135955.GJ6507@core.inversepath.com>
Message-Id: <20150512183355.76334B2E0A0@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue, 12 May 2015 14:33:55 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: [oCERT-2015-006] dcraw input sanitization errors
To: lcars@ocert.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> an integer overflow condition which lead to a buffer overflow. The
> vulnerability concerns the 'len' variable, parsed without validation from
> opened images, used in the ljpeg_start() function.

> https://github.com/LibRaw/LibRaw/commit/4606c28f494a750892c5c1ac7903e62dd1c6fdb5
> https://github.com/rawstudio/rawstudio/commit/983bda1f0fa5fa86884381208274198a620f006e
> http://www.ocert.org/advisories/ocert-2015-006.html

Use CVE-2015-3885.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVUkc+AAoJEKllVAevmvmsyYwH/13dB8lcpUnYyyuswusPp7XA
mrfbvB2SO7vuDDSrf3ppdtiFtlzsOtbhDoBE7b4AHz3w+cbp8fBOED543gVTBRni
oGTwMb4enGL3a7l/nTytWqqerlyY5gK7EUq2nHEGE/RbZgeTOsGV0Qp90mIChwTz
g19zhl3lKK6JCbxI5jhMqiU32KACInFvmJ0+ueN5Pbr7noTC71xIj6ZXpiIOWHEH
5m/O4qti0iOwDvtqiapoUABwkPAwj81kWwdeIsE8gu0+Qjd29VZorpi/yP9sMqLQ
BMFcRgDTzV+e3an/l0BOo+myuc9wRyw80ZzbfofF3GDxO4t2ZZLsZfYm+XoHZUI=
=+nnf
-----END PGP SIGNATURE-----
