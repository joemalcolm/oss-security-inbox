X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4808" "Tuesday" "3" "May" "2016" "20:56:18" "+0300" "Jouni Malinen" "j@w1.fi" "<20160503175618.GA11827@w1.fi>" "119" "[oss-security] Re: hostapd/wpa_supplicant - psk configuration parameter update allowing arbitrary data to be written" nil nil nil "5" "2016050317:56:18" "[oss-security] Re: hostapd/wpa_supplicant - psk configuration parameter update allowing arbitrary data to be written" (number mark "U       j@w1.fi      May  3  119/4808  " thread-indent "\"[oss-security] Re: hostapd/wpa_supplicant - psk configuration parameter update allowing arbitrary data to be written\"\n") "<20160503052928.C84286C0068@smtpvmsrv1.mitre.org>" ("<20160502203045.GA5924@w1.fi>" "<20160503052928.C84286C0068@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22336 invoked by uid 550); 3 May 2016 17:56:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22289 invoked from network); 3 May 2016 17:56:32 -0000
Date: Tue, 3 May 2016 20:56:18 +0300
From: Jouni Malinen <j@w1.fi>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com
Message-ID: <20160503175618.GA11827@w1.fi>
References: <20160502203045.GA5924@w1.fi>
 <20160503052928.C84286C0068@smtpvmsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160503052928.C84286C0068@smtpvmsrv1.mitre.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [oss-security] Re: hostapd/wpa_supplicant - psk configuration parameter update
 allowing arbitrary data to be written

On Tue, May 03, 2016 at 01:29:28AM -0400, cve-assign@mitre.org wrote:
> > Identifier: related to CVE-2016-2447
> 
> We understand the existence of the CVE-2016-2447 ID in
> http://source.android.com/security/bulletin/2016-05-01.html and that
> the reports credit Imre Rad; however, there are different exploitation
> scenarios that affect different versions from the perspective of
> hostapd/wpa_supplicant, and thus it is probably simplest for most
> people to have separate hostapd/wpa_supplicant CVE IDs.

Agreed. CVE-2016-2447 is an instance of CVE-2016-4477 on a specific
platform. I updated the w1.fi security advisory 2016-1 with the assigned
new CVE IDs as follows:


psk configuration parameter update allowing arbitrary data to be written

Published: May 2, 2016
Identifiers: CVE-2016-4476 and CVE-2016-4477
   (CVE-2016-2447 is an instance of CVE-2016-4477 on Android)
Latest version available from: http://w1.fi/security/2016-1/


Vulnerability

A vulnerability was found in how hostapd and wpa_supplicant writes the
configuration file update for the WPA/WPA2 passphrase parameter. If this
parameter has been updated to include control characters either through
a WPS operation (CVE-2016-4476) or through local configuration change
over the wpa_supplicant control interface (CVE-2016-4477), the resulting
configuration file may prevent the hostapd and wpa_supplicant from
starting when the updated file is used. In addition for wpa_supplicant,
it may be possible to load a local library file and execute code from
there with the same privileges under which the wpa_supplicant process
runs.

The WPS trigger for this requires local user action to authorize the WPS
operation in which a new configuration would be received. The attacker
would also need to be in radio range of the device or have access to the
IP network to act as a WPS External Registrar. Such an attack could
result in denial of service by not allowing hostapd or wpa_supplicant to
start after they have been stopped.

The local configuration update through the control interface SET_NETWORK
command could allow privilege escalation for the local user to run code
from a locally stored library file under the same privileges as the
wpa_supplicant process has. The assumption here is that a not fully
trusted user/application might have access through a connection manager
to set network profile parameters like psk, but would not have access to
set other configuration file parameters. If the connection manager in
such a case does not filter out control characters from the psk value,
it could have been possible to practically update the global parameters
by embedding a newline character within the psk value. In addition, the
untrusted user/application would need to be able to install a library
file somewhere on the device from where the wpa_supplicant process has
privileges to load the library.

Similarly to the SET_NETWORK case, if a connection manager exposes
access to the SET_CRED or SET commands, similar issue with newline
characters can exist as those commands do not filter out control
characters from the value.

It should also be noted that providing unlimited access to the
wpa_supplicant control interface would allow arbitrary SET commands to
be issued. Such unlimited access should not be provided to untrusted
users/applications.


Vulnerable versions/configurations

For the local control interface attack vector (CVE-2016-4477):

wpa_supplicant v0.4.0-v2.5 with control interface enabled

update_config=1 must have been enabled in the configuration file.


For the WPS attack vector (CVE-2016-4476):

wpa_supplicant v0.6.7-v2.5 with CONFIG_WPS build option enabled
hostapd v0.6.7-v2.5 with CONFIG_WPS build option enabled

WPS needs to be enabled in the runtime operation and the WPS operation
needs to have been authorized by the local user over the control
interface. For wpa_supplicant, update_config=1 must have been enabled in
the configuration file.


Acknowledgments

Thanks to Google for reporting this issue and Imre Rad of SEARCH-LAB
Ltd. discovering it.


Possible mitigation steps

- Merge the following commits to hostapd/wpa_supplicant and rebuild it:

  CVE-2016-4476:
  WPS: Reject a Credential with invalid passphrase
  CVE-2016-4477:
  Reject psk parameter set with invalid passphrase character
  Reject SET_CRED commands with newline characters in the string values
  Reject SET commands with newline characters in the string values
  CVE-2016-4476 and CVE-2016-4477:
  Remove newlines from wpa_supplicant config network output

  These patches are available from http://w1.fi/security/2016-1/

- Update to hostapd/wpa_supplicant v2.6 or newer, once available


Change history

May 3, 2016
- Added CVE IDs

-- 
Jouni Malinen                                            PGP id EFC895FA
