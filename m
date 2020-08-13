X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8264" "Thursday" "13" "August" "2020" "08:06:50" "-0700" "vpn-research@breakpointingbad.com" "vpn-research@breakpointingbad.com" nil "172" nil "^Date:" nil nil "8" nil nil (number mark "        vpn-research Aug 13  172/8264  " thread-indent "\"[oss-security] Blind in/on-path attacks against VPN-tunneled connections (CVE-2019-14899 follow-up)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Blind in/on-path attacks against VPN-tunneled connections (CVE-2019-14899 follow-up)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17749 invoked by uid 550); 13 Aug 2020 15:08:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17498 invoked from network); 13 Aug 2020 15:07:05 -0000
Authentication-Results: mail.breakpointingbad.com (amavisd-new);
	dkim=pass (1024-bit key) reason="pass (just generated, assumed good)"
	header.d=breakpointingbad.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
	breakpointingbad.com; h=content-transfer-encoding:message-id
	:user-agent:subject:subject:to:from:from:date:date:content-type
	:content-type:mime-version; s=dkim; t=1597331212; x=1599923213;
	 bh=HemU2RYLbeZMuIruKelqYMwSpgt0Kqvg3/qeOo2lueY=; b=mR+gTS/utrYg
	6EmfImnFNLZ8ubmo/Wv3CBjqVdu0bfQN2B18aiqoECD1zDCR2Y17xjzGFG7DjlAM
	ND1SV+4ALJr0E8IN17JR7uLl4EWnCT1QP/kA+AY3tiXkRh78ea/QGXzwk8YwPRZP
	mpxAQUkGojvs2XF8rwPa7+zYHjEa+8c=
X-Virus-Scanned: Debian amavisd-new at mail.breakpointingbad.com
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
 format=flowed
User-Agent: Roundcube Webmail
Message-ID: <e26ab73a0e3ccf3b44d971b857986f18@breakpointingbad.com>
X-Sender: vpn-research@breakpointingbad.com
Content-Transfer-Encoding: quoted-printable
Date: Thu, 13 Aug 2020 08:06:50 -0700
From: vpn-research@breakpointingbad.com
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Blind in/on-path attacks against VPN-tunneled connections
 (CVE-2019-14899 follow-up)
To: oss-security@lists.openwall.com

Hi all,

This is reporting a vulnerability that allows an in/on-path attacker=20
between a VPN client and VPN server to infer and inject arbitrary data=20
into VPN-tunneled connections. This vulnerability is related to=20
CVE-2019-14899, but has a few key differences.

- The attacker does not need to be the gateway or network adjacent, as=20
described in CVE-2019-14899.

- The packets are not being spoofed "outside" of the tunnel. In the
previous attack, the packets were sent to the wireless/ethernet=20
interface and were still being processed by the kernel despite coming=20
from a non-VPN interface, in this attack we are not subverting the=20
tunnel by sending packets to the incorrect interface, but sending=20
packets to the VPN server with the source address of the endhost (such=20
as a web server).  Thus, for the VPN server, the spoofed packets that=20
make it into the tunnel are identical to real packets from the endhost,=20
and enter the VPN server from the same interface.  For the VPN client,=20
the spoofed packets are coming through the VPN tunnel from the VPN=20
server.

- Enabling rp_filtering on the client machine does not prevent this
attack, and source address validation on the scale of the Internet
doesn't really exist.  Note that rp_filter on the server is irrelevant,=20
since spoofed packets enter on the same interface as legitimate packets.

- The VPN providers and operating systems affected by this attack is=20
expanded to include policy-based VPNs and Windows etc.

We reported this to disros@vs.openwall.org and security@kernel.org on=20
July 29th, but have not yet received any responses from any vendors with=20
a CVE pool. While related to CVE-2019-14899 in that we examine the=20
timing and size of encrypted packets to infer information about packet=20
headers, we believe this attack is significantly different and should be=20
assigned a CVE and addressed since the previous mitigation does not=20
prevent this attack.

We have included our correspondence with distros and kernel security in=20
the form of a FAQ on our blog here:=20
https://breakpointingbad.com/2020/08/12/VPN-FAQ.html#faq.

To prevent the cluster foxtrot of misinformation from the last=20
disclosure, we request that anyone wanting to report on this contact us=20
at vpn-research@breakpointingbad.com.

William J. Tolley
Beau Kujath
Jedidiah R. Crandall

Breakpointing Bad &
Arizona State University

***********************************************

This is a follow-up to our report on November 20th of last year=20
detailing how connections inside a VPN tunnel could be inferred, reset,=20
and in some cases, hijacked by injecting data into the TCP stream. We=20
have expanded the attack by moving one or more hops away from the client=20
to an in-path middle router between the client and VPN server. In our=20
previous disclosure, a client-side mitigation using iptables or nftables=20
was suggested, but we are unsure of how to prevent this new attack and=20
do not believe there is a client-side solution.

Our setup is as follows:


vpn client ----- AP ----- router 1 ------ router 2 ----- vpn server

                                  \        /

                                    \    /

                                      \/

                                    router 3

                                       |

                                    website

(If formatting is a problem:=20
https://breakpointingbad.com/assets/virtlab.jpg)


The VPN client and access point both have reverse path filtering=20
enabled, and the client has an active connection to the website through=20
the VPN server. The attack is performed from router 1, spoofing a packet=20
that appears to be from the website to the VPN server. To infer a=20
connection that the VPN client has made on the other end of the VPN=20
tunnel, we spoof the packet coming from router 1 with the source address=20
and port of the website and the destination address of the VPN server.=20=20
By searching the ephemeral port space for the last part of the 4-tuple,=20
one of the spoofed packets will be NATed by the VPN server (if the=20
connection exists) and seen in the VPN tunnel by router 1 (by looking at=20
the size of encrypted packets going from VPN server to VPN client).

Unlike the previous attack from the perspective of the gateway, or an=20
adjacent user, we do not need to know the virtual IP assigned to the=20
client.  However, as with the previous attack, the attacker must already=20
know the IP address that they anticipate the victim will connect to=20
using the VPN.  But testing a site is trivial, especially if we limit=20
the scope to a targeted attack from nation state testing against a=20
banned list, for example.

We have tested this in a limited, virtual environment, but we are=20
starting our effort to test this on the =E2=80=9Creal internet=E2=80=9D, wh=
ere we will=20
need to account for packet loss, packet reordering, and packet delay,=20
but in many ways this attack is an easier attack than the original that=20
led to CVE-2019-14899 since it removes some of the most time-consuming=20
elements of the previous attack.

We have tested this against OpenVPN, WireGuard, and StrongSwan. We=20
selected these since they are the most commonly used commercial VPN=20
platforms. It was suggested by Noel Kuntze in the previous thread that=20
the old attack wouldn=E2=80=99t work against policy-based VPNs, such as IPS=
ec=20
using StrongSwan, so we included it in this effort to demonstrate how=20
the new attack does not depend on anything particular to the network=20
stack or VPN implementation of the client.  We have only tested=20
inferring that a TCP connection exists up to this point, but it should=20
be possible to reset or hijack that TCP connection in a manner similar=20
to the original attack since we can spoof packets into the tunnel at the=20
VPN server end.  Again, this works regardless of the VPN client=E2=80=99s=20
configuration, OS, etc.

We are still developing other attacks using this method, including=20
attacks on DNS similar to those suggested by Colm MacC=C3=A1rthaigh.  By=20
using a DoS attack to have the DNS server ignore DNS requests from the=20
VPN server, we can guess the source port as above and then search as=20
much of the TXID space as possible within the timeout period of the DNS=20
request.  We have successfully hijacked VPN-tunneled DNS requests, and=20
are working on speeding up our attacks to make it more likely to work=20
for any given request.

Just to summarize and put both forms of attack (spoofing to the VPN=20
client from a network adjacent position vs. spoofing to the VPN server=20
from any router on the path from VPN client to VPN server) into=20
perspective:

-We=E2=80=99re still able to infer the existence of VPN-tunneled TCP=20
connections, and potentially RST and hijack them, regardless of VPN=20
client OS or anything the VPN client has done to patch against=20
CVE-2019-14899.

-We note that TLS does not protect against inferring and resetting=20
connections in general, and our ability to hijack DNS requests also=20
means that TLS encryption alone will not protect a TCP connection.  VPNs=20
are supposed to protect the integrity of tunneled traffic independently=20
of application-layer protections (such as TLS). Our work shows that they=20
do not.

-Attacking by spoofing packets to the VPN server instead of the VPN=20
client changes the threat model to be not only attackers that are=20
network adjacent to the VPN client, but also attackers that are=20
in/on-path between the VPN client and VPN server (e.g., the routers that=20
route packets between them).

We also want to point out that the target audience for this disclosure=20
is kernel developers and others familiar with network stack=20
implementations and the details of how VPN routing works.  As with the=20
first disclosure we plan to follow list policy and make the disclosure=20
public after 14 days.  Our last disclosure was misinterpreted by many=20
media outlets and podcasters, so we=E2=80=99d like to point out that anybod=
y=20
with questions about the disclosure can email=20
vpn-research@breakpointingbad.com and we=E2=80=99ll be happy to answer what=
=20
questions we can.


