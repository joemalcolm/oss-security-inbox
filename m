X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1991" "Sunday" "24" "January" "2016" "13:05:26" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160124180526.936F633215E@smtpvbsrv1.mitre.org>" "48" "[oss-security] Re: CVE Request: tiff: Out-of-bounds write for invalid images using LogL compression" "^Cc:" nil nil "1" "2016012418:05:26" "[oss-security] Re: CVE Request: tiff: Out-of-bounds write for invalid images using LogL compression" (number mark "        cve-assign@m Jan 24   48/1991  " thread-indent "\"[oss-security] Re: CVE Request: tiff: Out-of-bounds write for invalid images using LogL compression\"\n") "<20160124153737.GA18993@eldamar.local>" ("<20160124153737.GA18993@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5537 invoked by uid 550); 24 Jan 2016 18:05:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5519 invoked from network); 24 Jan 2016 18:05:38 -0000
In-Reply-To: <20160124153737.GA18993@eldamar.local>
Message-Id: <20160124180526.936F633215E@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Sun, 24 Jan 2016 13:05:26 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: tiff: Out-of-bounds write for invalid images using LogL compression
To: carnil@debian.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://bugzilla.maptools.org/show_bug.cgi?id=2522
> 
>> 2015-12-27  Even Rouault <even.rouault at spatialys.com>
>>
>>         * libtiff/tif_luv.c: fix potential out-of-bound writes in decode
>>         functions in non debug builds by replacing assert()s by regular if
>>         checks (bugzilla #2522).
>>         Fix potential out-of-bound reads in case of short input data.
> 
> Fixing commit:
> 
> https://github.com/vadz/libtiff/commit/aaab5c3c9d2a2c6984f23ccbc79702610439bc65

Use CVE-2015-8781 for the original
http://bugzilla.maptools.org/show_bug.cgi?id=2522#c0 report of "an out
of bounds write at tif_luv.c:208" by Clay Wood.

Use CVE-2015-8782 for the other out-of-bounds writes fixed by the vendor in
aaab5c3c9d2a2c6984f23ccbc79702610439bc65. These seem to have similar causes.

Use CVE-2015-8783 for the out-of-bounds reads fixed by the vendor in
aaab5c3c9d2a2c6984f23ccbc79702610439bc65. These seem to have similar causes.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWpQ8tAAoJEL54rhJi8gl5vB8QAL/5LosqDnJFuT8/Jk/NjNtJ
D1FqnqQNfPBzsYabPAnfWUQnm207G7loabLvZ+Kk8EtpWq+sDdC9au9dPi/wCqXN
jpdeKW1wq7/gozHWT+qVSmEMHWIdz2mlkvOXeiRwPNvNqWa2DpH3ilqpwuK6tfXG
qkZhBYJD6UQSeZ7XToxPkZpepYstJtuIfW59fyIbKL0myf1lrrFEgp5kC1S0SRG9
jzH4Ts/bnIy2XKWbV5V3ZLUvCp7QjnPopH3cWXkccv/8tMFYtOSx/eWEGDf9q8Cf
nRykzi7rQL59M76LoWsLwLiPXClAE4YkdignBqrCkPc1XRPcseFRFSykci4cLFWI
94PW5ptFU3ureAqmn5aGmodjSkIlbPaYN7KL/ZLYOCmAgqu3UQC/5pi9Rw/I+yjw
9SHjK173FUF2eBxok1A0ewIdOw9QVxqjLdlE9bMuwxpYO1zaTtd1YNUJH/fuo+v1
V3Xp6ahyA0dMhC5m9dsNmrUbnDga7tXQJZocqU9/xzbENwN4RX1zwi/3SRMLU9yY
Z2vCGti3InnIHXIx4H/kn1liUl6eY6VEIfwk5zAyG1KwF9zJfT0XGCfa66aFwe33
VJIrZ028NoSNvTGDrnWfZOrR/HkvAKCN+tZCNG8WI1mdV+wf2d9JxzGBTTnxgSCu
+8v5XwQMfkDPCz0TjHRX
=C/X+
-----END PGP SIGNATURE-----
