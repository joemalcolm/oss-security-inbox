X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["941" "Thursday" "9" "February" "2017" "14:50:59" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<6124180.GrrGPQujpz@blackgate>" "44" "[oss-security] zziplib: assertion failure in seeko.c" nil nil nil "2" "2017020913:50:59" "[oss-security] zziplib: assertion failure in seeko.c" (number mark "U       ago@gentoo.o Feb  9   44/941   " thread-indent "\"[oss-security] zziplib: assertion failure in seeko.c\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20091 invoked by uid 550); 9 Feb 2017 13:51:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19870 invoked from network); 9 Feb 2017 13:51:16 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Thu, 09 Feb 2017 14:50:59 +0100
Message-ID: <6124180.GrrGPQujpz@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] zziplib: assertion failure in seeko.c

Description:
zziplib is an intentionally lightweight library that offers the ability to 
easily extract data from files archived in a single zip file.

A fuzz on it discovered an a NULL pointer access.

The complete ASan output:

# unzzipcat-seeko $FILE
/tmp/portage/dev-libs/zziplib-0.13.62-
r1/work/zziplib-0.13.62/zzip/fseeko.c:313: ZZIP_ENTRY 
*zzip_entry_findfirst(FILE *): Assertion `0 <= root && root < mapsize' failed.

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
https://github.com/asarubbo/poc/blob/master/00161-zziplib-assertionfailure-seeko_C

Timeline:
2017-01-17: bug discovered and poked upstream
2017-02-09: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/02/09/zziplib-assertion-failure-in-seeko-c

-- 
Agostino Sarubbo
Gentoo Linux Developer
