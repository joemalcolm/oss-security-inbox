X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2466" "Tuesday" "23" "February" "2016" "10:14:13" "+1100" "Brian May" "brian@linuxpenguins.xyz" "<87fuwkmj7e.fsf@prune.linuxpenguins.xyz>" "76" "[oss-security] imagemagick: request for CVEs" nil nil nil "2" "2016022223:14:13" "[oss-security] imagemagick: request for CVEs" (number mark "U       brian@linuxp Feb 23   76/2466  " thread-indent "\"[oss-security] imagemagick: request for CVEs\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1469 invoked by uid 550); 22 Feb 2016 23:22:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28482 invoked from network); 22 Feb 2016 23:14:40 -0000
X-Virus-Scanned: amavisd-new at kolabnow.com
From: Brian May <brian@linuxpenguins.xyz>
To: oss security list <oss-security@lists.openwall.com>
Date: Tue, 23 Feb 2016 10:14:13 +1100
Message-ID: <87fuwkmj7e.fsf@prune.linuxpenguins.xyz>
Content-Type: text/plain
Subject: [oss-security] imagemagick: request for CVEs

Hello,

Debian has been tracking a number of security issues in imagemagick, and
as a Debian-LTS maintainer I have been advised to try to obtain CVEs for
these issue. On investigation some of these issues have already had CVE
requests however as far as I can tell, CVEs were not assigned (apologies
if I missed something), and I am not sure why.

As there are no CVEs allocated, I have used the temp ids given by Debian
for now.

https://security-tracker.debian.org/tracker/source-package/imagemagick



TEMP-0773834-5EB6CF: multiple vulnerabilities found by Google

CVE was already requested here:
http://www.openwall.com/lists/oss-security/2014/12/24/1



TEMP-0806441-76CD60: Integer and Buffer overflow in coders/icon.c

CVE was already requested here:
http://www.openwall.com/lists/oss-security/2015/10/07/2



TEMP-0806441-CB092C: Double free in coders/pict.c:2000

CVE was already requested here:
http://www.openwall.com/lists/oss-security/2015/10/07/2



TEMP-0811308-B63DA1 is multiple issues; each should have its own
CVE. Not sure if the momory leaks or the "PixelColor off by one" are
security issues, have included them here for sake of being complete:


  - Memory Leaks
    http://www.imagemagick.org/discourse-server/viewtopic.php?f=3&t=28791
    Upstream fix: https://github.com/ImageMagick/ImageMagick/commit/9043f3d1fb76c8f4f158d75dc6e2455c43d2f1de



  - Out of bounds error in SpliceImage
    http://www.imagemagick.org/discourse-server/viewtopic.php?f=3&t=28466
    Upstream fix: https://github.com/ImageMagick/ImageMagick/commit/7b1cf5784b5bcd85aa9293ecf56769f68c037231



  - Prevent null pointer access in magick/constitute.c
    https://github.com/ImageMagick/ImageMagick/pull/34
    Upstream fix: https://github.com/ImageMagick/ImageMagick/commit/5b4bebaa91849c592a8448bc353ab25a54ff8c44



  - PixelColor off by one on i386
    https://github.com/ImageMagick/ImageMagick/issues/54
    Upstream fix:
    https://github.com/ImageMagick/ImageMagick/commit/8f424002488d9f5ece29228d8ede0e39d838f38b
    https://github.com/ImageMagick/ImageMagick/commit/0e560d16873c166005eeb79bcca13b9f74177732
    https://github.com/ImageMagick/ImageMagick/commit/95c8394eaacc8c2f272177269416daf0b2ba004f
    


  - Fixed memory leak when reading incorrect PSD files
    Upstream fix: https://github.com/ImageMagick/ImageMagick/commit/bd9f1e7d1bd2c8e2cf7895d133c5c5b5cd3526b6


Regards
-- 
Brian May <brian@linuxpenguins.xyz>
https://linuxpenguins.xyz/brian/
