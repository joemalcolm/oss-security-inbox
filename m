Received: (qmail 17825 invoked by uid 550); 11 Apr 2026 16:42:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17800 invoked from network); 11 Apr 2026 16:42:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=EPCRPezb/hCrj6vZ
	xpFDdOCPQjhrnpi769YBYgCJ4sw=; b=jPs4CbKubsjZma3M8DBUXwi45h8rX8++
	urlPNfDjiE5i7agAJGTbkv7SGByXWQuOAVMw+pVdggITbK2bRhQAInvzHfuDPdti
	thhgv3j4cKzQf2YI9ivS4inMrqzsqDiWs2aPrRhBptbAswuhhDmKG15hgUEW4Kls
	jL//lL8CUtEG+nE7XqqA9AZ3rKLcR/5pRO4+EHhasqB1GnxPQRLIkP9VpT+BjsgT
	J0in7yoYUrvXiceioB3i4YdmAig7R0zqw8w70sx5gWwRUfEs9x0EDm6q3/hJCU0I
	gR4HSguw9oN5kQt7nxv8XUrwvxZNAyFvulKLyrzrEFmTumQaJLsbrA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XhleJMPqBXaejIVgwF6g7sSDp13YbUhKAMWa/sLULrKdNpbC61QK1/GHP5NoyNcA72YKKHeBuIkL2ZwDZ8By6INTQYSL9y9wj4UwNln01xFl4ROvb/J9O+6tZoVsM6BYdKivR7ixzzbmoLE273eywMe6GTxD8LOY+qjFva0TrdKeYAKZfifw4RtuAx2dAD+omKnWSrn9gjJtZ/vVA//v4cRVQDa6frmI5UQLB5JFSm1fo4Zl5a01i3hjs3OnN4gZ9GqiBJYN3RCSozFmByiqvpEcwkBYyKPVV3GNSRpSxKvZwwIOhBk5h+KLHzYlu2YrCYSAQtzmIzCq3sKGHUw/Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EPCRPezb/hCrj6vZxpFDdOCPQjhrnpi769YBYgCJ4sw=;
 b=GUie6b2N2lCJpUW5KXMPfQMPUO7puFB6AW1emSKTSL2Plxb8HQzT5qRuIcLLxY3MoM5LycRzGjPx1rjZPPjozPUdcDwdsGjykLGCoxUZ3V1Wi8Nbkilb8LHekxZ4aYpoz5mcdsclz0RXVTuBJyxPyS/0NFGGSbzh35raqJNoMi4kFANfWCou6N0/BWXvhZlxhGP1xxx9mY9iOJ9x4dI+bscm1k0XIchUISD9+gyGsZh4/uf8Q29wN3wJVf/p3d5Mz9nLeKlSgYhjgHN4VuwlZrEEBHk+T638HIWFYVkGzuPoC49TR11myGg3pLwqZfU5MdQ/vNNMHx0ICvOBhEmTbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EPCRPezb/hCrj6vZxpFDdOCPQjhrnpi769YBYgCJ4sw=;
 b=Z0kPo02aBX+MiKx98ZzmR35ghC3OulkPZtOnItujAUG0HPKxIzrZCRE+3HqaLI1Wcecwr7drr7v/t09R9YCyceYuP/RGsoU4szSqa4dYtXphzRPju7L0xQ+22Rji2yGOV1HaI6yYxux73FnQghmXb5MvxbTDfjZAAVM/iO87594=
Message-ID: <8a37ecf0-9de9-40a2-9e3a-0d1d7cacc5e8@oracle.com>
Date: Sat, 11 Apr 2026 09:42:42 -0700
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0137.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::22) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|IA4PR10MB8753:EE_
X-MS-Office365-Filtering-Correlation-Id: 21c7e043-e8b7-422b-927e-08de97e95abd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|376014|1800799024|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	SXLS4+sO+jVH1/XeSmQRwViyb3d+BRpDvmOP2w9SeS7tlSfdy3oT9GPNsBUJFeRh+Bwj+7ujd3kYH+UKXou0NbZZLqstVwzqVD/f/02Apwlgr85hoCi7O2smnopVHvk0hn6IPRDbOf8b9gFAhkgLr1PaaJCQnLMzo5gvDHVQBv50RurVlNccEI3ErzN+SUQpnDCht7B+hY+vBMF5vd7gdATPvV8QgqlLvJ1Jh8qRZ1TTkgsgWuSVM6zLME1LtdrMRr2dHQL4WONLYEicyvch2IAJY0k/kRxR0j3Y8Nq7gMC7khY0fLq0zXtvqedQ+ayYDaYi8ETaQ763YkpZ4LhHsSLD8iXfTm5cgkaF8Zo6yPWyQ56Rmo8kInCNLAdA9kg+Rf4Z0cEp2RJsYgbGf+9lN2ZD8jUwu/77jzF5YChmTKG8q7C5UlIMl/pOdquEVcvCetehNJTtJayWMO0vJfkcjkhJ8Jq5P2//ezoG/pDDEdjQ18bx/bvJeek76ktc0eJZcEe0VkJOgaFZTq9uMvR6WmdMgPjBCDSUzz3/UkkzQ+IVdRdL8Gda41tjLPmdSbAmPO0/U1ZCjuGF1NzxaoXIb/Njg9T0WtECeRZtHeuEx61h9mPEv5d5Reh562QZy1I8mOLWR0a2tGuBSFiNOmFjjUP3rKdEmswq8tFyfbMDTWE/LYewIk6QY3KcsEcREaWR
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?SVVpVDlJVUk5TmZ3NzQvdDBwR3lFQTVDUG43QjBvbHVGUS92eTdTRk5ST1hv?=
 =?utf-8?B?M3JITDR2TXpkVm1Sd3NaQUNpRHU2Y2dhVDBDZ21ER3V1RGIvZjVXZFE2OS8z?=
 =?utf-8?B?dUsrNEhBRUxBSmF1cTNIMzNzU3k5SS9VRkRzVmJVNEdUb1dRVVlkTk9oYXI5?=
 =?utf-8?B?RTBSNmZzVmpPOUxoN2ZxNlRtbmpBWmtGaStXd2J6Zm1PMGZYaytvZWlFa0FR?=
 =?utf-8?B?MFluT0hKaS9Fc3UwQlhLSDRPdHBnRGl2S255S1drTGpUM0VJRytRNEY0d3lN?=
 =?utf-8?B?Ti92dmdyRkk3cVdPblVpbjl6MGRoRktRZnZmeFJHY3EweU90NjYreVJrd0RX?=
 =?utf-8?B?QnladWRNWTBhdkVETzQ0VTNqZGE4anRiRlBpaHZNcm9OcDhPNDd6aEM5Nyta?=
 =?utf-8?B?L1MrbEpTVDgxbHFIbGtmTjlqanYxSVVMOEMwVDRPVjdSRS9GejZvWm9UQk9w?=
 =?utf-8?B?QVR1cEdCSXppRERqTFQvRkM5cXFreGVlNmtlK3RxcXRwYWdrRmRiN1J0Tm5X?=
 =?utf-8?B?TEJzNnREeUVOWUxxNnBxWWhJQnE2WDZGNk1laUFBc0lHdDRWa0lnMi9EMDB5?=
 =?utf-8?B?b1N4NUpYQlpVbWlZZUE1MWszTXo1a2tHRVBUVkJteG1OTGY3VmtMZUt4UmJY?=
 =?utf-8?B?a05nZG5kMEdHUy9vOWV5QXpDT1pwTStiOVBrNDRURzZVR3VlZmswQ25sNmJM?=
 =?utf-8?B?L25HdEJVanJ1c1NxYUFtWFFzTE54RFlkZGJ4cURZZlMzM2EzL1BEekpGczJC?=
 =?utf-8?B?cVdlRE4rMHdiVmR2d3d5QzVvSHVGTU5RWmJqZHh3SUo5ME1Rc0RHQkNBUXhj?=
 =?utf-8?B?akd3MmU5MExka29VelZYR0QwUDVNaUlYZ2wveTFvWGZhTVljVUl0Um9Sa0o3?=
 =?utf-8?B?UzR3dFFDR3N3NzlKaGR4QU45RmRTaWpvbDRtSkMyekRYa2x6QmJ2cDNsRVJF?=
 =?utf-8?B?N3dZclJnaGhHbGVvUXNuWjdYaXROL1FFbGwrS2ltY3Y1NVJxcWgvOE5kZVI2?=
 =?utf-8?B?QjZTbC9JSXdYeTNhQy9JRnFiTGYzaWlOa3pKS3FOSnFoY2toTDk5cHEzY045?=
 =?utf-8?B?MWxsSlFnWHNaejRzeElHbkVIQXN2cFpoa0s1ZXlYcHZkamVuOGRWWmMxTmdW?=
 =?utf-8?B?Q0xjT2RacFQ1YXFaWjk1WHVabWQvSFZLRFpTK2h3V0tQVkR0OG5XYXlyTTBF?=
 =?utf-8?B?cVFudGlCYk9WbDhXNklvL2FmSlpkSnpRRThuSURMcHBURGJNQ3R2ZnBSdEF4?=
 =?utf-8?B?MVRFeUxLbjI3UStkd0ZGYTBpZ2ViWGs5WVA3Wis1QUZtLzlqTWNqRFFZdExX?=
 =?utf-8?B?eitpeUVLRGxqRjZnQ1dyQ0FDdldaamg2TXoyS1FoOTJOR3dGOXp6OS94ajcz?=
 =?utf-8?B?UVZsMEVHcEYzcDRQSFdRbkVwa0k3eXhHSUh5cnc5VGxFWEpoQzlDZ2piTHZB?=
 =?utf-8?B?SWVYanhiSjk4TnFhaHNGS1NRWEw5U1BhQ1Z1eElJLzVoNjcrR2dxMTk5UWVu?=
 =?utf-8?B?Q2VmUTNEdlBtZW1udVVzOHdnalI3RDBVR2xJNWh3ZmZBWDMrSTc1eUNHMlAv?=
 =?utf-8?B?ektUN0x5N21GOExzWmwyWlJGOU1ZQWdvT05pbjZYZ0g5L3R6cjhJMU5pNWhh?=
 =?utf-8?B?NEFPNWtYdEV1LzVQUWRWUGRpU3Q4bE93ZmpJV2xlR2NERGdiUmxxSVVrL2kz?=
 =?utf-8?B?T0JBOGRwMllTcTROcjdmU3ZZdmFKdmo0YmlMdWMrakVzRHZkczBGTEIraHkx?=
 =?utf-8?B?VWlqQUlqYUhQdWcxYms5eTJ0ZUViSkNMQWpPaUdwMGFvOUM3Uk4xVVJyc1VK?=
 =?utf-8?B?VEVyYVhQSXBZNmFHYWNjeFNCK1o3WS95RzR1NlFiT1ZJRGZNRjNaaHoydURB?=
 =?utf-8?B?azVIdzkybk02QUhrd0dNUXRvUzZKcVZZWFJVNlZBWW5JczhWeVJPcTdUSGww?=
 =?utf-8?B?cDFHVHUyRE9Xelhad1dqQkZHSStaM3poZUxQa1JHcENlSG9peUpFTGluT1pE?=
 =?utf-8?B?UkRmTElJZzdwdFNtZ29sQU53cGVHRWVGUlZ5Q2dQZG9YWEVNdGRKdUFFNzNm?=
 =?utf-8?B?anJTRlFKeS9LQU43eG5xYTJ0ZktKck5oVklzY2JvTmt1ZWRacW1TK2k2QlhI?=
 =?utf-8?B?MWtOWU40WDBtNGIzUjRLMXNjSkNEeVpzY28zZ3BSYW96ZHlwMXdoUFNFbnBI?=
 =?utf-8?B?YlRpWmh0Tk5sMksra2tJTk0xK0lLcEt6MklwNVhrV1RPN0NjVUxST1U4Nm16?=
 =?utf-8?B?MDRqTGQxbVBVL0R4VW5VWFRNRURyaVFsN2hPWVkwem5LQk1SOWF0Vy9Bd092?=
 =?utf-8?B?eittR2NqTHZLbytFRXY0YkNLVUdYbEF4ZUVlaTJTSXVKOXVPM0d4T1RSdjAx?=
 =?utf-8?Q?rqHJcxDn9JDIucyY=3D?=
X-Exchange-RoutingPolicyChecked:
	joO2Bjr32OZdbjPSgBsNk8WRgNzPaVDXcUfrTi9Qh1wqIM8bCSbnoXMA3X1SZ+14kso2N9c5HDHF/A47vkx5Rr/I8BZ9eL+iA0FqG9AJYuwO1uG6MNgDKcYyBtGANFs4cj5ZN3+y0giC9ejFjVL0eaet0Psxf5EM+Iwp6HAW8EX+14G1BSCBUrG/fLPiiz0urN3s66Ouv2SCrm2zS8R8zdCBQHNdhxYXan7+DeKeffu5tstu+0QC6hu56IQ3N2pbB7jOie8P1LMnsIIh9vml4ZJTmODB5rTWVXsAlER82acPkO13Jwp/A2tjxUH6zm/gD8/MdcdbQtTyF8AezbIiJg==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	s3F1H3lZes6j5rbcldy2f/NnksYR+db6TMorjD/OsYRFVoPF/NKSGqIkuRQPuBaHJBWNH9IERVcNi/JkfNlxc+G8wG6fFw2aT7SEyPk2yemy3qEpQeLUvZrH8mFc5P04dAjjVDBfZrcRWwy4jPU1b3OsRrYUWAbgi1YVFrt8NHARjsGXAtRswz3Q1SYEJt/uU7i1/hAUm9bjhf1DgzbPXBDa4EKVlNhTDcIiCk+FVmaNuINvA2dBDfHcAZL0d6C8Z2xU6JsUmY+WAEvTHemRo86YO8E7skqkj6T31z6hlsMg4pVtsJ+/iup7VMQPlbqidlZ4nljMmiv/eVyqqHCipvmVBy4NYN4cPn5by14TnVgtgsMyr9WjnuN5AlqrBStGVoBDlw4u/+VNR4rSQANHMlyPMUxLF21j2CEZDssd8YGe0AuM/6hfsl5Mga5vrEotpRMsVeZv+Y5Xbp6sU9pZTfYWNHj8xZudRPhUd+IkICvTN6TnrQ0dHRc2/gZv4Ll9V8CpQVbodOHL6kHKio95edFlTAYlCvkMfFy2Z9SqepwNLv51CYUCZwemJluaTZGLdEc2PNnTUf3w/Uyp2soRTADAvUkeFuY2IZ4uc+FANc0=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21c7e043-e8b7-422b-927e-08de97e95abd
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2026 16:42:44.0280
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dXrufWA99k1eaAhmAY1PaFrYNGsLFk5BVg5DYjd4QZ2Tk3OyJx9M49Pw6ZWow/twkpnpAw4X/O5l+BhJ3BYJ+0yzpfdPE2UkF4hf2NGicJ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR10MB8753
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-11_04,2026-04-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 spamscore=0 bulkscore=0
 phishscore=0 malwarescore=0 mlxscore=0 adultscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2604010000
 definitions=main-2604110146
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDExMDE0NiBTYWx0ZWRfX9CO5Z92bCUey
 RtOnvCh6OstxF4J1z4T/MMAiz2gDbJQr4RLAIgYeORg61E9UGxhKnkRTG5tCC05ZBuLcVdc3mWu
 VNccnsRMgg6UvFMS0n3xbPfItq88sd+2MLZowG7lyRavQpkXC4+T/GIMhQ2f6db4f2oYmKLf8Xs
 c6lmnSkPHZ9r+fCIUL95eIlR4VUThx4Qu8KCVgbOjcb1XiENsQRmZnZdnmWIf1Y377gtqMA+lsw
 JOyegqOCQtoZsfZKwDelxp/2LtByv03UV2CgYr/SSRdI+hszFV0tmD3tFsSIR7mr8SGA37Hu1AR
 GxA1pFMmEZxnjYWeTI3nTQ5USWTrFgW6GvgG8H2o3WvOE2wghRrWsRj+r90tvQtRgYwXlDbkJL0
 ugFnleltPbCKxF4gqpnbvJMb3EiNcOfHDV+ZYWx+wlqpGT4bBHRViNGMwvSipWqc5lOIroc7jV4
 wwDtEc4OSSw7gowRFlw==
X-Proofpoint-ORIG-GUID: dfqPaJIujJKN2AHiH6S3IFn-02htSMOI
X-Authority-Analysis: v=2.4 cv=Q/TiJY2a c=1 sm=1 tr=0 ts=69da7a07 b=1 cx=c_pps
 a=WeWmnZmh0fydH62SvGsd2A==:117 a=WeWmnZmh0fydH62SvGsd2A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=EIcjfB9IiI4px24ztqRk:22 a=wGO88YFqAAAA:8
 a=NEAV23lmAAAA:8 a=iehkE5irAAAA:8 a=yPCof4ZbAAAA:8 a=g8fU9HcE4JV2OMRQ4qsA:9
 a=QEXdDO2ut3YA:10 a=dHQ1V_xo8-JMmfO0Hc6k:22 a=-KxZ1Yd7xnmzHleyC99q:22
X-Proofpoint-GUID: dfqPaJIujJKN2AHiH6S3IFn-02htSMOI
Subject: [oss-security] LibRaw 0.22.1 Release with security fixes

https://www.libraw.org/news/libraw-0-22-1-release announces:
> LibRaw 0.22.1 Release is just published in our Github repository
> <https://github.com/LibRaw/LibRaw> and this site download section
> <https://www.libraw.org/download>.
> 
> This is bugfix-only release with these commits included:
> 
>  * Limit strcat space in hassy model manipulation
>  * Version increment; shlib increment: internal ABI has changed
>  * check panasonic enc8 tile width against image width
>  * CR3 parser: zero all buffers before fread
>  * skip memory allocation checks for OWN_ALLOC decoders
>  * DNG SDK glue: check for memory limits
>  * raw2image()/dcraw_process() - check for int16 source data present
>  * Check for correct bayer pattern, pass incorect ones to vng_interpolate
>  * parse_rollei: zero input string before fgets
>  * Nikon padded/12bit: no need to calculate padded row size before final
>    raw_width adjustment
>  * TALOS-2026-2364: Fix for data size calculation integer overflow in
>    float/deflated DNG loader; Check for read results
>  * Fix for TALOS-2026-2363: avoid integer overflow in allocation size
>    calculation. Also: check for EOF in read loop
>  * X3F decoder: implemented hard single allocation limit via
>    LIBRAW_X3F_ALLOC_LIMIT_MB define;
>  * allocation size calculation converted to 64 bit arithm; fix for
>    TALOS-2026-2359
>  * Fix for TALOS-2026-2358
>  * Fix for TALOS-2026-2331
>  * Fix for TALOS-2026-2330
>  * Sony YCC decoder: check tile size; add +3 bytes to input buffer to avoid
>    possible overrun in huffman decoder
>  * FP DNG data limit: perform calculations in 64 bit
>  * Add extra huff_coeff item to handle huff_index==17 with known (zero) value,
>    not externally provided tag value
>  * use %lld format for timestamp parse/print where appropriate
>  * nikon coolscan loader: check for EOF
>  * Initialize olympus lensID bits
>  * CR3 parser: all file offsets are unsigned/64bit; check current offset
>    against file size
>  * Add Canon EOS Kiss M2 to camera list
>  * Check real color count against filters; do not pass really 4-color images
>    to fbdd or advanced demosaic
>  * Use LIBRAW_EXCEPTION instead of own internal in losslessjpeg.h
>  * zero input string to avoid compare random stack garbage with tag names
>  * Check for eof in Pentax tag search loop
>  * Fuji decoder: initialize allocated buffers

Further information about the vulnerabilities reported by Cisco Talos can be
found in their reports:

- TALOS-2026-2330 / CVE-2026-20911
   LibRaw HuffTable::initval heap-based buffer overflow vulnerability
   https://talosintelligence.com/vulnerability_reports/TALOS-2026-2330

   A heap-based buffer overflow vulnerability exists in the HuffTable::initval
   functionality of LibRaw Commit 0b56545 and Commit d20315b. A specially
   crafted malicious file can lead to a heap buffer overflow. An attacker
   can provide a malicious file to trigger this vulnerability.

- TALOS-2026-2331 / CVE-2026-21413
   LibRaw lossless_jpeg_load_raw heap-based buffer overflow vulnerability
   https://talosintelligence.com/vulnerability_reports/TALOS-2026-2331

   A heap-based buffer overflow vulnerability exists in the
   lossless_jpeg_load_raw functionality of LibRaw Commit 0b56545 and
   Commit d20315b. A specially crafted malicious file can lead to a heap buffer
   overflow. An attacker can provide a malicious file to trigger this
   vulnerability.

- TALOS-2026-2358 / CVE-2026-20889
   LibRaw x3f_thumb_loader heap-based buffer overflow vulnerability
   https://talosintelligence.com/vulnerability_reports/TALOS-2026-2358

   A heap-based buffer overflow vulnerability exists in the x3f_thumb_loader
   functionality of LibRaw Commit d20315b. A specially crafted malicious file
   can lead to a heap buffer overflow. An attacker can provide a malicious file
   to trigger this vulnerability.

- TALOS-2026-2359 / CVE-2026-24660
   LibRaw x3f_load_huffman heap-based buffer overflow vulnerability
   https://talosintelligence.com/vulnerability_reports/TALOS-2026-2359

   A heap-based buffer overflow vulnerability exists in the x3f_load_huffman
   functionality of LibRaw Commit d20315b. A specially crafted malicious file
   can lead to a heap buffer overflow. An attacker can provide a malicious file
   to trigger this vulnerability.

- TALOS-2026-2363 / CVE-2026-24450
   LibRaw uncompressed_fp_dng_load_raw integer overflow vulnerability
   https://talosintelligence.com/vulnerability_reports/TALOS-2026-2363

   An integer overflow vulnerability exists in the uncompressed_fp_dng_load_raw
   functionality of LibRaw Commit 8dc68e2. A specially crafted malicious file
   can lead to a heap buffer overflow. An attacker can provide a malicious file
   to trigger this vulnerability.

- TALOS-2026-2364 / CVE-2026-20884
   LibRaw deflate_dng_load_raw integer overflow vulnerability
   https://talosintelligence.com/vulnerability_reports/TALOS-2026-2364

   An integer overflow vulnerability exists in the deflate_dng_load_raw
   functionality of LibRaw Commit 8dc68e2. A specially crafted malicious file
   can lead to a heap buffer overflow. An attacker can provide a malicious file
   to trigger this vulnerability.

Additional CVEs also appear to have been issued for some of the fixes:

- CVE-2026-5318 appears to be a duplicate for independent reporting of the
   TALOS-2026-2330 / CVE-2026-20911 issue in
   https://github.com/LibRaw/LibRaw/issues/794

- CVE-2026-5342 for the fix listed above as "Nikon padded/12bit: no need to
   calculate padded row size before final raw_width adjustment" and originally
   reported in https://github.com/LibRaw/LibRaw/issues/795

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

