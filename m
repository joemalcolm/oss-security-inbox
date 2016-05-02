X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3875" "Monday" "2" "May" "2016" "23:30:45" "+0300" "Jouni Malinen" "j@w1.fi" "<20160502203045.GA5924@w1.fi>" "93" "[oss-security] hostapd/wpa_supplicant - psk configuration parameter update allowing arbitrary data to be written" "^Date:" nil nil "5" "2016050220:30:45" "[oss-security] hostapd/wpa_supplicant - psk configuration parameter update allowing arbitrary data to be written" (number mark "        j@w1.fi      May  2   93/3875  " thread-indent "\"[oss-security] hostapd/wpa_supplicant - psk configuration parameter update allowing arbitrary data to be written\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27925 invoked by uid 550); 2 May 2016 20:31:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27877 invoked from network); 2 May 2016 20:30:59 -0000
Message-ID: <20160502203045.GA5924@w1.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Mon, 2 May 2016 23:30:45 +0300
From: Jouni Malinen <j@w1.fi>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] hostapd/wpa_supplicant - psk configuration parameter update allowing
 arbitrary data to be written
To: oss-security@lists.openwall.com

psk configuration parameter update allowing arbitrary data to be written

Published: May 2, 2016
Identifier: related to CVE-2016-2447
Latest version available from: http://w1.fi/security/2016-1/


Vulnerability

A vulnerability was found in how hostapd and wpa_supplicant writes the
configuration file update for the WPA/WPA2 passphrase parameter. If this
parameter has been updated to include control characters either through
a WPS operation or through local configuration change over the
wpa_supplicant control interface, the resulting configuration file may
prevent the hostapd and wpa_supplicant from starting when the updated
file is used. In addition for wpa_supplicant, it may be possible to load
a local library file and execute code from there with the same
privileges under which the wpa_supplicant process runs.

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

For the local control interface attack vector:

wpa_supplicant v0.4.0-v2.5 with control interface enabled

update_config=1 must have been enabled in the configuration file.


For the WPS attack vector:

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

  WPS: Reject a Credential with invalid passphrase
  Reject psk parameter set with invalid passphrase character
  Remove newlines from wpa_supplicant config network output
  Reject SET_CRED commands with newline characters in the string values
  Reject SET commands with newline characters in the string values

  These patches are available from http://w1.fi/security/2016-1/

- Update to wpa_supplicant v2.6 or newer, once available

-- 
Jouni Malinen                                            PGP id EFC895FA
