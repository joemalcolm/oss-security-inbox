X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2718" "Wednesday" "22" "April" "2015" "22:10:37" "+0300" "Jouni Malinen" "j@w1.fi" "<20150422191037.GA25121@w1.fi>" "69" "[oss-security] wpa_supplicant P2P SSID processing vulnerability" nil nil nil "4" "2015042219:10:37" "[oss-security] wpa_supplicant P2P SSID processing vulnerability" (number mark "        j@w1.fi      Apr 22   69/2718  " thread-indent "\"[oss-security] wpa_supplicant P2P SSID processing vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11937 invoked by uid 550); 22 Apr 2015 19:10:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11876 invoked from network); 22 Apr 2015 19:10:50 -0000
Message-ID: <20150422191037.GA25121@w1.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Wed, 22 Apr 2015 22:10:37 +0300
From: Jouni Malinen <j@w1.fi>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] wpa_supplicant P2P SSID processing vulnerability
To: oss-security@lists.openwall.com

Published: April 22, 2015
Identifier: CVE-2015-1863
Latest version available from: http://w1.fi/security/2015-1/


Vulnerability

A vulnerability was found in how wpa_supplicant uses SSID information
parsed from management frames that create or update P2P peer entries
(e.g., Probe Response frame or number of P2P Public Action frames). SSID
field has valid length range of 0-32 octets. However, it is transmitted
in an element that has a 8-bit length field and potential maximum
payload length of 255 octets. wpa_supplicant was not sufficiently
verifying the payload length on one of the code paths using the SSID
received from a peer device.

This can result in copying arbitrary data from an attacker to a fixed
length buffer of 32 bytes (i.e., a possible overflow of up to 223
bytes). The SSID buffer is within struct p2p_device that is allocated
from heap. The overflow can override couple of variables in the struct,
including a pointer that gets freed. In addition about 150 bytes (the
exact length depending on architecture) can be written beyond the end of
the heap allocation.

This could result in corrupted state in heap, unexpected program
behavior due to corrupted P2P peer device information, denial of service
due to wpa_supplicant process crash, exposure of memory contents during
GO Negotiation, and potentially arbitrary code execution.

Vulnerable versions/configurations

wpa_supplicant v1.0-v2.4 with CONFIG_P2P build option enabled

Attacker (or a system controlled by the attacker) needs to be within
radio range of the vulnerable system to send a suitably constructed
management frame that triggers a P2P peer device information to be
created or updated.

The vulnerability is easiest to exploit while the device has started an
active P2P operation (e.g., has ongoing P2P_FIND or P2P_LISTEN control
interface command in progress). However, it may be possible, though
significantly more difficult, to trigger this even without any active
P2P operation in progress.


Acknowledgments

Thanks to Google security team for reporting this issue and smart
hardware research group of Alibaba security team for discovering it.


Possible mitigation steps

- Merge the following commits to wpa_supplicant and rebuild it:

  P2P: Validate SSID element length before copying it (CVE-2015-1863)

  This patch is available from http://w1.fi/security/2015-1/

- Update to wpa_supplicant v2.5 or newer, once available

- Disable P2P (control interface command "P2P_SET disabled 1" or
  "p2p_disabled=1" in (each, if multiple interfaces used) wpa_supplicant
  configuration file)

- Disable P2P from the build (remove CONFIG_P2P=y)

-- 
Jouni Malinen                                            PGP id EFC895FA
