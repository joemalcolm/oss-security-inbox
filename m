Received: (qmail 17485 invoked by uid 550); 13 Apr 2026 22:18:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17457 invoked from network); 13 Apr 2026 22:18:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=tGVO/Jsbt05zouiaZJx9cmpAUoF60AqMwOVoCB18sjY=; b=
	rF6wxyqJCLT0g2Uy7rYf2VIt8lGY5g/8bhwpVqRyYee6NFDEaSlK656hXsAnYsIN
	LTIhFGBQ9Ck9XlaIg7JIpW9UvoNb7xdPKhTKdLwmwr70LHIspx+7WJzZKIquk8GM
	1nSxXgYr+nfa1JPfSigKpXDIV2y7PQ07C4OKVqTvIU4QXKMbKl/K3TIJ2viBy5jZ
	khK+39djF0ORcKUcNknIsIYN5dq5jOOblo5YS6DDyoLaZ2j8O4RCYpG0gkMRMM4e
	79dnHwkbuX9DWB+Nnd9FysvFqyBXFjmbQvVBIPYbLBylCWvlCg9r8sci1MXuXUxg
	4unw1uq3SWTU3l5zty1uDQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oDHKY4IKcs2DO8v8tuxSa/ttWDi7vEFskZ4maILLxnXeyMkspIeVOidABM8jfcvxgUhK8/01KY2Tn76tDsur+gr7/TNjkTHvfjrs2vM3RmKhWXMSYQc841HO/F/7ZPzmuifbstY4PDWLq4321wMdMCCIhXRLPpZbmQN429wVZOwjJ4Yk0CA8GeEDm7Qu42LdacfTvLfnznHpiQPrM77KCwlAObt41YgjcyQdGXFovhYVFDRopUn84542FmcRVEC/MsVcVDWsYKbDfUmTZR7kqp69pDditbDp1JP95kwH+dSPCRlW0+R5HFUm3JIMmZ03bBXpOdaxABBcRoOO/vvPqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tGVO/Jsbt05zouiaZJx9cmpAUoF60AqMwOVoCB18sjY=;
 b=LP5kLMJ5rnPc43sbvcAijmQmzu87JIJUSB10xNHHOwS7d3MI8ud5z4r0I6ch5u7LIiPpfGgJYgGQ9ShMAwdRkiqO46XVUxh7WgBUohHFtMvjZKJX74/Mh5yiV6qJJ/lPypxdSdS4nFTWJCZwFB9uq1RrpdXpBveOJxVXsoCI5WVOA9Ifx3spGloZgyNAzVi6VHNCHmjSszMoy4d42TX/fX4PTd0LlDPTdgdnejPqjT9mf6/v60JwiJLhHGHPKwDbdTFQWYRHBXEA2K4yzL+vrt1avPoBYi9tJP3Z1Cja0Ch8UFC08hnyNXY5GXLL6Y5bGW4xcSxWkkEnE2DDoK2g6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tGVO/Jsbt05zouiaZJx9cmpAUoF60AqMwOVoCB18sjY=;
 b=WzNIOmmZnkqtZy+0QmNQZ0AV40hu3oF0grTxrChYjACBD8E5AQ4FU0PEcnxY7ORiaeRDcPkd+SfklJLXoWYQ25UWnv8W9bQOok+TioohzJvscUsAjTWtgk7+t1bwt/Edg045cYFY6Qbfoqlf6qBIgdUj05SOsSV35NntwASzNdc=
Message-ID: <e053dfa9-848e-465e-bab0-a7553d512716@oracle.com>
Date: Mon, 13 Apr 2026 15:17:48 -0700
User-Agent: Mozilla Thunderbird
References: <CAADqWPRuezwiLpcTRsAE-DdL0rTwFTbsn+ATw-fgK8GuyQauzA@mail.gmail.com>
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <CAADqWPRuezwiLpcTRsAE-DdL0rTwFTbsn+ATw-fgK8GuyQauzA@mail.gmail.com>
X-Forwarded-Message-Id: <CAADqWPRuezwiLpcTRsAE-DdL0rTwFTbsn+ATw-fgK8GuyQauzA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH2PR10CA0027.namprd10.prod.outlook.com
 (2603:10b6:610:4c::37) To IA1PR10MB6736.namprd10.prod.outlook.com
 (2603:10b6:208:42c::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR10MB6736:EE_|CH9PR10MB997857:EE_
X-MS-Office365-Filtering-Correlation-Id: 672fa597-04de-4309-5775-08de99aa7fee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|4022899009|366016|376014|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	wZsOIanJhcME2tqnmg/QoYE0y6NCvq1VeoL7O3kOF0OclvvsRGcwkkceeNihBISEEgXZDz3V6jeE/011CHZOpiVXsfKcfmYdCQYokjRFFPXJlRY9BXEiqMsagcVClgGnnO1JAYl0qRhE4J1E4xG7REZX36U3v845n2NWwsK7ZC8kI9c4YR652xx9OqpgmRpmc+avWqIXUeNmVhXCpnsoGEBsl5mGbIzV4Nqdrjznhot349aCYyAKvYXvWLQK42fLeCzJ2uzwoUZXzqPvEvuACAQ+ztRWCmC921muMIH3365nY0eZnG8Xn3puu+J1bpRZ9B1k5N4hbQ4y7cefmd23A9o/uIBRmWF3DPV3EWxPI+ahZOAJKO0r0YgpMmwwvMutT32xPTqrg80fUW+p9iEExWEqec9gk4/ZsynjEQNvOGNTTA7HTGp94rbAv/oIOXWTJH4okkI4E1ZI0NZGZJqsgJtY3N/M2rZdgsvIeW5o3SL+YNVNQ3zNh9R3ECFaLc5N9rUM2RkXM3Tq1klU6D3vozegwI3mvVYwYY1ZbyM/DdGCZnoiJ8qjFhG0ivAksEwCCIiGYyw/1bttJdMrK3UXtwAOLk7qxyJ27uoRnu2mQ6KkS/WvoxoFkSd8RggSWGB8NNryQ+XxJoYdixHOIEBIAFu3hpBGIDYnnWVgArOHhxBkAPRsazCagaY/ZqwCnlsTlN2awspnJO+bcUBJ3JBVMMLm426mPxQms1fprgVXx5JM0ev8gS3Aax8+OmHeYw3+
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA1PR10MB6736.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(4022899009)(366016)(376014)(18002099003)(56012099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Qmkzc1M1UEVXZWRoemlIVEwzRHdmcU9zWE50cy9QN3YvUjdiU2NnbnM5U2No?=
 =?utf-8?B?d0lKQldyRC9VbStCWTRTVldWSkJSWDZaWHozekdJMWdFOWV2b3B2ZmNxZHNH?=
 =?utf-8?B?VWpWRXBpdStjaUxnRldNcFU2VVZzZGF5ZVpTajlVKzgvN203L3VFaWRRYnBs?=
 =?utf-8?B?N2dhd0VWRmJnWDQ5U0VQbndVRzY5U0x4RFBtNlVXTExsVjBuMUkySjV0MU1w?=
 =?utf-8?B?aXhlU2hqWFc1bHRGOElHZmFxYXM4RjNzWkdqQTR0a3VRcDJQcEZlNDBHYnhh?=
 =?utf-8?B?TUg0ZjJ4TXRXSFZ6RWZRNDdVU3dRMXV3a3NJOFRQOWpBV3E2dnBhVWg0cnR3?=
 =?utf-8?B?SVJJakJ5Q3F2RjdWQzNYTm5BcTl2MHM1K3FXQW1vY1NTQzFUT1VrcTFIMGc4?=
 =?utf-8?B?RkxiWTNMc3BEV1hoWHJSckVJUVV1bzF3U0ZpbGFNMGJ1RVVhWnROamJOZlJy?=
 =?utf-8?B?SlFjMHM5V1UzbDRnOVAweHRLdEpMci90UTdHb1FQRU1QdnJyYWNZbUFaZXFt?=
 =?utf-8?B?RlZ3c0pseFZuOGYvR3VVb0hsb0cxbjBCazB3NEc4VTV5NkY4N2pSdXRRMkI3?=
 =?utf-8?B?ckV4QWFSbnloRzRJTll2RkF3WnN0NnFwQXlVZGkzZDhTdUxNL3hKc24yU0U4?=
 =?utf-8?B?MWM1dXdFYjkyZEZiTTdxcHZKU29MNjhBSlUxaDdnbmlhTHdYWUhzd29yU0sv?=
 =?utf-8?B?eUdXbWRRYnRYV0Y2SSsrRWJmUkhRY1ZwOFJnQ2NoVEQwYTVGWU1wUWdQSUdr?=
 =?utf-8?B?U1AwbmxkMnNyRk5qeTk5bjRQdGl5SGwzM0FjdkxweWhRYzFaa3lwd0ZjSGN4?=
 =?utf-8?B?eVM5RHdTTHdpdFV3M3JtQnQrR2I3SktTSzF1V2tFam9VOWVPMGpJWUhXbExV?=
 =?utf-8?B?Z2JtZVA5R2xvbDhOM3lnV1lwY1dHRVczYkFuR1pGQjJsTGQway95NTdzY0cv?=
 =?utf-8?B?cEsrTEpuTGJ3TW90WjJMVnA2azc0dlhkTm1JZGN5ZnZZYmxQMjdHeFJuUXVB?=
 =?utf-8?B?UHlrMVk0UUpUS1BVcEdld3FnNmd0T2U0VDNRWU5XdU53RE54cEYxckptOWRC?=
 =?utf-8?B?VnpJZlUwanJUZWUxWU9PdVRqZ3dSY2lwSDVvcGpSem9qYUhsWmpIczREYXph?=
 =?utf-8?B?cDF0S0FPaTRiUzJZaTRRQS9qNUVLZTdTNS91K2pGdmVQdkROaHdZck5oV3Rz?=
 =?utf-8?B?bTNIY1dLblNwdjJMRUtYTzBzVGVlK016RUs0b3QrUFJkTUZXSnF2SUt5RG4r?=
 =?utf-8?B?UkRpZjgwbHA3WXRHSUZpUEdvbC9kQmpRd2JUSWQyYnhvM1FoclBvREFPUDNS?=
 =?utf-8?B?Nnl3aG1pK0t5UUk5TUxYMERNT0xLTVBYM0RzdFUwWVJKZHZ1K0h6UWxCTTlq?=
 =?utf-8?B?WkdURXNPVGRhOTdLeVNXMEc1clFDcEFRMXFQK2RWYzhnbVVCWjBMUG1TbklX?=
 =?utf-8?B?VUdTaUJOWlgzS0NaOW44dngyYXRGbzBlYzlhS2J3Sm1vZHkyMjJNSzhoTG8x?=
 =?utf-8?B?RDhyYkFrL21oVHI3a2htM1M3MFoxdndlVzQrSVQrN1RBOVhiTDU1MmZVOGYx?=
 =?utf-8?B?aENuYzRDeVlwaTNkVXgybkIwdHVwYkp4MzE2UW1DSWMwTEJ6MnFMOHBYdS95?=
 =?utf-8?B?T2JGNUJaVHE2WnBYUDBXNHh1STM3R1l6WStrYm5vNWhCdDBNbzAwRG5MN3VI?=
 =?utf-8?B?QUdsdGFONkxxWTZoTGx6ZVpaQVVmRHZwRXkrTkZsNHkzcTlrVGRRWXZjVHdH?=
 =?utf-8?B?Z2NrK2Mwb1NsazFPR1hXcmxsQVFUV3VCcDJMQ2NqWDY4UFl0dStRUFNub3pl?=
 =?utf-8?B?NlVtWTJ3bS81dGJNWE1QK0Q3SnoydGpXdXRtM05wWkJYL0gwbHJRRXBPenRz?=
 =?utf-8?B?YWJ0VzFzSVMzbit0RnlzZzZEQUdRbGRnQTVKMjRnQkRlNUlXbFZvZDB0K0xL?=
 =?utf-8?B?Vk01TngrUkVWUjJEYjFaMXpzcGlyMU5QTkdYMDF0UVYxcFg5UzV6WjlUWVZz?=
 =?utf-8?B?U1F3RERyYTlaT2orTFM0LzZwK1RNSmpvTlAvaDVOSytYbm5pa3NUYS9sVFFR?=
 =?utf-8?B?Sk9BbzRKeTBrRXlnSGQwOEkzTjNGUU9ET2lCY1N5UFAxU1lTQ2g0MzZwbGha?=
 =?utf-8?B?VkQ2OHlXVmtJTzYzbWRmUGRKQUtaRTRXdC9EaDdjZFRQbmN4bysvL1pZQ1RT?=
 =?utf-8?B?OGN3em9qaTNxcFpRQXp0RHp5aWQ2ZTA4UkluVjFzdDF1M0tJbzY5R3VmZW9W?=
 =?utf-8?B?cnRrdG5tWld6Zm9LZFVCMHc1UVFSVkRjVXJlM2tSS2dJd1hFTkZzbnlVakp6?=
 =?utf-8?B?QTNzSkZ4NVYwYmN5NzErSXE0ZUtRbmVpRHJrTzAxL3lBeXk2TisxSjd2eFJ4?=
 =?utf-8?Q?oKKBFw58Hme9gAVo=3D?=
X-Exchange-RoutingPolicyChecked:
	cx5OfXtgE1hlWUOBQlgl4F1+K+jhJTNYXt4Ym+bxzgPg/nHjg22/HrIysidBAmzqcXX3xoBOJ65za4C6SeakHLnfImwdoa8z6h7SFcisdeiAi+1bNnM8trCuiTnQPaq8P/SX39MuP3fJX8LIw+MZWNHg3bNvAjzvmO/XKzRViODP2pdl+bnwm6XNyIrJnHzlR5oPac7muPKs+XeZ5etwDZl9WFI2rlqfMmfbhkhImaac3NCEfmTG/l6y9VkyJP2ASX46ciRSOMvGLq+ChdRpQA+i6P6WT8zlOKhFbX0zS/z8oWQFJWhcymjd+6Cc1LeDPHv4AWz8ORVtVrTMokQN8w==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	6MElPkzrqVyrmyM9uufzrMPtYXUv59d/rKI9bpSLoeF50l5bG/81GLPimJn0ZYqDMD/eFWFKTR592ZXXw/6BhVAMcwkPNczjq1xG3GVuoY48KiEIXM1R+A4FYxM38KSjgMBCqgjUoU4Mu3CZ8M+k4MvblP184v6M3+1HXKgRhXQhWi866Zz7ovKahxyU6rPaNf2/v2Sm4HYSRxXR68J8EtUy8Dh4dSNzgIuWYvQ9c6tOU5LJNoykOtznZeMDZulWJ9hFHqsO+8yxRAoU+Eo72jHx8YvVNRbBQKN/aCXf1yO6cLSJFZmU8hCofxeix2aMpgQPpdg3+XUksD6uBYWPDwojHfjZikEPhpU+xPrGvleKXWDwLQWUN+9wNnWJjtyIJapMxKEE//po5FOlehetoM1b8ONJeUCDdePuxoyY2AslJIQ0N9ZkgMmTcfEgPsQJQTAMdYC914/XJDxJ8wn5slfPXOhfXm2tBwsNrcmCxJnM+pUTr/uL6EwtQw1SEWUQp9K2qlGThKwSKX7c30eKjB+wotp5iYcqGwUTCfxlUshmlqo6YxUsCzM/WRMplC+6bAGuwAU1eq9HfgdUtyEMXddPGLZqG5Or30ABYv6lmw0=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 672fa597-04de-4309-5775-08de99aa7fee
X-MS-Exchange-CrossTenant-AuthSource: IA1PR10MB6736.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2026 22:17:50.7945
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8C4pYThxjYFWcLag+d8FXIpeLIV3TfkwtZaZfnfxbB5nHwfUChJWnRBt5Lb2xEdKJLCO3jnuXKM+KpPl8CFRqXzDQkwoh+iaCueWAu8CqQg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH9PR10MB997857
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-13_03,2026-04-13_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 phishscore=0 mlxlogscore=999 bulkscore=0 spamscore=0
 malwarescore=0 suspectscore=0 mlxscore=0 adultscore=0 classifier=spam
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2604070000
 definitions=main-2604130219
X-Authority-Analysis: v=2.4 cv=eJUjSnp1 c=1 sm=1 tr=0 ts=69dd6b92 b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=EIcjfB9IiI4px24ztqRk:22 a=8r2qhXULAAAA:8
 a=NEAV23lmAAAA:8 a=8AHkEIZyAAAA:8 a=xVv759-owUCfZF6_yxsA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=8gvLZcY7Nlvl4CGD_6nf:22 cc=ntf awl=host:13825
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDEzMDIxOSBTYWx0ZWRfXyrDOhJ91TFNP
 EKFbRXZQ5EZJjP9u4E8ElSV01j5HlLOQ/3I882Lxsq43W+UCZU8MrCcXxL781u08l7pPyH1Bavt
 tMJll96yCZLUxNqv/GsbIro+H68I0JZilD8WvMrXs/eeOq/CkOwAsoczTcrbf7kLvtxa5itmLzr
 CLfQ9t0vmCtGvlRg+aw3IB6bzHWMMuw5glVAKRj7GhArRkEfVrmtqqFqWifhC6VgNHspfUt6ehg
 bRb26TqVC5SWhpEXF1Z2wsy/I1+dYOyM+M/zJGsiOk9unW9fVgNHyr4xIiH8W1rCLWes1oc4wCi
 i9uZJk4cnNTiXSQT7vYol+a+dJ8r+JZ4tJ/Q/FgyXxJ6C12r+fozXAVP4dcrWScddCZHYQUMvi9
 pRODVfI0Iehv0p87yOZ7iVPpPlvDc3UfDQtP86vvddORpAIK+M3RFx6y6NomUm6BuySgkN/FYjH
 7xSp2urP6kQLn8Aup+vkUKq/kp6meT1X28JSTSNU=
X-Proofpoint-ORIG-GUID: iKzHdqiXHFB-beE3ip83uOwiJ_k1tMb7
X-Proofpoint-GUID: iKzHdqiXHFB-beE3ip83uOwiJ_k1tMb7
Subject: [oss-security][CVE-2026-4786] CPython: Incomplete mitigation of
 CVE-2026-4519, %action expansion for command injection to webbrowser.open()




-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-4786] Incomplete mitigation of 
CVE-2026-4519, %action expansion for command injection to webbrowser.open()
Date: 	Mon, 13 Apr 2026 21:53:53 +0000
From: 	Seth Larson <seth@python.org>
Reply-To: 	security-sig@python.org
To: 	security-announce@python.org



There is a HIGH severity vulnerability affecting CPython.

Mitgation of CVE-2026-4519 was incomplete. If the URL contained "%action" the
mitigation could be bypassed for certain browser types the "webbrowser.open()"
API could have commands injected into the underlying shell. See CVE-2026-4519
for details.

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2026-4786
* https://github.com/python/cpython/pull/148170

_______________________________________________
Security-announce mailing list -- security-announce@python.org
To unsubscribe send an email to security-announce-leave@python.org
https://mail.python.org/mailman3//lists/security-announce.python.org
