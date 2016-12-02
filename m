X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1451" "Thursday" "1" "December" "2016" "21:20:13" "-0600" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1612012111420.19696@freddy.simplesystems.org>" "37" "Re: [oss-security] graphicsmagick: memory allocation failure in MagickRealloc (memory.c)" "^Date:" nil nil "12" "2016120203:20:13" "[oss-security] graphicsmagick: memory allocation failure in MagickRealloc (memory.c)" (number mark "        bfriesen@sim Dec  1   37/1451  " thread-indent "\"Re: [oss-security] graphicsmagick: memory allocation failure in MagickRealloc (memory.c)\"\n") "<54839894.ARmt1DTBun@arcadia>" ("<54839894.ARmt1DTBun@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31788 invoked by uid 550); 2 Dec 2016 03:20:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31770 invoked from network); 2 Dec 2016 03:20:26 -0000
X-X-Sender: bfriesen@freddy.simplesystems.org
In-Reply-To: <54839894.ARmt1DTBun@arcadia>
Message-ID: <alpine.GSO.2.20.1612012111420.19696@freddy.simplesystems.org>
References: <54839894.ARmt1DTBun@arcadia>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="-559023410-1848259185-1480648813=:19696"
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Thu, 01 Dec 2016 21:20:13 -0600 (CST)
Date: Thu, 1 Dec 2016 21:20:13 -0600 (CST)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] graphicsmagick: memory allocation failure in
 MagickRealloc (memory.c)
To: oss-security@lists.openwall.com

---559023410-1848259185-1480648813=:19696
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT

On Thu, 1 Dec 2016, Agostino Sarubbo wrote:

> If suitable for a CVE please assign one. Thanks.
>
> Description:
> Graphicsmagick is an Image Processing System.
>
> This is an old memory failure, discovered time ago. The maintainer, Mr. Bob
> Friesenhahn was able to reproduce the issue; I’m quoting his feedback about:
>
> The problem is that the embedded JPEG data claims to have dimensions
> 59395×56833 and
> this is only learned after we are in the JPEG reader.
>
> But for some reasons (maybe not easy to fix) it is still not fixed.

We did make an unreleased fix (Mercurial changeset 14953:38d0f281e8c8, 
and earlier changeset 14831:28c0bb8bf89a), but perhaps not the way you 
like.  The fix which was made was to require that the embedded JPEG 
data has the same dimensions as the containing JNG file.  The existing 
resource limit mechanism would then allow the user to constrain the 
size of the JNG image.  The default constraints in a 64-bit build are 
larger than what the JPEG format supports.

It does not seem correct to change the default limits of the software 
in order to make fuzzing easier.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
---559023410-1848259185-1480648813=:19696--
