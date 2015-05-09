X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2246" "Saturday" "9" "May" "2015" "21:20:36" "+0300" "Jouni Malinen" "j@w1.fi" "<20150509182036.GB9017@w1.fi>" "64" "[oss-security] CVE request: hostapd/wpa_supplicant - Integer underflow in AP mode WMM Action frame processing" nil nil nil "5" "2015050918:20:36" "[oss-security] CVE request: hostapd/wpa_supplicant - Integer underflow in AP mode WMM Action frame processing" (number mark "        j@w1.fi      May  9   64/2246  " thread-indent "\"[oss-security] CVE request: hostapd/wpa_supplicant - Integer underflow in AP mode WMM Action frame processing\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24482 invoked by uid 550); 9 May 2015 18:20:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24453 invoked from network); 9 May 2015 18:20:48 -0000
Message-ID: <20150509182036.GB9017@w1.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Sat, 9 May 2015 21:20:36 +0300
From: Jouni Malinen <j@w1.fi>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: hostapd/wpa_supplicant - Integer underflow in AP mode
 WMM Action frame processing
To: oss-security@lists.openwall.com

Could a CVE please be assigned for following?


Integer underflow in AP mode WMM Action frame processing

Published: May 4, 2015
Latest version available from: http://w1.fi/security/2015-3/


Vulnerability

A vulnerability was found in WMM Action frame processing in a case where
hostapd or wpa_supplicant is used to implement AP mode MLME/SME
functionality (i.e., Host AP driver of a mac80211-based driver on
Linux).

The AP mode WMM Action frame parser in hostapd/wpa_supplicant goes
through the variable length information element part with the length of
this area calculated by removing the header length from the total length
of the frame. The frame length is previously verified to be large enough
to include the IEEE 802.11 header, but the couple of additional bytes
after this header are not explicitly verified and as a result of this,
there may be an integer underflow that results in the signed integer
variable storing the length becoming negative. This negative value is
then interpreted as a very large unsigned integer length when parsing
the information elements. This results in a buffer read overflow and
process termination.

This vulnerability can be used to perform denial of service attacks by
an attacker that is within radio range of the AP that uses hostapd of
wpa_supplicant for MLME/SME operations.


Vulnerable versions/configurations

hostapd v0.5.5-v2.4 with CONFIG_DRIVER_HOSTAP=y or
CONFIG_DRIVER_NL80211=y in the build configuration (hostapd/.config).

wpa_supplicant v0.7.0-v2.4 with CONFIG_AP=y or CONFIG_P2P=y and
CONFIG_DRIVER_HOSTAP=y or CONFIG_DRIVER_NL80211=y in the build
configuration (wpa_supplicant/.config) and AP (including P2P GO) mode
used at runtime.


Acknowledgments

Thanks to Kostya Kortchinsky of Google Security Team for discovering and
reporting this issue.


Possible mitigation steps

- Merge the following commit and rebuild hostapd/wpa_supplicant:

  AP WMM: Fix integer underflow in WMM Action frame parser

  This patch is available from http://w1.fi/security/2015-3/

- Update to hostapd/wpa_supplicant v2.5 or newer, once available

- wpa_supplicant: Do not enable AP mode or P2P GO operation at runtime

-- 
Jouni Malinen                                            PGP id EFC895FA
