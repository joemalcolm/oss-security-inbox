X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1296" "Thursday" "2" "February" "2017" "01:10:01" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<8619e46d084d47baba68c51d666c5ec3@imshyb01.MITRE.ORG>" "31" "[oss-security] Re: podofo: NULL pointer dereference in PoDoFo::PdfParser::ReadXRefSubsection (PdfParser.cpp)" nil nil nil "2" "2017020206:10:01" "[oss-security] Re: podofo: NULL pointer dereference in PoDoFo::PdfParser::ReadXRefSubsection (PdfParser.cpp)" (number mark "U       cve-assign@m Feb  2   31/1296  " thread-indent "\"[oss-security] Re: podofo: NULL pointer dereference in PoDoFo::PdfParser::ReadXRefSubsection (PdfParser.cpp)\"\n") "<3276079.yIt2lEYvmd@blackgate>" ("<3276079.yIt2lEYvmd@blackgate>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25662 invoked by uid 550); 2 Feb 2017 06:10:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24525 invoked from network); 2 Feb 2017 06:10:13 -0000
From: <cve-assign@mitre.org>
To: <ago@gentoo.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <3276079.yIt2lEYvmd@blackgate>
Message-ID: <8619e46d084d47baba68c51d666c5ec3@imshyb01.MITRE.ORG>
Date: Thu, 2 Feb 2017 01:10:01 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: podofo: NULL pointer dereference in PoDoFo::PdfParser::ReadXRefSubsection (PdfParser.cpp)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2017/02/01/podofo-null-pointer-dereference-in-podofopdfparserreadxrefsubsection-pdfparser-cpp
> AddressSanitizer: SEGV on unknown address 0x0000000000d8
> podofo-0.9.4/src/base/PdfParser.cpp:772

Use CVE-2017-5855.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYkscsAAoJEHb/MwWLVhi20V4P/RspGoWe2F1kbNHTP1GrHFq1
EqHsL9aI3gBcVb2fpkdDspdOeoBFOdIv7E1ua5AMRb6uhBc1SFNiMHt/cHRKYPHu
GQz/Ju9UkhTplmU2jZCAA+p5hV68fI0q6quF5vW7nMCPGJNVihZRfu4E9vr3AEoi
vxT1vRDPoHxVAKLdxTBlCSkWAbTTzL4OnaMR7c7GQY3X//EqwGKINLYrsThs17pN
lmYqsTgDM/P61dngmmkjo9NUtd36QqxXlLQbdKTerXugnnY7QreNbxENtGjo+jN0
Ia98dTVQ1+vBTzhN26wgxx+rufNxX9t47e8u1c8zG+aY4skrnpb3Lb3rGFosWpCO
s//lch5e0rk9pCuH/qm21HaAICt56XTv9Iuw4jjMaXSKsceyigR6ZUnWnd8lD/UQ
7Y9XW8ZS2FaP1y4SPT0a5tusf4t48+9MfZq1Xc/b+mwhE2Og4Jn/J9f9qBogMZDN
eK9vqWxchU7nv1ZwA+dML3VhSMOqoeHMWUA3AwuoowFZLco4HlKvigSo/+/QrE+A
iuCnbuz/uZAdsV3GuqR5CRr8lIxZ06vbQ8eUqCZg0CuhFrHsbvu4+NCoP9hs4yRg
k810ls3MQabMNbX+aF+fqfsWo4/i3wSOjrjm6lvipXEjvXtgGvRnyz9L0S3AHptK
wgLZyQc7yKFA5c0BeYn3
=4jw5
-----END PGP SIGNATURE-----
