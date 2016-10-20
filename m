X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3148" "Thursday" "20" "October" "2016" "09:43:48" "+0200" "Marcus Meissner" "meissner@suse.de" "<20161020074348.GC18803@suse.de>" "76" "Re: [oss-security] imagemagick: memory allocation failure in AcquireMagickMemory (memory.c) (incomplete fix for CVE-2016-8862)" nil nil nil "10" "2016102007:43:48" "[oss-security] imagemagick: memory allocation failure in AcquireMagickMemory (memory.c) (incomplete fix for CVE-2016-8862)" (number mark "U       meissner@sus Oct 20   76/3148  " thread-indent "\"Re: [oss-security] imagemagick: memory allocation failure in AcquireMagickMemory (memory.c) (incomplete fix for CVE-2016-8862)\"\n") "<5202386.CNWfkh1GhB@blackgate>" ("<5202386.CNWfkh1GhB@blackgate>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28074 invoked by uid 550); 20 Oct 2016 07:44:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28053 invoked from network); 20 Oct 2016 07:44:02 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Thu, 20 Oct 2016 09:43:48 +0200
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <20161020074348.GC18803@suse.de>
References: <5202386.CNWfkh1GhB@blackgate>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5202386.CNWfkh1GhB@blackgate>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [oss-security] imagemagick: memory allocation failure in
 AcquireMagickMemory (memory.c) (incomplete fix for CVE-2016-8862)

Hi,

A general comment on all you fuzzy security researchers.

Please _always_ attach the testcase and/or make it available via easy accessible means.

(We are very happy that Hanno does this.)

Sincerely, your otherwise very unhappy security incident response engineers.

On Thu, Oct 20, 2016 at 09:27:24AM +0200, Agostino Sarubbo wrote:
> Description:
> imagemagick is a software suite to create, edit, compose, or convert bitmap 
> images.
> 
> Another round of fuzzing pointed out that the memory allocation failure I 
> discovered is still reproducible in the 7.0.3.4 version.
> As usual, the upstream security policy are enabled.
> 
> The interesting part of the ASan stacktrace(not full because is a copy past of 
> the one in the provious post):
> 
> # identify $FILE
>    #9 0x7f467fd11c67 in AcquireMagickMemory /tmp/portage/media-
> gfx/imagemagick-7.0.3.4/work/ImageMagick-7.0.3-4/MagickCore/memory.c:460:10
>     #10 0x7f467fd11c67 in AcquireQuantumMemory /tmp/portage/media-
> gfx/imagemagick-7.0.3.4/work/ImageMagick-7.0.3-4/MagickCore/memory.c:533
>     #11 0x7f4673379018 in ReadRLEImage /tmp/portage/media-
> gfx/imagemagick-7.0.3.4/work/ImageMagick-7.0.3-4/coders/rle.c:267:36
>     #12 0x7f467faeca85 in ReadImage /tmp/portage/media-
> gfx/imagemagick-7.0.3.4/work/ImageMagick-7.0.3-4/MagickCore/constitute.c:496:13
>     #13 0x7f467fff4def in ReadStream /tmp/portage/media-
> gfx/imagemagick-7.0.3.4/work/ImageMagick-7.0.3-4/MagickCore/stream.c:1012:9
>     #14 0x7f467faeb69d in PingImage /tmp/portage/media-
> gfx/imagemagick-7.0.3.4/work/ImageMagick-7.0.3-4/MagickCore/constitute.c:226:9
>     #15 0x7f467faebeae in PingImages /tmp/portage/media-
> gfx/imagemagick-7.0.3.4/work/ImageMagick-7.0.3-4/MagickCore/constitute.c:326:10
>     #16 0x7f467f40f4da in IdentifyImageCommand /tmp/portage/media-
> gfx/imagemagick-7.0.3.4/work/ImageMagick-7.0.3-4/MagickWand/identify.c:319:18
>     #17 0x7f467f48a844 in MagickCommandGenesis /tmp/portage/media-
> gfx/imagemagick-7.0.3.4/work/ImageMagick-7.0.3-4/MagickWand/mogrify.c:183:14
>     #18 0x4f1fae in MagickMain /tmp/portage/media-
> gfx/imagemagick-7.0.3.4/work/ImageMagick-7.0.3-4/utilities/magick.c:145:10
>     #19 0x4f1fae in main /tmp/portage/media-
> gfx/imagemagick-7.0.3.4/work/ImageMagick-7.0.3-4/utilities/magick.c:176
>     #20 0x7f467e35d61f in __libc_start_main /var/tmp/portage/sys-
> libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289
>     #21 0x4192a8 in _init (/usr/bin/magick+0x4192a8)
> Affected version:
> 7.0.3.4
> 
> Fixed version:
> N/A
> 
> Commit fix:
> 
> Credit:
> This bug was discovered by Agostino Sarubbo of Gentoo.
> 
> CVE:
> N/A
> 
> Timeline:
> 2016-10-13: bug re-discovered
> 2016-10-13: bug re-reported to upstream
> 2016-10-20: blog post about the issue
> 
> Note:
> This bug was found with American Fuzzy Lop.
> 
> Permalink:
> https://blogs.gentoo.org/ago/2016/10/20/imagemagick-memory-allocation-failure-in-acquiremagickmemory-memory-c-incomplete-fix-for-cve-2016-8862/
> 

-- 
Marcus Meissner,SUSE LINUX GmbH; Maxfeldstrasse 5; D-90409 Nuernberg; Zi. 3.1-33,+49-911-740 53-432,,serv=loki,mail=wotan,type=real <meissner@suse.de>
