X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1295" "Tuesday" "6" "September" "2016" "20:50:23" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1609062029590.6469@freddy.simplesystems.org>" "31" "[oss-security] GraphicsMagick 1.3.25 fixes some security issues" "^Date:" nil nil "9" "2016090701:50:23" "[oss-security] GraphicsMagick 1.3.25 fixes some security issues" (number mark "        bfriesen@sim Sep  6   31/1295  " thread-indent "\"[oss-security] GraphicsMagick 1.3.25 fixes some security issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7232 invoked by uid 550); 7 Sep 2016 01:50:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7206 invoked from network); 7 Sep 2016 01:50:36 -0000
X-X-Sender: bfriesen@freddy.simplesystems.org
Message-ID: <alpine.GSO.2.20.1609062029590.6469@freddy.simplesystems.org>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Tue, 06 Sep 2016 20:50:23 -0500 (CDT)
Date: Tue, 6 Sep 2016 20:50:23 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] GraphicsMagick 1.3.25 fixes some security issues
To: oss-security@lists.openwall.com

Yesterday GraphicsMagick 1.3.25 was released.  It fixes several 
security issues:

1. A last instance of CVE-2016-2317 (heap buffer overflow) in the MVG 
rendering code (also impacts SVG).  This problem was originally 
reported by Gustavo Grieco.

2. A possible heap overflow of the EscapeParenthesis() function. 
While I was not able to reproduce it for myself, the implementation is 
replaced with a different algorithm.  This problem was reported by 
Gustavo Grieco.

3. The Utah RLE reader did not validate that header information was 
reasonable given the file size and so it could cause huge memory 
allocations and/or consume huge amounts of CPU.  This problem was 
reported by Agostino Sarubbo.

4. The TIFF reader had a bug pertaining to use of TIFFGetField() when 
a 'count' value is returned.  The bug caused a heap read overflow (due 
to using strlcpy() to copy a possibly unterminated string) which could 
allow an untrusted file to crash the software.

The project appreciates the time and effort that various security 
researchers have expended to identify security issues with the 
software so that they may be fixed.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
