X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1888" "Saturday" "15" "October" "2016" "23:02:29" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161016030229.F231642E027@smtpvbsrv1.mitre.org>" "52" "[oss-security] Re: Fuzzing jasper" "^Cc:" nil nil "10" "2016101603:02:29" "[oss-security] Re: Fuzzing jasper" (number mark "        cve-assign@m Oct 15   52/1888  " thread-indent "\"[oss-security] Re: Fuzzing jasper\"\n") "<1528713.C8CqGc87r5@arcadia>" ("<1528713.C8CqGc87r5@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15681 invoked by uid 550); 16 Oct 2016 03:20:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15640 invoked from network); 16 Oct 2016 03:20:54 -0000
In-Reply-To: <1528713.C8CqGc87r5@arcadia>
Message-Id: <20161016030229.F231642E027@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Sat, 15 Oct 2016 23:02:29 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Fuzzing jasper
To: ago@gentoo.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> AddressSanitizer: SEGV on unknown address
> 0x527ebf in bmp_getdata ... jasper-1.900.1/src/libjasper/bmp/bmp_dec.c:383:5
> 
> AddressSanitizer: SEGV on unknown address
> 0x528252 in bmp_getdata ... jasper-1.900.1/src/libjasper/bmp/bmp_dec.c:385:5

Use CVE-2016-8690 for both of these (the first and fifth items in the
http://www.openwall.com/lists/oss-security/2016/08/23/6 post).


> AddressSanitizer: FPE on unknown address
> 0x56de63 in jpc_dec_process_siz ... jasper-1.900.1/src/libjasper/jpc/jpc_dec.c:1195:17

Use CVE-2016-8691.


> AddressSanitizer: FPE on unknown address
> 0x56dee3 in jpc_dec_process_siz ... jasper-1.900.1/src/libjasper/jpc/jpc_dec.c:1197:18

Use CVE-2016-8692.


> AddressSanitizer: attempting double-free
> 0x51f8f8 in mem_close ... jasper-1.900.1/src/libjasper/base/jas_stream.c:1073:3

Use CVE-2016-8693.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYAu2GAAoJEHb/MwWLVhi2D2wQAI6W9/5UOJJD9vMc25GdYVGo
Is0tX/21v2ibFpgyAAHBLaQd1ohNeu9U5Y6Nj9lAYAydmcoEZrXX9FxEMNp6XlI3
ybIDOapRLsjqLovdEzZUEnEDiHWAFS/t/p4hZv67PB7fHWKkeA3QhthSf3OlGVNm
IDQX8jMzhb96ZLS9aq5Hlz28K2z2Bx9j08WXQ0Fkp2ksMOCdNF0QwRp1TuA7Ork8
gtxNSVS+r8oAwWBH9fdwU8d9rgBoh0nkMVt9PJex5Hd4ys8CrOS6gBBc9HqDcxdc
bVdYRUuNbXJjZdlOcfQU37a6MyWJ0gCmCp6xs7u1joAnNmzT9C894xLInJFzx37n
JVqNBMltWgkkp1ClyVIdkRJErif2JstRpL59JBaMXgSRD0ZCZRsMrehc6SobX0A1
iUGxdjG/jpP7c8ZPaC2SS/1y0cEpP7CsbDFliZaGxt6QcKOfNqs33L3DSuc7qn0d
OJIH4GMNlZQFgf7+c67+ZSi86HVmTda9DJjm2a9uqU7tKKE/kJWC9OyWTef9K0aJ
1HAu1yNjgGmc/oIIMCk/8wNO4UqlHiXhcF/kjWUBc4/eTAPxYLHSH5703HTStaVU
EN0ONeBMsfx6lhZgoJqDC+ItztjnDR90VGJyrH98XoEn+3KzjGkgEeaYv/N/mUfw
Q/58lzCKYeVI4ovM1u+J
=1lOZ
-----END PGP SIGNATURE-----
