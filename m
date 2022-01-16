X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2226" "Sunday" "16" "January" "2022" "23:22:57" "+0200" "Jouni Malinen" "j@w1.fi" nil "58" "[oss-security] wpa_supplicant/hostapd: SAE/EAP-pwd side-channel attack update 2" nil nil nil "1" nil nil (number mark "U       j@w1.fi      Jan 16   58/2226  " thread-indent "\"[oss-security] wpa_supplicant/hostapd: SAE/EAP-pwd side-channel attack update 2\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] wpa_supplicant/hostapd: SAE/EAP-pwd side-channel attack update 2" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26257 invoked by uid 550); 16 Jan 2022 21:23:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26226 invoked from network); 16 Jan 2022 21:23:12 -0000
X-Virus-Scanned: Debian amavisd-new at w1.fi
Date: Sun, 16 Jan 2022 23:22:57 +0200
From: Jouni Malinen <j@w1.fi>
To: oss-security@lists.openwall.com
Message-ID: <20220116212257.GC445289@w1.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] wpa_supplicant/hostapd: SAE/EAP-pwd side-channel attack update 2

Published: January 16, 2022
Latest version available from: https://w1.fi/security/2022-1/

This is an update on earlier security advisories 2019-1 and
2019-2. Please see those advisories for more details in the issues.
https://w1.fi/security/2019-1/
https://w1.fi/security/2019-2/

Vulnerability

hostapd and wpa_supplicant security advisories 2019-1 and 2019-2
addressed side-channel attacks related to SAE and EAP-pwd. The
improvements identified in those advisories made it more difficult to
observe external differences in timing or memory access to mitigate
against this type of attacks. However, the identified changes did not
remove all differences. The external crypto library functions used to
implement crypto_ec_point_solve_y_coord() might not use a constant time
design and as such, might enable some side-channel channel attacks.

In particular, a potential new cache-based attack has been described
that could allow an attacker that is able to run unprivileged code on
the same processor might be able to gain enough information from the
SAE/EAP-pwd operations to be able to perform an offline dictionary attack
that could work against sufficiently weak passwords.


Vulnerable versions/configurations

All wpa_supplicant and hostapd versions with SAE support (CONFIG_SAE=y
in the build configuration and in the runtime configuration).

All wpa_supplicant and hostapd versions with EAP-pwd support
(CONFIG_EAP_PWD=y in the build configuration and EAP-pwd being enabled
in the runtime configuration).


Acknowledgments

Thanks to Daniel De Almeida Braga, Mohamed Sabt, and Pierre-Alain Fouque
(all affiliated to the University of Rennes 1, IRISA, France) for
discovering and reporting the issue.


Possible mitigation steps

- Update to wpa_supplicant/hostapd v2.10 or newer

- Merge the following commits to wpa_supplicant/hostapd v2.9 and
  rebuild:
  crypto: Add more bignum/EC helper functions
  dragonfly: Add sqrt() helper function
  SAE: Derive the y coordinate for PWE with own implementation
  EAP-pwd: Derive the y coordinate for PWE with own implementation

  These patches are available from https://w1.fi/security/2022-1/

-- 
Jouni Malinen                                            PGP id EFC895FA
