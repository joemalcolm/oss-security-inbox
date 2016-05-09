X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["937" "Sunday" "8" "May" "2016" "19:48:49" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1605081939480.23612@freddy.simplesystems.org>" "21" "[oss-security] GraphicsMagick Response To \"ImageTragick\"" "^Date:" nil nil "5" "2016050900:48:49" "[oss-security] GraphicsMagick Response To \"ImageTragick\"" (number mark "        bfriesen@sim May  8   21/937   " thread-indent "\"[oss-security] GraphicsMagick Response To \"ImageTragick\"\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13781 invoked by uid 550); 9 May 2016 00:49:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13719 invoked from network); 9 May 2016 00:49:02 -0000
X-X-Sender: bfriesen@freddy.simplesystems.org
Message-ID: <alpine.GSO.2.20.1605081939480.23612@freddy.simplesystems.org>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Sun, 08 May 2016 19:48:49 -0500 (CDT)
Date: Sun, 8 May 2016 19:48:49 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] GraphicsMagick Response To "ImageTragick"
To: oss-security@lists.openwall.com

The GraphicsMagick project response to the recent "ImageTragick" 
(https://imagetragick.com/) exploits may be found in an email posted 
to the GraphicsMagick announcements mail list and which may be found 
archived here: 
"https://sourceforge.net/p/graphicsmagick/mailman/message/35072963/".

The most important concern noted is that a shell exploit is possible 
via the "gplt" entry in the delegates.mgk file.  While GraphicsMagick 
does escape individual Unix shell arguments appropriately, the gnuplot 
load request can be used to invoke gnuplot's system() command.  The 
mere existence of a system() command makes gnuplot files entirely 
unsecure and it is a very dangerous format.

Unfortunately, I see that SourceForge converted the several patches 
into MS-DOS format.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
