Received: (qmail 31804 invoked by uid 550); 3 May 2026 18:08:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9489 invoked from network); 3 May 2026 18:06:48 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Zw+CTDGnIAKJiMtAZwB44qfpWhzTWMDwhwsBORrPBjLWoOv9m/nvXtdVzDnL2gVkf7oWRsHyUBbuRGz4FN/4GYRJ8AqKnyvJw+60aVJ6Zalf1uPaBIakwtnVM9a1x0UI0tedlc/pVXElSVjtjsiHrf4jKlglfVDgyXb4RuQ7/24qTFYTGJ0I7HJg9KGYngdUPdKBXCXr+4zA3ABdlCEw8flAGgyCinU68Ed4+GWD9lGbzWsjGHNclfmelIiP0HhdlXq32VXJy6pRIlu4J57VTgrA5djNWKtwnoAL6qs02kwEyuP0OXzH90jDcXEoKkLXZ3R4aiFiXnFPN+Asy9zPVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lECBvc8wzuBqVTIDazcqMIeqzA+dzaE34eGfCFJ4o10=;
 b=S8w1oCrRQX/3PHxZMqr87hdYvkpba4r0a3uk6fUWarcaT6A/npqFzvPvPD53sQx+J4xR5wq6jY8dWTONpo+eq6Tat0IjTiwaFYFuedIxpjdig8hAf2X+9cyW2tgZTNOxcAExjPbQ2uPoFUJkOORMdsUrMBi1TqcV/4ZQH1rYvZiH4ff36UdsWoQVgUmhJa6T7wQSUNL9xhmRrsUopOfNL9GCEkjCb5AnElxXnblZ6P4h15uJlcR5yVhbmo4ZMgLUiABsl/iRfgmlOm+9KhSQacC+VnSrOEsspFve/+4B0C9pgGsM+6IvBnkJGUQ5pd9thp+1YdEGJO2UybVfAFR49A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lECBvc8wzuBqVTIDazcqMIeqzA+dzaE34eGfCFJ4o10=;
 b=vUydYz+eRVeDa2KO7R40Oh6BD5WMFqsZgHZdPkY58PqE9DSWrHZCyvAylRPYxlkjypaYblMtaZ7dYpOVk34YVj4QDK7dmWLfUlwMjgCc+u382kkqk/bQ4+Fgdwww1IW6lDeCKLcFqK/FesxBeVeSA4NqLm6P+LTU61cvQAyYhwJXc5rDmKKS8rxHd3eCudC3IvkU4TdMqplVZvNopXKd0NsWZyzebksbyeeowfFPblw0nxUWB7VWDo/vh/J2xpoNv49nuR0/YziPYN7FmSPdYkIvpDeT0R6V3C7/zojdAMOIktxUt/9ctkphi4a4kg8EhIdj5LL//OulCdmc66apmA==
From: Paul Ducklin <pducklin@outlook.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] CVE-2026-31431: CopyFail: linux local privilege
 scalation
Thread-Index:
 AQHc2CxZPv2bcfMbFE2Ej6frUPz90bX3CfyAgAC6cluAAYoMgIAB0MgAgAA3ewCAAIWbAIAAwnqy
Date: Sun, 3 May 2026 18:06:38 +0000
Message-ID:
 <PA4PR02MB8239F8BF23F68BB4B1612227DE302@PA4PR02MB8239.eurprd02.prod.outlook.com>
References: <afJorKIje4O6dXbH@netmeister.org>
 <d6111caa-db61-498a-92cb-ea7a0aa0a5e2@ehuk.net> <87se8dgicq.fsf@gentoo.org>
 <afL-QhLfEKqHZqka@eldamar.lan> <20260430071917.GB54208@sol>
 <177abb5d-8ba9-4bb9-8b23-9fbc868ed3cd@gmail.com>
 <cfe5a1f5-f7fe-44a5-8af9-8e4c8d68b3d7@terraraq.uk>
 <3a52a111-e961-4ac6-830c-31465a7d14de@gmail.com>
 <SYBPR01MB63364E7BD7FE724E2225875DEE302@SYBPR01MB6336.ausprd01.prod.outlook.com>
In-Reply-To:
 <SYBPR01MB63364E7BD7FE724E2225875DEE302@SYBPR01MB6336.ausprd01.prod.outlook.com>
Accept-Language: en-GB, af-ZA, it-IT, en-US
Content-Language: en-GB
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PA4PR02MB8239:EE_|PAWPR02MB10091:EE_
x-ms-office365-filtering-correlation-id: b7ad51c2-5e23-40b6-16dc-08dea93eb8ab
x-microsoft-antispam:
 BCL:0;ARA:14566002|461199028|15080799012|14091999006|51005399006|31061999003|8060799015|8062599012|19110799012|21061999006|24021099003|440099028|3412199025|102099032|40105399003;
x-microsoft-antispam-message-info:
 =?utf-8?B?eTFZMlBKaFh0dmpZMGJkdnR4a3JPcGg3dkxVbWI1clFpUmxUaFlDOHBZTXJ1?=
 =?utf-8?B?bmRUM3FVSTdEc0hSOUJOZm9NUmp5NHB2UGlGbkwzMWVlK0o5MDlza0g2NS83?=
 =?utf-8?B?UlcxSXNGMG96MWJhMTYzMjhJRW5nZ3VMTHZzblBCMi9iMVF2VmYydE82YjNJ?=
 =?utf-8?B?Y29jdW05b3hBVDRrQ1dFcDR4ZUtPSm9uZnNhSEF6OXROZnVvQkVhOFNURU1w?=
 =?utf-8?B?N0FYQTBQVXliQWxWL2Zob2Y0RjR5aE1Ob3lYZDFacUpsaEJ6TFQxZ0M1ZS82?=
 =?utf-8?B?bnZCY1JtUTB4RmVYbmFMQjQ0U0tPUHNON2lkVVRudWNDaWh4cVR1SE1EbG5j?=
 =?utf-8?B?QkM4ZlJVUEVpdVJ6Um5YaTQ0enFpMEVqNitPTGdFWDFrN3B6TjJxZ3FtVENU?=
 =?utf-8?B?NXp4b0pSSXVDNTYzRzBCVEZvWSs2VW5ISjZ6N25iTEZJWjlRMmF5WmVwMHBF?=
 =?utf-8?B?SG9lRi9pa1c4U2ZiU282NWYyVy9EcHltV2dlU29MbndjRlVEaTNGTDZEYWZz?=
 =?utf-8?B?ZUh5RmpqQ3l3ZEJnV2pCaGhMMFhOZ2tvdCtnSkMzZDljSFZYZncwNWtRb3hj?=
 =?utf-8?B?V2FFYUFaL2dmWlpOaEF2Y3Q1OVdYUmtmeU1KRHJObm1Ba1gvSURzaGxDTVZX?=
 =?utf-8?B?a2VWU2dmd1JpR1RLY2tBeU4vR0xMazVqUGtQS3Q3N1liSGZvaW1DOEFoZk54?=
 =?utf-8?B?bmFzQ2RVN2VlQWVpUjZaSWsvYmhZRGIzWTBUbkNlam9jTEY0SWdnM1Y4aGRO?=
 =?utf-8?B?aDZXSU9IekNqcU93elpEUWpGQ2VWdTJ3ODJrOXFCVUp1NjdUbjFlWGh1dkFM?=
 =?utf-8?B?L0tuQWdoRWo5RUNkQXFLZm9ZT1hxQjRka0p2byt1TTVNaTFxaUxWTnR3VEQx?=
 =?utf-8?B?RXhBWkg2YVNHWDJ5cGdEMnF6NzRYTjI5NWJkS1dSM2kxaDg2NDNUUzlBblJJ?=
 =?utf-8?B?OVJqSmsxNCtyVnJpWU01RFN4VDVtQW84STlycFVvMWp5ZlRJNWpwZkJWY0c3?=
 =?utf-8?B?Qmo4SEZNTHowb24vemVzNmM5WVlndUw0WCsxTUIvWWNmM3lHVWY4MVREekZX?=
 =?utf-8?B?dzVHV3hxbm5lbEt6YWxDclhqZlVQV2xRY2hzNWhWMHo5dTdaMTJhYWx4cE5a?=
 =?utf-8?B?SlRPdVlaYU13YnFuRDY0VWZtL0llcnY4eEFoTk1LcU94Z0VIU09wZTN6Tlls?=
 =?utf-8?B?eEJpZzAwNFA2T1Jsby94VGhvQ080bEhmKy9saFByaFlQTXlrNVBFYWRJYU15?=
 =?utf-8?B?YWRXMGs1Q2dCbmt5SDR4NkNJQXJtQ3dOc1RIU1hVbTRUb3oyMWJIRDZJR1Zi?=
 =?utf-8?Q?v1vXBT4evs/ZCdHRdD5EuomTo8VlE2k44j?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?WlBhcXhCM1pUZk5Gdkw1Sml3cnFaNlhjVWxIWjZRU3lYMHgySzVSMnFGSDZy?=
 =?utf-8?B?ZXB5aXN6SUlMaGhRMktJZkxEZ2xYd3lwL1dpeHVESEZ1SHVFMFYxVERQUWls?=
 =?utf-8?B?MnBldTMvaTVWR0puMXIvNjhPcXhZZFdwTWowUTR4V3lRRWk4NjA1eFNaYXhH?=
 =?utf-8?B?NGpyVU5tTDZ1czhFQjkzQlB5ZFRacGtwZ2w2UlZrUHZ0K3MzalVrMDZ5NndG?=
 =?utf-8?B?MDBwbG1BaW5tak9HZlFNb1drOHFSVlZzeXdQdk9DYjdBVzhQTlkreStFd2Zr?=
 =?utf-8?B?YTlPYnNnREk0WHhPV2NGRXl5VWczV1Q4ZE9PRXlmZkRqUXNLc2NTZE5UQWpm?=
 =?utf-8?B?eWEzcmxIVG13OE83NlBXTzNjb1FZMU4vMjdxa0dlWVAxWDZNMW5Tcm5odDd4?=
 =?utf-8?B?NWdmbXVneGs5ZmI2UmRXRjdNb1YxQWpDbThRTWRpT2d1dEFybWNUSnZVbVZ4?=
 =?utf-8?B?L21UM0JVUmg1TzlKRWI3SlczWmRKRkJnMkdldW1CQ2FHUzVzOWVaNmlGZjZt?=
 =?utf-8?B?eFQ0cDlRRkRwc3AzZDBqTmxkZ00vNVN2cEJ2S0ZFWEcwaE1PU2wvM0haWEU3?=
 =?utf-8?B?NkE5a3EyYUZtVk1POU1qa1hrVnRsclprU1MrQXNWZFhONDhiZFg4dWJ6TFFp?=
 =?utf-8?B?bkFoN1FRV2VteUI3a1VSS2xVMkhvMjFwTWkvQnJVcGlCTzVhY2hNelVQNkky?=
 =?utf-8?B?YXc5dVMwcHJqQ1ZzdG8vd3N0RktjV3c2cWV2b3U1a2c5MWRTQWxaY1ZlWC8r?=
 =?utf-8?B?YkRMOGhiMG0yZThJc2tPWVpQVEF4cFVTRGxsL04wQzVoWWJHT29ubDJqL09M?=
 =?utf-8?B?anNIQ1JYVDBJRE9VZUlhSEhRbTFac2JGZ2FpQkJzMjEwN0NrYVJZeXNiZFJ3?=
 =?utf-8?B?ME52ZTdMdjViZEtOWDI0WWduTUtpVjBOcEFOWHFjKzI5RCs0cHdVY1BrWktS?=
 =?utf-8?B?bkpZQyt4WmVuMHV4SUpKZlZNT012a0tSb1FIa3NpTit2VzdpNTNNRG5OQkMw?=
 =?utf-8?B?MXpLeWhCOWQ4MGdESW5MOGwvcC9JT0RVU1pGckp2R2RBQjlhUjcwK0dCaEdh?=
 =?utf-8?B?aFBOOXZyNm5qdXllWUVKc2lSMitzRG5GNk5LamJBT3V0RER2dU8rTzB2UTdB?=
 =?utf-8?B?UWFZb0lsVUh2VTYreDc0N056OVRJVXFFNnZRM3VLSWZrc1o1eGx3T1ZjOTN3?=
 =?utf-8?B?bTd5L3kwWnhEcmpJWHBhVXYvTjZxaitKZUZFNzljZ0VlWWdkS0x2WlgwMEtz?=
 =?utf-8?B?R29pNjl2bDkvR1BRbFFMV25KaXZPTFAxNXpOVWR4MlBsMWpzKzRxK1k3djVj?=
 =?utf-8?B?MkFmRWVyM2w4ci9BamlyOXRWa003UU9qMWRXTzg0dVprbjNkbU55UHNEcnc1?=
 =?utf-8?B?bC9tZWNtVGRpajBiVWh4NWRZdmNpU3B6ajhzbHo5cVc2bU1DZmYzODAzU2cv?=
 =?utf-8?B?S0xDWXZDcGxXUUNQWEsrRFBocjE3QVdSd0lXbUZSVCtreXR1bWdaMVUvV2dw?=
 =?utf-8?B?K3hSQmMzRFVWZTBBU1A0VHAweTQ3SHdDWWd6MnEvWnlmV29Wd3hsVWVyekNE?=
 =?utf-8?B?SG5nOVBzYU1VZGlST05ZYjg1K1g5djFCaDlJY3NCVVFmcjhYWXdGdkgxYWZ1?=
 =?utf-8?B?VHV0YUZPSlFCUEVDL2thbG9weGlCMzVPWjU3dFpMS0hqaVJBNVBRUUtPcXAr?=
 =?utf-8?B?WVpOU2RWUGc3RGpWSFN5N1Ztb3NvNG9RejFWakFQNmVEUzdqZHpua2F6MFR6?=
 =?utf-8?B?eTJENE5rSi9scVpBNC8rdzZWbHRWbnB3bmxKN01iR2ZaNmNCMzNmL01yaUth?=
 =?utf-8?B?THJ5a1UzVE9WcG1LQ3JaQzBUb25DcVkwVHVFdFlRTmtJUWIrWk82Uk1rY3l0?=
 =?utf-8?Q?6JOL6a0BTWfDP?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PA4PR02MB8239.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: b7ad51c2-5e23-40b6-16dc-08dea93eb8ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2026 18:06:38.3938
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR02MB10091
Subject: Re: [oss-security] CVE-2026-31431: CopyFail: linux local privilege
 scalation

PlNvIG9uZSBzb2x1dGlvbiB3b3VsZCBiZSB0byBnZXQgdGhlDQo+ZmluZ2Vycy1vZi1vbmUtaGFu
ZCBhcHBsaWNhdGlvbnMgc3RpbGwNCj51c2luZyB0aGUgaW50ZXJmYWNlIG9mZiBpdCBvbnRvIHVz
ZXItbW9kZQ0KPnNvZnR3YXJlLW9ubHkgYW5kIHRoZW4gbWFrZSBpdA0KPmtlcm5lbC1vbmx5LCBj
bG9zaW5nIHRoZSBkb29yIG9uIHRoZSBlbnRpcmUNCj5hdHRhY2sgc3VyZmFjZSBmcm9tIHVzZXIg
c3BhY2UNCg0KUGVyaGFwcyB0aGUgbWFudHJhLCDigJxuZXZlciBicmVhayB1c2VyIHNwYWNl4oCd
IG5lZWRzIHJld3JpdGluZyBhcywg4oCcYnJlYWsgdXNlciBzcGFjZSBvbmx5IHdoZW4gc29tZXRo
aW5nIGlzIGFscmVhZHkgYnJva2Vu4oCdIChzdWNoIGFzIHdoZW4gdGhlIG51bWJlciBvZiBDVkVz
IGFscmVhZHkgYXNzb2NpYXRlZCB3aXRoIHRoYXQgdGhpbmcgZXhjZWVkcyBzb21lIHNtYWxsaXNo
IHBvc2l0aXZlIGludGVnZXIgTiwgc2F5LCA1KS4NCg0KRHVjaw==
