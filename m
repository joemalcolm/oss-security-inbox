Received: (qmail 32160 invoked by uid 550); 23 May 2026 18:11:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32134 invoked from network); 23 May 2026 18:11:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=Ro2vBwyni8oMLH3C
	d/0EpP+7WYVIvwNBbA/gSQhnQso=; b=d2qocad5DIUTX57QNy8XiqV0uOOYJd/o
	5vZJqcc3O5oPlL4qbtpY1UWA5eM42m4ZP4a8lYqkzMOtZnNS3j5RzNmeE76LIwji
	3soBrs+G7CrqokY07ZCNz9nEk9CBmnnUcdVeIFqtW0gHhv5y8XHeSbEyZQKM3nkr
	xXQXz8ydAtIzc3Ei4bM8H75bzth12U9nhv8BbFBMQj7RipbiYGlomH4hf5GWQTXf
	SHnGDD1AcXoh2tff0gXVEiKORlKX87g++KJFXWCoT72AaIbdg+yfTzecMQkVReUJ
	RsUiLdaQGxv3o51MJkIAW1gU8bSGL39DSyY4zF5P1gK1lKMdq5VSSA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m490ToWzOC+aYtPG6/TJsRM4RzxAbO78YIUc5LfhJnz7t0FI5XSUuYrcEDrMUyg3ztYdM+YeoO+J1XJdr9hjU0ca9ePbMFDs890UMwiRLiq9MZ6UkiuZ7TITGWip4OhqncDAWtsqTqcwK+Lya338/7V5sP+N9FXc34Fd2V11XrnkK6A4PWCSilS8yXlSys0uDqwHIQuTr3oaAMW5fjOnUM0AVZ43xAY6I1p/SQREfnz3MKbFoACZ3u5NnOpj6Lm2hkwz6tMKNX1Cbrjt5Lq5LgAtgr03E8Y2/uuHF8p7opsj58GcFGKMZ6kENUeE1p7zShxsaCk7uKIBgoErc/DJsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ro2vBwyni8oMLH3Cd/0EpP+7WYVIvwNBbA/gSQhnQso=;
 b=J5cCzjNaIGsdZMkAZTppF5knsfjL8M4lUkZbUN3m4ZR6hOcS5TYyDKRTTfp/qmaTU2mn7W7olzAftuFuEIw6kIJ9kO8LrmZFZpybZi0KISPr9Uaz+UgNk/PP3iJMJi4i7c5BvdwbxoDL/WyJ2eUHLRggkpvvndEravpIUpaDSoMqgetZGljV40ydyGQ1Y3j+/iB8z2JTg1mLcYmKq11xB/sBOOkmu4qoi4WVtwbcHDosLOPL0e0zpd/F/abhxSijo0NDefHLyU1zhSpZlb9+zx26hA3CIIC3/6WYBgZbg9T4abuzlbQxlcR5njKFxrLK1S2XzNWaN8/eZZHIiT+f2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ro2vBwyni8oMLH3Cd/0EpP+7WYVIvwNBbA/gSQhnQso=;
 b=w3ClxLXOIxumUPDu+nvHDU4tp7RaXDa14J4U/JbmZ6+XxbMoeiTcfUIpIt1/sqhuZiAO3qqtwUSWj9QQNKSRKPOOUORZbsg6Bjd+6BgsLLwnh/RCM+2EKW9/rie+PZX0LSwWSE0iQ8wsMZ9x8KIMLjYTUkTz5QxuvPCG8BhiFFU=
Message-ID: <01cf598b-4138-452a-b4f1-22cdccf3bf76@oracle.com>
Date: Sat, 23 May 2026 11:10:51 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH8P220CA0015.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:510:345::23) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|DS7PR10MB7346:EE_
X-MS-Office365-Filtering-Correlation-Id: c99379f5-cfd1-4ab4-1357-08deb8f6a0c0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|1800799024|376014|5023799004|6133799003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	svCIl641WqtFzASukCaxMe0Ky82CrLpwCDGTh4K40+qP2w0DON/GtVdGSCEs6NQKcwtFvNihUQ7m5zKv75B7quB045ufai4hChIw5giWh3IcziC18xMMMRpARq2GZOuINac5dmvlCIYlV8bkE25yB8+fhhTk5UPm6yVU5Jn7xV2S0NbvPZBxrlfMZ7t+t6WDyEgMcV9D/mBxtgQjH+G1ci4kLvjgJpHjkkWutTXKMW4mHcLKM0Sk79qIsfQ9XUq/oCBLIJAtSNx6c0KL3IEV3kKnUWA32rhMewvqgXd40A3FZKi8h/LLQWmWt2n5cVWbUIJxdYgneu5ZNhkKY0TzPQSQssJTmDwGZC38QQvM3yVL5lZL1CDYxVVC1nrIzPCR/y1x9WLNQQcjEl1CnGTE0G8HSr0vfun+T9Pxcrg/853aKOKZzvjx5blLreGklWgO0/DLEpUDpJDHkDx2BUd3gPKJ2T1TyJCtjj9JBFs3v4kvAnrYP5lbGXAa1bDD3Vk/Wv0DqA3abWueEyo8uRwKMwKv1vJr28dFT8KfaqpKRXpIhJSa7sp2JtS7GuRriGTUSvYcUvyeQnxj3YJdmNskEf46c6Od0XiICV3Fgdp+zVT9azJGP2FPqdywLrILf89sKesRpv7+Ba4S23tjltPuyJ7HCjGSCdKXu3Xmi4rKy5kXB5TVzRcMRBbvHt4VU/7m
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(5023799004)(6133799003)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Wks2RkI0VUlNMExjT2gxdG4wWXovU1JzQThwZVpzUEgwa2UzSk1odjRzYXJM?=
 =?utf-8?B?TlBhaHU3UVhERnYxT09ON0ZrcVE1WGVQSDIxbmVxcTJZWkhrSHBrMHdkc0ZL?=
 =?utf-8?B?RUFJY2tDUHRDeXczbUxFTTFIYVhPRDlRb3lsejVLQWFkNFg4aE9OUTU3NStX?=
 =?utf-8?B?MkVZcWZobHBLMHpyVEpUNUVmaUVTd2ZiYWI0U1dXTmRkVyt5RzErL3FwaFFF?=
 =?utf-8?B?cDN2cVpuWWVTOTZQamY0L3B0NWhrVVpuREFFTzlTQVo2ak50S3RPM3h5M2cz?=
 =?utf-8?B?M2tZYnoxN3YybFBkc0NEWmRpVmZFa2dmSEJaa254RGZhdHd1dCtkWDhSTVdK?=
 =?utf-8?B?K3VBNUFhUklKVXFDTkRQSTF5R2JkQzFKNHRPWFo5MkY3T2NQbHNjZlB6U1Zr?=
 =?utf-8?B?ZmVrTXgwWFAxV1psTmJsODBPMk9kSnh5a2Z6M0tNZ0txV1RnU3FyWTVaWUpN?=
 =?utf-8?B?bVkweEhMWEUwL1NyYjMzKzUySUF1YklnOE16Si9tVHY5RlZMZ3V6TmZEeW8y?=
 =?utf-8?B?blZUNzhTZEpyVnlJR3BReElIZHZyOStsQVBTMmhhTXJRZlZGWUlmV3ZPMW0z?=
 =?utf-8?B?NlowcENuSmFmOVVZaGhJcHpieVl4UDAzUnkxQkY4SkE1MlgyTU5IbjZ1bVNN?=
 =?utf-8?B?RGVJeTN3T2FETFRtM1NCT1l4RUx2K2dLbFM4dWNGY3BFTVFJWm9SWk1lZ3Mz?=
 =?utf-8?B?WWluRlM2TzlUdEFlMklpa2ZoN3VxUDhkU3dFMTl6VUVtMS9FMHZxU0ZxaG90?=
 =?utf-8?B?RjRIekhma0VRMUs0dDFIL3IrYmlZdStsSFBza0Nab0VyT0JBQjA4SVNDZ1U0?=
 =?utf-8?B?eXVQdUdxSW1JY0MvWndvWkVabC9QcC9CODIwWU9HMlBYdjVPdlM0T2MvaFZZ?=
 =?utf-8?B?ejJnZFlXemdxUmttT2RNN3JydktQQUF4REpHQkNMSlBZY0I4bzlUZzJ4VzhG?=
 =?utf-8?B?TXVnbUd0MjlGbW05NlhOcURMNWNnL0ZrYW9Hckh5MDhKSXIzV2JtVTlWSFFy?=
 =?utf-8?B?V0t2eWdxVzdUdlVWT3pTZVZiY05OSzY3YUNRdHUxTE9oVU5NWlo5Z0c5ZGZW?=
 =?utf-8?B?MTVyZzNPVkRrRVhWT3FuemRCMnNoaUtCYWszNXVUVlF3aytwd09aZ2RnZlpW?=
 =?utf-8?B?c044ODZJZk9UVC9yU05DWGo4SEkrdHRKUGdlK2V2eUVUbHBRalhzMTJFRjE0?=
 =?utf-8?B?cHlZeXhiUHU4amFUVDVwQ2JJYjNzMFRlK1c3VXhHZkZNSHFRUWljdXZQbHBv?=
 =?utf-8?B?V2ZPS1pmcVZuTVhNZ2ZJam83SklrTS9GYlVpVlJHQnVCaU45YlhGcGRKM3o3?=
 =?utf-8?B?b1Ftdk95V243U2N4ZE8rbFQ1aVdFTzBJNUZKYm5TTEViUCtqOHJDVnVlc1FE?=
 =?utf-8?B?Y2x6T2tuM1NGanR1dDRtY2xuWEx2cVpTUkJycTFHTWNtMnBPdWFuSXZNL3pC?=
 =?utf-8?B?OXlDdys3SkI2cHhCZS9GKzN4T2J1TVp4ZzhZRGVjc0F0a1o1REN6MmtQbEhB?=
 =?utf-8?B?SkxBdzNneTdwMHdqRlpZMkVQWlNtU25NK3hMa05QSVFBR1JoT3pYMStZK2JD?=
 =?utf-8?B?dmxCM2RhRkloRmJESS9rVGxJZGk1L0RWS0R5Qk5vZkRRbHp1NHZjSjJHNHpv?=
 =?utf-8?B?anpCNFlSSTZ2bkV1MlVURjJqajVwMDE5SEJlRkdxN0ZETVNDMFU2SkZISDJN?=
 =?utf-8?B?MTJVN0VENDdsN0FMRTZva0FBc0ljMkFkZTYrT3BPcUdBSmhZSjlDdHFJVVpy?=
 =?utf-8?B?TDJIejF0bThKeG9wdTdIVmlXd3dGTXVHSmFrRDRseDg3a3JpRGZqWFEvMVJy?=
 =?utf-8?B?YTZleE9nNUNCVER1aTNZem9yaURvR1FGbEtBMEhSQWJoaE1pclJjL21uWVRN?=
 =?utf-8?B?UWlNNDJTU2xaUjJ6VCtBdmtMVjNOZVlNcUlpa0RONFdGU3NwaHB3cmR4OFEr?=
 =?utf-8?B?RDh1Wi9BK2dxMHlhMnRWdllkV29YQnlndjFwNU5qWHdCT2tNdkZidU9EUGJ3?=
 =?utf-8?B?YkFhd2FPQWJZYUJlN3FYNVpZNFBna2xWNVlPaUROenNUczZ0SlNrcWt4UTBK?=
 =?utf-8?B?VFNwSWkwUW9ua1N1KzZGeGZyOS9JZFZCOWE5NFR4OHZGb2wxUlNKUzF6RDJv?=
 =?utf-8?B?c1l0MHpldzdnMFhVdFRoS3R4L2hsU1ZLUnVTT0o0aFYvL3hJMEx4MzlqT3g0?=
 =?utf-8?B?dy9KOVlzUE5pbG9FV01RQUpYclhSWnZySEJvR01qQUN6ZDNZcERtZzYvVVd6?=
 =?utf-8?B?RE9MZHZINnVoMmpZTHBnTGdxbG1XU0VJcVhUTGFhNURVTXNtV2xSbDJHcEl3?=
 =?utf-8?B?THlJVm5uMXhneTU2bm4wakhEWUZheWszOUp2d2laVEQ1RmY3UmlTMHdsdWZ4?=
 =?utf-8?Q?3SzJaiHj0hIRQFnI=3D?=
X-Exchange-RoutingPolicyChecked:
	ApOJWSY0RINv4yXBTip3SpAa/YUY+Zq8P6CkkStAcd7Z7mvbSm4TdU2Njv3nd2Sm7ViW0VQf/BFUZhEssCK/bYnAe6XfLRJ62oACrz1sRWW/P+Md+40LNPEYzlNMffuzyMjArNEJ1HRC5dRJN7gHaIqQiezGv6N0PtRZWz2baeiEVwpFYnaMlV6g+hb+/TvdoCIuhM1T86GDPh3S1LU7BOLe3r8lM3YxRL+4Eu2rLKg/pIljHBx3Ijxv22PqJTf15cS4Utm88CQIQ2ySSc9HJ7Zfxz1YNJsjPE+zBKihvSpLHMkUwUJ6LxnFHXWaxUZF9IEw9UKnGsxfz13N6lJrVw==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	ViUpQtPKvYjmZrLjfARZqsHgHhjRnoijFkAFBo2J7BgdjCePqyqlbw1Vbufgl4xa4yKl00rm7PPQjht0tGTXiS8cZDnpeW2XT9G1QcNHUwO1bl2caVWvmxGXpPzlJJVLXSOmlGUdsyQo7RuIz7QGYyFK9wYfyf1eyL4cuSt9IVMMnJ6VbyirKwQqlFSIz3A9gBTPQydndaxFB3zsG5e90uUyftTZ26kCKHjSJA7KLYDNDXYFLuztQvuFYGzdCKJx3lsdwkSpsGyAIK6LkeuhMbq19lvisZVvCaoyn4ZuzNWJEA3AEjbxyUImkr+R9rsYuZRbRmN8kiil5ctNc405vSg8HQEdAonxJtZWRpx6inEqquWNxjzAdCnJ6gjSEzxamG9AtcmHPmfF7TxCoYT2nwbWMDCOkjNzGVUcl+1+s6jSiMQSZY+AZlibnV02+bBEuYJP0RbivJtwaVHDlPazWrASRr6ZYHpKGGruWkFV4gxVL0eULTEAzDjeZGFC8KBycdG3ujsuXm7OV1gMcCflGWtGHJDUR6hkTffE3KHMcmksI38J+c9oqUlfcHfxKfeSKalaAb45MKza8g1So4stnoOqx6HAhI2Um6Evi+D6e7c=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c99379f5-cfd1-4ab4-1357-08deb8f6a0c0
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2026 18:10:53.3650
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UbzvqGOes4KFRWSLv4VgdQNRQ7e0qZmFaGwPYjSfMN3IUcTWQ5v8C71ih3PbSVb2L17XjV4nv5r61j1LJ+5j2nd9fGsel7wcGPgUtL7TOO0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR10MB7346
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-23_05,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 lowpriorityscore=0 spamscore=0 adultscore=0 suspectscore=0 mlxscore=0
 mlxlogscore=999 malwarescore=0 bulkscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.19.0-2605130000 definitions=main-2605230185
X-Authority-Analysis: v=2.4 cv=QrluG1yd c=1 sm=1 tr=0 ts=6a11edb4 b=1 cx=c_pps
 a=WeWmnZmh0fydH62SvGsd2A==:117 a=WeWmnZmh0fydH62SvGsd2A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=x4eqshVgHu-cdnggieHk:22 a=6gl_cCoBAAAA:8
 a=yPCof4ZbAAAA:8 a=SpTLhuUzgRQg0XBJMzwA:9 a=QEXdDO2ut3YA:10
 a=Bor9z-CvbNo2M6AZn8_k:22
X-Proofpoint-GUID: roKutimZDRbKQObpv5_4hwudAl3EKWWg
X-Proofpoint-ORIG-GUID: roKutimZDRbKQObpv5_4hwudAl3EKWWg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIzMDE4NSBTYWx0ZWRfX8OySq+BThRtX
 yTtHyas9OPBcWjDfPOGaZADE5lgcylH3atGrCxO6QtV4EjF2iyxJxWVzKuC7Bj7C7/3qyeg7/cl
 cmPHP++0y6J/mbRvcYFqX8mrUxHUbr6LIdJtD41f8pojP3/YT4D78W5V18tDXMIh8qWJceU8oue
 inyQiKzrOea3x0WjJ1LZG/YHeym6bsYAXXd3ny/fObwieUQV+TuebgSOV1JhTYO7ma7CABbcVEk
 cbSnGg8d8ou0MA4l+Ak+3+FkI0RrcGbDXxLk32oH4ekOLKBfQ+HXlai3kUKI4WeWwudbaO1ZuNj
 LDhBKUZRxnfMoLlEUWQmuBqFH2oyI3Ri6+ry3TXoPhM9qS3gEh24JcVQURXyfeksh/3c2nPSwCj
 A9RPOAmC6POQrDd+aVtorZ7d8nU0PKTdJqi888c8TEWXUtRh6HmAOJadeURDCMjNAi+mVR3TtsU
 v32eFIBcV/Alr3QHp0A==
Subject: [oss-security] Anthropic's coordinated vulnerability disclosure
 dashboard

Anthropic posted a blog yesterday giving an update on their Project Glasswing
efforts to find, report, and disclose vulnerabilities in a wide range of
software:
   https://www.anthropic.com/research/glasswing-initial-update

In it, they link to their new disclosure dashboard at:
   https://red.anthropic.com/2026/cvd/

It currently says:
   "As of May 22, 2026, we've disclosed 1,596 vulnerabilities across 281 open
    source projects. To our knowledge, 97 of these have been patched. Of those,
    88 have been assigned a Common Vulnerabilities and Exposure (CVE) record or
    a GitHub Security Advisory (GHSA). In other cases, maintainers have shipped
    a fix without publishing an advisory. The number of vulnerabilities we've
    disclosed is a subset of the total number of vulnerabilities that Mythos
    Preview has found, since the process of independent human triage and review
    is the rate limiting step."

In their chart below that, they clarify that in this case, "disclosed" means
"reported to maintainers", not made public.

They include a list of identifiers of their reports (currently up to 1611
entries), but do not show the project name or bug type until the project
has fixed the bug.

They also include lists of CVE's and GHSA's that have been published for
the issues they've found.  The CVE list currently includes CVE's from nginx,
jq, wolfSSL, and more.  The GHSA list includes libyang, mastodon, freerdp,
and more.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

[Disclaimer: while my employer is identified in the blog post as a partner,
  I am not personally involved with Project Glasswing, and know nothing more
  about it than what has been publicly disclosed.]
