X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2348" "Monday" "18" "July" "2016" "10:41:21" "-0700" "akuster" "akuster@mvista.com" "<578D14C1.1010407@mvista.com>" "50" "Re: [oss-security] CVE-2016-5323: libtiff 4.0.6 tiffcrop _TIFFFax3fillruns(): divide by zero" nil nil nil "7" "2016071817:41:21" "[oss-security] CVE-2016-5323: libtiff 4.0.6 tiffcrop _TIFFFax3fillruns(): divide by zero" (number mark "U       akuster@mvis Jul 18   50/2348  " thread-indent "\"Re: [oss-security] CVE-2016-5323: libtiff 4.0.6 tiffcrop _TIFFFax3fillruns(): divide by zero\"\n") "<5EDB84F4B23F5B4DB6500A89258280E0BB62C2@EX02.corp.qihoo.net>" ("<5EDB84F4B23F5B4DB6500A89258280E0BB62C2@EX02.corp.qihoo.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7938 invoked by uid 550); 18 Jul 2016 17:41:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7917 invoked from network); 18 Jul 2016 17:41:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding;
        bh=yilTMbP0XD6ntk6xNJfXMbjHCs5QENv1BDbqTsV++H4=;
        b=VtpGafIydIbeXX+RJ/eBioj5/3yrNj1OamDVALLeIMhfm5FiPAgNw5ljy4mJhop0+B
         6XzYp5elk7gi+7fdH7+heZmN5zuBuJDqCbiI5d63V9S7bDH1efHozhLYCPIw46/kIJ/v
         q21aiY47czQzwxS3BeacqKuFEsaJlfRUWgxDyWy+3bqg56Le8DzmAWq8/KvxKPFhA0lt
         C54XOIIeYMEzMkE5k/YJZ9oTsDRkD1MFpTOT7HAeqHFuVBM+/16yKFT8tjuRRufR/Csd
         8xTdTye6TkrWFef8OH6fAFHUdJgX3igtBh76siDXHYQNm3yqiH63k0pQkBIHnM+fuQlk
         4Hwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=yilTMbP0XD6ntk6xNJfXMbjHCs5QENv1BDbqTsV++H4=;
        b=XQebhduVskOdnyWCemrq31tfO6qNuAxsWbnCvfjw93UA20G0XfTgkP+fm7YVQHPUey
         DqVbVod60fSd5qE6I6ptys/TA7eWMC95f/bEjyqX7Uq4biyP9KA4gX2Msp4eZWzX/6Sf
         Zw17TDMWiu4yoWXXJw5b6R5cywDq7OLUPj1C/1IkVyOBEc/bsdKMsCuyXAJUPLGM/Qqc
         dxcALy7QqoYDsquqPs9oiXrhdpyLQKaDw977UBOa34G++8eKOFwOGquhYfEkbt79k+kW
         aW1Fctpg5u7qzPIN3hkREpK/PmM2Pf8Qp0S2gnfe55yUsnP8/WgpTD0hyW0Bj7dtn7zb
         umQQ==
X-Gm-Message-State: ALyK8tK8AUMS0w30vDYq2+IgZN30xb+ob5kV2nLEn4Xf0EdNmCkKXPShbc4i+LvRaaJ7gIgV
X-Received: by 10.66.80.136 with SMTP id r8mr38756961pax.72.1468863683283;
        Mon, 18 Jul 2016 10:41:23 -0700 (PDT)
To: oss-security@lists.openwall.com
References: <5EDB84F4B23F5B4DB6500A89258280E0BB62C2@EX02.corp.qihoo.net>
From: akuster <akuster@mvista.com>
Message-ID: <578D14C1.1010407@mvista.com>
Date: Mon, 18 Jul 2016 10:41:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <5EDB84F4B23F5B4DB6500A89258280E0BB62C2@EX02.corp.qihoo.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] CVE-2016-5323: libtiff 4.0.6 tiffcrop
 _TIFFFax3fillruns(): divide by zero

Is this the fix for this CVE?

https://github.com/vadz/libtiff/commit/2f79856097f423eb33796a15fcf700d2ea41bf31

Appears to mention CVE-2016-5321 and CVE-2016-5323 so not sure if commit
https://github.com/vadz/libtiff/commit/d9783e4a1476b6787a51c5ae9e9b3156527589f0

is a partial fix for CVE-2016-5321

regards,
Armin

On 06/14/2016 07:37 PM, 张开翔 wrote:
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
