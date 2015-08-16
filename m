X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4202" "Sunday" "16" "August" "2015" "15:19:53" "+0200" "Moritz Muehlenhoff" "jmm@debian.org" "<20150816131953.GA32445@pisco.westfalen.local>" "99" "Re: [oss-security] hostapd/wpa_supplicant - Incomplete WPS and P2P NFC NDEF record payload length validation" nil nil nil "8" "2015081613:19:53" "[oss-security] hostapd/wpa_supplicant - Incomplete WPS and P2P NFC NDEF record payload length validation" (number mark "        jmm@debian.o Aug 16   99/4202  " thread-indent "\"Re: [oss-security] hostapd/wpa_supplicant - Incomplete WPS and P2P NFC NDEF record payload length validation\"\n") "<20150708144853.GE10457@w1.fi>" ("<20150708144853.GE10457@w1.fi>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9287 invoked by uid 550); 16 Aug 2015 13:20:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9266 invoked from network); 16 Aug 2015 13:20:05 -0000
Message-ID: <20150816131953.GA32445@pisco.westfalen.local>
References: <20150708144853.GE10457@w1.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150708144853.GE10457@w1.fi>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-SA-Exim-Connect-IP: 141.70.75.12
X-SA-Exim-Mail-From: jmm@inutil.org
X-SA-Exim-Scanned: No (on inutil.org); SAEximRunCond expanded to false
Cc: cve-assign@mitre.org
Date: Sun, 16 Aug 2015 15:19:53 +0200
From: Moritz Muehlenhoff <jmm@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] hostapd/wpa_supplicant - Incomplete WPS and P2P
 NFC NDEF record payload length validation
To: oss-security@lists.openwall.com

Hi,
This doesn't seem to have received a CVE assignment, explicitly
adding cve-assign to CC.

Cheers,
        Moritz

On Wed, Jul 08, 2015 at 05:48:53PM +0300, Jouni Malinen wrote:
> Incomplete WPS and P2P NFC NDEF record payload length validation
> 
> Published: July 8, 2015
> The latest version available from: http://w1.fi/security/2015-5/
> 
> 
> Vulnerability
> 
> A vulnerability was found in NDEF record parsing implementation in
> hostapd and wpa_supplicant. This code is used when an NFC Tag or NFC
> connection handover is used to trigger WPS or P2P operations. The parser
> did include bounds checking for the NDEF record payload length, but due
> to insufficient integer size, it was possible to trigger integer
> overflow that would result in bypassing the validation step with some
> malformed NDEF records.
> 
> This could result in denial of service due to hostapd/wpa_supplicant
> process termination (buffer read overflow) or infinite loop. The issue
> can be triggered only if the NFC stack on the device does not perform
> required validation steps for received NFC messages before sending the
> received message to hostapd/wpa_supplicant for processing.
> 
> It was possible for the 32-bit record->total_length value to end up
> wrapping around due to integer overflow if the longer form of payload
> length field is used and record->payload_length gets a value close to
> 2^32. This could result in ndef_parse_record() accepting a too large
> payload length value and the record type filter reading up to about 20
> bytes beyond the end of the buffer and potentially killing the process.
> This could also result in an attempt to allocate close to 2^32 bytes of
> heap memory and if that were to succeed, a buffer read overflow of the
> same length which would most likely result in the process termination.
> In case of record->total_length ending up getting the value 0, there
> would be no buffer read overflow, but record parsing would result in an
> infinite loop in ndef_parse_records().
> 
> Any of these error cases could potentially be used for denial of service
> attacks over NFC by using a malformed NDEF record on an NFC Tag or
> sending them during NFC connection handover if the application providing
> the NDEF message to hostapd/wpa_supplicant did no validation of the
> received NDEF records. While such validation is likely done in the NFC
> stack that needs to parse the NFC messages before further processing,
> hostapd/wpa_supplicant should have (re)confirmed NDEF message validity
> properly.
> 
> 
> Vulnerable versions/configurations
> 
> hostapd v0.7.0-v2.4 with CONFIG_WPS_NFC=y in the build configuration
> (hostapd/.config) and NFC NDEF records passed to hostapd by the NFC
> stack without validation.
> 
> wpa_supplicant v0.7.0-v2.4 with CONFIG_WPS_NFC=y in the build
> configuration (wpa_supplicant/.config) and NFC NDEF records passed to
> wpa_supplicant by the NFC stack without validation.
> 
> Note: No NFC stack implementation has yet been identified with
> capability to pass the malformed NDEF record to
> hostapd/wpa_supplicant. As such, it is not known whether this issue can
> be triggered in practice.
> 
> Alternatively to an actual NFC operation trigger, the malformed NDEF
> records could be provided by other applications running on the same
> device if access to the hostapd/wpa_supplicant control interface is
> available to untrusted components or users.
> 
> 
> Acknowledgments
> 
> Coverity Scan discovered parts of this issue (insecure data
> handling/TAINTED_SCALAR) and was the trigger for further manual review
> of the parsing routine.
> 
> 
> Possible mitigation steps
> 
> - Merge the following commit and rebuild hostapd/wpa_supplicant:
> 
>   NFC: Fix payload length validation in NDEF record parser
> 
>   This patch is available from http://w1.fi/security/2015-5/
> 
> - Update to hostapd/wpa_supplicant v2.5 or newer, once available
> 
> - Remove CONFIG_WPS_NFC=y from build configuration
> 
> - Confirm that the NFC stack does sufficient validation of the received
>   NDEF records before passing them to hostapd/wpa_supplicant
> 
> -- 
> Jouni Malinen                                            PGP id EFC895FA
> 
