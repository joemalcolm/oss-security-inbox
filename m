X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["722" "Saturday" "1" "October" "2016" "10:43:18" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1610011036390.13801@freddy.simplesystems.org>" "19" "[oss-security] GraphicsMagick CVE request: 8BIM/8BIMW unsigned underflow leads to heap overflow" nil nil nil "10" "2016100115:43:18" "[oss-security] GraphicsMagick CVE request: 8BIM/8BIMW unsigned underflow leads to heap overflow" (number mark "U       bfriesen@sim Oct  1   19/722   " thread-indent "\"[oss-security] GraphicsMagick CVE request: 8BIM/8BIMW unsigned underflow leads to heap overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23875 invoked by uid 550); 1 Oct 2016 15:43:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23857 invoked from network); 1 Oct 2016 15:43:31 -0000
Date: Sat, 1 Oct 2016 10:43:18 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
X-X-Sender: bfriesen@freddy.simplesystems.org
To: oss-security@lists.openwall.com
Message-ID: <alpine.GSO.2.20.1610011036390.13801@freddy.simplesystems.org>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Sat, 01 Oct 2016 10:43:18 -0500 (CDT)
Subject: [oss-security] GraphicsMagick CVE request: 8BIM/8BIMW unsigned underflow leads to
 heap overflow

Today we received a report from Marco Grassi about a heap overflow in 
the 8BIM reader.  8BIM is a metadata chunk often attached to JPEG 
files.

After investigation it was found that there was a small unsigned 
overflow leading to a huge size value, which then resulted in a heap 
overflow (causing a crash).

We believe that this issue exists in all GraphicsMagick releases to 
date (including 1.3.25).

The fix to this may be found in GraphicsMagick Mercurial at 
"https://sourceforge.net/p/graphicsmagick/code/ci/5c7b6d6094a25e99c57f8b18343914ebfd8213ef/".

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
