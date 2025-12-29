Received: (qmail 24117 invoked by uid 550); 29 Dec 2025 18:05:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18014 invoked from network); 29 Dec 2025 17:51:31 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CPHsulW8uxfdG1QuBhEf5FHBqMUYIs7hK+P86UJg9nST7ktqSMyM62T5drObwQ2FobpKvgQHmVLG/nm7ZqtVfO+KLYCBbzv3eg+8nKELjHxzBu630X6iAk/MywnOGfeXTf/RMtwXtGmlPjRIIEFjM6xIsZBSTnHj+1SKWjQAWFjQdlVbAV+Ltq+sEzw2nHAQOEPlsLgVob/k9cODueeHfxMK3NTyhLk7P8InVUiU6JZ9ZVRDRaLa984i+CaH6KEKOgQ9G5Xcib/cQhFv2nH8JCYHbfwdB+VNZV5MiSb+MVi8H6tRlpNYLF9Bgk2YHRiAnoxsucX8HV+suEcwHfsi6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yc6stL10XKiKRDP9wMsqZajmQhTtkFXaPMX3cO0cNlo=;
 b=P5Puuy6QIVoxHpCGn2S8GXADQbrYkAlr+iPsrtHfWV0Db2JZiHyv81S4QAMFQ/pZJ5LmNYixSjfp5SX5aIfa/jMFzmUwWEx+uaVKPN5e5XwWDlo56r8Hl7jDO1yVm0SLopk06kkescf7D0iq/A8uKrlH68vOr8R0rZnLgzq8p1pEs+CugGh2o6PBaVCwB9n/C3a7SxVNqrimFS9hHnLkOsD/4vzSW7S6S6M5/kNzye7a9jIfEqqa9IOuaLfu8AWqYcF7BDUlz4TY4zrnutAX2rfMdpulaZEa2jGCWPpwRVHw7ham+Enzi3g5ZWVCI9MLOEf1XcX5CdYBOIev3RgtKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=e13.dev; dmarc=pass action=none header.from=e13.dev; dkim=pass
 header.d=e13.dev; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=e13.dev; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yc6stL10XKiKRDP9wMsqZajmQhTtkFXaPMX3cO0cNlo=;
 b=Bbv717AUpqr075V4mC1VhQmxaBscPdB1l8rSq6V3DoeuF/bhA6EI684QvFngVGJNrgjRS8PiG1IViP8wDpn7E8IRNxOt6PKCKWxV7RDCu7M7pSahTIk/ZY0WfmkuKBucZCw9VLzcmKndhvQ03JhKSJK9RJyrshrEI8B9hMWTcksSQcBErEUet+ScyXver0D23YD+qCyred3g6xu2/JrWfGwD8rf6CyKJGJuY3yohbRlmnwadan31fpgwcQlRuZDs0nnMubvvKemqgAUtewqUgtBnrFGocRSiYOML1R9wn/19Yy2MT2nhXwR0MMGoDckwNr/aASeFY7IC0phLW01XZQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=e13.dev;
Message-ID: <3a6f6d97-90f0-41a1-9b33-3bd98cc6accb@e13.dev>
Date: Mon, 29 Dec 2025 18:51:15 +0100
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <4bb0e4f7-a4f3-45cc-b519-2044b4b2871c@gmail.com>
 <928709EE-07AA-4995-B9D3-E83AC18353CC.1@smtp-inbound1.duck.com>
 <6F979157-91AD-4C55-8CCD-5CC5AA18BB50.1@smtp-inbound1.duck.com>
 <20251229172129.XftBSrA3@steffen%sdaoden.eu>
Content-Language: en-US, de-DE
From: Max Jonas Werner <max@e13.dev>
Autocrypt: addr=max@e13.dev; keydata=
 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
 XgQhYeh4fTz9zw==
In-Reply-To: <20251229172129.XftBSrA3@steffen%sdaoden.eu>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Z0W9Gy3nYRJecBgY5B20ZZlD"
X-ClientProxiedBy: BE1P281CA0194.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:8d::19) To BEXP281MB0008.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:6::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BEXP281MB0008:EE_|BE0P281MB0050:EE_
X-MS-Office365-Filtering-Correlation-Id: a136a218-e17a-4a46-34cb-08de4702df08
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?djg2QW9TVTFqRDVna2gvWjJ3SUs3T3h2M2NLa1VhOU9jTEM5YlIvZ1lOZHU2?=
 =?utf-8?B?eHo0RDNhNUVLa2tBWndScTRlNytPSjVyY2h5dy9lemJqR1h6OVhSdFV6ZVFu?=
 =?utf-8?B?MXZZSUJKUHVtUS9PWXlaQkgyT2U5Zjc4QWhjK0xKdHlmRWNsMmZqbXpKd2Yz?=
 =?utf-8?B?R3JxM1FVM1FYV2RPQ0kwRCtvUlhFNlpNRkpQRFZxNlNPNzl6blZqZXlNQ2U0?=
 =?utf-8?B?dnpYMzVMSVN1RWtXWURnYUh5NE9MRVVKUFIyL2pFclREbEtLZ0ZGK2p3VlZT?=
 =?utf-8?B?NytWWlY0UEVzdHVreE5WYXBwZ09YYXlwcnkyaTUxeCtSKzJwNkdrN0NTK1ps?=
 =?utf-8?B?bmliY0Z3Z2dQZXNIOGNpR0M3dTFLMlNIcW51UVFiRDNyMW9RMjExYStiK1Ew?=
 =?utf-8?B?a1FaSWExeWRsMGxCS2VVY0pXSlZveEdLcXlSbnU4QVV5QkpiY04zL25CZE41?=
 =?utf-8?B?VjJMNTA1cXhmOVdsTjc5UG9vT2ZucFJYZnBZeUJXamRvemZoc2UrNndKMDhO?=
 =?utf-8?B?KzJvSjdLcEVHNE5JNUx2aURIQ241a2ZJa2VSZWl1dDJMbXpZdEZxSllxQXIz?=
 =?utf-8?B?WHYvbENibDhtdzFJQjM5QlJvTStVNXJsOTlzVWhmWkk0UzdNUStpdVZKanBp?=
 =?utf-8?B?bHNSeDdaRVBKK0U5d2I0K1BQSWlJeUVXKzVCVmp4U0ptZFJ6anpvTVIrNFdw?=
 =?utf-8?B?SkpLMEVCcUJxNFEvYThhOVlFdDNSbGZXUTIyY1REbUp6UGkzb2dFc1RVc3Vw?=
 =?utf-8?B?ZFBrNktpT0RDbGNZQXVkZlJoa3BPdEgyYTlTeExLUTNSWW5CWGRCTjZNQjlQ?=
 =?utf-8?B?Z0g2bVcza1JFRTlpYXFOa1dadTV2YitLZWY1SWVpekZRZnh2Q1NzbFVveis4?=
 =?utf-8?B?YUtLaDhZZWY1ZEIvZGhCRGx3Zmxhbk93Qkhjc2lWVnp2R09rd250ZmVSNU13?=
 =?utf-8?B?MVJtRW1XQllNUnJScjJ1UEx5UU1DU1BoNERzUGQ5NXZyQTZWa1Nyb25USUZp?=
 =?utf-8?B?cGNDb1FhejNZYzI2ZmVuczQ2OHRxWHVubmNoSHpGSzlhVXpzdUNuMDRHWnF4?=
 =?utf-8?B?R1FKK0hPWDJzTWtGSklkSVpDYnBmeHhKWHFIeEFBdTdiR2M0bS9uYStEVTVh?=
 =?utf-8?B?K0VURnprRThZcFRzUElxdG9WcmJWK0JRUmlJbTJHaVJ1WWpEWFRRY21PaEVh?=
 =?utf-8?B?Z3o3b05qcEZ0MmhUUmhVM2lzZ25mOHZkWFVTMElIRzZWYURmMThiblp6TFls?=
 =?utf-8?B?cGllcWE4SkRBWHp5c2Z6VzRYTGxJZ25YbE5OTGFlai85emRYQ1dxcEtwbEhE?=
 =?utf-8?B?QVRtbCtzMGd5VlZWaWhkek1RVS9TU3VnakpyOWl6VHd0bzFGc3dEQ2FUSWt6?=
 =?utf-8?B?em9DWmlpRld5WFFPM0RMM1NQVlUzMGJDZHYzYUNmWlNaa29YanpMaFRTRlo0?=
 =?utf-8?B?cDk4MDJscTV5TTNQOUJick5Kclp0cWx0NGFDVjZvd0xWVkQzd3dTYkJ6cUx0?=
 =?utf-8?B?b0xzSjhFcmttUW5vV2Ywb0orUFR2TEZlQTcwdWpWUWp0RENKK05HbnVWbURO?=
 =?utf-8?B?cm4xWnREY203UFdEYUowRFQ4NTNEcFM0dWVxY0l6MGh1alBsODUwZXBGbWVz?=
 =?utf-8?B?ZFNvcnlJTFA0dkdsZHlucXE0TEpJaUFKS0hxeTJ2U2ZvTzBqSnVFM0ljZUhV?=
 =?utf-8?B?SHU4Mm1zVFpvNjErNmlISDQzaWQ5WnU3VlpuNkc1ZURsSklrcnd6U2dHR2Zv?=
 =?utf-8?B?M25xaURGU0RzV0h0QWx1anN6UDZMK1R3SURhN0NaRFZNeEVjSWQxaTAxaXpo?=
 =?utf-8?B?RUJMNVBRQUFOZ3NNTXBOMk5OOUJWTmlIU0JsSk90V3QvU3R6c1lGc2xKQ09P?=
 =?utf-8?B?QzArZ1JCWXh0dmw5VHd0UmFUMURKNWQ5ZWdwWWhlZElXaXc9PQ==?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BEXP281MB0008.DEUP281.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?N01VMW91b1Y5S0xUdklIcWc2MUtMaWh3dkp4SFBybXFuSWNmY3o4Yzl0czZm?=
 =?utf-8?B?cHRMQ0RJaTJDSnFhdmRRbk1oSlRUN2FoTjJwTWlsdStINUpHV1VQcExNNUhJ?=
 =?utf-8?B?eGRMTGoyWWZvUGRTQUg3S0p4SFZHMlU3YnAvd1E3TTJvR3lGVnNNMkdyLzYz?=
 =?utf-8?B?MWhqUG9MaUNTYUtSVkwrQmRqelIrTFUza3l3SmhUa1lvaXRyOEFSSjhrSTgw?=
 =?utf-8?B?Tk54M2dHeEhwNXZvRzBmUnpWOWtUMlV5Z0N4OEVwOGpmOEVzUklIR1NJNnZn?=
 =?utf-8?B?TTNzM1hIS01GV1pESmhuY0tTOWhJWllrWDVyWHMvNjdQOTVTK2NtbE40QTh4?=
 =?utf-8?B?TFA0ck03WXVVbFV5dTE4VDVJSStvb1ErTE9PWlFqMXR5UHFtcmxCN2k5dERY?=
 =?utf-8?B?WkM1bkJiTkFTRU9xdFhIeGh1L255NVRkenV1cDF3NkphOUxXRnRtZDlJNS9Z?=
 =?utf-8?B?eXRkamswY21ET3ZWN2xvUGFSMTQzT3RKcnNlU2RReGpJS1hXMFc2QmIvMWdJ?=
 =?utf-8?B?aW9DSktUTFdiYVlpNzVDUVpGYVZ5VDNRbnJPS3Y2Q2JPYjNNV1VRKy9rL2lw?=
 =?utf-8?B?dWN1WXJ1YVFTWmwxVmRuT250R3FBVHdkQzBMVW9qNmJPMjRSczFUNm5vSG5u?=
 =?utf-8?B?ZVgxVlZnZGx4cUlDUit2cDdDdThHZlROMlpyVHNoVmxWTjFRaHJJcTBNcTJl?=
 =?utf-8?B?MWpiZXdleG1sYkgreWx1K2dJQm1UbG55cXJJYVo3MEhFREpHb29OOElRU1RL?=
 =?utf-8?B?U0NBTHFueEROSFJCYjN0U1lORG8zZUNldVZvekQ5VXFBRlV2ZWI5Zm92Wkl1?=
 =?utf-8?B?UlYveTVtR0ZhalFXOHBFZGVaNElDajZLMFFEMnpOVTF6STlxQmwzM1hNamxz?=
 =?utf-8?B?Rm5OZWFDcGJkODJVTEdiT2huUVR0bjJXbnlhd3VpN2F0K0hUR3QwdjhrUWlG?=
 =?utf-8?B?WExnWjBPaFJsdGwwNWVWaElWMzI5aEhtS0ZNTzd3SGtvcTFxT1RuYjBpRjVu?=
 =?utf-8?B?dVppN042ZnVMVjJmditGTGhBbGEySGp6R0F6UTI4QWtHWUlHR3c3MVhpL0lw?=
 =?utf-8?B?d3BpVmVDZXZ4WWZ5RVppTkNCeVN0Zld3Q25uMlBWZk81UW9zblZPV0VGUXVU?=
 =?utf-8?B?Z2pqTFlORVFlWndaV1hDRHcvWDdxMGlGS2N0VTM4QmtlNENuVkw1Zm5HbjBS?=
 =?utf-8?B?QTlFa3dKcjREUlVWNnppMWZPUkhaTkFXQVhKTHdkSU0rbE5ycTFvNGM4eThN?=
 =?utf-8?B?akR2MjJVQmdBUXBjZGcxTVVuSXNWK21ub1VHSnlqaHJFVUdXRzc1K0kwcnR3?=
 =?utf-8?B?dG5GQzdxaHduanhDRDFzbjFUcGRnS3R3R2JodE95ZXl4R3lVa3pTamV4bitm?=
 =?utf-8?B?M01kV1BUa2lGQStGcXdvb2xXNUQwNzJPbUtVQkZGWjBFUlFCNldDc3VwNzMr?=
 =?utf-8?B?Sm52NjhBbG9UZ0k5ajBvM3U1eVNYNEg2eVBoS2MyUDV0ckhBMVJNZ3lQVkIw?=
 =?utf-8?B?cFlOUldNT0xIODMyU1dMbGlYZ2NTMjFpTGFVREw1QjM1MzNHdUVxZ3pkSklD?=
 =?utf-8?B?ZkZDTG1MVDdKajZOYitxcVp5TXhRWFNhbitua2hBbjlMVzB6OEVYb3BjLzlh?=
 =?utf-8?B?M3FqOXV0cHNOYnhCeFZkekJlYnh3dGg0WEsyTlUwSmRtejdrRmFLWWMyUVFW?=
 =?utf-8?B?OGpTV2NhVDUxanc0b04rLy9CVHRYL3ArN3ZRK2hyUGs4RTZBSmNmemc2WWRx?=
 =?utf-8?B?OEFnSWNxb2ZPdnhPeWJyamJtRGJGRDBsOWtFZzNRZkl1ZHN3MCtpRXBjcTJw?=
 =?utf-8?B?bmd2TnhqVFErWGtXR1d5bWFESWQ2Y3VkVmV2OEc3Q0VSVnFOVVVzNDg5ZzVx?=
 =?utf-8?B?alFnRGU0QWdRVTNWVWZrblQxc01uMldCdnpzUm44emtUS3hVaEtEQi9UWS9C?=
 =?utf-8?B?ZTVoTlhBa0dsbEo3ZVI1Q2tGUzdXNkVsZi8yekdPdWdhQmtXOVhTZ3lFZWZh?=
 =?utf-8?B?SFRJcjVGa2xub1ExcHZRS3c2dFFlV0FBcCtYdituNFo3eTdRS3ppazJqT3NW?=
 =?utf-8?B?UitzN0JVKy9Tck8xaDE1NTloWkVneHdnbW1LSDJtd1BGNDg5aW5KeGxjeFpy?=
 =?utf-8?B?TXlJemJreU5XTDJQYzNtNDA1MXllVDVMQnVocWtJZ2ZlYW1laXczUzd5ZDNx?=
 =?utf-8?B?YmFyOXFtN1lRT3ZKUjRmOUgxb3dtWFl1ZCtBc1dTVTB3cGhCdFp6QXE3bXpS?=
 =?utf-8?Q?6a2sKAb4gjofG8gPu+WjWQncCxzJ61Zca/j+9RMQQk=3D?=
X-OriginatorOrg: e13.dev
X-MS-Exchange-CrossTenant-Network-Message-Id: a136a218-e17a-4a46-34cb-08de4702df08
X-MS-Exchange-CrossTenant-AuthSource: BEXP281MB0008.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Dec 2025 17:51:19.1518
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: c8d9ed94-35f4-4935-86d7-97584abdf192
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9cfTtbHaXzMS9ADQcNyAlL8GT864ES8/PlTmMXuzetakQsN/yQxrb3COvzweHPjh
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BE0P281MB0050
Subject: Re: [oss-security] Best practices for signature verifcation

--------------Z0W9Gy3nYRJecBgY5B20ZZlD
Content-Type: multipart/mixed; boundary="------------ddCLmhZlfBnQpc0ac1T7bs00";
 protected-headers="v1"
Message-ID: <3a6f6d97-90f0-41a1-9b33-3bd98cc6accb@e13.dev>
Date: Mon, 29 Dec 2025 18:51:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [oss-security] Best practices for signature verifcation
To: oss-security@lists.openwall.com
References: <4bb0e4f7-a4f3-45cc-b519-2044b4b2871c@gmail.com>
 <928709EE-07AA-4995-B9D3-E83AC18353CC.1@smtp-inbound1.duck.com>
 <6F979157-91AD-4C55-8CCD-5CC5AA18BB50.1@smtp-inbound1.duck.com>
 <20251229172129.XftBSrA3@steffen%sdaoden.eu>
Content-Language: en-US, de-DE
From: Max Jonas Werner <max@e13.dev>
Autocrypt: addr=max@e13.dev; keydata=
 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
 XgQhYeh4fTz9zw==
In-Reply-To: <20251229172129.XftBSrA3@steffen%sdaoden.eu>

--------------ddCLmhZlfBnQpc0ac1T7bs00
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMjkuMTIuMjAyNSA2OjIxIFBNLCBTdGVmZmVuIE51cnBtZXNvIHdyb3RlOg0KWy4uLl0NCj4g
DQo+IEkga25vdyBhIGdlbnRsZSBhbmQgZm9yZ2l2aW5nIFJ1c3NpYW4gd2hvIHNhaWQgKHNpbmNl
ICJjcnlwdG8NCj4gc2F2ZXMgdGhlIHdvcmxkIiBzaW1wbHkgcXVvdGluZyBhbGwgdGhpcyBzaGFt
ZWxlc3NseSkNCj4gDQo+ICAgIFllYXJzIGFnbyBJIHN0YXJ0ZWQgdG8gcmVjb21tZW5kIGFnZQ0K
PiAgICAoaHR0cHM6Ly9hZ2UtZW5jcnlwdGlvbi5vcmcvKSBmb3IgZmlsZSBlbmNyeXB0aW9uIGFu
ZA0KPiAgICAic3NoLWtleWdlbiAtWSIgZm9yIG1ha2luZyBlZDI1NTE5IHNpZ25hdHVyZXMuIEJ1
dCBib3RoIG9mIHRoZW0NCj4gICAgZG8gbm90IHN1cHBvcnQgcG9zdC1xdWFudHVtIGNyeXB0b2dy
YXBoaWMgYWxnb3JpdGhtcy4gIFsuXQ0KDQphZ2UgZG9lcyBzdXBwb3J0IHBxIGVuY3J5cHRpb246
IA0KaHR0cHM6Ly9naXRodWIuY29tL0ZpbG9Tb3R0aWxlL2FnZT90YWI9cmVhZG1lLW92LWZpbGUj
cG9zdC1xdWFudHVtLWtleXMNCg0KL21heA0K

--------------ddCLmhZlfBnQpc0ac1T7bs00--

--------------Z0W9Gy3nYRJecBgY5B20ZZlD
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsD5BAABCAAjFiEECYHo8BGwiSbSW+Uw61JeDwK1IUAFAmlSv5MFAwAAAAAACgkQ61JeDwK1IUDQ
QAv/agFkduWq5eXSkgVgL3vzOBdI2kGAMvVoAsbzUCng3eF/40uLtFoLuyFZnJNvR+tQZpBeSYDQ
dQlI/2yOcWOURG94CWAtGWuKbaDFqrYi2cKpfK+7Ui2O+OEQDoRoqI/qi4dS9Yp1+9Ka2nbWJ1GG
nk0U/CRTyMR5+e5Etwqb/4Z8cqqewD+XDPDuGojpuPoeUFjpxFdMZW+3iNCmZyusvfxP7T8vnGh3
7aVqJPy0sfUi383GhJVre5Jjf4HFweDEbdDGCc6VopuJnnBgF9NU9qgYs2DaRnQLZyChrhXcvIu7
Ad1eNMBeJNTFelFJvK7pv1f4ssTOQiX+fUVbIJ9pHaM13ArOIVz+Ym3W5w4PwRRzJMlIAwJQUV0n
jaVkPV2gqZzsFA39gI9F+/ZaQp/cO7fvmFvL5R+qMt+Kplc7HRYdl2bpQtKJNn7l9NlVcVG99pv1
A9VtjhAdzfM6VSNIPNHqy2Pggeb+o3YUEicSqw0Em1STET/pPJa1eTGZTW+x
=Ty7c
-----END PGP SIGNATURE-----

--------------Z0W9Gy3nYRJecBgY5B20ZZlD--
