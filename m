X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3838" "Wednesday" "8" "July" "2015" "17:48:53" "+0300" "Jouni Malinen" "j@w1.fi" "<20150708144853.GE10457@w1.fi>" "90" "[oss-security] hostapd/wpa_supplicant - Incomplete WPS and P2P NFC NDEF record payload length validation" nil nil nil "7" "2015070814:48:53" "[oss-security] hostapd/wpa_supplicant - Incomplete WPS and P2P NFC NDEF record payload length validation" (number mark "        j@w1.fi      Jul  8   90/3838  " thread-indent "\"[oss-security] hostapd/wpa_supplicant - Incomplete WPS and P2P NFC NDEF record payload length validation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7787 invoked by uid 550); 8 Jul 2015 14:49:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7743 invoked from network); 8 Jul 2015 14:49:07 -0000
Message-ID: <20150708144853.GE10457@w1.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Wed, 8 Jul 2015 17:48:53 +0300
From: Jouni Malinen <j@w1.fi>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] hostapd/wpa_supplicant - Incomplete WPS and P2P NFC NDEF record
 payload length validation
To: oss-security@lists.openwall.com

Incomplete WPS and P2P NFC NDEF record payload length validation

Published: July 8, 2015
The latest version available from: http://w1.fi/security/2015-5/


Vulnerability

A vulnerability was found in NDEF record parsing implementation in
hostapd and wpa_supplicant. This code is used when an NFC Tag or NFC
connection handover is used to trigger WPS or P2P operations. The parser
did include bounds checking for the NDEF record payload length, but due
to insufficient integer size, it was possible to trigger integer
overflow that would result in bypassing the validation step with some
malformed NDEF records.

This could result in denial of service due to hostapd/wpa_supplicant
process termination (buffer read overflow) or infinite loop. The issue
can be triggered only if the NFC stack on the device does not perform
required validation steps for received NFC messages before sending the
received message to hostapd/wpa_supplicant for processing.

It was possible for the 32-bit record->total_length value to end up
wrapping around due to integer overflow if the longer form of payload
length field is used and record->payload_length gets a value close to
2^32. This could result in ndef_parse_record() accepting a too large
payload length value and the record type filter reading up to about 20
bytes beyond the end of the buffer and potentially killing the process.
This could also result in an attempt to allocate close to 2^32 bytes of
heap memory and if that were to succeed, a buffer read overflow of the
same length which would most likely result in the process termination.
In case of record->total_length ending up getting the value 0, there
would be no buffer read overflow, but record parsing would result in an
infinite loop in ndef_parse_records().

Any of these error cases could potentially be used for denial of service
attacks over NFC by using a malformed NDEF record on an NFC Tag or
sending them during NFC connection handover if the application providing
the NDEF message to hostapd/wpa_supplicant did no validation of the
received NDEF records. While such validation is likely done in the NFC
stack that needs to parse the NFC messages before further processing,
hostapd/wpa_supplicant should have (re)confirmed NDEF message validity
properly.


Vulnerable versions/configurations

hostapd v0.7.0-v2.4 with CONFIG_WPS_NFC=y in the build configuration
(hostapd/.config) and NFC NDEF records passed to hostapd by the NFC
stack without validation.

wpa_supplicant v0.7.0-v2.4 with CONFIG_WPS_NFC=y in the build
configuration (wpa_supplicant/.config) and NFC NDEF records passed to
wpa_supplicant by the NFC stack without validation.

Note: No NFC stack implementation has yet been identified with
capability to pass the malformed NDEF record to
hostapd/wpa_supplicant. As such, it is not known whether this issue can
be triggered in practice.

Alternatively to an actual NFC operation trigger, the malformed NDEF
records could be provided by other applications running on the same
device if access to the hostapd/wpa_supplicant control interface is
available to untrusted components or users.


Acknowledgments

Coverity Scan discovered parts of this issue (insecure data
handling/TAINTED_SCALAR) and was the trigger for further manual review
of the parsing routine.


Possible mitigation steps

- Merge the following commit and rebuild hostapd/wpa_supplicant:

  NFC: Fix payload length validation in NDEF record parser

  This patch is available from http://w1.fi/security/2015-5/

- Update to hostapd/wpa_supplicant v2.5 or newer, once available

- Remove CONFIG_WPS_NFC=y from build configuration

- Confirm that the NFC stack does sufficient validation of the received
  NDEF records before passing them to hostapd/wpa_supplicant

-- 
Jouni Malinen                                            PGP id EFC895FA
