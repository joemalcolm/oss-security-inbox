Received: (qmail 3156 invoked by uid 550); 16 Mar 2026 22:00:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3100 invoked from network); 16 Mar 2026 22:00:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=B0ke2TKmsF29VwQeivCswXOOy9T9IS0dORuNaMoN5Ms=; b=
	ON9oog2ZqXi00pfJM43aOsrLmVmfahu3VylUNdvC725aogutvtNUgTeFfb2Y9TGM
	pILws+daSh1c3dUxc2ikO0W6MHd9SJvL0PDTH7MRuUA+HkIpmnNtRa+IVLx7DN4F
	yl+q1ldUTJ9X5BTXuVm94NAv1W9PXQHuHdeBB6blvRQUefrHzFiMaCUFD/bPBvMa
	8mH8KV/tYaM1EfZs4PBEuCcIyIFj1JY8+S3Rg2fbQ1X/MkW9tJN28e/xaGXREUJs
	+SSGDZIFIUZLZahbWjssY1IrLHOk/J1YDSJNpyDOjnbxcqz66+myREFAYzmObOqN
	yOwWvhbFHhn67xNwovd2sA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Jb1SaQoAwGH5gT0NQ5k3aTDPFsBj05Uhnu3Vh2Oel7qkPaI7Por4E4MjMGZxMoHjQRJ2WcnNJQ+bWVAwLYs0lMRFX2q8ZGUx2pttzayao1TW400y6zG6Rs/zkGg2QSXC2cUBjiwU3kZvN5AZFDkMJJ0Uw5mHIGqQVi9l1oJ4cnbc+JNsJwkRVxF6Bd0f7GV+Wyrw95Mfk7ZsDau52AMGqcgxWrf7PCPvylg1G+j+icIQ+8lJsLbGeIWR9FNXzjytLSRKX11VqeUW5v975nUdp+/dDZWhgPucxYbdbB9SLv/wzf7MILIY33ywBNJzqjyXqH8GfLGhbpFTARCEQypjKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B0ke2TKmsF29VwQeivCswXOOy9T9IS0dORuNaMoN5Ms=;
 b=qggXTj7H/UPatwJ4yij/gwnhIQR6tGz58auzouJAEM70AxJ0Xb2MQamPh+FzEZXZt9jVo7hwCh2Rl/rNkR4Llp0HhNUVkolLOLSVs98uhd7aQdZBw7Cyr9Gn5g+ssMi9tLb3YoJ07yCaigldDkNG9RpIVH0Ij6xL8DzIKdEL+9xrPV3iYCBFeNaWZ04z4MSIYMLk/2A10+HxzGRURFgcQ1u0MIL3RNfmIsH8bB1XLuwkFKbIQv1uEA6N7pIdAOxxfA/1Yn5EwhpAACLWQvU5igBFoEgGj+qvLIp0w85BKc5Fr3Uu8Q5aPzSrrM4RiKSZoDIRWadi49KQI0M2GSIgHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B0ke2TKmsF29VwQeivCswXOOy9T9IS0dORuNaMoN5Ms=;
 b=Z1AbwXl9fiqCeiuEuHDLgy79jC7zXvIH2JhrJM9Bb0fZjfAODGoMSiuybA/O6OpemikSpyNv6HOAkpBiuJ4WJ5jzowzcgLCzVveGlmk0uBP8u2lxBrT7oBCl5pEs+LJljhCaVXd9MIVnBSPPYG9c9axD0FeLmrF7IsddjAMucFg=
Message-ID: <bdda9b88-bf3b-4574-856e-8db3127c5cf3@oracle.com>
Date: Mon, 16 Mar 2026 15:00:32 -0700
User-Agent: Mozilla Thunderbird
References: <CAEMnaZKyYEGunkfWwrxVG-4ohj-BfbKt3iBzkL6SVYjDCPL8vQ@mail.gmail.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <CAEMnaZKyYEGunkfWwrxVG-4ohj-BfbKt3iBzkL6SVYjDCPL8vQ@mail.gmail.com>
X-Forwarded-Message-Id: <CAEMnaZKyYEGunkfWwrxVG-4ohj-BfbKt3iBzkL6SVYjDCPL8vQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY3PR04CA0016.namprd04.prod.outlook.com
 (2603:10b6:a03:217::21) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|PH8PR10MB6453:EE_
X-MS-Office365-Filtering-Correlation-Id: 1396511c-8301-46a4-cb82-08de83a7732b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|376014|1800799024|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	3On1OV42ZSPC6Wt8sFoEjDhgn6aXRzGfi6vbptBS6Heog7H1WX3TYiw0YFkp/HK85s6Tn7wm8e+9fwedDsdFZSVkwnbfO4m0bt1OSvHRaUbkqA1gjVulBx5XYvMiTvT0HQGpMJKAOQXGMlKKZvGyFQW28HX6p0mxMGiDUaI6S05DSAsAUY2jr9UtXwVbhzDbEfNA3LdBkbKp3XQcTeZ23YIZR4NluQi+QRs/f5KjfFcvkmPNq9bFpjIiNLS1ifXPRTXchcBZwsahS6hp5W+EbL14Ng6aWJzsgAF0nSkdJhMZJ3L4YslCJisXytapFioumkz0jq/0B/HumWYABiU4uUWFTnTCeFzYUNgxh2Le53yvZhaZ/qnUiC0hrBVzyXNFtiwUQ6XbZ+XUPSDpTJ1OFpYx+OXfExc0VEYjsDMkGGzTTQqERMB4J8MywuLtvSXrOJ8k/XEm86jylbGWw29Aoi0okWA5WHk/kuQIuxfMbM4Ai9U8NcL6KyOqoJd4KzhDnVRPfYVJvT6SrEdJQHyKRwYLWdpW2Tt7eQ5MYK+7CeUkjoqQLvInXGAvKsnG5ZLcK+U4H0ZQAqecqmhepcNXl8BkO3e2374kr9/OSix4yXMBJadfKhDNkmzyLUeU4ZJdhK8lMkhm1NYKi2xpqIroekk3uZq39zJ1icT4gplhZJTt/jfzMSehU8oZOwBU/HFt
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?QTk4blYrMWRzL3gyNXh2cmVNdUlXcy93VC9EeStsMXpSUEpvcTJ0OWRYN3F4?=
 =?utf-8?B?cXRFZFprREQzbFI4L3NBZEl1SytQR25iWTZFbXBweEh2YzV0eitsaVpjTXV3?=
 =?utf-8?B?aVRUbmFISW5Xcm5Id0pqL044Q0JadGptWFprTG5PZ3RVZ2pteG8yMUFBbmUv?=
 =?utf-8?B?bnVjKy9NNDFPY0d5bXM3dDZ6YllJMElRZWQrSS9oQk1mNmxHTlZBeUVUYmZK?=
 =?utf-8?B?NzlyRmpmVGtQYVRVZGdieDJDT21BNzFVdXJaM0FZUWJTdjh6RjBjQWdTUjYw?=
 =?utf-8?B?cFJFaDhFQWk2bVhRaXNYMXVhWDFxUkt4ZktTemFxTGZKWCtYdHF6bzhBdFB3?=
 =?utf-8?B?N2daS3BuRzF1N2JyZUtxL25hNTUrbWhqRkUzU2YzZG5nQU94ZStGRHpMVUFl?=
 =?utf-8?B?R09wNVE4WVF0Y3l5R2Q3bHJ0MUdJZ0hVTFZuWGFNQzNCMXRhNDNab2dxdGo1?=
 =?utf-8?B?UVQ4a1g1blNUMTdZZDdYUVY5azdzaVdDM3NxYXl3REtMUzdZZzBsZDMrZitz?=
 =?utf-8?B?RzVwMnhDWmhxNDFCYnJyOGRqYUN4bllHRVVwUXp0RWpDQVdpNTludkgzU2Qr?=
 =?utf-8?B?TVRUaU9uU2tYbTNqVUZoeVlsUVROc3JuMUU4TGcxWnk3RG1ZTTdZK3pLN2pV?=
 =?utf-8?B?bEdFWmJ0K1NVWldTbU1qSFBZZXE3bkpLQUxoby9leXJzbG1SUk9jQitVNTFr?=
 =?utf-8?B?VE9hUjR1SU5sdWxhcW9BTXREVjVISkQvZmNWc2FEVWhXRGFjTmdVSEg4ZzJR?=
 =?utf-8?B?R3J2cUFQYW5ITmFhMmRNSE9CajBEMnFQcnk4WXVNdnBkK3RaYlcwMDNDWnBP?=
 =?utf-8?B?SXhJQ3d0VnYyQXN1d2VmV0kwNnM2SzdWU0MxYXJiV2ZkMU1hVkVtVGZmaUxZ?=
 =?utf-8?B?VllwWDVVWTAwOFpYYkU1Vmt3a2RxV1B0ZDhheURYZXVZWlBHNGU0cjUwdnoy?=
 =?utf-8?B?amhEcFdreUVoMGdnSDNUMVQ2SkRYUGV0UkZabi9qT2IvSENmbHkwYzVrK29H?=
 =?utf-8?B?VHpTcW5HcjltRjU4MUVqUTZmT2htU1JDZEJEWGxxM1Fsc0xMUVZDcUQ0a2w1?=
 =?utf-8?B?blpiOEFEdmh5TnNNeXVYQ0x4WFdvc25EZkRqTjVZcG5DVEllSjRtdGxsQWd3?=
 =?utf-8?B?OFlkQ1RxWGFQSGdYUHgwcUkwem9EeUpqWU9EZ3d2dnp1dkEyRzk2NzFYQ2FZ?=
 =?utf-8?B?dlFJdlYzU0NGdWw1T1BTcjJjT21EWnNwcWlMdmFZQ1l5eXErc3JBNFY0Q0FT?=
 =?utf-8?B?eGlBS2NFSElicUJhdmJOS201cFRIL1NGVm1BVWFPcEhIUWllMmNaREJxOFVM?=
 =?utf-8?B?aFlQYTVGRm5MSFpUZG9TL0toa0JBZXJzZ2hIZ2F0bGFrcHdGZktRYXBUc2Vk?=
 =?utf-8?B?SGxRdEhJZkZzd2haTzVBdEIva3drc296d1hDczNVd3V6MHBJb0VzN0k0aWFB?=
 =?utf-8?B?ZEZUajVnV2dqbHVLbG9mV3pvNUxZL0lYblFsVlpwdVdoR2pONWFzekh3MERD?=
 =?utf-8?B?NDh3d0N4c1JBb0dxM1l0NWhWQVI5L0NtQVpCTStwMmtDQjdKRW9SRGJVSEN5?=
 =?utf-8?B?RVliZU5FU0FxeE11eW1PZldtSER3UTlVV0hBb2h1dFdzV1poQ2xWQktSK0pX?=
 =?utf-8?B?bXZ4ZytSZFZwT1lKMTIzUml0ZUg2bXR6WE1NQnJsUzJCQTBEeEEwRjc1UkNT?=
 =?utf-8?B?aUxOdzJBZGlTRFp1YTd3YklucTl5M0ZjMHoxSG52aVBPV2FmZW9oNlFQcUxD?=
 =?utf-8?B?MDVsdHNmUHk2azQwU2hrYlJjM3hLUk5HTjNSb1AxelZnK2w2L01iMHNLYlZp?=
 =?utf-8?B?QUd4QWVxQ3JwR3FYOHhrdVU3WXh5a1hYVGdCbHhCUEx1WFMwb05zc0Zhb3lv?=
 =?utf-8?B?QXovNXpPcmxTazB3ZHhjUXNPTUMxZ0lkVzNKK3lvRklQMGFaLys5MVlNWFgv?=
 =?utf-8?B?cGx4YzBHSTFKNDFWbHpha2hoZEI4elQwYXpEY1RzYkM2ZkJBamorWHhmcE1I?=
 =?utf-8?B?NDlZL1JJbThpZ1FFd3M2dmFQNFdmcUtQRFFGVUZIOWVOUy9SUkt2M1V2MnFn?=
 =?utf-8?B?SVBMV1FnTHZDVnIzblNaQTZyYldsNnVUdU9wWnhBY0JtL2p6cWR0cVJBMFE4?=
 =?utf-8?B?eitlait0SzFqVDNvcWY2NlBCWkZKaXA5QkI3anl0QzNDNnNoeWFLcUpYdlNn?=
 =?utf-8?B?SzUydHVzUVpXdjBwc25oQTA0NWZsNWNjWmRDcEwxNWNTN3F2dTNLb09XczlX?=
 =?utf-8?B?VlQ3RnRnVG00TTlyNElrK2IzL0ZaK1V1Nk4xTVl1b0Q3SXM4MHR3bnBFbUxk?=
 =?utf-8?B?ZVNwZE45M1o5V3M0RU1yS2MrSmxLY1JJVVE1M2pJYlRJY2lIVGhIQkxYMzVT?=
 =?utf-8?Q?tkt/tPnUAakIgR4Y=3D?=
X-Exchange-RoutingPolicyChecked:
	sPptVuWDTfWC4B89ecayA7hZWjtL/5XoUwL5Iz7rAImMomsk5rxuU7R8sUPFXHxz/iFNHARFG9V6aotMKBMA58bT/faCPPOrJGMHOczEKVgv6uQCZqGVhFEJtWQnPV2EgrxhAI1kpDOp1WebaP1tD7kgyrUK5YP3DApkGclu6TpT0+sCtpvZYNja2/yPhsVdWdvjamdTqhAO1tP6RvnolPxGdZSfjYsyqc7HvA5zFIy9fRyHuBg1S4fhs+BdajEzpRk0nulSMZw0TpFnwp/WP9EHuWgD/W7a54tdVDh9JbWqtrM8j3GkNPZE2D/wZbdZlj5EVs0YIRx7mmq6FEKUbg==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	r4D4G9DKFrkztC4IbcalQcPMhFjCuDRWgpdUF0gdYeGoScXqcQiVBdl12gxXWXEyns6Sml+xCN3U2t80nVkDAh9PSsMsJotrjPkD2yUIoUSKgPT60xDRNBbrCnztkJTNcn6WMpGcedLIcA1YU8nGVcoEZMPR0HKVFFMQy5Iy/S9bxbdNW6aTTdvCpU4wPt75Qljq+Vu8+U9X4EHsqSVzxqncRUtreYr8SfOD8vdZz/ZLsHL+XCeJX4KKj9QzT0Znsqsa8EdmlUyw/EwAVS81XGiRa2ko61Nz6i1wIpZOynOevV0gSi9uJrzAsy7L8wBKuYz/BE6xKdcon95E5LKiw0udswGfb668zolCbNBJnyNbfBekOMz6J2ek+ZuN8gXe+FZ/cWeUteoK2zw/6HUfFF2fs+ZpoOcPf+vnbleRwC1ClF7pYJMUxhjsczpWQGqQyiBVMab0qYMe6B9TDzBUoY6hKyAFmxBCrxF/tkIAYZVcZJZVw+XmGRu4n6ntyEK703N+vGJAsHizvox05YNhxv+2i0paDyaU9rBBw3DrMvb+9hlopEQd+8dyIJZLAsuzb8/FXNtZ6PDECYksy1/isD5Acd1JN10UtaRuMtR5hEs=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1396511c-8301-46a4-cb82-08de83a7732b
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2026 22:00:35.0346
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ji0KKR69/v7gAe7El+/FwMpOx/7R901Z771q/nq5PqTrhMz+BxJE+iO8eFHQcRfVsC/hemEN7u6eydEJ7U5+4vpWCyBZx08DS6rhZXZ6yI0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR10MB6453
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_06,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 adultscore=0
 suspectscore=0 bulkscore=0 spamscore=0 phishscore=0 mlxlogscore=999
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2603050001 definitions=main-2603160180
X-Proofpoint-GUID: E9f-45s1BlzpwniwWoFpLIqQQ7yWc6ch
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDE4MCBTYWx0ZWRfX2k1UIQi307+H
 k0MuMVoTwQ0bWGh/a9y7BaExCKoUfEYUUK9Ae1rYgDwcLlJt4fxkQlDxnb2dMUmnvJaaARGMQIn
 oxb0XiZ6ENYO9KbpOriV0LOaZ8kpUm8ESbANgDZgc0trh2NLhys7XKjf7O8k921tVtO/DJnGPSb
 r5mfzxG4WiXdGVQQ9h+ahk4CT75g3bjNI1kijYGd/zlhIgUcJzX7MN35VM8k0R6OltDHrcxqUpq
 CQgMk0mAxiImQ17GDDpjFxZuljGk4/ULuJDGKGDQyoQDui6xUrjRU5E2Yr+v/6m/b0vmRQhNnRt
 OsCn13K1PXl+qccrj1kMSEeLK8Q0WOMDVtp7lkyqYq55raEe5VflUEX0OjMUm/PvsSS786wNJQF
 QwiIAK+09Q7twN3EylZprw4M3lGOW6MPnp5HFrsvGnsbML/6jvsONvv3/jpVBKRAdRyCYWpiBGk
 H5T/i4CwKFZKHyVJDfrVmFHnCkTK2YkCmmEsrzpo=
X-Authority-Analysis: v=2.4 cv=dJmrWeZb c=1 sm=1 tr=0 ts=69b87d87 b=1 cx=c_pps
 a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=RD47p0oAkeU5bO7t-o6f:22 a=8r2qhXULAAAA:8
 a=NEAV23lmAAAA:8 a=8AHkEIZyAAAA:8 a=pGLkceISAAAA:8 a=GPCWuYs4FI9aTS0RG40A:9
 a=QEXdDO2ut3YA:10 a=ZXulRonScM0A:10 a=8gvLZcY7Nlvl4CGD_6nf:22 cc=ntf
 awl=host:12273
X-Proofpoint-ORIG-GUID: E9f-45s1BlzpwniwWoFpLIqQQ7yWc6ch
Subject: [oss-security] [CVE-2026-4224] CPython Stack overflow parsing XML
 with deeply nested DTD content models




-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-4224] Stack overflow parsing XML with deeply nested DTD content models
Date: 	Mon, 16 Mar 2026 17:46:00 +0000
From: 	Stan Ulbrych via Security-announce <security-announce@python.org>
Reply-To: 	security-sig@python.org
To: 	security-announce@python.org
CC: 	Stan Ulbrych <stanulbrych@gmail.com>



There is a HIGH severity vulnerability
affecting CPython.

When an Expat parser with a registered ElementDeclHandler parses an inline
document type definition containing a deeply nested content model a C stack
overflow occurs.

Please see the linked CVE ID for the latest information on
affected versions:

* https://www.cve.org/CVERecord?id=CVE-2026-4224
* https://github.com/python/cpython/commit/eb0e8be3a7e11b87d198a2c3af1ed0eccf532768
