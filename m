X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1934" "Wednesday" "28" "June" "2017" "12:09:34" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<429934.345043392-sendEmail@localhost>" "64" "[oss-security] lame: two UBSAN crashes" nil nil nil "6" "2017062812:09:34" "[oss-security] lame: two UBSAN crashes" (number mark "U       ago@gentoo.o Jun 28   64/1934  " thread-indent "\"[oss-security] lame: two UBSAN crashes\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24320 invoked by uid 550); 28 Jun 2017 12:09:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24130 invoked from network); 28 Jun 2017 12:09:50 -0000
Message-ID: <429934.345043392-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Wed, 28 Jun 2017 12:09:34 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-457451.906594546"
Subject: [oss-security] lame: two UBSAN crashes

------MIME delimiter for sendEmail-457451.906594546
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
lame is a high quality MPEG Audio Layer III (MP3) encoder licensed under the LGPL.

Few notes before the details of this bug. Time ago a fuzz was done by Brian Carpenter and Jakub Wilk which posted the results on the debian 
bugtracker. In cases like this, when upstream is not active and people do not post on the upstream bugzilla is easy discover duplicates, so I 
downloaded all available testcases, and noone of the bug you will see on my blog is a duplicate of an existing issue. Upstream seems a bit 
dead, latest release was into 2011, so this blog post will probably forwarded on the upstream bugtracker just for the record.

The complete ASan output of the issue:

# lame -f -V 9 $FILE out.wav
/var/tmp/portage/media-sound/lame-3.99.5-r1/work/lame-3.99.5/frontend/brhist.c:204:60: runtime error: signed integer overflow: 953447384 + 
1908859798 cannot be represented in type 'int'
Reproducer:
https://github.com/asarubbo/poc/blob/master/00298-lame-signintoverflow-brhist.c
CVE:
N/A

#######################

# lame -f -V 9 $FILE out.wav
/var/tmp/portage/media-sound/lame-3.99.5-r1/work/lame-3.99.5/frontend/get_audio.c:1234:21: runtime error: value -nan is outside the range of 
representable values of type 'int'
Reproducer:
https://github.com/asarubbo/poc/blob/master/00299-lame-outside-int-get_audio.c
CVE:
N/A

#######################

Affected version:
3.99.5

Fixed version:
N/A

Commit fix:
N/A

Credit:
These bugs were discovered by Agostino Sarubbo of Gentoo.

Timeline:
2017-06-01: bug discovered
2017-06-17: blog post about the issue

Note:
These bugs were found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/06/17/lame-two-ubsan-crashes/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-457451.906594546--

