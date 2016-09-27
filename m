X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1705" "Tuesday" "27" "September" "2016" "08:48:42" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1609270837170.5577@freddy.simplesystems.org>" "48" "[oss-security] ImageMagick identify \"d:\" hangs" "^Date:" nil nil "9" "2016092713:48:42" "[oss-security] ImageMagick identify \"d:\" hangs" (number mark "        bfriesen@sim Sep 27   48/1705  " thread-indent "\"[oss-security] ImageMagick identify \"d:\" hangs\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10062 invoked by uid 550); 27 Sep 2016 13:48:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10024 invoked from network); 27 Sep 2016 13:48:54 -0000
X-X-Sender: bfriesen@freddy.simplesystems.org
Message-ID: <alpine.GSO.2.20.1609270837170.5577@freddy.simplesystems.org>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="-559023410-1040300044-1474984122=:5577"
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Tue, 27 Sep 2016 08:48:42 -0500 (CDT)
Date: Tue, 27 Sep 2016 08:48:42 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] ImageMagick identify "d:" hangs
To: oss-security@lists.openwall.com

---559023410-1040300044-1474984122=:5577
Content-Type: text/plain; format=flowed; charset=UTF-8
Content-Transfer-Encoding: 8BIT

Today I noticed ImageMagick issue #275 
(https://github.com/ImageMagick/ImageMagick/issues/275) which was 
posted 4 days ago.   I was able to reproduce this issue with the 
ImageMagick provided by my Ubuntu system (6.8.9-9).

The problem is that a file name ending with a colon (':') causes the 
program to hang forever.  If an attacker is able to have some control 
over the input file name, then this could be used to cause DOS by 
hanging the program.

The following is the text from the problem report:

   qwerty4030 commented 4 days ago • edited
   Version: ImageMagick 6.9.3-10 Q16 x86_64 2016-05-04
   http://www.imagemagick.org
   Copyright: Copyright (C) 1999-2016 ImageMagick Studio LLC
   License: http://www.imagemagick.org/script/license.php
   Features: Cipher DPC OpenMP
   Delegates (built-in): jng jpeg lzma png tiff xml zlib

   OS: 4.4.10-22.54.amzn1.x86_64 (amazon linux)

   identify hangs on the following commands:

   identify "d:" (no output, just hangs forever)
   identify "d::" (no output, just hangs forever)
   identify "http:"
   error : Unknown IO error (hangs after this message)
   identify "http::"
   error : Unknown IO error (hangs after this message)

>From my own investigations, I used

   identify -debug all "d:"

and see that a temporary file is reported to be created and then the 
program hangs which no apparent CPU usage.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
---559023410-1040300044-1474984122=:5577--
