X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3295" "Tuesday" "29" "August" "2017" "15:23:50" "-0400" "cve-request@mitre.org" "cve-request@mitre.org" "<0295d4de82454ac79e4bc834c30d39b3@imshyb01.MITRE.ORG>" "68" "[oss-security] Re: [scr379303] A bunch of duplicate CVEs requested for?? bho.." nil nil nil "8" "2017082919:23:50" "[oss-security] Re: [scr379303] A bunch of duplicate CVEs requested for?? bho.." (number mark "U       cve-request@ Aug 29   68/3295  " thread-indent "\"[oss-security] Re: [scr379303] A bunch of duplicate CVEs requested for?? bho..\"\n") "<6609652.OIiHvm4qLd@wanheda>" ("<6609652.OIiHvm4qLd@wanheda>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7288 invoked by uid 550); 29 Aug 2017 19:24:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7248 invoked from network); 29 Aug 2017 19:24:02 -0000
From: <cve-request@mitre.org>
To: <ago@gentoo.org>
CC: <cve-request@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <6609652.OIiHvm4qLd@wanheda>
Message-ID: <0295d4de82454ac79e4bc834c30d39b3@imshyb01.MITRE.ORG>
Date: Tue, 29 Aug 2017 15:23:50 -0400
MIME-Version: 1.0
Content-Type: text/plain
X-MITRE: 8GQsMWxq66rxk57w
Subject: [oss-security] Re: [scr379303] A bunch of duplicate CVEs requested for?? bho..

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://nvd.nist.gov/vuln/detail/CVE-2017-13753 duplicate of:
> https://nvd.nist.gov/vuln/detail/CVE-2016-9396

Yes, these are duplicates; we will reject CVE-2017-13753 and update
CVE-2016-9396.

This occurred because the MITRE CVE team inadvertently populated
CVE-2016-9396 with incorrect version information, and because the code
changed between the two tested versions.

Specifically, CVE-2016-9396 had said "in JasPer before 1.900.12" but
actually there was no reference stating that 1.900.12 was a fixed
version. Also, the CVE-2017-13753 reference said "Assertion `qmfbid ==
JPC_COX_RFT' failed" but the CVE-2016-9396 reference said "Assertion
`qmfbid == 0x01' failed." These happen to be the same (there's a
"#define JPC_COX_RFT 0x01" elsewhere), but it initially looked like
the new report was about a different assertion that was problematic in
1.900.12 and later versions.

> months later we have:
> https://nvd.nist.gov/vuln/detail/CVE-2017-11720
> "There is a division-by-zero vulnerability in LAME 3.99.5, caused by a
> malformed input file."

When we worked on your CVE ID request for the
https://blogs.gentoo.org/ago/2017/06/17/lame-divide-by-zero-in-parse_wave_header-get_audio-c/
report, we had the information about the affected source-code pathname
frontend/get_audio.c, and we had found the
https://bugs.debian.org/777159 information about "this is all in the
frontend code in frontend/get_audio.c:parse_wave_header() and not in
the library." By contrast, the CVE-2017-11720 request had less
technical detail about the source-code location, and the requester had
checked the "Has vendor confirmed or acknowledged the vulnerability?"
Yes box on our https://cveform.mitre.org web site. In general, if a
problem is only a divide-by-zero in a command-line program, but the
upstream vendor decided to categorize it as a vulnerability, then it
gets a CVE. Admittedly, there was no direct proof of "decided to
categorize it as a vulnerability" here. Also, if a CVE is already
populated, and is about this type of valid crash report, then we do
not retroactively reject it, even if we learn more about exploitation
relevance. We will update CVE-2017-11720 with your reference, to help
to show that you were the original discoverer.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJZpb6gAAoJEHb/MwWLVhi22IwQAJe2UP55hrbdFS8RK0ZNLws+
4O2z1FQQV8MVcVAM0K7gFdliJzuhFcvhN9Ta1/N078f0tlAMIy9/nqcVnGXzi08/
Xwce5Y8n0jivXEKeqSyH73k9hurcGeEhSiB/WdxrOeXq9Xnddt0QhUMkKmd6/RtO
bxWIYSAYegx3i7fAb50oXb0e0hF44rcZoHq/iRMj1Ev8WoIJbZkV0TrNPsHmjJrI
+hGWpAyfD2/T+FE1Q1WUpwcf6Pp1XXZcGrGxE52FE1SpfNuW9MhLXSdiM0Afa/DN
OGtARAd7qjWN1tC68xr1KZu1coHgsC8KTtyy5g6K/M5gKnlqKpvx/LMWkzsoMSpU
FUixt9Jyh9umO2j/tF3KXiPWq1rQo1wSY5ib9ULDigqmvMp/hUarTlPysLe/ddBL
nHo+StZVqhu8NhIaR+XZBy/kr7D5UpTMpBmDXUtRYbxVLc7cUySVd8xJfAqHtdfv
z1tUMWkCKb8lPJa6Mx+fVE6/tuOuUYBml9l+1/wtktwTfuV9f6Xvt9ZlxWPwuCvI
/ZV5tM+5Pj8NY94YjYkRSsAbyeYRLJyxqpmqJhfapknR8Ib0RHMxmkS8Uh7bWjq7
ycDToRIFjgDqJexExwtaOZybdaSVNCzj/lqt/N9xhIZE8w0jYQ8WtEmPY5y8OIug
04kqg2X2uxrUI/8R1fnj
=aEt4
-----END PGP SIGNATURE-----
