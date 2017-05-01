X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1284" "Monday" "1" "May" "2017" "11:39:43" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<700843.693778978-sendEmail@localhost>" "53" "[oss-security] libmad: assertion failure in layer3.c" nil nil nil "5" "2017050111:39:43" "[oss-security] libmad: assertion failure in layer3.c" (number mark "U       ago@gentoo.o May  1   53/1284  " thread-indent "\"[oss-security] libmad: assertion failure in layer3.c\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22361 invoked by uid 550); 1 May 2017 11:40:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22323 invoked from network); 1 May 2017 11:40:02 -0000
Message-ID: <700843.693778978-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Mon, 1 May 2017 11:39:43 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-557570.405145274"
Subject: [oss-security] libmad: assertion failure in layer3.c

------MIME delimiter for sendEmail-557570.405145274
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
libmad stays for “M”peg “A”udio “D”ecoder library.

The same testcase provided in the article: libmad: heap-based buffer overflow in mad_layer_III (layer3.c) is able to show an assertion failure if libmad was compiled with debug 
(–enable-debugging).

The complete output of the failure:

# madplay -v -i -o raw:out $FILE
madplay: /tmp/portage/media-libs/libmad-0.15.1b-r8/work/libmad-0.15.1b/layer3.c:2633: mad_layer_III: Assertion `stream->md_len + md_len - si.main_data_begin <= MAD_BUFFER_MDLEN' 
failed.

Affected version:
0.15.1b

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-8372

Reproducer:
https://github.com/asarubbo/poc/blob/master/00213-libmad-heapoverflow-mad_layer_III

Timeline:
2017-01-01: bug discovered and reported to upstream
2017-04-30: blog post about the issue
2017-05-01: CVE assigned

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/04/30/libmad-assertion-failure-in-layer3-c/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-557570.405145274--

