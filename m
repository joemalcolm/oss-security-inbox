Received: (qmail 27720 invoked by uid 550); 28 Sep 2025 15:39:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28009 invoked from network); 28 Sep 2025 15:22:57 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WGN9Ef+EGJln7W89E8oK5VWPXD4kcrBk0PBF0kmts3TQX+5m4G/yNFfKakxWgweuxgNEFCgTatpuD6I4jSeFG/72+rLe5tWrUTfimb9yROU4wuk+WkVNu8jl1kgC6AcRza9SCtjX00q4yYgQokPtfGMfmpNAqOeJj3fyAwBPu3Tl7+odMHj++LaiZdBCatZhUtveFk/OngQTCPuR5oE1rWOpmhN9khjLJ/bzgCf4OhqUa4b45+k9vDMAdMkfJXTFPKfrNbYERqqEI3DqcjP/grz3hLAc2Exaa2Rtou57yDsgic4jFn22zkRzDkJQTtiHQy2iI1+9DsBOgevtQP8TvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W57X1LIM6Mf8yUWC8tUfLmRjpuaZC40yuccRias4e78=;
 b=BsaJtugPudt+WOpavxKdpozV89l6Ofx1GQQjUlSmHx6NSRNyP1WeXsufPqm0ZglkXA3+Ducyh5H4XrPjCbZwhnkIkyz5xJrXa8fy3PecCniv83aOGbwG1n0y/4FYY5wgXRY+epBPq9u051c/VIoLPiYBLs5Oce3kTbYC5+0Qz0Z1a5yZYYOG00H2cHA3pyW3D6FWYuzommQydatZFtCtKV4pJqA1ikn7S45z+DlygweiNqZ9Pg9ARS1onDJ4FzkBqeuXoPtQV1hXaGtNosbyDgeMmT7f5mY3eySymgOcXbbeQLfSSNUZIDRN5tPP+fueHoNsrFfI/POeWZd96iSPKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wpi.edu; dmarc=pass action=none header.from=wpi.edu; dkim=pass
 header.d=wpi.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wpi.edu; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W57X1LIM6Mf8yUWC8tUfLmRjpuaZC40yuccRias4e78=;
 b=bJWdaWuoC3n0GWMfCjLZE7ahSNysn/tynnaYru7mcOurMUKUMFlRsWKW7MLCM22Vm+/IEdJUFmoMYl1XamCcELEMqe7nXvLK5a1Xj9H5bsnedrfqqpZsUiO/VlMhZMiLBSJIaMBVTPECE7G0PlyBSAzSaZCTy12gd7JOUrwRRc4=
From: "Adiletta, Andrew" <ajadiletta@wpi.edu>
To: Theo de Raadt <deraadt@openbsd.org>, Damien Miller <djm@mindrot.org>
CC: Solar Designer <solar@openwall.com>, "oss-security@lists.openwall.com"
	<oss-security@lists.openwall.com>, "openssh@openssh.com"
	<openssh@openssh.com>, "Tol, Caner" <mtol@wpi.edu>, "Sunar, Berk"
	<sunar@wpi.edu>, "Doroz, Yarkin" <ydoroz@wpi.edu>, "Todd C. Miller"
	<Todd.Miller@courtesan.com>, "pgut001@cs.auckland.ac.nz"
	<pgut001@cs.auckland.ac.nz>
Thread-Topic: [EXT] Re: [oss-security] CVE-2023-51767: a bogus CVE in OpenSSH
Thread-Index: AQHcLDkoN37T7uMo0EO4MMwSrt4+KrSh0RIPgAbaUACAABLdHQ==
Date: Sun, 28 Sep 2025 15:22:43 +0000
Message-ID:
 <BL1PR01MB772375CA93AF5608280A224FC118A@BL1PR01MB7723.prod.exchangelabs.com>
References: <92a89d5d-e0de-c713-e7d2-83f971574eff@mindrot.org>
 <20250923032113.GA14348@openwall.com> <
 BL1PR01MB772308134BF946DF07159A05C11CA%BL1PR01MB7723.prod.exchangelabs.com@mailhub.eait.uq.edu.au>
 <c5d66517-f422-1fe7-03a0-d79cf4af1fbf@mindrot.org>
 <76091.1759068746@cvs.openbsd.org>
In-Reply-To: <76091.1759068746@cvs.openbsd.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-reactions: allow
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wpi.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR01MB7723:EE_|DS1PR01MB8941:EE_
x-ms-office365-filtering-correlation-id: fcb52fdc-f571-4c54-1830-08ddfea2df43
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|366016|376014|1800799024|38070700021|13003099007|8096899003|7053199007;
x-microsoft-antispam-message-info:
 =?Windows-1252?Q?aFs3Oie3Q8GJ7gIORpWZJYTlyFTTKANHUXZPLmMs6gQSn+mCu4aKCP4y?=
 =?Windows-1252?Q?w13+yBunPdMey+ScIPdHGPMpZHJVdkrMtyX6lGqTIRP8wVXeXIQ9MH3m?=
 =?Windows-1252?Q?2rpKUr/dMI64bjP/yrPu0LIfuEvspr2bdu0QzNmW6A5cWien0papoF0i?=
 =?Windows-1252?Q?2wVi5SEcDFdoI4NqX47sr4CtlhiWIMKAZHeR1PCgaxd6VEHrU6AFGpyl?=
 =?Windows-1252?Q?wYLR5xgG94AJqMi2bVEHjV7VwHZAUybmL+NHzLbLoAEumgJHD2a0XtI1?=
 =?Windows-1252?Q?WiIML3/oDhLhkIZ1Grh0stOhc1KHhp5GRtJbbRQ7AnEcsoHrQBN66eGi?=
 =?Windows-1252?Q?AOWBVFBm45r/UjOa2fI0yhpvK6TKx1o/ruIuttXCoI4s/XmEOd8pT7N+?=
 =?Windows-1252?Q?vPDBQVPIzpP3q1d2pB8/WZHP/twvuFDX3J8nu8FXBM8q5FjiiBF7S8T8?=
 =?Windows-1252?Q?Y5qS3I0hWHHO5QrP8NrRge19wrq/7IXhU7NAJe9Qd2nW3tHJJwsQSJFh?=
 =?Windows-1252?Q?64KdTD7A4Mk3sr+vqhKtzGvcqcovJMCzJoGtvhDp2WmDhtbVztBktQJo?=
 =?Windows-1252?Q?qn0sQUMUL/0sNqo8hCnFeoY2Cqz9bxtERoi+cSCt4MVc998Xml302HdT?=
 =?Windows-1252?Q?LRRznXqysUvjSlOHP0YfA9fU+1DA1D90Hb4t3pydfduWT+FRvKuYNiKf?=
 =?Windows-1252?Q?RCBtQgeW/NLOck0vdc4Vq8iVfoAu14Rjd2NKSvhHToZtvWtr7UlMikr2?=
 =?Windows-1252?Q?ONkUbSoFQlMqw9DP6g2Wh6ALy0d3nNRLbb624L0z6JN2zbDftIYKsO0k?=
 =?Windows-1252?Q?i7942eiiAzIR7wipNCY5YVIfWETCzCm0LEiCO4786kkeon7BJaC/I1Ck?=
 =?Windows-1252?Q?noWEPn8LIizNOZ998j87SGEI1LYstY/28ZB/I5VoVYJMN+XMRqp53g2f?=
 =?Windows-1252?Q?3T0s4t73RCjEifEJmUsn1kFMaEvO5Yu/CDoN09O1oXw6ZQIE7vfGv3bc?=
 =?Windows-1252?Q?vgE66DI+/OSQGuTde8YjL1wxxxKguDUiC5IUeRDcvII7D+tCMFsX29YK?=
 =?Windows-1252?Q?OFLdAlTiuiMcM69F44Wmw1uLK/de4iDHkdwwTJgu2MJHrnlRaIdkpcwH?=
 =?Windows-1252?Q?qUu8s6IW8mgilrATt+WUZdrDKVuNYAQ+i6NrQHQSI7nKi6fWhDwMaRlE?=
 =?Windows-1252?Q?drZLWvriI+l99pD7CayyAYVGUDUmTTSbtuiMh2donYz/aEAbc6M0MQk3?=
 =?Windows-1252?Q?uGP5mZi46BwKwEii7i5o2U+ejdbVScA4r0EeoHqF3Iq5VzFFECrqKFzF?=
 =?Windows-1252?Q?XczcP5ZZX0+zQT5iRkpvQf8yWQ2wxGRLGz+kjzphz75oBlXXyW1NlY7s?=
 =?Windows-1252?Q?AW5UY5J513FD9yJDpjwzEHitl/UEkOXHQCI7/WwJEzg8bMdBrV73LIP6?=
 =?Windows-1252?Q?ROtZ71WrBP6QjTMQET409e/1I++tJcmBdFQk1HjRUTdIzs9Gg7BTJO1R?=
 =?Windows-1252?Q?444tYd3H+UotPqOaM7GmidkJm/bHL2ETijVpoVWE9123FPRioO3Mj1on?=
 =?Windows-1252?Q?SMZm+9x+joCe7hKOu6CcS2pxseaxgusASPW5rrEpzvOGx/HDD6VrWISA?=
 =?Windows-1252?Q?op2Pocbobjxu+EpdxsR/DehE?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL1PR01MB7723.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(13003099007)(8096899003)(7053199007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?Windows-1252?Q?gXutpzJcHXUC7APcUtW94kyXD9spTla5NNXR/TNsfO1Q/6wSSQYP0J24?=
 =?Windows-1252?Q?9uK8FJbLJJk5A+G/3ITiJoQgDaTZ7qUqX2G3AJG/aHC7RPOhrT2AnwDX?=
 =?Windows-1252?Q?B/N7W3baqTiQIHz9rVksWYup3aR9+I/PSYVyq+mTJeIeXSho3kZlgskt?=
 =?Windows-1252?Q?/KYM4kM0qqPow/vvLFD9dtJadZmy47iOopifiDsnMptdYhYqjHOLAZZw?=
 =?Windows-1252?Q?ij73gp7FEKjFvGYtYG+xLZtI3ADVKIOyRO2vw1pKgG8r9btBBfSQPxwZ?=
 =?Windows-1252?Q?r2mpKnAFZvGDcjLfMTYZUNit0lwRk35Ark8IyFArkEnI6djoKtqsYdky?=
 =?Windows-1252?Q?1e0oAMpRaBWJxNGcnOJFM+CpI1N1tcdTDVqLtfzVoNw51kfvNNQEjlVV?=
 =?Windows-1252?Q?/1DwYMXVR6olJTlZpDC08av9H1PNeg+BxZmKJRoryPyBNHhuXNj792y4?=
 =?Windows-1252?Q?aseePVmELz2BP35rKsJiaysGVeVrUpI79Z5ejBuCA8oM+gSSlaqTO6DP?=
 =?Windows-1252?Q?RSQCnLVnjnny60aUqexC1l6BpBqaTTI4dRJa6omLDTZRhnYP5SqkAb5N?=
 =?Windows-1252?Q?4Rso17J3lmexA8f1c3J3lfL4boWYjXytDj/jIrntgaQnJGDRJ9y7QzZz?=
 =?Windows-1252?Q?WNgFS5lM+Ggm2AH9il609Bf1JksZFHE9xuncD4cqx5zhKyVpfc5KfM6v?=
 =?Windows-1252?Q?eGOsthYUau+4SStiwYY4NFKxOCVRVRImDI3EjN1k1Ub0JczPCplTUeEm?=
 =?Windows-1252?Q?3J3xjmKJG5chxgjmQoa1NeyyMBzn0Q4ve7NF4G+t4cvOysOkByymLC7q?=
 =?Windows-1252?Q?6C6uhCe/geY0lyeywY8ZF41tArb9/9fOZyMPWiksqg5cWXHERoJ7gUKc?=
 =?Windows-1252?Q?foPNTknFDohRhdrCxLx6gu2TtlndfY9AzpNQrJO0RKHRrBfidTlOU2Q/?=
 =?Windows-1252?Q?esHF0ykd+YPdHsQ2yW0MH6wBZH++aaL+2J06/uv+qDfnpy0GCizeJ8NM?=
 =?Windows-1252?Q?XgtpL6jaF9MqQ69TnjWpgIntNKgv/Z+JlnyjzaBYUGHsaavFnokye9VO?=
 =?Windows-1252?Q?BPsJ7GQ4yHvlRugbDfz75aPvPMzQr7r37YEd4iZzLNkxExNs++tvyEqR?=
 =?Windows-1252?Q?Q6ojKTe76Dnow+ccDMqJVSWrsWOG/GmmVXEJVl085aSqVE+9RBHf+NFw?=
 =?Windows-1252?Q?Io1h36f8kCfEmVgZzAOuwLp/8angUE5pVLJydHnLQHtdUd/F2iunJZk7?=
 =?Windows-1252?Q?Ifbi8W0b7DEJbWUL4ueeDloyUkBXTv2LSmFyki+e6jrHZC3QJjwWL21Q?=
 =?Windows-1252?Q?wVbDf6St70JMkvH/j2uL3T9Bi1DVjKmHcizX9iHQHA8xALPkj0t5axRD?=
 =?Windows-1252?Q?fgKn27M+rT0v8/SlknILOUGmpNytAlHP9JEil/CM22gZOM5vFbaZjrWx?=
 =?Windows-1252?Q?kLnjtMn0GV3/Tt18tqkWwTAsGjUCdjQoxkswR5/DR8Xwbj+rpTGSww83?=
 =?Windows-1252?Q?Uq7JJ1ZCig5hBQmOBV1/Bvc0CTWF1uZeug1MBF/z6KqSMJ/Nq7cp8dPl?=
 =?Windows-1252?Q?vgsE/WFyglQDckPFr9lhcnWDLP/aJmceQ/lG58wMfi4DETsmSMG+hpqy?=
 =?Windows-1252?Q?dtx9XaN6+5joY0/zvz2OUrkL7IVl8WlmP04HoUC22LMYGOQyPQUJQf6D?=
 =?Windows-1252?Q?tiz+djCvM30E3aRYRvV/NjJY6lJToIC3Y2/SDiwVpTy/NurwoShIAA?=
 =?Windows-1252?Q?=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_BL1PR01MB772375CA93AF5608280A224FC118ABL1PR01MB7723prod_"
MIME-Version: 1.0
X-OriginatorOrg: wpi.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR01MB7723.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fcb52fdc-f571-4c54-1830-08ddfea2df43
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Sep 2025 15:22:44.0026
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 589c76f5-ca15-41f9-884b-55ec15a0672a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LHK4uNpV2hTETY/pzF2rKKKsQDsC8pnUnKUSD9ZI5DQ4AyWLB5eOSPvZmn2W828Pd8p3RtrTmcmKKpfYrqO4hA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS1PR01MB8941
Subject: [oss-security] Re: [EXT] Re: [oss-security] CVE-2023-51767: a bogus CVE in OpenSSH

--_000_BL1PR01MB772375CA93AF5608280A224FC118ABL1PR01MB7723prod_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Theo,

Even after two years we stand behind our paper and the contributions as out=
lined. There is nothing more natural for any vulnerability researcher to ev=
aluate the most widely used products. If we had doubts about the claim or a=
ny of the POCs, we would have simply not included them in the paper.

As far as SSH is concerned there are ways to handle synchronization (we out=
line them in the paper). The POC concept we present in the paper should be =
acceptable to anybody who is fluent in the Rowhammer/microarch attack liter=
ature. There are numerous results where the target is slowed down to solve =
synchronization. We don=92t brush aside or hide the synchronization issue i=
n the paper but discuss it explicitly.

As for the change in the abstract that Damien suggested, we actually were r=
eady to implement it. But then you interfered and said it=92s not going mak=
e a difference.

Regardless, it looks like we should actually clarify the SSH case further w=
ith a couple of sentences in the abstract and update the arXiv version.


________________________________
From: Theo de Raadt <deraadt@openbsd.org>
Sent: Sunday, September 28, 2025 10:12:26 AM
To: Damien Miller <djm@mindrot.org>
Cc: Adiletta, Andrew <ajadiletta@wpi.edu>; Solar Designer <solar@openwall.c=
om>; oss-security@lists.openwall.com <oss-security@lists.openwall.com>; ope=
nssh@openssh.com <openssh@openssh.com>; Tol, Caner <mtol@wpi.edu>; Sunar, B=
erk <sunar@wpi.edu>; Doroz, Yarkin <ydoroz@wpi.edu>; Todd C. Miller <Todd.M=
iller@courtesan.com>; pgut001@cs.auckland.ac.nz <pgut001@cs.auckland.ac.nz>
Subject: Re: [EXT] Re: [oss-security] CVE-2023-51767: a bogus CVE in OpenSSH

[Some people who received this message don't often get email from deraadt@o=
penbsd.org. Learn why this is important at https://aka.ms/LearnAboutSenderI=
dentification ]

Damien Miller <djm@mindrot.org> wrote:

> On Wed, 24 Sep 2025, Adiletta, Andrew wrote:
>
> > Hi Alexander and Team,
> >
> > Thank your for the interest in our paper, and we appreciate all the
> > feedback. We wanted to address two points - the OpenSSH CVE, and the
> > comments from the OpenSSH community about the practicality of the attac=
k.
> >
> > On CVE-2023-51767 (OpenSSH), we did not submit this CVE. Our team
> > coordinates with vendors / software mantainers before submitting CVEs to
> > make sure there is agreement. The CVE description does seem
> > mischaracterized, as this is not a zero-click type vulnability as the C=
VE
> > suggests, and we would not oppose either a revision or other action. We=
 did
> > work with Todd Miller on a SUDO CVE (CVE-2023-42465), of which we worked
> > with him to release a patch.
> >
> > However, on the practicality, I do believe that we did not mischaracter=
ize
> > the attack in the paper, and as Alexander concisely mentioned, we are r=
eally
> > trying to emphasize the issues with simple 0/1 flag logic that leads do=
wn to
> > sensitive execution flows.
>
> Sure, but my criticism at the time was that your paper claimed in
> the abstract to have successfully attacked OpenSSH to bypass
> authentication but what was actually attacked was a modified version
> of sshd run in a highly unrealistic and synchronised setting.
>
> IMO this context matters and doesn't detract from your findings.

Andrew, I think you should answer Damien's comment.

I'm a bit more cynical, and think this is very close to open source
community engagement malpractice -- where you picked projects
specifically to increase readership of your paper, and went through the
effort to construct synthetic justification, and I think you should
consider issuing an official apology and/or official retraction of those
statements about OpenSSH being vulnerable.  There you have it, that's my
opinion on this.




--_000_BL1PR01MB772375CA93AF5608280A224FC118ABL1PR01MB7723prod_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body>
<div dir=3D"auto" style=3D"font-family: Aptos; font-size: 16px; color: rgb(=
0, 0, 0);">
<span style=3D"background-color: rgb(255, 255, 255);">Theo,</span></div>
<div dir=3D"auto" style=3D"text-align: left; text-indent: 0px; background-c=
olor: rgb(255, 255, 255); font-family: Aptos; font-size: 16px; color: rgb(0=
, 0, 0);">
<br>
</div>
<div dir=3D"auto" style=3D"text-align: left; text-indent: 0px; background-c=
olor: rgb(255, 255, 255); font-family: Aptos; font-size: 16px; color: rgb(0=
, 0, 0);">
Even after two years we stand behind our paper and the contributions as out=
lined. There is nothing more natural for any vulnerability researcher to ev=
aluate the most widely used products.&nbsp;If we had doubts about the claim=
 or any of the POCs, we would have simply
 not included them in the paper.&nbsp;</div>
<div dir=3D"auto" style=3D"text-align: left; text-indent: 0px; background-c=
olor: rgb(255, 255, 255); font-family: Aptos; font-size: 16px; color: rgb(0=
, 0, 0);">
<br>
</div>
<div dir=3D"auto" style=3D"text-align: left; text-indent: 0px; background-c=
olor: rgb(255, 255, 255); font-family: Aptos; font-size: 16px; color: rgb(0=
, 0, 0);">
As far as SSH is concerned there are ways to handle synchronization (we out=
line them in the paper). The POC concept we present in the paper should be =
acceptable to anybody who is fluent in the Rowhammer/microarch attack liter=
ature. There are numerous results
 where the target is slowed down to solve synchronization. We don=92t brush=
 aside or hide the synchronization issue in the paper but discuss it explic=
itly.</div>
<div dir=3D"auto" style=3D"text-align: left; text-indent: 0px; background-c=
olor: rgb(255, 255, 255); font-family: Aptos; font-size: 16px; color: rgb(0=
, 0, 0);">
<br>
</div>
<div dir=3D"auto" style=3D"text-align: left; text-indent: 0px; background-c=
olor: rgb(255, 255, 255); font-family: Aptos; font-size: 16px; color: rgb(0=
, 0, 0);">
As for the change in the abstract that Damien suggested, we actually were r=
eady to implement it. But then you interfered and said it=92s not going mak=
e a difference.&nbsp;</div>
<div dir=3D"auto" style=3D"background-color: rgb(255, 255, 255);">
<div dir=3D"auto" style=3D"text-align: left; text-indent: 0px; font-family:=
 Aptos; font-size: 16px; color: rgb(0, 0, 0);">
<br>
</div>
<div dir=3D"auto" style=3D"text-align: left; text-indent: 0px; font-family:=
 Aptos; font-size: 16px; color: rgb(0, 0, 0);">
Regardless, it looks like we should actually clarify the SSH case further w=
ith a couple of sentences in the abstract and update the arXiv version.</di=
v>
</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt;">
<br>
</div>
<div id=3D"ms-outlook-mobile-body-separator-line" data-applydefaultfontstyl=
es=3D"true" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-system=
, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt;" dir=3D"auto">
<br>
</div>
<div style=3D"font-family:Aptos, Aptos_MSFontService, -apple-system, Roboto=
, Arial, Helvetica, sans-serif;font-size:12pt" dir=3D"auto" id=3D"ms-outloo=
k-mobile-signature">
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Theo de Raadt &lt;der=
aadt@openbsd.org&gt;<br>
<b>Sent:</b> Sunday, September 28, 2025 10:12:26 AM<br>
<b>To:</b> Damien Miller &lt;djm@mindrot.org&gt;<br>
<b>Cc:</b> Adiletta, Andrew &lt;ajadiletta@wpi.edu&gt;; Solar Designer &lt;=
solar@openwall.com&gt;; oss-security@lists.openwall.com &lt;oss-security@li=
sts.openwall.com&gt;; openssh@openssh.com &lt;openssh@openssh.com&gt;; Tol,=
 Caner &lt;mtol@wpi.edu&gt;; Sunar, Berk &lt;sunar@wpi.edu&gt;; Doroz,
 Yarkin &lt;ydoroz@wpi.edu&gt;; Todd C. Miller &lt;Todd.Miller@courtesan.co=
m&gt;; pgut001@cs.auckland.ac.nz &lt;pgut001@cs.auckland.ac.nz&gt;<br>
<b>Subject:</b> Re: [EXT] Re: [oss-security] CVE-2023-51767: a bogus CVE in=
 OpenSSH</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">[Some people who received this message don't often=
 get email from deraadt@openbsd.org. Learn why this is important at
<a href=3D"https://aka.ms/LearnAboutSenderIdentification">https://aka.ms/Le=
arnAboutSenderIdentification</a> ]<br>
<br>
Damien Miller &lt;djm@mindrot.org&gt; wrote:<br>
<br>
&gt; On Wed, 24 Sep 2025, Adiletta, Andrew wrote:<br>
&gt;<br>
&gt; &gt; Hi Alexander and Team,<br>
&gt; &gt;<br>
&gt; &gt; Thank your for the interest in our paper, and we appreciate all t=
he<br>
&gt; &gt; feedback. We wanted to address two points - the OpenSSH CVE, and =
the<br>
&gt; &gt; comments from the OpenSSH community about the practicality of the=
 attack.<br>
&gt; &gt;<br>
&gt; &gt; On CVE-2023-51767 (OpenSSH), we did not submit this CVE. Our team=
<br>
&gt; &gt; coordinates with vendors / software mantainers before submitting =
CVEs to<br>
&gt; &gt; make sure there is agreement. The CVE description does seem<br>
&gt; &gt; mischaracterized, as this is not a zero-click type vulnability as=
 the CVE<br>
&gt; &gt; suggests, and we would not oppose either a revision or other acti=
on. We did<br>
&gt; &gt; work with Todd Miller on a SUDO CVE (CVE-2023-42465), of which we=
 worked<br>
&gt; &gt; with him to release a patch.<br>
&gt; &gt;<br>
&gt; &gt; However, on the practicality, I do believe that we did not mischa=
racterize<br>
&gt; &gt; the attack in the paper, and as Alexander concisely mentioned, we=
 are really<br>
&gt; &gt; trying to emphasize the issues with simple 0/1 flag logic that le=
ads down to<br>
&gt; &gt; sensitive execution flows.<br>
&gt;<br>
&gt; Sure, but my criticism at the time was that your paper claimed in<br>
&gt; the abstract to have successfully attacked OpenSSH to bypass<br>
&gt; authentication but what was actually attacked was a modified version<b=
r>
&gt; of sshd run in a highly unrealistic and synchronised setting.<br>
&gt;<br>
&gt; IMO this context matters and doesn't detract from your findings.<br>
<br>
Andrew, I think you should answer Damien's comment.<br>
<br>
I'm a bit more cynical, and think this is very close to open source<br>
community engagement malpractice -- where you picked projects<br>
specifically to increase readership of your paper, and went through the<br>
effort to construct synthetic justification, and I think you should<br>
consider issuing an official apology and/or official retraction of those<br>
statements about OpenSSH being vulnerable.&nbsp; There you have it, that's =
my<br>
opinion on this.<br>
<br>
<br>
<br>
</div>
</span></font></div>
</body>
</html>

--_000_BL1PR01MB772375CA93AF5608280A224FC118ABL1PR01MB7723prod_--
