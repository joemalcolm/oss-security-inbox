X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["13328" "Wednesday" "8" "September" "2021" "14:37:17" "-0400" "Ben" "ben@breakpointingbad.com" nil "270" "[oss-security] CVE-2021-3773: Lack of port sanity checking in natd and Netfilter leads to exploit of OpenVPN clients on Linux and FreeBSD platforms" nil nil nil "9" nil nil (number mark "U       ben@breakpoi Sep  8  270/13328 " thread-indent "\"[oss-security] CVE-2021-3773: Lack of port sanity checking in natd and Netfilter leads to exploit of OpenVPN clients on Linux and FreeBSD platforms\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-3773: Lack of port sanity checking in natd and Netfilter leads to exploit of OpenVPN clients on Linux and FreeBSD platforms" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17690 invoked by uid 550); 8 Sep 2021 18:58:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9575 invoked from network); 8 Sep 2021 18:37:32 -0000
Authentication-Results: mail.breakpointingbad.com (amavisd-new);
	dkim=pass (1024-bit key) reason="pass (just generated, assumed good)"
	header.d=breakpointingbad.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
	breakpointingbad.com; h=content-language:content-type
	:content-type:mime-version:user-agent:date:date:message-id
	:subject:subject:from:from:to; s=dkim; t=1631126239; x=
	1633718240; bh=mEa4q/e29NN0FPqabmKHazQ+NaS01HIbjBo6d5r6bOc=; b=G
	laV+K2PH8BL2UVd+xeUzcZPo12YZQTD/XLkaQOPwDdm0uGiSOc9Z0KgBb0TxcxLC
	s52Wtg0c7DShIXIsLWdOAdGJ2QppDI+nBwv14hc7Dka8XCrTYoRS3qhpQ40fZYzc
	ZCnsnbUpTse43W1X339OFXBZ1HESNJTC/feX+s0MTI=
X-Virus-Scanned: Debian amavisd-new at mail.breakpointingbad.com
To: oss-security@lists.openwall.com
From: Ben <ben@breakpointingbad.com>
Message-ID: <5b3fd8c2-bfc7-dd7d-59dc-26403c523613@breakpointingbad.com>
Date: Wed, 8 Sep 2021 14:37:17 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------------4F0292CE287B71122105CD78"
Content-Language: en-US
Subject: [oss-security] CVE-2021-3773: Lack of port sanity checking in natd and
 Netfilter leads to exploit of OpenVPN clients on Linux and FreeBSD platforms

--------------4F0292CE287B71122105CD78
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,

I am disclosing would I would be describe as a privilege escalation in
OpenVPN use of Netfilter for NAT on Linux as well as FreeBSD 13,
OpenVPN, and natd. A detailed technical report can be found at:

https://breakpointingbad.com/2021/09/08/Port-Shadows-via-Network-Alchemy.ht=
ml

The following text is a part of the post that covers the critical
components of the attacks.


OpenVPN's use of Netfilter makes it susceptible to several attacks that
can cause denial-of-service, deanonymization of clients, or redirection
of a victim client connection to an attacker controlled server.=C2=A0
Netfilter is a module within the Linux kernel that implements stateless
and stateful firewall mechanisms and network address translation (NAT).
Netfilter's design includes hooks that are called at various points in
the networking code to execute, e.g., user-defined firewall rules and
NAT code.=C2=A0 The NAT portion of Netfilter is designed in such a way that
if a machine behind the NAT uses the same source port as an application
listening on the same port as the NAT (i.e., the NAT is acting both as a
NAT-router and a server), then Netfilter translates and routes received
packets intended for the NAT's own listening port to a host behind the
NAT using the same port. This shadowing behavior is not specified in any
relevant request for comments (rfc768, rfc793, rfc4787, rfc5382,
rfc7857, or any of their successors). The remainder of this disclosure
uses the term "port shadow(ing)" when discussing this attack primitive.

Port shadowing's root cause originates from Netfilter's lack of
coordination with the Linux socket infrastructure to determine whether a
port in a listening state (or any particular state) on the NAT creates
ambiguity with a machine using the same port behind the NAT.=C2=A0 Port
shadowing has interesting implications for applications, such as
OpenVPN, that rely on Netfilter for NAT. A malicious OpenVPN client can
use port shadowing to deanonymize victim machines connected to the same
OpenVPN server or escalate privileges from an OpenVPN client to a
man-in-the-middle (c2mitm) between another client (the victim) and the
OpenVPN server to which both the attacker and victim are connected.=C2=A0 T=
he
c2mitm variation of the attack can be combined with a recently
disclosed, server-side attack against OpenVPN to inject DNS responses,
reset, or even hijack TCP connections of the victim, even when that
connection is tunneled through the OpenVPN server.

Version information is at the bottom of this note.=C2=A0 While we have not
yet tested other versions of OpenVPN, any version of Wireguard or
strongSwan, or any other VPN server implementations, we believe our
attack applies to any version of any VPN that relies on Linux's
Netfilter for NAT.=C2=A0 We=C2=A0 have=C2=A0=C2=A0 successfully tested the =
full=C2=A0 FreeBSD-13
with natd and OpenVPN. Additionally, we have tested against FreeBSD-13
with IPFW, PF, and IPF and found that, while they are not succesptable
to c2mitm, the port shadow still applies. There is no specific
implementation bug with Netfilter, nor presumably FreeBSD's NAT
implementations, that makes port shadowing possible, it is simply an
implementation artifact that is apropos of following the RFCs that
relate to NAT.

We identified an exploit primitive, port shadowing, that an attacker can
use to either deanonymize a client connected to an OpenVPN server or
perform a privilege escalation from client to man-in-the-middle. The
attacks are related to each other and differ mainly in the context of
their use of the exploit primitive as well as whether a client connects
to the OpenVPN server before or after the attacker.

The attacker builds the exploit primitive in two steps. The process is
the same for both attacks.

1. Connect to the OpenVPN server.
2. Send packets to a victim=E2=80=99s candidate, public IP address using the
OpenVPN server=E2=80=99s listening port as the source port to all destinati=
on
ports in the IANA ephemeral port range.

After step (2.) the OpenVPN server=E2=80=99s nf_conntrack_hash || contains =
16383
entries. Each entry is capable of routing packets matching the tuples in
nf_conntrack_hash|| back to the attacker=E2=80=99s OpenVPN tunnel interface=
. We
describe in the /Attack Methodology/ section how an attacker uses this
to deanonymize the victim or become a man-in-the-middle between the
victim and the OpenVPN server.

Deanonymization Attack

Assumptions

The deanonymization attack makes the following assumption:

1. The Victim (V) connects to the OpenVPN server (S) before the Attacker
(A) carries out any attempt to see if they are connected. This is
somewhat obvious, but we specify it as an assumption to make the exact
nature of the attack clear. In this example, we assume the VPN uses UDP,
however, these attacks are also possible using TCP.

Execution

1. The attacker connects to the OpenVPN server

2. The attacker sends UDP packets from herself to a candidate IP address
of the victim. Each packet has the source port equal to whatever the
OpenVPN server=E2=80=99s listening port is (assume 1194), a unique destinat=
ion
port in the IANA ephemeral port range, and is TTL limited such that the
UDP packets do not reach the candidate IP.

The attacker must cycle through the victim=E2=80=99s ephemeral port space o=
nly
once. This requires 16383 packets per candidate victim IP (assuming the
operating system uses the IANA dynamic port range, some operating
systems the victim may be using have a larger range). The attacker can
check candidate victim IPs in parallel and send at any reasonable speed,
and note also that the attacker does not need to check every one of the
roughly 4 billion possible IPv4 addresses if they have a profile of the
victim, such as what city they connect to the VPN from. We spoof
responses in subsequent steps, which imposes a 180 second timeout (for
the conntrack entry to be garbage collected) before we can check again
if this particular candidate victim IP has connected.

3. From a seperate machine, the attacker spoofs UDP responses for each
of the UDP packets sent in (2.) from the candidate IP to the OpenVPN server.
4. The attacker=E2=80=99s machine connected to the OpenVPN server collects =
the
responses sent in (3.) routed back to her by the OpenVPN server.

If the attacker receives responses for every ephemeral port sent out in
step (2.), then she knows the candidate IP is not connected to the same
OpenVPN server as her. If the attacker observes *one* missing ephemeral
port response, then she knows the candidate IP is the victim and is
connected to the same OpenVPN server as her (she can repeat missing
probes as needed to account for packet loss). This is because if the
victim is connected to the same OpenVPN server as her, then the OpenVPN
server=E2=80=99s Conntrack table will have an nf_conn || entry with the Ope=
nVPN
server=E2=80=99s IP and OpenVPN port (1194) and the victim=E2=80=99s public=
 IP address
and ephemeral port. This entry makes it impossible for packets sent from
Attacker:1194 to Victim:Vport to be differentiated from the original
tuple. Conntrack/NAT must select a new destination port for the packet
sent in step (2.) to maintain transparency and operational requirements
specified in the RFCs.


c2mitm

Assumptions

The c2mitm attack makes the following assumptions:

1. The attacker (A) knows the candidate, public IP address for a
potential Victim (V).
2. V does not connect to the OpenVPN server (S) until after (A) builds
the exploit primitive.

Assumption (1.) is viable in two situations. The first is if A has
performed the deanonymization attack in the past, and enumerated one or
more victims that includes V. The second is if V is at the same coffee
shop or hotel as A. The hotel or coffee shop is likely running its own
NAT to share internet resources with all the customers using the
network. A can easily discover the public IP address of the
establishment. We imagine (2.) holding because, as stated above, A can
hodl nf_conn||||entries in the OpenVPN server=E2=80=99s table indefinitely.

Execution

The c2mitm attack is executed in three stages:

1. A connects to S
2. A sends UDP packets to a victim=E2=80=99s public IP address with S=E2=80=
=99s OpenVPN
server listening port as A=E2=80=99s source port, creating a Conntrack entry
that S uses for routing packets back to A with. A sends a packet for
each ephemeral port of V.

The c2mitm attack requires that the attacker constant cycle through the
ephemeral space to keep entries fresh until the victim attempts to
connect to the VPN server. The conntrack entries may expire, so the
attacker can either spoof replies to the VPN server with matching UDP
parameters or refresh at a faster rate. Spoofing will place the entries
in the ASSURED state where they cannot be evicted before 180 seconds,
but adds the requirement that the attacker has the ability to spoof
packets on the Internet and doubles the number of packets per port for
the initial cycle. Since spoofing is already a requirement for the
c2mitm attack it makes sense to do so, and somewhat reduces the
necessary rate (about 182 packets per second, assuming the IANA dynamic
port range). The attacker may also keep entries alive by cycling through
the ephemeral port space every 30 seconds with a packet for each port
(546 packets/second) and not spoof in this step, if they so desire. If
the victim=E2=80=99s OS complies with rfc6056, section 3.2
<https://datatracker.ietf.org/doc/html/rfc6056#section-3.2>, then this
is the worst case and the packet rate to keep conntrack entries fresh
for all possible victim ephemeral ports is only about 717 packets per
second. Remember that these are empty packets, half of which are
encrypted and they are split across tens of thousands of flows.

3. V sends an OpenVPN connection request to S.

As we have shown, both the deanonymization and c2mitm attacks are
possible because of implementation details in Conntrack=E2=80=99s NATing
functionality. The difference in attacks is dependent on the order in
which a victim connects to the same OpenVPN server as the attacker. Each
case is harmful in its own right. The deanonymization attack is harmful
because an often cited use case for VPN software is anonymity. The
c2mitm attack places the attacker in-path for the victim=E2=80=99s connecti=
on to
the VPN server, which could lead to DNS or TCP hijacking, traffic
analysis, and other attacks that normally would be outside the reach of
an off-path attacker who is just another VPN client.

Not only is the victim deanonymized, but the attacker is also positioned
in the network in-path. From this position, the attacker can leverage a
recently disclosed attack (Tolley2021
<https://breakpointingbad.com/papers/Blind-in-path-attacks-VPN-USENIX21.pdf>
) against OpenVPN servers. This attack assumes an in-path attacker. The
attacker spoofs packet to the OpenVPN server from some other globally
routable IP address such as a website or DNS server. The in-path
attacker can use the DNS redirect primitive to send the victim to an
attacker controlled server. If the server the victim was attempting to
access is plaintext HTTP or the attacker has a compromised SSL/TLS
certificate, the attacker has carte blanche over the victim.

Potential Mitigations

There are two obvious ways to mitigate these issues, to some extent:

1. The server could add firewall rules to prevent the port the VPN
service is listening on from being used as a source port by clients.
2. The NAT functionality could be changed (e.g., as the VPN server is
sending decrypted packets over the virtual interface, or by changing the
conntrack module of Netfilter upstream) so that any port not designated
as =E2=80=9CDynamic and/or Private=E2=80=9D by IANA is translated into such=
 a port.

Either of these changes would prevent the specific attacks presented
above. However, one can envision other attacks that do not involve
specific ports, such as attacks on BitTorrent users.

A comprehensive fix to this vulnerability would entail somehow modifying
the notions of garbage collection, connection direction, connection
status, and simultaneous open in NAT implementations to be more
consistent with the security and privacy requirements of VPNs.

CPE Information

The following CPE information is the software setup for our tests.

1. part=3D=E2=80=9Da=E2=80=9D, vendor=3D=E2=80=9DNetfilter=E2=80=9D, produc=
t=3D=E2=80=9DNetfilter=E2=80=9D
2. part=3D=E2=80=9Do=E2=80=9D, vendor=3D=E2=80=9DLinux=E2=80=9D, product=3D=
=E2=80=9DLinux=E2=80=9D, version=3D=E2=80=9D4.15.0-142=E2=80=9D
3. part=3D=E2=80=9Da=E2=80=9D, vendor=3D=E2=80=9DOpenVPN=E2=80=9D, product=
=3D=E2=80=9DOpenVPN Server=E2=80=9D, version=3D=E2=80=9D2.4.4=E2=80=9D,
4. part=3D=E2=80=9Do=E2=80=9D, vendor=3D=E2=80=9DFreeBSD=E2=80=9D, product=
=3D=E2=80=9DFreeBSD-13=E2=80=9D
5. part=3D=E2=80=9Da=E2=80=9D, vendor=3D=E2=80=9DFreeBSD=E2=80=9D, product=
=3D=E2=80=9Dnatd"

Acknowledgements

We would like to thank our colleagues, William J. Tolley and Beau
Kujath, for their input and feedback during the analysis and attack
execution phases of this work.

--------------4F0292CE287B71122105CD78--
