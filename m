Received: (qmail 21886 invoked by uid 550); 19 Dec 2025 19:55:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21833 invoked from network); 19 Dec 2025 19:55:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=0CE/6tyqksXMc58A
	qsoF13kwPhq+mly+fZhRmJC2Ylc=; b=BRrYLb9bWiM37mn5aFbxJHMKC/s0aqL1
	P8GSsOh5xpgVWu+Zd5Du/d51OTFyY9p8YHWqTZ9OAWkgdAsvQssHgCORSuA5A+xU
	n+7Y7AfVLiH+rHTcySPow0PKmdFN2pe/TH5g1Sx7X8lbGE2qHOu0U8G6aZfshBy0
	s1Vlo6jCZoXs7WAmAFaXho7LjsPVOZDtbkyJ249qtze48I9t80Do+6uQKtM80rt8
	hDO9+PAZu4JU5wQ7RNoTHx0Jkm2sQuXwwjtlxM7bcQrAzHchPnKV4JWDJTTRHuSP
	qSg4VR803BB1thEWPE0jOOAkn1xGOdMeLONlVVWc5KG9AEZXd5jkAA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s9G2t1r10hwrvByVoLjWVYbu86lc0m1Ir6a2I+Q8v43UDWFfyvj86Yx2VY73ntIRXTfL24nyDpfLTMSTlWCKY0udlF3WZXCfSBKT4yblTjW0WD4wxm4Y1CgpMXLfm/41ZVOFuv4JKPLbfb5FrCv4MclHtyi9Fbv1c7xr8YcFeSGFq/XCwHsecRlUvO54PGSt2PwJskFYFbLHfY3QaZooxCiFzOVT8PlDnH5LU8EUyjKavdL+/FmFcPjfpZAWjajpDg5foKuarKGZs9G182aGNJRvv9nDWmqcIH5DRXtEr3CCQ6QFr5YVdOeS+0goaEWdhYbo2hxF/5jp2w5vuQwCjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0CE/6tyqksXMc58AqsoF13kwPhq+mly+fZhRmJC2Ylc=;
 b=sHkbO/9TfpnZ105/KiUiLrZvHbkIe9U3+voEg7MlRRq2IO3HjwctF4Q/4hW4aRwplzXX8c8gWRKUX0dkmf7LW0bHEe6QRDk6FOdgiGvKkmW0cR8dkaQhVUA63YHf0hWAWW2CmFdgBYLnqdiUvanZRq2VdraS7Kb8tSgpVxF75gseVb7WcGcTwaqo6/UcjkQqgT5OimP4LmGc9/0Pka0SH3tGNyiI65h/ajTQIbXGa+7i9QwE8IO8/+jEmyIzyzbRjyvAeUiDW/4jyaNsbfdhzJEZA+TwOXKo3/MagLzJB/lJ4vynIAw1fe/P+EUzl64DCajf686KgrVOIaG1+Y8ZVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0CE/6tyqksXMc58AqsoF13kwPhq+mly+fZhRmJC2Ylc=;
 b=fXO72WuNimqEgJfgsWo3sQ7Lkt1rUhypgj2L+lmPmE3dceregGG2EViSCEun4J97WWB1FMrOFv17gPcrt/GxhBN41P6Xl+4/zbthVu1Lr8u/Zg+OIMJ3O7UjL/q7CH2RcQTIK7tt4WogEYA/jtHwj3eiZR/I9Ag+M1l5mqXhn9M=
Message-ID: <331a43cb-5e71-4ab7-8ee6-29e16c7a75ea@oracle.com>
Date: Fri, 19 Dec 2025 11:55:13 -0800
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BL1PR13CA0126.namprd13.prod.outlook.com
 (2603:10b6:208:2bb::11) To BN8PR10MB3396.namprd10.prod.outlook.com
 (2603:10b6:408:c5::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR10MB3396:EE_|DS7PR10MB5054:EE_
X-MS-Office365-Filtering-Correlation-Id: 2233ec04-55a2-4f43-bfea-08de3f38872f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?emZUL3lzQW14M3JwWlBDRjVKWnpnWWNVSmQ4dllPZGw3MjJQRGdtVFBudlky?=
 =?utf-8?B?dzQvenRFZlpZV09UWHJIRlAwbTZ3dE1HKzk1c1l3V2tmNFR4QjJHUjRBMHAz?=
 =?utf-8?B?QktGUGNPS1pia2p6K1phQ3ZWVkx0ZFBueVBLMEcvb1NsVkpxekpMQzExaTFR?=
 =?utf-8?B?YlB0ckdVcWZWQWpQaWpwMFFVWTFiUjZuelJRMmo2aWk5WUhJVDhwWFdKTnRC?=
 =?utf-8?B?OFVDTUtQbXNKdUlkYVpwWnREanNGMi90dmF2MkkwTDMvRW95RHJQMTkza0xp?=
 =?utf-8?B?UlhNMnZZM1oyQUFUbys5RU10eWJZODViT3JZVDdpKyt1OVNuQ1VsZFNYWk5R?=
 =?utf-8?B?SVlwQmNEeEZNNUZPZGgrM1ZqNWhYcGoxWUhKODlUNWZRUk5GVUxGa3I5dFds?=
 =?utf-8?B?eElKR1BiYUVuYTZZcmducFgyNFVYdnh4NllBbDFLSHdRT05XRUk3MDg3QVZy?=
 =?utf-8?B?eVFSQnY4L1E4MWMzdVRsdFRhOGo5cDVWVWlETHlwTXBOVGVIVHFzTGxBeTdB?=
 =?utf-8?B?UWtvb042cElFd3V3NkUwanp0L29JeWlkUlBYd20wMVpsakd1VXF5QzBUYld6?=
 =?utf-8?B?aUtzMC83Rys1eVkxU2pGa09OaVNhVVM5NTBPamZ3dzF5NXVBcm40Z0UwT2Vy?=
 =?utf-8?B?QW5LaUZhQTdHeXJ1VE9iMlloTEMvdXdINlR6bUl1WjVyQmNFa3J1a0xveHBa?=
 =?utf-8?B?RFZGck9KTW9XSGJ2eTZiMHNMNFdtOTV5SGZNbDQ3V3h5MkVmWVhsMDRvenBG?=
 =?utf-8?B?QzN5MkdRN1lEaS85cTNQanNYSllqM3J3d2JkVVRjWm1pTnN5NTVPc1VXeFo1?=
 =?utf-8?B?d3FnZkpjWUJPTjcwM2E5djZTeFRrZ3pxamVVTWRGYWdQVkZaNWZ4T0tuQmh2?=
 =?utf-8?B?LzZhc3FKV1h5djlOK3lqUTVneFJnVXIxanZVMlFDeTFybHJuVVFOelNjY3pI?=
 =?utf-8?B?YXVadERXSFFqcDZLZlhVcjBQc1NIZjhZQy84enIyeFIvbEo1MUNIQW5XbG1x?=
 =?utf-8?B?ZmZ2Q1g3Y29YRFMrY1pYamZ1VUhSUy90RUFhQVgxQk5rVlNna1Z4M0pPcDJT?=
 =?utf-8?B?RG9EL09tclEvbEsvQ1dPcUV2T25aSEl5N3N3anNEZ1E2MEF1NjFReXRMTDFp?=
 =?utf-8?B?VzlUL3pxeW4zem5GeDFCQUpkdjF2QnZ0dTFMMHBHbDAvUTBtZFdsU2d1MUlH?=
 =?utf-8?B?Rms5Q1hZNWNYS2F6Ull5RGcvM2Q2YjFjTTJwblBBdWpsWHpBYXhlRFRuK01Q?=
 =?utf-8?B?b3lVcWI3bVMveFdDRi9ZY2ZzSTZodTdubk1LNzFTWkhld3kwaFBKM3B1ZFMx?=
 =?utf-8?B?cWlKMFZVV0JhOU1PMWlsUUN1K2VoSkNvNXBYZVBhVFhrc3BCREZzQTFET295?=
 =?utf-8?B?N3FIUEJKcExHOEhQSnVVZWdHZ0ZVVy9WTlZIMUJRSEtOVTlCbG5aVDJQNlF2?=
 =?utf-8?B?ZFVkVFFZdFRobFlWWEFKQ1RJaThBaEJ6Z0dFK3R4VWhJWkMvWEZwM2ZNTHJl?=
 =?utf-8?B?Zm0zWVM3WC81Ky9aRjFIMVdTM2hybnhnRWtmeVJrOVBCblZnWkVhdkVUaXJS?=
 =?utf-8?B?NTBqdW9YRDI2ZFY1dUZ2NHZwcmtmd3k0WVQ1VW9VNW0zVy9zSUplMHpjdzlW?=
 =?utf-8?B?S054WDNEdGk3NnlOQWIwZ0F4RU9ETWQ5cEVKMHJVM2UrdTRZTDlnWjI3L2N6?=
 =?utf-8?B?VDNNRnd5eWY1YS92YVRXako5c1pkZzJRM2dXcmlqYmdXQXc2YktIb2g5NG5v?=
 =?utf-8?B?ak5aUm1hRmF0WmxRN0I1ZE9uYnlUV0p0N1EvNXJjSGZyeUNYcE1UN1lZdVcw?=
 =?utf-8?B?ZVlrSVN1cHlTckt5VXp6M2NrQVFDY0YyTXp4QmxQdlJYWGFIbW1BTk02RWRa?=
 =?utf-8?B?ZlhiSVA2dTlLSkVtRy9ESko2ak1HM0RlR1l0ZVVJUXRNYlZ2V2JwWW8zS2Q0?=
 =?utf-8?B?dDkwVkxzY2RwaWxqbHJnWnNsRHJqNHppdkx6RG9GU3ZTUlUvdTBuZTllZ2FO?=
 =?utf-8?B?WHVhMmFnb0RnPT0=?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR10MB3396.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?TWdTRXVHci9pYWsyZTNMK0dEUERIMGwzZmhnS29NUnFYN08rcVMzdkxjaDJS?=
 =?utf-8?B?a2VyYW1uUXpodVNaY1ZyQ0UwaVp4eTVwMHF0VUllRlA2YlpGNGNIZjNkQWNH?=
 =?utf-8?B?RWFkUFRwOWo2ZE0zdUhYNlFaU2cvTjJIRFNrZWZUKzRyTDFLK3Q1enlobEty?=
 =?utf-8?B?TDdvZVVtNkVIWi82WVBwUUFpQkhlanc4WlJaZXkxd0ZqcU0wcllQeGI1MGR1?=
 =?utf-8?B?c3VuRWRTcnkxWHdmNmFNUGx4YUtqRkkvQmZPSzZTL2tQZXVpYXJpa3JiZ3JY?=
 =?utf-8?B?NUhoK0Zrckx4RjRjQnBhVkc3TnIzN3RXR1JFYmhRbWdmNXkvQ2t6cWFsejg5?=
 =?utf-8?B?cmtkWFI2RVJSc01nUU1CQk5rYmw4Q05RWm1kUmpQejV6YUZKMXY3NjkvNkVP?=
 =?utf-8?B?QXJ1b1plVk80QjloLzl4WXE2K3FOY1lWR2hYUDhXVUNacHk0aDNPV003dTE5?=
 =?utf-8?B?K2pIMGRmaTZJTHFBVnFNRDd1VU45cUJkYWMveW5wNlZjeUFuL0c1dUM4OFQy?=
 =?utf-8?B?dWFocnFWUGJOWUFPYzlZUWdKbjNONVl4b3d2TWxraGNvVXROL1JVRXpNK056?=
 =?utf-8?B?ZHBZb3NnZ1M4eFR0cTF4WWx6ZnJSZGN4OUpwMmZoVGJvY3luU3pLYmROMjRy?=
 =?utf-8?B?aThjNEtFTCt4RVNLZEt5ZGtiejRkMTllWE5LOUJwdjRPNGF4dWZQVmVBbU95?=
 =?utf-8?B?UFREeG1GdzhiU053L1oxeitPNTdOam5tWlpxWHhqQ0JtdXVHand1cExmOEND?=
 =?utf-8?B?Ui9WZXdtN1h5NE9rTUtCMUhxSjNsQXk5eks3RlhuWGlVVEZ0V3NpTHpReVc0?=
 =?utf-8?B?a0xOckhJNVZpTVM4bWloaDhiSDVxN1I3RmY2YmR0YXhrbTRXaEhYRVVEOTI3?=
 =?utf-8?B?ODFNZ3Q4WjB6UGl6K1pYVGRYWWZ0Vkl0VFVNNzBNZ3JrRldGSnB4aThPVUJi?=
 =?utf-8?B?M3FteUNwVklKRFo2UU1WSUpzcTM1OEFSMktLNVpPUFlHMDE5NW1YTk1rMEZz?=
 =?utf-8?B?UmpEbVQyanM1N2xFaEU2K2FQa0dWQlFkNWVDczZsZUlOd0M1RmNyYk5IdHVS?=
 =?utf-8?B?MTZMcXlSOW4weEYxK005VFM0STBjMEx5MGx4VlRaSVZ1cHNmdCtzV0xiNXVU?=
 =?utf-8?B?dnFUakN2WUVyaFl3RmxPS0g0U3lLeUlTVlBaV2EvQ1FwbE4wenYrNG94U3Bx?=
 =?utf-8?B?RUVtVXFnQnMwUGtpQTVPczdkYXg4MVdOa1BucHd2YlcxeXg2c2k2VDJrd0VQ?=
 =?utf-8?B?aHJsQW5YYTVhZENGQzFveDdHeHNMTWo5dzdZYU1XZDdnV3pTSDZVR3NFckxW?=
 =?utf-8?B?dE53MWxHZFc2b08xNnlub3FxNlE2VWh5QmxmZnIxODhueXY5N3pwSVdsem45?=
 =?utf-8?B?dDZHYmcvUkF4S0tBM24raVk1TS9UVFltQ1VwWkkwSnZBODJobmhJVWVkeDZY?=
 =?utf-8?B?cHBsaFdtOURrVWxHOHZKcjdQUkhYNHJ2aytVdExRcE1DU2VQZmoyaS9iY2Zt?=
 =?utf-8?B?Vi9mWU1raW1zRndRamdmd1F4RmlrZTRaWkdhbUtub3hvcEdsV2Y5dER5NU9z?=
 =?utf-8?B?K2FJTStFTS8wY2VFU0ZEV1h5VkdaaHpYallReTdTYWdndHA2a0RsL0NDb25o?=
 =?utf-8?B?eHRYQjZ0RTdpR1RBL3ZXcjFXUU92SmJpbjV3KzdPdFNnWUNqZnFtSEdtdHlj?=
 =?utf-8?B?NFp1UVU5NEl2K1IrU0VDZzhnOFArcTl4RDYwU0RLWkI3djZlRm5xVUF3QXZ1?=
 =?utf-8?B?OHdCQ1BsOTJTakRibEVraWswc0crNmUyUW9BUTlaVjI4OVBXTW9MbVlrTTl2?=
 =?utf-8?B?ME1OTkZVWXdtSWdwRXdUNFBzOTgyUkRyQ2k1SFhKeEJtQWVBOFZsakRRTzlQ?=
 =?utf-8?B?UVFDNHZoWFZEczkxRXFEemp6NlF2SGFxbEgxMEtEK09xQ2I1SmlvK3ZCZzd1?=
 =?utf-8?B?L25ZaW9kek9oUTJHV3hYay9MRVR3dml2K3JhZ21abzBDVlR6MTVxc2t6NmpY?=
 =?utf-8?B?U1ZVOE01clFJVHByVmNkVm9KeVZIRjAxRXdoMFB4a0t5V1hVMFN2WGxUeFFS?=
 =?utf-8?B?YWsxdFYrNmxNWEV4YlFaKytCc2w4TUdwTDFDL1FGYnBFSmVobTlHeThTYzE1?=
 =?utf-8?B?QlVGOGpEL2plR1Z2OEpmRklVUGxEeEdsMDFEeTZicndtQTZsOXNMb1VidWph?=
 =?utf-8?B?VGV3SU5ZUld1OFc2bVZwMjhIdzhTVjMrNlR6Y1ZMUC9wM0EzVTBrVG82Q05J?=
 =?utf-8?B?SXcvbGlPc2kva2NkR2VCM2ppRlIzNWtSVXNyY0xzZUFBdjVSWHIvN0FJMUJ1?=
 =?utf-8?B?bEhIT1prVE53ekRPWmxwYU9SYjNsenRxUG5XZmxrUnprbjZlMFd6YkR5SHVT?=
 =?utf-8?Q?FiJwQyYQSVP/Je1M=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	CO6m5PngP4yItlXCx9vLLLcTM3H9ka1TN5/AfvK5DFuA2SsUOoaavD1U5MrnTnudDtgV0+936n5OYggLDJpylOVibV1ncPRhXWroEgMsw7eX4RLHMSXfMZhMJMRKGAc1LADngW6vVgnpnChDejJJ7P+M8S/sjLESiOn53fliSFMbjSMOOkhhp/U/wtZixuUvW2cNj2T33DCZWWD2weaEH9ioZnbzAQEwWhlMiLVff4UH0e4RX66aln5QMFSklnw3OK+ls6zYcexP8Xnbv+4g1AUUAGhkSHJxuSfnzwafQ2L7q705ezI6zyWDu1CNQ/JAdSzm1fCgeTUCRN1+iF10bozGlxpG5SIfyXebS60dug5ivUU85x1QcFylhXetc1KGmLN3kO+CFzXtQDp2YQP7DXmnhMkuh+/BPhCmqZLVvitkgLngCDFsl8W5hmqs+qBXYiJ80XJAv+A2bosLgBFC5+wNShWdRfr7LmFZnRfPX0OlEgcEb2nRihxq6kUEL1LF6BrzzpXU2gyJBu9myb4EFEw7ebrpReoXguxoeWUUR/YqofFXemq1r8wx3nc2vqw6kDeDFXYtbXxQuicbbfqyiOVidmaO9t+BrJ8ULgepSOg=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2233ec04-55a2-4f43-bfea-08de3f38872f
X-MS-Exchange-CrossTenant-AuthSource: BN8PR10MB3396.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Dec 2025 19:55:15.3206
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cs2yOrAocLohALT8mCQKb77fwh0rIRqiOMPULJKu8sx1C2e4YYTemy9gAdOXfVuv9FmZ+Zf5BlKtlZgJY0SwHCwfzbFxlVNiO5kmTHzRec4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR10MB5054
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_07,2025-12-19_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 mlxscore=0 phishscore=0
 suspectscore=0 mlxlogscore=999 bulkscore=0 adultscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2512120000
 definitions=main-2512190167
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDE2NyBTYWx0ZWRfX2gVBBk/DgL0P
 RrgiwmBTJu2qqizIHw7xjrlFCPHkPw8IJLxtbpRBRp69LfwLZg6szMqVIdoQ+DtnS9Z5+wfhXTZ
 UlykN1zy70xJzj+5AVDdMRgyZmO/N+JkDUad0LHWJNbn+2BV0QYCTOqfocFfSaw0KUhNVNlwMuU
 SzAKoRcpI8os73AAOg4vtkunHWnDNhiUnA7b19mHZiPKe+3PxkndH2Fbm+cKPKY2RmJmk20I8Pf
 oRyrVqaxhC8T/MntL3CxKYJtQ7Y+X8blg89UNJo9bpC4n8JAvJGBe5WTohBKLMWPPXjsApaYsPw
 b126j0WT9VGSK3hjfTsDqCSgdMq8H/V/JJLMG4nSV0J/ipbiB/hIba0kNN+1nOs8jY8S0U+e9Yq
 wBruJdnKhNyz7ZgB177H02tfnZ6dgBaYOPfIHNH9uyVQ883G3Wh3gjoLuYAiL2Snm+TQ4wxk3mq
 ym6bW9r0Fv4eyhh2K5w==
X-Proofpoint-ORIG-GUID: 9SK-NpNcW4EGvTLJ-Z3Suwz0mQi9EABK
X-Proofpoint-GUID: 9SK-NpNcW4EGvTLJ-Z3Suwz0mQi9EABK
X-Authority-Analysis: v=2.4 cv=ObyVzxTY c=1 sm=1 tr=0 ts=6945ada8 cx=c_pps
 a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=NEAV23lmAAAA:8 a=h6bdYnO8AAAA:8 a=yPCof4ZbAAAA:8 a=MOxPW6Jg8I7c-p6cB-YA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=6Q2gMY7-lOg7P3yTJfJ8:22
Subject: [oss-security] Avahi simple protocol server accepts unlimited
 connections [CVE-2025-59529]

https://github.com/avahi/avahi/security/advisories/GHSA-73wf-3xmj-x82q advises:

> Summary
> -------
> 
> The simple protocol server ignores the documented client limit and
> accepts unlimited connections, allowing for easy local DoS.
> 
> Details
> -------
> 
> Although CLIENTS_MAX is defined, server_work() unconditionally
> accept()s and client_new() always appends the new client and
> increments n_clients. There is no check against the limit.
> 
> When client cannot be accepted as a result of maximal socket number of
> avahi-daemon, it logs unconditionally error per each connection.
> 
> PoC
> ---
> 
> # Flood the UNIX simple-protocol socket with idle connections
> for i in $(seq 1 4000); do
>   socat - UNIX-CONNECT:/run/avahi-daemon/socket >/dev/null 2>&1 &
> done
> wait
> 
> Watch avahi-daemon’s memory/FD count grow until it becomes unresponsive or
> crashes, such as an endless loop of:
> 
> accept(): Too many open files
> accept(): Too many open files
> accept(): Too many open files
> accept(): Too many open files
> accept(): Too many open files
> accept(): Too many open files
> accept(): Too many open files
> accept(): Too many open files
> accept(): Too many open files
> accept(): Too many open files
> accept(): Too many open files
> accept(): Too many open files
> accept(): Too many open files
> accept(): Too many open files
> 
> Impact
> ------
> 
> Unprivileged local users can exhaust daemon memory and file descriptors,
> causing a denial of service system-wide for mDNS/DNS-SD.
> 
> Exahusting local file descriptors causes increased system load caused
> by logging errors of each of request.
> 
> Overloading prevents glibc calls using nss-mdns plugins to resolve
> *.local. names and link-local addresses.
> 
> Workarounds
> -----------
> 
> Simple clients are offered for nss-mdns package functionality. It is
> not possible to disable the unix socket /run/avahi-daemon/socket, but
> resolution requests received via DBus are not affected directly. Tools
> avahi-resolve, avahi-resolve-address and avahi-resolve-host-name are
> not affected, they use DBus interface.
> 
> It is possible to change permissions of unix socket after avahi-daemon
> is started. But avahi-daemon does not provide any configuration for it.
> Additional access restrictions like SELinux can also prevent unwanted
> tools to access the socket and keep resolution working for trusted users.
> 
> Fixes
> -----
> 
>     Candidate only: https://github.com/avahi/avahi/pull/808
> 
> Credits
> -------
> 
> We would like to thank Joshua Rogers using the ZeroPath tool for
> discovering and reporting the issue responsibly.
> 
>     published article about it: Avahi Simple Protocol Server DoS (CVE-2025-59529)
>     https://zeropath.com/blog/avahi-simple-protocol-server-dos-cve-2025-59529
> 
> Severity: Moderate, 5.5 / 10
>           CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:H
> CVE ID: CVE-2025-59529
> Weaknesses: CWE-400


-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

