X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1063" "Monday" "22" "May" "2017" "17:58:31" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1705221753220.23240@scrappy.simplesystems.org>" "31" "Re: [oss-security] Re: ImageMagick: CVE-2017-9098: use of uninitialized memory in RLE decoder" "^cc:" nil nil "5" "2017052222:58:31" "[oss-security] Re: ImageMagick: CVE-2017-9098: use of uninitialized memory in RLE decoder" (number mark "        bfriesen@sim May 22   31/1063  " thread-indent "\"Re: [oss-security] Re: ImageMagick: CVE-2017-9098: use of uninitialized memory in RLE decoder\"\n") "<bd1dd6da-8b2a-4776-ea92-cc5a4b369515@gentoo.org>" ("<20170520072632.z5nbivrdwmqm3soe@eldamar.local>" "<20170520152406.2339.3B884775@matica.foolinux.mooo.com>" "<20170520175436.GA30962@jasmine>" "<alpine.GSO.2.20.1705201313250.6623@freddy.simplesystems.org>" "<bd1dd6da-8b2a-4776-ea92-cc5a4b369515@gentoo.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24308 invoked by uid 550); 22 May 2017 22:58:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24287 invoked from network); 22 May 2017 22:58:47 -0000
X-X-Sender: bfriesen@scrappy.simplesystems.org
In-Reply-To: <bd1dd6da-8b2a-4776-ea92-cc5a4b369515@gentoo.org>
Message-ID: <alpine.GSO.2.20.1705221753220.23240@scrappy.simplesystems.org>
References: <20170520072632.z5nbivrdwmqm3soe@eldamar.local> <20170520152406.2339.3B884775@matica.foolinux.mooo.com> <20170520175436.GA30962@jasmine> <alpine.GSO.2.20.1705201313250.6623@freddy.simplesystems.org>
 <bd1dd6da-8b2a-4776-ea92-cc5a4b369515@gentoo.org>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="3735943886-925519912-1495493911=:23240"
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Mon, 22 May 2017 17:58:31 -0500 (CDT)
cc: oss-security@lists.openwall.com
Date: Mon, 22 May 2017 17:58:31 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: ImageMagick: CVE-2017-9098: use of uninitialized
 memory in RLE decoder
To: Thomas Deutschmann <whissi@gentoo.org>

--3735943886-925519912-1495493911=:23240
Content-Type: text/plain; charset=US-ASCII; format=flowed

On Mon, 22 May 2017, Thomas Deutschmann wrote:

> Hi,
>
> let me take the opportunity to jump into this.
>
> Bob, do you have any PoC you can share with ImageMagick project
> regarding CVE-2017-6335?
>
> Your fix was
> https://sourceforge.net/p/graphicsmagick/code/ci/6156b4c2992d855ece6079653b3b93c3229fc4b8/
>
> I asked ImageMagick project about that issue but they don't know without
> a PoC, see https://github.com/ImageMagick/ImageMagick/issues/391

I have attached the problematic TIFF file.  I don't know if binary 
attachments are accepted by this list.  I can provide the full 
original report which included a PDF file if you need it.

The fix was made in code which is specific to GraphicsMagick and the 
problem may be specific to GraphicsMagick.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
--3735943886-925519912-1495493911=:23240--
