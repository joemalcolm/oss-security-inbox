X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1335" "Friday" "9" "September" "2016" "09:56:49" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1609090953070.18405@freddy.simplesystems.org>" "32" "Re: [oss-security] GraphicsMagick 1.3.25 fixes some security issues" nil nil nil "9" "2016090914:56:49" "[oss-security] GraphicsMagick 1.3.25 fixes some security issues" (number mark "U       bfriesen@sim Sep  9   32/1335  " thread-indent "\"Re: [oss-security] GraphicsMagick 1.3.25 fixes some security issues\"\n") "<1695997.I5q5FJauoq@willoughby>" ("<alpine.GSO.2.20.1609062029590.6469@freddy.simplesystems.org>" "<1695997.I5q5FJauoq@willoughby>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7808 invoked by uid 550); 9 Sep 2016 14:57:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7787 invoked from network); 9 Sep 2016 14:57:08 -0000
Date: Fri, 9 Sep 2016 09:56:49 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
X-X-Sender: bfriesen@freddy.simplesystems.org
To: Agostino Sarubbo <ago@gentoo.org>
cc: oss-security@lists.openwall.com
In-Reply-To: <1695997.I5q5FJauoq@willoughby>
Message-ID: <alpine.GSO.2.20.1609090953070.18405@freddy.simplesystems.org>
References: <alpine.GSO.2.20.1609062029590.6469@freddy.simplesystems.org> <1695997.I5q5FJauoq@willoughby>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="-559023410-1144747756-1473433010=:18405"
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Fri, 09 Sep 2016 09:56:50 -0500 (CDT)
Subject: Re: [oss-security] GraphicsMagick 1.3.25 fixes some security
 issues

---559023410-1144747756-1473433010=:18405
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT

On Fri, 9 Sep 2016, Agostino Sarubbo wrote:

> On Tuesday 06 September 2016 20:50:23 Bob Friesenhahn wrote:
>> 4. The TIFF reader had a bug pertaining to use of TIFFGetField() when
>> a 'count' value is returned.  The bug caused a heap read overflow (due
>> to using strlcpy() to copy a possibly unterminated string) which could
>> allow an untrusted file to crash the software.
>
>
> For who is interested, the details of the issue N° 4 are documented here:
>
> https://blogs.gentoo.org/ago/2016/08/23/graphicsmagick-two-heap-based-buffer-overflow-in-readtiffimage-tiff-c/[1]

The problem was due to the definition of strlcpy() in that it is 
supposed to return the number of characters which would have been 
copied if the destination buffer was large enough.  To satisfy this 
requirement, strlcpy() needs to continue scanning memory until it 
encounters a null byte in memory.

The strlcpy() function has very nice properties but this weakness is 
something that developers need to be aware of.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
---559023410-1144747756-1473433010=:18405--
