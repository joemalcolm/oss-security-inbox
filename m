Received: (qmail 13349 invoked by uid 550); 24 Sep 2025 14:43:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30414 invoked from network); 24 Sep 2025 11:45:36 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T1xEIZFudyaQ+iAc6mXtmCoNzJaF6BHHKezvN5ucFN9b78dlCSVBfNB9KSgymj7g9FAvlGft9LLzegQQrmuKLjE8ltuHkasScHclAg6+t3AdKom9RCVlnbdFwBpztibujnjOPcmt7aVQADgGfND3GvvuOQfyIwRI7ye1pu26lY4JOqCECvYsuVdElY3Sg4fB/7nCip8kR8yE35/nGqalC1sx7BvGX/RB8b3CqrLh2puE+D4J4khbC0ocSah6IwVYbx6CE4lPJlfYqy3BeBCq70s5jPkTFn9p+E5dvPDuOW9npB5GF90HvwSJtqR+vJgw6+vVwLJ/alMGObct1qCjdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Em6wsdyQ463hmEzxlNnF0cb+IU4laIVXlREi/rdC32E=;
 b=PiyQH2/dJGilQ2H4pjbv8YqbJPiEWm4iEhDb1TCfX6VdjW1yv0ytYoHQq9pKuCm7UJdiSVse2NNp8C0+ccvDpNPujphUQLK6hxC3bRWyizD0hnTOf1hPWKqMPz9QCrmJwfx1/jZYHYe93eDVJvAzGISYxNW2myRskuRs7lIXraow3DTqNYUWWIzrO56iLfFRfZOa0BMAp5xr03hDc4nwUVK/Wv7PQv4iBmA+3vzcUI+OJbEx4I0Z2BCGYJ0rSGBEyxYrGMnAllpg3RAU0iaSgCRioq/liIzb75V6SW4NahjvNU3uawovIeHbn8JfNA+6apkS+o6sr3SFXPBoUpPSLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cs.auckland.ac.nz; dmarc=pass action=none
 header.from=cs.auckland.ac.nz; dkim=pass header.d=cs.auckland.ac.nz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.auckland.ac.nz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Em6wsdyQ463hmEzxlNnF0cb+IU4laIVXlREi/rdC32E=;
 b=PDkDQV1RM1Aa/orw2r8ckOGb6R1plP/Hi49kD4nL3euIORb6pUwzcGrRnq+gb0s0t6j8yBpzcR4yEQgtEKvY5/RTVNAJxc6mRyPTybPAybbHsh43odnprlHaBvLNYGUh9NyxnepIyMt96dyYJF3qH1LjDei7aRR2OF+QxEk6eghRecNPNQ9wOHBAmN9QaMKTpvVFKr6nvWgjF2QtlRWbqSLpYCunLHbAezbzUZeKtd+vGun7DfTNuqKIzw5gGK0XC+TCAnuW/vVcSUgBWMCUhdU7iTd3+qsil23tBtRJFvw/2nWT2+ZgBFIDU+Az8dD4RmgdQ2nQCg6iZvGusnINEw==
From: Peter Gutmann <pgut001@cs.auckland.ac.nz>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
	"Adiletta, Andrew" <ajadiletta@wpi.edu>, Solar Designer <solar@openwall.com>,
	"jcb62281@gmail.com" <jcb62281@gmail.com>
CC: "openssh@openssh.com" <openssh@openssh.com>, "Tol, Caner" <mtol@wpi.edu>,
	"Sunar, Berk" <sunar@wpi.edu>, "Doroz, Yarkin" <ydoroz@wpi.edu>, "Todd C.
 Miller" <Todd.Miller@courtesan.com>
Thread-Topic: [oss-security] Re: [EXT] Re: [oss-security] CVE-2023-51767: a
 bogus CVE in OpenSSH
Thread-Index: AQHcK9nVQvgc26eVTkSHWXCcKT6jp7SgGoaAgAF2qoCAABzmgIAAi3d4
Date: Wed, 24 Sep 2025 11:45:23 +0000
Message-ID:
 <ME0P300MB0713919015F954023D6D63FAEE1CA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
References: <92a89d5d-e0de-c713-e7d2-83f971574eff@mindrot.org>
 <20250923032113.GA14348@openwall.com>
 <BL1PR01MB772308134BF946DF07159A05C11CA@BL1PR01MB7723.prod.exchangelabs.com>
 <43743160-7c83-4c4e-ad77-52e5058636c5@gmail.com>
In-Reply-To: <43743160-7c83-4c4e-ad77-52e5058636c5@gmail.com>
Accept-Language: en-NZ, en-US
Content-Language: en-NZ
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cs.auckland.ac.nz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: ME0P300MB0713:EE_|SY2PPF9F95CC46E:EE_
x-ms-office365-filtering-correlation-id: 873ec050-cb56-42f2-db3e-08ddfb5fd8cb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?zUoTE5Y7QIKy39wQ54EaUO/X4i9TJfUkOtQd6ot3lskjGOOSc+PgATMBW8?=
 =?iso-8859-1?Q?OKbS57t7TLKNCSIKZYgdaTnXmzGfAgpTOrPMnBAffsc+Hu3V7oUbv5VkFS?=
 =?iso-8859-1?Q?4G6PCtrjYHd9N7ugpSRATn2fz/SjnMnyk8J7KbxvnC1dNgm5CcEbTpjBxF?=
 =?iso-8859-1?Q?NEZajs40ej2moTRB6gin5jqAIbMUpQcQdk94aDXSJZ0mYZNQLc0ITjCp70?=
 =?iso-8859-1?Q?Dy4DT2Cvncrk7DPlZunyZBYgBfA/X+siVfjRZygJvuTGEzzjxwMcAPycxK?=
 =?iso-8859-1?Q?fqYr3z68NKOMj5+bYTyyts9whmE9ISHyBMjAcoVmZoE/UJPnFxb6KDmLXR?=
 =?iso-8859-1?Q?xkledeiC8Lxzw+sjIRNnIkx0wrcze6fpDF/w5oVYNKpkJvQOE271/7UY9u?=
 =?iso-8859-1?Q?80JFi4DTpwT/XcxOsDS85XWQ2T3fuDU7nqxarOheoemPHOMIWAlo+Qi9SE?=
 =?iso-8859-1?Q?isXpiTz1PXSmnhINDqK+NIklGRDBJWFoaggY+TJMYHJ+2Xzzm/Y73Ap0rB?=
 =?iso-8859-1?Q?OI7PHOr+zWnjkxiKmPpSGAYXUVoh94leRT9F582l6jxVGCf4x9IYfw0xck?=
 =?iso-8859-1?Q?4XXLyPbnWwBkr49uh3SFBj4i6OUvwyQSLChMTtuOSe9/D+WOxF9QIJpvBQ?=
 =?iso-8859-1?Q?BkOF96j+dr4pQ6yaU0DiPYloeywAMH+GDEMKewSGWxJK1jDRzgY/EZATWY?=
 =?iso-8859-1?Q?woFDjIaguyXwkgqUGRN1Mx2zznX9OSKr+1gyqzaR2e1tw4ak9j2Bwa9hPp?=
 =?iso-8859-1?Q?1Ez+1nT4Cm78QEv8sgqXeBkAGdSNe3IE3FcqANueSAbon2CShaIwFQc2R/?=
 =?iso-8859-1?Q?OhGNilQSLW1JStOjY1oBeVVrr9GSbJFAA5xPrbFPMnAY+eLGIh+SqKHPZU?=
 =?iso-8859-1?Q?xD1GGDx5mUf19Dldm5Dst/0l7s/rl7ivdqcAOHKB4y67SchuYxEu84Y94q?=
 =?iso-8859-1?Q?wNuvnlZBgI0VTkhJ53ZphfZYw/Ut6dltUilg/uMKZo7MR2RJU09MieymtR?=
 =?iso-8859-1?Q?y/DpwQR7vXW38uOCmFg9FppI7QKv6lbtsx2fCK/WrO4v+/aMRt71IPpT85?=
 =?iso-8859-1?Q?fHabacZppTb34BvagUeJG/4kYUj84lT4EOcjg3KfM8e6vXfrXfPunoe2r0?=
 =?iso-8859-1?Q?KrJb9VNUvVh99R9gNq9aDCQmAn5LwqRwzDQy6HEQ1X667kwaLpVGjGs34i?=
 =?iso-8859-1?Q?4iPfn6DEVEt7wfIIcJqOAVW0XYlQ4iJ3tJ/q93NPDRjsjWAF74NX6bMZzk?=
 =?iso-8859-1?Q?+Ju/kHDxvgELzBTN43W61fO6yjLM7e3NRyeXjP1Tuf12FE98Kx5d0pm8TB?=
 =?iso-8859-1?Q?NbqTmHCHMfs0uDbPeGzRx/Ewka4mWJtfyV5uzPZjgxJJrcH77e+cxnek11?=
 =?iso-8859-1?Q?hL8y9SeryIRgQtC7A8YDH8/lgVZ9k9FKUvwQgQ1XSHuDW/CIgACJjV6M0M?=
 =?iso-8859-1?Q?jiQAKFCdAeCa+Sdj/URylvzjpxSlqYT/SqhEP/utQU48aSuBmlgHJR61W4?=
 =?iso-8859-1?Q?NWfe8VKP6f1d5ngp0w1bY2ufW8mLl75ycvuTw7W0fOOg=3D=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?kkF1nWhDZfeObulVgq0JUZlYl5L6c+AXgiZHu5rWExxmUOpLgpFHWXtaVY?=
 =?iso-8859-1?Q?xsPMF8pra8n1HspWBYQpNZcBkQ//ev6zf7KlCGvVHJ+3XHWlB9ztizDAUe?=
 =?iso-8859-1?Q?ivSGoQS3xpEh+Mzxt41Edpf2DLFgHo3WtS9+fXQqsAqEJ0ia0Qj9bn1MJw?=
 =?iso-8859-1?Q?OYLg5jgJmDOti4yYF/n5yjuJM54CAHddEHqYN52zgc51l0o5WYjKQ8dmN0?=
 =?iso-8859-1?Q?AloFi4XxBjsWaiwLxtWzTKk8h5tr0XS7AzlnqvaVi9K5HGlOsyllQBYLX6?=
 =?iso-8859-1?Q?sCMk9RDBUXZekh37+VJ2SFsyx+VPRiU1Zrm26vQg6GYwqypKuwTrKbRoB6?=
 =?iso-8859-1?Q?krNJbWE4IDtx5s+s2umwZh6L61Vv8udmx6FLtwvEg0J0gNstvDrgo+Q0VT?=
 =?iso-8859-1?Q?a6MrPmR/DlfuciwssE1y4wW6H34Eu3Mh/xTIj7DBQwsMSw2DTuEHOdUxI9?=
 =?iso-8859-1?Q?TChKPQXuRNjvo3dNog0K1yhROzdNnvIzXhMoJl/dv7ocy3IfkZGTbKCsgc?=
 =?iso-8859-1?Q?38jhvxd6q7q9xU1o+uID0qJaxvW1JAKUREb9dBiXfY5QHXup1+HVmeWwFy?=
 =?iso-8859-1?Q?I8V3fsuoMum73R11IXMis5uYBP75Ox5T267tmdGqKMGFNljLVnfOLf/5ur?=
 =?iso-8859-1?Q?O/oNr3QyJzT0fGj7e/3Ov0cE4iFkn7QUgPJsvpwMPrq3epLqg1q/DhVfdR?=
 =?iso-8859-1?Q?hv+kpVd1X2dwqSLn8kmZzbFseKulGYammUELovbXlvlYFqOybzDaYSLe6M?=
 =?iso-8859-1?Q?qwwKZR6NKlsbocJkp/q81boLQuMDyZYREsEXtGRxd+/vWTsDqDL7q+cOWA?=
 =?iso-8859-1?Q?oERv0OhZf8n3SylRWFOak2lkQBeDxJJhlC5ylbwNF+D2PYLueyoTWkK3Cv?=
 =?iso-8859-1?Q?qepmnx+NKM4k/Lz4d5FR9Tj1h36oVZabI2mg3mXghR/ZvyHgjc7OaUFFpC?=
 =?iso-8859-1?Q?6h8X3l7XO4wspaO5Bb2MqxUYIXq4PhDrkCJyTdrVNLzfHqCmF4gt+BQfvl?=
 =?iso-8859-1?Q?na/sjIfv7AgrTRndG/vssMklW+3/ov94bW5wj0CGLa6s1PYQmqIPYKC8PN?=
 =?iso-8859-1?Q?zIO2qydmuS2G4bi4R7zfnr7LTqZf0FCXZlr0vHSycQzbaMr8Phs6aMsILT?=
 =?iso-8859-1?Q?tfKk1WD+tgw6ZaWgizo8WR0trpG62KolZ57mftID59HgCvoEXUITDvwmXw?=
 =?iso-8859-1?Q?1Sgu2/0y6mC4AKbDjIJgW+lUFDM54brSXjBI7dwIqE72BbXi1muiDYoxMa?=
 =?iso-8859-1?Q?TsWqLXLECqORdrxh+SxRmCgYYGqfbO5RKPyth5WNOx+mtJKox3XlMtP1nK?=
 =?iso-8859-1?Q?r9M0CJF7C4OW9ZYRd+pQ+Rq7m4GgXAzawqIRRATZ1QL1YP/0d3KPGIQUhQ?=
 =?iso-8859-1?Q?ex+NkM75S5KUuSpO/PNF+7wsqTPjfzsB+CVwMMLfnX0o0N7PwX1T+FhhD8?=
 =?iso-8859-1?Q?5V3X2DOAN40B1lb3IrG9L2CXOaKZ6HRizBExFbxRZPeTH4pLnL0xWRmxRj?=
 =?iso-8859-1?Q?2I/1zJWE8lGc/qJ4+icX7m6blf13jXfZnl6zGB9O/Lqvrws7Nqpa+Oiriq?=
 =?iso-8859-1?Q?s1WyNUkatRpWZYWv4qRQYery/hpBmDeUyWW6NaW+C6up8A6WHR7NRBYF0h?=
 =?iso-8859-1?Q?+sYCmyyIVHsarvYBmQA0bI4wA3LQ5cA9npcYb06LmsezKHWpOrrGWT0Q?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cs.auckland.ac.nz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 873ec050-cb56-42f2-db3e-08ddfb5fd8cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2025 11:45:23.3882
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d1b36e95-0d50-42e9-958f-b63fa906beaa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 47q0jX+O88piCiK1A99u+siqDRzqLXT3ulzX3DqPgoHB2PG3+QHokftIQPWRiHQ6yEYtkQp/B3Mw7S8ZRJltnQs4TST1ouazdaVBlPIosZs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SY2PPF9F95CC46E
Subject: Re: [oss-security] Re: [EXT] Re: [oss-security] CVE-2023-51767: a
 bogus CVE in OpenSSH

Jacob Bachmeyer <jcb62281@gmail.com> writes:

>The critical issue for exploiting Rowhammer to corrupt spilled register
>values seems to be how long those spilled values remain live in DRAM before
>they are reloaded into the register file and ultimately used.

It also depends on whether they're ever actually read back from RAM or just
end up sitting in cache for a microsecond or two before they're re-fetched
from there.  There are some attacks that exploit the difference between
(glitched) data in RAM and data in cache, but in this case it'd mitigate
Rowhammer by having the corrupted data in RAM ignored if it's still in cach=
e.

Peter.=
