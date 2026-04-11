Received: (qmail 11512 invoked by uid 550); 11 Apr 2026 17:10:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11485 invoked from network); 11 Apr 2026 17:10:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=hYZJKSrbVp6ak4zC
	+7Rq4/p9tSVw8YFJx00B/M7AkZo=; b=lI2oBN8hwAwMJ7vky0y9A6JbF9DX19IL
	j2YtIDMqsQprF8IXIjP8zGI0Lvs/LoVRvPuOSYgNF/tMlb3Dx//Xfv1CpToeI9cf
	YaRVtsXPJM0udtot7MGLOlGC6x61CN6dXtHsqhGLLIxOu4UwsacLFULdv1J0PekR
	duEPnNlB6P4Ebwh4B1b/URdI9Z6vPbL27qgci/9GyrAfclBSxG6nWSC2rdjmWrVJ
	8sHuj5wz9OCX7tJs7lmYS9govYFu3SDbLTwwjwEVYgxoCj9Aot1DGFxlOg09Offm
	oU/P/Q0CyRxSriKOegOh58jYQiRZBgb1TCXDaC3DpLOhI++XA2Lakg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kGDALQl2Nwyf88JLRgFvds+x9YtmRbJXgDRbGueBHaxDQ3jJmh5nTdag3fFuZU7mtF8HgCHuVxHUrryoKTC+H8hoslP2k/pXqFQHEBmcHjG7qsV/NTx+3gRfh+aQn3Hxg1DwbL8EQ7EeLujckWn63cFSJ2c9yPZKWSDAmEF6IfLBki3eeQSOXs8MHpn6jBwKhF4KaMNt8KudIYBCccaIGGIkAy+ulnrwUEKwo0AmMKG58NGeyBahXVHpGOFWTJHsHZ10sYlbhWeuBVPqYdN3y1F0uJTcXv8L1Ka+JodU1pyEFHrrZiX6lXvMRsEFRFfirjpMjM0VaeUr8tQdZwsZIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hYZJKSrbVp6ak4zC+7Rq4/p9tSVw8YFJx00B/M7AkZo=;
 b=oLgVURh928kmVwJWuAd4OgSiATOGBwQJg2UzMdX7WsaLlhQxwU6pN2epvRXgEyYAkJZZOEc3UXIduVAAhYbDuXMgvnlqvbF+XUndBSG4Ob8wm2KDcj+ZaZ8JSlzDp2jt45PwI5RyxlBj7RxSF07OdS7Jw6fcjkDsNNH4yfqWlzJjWCJJKx8219LEMM7vwQrXcI5UUIE3zTOaKY987E29+rsIbI7N30JVNfeNgkDjKNhKils+dJ8rMMIEuYxvaK5sJrlyzMMLUJUSPXjfhQu6hBpRrtqmmAZiMt+CKGnivsB4CQ3k3rTDy1UkDA/AhkAdwJMn0jTfZhOzd+SMXAandg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hYZJKSrbVp6ak4zC+7Rq4/p9tSVw8YFJx00B/M7AkZo=;
 b=bDD4jyAvVoJc+S4pBkrg2JPYuKtQaoA0k7M7S+j5zSpgDllPO4jjyX+57hDrEkz0v6kTXoCmJNurZedtTo2FDiQKKxRDVvjLCXsYWeJLuA261tyotMLI0uOMrCxiC9yv7RHUFmUaxJVBX42QdpanYaNWaxTDeb1KavDfjQ209j0=
Message-ID: <e9445380-c50f-4385-93fb-02fbeec634af@oracle.com>
Date: Sat, 11 Apr 2026 10:10:20 -0700
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH7P222CA0022.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:510:33a::27) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|DS4PR10MB997548:EE_
X-MS-Office365-Filtering-Correlation-Id: ae7ffb3e-2476-40f3-3d26-08de97ed371a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|376014|1800799024|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	agbAi54v8ftLBt0wF4hpUOh8f41ZjJBj15w+6PCBkofzC6pCa1peOKkezgP8lR9YfojY/D3sDnybz0qtbhguaRubU36j1buJnLsUGqIhXRNBjQwqsO8sZJUXgfeKzYd8iXRlHQaoQl3bC79OqN9no2GkEfVKMXp7LFCZxyH+E/ohWUSw/1uhjZVFYtFd/4joapav70J4SG5CYINlVljYOMma+NaqleTlrWfptY+UcIVvc8gje+U4J4aMg2Dftgq5Ky/pf7ggu7UDIcY5BZUM1fTs5JDuFBG8ViBVt336mFYFOFjc5hIc2TJyzK/UWE4YCcHbyvg7mgjDFoT4OCYNRVF6zyI9CgfMKbfgtwjL/mUC5/GjULTDrdwrPHT8h5En+gpcSPkMVqTD19+D4WeAfJ0VODdojsTDdpYb7dDNdi6WchNBS3tIzIzpJRWchm3OQWcJzQ6yyGfvT8PxmFdsRWXmJ76m+k9BuwYRVvrUF/k0AVycFeaVKabCDI9fwXq7x5cvi5rxZGyaDdDN1CXLlWC/6K2MFtwnK7Js2M1JyMSM6Ahwy+NmId//8nd7zk8LeFhYkF6OhQ7DJGGvRNHfXkGI+uiI5kRkki0m0ZTlLXClRV+MIq1Aci/2+U/CF2q5dK+BekaWdZOicoMWADw524NtYdBQSwN/Llh/DIP3pr2OUExRjDSrfbda6vyCznyVe0zhb8DLY73RaeK5PlTUPGRoXI+rYAGv4eo4TOZijpA=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?bG1JWTc1YlNLamFTTi9ieGlEd0RLOGttUEZiUzNYcG1XVjZ4cnYrVXlzY2d4?=
 =?utf-8?B?cXI2L2JYSGVBeklMcSs5WG4vcjdIR1VwNDRUWklXMUJpQ1htL2RHdGEwS0dC?=
 =?utf-8?B?Q2VVQlZ4OVBuZ1ZyRzc2VUgrVGhTMis1bENUd3JUWHdLM1crbXNyY0VVcEx6?=
 =?utf-8?B?aDdhZ2RTWTFHNitWZ296UFp5WE1mM2Vzd2paQk5yOGNacFd0K2NzRUVhSURR?=
 =?utf-8?B?dkd2c1JMb0RPV00xWXQyYmFiZ3JPQ3NyalZ0YUE2UTZaQjY5cFdIbUsrek1W?=
 =?utf-8?B?Z0VLb3kwV2NEUW9vN2hRNUR5Mm1JQW94RDUxWFNIelBtZzBXdnI2YU5vdTdw?=
 =?utf-8?B?V3hlVVVTQVVVUkMxanJFN2daZ2FsbTNhcy9WWlVxdEdjY1I1NG1aWWx3VFVX?=
 =?utf-8?B?WDczWFllTUI0S28rU25Qdzl5WlhjcEFuTW92aGo5NUxIOGtSWGwzUnNJWDR6?=
 =?utf-8?B?ZHJnajFnSDZkUzVLVFRWaThGVGI5YmpocGw2aHNCd1RsQmNlYUdzTGJodkxO?=
 =?utf-8?B?REpDdFpCOXl6Ni9NQ2YzRHdGMWJmZ2FySnVxK203aUhhT2piMm1maGRvK1RB?=
 =?utf-8?B?WXZlNVZaNnBqVlZNQ0pEaGZsRHNQdy9ZMHhpdmIrakFOMHJlV1NtTkFnYi8w?=
 =?utf-8?B?SjdHM3pYb01sam5XL0RCY1lBSEx4c213ak1TOHRkdlZxZlZ0M0E3cTVya2NJ?=
 =?utf-8?B?Q3N6ditBcEdOdzZsM0lyYnhOV3dXSmJpWkZqdVd5eE4xcnpiaFhMcHBxK0o2?=
 =?utf-8?B?ZldTSVhhYkd0L0dvREx2d1l4eFpXeHYzM3hnQTVWRzRybTR5TFk4OUNNbUxB?=
 =?utf-8?B?TG5SN2U3L0RZRUF0OGVZdlkzTTdydEkxMFVCYkFvdFNySHRWODMzMWF4VndF?=
 =?utf-8?B?UmdDOHJUZHQwSWliaU80ZnZiWVMzWk5qc3JyTkFSRDErVjFwb1Jab2U0VFJ2?=
 =?utf-8?B?SlFOMnM4T3A5KzRzNmV6OG8vMk1nT1pBWHluNlFESDY0UTlRN2pHSkZiRm5u?=
 =?utf-8?B?U3QxVFEyWG9CSVlISU1TSWx1MXpqYmxxd3NpQU91aWQ1cGY4cS91eHZrV3RL?=
 =?utf-8?B?clhkeEFyQ3R0NHI4d2JWQlRtb0ZHZStMOEFDc0ErOGZ6WElDMHlpSEtMUUpt?=
 =?utf-8?B?V0hkUlV6VlI3VVBybnVVQmptaUhBN0dEQUowaDQyUk1GNmlGVkRhVTN6K21J?=
 =?utf-8?B?YnJtYXlROW9RWGFkdTlCWkorN2VjYzJpNTkvb3VCQzE3YkJ4Q0tjUUpJYnpy?=
 =?utf-8?B?aWZBS3hET1pXWEdxZ2VBcXFaeXA5dUorc3JpZllTbjlidENEM3J4Ni9GYVRt?=
 =?utf-8?B?NkhqTHpZb1lUSThoTEJweHBBeEl3Tkw0OEp1OWlKQ3hJNGJ1STBCaWR5eXl3?=
 =?utf-8?B?SlZPN1JDZ0IxQmt2dW1zVDRkYkExazJKb3JGaUZsT2hqaDVFeU9WcEx4OGdk?=
 =?utf-8?B?cmxRZWp3Yk1jQmQ1MVBFcHFHU2t2T25CMkhEUmNDSkVNNWRzbnlVRWlvS3li?=
 =?utf-8?B?UVY4RmVzZ2xJZXNXNUJDUCtScS9BaVF6Tk9lU2h5ejkvQmxLSlpmekV1cWRk?=
 =?utf-8?B?a2JZWW91ams4Z1dId1hQd3ZadkFLcTkycUl6MlY0MTNEamZ5MGlUeWlJaFcz?=
 =?utf-8?B?ZjV6Qk03K0lxa0lWaFpGeFlhUEtock5nb0RxVnIyZm9MUGlTalpucUtoQjRU?=
 =?utf-8?B?aVlUN0tXTEJ6SnhzanExS2xXYUlmdUs0cUlvVXBuNWY5dW1IRXNINy90SU93?=
 =?utf-8?B?dXlwa0kraVRUYzFienlma0dNNmlCdEg3RG5JSVA1OTdpWmJkSXVGT2pYb0lk?=
 =?utf-8?B?aTNNeUNhL1plajNsRGpvZ0RZdnZwWEJYQkJWSGhsd251cFhUN3JsUGhNaUln?=
 =?utf-8?B?cEY3VmMwRXdqWXY2dzdXTHlxbGhKU0ZKQTNLSVZwRGRJL0FkNnZtTEZ1OUZJ?=
 =?utf-8?B?VHdBY1BJcDFxdVVwWXZzY0s2RVNvRzFvaFVoMkZFdXc0L0xUVmovTUV2UytJ?=
 =?utf-8?B?Mk92MWRqNWtOUmNhanhES3ZyK2o1VFZTdmRpNHNna0pVVTRpUFVxYlFFTW8w?=
 =?utf-8?B?QWVRR0d3RUN5ZEFtcVZCcG9RS0treEE1eGJlbXFFTWNkMGRlL2NwVDg0NHZT?=
 =?utf-8?B?QWFsMDJCQVYvc3FGNG1SanhOMHNYVEhkZ09SeFpseGc5KytUM3k1WlpCOHNY?=
 =?utf-8?B?QU1sL2s4YTU5UGt4RUZodTU3eGhsQWpDRFRjZE9iS1MzUmZUWlFxWU1TS09o?=
 =?utf-8?B?cVBsWFgrMHI3UHFNYW13bmt0cW1BT3E5dUEvcUlGQ0tQNUhLM3AyczNKd2VK?=
 =?utf-8?B?eDMxSGRzaUdHTFhzUytNU3ptNjYyRDRtV1RkcVlZc2hJWW5wdEwyWnBQQTRw?=
 =?utf-8?Q?olX/6bO/4AK5jI00=3D?=
X-Exchange-RoutingPolicyChecked:
	bqN2SZsZ2AqWUbZG0w/wRlNuHFsYmnVdF9JWVoKBWyvwOFuoslmfCJCqdb+7V2GccRcZQhZliQQU1q1VbgSMWu3qTGuidw0pjcn5uFygIrodSLVNHuItt1ewjJF+AwTpS9mEdQ9G9o30golnUgH6V9FML6axmshtPYwg0LiR8gMsr1ZL1rE5wdCukTcs4ANKpld+K9cYdMuaqaznfGK0Fog9g8cKekfCMNpNnhvu29cVfq79BYqHVbh1OyXEzS1YumkFY+VjZFOKTPNI2KWqlJSDSy+JvxnvjoZ8sL1l08zfEt/ItUeeLZVGyTZuinO0uue6iMJowTWxcAqD3PT7Nw==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	h/B3ZtSJLQReQciQ30ArZlmSL/9l3Hd4noY4lz/mol1sz0YnWUu0cFei4iLr//4ZkOJ3lACqhf6b3CDbQhyk3e3fLERNyNMYh58WAFwo1zsjrMTHbgcFK3HrSoZGZ6xeIejEJar3YqzjgBKNr0ofiuRHXVPsloYucYo2O0fWJuu8pcs6lnVuBOip0aLhfCWR62jsXnYt44Dtc8DsfA+7Ounkj22qxrxzuWvwsBIPbv35gdos/sf/C0jXk/pwsZvjOpSiCEgC2kd3C0owG1DEdLpIo7NZrHxv1gJNaFHm9jphyCuNSaLvk8981Fx/+eLzMjecL89uV/3H6lQ10EV2CUm2WngqnCutF8GyW3aK2ehNWqX/ufrCfP51263RykV4dNhn0QtS7t9SfU0r3ukUuEnIc9VgjKvL8JaMxVYyB0huxU6cH52z60lnQw5Msw3LDZ5XIJyBPBE2YAQB1PbgzHOYLkD660wmvIljXwz/Ocg/66xa5f8Nevcl2ALplU+H1kWEnd7HRPEXajxz2G2/hGmRBBF1TAIlv7amBpYRZEfSBehNy9sTEzxhHR6UvW4YeiKV8J7aNF+vSeW53jRdqFv0JOM3kCUQtr6syc1zj0U=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae7ffb3e-2476-40f3-3d26-08de97ed371a
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2026 17:10:22.2147
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CtPdqL2B5v0351O3ibiI7cC5oDSdSfTQB6MG6UGrYsRnlyFXnNBdzms9u5U+Dp4gtcUongffJ3/Fiu/j3xZCEIVpY+limUcr7A5AlAPY9nk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PR10MB997548
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-11_04,2026-04-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 spamscore=0 mlxscore=0
 phishscore=0 suspectscore=0 mlxlogscore=999 bulkscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2604010000
 definitions=main-2604110151
X-Authority-Analysis: v=2.4 cv=aIjAb79m c=1 sm=1 tr=0 ts=69da8081 cx=c_pps
 a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=BqU2WV_vvsyTyxaotp0D:22 a=mDV3o1hIAAAA:8
 a=yPCof4ZbAAAA:8 a=9RvbuKf4PU5fRnKj4egA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDExMDE1MSBTYWx0ZWRfX7Ec7841mai3C
 T259oPqEB03kgOaSkvFncBooYi05mLLsfcjqsaBCE6vOfX2HC63pYnIkMZkjBxPHpvPE6ChtH+c
 HAGfJSpvT/fIiWq1lVPdYK0js6KAoAKhXGi0uWJLG1nlh5zNJL1qo03jKqLp0WNjF41QHBj8vRj
 1OwsVmozv+zo3yGPbkgK7CaOe3bcl3bd8NpEA53XF5eTZqiBr1pRb8g/VUSKoRnpK8arNKJ6XDX
 B9I4xeUx9KkDzod9sRW7WNnwNnyXg/DiAAzwBGn5It3oLYQ6hCy0Ct+YgbaYQ5Vdbbsuwks3Yvc
 zL4MXlD+irWaHuN30JAcZSOWE7WZuMDSkAyxjLqAcC12JjPgXjZK0Qjh6FIjwSdR6Ab7+N2PJ2U
 7vLgqiW+vBgHUGgSKtaELwFtGTQmxJqzsb6XVzpybM7nOBnSRt7dlm+mpkCGMWZSC+nYZLswkwo
 H7eWAhffqA39Tu0KU1g==
X-Proofpoint-ORIG-GUID: 13HvKLDUvcjFtVuBP5mZz5dXNCJLFshr
X-Proofpoint-GUID: 13HvKLDUvcjFtVuBP5mZz5dXNCJLFshr
Subject: [oss-security] GNU tar: listing/extraction desynchronization allows
 hidden file injection

https://lists.gnu.org/archive/html/bug-tar/2026-03/msg00007.html disclosed:
> From: 	 Guillermo de Angel
> Subject: GNU tar: listing/extraction desynchronization allows hidden file injection (tar -t vs tar -x)
> Date: 	 Wed, 18 Mar 2026 15:55:41 +0100
> 
> Hello,
> 
> I am reporting a security issue in GNU tar 1.35 where tar -t and tar -x produce
> different results when processing archives containing non-data-bearing typeflags
> (symlink, chardev, blockdev, FIFO) with a non-zero size field.
> 
> Summary:
> 
>  - tar -t respects the size field and skips the data blocks
>  - tar -x ignores the size field and parses the data blocks as headers
>  - Result: files embedded in the data region are invisible to listing but are
>    created on disk during extraction
> 
> This enables hidden file injection: an attacker can craft a small archive
> (< 3 KB) where tar -t reports N entries but tar -x creates N+M files.
> 
> Any security workflow that relies on tar -t for pre-extraction inspection will
> have an incomplete view of the archive contents.
> 
> Reproduction (GNU tar 1.35, Ubuntu 24.04):
> 
> $ tar -tf desync_chardev.tar
> carrier_entry
> marker.txt
> 
> $ mkdir /tmp/test && tar -xf desync_chardev.tar -C /tmp/test
> $ ls /tmp/test/
> carrier_entry injected.txt marker.txt
> ^^^^^^^^^^^^
> not in listing
> 
> bsdtar 3.7.2 is consistent in both modes (lists and extracts all 3 entries).
> 
> Affected typeflags: '2' (symlink), '3' (chardev), '4' (blockdev), '6' (FIFO).
> Typeflag '5' (directory) is not affected.
> 
> I have attached:
> 
> 1. Full advisory with root cause analysis and impact assessment
> 2. Standalone PoC generator (Python 3, no dependencies)
> 3. Four minimal PoC archives (one per affected typeflag)
> 
> I am happy to coordinate on a disclosure timeline. Please let me know if you
> need additional information or testing.
> 
> Regards,
> 
> Guillermo de Angel

Red Hat appears to have assigned CVE-2026-5704 to this issue.

Paul Eggert provided a patch in
https://lists.gnu.org/archive/html/bug-tar/2026-03/msg00011.html
which is also available in
https://cgit.git.savannah.gnu.org/cgit/tar.git/commit/?id=b8d8a61b25588caca4efaf9bdd2e3f1a49da77e3

https://lists.gnu.org/archive/html/bug-tar/2026-03/msg00012.html points out
that a similar report was also included in
https://lists.gnu.org/archive/html/bug-tar/2026-02/msg00022.html
along with a number of other bug reports.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

