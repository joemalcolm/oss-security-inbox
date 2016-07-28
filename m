X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["369" "Thursday" "28" "July" "2016" "21:33:31" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<1668779.EJMXeZi6qq@arcadia>" "15" "[oss-security] paps: heap overflow when processing crafted file" "^Date:" nil nil "7" "2016072819:33:31" "[oss-security] paps: heap overflow when processing crafted file" (number mark "        ago@gentoo.o Jul 28   15/369   " thread-indent "\"[oss-security] paps: heap overflow when processing crafted file\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14056 invoked by uid 550); 28 Jul 2016 19:31:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14036 invoked from network); 28 Jul 2016 19:31:32 -0000
Message-ID: <1668779.EJMXeZi6qq@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.1.15-gentoo-r1; KDE/4.14.16; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Date: Thu, 28 Jul 2016 21:33:31 +0200
From: Agostino Sarubbo <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] paps: heap overflow when processing crafted file
To: Open Source Security <oss-security@lists.openwall.com>

Hello,

it was discovered during fuzzing that a crafted file causes an heap overflow 
in paps ( https://sourceforge.net/projects/paps/ ).

Details, included stracktrace at:
https://blogs.gentoo.org/ago/2016/07/28/paps-heap-based-buffer-overflow-in-read_file-paps-c/


If it is suitable for a CVE, please assign one.

Thanks.
-- 
Agostino Sarubbo
Gentoo Linux Developer
