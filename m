X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2804" "Saturday" "9" "May" "2015" "21:22:14" "+0300" "Jouni Malinen" "j@w1.fi" "<20150509182214.GC9017@w1.fi>" "75" "Re: [oss-security] CVE request: vulnerability in wpa_supplicant and hostapd" nil nil nil "5" "2015050918:22:14" "[oss-security] CVE request: vulnerability in wpa_supplicant and hostapd" (number mark "        j@w1.fi      May  9   75/2804  " thread-indent "\"Re: [oss-security] CVE request: vulnerability in wpa_supplicant and hostapd\"\n") "<20150507121507.GA10575@openwall.com>" ("<87k2wkfvks.fsf@redhat.com>" "<20150507121507.GA10575@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32634 invoked by uid 550); 9 May 2015 18:22:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32616 invoked from network); 9 May 2015 18:22:27 -0000
Message-ID: <20150509182214.GC9017@w1.fi>
References: <87k2wkfvks.fsf@redhat.com>
 <20150507121507.GA10575@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150507121507.GA10575@openwall.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Sat, 9 May 2015 21:22:14 +0300
From: Jouni Malinen <j@w1.fi>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: vulnerability in wpa_supplicant and
 hostapd
To: oss-security@lists.openwall.com

> On Thu, May 07, 2015 at 01:58:27PM +0200, Martin Prpic wrote:
> > Hi, I don't see a CVE assigned for this anywhere:
> > http://w1.fi/security/2015-4/eap-pwd-missing-payload-length-validation.txt

In support of this CVE assignment request for hostapd/wpa_supplicant,
here's the full advisory text:


EAP-pwd missing payload length validation

Published: May 4, 2015
Latest version available from: http://w1.fi/security/2015-4/


Vulnerability

A vulnerability was found in EAP-pwd server and peer implementation used
in hostapd and wpa_supplicant, respectively. The EAP-pwd/Commit and
EAP-pwd/Confirm message payload is processed without verifying that the
received frame is long enough to include all the fields. This results in
buffer read overflow of up to couple of hundred bytes.

The exact result of this buffer overflow depends on the platform and may
be either not noticeable (i.e., authentication fails due to invalid data
without any additional side effects) or process termination due to the
buffer read overflow being detected and stopped. The latter case could
potentially result in denial of service when EAP-pwd authentication is
used.

Further research into this issue found that the fragment reassembly
processing is also missing a check for the Total-Length field and this
could result in the payload length becoming negative. This itself would
not add more to the vulnerability due to the payload length not being
verified anyway. However, it is possible that a related reassembly step
would result in hitting an internal security check on buffer use and
result in the processing being terminated.


Vulnerable versions/configurations

hostapd v1.0-v2.4 with CONFIG_EAP_PWD=y in the build configuration
(hostapd/.config) and EAP-pwd authentication server enabled in runtime
configuration.

wpa_supplicant v1.0-v2.4 with CONFIG_EAP_PWD=y in the build
configuration (wpa_supplicant/.config) and EAP-pwd enabled in a network
profile at runtime.


Acknowledgments

Thanks to Kostya Kortchinsky of Google Security Team for discovering and
reporting this issue.


Possible mitigation steps

- Merge the following commits and rebuild hostapd/wpa_supplicant:

  EAP-pwd peer: Fix payload length validation for Commit and Confirm
  EAP-pwd server: Fix payload length validation for Commit and Confirm
  EAP-pwd peer: Fix Total-Length parsing for fragment reassembly
  EAP-pwd server: Fix Total-Length parsing for fragment reassembly
  EAP-pwd peer: Fix asymmetric fragmentation behavior

  These patches are available from http://w1.fi/security/2015-4/

- Update to hostapd/wpa_supplicant v2.5 or newer, once available

- Remove CONFIG_EAP_PWD=y from build configuration

- Disable EAP-pwd in runtime configuration

-- 
Jouni Malinen                                            PGP id EFC895FA
