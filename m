X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1550" "Saturday" "4" "February" "2017" "21:34:03" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<9ad7c260eb4d45c79d58b0160f7c7103@imshyb01.MITRE.ORG>" "42" "[oss-security] Re: CVE request tigervnc: vnc server can crash when TLS handshake terminates early" nil nil nil "2" "2017020502:34:03" "[oss-security] Re: CVE request tigervnc: vnc server can crash when TLS handshake terminates early" (number mark "U       cve-assign@m Feb  4   42/1550  " thread-indent "\"[oss-security] Re: CVE request tigervnc: vnc server can crash when TLS handshake terminates early\"\n") "<20170202131156.GB3585@f195.suse.de>" ("<20170202131156.GB3585@f195.suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3725 invoked by uid 550); 5 Feb 2017 02:34:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3707 invoked from network); 5 Feb 2017 02:34:15 -0000
From: <cve-assign@mitre.org>
To: <mgerstner@suse.de>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <20170202131156.GB3585@f195.suse.de>
Message-ID: <9ad7c260eb4d45c79d58b0160f7c7103@imshyb01.MITRE.ORG>
Date: Sat, 4 Feb 2017 21:34:03 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request tigervnc: vnc server can crash when TLS handshake terminates early

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> the Xvnc server from tigervnc can crash when a client terminates a TLS
> connection early. This is due to invalid initialization/deinitialization
> order of the GnuTLS library.
> 
> Upstream commit:
> 
> https://github.com/TigerVNC/tigervnc/commit/8aa4bc53206c2430bbf0c8f4b642f59a379ee649

>> Proper global init/deinit of GnuTLS 

> https://bugzilla.suse.com/show_bug.cgi?id=1023012

Use CVE-2016-10207.

The scope of this CVE does not include
https://bugzilla.suse.com/show_bug.cgi?id=1023012#c11

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYlo4DAAoJEHb/MwWLVhi25I8P/2B7bVNkmS9zQsDaRGvcAiuL
U84Xq5w9mhbN5yXoSxYwBXaIYrj6u/taDdjvBawg6qDVPEOGeKL/DpPLWRTF86PH
46UOEVnsSYqov03fTp111E21OTjfoqetvYe8ES/rz1SRvYB4hOHFlDqlKjYafXlm
Y97kXu8SaMiL5218a+smIpEM78nyu5b8IalQMh9yZpEdwr549gNQR8TmSBfb7e0C
EkIVRHSHTX4j7pjRCg0TmfvCohsaDQ7kiXPFhUN+lqNwpr0porVh4hBH2wgwHult
OFBTIQ4DMCmXu9+mJX6RCQWq3/S0FqeRZ0NzFQlaSUZCGC6ouDRIyFizLJr4OnOb
cZNaiCWknBQ96ftg2qNVjuulPZuteCdt7J0WOsLNel/8YGM/ovqCZgcu0jL9Vv+g
5GCZSK6sUKCAv6yuBtwkAyccPv98nWvWVvjgBBvd/wZLPOEFfp07uV8k/Wz9NX/2
sghtxXv5k8/zsVuFhk5Ry0RyTKx2YGGraTgdzukRikE1ZqvUr99DjAqkALYhnXYc
9zxqZRkBU7AepN3K2T0sil8niPRUb54AUw3xfpzvbcQtOhx4IoTHNLES9CEliE9m
fAuvPL+18/UGZ72e9OwLMU1ET3vfEgeN+nbAhy+kmkM5S3d9FtNl22Gd44F3R/Pt
P/sdVfWREufsGbgVNeKA
=j2T3
-----END PGP SIGNATURE-----
