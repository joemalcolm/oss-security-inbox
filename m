X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2968" "Monday" "19" "December" "2016" "11:21:45" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<8d7c2a260df24836a7314c2f412f6537@imshyb02.MITRE.ORG>" "76" "[oss-security] Re: Announce: OpenSSH 7.4 released" nil nil nil "12" "2016121916:21:45" "[oss-security] Re: Announce: OpenSSH 7.4 released" (number mark "U       cve-assign@m Dec 19   76/2968  " thread-indent "\"[oss-security] Re: Announce: OpenSSH 7.4 released\"\n") "<4ab69cb56675d73a@openbsd.org>" ("<4ab69cb56675d73a@openbsd.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14177 invoked by uid 550); 19 Dec 2016 16:22:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14146 invoked from network); 19 Dec 2016 16:21:58 -0000
From: <cve-assign@mitre.org>
To: <oss-security@lists.openwall.com>
CC: <cve-assign@mitre.org>
In-Reply-To: <4ab69cb56675d73a@openbsd.org>
Message-ID: <8d7c2a260df24836a7314c2f412f6537@imshyb02.MITRE.ORG>
Date: Mon, 19 Dec 2016 11:21:45 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: Announce: OpenSSH 7.4 released

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> ssh-agent(1): Will now refuse to load PKCS#11 modules from paths
> outside a trusted whitelist
> ...
> code execution on the system running the ssh-agent if the
> attacker has control of the forwarded agent-socket (on the host
> running the sshd server) and the ability to write to the filesystem
> of the host running ssh-agent

Use CVE-2016-10009.


> sshd(8): When privilege separation is disabled, forwarded Unix-
> domain sockets would be created by sshd(8) with the privileges of
> 'root'

Use CVE-2016-10010.


> sshd(8): Avoid theoretical leak of host private key material to
> privilege-separated child processes via realloc()

Use CVE-2016-10011.


> sshd(8): The shared memory manager used by pre-authentication
> compression support had a bounds checks that could be elided by
> some optimising compilers
> ...
> potentially allow attacks against the
> privileged monitor process from the sandboxed privilege-separation
> process

Use CVE-2016-10012.


>  * sshd(8): Validate address ranges for AllowUser and DenyUsers
>    directives at configuration load time and refuse to accept invalid
>    ones. It was previously possible to specify invalid CIDR address
>    ranges (e.g. user@127.1.2.3/55) and these would always match,
>    possibly resulting in granting access where it was not intended.

This currently has no CVE ID. We do not know of common scenarios where
an untrusted party is able to specify an invalid CIDR block, but is
unable to specify a valid CIDR block that includes any desired IP
address. A relevant scenario might exist if privileged third-party
software relies, in part, on user input to construct an sshd
configuration file. Even if there were such a scenario, it would
probably be the responsibility of third-party software to validate the
meaning of the CIDR block, and not (for example) accept any string
starting with "10." and ending with "/n" where n is greater than 26.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYWAhyAAoJEHb/MwWLVhi2iicP/iUDlPu9wQq9QSAu4UTMZv+g
2m8qA2vyUQKvavzuWFaDADfRpKTMW70IOo3jt3WhOmmt56dp06eF8lLtRzucwkMb
sDFQZQ1PJtbYZjNjgxVBjaZ/4DJOhs0J4QHXumIc617mgGqm1QrCTc0kU3qRBpJ7
k/mDov8fQYBhHE0w0FUvn3ofC1ywoI12rThzbX+AfmlRcSXQ9h6N6608bF1mi3yJ
Opcgn72HtLJhWB/ABzCmjEFzskJEWiMSEBGQFD5Ct63r2g9mUe0Q9NuTtzQHdngw
HdThZ9tfDQ69O33K0R0vG7YQv2KUGTox3nBBjg+Wi4xkEqY0lk0xy1sGUEPyOYcQ
JtGbyHoc3aQqDC63KvFQuXRV2jMsKefQSTZclK3GZ3DwDzCq5+q16htNvQ71sU1V
TiqQarip0qvmk+VDiI54lWaS5bgLHBPHbKfHlTOElOrjKbYrNmTniNA8nHLR+cSf
mniHUcmZEY1fyP3SllLfE/dYhYY/3nc73d43ds23pUWixRHZN+H73iboep/6cHfg
BZQ+eZzoxfxv6Bo6nN/o74zc4zvU42pkDwAlOPQzoWpmQO8982Z4BV8INTXpTwSM
lsZ60sHyk/wYIjN9+3vK7dzjpLPf7ZV+ifeVnqxtgE2Pol5c3rnVipDAWwy9ZVZX
3nNNmJLRnyazekpyflpT
=kEDT
-----END PGP SIGNATURE-----
