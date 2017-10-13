X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4757" "Friday" "13" "October" "2017" "18:44:21" "+0200" "X41 D-Sec GmbH Advisories" "advisories@x41-dsec.de" "<0b737631-4f6a-7fdf-f709-4957a8cd5ef2@x41-dsec.de>" "132" "[oss-security] Advisory X41-2017-010: Command Execution in Shadowsocks-libev" "^Date:" nil nil "10" "2017101316:44:21" "[oss-security] Advisory X41-2017-010: Command Execution in Shadowsocks-libev" (number mark "U       advisories@x Oct 13  132/4757  " thread-indent "\"[oss-security] Advisory X41-2017-010: Command Execution in Shadowsocks-libev\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26315 invoked by uid 550); 13 Oct 2017 16:52:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19815 invoked from network); 13 Oct 2017 16:45:35 -0000
Message-ID: <0b737631-4f6a-7fdf-f709-4957a8cd5ef2@x41-dsec.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="fs8xDvev671DtJitwoscABLG2MApQMPFq"
Date: Fri, 13 Oct 2017 18:44:21 +0200
From: X41 D-Sec GmbH Advisories <advisories@x41-dsec.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Advisory X41-2017-010: Command Execution in Shadowsocks-libev
To: oss-security@lists.openwall.com

--fs8xDvev671DtJitwoscABLG2MApQMPFq
Content-Type: multipart/mixed; boundary="TnKnbtG0ckCkqpCC12mdPR4jLXw65860R";
 protected-headers="v1"
From: X41 D-Sec GmbH Advisories <advisories@x41-dsec.de>
To: oss-security@lists.openwall.com
Message-ID: <0b737631-4f6a-7fdf-f709-4957a8cd5ef2@x41-dsec.de>
Subject: Advisory X41-2017-010: Command Execution in Shadowsocks-libev

--TnKnbtG0ckCkqpCC12mdPR4jLXw65860R
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable


X41 D-Sec GmbH Security Advisory: X41-2017-010

Command Execution in Shadowsocks-libev
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Overview
--------
Severity Rating: High
Confirmed Affected Versions: 3.1.0
Confirmed Patched Versions: N/A
Vendor: Shadowsocks
Vendor URL: https://github.com/shadowsocks/shadowsocks-libev
Vector: Local
Credit: X41 D-Sec GmbH, Niklas Abel
Status: Public
CVE: not yet assigned
Advisory-URL:
https://www.x41-dsec.de/lab/advisories/x41-2017-010-shadowsocks-libev/


Summary and Impact
------------------
Shadowsocks-libev offers local command execution per configuration file
or/and additionally, code execution per UDP request on 127.0.0.1.

The configuration file on the file system or the JSON configuration
received via UDP request is parsed and the arguments are passed to the
"add_server" function.
The function calls "construct_command_line(manager, server);" which
returns a string from the parsed configuration.
The string gets executed at line 486 "if (system(cmd) =3D=3D -1) {", so if a
configuration parameter contains "||evil command&&" within the "method"
parameter, the evil command will get executed.

The ss-manager uses UDP port 8830 to get control commands on 127.0.0.1.
By default no authentication is required, although a password can be set
with the '-k' parameter.


Product Description
-------------------
Shadowsocks-libev is a lightweight secured SOCKS5 proxy for embedded
devices and low-end boxes. The ss-manager is meant to control
Shadowsocks servers for multiple users, it spawns new servers if needed.

It is a port of Shadowsocks created by @clowwindy, and maintained by
@madeye and @linusyang.


Proof of Concept
----------------
As passed configuration requests are getting executed, the following command
will create file "evil" in /tmp/ on the server:

nc -u 127.0.0.1 8839
    add: {"server_port":8003, "password":"test", "method":"||touch
/tmp/evil||"}

The code is executed through shadowsocks-libev/src/manager.c.
If the configuration file on the file system is manipulated, the code
would get executed as soon as a Shadowsocks instance is started from
ss-manage, as long as the malicious part of the configuration has not
been overwritten.


Workarounds
-----------
There is no workaround available, do not use ss-manage until a patch is
released.


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
2017-10-13	Created public issue on GitHub
2017-10-13	Advisory release


--TnKnbtG0ckCkqpCC12mdPR4jLXw65860R--

--fs8xDvev671DtJitwoscABLG2MApQMPFq
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJLBAEBCAA1FiEEpwxVTgxAIcUvTugIo5Klpg50CxAFAlng7WUXHGFkdmlzb3Jp
ZXNAeDQxLWRzZWMuZGUACgkQo5Klpg50CxCP4A//RchaYWx4YmpyPxiepPEu045M
rrVB44Ys8d8hHcarJvRIutAiLyMFs6HntmCZ+m4BY2QmAdyt37Unfo3CdBZmh6Yj
B3sEXmd9zP6o2L//Byq7zaUxYV2hHM9eHL3bpTknp890mUAMuBBhA6Jiohx5Dmqo
C2nznZ6XqPleF0gU8GP/53y/nb5W/y95K37/bHQVPtcnNHkuTSl8wq2syYZ6wSWj
r6EenO/zjq/DIGBNwITtPT6GqVqm+jON8Ty/ZDBmjerelNTKvNPXIGs6878SHXlZ
cKmDVS0hBipVkaIONfUBjuh8cgdl1d7fouUFT3k84ciFynMfqiuCnbsvmRdqo1zC
O2ElexrhKTiweJjIC0WeBJDHlgecbXaTdEcIqfPEq7BKkiwrQusU+h+RWE7hG+t3
kTSsvleY5LS45v043h5aMmZEinq95s9VGwF4pLvbmaHdCzhUSFFVxrY04EK0wlib
r86qdLK5u6B7OSYpmVhnVvnekQDGETvuValZenU1DfzQHjZiaZ67MbpK+6hp2liw
Tm2q1QjfD7hzqL5zeBcr8Ut/Xy8yewx84bG2P8MwOK31iYM8dxIU1KDGsB2DM/p3
cNwh//iDDzUkesIL430sw5SFtzgvJ9lmjuJIACgvKmdVpu5DS+YM3HFZq4y/K1ui
Rxu1exfQ0tEyGtFYFgk=
=pOC0
-----END PGP SIGNATURE-----

--fs8xDvev671DtJitwoscABLG2MApQMPFq--
