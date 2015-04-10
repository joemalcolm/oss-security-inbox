X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1430" "Friday" "10" "April" "2015" "17:20:02" "+0200" "Pierre Schweitzer" "pierre@reactos.org" "<5527EA22.2000702@reactos.org>" "40" "[oss-security] Kernel oops on 32 bits arch" nil nil nil "4" "2015041015:20:02" "[oss-security] Kernel oops on 32 bits arch" (number mark "        pierre@react Apr 10   40/1430  " thread-indent "\"[oss-security] Kernel oops on 32 bits arch\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1979 invoked by uid 550); 10 Apr 2015 15:20:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1884 invoked from network); 10 Apr 2015 15:20:14 -0000
Message-ID: <5527EA22.2000702@reactos.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Icedove/31.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Date: Fri, 10 Apr 2015 17:20:02 +0200
From: Pierre Schweitzer <pierre@reactos.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Kernel oops on 32 bits arch
To: OSS Security List <oss-security@lists.openwall.com>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Dear all,

This bug report has been brought to my attention [1] where under high
load a server can be oopsed, be it grsec or vanilla kernel.

Apparently, it's due to a partial fix that would have only be deployed
to 64 bits Linux [2].

Has anyone more info on this? Like why there was only a 64 bits fix?
Was a CVE assigned for this?

Cheers,

[1]: https://bugs.gentoo.org/show_bug.cgi?id=536040
[2]: https://lkml.org/lkml/2014/4/29/497
- -- 
Pierre Schweitzer <pierre@reactos.org>
System & Network Administrator
Senior Kernel Developer
ReactOS Deutschland e.V.
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJVJ+ohAAoJEHVFVWw9WFsLHKEP/jj9wEyuRJB0eqbkoJOZXmdI
F1N0T+Yhg4oRPt6O+w7Ari+f2+uTVtvaLnikWqWjGyrRhWRwETTjg/hSZjS0OcFA
4CKomPpka/iP1IASzjVO6L4eGJ22qNoEiq8XjrN30iHJD3c5nAC+DB2y7qwn+rPY
SFJbdOjv5SxVmUjBWZrr8IQ9FOtwKUGcbPY1kqlnMnL7rArERc7UA5u7WLzBhUNm
Uaoutr66sCjGO/py+GPDd1HQsvr1Grpx9qYMAOgz3hlHCuZJ86A5Z9auvyWwuRTB
ixajID2lFMHtJhDHCfVIqRv4fnUA7rLzEhtfbRLPXfmcYSdS8i+t9I5kre6Fy2in
c4s4QtVcdQJnh1vVgAk3rrPUf51TNBoRt5Fk+4RqLglDELworuHoXwC4GV6c6vZZ
RJ8vnhCO1ThY8HDKW/wH7fZ8fgbKBuXzvrfbCnAVuvkuYYU/EiTSULMcX6d7hq9D
MBKFakMr+xWIXlKmv6Y31g2OK2kOpw9Wu0f/lDHgkCw4rKuZuIBG12yYe+m0Xn/a
dMVl1jau3Crs8KbeXCnDtuXnO3GPJ6+cxcuvUcuxJUHaSbKd00OOHO9KToCz4ZDL
Sy2E6KtgKOtqAwHkkDwT0i1FwVDbK3kKw0xMwiVwsMPdf+lyqe20s0fixZgF2eeS
xyX5ok91ot1BVIGXwkeY
=o4UY
-----END PGP SIGNATURE-----
