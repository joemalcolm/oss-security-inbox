X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["32243" "Thursday" "5" "December" "2019" "05:05:21" "+0100" "Noel Kuntze" "noel.kuntze+oss-security@thermi.consulting" "<1bc268b7-c6c1-a91b-49f8-64392116fe20@thermi.consulting>" "632" "Re: [oss-security] [CVE-2019-14899] Inferring and hijacking VPN-tunneled TCP connections." nil nil nil "12" "2019120504:05:21" "[oss-security] [CVE-2019-14899] Inferring and hijacking VPN-tunneled TCP connections." (number mark "U       noel.kuntze+ Dec  5  632/32243 " thread-indent "\"Re: [oss-security] [CVE-2019-14899] Inferring and hijacking VPN-tunneled TCP connections.\"\n") "<6bfd4935c64c76dcdaa1b7be0c7f4c47ea6104ff.camel@breakpointingbad.com>" ("<60b31300f642513c48ae2ee58b4a04e25a188ffe.camel@breakpointingbad.com>" "<6bfd4935c64c76dcdaa1b7be0c7f4c47ea6104ff.camel@breakpointingbad.com>") nil nil nil nil nil nil nil "Re: [oss-security] [CVE-2019-14899] Inferring and hijacking VPN-tunneled TCP connections." nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11575 invoked by uid 550); 5 Dec 2019 10:52:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29859 invoked from network); 5 Dec 2019 04:05:37 -0000
X-Virus-Scanned: amavisd-new at thermi.consulting
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=thermi.consulting;
	s=201909; t=1575518721;
	bh=/G+im/SVqa/Ec0Ea5XPvKUwivYlXDSoBb6Bgup8PC+g=;
	h=From:Subject:To:Date:MIME-Version:Content-Type;
	b=VMrzAmcM9JVkBkUnfui0hp4rnICFl5Sv9cdktqZfHAJ+TU28ir/yUQfwArnEaFgJu
	 avzCB1pFwxJ4Ad14CSILSrxmrvhBVsNerbLZuhT+HDwKqSmyQ8PtDqfeqzCrR/YZrz
	 8QCuvbDUZ80YNfOHvasPbl3GI8vdHZ6VkkuX0CMDsGn5tzVgHm99kA4e2zCO8Jd2yi
	 pb7jdz08EobBgg4grxWUjMENP4pbF2qGCwx47tBR3fBjtSEXIBHTZfeIOjzJOqjzPu
	 GWtRjRHre0nnCYWPhZLuGevCLpsnTReEKDo66sQ6yTPjeABxMn3MBMWd5msT8jSSOb
	 t1qiL+ZewLSjg==
From: Noel Kuntze <noel.kuntze+oss-security@thermi.consulting>
To: oss-security@lists.openwall.com,
 "William J. Tolley" <william@breakpointingbad.com>
References: <60b31300f642513c48ae2ee58b4a04e25a188ffe.camel@breakpointingbad.com>
 <6bfd4935c64c76dcdaa1b7be0c7f4c47ea6104ff.camel@breakpointingbad.com>
Autocrypt: addr=noel.kuntze+oss-security@thermi.consulting; keydata=
 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
Message-ID: <1bc268b7-c6c1-a91b-49f8-64392116fe20@thermi.consulting>
Date: Thu, 5 Dec 2019 05:05:21 +0100
MIME-Version: 1.0
In-Reply-To: <6bfd4935c64c76dcdaa1b7be0c7f4c47ea6104ff.camel@breakpointingbad.com>
Content-Type: multipart/mixed;
 boundary="------------67D083AF1FC715F9029B81AF"
Content-Language: en-US
Subject: Re: [oss-security] [CVE-2019-14899] Inferring and hijacking
 VPN-tunneled TCP connections.

--------------67D083AF1FC715F9029B81AF
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Hello List,

Some important comments on the matter and especially in regards to IPsec:
* This attack works regardless of if you have a VPN or not. The attacker just needs to be able to
  send packets to the other host. It's not systemd specific. It can also occur because the user deliberately
  configured the rp_filter that way (that's sometimes the case if PBR (Policy Based Routing) is configured.
  The default for rp_filter is strict. For further information on the matter see ip-sysctl.txt[2]
  and RFC 3704 Section 2.4[3]. For now, just create a file /etc/sysctl.d/51-rpfilter.conf with the content "net.ipv4.conf.all.rp_filter=1".
* You can solve the problem generally for IPv6 by using the rpfilter iptables or nftables module in *mangle PREROUTING[1].
  Just globally one rule is needed.
* Only route based VPNs are impacted. In comparison, policy based VPNs are not impacted (On Linux only implementable using XFRM, which
 is IPsec on Linux specific) unless the XFRM policy's level is set to "use" instead of "required" (default))
  because any traffic received that matches a policy (IPsec security policy) and that is not protected is dropped.
  An attacker could only inject packets by attacking the connection whenever it is unprotected (e.g. On a commercial VPN provider
  setup that would be when the connection "comes" out of the VPN server and goes to the destination on the WAN).
  So you're ususally fine. And even when a route based VPN is used, strict rp_filter can still save your bacon.
 
The probing of "virtual" IPv4 addresses can be made more difficult by configuring the VPN software to bind them to,
for example, the loopback interface and setting arp_ignore of any interface facing a possible attacker to 2[2].
That would prevent the sending of arp responses to arp requests for virtual IPs. I am not aware of a
similiar setting for IPv6. That might be related to the lack of an rp_filter setting for IPv6 on Linux.
Probing for addresses by using any protocol other than TCP (because TCP on Linux is handled in a special way
in regards to routing. It sends the responses over the same interface and MAC addresses as the request was received,
AFAIR) would not be possible if the response was to go over the VPN tunnel because the VPN server would most likely
drop it as a martian (the destination would probably be a private network and they're not routable over the Internet.
It has to be investigated on a case by case basis).

strongSwan by default binds any "virtual" IPs to the interface the route to the other peer goes over. You can change that though.
I don't know about libreswan or openswan (shouldn't use the last one anyway).

> This vulnerability works against OpenVPN, WireGuard, and IKEv2/IPSec,
> but has not been thoroughly tested against tor, but we believe it is
> not vulnerable since it operates in a SOCKS layer and includes
> authentication and encryption that happens in userspace. 

It doesn't work against TOR because the destination address would be 127.0.0.1 and
Linux (don't know about other operating systems) drops packets to that destination unless the input
interface is loopback or route_localnet in sysctl of the input interface is set to 1 (used if services
bound to localhost are exposed to the network via DNAT rules).

> 3. Encrypted packet size and timing
>
> Since the size and number of packets allows the attacker to bypass the
> encryption provided by the VPN service, perhaps some sort of padding
> could be added to the encrypted packets to make them the same size.
> Also, since the challenge ACK per process limit allows us to determine
> if the encrypted packets are challenge ACKs, allowing the host to
> respond with equivalent-sized packets after exhausting this limit could
> prevent the attacker from making this inference.

IPsec supports that. It's called TFC (Traffic Flow Confidentiality). It can be configured to arbitrary values or to pad up to the MTU of the link.
It's disabled by default.

Kind regards

Noel

[1] Would look like that: ip6tables -t mangle -I PREROUTING -m rpfilter --invert -j DROP
[2] https://www.kernel.org/doc/Documentation/networking/ip-sysctl.txt
[3] https://tools.ietf.org/html/rfc3704#section-2.4

Am 05.12.19 um 03:37 schrieb William J. Tolley:
> Hi all,
>
> I am reporting a vulnerability that exists on most Linux distros, and
> other  *nix operating systems which allows a network adjacent attacker
> to determine if another user is connected to a VPN, the virtual IP
> address they have been assigned by the VPN server, and whether or not
> there is an active connection to a given website. Additionally, we are
> able to determine the exact seq and ack numbers by counting encrypted
> packets and/or examining their size. This allows us to inject data into
> the TCP stream and hijack connections.
>
> Most of the Linux distributions we tested were vulnerable, especially
> Linux distributions that use a version of systemd pulled after November
> 28th of last year which turned reverse path filtering off. However, we
> recently discovered that the attack also works against IPv6, so turning
> reverse path filtering on isn't a reasonable solution, but this was how
> we discovered that the attack worked on Linux.
>
> Adding a prerouting rule to drop packets destined for the client's
> virtual IP address is effective on some systems, but I have only tested
> this on my machines (Manjaro 5.3.12-1, Ubuntu 19.10 5.3.0-23). This
> rule was proposed by Jason Donenfeld, and an analagous rule on the
> output chain was proposed by Ruoyu "Fish" Wang of ASU. We have some
> concerns that inferences can still be made using slightly different
> methods, but this suggestion does prevent this particular attack.
>
> There are other potential solutions being considered by the kernel
> maintainers, but I can't speak to their current status. I will provide
> updates as I receive them.
>
> I have attached the original disclosure I provided to 
> distros@vs.openwall.org and security@kernel.org below, with at least
> one critical correction: I orignally listed CentOS as being vulnerable
> to the attack, but this was incorrect, at least regarding IPv4. We
> didn't know the attack worked against IPv6 at the time we tested
> CentOS, and I haven't been able to test it yet.
>
>
> William J. Tolley
> Beau Kujath
> Jedidiah R. Crandall
>
> Breakpointing Bad &
> University of New Mexico
>
>
> *************************************************
>
>
> **General Disclosure:
>
> We have discovered a vulnerability in Linux, FreeBSD, OpenBSD, MacOS,
> iOS, and Android which allows a malicious access point, or an adjacent
> user,  to determine if a connected user is using a VPN, make positive
> inferences about the websites they are visiting, and determine the
> correct sequence and acknowledgement numbers in use, allowing the bad
> actor to inject data into the TCP stream. This provides everything that
> is needed for an attacker to hijack active connections inside the VPN
> tunnel.
>
> This vulnerability works against OpenVPN, WireGuard, and IKEv2/IPSec,
> but has not been thoroughly tested against tor, but we believe it is
> not vulnerable since it operates in a SOCKS layer and includes
> authentication and encryption that happens in userspace. It should be
> noted, however, that the VPN technology used does not seem to matter
> and we are able to make all of our inferences even though the responses
> from the victim are encrypted, using the size of the packets and number
> of packets sent (in the case of challenge ACKs, for example) to
> determine what kind of packets are being sent through the encrypted VPN
> tunnel.
>
> We have already reported a related vulnerability to Android earlier
> this year related to the issue, which resulted in the assignment of
> CVE-2019-9461, however, the CVE strictly applies to the fact that the
> Android devices would respond to unsolicited packets sent to the user’s
> virtual IP address over the wireless interface, but this does not
> address the fundamental issue of the attack and did not result in a
> change of the reverse path settings of Android as of the most recent
> security update.
>
> This attack did not work against any Linux distribution we tested until
> the release of Ubuntu 19.10, and we noticed that the rp_filter settings
> were set to “loose” mode. We see that the default settings in
> sysctl.d/50-default.conf in the systemd repository were changed from
> “strict” to “loose” mode on November 28, 2018, so distributions using a
> version of systemd without modified configurations after this date are
> now vulnerable. Most Linux distributions we tested which use other init
> systems leave the value as 0, the default for the Linux kernel.
>
> We have described the procedure for reproducing the vulnerability with
> Linux and included a section illustrating the differences in
> architecture.
>
>
>
> There are 3 steps to this attack:
>
> 1. Determining  the  VPN  client’s virtual IP address
> 2. Using the virtual IP address to make inferences about active
> connections
> 3. Using the encrypted replies to unsolicited packets to determine the
> sequence and acknowledgment numbers of the active connection to hijack
> the TCP session
>
>
>
> There are 4 components to the reproduction:
>
> 1. The Victim Device (connected to AP, 192.168.12.x, 10.8.0.8)
> 2. AP (controlled by attacker, 192.168.12.1)
> 3. VPN Server (not controlled by attacker, 10.8.0.1)
> 4. A Web Server (not controlled by the attacker, public IP in a real-
> world scenario)
>
> The victim device connects to the access point, which for most of our
> testing was a laptop running create_ap. The victim device then
> establishes a connection with their VPN provider.
>
> The access point can then determine the virtual IP of the victim by
> sending SYN-ACK packets to the victim device across the entire virtual
> IP space (the default for OpenVPN is 10.8.0.0/24). When a SYN-ACK is
> sent to the correct virtual IP on the victim device, the device
> responds with a RST; when the SYN-ACK is sent to the incorrect virtual
> IP, nothing is received by the attacker.
>
> To quickly demonstrate this difference, we use the nping commands on
> the AP device running create_ap. The source IP is the gateway of our
> AP, the destination IP is the virtual IP assigned to the tun interface
> by the VPN client, ap0 is the interface create_ap created on the
> attacker device, and the destination MAC is the victim’s wireless MAC
> address.
>
> For example:
>
> The correct address generates a RST from the victim:
>
> nping --tcp --flags SA --source-ip 192.168.12.1 --dest-ip 10.8.0.8 --
> rate 3 -c 3 -e ap0 --dest-mac 08:00:27:9c:53:12
>
> The incorrect address does not elicit a response from the victim:
>
> nping --tcp --flags SA --source-ip 192.168.12.1 --dest-ip 10.8.0.9 --
> rate 3 -c 3 -e ap0 --dest-mac 08:00:27:9c:53:12
>
> Similarly, to test if there is an active connection for any given
> website, such as 64.106.46.56, for example, we send SYN or SYN-ACKs
> from 64.106.46.56 on port 80 (or 443) to the virtual IP of the victim
> across the entire ephemeral port space of the victim. The correct four-
> tuple will elicit no more than 2 challenge ACKs per second from the
> victim, whereas the victim will respond to the incorrect four-tuple
> with a RST for each packet sent to it.
>
> To quickly test this, we suggest creating a netcat connection on the
> victim device, such as this:
>
> Netcat 64.106.46.56 80 -p 40404
>
> The correct four-tuple generates challenge ACKs
>
> nping --tcp --flags SA --source-ip 64.106.46.56 -g 80 --dest-ip
> 10.8.0.8 -p 40404 --rate 10 -c 10 -e ap0 --dest-mac 08:00:27:9c:53:12
>
> The incorrect four-tuple generates a single RST for each packet sent:
>
> nping --tcp --flags SA --source-ip 64.106.46.56 -g 80 --dest-ip
> 10.8.0.8 -p 40405 --rate 10 -c 10 -e ap0 --dest-mac 08:00:27:9c:53:12
>
> Finally, once the attacker determined that the user has an active TCP
> connection to an external server,  we will attempt to infer the exact
> next sequence number and in-window acknowledgment number needed to
> inject forged packets into the connection. To find the appropriate
> sequence and ACK numbers, we will trigger responses from the client in
> the encrypted connection found in part 2. The attacker will continually
> spoof reset packets into the inferred connection until it sniffs
> challenge ACKs. The attacker can reliably determine if the packets
> flowing from the client to the VPN server are challenge ACKs by looking
> at the size and timing of the encrypted responses in relation to the
> attacker's spoofed packets. The victim’s device will trigger a TCP
> challenge ACK on each reset it receives that has an in-window sequence
> number for an existing connection. For example, if the client is using
> OpenVPN to exchange encrypted packets with the VPN server, then the
> client will always respond with an SSL packet of length 79 when a
> challenge ACK is triggered.
>
> The attacker must spoof resets to different blocks across the entire
> sequence number space until one triggers an encrypted challenge ACK.
> The size of the spoof block plays a significant role in how long the
> sequence inference takes, but should be conservative as to not skip
> over the receive window of the client. In practice, when the attacker
> thinks it sniffs an encrypted challenge-ACK, it can verify this is true
> by spoofing X packets with the same sequence number. If there were X
> encrypted responses with size 79 triggered, then the attacker knows for
> certain it is triggering challenge ACKs (at most 2 packets of size 79
> per second).
>
> After the attacker has inferred the in-window sequence number for the
> client's connection, they can quickly determine the exact sequence
> number and in-window ACK needed to inject. First, they spoof empty
> push-ACKs with the in-window sequence while guessing in-window ACK
> numbers. Once the spoofed packets trigger another challenge-ACK, an in-
> window ACK number is found. Finally, the attacker continually spoofs
> empty TCP data packets with the in-window ACK and sequence numbers as
> it decrements the sequence number after each send. The victim will
> respond with another challenge ACK once the attacker spoofs the exact
> sequence number minus one. The attacker can now inject arbitrary
> payloads into the ongoing encrypted connection using the inferred ACK
> and next sequence number.
>
> This can be tested by observing the behavior from this sequence of
> commands, continuing with the same four-tuple:
>
> Using the four-tuple from the previous steps, we send RSTs in the
> sequence number range in blocks of 50,000 until we trigger a challenge
> ACK.
>
> nping --tcp --flags R --source-ip 64.106.46.56 -g 80 --dest-ip 10.8.0.8
> -p 40404 --rate 10 -c 10 -e ap0 --dest-mac 08:00:27:9c:53:12 --seq [SEQ
> RANGE]
>
> If the packet lands in-window, the victim will respond with at most 2
> challenge ACKs per second. These packets are still encrypted and
> originate from the virtual interface, unlike with Android, but we can
> still determine the contents of these packets by their size. The
> encrypted challenge ACK packets are larger than the encrypted RST
> packets. You can run tcpdump on the victim machine to accelerate the
> testing of his process by viewing the actual sequence and
> acknowledgement numbers.
>
> After we have found an in-window sequence number, we locate an in-
> window acknowledgement by spoofing empty PSH-ACKs with the in-window
> sequence number and guessing the acknowledgement number by dividing the
> acknowledgement number space into eight blocks. In most instances,
> seven of these blocks will trigger challenge ACKs, but one of them will
> not, which allows us to quickly determine which block falls within the
> acknowledgement window. We are interested in the block that  does not
> respond with a challenge ACK. This behavior can be observed by using an
> in-window sequence number and an acknowledgement number in the block
> containing the correct acknowledgement number.
>
> nping --tcp --flags PA --source-ip 64.106.46.56 -g 80 --dest-ip
> 10.8.0.8 -p 40404 --rate 10 -c 10 -e ap0 --dest-mac 08:00:27:9c:53:12
> -seq 12345678 --ack [ACK RANGE]
>
> Finally, using the in-window sequence and acknowledgement numbers, we
> spoof empty PSH-ACKs using the same in-windows acknowledgement number
> and decrementing the sequence number until we trigger another challenge
> ACK. This sequence number is one fewer than the next expected sequence
> number. We can then arbitrarily inject data into the active TCP
> connection.
>
> Continuing with our toy example:
>
> nping --tcp --flags PA --source-ip 64.106.46.56 -g 80 --dest-ip
> 10.8.0.8 -p 40404 --rate 10 -c 10 -e ap0 --dest-mac 08:00:27:9c:53:12
> -seq [EXACT] --ack [IN-WINDOW] --data-string “hello,world.”
>
>
>
> **Operating Systems Affected:
>
> Here is a list of the operating systems we have tested which are
> vulnerable to this attack:
>
> Ubuntu 19.10 (systemd)
> Fedora (systemd)
> Debian 10.2 (systemd)
> Arch 2019.05 (systemd)
> Manjaro 18.1.1 (systemd)
>
> Devuan (sysV init)
> MX Linux 19 (Mepis+antiX)
> Void Linux (runit)
>
> Slackware 14.2 (rc.d) 
> Deepin (rc.d)
> FreeBSD (rc.d) 
> OpenBSD (rc.d) 
>
> This list isn’t exhaustive, and we are continuing to test other
> distributions, but made usere to cover a variety of init systems to
> show this is not limited to systemd.
>
>
>
> **Operating System Variations:
>
> The behavior is slightly different on other operating systems. Here is
> a summary of the differences:
>
> Android: In the first phase of the attack, Android responds with
> unencrypted RSTs to unsolicited SYN-ACKs for the correct port and ICMP
> packets for the incorrect one. For the second phase, it will respond
> with RSTs on the correct four-tuple.
>
> MacOS/iOS: The first phase of the attack does not work as described
> here, but you can use an open port on the Apple machine to determine
> the virtual IP address. We use port 5223, which is used for iCloud,
> iMessage, FaceTime, Game Center, Photo Stream, and push notifications
> etc.
>
> We know the phone will communicate with one of the push notification
> servers on port 5223, and have observed that on MacOS, the port used on
> the victim device is not the same as the port used to connect to the
> VPN server, but is very close (in our testing it has always been within
> 10).
>
> nping --tcp --flags SA --source-ip 17.57.144.[84-87] -g 5223 --dest-ip
> 10.8.0.8 -p [X] --rate 3 -c 3 -e ap0 --dest-mac 08:00:27:9c:53:12
>
> For iOS devices, it does not follow this convention for choosing the
> client’s source port, but always choose a port between ~48000-50000
> (our testing on iOS 13.1 was between 48162-49555).
>
> FreeBSD: The first two phases work essentially the same as Linux,
> however, for the last phase, the ACK number is not needed at all, so
> that piece of phase three can be skipped.
>
> OpenBSD: OpenBSD responds to spoofed SYN packets to the correct virtual
> IP with unencrypted RST packets, and the incorrect virtual IP elicits
> unencrypted NTP packets or nothing at all for the first part of the
> attack. For the second part, the responses are encrypted, but we can
> still determine which packets are challenge ACKs from the packet size,
> as with Linux. Connections can be reset by sending a RST with the
> correct sequence number.
>
>
>
> **Possible Mitigations:
>
> 1. Turning reverse path filtering on
>
> Potential problem: Asynchronous routing not reliable on mobile devices,
> etc. Also, it isn’t clear that this is actually a solution since it
> appears to work in other OSes with different networking stacks. Also,
> even with reverse path filtering on strict mode, the first two parts of
> the attack can be completed, allowing the AP to make inferences about
> active connections, and we believe it may be possible to carry out the
> entire attack, but haven’t accomplished this yet.
>
> 2. Bogon filtering
>
> Potential problem: Local network addresses used for vpns and local
> networks, and some nations, including Iran, use the reserved private IP
> space as part of the public space.
>
> 3. Encrypted packet size and timing
>
> Since the size and number of packets allows the attacker to bypass the
> encryption provided by the VPN service, perhaps some sort of padding
> could be added to the encrypted packets to make them the same size.
> Also, since the challenge ACK per process limit allows us to determine
> if the encrypted packets are challenge ACKs, allowing the host to
> respond with equivalent-sized packets after exhausting this limit could
> prevent the attacker from making this inference.
>
>
> We have prepared a paper for publication concerning this
> vulnerability and the related implications, but intend to keep it
> embargoed until we have found a satisfactory workaround. Then we will
> report the vulnerability to oss-security@lists.openwall.com. We are
> also reporting this vulnerability to the other services affected, which
> also includes: Systemd, Google, Apple, OpenVPN, and WireGuard, in
> addition to distros@vs.openwall.org for the operating systems affected.
>
> Thanks,
>
> William J. Tolley
> Beau Kujath
> Jedidiah R. Crandall
>
> Breakpointing Bad &
> University of New Mexico
>

- -- 
Noel Kuntze
IT security consultant

GPG Key ID: 0x0739AD6C
Fingerprint: 3524 93BE B5F7 8E63 1372 AF2D F54E E40B 0739 AD6C

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEENSSTvrX3jmMTcq8t9U7kCwc5rWwFAl3oggAACgkQ9U7kCwc5
rWzHsQ//REvR9qw1gdlYOP1BM3kHjndht+zuRe+1NQwli4GZckvPS9FKRnQuH2LT
RtMBaotrK750N4pvL//HCCuTLGGqV1R2DY2WOBbq3JY+BeSuhTiD2uMk/OhtqSW/
xYXTkWL9hEcIu6LNB0XPO2adLWFT7ujZcVgJ2B9aglPnymL2zdds0YxumSCR2kcV
nWnpAxydmQ9hkdAlvAgfnPf+3cUGP3UF8eRTNjhphOu/QxT1JsvNJTnZxfhzHOhd
YVcKUdL3LGs3+lgua74YzkIXbHqDY77U/XYZOnfLm++7U1pCySvDrj2mfO62/WcI
NyXK1ufn/HLUlKKs6+fNyocSlPsQGsC/Pv9WBhhQpew/cXBjfcLKqozw/ozEpKTM
vvtv2X5G1dsAelYS8rRekDU5BUvar8zizJeKJVRjuzVKdusqT4hAcEZKay1fj04P
qwjzqTposBCcz32M7O4i8ySYwoWWUv+yRE9qiAGD8tH0HxB6/Ux7rYKQY7N4pVJF
aD4jzj79XTR5CHQWYm8T+u1jGzD6GdlfDWpRziEcaxjRnkJ9S5clZD4UTBCUddcy
SEuP6/CL7adTCRrpz9sN4E4x67yrZ5GnxHfRLLK60ptu2lkeQKmZpr32gx38FePu
ElKYyWKaBlUlsquPiLGYh0q68EpaQSE/tsbVQS0GvHJ+mvEUPE4=
=QV6l
-----END PGP SIGNATURE-----

--------------67D083AF1FC715F9029B81AF
Content-Type: application/pgp-keys;
 name="0xF54EE40B0739AD6C.asc"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="0xF54EE40B0739AD6C.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
L6xzLmrJQ+3gS8oPas/9uw==
=cYXg
-----END PGP PUBLIC KEY BLOCK-----

--------------67D083AF1FC715F9029B81AF
Content-Type: application/octet-stream;
 name="0xF54EE40B0739AD6C.asc.sig"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="0xF54EE40B0739AD6C.asc.sig"

iQIzBAABCAAdFiEENSSTvrX3jmMTcq8t9U7kCwc5rWwFAl3oggAACgkQ9U7k
Cwc5rWzF1g//cDttvX7EAlt7t2fLE1zJCPCDo2ngI7S1G3+QAjhJiBmD4fQ5
kqp5VtisazrT0EJA0Bk/y62NKGlbA3u4yPMnqmC/N6c5viV3pXCvuEYjzCXA
GUHMR85BH2XrTuSeYbySEGMGFcOq19xK4oNd0GskoJKN4rg2hDWtipi5tVTS
qsRuvZfAccPvzuc+UVTMJYe1a2tn+aoPWM+HNzmYgqsabR2hyNv5f6lVmsX6
g5vqhExkyoXZ3AbujEAexDNE7WQwEzKio2Om3sg11dDCmamY/+RnHN7hMdrP
3hX21grnHZtE/STNymKEEUlJfZxHEhMLzpvqjmXr+1LFmJTY3BF2TusXWqsE
JtgBV1L41vPsf9lbU01hlkAOt4yxdlLqSHNKoU5iBeSeWJFzsmbUXb7kl+NH
zfNjHGqiVx4sVjfnTGdYqOjvpMaZUAkxIRKW5fUo3uMYW5U/m7iXESh4TpLk
B1UKMJaFVYwPjtGZQSPbuk2LJE9iCgDNNFvTFdaUrUPkWbLZ8LdhETYkfHaE
VWKOB0WYkc3MWr4jncitPQlSKpF/ZHcKFlW+Rx7N9fJapw9nNKT5tBD48Wft
86WWn5oqKjKrqrxURW4R7VNO7HnhzXJPh6vUcZnfI4h+duLwkU2GhTG7sCoa
639yeaD9dqAHBQJFk+XNpQLiLI5FaA6vntY=

--------------67D083AF1FC715F9029B81AF--

