X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1145" "Sunday" "13" "November" "2016" "16:28:19" "+0100" "Sebastian Pipping" "sebastian@pipping.org" "<22143afd-005a-6fff-2c75-f5e74c2b92fe@pipping.org>" "42" "[oss-security] CVE needed? / gnuchess 6.2.4 fixed user input buffer overflow" nil nil nil "11" "2016111315:28:19" "[oss-security] CVE needed? / gnuchess 6.2.4 fixed user input buffer overflow" (number mark "U       sebastian@pi Nov 13   42/1145  " thread-indent "\"[oss-security] CVE needed? / gnuchess 6.2.4 fixed user input buffer overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13511 invoked by uid 550); 13 Nov 2016 15:28:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13493 invoked from network); 13 Nov 2016 15:28:32 -0000
From: Sebastian Pipping <sebastian@pipping.org>
To: oss-security@lists.openwall.com
Cc: Antonio Ceballos <aceballos@gmail.com>
Message-ID: <22143afd-005a-6fff-2c75-f5e74c2b92fe@pipping.org>
Date: Sun, 13 Nov 2016 16:28:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Df-Sender: aGFydHdvcmtAYmluZXJhLmRl
Subject: [oss-security] CVE needed? / gnuchess 6.2.4 fixed user input buffer overflow

Hi there!


gnuchess 6.2.4 fixed a stack buffer overflow related to user move input,
i.e. 160 characters input can crash unpatched gnuchess 6.2.3.

I am unsure if this can be used to execute arbitrary code and if it
needs a CVE or not: gnuchess itself does not seem to accept input from a
file so it may need some other application in front (e.g. a website
using gnuchess for a backend or some mobile/desktop application
forwarding evil input to gnuchess with improper validation) to attack.

The patch in 6.2.4 is this, content from s goes into mvstr later:


# diff -u4 gnuchess-6.2.3/src/frontend/move.cc
gnuchess-6.2.4/src/frontend/move.cc
--- gnuchess-6.2.3/src/frontend/move.cc        2015-01-01
23:57:25.000000000 +0100
+++ gnuchess-6.2.4/src/frontend/move.cc        2016-09-20
01:12:35.000000000 +0200
@@ -541,8 +541,13 @@
    char mvstr[MAXSTR], *p;
    BitBoard b, b2;
    leaf *n1, *n2;

+   /* User input could be longer than MAXSTR */
+   if ( strlen(s) >= MAXSTR ) {
+      s[MAXSTR-1] = '\0';
+   }
+
    TreePtr[2] = TreePtr[1];
    GenMoves (1);
    FilterIllegalMoves (1);
    side = board.side;


Thanks and best



Sebastian
