X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1437" "Monday" "8" "February" "2016" "11:21:44" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160208162144.EF2553AE040@smtpvbsrv1.mitre.org>" "36" "[oss-security] Re: CVE request - buffer overflow in xdelta3 before 3.0.9" nil nil nil "2" "2016020816:21:44" "[oss-security] Re: CVE request - buffer overflow in xdelta3 before 3.0.9" (number mark "U       cve-assign@m Feb  8   36/1437  " thread-indent "\"[oss-security] Re: CVE request - buffer overflow in xdelta3 before 3.0.9\"\n") "<20160208071914.GB6074@sghpc.golosunov.pp.ru>" ("<20160208071914.GB6074@sghpc.golosunov.pp.ru>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12148 invoked by uid 550); 8 Feb 2016 16:21:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12127 invoked from network); 8 Feb 2016 16:21:57 -0000
From: cve-assign@mitre.org
To: stepan@golosunov.pp.ru
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, security@debian.org, carnil@debian.org
In-Reply-To: <20160208071914.GB6074@sghpc.golosunov.pp.ru>
Message-Id: <20160208162144.EF2553AE040@smtpvbsrv1.mitre.org>
Date: Mon,  8 Feb 2016 11:21:44 -0500 (EST)
Subject: [oss-security] Re: CVE request - buffer overflow in xdelta3 before 3.0.9

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Buffer overflow was found and fixed in xdelta3 binary diff tool that
> allows arbitrary code execution from input files at least on some
> systems.

>> This appears to be fixed in xdelta3 3.0.9 and later via
>> https://github.com/jmacd/xdelta-devel/commit/ef93ff74203e030073b898c05e8b4860b5d09ef2

>>> Add appheader tests; fix buffer overflow in main_get_appheader 

Use CVE-2014-9765.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWuMArAAoJEL54rhJi8gl5xHkP/iBzelGW14EPlpUBEM5eQgqd
EW7krDybsq3zfQBvDwzYKcLWvA8HaBIRHQrILz4770wY0HqWQt8BdZxdo70kMwvb
CXs+Abh7iXrtFUeL/IrOZYmOzjTRrDq1U68Qb+h+yKdyxxxmM8wou8w7rVBYcxSH
oZnpx+ivfYL8PMGOTZK5z3rWgIN7WL9cCfBrQPzQosueuz0xVNVhI17oTR623Tej
1xw6pLULp7nxUSrUfwuj6qD3PS6DJgt8VpWVoHLkYOKDt04iFfcC3gbCOpQaU/No
JwDvK/I81tMOcxTttSyCUU8TkinrT5JvoUpuntbJxRoA5768FE+bXdSfpoaSA2gq
OHvWq78r43TsVvkHFMrmMqXQjQjqnweAoetwRdpUAgzRUaE/MTwzB40tFfoVjy/X
tzHcSspNDC+vqQN/hsDhYO13xMbUKzNIq4DyRmiIS1rl92bKV05Ps4XBpEn3T3Iy
AGMvKi3dKKSgd5bdr82foLIwofS/5liP4Argpa1EyvgdUV+EYDQkhKkjwDqXivtV
R5aat+cTLhRq8QxOP/6dw3qWIxJCxvUZuZuraFX9FlelTlhj0fJok8evr8PsIHOY
wzAHaf4+ALZ0LH9zmrCAUqX8tTSDaf6qHYedr2D+Vmh602AiKcfreKMG36Di/sfq
tmK2aeQbfRSEgh78tPcM
=m+8A
-----END PGP SIGNATURE-----
