X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1945" "Friday" "20" "January" "2017" "22:20:58" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<baa23ad23afb49f580f7678fc08a9212@imshyb01.MITRE.ORG>" "50" "[oss-security] Re: CVE Request: two flaws in hesiod permitting privilege elevation" nil nil nil "1" "2017012103:20:58" "[oss-security] Re: CVE Request: two flaws in hesiod permitting privilege elevation" (number mark "U       cve-assign@m Jan 20   50/1945  " thread-indent "\"[oss-security] Re: CVE Request: two flaws in hesiod permitting privilege elevation\"\n") "<20170120014512.GC20029@sin.redhat.com>" ("<20170120014512.GC20029@sin.redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16171 invoked by uid 550); 21 Jan 2017 03:21:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16151 invoked from network); 21 Jan 2017 03:21:11 -0000
From: <cve-assign@mitre.org>
To: <dmoppert@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <20170120014512.GC20029@sin.redhat.com>
Message-ID: <baa23ad23afb49f580f7678fc08a9212@imshyb01.MITRE.ORG>
Date: Fri, 20 Jan 2017 22:20:58 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE Request: two flaws in hesiod permitting privilege elevation

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> [] Weak SUID check allowing privilege elevation
> 
> Hesiod unsafely checks EUID vs UID in a few places, consulting
> environment variables for configuration if they match. This could be
> used for privilege elevation under some circumstances. The fix uses
> secure_getenv() in place of getenv().
> 
> https://bugzilla.redhat.com/show_bug.cgi?id=1332508
> https://github.com/achernya/hesiod/pull/9

Use CVE-2016-10151.


> [] Use of hard-coded DNS domain if configuration file cannot be read
> 
> If opening the configuration file fails, hesiod falls back on a default
> domain ".athena.mit.edu" to retrieve managed information. A local
> attacker with the opportunity to poison DNS cache could potentially
> elevate their privileges to root by causing fopen() to fail.
> 
> https://bugzilla.redhat.com/show_bug.cgi?id=1332493
> https://github.com/achernya/hesiod/pull/10

Use CVE-2016-10152.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYgtL0AAoJEHb/MwWLVhi2PDQQAJdi7nsPsB1xxrd++RQ2UUMW
L7cvq12NOEPommq0pLUjPYWM2/IqOGj56H7HSJIyBEtw+knSXM5xMUpKbdSbwa2N
gVNVcw+wu5fHQkGUzJJ0rvwsQANZDATb0NDpp1GCzSdc90V08Jok80QOlCm7FUY3
TvqefiuQBcGtF45nhPm7x2NRVkQbeU4t7ewOofBdRpRidbzHHxLC0ts0gBmZpEAR
CCv+fKOO1dLY2PIk/+jo7qczV1oqvrIgetQE9dZHp+p01NsHLdKg+Uge7/sK9k5F
dp6Zqf+Upzfg78II9cAZJwpWTOyd8zFyQRvtp82qz3DH74c2u1/lgVH2VqZtLIWn
XLoZxhKLjL/ADM9QvJFvqEIrs7nC0QGJrgoQpihGohszGTtt3l3k+b6DmPt28OIn
clgHS4z1quEqJT/YKHaFfbDVyLqjWvRQXFo4YfAUtHXur4SNzXBKy3VnPssmw+Kd
jL4gYvzrTJRlV0cG2wvHEAMb9yqTAtqPCVU7ujS+sosfBN8ADvALuQ0U9ag1JW9Q
1oSq/mQ1ZKi+07Y6GiCQBflkIYM7EIKIHQJDj2DrtZc3gM5W4ee6ilpQ83ZdJduE
JJRmwqbPwsxq4q5L2mqslIfklmUR+Fatodji7bbXpxHjqiafBXR8UdDNx+L3x0fp
bMErFJVq6SNHHilpwa6a
=J/Hc
-----END PGP SIGNATURE-----
