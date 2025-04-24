Received: (qmail 16146 invoked by uid 550); 24 Apr 2025 17:16:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27847 invoked from network); 24 Apr 2025 17:10:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=entrust.com; h=
	content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	mail1; bh=rvZBMdbplOs7AKGW560oC9cq5UbGzKpNK8YacZuaomg=; b=mBh7un
	BDRyk0jzMxzrWdRbXxZ0dGUuPZqQKvkJWxPlvmvMz1mp7qVvyRN7YrWyxCM62rIK
	0xz/Ru4QZbVyiJw3r8E/BJirrmO6S8MvHaTelVai9KMuDm68P7MI0y/Cka7f0f0E
	sxyKiXgbCQh5CTgW6chblEqmXyRpVgyauqSvoThiuCPXwzxnHJcqGcEjUnxkDQAV
	euvlFbAQ3Nmzt30tuC5Tkr23Do4XO7W3yHyrgxyJgL6plOdFUFua+utsCzxPXys5
	CH1Rq8ukDaTKEruI2xpDj76KtQVF6UqNGYqJSOLeuCJwZIiv4NQq1vuAuGWis4gz
	aF5kVvqml6MnaxcA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dVucVz68Su8fkWJ9v3lDrFSVuOHmDI2Z7IIZDpov3wTOguCl5Izkhr081BdwXcCo3NISzatIyKcSDBCZkYeAdLHF+sFA7WtHiRwaIU4MeB0xeadgRSUWr4YUaB0UC3e9k6WC8ld4DDNvGDHS0TwA1gQC6lSDL+reW/mmxt0td6bd1aYh7dFC2fcpz2v2jnkTeiEFpuGjfa7cwTcRi6ildWFm+mI+4whbhiR8FxVA6h6qfDUgbrQ2ID3G77O8hkYp/XS/wb/rbe5Yy8bqiQbUGOzS+9ebahMPU5L2iSnUBP0BTWmcJbaxJGymrSMzI74qGPOhRBkVFO6tCmJCUeOs5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rvZBMdbplOs7AKGW560oC9cq5UbGzKpNK8YacZuaomg=;
 b=Oi8JbByoFjwWOZphp2dTmCJnZcO5WxELC6Zv1ssq0TfKxrNc50YnIujERrNJkA3CJu0FodeVQUypSWDGVJTxddu6KmjdBU40klPFe5gPjB40T2rGBLKi07vK62o3cntA3wLAnoAbw6MZeMTy9C+Dy8zGScebJRUBF/qOTRVn1fKEtJX2b72z6eehtMHltpnnk6vZopF+VbgJimdAzTaMlmVqN7O8sxr7j1pLLr8OKP5SzTmUsBR6A4exLKlVO2RDKt7KuCpCl6k4e3m/lbNITpeHmK/UEgOceI4pgYiRprDta39Wog00AezgjRHve52/hm9fezG0BNyPIAjhMBzJGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=entrust.com; dmarc=pass action=none header.from=entrust.com;
 dkim=pass header.d=entrust.com; arc=none
From: Ian Norton <Ian.Norton@entrust.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [EXTERNAL] Re: [oss-security] vulnerabilities in busybox tar and
 cpio tools
Thread-Index: AQHbtGlsTOPzVtsZAkStcTHs7TtiuLOzH1mA
Date: Thu, 24 Apr 2025 17:09:58 +0000
Message-ID: <8BB6E75C-C4E8-43D4-8E20-73E9212B971F@entrust.com>
References: <575DB6B1-8A9A-46C6-AA2C-9D0695E1FF85@contoso.com>
 <20250423160205.wndth53pj422sr34@jwilk.net>
In-Reply-To: <20250423160205.wndth53pj422sr34@jwilk.net>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
user-agent: Microsoft-MacOutlook/16.96.25042021
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB6931:EE_|IA4PR11MB9298:EE_
x-ms-office365-filtering-correlation-id: 442e6b29-b664-4ba4-f344-08dd8352d7a5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info:
 =?utf-8?B?TEV3bm5VaVNUNUNqb3ZVZmMzUTE2VXNBdXlGandSVjNLbGFnb2RHUnp1bGRn?=
 =?utf-8?B?Vy9jc21KTmljek5KTElIQnd5NXV5dmxYdW5tamZmb2MvQVc1NFdKeGpWWE8x?=
 =?utf-8?B?YTRvK005eE5zVVkzVHdWbGgyVFZqbkpWc0VQdlk1QXJabWYvOXBKckxqUlFn?=
 =?utf-8?B?eS9SbFB1NEwzS1FPeitVcEwySHZZcWZTa0duYWtmbUtXb1B4dGZxaTZKbDZY?=
 =?utf-8?B?TGtVbTc2QzRnZnZqRVZCZzB1YnRMUUZUeC90OEJjbW4ySWI2Uk9xUlBlNmtB?=
 =?utf-8?B?d0lIQkRxUG5YQ3o2ZVVCeSs2VUNtSVhEb3VyL0hlRlVjeVo2dnV5anVDQkcx?=
 =?utf-8?B?N0xBWjVnWjhiZTZNSkRZWWJjMllaZXBreVp6VHFweEdZbVdySXNVRyttU2NQ?=
 =?utf-8?B?Qmh3aW9VNzFKUmFLR0pVZ09vb2J6NWZiTk11S0pCclV1aEMvcWdtUmlnMGVm?=
 =?utf-8?B?bVMvOXpYRTBLTU16YnhKdjRWaUZTRnRLSU1NZmNRSHl3VVozOWttUkdoSStQ?=
 =?utf-8?B?S1VsZURwdlRnWTl2K09vN3RCUE1tcFpxTDQrd2xkQmU0Z01kOGMwNWZMc1d4?=
 =?utf-8?B?VU5xckVha3B1bkUySm05am45OG1rZ3lXcGVNN3QyU3VZdlBtc2wvdXpMbWNt?=
 =?utf-8?B?a0U1YWJONUhQalROTGI0VWVlRmFxMllCVm9GMzRUSy9YM0lrNmZQSkZxS2Zq?=
 =?utf-8?B?cldNTEozTi82bGg0L1hyRDNRM256aUpBM0tTN2w0eWJWYVZtT29IMXVHMm9r?=
 =?utf-8?B?TThYcmRocTF6eVc4SGxBakRmWHhRN3VmUTU2UkxUYTVlY0JyNzdsVVZJUEpv?=
 =?utf-8?B?ZDNVZ1pxdTB5ZHFncDRmcGFiZTEvZXpFczJpOTF0NURhY254VEFzbXN3S1B2?=
 =?utf-8?B?YkVWUmZGa0FCVEtYRWd0ZnI5SUgvMGFXeDBPaGZndjREUE5yc1hGZ093N0k1?=
 =?utf-8?B?Vis5VFZVeFZvQmtEWkhtQlowbytNdnRIakhCTXFJSmIyR251dWgzbVZkSHh3?=
 =?utf-8?B?cHhObWd2b21QNnVWSURMdTZqRnRZeElQcjFYbEkwNEozTmdqNFJxVkk3WjZv?=
 =?utf-8?B?UUU5NDVpaUhReitjb0ZKZkx0TzAybHk0dGFpUTZEOXNIN01FN3VNbTArN0NJ?=
 =?utf-8?B?TUV4TU80dFF6azRaMFZaK3lITmw2YThkVnVPaHIrVFN1aExnYnBqWHVIdENw?=
 =?utf-8?B?TUZJSmxsTnBwWVVsQVpoYmRBZDdxeU9vRXVPVktZcXhxcXA3UDN5bzloL2lH?=
 =?utf-8?B?QUpFUzB0VjNFaU5TYytFRllYL2phOGFrS1RZTmhhQTBnYitKNGN4WW5CNmFT?=
 =?utf-8?B?ZjFDenNWTnp4Z3huMGFZOHBZTGRwOHJOU0VCeFN1cVJxOEJPem9sN3hUYkxq?=
 =?utf-8?B?R2xmR01LeEJBRUNHOVlYTWp2MmNENVF2cFhSRS8yaFdMdVBGakZHZ3ZtVllB?=
 =?utf-8?B?cDFpY0VmQThHbUlZcEZTeHoyOWJOL3MxM2xBcGRmQzhhMVVrVmU5RXg4WjNL?=
 =?utf-8?B?ejlPMFhxVDdhOXl3MkNueVZsNWxlTkk3aGlOSXZYRlhXeUJ6dlU2V1FCOFBR?=
 =?utf-8?B?Q2wwUTBSZWRPQjRJdnBrcUk2RFJPQjFmNmFiVjNQMjZYQ3EwZG5EUjRGUHB1?=
 =?utf-8?B?cDlRbms0enA1c292c3prUGtROXkrQVVoWnNyUEhIUHpmcm1xeS9rMDBjbDli?=
 =?utf-8?B?RndEN0NYTk9GTDRhV1ExajNmeExJOWNYamJ6TWJkMzhndDdhN1Z4MDd0eFlV?=
 =?utf-8?B?YjA0cFg4UFowL0FNRVU2S3NCNGNTajM1S3JKYTYySzZDTTlPS0U0eS9EMjZR?=
 =?utf-8?B?bCs1QWxRTUdGSkxTUWIwK0QwQ3l6ZmJIRjVHdW1KMmlVVlVkY1R1a05DOENj?=
 =?utf-8?B?QXRQOGxEOWRZUXpHYzJvZU5GTzhsZkZwbGt1czNSZy81SVFCUnJjSmVWZktt?=
 =?utf-8?B?YXJ3dFhyWlRRN1V2Q0FURTU2amJVdml0Z2YvNytaVTRPeUp1UjFzekYxUkN1?=
 =?utf-8?B?SUY0eHUvRHhBPT0=?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR11MB6931.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?Y0tTVGRZSjEzWDRHak5WNEhCWm5xZ3lzRzQ4eHkxRkd6WTdKdEtBWFAvSVZU?=
 =?utf-8?B?d0FXUzZyMktRSEk4c2J0eVhwU1A2akduaklnK0dUSkNPRVJVeDhwSmdMbjZI?=
 =?utf-8?B?VnBZMENIUEsxTXpZWFdTV2g0SXFJNkN5OStNVEJFbkw0ZVpqOTVLTE04dE1q?=
 =?utf-8?B?MGl2YS95SjB2M1QxSWpYT05qanQ4ZlhrZUdBeWdLT0dScnBZMWFxL21Md1FF?=
 =?utf-8?B?MFk4QWNYcENmVTJTaDFXOWxHRUREWFllMDBnZHl3TnhoU2dwQjhwam9QTHVS?=
 =?utf-8?B?d0IyM1NIRVIrdmJOU1Vxa2JIM3N2cEoxZzJnZS8xUGZlaFZ1LzVjMFk3QWdQ?=
 =?utf-8?B?Qm9uemw3SUdBZ1N1cHU2TGZwRTM2MUxqWHBxeTlGTzRaaWxaaTRlbmVMeVJ4?=
 =?utf-8?B?R24zWWZScnVwUlJxL2JmMnE3M3VSdXFFYmhaV1BZUm1RSTJUYmthdWVmOGFL?=
 =?utf-8?B?S1NxNlRaVVFGUTN5NDBGQzUzZVZMM0hDUWpTT2pFQVVaM1BrUkpoSndsWG9x?=
 =?utf-8?B?VHlaZHJrekUrVi9MZWNDNGdNNnB1anZvaEwwTk53UnVEZ204Z3BQbGgyWjVa?=
 =?utf-8?B?dUNCT0t6WUlCNmpPamNaOCtqbEMrK00xeHlQTXhxV212akVtdFVEZzdydjV0?=
 =?utf-8?B?bncvcUNGcU5qQllEUFpGUWJnOUMzUVVjL01PVURYbFdQNFQ4ZWJoaG9UUzRV?=
 =?utf-8?B?WSs5U1Fma3pQa0M0ME5VZjhlZmEySkhCaWs4cjF3eXRPbkkyNnhoeFRvakVa?=
 =?utf-8?B?S2hGeXFSWERxVzVkSFp3WkVNMnpaeWxZb2VReW9MNU9aTy9qemhHWDB0ZTlO?=
 =?utf-8?B?RlJhT0tQczEycDJwbnBva25wdGFsbG5jVjNpcmRkR1A1WjR2dDAxSXFpeG1n?=
 =?utf-8?B?THlBQm93QXRkWEV0UEhZSG1HMFZFR284WW1BZHZ3dGlqQmp6UTFEanFaVno3?=
 =?utf-8?B?MUF2VThRZ2FEbU5aVzF6MEFZOUNxcTErYmQvYXZLNDBTQnBqUnJLTzQrZ2xH?=
 =?utf-8?B?N0tFMmpUZzNObWh6K09UbzdscCtvV2syQTcyTnVOUEhuN2UyV3QvMzRqVGdi?=
 =?utf-8?B?cVE1RWJEVmVzbHdJcmNubXo2ckQ5VkFiVithczBodW9jMGI4TXROaERCdmt6?=
 =?utf-8?B?Uzd6RWJIVm9mTDVyQ0M1c0hiT1BoQmNoMFpJVEtPL281NVhvejNCUG5QVzg1?=
 =?utf-8?B?dGZnYXpSSEZ3TFQvLzBPaVpxTERMK2lGNithd1dNRXcwWVVnVSt3M2dDUlpY?=
 =?utf-8?B?M2QzWHJaZklvbFI3MTd4T0lsa0RpNWJBeUQvWS9Bam9NRHV0VldEUnEyQXhh?=
 =?utf-8?B?RFVRb0JuVnptSGJJUWJ1Tkg5dVhHKzRpMTNoTExnV2hmTDZraHFxaVlYNjRn?=
 =?utf-8?B?MC9hT3FQeGF6SHV0dlBlRFk1Q1VTeHMrVEM0dWdiRnduZDNGbFlxMG9UcVVZ?=
 =?utf-8?B?WEhGSU9Tay8vYWxZaDdxc3g1cGRlZXRHYWtLRXpBcFFGNFBRR1NtVTFxYVVF?=
 =?utf-8?B?Q2E0akFkNFU4bnBocTdoc0hoNWlsd2V4RDVOMDArK3Q5bDVzeGNydytZanNF?=
 =?utf-8?B?aXpVWXlUUHJoeDRQMk1PUm5Td0VXZDVibUVlQlpYQlJpM3pzYzFFUjRWNUhW?=
 =?utf-8?B?ZldUVGtsVHROb3hXVGxjL3RGOGE5WGNtY2N6VlR3c2p5L0p5d3Bzd0dUbGt5?=
 =?utf-8?B?N1l5bStsTVFuOTVkWkdoZ25EUkJkMGcxVENBbzVDY1NEUEJnWDIwdFV4c0xV?=
 =?utf-8?B?cjZlNlYzbVZMcWcxNGErV0NOWktJa05JUy90N1VMbXJCck9ZQURYODlVbmZm?=
 =?utf-8?B?YzJLNE9zOUd5K0ovUVQ4Wk5UVmJZMUlZRmdwaVQ4eTUvaFNaVlpNSnFRcDZN?=
 =?utf-8?B?a01SZURBQXM2RHRrSDFEQm5zY3VoclhQZ2ZrZmc0aEtRaDk1azdBTzRXMVRW?=
 =?utf-8?B?OTFCbzNKZG1LeVVUOUQ4eTRwTWpUZEhYNkg5VGd3ZU1xZ1I4NEpOZHdCUnBS?=
 =?utf-8?B?NDR0bWJndnFJampNZE5TR3hIQis2TlZqaXdtT1VuSTZpRy9Pb3FKUEJneDIw?=
 =?utf-8?B?RkYvVGlqSVkyK2xDdlZ1WlJnWHp4SjUrbHlMZEZLWEhyRW93RWU5MWhGNkE2?=
 =?utf-8?B?WTFKTFQ2MW80djRzb3FnUktJY05mWWE4SWpTU1hJTnk3Y0Z5aTQyQUdKckdH?=
 =?utf-8?B?eWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4F5217BEB2DAA84B89415332AE20B17D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: entrust.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6931.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 442e6b29-b664-4ba4-f344-08dd8352d7a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2025 17:09:58.4978
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f46cf439-27ef-4acf-a800-15072bb7ddc1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i2yVfyPIIT5t95Xz1QMAxA0/v5CO/FHvG/D2ZHFkPb+kyN+UfQD+uk5gLwTsboIynbfBHT9wwJm/9RtDqvYXJg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9298
X-Proofpoint-GUID: 4dmspNY70n9oyjQ2EbvlAPOjamz81s_h
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI0MDExOCBTYWx0ZWRfX0tQmFKzfSsh9 P9sPX+55Q8zuWfXBFIpIif7zQB/OL8H8F3zwbCMowiMgW6AzYP0d7acSoQH/tJhtWdNdQFRHyjX 8LZOAJCw2Ic1k7X0kIIvNb48H2AlP/F8w7B1AOkelFcvtnxUKqgJrzopHevgf6V8T86l6Z0mzy3
 is3birprw75Qve7qNucyJzOEq80zjEDK7Lt1kqApEEjVKTxPTS88gNXW6BA5f6xCJWpz9ENP6WV I55R1tUJVLGA8M885tdVrGbSyTXZ3IAvmV3oJaOAXoFzBUArcSz/1BHRPIdnfiXccTnXup6VJfP Rx7TiD7wJ+bDHTXQeu9iSykEDxpEMoAN3GqwImsJlvq0Z5MRHEwdMw92YL3wUc6pb/tY54ueST6
 Y58dYqX64BnZIh6V7fSt4uVKGd9KiVqpmKsI6d6lpbU5yshVV/JjusFFOiB8TL0kvx7eoMlj
X-Authority-Analysis: v=2.4 cv=FtcF/3rq c=1 sm=1 tr=0 ts=680a706a cx=c_pps a=Dwc0YCQp5x8Ajc78WMz93g==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=XR8D0OoHHMoA:10 a=FEbzDYiKvWYA:10 a=J0Tn2xNtAAAA:8 a=0efkbMWCAAAA:8 a=eNf4aiCN-Rn5KmKLZ0sA:9 a=lqcHg5cX4UMA:10 a=QEXdDO2ut3YA:10 a=TrhwNP2um4qoDiK-Ec4Z:22 a=9ZcRxastL33iXWX1AWsW:22 a=VwkjaymAgT20bFK_voR2:22
X-Proofpoint-ORIG-GUID: 4dmspNY70n9oyjQ2EbvlAPOjamz81s_h
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-24_07,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxlogscore=543
 mlxscore=0 lowpriorityscore=0 impostorscore=0 phishscore=0 clxscore=1034
 suspectscore=0 priorityscore=1501 spamscore=0 malwarescore=0 adultscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.21.0-2504070000
 definitions=main-2504240118
Subject: [oss-security] Re: [EXTERNAL] Re: [oss-security] vulnerabilities in busybox tar and
 cpio tools

T24gV2VkbmVzZGF5IDIzIEFwcmlsIDIwMjUgYXQgMTc6MDQgSmFrdWIgV2lsayA8andpbGtAandp
bGsubmV0PiB3cm90ZQ0KPiA+IENWRS0yMDIzLTM5ODEwDQo+IEJ1dCBpdCBzZWVtcyBidXN5Ym94
IGNvbW1pdHRlZCBhIGRpZmZlcmVudCBwYXRjaCwgd2hpY2ggbG9va3MgZ29vZDoNCj4gaHR0cHM6
L2dpdC5idXN5Ym94Lm5ldC9idXN5Ym94L2NvbW1pdC8/aWQ9OWE4Nzk2NDM2YjliMDY0MQ0KPiAo
ImFyY2hpdmFsOiBkaXNhbGxvdyBwYXRoIHRyYXZlcnNhbHMgKENWRS0yMDIzLTM5ODEwKSIpDQo+
DQo+IFRoZSBlc3NlbmNlIG9mIHRoZSBwYXRjaCBpczoNCj4NCj4gKyNpZiBFTkFCTEVfRkVBVFVS
RV9QQVRIX1RSQVZFUlNBTF9QUk9URUNUSU9ODQo+ICsgICAgICAgLyogU3RyaXAgbGVhZGluZyAi
LyIgYW5kIHVwIHRvIGxhc3QgIi8uLi8iIHBhdGggY29tcG9uZW50ICovDQo+ICsgICAgICAgZHN0
X25hbWUgPSAoY2hhciAqKXN0cmlwX3Vuc2FmZV9wcmVmaXgoZHN0X25hbWUpOw0KPiArI2VuZGlm
DQoNClllcywgdGhhdCBsb29rcyBiZXR0ZXIsIGJ1dCBpdCBpcyBzdGlsbCBhbiBvcHQtaW4uIFVz
ZXJzIHdvdWxkIG5lZWQgdG8gY29tcGlsZQ0KQnVzeWJveCB3aXRoIHRoZSBGRUFUVVJFX1BBVEhf
VFJBVkVSU0FMX1BST1RFQ1RJT04gZmVhdHVyZSBlbmFibGVkLg0KDQotLQ0KSWFuDQoNCkFueSBl
bWFpbCBhbmQgZmlsZXMvYXR0YWNobWVudHMgdHJhbnNtaXR0ZWQgd2l0aCBpdCBhcmUgaW50ZW5k
ZWQgc29sZWx5IGZvciB0aGUgdXNlIG9mIHRoZSBpbmRpdmlkdWFsIG9yIGVudGl0eSB0byB3aG9t
IHRoZXkgYXJlIGFkZHJlc3NlZC4gSWYgdGhpcyBtZXNzYWdlIGhhcyBiZWVuIHNlbnQgdG8geW91
IGluIGVycm9yLCB5b3UgbXVzdCBub3QgY29weSwgZGlzdHJpYnV0ZSBvciBkaXNjbG9zZSBvZiB0
aGUgaW5mb3JtYXRpb24gaXQgY29udGFpbnMuIFBsZWFzZSBub3RpZnkgRW50cnVzdCBpbW1lZGlh
dGVseSBhbmQgZGVsZXRlIHRoZSBtZXNzYWdlIGZyb20geW91ciBzeXN0ZW0uDQoNCg==
