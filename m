X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["756" "Tuesday" "27" "September" "2016" "09:56:58" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1609270954220.18003@freddy.simplesystems.org>" "24" "Re: [oss-security] ImageMagick identify \"d:\" hangs" "^Date:" nil nil "9" "2016092714:56:58" "[oss-security] ImageMagick identify \"d:\" hangs" (number mark "        bfriesen@sim Sep 27   24/756   " thread-indent "\"Re: [oss-security] ImageMagick identify \"d:\" hangs\"\n") "<20160927142500.3x26pcrhw5x4nt6s@jwilk.net>" ("<alpine.GSO.2.20.1609270837170.5577@freddy.simplesystems.org>" "<20160927142500.3x26pcrhw5x4nt6s@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26091 invoked by uid 550); 27 Sep 2016 14:57:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26073 invoked from network); 27 Sep 2016 14:57:10 -0000
X-X-Sender: bfriesen@freddy.simplesystems.org
In-Reply-To: <20160927142500.3x26pcrhw5x4nt6s@jwilk.net>
Message-ID: <alpine.GSO.2.20.1609270954220.18003@freddy.simplesystems.org>
References: <alpine.GSO.2.20.1609270837170.5577@freddy.simplesystems.org> <20160927142500.3x26pcrhw5x4nt6s@jwilk.net>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Tue, 27 Sep 2016 09:56:58 -0500 (CDT)
Date: Tue, 27 Sep 2016 09:56:58 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ImageMagick identify "d:" hangs
To: oss-security@lists.openwall.com

On Tue, 27 Sep 2016, Jakub Wilk wrote:

> * Bob Friesenhahn <bfriesen@simple.dallas.tx.us>, 2016-09-27, 08:48:
>> From my own investigations, I used
>>
>>  identify -debug all "d:"
>> 
>> and see that a temporary file is reported to be created and then the 
>> program hangs which no apparent CPU usage.
>
> strace tells me that it waits for input on stdin.
> This is a simpler way to make it "hang":
>
>  identify -

This is what I expected was happening.  The main thing to investigate 
is if the "ImageTragick" patches distributions are using do protect 
against this possible issue as well.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
