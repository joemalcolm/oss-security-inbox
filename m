X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2004" "Thursday" "19" "May" "2016" "14:51:58" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1605191433400.15930@freddy.simplesystems.org>" "45" "Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714" "^Date:" nil nil "5" "2016051919:51:58" "[oss-security] ImageMagick Is On Fire -- CVE-2016-3714" (number mark "        bfriesen@sim May 19   45/2004  " thread-indent "\"Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714\"\n") "<20160519190037.GA6411@perpetual.pseudorandom.co.uk>" ("<CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com>" "<20160503181505.GA8195@openwall.com>" "<57292879.7050303@gmail.com>" "<alpine.GSO.2.20.1605191154150.15930@freddy.simplesystems.org>" "<CANO=Ty26E=diToYAoedQB4JKTbnjykSy94ciE-XBNdyJBU0jNw@mail.gmail.com>" "<20160519190037.GA6411@perpetual.pseudorandom.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9403 invoked by uid 550); 19 May 2016 19:52:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9385 invoked from network); 19 May 2016 19:52:10 -0000
X-X-Sender: bfriesen@freddy.simplesystems.org
In-Reply-To: <20160519190037.GA6411@perpetual.pseudorandom.co.uk>
Message-ID: <alpine.GSO.2.20.1605191433400.15930@freddy.simplesystems.org>
References: <CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com> <20160503181505.GA8195@openwall.com> <57292879.7050303@gmail.com> <alpine.GSO.2.20.1605191154150.15930@freddy.simplesystems.org> <CANO=Ty26E=diToYAoedQB4JKTbnjykSy94ciE-XBNdyJBU0jNw@mail.gmail.com>
 <20160519190037.GA6411@perpetual.pseudorandom.co.uk>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Thu, 19 May 2016 14:51:58 -0500 (CDT)
Date: Thu, 19 May 2016 14:51:58 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714
To: oss-security@lists.openwall.com

On Thu, 19 May 2016, Simon McVittie wrote:
>
> Having looked into it a bit for Debian, there are several factors:
>
> * mitigations exist, like you said

The problem is that most users don't know about the problem, the 
mitigations, or are even aware that they are using the software. 
They do know about periodic application of security updates.

Regarding the comments from Kurt Seifried about the supposed perils of 
MVG:

Unless ImageMagick is configured to use RSVG (as it often is), then it 
will use its own built in SVG renderer by default (the built in one is 
still available with a "MSVG:" prefix to the filename or possibly the 
file extension).  The SVG renderer operates by translating the SVG 
into MVG, including the URLs.  The translation is not secure in that 
arbitrary MVG may be injected via SVG through text strings.  SVG is a 
common file exchange format found on the web and often opened outside 
of web browsers.

> * many of the upstream fixes in ImageMagick (and GraphicsMagick)
>  are really just mitigations too, and they remove features that someone
>  could conceivably have been using, which rather goes against the idea
>  of a stable release with a fixed feature-set

Agreed.

> Bob, if you would like distributions to pick up GraphicsMagick security
> fixes in a timely way, it would probably be really useful to do an
> upstream release - distributions are typically a lot more confident about

I do plan to make a release, but want to make sure that the release is 
of no less quality than other releases.  I want to remove the current 
render/MVG "mitigation" regarding magick-specific syntax and provide a 
"safer" operating mode which protects against magick-specific syntax 
when it is used for formats with expected behavior like SVG.  The 
"safer" mode may have general purpose value outside of MVG.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
