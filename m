Received: (qmail 25893 invoked by uid 550); 4 Jun 2026 16:07:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25825 invoked from network); 4 Jun 2026 16:07:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=dI3///NmesBy++oDxHnazzss8OgIZKgIqjJCbJqZlJU=; b=
	XotskNW1D7FzH9ectePMTMzkmJXqRA6unzjiO+zDZhdIBIgbTgAXRkiGErR6BC5Z
	Ky/zQU5QMc7qlxPjHXtr0KjQAnXFOlXaCyUYl/4VP0auma/rpgr7fipB2OKV0YEb
	xbAKv4VUmvlAbeGKwNEXAkfycZePcoSYdJuir6bkksrLmm5PUL1NORz1WBg6dWLz
	yq654KMfTgwnDWaYGHCUP36u3wscREhUeCDb2aPi3AwZZeIVLjpNpWvs1Ks60mO2
	juhjFfeXe4niePUZMQshEvJo15aEW5wbo5SJlZoNCrzBEo8JASUjgdyZl2AzT6VS
	OmBClLfhfUYzxhm3DvSpqA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SscAffqa6jb/Y5d1PzXE+U+D/hmELZ2vEU3z9MN5i/wdLXn+CxpmR+2n7CfVtbVMrOTMDBmogxSlX1OfI6yysGmcvkjFKVAcUznWUEHbzjsmcxr3JmcuW2CME1S0nTn+lk+lr2FMcPzZZ/yhwRnAu1fMLweQKy90TT4I8PRORR8zVPupM54fEB3CO/XsLL1zpl4qaz0cCOSCZNihdalRNXNQDZXKZTCKhemlmHrSMMMSTvH1KNpS9sZsqFNEVgb27j5QrVprIUGwQbdrfI819E04Q5+Y6I1e2DPnrh8yO3kqfUUJRqK4MN8enBvMlaK2Kci/4NOK2GdVmwERf9axqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dI3///NmesBy++oDxHnazzss8OgIZKgIqjJCbJqZlJU=;
 b=FtdbyYqn1nnbUI2BNHXpawbkLkElOY3h4fBu0m3euLsX4kZi3xXweuCxGCjIKA7uwnYuRsy3RQ1fBZz2eqyLdP79JVp+Mxlo9qnRKzoVxormKA6VSVhhAqz6tmONBvN0K8RvP1gKuMjKdKvs8kr/GhVeOhHFDZwbgJaK7O6y1Gt6LJBpSZWIhYNXlaALT2Gllcw8OHtVT1G/DKLnmcb3EUlkP2M6SToPec4AnLDwhhsl5Hg6iPMNHKHm5dT+4NYfkdmn+EgrXDo70vERzHMtcw+F2xY1FuG3UeiseS2c3FNWbHW3Rec6MKOBKnVnxN6HrO65oF+Qa1uHEnXj8aQcmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dI3///NmesBy++oDxHnazzss8OgIZKgIqjJCbJqZlJU=;
 b=L6NS/UwXoZuzDtRNs9Ta/ZXnvEtMhDewBiZ6qlx2zHwdcJFGiKdccHj6R/MkavUx/fUAUacg1sq9Nac1tIJeziijvma9IJiwkTHlxK6zQOoWUO28oBcB/FcGBswc8ydILfpkRT6ZusMVX/5PZO0QyeIVpYK10g07MLpJGyz+/aM=
Message-ID: <307ac224-eea3-4fe5-b3d9-59abe951adb3@oracle.com>
Date: Thu, 4 Jun 2026 09:06:45 -0700
User-Agent: Mozilla Thunderbird
References: <CAEMnaZ+x35W_gFxZyTp6UMo9cSgnw768=7ZciftW222AVRyeSg@mail.gmail.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <CAEMnaZ+x35W_gFxZyTp6UMo9cSgnw768=7ZciftW222AVRyeSg@mail.gmail.com>
X-Forwarded-Message-Id: <CAEMnaZ+x35W_gFxZyTp6UMo9cSgnw768=7ZciftW222AVRyeSg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY5PR03CA0028.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::38) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|MN6PR10MB8021:EE_
X-MS-Office365-Filtering-Correlation-Id: e17b7127-1fb3-4899-eae1-08dec25347cd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|376014|1800799024|22082099003|18002099003|13003099007|56012099006;
X-Microsoft-Antispam-Message-Info:
	OKxZ6qs5BsDfaZ/ATxQw1eMHY/GaQ6m/nVW4FfeW9AYGtwatAAliYD2QqNneHKz8KQ7upUkSLqxC2wm0CKDP2SsgkET28AlJ9IC/QxZL/R5mAOkmNuTCSuOTAffHCOj/hW+7CUkye9JnUpkswTn0jPpS3+zvtPDWRK6cL8swO6pjnVaB4ZavMO+5gGaW2ioNyrWzRMENTonKdA6sLzH5tGtgPMZAUX4rkAwsRWtpqZldmtb4oiIO/9aCw7XCyEASZ1Z4KIY5zUS6SWf/ElVIF9Sg8yba8PT8pssVK9sG5YsPHu8Df915+kKno4KgPS1g39Duy9XhTxrODMhG7H8qxQ5nL0HFKtvWeLQbG9ZkpAnGkoRiA8NwVML8rS+lHM6XBDH5Vr+Xxvwy/DUIt2MrgjZ3QHz6PMGJIrChBk3+dfRcttqwNwTfllJoEZPlzACkFLBdi7UKHSUvS8Cl8F9vBjjNluMxQqcm9PapRGKCGjdqt71G54DRxy4mDcNeeJe5BAbHzjEHQV5YPkVNEkV5Kdq+3nyRR1N9ZAKvRADfZFIgzF0jOIR1nmzDJTeJ+U6u4JwAixH/p9Y4XfcaMTfcXeVm9FnPwDe+HDqiNGdpyXxeDeTBZR8oDxy5ZKYP0jFClrwAEIJ0VAYVZMnhxHXpYxZt9eSQzsiQIw5QqyDu2hEk7uiHB9hdjnTKj3Se0KRlyhfx7yxX7cFycYoYlX4Ccg==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(18002099003)(13003099007)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?SFg5a0NmSnZKS0lVcWRZN3FvMFQ4T04vM01RaTZ3aVovOTU5aHZ1YmxsWS9n?=
 =?utf-8?B?Z0M4dDN0cHlmT21leU5SRVY2aEdXZVBZT3Vzb3hMMVAyS3JDSnI3dWhwNmZt?=
 =?utf-8?B?QzRzQ2liV29XL2l6M1hnd2xkcm1qNjNKUjJOelJWOUorazdxeThQbG5ZV0Vp?=
 =?utf-8?B?d2x3K2xreGpScHpUc2doRklDd3pCc1Vac3lHREpYc3FhNi94NlJlM2ljUGsz?=
 =?utf-8?B?UkFsS3pEWlBndDlDS2lHdEdDTll6ZzYrYXhCZHdmSTJwVXpQbWVQUEhmK1Z1?=
 =?utf-8?B?dDB5U3owdFNrM0g2OHoyWHRmK3JLcXl6VjJaL2c2UkJpMWMzK3kyUEthVWQr?=
 =?utf-8?B?OEJNbEtlQVhwb25PZ0RROG5zQmhHdFlWWHdnakFwd0JmaWVTZTBDbTlyU1pi?=
 =?utf-8?B?YSt3VnJiWmtxUXdPcDBJWndraUZDMk9SaFNsNFI1VzRPSXNkT3l4d3ErWXBl?=
 =?utf-8?B?REY0bU9jbW9HZHVXS21TSFlMRFJnb0VXd05IeC9tNGJYU2ZoRzhYc2tKbHM3?=
 =?utf-8?B?VTVIbmdMZlBpdU8zVHBYTExrREtQMGJMNTF3V21hVXNuTFdNVWs3SGZ2LzMy?=
 =?utf-8?B?VStRODJTYUpCU3Z0OHBSTnEzdzdabTZabHJMUm1GUkE4b0VsazAxUmFJYTZT?=
 =?utf-8?B?SEI5QlI1VWlZazhDdlo0YkRsYndPbXJQSXBFTEd3RlI1dEFpRlljYk9NdXMw?=
 =?utf-8?B?UWlHRGFpQ2VBSCthaUZYdzcwRVlTMlplN2ZaVGhrLysyb2NJOW94WFFYbFFE?=
 =?utf-8?B?TllPdDZOKzM0RGtGbHZxSzVhVmZlTWFFUGtaczdLMnpPbVJTKzFvQlYySGhP?=
 =?utf-8?B?dGk3cEZpdzV1SnBUZ1pGc0FNMmtSRTh0Q3RiSFRPODRYSHVvb2loc3paK3pU?=
 =?utf-8?B?Zk4zT0Q4Uk1xNUtvM2F1VFZmUlZEZ1hEYjlSNHZvWitEN1JpUENBYmhvWWp0?=
 =?utf-8?B?eTBMZGY4eSt2c2xkUFJuL1YzVWJUTkdrOVRtZjY3UnBYRDlDMW9oRmVuOWMr?=
 =?utf-8?B?d0h5M0dueEVBRnZRem0zbHhWUU9PSVZXcFRXUUl5RjZTdGNtY2VkSXkzZDZL?=
 =?utf-8?B?VXJPWS9Ldi9GQ25oUG1XVEYvenF0Y1k1UWlKbDkwd3RWS1ZUbUViTnB6TU93?=
 =?utf-8?B?elRTc0RPeXA1ZDhFUUsxNG5RT2xNckc4TjM2Z04rdk50MXhBb21HWHBBRzdR?=
 =?utf-8?B?Mm9FRmdBa0VFdUd6RE9CSUo4enJndlVsMG9reWg1KzQxYm9HNGlvMW1xUFFH?=
 =?utf-8?B?QkRKR0Y0K2VncUtYNG9vQU93SE5CZWZMZmlHdkNBSHBVRW4wSnVIREMxRk5K?=
 =?utf-8?B?VitRRGREdy9lQytJMVF4RVRtSVdNSUFQWkxWVHVUa2lSeXZraklhVitVVThT?=
 =?utf-8?B?VnJHVmJzNnBWR2c3cHN4cElFTXRNck9rYTlhVGtybmxNYUhpNlNLZHh2eFY5?=
 =?utf-8?B?dVQ3Rll3K2p5blIyYW9VbkZheTM5NHFqSis3aUxhemV0NHBEVmUxaTFkZnNM?=
 =?utf-8?B?b1JaWnpyeHBpWnRieHdmUjZpa3REMTh2MjRvTC9OU0gxRytjYmJ2YWxzbitT?=
 =?utf-8?B?M3dKVGdjZXNXUDlxVG9UVDVEYjlIOU5EUTZzYVorckpaQXp6MmpnMnA5RG5V?=
 =?utf-8?B?UlB5VnZGR1lsNHA1WnJMbGV1ZFlBQm9SZ1JLSlkxQVBFR253Y2xHbDg3VThN?=
 =?utf-8?B?ZUpTVi9vSVJibFZscko1NStZb1FVbk1kRDhMVVF6VklOZnZpa0F3WWZoNEhl?=
 =?utf-8?B?cTJTZ2NDNFhNSXJsOTQrTTIvaE5QQUhyblhRZ3FIbHJtK01tdUR0bmNpc2Rl?=
 =?utf-8?B?bm9XWlpuMDhTeEZDMkJ3RDhpNmZUS0pBMjQrN1JuZ3p0eldjSzJwS3BVeEI5?=
 =?utf-8?B?QUhPQ2Rra2JmKzFoWDJBOTE0UEUwNFJRZHh2dGMwVXhlTGRWMEo2NkpWd3Q1?=
 =?utf-8?B?NmZ5bHVlMklJWTRyYWFsTlNyRTY3RTVQMkd0U3Z0MktDdWNNUk9VZ1lPVEdi?=
 =?utf-8?B?aExDQSswSzJNeTBUMzhkQzhLZjVNdTRVY2Q5Uk1uUVdVa3FYR0kzQXZRREp5?=
 =?utf-8?B?Y1ZWcFZ4R2VaZ3kwdlM3MjJ3V1pWMWdmTXdLaDRRcFRLYTl0Vk5kQ2w2aW5N?=
 =?utf-8?B?SU1TWjZubjFVVVdiWTZkUmk4aXZmWVArR1JJdXBRc0tycjgxci9VdmQ0Vmky?=
 =?utf-8?B?VFNoWTNUOFVEc1RDNlErei8vajlPL2I1ODI1RnRLV3lNaEVxQ3hFRW1nT0dT?=
 =?utf-8?B?cjY2TkQwTm4remMxUlBTSmlpY2pGR3R6cUZVR0E3a2NJdmk1bTNOQVBWeGhk?=
 =?utf-8?B?U2FES2tiY1g5dS9wcHFNVlZ3bWg4VmNORWF6WVZ1RkJJSm5WTThCY0graU5r?=
 =?utf-8?Q?PzaF0hwFg5MNr5S0=3D?=
X-Exchange-RoutingPolicyChecked:
	dHVowcfdzuCugspQbqKrJbNvYdYxh1NY33z8gLxQgbM3a1wK4tyaMIaxEdOmUm45jQ16qUsHwNjyGebgfOhqtGz/a3dep3VSaAwOCJ0S6Cue802CNHYJ/lbHASF39T42oYZXDgg8NgS4hnax/hNYZE2K213jTJbau2NvM6PXK5DAGXxATd91BlPTtpi8BFgN7CLC3EF/F8cdnWJGzypTZhQB9SCUuuKPp1cNzNfeyok3V5ceDwZOc2U+5vzQKklEawMm8GuBP3XJLvbHGktFLLxzAwtzSKMWCsAqs7ekHbMns8gVPARX7CbIPSsxztjKaw3xWyn1jncRFRA0RYsZ9g==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	GRLbEiEMI4LjN27cPfjR0kHwbocuiBGQ35KBZ1Fvzsu4XcTzhwW3clTJ394QRxXiMmM71bHS3lE9W22B1qT0OrZd3jb+IQtEu7rBAASBczDoBh4mlte7WBZ0YHCzporRrq60cjtcCdCNl7kYPGSISAG2mEm0g3+3GwXOWLUek/DB91yBNQDrNwl9jqKBYDzUIJdtlcWLfFjVV0eOu1TMMq37tLFQvtCCbjN8+bkcI2wq2DapIFhVweyzPANLz+Ig5t3/hADDLx55x1xeJiKqeseA/9bmeD1aJH7DvZqGn7PTv5LxrU+18/UlqCy/JQA+YczGyP1ILQVSm7b5++1cLX+s5Y2Ax9ntiWXHt2jOTIIQBQqvRnIDpvakntSss4DfiCW90qfCQT7Si5rQS9CGoI4UH5u2oMjUxFJ+3uCksbKrXQ+6TL/l3jprs/EH1QetUsj9YkcV9EkUI7EgZoeTGcJn6JrOdocBumCP7rY9VgV112W6b1klnAq3jqi1owlaKK5+SguMb8oJmk1Q8K3HPgUuP20ylcgXQvUk24Qd4nCZxo99PtQpc0YCGeNRWom8umP43kI+1EVegox0fNV6E7lROg6s80ba9t1jdLtIPCI=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e17b7127-1fb3-4899-eae1-08dec25347cd
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2026 16:06:47.7585
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 87va8xOuAI2exA+lGZbJ/qUIKi/KGx1vvHrcejGngKMseP7Fz3NivBE4nMhI6TiU+8mUyzuDyGjsStLoDkMq9G17bqQfX2IkShCyY4Cg4Zw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR10MB8021
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-04_04,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 mlxlogscore=999 bulkscore=0 suspectscore=0 phishscore=0 spamscore=0
 adultscore=0 malwarescore=0 lowpriorityscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.19.0-2605130000 definitions=main-2606040157
X-Authority-Analysis: v=2.4 cv=I6dVgtgg c=1 sm=1 tr=0 ts=6a21a29d b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=FelO9ux0wxsA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=x0eKOSpe3m1H3M0S9YoZ:22 a=8r2qhXULAAAA:8
 a=NEAV23lmAAAA:8 a=8AHkEIZyAAAA:8 a=pGLkceISAAAA:8 a=MyQXTHYxtqds-Uw_A1UA:9
 a=QEXdDO2ut3YA:10 a=8gvLZcY7Nlvl4CGD_6nf:22 a=5yU3S35YU4bGjq-dph-N:22
 a=Bho9c0fBagfJEIQBS7DQ:22 cc=ntf awl=host:13723
X-Proofpoint-GUID: SX7i7txyBWHlROJDkPeJ-U4BIgf4Me3u
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA0MDE1NyBTYWx0ZWRfX64IJAD1UolWC
 cw2Qb0NWa/ZQO/T276IeXmYYAaa1zBb7LCW0GPJgJxI3n13bjjA51MXXzssnOxWOfCw4BmUQhm8
 HgQ+LIYfHyGMJAXa5BhRhO1crj0ymnZrLELIf6EhWzHe3u9nJ5XresGvff5nsvydt2b0AoixF4Z
 FAC20XXNcVDLzK6VTx98/xo6J/KGEkyo2fmVSxs3tjHxHt/DFXsTHfEK4nxsh8BR+EQ1EHL5Rm/
 dAxthc+WhlfPu91nkWUrd5gAgq0g4K0c1/QciXhu7v8FkXp+/DNXyO2LwNPQwu8BWSfiNyO/QFG
 UXaUOd6q4flEoCEyqb/CL1FSEdUMOVyL7I9DawrByx1ckX9L5+CqH8/GdIcA7f/4uQlzt3oSeUW
 zCzDfx7rX94ndbW9QrH2+ZIg88du7t+I0tW5lnqf7kNsKIKdPfNvL91fLRWCUeGMTfakkLnhdZG
 fvGxVc4Q5mQzhIXCdcBb4jh3H6LTgcDR2nxxdSwM=
X-Proofpoint-ORIG-GUID: SX7i7txyBWHlROJDkPeJ-U4BIgf4Me3u
Subject: [oss-security][CVE-2026-7774] Cpython: tarfile.data_filter path
 traversal bypass allows writing outside the extraction directory

https://www.cve.org/CVERecord?id=CVE-2026-7774 currently lists affected
versions as "from 0 before 3.15.0".


-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-7774] tarfile.data_filter path traversal 
bypass allows writing outside the extraction directory
Date: 	Thu, 4 Jun 2026 15:12:43 +0100
From: 	Stan Ulbrych via Security-announce <security-announce@python.org>
Reply-To: 	security-sig@python.org
To: 	security-announce@python.org
CC: 	Stan Ulbrych <stanulbrych@gmail.com>



There is a MEDIUM severity vulnerability affecting CPython.

tarfile.data_filter could be bypassed using crafted link entries, including
symlinks with empty or directory-like names, to redirect later archive members
outside the intended extraction directory. This allowed a malicious tar archive
to cause tarfile.extractall() to write files outside the destination directory,
subject to the permissions of the extracting process.

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2026-7774
* https://github.com/python/cpython/pull/149487

_______________________________________________
Security-announce mailing list -- security-announce@python.org
https://mail.python.org/mailman3//lists/security-announce.python.org
