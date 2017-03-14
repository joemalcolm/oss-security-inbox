X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["969" "Tuesday" "14" "March" "2017" "23:00:26" "+0100" "Solar Designer" "solar@openwall.com" "<20170314220026.GA14618@openwall.com>" "16" "Re: [oss-security] audiofile: heap-based buffer overflow in MSADPCM::initializeCoefficients (MSADPCM.cpp)" "^Date:" nil nil "3" "2017031422:00:26" "[oss-security] audiofile: heap-based buffer overflow in MSADPCM::initializeCoefficients (MSADPCM.cpp)" (number mark "        solar@openwa Mar 14   16/969   " thread-indent "\"Re: [oss-security] audiofile: heap-based buffer overflow in MSADPCM::initializeCoefficients (MSADPCM.cpp)\"\n") "<923996.603905351-sendEmail@localhost>" ("<923996.603905351-sendEmail@localhost>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11362 invoked by uid 550); 14 Mar 2017 22:04:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9262 invoked from network); 14 Mar 2017 22:00:34 -0000
Message-ID: <20170314220026.GA14618@openwall.com>
References: <923996.603905351-sendEmail@localhost>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <923996.603905351-sendEmail@localhost>
User-Agent: Mutt/1.4.2.3i
Date: Tue, 14 Mar 2017 23:00:26 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] audiofile: heap-based buffer overflow in MSADPCM::initializeCoefficients (MSADPCM.cpp)
To: oss-security@lists.openwall.com

On Sun, Feb 26, 2017 at 11:45:35AM +0000, Agostino Sarubbo wrote:
> ==6096==ERROR: AddressSanitizer: heap-buffer-overflow on address 0x61a00001f708 at pc 0x0000004bbc35 bp 0x7ffd65dbabf0 sp 0x7ffd65dba3a0
> READ of size 33872 at 0x61a00001f708 thread T0
>     #0 0x4bbc34 in __asan_memcpy /tmp/portage/sys-devel/llvm-3.9.1/work/llvm-3.9.1.src/projects/compiler-rt/lib/asan/asan_interceptors.cc:413
>     #1 0x7efec209d7df in MSADPCM::initializeCoefficients() /tmp/portage/media-libs/audiofile-0.3.6-r3/work/audiofile-0.3.6/libaudiofile/modules/MSADPCM.cpp:369:3
>     #2 0x7efec209d7df in MSADPCM::createDecompress(Track*, File*, bool, bool, long*)

Agostino asked the list moderators to post to this thread that the above
is CVE-2017-6827.

Alexander

P.S. Next time I'd prefer another moderator to handle this sort of
requests, if any, since I don't care about CVEs much.  I mostly care
about security issues getting brought to this list, which was already
the case.
