Received: (qmail 20241 invoked by uid 550); 6 Jun 2026 01:11:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20039 invoked from network); 6 Jun 2026 01:11:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=j8YfG72pRkpHDxJ1
	05yJluYZzAja9U2/qzy98t5zZzA=; b=LZdb/MXxwnvVkS23IWFBYoRc5/5UCypr
	RQYLZ10N9HizJYLrkKR1/JDkAhYAhFACMCTzIAqrTzSfKe4UplyiQxr45ER26WZY
	ujkogba1QV23cnzMue9G/Dc27QbOOl5lTYg95pfo7Vj+k9vADlH56/e77UgU5VnQ
	uYIEWKISEsfVZgWxIBhvYhp7+WOZD+c6PfxmWYz6t2Z1YvjePBUrQNUHOyeiEWQd
	YtAyz9oWkTk9BHRCIqWBh3RSBmXIz24YExOsTKxUD5gAYm30x8au2tRjhki3tut4
	h86HwGNRYHL5cd8NdlbGSk9betaf7YFnWP8+UrQMmQkfJ39mU1sSnw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NOFiQBSySgOjQ5/jRwF3ThbDmPdEKM7iUSWfuRqle+2r0yN63iH3bjQ9pcNV6fwUDLvUJ55Gr/d4tQPWkhWTMQ7oDBvZY5NHKImzv+KY5wU/Y+o3nosyOXEchP5jwBc0D0iEmAwXNuV4WF3wNKqxVaYDUP0e7kX/vCwTIh2YefIOW16Mk+Cy50Le4jbznsKIqtw4xLr/67lvKp8NqZAXGMyzjI24rLdo250UfLu49rqIsvoG7p+Ak5x0ZiAkyA1WG8CFiORqKUrfJuNX7tpWH3Xjedwdpgs0ZEGXReEdyU4Rm/UeFEX3JZJyGYcK4WJpXU8vZiOq+qpNUz4Ldknctg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j8YfG72pRkpHDxJ105yJluYZzAja9U2/qzy98t5zZzA=;
 b=XxIBMQRWb6IqzfiEQ+wo2ZBh+AjDiLvi9u8c81eMVxZX6D0drsIb+CnQg6Es1++O9q1T7rHzPw7XAsukla6ehE59+ra3XuDqb3l/9WFon8QwRRsAOh+U6w5lhtvOjUXKTgv37bjSQONsgK605MRy0FpKlY35Y569ChVzb/QWgH2kq6QtJCukd53QH0dqH62Qx+q7cXybl79IRk6dS8BQYVW3FgAYlPSlRjHeKcHatW/sZsDsD1o9urKxSLZW8Hh51z1e8QNUbiIOWj7m5uZDQPlYPoB16g4UZqtJHAahHzc/v6tv3f6RNleE2Od2Mbmn15+ZmvtuCHrPEG7fH2dDrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j8YfG72pRkpHDxJ105yJluYZzAja9U2/qzy98t5zZzA=;
 b=IwIA1yDgaD6dINuNGR23+/juTHlDGUYztDgGS27frQlWsMMyX6w/7sVKFSoB151oYinFGU4ruaUlOG9q6uhD8TgCYrKPShx2h8CTnQxfTS1jID4CC5snsihnUlsbMOor9ImasL5U5q3XICX7fIE7AJraRLK2YQyXq03/JCiJ0K4=
Message-ID: <e97071dd-e2df-4ede-9d0e-37ac19b1fef2@oracle.com>
Date: Fri, 5 Jun 2026 18:11:05 -0700
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0166.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::21) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|PH0PR10MB4437:EE_
X-MS-Office365-Filtering-Correlation-Id: 629a236e-e14d-49a6-9069-08dec3687d4c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|366016|1800799024|56012099006|3023799007|6133799003|18002099003;
X-Microsoft-Antispam-Message-Info:
	N8SSb1d4hg+w3ayJw0yAS/iOgJoDpIpyAUNcPpFz6qfFJaZzHMv1/FHFmPkIBgl2Ty9/CFjHrEpfkCMIEaTgKwROKX5qVm8uy39qFO1pYuTVLZf21+jC+0qPn7CqVwgpbASo/GbSRy4SxnNdugBR/o/fXs/Z4RlfC02WSll8AbO64ksevldwfDkKGbdXV3iMudQTk+W4lkrolUfRX1HJqNFJd81d1oDB4i0gyuNEaEDg1fUgDzhFgj17n70e271oC602yyu8tAsm6PGSxkl37g99Y3CNd3YLao2xIn/Gs/35jrqR2T5CS+eYVval2nFWEyYmS4NmbhurzjG9uMHijgNfaKTfEdnVXx1qF5Jh9TbdmmyFMn4NCmKKIfNDsZMHZc0UrdRgN/zB4zKhVie4hfapGxvKJoAicqaxdaAts4zGfGbve7HFOOcHk2jOi8/ljxFHNvbDZs+D45Qv0ua7f3Cmg5nej+t7m6nA/BasWIi8lmBltro2QJhcCkGvJlNIDZ4gk5Ih7WJKB0JSd7B223yKb8UNzu3k79ezYholtSDoWebNR6PLlZ2eBIvNC6GUu8FcHb8xXrfOJ1YaI8miRACR97LvxVHvaTy0jJDwO8oUN14f1AGumX1Ky9uFi7bSNfKxGF/dGd5BUvc+t27a5w==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(56012099006)(3023799007)(6133799003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?RlRVQTQrOVVFWG1YZ3A3SElHY3VxbGc5Z3Zmbzljdi9RZG5UQmQyQVFhUkFw?=
 =?utf-8?B?blRWM3Z3b3VLVzlTNmpzRkN3a3I0aEpISHNtajB5VGcrM1JvOW5ZeWhSNWVC?=
 =?utf-8?B?dUwzV3B0OENhSFFvUEVSQ1BoMnd3amVvY2ZlcGk2MFpMUnlhNENpeWtYc3FD?=
 =?utf-8?B?djVlOVlWZjVGMTVTTWVXV3Z2K3dJbkM5M2x1VTJzSk5INmJXclFGaXZITVRO?=
 =?utf-8?B?c1hPbTJncElvSXRoYnEzN21malFxSjFlYlBFNGVlSUpIaVBiZEdvRG1XSkNC?=
 =?utf-8?B?bW5lMFJ0eWR0dmJBU0hyMnNNM3BZeGZDRVUwa1UxTjVuOGZDOU9VQi95VVlZ?=
 =?utf-8?B?MFJBSjFRUEZtN2dtL2pUWkxOWmFhVGJhRHVRSDV1VUpQSXJya0o4YkoxbmJr?=
 =?utf-8?B?SU9TQmtuc3VqS1pVVStqa0I4UXdsLzJSRjU5R1drRWFhVVA0TWREcThWSDZp?=
 =?utf-8?B?eGVlUTJHdG80WjRmL1ZYRkFEcHFzVWV4YTluQ0dCSk5CYktEamdVa2Fab21r?=
 =?utf-8?B?N2NtWjBHUXNMSnBPUCtYbWx1UXE3UEdRS2NWWXdncXhZME5HYjBUL2UwWjh6?=
 =?utf-8?B?ckgxUUlUVkpFM29SVnJ0ajVRdU41a21kQ256NVlCalZyRjVTN3RFZkFXeTRt?=
 =?utf-8?B?VGwxT2NNaWJpa3IxTytBZXh1TTlxUGsrQ1VEZnVNTUVjTThTOVB5ZHlvNG8z?=
 =?utf-8?B?cDlHaFJGSnVEM2hGdTByNUxKbjViSTRGNkZqNUh1UmlrUlBsM1JIejR6Kytl?=
 =?utf-8?B?UHdqTktsdzg4ajhienhwQ1BsRjdrS1pFL2g1aGEvbm93WHdwTFdKVDM1bXZO?=
 =?utf-8?B?V2wwaDRXb0hSR21qNE5BY24vSGtGQnZiSVFwTlpiNlI5a3VXOHFNL1JCUUdk?=
 =?utf-8?B?bEtmQ0V0ZVByQzVCVGxYclpKK2lTQUlFb0ZPM1dOeGF1R3RhZGNUTEI4cWV0?=
 =?utf-8?B?eGxKQ3FtU3hCOVpNTjVBRmFFQ1NGOC9hVTBGdFRhVk8xODlTdURCaHQzRkdS?=
 =?utf-8?B?U1RndHJyNzlxeDNpTUV0NWlEeU8vcTBScDBEVFdwRVZuQkNTQ1RsZ2haeHF0?=
 =?utf-8?B?YS8vUUR4TG85ZEpDTUdIMUE3cnk1T3BwL3ljOXRpa21QdEdrSkJNeExuTTBm?=
 =?utf-8?B?OWFoUUs4V3pEQjV3MU9qNjRKS0hEcmdIZlhjMHVNb1A4RUZlTmVkb01udEha?=
 =?utf-8?B?aWhGR0tZb2FoR05WeE1BWlR3ejlVTjFsdnpoM0dkdk8vRWJKVnVlR3RTMytu?=
 =?utf-8?B?aWNPSU1qeTZoelFENXlsRzUrMHUyM2tlazBnckVHeU9GcmNyUjgvSDUzNC9M?=
 =?utf-8?B?UmQ0TXRyL2pYMzFub3l3MHNFeFZrNTZ4VlgxYWRuS1F3cE1BNWJidTM4VERk?=
 =?utf-8?B?Q2FvTmZQb1VmVGVOUlVpakR0VmdtREY0ekR0dzExYU9IOE5jbHlBOERFZjJY?=
 =?utf-8?B?TXdvR1diMjN4WlE4VFRZR3hpMC9DTHZHdUtxdDZaT0gwUXJaRmw1NzRvRS9R?=
 =?utf-8?B?RVhJQkFCdXNPR043LzVWaGEyeThWQWcwQmltYXRXVHR6UmI3QXgwNThmMmtJ?=
 =?utf-8?B?TlZlQTlISkV5a2hpclI2UXo2T09iQ3hncDc3NlhsOWJIMUxoQ3NaWlAwZ1BL?=
 =?utf-8?B?djV3a0M3ZXNkREliZG5VMndwMDFKUUVOamFDZ2g4a2hTZU9ZQ3pwRm5sOTE0?=
 =?utf-8?B?WkE4VE0vb3IxZkduZGk3WkZCUE9iQ29wR3ZUWGZrdU8zODBOczF3OCtYeVk1?=
 =?utf-8?B?TTV2ckJRK2VjdHJhN05JSnoxbEdNUGJwNlhjODJweTF1NCtVZGFNc0hNWHdy?=
 =?utf-8?B?b2VpN3FXMEdYL1ZQbW5wdG14VjRCRUMxUHNlZHB6T01ienZNcnh4di8vRUxv?=
 =?utf-8?B?RkRpTW1TYkQvR3VxaUxpeDlRRlJkbHRNaERaMlNOTDVaNGlsR1ZUbWM3Wkoz?=
 =?utf-8?B?Q1lueGhoRGZ2bkVQczQ4T2ZyWGpaOTBYTFRQaWVFNFQ3NFhQQjlRN0ZjNyt4?=
 =?utf-8?B?K3Jubk16RXp2NWZiTlhiVFY0UFdGU1dCUk5GSVU2OWxDMm5waGNWNkZ0a2Er?=
 =?utf-8?B?eUt0ejJKMnZwVWVxaWtVaVlFcjNLSWxYbUFnT05ZbGxFMEpQTi9RM0tCT29W?=
 =?utf-8?B?WlJxSjdRQlAzZXhMOFJnRFFPckIzRUgraDZKNDRnM3QrMEdURi9WZkY3bE1p?=
 =?utf-8?B?eHo0VGJaTHBOa3lDK05xOXlzYnc1eVo5ZlREZERqczYxWVJpQkpOSFA4K2JK?=
 =?utf-8?B?b3FkLzVSeTBudVVUOW1SRjYyQ0NJMXpiMlRjSmI5U3JkdHgweUhORXFtS1Bh?=
 =?utf-8?B?Wng0aEZBMzErYTdyQWRGUWZRMS9uemxvRnkyenByQnRjZC9iNHNnOWxsbStI?=
 =?utf-8?Q?oEovJcvJbX6itM8I=3D?=
X-Exchange-RoutingPolicyChecked:
	oAggx9jynle1k7rcB11NyBuxkFI85vtovOgTjiInfdsJjKCW0dyZ0d6Gr/j+YJHg7rXumsY2wa1WkS7X+AebhPcTxxiKnLz61s8xFYmt/hf/vatVAkxzeZw8tGRw+WoFD/KS8FDdzCHzgx6+cpFyagbnZl+YBH1o3WCZNXdzWm0Xa+G9wE6Q8bgJMIG5JrAeZ4UabQULjlMBex0PdAvS2DlGrcgqvMs6IVgpQTCMM9x2yoGQ/iO7pwMaFgPMP3/1fAtLs6dq53tTFhmZDvyGhw7NwOSQYxIBP/jXF4H8US+lL9gXe6xdFfkK1qQODJf7LtVL3CU8aggR/b38HYKi7A==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	4KEdEXWYy9wUHQ69lMElT1uaQl2UAINH2cMuJRV56glAXBGYt1IQC3wBVX4MhREBkR1yO4D0bQoF8NhoiNNphjMTQ7UfMG7HhHo3+8ykt3uxijVs4zTRJbHHoOsXgy/vMICYDedljfpB4TJkInXmVNhp1Pgrd/BkIsg1+5jYUBb8WuBwLcuInT7KNfVy/m8q/X3DYPW5/guXkRJe8aJu0VmAHNs5VbPOeA9gBG+5WlVOH7XvvHg95brfZsEDldO1QKUmVCk5C7EjgwMaPz+OMhqyrp8xuE7OX52rHP4Rtod3QvERkBrt+rxMgh7loiokPwpwffI8Nvg0tj7hJaqgoOg9hPB6juESua50FkuslkZiVcVdQpviHsfKDnjrcNeP4bv6ypc9x4BV2CRy8fmCgeK0HIXX0tLMDiJfwQTrMwHeEJkSDWE/9w3mlFw0EZ56cCY23jzGktsprRDQYqjo6yJS7t3RIbADWt0y4jlzY2E8dZ37UWMsVkxsI2eYsLJNWqG8kAy9imbXz+WyrwicLWVfXPOc2z7EDooV6voQq26/v2eJD2dYaFA069GDbt6ENyRELj3h8e2fQX1Kh17C0Bgk62mD5EFZRWJkIHhE/Mg=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 629a236e-e14d-49a6-9069-08dec3687d4c
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2026 01:11:08.1710
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Hr4mWyfpY5HC9k7sr6jWF1Fg/2Rkbf+0RCTBC4YzLmuA7BnsTKsQzwvP+vnAsvOQIZ9Ze9qeC4u87cnEra+lTDDH5QVPuG7EEZgwiAHzTZw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB4437
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-05_05,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 mlxlogscore=999 bulkscore=0 suspectscore=0 phishscore=0 spamscore=0
 adultscore=0 malwarescore=0 lowpriorityscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.19.0-2605130000 definitions=main-2606060008
X-Authority-Analysis: v=2.4 cv=FOMrAeos c=1 sm=1 tr=0 ts=6a2373b0 b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=FelO9ux0wxsA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=RD47p0oAkeU5bO7t-o6f:22 a=cm27Pg_UAAAA:8
 a=e5mUnYsNAAAA:8 a=yPCof4ZbAAAA:8 a=UoYos05DGJrQ-6qCkVoA:9 a=QEXdDO2ut3YA:10
 a=Vxmtnl_E_bksehYqCbjh:22 a=5yU3S35YU4bGjq-dph-N:22 a=Bho9c0fBagfJEIQBS7DQ:22
 cc=ntf awl=host:13723
X-Proofpoint-GUID: Bu0uIPxgt26gigVWjP9J0JdT7RrfcI9Q
X-Proofpoint-ORIG-GUID: Bu0uIPxgt26gigVWjP9J0JdT7RrfcI9Q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA2MDAwOCBTYWx0ZWRfX5Clxo/k+QQ4p
 zT6bnxpjImIqyWxmESTpKyKvnjxoNV7QdaNvUP7rFHRZklwjBHtaipPMp03m/ioZbXDoYjadcP6
 f84oLejbgRLH/CjcmMEYcPe9jiSBb7vhFlr1nAa9ZYVmfzWRGnfyV2/4NAyxlig1RziRejECzuq
 E4/QS0JwfLP5svCdqcqG6OjMtj7wgpoh/qVpGYXn/pSPbHWTGo+S3zhmIypLUKgMbEQQlYh8JhU
 xJ/pZUyB3N9mJBVwTbEICoVYD1AGjRTZsn5m+uMeamLBB0F43IRuwXTOaKlbwGtA4Fc1a11/tDu
 LIQEoeDZmEKCN6QWmv7pw59/EMiUy/3velK7tM5ag+z020CXe9nxDKeVzl1z4U4+eRO1ASK+cqd
 i9i7fGoMgOt4fi9/TcqjWAx5s25TwKWtmFKjIZNO4Q1jNBnOU8NeClNiDQvsMcFc4GOB0OgmjVO
 HNd/wMwvaTtaJR6vc2zB2ZwHa7f9g+9a82IT7cMM=
Subject: [oss-security] Project Zero discloses 4 bugs in FreeType

Project Zero today made four bugs in FreeType publicly visible.

Fixes appears to have been committed to FreeType's git repo, but no new
release made yet, and no CVE id's are listed in the bug reports or commits.

Each individual bug report, on either the Project Zero tracker or the
FreeType gitlab, has more details, including technical analysis,
reproducers, and suggested fixes from the researchers.

------------------------------------------------------------------------------

FreeType: Heap Buffer Overflow via Improper Limit Calculation in TrueType SHZ
Instruction
https://project-zero.issues.chromium.org/issues/505355061

Vulnerability Type: Heap Buffer Overflow (Read/Write)
Affected Component: TrueType Bytecode Interpreter (ttinterp.c)
Affected Versions: Confirmed on v2.14.3 and git head (f2b3f969)
Credit: Mateusz Jurczyk of Google Project Zero

A heap buffer overflow vulnerability exists in the FreeType library's TrueType
bytecode interpreter. The vulnerability is triggered by the SHZ (Shift Zone)
instruction when executed within a composite glyph context. Improper
calculation of the loop limit leads to an out-of-bounds memory access (both
read and write) in the Move_Zp2_Point function. An attacker can leverage this
to cause an application crash or potentially achieve arbitrary code execution.

Reported at: https://gitlab.freedesktop.org/freetype/freetype/-/work_items/1420
Fixed by https://gitlab.freedesktop.org/freetype/freetype/-/commit/1803559c4ee407d0bcbf2a67dbe96690cee869d2
and several follow-up commits.

------------------------------------------------------------------------------

FreeType: Integer Overflow leading to Out-of-Bounds Read in TrueType IUP
Instruction
https://project-zero.issues.chromium.org/issues/505357209

Vulnerability Type: Integer Overflow / Out-of-Bounds Read / Denial of Service
Affected Component: TrueType Bytecode Interpreter (ttinterp.c)
Affected Versions: Confirmed on v2.14.3 and git head (f2b3f969)
Credit: Mateusz Jurczyk of Google Project Zero

An integer overflow vulnerability exists in the FreeType library's TrueType
bytecode interpreter's handling of the IUP (Interpolate Untouched Points)
instruction. By using a signed 16-bit integer for a loop counter that
iterates over glyph contours, the interpreter can be forced into an infinite
loop or an out-of-bounds read if a glyph contains more than 32,767 contours.
This leads to a Denial of Service (DoS) and potential information leakage.

Reported at: https://gitlab.freedesktop.org/freetype/freetype/-/work_items/1421
Fixed in https://gitlab.freedesktop.org/freetype/freetype/-/commit/7974be74d8b5a2fbf99aa88f0461d1f80af51cee.

------------------------------------------------------------------------------

FreeType: Heap Buffer Overflow via Signedness Mismatch in TrueType Variation
  Handling (tt_interpolate_deltas)
https://project-zero.issues.chromium.org/issues/506902245

Vulnerability Type: Heap Buffer Overflow / Integer Wrap-around
Affected Component: TrueType Variation Handling (ttgxvar.c)
Affected Versions: Confirmed on v2.14.3 and git head (5d109934)
Credit: Mateusz Jurczyk of Google Project Zero

A heap-based buffer overflow vulnerability exists in FreeType 2.14.3 when
processing composite glyphs in variable fonts. The flaw is caused by a signed
16-bit integer wrap-around in a loop counter within the variation delta
interpolation logic. An attacker can leverage this by providing a font with a
composite glyph containing more than 32,767 components, leading to
out-of-bounds memory access. This vulnerability can potentially result in
arbitrary code execution in applications that use FreeType to process
untrusted font files.

Reported in https://gitlab.freedesktop.org/freetype/freetype/-/work_items/1423.
Fixed in https://gitlab.freedesktop.org/freetype/freetype/-/commit/0d45c7f1911bc6db0bf072eea0c8cdccd77bc6b3.

------------------------------------------------------------------------------

FreeType: Heap Buffer Over-read in tt_face_colr_blend_layer via Sub-byte Bitmaps

Vulnerability Type: Heap Buffer Over-read / Information Disclosure
Affected Component: COLR v0 Blending (ttcolr.c)
Affected Versions: Confirmed on v2.14.3 and git head (5d109934)
Credit: Mateusz Jurczyk of Google Project Zero

A heap-based buffer over-read vulnerability exists in FreeType 2.14.3's COLR v0
layer blending function tt_face_colr_blend_layer. When a COLR v0 base glyph
references a layer glyph backed by an embedded bitmap with a sub-byte pixel
mode (1bpp MONO, 2bpp GRAY2, or 4bpp GRAY4), the blending loop incorrectly
treats the source bitmap as 8-bit grayscale. This causes the function to read
beyond the end of the heap-allocated packed bitmap buffer. The over-read data
is directly encoded into the output pixel values, allowing for potential
information disclosure of heap memory bytes in applications that process
untrusted font files.

Reported in https://gitlab.freedesktop.org/freetype/freetype/-/work_items/1425
Fixed in https://gitlab.freedesktop.org/freetype/freetype/-/commit/cbe12767ea73d1006edc75fcd61c0b0d2a88f34e.



-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

