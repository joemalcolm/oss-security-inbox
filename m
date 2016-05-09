X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1560" "Monday" "9" "May" "2016" "15:03:40" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1605091454420.27960@freddy.simplesystems.org>" "33" "Re: [oss-security] GraphicsMagick Response To \"ImageTragick\"" "^Date:" nil nil "5" "2016050920:03:40" "[oss-security] GraphicsMagick Response To \"ImageTragick\"" (number mark "        bfriesen@sim May  9   33/1560  " thread-indent "\"Re: [oss-security] GraphicsMagick Response To \"ImageTragick\"\"\n") "<20160509193355.GA11234@perpetual.pseudorandom.co.uk>" ("<alpine.GSO.2.20.1605090828220.23612@freddy.simplesystems.org>" "<20160509172045.GC9754@perpetual.pseudorandom.co.uk>" "<alpine.GSO.2.20.1605091330140.27960@freddy.simplesystems.org>" "<20160509193355.GA11234@perpetual.pseudorandom.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30527 invoked by uid 550); 9 May 2016 20:03:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30502 invoked from network); 9 May 2016 20:03:52 -0000
X-X-Sender: bfriesen@freddy.simplesystems.org
In-Reply-To: <20160509193355.GA11234@perpetual.pseudorandom.co.uk>
Message-ID: <alpine.GSO.2.20.1605091454420.27960@freddy.simplesystems.org>
References: <alpine.GSO.2.20.1605090828220.23612@freddy.simplesystems.org> <20160509172045.GC9754@perpetual.pseudorandom.co.uk> <alpine.GSO.2.20.1605091330140.27960@freddy.simplesystems.org> <20160509193355.GA11234@perpetual.pseudorandom.co.uk>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Mon, 09 May 2016 15:03:41 -0500 (CDT)
Date: Mon, 9 May 2016 15:03:40 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] GraphicsMagick Response To "ImageTragick"
To: oss-security@lists.openwall.com

On Mon, 9 May 2016, Simon McVittie wrote:
>
> Great. Is there an API that can be used to say "load this arbitrary file,
> but only if it is in a format that is considered entirely safe"?

In GraphicsMagick, defining the environment variable 
MAGICK_CODER_STABILITY=PRIMARY before running the will block out quite 
a lot of functionality (including SVG/MVG/MSL) but nothing can be 
considered entirely safe.

> I think the reason people are surprised and concerned to read about the
> MVG and MSL scripting languages is that they enter *Magick through the
> same APIs that open "safe" image files, blurring the boundary between
> "open a file" and "execute a script". If the entry point into executing
> MVG/MSL scripts was named more like ExecuteScript(), as opposed to
> ReadImage(), then I don't think anyone would object to MVG and MSL
> files having arbitrary code execution capabilities.

It is likely that the *Magick name was coined from the header of XPM 
files which playfully use the word "magick" as part of the header that 
programs would use for header magic testing.  This sets the stage for 
the automatic things that the software is doing.

In GraphicsMagick, the automatic scary stuff is all done within one 
function so it is reasonable to develop a less magical mode which is 
less likely to dispatch to a file reader for an archaic file format 
which stopped being used in 1993.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
