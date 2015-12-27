X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1263" "Sunday" "27" "December" "2015" "11:49:53" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151227164953.E03F1332067@smtpvbsrv1.mitre.org>" "35" "[oss-security] Re: CVE Request: Stalin: Insecure use of temporary files" "^Cc:" nil nil "12" "2015122716:49:53" "[oss-security] Re: CVE Request: Stalin: Insecure use of temporary files" (number mark "U       cve-assign@m Dec 27   35/1263  " thread-indent "\"[oss-security] Re: CVE Request: Stalin: Insecure use of temporary files\"\n") "<20151227082521.GA31078@eldamar.local>" ("<20151227082521.GA31078@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13770 invoked by uid 550); 27 Dec 2015 16:50:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13749 invoked from network); 27 Dec 2015 16:50:05 -0000
In-Reply-To: <20151227082521.GA31078@eldamar.local>
Message-Id: <20151227164953.E03F1332067@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, steve@steve.org.uk, rlb@defaultvalue.org
Date: Sun, 27 Dec 2015 11:49:53 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Stalin: Insecure use of temporary files
To: carnil@debian.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://bugs.debian.org/808730
> 
> the following code in /usr/lib/stalin/QobiScheme.sc:
> 
>     (system "uname -m >/tmp/QobiScheme.tmp")
>     ...
>     (system "rm -f /tmp/QobiScheme.tmp")

Use CVE-2015-8697.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWgBW/AAoJEL54rhJi8gl5qB4P/0KaDxTWTX6p4UVxVjbnS1+P
GfXxZd+fevCcubF4NhKbOtzXK+D3gzpCpOq6D7y75Zqt0pVo5P4+Oo5KNibfXGq1
J8fQX18pknwuc7cB2Qs2pZBIIvlm9WQ2NLxsjerLM0WWFVmjXT0BX2jsZMTwynem
+Uwlxpv/hCwoIv2Behwd4pQOVk3gF/oa8Hpxd9q5jioHCzibpqIi3mFz2smZRgaN
j+b/nyPY6oX8CMeTB+Q+FJWYMMNBSf/nBOJ1nypXofpJkR3iJyZYQH2DrdkwL8eO
J8V29HADZJcBn0WuYNeGtonAhSi5kCrSTKzkrGR6pHaG4ah3BW0YPyMfjq9lAnhF
i49wP4l3idgDU7y/Y47ZUszHfwULKZj7Kki6e/wlenkhs7CycCe7SkfwDXT243y/
1+6vpVKjnuTGQFQyBwFFaCpvlieetJI3LWIhKNdzapahEDXl9l8Hxlvp1OICRjpn
CglhID7r5eHD2PCE80/o/p0uBi5481chq6rbBRcASPukrx+3wGY40ROVAu05S+kw
YPfX0T+LHOw5Jb0Dh5ffvOeVWNVo0fKNQX2tIzTPI5t1hJOenUBjMCxkcpD8qqNP
MjHfFA1BxMZMyy8DthGp8G221lgw6Jjpwy1WG0kpb7BcCkP5tPOeN4KnyaV8CCW+
dExiCfSeiL+AAI8rzFQQ
=mtan
-----END PGP SIGNATURE-----
