X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8228" "Friday" "13" "October" "2017" "18:41:34" "+0200" "X41 D-Sec GmbH Advisories" "advisories@x41-dsec.de" "<b07ab35f-c872-253b-86fb-0ce0fd074336@x41-dsec.de>" "238" "[oss-security] Advisory X41-2017-008: Multiple Vulnerabilities in Shadowsocks" "^Date:" nil nil "10" "2017101316:41:34" "[oss-security] Advisory X41-2017-008: Multiple Vulnerabilities in Shadowsocks" (number mark "U       advisories@x Oct 13  238/8228  " thread-indent "\"[oss-security] Advisory X41-2017-008: Multiple Vulnerabilities in Shadowsocks\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29802 invoked by uid 550); 13 Oct 2017 17:07:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15752 invoked from network); 13 Oct 2017 16:42:56 -0000
Message-ID: <b07ab35f-c872-253b-86fb-0ce0fd074336@x41-dsec.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="Kt6LiaAbb1L36CjRCh77TLHgCa4k6JARC"
Date: Fri, 13 Oct 2017 18:41:34 +0200
From: X41 D-Sec GmbH Advisories <advisories@x41-dsec.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Advisory X41-2017-008: Multiple Vulnerabilities in Shadowsocks
To: oss-security@lists.openwall.com

--Kt6LiaAbb1L36CjRCh77TLHgCa4k6JARC
Content-Type: multipart/mixed; boundary="X58v8lHX4frSmvVvLwgW1mpBM8pXQ6hxP";
 protected-headers="v1"
From: X41 D-Sec GmbH Advisories <advisories@x41-dsec.de>
To: oss-security@lists.openwall.com
Message-ID: <b07ab35f-c872-253b-86fb-0ce0fd074336@x41-dsec.de>
Subject: Advisory X41-2017-008: Multiple Vulnerabilities in Shadowsocks

--X58v8lHX4frSmvVvLwgW1mpBM8pXQ6hxP
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable


X41 D-Sec GmbH Security Advisory: X41-2017-008

Multiple Vulnerabilities in Shadowsocks
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Overview
--------
Confirmed Affected Versions: Latest commit 2ab8c6b on Sep 6
Confirmed Patched Versions: N/A
Vendor: Shadowsocks
Vendor URL: https://github.com/shadowsocks/shadowsocks/tree/master
Vector: Network
Credit: X41 D-Sec GmbH, Niklas Abel
Status: Public
Advisory-URL:
https://www.x41-dsec.de/lab/advisories/x41-2017-008-shadowsocks/


Summary and Impact
------------------
Several issues have been identified, which allow attackers to manipulate
log files, execute commands and to brute force Shadowsocks with enabled
autoban.py brute force detection. Brute force detection from autoban.py
does not work with suggested tail command. The key of captured
Shadowsocks traffic can be brute forced.


Product Description
-------------------
Shadowsocks is a fast tunnel proxy that helps you bypass firewalls.



Log file manipulation
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Severity Rating: Medium
Confirmed Affected Versions: Latest commit 2ab8c6b on Sep 6
Confirmed Patched Versions: N/A
Vector: Network
CVE: not yet issued
CWE: 117
CVSS Score: 4.3
CVSS Vector: CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:L/A:N

Summary and Impact
------------------
Log file manipulation is possible with a manipulated hostname, sent to
the server from a client, even if Shadowsocks is as quiet as possible
with "-qq".

Therefore a string like "\nI could be any log entry\n" could be sent as
hostname to Shadowsocks. The server would log an additional line with
"I could be any log entry".


Workarounds
-----------
There is no workaround available, do not trust the logfiles until a
patch is released.



Command Execution
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Severity Rating: Critical
Confirmed Affected Versions: Latest commit 2ab8c6b on Sep 6
Confirmed Patched Versions: N/A
Vector: Network
CVE: not yet issued
CWE: 78
CVSS Score: 9.0
CVSS Vector: CVSS:3.0/AV:N/AC:H/PR:N/UI:N/S:C/C:H/I:H/A:H


Summary and Impact
------------------
When the brute force detection with autoban.py is enabled, remote
attackers are able to execute arbitrary commands.

Command execution is possible because of because of line 53 "os.system(cmd)"
in autoban.py, which executes "cmd =3D 'iptables -A INPUT -s %s -j DROP' %
ip". The "ip" parameter gets parsed from the log file, whose contents
can be controlled by a third party sending unauthenticated packets.


Proof of Concept
----------------
When, a string like "can not parse header when ||ls&:\n" is sent as host
name to Shadowsocks, it would end up in the logfile and lead to the
execution of "ls".
Autoban.py does not execute commands with spaces due to internal
sanitization. A requested hostname like:

" can not parse header when ||ls&:\ntouch /etc/evil.txt\nexit\ncan not
parse header when ||/bin/bash</var/log/shadowsocks.log&:\n" could be
used to work around this limitation. It writes the command "touch
/etc/evil.txt" into the logfile and executes it with
"/bin/bash</var/log/shadowsocks.log".
The exit; command is an important factor, without it an unbounded
recursion would occur leading to a DoS.


Workarounds
-----------
No workaround available, do not use autoban.py.



Lack of Bruteforce detection through autoban.py
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Confirmed Affected Versions: Latest commit 2ab8c6b on Sep 6
Confirmed Patched Versions: N/A


Summary and Impact
------------------
The brute force detection autoban.py does not work at all with the suggested
tail command, suggested at
https://github.com/shadowsocks/shadowsocks/wiki/Ban-Brute-Force-Crackers.

The command "python autoban.py < /var/log/shadowsocks.log" does work,
but the suggested "nohup tail -F /var/log/shadowsocks.log | python
autoban.py > log 2>log &" does not block IP's.
The "for line in sys.stdin:" from autoban.py parses the input until
there is an end of file (EOF). As "tail -F" will never pipe an EOF into
the pyhon script, the sys.stdin will block the script forever. So the
"tail -F /var/log/shodowsocks | autoban.py" will never block anything
except itself.

Workarounds
-----------
Use python "autoban.py < /var/log/shadowsocks.log" in a cronjob. Do not
use autoban.py until the command execution issue gets fixed.



Bruteforcable Shadowsocks traffic because of MD5
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Confirmed Affected Versions: Latest commit 2ab8c6b on Sep 6
Confirmed Patched Versions: N/A

Summary and Impact
------------------
Shadowsocks uses no brute force prevention for it's key derivation function.

The key for Shadowsocks traffic encryption is static and derived from
the password, using MD5. The password derivation is in encrypt.py in
line 56 to 63: "

while len(b''.join(m)) < (key_len + iv_len):
        md5 =3D hashlib.md5()
        data =3D password
        if i > 0:
            data =3D m[i - 1] + password
        md5.update(data)
        m.append(md5.digest())
        i +=3D 1
"

MD5 should not be used to generate keys, since it is a hash function.
A proper key derivation function increases the costs for this operation,
which is a small burden for a user, but a big one for an attacker,
which performs this operation many more times. As passwords usually have
low-entropy, a good password derivation function has to be slow.


Workarounds
-----------
Use a secure password generated by a cryptographically secure random
generator. Wait for a patch that uses a password based key derivation
function like "Argon2" instead of a hash.



About X41 D-Sec GmbH
--------------------
X41 D-Sec is a provider of application security services. We focus on
application code reviews, design review and security testing. X41 D-Sec
GmbH was founded in 2015 by Markus Vervier. We support customers in
various industries such as finance, software development and public
institutions.


Timeline
--------
2017-09-28	Issues found
2017-10-05	Vendor contacted
2017-10-09	Vendor contacted, replied to use GitHub for a full disclosure
2017-10-11	Vendor contacted, asked if the vendor is sure to want a full
disclosure
2017-10-12	Vendor contacted, replied to create a public issue on GitHub
2017-10-13	Created public issues on GitHub
2017-10-13	Advisory release


--X58v8lHX4frSmvVvLwgW1mpBM8pXQ6hxP--

--Kt6LiaAbb1L36CjRCh77TLHgCa4k6JARC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJLBAEBCAA1FiEEpwxVTgxAIcUvTugIo5Klpg50CxAFAlng7L4XHGFkdmlzb3Jp
ZXNAeDQxLWRzZWMuZGUACgkQo5Klpg50CxDLXw//RFEVjJt5/Xx4ej0FevMYuv68
5pkZHTkoP8gOIv1hRrEveAkwpmlj3fy1/2ozNwTktdk5dPPobqAM6xtmpKT78ajD
rYOpuL7TwW5m0j5TSapRqJvS4HPp8L0k7pvFHFgEhAol0zDucshxBSJoLQSFBi0L
Ni2TsZIdhcv5evmSDuh8xgfkvFkuTn+YzK3SOpQYKry1Qqb6VsV9lU787eqQQXwB
2yrjPyJ2rES8W+28DULr9HG81XX2/saCpCyPmkLAzZG42L6wN4mPoyk/cQrOQHeJ
rIfMGhbZ5PjWI3RpZ1PpDaRle2qPXuKpkKBSKzQPhMlg6yc7BskU5zaWdCnsMXur
xjTSVVKkayvfdSehMb6jVQGHq6hBCvneqQJHSSy33etbSnL+BUpv455Wel7516t2
Z2HWuM6pGBfE2o/ma+kAT6azPCli1PUwGdYpMR8R97S0OjN6R2OWcxPmXunvvMnJ
FM+PAz23t3+DTUX+sbg8XseBuDY5Z8e21/H3hWwNcWkmpur+ABvlsJWJNdwFblgJ
nFDoltyZIujfXjWMeJPNaK3J0bz+fII2Bu8fHyDKdEBEzFwN+7YVodiPLoXDGCMJ
RlxeGOSUBwiOG74hs++6vwF42tYlWG1FtIkoiBvFBcZnfgPdyUubnW/uwcZb2sF/
4jz4feJ2S1NLUMsh0pA=
=U+fV
-----END PGP SIGNATURE-----

--Kt6LiaAbb1L36CjRCh77TLHgCa4k6JARC--
