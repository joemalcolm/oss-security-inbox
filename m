X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2033" "Sunday" "26" "February" "2017" "11:56:31" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<267855.691348331-sendEmail@localhost>" "68" "[oss-security] audiofile: multiple ubsan crashes" "^Date:" nil nil "2" "2017022611:56:31" "[oss-security] audiofile: multiple ubsan crashes" (number mark "U       ago@gentoo.o Feb 26   68/2033  " thread-indent "\"[oss-security] audiofile: multiple ubsan crashes\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19642 invoked by uid 550); 26 Feb 2017 11:57:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17572 invoked from network); 26 Feb 2017 11:56:48 -0000
Message-ID: <267855.691348331-sendEmail@localhost>
X-Mailer: sendEmail-1.56
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-482434.967839257"
Date: Sun, 26 Feb 2017 11:56:31 +0000
From: "Agostino Sarubbo" <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] audiofile: multiple ubsan crashes
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

------MIME delimiter for sendEmail-482434.967839257
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
audiofile is a C-based library for reading and writing audio files in many common formats.

A fuzz on it discovered multiple crashes because of undefined behavior.

The complete UBsan output:

# sfconvert @@ out.mp3 format aiff
/tmp/portage/media-libs/audiofile-0.3.6-r3/work/audiofile-0.3.6/libaudiofile/WAVE.cpp:289:14: runtime error: index 256 out of bounds for type 'int16_t [256][2]'
/tmp/portage/media-libs/audiofile-0.3.6-r3/work/audiofile-0.3.6/libaudiofile/WAVE.cpp:290:14: runtime error: index 256 out of bounds for type 'int16_t [256][2]'

Reproducer:
https://github.com/asarubbo/poc/blob/master/00191-audiofile-indexoob

##########################################

# sfconvert @@ out.mp3 format aiff
/tmp/portage/media-libs/audiofile-0.3.6-r3/work/audiofile-0.3.6/sfcommands/sfconvert.c:327:42: runtime error: signed integer overflow: 65536 * 252936 cannot be represented in type 
'int'

Reproducer:
https://github.com/asarubbo/poc/blob/master/00192-audiofile-signintoverflow-sfconvert

##########################################

# sfconvert @@ out.mp3 format aiff
/tmp/portage/media-libs/audiofile-0.3.6-r3/work/audiofile-0.3.6/libaudiofile/modules/MSADPCM.cpp:115:27: runtime error: signed integer overflow: 5512570 * 409 cannot be represented in 
type 'int'

Reproducer:
https://github.com/asarubbo/poc/blob/master/00193-audiofile-signintoverflow-MSADPCM

##########################################

Affected version:
0.3.6

Fixed version:
N/A

Commit fix:
N/A

Credit:
These bugs were discovered by Agostino Sarubbo of Gentoo.

Timeline:
2017-02-20: bug discovered and reported to upstream
2017-02-20: blog post about the issue

Note:
These bugs were found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/02/20/audiofile-multiple-ubsan-crashes

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-482434.967839257--

