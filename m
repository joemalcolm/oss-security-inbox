X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3053" "Friday" "25" "September" "2015" "18:18:40" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150925221840.E6FBA6C4003@smtpvmsrv1.mitre.org>" "68" "[oss-security] Re: CVE Request: 2 FreeType issues" nil nil nil "9" "2015092522:18:40" "[oss-security] Re: CVE Request: 2 FreeType issues" (number mark "        cve-assign@m Sep 25   68/3053  " thread-indent "\"[oss-security] Re: CVE Request: 2 FreeType issues\"\n") "<55F2BA99.8090005@canonical.com>" ("<55F2BA99.8090005@canonical.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18346 invoked by uid 550); 25 Sep 2015 22:18:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18313 invoked from network); 25 Sep 2015 22:18:52 -0000
In-Reply-To: <55F2BA99.8090005@canonical.com>
Message-Id: <20150925221840.E6FBA6C4003@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri, 25 Sep 2015 18:18:40 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: 2 FreeType issues
To: marc.deslauriers@canonical.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> I don't believe these two FreeType issues have assigned CVEs:
> https://bugs.launchpad.net/ubuntu/+source/freetype/+bug/1449225
> https://bugs.launchpad.net/ubuntu/+source/freetype/+bug/1492124
> Could CVEs please be assigned to them?

The short answer is that 1449225 has two CVE IDs, and 1492124 has one
CVE ID; see below.

The http://openwall.com/lists/oss-security/2015/09/11/4 message was
apparently posted after http://www.ubuntu.com/usn/USN-2739-1 but
didn't mention that USN-2739-1 existed. The MITRE CVE team had begun
work on CVE entries for USN-2739-1 but then that oss-security message
was noticed.


> https://savannah.nongnu.org/bugs/index.php?41590
> http://git.savannah.gnu.org/cgit/freetype/freetype2.git/commit/?id=df14e6c0b9592cbb24d5381dfc6106b14f915e75
> https://bugs.launchpad.net/ubuntu/+source/freetype/+bug/1492124
> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=798620

All of 1492124 corresponds to CVE-2014-9745, which has existed for
about 10 days:

  http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2014-9745


> https://savannah.nongnu.org/bugs/?41309
> http://git.savannah.gnu.org/cgit/freetype/freetype2.git/commit/?id=8b281f83e8516535756f92dbf90940ac44bd45e1
> https://bugs.launchpad.net/ubuntu/+source/freetype/+bug/1449225
> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=798619

8b281f83e8516535756f92dbf90940ac44bd45e1 refers to four files in which
return values aren't checked, and uninitialized memory can
consequently be accessed. Use CVE-2014-9746 for all of those issues.

Also within 8b281f83e8516535756f92dbf90940ac44bd45e1, t42parse.c has a
new code block with a comment of "we would get an infinite loop if we
don't do anything here." As far as we can tell, this is a fix for a
CWE-372 ("Incomplete Internal State Distinction") issue in the sense
that the possibility of immediates-only mode isn't checked. This is
not closely related to the cause of the CVE-2014-9745 t1load.c
infinite loop. Use CVE-2014-9747 for this t42parse.c vulnerability.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWBceMAAoJEL54rhJi8gl5DCAP/0N55+8RxsXcacjl7FYwKSnS
FypoMZo/25aiHKgg1Lp61tog6swFEe10mZNkVSnKpt2OeZfhp1HcjnWiIrC5z3cl
/naRagBTlBGXCMhplc/zo8a77tQ9M4gXX/7KKO7GHJrZgoLiPOORli1JkAtIUa4K
oHl4TbwZbYi1AP2REFsSXRFuKAYC+4w55qYbRddTBte8ufiDWncLN51ZWbHNUSVp
UeRLwJIuLyowGkfbuqDakiuQKYqhM7qYQph/76Wmjq1swsMCIQcYGwzEaOEOt9VW
fPENeVmnIVTG7ajVfCar1x/uU0T/D61gIQeBq/cBSylZHuQxxhb2brYT3+iJgaDX
xGLZa6JSSn0urIT1Ej80B+SGfVqqwXP2eVDd1Y0vOIySgFAdde1RaaGneW0Ahyjs
+4Ejyv+eIH1KvF1RHrMwYnWDHWWprJOZFxakpIMUtJWnHR7vEKIPVA+HKOitqU88
CDjtI3uPPheSXZ14mN2zTQvID12Dg3Uhbw1C8f4+PTwZvSb4gbSMr/gqYL6TK8Mk
JniFdR30voiDXABUPwU5cK4EhQ5RcKIZ7izmfsj6rV1eFCkY5A/C5rLgrPQ841Cf
LTbUZQrFpn2uPXm5ELumegyJ0BcvZdrozK4GrO1cMwrAROdFOeycuLhR/tTmR8v9
BEqAdTwSgKwtENbFQm9A
=b8NX
-----END PGP SIGNATURE-----
