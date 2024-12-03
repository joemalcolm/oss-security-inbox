Received: (qmail 25773 invoked by uid 550); 3 Dec 2024 23:30:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24280 invoked from network); 3 Dec 2024 23:07:41 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oh9uJfKTZKgfxjXARDQgF+GKSayv14U1Jk4LcEFcoG2yf3o1X9pX7vCh7jHyIXKHIvtiGHNZdY46EVgCy1Xw+/K5ENmKWWCCM2zugAW/vNHuPhY7tLQXHrKdQvp+zxx1MSGYku98fFSTYwwq4yVN9eqBoR1e59H/GFYo3JCrcAGj8qNCf2lV83yfV0sitJTnlYfxU7moaKOwLy5Sp/UVB1ojPydbt9T+FyQwIMaMC9WrO2eb6FxZPWAJigKONQN699Yk907iEhqJueKMh2ASbC6aTZjOv+4YxyV+Ab/FUXMYrUT4uRXUB/pTdZlHzOtjm8qlj8PDj3OgnHwW0LxDDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ceRM+p9NdxDspPsFyMp5/cDIBjrswEPXGCpR26Qtxdg=;
 b=jWztTIjo83PnyVPfBs7oCOjq3jx6GnTD/P2kkUp0ccGq8+2o8DioHsFHIvp8B1t+nR/slCKPmrbJHZvuHGSDqWhjZYhaabXsSO21+PMcBAWopv0U495x5FycTZuRMjAfG+4tOjmwwCGcZ5WqNFdnJ/yX2ugdv5KjrPmtyvDxXUy2GPei2uKpHSzSFvl+zeG+nug04YWcV4CPn9Ldnb3iqK7wQLYel68U3z++1/ItZ7OO3g0xEZSTvu7A/CSP0iKHTWEb/gakuLODPK8/V152zRhcE6Px3Q3tAD3YswHg68t+R0BdoECBdLyMpW7y8/n1RmvCm3SXHyc6rAvz/06h/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=jvf.cc; dmarc=pass action=none header.from=jvf.cc; dkim=pass
 header.d=jvf.cc; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jvf.onmicrosoft.com;
 s=selector2-jvf-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ceRM+p9NdxDspPsFyMp5/cDIBjrswEPXGCpR26Qtxdg=;
 b=RdA0PqilUhFT8T3G9Ipp9uPoWwONOwOmUcTCZ+m2T2MO5YBIdYCLuWq9wORZClY6qx771eNzYP/Wuh3672BmuJt2RgR9l9GPcLxifqmWJICaQ71h1UNOsZrm7jYCBh4Nnz10qJudsCy1b1/wSmXt3/iJGaimtmMUA3rZqY0moYg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=jvf.cc;
Message-ID: <7eb08af7-76fe-47b7-805a-2627514be3bc@jvf.cc>
Date: Tue, 3 Dec 2024 15:07:29 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Jay Faulkner <jay@jvf.cc>
Autocrypt: addr=jay@jvf.cc; keydata=
 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
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------GTb5SRJ4sZ4YG6WXUsqXEDCI"
X-ClientProxiedBy: MW4PR04CA0354.namprd04.prod.outlook.com
 (2603:10b6:303:8a::29) To CO6PR19MB5340.namprd19.prod.outlook.com
 (2603:10b6:303:137::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR19MB5340:EE_|LV3PR19MB8756:EE_
X-MS-Office365-Filtering-Correlation-Id: ed8129f0-27dc-4e38-571a-08dd13ef4320
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|8096899003;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?RU1iT0xvUDEyc3Q1ZXNzRnpGaCtDemJRQnhLWDgxdEl3aEpqajdSSTIrVzR4?=
 =?utf-8?B?NVNJWVdOaUo1WElWRDl2YlovNGFLNHplbk9iZHFyV1RwSEQ0dWc5Nk1ZU3kv?=
 =?utf-8?B?OHkwcWpNK3dCV3hpWk8yRXJwd1hCSGdqUUVPWm1jSlVQOUI1ZWtDOGdhYjdk?=
 =?utf-8?B?b25CWEk3WHJVaU1PVEd2T09DemI3VG9JUmZsTWZzdWV6N2o4cHduckROMllt?=
 =?utf-8?B?S0JSdlZSUnR1SStzMzJNZ1JyZStEVzQyTENnNjJtdDNsV3VvdEd5TUFBNFhV?=
 =?utf-8?B?L1BHR3ZDVmp1cno3N2VwYlhUVlo1bW92bVNnd1pTcUxwRU5hL1QzYmw3azBa?=
 =?utf-8?B?eW5ONDE3ZnYyMUREeVhYZTlNWDZYL0JQeGJEU3Q5YVJWL1hFZFRmaC8wU1Jn?=
 =?utf-8?B?aG5zaVFOUlpIUGsvR2d4cEZ1M3VWKytrUEJsWmdMcUVSOVZYVHh1WFJpWnNT?=
 =?utf-8?B?NklnWTFLb3J6dnQrQ05YcUdtVTg4ekpYSkM1MlFiU0JTZXFtY0JTcnh2L3JH?=
 =?utf-8?B?RE9ldU9INktaQUl5NDl6YnRRN0N4S2tTNzYxVVpnbXZ4N2YyOXZ0QzdXMzFa?=
 =?utf-8?B?RzVxZVkvbTIwYnNmcTVqZUhsMWxCYlB1TkZYbENpT2VzbmZNaFRiR3RzckhQ?=
 =?utf-8?B?N0hPUlVtNGdCc01sVWc0emkzcE9hWUt4alZoOWdncmpPdnVzbUc1a3EzL3pC?=
 =?utf-8?B?YTBmZklUaFVQOFZPekdSMFJrV3pCV1lTYmZ4WjJjR3FYUlJpWlBYa0MzUFVB?=
 =?utf-8?B?SG5GcUhPMThSeUQ1WUdLaTZHbjZ5blZJWE9vZE5LL3k3bU54NkFnUFUwU0NT?=
 =?utf-8?B?bHNKYVJjclJ1QkE2bG9YUCtBc0M1V3ZFTXVkU3ZTTS8vbzdiellBYUdVeUVU?=
 =?utf-8?B?UC9BSndvenJKYWlkVHVySitzajdmcnBXUDhRMUllSmYzSm9Malc1c3Q4U3FY?=
 =?utf-8?B?bVFNYVRKa0FmNmduclRCOXNWWGkzWjBEUFFNMmdkckhIcWIxeklwemxlSVMz?=
 =?utf-8?B?NWd6YXFiTWpPSG9sM1lqMW52QXY2OXNNVzBDYktTUDNkV1pGQ2VPTytsT0ZF?=
 =?utf-8?B?Zk5JT1E2YlNpNndFdVZjY21WcjRWQlFxQ2YwWDNxY2VmYVRFbSszdGV0azJr?=
 =?utf-8?B?UC9QTC9paTNDQnd1RHA3NVpITnpqK0cxaExBdzdzdWduK2Y5cFBZOHlHZHJv?=
 =?utf-8?B?TkhDNU9uQllwSG5oYWk0M0J0M1BCb1pueXZrSEphUENvSTY3d0FjcEE1Umh2?=
 =?utf-8?B?YTlpaDlPcjYxZHRhb29RRVZwVVFwaXJWTVB1a3Z1a1hiV3dsc08vYS9wV1NV?=
 =?utf-8?B?UkNGZ1VpMzZTcURhMk1vVXp3RlBCaUJzZzdGNlBrMkpyT2hpKzM1NXl2eElQ?=
 =?utf-8?B?My9SWlNObXBjTVoyam9sUGh6aU1UUzhXNDREd0pjVDJBS3Z4ZVRRVnMzSU9Z?=
 =?utf-8?B?VHpPdlFpZk5YUmFydTI3Q0tKdW5wcStWNXV0NXdaSzR4aTBPR2FvbnFBQ2pP?=
 =?utf-8?B?NldKWjVuL2pKVTh3K2Q1TzNVdWVnZThHYXdMWE9HOTBLYjVMU0UvNHhHOU1l?=
 =?utf-8?B?WElqZWtpRDBYeWoxaUxmVnNtc21wK1dNV3d1amRrM3F2Z2VtaGtTL0E0bEFH?=
 =?utf-8?B?MmF1dEIyeXk1WnloQXg1SmRhUGZ4M3JUeVdCbVFHZlZtVm9RT2MrZDl0VzAv?=
 =?utf-8?B?ek5VSVZiTlhTa3NqdmZEWGF3UndBSkFHbzFodEVHNUR1NmhWSlR0bDFDSDFD?=
 =?utf-8?Q?LUlKjfrO/H2cQaDMt8=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR19MB5340.namprd19.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(8096899003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?R200Nkg2ZU5IYzRGeHdNcFBPMlJKYjNJLysvUTZ5VHJFVk9keFNDODZHQXBQ?=
 =?utf-8?B?aVJya29YYld0T3VpQU0rdHRBYms0R2hwQXhCdDMxNS8zNTdQT3h0TklOWUxv?=
 =?utf-8?B?eHY4ZmpvYlJOZTdRcGpjTnJEWlVRUVBDaFFKbkRKQnB0dng0ZXRETjkxREdw?=
 =?utf-8?B?eHFEOXdFdkp4R0MzT2Vad1RjOVA4SitRT1ZxdjlXSGtqcFBycit0aEUydWhx?=
 =?utf-8?B?Z0U0TGc4V2tHbGFoWkFHWW1Lb1Y0RlFaM1pJbm15OWN2cDVtUHFwbDlRWUtm?=
 =?utf-8?B?Z1F2aGNxUFpCem1Hdnk3YkkrZkVWQmhHbFZzcU5Jd3VoU1doMTlVWUxaRFUv?=
 =?utf-8?B?TlM0Y2R5Nm40eUtYWlRjY0dnY2w1MSs4ZWNuMHc4RUlnNVpOc2Zvdit2Q0RB?=
 =?utf-8?B?UENoV1JJTTNqM0krNzh3c21TejNSVEs5RVpFQzdOckhPaURNa0xFaEZ0SGFz?=
 =?utf-8?B?aEhGM2VzR3JZT2xvVE9ydmtqaEN3ZitGZHM3SXJ1ZG8rczhENzd0NVdYR25u?=
 =?utf-8?B?UkhZMWg2c2tvbFF5SkRkc2tGd2hzY2FEeXkzaXFaOW9KeGtiV1JMZUR1TGYw?=
 =?utf-8?B?KzFOb3dGWDJXbHIyK3pOWFVEcVIwUjVhMHNxZFR0YnIvYU5PRHg5WkNYRTh2?=
 =?utf-8?B?cWVkSDlpeG4wWXZmRDlsWWFFVjUxZHVEZ2wxRjlnNjhRcmFONVNaS0NVOXhl?=
 =?utf-8?B?Tzd6OFJrVDVKTzZ6UE1iS2RqOXNjMktvSDh1ZUl6SzRLMGhxYTZtL3R0ay9Z?=
 =?utf-8?B?dWdNcGpWU3dCSGdOcHBRZ3J4QlNSeVV5RlRzQm1WbnlIbzYyeDZnMzJ2ZWhJ?=
 =?utf-8?B?QTRzQ1VNdTRxMmdZOUI1Q0p3Nm1Ya05sQ0VWVlo2TkkvUzBDbzBJSmNEanll?=
 =?utf-8?B?amxLakFxeDgrd1RwNXhtQjk5bTRxL3VmZGQ1akV5RDlwOE1ScDdENGVIelc1?=
 =?utf-8?B?MStiTTZ2S1huRS9kNFNUUGRsUzNSYUMrcXlDaFRCWEFUb0lNbXcrT3pzcHlF?=
 =?utf-8?B?dng4N0hUOE1xcXJRWEg5UGQ1cXFUL1pSV3ZDaWhZbnV4d2Y5UmJYYTlLaXJj?=
 =?utf-8?B?T0dZeCtWWGVEQllwOW05eC8rNzNRUER2cVI5ODM1NzdLeXRnZTVReVBxYnNQ?=
 =?utf-8?B?S3BuV0ZVZnRMdTNFb0Y5eFdyOElHWWwwViszb2ZkQlEyUzh2M1Z5dzZCbGlL?=
 =?utf-8?B?djUxNFp5azd5Z3F1Zmtab2djWjNrUlJ3blBmVG1lZ24zdUIvVFZLSGVlMXRP?=
 =?utf-8?B?N01VMEVMNHBrWmdlYTZGMGxTWlg0ZWVIUXFBb1IxQ0VtT0VmdFU2aENHWTMx?=
 =?utf-8?B?cVBDUFFoUGlQQU5nQmVxSlNlYlJyMTBMbnZMNHF5c2RuU2FQcERZVXgreDRw?=
 =?utf-8?B?eDNIQ2xBUEgrbFJSZmZ0cDdyZmtqek1iWElBczF0S2lCQlB3bGdYU0JQLzEw?=
 =?utf-8?B?ODQxam1uSDA5TjVpVUN4SmoxMnpEdndybyt0MHdZempZOEhPZklXR01YODZk?=
 =?utf-8?B?MGhXQXJQL0VseWVCeExaMjhhWXFBSVd0MlBkclk3QlJCUExkdTVqQjVGYTh5?=
 =?utf-8?B?V2k5dmV6Wk02U2ZIWWh4dGxPZnRRT1RJbzFabktZRDNwSjhhRWZSMmVKeXdQ?=
 =?utf-8?B?K3J1K1NTc2hIQUp5OHNLUmhTaElGdWdNc0RUNFpKZkxqQVQwU1ZUWUJiSm5Y?=
 =?utf-8?B?anZkdUJaV2Z2ZUhjb2I1QUsvbDFwYW9qU2h0aGw5TkhmVktlMmVQTUI0M2Jx?=
 =?utf-8?B?T3QrTUpIVlRWU21HTC9qTnNQU2JTK2ZvY1VGSVl0c2Vid05aQ2FtdTJkNGw3?=
 =?utf-8?B?cmNTSUV1QzRtV3Q1SUExTDQ5VEMxY0VNdlk2UVZsM2tVaEtrcWswSWwzSjhZ?=
 =?utf-8?B?KzVuL0J1YlBZRHF0UFBqemJyVFNNRGNTUjZDcGtLR3orbSs5eDQ0VzVleERV?=
 =?utf-8?B?QVM0cW9BN0M0WExtVlk0d2lzK0xBaFdLWXhOYXphcEF6Q0lBOG0wUTIwMmlB?=
 =?utf-8?B?cDZtRWYxMVJhQytucERyeFZuZHhNM2ViTnhjWENmSHVrTlRmNWVxeXkvY09L?=
 =?utf-8?B?Mm1rY2NmYzlpd05jZ0dmRExLUnNtbFlnQkxyWG9qL21JVGhMUGNZWDB2VnpT?=
 =?utf-8?Q?o0jY=3D?=
X-OriginatorOrg: jvf.cc
X-MS-Exchange-CrossTenant-Network-Message-Id: ed8129f0-27dc-4e38-571a-08dd13ef4320
X-MS-Exchange-CrossTenant-AuthSource: CO6PR19MB5340.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Dec 2024 23:07:30.1919
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3268b97a-2d09-45a8-9816-8dea1f44039e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nQcTFpom8yBS29q97k6XYt1GbzBFJrfgTCtXmwg1fNZrGauDgo2SvGZoJTVfYxig
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR19MB8756
Subject: [oss-security] [OSSA-2024-005] Neutron: Authorization bypassed when setting tags on
 Neutron networks (CVE-2024-53916)

--------------GTb5SRJ4sZ4YG6WXUsqXEDCI
Content-Type: multipart/mixed; boundary="------------joGt5YOJvX2q5OPgIIhuKKuk";
 protected-headers="v1"
From: Jay Faulkner <jay@jvf.cc>
To: oss-security@lists.openwall.com
Message-ID: <7eb08af7-76fe-47b7-805a-2627514be3bc@jvf.cc>
Subject: [OSSA-2024-005] Neutron: Authorization bypassed when setting tags on
 Neutron networks (CVE-2024-53916)

--------------joGt5YOJvX2q5OPgIIhuKKuk
Content-Type: multipart/mixed; boundary="------------yoV2yRic30OvvGzIq0QZAuhF"

--------------yoV2yRic30OvvGzIq0QZAuhF
Content-Type: multipart/alternative;
 boundary="------------uWPrKHA0DcoAweyl8ifqNqIh"

--------------uWPrKHA0DcoAweyl8ifqNqIh
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09DQpPU1NBLTIwMjQtMDA1OiBBdXRob3JpemF0aW9uIGJ5cGFzc2Vk
IHdoZW4gc2V0dGluZyB0YWdzIG9uIE5ldXRyb24gbmV0d29ya3MNCj09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PQ0KDQo6RGF0ZTogRGVjZW1iZXIgMDMsIDIwMjQNCjpDVkU6IENWRS0yMDI0LTUzOTE2DQoNCg0K
QWZmZWN0cw0Kfn5+fn5+fg0KLSBOZXV0cm9uOiA+PTIzLjAuMCA8MjMuMi4xLCA+PTI0LjAuMCA8
MjQuMC4yLCA+PTI1LjAuMCA8MjUuMC4xDQoNCg0KRGVzY3JpcHRpb24NCn5+fn5+fn5+fn5+DQpU
b3JlIEFuZGVyc29uIG9mIFJlZHBpbGwgTGlucHJvIEFTIGRpc2NvdmVyZWQgdGhhdCBOZXV0cm9u
IGRvZXMgbm90IGFwcGx5DQp0aGUgcHJvcGVyIHBvbGljeSBjaGVjayBmb3IgY2hhbmdpbmcgbmV0
d29yayB0YWdzLiBBbiB1bnByaXZpbGVnZWQgdGVuYW50DQppcyBhYmxlIHRvIGNoYW5nZSAoYWRk
IGFuZCBjbGVhcikgdGFncyBvbiBuZXR3b3JrIG9iamVjdHMgd2hpY2ggZG8gbm90DQpiZWxvbmcg
dG8gdGhlIHRlbmFudCwgYW5kIHRoaXMgYWN0aW9uIGlzIG5vdCBiZWluZyBzdWJqZWN0ZWQgdG8g
dGhlDQpwcm9wZXIgcG9saWN5IGF1dGhvcml6YXRpb24gY2hlY2suDQoNCg0KUGF0Y2hlcw0Kfn5+
fn5+fg0KLWh0dHBzOi8vcmV2aWV3Lm9wZW5kZXYub3JnL2Mvb3BlbnN0YWNrL25ldXRyb24vKy85
MzY4NDkgKDIwMjMuMi9ib2JjYXQpDQotaHR0cHM6Ly9yZXZpZXcub3BlbmRldi5vcmcvYy9vcGVu
c3RhY2svbmV1dHJvbi8rLzkzNjg0NiAoMjAyNC4xL2NhcmFjYWwpDQotaHR0cHM6Ly9yZXZpZXcu
b3BlbmRldi5vcmcvYy9vcGVuc3RhY2svbmV1dHJvbi8rLzkzNjg0MyAoMjAyNC4yL2RhbG1hdGlh
bikNCi1odHRwczovL3Jldmlldy5vcGVuZGV2Lm9yZy9jL29wZW5zdGFjay9uZXV0cm9uLysvOTM1
ODgzICgyMDI1LjEvZXBveHkpDQoNCg0KQ3JlZGl0cw0Kfn5+fn5+fg0KLSBUb3JlIEFuZGVyc29u
IGZyb20gUmVkcGlsbCBMaW5wcm8gQVMgKEMsIFYsIEUsIC0sIDIsIDAsIDIsIDQsIC0sIDUsIDMs
IDksIDEsIDYpDQoNCg0KUmVmZXJlbmNlcw0Kfn5+fn5+fn5+fg0KLWh0dHBzOi8vbGF1bmNocGFk
Lm5ldC9idWdzLzIwODg5ODYNCi1odHRwOi8vY3ZlLm1pdHJlLm9yZy9jZ2ktYmluL2N2ZW5hbWUu
Y2dpP25hbWU9Q1ZFLTIwMjQtNTM5MTYNCg0KDQotLQ0KSmF5IEZhdWxrbmVyDQpPcGVuU3RhY2sg
Vk1UDQoNCg0KTm90ZTogQXBvbG9naWVzOyBzZW50IHRoZSBwcmV2aW91cyBub3RpZmljYXRpb24g
d2l0aG91dCBHUEcgc2lnbmF0dXJlIGZyb20gdGhlIHdyb25nIGVtYWlsIGFjY291bnQuDQoNCg==

--------------uWPrKHA0DcoAweyl8ifqNqIh
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
    <p> </p>
    <div class=3D"moz-text-html" lang=3D"x-unicode">
      <pre>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
OSSA-2024-005: Authorization bypassed when setting tags on Neutron networks
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: December 03, 2024
:CVE: CVE-2024-53916


Affects
~~~~~~~
- Neutron: &gt;=3D23.0.0 &lt;23.2.1, &gt;=3D24.0.0 &lt;24.0.2, &gt;=3D25.0.=
0 &lt;25.0.1


Description
~~~~~~~~~~~
Tore Anderson of Redpill Linpro AS discovered that Neutron does not apply
the proper policy check for changing network tags. An unprivileged tenant
is able to change (add and clear) tags on network objects which do not
belong to the tenant, and this action is not being subjected to the
proper policy authorization check.


Patches
~~~~~~~
- <a class=3D"moz-txt-link-freetext"
      href=3D"https://review.opendev.org/c/openstack/neutron/+/936849">http=
s://review.opendev.org/c/openstack/neutron/+/936849</a> (2023.2/bobcat)
- <a class=3D"moz-txt-link-freetext"
      href=3D"https://review.opendev.org/c/openstack/neutron/+/936846">http=
s://review.opendev.org/c/openstack/neutron/+/936846</a> (2024.1/caracal)
- <a class=3D"moz-txt-link-freetext"
      href=3D"https://review.opendev.org/c/openstack/neutron/+/936843">http=
s://review.opendev.org/c/openstack/neutron/+/936843</a> (2024.2/dalmatian)
- <a class=3D"moz-txt-link-freetext"
      href=3D"https://review.opendev.org/c/openstack/neutron/+/935883">http=
s://review.opendev.org/c/openstack/neutron/+/935883</a> (2025.1/epoxy)


Credits
~~~~~~~
- Tore Anderson from Redpill Linpro AS (C, V, E, -, 2, 0, 2, 4, -, 5, 3, 9,=
 1, 6)


References
~~~~~~~~~~
- <a class=3D"moz-txt-link-freetext"
      href=3D"https://launchpad.net/bugs/2088986">https://launchpad.net/bug=
s/2088986</a>
- <a class=3D"moz-txt-link-freetext"
href=3D"http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2024-53916">htt=
p://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2024-53916</a>


--
Jay Faulkner
OpenStack VMT


Note: Apologies; sent the previous notification without GPG signature from =
the wrong email account.
</pre>
      <p></p>
    </div>
  </body>
</html>

--------------uWPrKHA0DcoAweyl8ifqNqIh--

--------------yoV2yRic30OvvGzIq0QZAuhF
Content-Type: application/pgp-keys; name="OpenPGP_0x6B75D939B424C6D4.asc"
Content-Disposition: attachment; filename="OpenPGP_0x6B75D939B424C6D4.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----=0A=
=0A=
xsFNBGFpBPQBEACaRxGb+O+Ypgxi2gg3bfkxuejyTGUYJ3dwXkoFnZvaSeq7Nx6X=0A=
4+vEd20x/9vjuwdbXB5w3Tb4N9oIAGUpukjzVX3rBZ9TqkvOiY5KpJf8lJVCJupp=0A=
lfUkxurWEvwdcCv9KU7HyFSKcMdmFIOGPzbg4N/d2gF52HIKTQBorI0dMAoKsBXu=0A=
Wfb1/rK+C8wcY3gecqLgrjEdOFsQETFFSUs8Egn3Z81DMoNucBVZWnz+p7R6nhlr=0A=
Mt9gXNBEZWPFZihteE6EovP6BXSotdyBRmmxAOBCaZZsA4CIzZoK9cb84N6y1PQH=0A=
AAl4W7wCoakiKByF9/0gCIIbYWgauJ5oD0kQTNgwNDcygQnTdrs7UQ6GUlaT4Cgf=0A=
eRWydLmmv8LvJyZOqFQs+3DOUTagTYZqsarfBBQO9PaeZvKbz3s5Dsr5QCeOMIVy=0A=
4Te4tNRNExut48cp+n31ZUARCAlQHAoKiswELCkOgnKzSEVJ8PEeIYP8Up5zoWfK=0A=
4/SaqeVrY3ziKl8RdOGW2zW7WikfgWODIp5L6erTnT2xRGGcikDbShkGzOQCIkfm=0A=
XPzp8HmSHumIEO002KzCMsRX8jQphEPtC1QXsAwDpyYMTPjxPIvVtTQbrtoJoYCV=0A=
uzDiETsB9VWvNRXn687uvVaFL96aui0hLO79basRPiekRp33IlXuEaxVdQARAQAB=0A=
zRlKYXkgRmF1bGtuZXIgPGpheUBqdmYuY2M+wsGUBBMBCAA+FiEEvF1YmsGLSYuW=0A=
qE+ta3XZObQkxtQFAmFpBPQCGwMFCQeEzgAFCwkIBwIGFQoJCAsCBBYCAwECHgEC=0A=
F4AACgkQa3XZObQkxtSXQQ//VwFbzIE2x79AhX3wHReYH+6UR0qe+QuTl0zd3vp1=0A=
sKukkbU+i3J4eVHmVXdTI2rFE1WH9TbTaEBM3qZJgXsQEQ5+im+eyZFfZbGgZLJW=0A=
yig3uKOogS0OrxOjRwjlDLN9Orcl4de/HA1zAVrLRV3zfg8ZMj6zXrv84L54lZ5e=0A=
9C7mD5oS8Ge5enFrU9kEdHNjqzt1PCXCeA37/HRJoR+nzHmcSzJyMMxQdo0cgiaR=0A=
HYyu7LOJFL5qR0jLEmZwEulmd6fMeU4Tx5eMx4o6O3diTmGyeFs/UDGWn0qcMDkh=0A=
9T00Qw1bLOv/yFrpCMjEyryR7hJ53HYtLqEkvn/7lClrp2BUsV8XjYqexnB6unr3=0A=
0/RduC6koXXUHAZpk/+mD0WEdShFNuiFlOn8BDjBvk5k6j2VlEO3uH0BhWUBfY+b=0A=
ahWiLgWUhupK2Wd8qLYbE9VDj5jvcKVt7qonBuguDY43aXyf7gnm3u1pprGuqTcW=0A=
yRijHeLXLHNZg2fCUjQ0tdto/YblvNexrEDxjK7nzgmHR7KDTVFcjG91yrTrO2/h=0A=
mREQSN5WWk50q6n5NLBSMWyDuzOxG0baOuKZrSCnMamFNjMPvAnCdqe1HoNq4b7H=0A=
b9FheqJulqQFLEhGN33KIummGYTjJBYnz4L7c1F0iqlvEVO7MEir+a63lMWh6wIa=0A=
rg3OwU0EYWkE9AEQALHcnXwEWn5WF3y47vkl4ASUisl1QHSlYrs1qlsBmqdbQzo5=0A=
TOtupuGVk9G7jqo1J1Iu+ejI+uYCcU1jPYH5H+PJ9AK5qcM6MGniwJNaopHmvUgE=0A=
RwlUcxP99IH4LGS2npnXSxIrSYfYBXuDUW7vbW2Ksj5XfXlBMd/6PE4b5kljOABB=0A=
9SWFw3eXJunaV7h2tLnewqFU/sbZHLhDkAER7vwlXyTMDrkPTCyOqfweFZcn2iRD=0A=
52/LsoL4hlpcGZz/mSV/sQJBoiM5op+3NWKKe0V4RkJ+lgACQG4jzC5jyN4XOk48=0A=
tQF4ZHqyy32O+HRH4xRXpOAmxiZzvXLPUqSmI+uNnjyO5tzFy8K/hzL/3YtXQyxV=0A=
GFYtmtILSnQORO/a37oreb5RQm8jvvq7R+Id2/BmdekGcxQn5l6gn4+DVyp5EW/n=0A=
7wXKz5bdt74OFk6RQafb24RHsNbJehIHWDuK2PO5FS6T3T5S2il2khGg2wu6xh5v=0A=
XyWtB3eW1skdOWwt/M/HFinesaCkvHTUJwTKk6BnQUzpKHyZcGRuQ+pnT/5xJumi=0A=
6AztsXU29wfyaoZK1o6foRRk8ojpIVZIUZyR7cV2BXzewwKyv9HihGa+P4atcjPM=0A=
sGhVh6cJXxKS1xKdfn8iBD7ngS1LIOhDKzjQrRD7Pz/Q0SxwYgYrz51AdH7tABEB=0A=
AAHCwXwEGAEIACYWIQS8XViawYtJi5aoT61rddk5tCTG1AUCYWkE9AIbDAUJB4TO=0A=
AAAKCRBrddk5tCTG1Pw/EACZaea6M44KlVYViW5G7obSd3vavB64IolK45WpkEEW=0A=
fd5lthEjtak52KIyDfy7l/Kquur1/s3Ya4Ij46XUIF8QRuQLC9Mw/nzZkhj84WDv=0A=
LqMtE1i0q1TeI/+jCRxTQdhvUjzrxa/LaHGfBpLdaC7OCoLu1Mo4Up+SsJyPzTCd=0A=
9B+zeG2mDH91uuE9NC8sXg8KjmKsUzm0WGcs5XBvSJ27dOm/JSRIdE90iiL6jxS3=0A=
FLcyz79/KznqtYsNfZJnL7u5/lW5CkrZv8Xc13oFGSAheZXyyH3sTyESB9oLLapl=0A=
MdK/IWxynTpLpX5cBtuIRQ/OVmonot10X2P1Muua6PfFXkCM2NBAz/kBp0ymtB0x=0A=
GWzEV/7pzbgoFG+jDrlkGpzGvd0EPyuicuQwTZARAt5H5s7HqJ0gPqx4FLwoLbdj=0A=
3WUVP8ySUdw8T2iMvIVQSiNGiY+3H6AJj5U4q3Qk2kK9QIVBK4wT2D5XJTkM+SP/=0A=
z2tr1UbrehZ2gUaB6qH/loM+QCIqDS+7FMylC5isHPeQTazggF9naNI/sxFckogT=0A=
5Gc1/Bg/0708xjmRYyo9EORAvBjTVh1u4lTvrY4pbtYKpMgot+KvSpE97Rh6Ulix=0A=
sf1Ly2oRfWFDvNmglD8xPLSwQ0fUxvFvqa3pBG9TpFNN62Sy82CoCPrSWw+2Lf3b=0A=
8Q=3D=3D=0A=
=3DUVNq=0A=
-----END PGP PUBLIC KEY BLOCK-----=0A=

--------------yoV2yRic30OvvGzIq0QZAuhF--

--------------joGt5YOJvX2q5OPgIIhuKKuk--

--------------GTb5SRJ4sZ4YG6WXUsqXEDCI
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEvF1YmsGLSYuWqE+ta3XZObQkxtQFAmdPjzEFAwAAAAAACgkQa3XZObQkxtRj
iQ//SH6mwvfRykjsCc2k/jcljUPinkZfKabaxXzIOt1ijGj8vKzaL4BOuUUBav6J0RHQl0nOZwR3
OiDApE7dqaYkxtXx/HBLalk1dcPLF80dKWd+7nIatsLdC51b+y2Ip/oCx0YEvInK3/9MPDXaPHW/
8d1HzsFEqbucw7AzZuaywLmqBzMVLuRohxKu8XffwADN+fcAoXMjnvOJ9VGsUlwec9oaMOcgjA8f
uaBq6k25Zx5SbtvI4s1BL3EXCDl0PJw4JNlP3tIXtOJe621v6qEmBRH9DSMEpKDSUr9V6QV48AVX
ZKON37xAj4mukVnSmi7i87EcQHyYPBNsyZk8tP0UWrZwopWNCeuyzE6yhSQ7f57SlRyOzCWqr6xY
TJLa/p3EOlQ++gGAatEQRr20r1jSwMHtX8+mbHQSaauNFqbx4cgd+kkFP3irefmNHJa/kpklc1zw
78tNJiQLsG0j6DRyC7XdyqkMIlHNbagVmLagikalqDQjFZ6A+Gztxns1Ep3CbONddBeddxvfciPR
1vw8/GaE1LJDzVQXNmIHffVKRUJddyA6mrCzmPGB3gYyIkk/1s3exKiL4Q2MNTcqJN8D+D/S7iKk
JI7BnW+zNCA/bvBw0Vtiru0uTnz7LrlQFi5Jn6TXHV0hvCR/oNiVMh8PTaVHKzJUTCd1YglxNOb/
DYM=
=Ydvs
-----END PGP SIGNATURE-----

--------------GTb5SRJ4sZ4YG6WXUsqXEDCI--
