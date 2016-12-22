X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2457" "Thursday" "22" "December" "2016" "11:26:31" "+0000" "Nicholas Prowse" "nick5990@yahoo.co.uk" "<1590235068.409323.1482405991070@mail.yahoo.com>" "71" "Re: [oss-security] Curious about the security of my router fermwair." nil nil nil "12" "2016122211:26:31" "[oss-security] Curious about the security of my router fermwair." (number mark "U       nick5990@yah Dec 22   71/2457  " thread-indent "\"Re: [oss-security] Curious about the security of my router fermwair.\"\n") "<1590235068.409323.1482405991070.ref@mail.yahoo.com>" ("<1590235068.409323.1482405991070.ref@mail.yahoo.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13709 invoked by uid 550); 22 Dec 2016 11:28:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12167 invoked from network); 22 Dec 2016 11:26:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.co.uk; s=s2048; t=1482405992; bh=/p0WQXYF4OreSbEbafXcsVBwlq4yxe/DimWqrruWlHU=; h=Date:From:Reply-To:To:Subject:References:From:Subject; b=il5kBBKBMOoREqONGmZShxSXBEO6irtI1wyaxw/bhX6C1RGA9cwP1lz0opYdzJ46xz90teFLcrq9Nvluv20PsMVqkVvlKY7V5gktu3zIAym7sHsh7vWOYshhLgScSaZJ7L+3KHgKY7XuwHLEK+gJfwgqG1Wv2uwqqCOYetHJuccZCNOfOkARsGbRBDSW40a1AQIMJcyaK+eY6nbhtVP2b9sfD/fyvpEsS9NH0So6eTAb8DFDjh3A7qJe4+rC6IgKlbmMGdpzXFRkMGDhIEqkPveOwmLVU9izVcLlbZurL2QH2HLaXjSI8HpHHB85Mk4izR8QX3Rs8odDu50vC0VC4w==
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 364866.75845.bm@omp1032.mail.ir2.yahoo.com
X-YMail-OSG: BsRF2LkVM1mmNnMl27B6115VeA8Ld9TlgY4W1rLl3cJ9GscWa2Wo3ZArpT1jG25
 r9YiQ8eWx8j.4E.7_9gw3yehT2wHK_1t_CN9vOkTMHw.le7P0FKkr9WoJfjwVmCjayFks8V3jVy2
 iQvfCAgHV0wgZcMZFHdiVxf9Xl6EoeSGK2uKYHKAGHiScq3sgC82lZjrHrcmXiyb5HLzb7hiJlae
 VSWiWyiczcB8NXJVWIV3j9msXNZzNon8RYRhjz2jYdaEqALDniDFzilkhBM7S2ZdFERpa9Abnuuh
 ZGCV3CFVtzBkgSy_rOQJ0.Ce60rZd.nFa8igAtHIQAxVFw3iB1iLc6ScI_KMXADpmkcruqm.COUs
 ttTAzu1X1waMZnxi6lM.fGrNQS13l59ooXjfNLRVJ7PeN8nCcJBlF7E3OR8rx24mOtVEGjfnS0jr
 zHXVeHFbdV91LuSK89aobLxT05ZkjyYpOeaNTQV2qXu_6nq_C0z1_kek7JxvmyvdzzTVZ2tHCK4k
 5y8qkR74Jcyjg5vRLqqAotXo3iEvSKID7u5NmlSw-
Date: Thu, 22 Dec 2016 11:26:31 +0000 (UTC)
From: Nicholas Prowse <nick5990@yahoo.co.uk>
To:  <oss-security@lists.openwall.com>
Message-ID: <1590235068.409323.1482405991070@mail.yahoo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
References: <1590235068.409323.1482405991070.ref@mail.yahoo.com>
Subject: Re: [oss-security] Curious about the security of my router
 fermwair.

Jonathan,

- My suggestion is to port scan all devices eg routers you own. Then store =
and analyse the results. Only scan devices you own since scanning other peo=
ples devices / networks may be illegal.

- A wide variety of tutorials and information about port scanning is availa=
ble online.

- I found through port scanning some of the devices I own earlier this year=
, that there were many open and filtered ports and stated services such as =
telnet, upnp, and ssdp. I found out via research that these services / prot=
ocols have had vulnerabilities in the past that are publicly known. There a=
re likely many devices with known and unknown weaknesses in circulation.

- shodan.io can tell one how many requests are being sent by specific servi=
ces / protocols. Some results were quite surprising to me.

Q: Does anyone know if there are databases / listings / websites that have =
port scan results by device? If yes, some examples would be good.

Regards,
Nick

--------------------------------------------
On Wed, 12/21/16, tapper <lancett01@googlemail.com> wrote:

 Subject: [oss-security] Curious about the security of my router fermwair.
 To: oss-security@lists.openwall.com, oss-security@lists.openwall.com
 Date: Wednesday, December 21, 2016, 11:39 AM
=20
 =C2=A0=C2=A0=C2=A0 Hi my name is
 Jonathan. I don't know if this is the write place to ask=20
 about this but here gos.
=20
 I would like to know if any one would like to have a poke
 around at the=20
 third party router firmware I use on my router called
 Gargoyle.
 Its a easy to use interface built on top of Openwrt.
=20
 I use this firmware because it has some grate plug ins and
 the user=20
 interface has grate a11y. I use a screen reader as I am
 blind and the=20
 html5 interface is easy for me to get around in.
=20
 It's homepage
 https://www.gargoyle-router.com/index.php
 GitHub
 https://github.com/ericpaulbishop/gargoyle
 forum
 https://www.gargoyle-router.com/phpbb/index.php
=20
 The devs behind Gargoyle are really nice people and have
 helped me out=20
 with bugs and made me a mod on the forum.
 What I would really like to know is just how secure is this
 firmware?
=20
 I'm not a coder. I am just interested in how safe is my
 router firmware=20
 keeping me?
=20
 If any one finds any sacurety bugs I know they will get
 fix.
=20
 Thanks and sorry about my spelling
 Jonathan=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0
 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=20
=20
