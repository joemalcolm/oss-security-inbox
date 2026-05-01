Received: (qmail 16184 invoked by uid 550); 1 May 2026 18:58:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16151 invoked from network); 1 May 2026 18:58:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=2+f2Bm1UOTcoaQNOib/CWuzSvf7aNfNaoNg+bm3KaYI=; b=
	hL2f3Xnts7UHtnzIH56D0sHZJfDxpb9QHtyAIjm2CEXx7vI83NK2Fs9FdPmjyDQr
	1skSKLBo7B4qJ/gkiGBJ35R/wab0yXWrXvej+szfJG7GOA6GZsZ7w/i2pKIdFxVc
	AsZaGbTiegteiNvw6xoBKBxIjZZlCwGBoNC1dFKLOySSMbMKebc/VmIavZPt/tWc
	gs/WRGTTjK2caLyIvwtWOZV6noXpCMuhx9hDgDU8T2R4XSrMpJP9EUAdFPjIzBJM
	4oDiSOAfAWgFFZiwGOxQ6UmMXE4/cLmtD9FlMhHiukFJlGT0TI/9ChIpkzVc+YvE
	SMnV/QFrrWtHmgMAKHjujA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CpS+8+HGGAVs6B4CIvwZE7lQVKJUuw2e8tr38844c29ev0p3kQh1Z9XQRAeeW3pmK8pMhPz58DcvBuKh/Bii6FyCYAJsb6dfKHT+AKYQN27YRSde+FzDrr7U4ICdXKqqtfySglpq3d6WsHe8Y89kP8/Xk8I36N7FEEZankqfzbdQpL0g1kdUe+eFJge5DMVmbg63kVJHMpBzoLt4VzTVRjf6lpWQzZyYXp6fOtq9/bASg7nMRJhIH9byDve9NrVFhsJyk1uZKzFn4BSzKq8lk9dJVDoKWg08q98eylNolUxB0IJSAIZXHGtrfJ9WwD+Bc3SjfZOQIIx7C+mQyIICnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2+f2Bm1UOTcoaQNOib/CWuzSvf7aNfNaoNg+bm3KaYI=;
 b=V62ixvn+CwlvmfwZRYnax8BdLt+zHGwhvOmMioHGUMVTkOcve37LNW6cnRH6R/ePBJaLV+nHTRyiT+WK94oRR82Usz8bF990cn4FTPXfv9cXNb4CBY08G+QlFi/WuQBC0NVS1TYpQHhAkZImwbR5DgL03giooVtBnhORJNNGJlwiCPvkV4CxyD7vtSonn9K/aqNT+jyyjpFyOMlzNvH/rySj0pFPcAHguOKpNTkw3BeuIGhk+1cYWeQTc8CCTk1hGJOl/QJ81QOe3s/mWud5coG5aFkNBaWTz4jJ9RkA+D2P6JsmUSJZbZy9kZ5NwSjOqErrst4EbPkE6Hbult2ASg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2+f2Bm1UOTcoaQNOib/CWuzSvf7aNfNaoNg+bm3KaYI=;
 b=EzbfbuBfGijiFhqoy62dAn1xoMENDd2XhogHW4mnfTZ2iKy+fxRUTlCXDE0QOL6C5dxcl+qqfe7Wmk2UFrZzdAcfp+91/u0UleKGN/NOSJTtz53aJUQlz2D6F+hWagW3mlu+HmWTCvqxGaVIvryXudYDkbD1ymEaGg9Y+u+Z9yU=
Message-ID: <e514a606-9729-4968-badf-675906ee4196@oracle.com>
Date: Fri, 1 May 2026 11:58:30 -0700
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <afJorKIje4O6dXbH@netmeister.org>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <afJorKIje4O6dXbH@netmeister.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DS7P220CA0082.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:8:259::16) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|LV0PR10MB997687:EE_
X-MS-Office365-Filtering-Correlation-Id: 5b714566-3986-476a-e8fe-08dea7b3a4c1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|366016|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	XVylGh5PsYDzDwPLYxTI1/XDP/fQzKoJrZa/4dSoogtmBm7a61VJavZtbZi/1ZfEyll1AZP3febNBnXFvzs12KYoJwoYMyf3eLzMujWxIPudmAHalZCy7jLM1NL/KCfV23tWaA4P/lsg/oMpgpj0XbK9VMbFskhCKJJfJ7d36vxjZVnPiYGNg6bdy5rBYQ05xapCt5+FJLcD2ODymhpM6MUBdSQ/Ugcy5GaRv5hdb7skvAP07Y2hvG1KV28xWUUWPRLFFqWRr28nqm6AXvbrwE9L3ly4+MQ1r8ceS4wlP1FZp1oWjqFrr55oJX9+YyysmNqKgUX/7V+fARhI70p2P7pWnoOENsJZFuAb7rOMVMtOknfvyMW0BGp5VVrxfDa4+Q+baAGMDy8cTbTeag50mRYqy9H3QmuZckxzdXnrjSApzYF+3PxhROYTrfVQBOo/tHNKRHt8r8X+yGZnSpqC9Dpx0qvZ/ETPT0c9B8UG6LWJde29jTqFpN6iyNgXEsB9hJ0RPg/NNNgZxMUx7srjdLO0Sdtr4wCxO3DSTHofclaKWuMLKi9QGoM2xxAFYM/H3IrUCEe11jMkes6tNuPVhqfRQVnBAtA4mZa0VRKcjz2V0Wsn5UM4rlA5zFqOrRkZmjn3s/9O9Bow7wQ3b5dMNQ==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(22082099003)(56012099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?THJheWxoMGtrNCs5amZmTWlaaDhSM3M2eEZHdHFjczlVSGx3VThmR3dFM3Bq?=
 =?utf-8?B?SnFmODhvRDJFQWpaQndNenpVVVdqaEw3L3M1MEVIaXp5YTgvVHo0OWV4R3V2?=
 =?utf-8?B?VTZrMjB5Q09iUzFsa2M1N0JJbHhhbVdMakFIdlZSb1B1Wmk5UFB0UXJkc1Bj?=
 =?utf-8?B?M0prbGEvL1llRDZYT2xoYlUyTVpub1NCSE5rYUJ3VU9SeWVaTUIxaXgrMk9Y?=
 =?utf-8?B?Rlc1MDNIQ29McDcyVnJzZHgyN3ZobGViL1JzNXZqYjBDaktxWVladVhtYmZW?=
 =?utf-8?B?SzV4dWNiclhFTEpjQ2xSYmZKVVljazh2QkpOcitnWEMyempxWWt4L1dSUi9h?=
 =?utf-8?B?TWVzVFAvZ25RS0hUSEh0T0xlY3FIdDUyb2FzVkdkRjliRTd5NTJuQkxOTEpV?=
 =?utf-8?B?RS9NZW9GTUVtRTdKYWwva2RzR1E1dHI1SlhQbDdiOElYd1ZtNGV0UFF2ODQ2?=
 =?utf-8?B?bDJpN2VZS2c2MklCOStuVUZjYjd4VWVuR2VQS29lYUd5ZXRRRkFWcHRPb05n?=
 =?utf-8?B?K1BxVHgzaFdSYWQycURDdlFINTJTV3ZCTSs1LzJiUmlVOVBaZW94RzNlTCt3?=
 =?utf-8?B?d0tvbkd2dE1TRGhvKy9QU2tpTWJ2WEpzcytIdkhHd0JNV1ZzT2hvM3kzSlJM?=
 =?utf-8?B?STM1M2dCNGx6RE5BM0wzMVlFWWtnRGNqeStlUzk1Y0N3NWhzZlpaZ2xTYU42?=
 =?utf-8?B?NkhsK3lPY1B3R1FLMVZ4N0s5MEZIbmRyMThrUVE5ZE95blhqWlB4QVRJK2pj?=
 =?utf-8?B?M2xLVzBLZFFObUtMUmFpUXRWSml3ZGZnYjY4ZkFINUIrdHg2NUJWTmo5Z0Fv?=
 =?utf-8?B?Yk0vUFhwT3RkeTJlNkgrOEVheFp2MHFTTk9LR0tueHYvUGg5LzBUemhtendB?=
 =?utf-8?B?N2RNQWtiYVdORkliY3gyOFN0b1NzelVhOFM4RzRSemJBTzZISzJoRm03WFhr?=
 =?utf-8?B?SWFkUldkVHhrNWdLbjRiQ2VBZElFTi90YThJbmVTbTRyaFd5RVJ6UzNVeWR5?=
 =?utf-8?B?eDZveDNIb2RRN0RyZHpQeTRlQnJNdlppOGZySUhhalovNGE1Z1dZZ3dER1d1?=
 =?utf-8?B?aFNQbTkraUZtWkV2a0tPUE9xN2grMWExbzA2anh6Qml6TEROSm1yWmVkb0hS?=
 =?utf-8?B?RnloVWFPdHU2c1hzd3lJQjJaYjErMi9oYWttVmU5ZVhyOVhpTkJ3VFJMNDBa?=
 =?utf-8?B?L0tRdnJNZld4UEJMcEdWTDJyTW5LeEtkN0Y5M0Q1RGlrVkFJVnBMV1d6SHhP?=
 =?utf-8?B?RmZ4RjRtTENjMVVHd1VMeDFsTXhURTFZd2RxUktYTVh0azdpTWtGd1NDc1FB?=
 =?utf-8?B?bWs0VHlOUjdva2Q3cVFHVEUzUDJpUHNPUG8xUTcrOStMZmN3RHZ3cGJERkJp?=
 =?utf-8?B?dmhZYk5OV1NUMGlEYStXZUZaOUhGbzA4YWhnQ09yNU43Y25Nd1FsSTFzWlJK?=
 =?utf-8?B?QnVpd1phZ1VlVHM2b3lCYkpRWkhXRUZkVnBKbHFYcE4yeFl1MFd2Z2REcGRH?=
 =?utf-8?B?L2h2c3A5SE1tYjMrWVh5Qm9jcVg0aEZRLzM5ZHJueksxWlJiZE5wU21Kdktk?=
 =?utf-8?B?bVpKSXM4d2s4VHZPUGhKeGg0QjNPTTBxc1BxOWxpY0poVlRvVjFCek90WEZn?=
 =?utf-8?B?NFlFQ0krREc0SmM2Z2pQSHdvdkdFUFk4QmlhNWgzZW5CRVdqcHpGN29xSkg1?=
 =?utf-8?B?TW9HNXQ5dTQ3WDlpeEFYaEs0cllpOENZdUM0Um9NWXRhMDBRcjNib2NJSG5M?=
 =?utf-8?B?c0ZzaDI3SDgyRDdSRWNDMFA2SDM0UkhoSnRrWkVEZFpOdVdqbDlJZGp2STdl?=
 =?utf-8?B?S1RpSGIvNFJ3VVFZYWRHOXBxcjlFanpra3VLRDkwdDZVN3ZpSkcwQnBVWFpo?=
 =?utf-8?B?d1FoVlBqYTg3WkNXZkI4MHU1eTJ1Z0FQSFpITERYdFdpUVl4ZTFiMC9Hb0Vz?=
 =?utf-8?B?b2tEYkJ1ekpxOElIakc0Q1JOK21taE52U2U4ZDgxbll0cXliYVNDOXdXTFY1?=
 =?utf-8?B?K1JzSHptSFFpeW1yRC92b1hnOStsb1ZXOFNtSWxsbks5OHBmcGd5d3Q2cEJj?=
 =?utf-8?B?TU9qM1QwSmN6UW9MU2FSNndINjhUbkh2ZFluV0lmeDBaRkZqcVcvTG5VQmk4?=
 =?utf-8?B?VmlYZ3l2OHNWeE9DU1BTZ2lkVThNcURtOTMzdjZnamVoZlJiOTZrZWkwRFhv?=
 =?utf-8?B?cEZqcVluanBSejZZS0tqdXZoZklNYmlRQjJnSFQvelZHMnR3RUVFYnAyZnNz?=
 =?utf-8?B?TzQ2NkFsUUhsT3hXczVNY0pLckJNZno5UEpqemo5YjhhVDdOUG0zZ1dJMVk1?=
 =?utf-8?B?ZHRjVEhqNXRHTzBSS3d2YUpVZHNyQ0lFb0t6MTdXSGFVaGZjV2p4NExTZ0lj?=
 =?utf-8?Q?FT/aOWgOIk4Z7aOo=3D?=
X-Exchange-RoutingPolicyChecked:
	CBCyZBMeIGdsjz+TnSPxmBOo4mRExYIfy4ka4vI97ZOwrkmN5vUw5pxuD26BaeTSwwaeqQhgbhCywWCVQlRWJi3JWRyYA1jOVDKgDpOTMDSXnU69uPluxsXA0yTj+8lwlTW8WWP4amYGGNhAppLHD/KVqDWcqQMs69eEtPx5YrkuGVFWqbrQaLnsuCEfZ5pwT9Pun6BInayoOnsqmIa45BWx31ndY2mgBDpsIsRcOYmbVtNud25h2CadMOrOo0OGayGLb0TqDa8pbVo1AIURippd7fBF5eCfS11sQra/F5OgkJBW1RrLn8Tvdw6RCBmIHKbNokF/7JBNTeTe9i7obQ==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	NSxSOQ2JentJKCtii9nXlmRsPzFvhn65bLJ7n/pry/T/85aVmQSpDm6S0wOOkLN3766a3Bkz49gKupThNXVxNoh5jeQmLRTFgVluto4oDXM7DwhozliiKzEz3nvn62Zu495xCjLiFCby3cKIJzOx5cO3iL9LNsghAE3duzXs38WJZXhPn4rWc4Vcf1YBaWb6dc8SLFstl1KyrbK4AdO+ddWFvD93iO47S9qEfzSjfdSPVXEdoXRfK914r+QzPZ9dlEZb+1mwy+YX4vMeNuaxBH/t0Aan+hEQclWBPLtk5W5OboG6CF97C60ODjRW5VscjpHe/SmgsFlL9a6kf5vnYFW/vJjgwfjgR8bmY00sgNAYTTQcfVPk1BeaFh29ZY0hElfv9/bxjWNAJrqidd1jC3Ex0CFqcMM652mBflIGMRIgVdr94H4DGSnV+zIu5wJLgC9tl/TGvGuvaFcHG1PQ/RrJoyY9W7ed7/SxPBfPJXDOiN72QCdgAesRhY0gmKxsqAb9fu7ogZUeVmxeDjkbMWcYjstcL51219nLqRhQ6QNphMUiKP0vCNLy0BlXAABMWZtZIboVqb/yU5ssJYXznf5iXS5w38bdIBWF+sgHTHo=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b714566-3986-476a-e8fe-08dea7b3a4c1
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2026 18:58:34.0393
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yz6zaBRZDRtN0Oqmqyoh/seKQqEKvrVLgm6tf11Goo6Lk03l//gsV6o2PysKPWiA/SHwKFJ1Jo9/FZWgJK8AoD8INvWwnqfixebIh/2q3dk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV0PR10MB997687
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-01_05,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 mlxscore=0 mlxlogscore=999 bulkscore=0 phishscore=0 lowpriorityscore=0
 malwarescore=0 adultscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2604200000 definitions=main-2605010186
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTAxMDE4NiBTYWx0ZWRfX5MWAhsW7pvUA
 KuhNpBCVdpAvv+CljY5tSGYLv2rCZJ9CJbuejtq95llAz3qBwSUsztUUV/1gqvuB0Pq9ldHtmFe
 TiMycvsO/KSCV4ZTmNbLkmJ1FjRc1LK4ST1Vvjz4GIpKJu6ycL0B4VcpOPPUkI1oomdKbe3WVji
 q3ICLoCPcF+1MSU/tPkkJNkN5MW1DnV4WBlHvNtFCEZR031GvM5qqLfQlne47jT/QgNyKJ/j/03
 IEdkcPMkMu4c3N/7bcRnz6RLVZoZZEwne6cRIpAx1WR/9JJZ/vXneAV6LelDFoa9RB2YHX6+mnZ
 Ht+7NtqQ6XxadrXjrd971s+JvPc9oH20mKAKqiuwZHWETb6Vyw+xNmTazWg7FZ7HeQxifVX3JSI
 IgbNvJSmrh4ZD5eT2lvcKhK7nEzIsTqUQTv7r15XYcBlsRSCbuCs3f2++7NxFRGn1j7QyjPxa7/
 ru2zBjtmenu+461J8+M4XL+P9cYcFt45JcV9Q6AA=
X-Authority-Analysis: v=2.4 cv=QO5YgALL c=1 sm=1 tr=0 ts=69f4f7de b=1 cx=c_pps
 a=zPCbziy225d3KhSqZt3L1A==:117 a=zPCbziy225d3KhSqZt3L1A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=3I1J8UUJPc9JN9BFgKH3:22 a=7EYLHn_AAAAA:8
 a=yPCof4ZbAAAA:8 a=qKvdFQFFEZD3KZsAh5oA:9 a=QEXdDO2ut3YA:10
 a=GH8-RhGAYbb3X_7dexbv:22 cc=ntf awl=host:12306
X-Proofpoint-GUID: 7YatBhT1gno68XyCkWQGezk1yQw3OapU
X-Proofpoint-ORIG-GUID: 7YatBhT1gno68XyCkWQGezk1yQw3OapU
Subject: Re: [oss-security] CVE-2026-31431: CopyFail: linux local privilege
 scalation

CISA announced today that this CVE has been added to their Known Exploited
Vulnerabilities list:

https://www.cisa.gov/news-events/alerts/2026/05/01/cisa-adds-one-known-exploited-vulnerability-catalog

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
