X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1579" "Thursday" "9" "February" "2017" "14:50:18" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<7514610.NxtJqOQEcv@blackgate>" "58" "[oss-security] zziplib: load of misaligned address in memdisk.c" nil nil nil "2" "2017020913:50:18" "[oss-security] zziplib: load of misaligned address in memdisk.c" (number mark "U       ago@gentoo.o Feb  9   58/1579  " thread-indent "\"[oss-security] zziplib: load of misaligned address in memdisk.c\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14205 invoked by uid 550); 9 Feb 2017 13:50:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14053 invoked from network); 9 Feb 2017 13:50:35 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Thu, 09 Feb 2017 14:50:18 +0100
Message-ID: <7514610.NxtJqOQEcv@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] zziplib: load of misaligned address in memdisk.c

Description:
zziplib is an intentionally lightweight library that offers the ability to 
easily extract data from files archived in a single zip file.

A fuzz on it discovered the load of a misaligned address. It can cause 
undefined behavior.

The complete ASan output:

# unzzipcat-mem $FILE
/tmp/portage/dev-libs/zziplib-0.13.62-
r1/work/zziplib-0.13.62/zzip/memdisk.c:250:33: runtime error: load of 
misaligned address 0x00000295d17d for type 'uint16_t' (aka 'unsigned short'), 
which requires 2 byte alignment
0x00000295d17d: note: pointer points here
 5a 45 93 58 75 70 0b  00 00 61 64 0a 50 4b 01  02 1e 03 0a 00 00 00 00  ff ff 
ff ff 42 00 00 00  b1
             ^ 
/tmp/portage/dev-libs/zziplib-0.13.62-
r1/work/zziplib-0.13.62/zzip/memdisk.c:256:22: runtime error: load of 
misaligned address 0x00000295d17f for type 'uint16_t' (aka 'unsigned short'), 
which requires 2 byte alignment
0x00000295d17f: note: pointer points here
 93 58 75 70 0b  00 00 61 64 0a 50 4b 01  02 1e 03 0a 00 00 00 00  ff ff ff ff 
42 00 00 00  b1 01 00
             ^

Affected version:
0.13.62

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Reproducer:
https://github.com/asarubbo/poc/blob/master/00160-zziplib-misalignedadd-memdisk_c

Timeline:
2017-01-17: bug discovered and poked upstream
2017-02-09: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/02/09/zziplib-load-of-misaligned-address-in-memdisk-c

-- 
Agostino Sarubbo
Gentoo Linux Developer
