X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1631" "Saturday" "8" "October" "2016" "11:32:47" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161008153247.D98AD52E495@smtpvbsrv1.mitre.org>" "45" "[oss-security] Re: GraphicsMagick CVE Request - WPG Reader Issues" nil nil nil "10" "2016100815:32:47" "[oss-security] Re: GraphicsMagick CVE Request - WPG Reader Issues" (number mark "U       cve-assign@m Oct  8   45/1631  " thread-indent "\"[oss-security] Re: GraphicsMagick CVE Request - WPG Reader Issues\"\n") "<alpine.GSO.2.20.1610070832040.3266@freddy.simplesystems.org>" ("<alpine.GSO.2.20.1610070832040.3266@freddy.simplesystems.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5737 invoked by uid 550); 8 Oct 2016 15:33:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5713 invoked from network); 8 Oct 2016 15:32:59 -0000
From: cve-assign@mitre.org
To: bfriesen@simple.dallas.tx.us
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <alpine.GSO.2.20.1610070832040.3266@freddy.simplesystems.org>
Message-Id: <20161008153247.D98AD52E495@smtpvbsrv1.mitre.org>
Date: Sat,  8 Oct 2016 11:32:47 -0400 (EDT)
Subject: [oss-security] Re: GraphicsMagick CVE Request - WPG Reader Issues

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Two security issues have been discovered in the WPG format reader in
> GraphicsMagick 1.3.25 (and earlier):

> 1. In a build with QuantumDepth=8 (the default), there is no check
>     that the provided colormap is not larger than 256 entries,
>     resulting in potential heap overflow.

Use CVE-2016-7996.


> 2. The assertion:
> 
>     ReferenceBlob: Assertion `blob != (BlobInfo *) NULL' failed.
> 
>     is thrown (causing a crash) for some files due to a logic error
>     which leads to passing a NULL pointer where a NULL pointer is not
>     allowed.

Use CVE-2016-7997.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX+RAuAAoJEHb/MwWLVhi266kQAJn9lLlFw8Vt4SormBLDwwDK
+GL3m64NYAFDxIvMrtC4OceZbfMN+4MvcHdklyMLUb6Scgf0TngdKZ7AY24hc0P9
NFetcPtjtfYcTDD2Z7yJ0kJgCPdxCkgmerfWin1hrPTlHiqDSSWaJdIzGsCkpMOo
DT+kNIOU1UY+c52F7O189myEDNOVwllkbVW+FiaQao4k1nwIGzrlK0WhoP1wIcne
ohk7K4yogJPosW1lPXsW7jsIbg6gk1Na/9wV/YBy2afg7/CiCwBcnWLd2l2ZqLNS
sgvcY6IC0zua1h7cMLXDzSrRq7nv97TOyMKcfWu2iqNxRXqeIwqkzzbF9ExiuZ6i
PhcSPjmkFe7AedrsiqZA06yOBX96duLw6RDe8t/ngKL5K4ZxAJ5RPfOiGPit/L6B
Xb9i+c7uWG259v3Wz4D31/aOacHndtcCsTuL2s9ZGWbVsMmvw9bU7UFRebII/Qfp
tXkmpt/BoMRshFmMu2SiC3YmDqTyrsZcBQ1luM0KPw3bZ6LITd5kg1M/TYiRvq3P
PMeLpGjWr/g3Boe3vOkt3J2xTV0dG8i50kGffGOe89T+hMx953KU0qkuh/8kpjWa
fO53Z7C9Y44YEIuz5AXJCDbTKabofiZ0jaN5yma9qfkxrJvmXtKXmTEsplC8aoYw
EgvgIM89Lnrq7wmx4BRZ
=tgOH
-----END PGP SIGNATURE-----
