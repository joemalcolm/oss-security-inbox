X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1736" "Tuesday" "14" "February" "2017" "10:50:59" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<3424828.aBMPeXRjiz@blackgate>" "71" "Re: [oss-security] A note about the multiple crashes in zziplib" nil nil nil "2" "2017021409:50:59" "[oss-security] A note about the multiple crashes in zziplib" (number mark "U       ago@gentoo.o Feb 14   71/1736  " thread-indent "\"Re: [oss-security] A note about the multiple crashes in zziplib\"\n") "<DB5PR07MB1157469E31E3CB0C84756223B8580@DB5PR07MB1157.eurprd07.prod.outlook.com>" ("<9786871.DjNlDLY9Ns@blackgate>" "<DB5PR07MB1157469E31E3CB0C84756223B8580@DB5PR07MB1157.eurprd07.prod.outlook.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21575 invoked by uid 550); 14 Feb 2017 09:51:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21557 invoked from network); 14 Feb 2017 09:51:17 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Tue, 14 Feb 2017 10:50:59 +0100
Message-ID: <3424828.aBMPeXRjiz@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.24; x86_64; ; )
In-Reply-To: <DB5PR07MB1157469E31E3CB0C84756223B8580@DB5PR07MB1157.eurprd07.prod.outlook.com>
References: <9786871.DjNlDLY9Ns@blackgate> <DB5PR07MB1157469E31E3CB0C84756223B8580@DB5PR07MB1157.eurprd07.prod.outlook.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: Re: [oss-security] A note about the multiple crashes in zziplib

> http://blogs.gentoo.org/ago/2017/02/09/zziplib-heap-based-buffer-overflow-in-__zzip_get32-fetch-c/

This is CVE-2017-5974.



> http://blogs.gentoo.org/ago/2017/02/09/zziplib-heap-based-buffer-overflow-in-__zzip_get64-fetch-c/

This is CVE-2017-5975.



> http://blogs.gentoo.org/ago/2017/02/09/zziplib-heap-based-buffer-overflow-in-zzip_mem_entry_extra_block-memdisk-c/

This is CVE-2017-5976.



> http://blogs.gentoo.org/ago/2017/02/09/zziplib-invalid-memory-read-in-zzip_mem_entry_extra_block-memdisk-c/

This is CVE-2017-5977.



> http://blogs.gentoo.org/ago/2017/02/09/zziplib-null-pointer-dereference-in-main-unzzipcat-mem-c/

This is a functionality bug in a command-line program. There is
no CVE ID at this time.



> http://blogs.gentoo.org/ago/2017/02/09/zziplib-out-of-bounds-read-in-zzip_mem_entry_new-memdisk-c/

This is CVE-2017-5978.



> http://blogs.gentoo.org/ago/2017/02/09/zziplib-null-pointer-dereference-in-prescan_entry-fseeko-c/

This is CVE-2017-5979.



> http://blogs.gentoo.org/ago/2017/02/09/zziplib-null-pointer-dereference-in-zzip_mem_entry_new-memdisk-c/

This is CVE-2017-5980.



> http://blogs.gentoo.org/ago/2017/02/09/zziplib-null-pointer-dereference-in-main-unzzipcat-c/

This is a functionality bug in a command-line program. There is
no CVE ID at this time.



> http://blogs.gentoo.org/ago/2017/02/09/zziplib-assertion-failure-in-seeko-c/

This is CVE-2017-5981.


> https://blogs.gentoo.org/ago/2017/02/09/zziplib-load-of-misaligned-address-in-memdisk-c/
Please consider this a duplicate of:
http://blogs.gentoo.org/ago/2017/02/09/zziplib-null-pointer-dereference-in-main-unzzipcat-mem-c/


All CVEs where assigned via https://cveform.mitre.org

-- 
Agostino Sarubbo
Gentoo Linux Developer
