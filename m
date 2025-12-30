Received: (qmail 28036 invoked by uid 550); 30 Dec 2025 19:12:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30003 invoked from network); 30 Dec 2025 11:30:37 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OzwkykTsIRykmALz95tMTSJ/PywRDePKQAF8uEnowPpEdbSYIxLm0WvlD3Sk9urFkh3G3F2yHOV5Bsw47AiTVSgvw8lAKm49bmiHHvb3mZ/9rmuQBEfhMpVoskjd0myxrMlvuzq1HSdBKvB7fmjqQKzGU0CKECQk6h4/HIYMvzvHxe45ya/4gym01scPuWEflUnqHCXR69lAcDDve+OukgvWRzIZOir82lJNby9+FauyXdPbHg9WSMSAQxE/xqx+VpinA6FpAam98P+GJdF9Jghgct86YbVR6fNLMswyjQlcuf28yEIv6TOnVQj8bGctkTiFB6BEWprZbttyylFf0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MXWrovk9mqvN46XRKPvaMV++rZj3yHT/NG6f4NkcZdw=;
 b=MzY3q7Tu2SdaLUH+OZDrYlj23SYGP6TB0O3SbseJXbPTG//BvMLvP5Ray2fd67c9NI9ZPDgMTxACqh1UaVN1Rmok5URQc0pb91voDO4IK63/3ZFKj/UqoWreT0O8+mNx52lwfvWf8dCe17uVJszxPVTJ8T/0DqYyR6smi2C9ooXM4/sswRMw0zTL6iigH1Fw5zWBz7XjjKfCHkCAPgOkAwqKe21GSKO0Lm2cLi+OvKTwzjZ9WE0W9VZcho9V9OXyfr8wcXpa4+SunOktLnioAXo44hfJkT9URETH/ydztXvEjTLobYm0n+mjFKONQSozyDFtUr25jakPmRBz3bw9ZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cs.auckland.ac.nz; dmarc=pass action=none
 header.from=cs.auckland.ac.nz; dkim=pass header.d=cs.auckland.ac.nz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.auckland.ac.nz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MXWrovk9mqvN46XRKPvaMV++rZj3yHT/NG6f4NkcZdw=;
 b=OftYMQNExcQFh/gG7zMUtQj+ZovYdt7nI5nDEk1ZwOj/aBwBEAarW6cNGGOT11jJmsj1FMn5GtJFAopD1wIiTGqBE2w6vpTlL9J+unyuoYRJeDBxpXpWOBH84fVQRtkeQq6F+rz5uL10LZ3b89hec0UZfejACqfkum6m6xIURbuV4ZtNuzk5C6ReZ4KJwMQBqBLLpRCIPWBTbtiWFF6CHWqTjR9dBm0ALSJaQwkZSSAcNIaRAkptSEzKbXvEui9nVxD02WUAXpEbPKFtM3tjKDRvn4X2/aFbVajSUsNxDuCoiXbHQlwWGbdk7D5q7J0BYJ+5UODaLs3AwvVIVrEEPw==
From: Peter Gutmann <pgut001@cs.auckland.ac.nz>
To: Demi Marie Obenour <demiobenour@gmail.com>,
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Many vulnerabilities in GnuPG
Thread-Index: AQHcd6ITPUNTv428j0KUV5yevVmCvLU2qG2AgAK0ajGAAIpzAIAAKCjy
Date: Tue, 30 Dec 2025 11:30:21 +0000
Message-ID:
 <SYCPR01MB3661EE9E2D62A122A271AE98EEBCA@SYCPR01MB3661.ausprd01.prod.outlook.com>
References: <3318308d-70b1-4ab3-9cca-ab4ea67dd27d@gmail.com>
 <0bf8169edb12d002a4654c4ccf6aa54d84eba14a.camel@verbuecheln.ch>
 <SYCPR01MB366178C350BB2649FA5B82D6EEBCA@SYCPR01MB3661.ausprd01.prod.outlook.com>
 <d46c3c34-0fa8-4b79-a624-b7ccc9662ce8@gmail.com>
In-Reply-To: <d46c3c34-0fa8-4b79-a624-b7ccc9662ce8@gmail.com>
Accept-Language: en-NZ, en-US
Content-Language: en-NZ
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cs.auckland.ac.nz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SYCPR01MB3661:EE_|ME3PR01MB6257:EE_
x-ms-office365-filtering-correlation-id: 7b1c3c07-23d6-4c6e-ca61-08de4796d149
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|10070799003|376014|786006|1800799024|366016|38070700021;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?xK1lLic4uOAyaM3qlypYRBJLLBpDi1IrTyojTBinIWAQLhD8pAMu08yq4j?=
 =?iso-8859-1?Q?+4SAnfTXU/o19PrTEao339wyFW7SM0RrTZ5DclocQX3gvz/JJYRwoJb4gI?=
 =?iso-8859-1?Q?idfUjBx65JSO9xQetlc2ODssspsm1+b1f4PnO/mRCN3zsWnh/U3MvTTgOA?=
 =?iso-8859-1?Q?O9UtWHB7vqrlCm2bw9IQN0csHq8CH8+gAp6NDSIH198A4Sk8y0dGrc/BHT?=
 =?iso-8859-1?Q?qNi99fiLs3nFSzzl18OqVW+jNdEcDcopt51Of0hQmFdZIn67uiwa/ArUYA?=
 =?iso-8859-1?Q?c28LfHMYTd4KLdDvYJaxdmFhJ/RuaRQZ2DUfbNSCCIqPcLkuPoLWr1kzym?=
 =?iso-8859-1?Q?M00IkvPFweH9GRuvYRYSAP8EZg5t+0z+OxHz5yYXqtAk5fkZ29cK/Vs2uv?=
 =?iso-8859-1?Q?Cog0rDXnIQVq2VhrW123WJDfIFaMniAD7JGI7r7dmBQYswnohKN1/qXgNA?=
 =?iso-8859-1?Q?+hVuIeosB5DNXA8mVNi9WKMNfr0BF+fGzHDRraA0pAuFuWg5j93R/H+qlF?=
 =?iso-8859-1?Q?IRtJds91ElV//XbNw6T1OZxzUT6q5xbqYcpD+c94C5h6HaSj/Wl2IEBmZo?=
 =?iso-8859-1?Q?zP7kFxRWTdZmbEvQwj6huD+OEV6JXS4HsTdCfxlhIlqL6RMPDRuiXQRMGu?=
 =?iso-8859-1?Q?/V5bssj6/0Alxks73UmQcj35vSmtucg8kgRT+FdeV7Ntvm7/RVFxRbQut8?=
 =?iso-8859-1?Q?7xO0HHU41DkJzA2EVEU67+qmQ0uS61kW6GWgqAzRAOQiTSGrNR05Iz8LqJ?=
 =?iso-8859-1?Q?meG22jHZ8KDBINHuuA3+miJKLdw3kpMp2TbV00qG2fzN2ae1iLmmBMxIET?=
 =?iso-8859-1?Q?d8l50AuIrFU3GKT55D5TcI8JVN7Hc+9uHDVSn965+dyUPCMPpSKnvOxEaD?=
 =?iso-8859-1?Q?y//rnrmObisH0BHR9gljc1T2j/RPq/zbWuWFGR3Gh0eaA5SunonJm2ViMc?=
 =?iso-8859-1?Q?oM6uN1BIGPENKMUnbaqOUUQ9HAeNyIjtTauOabprWX7I/MB7KI1H+6ieVd?=
 =?iso-8859-1?Q?LCGXabFpgm4FrdHtWq2kLk2RcreSKoWEf5mVn4qBWgq6Ou/KCfoXamUq2M?=
 =?iso-8859-1?Q?KCKlllM/xESN69Rr6wKuyqbYugTjhO9Ovp5I8cTTBQXqZWS6UHeCRkrkrG?=
 =?iso-8859-1?Q?58/2eQl9y6LGm6aHSNwE7GxgkDnZR0zwapSNdDNCA1P1KD2Ue7PmgY4hPH?=
 =?iso-8859-1?Q?lkceBCuQJjrt+7IbIf7JyiQPG02nsH9Bvm9pAdJ+aeZebNrfTv8VyYOg0b?=
 =?iso-8859-1?Q?pmvpwPy4IkjvIvnZ4t2JcHkweOv0N4UoQQKU8zGHn56PAlo7Dt8H3HP+yq?=
 =?iso-8859-1?Q?dRxPz76XOiIMR3EwJx/XP/Pg6kQUNhOuXRUs0+jEx2tGsPMuV3YGBlznr4?=
 =?iso-8859-1?Q?l7OJPRQnNfY2ecm89tGA46zeakGpuCTpe2aShnSNGAOLDlNwXkYL2SwZS1?=
 =?iso-8859-1?Q?ZNbBEI8IOxvLuS8Zu0jcypxkPB3Q+qEvvkJiSJyMf3J8NUq2fUuSm0ei9b?=
 =?iso-8859-1?Q?k4r69ix50zo42x4ZQWkV+HtqxmAc+O0L3cOnsdcZFIkG279tXo6dfZxLEA?=
 =?iso-8859-1?Q?DX+igU5nPwkXZBd+Gy8YEhyl1OFT?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SYCPR01MB3661.ausprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(376014)(786006)(1800799024)(366016)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?HhQgtMAro0u3pQQ3byAFnzlyLNUVoVwmisPwA3CmMOTurtAE9fd6B0JDQ5?=
 =?iso-8859-1?Q?L2zWvrIDZs1o/6+zPFVqZNVcZbxmX280aUgclf7XZrM2JnuZ3L7nbFDo7e?=
 =?iso-8859-1?Q?VIQxt0bqPn8VAR8/lzGCgzOVlnUYAYM8RUa4ebzR0G72SDf7ydhkQuAf6F?=
 =?iso-8859-1?Q?JZnWpifQWeBN/hHzYX2iTEXMdygCQjq2Gtue4rthJWZlhYBeeGm1e8qgZp?=
 =?iso-8859-1?Q?mNvFVxbjOYj0GNHxVJWG1rgNx8fEWdqZIkIcDE7HBnTtaYV2cOpLdrZpxl?=
 =?iso-8859-1?Q?ABWYhFBWgNmpHmUx26f9JzEYcSJ9tT8yNLR7lpdz/jcvQBaBsdgW4z8cKE?=
 =?iso-8859-1?Q?SaixvKw3RkUWF/dN6+VdNdSPhDQMcA7jTP7yYSkYx28iHmqGJsj3gEUkDk?=
 =?iso-8859-1?Q?HrERO+KQANFSCus4VBKd1wjVYPMK6A6ZHMoGupmtmX+l1MsELsdOCiqNNb?=
 =?iso-8859-1?Q?29Q4yCidw+SgndViWF5WOQRAuXD+bUeG0yN3EwNk6J/4Zq73OlzKb75aHi?=
 =?iso-8859-1?Q?CMMZDEXGGyMD0LOsXGkaCujtl6dRBpfoqEj76VurZ6FkPzZD7BHuNqCMwE?=
 =?iso-8859-1?Q?8eEJbG/oN/yrUxazkJVJycwC+mOJpBcRP+caruWnEdC7xaN73Eld+FXTOK?=
 =?iso-8859-1?Q?RvAAE6Yj+/kDnx10E1qy2jJXswI2sCMY2Li0aytaROahTimBL5cNSWHeDL?=
 =?iso-8859-1?Q?6qifgRV6+U6aCb8ux4TjCGt0ty6UZZiSKQtNhrazYU49GMEskw0zUXbx7S?=
 =?iso-8859-1?Q?ZemkH+MzJoIU10RfHFZ8G3P3dmVQ8WC6hmlejGX0BRL2KOfHguj11kLkS9?=
 =?iso-8859-1?Q?xdCJpcMprmGH9msBGieESkeZmXsxLVgpeNqifnovnEWxtvngMGaZk1LSLm?=
 =?iso-8859-1?Q?Wta4fDdpCV+8ThTLufyYx+rI9bRj3ftqKpx0QBi97d7OkylaMk75sXIzlt?=
 =?iso-8859-1?Q?BwiUJ4CBYwEBbevZSogDJKQVS4oApS5PJKcFQ049Va9QnCAOsxW8AZuYzs?=
 =?iso-8859-1?Q?RSFYBo5p1sOKWcL4yGnvYmDYi/XDX41pfrAMJGrOulL/9x5wTJ5RUqFt48?=
 =?iso-8859-1?Q?VY+tZtwAX5UZMwMGjCGHcVNot/sPotDcssIqx+jhu6dCEBXTBtTHicMDu/?=
 =?iso-8859-1?Q?iWlPURPUVBlQiCJNl9P3T89Ff+A1grZC2TMIW3cjO8kxNfEQvsMAoeUAls?=
 =?iso-8859-1?Q?4aCs3WkJ5IUnx75825nrNqv8zkFCSZrD3+VBf5AyzeHnGHtSXe2Vm4YOUv?=
 =?iso-8859-1?Q?OC8BqPlvHZ8DvrYuHJX1MPInLM/ZaA2LMLbM0pz+yTFVMcrEbj9UjkSYAY?=
 =?iso-8859-1?Q?Je3pfwnlRkahoz5+4ziQKgWMHkRJ6ClGMzK42wnpyeEbBFEhuAlJhg1PMu?=
 =?iso-8859-1?Q?T/fPiqbe0Vl/SYr9nVbD9bMEuwqQjGUYuQdvf69kfjmGkrjw39RlomL8IV?=
 =?iso-8859-1?Q?kuqE5QXA3nu67GqJDugIsSPgoulYICUKOCbtktTfshpHPzhj1pkULPhPxT?=
 =?iso-8859-1?Q?9TdCknn5Opi8K8dBtpElAlt9dVlwt6cw8O5szGZ2xRUbWp0RszRUPZggB3?=
 =?iso-8859-1?Q?dB9S9vL7mBXmt6eca/Lf1MGbh3JDNjFkF/2Mj6laZeHBZUmkV/4qDtJY57?=
 =?iso-8859-1?Q?rcbOIoR4XYkI19luLbFBD5Ps9iNyfloZMFNStkZ2tW7rIAVWDynyocRl8M?=
 =?iso-8859-1?Q?LKXuqutzEaQoEbe01CuvhSqTm3hFK/q5wCCuyDj05kjaHf3xLFWpztyTDA?=
 =?iso-8859-1?Q?nMtd9erZajuwxEXZB8H1d3c26hl2cJW7o0LU01bpCBgx1sD5Uo9xc3psM9?=
 =?iso-8859-1?Q?76na0VFGf+YAexlgmLCFDibReAvQTf/n5aiHb/sBjwwHTKIJOVsnihuDMG?=
 =?iso-8859-1?Q?4m?=
x-ms-exchange-antispam-messagedata-1: 89rX/tvWomCZng==
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cs.auckland.ac.nz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SYCPR01MB3661.ausprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b1c3c07-23d6-4c6e-ca61-08de4796d149
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Dec 2025 11:30:21.4954
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d1b36e95-0d50-42e9-958f-b63fa906beaa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iukRyj5oWol52E8z5k5FPxdjz8ydnllDz+3LxZ6UVvZSM2nehA5uygyzCozaX9ixT6uy0zTDnrW+ITxAU1M3LUK+S2IaZnDEWOudKF2krQY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ME3PR01MB6257
Subject: Re: [oss-security] Many vulnerabilities in GnuPG

Demi Marie Obenour writes:

>Can we agree to use OpenSSH signatures ASAP?

PGP signatures are fine, for authenticating binaries we just need to use th=
em
in a way where there's only one simple, unambiguous, and minimal-attack-
surface way to apply them, as well as a means of having them work over long=
er
time periods (see below).  The alternative is to try to boil the ocean, whi=
ch
would take a Heartbleed-style catastrophe to motivate.

>Interesting!  Which ones don't work?

I'm using it to generate test data which will no doubt trigger odd behaviour
in some cases, and didn't record info about individual problems, just "type
this command to get this output" once I figured out what was required.  An
example is:

  gpg -b -z 0 --openpgp --homedir . -o signed4.pgp test.txt

  (the --openpgp is for a GPG bug, without it it'll generate v3 sigs as if
   --force-v3-sigs had been specified).

but for most of them all I've recorded is just whatever magic incantation
eventually worked to generate the required test data.

>Is that what gpgv and sqv are?

It depends on how much of the rest of GPG is still present.  If it's just a
stripped-down front-end to the whole thing then it may still be subject to =
the
same vulns.

>I think the hard part of doing this isn't the signature handling itself, b=
ut
>rather the incredibly complex web of trust.

Does anything actually use the cobweb of trust, or do you just assume the k=
ey
you've got is good because doing anything else is too hard?  Certainly for
authenticating Linux installs and updates the practice seems to be "grab the
key from this source via TLS, swear a lot because it's KEYEXPIRED, spend ag=
es
Googling how to get the latest key, realise you have to install intermediate
updates to work your way up to what's current but the only remaining source
for those is a server in Botswana and all the apt options have changed and =
you
need to read a garbled blog post someone wrote at 3am when they ran into the

[ 25 more lines of pain snipped ]

just run with --allow-unauthenticated and ensuing zero security so you can
finally update your stuff before you die of old age".  That's one thing
Microsoft did well with Authenticode, you don't get all your updates blocked
because your valid keys instantly became invalid after some timer ticked pa=
st
midnight.

>>I've actually done something like this myself, wrote simple apps pgpencry=
pt
>>and pgpdecrypt (size around 50kB)
>
>Are these available anywhere?

They're just some very quick things I threw together ten or more years ago,
motivated by:

/* Used to decrypt files that the four assorted command-line versions of PGP
   can't handle */

(this was before GPG became the de facto universal standard).  I can send y=
ou
the code privately if you like, but it probably won't be very useful.

>Yeah, that's *embarrassing*.

I wouldn't say it's embarrassing, more that it's a confirmation of Shamir's
Law, "crypto is bypassed, not attacked".  To find the biggest holes in a
crypto app you need a pentester, not a cryptographer.

Peter.=
