Received: (qmail 5356 invoked by uid 550); 23 Sep 2025 15:28:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18199 invoked from network); 23 Sep 2025 12:37:00 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eZwiF9eA5e84T8eGMaMmcxe2p0q7Uu86BcWJF0WCnGePow4MirgwA+Jq7jsMXGCVf+R41WtvOZbmiM6sxbAJvntVMj6Ts085mvdVyx07hp0G9Ce542+IIYTUM+LACdG74A/8YsFqNAF2GAUsLrzUtVqswhg/wX/JyejGMAIb1kzom5qoaR3ZBQOylfOb1DS4algZAEDRpnr0AVhaBi1HipC5JdmNowQqVxUGzpzzLSydvfhWztT+bgfWMKSw0siDq+5qJeRyQ/GVhjNuEZeot6aWcIgMBk8q+AyRZN87SFWSyFD7rlVAggehYfrZn5n0LponlDBPOFRd8Hn/iU816Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KX+Q2XHaHScPYjpq1oTjKhnOtZ1bzqM9GRBgL59DuUQ=;
 b=FWxIPCN1Ba3fX1uBOt94TWKIre/25MC/5q61/hUww2xCfQ/gIkUXQq6kMWQWJX4KPt/0EnBftNYgopJu3t5Sm4YhfdMwLiQQJMy+wd8U9TX1PcD3TmKiWxD0bvD/u8S02E4gwFOaINYBsIEILMptnaEhTtFdHQ8A36YAkG4TOmjvAI4oyQVR1eqRGHp0l9G7T6sK12UJoGLdjJdt7dAAylGVh7IzK9eaFlNw21ZUoAfcjvXuxcv7KfctLCORxgY9FJWDrlUYXrLf9WZpALGXjDBDZkyqqNZdSQQkjOoQHVCBdUFuWrVLWErp+YzPlsqcNCFYVAe55zgta3ZFm3EcdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cs.auckland.ac.nz; dmarc=pass action=none
 header.from=cs.auckland.ac.nz; dkim=pass header.d=cs.auckland.ac.nz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.auckland.ac.nz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KX+Q2XHaHScPYjpq1oTjKhnOtZ1bzqM9GRBgL59DuUQ=;
 b=BiMd+opxrtzLcBRMl2losLo+D1/EhYNVL3nJ1yBmPtqPd5AG71DS8+VL5rr9q2upYj4uGYOjBXt/zGfEOtJ7FGv6tzSp2gEr/lB65DUdOc5Ziylnz4B5rUXg4og3NWu1aPsE8kw5qnJRKYAvw2wc57NOeZbYDn5Rps8CydsLgcIW+bJpScqhqUoaKaeWK0bmZGlZ/kOs8WlY8N7gXGgM+P27Faxvm4a0kN7cmxLOOJAgvPI2znwO1w6fW8WYOu+ntSlhdKC7LG58zwaqxlMRG1XwuAez1IPrPSoOtaFG+0ByxIaEmb6nIYW6nNHGxEXsEv9alPRlSDSIC5Q0tbvsaQ==
From: Peter Gutmann <pgut001@cs.auckland.ac.nz>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
CC: "openssh@openssh.com" <openssh@openssh.com>, "Tol, Caner" <mtol@wpi.edu>,
	"Adiletta, Andrew" <ajadiletta@wpi.edu>, "Sunar, Berk" <sunar@wpi.edu>,
	"Doroz, Yarkin" <ydoroz@wpi.edu>, "Todd C. Miller"
	<Todd.Miller@courtesan.com>
Thread-Topic: [oss-security] CVE-2023-51767: a bogus CVE in OpenSSH
Thread-Index: AQHcK9nVQvgc26eVTkSHWXCcKT6jp7SgGoaAgACayG8=
Date: Tue, 23 Sep 2025 12:36:45 +0000
Message-ID:
 <SY8P300MB0711638E26D2EA3CE5E0ED7AEE1DA@SY8P300MB0711.AUSP300.PROD.OUTLOOK.COM>
References: <92a89d5d-e0de-c713-e7d2-83f971574eff@mindrot.org>
 <20250923032113.GA14348@openwall.com>
In-Reply-To: <20250923032113.GA14348@openwall.com>
Accept-Language: en-NZ, en-US
Content-Language: en-NZ
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cs.auckland.ac.nz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SY8P300MB0711:EE_|SY9P300MB1564:EE_
x-ms-office365-filtering-correlation-id: 69238980-c5ca-4634-165c-08ddfa9ddb86
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?JARYTiwZSTC3BZ+HRXhD/x881zXiR9nd5L5nP2e2HDa4ELJbMVeihZQGH6?=
 =?iso-8859-1?Q?XIvNN38tIDAaeuuYQnZNI6Rscu0ZN3PXXbS562n6gmtVd5rdxcWv6Nc+PX?=
 =?iso-8859-1?Q?Fbvur8cHeMfdab7dlhtwg/roP1uW1Gvvcj8FTApd+K7TnlU+/cyEw4zVf3?=
 =?iso-8859-1?Q?bvrvT0CUkqWALTFE9ZzIWQax3aMsRfY+UCfpTNcfoB6Dt304LoipV2oJLK?=
 =?iso-8859-1?Q?RpiUO0lDFTDYiAMJqqC7SionHn+u1idyWL6y/BxCD8Pu2Ox2HXH3iH4tX6?=
 =?iso-8859-1?Q?KTc8VP1/ESUjbhjoVhpMmHahfGUdn2qmc/gVrDuwF1iPV5ntZacCbslilN?=
 =?iso-8859-1?Q?ptFQgZAviS5AbYenw5qQmMVTJOJ7pFzo+jjLkqOcx1aaWujQ/h4upBIblQ?=
 =?iso-8859-1?Q?7pEEheCUefARHIhjvKgeQf6eJLEp78vsDy0tHlrkU4FhM9vdMhxY3Eovng?=
 =?iso-8859-1?Q?w853yuBigR4483QMLtm2r+nVajdElIFhpg6KDstug97rRGXxpXONnUkc2E?=
 =?iso-8859-1?Q?+ohnrMBIPeP85wX9Ul6mT+4AvkJ4txbhtxhSsYFy/GSCwYvcjygCCLl8Rp?=
 =?iso-8859-1?Q?jsxZkguNOMSpHVHUZaZotc1R8j1Tmf59NXsRGrrG/uB1Hp3ViU+zEeV2r5?=
 =?iso-8859-1?Q?cjUz088j93uXEe//BOOqGlWWTC9/dH6Mgii69XMOVgNB3UdtI2+XQlgDQb?=
 =?iso-8859-1?Q?6T9kf5e/LiQH5dsR+tuccoV/hvf8jdoL2A60Zzmsi2dX8aNTBca30f6RTc?=
 =?iso-8859-1?Q?bQcQ3eUWD8yM42KhkybtvLYURya9RN6Gyr621Ybbcj04uIQKlx5tIU57th?=
 =?iso-8859-1?Q?oWMMcXssEfxWrOEfeu+cyYiqcImADmRzZCHV0lue+IjEDtVgmxW+L8nACA?=
 =?iso-8859-1?Q?h5EP074+kAsAeguvBk4SW/yHNJg3HoapjtdjvBJ6H1KWijqPby43sWm9n/?=
 =?iso-8859-1?Q?+MVvX91ZE9+rrkcHSTLWJvhWZ4e7GSS4VYtRYzMOrIWyhFfcFi6aYOMZlE?=
 =?iso-8859-1?Q?ZO4i1RJBLvLBS0QXz+QFlKpFmZBmLEKev4gNvpwNfD3Bg+FzS4lol9P/jw?=
 =?iso-8859-1?Q?gFV4UdBflJErQ9ydXY2C88kOhD1g1/jE1nEPiCQrWF53QT9GJ+oBhcSn2D?=
 =?iso-8859-1?Q?vcGwIK1VHhu8UjEQIrxMfPrWKp7Ub4xO+ZVeLPNrA/3Hw60LbYoOAJwCfn?=
 =?iso-8859-1?Q?oTAsZ+7b1lm83yoH0hNbfBsGWrl9XYicLF66sE2q060Yysj6DBVSs410u5?=
 =?iso-8859-1?Q?JPFzQ/Y44xXp2bD1Plnj3nDHrCmpzlPRkm6rt2ytTGUt7O2z+5WHh3giYj?=
 =?iso-8859-1?Q?hpNyv6BoWk02fOs28Mj+k9olr0gMEWgzrrkI8aRQ7Ti/sXe2/d4qwyx/uf?=
 =?iso-8859-1?Q?zk4UcKha0Gysjithl6+BS/StCPCyOT5S0Ud28ibev8JGU1jykVAJlFyAoF?=
 =?iso-8859-1?Q?s4XSIKUNAPDO9Pk73uIbbeZuok5i7fyC46VR3JBqHXNdx5SUWGIeMDOjlo?=
 =?iso-8859-1?Q?g=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SY8P300MB0711.AUSP300.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?Pssh+sSQjA0HRiKNmJoTtQKHRxkQWlTTFMjyGOLuBuGUpyBcx942Iawd65?=
 =?iso-8859-1?Q?Me1EClkSAN1N7YkwP60ZsLCusooDvIo/fCKu8hoIgk8NVZUDzuJX5k56S3?=
 =?iso-8859-1?Q?mts5Zf7YwklRN/QCePcEOdYni+81DBUq4BVIX6TsQ/PJmtU5SLs1NC/Ckx?=
 =?iso-8859-1?Q?BSGSYwuwhpPbPmuUysFra8NA8bsL0itTB3XrGylbU/PHyuWc+KkxvcfsbL?=
 =?iso-8859-1?Q?QEiCFFMmeh/IR78cjrJdYZxuNHVabXMQZcH6YTC+YQ8BdT02l1p7HCsbkk?=
 =?iso-8859-1?Q?8xDpD6ktcVrbGRLW7LMAWmLztPuI9RYtL4GtYjuHjoyEbVPt7B9Rszx/tC?=
 =?iso-8859-1?Q?dRzhmTE+Ndm/w1BxPQWSEcx9gzNpTuUS/HUp+NtlmU0PfqKPRrEw6waQEM?=
 =?iso-8859-1?Q?cM+27EWw6zwDVNA+bJ4wNr8rTfPRCk2oGgXhOhcEXxGVD5IiXySeh4kkj1?=
 =?iso-8859-1?Q?sJPdEoxJCpJYjs2rdXqQeEDEkHa8i7zz/HrU42VTjuzW30+qWV5YfnE3yL?=
 =?iso-8859-1?Q?YILK6kxbFtWJSd/Hh6DJkecbfW/fRzVdVtdEpybTLa2mdgXZE9bxKG025v?=
 =?iso-8859-1?Q?B7fQK/wP30aoqmP7EqHxqM7hL1DGrJtYR3SF8VPCgbG4ZXELU2hUDhVmHZ?=
 =?iso-8859-1?Q?SDTNM//SSq98yEJxfr5JKoJU+UQp9mBM1xYMpNu0MekidJUVCa6Qx/FpAE?=
 =?iso-8859-1?Q?FcFxQ1++PBLCKfD11t+QXbxU95fSAJYrDUihnXrLpn+XMNWmTt0GeD8kYS?=
 =?iso-8859-1?Q?PNgQakNbazCjJDVx7bBDt0YWKK2vdBwqEHoqixbztdpL4iXp0+m4aM+t9Y?=
 =?iso-8859-1?Q?wovgwaO6boV//H9ytxT6gSu84NLHyPSgTND3IslYfVCa9K/MfgTFUwMarg?=
 =?iso-8859-1?Q?pWJ0HO/VSlzBYDGQdMJQw8yDi4lQ2DXcMu2nSm5n9E3omQBTIU9/ifGliZ?=
 =?iso-8859-1?Q?7kVb/E0I4cHTMZQdbrr/OsShP4SJuUmgu63UtyzFg0Px1uNcj9CF3xjqEA?=
 =?iso-8859-1?Q?tbniVaeGlRAIc+Ob+p7MTYdPuI51isnsVi34wTKIqcU+Qtxzga/omMYhnk?=
 =?iso-8859-1?Q?NyjuvvvwvbHPUI6hmIgPPrhDKp9ls0JEYHjmaqckY9BuM295rBeCcpnb/u?=
 =?iso-8859-1?Q?WiF86n2/Adjv8xHZRuFN0WaVo0/N5B556OF14ugau4J8gOlLPvod6PVJfz?=
 =?iso-8859-1?Q?7TYbq3sP+lsc5JeZmgEGsbqssi+UsXE/h+XNEvK7JIN5QpiKI+q+lOhTyW?=
 =?iso-8859-1?Q?zbw5gqPouQDzsc53MbMecbjpHrOS5VZ1oUkRVdTQvaa0He/Jgwp6xgUzgq?=
 =?iso-8859-1?Q?uRqxH8dE8ZIfNuv3KZSuevic0Ux2t8RWZY4FPqBkgnmmmxeL23p6yI2dm3?=
 =?iso-8859-1?Q?qB4OiC0WWEuXDwWQGIWlqC72USvkwsSpKSScSXrC3YvHU7T55JfWsn4oNR?=
 =?iso-8859-1?Q?RhMoggGkomoLD3GMAJa5mR9xqSzuBbm/NE1+Uv0V/fIC78JpoJ/r6vw5OG?=
 =?iso-8859-1?Q?pAPvZNIhbCbviE/nyJLPmVqxWAUtH6AN1c0196x06C8vPvQEfMbfY4s40l?=
 =?iso-8859-1?Q?e884tEyfIoRtK6O3eM0qsRWyjplTABvg5mrb3A8LqZms9bTRRwiT6XdAU6?=
 =?iso-8859-1?Q?2zCE10QEY6MCiC4MdHEWmWTYWAOINBeaJKtLDq32c5yEx4pkhiuR7J2A?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cs.auckland.ac.nz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SY8P300MB0711.AUSP300.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 69238980-c5ca-4634-165c-08ddfa9ddb86
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2025 12:36:45.5918
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d1b36e95-0d50-42e9-958f-b63fa906beaa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oWT39XvLHYfxnKhvvYgvJHPv6rbxnPnD7Y+Md+i2lJnOJtmmaTrNyFwEgNt6zeE+E+F5EXCVZR4xCJbXVR56zX0p3i5XvlM4L3Sh2uPeE0E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SY9P300MB1564
Subject: Re: [oss-security] CVE-2023-51767: a bogus CVE in OpenSSH

Solar Designer <solar@openwall.com> writes:

>I also worry about risk of software bugs that a simple 0/1 flag may be more
>susceptible to than e.g. magic values would be.  Maybe we can identify a
>reasonable level of defensive programming without going for slippery slope

You can write code that deals with bit-flips (SEEs to use the correct term)
and the like but you pretty much need to do it end-to-end if you're worried
about real-world bit-flips, and that's a *lot* of work.  If you want the fu=
ll
gory details:

https://www.cs.auckland.ac.nz/~pgut001/pubs/software_faults.pdf

To answer a question from another post, ECC RAM won't necessarily help you
because you can get faults like word-line upsets that ECC won't detect, I've
got a second talk that covers that if anyone's interested.  The upside is t=
hat
most modern desktop/ server processors are essentially rad-hard so faults in
the CPU or data in on-CPU cache memory aren't so much a concern any more.

Peter.
