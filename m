X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1926" "Thursday" "31" "December" "2015" "16:13:50" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151231211350.7A81D6C02D1@smtpvmsrv1.mitre.org>" "47" "[oss-security] Re: libxml2 issue: out-of-bounds memory access when parsing an unclosed HTML comment" nil nil nil "12" "2015123121:13:50" "[oss-security] Re: libxml2 issue: out-of-bounds memory access when parsing an unclosed HTML comment" (number mark "U       cve-assign@m Dec 31   47/1926  " thread-indent "\"[oss-security] Re: libxml2 issue: out-of-bounds memory access when parsing an unclosed HTML comment\"\n") "<20150913123221.GA31867@eldamar.local>" ("<20150913123221.GA31867@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22346 invoked by uid 550); 31 Dec 2015 21:14:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22312 invoked from network); 31 Dec 2015 21:14:02 -0000
From: cve-assign@mitre.org
To: carnil@debian.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20150913123221.GA31867@eldamar.local>
Message-Id: <20151231211350.7A81D6C02D1@smtpvmsrv1.mitre.org>
Date: Thu, 31 Dec 2015 16:13:50 -0500 (EST)
Subject: [oss-security] Re: libxml2 issue: out-of-bounds memory access when parsing an unclosed HTML comment

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

>> https://hackerone.com/reports/57125#activity-384861

>> This is an out-of-bounds memory access in libxml2. By entering a unclosed
>> html comment such as <!-- the libxml2 parser didn't stop parsing at the end
>> of the buffer, causing random memory to be included in the parsed comment
>> that was returned to ruby. In Shopify, this caused ruby objects from
>> previous http requests to be disclosed in the rendered page.

>> https://bugzilla.gnome.org/show_bug.cgi?id=746048

>>> https://git.gnome.org/browse/libxml2/commit/?id=e724879d964d774df9b7969fc846605aa1bac54c

Use CVE-2015-8710 for this 746048 issue.


> TTBOMK, this and as well
> http://www.openwall.com/lists/oss-security/2015/04/19/5 has a pending
> CVE assignment request.

We don't think that one is pending. It was about 744980, covered in the
http://www.openwall.com/lists/oss-security/2015/10/22/8 post.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWhZojAAoJEL54rhJi8gl52/EQAL+VOp+6ITwzseIKn9FIhL4d
kYNzBU5M04ZbD7o0w3RMv27LuZwUrVub3FTrOr103N7HeBOw12QIoHfP2MgMH2fK
/hrIegU17nJ1XAI0mYIU/9dt9Djn91eglFlkhdo7L1PUIDF1/c2Mb4g1rxvU6jD1
R+ypGj/cGdiTGlPaS+ITeDxrYzD1Ik05QsvuEWLYpEla/EXbUSofVUsZeVS8UcaR
AINjmBSfYiP4AJlKfqxP8jOfoUuLyZeNg65zxHbcKKjVXnDGjF+61jQyxRyTOK65
K0HJTxr1pYCXOx7D8HhLSJHVqY+B689p/ubZqE2dZ2yyWRQuLO1faH9ifzPFs7cN
STX4TibmdXUj2EyAONhrAlqnVJRsaawAK2II6oXUMop/59Qs4+a0IZ8sdkObNn8m
leeUxV1C5+H987Jyzw1r66+nl5HFY4aFBwQ2epx+09MY3WL/HF9BfUwloBygKV1w
OsfWZV7dlnQPXYuAnWA4PvCQN+9MwatFQvHrOsljYaBxaprO8K84g64lt1XK+Tkf
lUuqdLstspxLdXt4LYxBlmJgkr0KuR2WxqNt6C6Q0dxBxJASGmQztSWgwjQEMhfi
KDtSsQ/OJdKxAB9cKIAZfPF+Dij8WLsupnqpyGirHecvZakgxGUEDiMZZMpOjvBh
LNAZVp6z3y8iO+ZipSuz
=g9Mv
-----END PGP SIGNATURE-----
