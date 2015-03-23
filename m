X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1240" "Monday" "23" "March" "2015" "14:20:02" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150323182002.6120B6C002D@smtpvmsrv1.mitre.org>" "32" "[oss-security] Re: CVE Request: gd buffer read overflow in gd_gif_in.c" nil nil nil "3" "2015032318:20:02" "[oss-security] Re: CVE Request: gd buffer read overflow in gd_gif_in.c" (number mark "        cve-assign@m Mar 23   32/1240  " thread-indent "\"[oss-security] Re: CVE Request: gd buffer read overflow in gd_gif_in.c\"\n") "<1331942598.1357562.1427122763719.JavaMail.zimbra@redhat.com>" ("<1331942598.1357562.1427122763719.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17868 invoked by uid 550); 23 Mar 2015 18:20:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17850 invoked from network); 23 Mar 2015 18:20:13 -0000
In-Reply-To: <1331942598.1357562.1427122763719.JavaMail.zimbra@redhat.com>
Message-Id: <20150323182002.6120B6C002D@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, security@php.net
Date: Mon, 23 Mar 2015 14:20:02 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: gd buffer read overflow in gd_gif_in.c
To: falonsoe@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> gd: buffer read overflow in gd_gif_in.c
> https://bitbucket.org/libgd/gd-libgd/commits/47eb44b2e90ca88a08dca9f9a1aa9041e9587f43
> https://bugs.php.net/bug.php?id=68601
> https://bugzilla.redhat.com/show_bug.cgi?id=1188639

> AddressSanitizer: stack-buffer-overflow on address
> READ of size 1

Use CVE-2014-9709. Presumably the relevant attack scenarios involve
long-running processes that accept GIF files from untrusted sources
and call gdImageCreateFromGif on them, and then potentially crash
after the buffer over-read.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVEFjPAAoJEKllVAevmvmsaUgH/3vLIjJLwpKSH62aG0iLLauj
beYgnlezQIo1ylSF0XYE9x9sbK706WQZ8clXfBwLNuRCdPPnrwqx0Tyk8YCVi/rv
HBiOpfE5GNADjgaYbhocHHjYWe40KWe8zRLH1apHj4U59ptvnwIteoYHyrLwUlV8
3w+w6f00lOo5Mgfo3qxdvFqDDmd3acYZSjRKWZ284UpyQlcAXQuPydkCK7F05zKy
8t2x4okwS3SYzeV5lCzW8VjqzBLu+0Gu76INuA1HgGZwriYpwCsomdYEbvDVTSn5
Frd6/1lZjZoTDqykrRRWYxZ3HrMAikWrlaqDuUCBpJ0zNHM8Sv1+qAsWbnJCwMo=
=9B62
-----END PGP SIGNATURE-----
