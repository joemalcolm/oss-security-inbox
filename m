Received: (qmail 9590 invoked by uid 550); 27 Sep 2025 11:34:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23815 invoked from network); 27 Sep 2025 06:29:09 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Zp7gHq/KcSc2ph0XYGUwpqdHxioqxtMr3K1d8JkVK6w8f7i2Njl6sHRiTBCb+lZiy3Pe8+C3sVtj5MyCVoUCNvWffrLKYGRD8NSSv1wrEPf7p17V/x32mmZ/SVymXwwjb+opt9zueTKK0TR46o5SVzSot2xPx1wVwX1lNCm3RGXhk1o268HzIFiVXqnJ9HchaDy9JKuA82yifXw+fxxBvN2hEHMb7adEdHXEeex4Af4WkRpfpI+DjkaHggdC+cQo1/pXtL9oh2KNXQh3Bxe2E7xH98WQSI6M6rg+5epbFis4fGaGI3sVv4uDS/CTvXlUJk61WL/tlKBh+N7SEJsBPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dl1JjLI7pcjzVm7cnBukCLEliADNzS36+EoF16zXEG0=;
 b=NB/W+BV/3H9zdmimSImqtMYY6c6lpCjtcmLKpB3WZ2GrDBnHIh2QDJv7SEKJOvWwtJ50rZnqoJYhaT7JC5g2jUtEbdVGoDx/z9PMauDWyJAC8VDFYfa3M2I6hCOJe+7uvIo8Ej1xXPigPfFR/b+fr9GbHRWgzcWWnqEsRMjVsUNt6tFXZWm5EUa7KiQ11bS7IBFKQyIOngdwJD5ImegFWiD1yL7V6f5eAikzteRgNJvafuPNyABC2z3pUH282Rp5XqdOBnSSt1GB3nzlz5/z945gcJqGpYTWP30gAgk0XcGZNwJtnMAmVakXz4fhs2ZDvYcfZw9BUeWUijgOWRrA4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cs.auckland.ac.nz; dmarc=pass action=none
 header.from=cs.auckland.ac.nz; dkim=pass header.d=cs.auckland.ac.nz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.auckland.ac.nz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dl1JjLI7pcjzVm7cnBukCLEliADNzS36+EoF16zXEG0=;
 b=kWDDtO5Jai6yLTex/heHrHXxkO+LvI7kRzCnQ3IA9VtQg4evNcrC/N82hxqgxAFwgGL66v7jMKGAMLTWIGwrXozGk5AG3lvK9cGQRaxML2LLY4QwbMFTB7BCayQWR8iGW841GMwoWBIeHN5dvGkMfecXVSUvlAm3fyIvtC5uLMfZbnuyqGDwYeRkfBl9IZLxezg9C2PheNx4JSqlitF6PlObSYu6CN/SQv13YVPnQhTaapjTaA5S9UUx0ZWBE4BgH/5hveSZfRXXLLyE0EpqhxTUs8kSkRPYjiwLKH3vN+BJ/rNd+w2GV++oxCzlIIBNdguUNC5cSsdh1ldH29y9Hg==
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
 AQHcK9nVQvgc26eVTkSHWXCcKT6jp7SgGoaAgAF2qoCAABzmgIAAi3d4gAEOOACAAQiIAIAAc+MAgADFKICAAKQMAIAAaq33
Date: Sat, 27 Sep 2025 06:28:54 +0000
Message-ID:
 <ME0P300MB0713955695AB3F8BDB2F5C41EE19A@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
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
In-Reply-To: <06836fd6-a1eb-4af8-a5f9-012b37a6c162@gmail.com>
Accept-Language: en-NZ, en-US
Content-Language: en-NZ
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cs.auckland.ac.nz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: ME0P300MB0713:EE_|SY0P300MB0434:EE_
x-ms-office365-filtering-correlation-id: 0a3be0f6-0a90-4ebe-eb88-08ddfd8f21ab
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|376014|7416014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?5z96dyv6lrr7EPzvUFQvVleAjDkTA3Oj6V7tCb+9Bq5zemjBHyGN6Dw3dY?=
 =?iso-8859-1?Q?rUgHplcsUeOSbB5lBBqOs2DEpE5IJFrLCWmAdtBAQm1imEzxpnvoPzOCMY?=
 =?iso-8859-1?Q?So8VCG/CX85UdcjAMyW7g7Ik9uW8lDi0VezNSS4KLfZCfPiHD24rY1ORxe?=
 =?iso-8859-1?Q?KugvwCR5eY+pU7W/MS6OYDHDY7QOL7W5ih6tPPEz9c5re+QDWHshhubqgY?=
 =?iso-8859-1?Q?wmhPMebfmYDCrZMh9+guwgcdTfAn6vsJENNN/qtsZnyJU8qrzjez5RdEjk?=
 =?iso-8859-1?Q?sln3yH7CEdLk3ng0cJLk5YyGrNF36OLyfVXedffoiBQ5cxrNXIo8rkO+iA?=
 =?iso-8859-1?Q?ZUQXzXTaR0zWZyLzQtHpfFJhCG7I6pr5i/bpCTXwJMgCN7ZUG6z/gsUDgU?=
 =?iso-8859-1?Q?rFzFhDMgoqR3rlvGSCikmlhKGaUzpVOQtlmldjz5Q9KvQZexNx07F1YaNo?=
 =?iso-8859-1?Q?stW8o2TFtL8lGY+nwFq9yWOGUElWHKEFyBNNWc1Zc0o/uNUI/69ZnV5uFi?=
 =?iso-8859-1?Q?OyrgHmTOHKSW7fNP43DSWz1qJ0CogPhb2RHUZpRB6zJNS3dHz+ccO3uo/Z?=
 =?iso-8859-1?Q?yTunusGbaX1miheb9fPVRgcDB6k6NuKiCQnqjrgMCcQzUturDuDY2vurXp?=
 =?iso-8859-1?Q?I6aGIOotuZvZyjPnUo4woU6UaFkLWoKPuro17TTGabs3tLopVqEl3kQD0X?=
 =?iso-8859-1?Q?UNu7O+HlKjRoK9kyNQWkd6hK7AUylWYm7DjxwLjJjPPN8I5Y/t3oN529lV?=
 =?iso-8859-1?Q?qjZRlYPi3Z+HPri19yhzlql3xmDeaP+Wawq8YLmoVEPwmHBAeruNMSXnFZ?=
 =?iso-8859-1?Q?WpYYLmQrbcfOsl1wYoqPy8yAo3YXHbJ2pgUlAy3/88lTREjCP2047VR62z?=
 =?iso-8859-1?Q?YZWXXZEBbcxH64RXMov3ZJrE4KHlNgXDqvuguRhYVRNKGqNxDhKBU1DtAQ?=
 =?iso-8859-1?Q?s0I6yRAaDOHm+BnZAnaIQvC7anRBvSpvg1sI8o8qlWgoBtjVP44EssymK3?=
 =?iso-8859-1?Q?P4yCOHuY8fuxxZGPtWpRye5t5LUGdmEiBqY3/8WOSrrmoSBG7udnmCU5RI?=
 =?iso-8859-1?Q?A6W1JMhvbtTuul1aCgiixTGohJzbY17RkwkktKQZZbb5+CHhfzV1/YCoE/?=
 =?iso-8859-1?Q?JvzwNu7iDDo9Rm8MP+dYyjvGKVM+g71rQjiHjUx/MTJQhVjt1hVCcdZ03b?=
 =?iso-8859-1?Q?lcnyhDt1lToP/JGw1T6viRDzE42kujPuvha13mevFlLW8RpBBAB8e6JOZc?=
 =?iso-8859-1?Q?lEAMTRcZapTBOeC76/7dZKaARrLmRA+6Fi3yS2r8+WqP/fYo5lxao1sffP?=
 =?iso-8859-1?Q?MkKzwNBdymF9RTcvT+ADAGp/hzaHelk4yTbRItyolCvf4UhgYtpcfeOQSo?=
 =?iso-8859-1?Q?T8QY6RvwimfWuhYZ32U2B9qp51x+3wdumnESy/j6dFcH6cpnc5Va5UgEqt?=
 =?iso-8859-1?Q?gT3rga1whWHw3N2qv2kINY08g4jlvg26DVVo9r7YzeZmbREodLDLogZezS?=
 =?iso-8859-1?Q?fIU9zogMjlb4YuK3URFtH3ErpoNenFWJscNIu6IkedRXpBroaq9uRyqa6p?=
 =?iso-8859-1?Q?NIUCz/n61O95UJSn3MYoc3oguSB5?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(1800799024)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?vD7m2GAdXhIvWto89SGVm5oy3RpNqIHAsYxSIOMP9Oqf7oOwNPo41n+m0Y?=
 =?iso-8859-1?Q?FBwyPaP4vobs0LpoLQ4NGbsnkOUxsOxg6l9C/C303tmvXfIGWu1f+FTz4G?=
 =?iso-8859-1?Q?K/rUBnayVwzsbiMoTnj7wVZ4M9RgePKCvoJ/kyFVenq7OAPzus8gd2OFr2?=
 =?iso-8859-1?Q?yXncX6DUdQAd1NtPlWr/A1O8+HXmAsgsP0BffTPQ0WbDK9kh0Zmpx4EXOw?=
 =?iso-8859-1?Q?W7MG80X7K+IslksQsZflrYP4evVFvuChhTfSTYScWhuusSsT7ANsT6yV1H?=
 =?iso-8859-1?Q?KKJ02NuRAM2E3fQlD9yvB4mpHgUOkIMyri9cQ4OsEFXd6NHXUgkh3TnA9c?=
 =?iso-8859-1?Q?pH+7KJeC0YyUA2s3B6/J8+bZvmUsf9J7kPZdxuN+WVHacusylA9gXBHYUL?=
 =?iso-8859-1?Q?DTnxYLSh0NQuU81pexp1JZTAgtMN+napgF85Q8x8b7KhBTGOXGe71N09Zl?=
 =?iso-8859-1?Q?Md+/NuMbeijPUMXY5du3/YcRnvCTNKQDxictFU+0tXBIsWWmWmx7XVZSVE?=
 =?iso-8859-1?Q?IUncBzMH63HJwdJ+kuFG4+jX/dwDlGyY2uCtqCKsjXrMjz56nNOhZ2Nfc9?=
 =?iso-8859-1?Q?hbrljnLHBUcu3I3+NzajZ4zO/0785N8/23y1wAalYMwz5KEObonp7AiKFP?=
 =?iso-8859-1?Q?D+YpEBl/0rN4IEhVkDo46ePv79cifG+PG0AY3hc3CAY6NhCTgfjSf7DxSz?=
 =?iso-8859-1?Q?8A/nklC6dc6NRrpVLTHHGfOIYLW+6oOI2xL5lXXIVW93pkhGIFsy3DvCZG?=
 =?iso-8859-1?Q?jQW4vzIZ0NUhnBi8J8zMdFaO6sqg/QtXGK/skwkvhIV0tgb7veGYCgnwzG?=
 =?iso-8859-1?Q?Hyw2x115+/Wc1q2aMwM/DxjEfNU1NMtpAvYVe+VxjPIzEFhEoj7CfyyA5u?=
 =?iso-8859-1?Q?vVzu73U5vRRVKzTMQSoVKl5MMTQlH24C+ljEs3a86b/66c9M05tr0J3Es1?=
 =?iso-8859-1?Q?S140PT2RLnmyjW+eKEO1n9DkLkdvwPDEMuEKwNt/pChTeDUB+/3dDnj/1y?=
 =?iso-8859-1?Q?FUbHTq+C0Y1vtFEvSpuPwwi3an9ayuS12lS5otZ6J2jrDalXA0EJyXcQo7?=
 =?iso-8859-1?Q?o7HYoAY/oIysejFHltW6XbcRB0AqalxBvHYo4U+oepccqxvv73eaSTkWi9?=
 =?iso-8859-1?Q?wGKiP0EgeKoJr1R60uQmaIW2z3IjCXrk6GF/+RW9BSJmHanELbxTGlhHo9?=
 =?iso-8859-1?Q?fTHxSQEt9bQRXtJQ9mqaCzK17YpJysZ0ysFwMjHwVHs6Q6mQMepEvNK/uf?=
 =?iso-8859-1?Q?wOkUX5W2hnfQW7MIsAHSfdz7waMe1oT+Nj5q10fbL11YmZgIiM+l9Vg0sC?=
 =?iso-8859-1?Q?ML5RhJoxxSmyzSnCDe25UvaZ1wpNyQe5v6bnUPSOS8Q1Lw8ELo+Cl5o5g5?=
 =?iso-8859-1?Q?FYV5uZ6iiFUvwyCAYv2uIaplz+KZEvYR3dEKgduQ7ZyUlMr7IKnjoElLT6?=
 =?iso-8859-1?Q?vFWgXNYX61DB9tpJUVK9+9KrxANhThmVlMA/j9c9UrXCt6EJNQuw4gfrO1?=
 =?iso-8859-1?Q?jR/WPWBhuhEdTjSsz78vaOIO54xHqYyq3IrNw65VSE6WW6yhD7EaqFGKJl?=
 =?iso-8859-1?Q?QF3mPtVDEagCPjAxoMIdX5pjKHA2SzXpd85z79dt8CadgbEDBbBD7jU9uy?=
 =?iso-8859-1?Q?ap5gAKDAbS1hV/U2p2vq8K9Zuhq2ulidlL?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cs.auckland.ac.nz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a3be0f6-0a90-4ebe-eb88-08ddfd8f21ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2025 06:28:54.3259
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d1b36e95-0d50-42e9-958f-b63fa906beaa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3KwIeWFCN5SHc/B7XQfKppbgTK3d0Y2qaoqJz9ToUznZZ1t3olDqQChlMaDUFhC2AOWn7DxTSyLYNbztnJemoziZHJ42avbaNDN8rb8zbM4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SY0P300MB0434
Subject: Re: [oss-security] Re: [EXT] Re: [oss-security] CVE-2023-51767: a
 bogus CVE in OpenSSH

Jacob Bachmeyer <jcb62281@gmail.com> writes:

>I am somewhat skeptical about this, simply because there have been many
>"proper solutions" to Rowhammer that have thus far failed.

It depends on what you mean by "failed".  Rowhammer is an attack that no
(real-life) attacker has ever used, and no real-life attacker will ever use,
because there are about, oh, six million much easier ways to get what you
want.  So while a theoretical defence has failed against a theoretical atta=
ck,
in practice nothing of value has been lost.

(Not saying that it's not a cool attack, just that it's not one we have to
worry about.  What we do have to worry about is phishing, buffer overflows,
SQL and more generally script injection, supply-chain attacks, it's a long =
list).

Peter.=
