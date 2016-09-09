X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2333" "Friday" "9" "September" "2016" "10:45:38" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160909144538.607BF6C5187@smtpvmsrv1.mitre.org>" "57" "[oss-security] Re: CVE request for webp:index overflow,used by memcpy later" nil nil nil "9" "2016090914:45:38" "[oss-security] Re: CVE request for webp:index overflow,used by memcpy later" (number mark "U       cve-assign@m Sep  9   57/2333  " thread-indent "\"[oss-security] Re: CVE request for webp:index overflow,used by memcpy later\"\n") "<585826E9-17D1-4276-A300-32BD760AAF32@topsec.com.cn>" ("<585826E9-17D1-4276-A300-32BD760AAF32@topsec.com.cn>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26230 invoked by uid 550); 9 Sep 2016 14:45:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26209 invoked from network); 9 Sep 2016 14:45:50 -0000
From: cve-assign@mitre.org
To: chenqin@topsec.com.cn
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <585826E9-17D1-4276-A300-32BD760AAF32@topsec.com.cn>
Message-Id: <20160909144538.607BF6C5187@smtpvmsrv1.mitre.org>
Date: Fri,  9 Sep 2016 10:45:38 -0400 (EDT)
Subject: [oss-security] Re: CVE request for webp:index overflow,used by memcpy later

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Product: A new image format for the Web:Webp
> in function:ReadFunc
> 
> fixed here:
> https://chromium-review.googlesource.com/#/c/355380/
> https://cr-rev.appspot.com/bb50bf42b0a39bc378401a2d5d8eaa678813a92f

Do you know whether Google already assigned a CVE ID to this issue? If
not, do you have access to any of the Google web pages that might
contain the CVE ID if it exists?

An attempt to retrieve the above cr-rev.appspot.com URL results in:

  Location: https://chromium.googlesource.com/chromium/src/+/bb50bf42b0a39bc378401a2d5d8eaa678813a92f

and that second URL results in:

  404 Not Found

Also, https://chromium-review.googlesource.com/#/c/355380/ refers to
https://bugs.chromium.org/p/webp/issues/detail?id=302 but that is
currently not a public bug page.

Finally, https://chromium-review.googlesource.com/#/c/355380/
indicates that this is an issue in the examples/pngdec.c file. A crash
bug in an example program does not necessarily qualify for a CVE ID.
However, in this case, examples/pngdec.c is apparently used to build a
library called libexample_dec, and it's conceivable that arbitrary
applications rely on libexample_dec. (It also seems unlikely that a
Google product relies on libexample_dec; that may be a reason that
Google did not assign a CVE ID.)

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX0sqnAAoJEHb/MwWLVhi2E28QALdM2bA72+4irx6Sh61s5JsS
rToRlvwZpIS5vvDm4TQQOhnviGTGSbUhwuA30p/0Xb8/35gKIhV70QLxIDLZPmHj
gTBowDLV5ffddz5mVkL2cXMnecChuT1v2QsO4jW4WCx/yZoDYrDKTbPiwUENb/pU
I6jg4k1uOJYpvLnPFT56kXD4BDeApqFjAZEfgG7lcdSDIKGN/tNr4kiCsrUVGqE6
oZyQFJz/BvWmncIEcTBkc7aHxXsUdt6rSMuL5QyapilGBclj7M5NmK82Bq+SDNfD
QTVX1fp7gCL8NNDI1SJKBjX/KEp4bGp4NKavifxaZmEn5pq2vBp4uItD/5rn0m6T
nvp7Zvztv0YgdBrlY5M1fhhEo3YFO0+x+NXkBfsi8sbV1G+jQaG1jmjYPQHJaa2e
A/fMInUDO+XqtJBnUPXTM+ZKINj6hH63ar+xi+Dsva8ri++kNooFlMeabpKw7AmQ
+X1RWDqDbWD9sBneG4MBhem3mZRbmvwQGLyBDO84Zxqq4a55ymA+wjz//La00Vn1
G5Qo6rhZFEIUWyqdTkeCE6DLuTtq0xopa+B70WI+MSrq3Bi4QGYNFylyBFURgxns
qzXbRUNqx1F6IrdsljMSyhzB9xwMD6EZUoEiRqFQYt/BDXfk3JqyP6bfapE8ZcyA
jYF48PtLBOUE6wVh0UJi
=scJU
-----END PGP SIGNATURE-----
