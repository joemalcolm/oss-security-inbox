X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1245" "Tuesday" "10" "November" "2015" "19:50:20" "+0200" "Jouni Malinen" "j@w1.fi" "<20151110175020.GC7251@w1.fi>" "42" "[oss-security] wpa_supplicant: EAP-pwd peer error path failure on unexpected Confirm message" nil nil nil "11" "2015111017:50:20" "[oss-security] wpa_supplicant: EAP-pwd peer error path failure on unexpected Confirm message" (number mark "U       j@w1.fi      Nov 10   42/1245  " thread-indent "\"[oss-security] wpa_supplicant: EAP-pwd peer error path failure on unexpected Confirm message\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23663 invoked by uid 550); 10 Nov 2015 17:50:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23603 invoked from network); 10 Nov 2015 17:50:35 -0000
Date: Tue, 10 Nov 2015 19:50:20 +0200
From: Jouni Malinen <j@w1.fi>
To: oss-security@lists.openwall.com
Message-ID: <20151110175020.GC7251@w1.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [oss-security] wpa_supplicant: EAP-pwd peer error path failure on unexpected
 Confirm message

EAP-pwd peer error path failure on unexpected Confirm message

Published: November 10, 2015
Identifier: CVE-2015-5316
Latest version available from: http://w1.fi/security/2015-8/


Vulnerability

A vulnerability was found in EAP-pwd peer implementation used in
wpa_supplicant. If an EAP-pwd Confirm message is received unexpectedly
before the Identity exchange, the error path processing ended up
dereferencing a NULL pointer and terminating the process.

For wpa_supplicant with EAP-pwd enabled in a network configuration
profile, this could allow a denial of service attack by an attacker
within radio range.


Vulnerable versions/configurations

wpa_supplicant v2.3-v2.5 with CONFIG_EAP_PWD=y in the build
configuration (wpa_supplicant/.config) and EAP-pwd enabled in a network
profile at runtime.


Possible mitigation steps

- Merge the following commits and rebuild wpa_supplicant:

  EAP-pwd peer: Fix error path for unexpected Confirm message

  This patch is available from http://w1.fi/security/2015-8/

- Update to wpa_supplicant v2.6 or newer, once available

- Remove CONFIG_EAP_PWD=y from build configuration

- Disable EAP-pwd in runtime configuration

-- 
Jouni Malinen                                            PGP id EFC895FA
