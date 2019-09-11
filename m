X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1858" "Wednesday" "11" "September" "2019" "13:37:01" "+0300" "Jouni Malinen" "j@w1.fi" "<20190911103701.GB10457@w1.fi>" "45" "[oss-security] hostapd/wpa_supplicant: AP mode PMF disconnection protection bypass" nil nil nil "9" "2019091110:37:01" "[oss-security] hostapd/wpa_supplicant: AP mode PMF disconnection protection bypass" (number mark "U       j@w1.fi      Sep 11   45/1858  " thread-indent "\"[oss-security] hostapd/wpa_supplicant: AP mode PMF disconnection protection bypass\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] hostapd/wpa_supplicant: AP mode PMF disconnection protection bypass" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1251 invoked by uid 550); 11 Sep 2019 10:37:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1217 invoked from network); 11 Sep 2019 10:37:16 -0000
X-Virus-Scanned: Debian amavisd-new at w1.fi
Date: Wed, 11 Sep 2019 13:37:01 +0300
From: Jouni Malinen <j@w1.fi>
To: oss-security@lists.openwall.com
Message-ID: <20190911103701.GB10457@w1.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] hostapd/wpa_supplicant: AP mode PMF disconnection protection bypass

Published: September 11, 2019
Latest version available from: https://w1.fi/security/2019-7/

Vulnerability

hostapd (and wpa_supplicant when controlling AP mode) did not perform
sufficient source address validation for some received Management frames
and this could result in ending up sending a frame that caused
associated stations to incorrectly believe they were disconnected from
the network even if management frame protection (also known as PMF) was
negotiated for the association. This could be considered to be a denial
of service vulnerability since PMF is supposed to protect from this type
of issues. It should be noted that if PMF is not enabled, there would be
no protocol level protection against this type of denial service
attacks.

An attacker in radio range of the access point could inject a specially
constructed unauthenticated IEEE 802.11 frame to the access point to
cause associated stations to be disconnected and require a reconnection
to the network.


Vulnerable versions/configurations

All hostapd and wpa_supplicants versions with PMF support
(CONFIG_IEEE80211W=y) and a runtime configuration enabled AP mode with
PMF being enabled (optional or required). In addition, this would be
applicable only when using user space based MLME/SME in AP mode, i.e.,
when hostapd (or wpa_supplicant when controlling AP mode) would process
authentication and association management frames. This condition would
be applicable mainly with drivers that use mac80211.


Possible mitigation steps

- Merge the following commit to wpa_supplicant/hostapd and rebuild:

  AP: Silently ignore management frame from unexpected source address

  This patch is available from https://w1.fi/security/2019-7/

- Update to wpa_supplicant/hostapd v2.10 or newer, once available

-- 
Jouni Malinen                                            PGP id EFC895FA
