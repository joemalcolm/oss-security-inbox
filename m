X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6164" "Wednesday" "15" "June" "2016" "11:34:18" "+0200" "Marcus Meissner" "meissner@suse.de" "<20160615093418.GC12588@suse.de>" "84" "Re: [oss-security] CVE-2016-5320: libtiff 4.0.6 rgb2ycbcr: command excution" nil nil nil "6" "2016061509:34:18" "[oss-security] CVE-2016-5320: libtiff 4.0.6 rgb2ycbcr: command excution" (number mark "U       meissner@sus Jun 15   84/6164  " thread-indent "\"Re: [oss-security] CVE-2016-5320: libtiff 4.0.6 rgb2ycbcr: command excution\"\n") "<5EDB84F4B23F5B4DB6500A89258280E0BB6286@EX02.corp.qihoo.net>" ("<5EDB84F4B23F5B4DB6500A89258280E0BB6286@EX02.corp.qihoo.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25645 invoked by uid 550); 15 Jun 2016 09:34:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25616 invoked from network); 15 Jun 2016 09:34:30 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Wed, 15 Jun 2016 11:34:18 +0200
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20160615093418.GC12588@suse.de>
References: <5EDB84F4B23F5B4DB6500A89258280E0BB6286@EX02.corp.qihoo.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5EDB84F4B23F5B4DB6500A89258280E0BB6286@EX02.corp.qihoo.net>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: [oss-security] CVE-2016-5320: libtiff 4.0.6 rgb2ycbcr: command
 excution

Hi,

Do you have the poc for this and the other available for confirmation of fixes?

Ciao, Marcus

On Wed, Jun 15, 2016 at 02:33:54AM +0000, 张开翔 wrote:
> Details
> =======
> 
> Product: libtiff
> Affected Versions: <= 4.0.6
> Vulnerability Type: command excution
> Vendor URL: http://www.remotesensing.org/libtiff/
> CVE ID: CVE-2016-5320
> Credit: Kaixiang Zhang of the Cloud Security Team, Qihoo 360
> 
> 
> Introduction
> =======
> 
> It was always corrupted when I use rgb2ycbcr command followed by a crafted TIFF image. The vulnerability of out-of-bound writes is in PixarLogDecode () function in tif_pixarlog.c, which cause the function pointer of vgetparent to be coverd with any data, command execution could be possible.
> Tested system version:
>        fedora23 64bit
>        CentOS Linux release 7.1.1503 64bit
> command :
>         ./rgb2ycbcr poc.tif tmpout.tif
> 
>   Here is the stack info:
> gdb –args ./rgb2ycbcr poc.tif tmpout.tif
> --- ---
> Program received signal SIGSEGV, Segmentation fault.
> -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------[registers]--
> $rax     0x5e5e5e5e5e5e5e5e $rbx     0x0000000000608560 $rcx     0x0000000000608560 $rdx     0x00007fffffffd870 $rsp     0x00007fffffffd7e0 $rbp     0x00007fffffffd810 $rsi     0x000000000000010a
> $rdi     0x0000000000608560 $rip     0x00007ffff7badecb $r8      0x00007ffff7b6be8e $r9      0x0000000000000001 $r10     0x00007fffffffd6d0 $r11     0x00007ffff7b685ab $r12     0x0000000000000020
> $r13     0x0000000000000200 $r14     0x0000000000607010 $r15     0x0000000000000000 $cs      0x0000000000000033 $ss      0x000000000000002b $ds      0x0000000000000000 $es      0x0000000000000000
> $fs      0x0000000000000000 $gs      0x0000000000000000 $eflags  [ CF AF SF IF RF ]
> Flags: [ CARRY  parity  ADJUST  zero  SIGN  trap  INTERRUPT  direction  overflow  RESUME  virtualx86  identification ]
> -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------[stack]--
> 0x00007fffffffd7e0|+0x00: 0x0                  <- $sp
> 0x00007fffffffd7e8|+0x08: 0x00007fffffffd870 -> 0x3000000010
> 0x00007fffffffd7f0|+0x10: 0x10a00000000
> 0x00007fffffffd7f8|+0x18: 0x0000000000608560 -> 0x0000000000608998 -> "PredictorVGetField.tif"
> 0x00007fffffffd800|+0x20: 0x10600000000
> 0x00007fffffffd808|+0x28: 0x0000000000609160 -> "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[...]"
> 0x00007fffffffd810|+0x30: 0x00007fffffffd850 -> 0x00007fffffffd940 -> 0x10
> 0x00007fffffffd818|+0x38: 0x00007ffff7b6a880 -> <TIFFVGetField+149>: jmp 0x7ffff7b6a887 <TIFFVGetField+156>
> ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------[code:i386:x86-64]--
> 0x7ffff7badebd         <PredictorVGetField+224>  mov    rdx,QWORD PTR [rbp-0x28]
> 0x7ffff7badec1         <PredictorVGetField+228>  mov    esi,DWORD PTR [rbp-0x1c]
> 0x7ffff7badec4         <PredictorVGetField+231>  mov    rcx,QWORD PTR [rbp-0x18]
> 0x7ffff7badec8         <PredictorVGetField+235>  mov    rdi,rcx
> 0x7ffff7badecb        <PredictorVGetField+238>  call   rax                <- $pc
> 0x7ffff7badecd         <PredictorVGetField+240>  leave
> 0x7ffff7badece         <PredictorVGetField+241>  ret
> 0x7ffff7badecf <PredictorPrintDir>  push   rbp
> 0x7ffff7baded0         <PredictorPrintDir+1>  mov    rbp,rsp
> ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------[source:tif_predict.c+706]--
> 702                case TIFFTAG_PREDICTOR:
> 703                         *va_arg(ap, uint16*) = (uint16)sp->predictor;
> 704                         break;
> 705                default:
> 706                         return (*sp->vgetparent)(tif, tag, ap);                    <- $pc     ; tif=0x00007fffffffd7f8 -> [...] -> "PredictorVGetField.tif", ap=0x00007fffffffd7e8 -> [...] -> 0x3000000010, sp=0x00007fffffffd808 -> [...] -> "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[...]"
> 707                }
> 708                return 1;
> 709         }
> 710
> -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------[trace]--
> #0  0x00007ffff7badecb in PredictorVGetField (tif=0x608560, tag=266, ap=0x7fffffffd870) at tif_predict.c:706
> #1  0x00007ffff7b6a880 in TIFFVGetField (tif=0x608560, tag=266, ap=0x7fffffffd870) at tif_dir.c:1174
> #2  0x00007ffff7b6a7dd in TIFFGetField (tif=0x608560, tag=266) at tif_dir.c:1158
> --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
> 0x00007ffff7badecb in PredictorVGetField (tif=0x608560, tag=266, ap=0x7fffffffd870) at tif_predict.c:706
> 706                     return (*sp->vgetparent)(tif, tag, ap);
> gef> bt
> #0  0x00007ffff7badecb in PredictorVGetField (tif=0x608560, tag=266, ap=0x7fffffffd870) at tif_predict.c:706
> #1  0x00007ffff7b6a880 in TIFFVGetField (tif=0x608560, tag=266, ap=0x7fffffffd870) at tif_dir.c:1174
> #2  0x00007ffff7b6a7dd in TIFFGetField (tif=0x608560, tag=266) at tif_dir.c:1158
> #3  0x0000000000403700 in tiffcvt (in=in@entry=0x608560, out=out@entry=0x607010) at rgb2ycbcr.c:328
> #4  0x000000000040183b in main (argc=3, argv=0x7fffffffe328) at rgb2ycbcr.c:127
> 

-- 
Marcus Meissner,SUSE LINUX GmbH; Maxfeldstrasse 5; D-90409 Nuernberg; Zi. 3.1-33,+49-911-740 53-432,,serv=loki,mail=wotan,type=real <meissner@suse.de>
