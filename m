Received: (qmail 16204 invoked by uid 550); 23 Jan 2026 21:02:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16145 invoked from network); 23 Jan 2026 21:02:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=HeWUnE7vcbxdvLoR
	nRlKclm7uY2W8r5PlatC9Io0VvU=; b=k5qOT9Yzgu8xkNdy1xFL9f71/gMbpTVs
	YmwcblCsHCdY/vvt3WaRG9Skjt3tnBAf2HQnlpZrPs5+zQkY4yr+AmWeeaRDReJK
	tY1UzgY4IPVjChpWDRTbttEeP3XIQL+LveJSfzx7+KnFO0QEdcOibF4s01J6V8XA
	Cs9DnBkbljHgLdty7dTf7i43R9PhqGll6uwFB7p8w8b3TWPh0XzbiEj7MXBCR9aM
	NEyLsjh9a6kT9tPtzS0b8a4N3xXXAosBPmURalziK8xthGxqxKSrFD96GX/XdAWl
	NWVOOXFIiVT+CpyNOcV9YaNg3vm4ADo5Efb0dKTgxoIc7Hw1BVZoyA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gkZsezVgPG5rUDddhYJGncydFvKmuYhE3Uz9paOo4ZWqCNU/3gvwXsUSyEukLdmr+BqDCzDiXZ/inOaObL5+T/VA2K1YciN80qLzAyomZMPiB0MD4IAD8nUoONYAC4SX++p4fkZrOPM6+qL1JQEhj0zWYIKHfNOlpom9GrlufL+Sg4nMXaKm4JvSJBX75JAnLISNZ1we79hLMSgt3NWnhVGFKXbSuszxfR0Qu2mLzdadlAvFqQZGXzGoA+/mBqcCKA8NwRmooZ2f6gTRQYgwnJjSOXuDLI5JHIgHyOQry3lO9+LlWPi1tiLtpWIRhj1acPlHlaAWv6xSAUp2Dymq1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HeWUnE7vcbxdvLoRnRlKclm7uY2W8r5PlatC9Io0VvU=;
 b=TtLWPiFaxJc77bRiQmtbQnIxReRtfwOfQGCtM0dn7bSVXu1lN5Jzm+tUQmwfELuKDJ5d++aftMP96IeNlxd8CDAL0Dif1Qw6ISJ9Wb9l6SPUoMG6ofL6LGEEEmLXR6PSMN2Unz4rBlgSG9le5m6ebBSDo/+EuT9EW8wkARSBivcpOtSdnl2CW9j082b57J1O0gHKjOv25OuRIVCbr5wHf6PfvA+f85VgIUQOy/1jtuSZplQfA6s3zmJEGVgLnGVQdlyuaDZwhLoCdnCjM+pBh9J0fGJOhbPtfzhStLRdVNGKh1wrloaBw7XOLWGTNSBWJe/y5d6vAnzTylR52BQgzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HeWUnE7vcbxdvLoRnRlKclm7uY2W8r5PlatC9Io0VvU=;
 b=sII9k0cuDaG0MqMBBFuqA53sdUKidgOZyUY/uJrYqsHLxXaChvRT94oHiXRlTdb1vkITJJRDFqRXpjiy7lkNTv+VV6l/U1mtQDuzcxvW29BIMojJEugIJ0cUr4O/KpXuXg5f0oTwoy5ED4d0CE626kWUUrjveER/rUDHE71DCOY=
Message-ID: <9396e329-022c-427f-be28-397732070e1b@oracle.com>
Date: Fri, 23 Jan 2026 13:01:49 -0800
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PH7P220CA0033.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:510:32b::33) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|CY8PR10MB7241:EE_
X-MS-Office365-Filtering-Correlation-Id: f9dc5502-b70b-42c9-c461-08de5ac2a226
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|13003099007;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?cDM2ZWFyN1VRbEF2aEN6ZktkRll1eUlvOTErOFlHandmaVZIOWhYUEYrU1Fo?=
 =?utf-8?B?aFlxcXFCa0MwVzV2K1pJNVVQS3ZJL1A1aFRKZ21RUjJWK3dzTWhkd0NITkY3?=
 =?utf-8?B?cWlYTm5ObDkzQUNldks0UHp4MURQdS8rL3BmS3F4L3lQNkxOQ3d4OGNsWW9I?=
 =?utf-8?B?dUNtamFaSkcyUkYrRnNuZTBuam45dUw4cWlwaHI2QWtTOFVDaTVqSk8vd0Z0?=
 =?utf-8?B?V3VpMDlqVC9Wb0NOUDFQQUQyZ1Y3TjR4VG9aTHV3VmMxMzA2VFRtVkNJWlli?=
 =?utf-8?B?Q3pjb0JFSTMreWRySTFCb25DVEJzaHYyT3JVZkFlK1Zma2xHY3ZYV29TNE9y?=
 =?utf-8?B?NkZjZXZ1MGZWb1RMSE5Vb2VvMzN5Vjc1azFZdjk4ejlocmdBY1YvSkgvaGtJ?=
 =?utf-8?B?b3B5UHZrbHNIZEFEYk9qNkRjYjEySFlyQ1V0TTlyZ04zNE9tWG1jNExadklv?=
 =?utf-8?B?TEJIc055NEN0OTF5N1g1QVNHSlpJdUg3cUwxMFlZeDYvMFdtOEVXTVhJTWZO?=
 =?utf-8?B?R1ZycUNnVk5SaHBSWmx0UW9zNmxTb3hyT2UzYjlBVDJuR0dsRUphdVVQV0g5?=
 =?utf-8?B?dC9veHlnQWxRQ0dldHk5b2NDaGlaWEhuQzBFMWhobVo2VEd3MklBTlc1SDhn?=
 =?utf-8?B?M1BwK3o2R2FpSXBsT3FycjVBOUdSdUlHSC9GYUdwTU90MHA1REF2ek4zUVZp?=
 =?utf-8?B?ZXQ2bVlodFhUN0ptSXkrenA0SHVzZ2FHQjFRNDJudFlXTnVPRU15bVBNWGc5?=
 =?utf-8?B?NVhuMVY2U2cwdjJEMVF6dUVPcWNObG5oelRNZ0ovUjlOR2lRWnFGWUdXYzA3?=
 =?utf-8?B?QTRISkQxRTF0SjRGaFNPeTRJZDBQMXRIY25rRFNua2pzSVp5UFQyV2Y3V2M3?=
 =?utf-8?B?ZTM1RGR4N0Z2MldYcUdjZGYxRzZpSDNVUUVkOXErVGN3WGJRd3c4Y1YxOUlm?=
 =?utf-8?B?N2ZjVFpqZVI2dmR2ZGF1N2dSTUtzOGpDYmhwd3U5OU5xeVROTG9YQTMyN0Ra?=
 =?utf-8?B?aFVjRklWWE4vYWd2Z0dnbis4anY4VVp5eHV1MWh1aUJSczdCSnVIUEJ2Y0ow?=
 =?utf-8?B?NFdDSEI3U051T0FOQW1oV3RITjlGNDhMaGlvNnpVN1NGMHN4QnJuWHk2L2JL?=
 =?utf-8?B?dmsvK3ViM1ZMSHV6NkZjakJwREJQMlpLZnNpaS9JVy84cGF4K0hEL2dQa2sy?=
 =?utf-8?B?V2pBWjdKaS90UmI0U0M4L0J2UFNGTHpKSnhPTGFoVG0yTDBoMHRDNDliSkhz?=
 =?utf-8?B?TWNpenlpcjI3WERVS2gyd2pvdUJrUEpEYnk3eE1RQzBpWnNHUThCcjMyVTBh?=
 =?utf-8?B?aW1zZUxGK3hydG9qeW5aUnR6cEF6eG00MWpGSU02MWhGeDVRZDQzaGlHdVM4?=
 =?utf-8?B?Y0RzL0VaOFFLc3JSU3REU2owTU9YZm5wUU8zRjJqVXFyZXBnTzhEUFJnUXly?=
 =?utf-8?B?NDVMbTdFa0lDQkszQ2d2bXFTT0FzdUlmUEtMU3NLY2RzNmtaejFMWFpvNnlu?=
 =?utf-8?B?a2dyQlE5eW5ROWd2bDBaQnkzNmduL0VaZ1M5cTE0dFg4TVNJdGQvbSt0ZU5Y?=
 =?utf-8?B?b0lZdDdYNElEdjVnNkNqSUgya01iYWJuSkMyMldSdjhEdXEwaFZ4bmpxWGZn?=
 =?utf-8?B?b082cUNoQk1RcVdLVWE0T1BHM256Z2FYOVQwL015WEQxek5WRVprTlNsZGxG?=
 =?utf-8?B?bXNRSEFKZnJpRU83bmdObWtRb3F5TTA5QWg2Y0thTFdxaHNETnRvTXpxelQr?=
 =?utf-8?B?N2ZkZ1BxYWU3bkJUQy9VVzNMRHpvL0RtVWlIazJncG1WUlR1OE8yRjB3L2JF?=
 =?utf-8?B?N1FCMG5JengvNVVraFRIKzJjZVJFZFFlbGd3ZktYVEVZMEFKQXJCbW9QL2lI?=
 =?utf-8?B?a240RldyTkRQSm1uWFg1N0hFc25PQnN6Z0o0cTVvVnQ3b05WZWFQUmI2dThV?=
 =?utf-8?B?Rk5mMzdLUnl5Z1VOUVRqZUgrdzBvbUJCMnZiOVFBcGMrZE12SUR3SE4vcFp1?=
 =?utf-8?B?N25OdTRMaDRMSjJJdkNiWHpGbm9mR1FjZG9jUTR2eHI4TTVBRUQ1U2NRdk04?=
 =?utf-8?B?NGR1dUF4WkRiTWlBdCthNUtpZ0JkOU94OGRVM2k5dXVIVjhmNjFmUnNOYlV5?=
 =?utf-8?Q?evTdzvjEJKkh6lamkNkAxG4W6?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(13003099007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?QjNTUHYydWJaYm5KZlNTQnpZMmJ0MlZyNEVMQmFYcFBza2RRVktZVFZLd3M0?=
 =?utf-8?B?NG8yaStVOCtNdVlqemdZd1JtNTcwUkVlSzZkY2Q1WUxxamtqdFVxdXZCVk1v?=
 =?utf-8?B?NFUzL3VPU0MydVY3SityT082WjZPWWFCbE1iRGdudXVOQjd2NFZQY2VCOXNI?=
 =?utf-8?B?dW9jUkxhNEc1T3NkMTZzYUFIUDdyUDNIR1VsN08wMVd3Vi8vcC9oS0o0Z1dv?=
 =?utf-8?B?NXlwRkRWeHBnd20xSkl3Ny9vL2o1ckw1YWJPTHpwa3QxVHB1QXFrTS9VN1BY?=
 =?utf-8?B?dEhxNnVZWVFLdEhKY0JwT0cxSWViUDdpdk8zcHd5YUxxYmVMTWp5OFR1dEFC?=
 =?utf-8?B?MlhQdkVmQWNNZlhBRVorR1ZVNTRzY2MxS2VIQXlUcWVmVDYwOUY2UWNCV3pF?=
 =?utf-8?B?QUR6SHVmd1Ewd091Y2ZXOHU5RzZaYmdyOHcydDBSRHhPV09sZzcza0tuQnVN?=
 =?utf-8?B?V2dPWCt3RWlmMno0OXNoeElSZWNPcjFwdVc2NTA3NCtoN0dNanQzdmNpeEYv?=
 =?utf-8?B?OWlRcEhLVTdReUtaYnRieFlhWGY3S3k2L053U1V3VTJXYVdFZ2ZCOU9YRS9m?=
 =?utf-8?B?OTI0d1lZVXc5SG1POU96UFc1d1lkTjhWVStpRjhlUTJDSTNVMnE3Y01zeXZY?=
 =?utf-8?B?QzA0eStqUmpQU2JyVGZ0V0ZYRUoxNU1RakRvVzhrRUdQQVQ0cm1ya29YRENa?=
 =?utf-8?B?dHB5TlRyTXdMZUQ3NXVOSFJrUjV2UEc4bE0xbEx5bDRNZVJxcG1zQTIrVU9T?=
 =?utf-8?B?YkE0R1RYTlRieUluQmNBV253NnI5em9sNXg3YlVkNGIrUnFLVWRJM1pFajdD?=
 =?utf-8?B?aWVxdG5Cb3ZNWUFjYk9pak1uNTg1dE1uYW43U0I2bGtCVURoSFpHZlR5c1k3?=
 =?utf-8?B?d2lBSWg0azB3SVZNUU5SeFFpeW9Fdmc3N3NiQWtKelJXS1dsNmhscE5Ed2Fl?=
 =?utf-8?B?SnpFdkVuSlhNVkhRT09wZG5EWlB0L1BubUJ2WDNKYlNlMG00eTJ5a2xJbHd1?=
 =?utf-8?B?RUc5dERBNkdXOWM3U01jMVBkcDlUNnlrWm41N05ONUNDZjFaU2lRZmdLWFkv?=
 =?utf-8?B?UDdTSXNrS0ZSZDFXMDdlK1grNVVZT1VlRWJZa0ZZN2szRS8vZGxGQTBrRzg5?=
 =?utf-8?B?K1dDSHpUSnVmVjNyYktZVzk4TUlhbnZEMnZjYS9GbUdhS2QzYnlMOVpwOFBR?=
 =?utf-8?B?L0p1VWI2amJGNGk3S2o1UE5tOUtTaTRZSmdsN0plWEJhc3pEVzRsMTdRQnVZ?=
 =?utf-8?B?M0lvR052QlBPczZwemkvb25ORHpscHFsZUdacUpiQ0NoK21kN2w3RGxQUDVz?=
 =?utf-8?B?cXlYVnVDMHVpaFFEd005WW5iV3E3M0JjQTZydXF5ek1YTTJrTjIvdTZxQ1Fm?=
 =?utf-8?B?cCt0bE1NTmpCNkhFSFIyVFptYmZaZi9TNlQwMzRkMFplYzdMSm9BOHFRMkVi?=
 =?utf-8?B?V3M0b2RDaklDNEVvckExSUdPS1RLT3VLbGJNUU94M2pGUjUxTm5YeHVvcjN6?=
 =?utf-8?B?NDJWdUQwcGprYTVYWktrK3Y0b1pWM1FSd0RRSHJUeUxGNEp4emRiT2w2UXNG?=
 =?utf-8?B?OWVPZHkyNEoxOFhSVFpxcFJIYXppYnhsNmZnaG5wRGR4QWZSc2kwWXp4THRp?=
 =?utf-8?B?bUdnRlJoLzZVWXF2aVVmOXRLZjNLdHhzQUJ0SG5YcDc0WU5oY0s3Y24wQUxG?=
 =?utf-8?B?VmJscm5MdmNJUVg5OGR6WG42Rm8vdU8ySlBxNVkzV0lwM2pRRFdTVUd5WG9w?=
 =?utf-8?B?S3IzNlY4ZjAxSVNHWWZiV3Z6eldkTUhvbXVzTlhaWHZyUkhobVUwb1RuMjBF?=
 =?utf-8?B?MmxqZEhWOXM3eDRHZC9PRTgyWFBTL0JaQ2NmUFkrUmM3ZFBnNUcxK3VZWERr?=
 =?utf-8?B?TnJYTkRKd21USlBYTWNQQnUwMDkxS1RGTmJEYXV1WXp3emV0VWdRTUg5dmV2?=
 =?utf-8?B?RnV1Q1puRHUrNzdGRXkyM2dITjVKRGh4N2xvbEs1TW56T0Y1L0l4cTVuRzdl?=
 =?utf-8?B?eDV6MjRpSVYvT3NiSmJvaXdnQzVQb3ltam9aRG1wcTNBeEpOQVZZbkl0djhD?=
 =?utf-8?B?WDY3bXIzR0hHT1p0dk1VeEdTYWVjdW5aRmpaV05EU2hBb3RtOXZGRXBmUXdM?=
 =?utf-8?B?WGRtb2J4U1JKQ0x5MTZTWEx0d0grc0hUeU5mZFg0cGpVSTZadzZHdkNhRHhu?=
 =?utf-8?B?bncvdDNJbEE4RlRqRnBNVm9jMDlUeHMvb0JuREZ2TklyUVlSZytSRHM4SHhX?=
 =?utf-8?B?Zk42cmZLRnUzbUJPdGNzNmt0ZWluRnprM29JckIvOWZaSnljZkE0Wnpmb3Ax?=
 =?utf-8?B?aUhVUGphRnJCM2d1ZXl5bmRpSXVGR1ZSU2lTMDAybFVFY2Y0a3V2bGhucnJR?=
 =?utf-8?Q?4jKInqagLAz01AJc=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	rI4P99XWQas7rNuyKmaYGhQeKrV4AiyVggUTbaweByPAWLGEGlJaH6NGBaUMY21oUKltvskKyGzpNIQZDIKCKnGmXuwwFRlJzDsAdTRLeD9YkA4JdWq682A9H9PrkNPYRE3sSCs4BiZBdSuqg5Qf31yEo/gFKQFBcodo68ayWk6Vx6fXwDcdBqqytYnNaCaWMsXHLpkVzpGtq8v/ZvGUy4rfoSrj81JQFKIjh5qaFNn2KdFlYPsFqzJ0d/EaTj/RZ1rRFVYN54o9MZk5OGnpyXNwWQiT0AzcNW9B0FYy/bbBIguUX06Jc0tb1vaL6NQX2UIFAEuD4hCAtNLDl6njfyJ5IjcF+jEy5awZa1vgmGK6RU7pi4F0NsfZKkjynvWGUj9CSyCiyLNmmgDa47Mu5YfiGM3v63YqE+PvIiv/Ne6VNZ0PMN+7WAApJO/kZ1gM0tNPwE4t8zDCU/dGFEhT5mEJLZCkCV93ryK3V2RIBwQpwSW2y1nkwNmGzfR27xXYEqTAAMiAEjAZjOgwl6vUVc4kTSJcR6l7w4s3k5qtEmhAbZEzVGArrfmb5m3DezBqrQkw3EDlqQeW3UXaGLmN3CpeFHFWCZS/ACWmQRshPPY=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9dc5502-b70b-42c9-c461-08de5ac2a226
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 21:01:52.5865
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BI26ZAlZcroBosCRR87SDRoIpwuCnseBWC3TA3Kw/zDwBUunQRsaRHhf8YqK/tJ5rK+NoxMiIejGQWqr8YN4or6HWR8VyaAk27/pyq6EzSw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR10MB7241
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-23_03,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 adultscore=0
 malwarescore=0 mlxlogscore=999 mlxscore=0 bulkscore=0 spamscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2601150000 definitions=main-2601230161
X-Authority-Analysis: v=2.4 cv=H4nWAuYi c=1 sm=1 tr=0 ts=6973e1c4 cx=c_pps
 a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=8AHkEIZyAAAA:8 a=8r2qhXULAAAA:8 a=NEAV23lmAAAA:8 a=yPCof4ZbAAAA:8
 a=lMRswv0_w1N3aXNInvMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=8gvLZcY7Nlvl4CGD_6nf:22
X-Proofpoint-GUID: SBeVsYmxfEV3pLG5lhx5ZZPJl_4DHqdA
X-Proofpoint-ORIG-GUID: SBeVsYmxfEV3pLG5lhx5ZZPJl_4DHqdA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIzMDE2MSBTYWx0ZWRfXxLI0YqymzUDZ
 J00BgzyuXiuLtihLHx1aijWpqafvVTmhMgCnlORIn/vv6WPWHIr/zDuXcWs4vsOhtR+5ouoQztd
 55z2kb8dNwh+8cpmw/9UtJVbi/t8MoHVGAQsteSAL6LYOAy/DjbmnqtOuhv4nu64FUYXZnn739D
 yhJqc1Ro52yE23/Lx0tmkHp0Iug3v80a6MhwrppXRnd1RrYm5gTr7DeKT5x5WJDHlqkRcmjCnL3
 HwgnnvIRPN4Fz7M7sfc7FwuMoprXo1oiBTEUMFTW84iwd1tr0varYrWCwqxT1S7lWK43+fx5Y/w
 CGF2E/QQ+jwQa+JxHVrdbd5jbKJ66AuoFWpUTpf/OK1FtLvQrIlYg1A3aEZGnqwG1RSfbSfpgjK
 jNxgVfuazN47xv277RWF3/3t5DNcCE6oyt5do96W4+no2RiZGEdr9Gxsit9iH1Nyv9yyvtqcKX1
 /18lixXiUTdCQyr/bBA==
Subject: [oss-security] 8 CVEs in Cpython announced this week

https://mail.python.org/archives/list/security-announce@python.org/thread/FELSEOLBI2QR6YLG6Q7VYF7FWSGQTKLI/ announces:

> [CVE-2025-11468] Folding email comments of unfoldable characters doesn't preserve parenthesis
>
> There is a MEDIUM severity vulnerability affecting CPython.
>
> When folding a long comment in an email header containing exclusively
> unfoldable characters, the parenthesis would not be preserved. This could
> be used for injecting headers into email messages where addresses are
> user-controlled and not sanitized.
>
> Please see the linked CVE ID for the latest information on affected
> versions:
>
>     https://www.cve.org/CVERecord?id=CVE-2025-11468
>     https://github.com/python/cpython/pull/143936

https://www.cve.org/CVERecord?id=CVE-2025-11468 lists affected versions as
"affected from 0 before 3.15.0"

     ------------------------------------------------------------------------

https://mail.python.org/archives/list/security-announce@python.org/thread/DD7C7JZJYTBXMDOWKCEIEBJLBRU64OMR/ announces:

> [CVE-2025-15366] IMAP command injection in user-controlled commands
>
> There is a MEDIUM severity vulnerability affecting CPython.
>
> The imaplib module, when passed a user-controlled command, can have
> additional commands injected using newlines. Mitigation rejects commands
> containing control characters.
>
> Please see the linked CVE ID for the latest information on affected
> versions:
>
>     https://www.cve.org/CVERecord?id=CVE-2025-15366
>     https://github.com/python/cpython/pull/143922

https://www.cve.org/CVERecord?id=CVE-2025-15366 lists affected versions as
"affected from 0 before 3.15.0"

     ------------------------------------------------------------------------

https://mail.python.org/archives/list/security-announce@python.org/thread/CBFBOWVGGUJFSGITQCCBZS4GEYYZ7ZNE/ announces:

> [CVE-2025-15367] POP3 command injection in user-controlled commands
>
> There is a MEDIUM severity vulnerability affecting CPython.
>
> The poplib module, when passed a user-controlled command, can have
> additional commands injected using newlines. Mitigation rejects commands
> containing control characters.
>
> Please see the linked CVE ID for the latest information on affected
> versions:
>
>     https://www.cve.org/CVERecord?id=CVE-2025-15367
>     https://github.com/python/cpython/pull/143924

https://www.cve.org/CVERecord?id=CVE-2025-15367 lists affected versions as
"affected from 0 before 3.15.0"

     ------------------------------------------------------------------------

https://mail.python.org/archives/list/security-announce@python.org/thread/X66HL7SISGJT33J53OHXMZT4DFLMHVKF/ announces:

> [CVE-2025-15282] Header injection via newlines in data URL mediatype
>
> There is a MEDIUM severity vulnerability affecting CPython.
>
> User-controlled data URLs parsed by urllib.request.DataHandler allow
> injecting headers through newlines in the data URL mediatype.
>
> Please see the linked CVE ID for the latest information on affected
> versions:
>
>     https://www.cve.org/CVERecord?id=CVE-2025-15282
>     https://github.com/python/cpython/pull/143926

https://www.cve.org/CVERecord?id=CVE-2025-15282 lists affected versions as
"affected from 0 before 3.15.0"

     ------------------------------------------------------------------------

https://mail.python.org/archives/list/security-announce@python.org/thread/6VFLQQEIX673KXKFUZXCUNE5AZOGZ45M/ announces:

> [CVE-2026-0672] Header injection in http.cookies.Morsel
>
> There is a MEDIUM severity vulnerability affecting CPython.
>
> When using http.cookies.Morsel, user-controlled cookie values and
> parameters can allow injecting HTTP headers into messages. Patch rejects
> all control characters within cookie names, values, and parameters.
>
> Please see the linked CVE ID for the latest information on affected
> versions:
>
>     https://www.cve.org/CVERecord?id=CVE-2026-0672
>     https://github.com/python/cpython/pull/143920

https://www.cve.org/CVERecord?id=CVE-2026-0672 lists affected versions as
"affected from 0 before 3.15.0"

     ------------------------------------------------------------------------

https://mail.python.org/archives/list/security-announce@python.org/thread/6ZZULGALJTITEAGEXLDJE2C6FORDXPBT/ announces:

> [CVE-2026-1299] email BytesGenerator header injection due to unquoted newlines
>
> There is a MEDIUM severity vulnerability affecting CPython.
>
> The email module, specifically the "BytesGenerator" class, didn’t properly
> quote newlines for email headers when
> serializing an email message allowing for header injection when an email is
> serialized. This is only applicable if using "LiteralHeader" while writing
> headers that don't respect email folding rules, the new behavior will
> reject the incorrectly folded headers in "BytesGenerator".
>
> Please see the linked CVE ID for the latest information on
> affected versions:
>
>     https://www.cve.org/CVERecord?id=CVE-2026-1299
>     https://github.com/python/cpython/pull/144126

https://www.cve.org/CVERecord?id=CVE-2026-1299 lists affected versions as
"affected from 0 before 3.15.0"

     ------------------------------------------------------------------------

https://mail.python.org/archives/list/security-announce@python.org/thread/BJ6QPHNSHJTS3A7CFV6IBMCAP2DWRVNT/ announces:

> [CVE-2026-0865] wsgiref.headers.Headers allows header newline injection
>
> There is a MEDIUM severity vulnerability affecting CPython.
>
> User-controlled header names and values containing newlines can allow
> injecting HTTP headers.
>
> Please see the linked CVE ID for the latest information on affected
> versions:
>
> https://www.cve.org/CVERecord?id=CVE-2026-0865
> https://github.com/python/cpython/pull/143917

https://www.cve.org/CVERecord?id=CVE-2026-0865 lists affected versions as
"affected from 0 before 3.15.0"

     ------------------------------------------------------------------------

https://mail.python.org/archives/list/security-announce@python.org/thread/KRI7GC6S27YV5NJ4FPDALS2WI5ENAFJ6/ announces:

> [CVE-2025-12781] base64.b64decode() always accepts "+/" characters, despite setting altchars
>
> There is a MEDIUM severity vulnerability affecting CPython.
>
> When passing data to the b64decode(), standard_b64decode(), and
> urlsafe_b64decode() functions in the "base64" module the characters "+/"
> will always be accepted, regardless of the value of "altchars" parameter,
> typically used to establish an "alternative base64 alphabet" such as the
> URL safe alphabet. This behavior matches what is recommended in earlier
> base64 RFCs, but newer RFCs now recommend either dropping characters
> outside the specified base64 alphabet or raising an error. The old behavior
> has the possibility of causing data integrity issues.
>
> This behavior can only be insecure if your application uses an alternate
> base64 alphabet (without "+/"). If your application does not use the
> "altchars" parameter or the urlsafe_b64decode() function, then your
> application does not use an alternative base64 alphabet.
>
> The attached patches DO NOT make the base64-decode behavior raise an error,
> as this would be a change in behavior and break existing programs. Instead,
> the patch deprecates the behavior which will be replaced with the newly
> recommended behavior in a future version of Python. Users are recommended
> to mitigate by verifying user-controlled inputs match the base64
> alphabet they are expecting or verify that their application would not be
> affected if the b64decode() functions accepted "+" or "/" outside of
> altchars.
>
> Please see the linked CVE ID for the latest information on affected
> versions:
>
>     https://www.cve.org/CVERecord?id=CVE-2025-12781
>     https://github.com/python/cpython/pull/141128

https://www.cve.org/CVERecord?id=CVE-2025-12781 lists affected versions as
  * "affected from 0 before 3.13.10"
  * "affected from 3.14.0 before 3.14.1"
  * "affected from 3.15.0a1 before 3.15.0a2"

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

