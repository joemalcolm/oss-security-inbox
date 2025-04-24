Received: (qmail 20209 invoked by uid 550); 24 Apr 2025 17:16:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11452 invoked from network); 24 Apr 2025 17:14:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=entrust.com; h=
	content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	mail1; bh=GTcl5aJIT9q3heGlUjG50O9tDCg+YLrIcUpMuHhirCc=; b=akZPxO
	tizwTwo/AdSZZsHwQtA7jQyuDibjUnkSXs8JuaO3rqlkezx8FslxHhgFfnW7S1Hf
	8DNdnRpCekfGaH36ZaczZWxWXXNxivT4zi8YtlkYWCqQDcZybelfQTQHVj3hFYE4
	x6Z4wn/sScZxvw3rl3b5w6bP2e7N6A+78q7rKvxcsQreQOhyffoqBJcqFwvIJCC+
	TuKSmaKi+A0Q43M1YQ2gMtqU/KVYuH1xMj69Xk9FoC94kRIByfXhUZTf/6GEq+Fi
	I0ZltTnMOCVFoyxll02I6Yd6H62KR5WN39IyFCZF95/Hcf8teZmbLK5bdJ2lmnYR
	pyD+Qook2xSbTGqw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ohcDB0EOsmOoCsl+9hzDDLSX0al0mkod3ZUhprEQfL5UhHioW6VmHWdRdGotDF/ZjNzrKlilKBXhpWOiZ4wVJwntJXrEF+5U83WNrvUHQMBu/QA54fZPaNefxbsPiDoHLKElPxFeBmXh9doLXytTkqR54JDWLrIaXQefuDcYzffOF1tlmDizAEK43/dPVZOANzTW9dT/9RGbBO7mr6W9NM213JuoQuypoay74gApDLeRgu4RhkAJ3AVfyGeqhi33BH73CayWjlY97qANyuKwiqiiWD6EpgSZgiMFSpoluf7sVjCrtUSQjULdr++brz61Wp1GVf7LGUA+LC2540oU9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GTcl5aJIT9q3heGlUjG50O9tDCg+YLrIcUpMuHhirCc=;
 b=LuWMTKT6uxOKYNRQzVZu0dTq/oJ9UJHqSU1WOCifDsxAjztDfQlWwqTfLzw9yIpWoeGasPMxlLLp8cgQbeaqtgPKyfLGQPxLeeOToIuMIlExVqLKPCcG7J9BoT7xQ4eNnNWTqtZ/R9w/vXn+NHvLnOUDCH8akYQr7KQTEn0/5QWbOmrS56hRtiDccYb0tkzHzCpQiiTQM17F55R8hO6rqtaLEDaslAYRMXIxVbEKFN/ETyuRp2M+aavRoQeO7mEVOF5n9KpaCgKzBFgsvWQW2HfpsZJWYll6oItowp8BMf1kIN2CNFj5bEZqpms+jJyPMZsAUjcIhS+46Usm3hh3VQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=entrust.com; dmarc=pass action=none header.from=entrust.com;
 dkim=pass header.d=entrust.com; arc=none
From: Ian Norton <Ian.Norton@entrust.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [EXTERNAL] Re: [oss-security] vulnerabilities in busybox tar and
 cpio tools
Thread-Index: AQHbtGezIsL4Hked1kKSVnea3ILMELOxuUuAgACtnICAALmsAA==
Date: Thu, 24 Apr 2025 17:14:19 +0000
Message-ID: <412BA242-7A24-4526-9B9F-156F3B33D515@entrust.com>
References: <575DB6B1-8A9A-46C6-AA2C-9D0695E1FF85@contoso.com>
 <068a922d-d77d-45d2-9b18-e07e41c9a907@suse.de> <aAlSF2Z3LlN-avD6@eldamar.lan>
 <CAEo4CeMgzPGBc3KgijU6HLkUcj1kcQj=8_jGUWojZ7jBdgAWxA@mail.gmail.com>
In-Reply-To:
 <CAEo4CeMgzPGBc3KgijU6HLkUcj1kcQj=8_jGUWojZ7jBdgAWxA@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
user-agent: Microsoft-MacOutlook/16.96.25042021
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB6931:EE_|CY8PR11MB7316:EE_
x-ms-office365-filtering-correlation-id: 58f0707e-3bd9-4153-8dcf-08dd835372fe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info:
 =?utf-8?B?eU8yVzZBTlphdEZ4cnFLaHBCbHlZSFQ3ZHNPR3Yxd3B4MCtiSS9ydFZMUGJ2?=
 =?utf-8?B?Q0xaL2lIM2xNVUltQnR6alFIZnBCM1lzbVFnYlR1WWZXaXE3WWxNS21lSGl5?=
 =?utf-8?B?bHVGRGRWa1ljNzNkVzBzKzBuQ2pibHpyNkVqRitLN2p2TjBpRlBZcmpUN2h1?=
 =?utf-8?B?alNyVGZlMEE4aWVEeFJkUnNPaFYvZ2dlb2ZiVEQ0bkJEN2xqK1JXalg0ZUgr?=
 =?utf-8?B?bmNtQ0hwd0Ftc1lHQWdPNG9QTnJGSHJ6VUJKdDRGbFpiMldqNURHbG9ta0ZT?=
 =?utf-8?B?bU5JWGJpb0MvdlJNYXViYXI1VGdsYmVocVNDdGdva2hvU09WdHR1WjBiNlVq?=
 =?utf-8?B?YnZxWStBMEVLazFzclNDMVVXMUg1MTRHN0Y5dk5zbklUcitEbjc5TmdmeFU2?=
 =?utf-8?B?VmNIWFZkVjE2bGtaS0JJNU1pdXV5K3AyNEFBTHd4c1hSV2tKRHFmeFV0ekVJ?=
 =?utf-8?B?V1BMRi93UTFhdVFKWDBQSjlrOWJ4M240WFFWMisxOE9CSE5MZEh0cnlrdzR0?=
 =?utf-8?B?dHA1YU5oMm9lb0E5a1l3SXZlbHpVUW1WNHZKbWphWlhjUHVGWUJERzRiUEJO?=
 =?utf-8?B?V3VnSkwvYlJJV3l6OGhhTmx2cUtnNVpwTE5uN24vU1dmQWhVWTJnY09FSitv?=
 =?utf-8?B?QmZFUlY2MEs2YlB0Z3JZcFVkVVpDdUdTcHF6MllFNGNRT0ZwcW1mdzJFSmRY?=
 =?utf-8?B?SzVDVWQ5QVZpemVPcDhmS1pERG1qMlJpaGxKNDBwYkkyeDZFM05SL1JVeVlt?=
 =?utf-8?B?amM2dGVvamVuWmtTWDdiWHRrM2JXQXI4Zm9ZVm0ydVBrWTVXNG12aDlNRDYr?=
 =?utf-8?B?ampqaFpBeFJsVVM0bm54aEpnS3ZTVUR3aEZ5aURvM3FzTW54NGZ0YnAzWEx4?=
 =?utf-8?B?WFFxOUQ1Yy9rTTJDYXlNV2hObjJ0a2d2OFZQRm5ZME9YZGxmWjllSkRremdw?=
 =?utf-8?B?dy92Y1NhTHRwWkVpWFVJb3duSXVRNWRHVk5Pci9vUW1MWlFjWlE2YW41Smg4?=
 =?utf-8?B?TmYxVG9Cd0k1S3FLZlJzZVRodEYvdHR0a2VwNGlEL3BjR28zdkVHVWtPRHl1?=
 =?utf-8?B?dEdXK0dQWGFQTzVhZmVOK1dHWTJpK3pQWXpJVTlVQVdPTGJEZmhlMEZmRGw5?=
 =?utf-8?B?Y0toQzNiZlFzRVRMNkx1TlU0RVVOL25iOU5YSU5KcVVuc2J5Q0FsbUJWZE9s?=
 =?utf-8?B?Ym1UckIwMWlaZUhnVU1KU3lNM09HWWRNcmRJbVUxS0xCdmdaVFQ0TlV5NHBz?=
 =?utf-8?B?bE0zdEhvMjNXWWFEZ1hvZFFzM3dRdU9rcmpOZXZRd1hXUDEzblpuRWp5U1k3?=
 =?utf-8?B?Q1p1cXBOdVhCczliUzhsWUxwSVZKV3pHQ0dKWmJjOEoyM3dkR2Ewd2NJUE11?=
 =?utf-8?B?TGY2d01aS05YNHlNTlI2U2pqTUU0dGQ4Nkt0VXZKTUlYa25SZFI2VDZueFZX?=
 =?utf-8?B?N2lpZXhYWGhTRTBoVkpFSFRBWE5uUitFVW54dFR0NjhQRDh4eG5neUhWQ1Vl?=
 =?utf-8?B?UUhXYk1xaEM0Y2FaVHA4Q2Q0SHI2MGZhT2RvRUR1bWppZlc0M3hKamhWaDdu?=
 =?utf-8?B?b1poVlU4UFZ0TlpoOURsb09yRlhjellJVnJzYnIxT01WcThOYkxrQzJRejRh?=
 =?utf-8?B?ZHBxOU1EbXlTMmQ1ZHZuZ0JJamZsNFIrRytxNkd3clNtYi9QaGllMUxwTWJU?=
 =?utf-8?B?YmtPS3RjenJ4L1ZUSEY3Sit2VWJLVGtIbTd3bkcrNExzc0tKVUZ0Sld2TXBm?=
 =?utf-8?B?ekhzenFUa3V6QzRPTmdTeU9oK0d5MExWYXoxMnErNk1MVzRBb0JzdzJqMTlZ?=
 =?utf-8?B?S0lQVDNMV01RaDNXczlKQU1yYmJtMUJXQ2R5U2hocmNCUnBKYVVpT1JJNWFp?=
 =?utf-8?B?ZHBVVW9PZmdRT0d3V3B5VFV4Sys5WS9JY0tCNEJNdEFBVS9rZGY2eFh6ZVpy?=
 =?utf-8?Q?QAjMwbcygpo=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR11MB6931.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?R2tyaW9YTndlSzIwekJta2U0ZGFRVEFKN0x5UWZFYTJJSWR4YjlFa0REZ0M0?=
 =?utf-8?B?TzE4WkhhbkR1KzBTY2hoQWZIQTBpM2NPT2xFdmM0aXF3TjNyeTFRWi90QTUy?=
 =?utf-8?B?Nmc4M2JUeSt0RWlFT3F6Z0JxY1NZVkEvRXFZaWdhNmM3VXJ3NDhPZi8xZXBY?=
 =?utf-8?B?NEhkMUtRT1c5NysyWDBxTW91WXBPNWYrZit4aEtuT0ZXZmh5Z2QwbWFUc0dK?=
 =?utf-8?B?UEhDYUJpMEpMQjRHZFpRaTUxbGlXczhPZnNhNHhHZ3dvQjdVcEcwRk9MbFdw?=
 =?utf-8?B?RGZidTlwajRrbTYveFdON1dtQ0VaV0dlM0M5R04vanlsWHVSdUd5c3haNWVK?=
 =?utf-8?B?VWJKKzJVOW1rM3RGMGdaRFV0V0NlYlVvRDArdGlZeXdnNTB0clRPM0RhUEhn?=
 =?utf-8?B?d0VrUStNK1VDUUZ3YlVQZGZwbU12RXR6WWhDYlM0bFNLWjN5UXVBUkozQmYx?=
 =?utf-8?B?dXZHZ2JTMEtNZ2NxalpNeEt1L3hhcmx3czljSUtXeXptSitZTGl3REZ4QTA4?=
 =?utf-8?B?ZDlIa1ZLaXZjWmJQZmhQS2U0SEc1OTRGU3RzRlR0dmwwM0NCRnZreUphZHMw?=
 =?utf-8?B?dUo1dS8zeCsrdVlZaXI0TS8vL1hIMFhvNEx6T0tpRm9abDAxbVJpOTczbHZ3?=
 =?utf-8?B?SUdmeTMxc04xUmNyaWJKeXNrUVdmbmVZUEg5bHZ6TVF0ekh3eXlLWi9RWEdX?=
 =?utf-8?B?dnplYWR3d0dkNzlqVlZJRzBabFdRQVNmQ0sraDkvYklRcjZKbVRXSUZwd0Qv?=
 =?utf-8?B?QnlpSndKaDBXVlJNV05xelN2UXFGanFIK3lqeXpEaHRCV3Zha2x0ZFZQTlF2?=
 =?utf-8?B?N1dEamQzcWI5S2NCWnZHbGFudG5JUVFCa1gxdVZBUE43ZGVybGpkK3phTCtW?=
 =?utf-8?B?QWFHbTlBQTRUSWxiN3N5OGRhYU5OSkc0K1cxeDZ3MzcrUnhZbWYrcy9YZzFJ?=
 =?utf-8?B?Vm5SRWVYQmJMUFNndU1RZWVoR2RocUo3TEJqeThsL0FwQmIzNzRVU0RXTjRI?=
 =?utf-8?B?NTdsemlvcUM2RjNrMUFYSTdBdHM2cmNoU25WeXNGWG1ZUWpxY0JKanlsMGN4?=
 =?utf-8?B?T0Y3YkxBMnZPTXQyNzMwM1A1dzl3K1BWZ0ZsazBXNUh0Umg0ZVhIRmpUeDZu?=
 =?utf-8?B?UEFXZ0R0VXpJSnlWbEE0RTd1Um9YVUhYRVF0dFowaVo5WmxObUVWOTBBeGJ5?=
 =?utf-8?B?WWFWbG4xU1BpT3hWOVdRZERkaDEwMUNlOVJXWGtCS0dhNmE2YlN3UE5nK2gw?=
 =?utf-8?B?ckttVEZubjNwYnhIUTJVYzZHMzlQTkl6alMyMTFrNHpBYmZDci9vQjkwQVpX?=
 =?utf-8?B?VUUzdGtpelFZRnA5YXNmTHRWaGVUcjcycWVHTUk4L2JtYnBvaHR0N0wyUDNv?=
 =?utf-8?B?THcxMnhCeGNhSXlWdWRNSVlCeVJkeldCWkhndU9EZ0szcjM2cTVzZTlIVFFC?=
 =?utf-8?B?cWVkR0ZZVnBCUUNtMnpYazgxVHQydkZFdzJrdkxyN2FrbzFONUZ5N2ExeGc2?=
 =?utf-8?B?N2l3R2VUMnIyTC9vSTcrREFNVzdRc0hhWmN6cUZrbUtaWmIxaEFaVHNLNEpR?=
 =?utf-8?B?bjR4dUJjWDYwUVRaSDU0bGl1OU91UHVYWVNVblFSclEyd1l2bmRHQTJVSDJL?=
 =?utf-8?B?L010Q1JlTnZRbHh1ZzIzOE1VS2ZvblBPTkdIZDcveHJoRkM3YmhBVVFkNi92?=
 =?utf-8?B?aFBHUndIV3FhemVnTGlPNHhmeXZKKzZvUUp5MVpXUjB6QzhYZkRIU2NZUVdS?=
 =?utf-8?B?ektBRUlScis0blBXUjRQQ2xzTjZseUQ2SWFoaGFDNUVFMm5zcXN6bEJTNUQy?=
 =?utf-8?B?TC9wUnEwOHFjb2dpc0d3elJUbll6T0FFcDZPdytXSWwrRE5oUzkwNEtRR0hQ?=
 =?utf-8?B?MGx2OU5YNkpvaW9pSmN1MkhCcUdidStBM3dYcjF3d2JQVWVsT09Va1I2UnRS?=
 =?utf-8?B?U0pybVNaTjBJaVlac2NCejJKUTI5YXNZOFNrNEZlT2hRcitVKzNZTm9yR1Z2?=
 =?utf-8?B?aWRUOXRCUmxneWdGUFJ4TWNScDdxdXZ1YzlnTGZXUHovR2pScTJ3TGZOd0tP?=
 =?utf-8?B?ajdzZmVuV01qMjJ3RUl4dGZUa0tNNU1MNnFhK0FPcklwajM3VkVuQnIxcUpS?=
 =?utf-8?B?VU9PdE9UMTNuMzdnWHBraFh5UHY5NE1UZDF5V3pPbzhRelVHRVBxYWcwdWhH?=
 =?utf-8?B?eEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <51AF3D905E208B45A0143E438DBB80E3@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: entrust.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6931.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58f0707e-3bd9-4153-8dcf-08dd835372fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2025 17:14:19.0733
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f46cf439-27ef-4acf-a800-15072bb7ddc1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ypfyUr+ptZ8+kYIirJp1hxiO1PN3cgqfg1xzJwfq61M0DP4GzJYgGxTAbvmoL9k9YFzUiZRnCW5nt3t+omzyTA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7316
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI0MDExOCBTYWx0ZWRfX/CILRpmiKpp1 5azkz5vxxEHVXFiviz8KqivpPEwr/xZoaOq+x6P1HDpgQJr3xqVQE4idPkAEYIRfNp8UEC8liAU DurNJLcYfjPp75fHA2iHGmoU4wv3dL+bggD4GscDjtE/duzE841UBvU36qoAiNFFsy2aZ2tx0k7
 pZJE27G96wA1JlUFvK5VvcYWEEwVEkMR+rTRJ9od0xZeCmm+54Z3q6xwGrT33DcKS9fqtJ8dDy+ hUfl+E7gu6ppUhupUgxvdqInhjhhNWJNxyYU2JaWLbcSJFoWA5wl5Mhj9hY2YKQGc1OG4aZQB3I SobcqPHVJ8YNstqdWC173o+JqKcxYtxY1k8TqJKyy7MJf59I8QuCE+zTpXlUOWGKt6D4AeSdCHt
 E6InRLw75K5PTncry/oW5zyYF6MjhHq+kGtt2QfPzZuKiUYsgyqFPoCct5piuiOIp5+HNO8X
X-Proofpoint-ORIG-GUID: mPt5smnUcjmMkeeARanIEd2oRa5bkqtq
X-Authority-Analysis: v=2.4 cv=ILgCChvG c=1 sm=1 tr=0 ts=680a716f cx=c_pps a=ztkV8ooph0rfw1Th5QLTnw==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=XR8D0OoHHMoA:10 a=FEbzDYiKvWYA:10 a=J0Tn2xNtAAAA:8 a=pGLkceISAAAA:8 a=xNf9USuDAAAA:8 a=RKY65riwlb05WGiNupwA:9 a=QEXdDO2ut3YA:10 a=7di2dphu6j8A:10 a=ZXulRonScM0A:10 a=9ZcRxastL33iXWX1AWsW:22
X-Proofpoint-GUID: mPt5smnUcjmMkeeARanIEd2oRa5bkqtq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-24_07,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1034 suspectscore=0
 mlxscore=0 adultscore=0 phishscore=0 malwarescore=0 impostorscore=0
 bulkscore=0 mlxlogscore=909 spamscore=0 lowpriorityscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.21.0-2504070000
 definitions=main-2504240118
Subject: [oss-security] Re: [EXTERNAL] Re: [oss-security] vulnerabilities in busybox tar and
 cpio tools

T24gVGh1cnNkYXksIDI0IEFwcmlsIDIwMjUgYXQgMTc6MTYgQWxiZXJ0IFZlbGkgPGFsYmVydC52
ZWxpQGdtYWlsLmNvbT4gd3JvdGU6DQo+IE9uIFdlZCwgQXByIDIzLCAyMDI1IGF0IDEwOjUx4oCv
UE0gU2FsdmF0b3JlIEJvbmFjY29yc28gPGNhcm5pbEBkZWJpYW4ub3JnPiB3cm90ZToNCj4gPiBG
VFIsIHRoaXMgb25lIGhhcyBhc3NpZ25lZCBDVkUtMjAyNS00NjM5NA0KDQo+IEZyb20gd2hhdCBJ
IGNhbiB0ZWxsIHRoZSBsYXRlc3QgcmVsZWFzZSBpcyBidXN5Ym94LTEuMzcuMC4gQXJlIHRoZXNl
IGZpeGVkDQo+IGluIHRoaXMgcmVsZWFzZT8gSWYgbm90LCBkbyB5b3UgaGF2ZSBhbnkgbGluayB0
byBwYXRjaGVzIEkgY2FuIGFwcGx5IHRvIGZpeA0KPiB0aGVzZSBpc3N1ZXM/DQoNCkkgcmUtcG9z
dGVkIHRoZSBwYXRjaCBmb3IgQ1ZFLTIwMjUtNDYzOTQgdG8gaHR0cHM6Ly9saXN0cy5idXN5Ym94
Lm5ldC9waXBlcm1haWwvYnVzeWJveC8yMDI1LUFwcmlsLzA5MTQ2MS5odG1sDQoNCkkgd2FzIHNj
ZXB0aWNhbCBhYm91dCB0aGUgaXNhdHR5KCkgY2FsbCBidXQgaXQgd2FzIHJlcXVlc3RlZCBieSBv
dGhlcnMgb24gdGhlIGxpc3QNCg0KLS0NCklhbg0KDQoNCg0KQW55IGVtYWlsIGFuZCBmaWxlcy9h
dHRhY2htZW50cyB0cmFuc21pdHRlZCB3aXRoIGl0IGFyZSBpbnRlbmRlZCBzb2xlbHkgZm9yIHRo
ZSB1c2Ugb2YgdGhlIGluZGl2aWR1YWwgb3IgZW50aXR5IHRvIHdob20gdGhleSBhcmUgYWRkcmVz
c2VkLiBJZiB0aGlzIG1lc3NhZ2UgaGFzIGJlZW4gc2VudCB0byB5b3UgaW4gZXJyb3IsIHlvdSBt
dXN0IG5vdCBjb3B5LCBkaXN0cmlidXRlIG9yIGRpc2Nsb3NlIG9mIHRoZSBpbmZvcm1hdGlvbiBp
dCBjb250YWlucy4gUGxlYXNlIG5vdGlmeSBFbnRydXN0IGltbWVkaWF0ZWx5IGFuZCBkZWxldGUg
dGhlIG1lc3NhZ2UgZnJvbSB5b3VyIHN5c3RlbS4NCg0K
