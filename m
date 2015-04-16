X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1944" "Thursday" "16" "April" "2015" "03:07:13" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150416070713.D7F201BE180@smtpvbsrv1.mitre.org>" "53" "[oss-security] Re: CVE request: SQL injection vulnerability in WordPress plugins Community Events 1.3.5, Tune Library 1.5.4, WP Symposium 15.1" nil nil nil "4" "2015041607:07:13" "[oss-security] Re: CVE request: SQL injection vulnerability in WordPress plugins Community Events 1.3.5, Tune Library 1.5.4, WP Symposium 15.1" (number mark "        cve-assign@m Apr 16   53/1944  " thread-indent "\"[oss-security] Re: CVE request: SQL injection vulnerability in WordPress plugins Community Events 1.3.5, Tune Library 1.5.4, WP Symposium 15.1\"\n") "<001301d076bc$4d9f9e60$e8dedb20$@gmail.com>" ("<001301d076bc$4d9f9e60$e8dedb20$@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 6071 invoked by uid 550); 16 Apr 2015 07:07:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6040 invoked from network); 16 Apr 2015 07:07:25 -0000
In-Reply-To: <001301d076bc$4d9f9e60$e8dedb20$@gmail.com>
Message-Id: <20150416070713.D7F201BE180@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 16 Apr 2015 03:07:13 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: SQL injection vulnerability in WordPress plugins Community Events 1.3.5, Tune Library 1.5.4, WP Symposium 15.1
To: hannes.trunde@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> 1) WP Community Events plugin SQL injection vulnerability
> Affected version: 1.3.5 (and likely all versions below)
> Fixed version: 1.4
> Plugin URL: https://wordpress.org/plugins/community-events/
> Changelog: https://wordpress.org/plugins/community-events/changelog/

Use CVE-2015-3313.


> 2) WP Tune Library plugin SQL injection vulnerability
> Affected version: 1.5.4 (and likely all versions below)
> Fixed version: 1.5.5
> Plugin URL: https://wordpress.org/plugins/tune-library/
> Changelog: https://wordpress.org/plugins/tune-library/changelog/

Use CVE-2015-3314.


> 3) WP Symposium plugin SQL injection vulnerability
> Affected version: 15.1 (and likely all versions below)
> Fixed version: Not yet available, author is working on a fix
> Plugin URL: https://wordpress.org/plugins/wp-symposium/  (still disabled by
> WordPress.org team)

Is this different from

  http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2014-8810

? We feel that we may not have definitive information about whether
that SQL injection was ever fixed. The
http://www.wpsymposium.com/2014/11/release-information-for-v14-11/
page no longer exists with its 2014 content, but had previously only
mentioned fixing XSS, not fixing SQL injection.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVL18cAAoJEKllVAevmvmsb/sIAMI2N6reIAma7AfP/fRkegp5
sFXZunL15IrePLYzdaIDG/JvqahjSiXcqJIQyd36fLbzW83vnskTpzHotLzRum0l
zDOYJ7goZj0Lz3+WUuys9peZS0/hYNNo6kK4MSvYjDrTXY+wV9GyCcBenUKWaNxc
NHwZM6626lyZMQfJf/x050mPqyHU7dIfmcfxXcqxQkkdeDwE5kuPWatZcBN8M6cd
eAuW5J/isNLFdfpMT55OGYUNFumD6BZCEy+CzqwS6Q+OdH4boFrvwZVS2TkcYI3n
FS0l6ndYjASAzOJ93yHK6Szq0VawNP1XYpl2xG5NcuORmN0/KfOq65TC24migO0=
=jU6E
-----END PGP SIGNATURE-----
