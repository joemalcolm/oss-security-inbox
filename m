X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1190" "Tuesday" "12" "May" "2015" "14:54:25" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150512185425.3140BB2E0AF@smtpvbsrv1.mitre.org>" "32" "[oss-security] Re: CVE Request: phpbb open redirect" nil nil nil "5" "2015051218:54:25" "[oss-security] Re: CVE Request: phpbb open redirect" (number mark "        cve-assign@m May 12   32/1190  " thread-indent "\"[oss-security] Re: CVE Request: phpbb open redirect\"\n") "<20150512085559.GA9611@kronk.local>" ("<20150512085559.GA9611@kronk.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9457 invoked by uid 550); 12 May 2015 18:54:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9431 invoked from network); 12 May 2015 18:54:36 -0000
In-Reply-To: <20150512085559.GA9611@kronk.local>
Message-Id: <20150512185425.3140BB2E0AF@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue, 12 May 2015 14:54:25 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: phpbb open redirect
To: alessandro@ghedini.me

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

>> Security: An insufficient check allowed users of the Google Chrome browser to
>> be redirected to external domains (e.g. on login). Thanks to Mathias Karlsson
>> (avlidienbrunn)

> fixed in 3.1.4 and 3.0.14

> https://github.com/phpbb/phpbb/commit/1a3350619f428d9d69d196c52128727e27ef2f04
> https://www.phpbb.com/community/viewtopic.php?f=14&t=2313941
> https://wiki.phpbb.com/Release_Highlights/3.0.14
> https://wiki.phpbb.com/Release_Highlights/3.1.4

Use CVE-2015-3880.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVUkv+AAoJEKllVAevmvmsJR0IAMnz1YeuIf4L9aHiUHJ7JdgK
hIafJYE/TETW2NqT86BSdZsO7T7EeZayYNxrMbIw1kiCXYDWu5T/1k38YXc5Ncgu
AYccoKUzDqoNF/IAIMuZ2DDIHQysbsroWtkf/mySqSu7PzH0NT8lUfR2QI6kjXEy
A6Qwx6biUnBMJi4vpzFYbNGSmDmQhwtQs2XfbpBr0nxBquyAUlRrn0of8GyuWcAr
2RTBnlAuOO/8gBVW1eH7DYAqPXTxTqdFpB6m744Rmw+3N2RqmVyDrTEOaqNOIHs/
m5HRCvYqmGK9m2l4kezh+8G3WynPH9o/jpLZKUpknhs28cXS+Ga55hSULh2sYyI=
=Q6m9
-----END PGP SIGNATURE-----
