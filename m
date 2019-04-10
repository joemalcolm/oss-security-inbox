X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1505" "Wednesday" "10" "April" "2019" "18:15:34" "+0300" "Jouni Malinen" "j@w1.fi" nil "42" nil nil nil nil "4" nil nil (number mark "U       j@w1.fi      Apr 10   42/1505  " thread-indent "\"[oss-security] hostapd: SAE confirm missing state validation\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] hostapd: SAE confirm missing state validation" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12077 invoked by uid 550); 10 Apr 2019 15:15:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12015 invoked from network); 10 Apr 2019 15:15:48 -0000
X-Virus-Scanned: Debian amavisd-new at w1.fi
Date: Wed, 10 Apr 2019 18:15:34 +0300
From: Jouni Malinen <j@w1.fi>
To: oss-security@lists.openwall.com
Message-ID: <20190410151534.GC5686@w1.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] hostapd: SAE confirm missing state validation

Published: April 10, 2019
Identifiers:
- CVE-2019-9496 (SAE confirm missing state validation in hostapd/AP)
Latest version available from: https://w1.fi/security/2019-3/

Vulnerability

When hostapd is used to operate an access point with SAE (Simultaneous
Authentication of Equals; also known as WPA3-Personal), an invalid
authentication sequence could result in the hostapd process terminating
due to a NULL pointer dereference when processing SAE confirm
message. This was caused by missing state validation steps when
processing the SAE confirm message in hostapd/AP mode.

Similar cases against the wpa_supplicant SAE station implementation had
already been tested by the hwsim test cases, but those sequences did not
trigger this specific code path in AP mode which is why the issue was
not discovered earlier.

An attacker in radio range of an access point using hostapd in SAE
configuration could use this issue to perform a denial of service attack
by forcing the hostapd process to terminate.


Vulnerable versions/configurations

All hostapd versions with SAE support (CONFIG_SAE=y in the build
configuration and SAE being enabled in the runtime configuration).


Possible mitigation steps

- Merge the following commit to hostapd and rebuild:

  SAE: Fix confirm message validation in error cases

  These patches are available from https://w1.fi/security/2019-3/

- Update to hostapd v2.8 or newer, once available

-- 
Jouni Malinen                                            PGP id EFC895FA
