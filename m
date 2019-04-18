X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1633" "Thursday" "18" "April" "2019" "18:59:26" "+0300" "Jouni Malinen" "j@w1.fi" "<20190418155926.GB5455@w1.fi>" "42" "[oss-security] wpa_supplicant/hostapd: EAP-pwd message reassembly issue with unexpected fragment" nil nil nil "4" "2019041815:59:26" "[oss-security] wpa_supplicant/hostapd: EAP-pwd message reassembly issue with unexpected fragment" (number mark "U       j@w1.fi      Apr 18   42/1633  " thread-indent "\"[oss-security] wpa_supplicant/hostapd: EAP-pwd message reassembly issue with unexpected fragment\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] wpa_supplicant/hostapd: EAP-pwd message reassembly issue with unexpected fragment" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5273 invoked by uid 550); 18 Apr 2019 15:59:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5227 invoked from network); 18 Apr 2019 15:59:41 -0000
X-Virus-Scanned: Debian amavisd-new at w1.fi
Date: Thu, 18 Apr 2019 18:59:26 +0300
From: Jouni Malinen <j@w1.fi>
To: oss-security@lists.openwall.com
Message-ID: <20190418155926.GB5455@w1.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] wpa_supplicant/hostapd: EAP-pwd message reassembly issue with
 unexpected fragment

Published: April 18, 2019
Latest version available from: https://w1.fi/security/2019-5/

Vulnerability

EAP-pwd implementation in hostapd (EAP server) and wpa_supplicant (EAP
peer) was discovered not to validate fragmentation reassembly state
properly for a case where an unexpected fragment could be received. This
could result in process termination due to NULL pointer dereference.

An attacker in radio range of a station device with wpa_supplicant
network profile enabling use of EAP-pwd could cause the wpa_supplicant
process to terminate by constructing unexpected sequence of EAP
messages. An attacker in radio range of an access point that points to
hostapd as an authentication server with EAP-pwd user enabled in runtime
configuration (or in non-WLAN uses of EAP authentication as long as the
attacker can send EAP-pwd messages to the server) could cause the
hostapd process to terminate by constructing unexpected sequence of EAP
messages.


Vulnerable versions/configurations

All hostapd and wpa_supplicant versions with EAP-pwd support
(CONFIG_EAP_PWD=y in the build configuration and EAP-pwd being enabled
in the runtime configuration) are vulnerable against the process
termination (denial of service) attack.


Possible mitigation steps

- Merge the following commits to wpa_supplicant/hostapd and rebuild:

  EAP-pwd peer: Fix reassembly buffer handling
  EAP-pwd server: Fix reassembly buffer handling

  These patches are available from https://w1.fi/security/2019-5/

- Update to wpa_supplicant/hostapd v2.8 or newer, once available

-- 
Jouni Malinen                                            PGP id EFC895FA
