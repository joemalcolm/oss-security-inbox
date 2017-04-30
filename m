X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2602" "Sunday" "30" "April" "2017" "09:11:02" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<479277.612964751-sendEmail@localhost>" "61" "[oss-security] imageworsener: memory allocation failure in my_mallocfn (imagew-cmd.c)" nil nil nil "4" "2017043009:11:02" "[oss-security] imageworsener: memory allocation failure in my_mallocfn (imagew-cmd.c)" (number mark "U       ago@gentoo.o Apr 30   61/2602  " thread-indent "\"[oss-security] imageworsener: memory allocation failure in my_mallocfn (imagew-cmd.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5657 invoked by uid 550); 30 Apr 2017 09:11:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5609 invoked from network); 30 Apr 2017 09:11:21 -0000
Message-ID: <479277.612964751-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Sun, 30 Apr 2017 09:11:02 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-238982.946685613"
Subject: [oss-security] imageworsener: memory allocation failure in my_mallocfn (imagew-cmd.c)

------MIME delimiter for sendEmail-238982.946685613
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
imageworsener is a utility for image scaling and processing.

There is a memory allocation failure, I will show the interesting ASan output,

# imagew $FILE /tmp/out -outfmt bmp
    #8 0x551fc0 in my_mallocfn /tmp/portage/media-gfx/imageworsener-1.3.0/work/imageworsener-1.3.0/src/imagew-cmd.c:794:9
    #9 0x7f37f140c9ae in iw_malloc_ex /tmp/portage/media-gfx/imageworsener-1.3.0/work/imageworsener-1.3.0/src/imagew-util.c:48:8
    #10 0x7f37f140cdec in iw_malloc_large /tmp/portage/media-gfx/imageworsener-1.3.0/work/imageworsener-1.3.0/src/imagew-util.c:77:9
    #11 0x7f37f136d66c in bmpr_read_uncompressed /tmp/portage/media-gfx/imageworsener-1.3.0/work/imageworsener-1.3.0/src/imagew-bmp.c:665:32
    #12 0x7f37f134ce64 in iwbmp_read_bits /tmp/portage/media-gfx/imageworsener-1.3.0/work/imageworsener-1.3.0/src/imagew-bmp.c:910:7
    #13 0x7f37f134ce64 in iw_read_bmp_file /tmp/portage/media-gfx/imageworsener-1.3.0/work/imageworsener-1.3.0/src/imagew-bmp.c:980
    #14 0x7f37f1349f94 in iw_read_file_by_fmt /tmp/portage/media-gfx/imageworsener-1.3.0/work/imageworsener-1.3.0/src/imagew-allfmts.c:66:12
    #15 0x519304 in iwcmd_run /tmp/portage/media-gfx/imageworsener-1.3.0/work/imageworsener-1.3.0/src/imagew-cmd.c:1191:6
    #16 0x515326 in iwcmd_main /tmp/portage/media-gfx/imageworsener-1.3.0/work/imageworsener-1.3.0/src/imagew-cmd.c:3018:7
    #17 0x515326 in main /tmp/portage/media-gfx/imageworsener-1.3.0/work/imageworsener-1.3.0/src/imagew-cmd.c:3067
    #18 0x7f37f035178f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289
    #19 0x41b028 in _init (/usr/bin/imagew+0x41b028)

Affected version:
1.3.0

Fixed version:
1.3.1

Commit fix:
https://github.com/jsummers/imageworsener/commit/86564051db45b466e5f667111ce00b5eeedc8fb6

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-8327

Reproducer:
https://github.com/asarubbo/poc/blob/master/00276-imageworsener-memallocfailure

Timeline:
2017-04-13: bug discovered and reported to upstream
2017-04-12: upstream released a patch for another issue that fixes this issue too
2017-04-27: blog post about the issue
2017-04-29: CVE assigned

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/04/27/imageworsener-memory-allocation-failure-in-my_mallocfn-imagew-cmd-c/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-238982.946685613--

