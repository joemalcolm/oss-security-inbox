Received: (qmail 3460 invoked by uid 550); 12 May 2026 21:55:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3429 invoked from network); 12 May 2026 21:55:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=LupGCpMRbdGkCiyL505Z6+k1v5d5O8Tk9vIQxYraJ9o=; b=
	fCRaltBlR2sLQJyM61v3mSPoYpU2VTNleViT7Z5W9kpXp8WuOiPNmdPJUwvMRxa7
	paFQ5Id3FANBiXtMhA49i834sFWLICZJfO+1sMYlz9R6XMddAKR9y35r1Zzl+uu7
	7EHd7dmdaL1n+UfrwyEfE5Ecj0Nk7tgxToQxlp6YW2VTZgRjI4Cs4OPQMwV5IFo8
	OrMiM1gFES4Nv5/bxtO3gznI7/zUne/sSmY7cFuWPy7yZJzzjz/X9dA5nes/u6fd
	upo7XHyldj40C9B62ADIHAYJVLpwNgLUg2DA212YBS0gtUteSrrcixbzUruLz27D
	gn/0WbvQyP10PZwcSOakQA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LCqK5je5alZseJoop3/QpULrClEPQI/s4knbgrxA9dthUaKFO1uBIZXlsYH30UAGEx9oV92DI/ANoFKP5nwqPfB/FRDJRx/BeS15D02sNtQU/znVHDIDHZCkOEAsoe3h5vVn9FmaUf7li/bi6rawdwXJS2v+UUFUirCTABVTKo3wEhtzlINgvYu1/fUOyzY3T/Vox9sZCkN7Igq5db/wYP4NgEMUcziyiAkr7Bxv2HAuovtbo8JVkvcMM2eqigoE9ESjIpg7aG3exw3NibR+LDUmiMvgSLULSrTJhnKfdri4oJbFFg3zuiZub1fSGMx74ZV0Tj9tvbUrVrz2cczqAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LupGCpMRbdGkCiyL505Z6+k1v5d5O8Tk9vIQxYraJ9o=;
 b=BrDV7kOgS2VngDb2HqDqfGla0UvK5Dvn6PAZWpi0Ky3dRXwPH5yHO+sON5orsRibyUncq0+qMjDoMLoFR3Xp31KAjMdE8AbpgYzlE7yUqSMQCfYPM4NL6hoGqazWgb3TbWoOvXP05OxsnJxI1FD4Bf9OkoOrgzIaTn6nKcFoj9pQR2vq91HWaZxOOEMVQ9THVtudSXUcK15WAWTLNYFnAGDLMWi+1sR2aeksAL3v9OKc4SuOXg2vyBjf/rboKMsW9R8/UmYZC579ApDIIUyym6kR2ylhOyxqmDNqWRFplCe/PEJg3K7gV/+JV+O007PoCjFJSVQAWfE2I8WSsiAgBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LupGCpMRbdGkCiyL505Z6+k1v5d5O8Tk9vIQxYraJ9o=;
 b=gwQu7GrLzY5Qq7FFgExEgFOlWPel7WHmAO7kY+2BqXtG/aj43mYkcEYgTO4yYrIND9oce5oub2p40uc/VXDyCtBCnGy4Au0M6R9Gg8xHd5raU+IMIMogaRb0BMkWtH+7G3IFGSq+hUyWWCxkq2em06bUFsD391RJZIgYO3D+1Bo=
Message-ID: <62acad70-af9f-40a4-ad77-2cc425a8d390@oracle.com>
Date: Tue, 12 May 2026 14:55:38 -0700
User-Agent: Mozilla Thunderbird
References: <zAy4.1778622393352992994.kk8q@lists.openssf-vuln.org>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <zAy4.1778622393352992994.kk8q@lists.openssf-vuln.org>
X-Forwarded-Message-Id: <zAy4.1778622393352992994.kk8q@lists.openssf-vuln.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PH0PR07CA0019.namprd07.prod.outlook.com
 (2603:10b6:510:5::24) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|DS4PPFFE8543B68:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a3b46a6-3c38-47d3-499f-08deb07134ec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|366016|4022899009|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	GMBhF8FKqJQ9S2AyuyD7bec0fgL2zD3CGfcbfDqT68Kvmj/XpCTykr9JBgEML8k6uJRIyn4Zh1JvugiVA6Xb2Vgw3AJIgiFUwF46/fxJNHpHIvNo9YPq8q7GrmEULaj/WEwevEZvmq25hFL8bwdxlMHsjMRSViTUpIhMhI+3pTvW6ZJ0AdOPaob6501mNdA6dE8HH7kAUo98vRebmJChau9bd+wbn4Y12FlE5X07Ek/Pn/Ly/ZPs2Qm1mhVxbMI07kUUAAFIp78b8KZ7EADcRYkTsLszBFionWodkDdhjxZ2q0In0xvwtL7sUjkL9MCYCipQiViFT/+N68iv4yO1xpGoYQMDFA4BzgVznKke7zfH6H+yJU4MsQ2xX4OGFGmTsGwHtbLPNe7gPBNq0geByiUbRkCEaU1Z4d1b1KCDYfdFdamXhziEw0iOYoZUHCdPuDgJOAgh2as0rA50UK2i/X02F99N2RwD0dm2Q2XqEAWlcD7PGKppzsOnbvY+lyeNd75NOst+6NutUQUk/BQg+b5ZI+0lZNuY7IgdpezrgqagUAC/tBOz6Zd+Z6djjHy5m2pxQwF4FP8Av/13BXCZS25EY8a/AMvpuhTX3PrGU3wshwFXgF4DdaQOlIoW4+ryKVsmX6LPYimASTBfDb29+w==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(4022899009)(56012099003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?c3RIRnh5VmhpZWtJK1h2YWtaQ3M2WlhWVjVpQ0RnZHFGQlh4OVdaNGJDQ1FN?=
 =?utf-8?B?NWp6RkIvMHpzV2NWaXNycnVGakVkWit0S1ZtQjRjVk9UZVlOVm9XV204VjFa?=
 =?utf-8?B?WldjTGdvOTlTakdKbE1vd095MFFZUjhJcEtEUDVOS0lGN0ZyQkszVVBpbzYv?=
 =?utf-8?B?UWlBMVluTEdUWXlId3B5NVcxamJBc05iRHdXK1NUWlp6TWZpSmZHNnlmMzkx?=
 =?utf-8?B?K3l6bnd4V2pwOU4wZWM3RDVwck5ZSnlhajBHTkFRQWhqR2J0TUFRd09VTk41?=
 =?utf-8?B?RkpHOGdEQ3VrV3gyV3dJL0c5YzZCYlAyZmpWS1NDQ1NaTkFqTVVSM3Z2dDc1?=
 =?utf-8?B?c1dNS1ZKNGlJSVBGYlNyWE9ralJHUVpjTCtOcFR5UXVKbWdmWHgvTzJDOTVQ?=
 =?utf-8?B?OEswaEZQeGRKeFVCVmtnVXpBZ0xRcit4eDdvZkZ5STUwZlJtejlhMkpneEVZ?=
 =?utf-8?B?eXVkZTNrT1BmWGNNU0Mxam1oZ1JtaFpMRjJkV3RQT3MrNEtKNTJad3BLSzJx?=
 =?utf-8?B?andhOHh6S05ZZHBKU04zaDl2VWV6UElTSGFkTjZ0WjBpTWk5VldtaFp0bDIx?=
 =?utf-8?B?aURnZ1lpNjliN0RjbnpqcVl1RUFXN0FKQU9vM3dQRGJYWGtLRkdEbDRoTVMw?=
 =?utf-8?B?Qkt0ck81RXlZWWdTNmx0SFlCY1dTbEs3VUdBNmd2YXlMa1g1Ung5c0V5bzYy?=
 =?utf-8?B?aVAxVHpNL0tZdmpMV3NmazBZWHViZ3dscHFIbEE4MXZtVitZNXBpbHFwUHRE?=
 =?utf-8?B?ZmNBMURqK3d5MktBUDByenc3Sllabkt3RjU0cXNMY3dpOFdZWWUzcHVVd1Jr?=
 =?utf-8?B?WXJVVEhnU1BKTXp4UTRWTm55ZW51d2FaQ05vVFFyQjRtOGNoNkdYamhOQ3lp?=
 =?utf-8?B?NlZNUVpDdzNRd29JVEtRL2gzK1d6ZHI1dGNXTnZCQWFKMElOdG8zVG14MzRn?=
 =?utf-8?B?ZGorU2QxM0UzN3VWMURqbVlKZkVNWFowVWNTSlNsdk9wSkh0VnhNYmlZSllQ?=
 =?utf-8?B?dVZrRGM2M3FvWUp1OHR3VnZESlI0K1FLYnJuTmY3enJNblZEVWw2blhuRC9m?=
 =?utf-8?B?RmZVK3ZRcHUwUGNuSmxFUjhENURibXJpTlVCTktVaytncVNqZ21jaWF0dFBF?=
 =?utf-8?B?K1BKaFNycmhMNHhyRjZBbWJNei9mSzNGVEZsYkhvcUw5dlR0ZS9LR2ZZTE1h?=
 =?utf-8?B?WGRZU3lWY01pdFV4SWg3cXhpZnVyZ2c1OU9MWWltQUJrdlJveWV4Y055Sy9Q?=
 =?utf-8?B?L1YzWUxzekFBbTNjb0JUR1F4WXdGK3YzS3VIcjF5NlNEWW8zaThKTE9ZVm1F?=
 =?utf-8?B?NVpEMktsdzFhVkFuVTZwUExBb2lSNS9ZNXg1TDN6V0Z3SlRENDcybk8xZFc3?=
 =?utf-8?B?N0Z3L0pzMzN6SWEzVTgxajRFQ1cxNlRQR2IvUkE1VjB2TWN3R0h3UVJKdzd0?=
 =?utf-8?B?b1NrQ0NtOTNhazFlZmUyeXZPaHlhREpGRGpEZ01zQVRlNitVVFJOQnFXU3lx?=
 =?utf-8?B?bGhtTHA5WEhoNVFXM1RtVEJza3FuWGNwa2dZT0E2S0lhQ3REWWJ1b2dnYm4x?=
 =?utf-8?B?K1ppTS9JZ05JNGRrbTF3eTdPa2M2a1ljZWRvQ0pDM2dESjVuaThadzhROHNo?=
 =?utf-8?B?emMyeG9QWjB6OGlNWng1MnZOZjJvYzV6czE4VERZUDB6T241Z1BIMGo2TS9x?=
 =?utf-8?B?S24vMXpXNWpnWG9BbTZmeXlTOHJUVmFBUHFMQzJCTG0yb282UkdRdGJQbmQy?=
 =?utf-8?B?Um9rN1pyMWdLdXloMXUyeFRNUXptdjFzalRBcVZVbVdjV2U4UWpVb1pDSUpx?=
 =?utf-8?B?ZTk5c2VIUnVQSXhkTWI2Slo0MU52VkpmdlJCMHpMMHdmVUVPSWprNllpMVQ2?=
 =?utf-8?B?RnlEbGxvR1hCVHlOR0RNTHAzTkVjV2FzMEdCOVBpL3ZQNHZrZHhGK09SRXlR?=
 =?utf-8?B?V3RWb3g4L2ZON2lsYmtFMWhZeUZITHA5WXZHSjQ3cnZtcUxKQzBtSjFUcFBV?=
 =?utf-8?B?aWVmU1F5bnQwOTF1TkU4eXNXdEhCeWRUcERRcWdaR2ErVlZscWhwZFpZVHJp?=
 =?utf-8?B?SEsrL3RwczdITi9UVnJ5c0xrRGVTaS9VTllXeFVTUDF2QVlSZkk2cUZHOXIw?=
 =?utf-8?B?NmE0TTVCY2trQmg2UFNwaEpGZ3hXSE9yL2lSMDlMc0NRNlFveUFlUXlnZ1dv?=
 =?utf-8?B?MmJTTlpTRGJURGthNDVnTFcrYlRDM0hGNzB4Q0xWeU1DSFJIeDBaK2dlc2Jz?=
 =?utf-8?B?Tmw5a1JhbE9WZzN4aU9mbWozQ3NydEpqN0pXNitvYW9oUElQdFBQRWdCTmpo?=
 =?utf-8?B?SDRwbkRkNW15YlBBU1hNbGJZSWd5QWRBZmZLR05HNW53SjRzQ3ViWmdXaG92?=
 =?utf-8?Q?1qq3uY0qouhvKE+M=3D?=
X-Exchange-RoutingPolicyChecked:
	Zt3Ew1ynrS6oV7BzLWfCbJmDhrTnCqWLPcbVqf2yDEdIIbVyeQx4r/hE9i7zafLk1gTNNbEIHBiCgLhtNixTzWc0oummnQx4TGsIwOH+tFapRxGgh0B3/uLRocJqzetIsQ8350iKz0d1oSNNFx0UTMgoHr6C+sJqC7FmnypOGgl4PaQOpW+UBy8ljnQ+npmb5e0t1IgASPPw3wd6hzKEVSS3DVkPPrbbhOdLedC3hfBc6B0Fbrv9OSgUMxxrvh0bMDevELe0dkDhwwDk5GuaXWmzUiReRZLaM3koH1pZm/iP1ZajmapjIMuVKPoQDnzCkijNLh5cylkrSfw7R9zkQg==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	03sExCfsrHhhYB5zh9n5SL9uAbY+TTjWRT1YyPu4MUKqY0xfNt9wET2hwEfTo97gWgSQLe32Kg/J8fXDXfIWky9oOsPA+n1XOyzmy7mzWVTfJKKXTcA2SILOgA7A/FdfuP0jqk63Tr4TXzu13Vbb/e9L0jyKcZmsUUUpe4ZDgYNodqTKUQTN1jFDPfuWIyfabS6bsnjl6/keUDl950SWSBPsotUxaEMb01FqA9IowEaFKAPlJgc56Q0ho7P0+5cmUJ9BRlHjio811D0Pgsmvi3kfwu6iDiRRPoM2qJvJoHjE4DYki2OYKCqNdX1gAhJ1785gxsUq9jgKxz2X24i2ZxE36dWWlv9It3h0im6Xvqhm4M//YrKT6aJ3ZZDH+o1MH9AdqaC3WVyzLeVfHVQTRsAfGXpLlEKJCghHJoFRE+BNIFOMJKHNZYe2NKGz+Kt9ArAeohQYW5jbnapY/IKHvjIimCx9wcDBpOpRuB9dR7te8VhES7VPPAy8TF4oFmbdJHKBacbPkQ6sXZ/awY/R/m15M2L1xrXgdJ3nJ2jESUTQO78AZ/usUJqCasrFYki7830zSG2tKM8iuSTBcxCK161IFCfSe289FbaeTspysTQ=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a3b46a6-3c38-47d3-499f-08deb07134ec
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2026 21:55:40.1477
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k1LlopibBmA9jtq7SOAOE6ySYBASRuIBfc0F+tIxDsaPj0V8xMhX0Aractyq01NYrlfdPH35PMZGTXlnlymGualRbx1I6eleJSNxfzy4xNU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFFE8543B68
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-11_05,2026-05-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 mlxlogscore=999 adultscore=0 lowpriorityscore=0 mlxscore=0 spamscore=0
 phishscore=0 malwarescore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2605050000 definitions=main-2605120224
X-Proofpoint-GUID: whr5tchn7124hG-eBzoXkMi1RgOyvIYe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTEyMDIyNCBTYWx0ZWRfX49LbqwZNIneI
 +Kc0S6ukRLOmWC6XpjrBerHhoIvH6Q9H9QksBIgIPBIYUNqfJoSrALJ4Uypz1DCU5BdnOw1edwo
 oFelxF+M2mKb+ZU/Wz2nYgR8dXhAJueYUSXuCFZw5JxplP2pLd3FuqJFv6jXyJMUfwuv3FS2gSo
 FBr79EvGsucW/izYhZeU9hIZGHApo724B1uWiVZd5tmbMNS1sPOOr+YwnZwkRI/YBLMjDLRViDB
 jd6P+icVGv8nR4anYI7Ho4YCmpuQKFIBepvHsWaHw3KArOrd/XFUghMZEou6MG+miXbDZ3yvMF5
 QCxEpvSGvEk3wWovReXwpM5s7rp28lGqoiPXrNnrJcIcY3zBqFQ8dpC7uXLTfGP/P9WQFTpXCh6
 1g+wclZKguehyeEpPQNT6Z0pVIB2fqFIWyyW7Bs/TAB0PHPgRtzeXBhm+qhn+OG0Y28bDsHglM3
 Ua1tpIsbl/u5epuWhNQ==
X-Proofpoint-ORIG-GUID: whr5tchn7124hG-eBzoXkMi1RgOyvIYe
X-Authority-Analysis: v=2.4 cv=T8a8ifKQ c=1 sm=1 tr=0 ts=6a03a1e1 cx=c_pps
 a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=GoEa3M9JfhUA:10 a=sWKEhP36mHoA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=jiCTI4zE5U7BLdzWsZGv:22 a=RD47p0oAkeU5bO7t-o6f:22
 a=Q9OsIELaAAAA:8 a=hwmTb6FkAAAA:8 a=pkkcXxOoAAAA:8 a=QLcvo1IBAAAA:8
 a=tAT6ZDrQAAAA:8 a=mE7JM0AAAAAA:8 a=NEAV23lmAAAA:8 a=Cu-DniiCAAAA:8
 a=ag1SF4gXAAAA:8 a=yPCof4ZbAAAA:8 a=sZOJXb5DNpEmXA7vGKEA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=hijkYCPsXXSMtj_wSbGK:22 a=HInSN7hDVDahi56Kq_0i:22
 a=jAMuRctr5IgmYw10ewXv:22 a=RzNUdsAQ-ru6qNZnpkRj:22 a=KQ3-mpzFtE3qZQqjQDhv:22
 a=sjx5D4xYqjbV_PqBlxw0:22 a=mZTanLkVpptnKrpl3vTV:22 a=Yupwre4RP9_Eg_Bd0iYG:22
Subject: [oss-security] Fwd: [siren] [Security Advisory] Severity: CRITICAL -
 Malicious Compromise of OpenSearch Pre-Release npm Packages

While the below email only mentions OpenSearch, hundreds of packages across
NPM & PyPi were affected in the last two days, see:
https://www.wiz.io/blog/mini-shai-hulud-strikes-again-tanstack-more-npm-packages-compromised
https://socket.dev/blog/tanstack-npm-packages-compromised-mini-shai-hulud-supply-chain-attack

-------- Forwarded Message --------
Subject: [siren] [Security Advisory] Severity: CRITICAL - Malicious Compromise of OpenSearch Pre-Release npm Packages
Date: Tue, 12 May 2026 14:46:33 -0700
From: Christopher Robinson via lists.openssf-vuln.org <christopher.robinson=linuxfoundation.org@lists.openssf-vuln.org>
Reply-To: siren@lists.openssf-vuln.org, christopher.robinson@linuxfoundation.org
To: siren@lists.openssf-vuln.org

Title: Malicious Compromise of OpenSearch Pre-Release npm Packages
Date: 12 May 2026
Severity: Critical

## Overview
On May 11, the [OpenSearch Project](https://opensearch.org/) Node Package Manager (npm) publishing infrastructure was compromised as part of a broader npm supply chain attack campaign.  While the incident was limited to the JavaScript client repository, compromised credentials were used to publish inauthentic OpenSearch prerelease artifacts containing malicious packages.

The malicious packages were identified and removed from the npm repository as of 11:00 p.m. EDT on May 11, 2026.  At this time, the impacted versions are limited to the following prerelease packages:
- 3.5.3
- 3.6.2
- 3.7.0
- 3.8.0. Anyone who downloaded or installed these versions within the described window should immediately follow the remediation guidance in this advisory.
As an additional precautionary measure, the project has blocked all write permissions on the project repositories until all credentials are rotated. We estimate this process will be complete on May 13, 2026.  Based on currently available evidence, the activity appears consistent with tactics associated with the broader “Mini Shari Halud” supply chain campaign targeting npm ecosystem projects and CI/CD publishing infrastructure.

## Affected Versions
### OpenSearch Project| Version | Published UTC | Published America/New_York |
|------|------------------------------|-------------------------------|
| 3.5.3 | 2026-05-12T00:47:39.185Z | May 11, 2026, 8:47:39 PM EDT |
| 3.6.2 | 2026-05-12T00:29:34.210Z | May 11, 2026, 8:29:34 PM EDT |
| 3.7.0 | 2026-05-12T00:42:29.686Z | May 11, 2026, 8:42:29 PM EDT |
| 3.8.0 | 2026-05-12T00:43:54.445Z | May 11, 2026, 8:43:54 PM EDT |

## RemediationAny computer that installed or executed these package versions:
0000 UTC 12 May 2026 / 8:30 PM EDT 11 May 2026
and
0300 UTC 12 May 2026 / 11:00 PM EDT 11 May 2026 should be treated as potentially fully compromised pending forensic investigation.  All secrets and keys stored on that computer should be rotated immediately from an alternate system.  The affected packages should immediately be removed, but as full control of the computer may have been given to an outside entity, there is no guarantee that removing the package will remove all malicious software resulting from installing it.

## Immediate Recommended Actions
Because compromised publishing credentials were used to distribute malicious artifacts through legitimate package infrastructure, downstream consumers should treat these package versions as trusted-channel supply chain compromises rather than ordinary malicious downloads.
Organizations should review:
- CI/CD dependency caches
- Artifact repositories
- Build pipelines
- Developer workstations
- Container images
- Software bills of materials (SBOMs)
to identify whether affected versions were introduced into development or production environments.
Organizations and users should take the following actions immediately:
### 1. Isolate Potentially Affected Systems
Disconnect affected systems from the network
Prevent further communication with internal infrastructure and cloud services
Preserve logs and forensic artifacts where possible

### 2. Rotate Credentials and Secrets
Immediately rotate from a separate trusted system:
- Cloud credentialsCI/CD tokens
- npm authentication tokens
- GitHub/GitLab credentials
- SSH keys
- API keys
- Kubernetes secrets
- Signing keys and release credentials
Assume any credentials accessible from the compromised machine may have been exfiltrated.

### 3. Remove and Rebuild
- Remove the affected package versions immediately
- Rebuild systems from known-good sources where feasible
- Validate dependencies and lockfiles before redeployment
Because arbitrary code execution may have occurred, simply uninstalling the package may not fully remediate the compromise.

### 4. Review CI/CD and Repository Activity
Projects should immediately:
- Audit CI/CD workflows and automation credentials
- Review repository permissions and force-push access
- Inspect recent commits, tags, and release artifacts
- Review npm publication logs and maintainer activity
- Rotate signing and publishing credentials

### 5. Monitor for Secondary Compromise
Watch for:
- Unexpected outbound network connections
- New SSH authorized keys
- Unauthorized GitHub Actions workflow changes
- Suspicious npm publications
- Credential reuse attempts
- Persistence mechanisms or scheduled tasks

## Additional Recommendations for Maintainers
This incident highlights the growing trend of attackers targeting software supply chains through CI/CD systems and package publication workflows.

Projects are strongly encouraged to:
- Enforce least-privilege access to CI/CD systems
- Require MFA for package publishing
- Protect release branches and tags
- Eliminate unnecessary force-push permissions
- Use ephemeral build credentials where possible
- Monitor release pipelines for anomalous behavior
- Conduct regular audits of automation tokens and repository permissions
Projects aligned with the OpenSSF OSPS Baseline are materially better positioned to reduce the likelihood and impact of this class of attack through stronger controls around automation security, secrets management, code review, and release governance.

## References and Additional Information
- Snyk analysis of related npm ecosystem compromises [blog](https://snyk.io/blog/tanstack-npm-packages-compromised/) - OpenSSF [OSPS Baseline](https://baseline.openssf.org/)
- OWASP npm security [best practices](https://cheatsheetseries.owasp.org/cheatsheets/NPM_Security_Cheat_Sheet.html)
- [GHSA](https://github.com/opensearch-project/opensearch-js/security/advisories/GHSA-27f5-xjrr-q9ff)

The investigation remains ongoing. Additional indicators of compromise (IOCs), forensic details, and remediation guidance may be published as more information becomes available.  Please share this advisory broadly with downstream consumers, CI/CD administrators, security teams, and affected development communities.


-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#8): https://lists.openssf-vuln.org/g/siren/message/8
Mute This Topic: https://lists.openssf-vuln.org/mt/119288087/8539914
Group Owner: siren+owner@lists.openssf-vuln.org
Unsubscribe: https://lists.openssf-vuln.org/g/siren/unsub [alan.coopersmith@oracle.com]
-=-=-=-=-=-=-=-=-=-=-=-


