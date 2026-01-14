Received: (qmail 5439 invoked by uid 550); 14 Jan 2026 00:48:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5287 invoked from network); 14 Jan 2026 00:48:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=JqEd2BxA8b6u4X+Zq7+z2amwT+QQlYsmxjwTALAl5H4=; b=
	nb+EhQW1kjmJWiFG00UZZecNbaNYfxrW6W42OghdIgncul/RRPZeDgrFBx2kBxFe
	NU9WTVRV2/DLY1zIvRpDN4dI2YRYQPXywl1LWtFR4i3Rk5+gTW74MroLj9NlM4yC
	eRhBNvEu+JXYGZSe+NHhMuvZGGE8yLu0BiVHHiaL2UxPwbI4sIvMEJseZXN/80yH
	PpWZsYdXr+FIdnD+gQxbowCwcnOVracabtplfH9Apdcpe64gpbWU2M6BHmzuOAQI
	hzpM3Wt7cY2Yoj70fduVTTEXssRt0KjlJzxxXArAJqvBgquseZdaa/eAspLy8pwH
	1OQIoAZ9qkuKABrF68qyhg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RsOEp8DWkDKZGTBIOqUC7usYQ8U6Gjbo93+xpckQHtNjzedvSFURYP+piQ4TYhWYlH0jAAa4S+dRIlcqSFJ2ONO5zAN4TZPhT8JM3rd/RWuo18Nb+U56Z8wq+YZbHNEaT8TOPcLQYhtmtZ64LoH3S4I0xh9sZRXyICG9LnBM8Q1hl2zYY1pT/jhhKr44ZY5YFw2BdoIxN+1w5MyQo8ZwMRe1AtGj9AhHUWiRyC/H27zsRG1VO/TE41pfwFvFJR6+GfOuEM7yYRV8z5SX7l9id8uhytoWjqBbuO6qcfSEAm2WayRu1dmd6MzGgRhOMvFGewQIFXrNh52F4ATk8dEeLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JqEd2BxA8b6u4X+Zq7+z2amwT+QQlYsmxjwTALAl5H4=;
 b=FxTH1qurORo7pAh/Okd8/LvrTejfLSfSL0uM20Xq2YZVM1VjtNFwjT2D1tEICZGU9k6/Jfb2Yfsal93kV3Ejd/9Z0p4xoIUcWlGr+1Ltxdy4MH1nleECC2RKoW4vsuGxUZYWBPyLLDpBY4w8N6KEBm82kMyEx9p9w69wjzLCPzJ8mtCSbJOR6cwYuA5X2kXuljavrtUBaDBsMUHUTvP3KsPeWl3e1erOS1gnhYjWKaVE6hILJzBxH5uYIJPNRW+wCP5g97dFeR02bziopMvpICJx98WFPAtDwTQmUiZYNBbzLAFhqwE8W8cYpAROwa3Ngof2ZYf2e+h/x7xGx+ptBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JqEd2BxA8b6u4X+Zq7+z2amwT+QQlYsmxjwTALAl5H4=;
 b=e4DIHZ+KFEKexVxJf0/9yP3Yac/bBr01WIP24Gc9Jzee/PK8WK0MGfm9969/ewLSoEdpTMOAnHjkt06MilQYih8n6ga7zSdnZxRnEU/rzKOvFpIiWJBI018eufliObl65Lu8mpLe+Tr8GPk3FEv/6YTARnnZX5fnVOaZq8hfGgQ=
Message-ID: <3323802b-3be3-4bad-8b70-8ff90758407b@oracle.com>
Date: Tue, 13 Jan 2026 16:48:37 -0800
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Jan Schaumann <jschauma@netmeister.org>
References: <aWZdhW5WioYfH8Iy@netmeister.org>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <aWZdhW5WioYfH8Iy@netmeister.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH8P223CA0020.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:510:2db::31) To BN8PR10MB3396.namprd10.prod.outlook.com
 (2603:10b6:408:c5::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR10MB3396:EE_|DM4PR10MB6911:EE_
X-MS-Office365-Filtering-Correlation-Id: cde8bf13-571f-4125-cbfa-08de5306a99c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?bTllUEJueHlHSmU0YjhQUDZuaThvVXk5Rko0V2tpZ3lzK1VjNkR3WUVjQmtF?=
 =?utf-8?B?dmJVWVVYNlBOMkswWXlsTm5peGVZZWRJYy84YWFxRUM3NGR4LzR2Nk5URTFP?=
 =?utf-8?B?QXRqbngrTkdoVU5XV3dYeTM5Y2tzOE55SWp1VWtER0N6cUpyNlBWSno0aW9P?=
 =?utf-8?B?eTZobkRyOGxMeWJVRE4zZFFYWGxLYzlhNkJuWW1FdStRYzdoK0tDRUNPa25C?=
 =?utf-8?B?NlFtZ0lvZ2Nha0wxbHBNSkdrb1RvTjBNY2N2d00zWXVjZkhRUS9YTWU2bGpQ?=
 =?utf-8?B?MHg0Y25JZS95RGtKWTlveUJXMGFQUFNkQzI5V3dBWUV6V0hIZjFFYnBiYldF?=
 =?utf-8?B?SC8xK1hUOUdYeXY3UFRwRFRvU09hUGJUbWhPRUhlbFEwWlphcDZweFpEWFps?=
 =?utf-8?B?SnU3UGtUdU52VkJXZ2t5WktmNUVSRTdRSkxIWkVmRFNuUEdoWE40eXJQdHEz?=
 =?utf-8?B?ZmFoenBqMnY0c1BtaUQzUHNwd1p5QWRwVk1IQXdueUVFczYwbHpvYWZmUStX?=
 =?utf-8?B?TTZzUTcwV016N24ycTJpNWlUVWo4RkU4T2lFMUxKSkd3S2VZRTk1K1dXNHhk?=
 =?utf-8?B?UGhmWHhreXFWZndhN0d2YzRiTm43ajZWZGJTR2xjenVTNVJUeExBT3krWW5n?=
 =?utf-8?B?Yld0UDhBbFpUczU1bWQwZGVqVU56VU1hWTNtc2wvclRsMEQrMldMUEN1eERE?=
 =?utf-8?B?Rkc2VFF6TXc4alQyVFIwWXFmR1dyY1phRTZqZzFXb0M3TkQ0K2FJb0MyTWsw?=
 =?utf-8?B?VzNwSzlSY1pOQ0RFNDdLdkpFclo1UHNCSVBEcm1xUHRYUHdmeS9xbEhGcDgv?=
 =?utf-8?B?dVNJVUE0OGtKQis1SEdFT3Y0M09FODJJaG1GamZ1OGEwQXBuQzlWR3VRQXlD?=
 =?utf-8?B?R1lIbHdCbG1Bb2F1OG9wb0taL2xzb1VWUmNqV2FKUmVrUzMrekwyQjFiSGhG?=
 =?utf-8?B?THlhdTdJZUpjSlhiRmMrMmp5ZFFKYmhURWpSWE1qdEVDMm04akdxdWVFcnpq?=
 =?utf-8?B?REJRdlIvZnYwYXV2Q0UzZTkwSlpSS0pRK3FYQ2M4RXFoMEpOU0pIQkQvK0tm?=
 =?utf-8?B?YmIzOHllNWRXZm5teGpyRFZUZE4yd0lDd1VPNkVFUStmOVhOUzhuV0xYL2pn?=
 =?utf-8?B?TUJuR2JCZzhSYmVUMXd5cmtFRlhLTmM1VlJqSHhvMVUxWHRBMkJCT3crZ0xI?=
 =?utf-8?B?WTBvOE15cnIzclhSQjdMbTN5NDVUZWtpWkVFU255M1VHUnBPRGlwVDRJRlRj?=
 =?utf-8?B?OW5RaUZzbFhXOFcxT1NQVC9OdVBnUlJpZmd4S3NCdFlPSEtHR2ttUnRMOWFI?=
 =?utf-8?B?RmpWOHNLV1A3RFMvY1JQaUlPNmlGMk11bGtaNytSd29Tc2pTcjY2TFZVMFYv?=
 =?utf-8?B?SytVWC9qOU1HS1FkdVZsVmE4cVJ3YWkySVRzd1BiNTE0eEo3K2pBVnVTUG9L?=
 =?utf-8?B?RXVMUVIzVG4rQmJzWGlhRmhHdHFPUEdscDJnbmg1Qnd4eEpydjVZNGFGMWZw?=
 =?utf-8?B?YWU0UVBlWUVMcythRk85T3ZjSjNZY3NTSWo5b1hqVHlQbkd5K1JmNW1QWEFN?=
 =?utf-8?B?dXNnS1dhUS91cjFhdXpQMk1YOUpFVisyUUJNUXFyb2pTcjVxR2RhcnptSGhR?=
 =?utf-8?B?ZFBhYUVlNUlrd2QvV3Q1bjN3YVFWOEVKV3NOUXZoN21LZURCTVdaSUdLeUNa?=
 =?utf-8?B?OEl5MkxWeFNIUlJ3YndoWmJ5aEdSaVFybURpRTFBdWlETkp2LzliM1RmdVl1?=
 =?utf-8?B?MlJiaDRJNXF5dE5EOFRpWC9aZWFiUGVVSXlGczBxQmlha0FnZElBTzdXM0Nx?=
 =?utf-8?B?amhkcHRYa3piSlZZWGNSTW5XMVBJY3BYbXF4RXd2ZWVyZGtQQ1F3RWFwS2cw?=
 =?utf-8?B?dGNJSU04dTVNQWJFQXpxeGVJR2VvTnF6VTlDMkt4WEdsK0ZNK2YzeWtlREJI?=
 =?utf-8?B?R1dVa3RHNHhHWGpKdHV2cFJ1L0labHBRbVh4YWNQTm4rTzhYWWRybnloZmww?=
 =?utf-8?B?Y3JqdG1vSFRBPT0=?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR10MB3396.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?dVBmVVpkQUNEdVRwZ21sbzZCdVIrMEFabVlkVVU3VlF6Qm5CbzVrcThXK2Mv?=
 =?utf-8?B?VW1Dck41N2hQd3cvNjh3bzU4djV2VThhNXVRWmFZZ1RudFNka0ZxTmRoVlgx?=
 =?utf-8?B?RmJldzhLb1FIeFU5Yjh5OHpsanRYOGFCaFUrMlY4Nkl3RDR2aXFodUovSW5O?=
 =?utf-8?B?dkdreXRLSTgraXZzbGtVb3FibDdudkVOZEp3akNSYithakdheDMzWGwxcm9m?=
 =?utf-8?B?YmhMQTVMZHJxcXlyRjBmZ1dPdlk3eDFEVjVWbjBXT2tEQmtTaEpRR0FEeVBl?=
 =?utf-8?B?WmlNU1JoVkw0K28rTUpLQzVacjJNVStSOVR3Yml0Ny9tVUZtTlFURW1JcDRX?=
 =?utf-8?B?NU56WmcrazNXY1NFZk5TS2psVzR5WThkZ2tiVitTVWkvS2cvWmJZZ3lDeHYw?=
 =?utf-8?B?TUMrMG95U0dBNklhVXJnZFM5MDNsTkh1RTVKWU9DY0o1T3ZmZ3dOdzB6eTNZ?=
 =?utf-8?B?U3JtYkFWcjJ3Z3ljU0w3bTE1aTJ0ZEgrZHgzTmRSdXUzTUFOdzVqYnorVTJ0?=
 =?utf-8?B?OVIyTUl6eXVTSHRRaDhQdXh2K3dpa1N5RzB2djBKYTFoZXlKL2l3UFFuaE5Y?=
 =?utf-8?B?dDZESFV6WkRQR3RtVVQ5VFg2MFhWbWJqM0lXOHM0OTBWTThYd3I1RksrTjBp?=
 =?utf-8?B?ZGlFVW1FaytVQnhVTFhiczJGbU96VElwcWg0YmFJYlFGU2RjQ09vSGRrUXVy?=
 =?utf-8?B?SVBNa2tIWkViKzJzeTNQWW00WmgyNUFqYzN1ZGJXVWVLOEtUcXAvWXRFMkdm?=
 =?utf-8?B?Uzh4eWJnS3FZTGZHcXFZd2JqaHhOUUdMa042bW8rWDdjU1BqOUI3TzAwMFI3?=
 =?utf-8?B?cE9uK0VtUXNobytkaXJFaGk4aTl5dmU0ZXlFanRiVmdpTmJUTmZQa0NYOTc2?=
 =?utf-8?B?MmM4SFM2Nm9xc3lTT0k0bEJDL2V5UVpXczBrNHhVYWFoQTM2T3FNMmZKZENr?=
 =?utf-8?B?UlBxTVJpWjdtNFZwZTVaMnZxd3hDV1h2TzdQSzZ6eVdsY080WTFjRVRjdXk2?=
 =?utf-8?B?NGd2MUh3YWE5T0M3eWhmRGJDRmdDbHJod2VSbm1iV1FqRWc5cHpuRG5uQ29S?=
 =?utf-8?B?SWx1T0dQT1J1YnJNSmRzV2pJU1ZlY3IvOWlIVmlOYWtzaE12ZjJUcm9vUit1?=
 =?utf-8?B?OUV6MXNXSzZFK2ZidVNZeHRjWEhZTTNKNkFGYlRJY0FGOXBWRUFubG5QOWVx?=
 =?utf-8?B?b3hTVWdsdFlEWUlJZmp5UlVJcFltZjNGZkZGUDlORGJpNmtDa2k5K1Q2blZM?=
 =?utf-8?B?YS9JQ2xjNThuWTU4TVVCcFdmclhMcC8zQ3pjcm5ma2IyV29xZmltVTduaGJN?=
 =?utf-8?B?aGpRcjBiYkRQUVpZQkhQcVlqNFVNM1dDRnNxQkZDZHpwN01SdnE0WDFwVmF0?=
 =?utf-8?B?TkpCUFFWbDlaVjV0SDVMRjczVDR2d0UxSnRPVUY0UnhJMzlLRW9VU2t3UUY1?=
 =?utf-8?B?VUNIVy9zV2dpNFo3R1hIOGdqOE9Ma1g3UmNuVTRVS21JOEpqamRnRDVmK0xI?=
 =?utf-8?B?dVR2VFRWMFNGVHgzcHA5ekt3bnRUbU5LZzZLSHhuS0xhNjlIZ05JQjBWVW5E?=
 =?utf-8?B?R0lzMTJyM1k2L0JwVmN0Um1VUm5GaFVxNlZIdWFZMFdSaCswaEg1ZXQwTk5H?=
 =?utf-8?B?QWFtK0FwMmdVMGRBb2FYSUhaNTBUaElYb3hIRHEwa2dGQXVWZzgxY0tVTi9E?=
 =?utf-8?B?cnFtZ0pDZ0xSNzkvRkYzbWM0MWVudW1sYmhxakZreEYvOTBUKzRGSzBrZlJL?=
 =?utf-8?B?eXVCTU9sQUFEdVBoaElBUlYzMTF0bko0RnphZlZ4RXNQQ1MzVGlENEZTRlhp?=
 =?utf-8?B?bld6aWdVdTNianZjWk0ySXZnZUFBNHNVQW9wZExpVzB5YVBBTHYrWmZWVFVD?=
 =?utf-8?B?cWoram9uSkZFQ01NRHBXWWFSK2x0eGd0THdNYmYvOXB6NFMzYkVKcE4vU1lW?=
 =?utf-8?B?TnpybTZEVUN5cGF1M3VsQ1p2cVBxSjJuNmp0cTZCUVNLbzJ5RUI4dmlCdTZ0?=
 =?utf-8?B?NkRPa2E5NkhEYTU5dCtrSHh3NEpyWDVOYm9MNld4U3hVWEVTYUl4dllmRm95?=
 =?utf-8?B?dXNFbjNPMEhhNTRtMjJEb2hGenVNa3dPSnMxaVdQUjRGSVlUOWozNkdicmxB?=
 =?utf-8?B?dHB2VmQwNGttRnRPTHUxSm44ZnBpVWY1NE52UGpZalRQRFlaamJpNlRTK0F4?=
 =?utf-8?B?YnlUWUZWYkRkK3pRVEQ3MjFhZnZrU1EyN3g3WmNlNnUyNHYwckg1TDUxUWs3?=
 =?utf-8?B?aXJYV2Q1MDNiL3Uza1VLNTgvcnlJN3hNdUxwQXR3ZGpraTJHN2lzcHRxTU5x?=
 =?utf-8?B?Y1F0cGoxY2ZnYStjdzdqcnVNanovREx1NVkrRHVmdmdVQnZ2ZjEzN0wvL1lw?=
 =?utf-8?Q?7a343TEZ0PWeD44E=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	bGk3tbe/ODh7GA+w71oVM0qDXdv+HMezVwb39cn8j3X2W2IUTnfLAQcP+raLrhF380tY/PtEwOdpIj3qQhMOcdcAbQlNIz1ibTBmY5HlXha8WGim2h5t8P1Cqewm6SnO2/3F2bwYLZz4Kmi60OlMJm78tizSweRxlqadlhGAcemnrxsJRi60LyOcunov5L31Mn61+7eXECJ4r84PFHHxecXtqWkApzHWBsifpc2+RjRl16/pUuq6bAiFQq+1OdF2R5qq8xhQkTw3Lq7NH46LBpHnlvndz31nfvcxOrOJhSoNjxyhamHcSKA9moDH+oWc7v7bIOm/Cu3dc1iVHN7EdkjV4512QFbmbGODdQg3dPh3QIj6uH+OriGd81HKzXsplfnCtB7+vEnuLAIS0TFiP95e8Ze97jyFJgedBQcQ/wLDK8v8I9XhqWcStk81rC5VK6eqFCAi299O/FQau+61zaSx9FXpWh7TNIsg0YQESE0IZTLufGlTfcDttSpahqGwMyB5TUmydJTQE1zf1vozBUsZdWnTa16KLJlXcyTcdpwnAv0yR53pxkKBsaIn8Xxh7yIkNiPRBMeTchgKDo5yv0s3ids/W2y2WAW2D5FWWDE=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cde8bf13-571f-4125-cbfa-08de5306a99c
X-MS-Exchange-CrossTenant-AuthSource: BN8PR10MB3396.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2026 00:48:41.5466
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Mmmjw6qSj3ewjaVa52+xAhd6S5N58w1LCr8jv6FrVxDsIDKkc9O545ZfxtV+yGVDkjUwNjR/Sg2NqSdzR41OKOCtrWOaSMkONGc9UxTE418=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR10MB6911
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_04,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 mlxscore=0 suspectscore=0
 mlxlogscore=999 bulkscore=0 malwarescore=0 phishscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2512120000
 definitions=main-2601140004
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDAwMyBTYWx0ZWRfX7M0XERCaqUR/
 QxSX1PLFyMj2KnMagGacvpCKE+XQeNqLSKGEytHLxp9Z9lPuHVDm8Wks26/jH6a0qP/HaFD7kBN
 9+dDbcHhhMI05pBwDqA5P9OyJ3xJOfdce3VYDNbvNALA+1LQMksD//5kuLsBlhEzhvSjst2ElL7
 nM98H/VRvb0Ix968KPqPE0T0Jhbz6IzH094QWSwTGNtiy/5hQ1qSNMbHSlf/2tc2a4Sj4u9IE0c
 N0Mzkht6/+dXu1aQ6eE531/VmHAIXHU3zfxHkH9ZXKmKMNZuEfO8GB7YiGo6Swkai6jTYExzJeu
 PDaWQX8fZWeD6wbjmwaDPniFbdwYYcIb5zKVJ55vQtIXgbgE8pzRHndsB9pqJWim/Yt0U7ZuZ7i
 r7jfzC+mxqoz+elWmoHsO0GBehIkjA+JOt+7nmeoFSuISe5hyoh4Pqt/l3VIVt+3x/8Ay9iyCsR
 86XS1SELLy2Oj1rokvg==
X-Authority-Analysis: v=2.4 cv=YcGwJgRf c=1 sm=1 tr=0 ts=6966e7ee b=1 cx=c_pps
 a=WeWmnZmh0fydH62SvGsd2A==:117 a=WeWmnZmh0fydH62SvGsd2A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=-LCu6K_DAAAA:8 a=6FPNYluCAAAA:8 a=yPCof4ZbAAAA:8 a=X5Tl4fSG0695FFhCJd0A:9
 a=QEXdDO2ut3YA:10 a=0TkXfT2pXjVnQC2iIllu:22
X-Proofpoint-GUID: e7keUNeurltKogaoX2S2ywRmPsd-yf0S
X-Proofpoint-ORIG-GUID: e7keUNeurltKogaoX2S2ywRmPsd-yf0S
Subject: Re: [oss-security] NodeJS Security Releases (CVE-2025-55131,
 CVE-2025-55130, CVE-2025-59465, and others)

On 1/13/26 06:58, Jan Schaumann wrote:
> Uncatchable "Maximum call stack size exceeded" error
> on Node.js via async_hooks leads to process crashes
> bypassing error handlers (CVE-2025-59466) - (Medium)
> 
> We have identified a bug in Node.js error handling
> where "Maximum call stack size exceeded" errors become
> uncatchable when async_hooks.createHook() is enabled.
> Instead of reaching process.on('uncaughtException'),
> the process terminates, making the crash
> unrecoverable. Applications that rely on
> AsyncLocalStorage (v22, v20) or
> async_hooks.createHook() (v24, v22, v20) become
> vulnerable to denial-of-service crashes triggered by
> deep recursion under specific conditions.

The node.js team has also published a much more in-depth discussion at:
https://nodejs.org/en/blog/vulnerability/january-2026-dos-mitigation-async-hooks

with a shorter intro in the thread starting at:
https://x.com/matteocollina/status/2011137343323865196

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
