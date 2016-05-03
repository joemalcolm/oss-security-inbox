X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1125" "Tuesday" "3" "May" "2016" "21:15:05" "+0300" "Solar Designer" "solar@openwall.com" "<20160503181505.GA8195@openwall.com>" "21" "Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714" "^Date:" nil nil "5" "2016050318:15:05" "[oss-security] ImageMagick Is On Fire -- CVE-2016-3714" (number mark "        solar@openwa May  3   21/1125  " thread-indent "\"Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714\"\n") "<CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com>" ("<CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21831 invoked by uid 550); 3 May 2016 18:15:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21810 invoked from network); 3 May 2016 18:15:07 -0000
Message-ID: <20160503181505.GA8195@openwall.com>
References: <CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Date: Tue, 3 May 2016 21:15:05 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714
To: oss-security@lists.openwall.com

Thank you for bringing this in here, Ryan.

On Tue, May 03, 2016 at 10:59:12AM -0700, Ryan Huber wrote:
> What are "magic bytes"?
> 
> The first few bytes of a file can often used to identify the type of
> file. Some examples are GIF images, which start with the hex bytes "47
> 49 46 38", and JPEG images, which start with "FF D8". This list on
> Wikipedia has the magic bytes for most common file types.

It may be preferable to refer to ImageMagick's own list of magics.
HD Moore tweeted the relevant links:

<hdmoore> Two reasons you probably shouldn't be using ImageMagick in your web applications: https://github.com/ImageMagick/ImageMagick/blob/8c9d68ca4241b6faafa7a35658a125c3500a5edf/MagickCore/magic.c#L89 & https://github.com/ImageMagick/ImageMagick/blob/e93e339c0a44cec16c08d78241f7aa3754485004/www/source/delegates.xml#L62
<hdmoore> ImageTragick: Upload(meme.png)->(IM detects non-png format based on file magic)->(IM uses insecure delegates to decode)->Shells!

> ImageMagick also disclosed this on their forum a few hours ago.

https://www.imagemagick.org/discourse-server/viewtopic.php?f=4&t=29588

Alexander
