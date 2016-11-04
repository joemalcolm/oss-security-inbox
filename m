X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1745" "Friday" "4" "November" "2016" "03:05:16" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<2647eeea4a76427993d6495bb8c17943@imshyb02.MITRE.ORG>" "49" "[oss-security] Re: CVE request:  XXE in perl Image::Info and XML::Twig" nil nil nil "11" "2016110407:05:16" "[oss-security] Re: CVE request: XXE in perl Image::Info and XML::Twig" (number mark "U       cve-assign@m Nov  4   49/1745  " thread-indent "\"[oss-security] Re: CVE request:  XXE in perl Image::Info and XML::Twig\"\n") "<20161102050757.GG14890@sin.redhat.com>" ("<20161102050757.GG14890@sin.redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7324 invoked by uid 550); 4 Nov 2016 07:05:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7268 invoked from network); 4 Nov 2016 07:05:28 -0000
From: <cve-assign@mitre.org>
To: <dmoppert@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <20161102050757.GG14890@sin.redhat.com>
Message-ID: <2647eeea4a76427993d6495bb8c17943@imshyb02.MITRE.ORG>
Date: Fri, 4 Nov 2016 03:05:16 -0400
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request:  XXE in perl Image::Info and XML::Twig

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

>> XML-Twig: expand_external_ents fails to work as documented

> https://rt.cpan.org/Public/Bug/Display.html?id=118097
> https://bugzilla.redhat.com/show_bug.cgi?id=1379553

> This option (which defaults to 0) is supposed to control XXE parsing
> documents with XML::Twig, but it has no effect and XXE always takes
> place.

Use CVE-2016-9180.


>> Image-Info: XXE in SVG files

> https://rt.cpan.org/Public/Bug/Display.html?id=118099
> https://bugzilla.redhat.com/show_bug.cgi?id=1379556
> 
> This was promptly fixed in 1.38_50 / 1.39.

Use CVE-2016-9181.

118099 suggests that this was exploitable only when XML::LibXML was installed,
but the CVE is for Image::Info::SVG, not for XML::LibXML.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYHDIEAAoJEHb/MwWLVhi2cowP/3KQY1byhquXjsu4Nem8qz4H
Tb7YWpeCUxIKbrqA60DEVfPKY0ges1vQ1JCzYlElU3/VAMe7ZWrTAnuxwangQCZI
RZcVMDOcdJJGSjOyPUhdr2MLbCwl0U8U6z2ZeLGJh1aN6DqcE4XZtmNbjPNU7ea/
uvEzHZEh5SL0tyM30fCrSsPARqYtlbMt0o6uPbfg9wi71Pkcmz+451CF8BhM8bdl
mLd7EWQHxHnF4Y3kSCYkLsAULDTgGEzu97i+m68nkwPII8EpwjKF1wXbRKgU2fjA
bgTYC7j/em9VYHAjVzPKTwIJ0MiAsqS+HDywyoqc6uCgV0OQ8qaKvBu4v3d28tbt
HyBKWK/cMwYSGg6hiOsfrGU8mSk3mKD9NFgdHjllnS12Xo6QHln9BXfUnhZDRzMt
PuOtBeq7jWsSCp1C0dbwMpPD2zCHlaHmSwBabk2s1F7GQtgZogM5bZZxO1099b1D
Lq+BOpDRwezSOKcu1ITRO1qUJ63ECtvUK1K/9Lv/AWFkXVANoBEv0tlABmsj2WUB
zIy0bOQo7a8n8lRY/ECJvK/C3HLQU2RPdE0lXw2bldr+MSNhV1zNoQypJgzxwxtT
5TFsQXMwrJ91vJmRH2gjNykX74ItPcOppL+ws2yAv1ZVTaxDbUk5yhSj7JFbkuUQ
rpHTnlXvLA8UmaYREUnj
=M28z
-----END PGP SIGNATURE-----
