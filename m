X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1343" "Tuesday" "22" "November" "2016" "19:19:59" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<62bd88e18535467990b8b87c1503444c@imshyb02.MITRE.ORG>" "36" "[oss-security] Re: jasper: stack-based buffer overflow in jpc_tsfb_getbands2 (jpc_tsfb.c)" nil nil nil "11" "2016112300:19:59" "[oss-security] Re: jasper: stack-based buffer overflow in jpc_tsfb_getbands2 (jpc_tsfb.c)" (number mark "U       cve-assign@m Nov 22   36/1343  " thread-indent "\"[oss-security] Re: jasper: stack-based buffer overflow in jpc_tsfb_getbands2 (jpc_tsfb.c)\"\n") "<1775367.VDhM2sPmdu@arcadia>" ("<1775367.VDhM2sPmdu@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22418 invoked by uid 550); 23 Nov 2016 00:20:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22393 invoked from network); 23 Nov 2016 00:20:10 -0000
From: <cve-assign@mitre.org>
To: <ago@gentoo.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <1775367.VDhM2sPmdu@arcadia>
Message-ID: <62bd88e18535467990b8b87c1503444c@imshyb02.MITRE.ORG>
Date: Tue, 22 Nov 2016 19:19:59 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: jasper: stack-based buffer overflow in jpc_tsfb_getbands2 (jpc_tsfb.c)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/11/20/jasper-stack-based-buffer-overflow-in-jpc_tsfb_getbands2-jpc_tsfb-c

> AddressSanitizer: stack-buffer-overflow
> WRITE of size 4

> https://github.com/mdadams/jasper/commit/1abc2e5a401a4bf1d5ca4df91358ce5df111f495

> jpc/jpc_dec.c

Use CVE-2016-9560.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYNN57AAoJEHb/MwWLVhi28acP/3hSYAIq1eaWbaNey2wlw+nX
MAyAYntbtqAmEiH20z4UYPx3z1PFkC47rkTEuXqCuGlf0eCRWckKs1/v83EXMDoX
yIzsX9tlXMDvYGrJt9Z7bz4AB3H8g2aEuGgq6CdtHt6IuVzNugqwtiXKSNPsclfl
bZ0mKlwICSoCSeKZ4lpxdsmkI06MKAqP3/DW0CPH15BJJ1yNXIvtE69+T5+TkdPR
DZbno/EnnBGkrnJpuMDD1yErFyVzeZcqTMaEnfS7+dmglu5PlrrbG4+/BVKNnIRU
J8BNYcaZbCCL/9L75aXWKtVLiXGF7+yeNDMFpKFPSVxlcXOmHcVmomplFCnv6z5b
ecMLx3gg/Jn1fiZJDjVS31UtaqMSnlYzxPkRNkOBJzacniWWsieMgYGfW8wR2XPY
bxCFFec0YAbck+Im0+QbNM9iTUpL3h462SIoN983AmCscF7hj7UGMcrfS+uIxNDo
7sbTAPHwNk+/5Rqn0Z+ZJLPfc2STDFfKBKH2vViq1wTjmfO+CsGwyknVoKzx7KJq
/NYhRKuMMnPTFscBgPe+wB2CpCRGD9NbrirL+uW+i+dnocHUldHLhenJuSvUdNIO
Y/TOXveXXJmP//iRPcOpACJpCcFHd3DVF61G0R6UPc01gprTzUAmy+FliqXAfFuw
b3ZoLRfyAny0Vg2BQaOG
=H8km
-----END PGP SIGNATURE-----
