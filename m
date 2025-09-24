Received: (qmail 6018 invoked by uid 550); 24 Sep 2025 01:49:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9357 invoked from network); 24 Sep 2025 01:42:23 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OV1M/cxXiraTpU7AcQQkvFrXSnn0f474ODW7U6n/cHJ/F/i6OO5GI/RiHlp2cktL3zV0Q/1BME7Wk8zG3PGRV2r5oM+tNXn40Fn2tRolB+Jn4LWKhvlGp1eDJzuVlOcryHgdzGf30T2AxSRmkUw1WeDgtXIsHdLR8jO37t3r0j+sdungayOSu1v+CcpSjFk/+g8YtrSRcpRTtOD8jeK+7DZawIaZTJJwEyYBt0gtA3gpqdUD88wr2gfDK7tq2i3ab3XTysiqIMSQ6T+2rKdq01GBIuyVek7EFxMztKjGxT07l6vy2W6NrSQ98mkL+HxqrIgRoZxKww2yJb4KG7ktBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CSrb0N3jFIg6PSYLiTItjYJFObTJQWGEzN6zWCLPeyQ=;
 b=FVw871kEJ8hEMbWSamp+Gg97Zw3E1Q5jNIG7jPH33mqLT72GHIL2LvJb4P//HwUWPGB3q1MrzuNUgBJCGNhnpcpFZXcEmvRR/j/fwhJl2r5sRGbk+ckDhjuINeeb7ru2CZ99ZH0D4Trs9OXHnJ4p46PoyOl/5rhnKP/CQTIbRmuxyIHCMUsCVgHVnyFr94s0RkGcY9adi0EcuWYOTLCHU4Ef02Vf3hRH0ue6+XYYcCxxPNqsaDeikgu2Bn8rhmTaeeJqiUN2Ohn1F7lvylMk3HGXM0yl7PPXNdVtbba/lAdf15oIDyKX1IXZtNP/Pi0QAmrY3Vj5RU1BctCTWNJq8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wpi.edu; dmarc=pass action=none header.from=wpi.edu; dkim=pass
 header.d=wpi.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wpi.edu; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CSrb0N3jFIg6PSYLiTItjYJFObTJQWGEzN6zWCLPeyQ=;
 b=S59AOrW/HyvMqic9bxYbjK3GqNBm93u7+9JyS03+H+pGHYI0pJCEopZ0IkxlUZqNvJ3e1vs57voAjCkPrtdNNoCdw0qN0sBngl8I6RnErVrd2fn5rdk4o21IAc/SKZxSvpcF7IJkFAkW8cBr78jYi3PYrslgVIbT7kDBdzIOzdw=
From: "Adiletta, Andrew" <ajadiletta@wpi.edu>
To: Solar Designer <solar@openwall.com>, "oss-security@lists.openwall.com"
	<oss-security@lists.openwall.com>
CC: "openssh@openssh.com" <openssh@openssh.com>, "Tol, Caner" <mtol@wpi.edu>,
	"Sunar, Berk" <sunar@wpi.edu>, "Doroz, Yarkin" <ydoroz@wpi.edu>, "Todd C.
 Miller" <Todd.Miller@courtesan.com>, "pgut001@cs.auckland.ac.nz"
	<pgut001@cs.auckland.ac.nz>
Thread-Topic: [EXT] Re: [oss-security] CVE-2023-51767: a bogus CVE in OpenSSH
Thread-Index: AQHcLDkoN37T7uMo0EO4MMwSrt4+KrShjyG8
Date: Wed, 24 Sep 2025 01:42:11 +0000
Message-ID:
 <BL1PR01MB772308134BF946DF07159A05C11CA@BL1PR01MB7723.prod.exchangelabs.com>
References: <92a89d5d-e0de-c713-e7d2-83f971574eff@mindrot.org>
 <20250923032113.GA14348@openwall.com>
In-Reply-To: <20250923032113.GA14348@openwall.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wpi.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR01MB7723:EE_|CYYPR01MB8604:EE_
x-ms-office365-filtering-correlation-id: f4d2b117-626f-41a7-f54e-08ddfb0b94a1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|10070799003|366016|376014|1800799024|38070700021|8096899003|13003099007;
x-microsoft-antispam-message-info:
 =?us-ascii?Q?g5o3kNTgcHejsYOM8a9OCUE0yNDhZFiqUfpiPBGuuvmAG3NBDL0ttr5roqu/?=
 =?us-ascii?Q?07/Jd7EHDXJXY449QekcMYj/KHL7WtRrqvnaBPzwY9k8/oLZjUfODu5qWgt6?=
 =?us-ascii?Q?NkxizgSAVfOiSUKl7LCrwCGrfXtRWAUdBR80Rsub840SUBqAOCLpiDZJRnMz?=
 =?us-ascii?Q?+/Dp8CkynEUmyrA5fJtY7cp6ARmn40h3kqK8Nw7rQDcws1KqPspapBQYQ1D6?=
 =?us-ascii?Q?QW7T6MbUTjejMOMKU9gxOqL4AmdHRMEvRoH491uY0LNgql9w3iRbo3duRmo6?=
 =?us-ascii?Q?OywgykmEsGcw62NLAHh8Xs9AUZGn0/WRgHf+3khtkI3S1Snj7pi3VsvbxItb?=
 =?us-ascii?Q?S5u9k60LjUd0eBtO2Yh+VMFnl63NQfLEiLV5mzleG+tOqsT7NmI7OXf6Ulj7?=
 =?us-ascii?Q?QJ59VGQ+Df0XrmtMXOZh5OQaUZ9h0vkKxYXt4APdtOER474SNP1bKCaIxXhM?=
 =?us-ascii?Q?LErfwBnWv2qbp0t2cp0HuRSj4XxWWdLb0lL/DnyEXmjaerP9HAxCcCtI9W7U?=
 =?us-ascii?Q?Fsn+QUZlV/2tvbjt+KWnxhs0nLNK6hwwsC8z78TvQ5fRqOYTc7tMYileEb69?=
 =?us-ascii?Q?/R+0H2Yua4B0aT3gpevesin6qjUAbAnDpskGUpi3iNkPyHvVAfjGeVYl0AEs?=
 =?us-ascii?Q?+MrLjtxGMXV/1mjDWWuTIBcj/AHDMoowafRp67UvPhcbhowzpgB10NMwSYR3?=
 =?us-ascii?Q?I2Zs3SSlCS2mXYFQkazT28w6c+uYc6saVE18u+xgkQ6rD+caD0JnXUTrpTIv?=
 =?us-ascii?Q?v/xDbr0Rwy8hgs1C+4BybwdMXZkt1jPuun/cjOBsC0MVli3dVUCjjhsCgL8L?=
 =?us-ascii?Q?V5+RObvkQL/xfTCX9jgzSHOw8iwgWwWPvnhBcsB5U+5+rtLyFL+81/doCQc/?=
 =?us-ascii?Q?sK/aawAvisPEQyDkHRiY7Y0x1ESqcNG0fbSCbegOBj1zmC9WOKSaFOsxkN1J?=
 =?us-ascii?Q?FYTqRhhonK29CBwcTh7qGWlraJURGVwmc44g1tXqA97u5ppfZSyWmD/6tCoK?=
 =?us-ascii?Q?8eBoa3w/j2snuyeEqAnGaJGo+8WQFZBWMhd5qPvgDJNBycZVriBnfxyrXGij?=
 =?us-ascii?Q?heH2t50xOCH+srsNQBBjAxpfWnhQGKjqwN0hKfuzXZ/rfkm+uAIo7uv9crfc?=
 =?us-ascii?Q?02ZV2dL4EmuVo2AE+i+eyBHD5L5A2T4Sd6xabxpjD6gHUUQkUjRP7EFEdRky?=
 =?us-ascii?Q?R8pmo51HtRW2TEneBYI7nXmt5HrzSTBR1qUPNmpkN9K9XapElu/nMfmQkeZt?=
 =?us-ascii?Q?VfPhPALMgE+5eIdAiTWL0yMcXiV7Ezsg0w4Dxtp7Eby38Wtzy4kXdHJp3scS?=
 =?us-ascii?Q?WN6zb9KegxEkQCOSGuj/yWnoUaG5JayjN8CuD4m8El7Eu4Bd8gKYu6VpOTJ+?=
 =?us-ascii?Q?dEG+dOJ3I8I0iPDc7RKFo9ynkHdb7bomjhpdTBVga8tCDT6cAG0eLbAbvKPy?=
 =?us-ascii?Q?mmz+uFCqjBI=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL1PR01MB7723.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(366016)(376014)(1800799024)(38070700021)(8096899003)(13003099007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?iehiftxjMxUPwvJCE79CgwFjzj+Bd3kJXxcbWzD3jFlgPBGieuw7vsQVhX1R?=
 =?us-ascii?Q?URDadLgKHVMzVnVn0ODev4gDZV8ESxBK9+QCSkBkgd/WPd+kG5zpezGWlidk?=
 =?us-ascii?Q?UOOPc6HadeFLCD7/2bnEWHB2wUrzTUFKj4DCMQlrH9r9pdgvWDm0fWK2sTca?=
 =?us-ascii?Q?NN/j4vAzPxOp1gbvuF4QcuAd49p9bkAqSqkbYdeQId4ry5BXzmqUC0qT4j/5?=
 =?us-ascii?Q?Xf9qXAJfbivb9bggEIXmI++3jvz4SSeGWx7myWfmwevIFLFGHqwkCzZooeBr?=
 =?us-ascii?Q?Dmi+0xDWOzDiUbvpt0LXY/7mJGaCcbuoVgSVq7N0nTbmcqbNRtFQaHk5sEHb?=
 =?us-ascii?Q?iIGNqC0Aghy6v/1Tl4c45dRBq255AUFS7O2C5IPbKN5sV5N3tivb/4owyn5n?=
 =?us-ascii?Q?tZl6wks+jS8rOgP2s6UCzbSIzQHHJKSl9eDyj4NPbOgCE73FkhilOcDHFHCI?=
 =?us-ascii?Q?a5u/A6VlG/MR+LjCY1FPIhCpwtCrqwA+6ClsYBclV2gjfymns31gOKYiSuqo?=
 =?us-ascii?Q?76vE61K2JzHVzilBdNtFFjzIgQ+PsNg8wEIbUhK43kTQWc6DfgeYQ/jFD15d?=
 =?us-ascii?Q?tRd55Hig+KM33tQC/wiluM8x9gy6CKohpopHi8R/1HYbu+o4WjbcpPsPChjP?=
 =?us-ascii?Q?p7sWqYHWASH/t8KsLmGru8yFw9mfeqvbRI4N7/+6Vk99SjIkmrdFStnGeL9h?=
 =?us-ascii?Q?RR1bCt/AU7R90j45f+Ii1+Wy9/VGkyGzN88oy0dNZx2PYNv8qvIAjCIAkzC9?=
 =?us-ascii?Q?MyBpB1a+kvyrNLfSLqAAwOTSLH3Efxi/uc+HPEr8gdupk6vqeFnhe7HDzdSU?=
 =?us-ascii?Q?M9UIYXG70lgnjXffH5SGfJt+9k35YdSRQjudFZb4CDkS+p+z7tO+H0Y6W085?=
 =?us-ascii?Q?x+pf2zd2e2JL0ytbD22UtkKcW6fCdIjA4m6t12SFykOQsL9Mg2EA66RfqRJh?=
 =?us-ascii?Q?woRnTXEkObaYXxBErBYZle8K061QZZyTvmZ/OK+1N2X9bLV9Q+W3gs2n9pLX?=
 =?us-ascii?Q?RfZf8UtNzytXZPcbjt/ySU8qvYpGW3p40nEXQDaIb1Dzmvhvu+CWfvPdpYXh?=
 =?us-ascii?Q?W8JJ5RhCeZA/gQoKEGcZ3bggFyFXuJ1H7rL9AfeKJtquL3L+cjNEKtYye7aL?=
 =?us-ascii?Q?b2fH0WrLfrGv/blkAPwrmw0b3zUwsJzvoZuTMcNodOeG3ceepb0u6pYuQ7hi?=
 =?us-ascii?Q?J0xzFT1kJ1d5liXY08U+HGiTdKCYVfvk/qM3xaiYYxYxuxUG0zZJOlHikKiK?=
 =?us-ascii?Q?gH5ihMMvLTYwfbTvLZc0eJV/l0j8W1/mdeKVRBL9RJfNag1l7IUAbIFvE9B3?=
 =?us-ascii?Q?onZ7i3FGSyCQrQ+HHtEyV5fm2OG4UMhqhZLJeXNFmh75UMB5gGZ3YrdUH5rc?=
 =?us-ascii?Q?NwRQJwOo61Dw38fmnVivp5rZtnTwTbC+tn9j3dg1BSqo+ZqYuJsyMPYZNAJ0?=
 =?us-ascii?Q?vrlfeaqrhkpxn8zjz27EoIO+0Wn8OtEWo3tj4YB7CBrEXxX8OyzqZ3Jid3Ob?=
 =?us-ascii?Q?tPftQ0w/ckCliiA9PBKst5qkbg3d+Ya9VJIs5lFRuoYhZlDGxEsX8J3jdaey?=
 =?us-ascii?Q?MGxXa0O8Z4PjUSGTVgYQQbi0VCpdlsGmy91psvSjjNlVjCf9D7QYqFJ4jjSW?=
 =?us-ascii?Q?GgEphJx1dzbsGRmo2ax2I7s=3D?=
Content-Type: multipart/alternative;
	boundary="_000_BL1PR01MB772308134BF946DF07159A05C11CABL1PR01MB7723prod_"
MIME-Version: 1.0
X-OriginatorOrg: wpi.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR01MB7723.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4d2b117-626f-41a7-f54e-08ddfb0b94a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2025 01:42:11.3149
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 589c76f5-ca15-41f9-884b-55ec15a0672a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +1nsHPEFUIOos5vHHdZpJU6ksj6/g/YnHcuP6BrNuNmvbos98mLhSNtPIVu4vnS9LkaJipkXFnzOVtFl+YJ2Ew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR01MB8604
Subject: [oss-security] Re: [EXT] Re: [oss-security] CVE-2023-51767: a bogus CVE in OpenSSH

--_000_BL1PR01MB772308134BF946DF07159A05C11CABL1PR01MB7723prod_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Alexander and Team,

Thank your for the interest in our paper, and we appreciate all the feedbac=
k. We wanted to address two points - the OpenSSH CVE, and the comments from=
 the OpenSSH community about the practicality of the attack.

On CVE-2023-51767 (OpenSSH), we did not submit this CVE. Our team coordinat=
es with vendors / software mantainers before submitting CVEs to make sure t=
here is agreement. The CVE description does seem mischaracterized, as this =
is not a zero-click type vulnability as the CVE suggests, and we would not =
oppose either a revision or other action. We did work with Todd Miller on a=
 SUDO CVE (CVE-2023-42465), of which we worked with him to release a patch.

However, on the practicality, I do believe that we did not mischaracterize =
the attack in the paper, and as Alexander concisely mentioned, we are reall=
y trying to emphasize the issues with simple 0/1 flag logic that leads down=
 to sensitive execution flows. Also, great point about the exit codes, in h=
indsight that would've been a good point to address as well. But ulimately,=
 we did make syncronization an assumption as stated in the paper, citing th=
at there are other teams working on syncronization methods (https://www.use=
nix.org/conference/usenixsecurity22/presentation/aldaya).

Slight clarification on Peter's point - I agree with your point about rad-h=
ard faults protection on modern CPUs, although the threat model for Mayhem =
was that registers, as a limited resource, need to constantly swap back to =
DRAM, where register values can be corrupted via Rowhammer and the corrupte=
d values are then stored in the register when they are brought back from DR=
AM. From a hardware architectural standpoint, it might make sense to do a h=
ash check before and after register values are pushed and popped to prevent=
 this type of attack, but that was a bit out-of-scope for the paper. But al=
so, agree with your point on ECC as being a potentially unreliable mitigati=
on.

Thanks,
Andrew Adiletta

________________________________
From: Solar Designer <solar@openwall.com>
Sent: Monday, September 22, 2025 11:21 PM
To: oss-security@lists.openwall.com <oss-security@lists.openwall.com>
Cc: openssh@openssh.com <openssh@openssh.com>; Tol, Caner <mtol@wpi.edu>; A=
diletta, Andrew <ajadiletta@wpi.edu>; Sunar, Berk <sunar@wpi.edu>; Doroz, Y=
arkin <ydoroz@wpi.edu>; Todd C. Miller <Todd.Miller@courtesan.com>
Subject: [EXT] Re: [oss-security] CVE-2023-51767: a bogus CVE in OpenSSH

[You don't often get email from solar@openwall.com. Learn why this is impor=
tant at https://aka.ms/LearnAboutSenderIdentification ]

Hi Damien and the OpenSSH team,

Thank you for bringing this up, and sharing your stance on this issue so
clearly and comprehensively.

Below are some extra thoughts and questions.  I am not arguing with your
judgment here; I actually agree with you.

On Mon, Sep 22, 2025 at 02:35:08PM +1000, Damien Miller wrote:
> A few people have asked about CVE-2023-51767, which proportedly is an
> "authentication bypass via row hammer attack" in OpenSSH sshd. This
> CVE is bogus.
>
> It is based on this paper "Mayhem: Targeted Corruption of Register and
> Stack Variables" by Adiletta, et al.
> https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Farxiv=
.org%2Fpdf%2F2309.02545&data=3D05%7C02%7Cajadiletta%40wpi.edu%7Ca3c5e8fcba3=
345716db608ddfa504702%7C589c76f5ca1541f9884b55ec15a0672a%7C0%7C0%7C63894194=
4921836508%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAw=
MCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DI=
9wSLHhQOXpjCGcNeOrsHbZ5W50sWqqP4dkniRrUthk%3D&reserved=3D0<https://arxiv.or=
g/pdf/2309.02545>

FWIW, this paper was brought to oss-security back then, and I've added
CC's to this reply based on that message:

https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fwww.ope=
nwall.com%2Flists%2Foss-security%2F2023%2F12%2F21%2F9&data=3D05%7C02%7Cajad=
iletta%40wpi.edu%7Ca3c5e8fcba3345716db608ddfa504702%7C589c76f5ca1541f9884b5=
5ec15a0672a%7C0%7C0%7C638941944921860929%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU=
1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyf=
Q%3D%3D%7C0%7C%7C%7C&sdata=3DRhEnpVl2Yl43FbChVtRV0Znnj7F1%2FJQBbBpgXBy3n6I%=
3D&reserved=3D0<https://www.openwall.com/lists/oss-security/2023/12/21/9>

The only CVE I see in the paper itself is CVE-2023-42465 for sudo, which
upstream (and some distros) fixed.  Was it perhaps more serious for sudo
(actually exposed in real-world setups)?  Also CC'ing Todd for sudo.

> Firstly, we do not consider it to be the application's responsibility
> to defend against platform achitectural weaknesses. We're happy
> to adopt platform measures (e.g. toolchain defences) where it is
> possible to do so, but fundamentally it is the platform's job to
> provide a coherent execution environment. If we collectively start to
> blame applications for platform failures, then there would be little
> end to the redundant defensive checks applications would need to
> implement.

Perhaps the way is to assign one CVE per platform weakness, which
applications may then refer to as providing hardening against.  In this
case, Mayhem could get one CVE.

We similarly have shared CVEs for some protocol issues, e.g. many
projects are happily referring to one shared CVE for the HTTP/2
"MadeYouReset" DoS attack:

https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fwww.ope=
nwall.com%2Flists%2Foss-security%2F2025%2F08%2F16%2F1&data=3D05%7C02%7Cajad=
iletta%40wpi.edu%7Ca3c5e8fcba3345716db608ddfa504702%7C589c76f5ca1541f9884b5=
5ec15a0672a%7C0%7C0%7C638941944921882666%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU=
1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyf=
Q%3D%3D%7C0%7C%7C%7C&sdata=3DNy2Cqq9KiystY9gjPRTi4%2FM3ZFVRMXVbIaM47Uwr%2BH=
g%3D&reserved=3D0<https://www.openwall.com/lists/oss-security/2025/08/16/1>

Some others got their own CVEs for their instances of the problem, but
they didn't have to.

> On this attack specifically, the paper claims "We demonstrate the
> power of the findings by applying the techniques to bypass SUDO
> and SSH authentication", but they appear to have achieved this in
> only highly contrived and unrealistic circumstances where they have
> either modified the software under test or run the attack with root
> privileges to dramatically simplify the attack.
>
> Per section 6.1 - "we used signals to make sure the programs were
> synchronised". However, it is not possible to signal a privileged
> process without the attacker already holding privilege on the
> target system. An attack that requires root privileges to attack a
> root-privileged process isn't a demonstration of a vulnerability.
>
> It appears the researchers need this additional synchronisation
> to both grow the window in which the variable was available for
> attack and to arrange the physical memory layout to be in a known
> and attackable configuration (section 4.1). This too is unrealistic
> in the context of sshd, where each connection is handled by a
> separately-executed sshd process, with a completely unique address
> space. Again, fine control over the address space of the sshd process
> (such as that suggested by section 4.1) can only be exerted with
> preexisting privilege by the attacker.

This sounds convincing.

> This attack is not feasible under conditions remotely approximating
> the real world. It certainly doesn't warrant a CVSS score of 7.0 and
> in my opinion no CVE should have been issued at all for it.

CVSS base score is generally a poor indicator of overall severity of a
vulnerability as it mostly considers attack vector and risk impact, but
not risk probability.

> We communicated our concern that the researchers were overstating
> their findings when we were informed of this work, but this feedback
> was not reflected in the final paper or in the subsequent CVE.
>
> Unfortunately, at no stage of the CVE issuance process was OpenSSH
> contacted about this advisory either. This seems pretty suboptimal as
> a process.
>
> Posting this for the record and in the hope that someone will help
> get the CVE disputed.

Red Hat CNA offered help with this further in the thread, so I hope it
will be taken care of.

CVEs and process aside, I do find the Mayhem research exciting, even if
not applicable in the real world in this specific instance.

I also worry about risk of software bugs that a simple 0/1 flag may be
more susceptible to than e.g. magic values would be.  Maybe we can
identify a reasonable level of defensive programming without going for
slippery slope ("little end to the redundant defensive checks", as you
correctly write) and without slapping CVEs on applications.

I am especially concerned about process exit codes used to decide on
granting or denying access.  This is why we use 32-bit magic values in
pam_tcb communication with its helper program tcb_chkpwd (since 2002 if
not earlier).  I am concerned that upstream Linux-PAM pam_unix
communication with its unix_chkpwd relies on the exit code alone.  Not
so much because it may be an attractive target for Mayhem (I am
surprised the paper does not mention process exit codes?) but primarily
because some other system component (perhaps a library or the kernel)
may also trigger a process exit with some code (and there are only 256
to choose from).  That would be a vulnerability introduced by that other
component (and so a CVE against it), but the effect is the same.

Thanks again,

Alexander

--_000_BL1PR01MB772308134BF946DF07159A05C11CABL1PR01MB7723prod_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helve=
tica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
Hi Alexander and Team,</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helve=
tica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helve=
tica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
Thank your for the interest in our paper, and we appreciate all the feedbac=
k. We wanted to address two points - the OpenSSH CVE, and the comments from=
 the OpenSSH community about the practicality of the attack.&nbsp;</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helve=
tica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helve=
tica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
On CVE-2023-51767 (OpenSSH), we did not submit this CVE. Our team coordinat=
es with vendors / software mantainers before submitting CVEs to make sure t=
here is agreement. The CVE description does seem mischaracterized, as this =
is not a zero-click type vulnability
 as the CVE suggests, and we would not oppose either a revision or other ac=
tion. We did work with Todd Miller on a SUDO CVE (CVE-2023-42465), of which=
 we worked with him to release a patch.&nbsp;</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helve=
tica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helve=
tica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
However, on the practicality, I do believe that we did not mischaracterize =
the attack in the paper, and as Alexander concisely mentioned, we are reall=
y trying to emphasize the issues with simple 0/1 flag logic that leads down=
 to sensitive execution flows. Also,
 great point about the exit codes, in hindsight that would've been a good p=
oint to address as well. But ulimately, we did make syncronization an assum=
ption as stated in the paper, citing that there are other teams working on =
syncronization methods (<a data-ogsc=3D"" data-linkindex=3D"0" data-auth=3D=
"NotApplicable" originalsrc=3D"https://www.usenix.org/conference/usenixsecu=
rity22/presentation/aldaya" rel=3D"noopener noreferrer" title=3D"Original U=
RL: https://www.usenix.org/conference/usenixsecurity22/presentation/aldaya.=
 Click or tap if you trust this link." class=3D"OWAAutoLink" id=3D"OWA634fa=
6af-207f-ef00-9ca2-1bdf2be9828f" target=3D"_blank" href=3D"https://www.usen=
ix.org/conference/usenixsecurity22/presentation/aldaya">https://www.usenix.=
org/conference/usenixsecurity22/presentation/aldaya</a>).</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helve=
tica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helve=
tica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
Slight clarification on Peter's point - I agree with your point about rad-h=
ard faults protection on modern CPUs, although the threat model for Mayhem =
was that registers, as a limited resource, need to constantly swap back to =
DRAM, where register values can
 be corrupted via Rowhammer and the corrupted values are then stored in the=
 register when they are brought back from DRAM. From a hardware architectur=
al standpoint, it might make sense to do a hash check before and after regi=
ster values are pushed and popped
 to prevent this type of attack, but that was a bit out-of-scope for the pa=
per. But also, agree with your point on ECC as being a potentially unreliab=
le mitigation.&nbsp;</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helve=
tica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helve=
tica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
Thanks,</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helve=
tica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
Andrew Adiletta</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Solar Designer &lt;so=
lar@openwall.com&gt;<br>
<b>Sent:</b> Monday, September 22, 2025 11:21 PM<br>
<b>To:</b> oss-security@lists.openwall.com &lt;oss-security@lists.openwall.=
com&gt;<br>
<b>Cc:</b> openssh@openssh.com &lt;openssh@openssh.com&gt;; Tol, Caner &lt;=
mtol@wpi.edu&gt;; Adiletta, Andrew &lt;ajadiletta@wpi.edu&gt;; Sunar, Berk =
&lt;sunar@wpi.edu&gt;; Doroz, Yarkin &lt;ydoroz@wpi.edu&gt;; Todd C. Miller=
 &lt;Todd.Miller@courtesan.com&gt;<br>
<b>Subject:</b> [EXT] Re: [oss-security] CVE-2023-51767: a bogus CVE in Ope=
nSSH</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">[You don't often get email from solar@openwall.com=
. Learn why this is important at
<a href=3D"https://aka.ms/LearnAboutSenderIdentification">https://aka.ms/Le=
arnAboutSenderIdentification</a> ]<br>
<br>
Hi Damien and the OpenSSH team,<br>
<br>
Thank you for bringing this up, and sharing your stance on this issue so<br>
clearly and comprehensively.<br>
<br>
Below are some extra thoughts and questions.&nbsp; I am not arguing with yo=
ur<br>
judgment here; I actually agree with you.<br>
<br>
On Mon, Sep 22, 2025 at 02:35:08PM +1000, Damien Miller wrote:<br>
&gt; A few people have asked about CVE-2023-51767, which proportedly is an<=
br>
&gt; &quot;authentication bypass via row hammer attack&quot; in OpenSSH ssh=
d. This<br>
&gt; CVE is bogus.<br>
&gt;<br>
&gt; It is based on this paper &quot;Mayhem: Targeted Corruption of Registe=
r and<br>
&gt; Stack Variables&quot; by Adiletta, et al.<br>
&gt; <a href=3D"https://arxiv.org/pdf/2309.02545">https://nam11.safelinks.p=
rotection.outlook.com/?url=3Dhttps%3A%2F%2Farxiv.org%2Fpdf%2F2309.02545&amp=
;data=3D05%7C02%7Cajadiletta%40wpi.edu%7Ca3c5e8fcba3345716db608ddfa504702%7=
C589c76f5ca1541f9884b55ec15a0672a%7C0%7C0%7C638941944921836508%7CUnknown%7C=
TWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkF=
OIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&amp;sdata=3DI9wSLHhQOXpjCGcNeOrs=
HbZ5W50sWqqP4dkniRrUthk%3D&amp;reserved=3D0</a><br>
<br>
FWIW, this paper was brought to oss-security back then, and I've added<br>
CC's to this reply based on that message:<br>
<br>
<a href=3D"https://www.openwall.com/lists/oss-security/2023/12/21/9">https:=
//nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fwww.openwall.=
com%2Flists%2Foss-security%2F2023%2F12%2F21%2F9&amp;data=3D05%7C02%7Cajadil=
etta%40wpi.edu%7Ca3c5e8fcba3345716db608ddfa504702%7C589c76f5ca1541f9884b55e=
c15a0672a%7C0%7C0%7C638941944921860929%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1h=
cGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%=
3D%3D%7C0%7C%7C%7C&amp;sdata=3DRhEnpVl2Yl43FbChVtRV0Znnj7F1%2FJQBbBpgXBy3n6=
I%3D&amp;reserved=3D0</a><br>
<br>
The only CVE I see in the paper itself is CVE-2023-42465 for sudo, which<br>
upstream (and some distros) fixed.&nbsp; Was it perhaps more serious for su=
do<br>
(actually exposed in real-world setups)?&nbsp; Also CC'ing Todd for sudo.<b=
r>
<br>
&gt; Firstly, we do not consider it to be the application's responsibility<=
br>
&gt; to defend against platform achitectural weaknesses. We're happy<br>
&gt; to adopt platform measures (e.g. toolchain defences) where it is<br>
&gt; possible to do so, but fundamentally it is the platform's job to<br>
&gt; provide a coherent execution environment. If we collectively start to<=
br>
&gt; blame applications for platform failures, then there would be little<b=
r>
&gt; end to the redundant defensive checks applications would need to<br>
&gt; implement.<br>
<br>
Perhaps the way is to assign one CVE per platform weakness, which<br>
applications may then refer to as providing hardening against.&nbsp; In thi=
s<br>
case, Mayhem could get one CVE.<br>
<br>
We similarly have shared CVEs for some protocol issues, e.g. many<br>
projects are happily referring to one shared CVE for the HTTP/2<br>
&quot;MadeYouReset&quot; DoS attack:<br>
<br>
<a href=3D"https://www.openwall.com/lists/oss-security/2025/08/16/1">https:=
//nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fwww.openwall.=
com%2Flists%2Foss-security%2F2025%2F08%2F16%2F1&amp;data=3D05%7C02%7Cajadil=
etta%40wpi.edu%7Ca3c5e8fcba3345716db608ddfa504702%7C589c76f5ca1541f9884b55e=
c15a0672a%7C0%7C0%7C638941944921882666%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1h=
cGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%=
3D%3D%7C0%7C%7C%7C&amp;sdata=3DNy2Cqq9KiystY9gjPRTi4%2FM3ZFVRMXVbIaM47Uwr%2=
BHg%3D&amp;reserved=3D0</a><br>
<br>
Some others got their own CVEs for their instances of the problem, but<br>
they didn't have to.<br>
<br>
&gt; On this attack specifically, the paper claims &quot;We demonstrate the=
<br>
&gt; power of the findings by applying the techniques to bypass SUDO<br>
&gt; and SSH authentication&quot;, but they appear to have achieved this in=
<br>
&gt; only highly contrived and unrealistic circumstances where they have<br>
&gt; either modified the software under test or run the attack with root<br>
&gt; privileges to dramatically simplify the attack.<br>
&gt;<br>
&gt; Per section 6.1 - &quot;we used signals to make sure the programs were=
<br>
&gt; synchronised&quot;. However, it is not possible to signal a privileged=
<br>
&gt; process without the attacker already holding privilege on the<br>
&gt; target system. An attack that requires root privileges to attack a<br>
&gt; root-privileged process isn't a demonstration of a vulnerability.<br>
&gt;<br>
&gt; It appears the researchers need this additional synchronisation<br>
&gt; to both grow the window in which the variable was available for<br>
&gt; attack and to arrange the physical memory layout to be in a known<br>
&gt; and attackable configuration (section 4.1). This too is unrealistic<br>
&gt; in the context of sshd, where each connection is handled by a<br>
&gt; separately-executed sshd process, with a completely unique address<br>
&gt; space. Again, fine control over the address space of the sshd process<=
br>
&gt; (such as that suggested by section 4.1) can only be exerted with<br>
&gt; preexisting privilege by the attacker.<br>
<br>
This sounds convincing.<br>
<br>
&gt; This attack is not feasible under conditions remotely approximating<br>
&gt; the real world. It certainly doesn't warrant a CVSS score of 7.0 and<b=
r>
&gt; in my opinion no CVE should have been issued at all for it.<br>
<br>
CVSS base score is generally a poor indicator of overall severity of a<br>
vulnerability as it mostly considers attack vector and risk impact, but<br>
not risk probability.<br>
<br>
&gt; We communicated our concern that the researchers were overstating<br>
&gt; their findings when we were informed of this work, but this feedback<b=
r>
&gt; was not reflected in the final paper or in the subsequent CVE.<br>
&gt;<br>
&gt; Unfortunately, at no stage of the CVE issuance process was OpenSSH<br>
&gt; contacted about this advisory either. This seems pretty suboptimal as<=
br>
&gt; a process.<br>
&gt;<br>
&gt; Posting this for the record and in the hope that someone will help<br>
&gt; get the CVE disputed.<br>
<br>
Red Hat CNA offered help with this further in the thread, so I hope it<br>
will be taken care of.<br>
<br>
CVEs and process aside, I do find the Mayhem research exciting, even if<br>
not applicable in the real world in this specific instance.<br>
<br>
I also worry about risk of software bugs that a simple 0/1 flag may be<br>
more susceptible to than e.g. magic values would be.&nbsp; Maybe we can<br>
identify a reasonable level of defensive programming without going for<br>
slippery slope (&quot;little end to the redundant defensive checks&quot;, a=
s you<br>
correctly write) and without slapping CVEs on applications.<br>
<br>
I am especially concerned about process exit codes used to decide on<br>
granting or denying access.&nbsp; This is why we use 32-bit magic values in=
<br>
pam_tcb communication with its helper program tcb_chkpwd (since 2002 if<br>
not earlier).&nbsp; I am concerned that upstream Linux-PAM pam_unix<br>
communication with its unix_chkpwd relies on the exit code alone.&nbsp; Not=
<br>
so much because it may be an attractive target for Mayhem (I am<br>
surprised the paper does not mention process exit codes?) but primarily<br>
because some other system component (perhaps a library or the kernel)<br>
may also trigger a process exit with some code (and there are only 256<br>
to choose from).&nbsp; That would be a vulnerability introduced by that oth=
er<br>
component (and so a CVE against it), but the effect is the same.<br>
<br>
Thanks again,<br>
<br>
Alexander<br>
</div>
</span></font></div>
</body>
</html>

--_000_BL1PR01MB772308134BF946DF07159A05C11CABL1PR01MB7723prod_--
