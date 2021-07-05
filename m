X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9148" "Sunday" "4" "July" "2021" "20:33:30" "-0700" "vpn-research@breakpointingbad.com" "vpn-research@breakpointingbad.com" nil "203" "[oss-security] Re: Blind in/on-path attacks against VPN-tunneled connections (CVE-2019-14899 follow-up)" nil nil nil "7" nil nil (number mark "U       vpn-research Jul  4  203/9148  " thread-indent "\"[oss-security] Re: Blind in/on-path attacks against VPN-tunneled connections (CVE-2019-14899 follow-up)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: Blind in/on-path attacks against VPN-tunneled connections (CVE-2019-14899 follow-up)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14001 invoked by uid 550); 5 Jul 2021 10:56:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1427 invoked from network); 5 Jul 2021 03:33:44 -0000
Authentication-Results: mail.breakpointingbad.com (amavisd-new);
	dkim=pass (1024-bit key) reason="pass (just generated, assumed good)"
	header.d=breakpointingbad.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
	breakpointingbad.com; h=content-transfer-encoding:message-id
	:user-agent:references:in-reply-to:subject:subject:to:from:from
	:date:date:content-type:content-type:mime-version; s=dkim; t=
	1625456010; x=1628048011; bh=KBcwiVWCpuSEKHKDbtbp5gw1SuugqG+8vVP
	IHpXw8Ug=; b=WPUagkJSg6BXZRE/9wYhxuhjHqfCdLNi9NUfOqYt/i86t/o9jG1
	4vb9v7ozp65iZUCluMqFdk2oempOhJbMSI4nqYfHhExCkx+Mesr6qEEfNhiJkrZ+
	s7adpv8I9SD6bFXH/NyLHwiSjTa4vkS96NP2MlfacIom70li+a7u0ZT4=
X-Virus-Scanned: Debian amavisd-new at mail.breakpointingbad.com
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Date: Sun, 04 Jul 2021 20:33:30 -0700
From: vpn-research@breakpointingbad.com
To: oss-security@lists.openwall.com
In-Reply-To: <e26ab73a0e3ccf3b44d971b857986f18@breakpointingbad.com>
References: <e26ab73a0e3ccf3b44d971b857986f18@breakpointingbad.com>
User-Agent: Roundcube Webmail
Message-ID: <0b9b495647cd4793e2ac882ce82b520c@breakpointingbad.com>
X-Sender: vpn-research@breakpointingbad.com
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Re: Blind in/on-path attacks against VPN-tunneled connections
 (CVE-2019-14899 follow-up)

Hi all,

I'm just circling back now that we have a virtual environment for you to=20
test.

This was produced as an artifact for our Usenix paper on this=20
vulnerability and the one covered by CVE-2019-14899. The included=20
virtual environment is for OpenVPN, but we have one for WireGuard and=20
StrongSwan as well that we can share upon request. I'll also provide a=20
link for the paper.

A CVE has still not been assigned for this issue, but it has been=20
submitted to MITRE.

https://git.breakpointingbad.com/Breakpointing-Bad-Public/vpn-attacks

https://www.usenix.org/system/files/sec21fall-tolley.pdf

Thanks,

Breakpointing Bad
-----------------
William J. Tolley
Beau Kujath
Jedidiah Crandall



On 2020-08-13 08:06, vpn-research@breakpointingbad.com wrote:
> Hi all,
>=20
> This is reporting a vulnerability that allows an in/on-path attacker
> between a VPN client and VPN server to infer and inject arbitrary data
> into VPN-tunneled connections. This vulnerability is related to
> CVE-2019-14899, but has a few key differences.
>=20
> - The attacker does not need to be the gateway or network adjacent, as
> described in CVE-2019-14899.
>=20
> - The packets are not being spoofed "outside" of the tunnel. In the
> previous attack, the packets were sent to the wireless/ethernet
> interface and were still being processed by the kernel despite coming
> from a non-VPN interface, in this attack we are not subverting the
> tunnel by sending packets to the incorrect interface, but sending
> packets to the VPN server with the source address of the endhost (such
> as a web server).  Thus, for the VPN server, the spoofed packets that
> make it into the tunnel are identical to real packets from the
> endhost, and enter the VPN server from the same interface.  For the
> VPN client, the spoofed packets are coming through the VPN tunnel from
> the VPN server.
>=20
> - Enabling rp_filtering on the client machine does not prevent this
> attack, and source address validation on the scale of the Internet
> doesn't really exist.  Note that rp_filter on the server is
> irrelevant, since spoofed packets enter on the same interface as
> legitimate packets.
>=20
> - The VPN providers and operating systems affected by this attack is
> expanded to include policy-based VPNs and Windows etc.
>=20
> We reported this to disros@vs.openwall.org and security@kernel.org on
> July 29th, but have not yet received any responses from any vendors
> with a CVE pool. While related to CVE-2019-14899 in that we examine
> the timing and size of encrypted packets to infer information about
> packet headers, we believe this attack is significantly different and
> should be assigned a CVE and addressed since the previous mitigation
> does not prevent this attack.
>=20
> We have included our correspondence with distros and kernel security
> in the form of a FAQ on our blog here:
> https://breakpointingbad.com/2020/08/12/VPN-FAQ.html#faq.
>=20
> To prevent the cluster foxtrot of misinformation from the last
> disclosure, we request that anyone wanting to report on this contact
> us at vpn-research@breakpointingbad.com.
>=20
> William J. Tolley
> Beau Kujath
> Jedidiah R. Crandall
>=20
> Breakpointing Bad &
> Arizona State University
>=20
> ***********************************************
>=20
> This is a follow-up to our report on November 20th of last year
> detailing how connections inside a VPN tunnel could be inferred,
> reset, and in some cases, hijacked by injecting data into the TCP
> stream. We have expanded the attack by moving one or more hops away
> from the client to an in-path middle router between the client and VPN
> server. In our previous disclosure, a client-side mitigation using
> iptables or nftables was suggested, but we are unsure of how to
> prevent this new attack and do not believe there is a client-side
> solution.
>=20
> Our setup is as follows:
>=20
>=20
> vpn client ----- AP ----- router 1 ------ router 2 ----- vpn server
>=20
>                                  \        /
>=20
>                                    \    /
>=20
>                                      \/
>=20
>                                    router 3
>=20
>                                       |
>=20
>                                    website
>=20
> (If formatting is a problem:=20
> https://breakpointingbad.com/assets/virtlab.jpg)
>=20
>=20
> The VPN client and access point both have reverse path filtering
> enabled, and the client has an active connection to the website
> through the VPN server. The attack is performed from router 1,
> spoofing a packet that appears to be from the website to the VPN
> server. To infer a connection that the VPN client has made on the
> other end of the VPN tunnel, we spoof the packet coming from router 1
> with the source address and port of the website and the destination
> address of the VPN server.  By searching the ephemeral port space for
> the last part of the 4-tuple, one of the spoofed packets will be NATed
> by the VPN server (if the connection exists) and seen in the VPN
> tunnel by router 1 (by looking at the size of encrypted packets going
> from VPN server to VPN client).
>=20
> Unlike the previous attack from the perspective of the gateway, or an
> adjacent user, we do not need to know the virtual IP assigned to the
> client.  However, as with the previous attack, the attacker must
> already know the IP address that they anticipate the victim will
> connect to using the VPN.  But testing a site is trivial, especially
> if we limit the scope to a targeted attack from nation state testing
> against a banned list, for example.
>=20
> We have tested this in a limited, virtual environment, but we are
> starting our effort to test this on the =E2=80=9Creal internet=E2=80=9D, =
where we will
> need to account for packet loss, packet reordering, and packet delay,
> but in many ways this attack is an easier attack than the original
> that led to CVE-2019-14899 since it removes some of the most
> time-consuming elements of the previous attack.
>=20
> We have tested this against OpenVPN, WireGuard, and StrongSwan. We
> selected these since they are the most commonly used commercial VPN
> platforms. It was suggested by Noel Kuntze in the previous thread that
> the old attack wouldn=E2=80=99t work against policy-based VPNs, such as I=
PSec
> using StrongSwan, so we included it in this effort to demonstrate how
> the new attack does not depend on anything particular to the network
> stack or VPN implementation of the client.  We have only tested
> inferring that a TCP connection exists up to this point, but it should
> be possible to reset or hijack that TCP connection in a manner similar
> to the original attack since we can spoof packets into the tunnel at
> the VPN server end.  Again, this works regardless of the VPN client=E2=80=
=99s
> configuration, OS, etc.
>=20
> We are still developing other attacks using this method, including
> attacks on DNS similar to those suggested by Colm MacC=C3=A1rthaigh.  By
> using a DoS attack to have the DNS server ignore DNS requests from the
> VPN server, we can guess the source port as above and then search as
> much of the TXID space as possible within the timeout period of the
> DNS request.  We have successfully hijacked VPN-tunneled DNS requests,
> and are working on speeding up our attacks to make it more likely to
> work for any given request.
>=20
> Just to summarize and put both forms of attack (spoofing to the VPN
> client from a network adjacent position vs. spoofing to the VPN server
> from any router on the path from VPN client to VPN server) into
> perspective:
>=20
> -We=E2=80=99re still able to infer the existence of VPN-tunneled TCP
> connections, and potentially RST and hijack them, regardless of VPN
> client OS or anything the VPN client has done to patch against
> CVE-2019-14899.
>=20
> -We note that TLS does not protect against inferring and resetting
> connections in general, and our ability to hijack DNS requests also
> means that TLS encryption alone will not protect a TCP connection.
> VPNs are supposed to protect the integrity of tunneled traffic
> independently of application-layer protections (such as TLS). Our work
> shows that they do not.
>=20
> -Attacking by spoofing packets to the VPN server instead of the VPN
> client changes the threat model to be not only attackers that are
> network adjacent to the VPN client, but also attackers that are
> in/on-path between the VPN client and VPN server (e.g., the routers
> that route packets between them).
>=20
> We also want to point out that the target audience for this disclosure
> is kernel developers and others familiar with network stack
> implementations and the details of how VPN routing works.  As with the
> first disclosure we plan to follow list policy and make the disclosure
> public after 14 days.  Our last disclosure was misinterpreted by many
> media outlets and podcasters, so we=E2=80=99d like to point out that anyb=
ody
> with questions about the disclosure can email
> vpn-research@breakpointingbad.com and we=E2=80=99ll be happy to answer wh=
at
> questions we can.
