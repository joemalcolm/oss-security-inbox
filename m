X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1546" "Friday" "6" "January" "2017" "03:16:14" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<7f4109defadd49dbb7668f463db5516e@imshyb02.MITRE.ORG>" "47" "[oss-security] Re: CVE Request: Irssi Multiple Vulnerabilities (2017/01)" nil nil nil "1" "2017010608:16:14" "[oss-security] Re: CVE Request: Irssi Multiple Vulnerabilities (2017/01)" (number mark "U       cve-assign@m Jan  6   47/1546  " thread-indent "\"[oss-security] Re: CVE Request: Irssi Multiple Vulnerabilities (2017/01)\"\n") "<1483627520.30912.1.camel@gmail.com>" ("<1483627520.30912.1.camel@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3187 invoked by uid 550); 6 Jan 2017 08:16:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3162 invoked from network); 6 Jan 2017 08:16:26 -0000
From: <cve-assign@mitre.org>
To: <ailin.nemui@gmail.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <1483627520.30912.1.camel@gmail.com>
Message-ID: <7f4109defadd49dbb7668f463db5516e@imshyb02.MITRE.ORG>
Date: Fri, 6 Jan 2017 03:16:14 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE Request: Irssi Multiple Vulnerabilities (2017/01)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> (a) A NULL pointer dereference in the nickcmp function found by Joseph
>     Bisch. (CWE-690)

Use CVE-2017-5193.


> (b) Use after free when receiving invalid nick message (Issue #466, CWE-146)

Use CVE-2017-5194.


> (c) Out of bounds read in certain incomplete control codes found by
>     Joseph Bisch. (CWE-126)

Use CVE-2017-5195.


> (d) Out of bounds read in certain incomplete character sequences found
>     by Hanno Boeck and independently by J. Bisch. (CWE-126)

Use CVE-2017-5196.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYb1HsAAoJEHb/MwWLVhi2oxsP/jjLY6oz9mByhAkhID79sf2N
E0n/K0n0t228gqe515xPe3+IKnNETQql8dkGbiyDZSh0XJk1VMstJV/wfy6kqPG/
pP+zb8cfpOi3Y8ept5NowUauadzbWvMkxewXmtjsPinTJKPqYxg21Sg1itx6/3gL
cLpxertHOzFZc7GG1mDhvlisQy0jsZNi/NznCJunYhqrOfjtEDSUiDClWLpO5qx2
OAEXlxJqeNGmZ670NLs37oGH2AYqKbQMwOw+KyNoUHufIDkwyC+7nd69Y6b2a9Oc
FpLUheRRzO6lQ8XrakNqdrWx+V47hhCwx4Fd7zshCalat91bCA3bhHNVvIIz7Jb0
la+rFjHNhHbPtxj/BowDp374MbbUT+RJyi51HYPjghb7w89ztOUWoikWAJAGL9pz
HWsO25KxxBL6fZowWLm0gUTAgmuULpxmHC9csaszZZQVTKQ1UVMFdhzihFRdS8hF
sveMm3Td0bo0EuZ804sUxaYDFg48tyolld3BmPUscMfQ5BBQHypRzXnpc/jblxat
52z5xVHpWwcfwB+GeGOVygeOGfRzckzm22L/I4hveJe7wtWn4QpB0IbYeSYr7RgN
HnSxMmPx/f1FPPvD7/Z1RNCi2AhUIVCe9NONLLnHdSqCr+sD0h3899++BWbmV/xn
Swdkrn3C9vrjcoAglyPY
=udlU
-----END PGP SIGNATURE-----
