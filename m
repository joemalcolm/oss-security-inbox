Received: (qmail 4072 invoked by uid 550); 27 Sep 2025 11:36:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27833 invoked from network); 27 Sep 2025 08:43:37 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Yz/TDN2kMrnOCEWRo8Go9F8esb3VAeC/HAIj7eHLmB8tAqc+ER1smw9qCcIq/oxzmbyniFDSVr0T/Olgw1QdMcUoSIqqXgdvmqUW3aOpuXsmjeHO01jhySy8BK/uZ1ECe2faieXnwY4+VEX5tnstmCWVg3IbQO0boK3XIFMCifLf6LbB1ijYE22n6jpDaPhv0c8iLB6LAuST4yBu4udyD0zQRixT91RT9bPLFJFrS8VtksKnrXE9ktwrbJ7Edincu2ENmr4u1AifYbr7hur3jDA0K835O2nUG/zKXKWl+1p27dYFPMOGayGqtGMvgzYfGNwE1q5F3sgNhi3Ubbt+oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V4Z1x/mW4nuKm4RkYMDM84OTM3BYVhT6oVA0vlG0FLg=;
 b=Y02rhQ7ofQR3Enmm9XP21Wwnby/CAjGpEQD4tJ8VZ+h41wFiWa6bT8nMjZ3iU/aZlzIo/CYt05I0op4Awsmnkey797iIq3wd5twzW/TbsT5uuqqCBLg2179ndAc7iTPb3q6JSxnDL50kNnTyPUcG6kByl5vFq9d74Loo6Ndqk4bWz1k2GDPoicpNb95BjuA66XiiXq1ldxN9kOUKyISCPO03T3P5fGgzl84d1rBhaIsANw/InsLFnYyvsDMl+XxEJbReate2XzkMwJGbA9t90q6b7nmBQMtAIx8GKUwwSVKRNUIo8mekaoM5k+tmsFRiq9gs6fQP+4ApuKZt4qQOYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cs.auckland.ac.nz; dmarc=pass action=none
 header.from=cs.auckland.ac.nz; dkim=pass header.d=cs.auckland.ac.nz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.auckland.ac.nz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V4Z1x/mW4nuKm4RkYMDM84OTM3BYVhT6oVA0vlG0FLg=;
 b=nSDmMn+G6IhYbGPkXfqT14JTbIPDivcxVEP599Fr3Pr8FVDofy2ZTVqINnMTRjC40U6bBSeOHPcZXG+o9I2V01HYiat6DwMq6SjveFDcBED+ZaMpmYr5lM4IZ+psidGGlWdVm3FvCdHs7Lehge+VOcWSawlDXmh5P8Mjw12jxkRIxPWC2YHbGqOTD63T7VdChbByzc/8jVC8uYbUuhwFGWIuKYRtp9wsBKRg2LVvHgW5MvnJbh1VgSk7uTxBCZ5bXRboX7L2ekKsitqpMejCnpn0rSIoBDVaIe4LseXupT8WA8MaC+QK2QEEt41H4g96WtXI7Iwufl71qQ177C8vHA==
From: Peter Gutmann <pgut001@cs.auckland.ac.nz>
To: Demi Marie Obenour <demiobenour@gmail.com>,
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
	"Adiletta, Andrew" <ajadiletta@wpi.edu>, Solar Designer <solar@openwall.com>,
	Andrew Cooper <andrew.cooper3@citrix.com>, "jcb62281@gmail.com"
	<jcb62281@gmail.com>
CC: "openssh@openssh.com" <openssh@openssh.com>, "Tol, Caner" <mtol@wpi.edu>,
	"Sunar, Berk" <sunar@wpi.edu>, "Doroz, Yarkin" <ydoroz@wpi.edu>, "Todd C.
 Miller" <Todd.Miller@courtesan.com>
Thread-Topic: [oss-security] Re: [EXT] Re: [oss-security] CVE-2023-51767: a
 bogus CVE in OpenSSH
Thread-Index:
 AQHcK9nVQvgc26eVTkSHWXCcKT6jp7SgGoaAgAF2qoCAABzmgIAAi3d4gAEOOACAAQiIAIAAc+MAgADFKICAAKQMAIAAaq33gAAatQCAAAos0w==
Date: Sat, 27 Sep 2025 08:43:22 +0000
Message-ID:
 <ME0P300MB0713281A495B6839F6E361AFEE19A@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
References: <92a89d5d-e0de-c713-e7d2-83f971574eff@mindrot.org>
 <20250923032113.GA14348@openwall.com>
 <BL1PR01MB772308134BF946DF07159A05C11CA@BL1PR01MB7723.prod.exchangelabs.com>
 <43743160-7c83-4c4e-ad77-52e5058636c5@gmail.com>
 <ME0P300MB0713919015F954023D6D63FAEE1CA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
 <0ea3da20-739e-4608-8869-9d5882a8f003@gmail.com>
 <544d9d89-2a0a-4901-84ab-40c07c9c7bcd@gmail.com>
 <a715936d-759a-4c2f-8498-6da12f0fba3a@gmail.com>
 <dac51d5e-e9a9-4e8d-b044-7da3316c9252@gmail.com>
 <06836fd6-a1eb-4af8-a5f9-012b37a6c162@gmail.com>
 <ME0P300MB0713955695AB3F8BDB2F5C41EE19A@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
 <44a9b0c6-653a-4c52-a81c-0620b7082233@gmail.com>
In-Reply-To: <44a9b0c6-653a-4c52-a81c-0620b7082233@gmail.com>
Accept-Language: en-NZ, en-US
Content-Language: en-NZ
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cs.auckland.ac.nz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: ME0P300MB0713:EE_|SY0P300MB0309:EE_
x-ms-office365-filtering-correlation-id: faf79d8d-f7c0-4d68-b360-08ddfda1eab7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|7416014|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?D11LgNXhgtUu/il5cDdPhCnoyIWzEXP6snqoUWOvcx11pt2h8GrP5uNu51?=
 =?iso-8859-1?Q?ZTtEUcEJSSiXqjKGylWD7TOYAvYt7ykARspg3RabfkKz1mldCoLKPDgBNR?=
 =?iso-8859-1?Q?5iOesOgmFPBdcU3tn2E+xUGpj/Deq9ClkIjR9cek7U5IZapNYIA42CD0HS?=
 =?iso-8859-1?Q?uFc2QVUu6l2qHi0riiYoR+hhnR/S93pzKjqhDZPMQCFjofU8Yjgwynwez/?=
 =?iso-8859-1?Q?r6ANaeWJ5rJhLPdDt0IcRyW98BPEBdEoprcl+WsvJV/ICJy98KJpQ5ay55?=
 =?iso-8859-1?Q?C2L9JB3sT+maQ0aC69rdcsw7gpSlf6qsaJ3n9vCcu0t/i/mFVaCYPHT///?=
 =?iso-8859-1?Q?rySg+1S0TEiG3ElOmiG6ydBxdPspYnK5KmN5iycvrzxxYrdC1idHti/MJ7?=
 =?iso-8859-1?Q?6kIzXc8NMGmb2iYuU9fhtUhoyIwSPx1jwDyNCRAeCfOmg+0ifwfbTnGUhX?=
 =?iso-8859-1?Q?vAvTls8G4/jvNwKB7zmM5s8CcO0ubpq4AcPoPcPPqYKcMfA0Xw3W0b1yKQ?=
 =?iso-8859-1?Q?er3+Yp12wem43h+76HRVxcmH8Rejxcv3Cr4gtX+Tn2k89JM3Rp/8d3Mlsv?=
 =?iso-8859-1?Q?DNQHBgD6zuNltqm/nzGhX/Dpacv4aeJmw04rf5cr8LfjpMB03kftZg203D?=
 =?iso-8859-1?Q?fw8kk6c5wU2M+HG/LuE2AY4mTOtlOjCy+I8SkAIot9exJYKmYCrNH4DqkI?=
 =?iso-8859-1?Q?QA0KAXpOBer/sSZHPiF6Wifvem5SGzW06OeBTKy8XyUB/6ePcuj/k1uK6z?=
 =?iso-8859-1?Q?OiwHhJXt7b1yoSlwK5Z1SNSeoyF1CIk+YOHRl9USUh85NE0zqnHD1i0DA7?=
 =?iso-8859-1?Q?gDFBggcz1JF8KlBTSa1k/SwJ1ycHCXUlcnS95Htx2C1KEF4E8yZkizTTpq?=
 =?iso-8859-1?Q?+meIhBgVGhuzKF+35jNpu7wZFK9T7wW8MZDwM0LvZxb1fLgVOuTNBqY9dT?=
 =?iso-8859-1?Q?waJk34WGcK6G3EkOyMboLRsUw2Inw5NS1lyJhZA2RMP0gH9LKrj3eeM55C?=
 =?iso-8859-1?Q?4soUlG4Clriil4P/zb4RwJtW2vfvZMxTToRTp+I7TeKWGAOj+6ATB3fbDZ?=
 =?iso-8859-1?Q?q96cqk14PlbRHqaaIdDYI2sWdLN/6vwNEKZDIElpOp2oVLUI+wxZ+5i5kM?=
 =?iso-8859-1?Q?e8sUCgnT3eclBYR9ruW29kiolnZ1syPP42hx60IbyFc6uVC+EqiVepxGGI?=
 =?iso-8859-1?Q?+bPgsC2Z8zo2ZI08dfPppus0RZ46NFMUz42A51sctursJxnWaeZhr5n6Xl?=
 =?iso-8859-1?Q?24NrU92ynKC/nv2MGt6SSfFW+j+WT2uh0QYUymIPFtG/4MDmzIMuY6ShXW?=
 =?iso-8859-1?Q?x32Y+csXMdCdPN5WUiCMgN4T49d/sElw8WiEu++53w1Mjop5dGrMOWEeG1?=
 =?iso-8859-1?Q?THpW2aAsyPdk3wDXd55C5+BjqgnpcMAhrv48/AtBieiiaiQWTDVOPFMweF?=
 =?iso-8859-1?Q?LXWPVRxZZJDcuQWtmvnF3fAzEK1xH9WQh3rfwJ3N1B9qgWwn+SL30iqj0y?=
 =?iso-8859-1?Q?8HoL+XBtMc6WX6v7Uwzylh2G5WXe9gIH/huGtpS8OgbmaQrBlJbxLim2o1?=
 =?iso-8859-1?Q?AOPH6J/r0yUs0RZh4a3dytrHLv6G?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(366016)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?MnoxuMSoznD1A4i5AK1HS9g7fkiOBGCH5SWNiHNmNuEcriPDe1FvH+HqoC?=
 =?iso-8859-1?Q?8Fr4H2A5ZnoR0OFxiWwjYgWOkcYDywTyhNvst0yQYWIbFZLWNWNfYinLqG?=
 =?iso-8859-1?Q?moM10/89/349VmYIiIlgXf80I1Fh1OTkUEqImvhaa3Kj6VFdt5z/dFlJlE?=
 =?iso-8859-1?Q?zu1JtqcGVdgrYpVD9ohBcNid0cDc8vD1jjAdDyeR1U4VMF80ssYqhqZFf5?=
 =?iso-8859-1?Q?hlMQTUwuOO5myW0VECJaXxEliyROpIfML3L/n2Ob4uG0gbp97KXThvAvZL?=
 =?iso-8859-1?Q?siFhbYQTD9Nzr4Dae1NKTe6RtwA4yBuaUk3fpq+11aGFiYrmfHIS54iZ2z?=
 =?iso-8859-1?Q?JevYOAmFc0KKs/O/QA7Pup3de5QA/jYem2tOgoC7mhhvY2J1UhyKUaOod6?=
 =?iso-8859-1?Q?q9OsxfrN1TZ4vaVr9wom3O3qkN3pbggqLgr7MGVhosREyeYqj31hjUV9UF?=
 =?iso-8859-1?Q?D3x+5sQsmXsleqiG0dHu6NPhSOSu7cF8exRYU5Okem+u6EyGdPQGrMmFTh?=
 =?iso-8859-1?Q?VxTi8v25nWakTtlU+QJdHl5vgqu4i097jyNS5LSTt84aLN+AhvDPzdifDv?=
 =?iso-8859-1?Q?qIjTHEARqNfWBdxv7vcRqVpUrHh3x33ZpPdsdabI+ZJVFePH48WTY2L7IO?=
 =?iso-8859-1?Q?f7yo5kidTC//DRHY65duDScNjkDadzTV/DRyOaTUN8cZFuY5ZdQarfnqLF?=
 =?iso-8859-1?Q?a0EYH3Cm4ovIZZIW/N7GLPU36WH7kF0URxsLUNPoCYSCzzPTa5ZlenlcZr?=
 =?iso-8859-1?Q?T3VrmrylWdXV/GVN+3gAYRr0CipkweihLrnLFo1UDZm8osQf4DTrpInajs?=
 =?iso-8859-1?Q?PCeZCOBidP2KFyWalMTcacIjW9hHOg98yU8X7HPVTRd6Tc4GjWhczO56M7?=
 =?iso-8859-1?Q?PtCSMVIlJ1lX0th8jiZUHIlZFjRtXb2e23FbYmr04+gBhgmV/OUJaufoLk?=
 =?iso-8859-1?Q?+fTxcB3QfKlW9DbEhzV75zmB+1CTZxCpIDX4kpx3P4hCh0Hi1eXuV+r5Jn?=
 =?iso-8859-1?Q?suzcTxtlkUsJlHcrK2XBbdb6cMeXgp1Nv1j07sM58egEefCeFqbPHSkx83?=
 =?iso-8859-1?Q?kCaEXV0pIgj9/W/0YcUh7ktZM6ZmmGav0hbdsYUCKzFZmBCq4Kp5UCpfsK?=
 =?iso-8859-1?Q?TYYYIr5R9L990aob+n3pPcvc1QVMPSHxOBo+h+27nsdvzF4xQJDW8GqYZT?=
 =?iso-8859-1?Q?0uYLHCOClC5cqk0Uao0vTzUe8IGp9psDXC01K8Y7CWlQPykF9a000P5U9w?=
 =?iso-8859-1?Q?jNORXHdTYNXEoeqt83y/bwNJk1hL7ms4aiKAkE0m9zMjYkXSpYoZtczOQF?=
 =?iso-8859-1?Q?9e407m/j2F6jgHuxtiAlyBDNyCttwEWseJaoROC0ns+pp2yrI3UjI006gL?=
 =?iso-8859-1?Q?Qyo02sH2JfG8a+jyixJj1Ho5Wv3Kv4pCgZMCzPKwz4VZacBGVPUC8wh9pO?=
 =?iso-8859-1?Q?YxnMz5w/ZWA71GFxtlxLZcJnpxkal+xIKFqNNbjjiRYyy55c0qtSaPC5K9?=
 =?iso-8859-1?Q?WDewHzQS2JAzAndIrbPYVyOsQYp34AxB1VX+JSWhgfYAMUIx1E3l0wocNF?=
 =?iso-8859-1?Q?SfViTD00/1iyivC/8U5RqeDVF/jwoQ7F+iLlkPxA3DCR+rMb+x8JaRpTDE?=
 =?iso-8859-1?Q?qyAj4yaoded4sPB8Y6zKXn7/qsHlvFR+NN?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cs.auckland.ac.nz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: faf79d8d-f7c0-4d68-b360-08ddfda1eab7
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2025 08:43:22.5480
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d1b36e95-0d50-42e9-958f-b63fa906beaa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1AHVqV87RYctUUEpb0YMyaEJKLk9Gml5UHGjCmxiGx6uPVCV6R1uPRXi7vKA9tk+KZfNhesaaG8r9gD2s2A0p2vA9Qu28fOaI3RiDhdmtCc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SY0P300MB0309
Subject: Re: [oss-security] Re: [EXT] Re: [oss-security] CVE-2023-51767: a
 bogus CVE in OpenSSH

Demi Marie Obenour writes:

>Is there something about Rowhammer specifically that makes it an unattract=
ive
>attack, even for nation-state attackers against well-protected targets?

Not Rowhammer specifically, there are a near-infinite number of gee-whiz
conference-paper-worthy attacks that fall into the same category.

Attackers know what works and that's what they go for.  To see what works,
look at any survey of attacks, for example the OWASP Top Ten.  Rowhammer is=
 at
position 26,672 in that list, right next to Spectre and and Meltdown and
Zenbleed and using a reflection in someone's eyeball in a selfie that shows=
 a
reflection on a window that has a reflection on a glass-encased wall image
that has a reflection of a monitor that displays a password.

There's no point worrying about Mission-Impossible attacks when all an
attacker has to do is buy the account credentials from an exploit broker or
something similar.  Cool attacks and countermeasures are fun to talk about,
but if you want to make the system more secure you need to fix the things t=
hat
actually matter.

Peter.=
