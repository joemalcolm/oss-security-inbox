X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1556" "Wednesday" "17" "August" "2016" "23:36:57" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160818033657.BE627B2E01B@smtpvbsrv1.mitre.org>" "44" "[oss-security] Re: Linux tcp_xmit_retransmit_queue use after free on 4.8-rc1 / master" "^Cc:" nil nil "8" "2016081803:36:57" "[oss-security] Re: Linux tcp_xmit_retransmit_queue use after free on 4.8-rc1 / master" (number mark "        cve-assign@m Aug 17   44/1556  " thread-indent "\"[oss-security] Re: Linux tcp_xmit_retransmit_queue use after free on 4.8-rc1 / master\"\n") "<CAFkTriL_5WgBrDLLujB=83-RXNYFW3bhNxi6Dr99vKnob_M3Rg@mail.gmail.com>" ("<CAFkTriL_5WgBrDLLujB=83-RXNYFW3bhNxi6Dr99vKnob_M3Rg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15850 invoked by uid 550); 18 Aug 2016 03:37:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15810 invoked from network); 18 Aug 2016 03:37:09 -0000
In-Reply-To: <CAFkTriL_5WgBrDLLujB=83-RXNYFW3bhNxi6Dr99vKnob_M3Rg@mail.gmail.com>
Message-Id: <20160818033657.BE627B2E01B@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed, 17 Aug 2016 23:36:57 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Linux tcp_xmit_retransmit_queue use after free on 4.8-rc1 / master
To: marco.gra@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> this program will cause a use after free of read 4 in
> tcp_xmit_retransmit_queue or other tcp_ functions, often in another totally
> unrelated process.

> tested on master available at the
> time of writing and on 4.8 rc1

> [   21.446876] BUG: KASAN: use-after-free in
> tcp_xmit_retransmit_queue+0xc75/0xdb0 at addr ffff88007a06d428
> [   21.447953] Read of size 4 by task rsyslogd/1612
> 
> ...
> 
> ip6_dst_check+0x262/0x410

> syscall(SYS_socket, 0xaul, 0x1ul, 0x0ul, 0, 0, 0);

Use CVE-2016-6828.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXtSOaAAoJEHb/MwWLVhi2eVYP/17p3S7V79KaB1JBE+6KR5Kg
OFGawnxE05zFw+/YmhzmeiQY+YDEvEyNVvIcMhEmSksFkQofVodzJGKZ78f0K8Tz
GrhHn+s/uc4KJTxacJAIFYG8ZbEw24A3fnN8wU+nBkjzwOiwiz4wsP54MC43PLQz
azZC2d47rXfHwr9whoUFik5vi2HvU8AesDbRIFOK1g1U35Z0J7PybcZjh5NE5loP
/8zGlYR602bCq7PfAvoYW34Ui0kHRqDu0PaRiLlLVVrAVwDOd20ZZPfqcF9DOW85
aF2vwlttTyL+Ogy1StraNtq06XWICOMULR4l9Y5Q30438icDEiH6yW/aOccctG3j
CKC0QOfNtvPI4HtVjPUgx92icRHsxh+/VBED4WxnF3iHBzLMRT9EBxTHAS3MV4oM
mZmSRQsMiP0cgcmi7KEeej5RWh9YvmSCfgrBTxXDnLr3vXbDJpDTA5jzXXXXpxAY
tluapbNlEffKrW6aspd6FnqSze9N7zQA6LxWmmpL9bUAFNp3EcLNFLis+e9RLPYy
5Kz/+x1sB1IDldHANp8QsAGk+GvWGGSauOuFyKKP3s84Y0Da3shCw/LuEweo0qFP
uapf8CH6uD8ZR3P/9AfiftpX+q0YNITdfsp6XbKtVRgW3fgg44UyRHP5zGUwkJWT
b0SEiC2X+uIfP1/0CTqd
=dKqq
-----END PGP SIGNATURE-----
