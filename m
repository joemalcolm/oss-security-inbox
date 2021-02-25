X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1606" "Thursday" "25" "February" "2021" "21:03:50" "+0200" "Jouni Malinen" "j@w1.fi" nil "45" "[oss-security] wpa_supplicant P2P provision discovery processing vulnerability" nil nil nil "2" nil nil (number mark "U       j@w1.fi      Feb 25   45/1606  " thread-indent "\"[oss-security] wpa_supplicant P2P provision discovery processing vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] wpa_supplicant P2P provision discovery processing vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15513 invoked by uid 550); 25 Feb 2021 19:04:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15477 invoked from network); 25 Feb 2021 19:04:05 -0000
X-Virus-Scanned: Debian amavisd-new at w1.fi
Date: Thu, 25 Feb 2021 21:03:50 +0200
From: Jouni Malinen <j@w1.fi>
To: oss-security@lists.openwall.com
Message-ID: <20210225190350.GB474115@w1.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] wpa_supplicant P2P provision discovery processing vulnerability

Published: February 25, 2021
Latest version available from: https://w1.fi/security/2021-1/


Vulnerability

A vulnerability was discovered in how wpa_supplicant processes P2P
(Wi-Fi Direct) provision discovery requests. Under a corner case
condition, an invalid Provision Discovery Request frame could end up
reaching a state where the oldest peer entry needs to be removed. With
a suitably constructed invalid frame, this could result in use
(read+write) of freed memory. This can result in an attacker within
radio range of the device running P2P discovery being able to cause
unexpected behavior, including termination of the wpa_supplicant process
and potentially code execution.


Vulnerable versions/configurations

wpa_supplicant v1.0-v2.9 with CONFIG_P2P build option enabled

An attacker (or a system controlled by the attacker) needs to be within
radio range of the vulnerable system to send a set of suitably
constructed management frames that trigger the corner case to be reached
in the management of the P2P peer table.


Possible mitigation steps

- Merge the following commit to wpa_supplicant and rebuild it:

  P2P: Fix a corner case in peer addition based on PD Request
  
  This patch is available from https://w1.fi/security/2021-1/
  
- Update to wpa_supplicant v2.10 or newer, once available

- Disable P2P (control interface command "P2P_SET disabled 1" or
  "p2p_disabled=1" in (each, if multiple interfaces used) wpa_supplicant
  configuration file)

- Disable P2P from the build (remove CONFIG_P2P=y)

-- 
Jouni Malinen                                            PGP id EFC895FA
