X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["997" "Sunday" "1" "May" "2016" "15:43:15" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1605011539410.23612@freddy.simplesystems.org>" "29" "Re: [oss-security] CVE request: DoS in multiple versions of GraphicsMagick" nil nil nil "5" "2016050120:43:15" "[oss-security] CVE request: DoS in multiple versions of GraphicsMagick" (number mark "U       bfriesen@sim May  1   29/997   " thread-indent "\"Re: [oss-security] CVE request: DoS in multiple versions of GraphicsMagick\"\n") "<CACn5sdRjA1Vma3em7z0xyuV87_iggAojuFMFZLWKnEFOHww3hg@mail.gmail.com>" ("<CACn5sdRjA1Vma3em7z0xyuV87_iggAojuFMFZLWKnEFOHww3hg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7616 invoked by uid 550); 1 May 2016 20:43:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7595 invoked from network); 1 May 2016 20:43:28 -0000
Date: Sun, 1 May 2016 15:43:15 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
X-X-Sender: bfriesen@freddy.simplesystems.org
To: oss-security@lists.openwall.com
In-Reply-To: <CACn5sdRjA1Vma3em7z0xyuV87_iggAojuFMFZLWKnEFOHww3hg@mail.gmail.com>
Message-ID: <alpine.GSO.2.20.1605011539410.23612@freddy.simplesystems.org>
References: <CACn5sdRjA1Vma3em7z0xyuV87_iggAojuFMFZLWKnEFOHww3hg@mail.gmail.com>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Sun, 01 May 2016 15:43:15 -0500 (CDT)
Subject: Re: [oss-security] CVE request: DoS in multiple versions of
 GraphicsMagick

On Sun, 1 May 2016, Gustavo Grieco wrote:

> We recently tested GraphicsMagick with our tool and found two issues that
> causes DoS:
>
> * Infinite loop caused by converting a circularly defined svg file.
>
> * Arithmetic exception converting a svg file caused by a X%0 operation in
> magick/render.c:3800
>
>    (long) (y-fill_pattern->tile_info.y) % fill_pattern->rows,
>
> Reproducers for both issues are attached. They are triggered by converting
> a svg to another format. Identification is not affected.
> These issues affect 1.3.18 and 1.3.23. Most likely other versions are
> vulnerable too.

These issues are now resolved in the GraphicsMagick Mercurial 
repository.

It is worth noting that ImageMagick's built-in SVG renderer has the 
same problem with "circular.svg" (specify the input file name like 
"msvg:circular.svg").

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
