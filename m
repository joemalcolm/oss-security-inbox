X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2547" "Friday" "25" "December" "2015" "13:30:48" "+0300" "Solar Designer" "solar@openwall.com" "<20151225103048.GA7139@openwall.com>" "70" "Re: [oss-security] CVE request libtiff: out-of-bounds read in CIE Lab image format" "^Date:" nil nil "12" "2015122510:30:48" "[oss-security] CVE request libtiff: out-of-bounds read in CIE Lab image format" (number mark "        solar@openwa Dec 25   70/2547  " thread-indent "\"Re: [oss-security] CVE request libtiff: out-of-bounds read in CIE Lab image format\"\n") "<b60b0b56-4be9-4f63-9cb2-4a1c28f36f09.zuozhi.fzz@alibaba-inc.com>" ("<b60b0b56-4be9-4f63-9cb2-4a1c28f36f09.zuozhi.fzz@alibaba-inc.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13944 invoked by uid 550); 25 Dec 2015 10:30:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13926 invoked from network); 25 Dec 2015 10:30:56 -0000
Message-ID: <20151225103048.GA7139@openwall.com>
References: <b60b0b56-4be9-4f63-9cb2-4a1c28f36f09.zuozhi.fzz@alibaba-inc.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b60b0b56-4be9-4f63-9cb2-4a1c28f36f09.zuozhi.fzz@alibaba-inc.com>
User-Agent: Mutt/1.4.2.3i
Date: Fri, 25 Dec 2015 13:30:48 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request libtiff: out-of-bounds read in CIE Lab image format
To: oss-security@lists.openwall.com

Hi,

Unfortunately, the text/plain version of zzf's message was badly
misformatted.  I've included below the result of processing of the
text/html portion, which is actually readable.

Alexander

zuozhi.fzz@alibaba-inc.com wrote:
> If the data of image is packed(e.g., TIFFDirectory.td_samplesperpixel == 1,
> TIFFDirectory.td_bitspersample == 8), a pixel only owns one byte. But in the
> implementation of putcontig8bitCIELab, it eats 3 bytes per pixel. This will
> lead to an out-of-bounds read vulnerability.
> 
> vuln code in tif_getimage.c, libtiff v4.0.6
> 
> 1699 DECLAREContigPutFunc(putcontig8bitCIELab)
> 1700 {
> 1701         float X, Y, Z;
> 1702         uint32 r, g, b;
> 1703         (void) y;
> 1704         fromskew *= 3;
> 1705         while (h-- > 0) {
> 1706                 for (x = w; x-- > 0;) {
> 1707                         TIFFCIELabToXYZ(img->cielab,
> 1708                                         (unsigned char)pp[0],
> 1709                                         (signed char)pp[1],
> 1710                                         (signed char)pp[2],
> 1711                                         &X, &Y, &Z);
> 1712                         TIFFXYZToRGB(img->cielab, X, Y, Z, &r, &g, &b);
> 1713                         *cp++ = PACK(r, g, b);
> 1714                         pp += 3;
> 1715                 }
> 1716                 cp += toskew;
> 1717                 pp += fromskew;
> 1718         }
> 1719 }
> 
> I use the tutorial code from http://www.remotesensing.org/libtiff/libtiff.html
> to test that, and poc is in the attachment.
> 
>     #include "tiffio.h"
>     main(int argc, char* argv[])
>     {
>         TIFF* tif = TIFFOpen(argv[1], "r");
>         if (tif) {
>             TIFFRGBAImage img;
>             char emsg[1024];
> 
>             if (TIFFRGBAImageBegin(&img, tif, 0, emsg)) {
>                 size_t npixels;
>                 uint32* raster;
> 
>                 npixels = img.width * img.height;
>                 raster = (uint32*) _TIFFmalloc(npixels * sizeof (uint32));
>                 if (raster != NULL) {
>                     if (TIFFRGBAImageGet(&img, raster, img.width, img.height)) {
>                         ...process raster data...
>                     }
>                     _TIFFfree(raster);
>                 }
>                 TIFFRGBAImageEnd(&img);
>             } else
>                 TIFFError(argv[1], emsg);
>             TIFFClose(tif);
>         }
>         exit(0);
>     }
> 
> If it would be assigned a CVE, please credit it for: zzf of Alibaba.
