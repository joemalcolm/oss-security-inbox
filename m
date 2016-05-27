X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2965" "Friday" "27" "May" "2016" "09:37:38" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1605270933490.4552@freddy.simplesystems.org>" "77" "[oss-security] Security issues addressed in GraphicsMagick SVG reader" "^Date:" nil nil "5" "2016052714:37:38" "[oss-security] Security issues addressed in GraphicsMagick SVG reader" (number mark "        bfriesen@sim May 27   77/2965  " thread-indent "\"[oss-security] Security issues addressed in GraphicsMagick SVG reader\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22229 invoked by uid 550); 27 May 2016 14:37:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22177 invoked from network); 27 May 2016 14:37:50 -0000
X-X-Sender: bfriesen@freddy.simplesystems.org
Message-ID: <alpine.GSO.2.20.1605270933490.4552@freddy.simplesystems.org>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Fri, 27 May 2016 09:37:38 -0500 (CDT)
Date: Fri, 27 May 2016 09:37:38 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Security issues addressed in GraphicsMagick SVG reader
To: oss-security@lists.openwall.com

===========================================
SVG Security Improvements in GraphicsMagick
===========================================

This is a summary of security improvements made to development
GraphicsMagick's SVG reader since the 1.3.23 release.  These
improvements were made in response to fuzz testing by Gustavo Grieco
(using Quickfuzz) which and which resulted in CVE-2016-2317 and
CVE-2016-2318.  We are thankful that Gustavo has been willing to
continue fuzz testing as improvements have been made.

While several implementation flaws were found and fixed, the most
serious issue which has been addressed is that the SVG reader was
doing no parameter value validation whatsoever.  Some algorithms are
unstable given improper inputs (e.g. negative number).  Luckily, the
SVG specification is very helpful with noting parameters which have
restricted value ranges and this can be used as a guide.

The SVG renderer in GraphicsMagick (and the built-in SVG renderer in
ImageMagick from which it originated) are based on a design where a
SVG pre-processor translates from SVG XML syntax into a simpler
internal textual form known as Magick Vector Graphics (MVG).  In most
cases the pre-processor acts as a translator/re-formatter, but in some
cases (e.g. for viewbox and affine transformations) it performs
computations.  Validation checks are added to the SVG pre-processor
whenever a value is used by computations.  Otherwise validation checks
are primarily added at the MVG level.

These improvements were made:

* Validate that parameter token text was actually consumed and that
   the token text does not overflow its buffer.

* Correctly estimate memory requirements required by the
   roundRectangle primitive.

* Validate stroke path arguments.  In particular, reject negative
   length values.

* Validate stroke dash pattern arguments.  In particular, reject
   negative length values.

* Validate stroke-miterlimit values (must be >= 1.0)

* Validate radialGradient angle values.

* Check rectangle arguments for appropriate ranges (e.g. reject
   negative width/height).

* Check rounded rectangle arguments for appropriate ranges
   (e.g. reject negative width/height/radius).

* Check ellipse arguments for appropriate range (e.g. reject negative
   radius).

* Check viewbox arguments for appropriate ranges (e.g. reject negative
   width/height).

* Prohibit use of Magick-specific file name prefixes and suffix
   arguments in SVG URLs.

* Limit the allowed size of clip-path and gradient images.

* Added drawing recursion detection.  This avoids hangs and stack
   exhaustion given self-referential URLs in the SVG.

* Fix usages of uninitialized memory discovered with some SVG files.


Fuzz testing is an on-going process and we will continue to address
any issues discovered.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
