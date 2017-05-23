X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["12455" "Tuesday" "23" "May" "2017" "08:04:01" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<470644.641990901-sendEmail@localhost>" "181" "[oss-security] imageworsener: multiple vulnerabilities" nil nil nil "5" "2017052308:04:01" "[oss-security] imageworsener: multiple vulnerabilities" (number mark "U       ago@gentoo.o May 23  181/12455 " thread-indent "\"[oss-security] imageworsener: multiple vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28217 invoked by uid 550); 23 May 2017 08:04:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28160 invoked from network); 23 May 2017 08:04:19 -0000
Message-ID: <470644.641990901-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Tue, 23 May 2017 08:04:01 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-81726.397461356"
Subject: [oss-security] imageworsener: multiple vulnerabilities

------MIME delimiter for sendEmail-81726.397461356
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
imageworsener is a utility for image scaling and processing.

After have fuzzed the 1.3.0 release and have found something already documented in the previous posts, I re-tested the new release and the fuzzer turned up some issues. I don’t know if those issues were present also in the old releases or the recent commits introduced them.

# imagew $FILE /tmp/out -outfmt bmp
src/imagew-cmd.c:850:46: runtime error: division by zero
src/imagew-cmd.c:850:29: runtime error: value inf is outside the range of representable values of type 'int'
Commit fix:
https://github.com/jsummers/imageworsener/commit/dc49c807926b96e503bd7c0dec35119eecd6c6fe
Reproducer:
https://github.com/asarubbo/poc/blob/master/00278-imageworsener-fpe-outside-int
CVE:
CVE-2017-9201

############################

# imagew $FILE /tmp/out -outfmt bmp
src/imagew-cmd.c:854:45: runtime error: division by zero
src/imagew-cmd.c:854:28: runtime error: value inf is outside the range of representable values of type 'int'
Commit fix:
https://github.com/jsummers/imageworsener/commit/dc49c807926b96e503bd7c0dec35119eecd6c6fe
Reproducer:
https://github.com/asarubbo/poc/blob/master/00279-imageworsener-fpe-outside-int_2
CVE:
CVE-2017-9202

############################

# imagew $FILE /tmp/out -outfmt bmp
src/imagew-main.c:960:12: runtime error: index -1 out of bounds for type 'struct iw_channelinfo_out [4]'
Commit fix:
https://github.com/jsummers/imageworsener/commit/a4f247707f08e322f0b41e82c3e06e224240a654
Reproducer:
https://github.com/asarubbo/poc/blob/master/00280-imageworsener-oob-iw_channelinfo_out
CVE:
CVE-2017-9203

############################

# imagew $FILE /tmp/out -outfmt bmp
==29040==ERROR: AddressSanitizer: SEGV on unknown address 0x60b00a000086 (pc 0x7f693a6b6a30 bp 0x7ffc6ae53710 sp 0x7ffc6ae536f0 T0)                  
==29040==The signal is caused by a READ memory access.                                                                                               
    #0 0x7f693a6b6a2f in iw_get_ui16le /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-util.c:405:23              
    #1 0x7f693a6b6a2f in iw_get_ui16_e /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-util.c:435                 
    #2 0x7f693a67d008 in iwjpeg_scan_exif_ifd /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-jpeg.c:130:14       
    #3 0x7f693a67d008 in iwjpeg_scan_exif /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-jpeg.c:182              
    #4 0x7f693a67d008 in iwjpeg_read_saved_markers /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-jpeg.c:205     
    #5 0x7f693a67d008 in iw_read_jpeg_file /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-jpeg.c:430             
    #6 0x7f693a5ed21d in iw_read_file_by_fmt /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-allfmts.c:43:12      
    #7 0x510184 in iwcmd_run /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-cmd.c:1191:6                         
    #8 0x50c1a6 in iwcmd_main /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-cmd.c:3018:7                        
    #9 0x50c1a6 in main /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-cmd.c:3067                                
    #10 0x7f69395f6680 in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289                          
    #11 0x41b048 in _init (/usr/bin/imagew+0x41b048)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-util.c:405:23 in iw_get_ui16le
==29040==ABORTING
Commit fix:
https://github.com/jsummers/imageworsener/commit/b45cb1b665a14b0175b9cb1502ef7168e1fe0d5d
Reproducer:
https://github.com/asarubbo/poc/blob/master/00281-imageworsener-invalidread-iw_get_ui16le
CVE:
CVE-2017-9204

############################

# imagew $FILE /tmp/out -outfmt bmp
==9730==ERROR: AddressSanitizer: SEGV on unknown address 0x60b0ff100086 (pc 0x7f4178fefadb bp 0x7fffcee12570 sp 0x7fffcee12550 T0)                   
==9730==The signal is caused by a READ memory access.                                                                                                
    #0 0x7f4178fefada in iw_get_ui16be /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-util.c:422:24              
    #1 0x7f4178fefada in iw_get_ui16_e /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-util.c:436                 
    #2 0x7f4178fb6008 in iwjpeg_scan_exif_ifd /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-jpeg.c:130:14       
    #3 0x7f4178fb6008 in iwjpeg_scan_exif /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-jpeg.c:182              
    #4 0x7f4178fb6008 in iwjpeg_read_saved_markers /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-jpeg.c:205     
    #5 0x7f4178fb6008 in iw_read_jpeg_file /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-jpeg.c:430             
    #6 0x7f4178f2621d in iw_read_file_by_fmt /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-allfmts.c:43:12      
    #7 0x510184 in iwcmd_run /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-cmd.c:1191:6                         
    #8 0x50c1a6 in iwcmd_main /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-cmd.c:3018:7                        
    #9 0x50c1a6 in main /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-cmd.c:3067                                
    #10 0x7f4177f2f680 in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289                          
    #11 0x41b048 in _init (/usr/bin/imagew+0x41b048)                                                                                                 
                                                                                                                                                     
AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-util.c:422:24 in iw_get_ui16be
==9730==ABORTING
Commit fix:
https://github.com/jsummers/imageworsener/commit/b45cb1b665a14b0175b9cb1502ef7168e1fe0d5d
Reproducer:
https://github.com/asarubbo/poc/blob/master/00282-imageworsener-invalidread-iw_get_ui16be
CVE:
CVE-2017-9205

############################

# imagew $FILE /tmp/out -outfmt bmp
==24197==ERROR: AddressSanitizer: heap-buffer-overflow on address 0x608000000a70 at pc 0x7f1c90ffbb6b bp 0x7ffd41b1af40 sp 0x7ffd41b1af38            
READ of size 1 at 0x608000000a70 thread T0                                                                                                           
    #0 0x7f1c90ffbb6a in iw_get_ui16le /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-util.c:405:23              
    #1 0x7f1c90ffbb6a in iw_get_ui16_e /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-util.c:435                 
    #2 0x7f1c90fc2008 in iwjpeg_scan_exif_ifd /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-jpeg.c:130:14       
    #3 0x7f1c90fc2008 in iwjpeg_scan_exif /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-jpeg.c:182              
    #4 0x7f1c90fc2008 in iwjpeg_read_saved_markers /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-jpeg.c:205     
    #5 0x7f1c90fc2008 in iw_read_jpeg_file /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-jpeg.c:430             
    #6 0x7f1c90f3221d in iw_read_file_by_fmt /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-allfmts.c:43:12      
    #7 0x510184 in iwcmd_run /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-cmd.c:1191:6                         
    #8 0x50c1a6 in iwcmd_main /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-cmd.c:3018:7                        
    #9 0x50c1a6 in main /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-cmd.c:3067                                
    #10 0x7f1c8ff3b680 in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289                          
    #11 0x41b048 in _init (/usr/bin/imagew+0x41b048)                                                                                                 
                                                                                                                                                     
Address 0x608000000a70 is a wild pointer.
SUMMARY: AddressSanitizer: heap-buffer-overflow /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-util.c:405:23 in iw_get_ui16le
Commit fix:
https://github.com/jsummers/imageworsener/commit/b45cb1b665a14b0175b9cb1502ef7168e1fe0d5d
Reproducer:
https://github.com/asarubbo/poc/blob/master/00283-imageworsener-heapoverflow-iw_get_ui16le
CVE:
CVE-2017-9206

############################

# imagew $FILE /tmp/out -outfmt bmp
==9198==ERROR: AddressSanitizer: heap-buffer-overflow on address 0x608000004070 at pc 0x7ffb620f1b97 bp 0x7fff09707940 sp 0x7fff09707938
READ of size 1 at 0x608000004070 thread T0
    #0 0x7ffb620f1b96 in iw_get_ui16be /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-util.c:422:24
    #1 0x7ffb620f1b96 in iw_get_ui16_e /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-util.c:436
    #2 0x7ffb620b8008 in iwjpeg_scan_exif_ifd /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-jpeg.c:130:14
    #3 0x7ffb620b8008 in iwjpeg_scan_exif /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-jpeg.c:182
    #4 0x7ffb620b8008 in iwjpeg_read_saved_markers /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-jpeg.c:205
    #5 0x7ffb620b8008 in iw_read_jpeg_file /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-jpeg.c:430
    #6 0x7ffb6202821d in iw_read_file_by_fmt /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-allfmts.c:43:12
    #7 0x510184 in iwcmd_run /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-cmd.c:1191:6
    #8 0x50c1a6 in iwcmd_main /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-cmd.c:3018:7
    #9 0x50c1a6 in main /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-cmd.c:3067
    #10 0x7ffb61031680 in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289
    #11 0x41b048 in _init (/usr/bin/imagew+0x41b048)

Address 0x608000004070 is a wild pointer.
SUMMARY: AddressSanitizer: heap-buffer-overflow /var/tmp/portage/media-gfx/imageworsener-1.3.1/work/imageworsener-1.3.1/src/imagew-util.c:422:24 in iw_get_ui16be
Commit fix:
https://github.com/jsummers/imageworsener/commit/b45cb1b665a14b0175b9cb1502ef7168e1fe0d5d
Reproducer:
https://github.com/asarubbo/poc/blob/master/00284-imageworsener-heapoverflow-iw_get_ui16be
CVE:
CVE-2017-9207

############################

Affected version:
1.3.1

Fixed version:
1.3.2 (not released atm)

Credit:
These bugs were discovered by Agostino Sarubbo of Gentoo.

Timeline:
2017-05-10: bugs discovered and reported to upstream
2017-05-20: blog post about the issue

Note:
These bugs were found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/05/20/imageworsener-multiple-vulnerabilities/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-81726.397461356--

