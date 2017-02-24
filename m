X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1421" "Friday" "24" "February" "2017" "08:23:21" "-0600" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1702240821470.9710@freddy.simplesystems.org>" "43" "[oss-security] Re: GraphicsMagick heap out of bounds write issue" "^Date:" nil nil "2" "2017022414:23:21" "[oss-security] Re: GraphicsMagick heap out of bounds write issue" (number mark "U       bfriesen@sim Feb 24   43/1421  " thread-indent "\"[oss-security] Re: GraphicsMagick heap out of bounds write issue\"\n") "<alpine.GSO.2.20.1702232109380.9710@freddy.simplesystems.org>" ("<alpine.GSO.2.20.1702232109380.9710@freddy.simplesystems.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5180 invoked by uid 550); 24 Feb 2017 14:23:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5154 invoked from network); 24 Feb 2017 14:23:33 -0000
X-X-Sender: bfriesen@freddy.simplesystems.org
In-Reply-To: <alpine.GSO.2.20.1702232109380.9710@freddy.simplesystems.org>
Message-ID: <alpine.GSO.2.20.1702240821470.9710@freddy.simplesystems.org>
References: <alpine.GSO.2.20.1702232109380.9710@freddy.simplesystems.org>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Fri, 24 Feb 2017 08:23:21 -0600 (CST)
Date: Fri, 24 Feb 2017 08:23:21 -0600 (CST)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: GraphicsMagick heap out of bounds write issue
To: oss-security@lists.openwall.com

I would like to ammend this report in that the situation is a read 
beyond an allocated heap buffer rather than a write beyond the end of 
an allocated heap buffer as was originally reported.  The application 
may crash but should not be otherwise compromised.

Bob

On Thu, 23 Feb 2017, Bob Friesenhahn wrote:

> GraphicsMagick versions up to 1.3.25 encounter a write beyond an allocated 
> heap buffer when reading CMYKA TIFF files which claim to offer fewer samples 
> per pixel than required.
>
> This is the tiffinfo description of the problematic TIFF file:
>
> TIFF Directory at offset 0x808 (2056)
>  Image Width: 34 Image Length: 48
>  Bits/Sample: 8
>  Sample Format: unsigned integer
>  Compression Scheme: None
>  Photometric Interpretation: separated
>  Extra Samples: 1<unassoc-alpha>
>  Orientation: row 0 top, col 0 lhs
>  Samples/Pixel: 2
>  Rows/Strip: 32
>  Planar Configuration: single image plane
>
> The fix for this is Mercurial changeset 14998:6156b4c2992d which may be 
> viewed at SourceForge via this link:
>
> https://sourceforge.net/p/graphicsmagick/code/ci/6156b4c2992d855ece6079653b3b93c3229fc4b8/
>
> A minimal patch to correct the problem is attached.
>
> This issue was reported to us on February 15, 2017 by Valon Chu.
>
> Bob
>

-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
