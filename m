X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1674" "Saturday" "20" "February" "2016" "10:23:04" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160220152304.552F06C07A1@smtpvmsrv1.mitre.org>" "43" "[oss-security] Re: CVE for nodejs hawk" nil nil nil "2" "2016022015:23:04" "[oss-security] Re: CVE for nodejs hawk" (number mark "U       cve-assign@m Feb 20   43/1674  " thread-indent "\"[oss-security] Re: CVE for nodejs hawk\"\n") "<CANO=Ty1UU7mCg_suEkOh3QYzPPEOQ2sRhk1zq2+R1mANb7kFyA@mail.gmail.com>" ("<CANO=Ty1UU7mCg_suEkOh3QYzPPEOQ2sRhk1zq2+R1mANb7kFyA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10133 invoked by uid 550); 20 Feb 2016 15:23:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10112 invoked from network); 20 Feb 2016 15:23:16 -0000
From: cve-assign@mitre.org
To: kseifried@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CANO=Ty1UU7mCg_suEkOh3QYzPPEOQ2sRhk1zq2+R1mANb7kFyA@mail.gmail.com>
Message-Id: <20160220152304.552F06C07A1@smtpvmsrv1.mitre.org>
Date: Sat, 20 Feb 2016 10:23:04 -0500 (EST)
Subject: [oss-security] Re: CVE for nodejs hawk

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Does Mitre know about this?

Thank you for this report. The MITRE CVE team had not previously been
informed of that vulnerability. As mentioned in the
http://www.openwall.com/lists/oss-security/2016/01/12/2 post,
"CVE-PENDING" does not imply an earlier request.

> https://nodesecurity.io/advisories/77
> Regular Expression Denial of Service

> https://github.com/hueniverse/hawk/issues/168
> Long headers or uris can cause minor DoS

> https://github.com/hueniverse/hawk/commit/0833f99ba64558525995a7e21d4093da1f3e15fa
> // Limit the length of uris and headers to avoid a DoS attack on string matching

Use CVE-2016-2515.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWyIRZAAoJEL54rhJi8gl5WhMP/193koIE+vRIVMuT+2yRfXhL
u+ffJKUvx/K0cSY2AaB1K+T77r6OmOCKgDrwPN2d1gaZxuAA/gX3GK42Lo7Mf6Vp
uVcFArlOtNTghNxlWZVP5/vjAkG7ykgrmgGZOQFUjH9KMN7xS6ocrrR+SuHVthFU
p+jt1Qun+c+1F5WEWc35XV9f3XSKmcf/Cw0u7mJDXK9paWY8wDRfHhDNHQnmXB/i
nEgiI+ShdjksLhsO5GWTBQYEEiRArMKYYIKNA2RXfQcANAwU5x+AYyLoYqjGkCms
ABhs66NBYhLobKq92Cyz6h8urkyydLcvHnXfcwoUW1Cce+6QwmlFgnI5CuT3FO4P
CuBFtwF3zNlbDP8EnjOLJDu/qQZqnoskrBD84c+f8VsKyZloS9CBhnjZzmpmvl+x
wjH2/pJqhgDdlRbZKlPam/JhDVLc0cZlhySb3NZguvzeKt0Gj7NOyNH7du7p8TA0
yQPlX+MA/R5zvrWmX7cR+hhmITOIwbdX91fMn/+y293E1WKcKGEuxNtCYEmvBDET
RZPleVe6xxUdzOYkbSDTytuEQcBTkU1Arnu8clNXs98mC5ujJbicAQDPsIEvT95e
MR9b/6khL9z/lAYHyOC2AfxJYvexztRi6SzIAG6LX6JGFUB7YIcUoYDydrH4JyYg
7VRvjxDTRn8RUxhMWULb
=IyjB
-----END PGP SIGNATURE-----
