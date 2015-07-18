X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1390" "Saturday" "18" "July" "2015" "06:51:24" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150718105124.BCFD433E08C@smtpvbsrv1.mitre.org>" "40" "[oss-security] Re: CVE request: php - segmentation fault in Phar::convertToData; buffer overflow in phar_fix_filepath;" nil nil nil "7" "2015071810:51:24" "[oss-security] Re: CVE request: php - segmentation fault in Phar::convertToData; buffer overflow in phar_fix_filepath;" (number mark "U       cve-assign@m Jul 18   40/1390  " thread-indent "\"[oss-security] Re: CVE request: php - segmentation fault in Phar::convertToData; buffer overflow in phar_fix_filepath;\"\n") "<20150717135425.GB19821@mail.corp.redhat.com>" ("<20150717135425.GB19821@mail.corp.redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3886 invoked by uid 550); 18 Jul 2015 10:51:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3866 invoked from network); 18 Jul 2015 10:51:36 -0000
From: cve-assign@mitre.org
To: vkaigoro@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20150717135425.GB19821@mail.corp.redhat.com>
Message-Id: <20150718105124.BCFD433E08C@smtpvbsrv1.mitre.org>
Date: Sat, 18 Jul 2015 06:51:24 -0400 (EDT)
Subject: [oss-security] Re: CVE request: php - segmentation fault in Phar::convertToData; buffer overflow in phar_fix_filepath;

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Segfault in Phar::convertToData on invalid file
> https://bugs.php.net/bug.php?id=69958
> http://git.php.net/?p=php-src.git;a=commit;h=bf58162ddf970f63502837f366930e44d6a992cf

> -               php_stream_close(phar->fp);
> +               if (phar->fp) {
> +                       php_stream_close(phar->fp);
> +               }

Use CVE-2015-5589.


> Buffer overflow and stack smashing error in phar_fix_filepath
> https://bugs.php.net/bug.php?id=69923
> http://git.php.net/?p=php-src.git;a=commit;h=6dedeb40db13971af45276f80b5375030aa7e76f

> there is no check if `newpath_len` will exceed MAXPATHLEN, which is
> the size of `newpath` on the stack.

Use CVE-2015-5590.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVqi70AAoJEKllVAevmvms/54H/RRluc6ErkmkBrq+DtmbGUqj
YsL8AvL2GFn82tiEqsGs9+BaE9NSFYZv7Cg7fgmlWYL2TcEq6D94I1MbmaaSG9O9
R/ogWm4XWMDbeNruDGsb3y2GEvzzgdSxuDsgSKOBcR7pzw0RYIribeJM6hwfbQ9Q
dG9POpslHu6fTGq7tYpTY/p5fBjuDz176AcpIzdh6hm/GvvNaNvr/cgx7ZXtaGN7
53Pqi+4YwbZbIbx4a1O4MHBmbnShbTEhhVRwvXLLwhAcvNwxocDJBLoiiYbunEVi
70bgzyiBmqSj1qYN+wp6fnUdHBloyer7Jw37bZhmU7hRGBlzh6KTE7GaODUBnE4=
=OZOY
-----END PGP SIGNATURE-----
