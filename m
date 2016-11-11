X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1738" "Friday" "11" "November" "2016" "02:07:06" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<67442b1d219447cc8a6dfce7f08a43b1@imshyb02.MITRE.ORG>" "43" "[oss-security] Re: CVE request: Heap read out-of-bounds parsing a Javascript file with the last revision of JavaScript Core" nil nil nil "11" "2016111107:07:06" "[oss-security] Re: CVE request: Heap read out-of-bounds parsing a Javascript file with the last revision of JavaScript Core" (number mark "U       cve-assign@m Nov 11   43/1738  " thread-indent "\"[oss-security] Re: CVE request: Heap read out-of-bounds parsing a Javascript file with the last revision of JavaScript Core\"\n") "<CACn5sdRbBPaw4MCTH7eskU5r1xfM8WGAaLU--=aNjy6x0B6-QQ@mail.gmail.com>" ("<CACn5sdRbBPaw4MCTH7eskU5r1xfM8WGAaLU--=aNjy6x0B6-QQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18412 invoked by uid 550); 11 Nov 2016 07:07:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18394 invoked from network); 11 Nov 2016 07:07:18 -0000
From: <cve-assign@mitre.org>
To: <gustavo.grieco@gmail.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <CACn5sdRbBPaw4MCTH7eskU5r1xfM8WGAaLU--=aNjy6x0B6-QQ@mail.gmail.com>
Message-ID: <67442b1d219447cc8a6dfce7f08a43b1@imshyb02.MITRE.ORG>
Date: Fri, 11 Nov 2016 02:07:06 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request: Heap read out-of-bounds parsing a Javascript file with the last revision of JavaScript Core

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> We recently found a read out-of-bounds parsing JavaScript code in the last
> revision of WebKit

> WTF::ParkingLot::parkConditionallyImpl

CVE IDs for WebKit are typically assigned by Google. Perhaps you are
testing WebKit code that is too new to affect Chrome. Possibly
applicable references are:

  https://webkit.org/blog/6161/locking-in-webkit/
  https://chromium.googlesource.com/chromium/src/+/master/third_party/WebKit/Source/wtf/
  https://www.google.com/about/appsecurity/chrome-rewards/

If you can confirm that Chrome is unaffected or that your report
wasn't accepted at
https://code.google.com/p/chromium/issues/entry?template=Security%20Bug
then we can send a CVE ID here.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYJW0PAAoJEHb/MwWLVhi2tAAP/0YPJtWUwAUpo9ei5DxUQpVF
nKNQjnUR3lCVGwTGDqD3F9nnoWsyrAePbAYvRyodh/KFBLbdoN9EN6N7l8HaRqgy
gbpetQ1WEJECggmarKk1HveIK82g5yfIKsAfk8ybkPl7FvObd60oQiB6TEZaZRZp
WqT1eNuJM7fB9f+8GkDhuwMNkq3Q09BMhnM4GOJP8i6afaeh6R9Ih1cVOYwmNxsF
c/+6ba2QQbCfN3G1P4Sy/0qt0Iuuh/6iN8aXu+c1Ghajx86/w5sPH5hy9BFusJ1i
e3rSYLDVknDY87gKertfHnK1fkRBvlsABVvEdCiY0a0f8e5wCHB/aTx8fgE9RvCn
M9767qljP3ea/8GAtSPwwskOx+yMNUJPYBlo6C5NDHW98sCHOlWS4yB3k8zvNWMz
vS+skFo/GrqnX3RsuNoOdvpUpwt/mBoTr6sVK/oA9xY9U+lvdGiWCRri5ugSjgSK
Dv1VpxzsQHE7fQBy8RJg5AtFS6VTKGAsTy68hAFkSTZV3aEZNJNsoRmdmCRImQs+
jKM7cT4MbSrEUEtEFysPt5AWbe5C8E8dwbhg/FNtZV7Zz+B8n7aRBfdcHMCkG0O9
NsVs9dJkv7w1mOdibownVMvTV/UqzMRr+lzzmUPbeWGetaxmCr3mn6+kx4uKYabH
aqWJRCKdup0fmNUs/xSW
=2oQn
-----END PGP SIGNATURE-----
