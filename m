Received: (qmail 10053 invoked by uid 550); 14 Oct 2025 16:07:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11620 invoked from network); 14 Oct 2025 14:33:41 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d6IRUcPUI8lmVMWKk1k8Ps0aJ/wymZPSbhPvb5zZDI1NX2bQJ9BU3GdtguHdiEkXR4BsQGLOgLwTi8zhVL7uGfZthsU2Z+knFZCawjksBMXTY0xmtqfUv0OZhUPvms50K8OR+p4Ky3LpmNs20vOoHsP5bmj14fKDuZI6SFFAMYFjjVFdtq+zSXP4LxEMdyKVkVBuVehimT777Ia/k6XAhrl2/K1HwM6cC8PcdkonDTFdf5z6wDCQjPPbjmc8Pr9w3RdGZNGsd5G8ab3HoyJ8iB6S1LjjRKHJkzanMBd5LxfUFU1erIJvMzDzTOhHl/vDL4vXnrCnzjooiI+xu9k1EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gRP98z84xwTD16x81rkRnzHjobKMS4JKUpGT7JV/geM=;
 b=RCbkH7CvQyhrNhKGszQyDdKQFB15rtv/6TjslS3C/ywneJ8cKa04xm+cs712Dvik8DGbHsFQWRfqWX3q04HOOt3aNTlvPY7MaMA7w+xCKKucbX6P5bw7ZPOisp7xBZdVZwLBKW9GayVGriWY0yIehkSmLpTyqbQOu/Ma6D4lPNl5cU8Ju0n3ArdsONW0fkHaUQJwesWXCEcQtwLoD2LhCynwU/0Q+J6myWCDQwV8MfeoI/5MtoxYF2KUxIWohyuyZSI5I5sAoAYOASL3HYUmjmVmxk1/g5D7NWmqCDOXuOzphYCGPvYjxoLPEL9LYD1xMKCXHvh8f+5m0T+E3bmFRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cs.auckland.ac.nz; dmarc=pass action=none
 header.from=cs.auckland.ac.nz; dkim=pass header.d=cs.auckland.ac.nz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.auckland.ac.nz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gRP98z84xwTD16x81rkRnzHjobKMS4JKUpGT7JV/geM=;
 b=IGJvUZdP0ct6k1nSIXDJpIy56Fd9vWX4D4zpDRbuHGrGVl0LHysB1Klfi7UTru+nI/DuY1cp1389Gbr++vBGoRJDMF60F9FNCo6LP8F1JoQDIynH17SDoqeYOsykcRLoSzqMbmf7PFQ0UVNuRqfkhmmzJh8NChPVb1b5PFXbJLx08nc/JgCcZFBlwj+cFl2CfDL/LvCJ00o51vWfVKIGtosMCrHD2Cmg8QBc/VmldLM4gpuNW71nZDiEl66+iA86lse6FRHm7JndgKekycswNwgUPdkIeFo+CHYUPC9x4eMyhUZ7Aco1shwRIKoV0uxynC8Y0grrTyQX4gdKxegDMw==
From: Peter Gutmann <pgut001@cs.auckland.ac.nz>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] BoringSSL private key loading is not constant
 time
Thread-Index: AQHcPGZeFNOi0jWGqEeAjqkOOSN6pLTAX2WAgABVLnuAAP7QAIAAAjws
Date: Tue, 14 Oct 2025 14:33:26 +0000
Message-ID:
 <ME0P300MB071388168EE3469B38446156EEEBA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
References: <fd686bd9-d2a7-89f9-f438-7ed38e127591@iki.fi>
 <CAH8yC8nZDxYF1NyGjHn8yOADBioNwPB4WTjUZGPmbRTvPLq2tw@mail.gmail.com>
 <ME0P300MB0713AA2595680B38B28287AEEEEAA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
 <CAFRnB2XECXsKDSuvBCeWHwC9apboBdvhYCEFrUo2TuonHs1yFw@mail.gmail.com>
In-Reply-To:
 <CAFRnB2XECXsKDSuvBCeWHwC9apboBdvhYCEFrUo2TuonHs1yFw@mail.gmail.com>
Accept-Language: en-NZ, en-US
Content-Language: en-NZ
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cs.auckland.ac.nz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: ME0P300MB0713:EE_|ME0P300MB0581:EE_
x-ms-office365-filtering-correlation-id: 229172af-cc9c-4260-d083-08de0b2ea30b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?JR70gsqoG8Fk9dZ9YNzHte3sACtE09w297Wr5gGPrEIi281AoOMhhpCQPh?=
 =?iso-8859-1?Q?Xw0pbI9gItJYpxjUqToyn+dHAWj26cEPFDeV0lVODkyrNeeCXV2ArN7iid?=
 =?iso-8859-1?Q?fm+PsYiJxPH0R7G5J+hjiO6j3HUKKfcxJho7aNEfF0WSHNteFiNUz3VXuE?=
 =?iso-8859-1?Q?xN3YY+j8Yv1+nygyLCoqxmMTKCqxdUaxb1xNZ1jiQlICDmvtsqJZNeOoo+?=
 =?iso-8859-1?Q?xcq9BGC4bptvJVn6faQ8FqjOPAYmsnb0tva5bU81CU/SE2dyGRWsLawOHG?=
 =?iso-8859-1?Q?xu2xZRpam16MkZRCw/yC4Xq1EDzto8SZnc5K8FT1Oqf8Ftdstlp5PSLUMU?=
 =?iso-8859-1?Q?6ZG7Qfrr+yWd5ag2eLB7NIedz4fITLDwHd1pVW5jKtW4w1tJ25YB3AOrIx?=
 =?iso-8859-1?Q?dmUixp4PQxIbE9zvEy2ZbwyzSYCo4Y4D2vz3g3VhQVzPZKHwly6/cW16t9?=
 =?iso-8859-1?Q?89iXHUfIMvUjuaSWhEnLRTy14KFicFYF/0jABFoGfxYb339Fvr39W862NA?=
 =?iso-8859-1?Q?f3xEqUztJ1nm2eDV2Vvtq8YDeXEK0785or1Br1N9JuA/ZY5nErVqBOv54a?=
 =?iso-8859-1?Q?vZH1KtqlNxMQomR89CT4Ok08hwglQa2FKjgGxNDcqKCAWEnC+yXoZdNM4D?=
 =?iso-8859-1?Q?3eZY/pkH0X1w8ak9wC6NNr38meyBT8qsUm/GBuDxkGNZ18KO/R1pTJfT27?=
 =?iso-8859-1?Q?t0Po3Sx2szbj98o0qpRkb+L88F4lakt6hE5dviFmMOsuJeS/IZl6a848+d?=
 =?iso-8859-1?Q?KAKmSQVLPQ3ub5NUwCgNeAwb1DurNM4OwjJB/2/28MCsZ5rNzGSkyf2qt+?=
 =?iso-8859-1?Q?WWsh4Pt43eg6zs5TZmo6TkBSMD2TX4kruE8AWDVunuJL7ZoFL0ooE9QAo6?=
 =?iso-8859-1?Q?w6cosiCk8ZkENqicLBIAvRD3FkqsyyLUqfw8IP4N/pRQ6MBWLQk/gfhrqe?=
 =?iso-8859-1?Q?tBNgbJRK0ypcPR5IVaht8hl7QCZixa7q4lhaOt8hcE3MQHjw3gXVdYIYzE?=
 =?iso-8859-1?Q?8B+C4bj/L99I5NFhAI73mJfYB5rbvYBunlWDmVXVi6zxOqlQtC43DhRUIY?=
 =?iso-8859-1?Q?QKxxPQhFV1PjFoinxPEjcflzoeXfl0yjJC81rn+P+2AMHrUdO3UC2ABLmg?=
 =?iso-8859-1?Q?uRVCgketkdYkKhusQ3fnjTw1MVJXSR3NIoMb7DYg2ELYxin1WE7BDX6vyw?=
 =?iso-8859-1?Q?ORFwKN8jf8IojVXK7Q9GHT//AurL5dKpvxt9aKVE9yw0eGl976bUktz2r4?=
 =?iso-8859-1?Q?eInoyFvTF0RYQ7MBkpNDIt3zuBPBLVSWU4P57fFfixAIjRJd3su/TbwSYd?=
 =?iso-8859-1?Q?iiEJpYu9Yq2ILR9IygMcEvHV7Wac3J5pBhjbuQJRKy7z+sCf9WWCA7rhyC?=
 =?iso-8859-1?Q?ABbjWycs6jFSTSIHi1jDcOOx/bG6kC7j7Da5JKKVx+3A63ytmL2RiWoaHN?=
 =?iso-8859-1?Q?svLNzNW7WmZFToZ5SXGFwIrH3MVveEKV84hWFVogw870AwZ11U98zZjFOQ?=
 =?iso-8859-1?Q?KOusYUwwWV+K31Vk/uz8ZrZyQe6rC3rb0WjBKgNqv4Vuw0FR6L5bTlPR9x?=
 =?iso-8859-1?Q?AgLR8zv3p5+rN5zpehwZDj9YV4xb?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?5qXcxi/idMqOWvR20etSGSAdQiQ+8x1NpkjIRk2hFWbu+35DTX2RJtc/Yb?=
 =?iso-8859-1?Q?Ei8e3vamCwhVTxNUru4HKuUUfpPqBoOi9M524ZqX+PzN6ta7x7AyzEq67j?=
 =?iso-8859-1?Q?ZDtO7nvC4Ft/MdjjiEisq7Xqqy0EZW0BjOWb+r8iKTp6LLckB/DR/D7Ozj?=
 =?iso-8859-1?Q?WgcI0trE0wNUmpmhlHpponBbWS7OXSMaqUJejsRC3gVQM0jHgqiCkUMb7X?=
 =?iso-8859-1?Q?ZVmPMyeoFgtMEnGLHNFlv2uwjvHbgABNxG/qGpVxfP0fvQNtSzo9IiziVX?=
 =?iso-8859-1?Q?lIin/9jBHMaKt6J6vxRrGEmOviQXlxl0ae39LazkexAT/LJoubPbW74DDn?=
 =?iso-8859-1?Q?L+ZL9CHmYh+Yln6fEa4Q24QmyMZcJQWIrSODq6Xln2J+vdWF0ra6INI568?=
 =?iso-8859-1?Q?50f73cOMOOHlZ6wgd0KFgLQWCZTuIHc+dE2jW4bR1BODBCvxBClNtqypXt?=
 =?iso-8859-1?Q?UKmhe8Kpv5tHN+saUM4i/byXPwp83WFwC1TWRyxd8H86SWQAm7hQoNCe9u?=
 =?iso-8859-1?Q?lcVuw0S2zW13XSZRK+hATmbfkWk06gE4HPhcGgJhH0Ic/9utZGShVW6ac4?=
 =?iso-8859-1?Q?pDy/Q4SOFaw9uVpfKkkP+1n4PQyjZQXQ+NsUl6jilQShnU+xP5TG0STnRj?=
 =?iso-8859-1?Q?xU7ebl/gfz7xRaYpbCC5FB/tPzn2HRJ7cG7rwByz1o/Nwni6HL8iJEW+FN?=
 =?iso-8859-1?Q?simNZtf0COpnd2Nq8zDUkF2TgSS/B/IhWhbfK8HAy4HdjLCSB86yXdrL1B?=
 =?iso-8859-1?Q?6FXyjXjZJ5qbAEkawkOKJIz2tMclbmiDoWJb+A9ItyEjP3qL478fatHV6c?=
 =?iso-8859-1?Q?Ubvd9zyRvfoWE9O3uulTuMQdD0nmiMVrGUBtxtLpu5zr0iIw3LJkwRSawX?=
 =?iso-8859-1?Q?/Zov2Pe4d6ENogOGZ05ItjdXGH5x9VgwjkN9tMMzPGWjzZkQwjdqhB8mnx?=
 =?iso-8859-1?Q?hbBfil4v1fVz6GvAJl8oPbWI33vlZzKKHHFmG1udCKNSlVe3qGF10mypsZ?=
 =?iso-8859-1?Q?h9lTqA6kbGKcu6YgGzWNWTDhEdWsNWezbus75fEoW3BXA9SZUXPOnK83Lw?=
 =?iso-8859-1?Q?0PSYE7C9tASbOCGb25QoA4k80jQQwhCHionbmwK1aa0UTLe2zUaTPkgs/x?=
 =?iso-8859-1?Q?X6ygfNTTN9LZ8ME2kI9Tqf/t+XUfppPKb4FVPeIyRLwEHwgjjKCgLomZsp?=
 =?iso-8859-1?Q?LM9kSWjQSmXCgEHSm0iDFcO6on1CITHvcfE9PdXirjiGmkO7YgaZt526Ya?=
 =?iso-8859-1?Q?G4GgCYLXcuo0fe+dT9F/fkhXc7Ykg6kPZLq2MJcsS8i5S7Myb5tY9W25x6?=
 =?iso-8859-1?Q?4zEhnRG251Gs0iKWL/Km+LHUQuZa8sj3eu5w3GXXkcep4LIfDSUppx8FXD?=
 =?iso-8859-1?Q?FuG94Ew5MqXb7LekaCUfn5m4XTXZDCTbeBE5xdcFjBnJQMrSKu7WQvFQWA?=
 =?iso-8859-1?Q?OEEt+fUNYcooz0kJGvjMdJUeMrCurwq2mQuVx88KFNDhFGeb46BpIWMA31?=
 =?iso-8859-1?Q?TV1+VuDALW6e96WuJ/bseNJkg2AFQKRw+nSPD33a2dP7FDQjJaap1FdSdJ?=
 =?iso-8859-1?Q?1tmxVuQkcb7hpDtGH3zk+g1nzoQNsO6dZW+kNb1qKlFkmFNYiqGzcoWQqi?=
 =?iso-8859-1?Q?cKi/ifWYcWOBYLoQE3jFCXFlMTV82Qw0GdNHYKWw4JHcIebxRDAlVK7w?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cs.auckland.ac.nz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 229172af-cc9c-4260-d083-08de0b2ea30b
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Oct 2025 14:33:26.4555
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d1b36e95-0d50-42e9-958f-b63fa906beaa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rDfv5ICPCuai8dAEqwZolJGYcYpdCknOR4R1EzQJmoNWoBR5ydLbU7BBJhHUbACyfqa5JQF2uolRgJ5Cdw7srSqyP2zfPrQVedDcowcIwtk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ME0P300MB0581
Subject: Re: [oss-security] BoringSSL private key loading is not constant time

Alex Gaynor <alex.gaynor@gmail.com> writes:

>But it seems to me any claim like "there are no timing side-channels" has =
to
>have an implicit "relevant to a threat model".

In which case it would probably have been good to explicitly say that, beca=
use
otherwise it's a "challenge accepted" statement.  The talk was fun, and this
wasn't presented as a serious attack but as a challenge-accepted one.

Peter.=
