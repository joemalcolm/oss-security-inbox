Received: (qmail 1778 invoked by uid 550); 25 Sep 2024 18:05:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 4012 invoked from network); 25 Sep 2024 17:38:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sony.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=S1; bh=SgpFc5I
	8pWgVq3I+XI4zDbWAhtB+L4Pld9/9F4cRTFY=; b=LzOUf+q8GBhJaTMUg9iHg0X
	vesgSOmqUH/Z/mIM94uu6hIEoCw4klPdSbkplWsf0UWzFFdIXsrBqqIDTLJH9F6K
	AqKQLp7BykW43lEkFz6xOxbJ6Zdd3BMJqeikJognzZnGPwtRTgyzm/UWqLscEuOl
	dgWOYpGuEu4LDdcPH0RZoeTqj+x2LHzBoxJwukdP7eknDr1anIo+3NeEgRu7ieu/
	9gf6vvSjo7d1bxxSywQMf5oOWLZ3CfZ/kr2eyC+I4ujbw2BG3DYBcgSgZfxnYsR/
	VonDkYfi3EgXagIedBPiEbG37ubC9EGLVQNrSy0+16T9dT8zubeYfO8Fk6K1WCg=
	=
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WJFVPb5VFE0nFf2F/D7zB9y77IME77bxSaB9mqFbndTmAsskeXdzcHcKeBli1+srRfUM0I5AC623H4aniD3TI0tmuRkZmEVCUD/o9GWl7D/15m8xMPE0aTIim/XejNLL5FuDelFvyaE0KQFsQ3JJD37vnr6a9/PV43AYbHeKupotjaFm3Q/9njhoIgH6egl9Fq0dVij7eicHizaOB3j3wmQQjbQsl7nC/oA1smGPTQaH+JMN1zVKqLlM+NYKtJOfBAxSw1zID26M3Ii4nGlUKJo8Ib5hYO/5iX8sNxnb1yBuXMqA75ckCD4lDfLtg/i0PtlUU0NrVJxOTXBFDxnMDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SgpFc5I8pWgVq3I+XI4zDbWAhtB+L4Pld9/9F4cRTFY=;
 b=iX8hXyTT8p3+uqieVGEcLvKwpgZfuQRYtb7fo3Uo3sQuLjPh5JqKniP2L7Q9GLi/fiNOSAwEa/BS2Dxq6bjaQHEovQEpjpLRaEVrnHnRnnCI3iJPeYf1/bqVvgvsRyRKsUunW3SW0zOThlZyUphkd07nCPNU9ioFR2V4Dt50bOe5n1c4kV6D+koD0UxQ7JBqdi4yKy9WJjLki06fNCDcwJHSTrBzQjm2vosaXjfeSPZy8UNuDsCRO4xKviSdwvob042/6IdJ2YbrngRRnyjfSusLWd76RlKr602rVl4nd79wYu2lymJSB5UjpIYivtODjUboiPOnXtDNO7xM+X7EeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sony.com; dmarc=pass action=none header.from=sony.com;
 dkim=pass header.d=sony.com; arc=none
From: "Goldberg, Adam" <Adam.Goldberg@sony.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] CVE-2024-40761: Apache Answer: Avatar URL leaked
 user email addresses
Thread-Index: AQHbD1c1ZkBjnKBuPUKc0IkudVX0dbJonnWAgAAlToA=
Date: Wed, 25 Sep 2024 17:38:03 +0000
Message-ID:
 <BY3PR13MB4769D5EB969804CD5B905A748B692@BY3PR13MB4769.namprd13.prod.outlook.com>
References: <16a2094c-dfa6-a448-b9c7-76ba2dc86f66@apache.org>
 <20240925152119.GA787@openwall.com>
In-Reply-To: <20240925152119.GA787@openwall.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BY3PR13MB4769:EE_|MW4PR13MB5863:EE_
x-ms-office365-filtering-correlation-id: b48ff3a5-0b94-43d2-6034-08dcdd88cf21
x-proofpoint-id: d8690225-876f-412f-87c6-a7cb45557a4c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info:
 =?utf-8?B?TWE1TS9zYXplUDNDYnNWdVo1NDJySVh6MlNpZTNEVUlibnJjaUxUMlhrMFNq?=
 =?utf-8?B?am0rQjBlSVB3SFdBQXg2QUFxWjM4Y0RRNkJzUEtYaXJYK013bHBGcDNqbkRH?=
 =?utf-8?B?OGs0bUgxa2taMkZlbllqdVB0d1NlZ3o1S0hBYlpldXV5ZU4xT1hmWGNLcnNq?=
 =?utf-8?B?NXRHSGtPRXhST1BUeHcvODdoZ3E0REp1SUNYRnlBQ05PeXUyYXoweEp6OFlG?=
 =?utf-8?B?QXdsR1VtRTFnelo3M0lEeHlQcVVLSzAvby9WNFlsQzZlcnp2NUZ4RWFsd0NZ?=
 =?utf-8?B?M1JLcXE4ZkwyUVN5cmhBZ3o0Rm5NOGNoWTVXSGFFanNVS1JGZ2dZTnN1NEFk?=
 =?utf-8?B?SDgwYjBmUm0xaThBcGVGdkM0Z2pjV1BERGZkbGFZaVNyOUxXL3dPRkp4NWhD?=
 =?utf-8?B?ckphTFZjQVo1MForZlpQdGdSWnJRMWYzMTZVd3dTdUNaT01kamJXYkkzeml4?=
 =?utf-8?B?eXVDYjUyMHZISDZ6SUFIZTdMcnU4Mm53ckFGU0w2WndjSWpLVVU0SEpZV0xZ?=
 =?utf-8?B?eFR0TjAwOGF5OU1Pck9ZbncySzFqeFdIOUg0RkkrcTZocVhyM091TFMvaE4y?=
 =?utf-8?B?L29zdTdQV3hFc3hUSzYzMlptc1ltOEN0TElqVTJsY1dOTGo4ZnB5RlMvMU8v?=
 =?utf-8?B?ci9TOUhBUHpFcDh1YlhQcGE5aHNpb1JRVVYwSUF0MVFwSWVxT0RHSlBxa1Yv?=
 =?utf-8?B?T0ZZYXp2Y3lYaDhLS3MyL2lBYjd4a1ZZeXFVZVMyNThuYk0rSlBtQXpobzJ1?=
 =?utf-8?B?LytFZy9TM3AwclBHNDdOV1dtenBnY3pJTDNPVjFiQ0M0Mmovb3hJaWNnNHhp?=
 =?utf-8?B?SU5VYTZQeTNKOU1DdXBGektrdkJEb1p6YUNwbnloZTFIWmZFejBIZERNL3c4?=
 =?utf-8?B?T1JEWDRsb1g1aDZoVVg4VDlVRVFhT2NHL1JDYmJmSzBGR2Nla3FDeVFtUEFS?=
 =?utf-8?B?K2NmTDRhbS9wODNPZ0VwdG1UTkYxWG1EVmwrUFliNW9xV3BSSDRNQ1JwL2pk?=
 =?utf-8?B?djVMYUxQakdxYmFXamJFUFNUSExENzd4OTFQMjYvL3p2RUkvZHZ1QlFsRjl1?=
 =?utf-8?B?cjZRTnJBSHRFYVRLOXRwbFdBdEtkNGNIR2JCU1FnN2llL2xucUhyeVRHeXlr?=
 =?utf-8?B?YmdOMzNZT2tDbnRiUVZNOGdZTVZmaEtoekxaWHVVSkxPWHB2L3UxeU1vSU5L?=
 =?utf-8?B?Rm5nY1hsQVlTRnJZNGh4NzFRalpEWjZlcTVXYTh2UFBsS1lKeWtoR0xxQWZ6?=
 =?utf-8?B?SVVyOGhhM0NhQnhueW1DaHA2VCtQODJheWNMc0w0dFpYcmZhMkw5OC9EWmdn?=
 =?utf-8?B?bGdBTTlVSmdUYW5wUElEeWxZSmMwQ0RkZU4wUWxONWQ1RWRwcHRacmEwOXR0?=
 =?utf-8?B?RmM3R0ovc1M1NjlBNzNBSjJqd2pBTmR5akZkczZTWHJyMEVHYUVlczJIbVdE?=
 =?utf-8?B?Z2ptZjZ1YXhuMFpoelh4aUs3b2Jjem5YNmpRUFBJVFlGKzdXdXNWVlRlbjVY?=
 =?utf-8?B?eG1GK2VzbWk5dGo4M2xtc0RUUzdKTDZ5blNudUtqaG53Tkk1Nmt3TGdaU0JY?=
 =?utf-8?B?ekVJT3dKSGhkbFBtK1d3dzV2ZWFFdGhZd0NiZGtWU0VPU2czZnNOWUVGQURR?=
 =?utf-8?B?VCtWQ3NkWmtub2ZpRnR2dUJVN096cTlSUmcybGZjR2srSElNYVlRRTFJSDNL?=
 =?utf-8?B?SllMRTBySlBhQXNSNEd3OFRsdnU0QkE0bE9sMVA3YUx1S3FpOFZ1S2RVK3o4?=
 =?utf-8?B?N1o4WDIzcDNpQUplUm1YZlFqRGpycWVsRWRKUHNCYmRkL0t4aXBmRjZPOUlz?=
 =?utf-8?B?TklJWlVlc3MvM0hhcnV3UT09?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR13MB4769.namprd13.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?dzRLYnpTOFRFOGZSeXFIT3RVZndDTFdIbHY0Z0ZjYW1wUlViQjBmSytVVWJa?=
 =?utf-8?B?ZVBjTDFXNmhpV0VqZXUzclY5V05KSWQvUDh4djR6RzBsRGgzZXBNR2tWb09i?=
 =?utf-8?B?SDlrZU1OMmNCVmtHK2szTFZKVXJDejVVVUdvK1RtYVRwclJsdEcwMzNOeG1q?=
 =?utf-8?B?NUExeFNwYllFVWpMZ1I3QkMwV0l3VW1QNFRyZnV4eWNQRlI1WUZjbTQydVhx?=
 =?utf-8?B?dHlYeUxLMmVOUXNyTzVoQSt6c2ZoZ3puRkZkTVEzTU9DMjZkOHZNWHZISklh?=
 =?utf-8?B?N0pUWi9pNDZwL0lxR2JNM2R2b09wMFJOSDBYL2JFRWd6MDlJcWpBNjhmbzlw?=
 =?utf-8?B?bm1uRjdHc2cxQ3d1eXpBakhhVDZHanF1NVdBblFjdmM0VlROVkhmTnNMRnd1?=
 =?utf-8?B?a1ZTQ2tTdEgrMjk5UWVZUlhYaU1ZRzJPYlRhaTVVd1ErQ1BRZ3dGSnFkcDY1?=
 =?utf-8?B?YVlCTUhQcGdBVkgzZFNTZFFRMXhLN3dOejVUVlVoYXUyeEZaU1NnVVQrd1NF?=
 =?utf-8?B?ekdSMEZXWXRsM01CY05Bd1I1Wng3WHhyQVV4OXQwd2pZMFc4bzlsOHNNUFNV?=
 =?utf-8?B?K2RxUVNLMmRxdUM0MEE2YVVraDNJN3dWSE1vS1pIb2FiR1FwUVJqb2VSbnB2?=
 =?utf-8?B?Z2VVcmdXU2VWOVFPb1pUK1dUbXZwQ1cybEhkZEEwaHV5ZFMwd1R0eG5Pc0Y2?=
 =?utf-8?B?YWJHWmV2ZEtvYnMyVEo4M0paNWxEQjl1Nks0OVBvQzZzdHZSUi9VZ29qREps?=
 =?utf-8?B?dVFROXowVU9tcThZOWRjUW5sOU9UcUU2R05YMHlYc2ZiaHduRkt4cUlsUjEw?=
 =?utf-8?B?R3owRVFOVTFNOU51WmxUK1JsdG1XcXN5bkhDMmw5YzlxUlZLek5DNDVUK1Fh?=
 =?utf-8?B?Wm91Tzcra3gxSkVkaEs4U3hpSjdnUW8yelY4Q1U2QTE1dVJLOFZ1R042cisz?=
 =?utf-8?B?L3Y2WGphNHBYbmF3NGhBOXJVdnNmZ2tvR3FnQmVxeWZXMzFTQURONEJRQnph?=
 =?utf-8?B?aCtvTWoxLzMrNzZvNWxySjY0cUlBU0FzZHJsWXhVOGZlcVRBZy8wTDZkTWhj?=
 =?utf-8?B?MkFlU0w2c04veVZ2a3hlVTVQTzZWUGwrSEk3QisxcEVqVE9SK2xsL0s1a0wr?=
 =?utf-8?B?WXo3akdVckZxSHhZL0hNNmpLQzlWN1RDZjM1clZLM0pWR3JrcFU1V05hYStL?=
 =?utf-8?B?eHUzWlVoSFNtRFVVRmVPMG5ReGFkcFFDazVpcmJoY2FJaXBOb1h2Uk84QU91?=
 =?utf-8?B?YnhRWGJndXFXVTIvTGJ4dENyVUpDTEYySlRuU3NXdHluSlEzL0huaWxSUVBK?=
 =?utf-8?B?bmNSZXdXNFJQOXU2Wjk4ZmYyNTRJL2FsYXBsZkptTkZNamhJaTBjb2pQM0Zx?=
 =?utf-8?B?eVlpZm9OV2pqeUtEVmhMODhnM1JjZUtQR0NycVdUUThqMGVENy9BbEVSQUhJ?=
 =?utf-8?B?YjJudzN1eTFyWXJ2TFpGUno0YUxYS2FvVk9qZUpIdTgyMnBHc1NwVGVKK21u?=
 =?utf-8?B?MTVIeC9GblVseVVMc1Fzc2Z2N3hERXJtS0RsMTdSeFlGd3g5d2doUFlwYWpx?=
 =?utf-8?B?WXNKUUREbXBUZFAzeGFmZDJFdVNVa1g2dk9kVFVmOC9leVYrVG1xTlFGZmFs?=
 =?utf-8?B?OW5nU0U4NTAzb2V3S1prUFB0OVdYMGZqWkc3VXI0QXpRMHliTVo2WlF1Wkl0?=
 =?utf-8?B?aUp3K1NhWjFOOHhGVTUwVGJzVEw5cUZoR2M3cHU5VGk2bFN5Z0pQaVE4TkIv?=
 =?utf-8?B?c09qa2podXdRTWVSdWZrbTYwMm16dk4zMWVBZDdsTE1MUUExblg0WnBJWFZB?=
 =?utf-8?B?SHlSNDFOcy9oMEtWTjQ5cFV5YmJZbmovZVhDZ3ZQTC90Y1NoazhpdlMwMUor?=
 =?utf-8?B?VXZ3d3JMQ3h5Syt1a2tkelhwMmtIQ0NkL0hQRUhjVkhCMmloZjdDLzlZcVZr?=
 =?utf-8?B?K3Q0azVhVVFxMUxiMCsyUjdGWm9aQmNBaWx6MTBOaDgwWW94NzBjYmd3ZGt4?=
 =?utf-8?B?YXhDM1pTV1B5QWorZnFwbHd1WTFZYVVYdlZuWWovbzh5aFYwcEZNUkg4a2t1?=
 =?utf-8?B?TzFmeFNJd1VuNXFEVFpubFVjOFZBTUcwb05Lc3hSUmxlRlkyVXRuZkdMck5U?=
 =?utf-8?Q?NvWsc+nzqwHNXvnih+JAKgICR?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	9KYhJF50tiXiruflPjweOM6jtqT51m4ClHXmVOnbkL3GroMOyt6poLH8sCxCBnn5aeoIzfUcvPDtinqrvuMZRsVXpsXumMKC1fQIgnDMczNCEBh4PAzVLf29e7/+KTugr1uk9lLVO+ChLBBpQ3mvfq40FFhswFghGEUy6WtwyLGaUGh2FjhRhMavzn82ZiohO/M51pY/vNgnkLhSTHqEjCk3P4Hc86Q+CtY+9sA/5f/3cjeBY4Rz/oWm/d9ZtFhDyVEURzUW2wsGo2H+yB+k3R0EMNBaj5q73CA0dSWhyvQ3LK4BA4iWxG3KVh/3Ds6kMSjVkdxYTMNN9WV63Eooi06RZamPuAFmV6NEuHbP42ayQ9ZK76kra82oBxcXM+e5GDMiFgb6LbAVE+G1Cy7FFwDEWI69S5fCWIOn4dFuPtawEZFNqIan8JZxbsMo5I+HMdiFCXAai8OIQdolUg/t3aLjxlQc2vwY/gj9ELWspak179UIdnI36nY1xS/ulVBFeUd8DrAk4k7bex2BE8rhZY2I6MVnZPS1rdc97PxAnL+oU2th/PuwAys5ZgVDAdqneQBu2jZzqhmusW3eXZ8lQn64qq+HzmRjGdsheLPwkDARdDTUJgIJK3emdQhiyYib
X-OriginatorOrg: sony.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY3PR13MB4769.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b48ff3a5-0b94-43d2-6034-08dcdd88cf21
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2024 17:38:03.9668
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 66c65d8a-9158-4521-a2d8-664963db48e4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oGOuFqnJwmebUG/IZKmv7iZenIeAECDCtZRB+SPOcngolXVoVZ649ute3ajcRqdHE5ewz9KkDCMg0C8IN8baGg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR13MB5863
X-Proofpoint-ORIG-GUID: 6SWJZCjfz9D8u2kibrb2rUFtneYtBaaz
X-Proofpoint-GUID: 6SWJZCjfz9D8u2kibrb2rUFtneYtBaaz
X-Sony-Outbound-GUID: 6SWJZCjfz9D8u2kibrb2rUFtneYtBaaz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-25_12,2024-09-25_02,2024-09-02_01
Subject: RE: [oss-security] CVE-2024-40761: Apache Answer: Avatar URL leaked
 user email addresses

PiBPbiBXZWQsIFNlcCAyNSwgMjAyNCBhdCAwNjoyODoxNkFNICswMDAwLCBFbnhpbiBYaWUgd3Jv
dGU6DQo+ID4gVXNpbmcgdGhlIE1ENSB2YWx1ZSBvZiBhIHVzZXIncyBlbWFpbCB0byBhY2Nlc3Mg
R3JhdmF0YXIgaXMgaW5zZWN1cmUgYW5kIGNhbiBsZWFkIHRvIHRoZSBsZWFrYWdlIG9mIHVzZXIg
ZW1haWwuIFRoZSBvZmZpY2lhbCByZWNvbW1lbmRhdGlvbiBpcyB0byB1c2UgU0hBMjU2IGluc3Rl
YWQuDQoNCj4gRm9yIHByYWN0aWNhbCBwdXJwb3NlcywgdGhpcyBzb3VuZHMgbGlrZSBhbG1vc3Qg
bm8gY2hhbmdlIHRvIG1lLiAgSSd2ZQ0KPiBqdXN0IGNoZWNrZWQgYW5kIGh0dHBzOi8vdXJsZGVm
ZW5zZS5jb20vdjMvX19odHRwczovL2RvY3MuZ3JhdmF0YXIuY29tL2FwaS9hdmF0YXJzL2hhc2gv
X187ISFKbW9aaVpHQnYzUnZLUlN4ITZ6b1VfSjR3Z1VzaE9jR1Q3V0NSd1dnejBoakVTb3JEWWN1
Q1g4Y09BUkc2enJWcHVMSG1lYXlZSm1mMlpuSU8xUWFRVkZmZW9wUTJ1NkdRNmckIGRvZXMgc2F5
Og0KDQo+ID4gQWxsIFVSTHMgb24gR3JhdmF0YXIgYXJlIGJhc2VkIG9uIHRoZSB1c2Ugb2YgdGhl
IGhhc2hlZCB2YWx1ZSBvZiBhbg0KPiA+IGVtYWlsIGFkZHJlc3MuIEltYWdlcyBhbmQgcHJvZmls
ZXMgYXJlIGJvdGggYWNjZXNzZWQgdmlhIHRoZSBoYXNoIG9mIGFuDQo+ID4gZW1haWwsIGFuZCBp
dCBpcyBjb25zaWRlcmVkIHRoZSBwcmltYXJ5IHdheSBvZiBpZGVudGlmeWluZyBhbiBpZGVudGl0
eQ0KPiA+IHdpdGhpbiB0aGUgc3lzdGVtLiBUbyBlbnN1cmUgYSBjb25zaXN0ZW50IGFuZCBhY2N1
cmF0ZSBoYXNoLCB0aGUNCj4gPiBmb2xsb3dpbmcgc3RlcHMgc2hvdWxkIGJlIHRha2VuIHRvIGNy
ZWF0ZSBhIGhhc2g6DQo+ID4gDQo+ID4gMS4gVHJpbSBsZWFkaW5nIGFuZCB0cmFpbGluZyB3aGl0
ZXNwYWNlIGZyb20gYW4gZW1haWwgYWRkcmVzcw0KPiA+IDIuIEZvcmNlIGFsbCBjaGFyYWN0ZXJz
IHRvIGxvd2VyLWNhc2UNCj4gPiAzLiBoYXNoIHRoZSBmaW5hbCBzdHJpbmcgd2l0aCBTSEEyNTYN
Cg0KTm90ZSB0aGF0IHRoaXMgaXMgYSByZWNvbW1lbmRhdGlvbiwgInRoZSBmb2xsb3dpbmcgc3Rl
cHMgKnNob3VsZCogLi4uIiwgd2hpY2ggZG9lc24ndCByZXF1aXJlIHRoYXQgdGhvc2UgdGhyZWUg
c3RlcHMgYmUgdGFrZW4uDQoNCj4gU28gR3JhdmF0YXIgVVJMcyBieSBkZXNpZ24gYWxsb3cgZm9y
IHF1aWNrIGNoZWNraW5nIG9mIGVtYWlsIGFkZHJlc3Nlcw0KPiBhZ2FpbnN0IHRoZW0sIGFuZCB0
aHVzIGFsbG93IHRvIGluZmVyIG5vdC10b28tY3J5cHRpYyBhZGRyZXNzZXMuICBCb3RoDQo+IE1E
NSBhbmQgU0hBLTI1NiBhcmUgdmVyeSBmYXN0LCB3aXRoIHNwZWVkcyBpbiBtYW55IGJpbGxpb24g
cGVyIHNlY29uZA0KPiBwZXIgR1BVLCB3aXRoIFNIQS0yNTYgYmVpbmcgb25seSBhIGZldyB0aW1l
cyBzbG93ZXIgdGhhbiBNRDUuICBNRDUncw0KPiBjcnlwdG9ncmFwaGljIHdlYWtuZXNzZXMgYXJl
IGlycmVsZXZhbnQgdG8gdGhpcyB1c2UgY2FzZS4NCg0KPiBTbyBJIHRoaW5rIHRoaXMgQ1ZFIHNo
b3VsZCBlaXRoZXIgYmUgcmVqZWN0ZWQgKGFzIHRoZSBpc3N1ZSBpcyB3aXRoDQo+IEdyYXZhdGFy
LCBub3Qgd2l0aCBpbXBsZW1lbnRhdGlvbnMpIG9yIGNvbnNpZGVyZWQgdW5maXhhYmxlICh3aXRo
aW4NCj4gc3BlYykgYW5kIHRodXMgbm90IGZpeGVkLg0KDQpTZWUgYWJvdmUsIGl0IHNlZW1zIHRv
IGJlIGFuIGltcGxlbWVudGF0aW9uIGlzc3VlIChhdCBsZWFzdCBpbiBwYXJ0IC0tIGFuIGFwcGxp
Y2F0aW9uIG11c3QgdGFrZSBzcGVjaWZpYyBhY3Rpb25zIGluIG9yZGVyIHRvIGNyZWF0ZSB0aGUg
aGFzaCBpbiBhIHNlY3VyZSB3YXkpLg0K
