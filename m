Received: (qmail 24352 invoked by uid 550); 27 Apr 2026 17:07:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3471 invoked from network); 27 Apr 2026 17:01:29 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VOsDqYfEQ8pb3PnzTKYcXtCBn2aH0HZbH9Kwgke+NRj6sxdAxmTuXf6bRr/wfKf1MhMwYVR8wrs7Q+Ich0QL9g6+eBV4IVDNYsqycmMjHXbeQ2RUbMu1MZ8630+giBo7vUlVbe3KKg9+/ORMLb5RDLAqGqf3D2ukmdGOjwDCE4FyD/jsOKcJp/XW4XJ11S/yeyOXPo5jT3iprmTF8mYncmTeF2iyY/evt0/fGP1K0nlZ8EwFY3OAhrnGJMqxxBJmnYdO7ppSJVwdVEeRywxYIzkheMFNB9x2YnwQIGS4PrBANl6ECFtmt5z7eu51miRHIg6P8FoLc47KrSFWsTd1ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B192tGzTLj8MRtGg6V8G+vVY76Zittfl3zexQxB+nw0=;
 b=btjrQpsUJ25AhLmBbcF2dJPIdsy+wGqXwLfJQIcc/Dj1AvCr9E7FM/qD5wipVU8BkrA0HlcsUQygK3/s3gcditpyMV1w7BDwy82gxVPt1p/Fay0Cn4yhwdah/fcbZGazfW7zdVr3q+6eImJf0PzAXONGQC5iIMOYWoJB27WonisjIhHtPNjJdxb96At5Nx317nWgVRsrKLaSxhPlsMCDGFZC7zOojTJjhYNBYhy/P2hjMYw9yWppxqm2IOqd32jaOGrdgPsNGRv97SB4h0Xd3BxnnNIfXzWP6xLXqrALsy+mIh9Jx0Bx0rPIASCREPF5WQriCfZCjE1VocQXG7uq1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=jvf.cc; dmarc=pass action=none header.from=jvf.cc; dkim=pass
 header.d=jvf.cc; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jvf.onmicrosoft.com;
 s=selector2-jvf-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B192tGzTLj8MRtGg6V8G+vVY76Zittfl3zexQxB+nw0=;
 b=KXFhVTXcLBe5rfh1i1k7DhmCK9FmiMTRDR/Kxsi3Wh0CS5/MhRxLaoVEj/88TkkX5JGVpDzLoAnZBnMcIqAl9D3mGiuWYpGypHhtk95nZD6s/43YNxVJyr0mxX/dCw67k78VLpGQImI0YgdKj9A+u4rs6l5r7VSV4iJCMgUoVG0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=jvf.cc;
Message-ID: <9ca6dc44-f9a3-4700-be42-eac488a6c61c@jvf.cc>
Date: Mon, 27 Apr 2026 10:01:16 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Jay Faulkner <jay@jvf.cc>
Autocrypt: addr=jay@jvf.cc; keydata=
 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
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Uqw51tq8Bjx9hC9vScJOH2o0"
X-ClientProxiedBy: MW4PR03CA0019.namprd03.prod.outlook.com
 (2603:10b6:303:8f::24) To CO6PR19MB5340.namprd19.prod.outlook.com
 (2603:10b6:303:137::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR19MB5340:EE_|EA3PR19MB9254:EE_
X-MS-Office365-Filtering-Correlation-Id: 560d10e8-95a6-4489-ee5c-08dea47e98a2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|10070799003|19092799006|376014|6049299003|366016|1800799024|13003099007|4053099003|8096899003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	MvfphFHe3CZWvz7uoWOCLtazxSqIoHiMC5Y5s/Q6/bKeemy6TthukQdqLgKnzO9TwK2qBV0PLmXwgRiVmyO9OzudCm7WkGaKLknd8ZIGg4CO3tHqtCjmo3muhOsd+KZb9pLHzI/60zjTEqw1Ku7rOn9F8gx1+y1BR36C2r32Oos4yczRdxbAKTITjJFG14HQlYR6fE65SUOkH3gW3CNDfe9fPKjFxYl00Z3yWxxGfYtA70NwiudYJXstKo4PIzZC3StN5N6CerZaFIT59trm41o1IrXl56njxdqPUq4vaR4U09MWFo5qwYIscfLgr1qOn1LmQwF3DKlSb4R0nUP0aN39rfUCFzaGNFXHQNCi5QHhOvl2O1/cke2qwpQbPKhruIVZRf5bON+htWhLz27I2GiEeFIutjEXzs/UXXhKAIjGvObtNDxa5kPtmTvuLqei+L1upxcsRPebt/TIosoL727QUsJ/Q1V8J1gSkzcR6uoAJ69MwyddsxwWX17AmgHy4qPr0XDWOMMQNb8VhZBmoK9UfnMmTYYxxA1MrY4aXWxNXqFMYXLHNlqWItod/wGHYDejTXaY8l3imohMI+ReRZXB6XFR05rc1gxGaWVhDMsnog6hF5K/MqZYR/+vEItWQN+n0PlkbPjCuOyRdDKFZ4PMgWFmwZJhfVV/gBvWTUyTjz99n6NaiFLj3a37w5aG
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR19MB5340.namprd19.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(19092799006)(376014)(6049299003)(366016)(1800799024)(13003099007)(4053099003)(8096899003)(18002099003)(56012099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?VmJtVzNhZzU2WlVMS0p2dEJOdlNyZUxLYU1yVDNCZ2JsRWl6enJEbFBXTExw?=
 =?utf-8?B?WVF2eFRjZ1B4V2loaW9oWm5qeE93RWNvVnA2Z1JQSiswSlgxYVVlK2Ezcldj?=
 =?utf-8?B?eWVRY0s2V2l1Z2E4QVV6SEFkRkZVcUFjOXBPUUhUOFM0d3NEY2xYdFFlLzBB?=
 =?utf-8?B?T2xSVnM2a2dQREJkdVVaaTZLU1JMVzQzeDE0dnVIQzc3elhtLzlkOEt6TFhG?=
 =?utf-8?B?Zk5UMVBZR1FOa051alpmRDJncFpld1RRazBmNUFHTHlxSkg4elRtb0l3cUdK?=
 =?utf-8?B?ZWt3SHFsZXNwcHhhOGg0VUtJSlk3YnRDT3ArSUJ3Yi9KY0NMa01UUG9GNnc4?=
 =?utf-8?B?dnNLcjd2OFdhZSt5MFFZTCtrVEdCRnptTkxaZ1RqNjZGWWdqT2V1T1pnTlNZ?=
 =?utf-8?B?K3dPZVJaeUdpanYrY0R4OWZIaHd5QklyYklHOElLWG1HNTIrS1NKWG0rZ1dN?=
 =?utf-8?B?VWw4VEE4Vi8zOU9YZk9CRWN0QmxIQko3T2NVTmRDUTZ0MjhHZ3hkTmlwd2E5?=
 =?utf-8?B?dk5zSXE0cGNuY2RNbWN0Z3ZKK1VDaXB0VlVBc1hBMEY5ZDl2Und4QVBLemth?=
 =?utf-8?B?NDJDTjg4QlBEWUNPYWZqZG0yeXdOS2IyNzUrNnp3L05Mc2hlb1hqYzFxUU80?=
 =?utf-8?B?RGNKWjVUbW9CUEV3QW9ubzRHMzVDY3lWczBURi9KZVdNdXB1T2tCbkxORHMy?=
 =?utf-8?B?MXlXRURhY2RDc0NwNnlFTWpINHNjdzZ4SW5ZcnZoWjJLNUt2YnZ1aHZidFpB?=
 =?utf-8?B?QXppU1BtYU9PQ0lGVG52VTVYdXhEWDQyWEliVktiZGg4d1F0c25xS1JpQWlo?=
 =?utf-8?B?NlV2dHdmNWZYVnB4US9yL0VqMnM1alVEc1VYZTFqVXlYc1U0VEdSWldYRVI5?=
 =?utf-8?B?SzExTWM0R1BaZkZUclVlUzZBWVR6S0lJVEd5VktBZ3RJUElGRmJWNFVRUGp1?=
 =?utf-8?B?bUZRNDllekplMTVzMlJJUFdaVFMxSnZDU09Ra05FU0kzM3d6aHNleS9IM2pN?=
 =?utf-8?B?cUFNb3E4b2FsRWI4VlBYUEpIcXhVRkcrM2JjMmxsejU4L2FSN2d1Tm9XblBO?=
 =?utf-8?B?QzdOWWt4WlZOS3dzbk55ZUViSitid1dnZERuQm9pTnpaNTU0QU5Wa05xcm0w?=
 =?utf-8?B?VzVOd2g4ZE5keFZZVEdSUFVTaXc2bk9UVXJMSkJVL1crWVc2YnpkOVVGZ1FR?=
 =?utf-8?B?b2VDRGlzODdxVWU4dVo0Y0F4eFhJYU92ekNOcDJ5Z2ZFaUQ3RVZMQ1AzWFdQ?=
 =?utf-8?B?OUJ4dWdzMmxxWkUwalJESHZoanBLWTFvN3RVY2ZRNHNtajFITTZ1LzBybFZR?=
 =?utf-8?B?eFpmRCtMdkFwNFcwQm9iZ2hVekRtTjZzbXdiaGVGeDVyQmFKYlZJeUZoZDdT?=
 =?utf-8?B?TGgzckU2K2l4MTRmSGJjZERhWTZCZ0Z3dDhwdzRrTkVFakQrb3U1bHllQ2pN?=
 =?utf-8?B?eFdiTEwwSTAvOWVwWDd0YUhGOTg1SjdsYXo4elRnNTlCTHgxbXBzbHAxMHBk?=
 =?utf-8?B?cTIva3o5N0oxN1VMZFR5Skl4VEdhM3doRWFmejRoZFgzOUVpaDRXd25UWUdD?=
 =?utf-8?B?TlJPblMva0IyMk9BQXdCK0VFZ1pJRGI2Rk9BMnprQlpTclY4RTBKQVR5am1j?=
 =?utf-8?B?dlVnRDNpOE40bTBnV0tma3QzNnA1ek14Y1BTd0R6SUhZdnJuY1ZYTEdwenE0?=
 =?utf-8?B?Y1NwNjdFM21JTTBPazVxTk5qT0VCclpraUhvT2FLNDhSS3J6V1VQOGdEbXZw?=
 =?utf-8?B?VnJ4T1V0NzBYU0RGNmhaRk45U2krb1ZKVlcyWS9IQmFEYTV5TkJBbFZBMUV1?=
 =?utf-8?B?UlRUd2U4RjViR0JXVXg1dGlRZjgxRlBXRjJpdDFWd09RVTZja1hVSWNFUDBF?=
 =?utf-8?B?aE9YVXU1eFpNV1VWY21uNG8zN25HUEdOeU5BU1NkOFFsTHdjeVROT25wY25z?=
 =?utf-8?B?a0ltWWpsbVNvS0tGOVc5bGdSUXRxVFpzeFl2eWd3Y25USnk2QUx1Y0MzNzI2?=
 =?utf-8?B?aFo0RUlhR2xhb1VLMHhkNktPaExKcTdhZVo2R1NmckxJcjlsMEgwUDYzMUxp?=
 =?utf-8?B?QittdTd1QlVCNDJaRk9xMTRkalh1MFYxcVdsRURyemVrUndrUmNleEZNbmtZ?=
 =?utf-8?B?M1prOWNBSGhqNEFzN2o0aUcrUDNSZHVQL1dpNStUckU0TWZCZmthcDg5QkVk?=
 =?utf-8?B?a3ZVeS9hTXlDYVpEVGFEWFJuNGMyUW5HeTJpRVpjUEtHcUJCT2lML1VkVlJy?=
 =?utf-8?B?cEtSMGo3bS9VOGVkeWhoMkdUMkJHTTIzdVlPSkFVQUx4S0xNUHZEbmplV3h3?=
 =?utf-8?B?QWR4UmFtU2V1cWQ1V0hXSzhkYUZiQjlVcmgvcTVjMWhGalIybytoeXdUVDN4?=
 =?utf-8?Q?9edX4SP9uWXA+s1aaHV/epW7wxSLQEbWswdVq?=
X-OriginatorOrg: jvf.cc
X-MS-Exchange-CrossTenant-Network-Message-Id: 560d10e8-95a6-4489-ee5c-08dea47e98a2
X-MS-Exchange-CrossTenant-AuthSource: CO6PR19MB5340.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2026 17:01:16.7818
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3268b97a-2d09-45a8-9816-8dea1f44039e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1nsDtuK8GIHBkeSCqJiUE8PJ0JaGPEJBo0Ql8qSFHIFFw/1MEbEOJDnI9wDYL/U1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: EA3PR19MB9254
Subject: [oss-security] [OSSA-2026-008] Ironic: Command Injection in IPMI Console
 Implementations (CVE pending)

--------------Uqw51tq8Bjx9hC9vScJOH2o0
Content-Type: multipart/mixed; boundary="------------SnZXwjd0Bb6CgWlUqAS1K3m4";
 protected-headers="v1"; hp="clear"
Message-ID: <9ca6dc44-f9a3-4700-be42-eac488a6c61c@jvf.cc>
Date: Mon, 27 Apr 2026 10:01:16 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Jay Faulkner <jay@jvf.cc>
Subject: [OSSA-2026-008] Ironic: Command Injection in IPMI Console
 Implementations (CVE pending)
Autocrypt: addr=jay@jvf.cc; keydata=
 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

--------------SnZXwjd0Bb6CgWlUqAS1K3m4
Content-Type: multipart/mixed; boundary="------------hpsGCLCfoiYv3Rx725hEpCgI"

--------------hpsGCLCfoiYv3Rx725hEpCgI
Content-Type: multipart/alternative;
 boundary="------------9149soibHutIaBX0XM1wVNAL"

--------------9149soibHutIaBX0XM1wVNAL
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT0NCk9TU0EtMjAyNi0wMDg6IENvbW1hbmQgSW5qZWN0aW9uIGluIElyb25p
YyBJUE1JIENvbnNvbGUgSW1wbGVtZW50YXRpb25zDQo9PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0KDQo6RGF0ZTog
QXByaWwgMjcsIDIwMjYNCjpDVkU6IENWRS0yMDI2LXBlbmRpbmcNCg0KDQpBZmZlY3RzDQp+fn5+
fn5+DQotIElyb25pYzogPj00LjMuMCA8MjYuMS42LCA+PTI3LjAuMCA8MjkuMC41LCA+PTMwLjAu
MCA8MzIuMC4xLCA+PTMzLjAuMCA8MzUuMC4xDQoNCg0KRGVzY3JpcHRpb24NCn5+fn5+fn5+fn5+
DQpEbWl0cnkgVGFudHN1ciBhbmQgVHVvbW8gVGFuc2thbmVuIGZyb20gdGhlIE1ldGFsMy5pbyBT
ZWN1cml0eSBUZWFtIHJlcG9ydGVkIGEgdnVsbmVyYWJpbGl0eSBpbiBJcm9uaWMncyBJUE1JIGNv
bnNvbGUgYmFja2VuZHMuIEEgcHJvamVjdCBtYW5hZ2VyIGZvciB0aGUgcHJvamVjdCBtYXJrZWQg
YXMgYSBgYG5vZGUub3duZXJgYCBjYW4gaW5qZWN0IGFyYml0cmFyeSBjb21tYW5kcyB3aGljaCBh
IGNvbmR1Y3RvciBleGVjdXRlcyBvbiBjb25zb2xlIGFjdGl2YXRpb24uDQoNCk5vIGNvbnNvbGUg
YmFja2VuZHMgYXJlIGVuYWJsZWQgYnkgZGVmYXVsdCBpbiBJcm9uaWMuIE9ubHkgaW5zdGFsbGF0
aW9ucyB3aGljaCBoYXZlIHNldCBgYFtjb25kdWN0b3JdL2VuYWJsZWRfY29uc29sZV9pbnRlcmZh
Y2VzYGAgdG8gZW5hYmxlIGVpdGhlciBgYGlwbWl0b29sLXNoZWxsaW5hYm94YGAgb3IgYGBpcG1p
dG9vbC1zb2NhdGBgIGFyZSB2dWxuZXJhYmxlLg0KDQoNClBhdGNoZXMNCn5+fn5+fn4NCi1odHRw
czovL3Jldmlldy5vcGVuZGV2Lm9yZy9jL29wZW5zdGFjay9pcm9uaWMvKy85ODY0MTggKDIwMjMu
MS9hbnRlbG9wZSAodW5tYWludGFpbmVkKSkNCi1odHRwczovL3Jldmlldy5vcGVuZGV2Lm9yZy9j
L29wZW5zdGFjay9pcm9uaWMvKy85ODY0MTcgKDIwMjQuMS9jYXJhY2FsICh1bm1haW50YWluZWQp
KQ0KLWh0dHBzOi8vcmV2aWV3Lm9wZW5kZXYub3JnL2Mvb3BlbnN0YWNrL2lyb25pYy8rLzk4NjM2
MyAoMjAyNC4yL2RhbG1hdGlhbikNCi1odHRwczovL3Jldmlldy5vcGVuZGV2Lm9yZy9jL29wZW5z
dGFjay9pcm9uaWMvKy85ODYzNjIgKDIwMjUuMS9lcG94eSkNCi1odHRwczovL3Jldmlldy5vcGVu
ZGV2Lm9yZy9jL29wZW5zdGFjay9pcm9uaWMvKy85ODYzNjEgKDIwMjUuMi9mbGFtaW5nbykNCi1o
dHRwczovL3Jldmlldy5vcGVuZGV2Lm9yZy9jL29wZW5zdGFjay9pcm9uaWMvKy85ODYyMzUgKDIw
MjYuMS9nYXpwYWNobykNCg0KDQpDcmVkaXRzDQp+fn5+fn5+DQotIERtaXRyeSBUYW50c3VyIGZy
b20gTWV0YWwzLmlvIFNlY3VyaXR5IFRlYW0NCi0gVHVvbW8gVGFuc2thbmVuIGZyb20gTWV0YWwz
LmlvIFNlY3VyaXR5IFRlYW0NCg0KDQpSZWZlcmVuY2VzDQp+fn5+fn5+fn5+DQotaHR0cHM6Ly9s
YXVuY2hwYWQubmV0L2J1Z3MvMjE0ODMzMQ0KDQoNCk5vdGVzDQp+fn5+fg0KLSBBIENWRSByZXF1
ZXN0IHdhcyBmaWxlZCB3aXRoIE1JVFJFIG9uIDIwMjYtMDQtMjcuDQotIFBhdGNoZXMgZm9yIHVu
bWFpbnRhaW5lZCBicmFuY2hlcyBhcmUgcHJvdmlkZWQgYXMgYSBjb3VydGVzeS4NCi0gVGhlIGBg
aXBtaXRvb2wtc2hlbGxpbmFib3hgYCBjb25zb2xlIGludGVyZmFjZSBpcyBhbHJlYWR5IHNjaGVk
dWxlZA0KICAgZm9yIHJlbW92YWwgZnJvbSBJcm9uaWMgZm9yIGxhY2sgb2Ygc2VjdXJpdHkgc3Vw
cG9ydCBmb3Igc2hlbGxpbmFib3guDQogICBTZWN1cml0eSBzZW5zaXRpdmUgb3BlcmF0b3JzIGFy
ZSBzdHJvbmdseSBlbmNvdXJhZ2VkIHRvIHN0b3AgdXNlIG9mDQogICB0aGlzIGNvbnNvbGUgaW50
ZXJmYWNlIGltbWVkaWF0ZWx5Lg0KDQoNClRoYW5rcywNCg0KSmF5IEZhdWxrbmVyDQpPcGVuU3Rh
Y2sgVnVsbmVyYWJpbGl0eSBNYW5hZ2VtZW50IFRlYW0NCklyb25pYyBTZWN1cml0eSBMaWFzb24N
Cg0KDQo=

--------------9149soibHutIaBX0XM1wVNAL
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
    <pre
style=3D"color: rgb(255, 255, 255); font-style: normal; font-variant-ligatu=
res: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: n=
ormal; orphans: 2; text-align: start; text-indent: 0px; text-transform: non=
e; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decor=
ation-thickness: initial; text-decoration-style: initial; text-decoration-c=
olor: initial; overflow-wrap: break-word; white-space: pre-wrap;">=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2026-008: Command Injection in Ironic IPMI Console Implementations
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: April 27, 2026
:CVE: CVE-2026-pending


Affects
~~~~~~~
- Ironic: &gt;=3D4.3.0 &lt;26.1.6, &gt;=3D27.0.0 &lt;29.0.5, &gt;=3D30.0.0 =
&lt;32.0.1, &gt;=3D33.0.0 &lt;35.0.1


Description
~~~~~~~~~~~
Dmitry Tantsur and Tuomo Tanskanen from the Metal3.io Security Team reporte=
d a vulnerability in Ironic's IPMI console backends. A project manager for =
the project marked as a ``node.owner`` can inject arbitrary commands which =
a conductor executes on console activation.

No console backends are enabled by default in Ironic. Only installations wh=
ich have set ``[conductor]/enabled_console_interfaces`` to enable either ``=
ipmitool-shellinabox`` or ``ipmitool-socat`` are vulnerable.


Patches
~~~~~~~
- <a class=3D"moz-txt-link-freetext" href=3D"https://review.opendev.org/c/o=
penstack/ironic/+/986418">https://review.opendev.org/c/openstack/ironic/+/9=
86418</a> (2023.1/antelope (unmaintained))
- <a class=3D"moz-txt-link-freetext" href=3D"https://review.opendev.org/c/o=
penstack/ironic/+/986417">https://review.opendev.org/c/openstack/ironic/+/9=
86417</a> (2024.1/caracal (unmaintained))
- <a class=3D"moz-txt-link-freetext" href=3D"https://review.opendev.org/c/o=
penstack/ironic/+/986363">https://review.opendev.org/c/openstack/ironic/+/9=
86363</a> (2024.2/dalmatian)
- <a class=3D"moz-txt-link-freetext" href=3D"https://review.opendev.org/c/o=
penstack/ironic/+/986362">https://review.opendev.org/c/openstack/ironic/+/9=
86362</a> (2025.1/epoxy)
- <a class=3D"moz-txt-link-freetext" href=3D"https://review.opendev.org/c/o=
penstack/ironic/+/986361">https://review.opendev.org/c/openstack/ironic/+/9=
86361</a> (2025.2/flamingo)
- <a class=3D"moz-txt-link-freetext" href=3D"https://review.opendev.org/c/o=
penstack/ironic/+/986235">https://review.opendev.org/c/openstack/ironic/+/9=
86235</a> (2026.1/gazpacho)


Credits
~~~~~~~
- Dmitry Tantsur from Metal3.io Security Team
- Tuomo Tanskanen from Metal3.io Security Team


References
~~~~~~~~~~
- <a class=3D"moz-txt-link-freetext" href=3D"https://launchpad.net/bugs/214=
8331">https://launchpad.net/bugs/2148331</a>


Notes
~~~~~
- A CVE request was filed with MITRE on 2026-04-27.
- Patches for unmaintained branches are provided as a courtesy.
- The ``ipmitool-shellinabox`` console interface is already scheduled
  for removal from Ironic for lack of security support for shellinabox.
  Security sensitive operators are strongly encouraged to stop use of
  this console interface immediately.</pre>
    <p><br>
    </p>
    <p>Thanks,</p>
    <p>Jay Faulkner<br>
      OpenStack Vulnerability Management Team<br>
      Ironic Security Liason</p>
    <p><br>
    </p>
  </body>
</html>

--------------9149soibHutIaBX0XM1wVNAL--

--------------hpsGCLCfoiYv3Rx725hEpCgI
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
zR5KYXkgRmF1bGtuZXIgPGpheWZAZ2VudG9vLm9yZz7CwZcEEwEIAEECGwMFCwkI=0A=
BwICIgIGFQoJCAsCBBYCAwECHgcCF4AWIQS8XViawYtJi5aoT61rddk5tCTG1AUC=0A=
aMs9igUJDAS+lgAKCRBrddk5tCTG1CQdD/47lPT8z3bbBxlu9zBu4kwDBvrN1wRA=0A=
ARwAoKE02yKiWDkYt0XqNFuAeGK5gXt+nTqHDHVmHCvDsh13CHKiZL21ZxqX8I4z=0A=
IvuqVfHdLJ36k161qUtn/vb78kmFNqITgGmU2TfcdRCGY8lgycRbr7Z0EGOIWNlD=0A=
u0hzE7tU0JOY2lJSeBfvq7MAAuGTy3uL1dQCZmwf8tH2u02AprfATcVz0DfwPKRl=0A=
E/Ku4cXnLTsje2QSz3SjF0tsbUhohLipfuI5yJQaCwILHzWrMv+bX+wzO4qoUale=0A=
ozfiCuXwHaC5XqGL4XPrTHT4IzhuURtbf6PsMvnCDTTEntajvm1veZuH+ONMkq73=0A=
Do56v1JOXJIvpCniXlLiBu3BehCZfRolG/aeF66hkYUF9kaugsXizqbjiQ8Lljjc=0A=
+YfGGOip6+1bhWE7qFaD+JzpVkDgJfO3gEqZlHhJsWm3GpRIpFElXAC+vits5XVJ=0A=
ccRikHkeHLBaoUk592yRtxOQ0hIwUy6/zWhVcbv05u79ofd5WfpC0vxy1YSbYYGN=0A=
2BZL91aZKf97GXSNVTavbXQ8mhLTQbpL2ClF6k/KQISZV9629qkhVecbbS4H9W0A=0A=
Ce3ivVZ+FhLRCQ85huJ81YrJcecDlBNN8Ytojq5ZIEht6KCsZVngsNAOW27yxNzt=0A=
I3Dh/PfnO+MTas0ZSmF5IEZhdWxrbmVyIDxqYXlAanZmLmNjPsLBlAQTAQgAPgIb=0A=
AwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgBYhBLxdWJrBi0mLlqhPrWt12Tm0JMbU=0A=
BQJoyz2KBQkMBL6WAAoJEGt12Tm0JMbUXfYP+QGRxf0ICu3BR44gj24keIyqPjvC=0A=
5TUega/ioHR2db3KJSfWqij5El6gAJBEAY5HW04KkRv2ru2BOmdz2+5vA/FimM5/=0A=
si4LC0MvokxZ0QUqUFZI5/UmHsog9pH+lAJPs2ObzCE3mY0g0RDtziqnIyZNpw7z=0A=
sxP6Y3A4vl+tXAeUuZ6r88vbesEHdWy6w6dgwH5LvWGsPe9vPn/Lyo/nB+ITh5HK=0A=
6xgjuuRldNL/iYBu6Ph89wUxrEYRwkIXd63RkzYcZLu+l+G2AnopCvMUAXJQn1JM=0A=
DJkRjLHknVAvWUslFOO3M0Hhs+Wa0V6ACWu5VDCu3gEuIaSfFmsS07WmGeqACTHk=0A=
8/ovUoxLYz7xydReuYYoz2g0FKoAywb2HOuwXt7+dfu+Zvj50UIIltf6wVv0cj+M=0A=
hSPI7sCN9C2kx5RzItee5VUGS2fB+46YUukxUVNgSorLfFauxtRXlbGv5ZQr3esB=0A=
4Ll2TpP5Wd/WxdztQG5SYH5+qeUVWEb9JVVMgx3VN+bpne2axHpBp1Mj3viKXR+s=0A=
pudGPwtFj+imrZXmA0R848a1JQn5pBuCjXDK7CljNw2LQiZUdcIVMi1kmYYNEOSj=0A=
iB/h3cMvF07gAkhZw/K8ZefqC+z2k6ZieVrlwMC5eoRcPyfbT22F5VxGj9o+ckjH=0A=
isvo4o0fqpuKmT8swsGUBBMBCAA+FiEEvF1YmsGLSYuWqE+ta3XZObQkxtQFAmFp=0A=
BPQCGwMFCQeEzgAFCwkIBwIGFQoJCAsCBBYCAwECHgECF4AACgkQa3XZObQkxtSX=0A=
QQ//VwFbzIE2x79AhX3wHReYH+6UR0qe+QuTl0zd3vp1sKukkbU+i3J4eVHmVXdT=0A=
I2rFE1WH9TbTaEBM3qZJgXsQEQ5+im+eyZFfZbGgZLJWyig3uKOogS0OrxOjRwjl=0A=
DLN9Orcl4de/HA1zAVrLRV3zfg8ZMj6zXrv84L54lZ5e9C7mD5oS8Ge5enFrU9kE=0A=
dHNjqzt1PCXCeA37/HRJoR+nzHmcSzJyMMxQdo0cgiaRHYyu7LOJFL5qR0jLEmZw=0A=
Eulmd6fMeU4Tx5eMx4o6O3diTmGyeFs/UDGWn0qcMDkh9T00Qw1bLOv/yFrpCMjE=0A=
yryR7hJ53HYtLqEkvn/7lClrp2BUsV8XjYqexnB6unr30/RduC6koXXUHAZpk/+m=0A=
D0WEdShFNuiFlOn8BDjBvk5k6j2VlEO3uH0BhWUBfY+bahWiLgWUhupK2Wd8qLYb=0A=
E9VDj5jvcKVt7qonBuguDY43aXyf7gnm3u1pprGuqTcWyRijHeLXLHNZg2fCUjQ0=0A=
tdto/YblvNexrEDxjK7nzgmHR7KDTVFcjG91yrTrO2/hmREQSN5WWk50q6n5NLBS=0A=
MWyDuzOxG0baOuKZrSCnMamFNjMPvAnCdqe1HoNq4b7Hb9FheqJulqQFLEhGN33K=0A=
IummGYTjJBYnz4L7c1F0iqlvEVO7MEir+a63lMWh6wIarg3OwU0EYWkE9AEQALHc=0A=
nXwEWn5WF3y47vkl4ASUisl1QHSlYrs1qlsBmqdbQzo5TOtupuGVk9G7jqo1J1Iu=0A=
+ejI+uYCcU1jPYH5H+PJ9AK5qcM6MGniwJNaopHmvUgERwlUcxP99IH4LGS2npnX=0A=
SxIrSYfYBXuDUW7vbW2Ksj5XfXlBMd/6PE4b5kljOABB9SWFw3eXJunaV7h2tLne=0A=
wqFU/sbZHLhDkAER7vwlXyTMDrkPTCyOqfweFZcn2iRD52/LsoL4hlpcGZz/mSV/=0A=
sQJBoiM5op+3NWKKe0V4RkJ+lgACQG4jzC5jyN4XOk48tQF4ZHqyy32O+HRH4xRX=0A=
pOAmxiZzvXLPUqSmI+uNnjyO5tzFy8K/hzL/3YtXQyxVGFYtmtILSnQORO/a37or=0A=
eb5RQm8jvvq7R+Id2/BmdekGcxQn5l6gn4+DVyp5EW/n7wXKz5bdt74OFk6RQafb=0A=
24RHsNbJehIHWDuK2PO5FS6T3T5S2il2khGg2wu6xh5vXyWtB3eW1skdOWwt/M/H=0A=
FinesaCkvHTUJwTKk6BnQUzpKHyZcGRuQ+pnT/5xJumi6AztsXU29wfyaoZK1o6f=0A=
oRRk8ojpIVZIUZyR7cV2BXzewwKyv9HihGa+P4atcjPMsGhVh6cJXxKS1xKdfn8i=0A=
BD7ngS1LIOhDKzjQrRD7Pz/Q0SxwYgYrz51AdH7tABEBAAHCwXwEGAEIACYCGwwW=0A=
IQS8XViawYtJi5aoT61rddk5tCTG1AUCaMs9fQUJDAS+iQAKCRBrddk5tCTG1OiG=0A=
D/0dV4IeXX4rBG++DPiW3ZZZU5tCZjrTUIhi6KNilESLvBB5ovrdOPgrJ21CKrQX=0A=
D9RlLTl8c5OUUaYNP0cOUx97d01ZmfquIauJbXBXWC9XiDWoUEY2eJFfMmb0EW7m=0A=
4WU/Ot2HjOX/8U8iWW59bL8ONyAg2J/fLaFqJtLkjtqZIeoUvHO+SC5p2EYfMwms=0A=
xIZzmtvPtLclVRvFUuJIEz9vNLCAarxas+peQ+t2FbyMvrsPISxCZ4axGZ+P+FII=0A=
FEfckeFwYJEsVeKhj52U05wvPrsZfJIGO4KZ97PsWTNggFUCXhiYkTPoYsXnv09F=0A=
CDeum6tFM1yGmaD5siLWI8dZdJOIhrMstYDMRlHDoQPOcugRCVv/I0rtKJ1OFG4P=0A=
Lqbx3aR1cKYyTkpG3GtkM6rSThYFx6N4UKVE9ncCXgjyOHXglWI1BnRqzd86prEd=0A=
evSVpaasxZjJMta6LbC6PU5Vd/ETNcnJIVsf8zLCoHx7cTmDHHoAU3rELhq5vyWm=0A=
EpPU3zf0EnbgGXnj+C71yAdmIj04fCt6d2vnM+0nHFL7S3BB18JMpwfJbs0PPair=0A=
KVQwhPcEWmY6u8pI1J37vTG4MrABj1qZzKJ9SnkwRU1h6uVPdsom0dOzMl+arjW1=0A=
yZEeXN3xGPq7s2ozyhrYR475/Pvk/G+B/HiUSR3sLybbUc7ATQRnx8pTAQgAvzTh=0A=
wcbjjoTY/Y95MBW77xGoCVrv2H1Vm36liU18LVQ15RkgsDZv/sLXN9MmUc79Dazn=0A=
0T0I4Q3po/Micd4ka++dFUGzY0yk+VyrNJG8ibtl0/a6kNInzqUPH52yGDPWu08Y=0A=
1Y6NAYDBmo7ePqXncZeGevKFsOGtHPV83mRIwyGPN4QOk2h3xOZ72Y3wKrGdBUIT=0A=
+rdetAngzRaqdqyZkzvKzPB6zvEDnJOost1BDZ9FMECAJ+7MnayYE3Ytq5m/+12R=0A=
b4IUHsVbmi914wrvO2LJCN1hS+yCEazMhgkVXJ0f4wO+ISYAoGyrBrRZE1BplEjt=0A=
aHB69QMCNqYMih7tTQARAQABwsKyBBgBCAAmAhsCFiEEvF1YmsGLSYuWqE+ta3XZ=0A=
ObQkxtQFAmjLPX0FCQWl+SoBQMB0IAQZAQgAHRYhBLDzBOkQOEyJiV8Bvs1FRFIp=0A=
C0VqBQJnx8pTAAoJEM1FRFIpC0VqxMQIAInaBNwQt7qPulrEE18uHf6RyZLAI3l/=0A=
0n3r40Cd8S9NKjAu/bnHGu0memat5YZOhot7I2tvKlNHRzPTBV+yK1rhbZH8QCwV=0A=
s/yksTL8kJhWNm/svXRDWYv4zImTwYqB+RPSwAd2eJnknSa5xY/gOr88JKZyjlYx=0A=
ILyC9Dp7Vo0j9GaXhr796QOKsop4BqEew4HgIkY2+79WGb0BOfAiW2pa0PNf5rn6=0A=
vTAdmoHDgpeJytyFPTaU5N2Zdhq9c4igUW7H7t3D3M9km+1yRCoNMywVZE1mypvF=0A=
h8ibNttffwCNw4beaGd9ePmcu0RoepG2PBCuJ5/yJOhvKCM9zmwbU3EJEGt12Tm0=0A=
JMbULzsP/3VLk57bYrsVgLHGB+IzmvZfM6cd6K1kSa0iE3tHFd2yDGLvQ5S8PaUJ=0A=
LZGqI9nYX0l6XkRUalU7luPB8f/wlAGnLRIoq/lCnYhmrZzAHGOq7MdKw4poK6Yk=0A=
3vXrxMyjR1aIeARQkNDGDRmnjBM8o+ldQj9LB/ra56T21A2nk/2LGsN7CjKSlQ0p=0A=
WIgRHEVCsSCpBDlA2vegfU1P5l5aLZuu7gZewtx7EK4hBTZiI4oTSGe4QeEkX/yA=0A=
uXkoRHA/kdcyl0Jb9M+Xa5fZ0/m6v5lM8wJtdkByVp6wWIr9KuQQmLdedJA4dU5a=0A=
o+7OIAJB7vVUWDu1Z3HuUSAPZe1gru2hjdD7LsU6DfjI5GMqSKKYtvTfd5hWvEEX=0A=
mEIAkIaN9SDjH7gqcb/0WCGJIVvmx6OtcU4ndMxrNEsHljF8sI0+bu4q8serswz7=0A=
wU0SYIqcsgLVqJaEMMKUisxhz/jycJ1yikLR+TRr3srFTEnhgS1j/cDLOLzoK6Gj=0A=
783ny5uWumnPPgzYPtOZMz7GSflsirdYPUW4TZEwPwBKutu1p11fPWPWj0pi3bZ1=0A=
VDf3xur65x3TpbXjyhiaKZE50HR3mPHn2Sm/8Q+9ergC7QJ18Wh13aQqHoH8n4aP=0A=
N9B6kDLrB1xhe5UKYi1shLeKXdjDO9SPgB/FPq/hue1yvwVEuNn2=0A=
=3DtvZI=0A=
-----END PGP PUBLIC KEY BLOCK-----=0A=

--------------hpsGCLCfoiYv3Rx725hEpCgI--

--------------SnZXwjd0Bb6CgWlUqAS1K3m4--

--------------Uqw51tq8Bjx9hC9vScJOH2o0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEsPME6RA4TImJXwG+zUVEUikLRWoFAmnvllwFAwAAAAAACgkQzUVEUikLRWr0
3Af/ZQbXBwvYuDjghNe9KJbOxJYP5rhHjR2TUTsne7G7342WmscSTZRh0qa+l4xTn7LSYgMOJdZA
Rbam0mz+fZ+JZk0CqF0hYjGRed85xxrkHvUYpuz3fkbg1keclm3SIJBUujEsXbScI3B1X3EIjIRN
ujKg6Pq+7YPXRE1yjKpfXFbCjHqvy3nszeHwZ5vLAXVf4MLwJr60JqgkZW485713Wzqu10MoM1JA
kjUyMdUWCOoqqOgpUkugkU/QKlWeQOJ1ovX0EsmHlL8eSgtN86dov+U0FPmjbFDpocG16ZwXwj4O
Rf80qdy0bYks2R0PKtU5kaxfGITHXuR4MJtFki8nog==
=BLge
-----END PGP SIGNATURE-----

--------------Uqw51tq8Bjx9hC9vScJOH2o0--
