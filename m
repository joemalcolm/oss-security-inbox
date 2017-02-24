X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2963" "Thursday" "23" "February" "2017" "21:18:17" "-0600" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1702232109380.9710@freddy.simplesystems.org>" "68" "[oss-security] GraphicsMagick heap out of bounds write issue" nil nil nil "2" "2017022403:18:17" "[oss-security] GraphicsMagick heap out of bounds write issue" (number mark "U       bfriesen@sim Feb 23   68/2963  " thread-indent "\"[oss-security] GraphicsMagick heap out of bounds write issue\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5387 invoked by uid 550); 24 Feb 2017 03:18:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5357 invoked from network); 24 Feb 2017 03:18:30 -0000
Date: Thu, 23 Feb 2017 21:18:17 -0600 (CST)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
X-X-Sender: bfriesen@freddy.simplesystems.org
To: oss-security@lists.openwall.com
Message-ID: <alpine.GSO.2.20.1702232109380.9710@freddy.simplesystems.org>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="-559023410-537896204-1487906297=:9710"
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Thu, 23 Feb 2017 21:18:17 -0600 (CST)
Subject: [oss-security] GraphicsMagick heap out of bounds write issue

---559023410-537896204-1487906297=:9710
Content-Type: text/plain; format=flowed; charset=US-ASCII

GraphicsMagick versions up to 1.3.25 encounter a write beyond an 
allocated heap buffer when reading CMYKA TIFF files which claim to 
offer fewer samples per pixel than required.

This is the tiffinfo description of the problematic TIFF file:

TIFF Directory at offset 0x808 (2056)
   Image Width: 34 Image Length: 48
   Bits/Sample: 8
   Sample Format: unsigned integer
   Compression Scheme: None
   Photometric Interpretation: separated
   Extra Samples: 1<unassoc-alpha>
   Orientation: row 0 top, col 0 lhs
   Samples/Pixel: 2
   Rows/Strip: 32
   Planar Configuration: single image plane

The fix for this is Mercurial changeset 14998:6156b4c2992d which may 
be viewed at SourceForge via this link:

https://sourceforge.net/p/graphicsmagick/code/ci/6156b4c2992d855ece6079653b3b93c3229fc4b8/

A minimal patch to correct the problem is attached.

This issue was reported to us on February 15, 2017 by Valon Chu.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
---559023410-537896204-1487906297=:9710
Content-Type: text/plain; charset=US-ASCII; name=tiff.c.patch
Content-Transfer-Encoding: BASE64
Content-ID: <alpine.GSO.2.20.1702232118170.9710@freddy.simplesystems.org>
Content-Description: 
Content-Disposition: attachment; filename=tiff.c.patch

ZGlmZiAtciAwMzkyYzQzMDVhNDMgLXIgNjE1NmI0YzI5OTJkIGNvZGVycy90
aWZmLmMNCi0tLSBhL2NvZGVycy90aWZmLmMJU3VuIEphbiAyOSAxMDowNDo1
NyAyMDE3IC0wNjAwDQorKysgYi9jb2RlcnMvdGlmZi5jCVRodSBGZWIgMjMg
MjE6MDY6NTAgMjAxNyAtMDYwMA0KQEAgLTEyMzAsOCArMTIzMCw4IEBADQog
ICAgICAgICAgICAgICAgICAgY2FzZSAwOg0KICAgICAgICAgICAgICAgICAg
ICAgaWYgKHNhbXBsZXNfcGVyX3BpeGVsID09IDEpDQogICAgICAgICAgICAg
ICAgICAgICAgICpxdWFudHVtX3R5cGU9R3JheVF1YW50dW07DQotICAgICAg
ICAgICAgICAgICAgICAgIGVsc2UNCi0gICAgICAgICAgICAgICAgICAgICAg
ICAqcXVhbnR1bV90eXBlPVJlZFF1YW50dW07DQorICAgICAgICAgICAgICAg
ICAgICBlbHNlDQorICAgICAgICAgICAgICAgICAgICAgICpxdWFudHVtX3R5
cGU9UmVkUXVhbnR1bTsNCiAgICAgICAgICAgICAgICAgICAgIGJyZWFrOw0K
ICAgICAgICAgICAgICAgICAgIGNhc2UgMToNCiAgICAgICAgICAgICAgICAg
ICAgICpxdWFudHVtX3R5cGU9R3JlZW5RdWFudHVtOw0KQEAgLTE0MTEsMTIg
KzE0MTEsMTIgQEANCiAgICAgICAgICAgICAgIH0NCiAgICAgICAgICAgICBl
bHNlDQogICAgICAgICAgICAgICB7DQotICAgICAgICAgICAgICAgIGlmIChp
bWFnZS0+bWF0dGUpDQorICAgICAgICAgICAgICAgIGlmIChpbWFnZS0+bWF0
dGUgJiYgc2FtcGxlc19wZXJfcGl4ZWwgPj0gNSkNCiAgICAgICAgICAgICAg
ICAgICB7DQogICAgICAgICAgICAgICAgICAgICAqcXVhbnR1bV90eXBlPUNN
WUtBUXVhbnR1bTsNCiAgICAgICAgICAgICAgICAgICAgICpxdWFudHVtX3Nh
bXBsZXM9NTsNCiAgICAgICAgICAgICAgICAgICB9DQotICAgICAgICAgICAg
ICAgIGVsc2UNCisgICAgICAgICAgICAgICAgZWxzZSBpZiAoc2FtcGxlc19w
ZXJfcGl4ZWwgPj0gNCkNCiAgICAgICAgICAgICAgICAgICB7DQogICAgICAg
ICAgICAgICAgICAgICAqcXVhbnR1bV90eXBlPUNNWUtRdWFudHVtOw0KICAg
ICAgICAgICAgICAgICAgICAgKnF1YW50dW1fc2FtcGxlcz00Ow0K

---559023410-537896204-1487906297=:9710--
