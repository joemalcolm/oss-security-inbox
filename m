X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1825" "Thursday" "7" "January" "2016" "18:55:25" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160107235525.A35F6332283@smtpvbsrv1.mitre.org>" "49" "[oss-security] Re: CVE request --  NULL dereference in libdwarf" nil nil nil "1" "2016010723:55:25" "[oss-security] Re: CVE request -- NULL dereference in libdwarf" (number mark "U       cve-assign@m Jan  7   49/1825  " thread-indent "\"[oss-security] Re: CVE request --  NULL dereference in libdwarf\"\n") "<716e2c96.f09e.1521678e486.Coremail.xiaoqixue_1@163.com>" ("<716e2c96.f09e.1521678e486.Coremail.xiaoqixue_1@163.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15400 invoked by uid 550); 7 Jan 2016 23:55:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15382 invoked from network); 7 Jan 2016 23:55:37 -0000
From: cve-assign@mitre.org
To: xiaoqixue_1@163.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <716e2c96.f09e.1521678e486.Coremail.xiaoqixue_1@163.com>
Message-Id: <20160107235525.A35F6332283@smtpvbsrv1.mitre.org>
Date: Thu,  7 Jan 2016 18:55:25 -0500 (EST)
Subject: [oss-security] Re: CVE request --  NULL dereference in libdwarf

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> we report  a NULL dereference in libdwarf  which is found by Qixue Xiao.
> 
> https://bugzilla.redhat.com/show_bug.cgi?id=1294264

>> https://bugzilla.redhat.com/show_bug.cgi?id=1294264#c2

>> The problem is that the debug_abbrev section is marked as NOBITS in
>> the ELF file - in other words as a zero-init section rather than a
>> section with contents in the file.

>> That is clearly bogus, but obviously shouldn't crash

>>> http://www.prevanders.net/dwarf.html

>>> Work In Progress 2015-12-30

>>> Thanks to Tom Hughes for bringing a problem reading a
>>> badly-damaged (fuzzed) elf object to my attention: now libdwarf
>>> gets an error not a coredump.

>>>> https://github.com/tomhughes/libdwarf/commit/11750a2838e52953013e3114ef27b3c7b1780697

Use CVE-2015-8750.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWjvojAAoJEL54rhJi8gl5BwoP/2yl38aXiRB772a3+OhHyfsa
1DiUFglVG5/1QnLAcG3jOzTnXxHje7f3pTKbCv2csbBtiQmAMDT70OKSCxA2E96q
rbpKnysRbfT8AYZ76mSQCKE1tPwE+ZBG730DrHyhsUWm+cTLh+gYUX6tV7BFPbU2
mQOhI00YpFZ8U/20W1ri8cAHvQ4CJCi2Ta2EViZ4Y7v58fbapeI3MUnR0DifKlUj
ob1tpmfIL3N1OAFFo9vYNGM6xgxfuZoVbNOUoAYeXagsAsHfivpDwhSeeZNCeUsf
58qfI9OhYZWj6xHopPDQ8K1QD+e9g9VpnUepgB319OssgI6pcjG49i4tNVva4JO3
jTNQ+UpvbeoLYOOr80FtYjr51CfwgX3XkcZvz/wsSulLDPhTeqKZz4Q69JKCC2Ib
R2Oby2Hs9476yj28jF9Sg9Ekf2y2vVpqfv5JhQy08Nhx43xUurhgCsBUhixoHgwQ
5E7NT+iMQtRiJN2Ucu/2mK9A9z6RYmEAmaHQx/aRWUfLFNeoynWE/1xJ/3tUvPJT
FsVP8bI6OAq0VDzqNhMJIDTOLlQjfLo6gUTEmuiuW0jjWh5NUV96EJBaZSfQsoFx
//oSh9MOJfiQlfPhb7ws+l/Ae13QwUeOVZ77jkWKxgPlxC2ZzMtQJrsx0MVI+7wM
s9ovDcDoapmCIhtkv/JQ
=oEHA
-----END PGP SIGNATURE-----
