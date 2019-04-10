X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4210" "Wednesday" "10" "April" "2019" "18:14:45" "+0300" "Jouni Malinen" "j@w1.fi" nil "86" nil nil nil nil "4" nil nil (number mark "U       j@w1.fi      Apr 10   86/4210  " thread-indent "\"[oss-security] wpa_supplicant/hostapd: EAP-pwd side-channel attack\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] wpa_supplicant/hostapd: EAP-pwd side-channel attack" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5577 invoked by uid 550); 10 Apr 2019 15:15:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5506 invoked from network); 10 Apr 2019 15:15:00 -0000
X-Virus-Scanned: Debian amavisd-new at w1.fi
Date: Wed, 10 Apr 2019 18:14:45 +0300
From: Jouni Malinen <j@w1.fi>
To: oss-security@lists.openwall.com
Message-ID: <20190410151445.GB5686@w1.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] wpa_supplicant/hostapd: EAP-pwd side-channel attack

Published: April 10, 2019
Identifiers:
- CVE-2019-9495 (cache attack against EAP-pwd)
Latest version available from: https://w1.fi/security/2019-2/

Vulnerability

Number of potential side channel attacks were recently discovered in the
SAE implementations used by both hostapd and wpa_supplicant (see
security advisory 2019-1 and VU#871675). EAP-pwd uses a similar design
for deriving PWE from the password and while a specific attack against
EAP-pwd is not yet known to be tested, there is no reason to believe
that the EAP-pwd implementation would be immune against the type of
cache attack that was identified for the SAE implementation. Since the
EAP-pwd implementation in hostapd (EAP server) and wpa_supplicant (EAP
peer) does not support MODP groups, the timing attack described against
SAE is not applicable for the EAP-pwd implementation.

A novel cache-based attack against SAE handshake would likely be
applicable against the EAP-pwd implementation. Even though the
wpa_supplicant/hostapd PWE derivation iteration for EAP-pwd has
protections against timing attacks, this new cache-based attack might
enable an attacker to determine which code branch is taken in the
iteration if the attacker is able to run unprivileged code on the victim
machine (e.g., an app installed on a smart phone or potentially a
JavaScript code on a web site loaded by a web browser). This depends on
the used CPU not providing sufficient protection to prevent unprivileged
applications from observing memory access patterns through the shared
cache (which is the most likely case with today's designs).

The attacker could use information about the selected branch to learn
information about the password and combine this information from number
of handshake instances with an offline dictionary attack. With
sufficient number of handshakes and sufficiently weak password, this
might result in full recovery of the used password if that password is
not strong enough to protect against dictionary attacks.

This attack requires the attacker to be able to run a program on the
target device. This is not commonly the case on an authentication server
(EAP server), so the most likely target for this would be a client
device using EAP-pwd.

The commits listed in the end of this advisory change the EAP-pwd
implementation shared by hostapd and wpa_supplicant to perform the PWE
derivation loop using operations that use constant time and memory
access pattern to minimize the externally observable differences from
operations that depend on the password even for the case where the
attacker might be able to run unprivileged code on the same device.


Vulnerable versions/configurations

All wpa_supplicant and hostapd versions with EAP-pwd support
(CONFIG_EAP_PWD=y in the build configuration and EAP-pwd being enabled
in the runtime configuration).

It should also be noted that older versions of wpa_supplicant/hostapd
prior to v2.7 did not include additional protection against certain
timing differences. The definition of the EAP-pwd (RFC 5931) does not
describe such protection, but the same issue that was addressed in SAE
earlier can be applicable against EAP-pwd as well and as such, that
implementation specific extra protection (commit 22ac3dfebf7b, "EAP-pwd:
Mask timing of PWE derivation") is needed to avoid showing externally
visible timing differences that could leak information about the
password. Any uses of older wpa_supplicant/hostapd versions with EAP-pwd
are recommended to update to v2.7 or newer in addition to the mitigation
steps listed below for the more recently discovered issue.


Possible mitigation steps

- Merge the following commits to wpa_supplicant/hostapd and rebuild:

  OpenSSL: Use constant time operations for private bignums
  Add helper functions for constant time operations
  OpenSSL: Use constant time selection for crypto_bignum_legendre()
  EAP-pwd: Use constant time and memory access for finding the PWE

  These patches are available from https://w1.fi/security/2019-2/

- Update to wpa_supplicant/hostapd v2.8 or newer, once available

- Use strong passwords to prevent dictionary attacks

-- 
Jouni Malinen                                            PGP id EFC895FA
