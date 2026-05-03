Received: (qmail 11662 invoked by uid 550); 3 May 2026 17:57:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11997 invoked from network); 3 May 2026 06:30:52 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gSU19cVDpeFjoWBRqhm8++wKD8LtZqb7AnJ348KM6MM6Kow1fZ2NXXrj7I4IlyJitQspWKc3yosPyy5JUcPFezh/K/jHSoFjbIFHRafyRIM2szb6sYv6/Jk6P7RVzk53zk80xm1T1GaAhvyUva9tqgiZYoT1R5vo+6T/UKLDllkPmhD/wwc2KSUHIB+9C9F63kA3LVBYTJq09p6mo8zF04kRhkU6mDovp04LMUUMw3B3YNXkjbp/7H/TW3hw3MoBqOANJpaq1ijE6TraIBAeEOr5Hw63WR9CZkejcRIQ41W1ozfskDwqL/v+9tHjDgZNKQ8LZ13j68MPIbqRifvmHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IBsa/rwmC6LuFY7ris8D48GmRwfcT78pAvz+uE1oTXY=;
 b=bDeOsReqwiUpFVpobxU9c0fpiW5e2upGcQT0bqsYJR49QqoPa3NlWz+92iYQ67rQtcAn1XwBU3ZiV6av0EnN7elpYLdRO6tSxLug4JvAjobxaD38MmtxdJ5x22ZSTSALRgdnvrv9nbl3/ALWgwgahg5ELUDq13wpEYVrp1n57XEKtR5RM0+uC7XNVd7aSTZak4V/oxdMgs57Qv5Hl9lLQ5C8Eq04zZzT8mFkf4ym8Cjl6sWM55m0kYK+R/iUoubHa65Oa/dSp1X8m0edFXAT8AUkpLyFHLtznBgB1CywXoU3bOLlDrsK32ZCD1bHAVkiBSeUwvBET2VHH0/jsQeqWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cs.auckland.ac.nz; dmarc=pass action=none
 header.from=cs.auckland.ac.nz; dkim=pass header.d=cs.auckland.ac.nz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.auckland.ac.nz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IBsa/rwmC6LuFY7ris8D48GmRwfcT78pAvz+uE1oTXY=;
 b=ky5bHpJ4DevlmwEMG8YEdqR7+yiU9NcJ0aTtArMZynTk7+2kfd+F7pPXS637nWVnJTUo9W+SfYjEMEfUPaAh5k7TsWuj3rb/qQm0qxMo093SGThNYjD52zkQZV+aa5IA4GwBe4WOHLbB5hOaevrCvZdKuIQ4ygIU0Du1U4Byjcw+wfikp4mYSIGRpcMwQSmoloFJKJttlDTk5zTferDDSgudtYnGOvNLc3giaiKBQyFGY/OprCCjDoWW6icUm5pXEdVdK5OoE8fpo85O14nAjj3A0NbyxDAYQYvfKmbvGkiVyOaHH62lAoMemCF3kS8dcEFP96fJbuysdu3pcAhu8g==
From: Peter Gutmann <pgut001@cs.auckland.ac.nz>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
	Richard Kettlewell <rjk@terraraq.uk>, Eric Biggers <ebiggers@kernel.org>,
	Linux kernel mailing list <linux-kernel@vger.kernel.org>,
	"linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>
Thread-Topic: [oss-security] CVE-2026-31431: CopyFail: linux local privilege
 scalation
Thread-Index:
 AQHc2CxKmrioq2wZyE+CKBEWS2zjN7X3CfyAgAAj+QCAAAUBgIACG4SAgAHQyACAADd7AIAAhS5u
Date: Sun, 3 May 2026 06:30:34 +0000
Message-ID:
 <SYBPR01MB63364E7BD7FE724E2225875DEE302@SYBPR01MB6336.ausprd01.prod.outlook.com>
References: <afJorKIje4O6dXbH@netmeister.org>
 <d6111caa-db61-498a-92cb-ea7a0aa0a5e2@ehuk.net> <87se8dgicq.fsf@gentoo.org>
 <afL-QhLfEKqHZqka@eldamar.lan> <20260430071917.GB54208@sol>
 <177abb5d-8ba9-4bb9-8b23-9fbc868ed3cd@gmail.com>
 <cfe5a1f5-f7fe-44a5-8af9-8e4c8d68b3d7@terraraq.uk>
 <3a52a111-e961-4ac6-830c-31465a7d14de@gmail.com>
In-Reply-To: <3a52a111-e961-4ac6-830c-31465a7d14de@gmail.com>
Accept-Language: en-NZ, en-US
Content-Language: en-NZ
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cs.auckland.ac.nz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SYBPR01MB6336:EE_|MEYPR01MB7869:EE_
x-ms-office365-filtering-correlation-id: 104072c2-e3d4-45b1-f972-08dea8dd7b6a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|1800799024|366016|376014|786006|10070799003|22082099003|18002099003|56012099003|38070700021;
x-microsoft-antispam-message-info:
 KrsfLg/hlkcFsFI3S30VG6CGjew35tGwXWluFcrKlA0THWfSo8fC2FyCfWplHy5IFLHoDLO3R8UDCNGggp4ow+KQGPyQ4eWLgA7fZXO13u2aWW6d3gY2+fToV2SQrrpHITOeE+TAfipnrJH3VkyIjutSUpR45OKihnyMjY/YmlICGUHMaLNtxA00pG4YVrd4dCX9zAb+0tsKldiY2FjH2vy0GNX78vd/sFEJErMp+Ah8eA28bCAbDjgkiJs6N9gnEKfo9RblA83zJ6ErmDHp6nltTPZQ7SLh7bAYerXYDnvzqzTxJvVGLCgBQZxQEviH0N+oEGE5YxZAphIC4sNBNGH8D/5cDfCdl9nAKk9gTQhE5E5gltpJky8RkCKpPuKDeZqjW6MwsQGhJ802zEYnXRWSB3zZmnzL8VXHQIroYLWX9lO7+B6aJoWMFN+cvTxaHltGahF1y+8w2N3myN34u3U/On/rgvqY8fvNsWhuYSgWf8fPENoWalRDH3RqgtPuAH0pRs/TtQHMGBlo6jbZOIbR+H1lC0tI9xaSjs/+TyFhWRjwwajHHzTuzYr6Rj2v1hjtDkBumvnphqKLBo/xMER6uvtnhMI5XVW/w25lmHtdVdX02NDcoIRyn9CKuYD86WdSWSOVtTP5wUsNZ2ylKDR6ZfsEtvSx6WxmS70XRALczHL53L6HoJhkuxTLrixepRLoj0vswAY/G6G++KLLU2GrVRd5R4+sn6iomRTw9pRjE5JBVrXQGhZolKAR+hbL
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SYBPR01MB6336.ausprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(786006)(10070799003)(22082099003)(18002099003)(56012099003)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?7vOQZsA3ywDT9oyQXDgtchvhsgVUJXID93JjNMWsxnkJ4/hw9JEp5MelzP?=
 =?iso-8859-1?Q?OnPhGJKIuh/X2LqzQal7qVD9kutZN8L+iraO3OdoGIe7L6mJhBRCiu1Nnw?=
 =?iso-8859-1?Q?w/wC/jRJhof0YcHGOK8lhzBnRKPHzQHNER38RtEs2WrJlDdOZ3T27qjPBr?=
 =?iso-8859-1?Q?2HnGZs/YDBuz0DuCILV/VcM1qGGX7/tdRDSF7gboEMSd6yYI3PyBsedp8K?=
 =?iso-8859-1?Q?vdvWZrgZIfQH9oSkx8XccUk8N4PSEMPkoHo0gYOBA5ZLO2smGApu5qOHxY?=
 =?iso-8859-1?Q?a2Tzr9TykYI6AC2ffmANq6dR6/La3dIq29qkFAEemqXtqGqoeaXghA6InD?=
 =?iso-8859-1?Q?lODJDU/CBQY4QJdFMB4pjVIigCg/8ALOOkToQsxLzFqD2TTMlvJ1GJXcbi?=
 =?iso-8859-1?Q?ytrKXW65IY/42VXr7gQl495bu+BjqVqXb1KxBIz3oCcTsQi9HVM+dOERAE?=
 =?iso-8859-1?Q?eckiRchqQCrj03WKoKVLC/4BxNYTMp4EW+L2Z30U3apctVlyJIjYTqtedZ?=
 =?iso-8859-1?Q?5J7mE+QqE//bt4hjHK3Z1EkKOQO6zDaY27yuXusHUJn3Cf4BsfbvxH5KG5?=
 =?iso-8859-1?Q?rcU1qnUWexcMx0LqaOsQK7XQrGHioa1+BlUdc9PdqFBOpdJKOiYGXJykr3?=
 =?iso-8859-1?Q?hi0xvlDJ7lPUBHHgISe5nI+UTp8tBeX5OpM2eXkNfMh9wt5aGUXvGk14bb?=
 =?iso-8859-1?Q?0kSRAQHmwdohlS7tb8tnZq+1jdhEfT0wtyiYrwHsxDYUGhbQK+4t78RlOA?=
 =?iso-8859-1?Q?eLOWjzekYC5Ie+4zxwqDVArGw3kkuNKRHILZ/wte4UylOn5dXFnU3OADuX?=
 =?iso-8859-1?Q?qC83DGrQG79DXsuk2kV4T3PPgvQVZr8fwlUvTRndLKbH3QN7WSiYm1C714?=
 =?iso-8859-1?Q?6sPeq7g7YTv5v9OGyinf632OEthyGTn9PYAc1oM+OHJqzV+X48gMKzGhl7?=
 =?iso-8859-1?Q?kIb93Mimk84qsTcxIJsrGilErbKbV1mZS8JsaiNbKvf2vjDTQW/ei8kjjf?=
 =?iso-8859-1?Q?hCI/l5/TgDd6gwWrMCCSJtxIO8aA7CsNHnesRHheDkQDaVlAcuLZMdDj6r?=
 =?iso-8859-1?Q?UMaiLO3AXiOkAsjttAEeKhlvhXadzpQesPCh6E5ln3XQcVeeR70q5TQduM?=
 =?iso-8859-1?Q?crVqR31eV7WCtRi37Hb7y8XgSYDlDuh2cmxEhuy4TlqJxdI6iz8Syng6o6?=
 =?iso-8859-1?Q?vVEt2YcH2OJJ2ol7ibki9yFk/cNqmGJSJ8OIw80MGoCHNTYHBpbgTgM+9w?=
 =?iso-8859-1?Q?IM+x1hFICRDMH8J3QBgrr3tH1e03EqA7mLc1MttmFp9cDO6eLw+sldbrwN?=
 =?iso-8859-1?Q?Q5EBHUHf4l+alepvDDZQB7Zp3OwHLy2IUs9F9TCAkNXpaxBMO6uxdpxLFL?=
 =?iso-8859-1?Q?UhPz6Wag67Dz1LmHFB+/r3Q9MV9FX87cbgxxNcmgKeYLU+OxnnoFtDOQZU?=
 =?iso-8859-1?Q?aRv/aWlNOWaxDmEcH6iCTCNlq8zwLYmzSvAn67/FeQzuca4BvcHPmnwJ4p?=
 =?iso-8859-1?Q?DI7aduyyqzpU87JvmZn3fDSfM0E/HOFidgjmpZoSB85wViAKJ9feeazEln?=
 =?iso-8859-1?Q?MbKCDWJQl3on+TfIYLeJR21dLpHd/vMuCX+tk+G9aT0BeaFgSKmaOqbO8M?=
 =?iso-8859-1?Q?zkQnQl0NSckFD4vJCISPDIOWGugS/pPdzAvLWI692ppJoyiiYVvsZj507o?=
 =?iso-8859-1?Q?OT7rr3XpOk/2Uz5onsYJt45Kn6PnPMGSE6HuJ5CetDQvxW4T/8DWT9XifL?=
 =?iso-8859-1?Q?klqGCcqiAxU2j6YdOOPokoNC6I2NgEybO5/UlemOwFJ13+riz4FgjyxBxG?=
 =?iso-8859-1?Q?I0MArsGP5TWhX/709pDnufNH/y55VEgASw1HpkFZh1SX7rFLLGAflqCBQP?=
 =?iso-8859-1?Q?Rl?=
x-ms-exchange-antispam-messagedata-1: aLItd6zhh9EBSQ==
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cs.auckland.ac.nz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SYBPR01MB6336.ausprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 104072c2-e3d4-45b1-f972-08dea8dd7b6a
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2026 06:30:34.4407
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d1b36e95-0d50-42e9-958f-b63fa906beaa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uFjGL9IyJoZkZb9oWwD2NgugIaX6vg5Ms7SLY3dKnvb1ovjKYpvIHHuTxyAHOmtZrbxsKT7iBE4Jm033eEk3702WCBoAyP3APfk3E1dk3Vo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MEYPR01MB7869
Subject: Re: [oss-security] CVE-2026-31431: CopyFail: linux local privilege
 scalation

Demi Marie Obenour writes:

>Can you provide benchmarks showing that the accelerator is faster than the
>CPU on realistic workloads?

That could be tricky.  The accelerator uses more hardware crypto than the C=
PU
on realistic workloads, would that do?

The following is from playing around on a few bits of hardware that were to
hand some years ago, so don't take it as gospel, but:

/* Check for the presence of crypto hardware support.  This is something of
   an exercise in futility because the crypto hardware is anything from
   slightly slower (large data blocks) to much, much slower (more standard
   small data blocks) than software due to the overhead of getting the data
   through the API to and from the cryptologic, the cryptologic startup/
   shutdown overhead, and in the case of /dev/crypto, in and out of the
   kernel.  The only place where it does matter is things like Cortex M3-
   level SoCs, so a combination of lower-power CPUs, no instruction-level
   assist for crypto, and direct hardware access from the RTOS with no
   overhead where you just point the cryptologic at a block of memory and
   say "process this".

   However, people really want to see the fancy crypto hardware used even if
   it yields a net loss in performance so we try and enable it if possible
   unless it really is pointless, just a software emulation (many
   /dev/crypto instances) where, assuming the crypto is provided by OpenSSL,
   you can end up in a situation where OpenSSL is calling into a kernel
   interface that then provides access to another, older and possibly
   unpatched, copy of OpenSSL code that's doing the crypto.

   [...]

So one solution would be to get the fingers-of-one-hand applications still
using the interface off it onto user-mode software-only and then make it
kernel-only, closing the door on the entire attack surface from user space.

Peter.=
