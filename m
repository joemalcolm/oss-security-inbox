X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1528" "Sunday" "9" "October" "2016" "11:28:25" "+0200" "Marcus Meissner" "meissner@suse.de" "<20161009092824.GA5176@suse.de>" "54" "Re: [oss-security] potrace: memory allocation failure" nil nil nil "10" "2016100909:28:25" "[oss-security] potrace: memory allocation failure" (number mark "U       meissner@sus Oct  9   54/1528  " thread-indent "\"Re: [oss-security] potrace: memory allocation failure\"\n") "<2504156.RvxX7vydSL@arcadia>" ("<2504156.RvxX7vydSL@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26010 invoked by uid 550); 9 Oct 2016 09:28:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25990 invoked from network); 9 Oct 2016 09:28:39 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Sun, 9 Oct 2016 11:28:25 +0200
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20161009092824.GA5176@suse.de>
References: <2504156.RvxX7vydSL@arcadia>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2504156.RvxX7vydSL@arcadia>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [oss-security] potrace: memory allocation failure

Hi,

did you attach the reproducer files somewhere?

Ciao, Marcus
On Sat, Oct 08, 2016 at 10:30:54PM +0200, Agostino Sarubbo wrote:
> Description:
> potrace is a utility that transforms bitmaps into vector graphics.
> 
> A crafted image, through a fuzz testing, causes the memory allocation to fail.
> 
> This is the first case where my ASan symbolyzer didn’t start up correctly. I’m 
> reporting only what it prints at the end (not useful at all but demostrates a 
> bit that the issue exist)
> 
> # potrace $FILE
> potrace: warning: 2.hangs: premature end of file
> ==13660==ERROR: AddressSanitizer failed to allocate 0x200003000 (8589946880) 
> bytes of LargeMmapAllocator (error code: 12)
> ==13660==AddressSanitizer CHECK failed: /var/tmp/portage/sys-
> devel/llvm-3.8.1/work/llvm-3.8.1.src/projects/compiler-
> rt/lib/sanitizer_common/sanitizer_common.cc:183 "((0 && "unable to mmap")) != 
> (0)" (0x0, 0x0)
> 
> Affected version:
> 1.13
> 
> Fixed version:
> N/A
> 
> Commit fix:
> N/A
> 
> Credit:
> This bug was discovered by Agostino Sarubbo of Gentoo.
> 
> CVE:
> N/A
> 
> Timeline:
> 2016-08-26: bug discovered
> 2016-08-27: bug reported privately to upstream
> 2016-08-29: blog post about the issue
> 
> Note:
> This bug was found with American Fuzzy Lop.
> 
> Permalink:
> https://blogs.gentoo.org/ago/2016/08/29/potrace-memory-allocation-failure/
> 
> 

-- 
Marcus Meissner,SUSE LINUX GmbH; Maxfeldstrasse 5; D-90409 Nuernberg; Zi. 3.1-33,+49-911-740 53-432,,serv=loki,mail=wotan,type=real <meissner@suse.de>
