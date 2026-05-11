Received: (qmail 26300 invoked by uid 550); 11 May 2026 19:08:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20226 invoked from network); 11 May 2026 19:07:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1778526453;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Jm+I8BLD4qgCOGWzWISADcWwpqewnhLMs6JNEFj5cYM=;
	b=di9LyZrx+P9NoTh9yYA/3S/s9nlGM2CEsmE6uEXAKvtW4BL3akimXFEAO+2K+c+lHp28HY
	6AWVHwWOZCRL2YYWBwprk+Pl5D8RTyPimpkg12IJBkqzwC4hS82f4ULpNlTejywf+8n8yZ
	mT8cKkcXl5NapRtg+ZsJgjl1vSDp52F4XEwxUbMvUq46G61DAAJDc4wurjOOX31XjFzIZh
	xfenZeZ4oWGJCFvxculCa+4Pl2eCa6KVgXPLifPEz8qaSpJryr4TgoWtd76qHk7Mv65oz2
	XiWl8f2bahOXO/IkrCt5khjUkftKkZwHcRRlOEsXsKw9Qi02DbWvFnj+IbhNJw==
Message-ID: <0055b61f-3300-4450-b9fe-f4af5b5af547@cpansec.org>
Date: Mon, 11 May 2026 20:07:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Robert Rothenberg <rrwo@cpansec.org>
Content-Language: en-GB, en-ZA
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-State: clean
X-GND-Score: -5
X-GND-Cause: dmFkZTF9v9at17IYwHLoCswick7UzITQTCK8/zTAsJGvLPU+dK6vGXpY6jUsGZ6H74DxlDVFj80vhgcxHA0Y4lp5rWtomhq1B3Zw+1LND3bsS/8BbFCHzIwlC4ryloNUUfR1408Tgki3Acw6zfGg01KGz8enkUBLx8SFVw/JCD5VNCvk2LRW+ijIWs5rkgXw/+jkqXJ9/VYFgebeO8hnXOcudCBdd8Vh4LMWtNAS1vv3yXoIDfhkbtXtWTo2SBRAusHFHpAN86sDMcKnfnBZhUv91OCkSBTtktrikZW1nNfgrH2GqB+H9kiWuYBLb51je4TDWbz6ozG2kWq0C132wVFB6/KPkKxWP5KiA0kJwejMSWQIXqyqtVHDtK7cBP4ghGc8z8vvJfs/dlhaAYCU5APduYcic7ZLxy328XeR2Y9zVXRKprCRPQQhiJ/Zoyc4yH3uHR3+HX4UheVrIDj14TgafX72plPtPtvP9Dz38tPk4+D8S5OfJ8mRVddsA6pKIqC0y6kb//Uxhno5EMI99xHqdpFDRidtTfwazy8Ly1jc6WvvgiY7/uoefshdMWURbz35rbcF6m6e5+qXC1x7e82jotzFKr1fuiBF1tX3SWAJl/PCT7OTAe6FbgDjRhLFHZlV2P5jBfCW6ZNaGquXO8ShFPX8R2UvucUJ3HQ14ovldoYWjw
Subject: [oss-security] CVE-2022-4988: Alien::FreeImage versions through 1.001 for Perl
 contains several vulnerable libraries

========================================================================
CVE-2022-4988                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2022-4988
   Distribution:  Alien-FreeImage
       Versions:  through 1.001

       MetaCPAN:  https://metacpan.org/dist/Alien-FreeImage
       VCS Repo:  https://github.com/kmx/alien-freeimage


Alien::FreeImage versions through 1.001 for Perl contains several
vulnerable libraries

Description
-----------
Alien::FreeImage versions through 1.001 for Perl contains several
vulnerable libraries.

Alien::FreeImage contains version 3.17.0 of the FreeImage library from
2017, which has known vulnerabilities such as CVE-2015-0852 and
CVE-2025-65803.  The library embeds other images libraries that also
have known vulnerabilities.

Problem types
-------------
- CWE-1395 Dependency on Vulnerable Third-Party Component

Workarounds
-----------
The latest version of the FreeImage library is 3.18.0 from 2018, which
also appears to have serious vulnerabilities.

Users are advised to use alternatives.


References
----------
https://freeimage.sourceforge.io/
https://metacpan.org/release/KMX/Alien-FreeImage-1.001/source/src/Source
https://nvd.nist.gov/vuln/detail/CVE-2015-0852
https://nvd.nist.gov/vuln/detail/CVE-2025-65803
https://github.com/kmx/alien-freeimage/issues/4
https://github.com/kmx/alien-freeimage/issues/5

Timeline
--------
- 2017-07-11: Alien::FreeImage released with FreeImage 3.17.0
- 2022-06-29: Issues added to git repository regarding security
   vulnerabilities
- 2022-06-29: Several issues added to CPANSA::DB
- 2026-03-27: Issues logged with CPANSec



