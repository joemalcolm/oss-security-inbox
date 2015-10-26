X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1669" "Monday" "26" "October" "2015" "11:20:57" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151026152057.F21AA52E016@smtpvbsrv1.mitre.org>" "43" "[oss-security] Re: CVE Requests for read out of bound in libpng" nil nil nil "10" "2015102615:20:57" "[oss-security] Re: CVE Requests for read out of bound in libpng" (number mark "        cve-assign@m Oct 26   43/1669  " thread-indent "\"[oss-security] Re: CVE Requests for read out of bound in libpng\"\n") "<414a4453.66f6.150a218e6f4.Coremail.xiaoqixue_1@163.com>" ("<414a4453.66f6.150a218e6f4.Coremail.xiaoqixue_1@163.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5128 invoked by uid 550); 26 Oct 2015 15:21:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 4084 invoked from network); 26 Oct 2015 15:21:10 -0000
In-Reply-To: <414a4453.66f6.150a218e6f4.Coremail.xiaoqixue_1@163.com>
Message-Id: <20151026152057.F21AA52E016@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Mon, 26 Oct 2015 11:20:57 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Requests for read out of bound in libpng
To: xiaoqixue_1@163.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> there is a memory read out of bound in libpng 1.2.* and 1.4.* , which
> is used in many operate systems and applications. it may leak
> information in the application .

> this bug has been accepted and fixed in LIBPNG :
> http://sourceforge.net/p/libpng/bugs/241/

>> function png_convert_to_rfc1123 in png.c

>> when ptime->month is 0 (which gains from tIME chunk data ), the
>> short_months[(ptime->month - 1) % 12] will return the memory before
>> short_months

>>> We'll take care of the bug by using "ptime->month - 1U" to ensure that
>>> the "%" operation returns a value in the range 0..11

Use CVE-2015-7981.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWLkSCAAoJEL54rhJi8gl5zuMP/0xpC73vodJgAU6kElyJGLUG
sNk8vNDZ0gTZbPIvlEhP5tLLLk9UPLCFbaCW9K7AxVtl5IA1/oPP2qY5dq8GOzNu
Vfusqv4jLgMDwXom5MTaDMdYuGYoC9rq788uRoqRtKaAzh8fxt5jeszzJo/GwHHS
1QIpG0r2Ufxzu0XPFEo4xk+ZHs2sAiuIC9Df71I07dVrTen2b72R466G9sJGW7tH
fC8qZfXOysDfjTedt+JW6/P3kIxKlnaPe69Zh9M6tkCItpk3r6WvR2R3eFTyONoZ
s7ucaoYST1q9Z1+SIziC4zbljth1cvQysB4ozO485EvGFlX9hHEJISZnvKKWZhd+
0RkGSvqybVjw6s6XDs3KE2un6tqYOZ7ocGc3jPGDcTNdhxWWWXOGzd6DM/peOc8t
/NQrqdLw3wSeqZ2iVbPjK4ZS/BgdnbRrLqTJtJLf9IL35ycnx+kql42e/xWM+Y+z
nMEXrmvBDyOLvKt9VsLpKnZ67YzoLXHI2gc8s6tQVkutRAinckFQT+rmihZpAVzV
8ViJBvXdv5a5Kzq1SZfLetTU0PTRJvQssovzg4j31wIYLVtNwdM+4uMblQqedxAw
zvxf31woMdoW9SekK0zGLVm+DUrI1rdq0znAuBLHTbJEGkq0oHPV09/IeiyVVGkH
UUYjAn+ovJHMEVH7ONBO
=dvCw
-----END PGP SIGNATURE-----
