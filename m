X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1960" "Wednesday" "29" "June" "2016" "21:27:58" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160630012758.B2D89EBC15E@smtpvmsrv1.mitre.org>" "55" "[oss-security] Re: CVE Request: libgd: Invalid color index is not properly handled leading to denial of service (crash)" nil nil nil "6" "2016063001:27:58" "[oss-security] Re: CVE Request: libgd: Invalid color index is not properly handled leading to denial of service (crash)" (number mark "U       cve-assign@m Jun 29   55/1960  " thread-indent "\"[oss-security] Re: CVE Request: libgd: Invalid color index is not properly handled leading to denial of service (crash)\"\n") "<20160629194243.GA12097@eldamar.local>" ("<20160629194243.GA12097@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9421 invoked by uid 550); 30 Jun 2016 01:28:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9388 invoked from network); 30 Jun 2016 01:28:10 -0000
From: cve-assign@mitre.org
To: carnil@debian.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160629194243.GA12097@eldamar.local>
Message-Id: <20160630012758.B2D89EBC15E@smtpvmsrv1.mitre.org>
Date: Wed, 29 Jun 2016 21:27:58 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: libgd: Invalid color index is not properly handled leading to denial of service (crash)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> There is currently PHP upstream bug which is still marked as private:
> 
> https://bugs.php.net/bug.php?id=72494
> 
> But the libgd project references the following set of commits to this
> bug report:
> 
> https://github.com/libgd/libgd/compare/3fe0a71...6ff72ae
> 
> indicating that libgd does not properly handle invalid color index,
> which could lead to a denial of service against applications using the
> libgd library (in particular thus PHP).

> https://github.com/libgd/libgd/commit/1ccfe21e14c4d18336f9da8515cd17db88c3de61
> gd_crop.c
> gdImageCropThreshold
> 
> + if (color < 0 || (!gdImageTrueColor(im) && color >= gdImageColorsTotal(im))) {
> + return NULL;
> + }

> https://github.com/libgd/libgd/commit/6ff72ae40c7c20ece939afb362d98cc37f4a1c96
> tests/gdimagecrop/php_bug_72494.c
> 
> im = gdImageCreate(50, 50);
> gdImageCropThreshold(im, 1337, 0);
> gdImageDestroy(im);

Use CVE-2016-6128.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXdHSeAAoJEHb/MwWLVhi2B5MQAJkNv180fmdDbPu+uH4oBRme
uWdpmquumYvoNsLAL0+u605QiaEh87S5XIBbgAyY7IaXf3K3rREcz9vrhRd7dciP
c20hx1lh6ZIdP9BH2CidC6rbjWrSatzrngi25d8x2EEWH3nyvG8HA/hGjxpOmO6W
eeJO6FRrxc+LkLYRthfNUtL2r23AbrMN0v0BMPNdNLDoaLBd1xOL6A+IA3P5v67R
XEZ2xhOk73pI4I7UJKfgpmtB0OgIjQjxaBLHBbhQqiug2E63W2SgqUPvb3cfyQx5
FaU0EmnTo3Ampm5a1kHsccOQzZ/Na+CSjlMltko06Cvx/9Cn6xS3xRFLCyG4gEQ8
PPvh/qjvSIwTyXqrYYwGlDx9UdiLa25PmJ9DcV8yPYbYShZy7eoKeqCIyyiWJLPZ
D5WAL6DhVFz12tpCD287hlmyOziObo5dsVGyPx6FFPmHhmyjJ0gVqsaFVJWFT7Kd
DfLIFn4D4/aCozhr9PZSEa2ebYbb9HP0deEFhfT6u+cjuhtPNREyZxIDgfPHFFut
nlzOh2wVn4O3i+y3/JIEz+pzqOqMtIcmOs+ZpNyMw0OLTzuu+dad5JyOsz96pNES
E1y7sbP6Ms0D9yS1dmBm41rFwXfLC2bhBctmgO4quK+2wuAOeTIgiRdhUyOTeW53
R0kiYe8gCyZIoAhodAWN
=/4Kb
-----END PGP SIGNATURE-----
