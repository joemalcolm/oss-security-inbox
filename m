X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2023" "Monday" "1" "March" "2021" "15:48:57" "+0100" "Marc" "mh@mh-sec.de" nil "65" "[oss-security] Multiple Vulnerabilities in jpeg-xl (CVE-2021-27804)" nil nil nil "3" nil nil (number mark "U       mh@mh-sec.de Mar  1   65/2023  " thread-indent "\"[oss-security] Multiple Vulnerabilities in jpeg-xl (CVE-2021-27804)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple Vulnerabilities in jpeg-xl (CVE-2021-27804)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14008 invoked by uid 550); 1 Mar 2021 15:47:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20188 invoked from network); 1 Mar 2021 14:49:09 -0000
References: <fb908fa6-c542-c2a9-66fb-b38dc5e386ed@mh-sec.de>
To: oss-security@lists.openwall.com
From: Marc <mh@mh-sec.de>
X-Forwarded-Message-Id: <fb908fa6-c542-c2a9-66fb-b38dc5e386ed@mh-sec.de>
Message-ID: <9c3be1f8-052f-f034-5026-22ab4ecff61b@mh-sec.de>
Date: Mon, 1 Mar 2021 15:48:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <fb908fa6-c542-c2a9-66fb-b38dc5e386ed@mh-sec.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Multiple Vulnerabilities in jpeg-xl (CVE-2021-27804)


Multiple Vulnerabilities in jpeg-xl
===================================
CVE: CVE-2021-27804
Highest Severity Rating: High
Confirmed Affected Versions: jpeg-xl v0.3.1 and earlier
Vendor: Joint Photographic Experts Group (JPEG)
Vendor URL: https://gitlab.com/wg1/jpeg-xl


Summary and Impact
------------------
jpeg-xl is the reference implementation by the Joint Photographic
Experts Group (JPEG) of the new JPEG XL standard.
Multiple memory corruption vulnerabilities were found and reported in
the last 3 months. The security issues were responsively reported to
the vendor and were fixed in subsequent version, however silently.

The changelog does not reflect security issues being fixed:

jpeg-xl (0.3.2) urgency=medium

  * Bump JPEG XL version to 0.3.2.
  * Fix embedded ICC encoding regression #149.

 -- Fri, 12 Feb 2021 21:00:12 +0100

jpeg-xl (0.3.1) urgency=medium

  * Bump JPEG XL version to 0.3.1.

 -- Tue, 09 Feb 2021 09:48:43 +0100

jpeg-xl (0.3) urgency=medium

  * Bump JPEG XL version to 0.3.

 -- Wed, 27 Jan 2021 22:36:32 +0100

All the while it is already being available e.g. in Arch Linux
(https://aur.archlinux.org/packages/libjpeg-xl-git/) and FreeBSD
(https://pkgs.org/download/jpeg-xl) and is currently in the process of
being added to Debian and therefore to Ubuntu and Kali Linux.

Hence the need to sit down and write a boring advisory to publish on a
mailing list instead of doing something more interesting :(

For anyone interested, the memory corruptions were discovered by using
the AFL++ fuzzer (https://github.com/AFLplusplus/AFLplusplus) for just a
few hours for testing purposes. The current v0.3.2 release of jpeg-xl
also produces writeable memory corruptions when fuzzing for a very short
time (with a good starting corpus that is).


Recommendation
--------------
The vendor should establish a proper notification on fixed security
issues in the changelog and not put the Internet at risk.


-- 
Marc Heuse
www.mh-sec.de

PGP: AF3D 1D4C D810 F0BB 977D  3807 C7EE D0A0 6BE9 F573
