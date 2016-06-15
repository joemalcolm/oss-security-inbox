X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2288" "Wednesday" "15" "June" "2016" "12:05:47" "+0200" "Marcus Meissner" "meissner@suse.de" "<20160615100547.GD12588@suse.de>" "46" "Re: [oss-security] CVE-2016-5323: libtiff 4.0.6 tiffcrop _TIFFFax3fillruns(): divide by zero" nil nil nil "6" "2016061510:05:47" "[oss-security] CVE-2016-5323: libtiff 4.0.6 tiffcrop _TIFFFax3fillruns(): divide by zero" (number mark "U       meissner@sus Jun 15   46/2288  " thread-indent "\"Re: [oss-security] CVE-2016-5323: libtiff 4.0.6 tiffcrop _TIFFFax3fillruns(): divide by zero\"\n") "<5EDB84F4B23F5B4DB6500A89258280E0BB62C2@EX02.corp.qihoo.net>" ("<5EDB84F4B23F5B4DB6500A89258280E0BB62C2@EX02.corp.qihoo.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24351 invoked by uid 550); 15 Jun 2016 10:05:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24333 invoked from network); 15 Jun 2016 10:05:59 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Wed, 15 Jun 2016 12:05:47 +0200
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20160615100547.GD12588@suse.de>
References: <5EDB84F4B23F5B4DB6500A89258280E0BB62C2@EX02.corp.qihoo.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5EDB84F4B23F5B4DB6500A89258280E0BB62C2@EX02.corp.qihoo.net>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: [oss-security] CVE-2016-5323: libtiff 4.0.6 tiffcrop
 _TIFFFax3fillruns(): divide by zero

Hi,

This looks like a NULL pointer dereference, not a division by 0.

Ciao, Marcus
On Wed, Jun 15, 2016 at 02:37:11AM +0000, 张开翔 wrote:
> Details
> =======
> 
> Product: libtiff
> Affected Versions: <= 4.0.6
> Vulnerability Type: divide by zero
> Vendor URL: http://www.remotesensing.org/libtiff/
> Credit: Kaixiang Zhang of the Cloud Security Team, Qihoo 360
> CVE ID: CVE-2016-5323
> Tested system version:
>        fedora23 32bit
>        fedora23 64bit
>        CentOS Linux release 7.1.1503 64bit
> 
> Introduction
> =======
> 
> t was always corrupted when I use tiffcrop command followed by a crafted TIFF image in function _TIFFFax3fillruns () without checking the value of divisor, it causes a divide by zero flaw. Attackers cound exploit this issue to cause denial-of-service.
> 
> Here is the stack info:
> gdb –args ./tiffcrop _TIFFFax3fillruns.tif tmpout.tif
> --- ---
> Program received signal SIGSEGV, Segmentation fault.
> 0x00007ffff7ad97f0 in _TIFFFax3fillruns (buf=0x0, runs=0x673500, erun=<optimized out>, lastx=64) at tif_fax3.c:407
> 407                              ZERO(n, cp);
> (gdb) bt
> #0  0x00007ffff7ad97f0 in _TIFFFax3fillruns (buf=0x0, runs=0x673500, erun=<optimized out>, lastx=64) at tif_fax3.c:407
> #1  0x00007ffff7ae087c in Fax3DecodeRLE (tif=0x662010, buf=0x0, occ=8192, s=<optimized out>) at tif_fax3.c:1527
> #2  0x00007ffff7ba3739 in TIFFReadEncodedTile (tif=tif@entry=0x662010, tile=8, buf=0x0, size=8192, size@entry=-1) at tif_read.c:668
> #3  0x00007ffff7ba3a01 in TIFFReadTile (tif=tif@entry=0x662010, buf=<optimized out>, x=x@entry=0, y=y@entry=0, z=z@entry=0, s=s@entry=8) at tif_read.c:641
> #4  0x0000000000443e41 in readSeparateTilesIntoBuffer (bps=1, spp=129, tl=1024, tw=64, imagewidth=32, imagelength=32, obuf=0x7ffff7ee5010 "", in=0x662010) at tiffcrop.c:994
> #5  loadImage (in=in@entry=0x662010, image=image@entry=0x7fffffff7960, dump=dump@entry=0x7fffffffc270, read_ptr=read_ptr@entry=0x7fffffff7920) at tiffcrop.c:6079
> #6  0x0000000000403209 in main (argc=<optimized out>, argv=<optimized out>) at tiffcrop.c:2278
> (gdb) p cp
> $2 = (unsigned char *) 0x0
> 
> 

-- 
Marcus Meissner,SUSE LINUX GmbH; Maxfeldstrasse 5; D-90409 Nuernberg; Zi. 3.1-33,+49-911-740 53-432,,serv=loki,mail=wotan,type=real <meissner@suse.de>
