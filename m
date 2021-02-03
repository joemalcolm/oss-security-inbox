X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1847" "Thursday" "4" "February" "2021" "01:09:32" "+0200" "Jouni Malinen" "j@w1.fi" "<20210203230932.GB431400@w1.fi>" "52" "[oss-security] wpa_supplicant P2P group information processing vulnerability" nil nil nil "2" "2021020323:09:32" "[oss-security] wpa_supplicant P2P group information processing vulnerability" (number mark "U       j@w1.fi      Feb  4   52/1847  " thread-indent "\"[oss-security] wpa_supplicant P2P group information processing vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] wpa_supplicant P2P group information processing vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15885 invoked by uid 550); 3 Feb 2021 23:09:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15855 invoked from network); 3 Feb 2021 23:09:47 -0000
X-Virus-Scanned: Debian amavisd-new at w1.fi
Date: Thu, 4 Feb 2021 01:09:32 +0200
From: Jouni Malinen <j@w1.fi>
To: oss-security@lists.openwall.com
Message-ID: <20210203230932.GB431400@w1.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] wpa_supplicant P2P group information processing vulnerability

Published: February 4, 2021
Latest version available from: https://w1.fi/security/2020-2/


Vulnerability

A vulnerability was discovered in how wpa_supplicant processing P2P
(Wi-Fi Direct) group information from active group owners. The actual
parsing of that information validates field lengths appropriately, but
processing of the parsed information misses a length check when storing
a copy of the secondary device types. This can result in writing
attacker controlled data into the peer entry after the area assigned for
the secondary device type. The overflow can result in corrupting
pointers for heap allocations. This can result in an attacker within
radio range of the device running P2P discovery being able to cause
unexpected behavior, including termination of the wpa_supplicant process
and potentially arbitrary code execution.


Vulnerable versions/configurations

wpa_supplicant v1.0-v2.9 with CONFIG_P2P build option enabled

An attacker (or a system controlled by the attacker) needs to be within
radio range of the vulnerable system to send a suitably constructed
management frame that triggers a P2P peer device information to be
created or updated.


Acknowledgments

This issue was discovered by fuzz testing of wpa_supplicant by Google's
OSS-Fuzz.

Possible mitigation steps

- Merge the following commit to wpa_supplicant and rebuild it:

  P2P: Fix copying of secondary device types for P2P group client
  
  This patch is available from https://w1.fi/security/2020-2/
  
- Update to wpa_supplicant v2.10 or newer, once available

- Disable P2P (control interface command "P2P_SET disabled 1" or
  "p2p_disabled=1" in (each, if multiple interfaces used) wpa_supplicant
  configuration file)

- Disable P2P from the build (remove CONFIG_P2P=y)

-- 
Jouni Malinen                                            PGP id EFC895FA
