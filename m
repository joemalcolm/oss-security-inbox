X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1282" "Tuesday" "23" "May" "2017" "09:10:46" "+0200" "Solar Designer" "solar@openwall.com" "<20170523071046.GA4432@openwall.com>" "35" "Re: [oss-security] Re: ImageMagick: CVE-2017-9098: use of uninitialized memory in RLE decoder" "^Cc:" nil nil "5" "2017052307:10:46" "[oss-security] Re: ImageMagick: CVE-2017-9098: use of uninitialized memory in RLE decoder" (number mark "        solar@openwa May 23   35/1282  " thread-indent "\"Re: [oss-security] Re: ImageMagick: CVE-2017-9098: use of uninitialized memory in RLE decoder\"\n") "<alpine.GSO.2.20.1705221753220.23240@scrappy.simplesystems.org>" ("<20170520072632.z5nbivrdwmqm3soe@eldamar.local>" "<20170520152406.2339.3B884775@matica.foolinux.mooo.com>" "<20170520175436.GA30962@jasmine>" "<alpine.GSO.2.20.1705201313250.6623@freddy.simplesystems.org>" "<bd1dd6da-8b2a-4776-ea92-cc5a4b369515@gentoo.org>" "<alpine.GSO.2.20.1705221753220.23240@scrappy.simplesystems.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7180 invoked by uid 550); 23 May 2017 07:11:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5796 invoked from network); 23 May 2017 07:10:52 -0000
Message-ID: <20170523071046.GA4432@openwall.com>
References: <20170520072632.z5nbivrdwmqm3soe@eldamar.local> <20170520152406.2339.3B884775@matica.foolinux.mooo.com> <20170520175436.GA30962@jasmine> <alpine.GSO.2.20.1705201313250.6623@freddy.simplesystems.org> <bd1dd6da-8b2a-4776-ea92-cc5a4b369515@gentoo.org> <alpine.GSO.2.20.1705221753220.23240@scrappy.simplesystems.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.GSO.2.20.1705221753220.23240@scrappy.simplesystems.org>
User-Agent: Mutt/1.4.2.3i
Cc: oss-security@lists.openwall.com
Date: Tue, 23 May 2017 09:10:46 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: ImageMagick: CVE-2017-9098: use of uninitialized memory in RLE decoder
To: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>

On Mon, May 22, 2017 at 05:58:31PM -0500, Bob Friesenhahn wrote:
> On Mon, 22 May 2017, Thomas Deutschmann wrote:
> >Bob, do you have any PoC you can share with ImageMagick project
> >regarding CVE-2017-6335?
> >
> >Your fix was
> >https://sourceforge.net/p/graphicsmagick/code/ci/6156b4c2992d855ece6079653b3b93c3229fc4b8/
> >
> >I asked ImageMagick project about that issue but they don't know without
> >a PoC, see https://github.com/ImageMagick/ImageMagick/issues/391
> 
> I have attached the problematic TIFF file.  I don't know if binary 
> attachments are accepted by this list.

Small binary attachments (total message size of up to 200 KB including
overhead) are accepted, but unfortunately image/tiff was on the
mimeremove list, so your attachment didn't get through.  I've just
removed image/tiff from mimeremove.  Please resend (if small enough).

As to why have mimeremove at all: many people use MUAs or/and have
signatures that always attach needless files (e.g., a text/html portion
linking to a company logo, which is also included).  But I guess use of
image/tiff for those is very unusual, so there was no good reason to
have this MIME type removed.

The current mimeremove is:

application/ms-tnef
text/html
text/x-vcard
image/gif
image/jpeg
image/png

Alexander
