X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2178" "Friday" "20" "May" "2016" "08:52:31" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1605200827380.7756@freddy.simplesystems.org>" "59" "Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714" "^Date:" nil nil "5" "2016052013:52:31" "[oss-security] ImageMagick Is On Fire -- CVE-2016-3714" (number mark "        bfriesen@sim May 20   59/2178  " thread-indent "\"Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714\"\n") "<3b0ab9e5-d160-c5fe-a554-a5ac61eede34@cpanel.net>" ("<CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com>" "<20160503181505.GA8195@openwall.com>" "<57292879.7050303@gmail.com>" "<alpine.GSO.2.20.1605191154150.15930@freddy.simplesystems.org>" "<CANO=Ty26E=diToYAoedQB4JKTbnjykSy94ciE-XBNdyJBU0jNw@mail.gmail.com>" "<20160519190037.GA6411@perpetual.pseudorandom.co.uk>" "<3b0ab9e5-d160-c5fe-a554-a5ac61eede34@cpanel.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25887 invoked by uid 550); 20 May 2016 13:52:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25845 invoked from network); 20 May 2016 13:52:43 -0000
X-X-Sender: bfriesen@freddy.simplesystems.org
In-Reply-To: <3b0ab9e5-d160-c5fe-a554-a5ac61eede34@cpanel.net>
Message-ID: <alpine.GSO.2.20.1605200827380.7756@freddy.simplesystems.org>
References: <CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com> <20160503181505.GA8195@openwall.com> <57292879.7050303@gmail.com> <alpine.GSO.2.20.1605191154150.15930@freddy.simplesystems.org> <CANO=Ty26E=diToYAoedQB4JKTbnjykSy94ciE-XBNdyJBU0jNw@mail.gmail.com>
 <20160519190037.GA6411@perpetual.pseudorandom.co.uk> <3b0ab9e5-d160-c5fe-a554-a5ac61eede34@cpanel.net>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Fri, 20 May 2016 08:52:31 -0500 (CDT)
Date: Fri, 20 May 2016 08:52:31 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714
To: oss-security@lists.openwall.com

On Thu, 19 May 2016, John Lightsey wrote:
>
> This is the list I'm working off of. For RedHat and Debian, I only
> checked the ImageMagick updates.
>
> CVE-2016-3718 - SSRF via HTTP and FTP coders
> ImageMagick: Not fixed
> GraphicsMagick: Not fixed
> RedHat: Fixed
> Debian: Fixed

The above topic is worthy of discussion.  What is a security issue in 
some contexts is normal and necessary in others.

> No CVE assigned - Heap overflow in PICT parser
> ImageMagick: Fixed
> GraphicsMagick: ??
> RedHat: Not fixed
> Debian: Not fixed
> Reference: http://www.openwall.com/lists/oss-security/2016/05/11/3

The GraphicsMagick development code is not vulnerable to this one. 
GraphicsMagick may have been vulnerable in the past.

> No CVE assigned - Out of bounds read in the PSD parser
> ImageMagick: Fixed
> GraphicsMagick: ??
> RedHat: Not fixed
> Debian: Not fixed
> Reference: http://www.openwall.com/lists/oss-security/2016/05/11/3

The GraphicsMagick development code is not vulnerable to this one.
GraphicsMagick may have been vulnerable in the past.

> Are there other formats that are unsafe and should be removed using the
> policy configuration files?

In interest of full-disclosure, the GraphicsMagick project has fixed 
approximately 45 CVE-worthy issues since the last release, not 
including issues covered by CVE-2016-2317 and CVE-2016-2318 (which are 
fixed in the development code).  Many of the test files are published 
in full open view on bug trackers or other places.

In a similar time-frame, the ImageMagick project has been provided a 
great many files (likely more than 100) which crash the software and 
many of these files are published in full open view on bug trackers or 
other places.  Commits and other records show that problems are being 
fixed.

When fixed versions are released, OS distributions which continue to 
provide 3-year old releases are exposing users to releases with 
perhaps hundreds of fixed vulnerabilities which can be triggered using 
publically available files.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
