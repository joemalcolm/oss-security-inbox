Received: (qmail 21940 invoked by uid 550); 28 May 2025 18:13:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15367 invoked from network); 28 May 2025 17:54:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bn.com; h=cc
	:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=pps01212025; bh=YrjgtIKUJXOI8V6UwUx7gA
	q1SkDcmrnSBOTPrXLrEzI=; b=SK2fn4oWaTdXOPlMbIyNwq4S5qQO4cUi/CpNwi
	NA9MLeNVP2cPNs+Hp70PHm7YaSIg0O4ZxcQmIGX2x/gNBb+M+CCWvrmnvw1BP+RK
	wH0lh6/bAJGPfvx3k1T5cipcryllys14LUQ0zS+qaujvRn5XdKdgm7aWU1y5Qt27
	x//6HVEO2ks1UtbR+Tf/ge9xtRvb0TQmBe7MebgNlT07oEZONuPjRqmLq5yodkvU
	eY/MfDS14f+ytYNKA+Unj6pCP9G3H0skWFHJc0BuMF60Mv87OeSZWpoG4Yh+jx4A
	YOGi8nFB/apsp3bhY+Xm1WeajiVGmE0UVq/hh4V5lizC3q/A==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TZ4bVYzbJSoQeD2iIFWSDSFJFtiwoMdAOrh0Y5kKGCWb1k6XyacmCcTPwTZ5nIp/3Cx4cBWYHVRwbQJs/JBVTqMEvoffdYRptsGkSoYbceJOa1lR1UBnSMwNZvd81D6/oHwkhSB74kckQvdHkeBplPCCvjssZXgiY2Une4S65L/ZAd5HwsflgcuFZvWxKdp+V//yhp4LHU4/6vJwHyBMeU+Pn7lHhNKsIazT5SGGbWgoCdgjlFtXEDcHaWqCOOLx3tUEskYALX8yEkLXEqpDZlzg32X3dRvzh5ih5bbMzjBLXopGohiyxqh6WiwzmTrpYv8Hb0JunTXGvAT/2krtWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YrjgtIKUJXOI8V6UwUx7gAq1SkDcmrnSBOTPrXLrEzI=;
 b=eJDjku8lgdCgOQg0b3IkqKL4hESuzLtEkML9+Ov1LTEPta0sQm37USzHy33wFMHeFKUzmTr2uSVB5eL3q6irlKC8TCLoEEZ7oE7GZ1tg2hILl2s/hXcOOAKp89WWKdtjqDuHUot3pm/LPrnWr+a5ooR07qTvTRfVZFKPcncr8EdU7tTM7+tLGjoSvFs9T54sI0F02YpBFpurqUDIeREWPLF6l8JfIp2PA8ZaGbGun6O2ScFM7PieDQY3rGl78G/T+rQ8uzVNF+Cs19tig1oiODSVo21Va8oCxAQob04duW/bHk8jADhcKAW6YmdattUqg611NWdIss08j200Pi3Rxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bn.com; dmarc=pass action=none header.from=bn.com; dkim=pass
 header.d=bn.com; arc=none
From: Jounee Kim <Jokim@bn.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
CC: "security-officer@isc.org" <security-officer@isc.org>
Thread-Topic: [oss-security] ISC has disclosed three vulnerabilities in Kea
 (CVE-2025-32801, CVE-2025-32802, CVE-2025-32803)
Thread-Index: AQHbz+9U83oZEUKxO0674+sxFVkQWbPoUzdg
Date: Wed, 28 May 2025 17:54:41 +0000
Message-ID:
 <DS0PR11MB75805E0CCE45FBDCE7F9BC78D367A@DS0PR11MB7580.namprd11.prod.outlook.com>
References: <2f8f64a2-118d-458e-9f1a-182d4d88ad17@isc.org>
In-Reply-To: <2f8f64a2-118d-458e-9f1a-182d4d88ad17@isc.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7580:EE_|CH3PR11MB8517:EE_
x-ms-office365-filtering-correlation-id: 43b414d9-1e01-496b-4a8e-08dd9e10b8c9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|366016|1800799024|376014|4022899009|7053199007|13003099007|8096899003|38070700018;
x-microsoft-antispam-message-info:
 =?utf-8?B?TmJoendtWHg4bEg5VmY1dEVmRmRiYnlzS2s0cHVIdUpFMWNidklQV3l1TFN0?=
 =?utf-8?B?TDA3ZlkxM0dLZzdjWEhxRVV2c0tKVEdxQkxaWTM0L2F2emdXOVRTU2FqM2RJ?=
 =?utf-8?B?dEFKQW45angzVlVWdk96eEZkZE5NRkcya3NibGx6THFVaDZCa28zYXhsTndQ?=
 =?utf-8?B?Tkc5QkxXaEZ4WUNZWEovcFMyTXNSbXR6N2M1L3daQmJ2cDZpRXdsMFhLMGM4?=
 =?utf-8?B?d0p5QkVjTXRlZ2tIR3RVaFBodnRJWGZVTUVKZWMwcTBrS3Rwb0o0SHQxSVly?=
 =?utf-8?B?MDRMNzR1eGFFMUVMaG1mN09wbmhZbm5BVzdra3FGakcrbWwvWlp3eTZydWlj?=
 =?utf-8?B?MGR1V0ltenMyRVF0VUt3RTN0d2g4Q1N3RkxCcnliNmFsbmJrQXZobVVQTjM3?=
 =?utf-8?B?Zjk3czZYdjFkZnZQUHNudjJWVUZDMG5MTEhORENUQ2ExMGQ5MXdKTldoTUVX?=
 =?utf-8?B?cFk4T2RMZmd4YllQYS9relhDUWwwNWw4R01wMGN5ejNpcmhwZ1k3Z2kvSUFu?=
 =?utf-8?B?WWE5NmN3Vzcvb1J4MmRtSFhJN3ZocXNZc1dCQU1nMlVjNG4rbHlmdmU1VVJX?=
 =?utf-8?B?U1FBdUlaajRMNmZEdUlvSEtvZFFtc3NDdzV4d1ZZbEl5c3BnWHEvVnlOVjFD?=
 =?utf-8?B?Y2Ryb3NaRmx6OEZqSXdabHpaRXJuemJUUW1kS2dtK2dPSG9NdHZ3YmZ2alU4?=
 =?utf-8?B?YXlzOFNTUjNzYWVJWlFiSTFpZGhteTcydHlFWjdWckRRNUxwRXhaMDZiWlZp?=
 =?utf-8?B?WEFyeE5ERUNmc0loMVFmbkwxclJad283MWpSYnAwV04vY3RqcG8wZW1HOTRk?=
 =?utf-8?B?ZnJtZVBPaldqTFMxZXpGMnd0QnRtRVVHMm1xZDFYZnhkUHNJcXRidUYycVYx?=
 =?utf-8?B?RUliMEpYRWRUU2lWaVhzcUpBRXpKQVpjQlZSMXhmNXlNWVNaK0JxYmJXSGZV?=
 =?utf-8?B?T25lTnBPdSsxOW1tcTJGZkQwUVhXMkptZHJLS1dka0xmNGdGOGl3RUk2cmRX?=
 =?utf-8?B?M0Nnb09kdXp0eFVqUy81MDRoQXg5eFhESWJZS1dVQ2tER2MvSyswTmJHaG9u?=
 =?utf-8?B?Q1RPdG0vdklQNlFLZ0JpeUZJNlNtc3F4OWJ4L2g1N1M1b0tSN2NUN0R6eUdQ?=
 =?utf-8?B?NUtYa0M5U0puWlNLeHFpNERaOThkMTlMVGVRSUxKQ3RzZ3hET0tiRmxkTnd5?=
 =?utf-8?B?K3JiMDlRckpCdHRKYXU4aG5hV3VIRE9WeEREVndzVlM3RFZEWmlkeExJU0pm?=
 =?utf-8?B?L2cxd0VOWWNOVUUwcmFIS1ArNk9iL0NHdDd4aWo5OGM5SVZ6cGxFekhXRGZI?=
 =?utf-8?B?QVVoaFp5S0lneGtsazJ2M0ltQzE3dTNWRVBVcUNmTjRFWk12N2ZnVVVkRlVV?=
 =?utf-8?B?NnJoc0xIbkgyUGROWjJ1NS9WbkpOWnVNVlN2cloyQ3BESWxwVzBnMWVRbUlS?=
 =?utf-8?B?bmFMNUpWczQ4a0c4NXRCTDI3VmRLa2hEaWhzVFVOUURLOFMzaUJYdm45MWcx?=
 =?utf-8?B?d2tST0U2U3p1R3RBTVhEY3NHemd3UUsrbFFKS3p3VjJPNGVsSHNsWkFZbVFv?=
 =?utf-8?B?YWZpZSt6bkJRaFRuZWpXOWYyNkQxMzZSbGJNbFAxait2R2tIcTR3ZndSbVZy?=
 =?utf-8?B?bXNLVUV2RjlDMzM2V3dPTXBFNFhEMWxaS0NZeklDaSs0WXh3bUZrTlBqaGNP?=
 =?utf-8?B?OWdsOHIxQnlEb241WVlraEV0S2lHYUowNERoZmtRV2xieVFlZmIybStvNXZC?=
 =?utf-8?B?a1l1MW9LN3oySk9US2pjcUZWekx4VE11em5UQTVaK0JhK1RyQ3RxZmhSZTh0?=
 =?utf-8?B?S29Fa3gvZjRJZCsvZFJOd2RYQmVqdVhIWkJ6azFlblo4T0lITk1JSmRDOVN1?=
 =?utf-8?B?aStENDhLbzFYMEdrZjdOZkxSZ3VkbzhYZ3V1L1VMa1FYL0RZbTJzU2t0ejh5?=
 =?utf-8?Q?vD9xkTVZQJE=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR11MB7580.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(4022899009)(7053199007)(13003099007)(8096899003)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?YmVoU2k2eGp4S2ZDV3pYbnlZMVVFcmFHeW0rc29nYlI4dFdHMEFKNnlmVzU3?=
 =?utf-8?B?MSs2eERLU0JnV0xMMkJnbDVoUWN3YWoyNWRvQlpKdVJibS95dU03WVM1VzRJ?=
 =?utf-8?B?TzdOUVFvQ3VTbjE3dDRXbEhOZnViaW5wQ1RTdmw4ZkhWMCs5c1pTUVliNlZ3?=
 =?utf-8?B?M01ZdnRFTEZhU1RydVJMUlRHd3phTDJydmk2WjUwRE43ZzJGRmc0cTJJTUlW?=
 =?utf-8?B?UkxyaFVBbG9DYXZuTndweGh4NkI5cHlVNWxYMEt0THVDVXNZeDZDVXhNVkVa?=
 =?utf-8?B?NDh6T0NYbXdPUGliSiszN20rL0RKWUlZMXZJS2xEeUVtLzhEcldkd2cwQUhQ?=
 =?utf-8?B?Qm8zNEx2RVFYV0t2YXlhZi8zajJHVldSemF3V0lRUVduN3U2cnZQWDI5c0lB?=
 =?utf-8?B?YWIwcDZrNXByUW5HTlpDc1B0OWhvSzl6V1dYODcwUWFRUW00U2s1N0pBcDhn?=
 =?utf-8?B?TkhWWFVIY2FOenNwYzUwU0pWb21NK0lnamxFTXI1bmswWEtiY2ZoS2pFb0dT?=
 =?utf-8?B?VUs2ell6QjNsdnZ4SldqbkJ3UWF1Q0lWZys4d2pvQ1RvdHpnTXJHNWVFTHhY?=
 =?utf-8?B?VzdYazFHTjVNRFZrOWxEcmQ1RW51K3g1MjUvYkdGWElEUXBiTlhGbmp2cEVH?=
 =?utf-8?B?Z2pzaHlLNnhGc3p5M0NpR2E2TTRWOTAvaXJGd3JlYmg0cUk2eWsrdlUxdHFr?=
 =?utf-8?B?ZVV0U2llOUVQTlFBYko4Q2Z1VmRjd1FaVzI0Qlpodk1tSEZPWE1scW5UWmV4?=
 =?utf-8?B?K0hqSm5oeDFrV3o2czM1dUd4cTJRNjNmMVdjOURTNG1WemJwOE01OVNpYk9P?=
 =?utf-8?B?TURiQndqUURBaXBDYmMycTFCcUJlRlJ0MmdVemJzcGhlUEZmSng0Q252V3pY?=
 =?utf-8?B?bjZKTS9EL1VlamlHZlliMUVBelhQUUJIOGFhRXo5YVozbTArR2taRWl6dmY0?=
 =?utf-8?B?VVR6L3pGV2xwT2hqakdFbWt6dTB5UUgrWDFGQ29tQUhqb01kT0dhSHBjRGkw?=
 =?utf-8?B?VG0vaTBGOHVVOGlVZDFXY0UxTkR6cWtvQWpUaFRZclJLTFl1S3duOG1qdFZw?=
 =?utf-8?B?Q0FSZUp6Y3FHdk9zMzVEQ3ZyS0lManFlM1VmdWZabUhheUJyWitFcC9WcG1v?=
 =?utf-8?B?dFoxSDBVZWhYVEJrSE43d2NreXVoakZLSFRXV0JEQ3NTZC9jdHduOUY0dmVr?=
 =?utf-8?B?eTZoakQ0MmpOUjVoK0VacEM3OVQ3Qkx1TC9DVVJSdEFGSEkydGloZjRlSC8z?=
 =?utf-8?B?RDdJaVRDaGJzUmN0RXFVYXJvTUxGTnprOFpxSTVoVU94M3RBTDFCcTk0YnlN?=
 =?utf-8?B?dm12ci9tT0VFc08rK05KZ2pFWW5maXJCNXR1NGtqbmhrdGEySG1TM1RWWW05?=
 =?utf-8?B?dG9PcTgyaVc4TVMvaWY1dWlwdXlqUTZhd1hrY0czSWNGbDNRV0loa3R1UTc2?=
 =?utf-8?B?cW5STitaeUZnNFEya24vV1JQWEFPRjhCT21RSVd0bGcrZUppYnNaZE9EY0Q4?=
 =?utf-8?B?cjF3MTY1c3Y0b3VrS3JFU1FGVnlOckhvM3BYQ1NsVnZRL2xkSk55dEhuU21u?=
 =?utf-8?B?MEE4VmhkTDhsNUVxK0hqVkxGMjIwamVRbnpHVG1wQStZRUNOMVZvM0toQlhR?=
 =?utf-8?B?RVBnUTBjeDh4alB4bEJWMFZ3djhmbDVkT1U0UzhZWURUZWRqemZqblFZajBy?=
 =?utf-8?B?akQvTXltV2JKbnZJWm5WcWl3OERXNlIvenFBM3dDckNITEY3TDQzNlRvZVFv?=
 =?utf-8?B?NXh6Lzg2RWlmYzIrSnZnR1I5TWlJWmJKRWZ2NVBZMGpZK3lDSzQ4eUplUitG?=
 =?utf-8?B?K2tZVGw0UTRBZVRvZk5NaEtnNExhTEhtL3Z5V3AwR3BXYlZSdURVWlBQTWlv?=
 =?utf-8?B?OURHR1dGMkRjVG9XWkZQRWlMcnczQklSV2lISG9lMHNHTXpyZkMxWjBqdWhJ?=
 =?utf-8?B?Y2tzUmIwNGlRNWhmMmxYc0RNTFl6Rk1DSVlnODRUYlhCSW5VVG1ENTRyeEZB?=
 =?utf-8?B?L0V3c29QUzZSZEhleTdaSWlndlc1bFY4Q2trVk1tUGxmWlVVWkVCUFVXTHQr?=
 =?utf-8?B?NnBFWFhpcjdGOE85VjVTYS84YWo0TFVqUkdqRVJXc2dZT3BMTHQ0WU9rbzV3?=
 =?utf-8?Q?mzes=3D?=
Content-Type: multipart/alternative;
	boundary="_000_DS0PR11MB75805E0CCE45FBDCE7F9BC78D367ADS0PR11MB7580namp_"
MIME-Version: 1.0
X-OriginatorOrg: bn.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7580.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 43b414d9-1e01-496b-4a8e-08dd9e10b8c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2025 17:54:41.3150
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ac3acfaf-844e-47a0-9673-256bbc4191dd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KGserIl8QpmP6F3lsonS+q2TyN5z/X+7hJwjoRqXX1Es6rl9mwe7vtYhVJDNSaZQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8517
Subject: RE: [oss-security] ISC has disclosed three vulnerabilities in Kea
 (CVE-2025-32801, CVE-2025-32802, CVE-2025-32803)

--_000_DS0PR11MB75805E0CCE45FBDCE7F9BC78D367ADS0PR11MB7580namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VU5TVUJTQ1JJQkUNCg0KDQpGcm9tOiBBbmRyZWkgUGF2ZWwgPGFuZHJlaUBpc2Mub3JnPg0KU2Vu
dDogV2VkbmVzZGF5LCBNYXkgMjgsIDIwMjUgMTI6MzQgUE0NClRvOiBvc3Mtc2VjdXJpdHlAbGlz
dHMub3BlbndhbGwuY29tDQpDYzogc2VjdXJpdHktb2ZmaWNlckBpc2Mub3JnDQpTdWJqZWN0OiBb
b3NzLXNlY3VyaXR5XSBJU0MgaGFzIGRpc2Nsb3NlZCB0aHJlZSB2dWxuZXJhYmlsaXRpZXMgaW4g
S2VhIChDVkUtMjAyNS0zMjgwMSwgQ1ZFLTIwMjUtMzI4MDIsIENWRS0yMDI1LTMyODAzKQ0KDQpP
biAyOCBNYXkgMjAyNSB3ZSAoSW50ZXJuZXQgU3lzdGVtcyBDb25zb3J0aXVtKSBkaXNjbG9zZWQg
dGhyZWUgdnVsbmVyYWJpbGl0aWVzIGFmZmVjdGluZyBvdXIgS2VhIHNvZnR3YXJlOiAtIENWRS0y
MDI1LTMyODAxOuKAiiAgICAgICBMb2FkaW5nIGEgbWFsaWNpb3VzIGhvb2sgbGlicmFyeSBjYW4g
bGVhZCB0byBsb2NhbCBwcml2aWxlZ2UgZXNjYWxhdGlvbiBodHRwczrigIovL2tiLuKAimlzYy7i
gIpvcmcvZG9jcy9jdmUtMjAyNS0zMjgwMQ0KWmpRY21RUllGcGZwdEJhbm5lclN0YXJ0DQpUaGlz
IE1lc3NhZ2UgSXMgRnJvbSBhbiBVbnRydXN0ZWQgU2VuZGVyDQpZb3UgaGF2ZSBub3QgcHJldmlv
dXNseSBjb3JyZXNwb25kZWQgd2l0aCB0aGlzIHNlbmRlci4NCiAgICBSZXBvcnQgU3VzcGljaW91
cyAgPGh0dHBzOi8vdXMtcGhpc2hhbGFybS1ld3QucHJvb2Zwb2ludC5jb20vRVdUL3YxL0NuYkNF
X0xPYlRVTDVMWSFJZk1yMTJncmJIQ01HSWVZd2I1Q19SdFlvT2dmZWhPMjZUSTBpbjJnbXVhajJa
c1MtQ2MwMkVHWUtQdENEWjgwOXRyYTFUc0ZTX1cwZU1HUVNjTmNnOEpWJD4gICDigIwNClpqUWNt
UVJZRnBmcHRCYW5uZXJFbmQNCg0KT24gMjggTWF5IDIwMjUgd2UgKEludGVybmV0IFN5c3RlbXMg
Q29uc29ydGl1bSkgZGlzY2xvc2VkIHRocmVlDQoNCnZ1bG5lcmFiaWxpdGllcyBhZmZlY3Rpbmcg
b3VyIEtlYSBzb2Z0d2FyZToNCg0KDQoNCi0gQ1ZFLTIwMjUtMzI4MDE6ICAgICAgIExvYWRpbmcg
YSBtYWxpY2lvdXMgaG9vayBsaWJyYXJ5IGNhbiBsZWFkIHRvDQoNCmxvY2FsIHByaXZpbGVnZSBl
c2NhbGF0aW9uIGh0dHBzOi8va2IuaXNjLm9yZy9kb2NzL2N2ZS0yMDI1LTMyODAxDQoNCi0gQ1ZF
LTIwMjUtMzI4MDI6ICAgICAgIEluc2VjdXJlIGhhbmRsaW5nIG9mIGZpbGUgcGF0aHMgYWxsb3dz
IG11bHRpcGxlDQoNCmxvY2FsIGF0dGFja3MgaHR0cHM6Ly9rYi5pc2Mub3JnL2RvY3MvY3ZlLTIw
MjUtMzI4MDINCg0KLSBDVkUtMjAyNS0zMjgwMzogICAgICAgSW5zZWN1cmUgZmlsZSBwZXJtaXNz
aW9ucyBjYW4gcmVzdWx0IGluDQoNCmNvbmZpZGVudGlhbCBpbmZvcm1hdGlvbiBsZWFrYWdlIGh0
dHBzOi8va2IuaXNjLm9yZy9kb2NzL2N2ZS0yMDI1LTMyODAzDQoNCg0KDQpOZXcgdmVyc2lvbnMg
b2YgS2VhIGFyZSBhdmFpbGFibGUgZnJvbSBodHRwczovL3d3dy5pc2Mub3JnL2Rvd25sb2Fkcw0K
DQoNCg0KLSBodHRwczovL2Rvd25sb2Fkcy5pc2Mub3JnL2lzYy9rZWEvMi40LjIvDQoNCi0gaHR0
cHM6Ly9kb3dubG9hZHMuaXNjLm9yZy9pc2Mva2VhLzIuNi4zLw0KDQotIGh0dHBzOi8vZG93bmxv
YWRzLmlzYy5vcmcvaXNjL2tlYS8yLjcuOS8NCg0KDQoNCldpdGggdGhlIHB1YmxpYyBhbm5vdW5j
ZW1lbnQgb2YgdGhlc2UgdnVsbmVyYWJpbGl0aWVzLCB0aGUgZW1iYXJnbw0KDQpwZXJpb2QgaXMg
ZW5kZWQgYW5kIGFueSB1cGRhdGVkIHNvZnR3YXJlIHBhY2thZ2VzIHRoYXQgaGF2ZSBiZWVuDQoN
CnByZXBhcmVkIG1heSBiZSByZWxlYXNlZC4NCg0KDQo=

--_000_DS0PR11MB75805E0CCE45FBDCE7F9BC78D367ADS0PR11MB7580namp_--
