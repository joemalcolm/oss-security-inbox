X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["734" "Monday" "24" "April" "2017" "17:08:57" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1704241659260.19751@scrappy.simplesystems.org>" "21" "Re: [oss-security] remote DoS via CPU exhaustion in anon FTP server glob expansion" "^Date:" nil nil "4" "2017042422:08:57" "[oss-security] remote DoS via CPU exhaustion in anon FTP server glob expansion" (number mark "        bfriesen@sim Apr 24   21/734   " thread-indent "\"Re: [oss-security] remote DoS via CPU exhaustion in anon FTP server glob expansion\"\n") "<CADSkJJWpn3Z6VermSdq9f2ckxQ59BUXDZ4y=_A0gSQKv7YZ+zg@mail.gmail.com>" ("<CADSkJJWpn3Z6VermSdq9f2ckxQ59BUXDZ4y=_A0gSQKv7YZ+zg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 6057 invoked by uid 550); 24 Apr 2017 22:09:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6030 invoked from network); 24 Apr 2017 22:09:11 -0000
X-X-Sender: bfriesen@scrappy.simplesystems.org
In-Reply-To: <CADSkJJWpn3Z6VermSdq9f2ckxQ59BUXDZ4y=_A0gSQKv7YZ+zg@mail.gmail.com>
Message-ID: <alpine.GSO.2.20.1704241659260.19751@scrappy.simplesystems.org>
References: <CADSkJJWpn3Z6VermSdq9f2ckxQ59BUXDZ4y=_A0gSQKv7YZ+zg@mail.gmail.com>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Mon, 24 Apr 2017 17:08:58 -0500 (CDT)
Date: Mon, 24 Apr 2017 17:08:57 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] remote DoS via CPU exhaustion in anon FTP server
 glob expansion
To: oss-security@lists.openwall.com

There was no mention of ImageMagick and GraphicsMagick, which have 
their own built-in glob algorithm.

When a matching file exists, a glob expression which takes massive 
time with zsh, takes virtually no time with ImageMagick/GraphicsMagick 
(much better than zsh).  However if there is no matching file, then 
the amount of time required seems unbounded.

Besides being passed as an explicit argument, glob expressions can be 
passed as multiple lines in a text file preceded with a '@' character 
like

   @filename.txt

Any input file name could be a glob expression.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
