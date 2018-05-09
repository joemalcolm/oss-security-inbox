X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2533" "Wednesday" "9" "May" "2018" "11:48:40" "+0200" "Kashyap Thimmaraju" "kashyap.thimmaraju@sect.tu-berlin.de" "<df84809c-8192-2855-c0ea-2b609d176aa8@sect.tu-berlin.de>" "59" "[oss-security] CVE-2018-1000155: Denial of Service, Improper Authentication and Authorization, and Covert Channel in the OpenFlow 1.0+ handshake" nil nil nil "5" "2018050909:48:40" "[oss-security] CVE-2018-1000155: Denial of Service, Improper Authentication and Authorization, and Covert Channel in the OpenFlow 1.0+ handshake" (number mark "U       kashyap.thim May  9   59/2533  " thread-indent "\"[oss-security] CVE-2018-1000155: Denial of Service, Improper Authentication and Authorization, and Covert Channel in the OpenFlow 1.0+ handshake\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32716 invoked by uid 550); 9 May 2018 10:26:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21897 invoked from network); 9 May 2018 09:48:53 -0000
To: oss-security@lists.openwall.com
Cc: Stefan Schmid <schmiste@gmail.com>, Liron Schiff
 <schiff.liron@gmail.com>, Brian O'Connor <bocon@opennetworking.org>
From: Kashyap Thimmaraju <kashyap.thimmaraju@sect.tu-berlin.de>
Message-ID: <df84809c-8192-2855-c0ea-2b609d176aa8@sect.tu-berlin.de>
Date: Wed, 9 May 2018 11:48:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
Subject: [oss-security] CVE-2018-1000155: Denial of Service, Improper Authentication and
 Authorization, and Covert Channel in the OpenFlow 1.0+ handshake

Hello Everybody,

We have identified issues with a popular Software-Defined Networking
protocol, OpenFlow. Below are the details of the vulnerabilities.
OpenFlow controller implementations should strongly consider addressing
these issues, and OpenFlow adopters should be aware of such security risks.

CVE-2018-1000155: Denial of Service, Improper Authentication and
Authorization, and Covert Channel in the OpenFlow handshake

Severity: Important

Vendor: Open Networking Foundation (ONF), OpenFlow controllers

Versions Affected: OpenFlow specification 1.0 onwards

Description:
The OpenFlow handshake does not require the controller to authenticate
switches during the OpenFlow handshake. Furthermore, the controller is
not required to authorize switches access to the controller. The absence
of authentication and authorization in the OpenFlow handshake allows one
or more malicious switches connected to an OpenFlow controller to cause
Denial of Service attacks in certain OpenFlow controllers by spoofing
OpenFlow switch identifiers known as DataPath Identifiers (DPIDs).
Additionally, the lack of authentication and authorization in the
OpenFlow handshake can be exploited by malicious switches for covert
communications, bypassing data plane (and potentially control plane)
security mechanisms. In particular, the OpenFlow "Features Reply"
message sent by the switch is inherently trusted by the controller. Note
that for the attacker to launch an attack, the OpenFlow switch must
first establish a (secure) transport connection with the OpenFlow
controller (e.g., TLS and TCP), and the switch must be controlled by the
attacker.

Mitigation:
The attack can be deterred if OpenFlow connections are secured via the
following hardened authentication scheme: Unique TLS certificates for
switches, white-list of switch DPIDs at controllers which also includes
the switches=E2=80=99 respective public-key certificate identifier, and las=
tly a
controller mechanism that verifies the DPID announced in the OpenFlow
handshake is over the TLS connection with the associated (DPID) certificate.

Credit:
Kashyap Thimmaraju (Technische Universit=C3=A4t Berlin), Robert Kr=C3=B6sche
(Technische Universit=C3=A4t Berlin), Liron Schiff (GuardiCore Labs) and
Stefan Schmid (University of Vienna)

--=20
Thanks,

Kashyap Thimmaraju <kashyap.thimmaraju@sect.tu-berlin.de>
Security in Telecommunications <sect.tu-berlin.de>
Technische Universit=C3=A4t Berlin
Ernst-Reuter-Platz 7, Sekr TEL 17
10587 Berlin, Germany
Phone: +49 30 8353 58351


