X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1131" "Tuesday" "14" "March" "2017" "23:03:36" "+0100" "Solar Designer" "solar@openwall.com" "<20170314220336.GB14618@openwall.com>" "13" "Re: [oss-security] audiofile: heap-based buffer overflow in readValue (FileHandle.cpp)" nil nil nil "3" "2017031422:03:36" "[oss-security] audiofile: heap-based buffer overflow in readValue (FileHandle.cpp)" (number mark "U       solar@openwa Mar 14   13/1131  " thread-indent "\"Re: [oss-security] audiofile: heap-based buffer overflow in readValue (FileHandle.cpp)\"\n") "<869975.355078594-sendEmail@localhost>" ("<869975.355078594-sendEmail@localhost>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13511 invoked by uid 550); 14 Mar 2017 22:04:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10104 invoked from network); 14 Mar 2017 22:03:48 -0000
Date: Tue, 14 Mar 2017 23:03:36 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20170314220336.GB14618@openwall.com>
References: <869975.355078594-sendEmail@localhost>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <869975.355078594-sendEmail@localhost>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] audiofile: heap-based buffer overflow in readValue (FileHandle.cpp)

On Sun, Feb 26, 2017 at 11:46:23AM +0000, Agostino Sarubbo wrote:
> ==6051==ERROR: AddressSanitizer: heap-buffer-overflow on address 0x61a00001f708 at pc 0x0000004513de bp 0x7ffc71379b20 sp 0x7ffc713792d0
> WRITE of size 2 at 0x61a00001f708 thread T0
>     #0 0x4513dd in read /tmp/portage/sys-devel/llvm-3.9.1/work/llvm-3.9.1.src/projects/compiler-rt/lib/asan/../sanitizer_common/sanitizer_common_interceptors.inc:765
>     #1 0x7fd944373b2c in bool readValue(File*, short*) /tmp/portage/media-libs/audiofile-0.3.6-r3/work/audiofile-0.3.6/libaudiofile/FileHandle.cpp:353:12
>     #2 0x7fd944373b2c in bool readSwap(File*, short*, int) /tmp/portage/media-libs/audiofile-0.3.6-r3/work/audiofile-0.3.6/libaudiofile/FileHandle.cpp:375
>     #3 0x7fd944373b2c in _init /tmp/portage/media-libs/audiofile-0.3.6-r3/work/audiofile-0.3.6/libaudiofile/FileHandle.cpp:397
>     #4 0x7fd94439ce2f in WAVEFile::parseFormat(Tag const&, unsigned int) /tmp/portage/media-libs/audiofile-0.3.6-r3/work/audiofile-0.3.6/libaudiofile/WAVE.cpp:289:5

Agostino asked the list moderators to post to this thread that the above
is CVE-2017-6828.

Alexander
