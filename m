X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1437" "Thursday" "2" "February" "2017" "00:58:00" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<52e2df07020643ae977e2f5fd739fe04@imshyb01.MITRE.ORG>" "43" "[oss-security] Re: Bugs fixed in libevent 2.1.6" nil nil nil "2" "2017020205:58:00" "[oss-security] Re: Bugs fixed in libevent 2.1.6" (number mark "U       cve-assign@m Feb  2   43/1437  " thread-indent "\"[oss-security] Re: Bugs fixed in libevent 2.1.6\"\n") "<20170131190550.GA16979@jasmine>" ("<20170131190550.GA16979@jasmine>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10183 invoked by uid 550); 2 Feb 2017 05:58:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10131 invoked from network); 2 Feb 2017 05:58:12 -0000
From: <cve-assign@mitre.org>
To: <leo@famulari.name>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <20170131190550.GA16979@jasmine>
Message-ID: <52e2df07020643ae977e2f5fd739fe04@imshyb01.MITRE.ORG>
Date: Thu, 2 Feb 2017 00:58:00 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: Bugs fixed in libevent 2.1.6

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> [] https://github.com/libevent/libevent/issues/317
> libevent dns remote stack overread vulnerability

Use CVE-2016-10195.


> [] https://github.com/libevent/libevent/issues/318
> libevent (stack) buffer overflow in evutil_parse_sockaddr_port()

Use CVE-2016-10196.


> [] https://github.com/libevent/libevent/issues/332
> out-of-bounds read in search_make_new()

Use CVE-2016-10197.


- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYkscCAAoJEHb/MwWLVhi2YewP/1u5OS30qLHSRq1rCr7C9kDL
DE8/09mH0y5dgW0DPYllVLv6tUdQT9QwKoYQI/rWUYZ9j5oxEEeKo/Kr+klhTQLY
cpvNrtZGhwTXynq/BC69s74n3mi8lXxxnV+XRwQgDKkdYSvaT19yrVG337WZKZq+
A03c78NJQEn6Gw/p7hyhGmQZA2AKO/DhqccSX4YlSKfarH3yhCd0rvionaclxyPa
2O+ldYbDElwFD1nfSBW8HLvjl3YeUgKFl0r1mqQSg/rCvYoEcXBfqJ5KmCFNI+3C
eTkSZ2q7yWQBPIEkldQBEJAGP5LxXxAm0FWfuoj2VHFFl6I3Pm7R7oNULiEqKDeD
rQ6SRQ43H0Qf8E6c3HkPGhRS9OI+pfcFrbX4hAtCwMVpWhdKwv4gYNI3yg9Mjnnp
gfj7Uu0BESQupGBOPi9Ex2Am7k6JQSFUyz6Fzy3eHumCj4WxxjtWljVY8uevlu57
sL8P3esH15174t/iMhXw0SS+DEs4CiCk0vH1M2Qd2tEqoLHZ2TCNDoska9KdUifh
hsJU9vxEn+uIZIKpffx/OIMntzoqCoRHlCgDNMiKZPW4oi6FYARzhLVnhkB/ayY0
f2ha9TBXUtm8m/S4KU0MKPfZWjiudFbS5yqYNJFfpVCT8GG04SFc4Zd4WYEo3Vih
Nc8R5cRbqqFTMK1ZCcK9
=VKif
-----END PGP SIGNATURE-----
