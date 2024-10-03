Received: (qmail 13769 invoked by uid 550); 3 Oct 2024 17:54:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13734 invoked from network); 3 Oct 2024 17:54:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1727978057; bh=kVj8f0bqkuHia9xWqmsdrLqyPrCq3kQE1315LWTWuu8=;
	h=To:From:Subject:Date:Message-id:Content-Type:MIME-Version;
	b=w2heKvm/1jt4HadzgWLcvRl2HedJSFtyQoFBTMa3ngQUb7FAwpcuaRaf/xHXuoeeI
	 ZT182IyeI8KftKqNnYDUmDXLDR9IRCP3fAFY8X7XUEjQistVfets31B2UbWK0dATMM
	 6F68vkO1t68VCgtS4jo8N2jrkNpopWNwVRQcmhL3cESRyAOzY0xl7UdMBmXcQ9SZdT
	 Lyw3/jy0ukpsF127iOojTvNrYFEsayroPZoSD5CfZBIHzE4Wv9GooJIQFaxGmfxIxw
	 76iewNxgym5b8P7/7ZsygMIEKo21wrLtXmqsEr8hRYZOnJK/Go9a73ob9VEyup5g8m
	 cfWakSQLEYRuA==
To: oss-security@lists.openwall.com
From: Larry Cashdollar <larry0@me.com>
Date: Thu, 3 Oct 2024 17:54:15 +0000 (UTC)
X-Mailer: iCloud MailClientcurrent MailServer2416B19.10000-master-0-afff60057808
Message-id: <175c118b-0771-425c-bc9d-d7da8ec5f40b@me.com>
Content-Type: multipart/alternative; boundary=Apple-Webmail-42--97a49891-170c-4aba-a901-fce4d84a296c
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: _WVc7sgeq47ujQ3_2whoICSD0x1zfDvS
X-Proofpoint-GUID: _WVc7sgeq47ujQ3_2whoICSD0x1zfDvS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-03_15,2024-10-03_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 mlxlogscore=999
 adultscore=0 clxscore=1011 bulkscore=0 mlxscore=0 spamscore=0
 suspectscore=0 phishscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2308100000 definitions=main-2410030128
Subject: [oss-security] cups-browsed vulnerable to DDoS amplification attack

--Apple-Webmail-42--97a49891-170c-4aba-a901-fce4d84a296c
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
    charset=utf-8;
    format=flowed

Hello, oss-security, So while reading Evilsocket's blog post I noticed an a=
ttack vector that was not discussed DDoS. The problem arises when an attack=
er sends a crafted packet specifying the address of a target as a printer t=
o be added. For each packet sent, the vulnerable CUPS server will generate =
a larger and partially attacker-controlled IPP/HTTP request directed at the=
 specified target. As a result, not only is the target affected, but the ho=
st of the CUPS server also becomes a victim, as the attack consumes its net=
work bandwidth and CPU resources. A simple script can be used to send the m=
alicious UDP packet to a vulnerable instance of CUPS. The crafted payload d=
irects CUPS to send an IPP/HTTP request to the target and port specified by=
 the attacker. The vulnerability appears when cups-browsed attempts to fetc=
h the URI specified to download the IPP attributes file. This PPD file URI =
is somewhat arbitrary and can be modified by the attacker. In testing, we f=
ound this URI payload can be padded out to 989 bytes. This padding will be =
included twice in the IPP/HTTP request: once in the HTTP headers, and again=
 in the POST data that will be directed at the targeted system. By using th=
is padding technique, attackers could further exacerbate the impact of CUPS=
-supported DDoS attacks by consuming additional bandwidth and resources on =
the targeted networks and systems. The attacking system only needs to send =
a single packet to a vulnerable and exposed CUPS service with internet conn=
ectivity to cause the system running CUPS to begin the attack. It seems upd=
ating to the latest cups version mitigates this issue for most linux system=
s. I've requested a CVE ID to be able to discern between the RCE and the Do=
S vulnerability. Attack requests appear like the following in server logs: =
x.x.x.x- - [03/Oct/2024:09:58:01 +0000] "POST /printers/ HTTP/1.1" 404 462 =
"-" "CUPS/2.4.2 (Linux 6.1.0-25-amd64; x86_64) IPP/2.0" Or x.x.x.x - - [03/=
Oct/2024:09:58:01 +0000] "POST /classes/ HTTP/1.1" 404 462 "-" "CUPS/2.4.2 =
(Linux 6.1.0-25-amd64; x86_64) IPP/2.0" Additional details can be found her=
e: https://www.akamai.com/blog/security-research/october-cups-ddos-threat T=
hanks, Larry Cashdollar=

--Apple-Webmail-42--97a49891-170c-4aba-a901-fce4d84a296c
Content-Type: multipart/related;
    type="text/html";
    boundary=Apple-Webmail-86--97a49891-170c-4aba-a901-fce4d84a296c


--Apple-Webmail-86--97a49891-170c-4aba-a901-fce4d84a296c
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
    charset=utf-8;

<html><body><div style=3D"font-size: 16px; font-style: normal; font-variant=
-caps: normal; font-weight: 400; letter-spacing: normal; text-align: start;=
 text-indent: 0px; text-transform: none; white-space: normal; word-spacing:=
 0px; -webkit-text-stroke-width: 0px; text-decoration: none; box-sizing: bo=
rder-box; clear: none; float: left; width: 671px; color: rgb(38, 42, 46); f=
ont-family: Roboto, Helvetica, Arial, sans-serif; font-variant-ligatures: n=
ormal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); text-de=
coration-thickness: initial; text-decoration-style: initial; text-decoratio=
n-color: initial;" class=3D"text aem-GridColumn aem-GridColumn--default--12=
"><div style=3D"box-sizing: border-box;" data-cmp-data-layer=3D"{&quot;text=
-49add82f97&quot;:{&quot;@type&quot;:&quot;akamai/components/text&quot;,&qu=
ot;repo:modifyDate&quot;:&quot;2024-10-01T20:26:08Z&quot;,&quot;xdm:text&qu=
ot;:&quot;<p>While reviewing the technical write-up about the vulnerabiliti=
es, we discovered that another attack vector was not discussed: DDoS. DDoS =
continues to be a viable attack vector used to harass and disrupt victims a=
cross the internet, from major industries and governments to small content =
creators, online shops, and gamers. Although the original analysis focused =
on the RCE, which could have a more severe outcome, DDoS amplification is a=
lso easily abused in this case.</p>\r\n<p>The problem arises when an attack=
er sends a crafted packet specifying the address of a target as a printer t=
o be added. For each packet sent, the vulnerable CUPS server will generate =
a larger and partially attacker-controlled IPP/HTTP request directed at the=
 specified target. <b>As a result, not only is the target affected, but the=
 host of the CUPS server also becomes a victim, as the attack consumes its =
network bandwidth and CPU resources</b>.</p>\r\n&quot;}}" class=3D"cmp-text=
"></div></div><div>Hello, oss-security,<br></div><div><br></div><div>So whi=
le reading Evilsocket's blog post I noticed an&nbsp;attack vector that was =
not discussed DDoS. &nbsp;The problem arises when an attacker sends a craft=
ed packet specifying the address of a target as a printer to be added. For =
each packet sent, the vulnerable CUPS server will generate a larger and par=
tially attacker-controlled IPP/HTTP request directed at the specified targe=
t.&nbsp;As a result, not only is the target affected, but the host of the C=
UPS server also becomes a victim, as the attack consumes its network bandwi=
dth and CPU resources.<br></div><div>A simple script can be used to send th=
e malicious UDP packet to a vulnerable instance of CUPS. The crafted payloa=
d directs CUPS to send an IPP/HTTP request to the target and port specified=
 by the attacker.&nbsp;The vulnerability appears when&nbsp;cups-browsed&nbs=
p;attempts to fetch the URI specified to download the IPP attributes file.<=
br></div><div><div><br></div></div><div>This PPD file URI is somewhat arbit=
rary and can be modified by the attacker. In testing, we found this URI pay=
load can be padded out to 989 bytes. This padding will be included twice in=
 the IPP/HTTP request: once in the HTTP headers, and again in the POST data=
 that will be directed at the targeted system.<br></div><div><div><br></div=
></div><div>By using this padding technique, attackers could further exacer=
bate the impact of CUPS-supported DDoS attacks by consuming additional band=
width and resources on the targeted networks and systems.<br></div><div><di=
v><br></div></div><div>The attacking system only needs to send a single pac=
ket to a vulnerable and exposed CUPS service with internet connectivity to =
cause the system running CUPS to begin the attack.<br></div><div><br></div>=
<div>It seems updating to the latest cups version mitigates this issue for =
most linux systems. &nbsp;I've requested a CVE ID to be able to discern bet=
ween the RCE and the DoS vulnerability.<br></div><div><br></div><div>Attack=
 requests appear like the following in server logs:</div><div><br></div><di=
v>x.x.x.x- - [03/Oct/2024:09:58:01 +0000] "POST /printers/ HTTP/1.1" 404 46=
2 "-" "CUPS/2.4.2 (Linux 6.1.0-25-amd64; x86_64) IPP/2.0"<br></div><div>Or&=
nbsp;<br></div><div>x.x.x.x - - [03/Oct/2024:09:58:01 +0000] "POST /classes=
/ HTTP/1.1" 404 462 "-" "CUPS/2.4.2 (Linux 6.1.0-25-amd64; x86_64) IPP/2.0"=
<br></div><div><br></div><div>Additional details can be found here:&nbsp;<a=
 rel=3D"noopener noreferrer" href=3D"https://www.akamai.com/blog/security-r=
esearch/october-cups-ddos-threat">https://www.akamai.com/blog/security-rese=
arch/october-cups-ddos-threat</a><br></div><div><br></div><div><br></div><d=
iv>Thanks,<br></div><div>Larry Cashdollar</div></body></html>=

--Apple-Webmail-86--97a49891-170c-4aba-a901-fce4d84a296c--

--Apple-Webmail-42--97a49891-170c-4aba-a901-fce4d84a296c--

