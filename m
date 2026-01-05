Received: (qmail 5605 invoked by uid 550); 5 Jan 2026 17:27:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5567 invoked from network); 5 Jan 2026 17:27:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=z/eXphnZJ7bAog3e
	ITJhEJkjDvQJIbrFA+XmVrB1u90=; b=i54o0kKJqNL/ZNg2UCXEsSFpepNYxijB
	huab5KFhHy/2lmVU0XXkAjA9cTrZafMp75FSPeN8/r7A4LwdwZznfJlTpIZWBpcS
	QmQZMxt1flPqlMwP93H34tGkPnoBszft1RzzGLf8wJ3ndpA7qu7Z7WwJOoYY4D6H
	0rvbJK2RfuuZ1UzX8WrOZDXlfJ8ZmswoUBiH/tVOe6bhECMLepBMdyx3vJsR6iAR
	QQQ4k2s5yCYxakiIKJmbwAXlF+ZWNtxQKimwIFMdeQQZvgRB7k9CSHScIMxHI+l5
	RaCioNKWtsfAdfg1YIyF6nZ7RbrLb2ilIYemOIzYO3oUdukFmhAsjg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iIpum8LLSAZpxx+EXTQMEAGA0XKiQ+v+0uKVHL7Cn7h7uMwtV634YYFi73LI6jgJ57XbxOszIHJHmKgiQDGsi2CLZ2jqzucFOrg5XojVfIuuzmy3lU426n/PA2EZ4xDD/csu6KvxFiZdayM9z+w1yM3uFpeAWC0G5caA0kCufhsVnSPcgaapxL6ef/wqVSVnHIvqnDOPZC6AqRwF21+xA3vKp1Wg7aOFeC+B7jizIy9QOZOCFEgk1WgQYTJIKiqCgDfIpEBtfudsuVb4alddIKOfC+2626RGIZfV1I0To1Om2hOmDOoCPZ+bomTMmhtBShQytG4g5LKM+E5oVv1Y9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z/eXphnZJ7bAog3eITJhEJkjDvQJIbrFA+XmVrB1u90=;
 b=RtqYz6yFuQcHYxsxpPL32AwHXaImTODUTzsNuz+tHd1ka6wplpJDt0OR+p0LTxf9kXIYGVkCywNq5PiOzBsOhIRojb3PID2FGbWV940gkLI5dmZ5AmDLbEbV0cHjQ6ZRfqntxrTXqSKt1XFzwhotoIjr7oAH0loipc5BG4FH11G72q55XaFd4TJgwXV56JBLRnjhIlA8SVunYvV9GO9puXSuzi8tVfEEBIlaNeXD8lULkUAlzXEFglf1TEQocdeb5RamTRtpFPT6oklI4JVn/DCFciFAL4riauFsK6MoGPcKSW0v8Ttd7EYzPIIV/P6A3Hf9UagwMLvc/z7qGb3Bvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z/eXphnZJ7bAog3eITJhEJkjDvQJIbrFA+XmVrB1u90=;
 b=tLsl46y+IfI1pG+8unDbAEf77mc0AMchBW8QSNcvcjCfEFxA1atUkgvAjXyc490XKOflVZ7xwlMvrSZ23jYZXOn3xeft25emWkb0UlT79RIRAxIcvOw/za8MEYlVytTzOblVOZ7514Mkf0KJExlBgDzZLUbZAzQ7fpTl7y9hgGo=
Message-ID: <9164016d-f642-4ceb-bde8-03e09303e038@oracle.com>
Date: Mon, 5 Jan 2026 09:27:39 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0040.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::15) To BN8PR10MB3396.namprd10.prod.outlook.com
 (2603:10b6:408:c5::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR10MB3396:EE_|BLAPR10MB5123:EE_
X-MS-Office365-Filtering-Correlation-Id: e68ff3b2-0045-44db-b18a-08de4c7fbaf3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7142099003;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?dzFlWFdaT2JqWWFYMi9iUWhNOG5HcjFHWDB0V0h1UEQ2YzNXQVg5VGhvM0hj?=
 =?utf-8?B?U0U2czUwbU10eG8wNzB6clpXbkcwVXNabkhBYTRRcFNKOWpoTW1qRWJSS21S?=
 =?utf-8?B?T3Npei9rajVvWFZXY3k4clJOOEVlcnJtSnIyVXhjOXpuWWxmTXNYSXYraDI3?=
 =?utf-8?B?NjJxdzFqa3pHWXhwYWZYTGQ4dnlXQjBPUUFLWFJCY1ExS09BWXlVSC9Pc3BP?=
 =?utf-8?B?bkEvRS9PZ1RHb0lIa1ZuS09DOSt5aUc2TnlJUjVHU2J5aDJrWFRCRndJWnZ4?=
 =?utf-8?B?TU9uMHFqT0dPZzM1cEd4WEJORk1zTkppYWl2bjE2ZWVtejhRVnlib09YNUg2?=
 =?utf-8?B?WGYxd3Q2WGJNMU4zdXVCZ2k5K0ZERWhwdDdFRy93Wml4U0xDbmppOUFZR0lX?=
 =?utf-8?B?cXJaOHZjVUVoZzNRaWRNQU85K1hOUVk1Y01tWXFENUd4SDRvOEJrZ1lobEo5?=
 =?utf-8?B?aEthWnZkSTlJNlVEd1lUVDZja2h1UHNtNUZwTys2QmxUcmtoWUt1cUNQZUY1?=
 =?utf-8?B?SHFpYWRlcHBtc2tKeTVhQlEvdmhVQ00rVjViUWRKVlBjOXkxZUVGa3RqUWw4?=
 =?utf-8?B?RGgxY0ZXN2tOcnJqSis4SnpwU0NsU01YL2haRUJIMFoyZmNVY3J0RVIySVpM?=
 =?utf-8?B?QnRpNzZUOEZSdy9ocTlOZHRzVFd2Qkp1YWh0OVFsTkU2bXlQWHpJZGVma1Bq?=
 =?utf-8?B?L3IzRzZjYjB3N2tCZ3FKNGVManQ4THJXNm1LcEpCaE5uRGdEVGUwVkMvejB6?=
 =?utf-8?B?QkVRdG1icVhyZXlBRCtiZDR5a2c2c28vTnJlN09RS2p3cWNxQ0x2cnZhellU?=
 =?utf-8?B?R1pvaXpwNjAwS1YvRlhjbDgrWU5kWXZmNE9tUTI4NXBEUVVmeVRGR1BZUk1D?=
 =?utf-8?B?RHRwcm15YktzTEJpOGJUM2hTUTJtZm9ITVhSOEpYbGdEMkJRZTl1NUFhVmJ2?=
 =?utf-8?B?eXR5eXhrUldVZG5FWnBXK3NxbWd6RHUzMVRONmIzemprbkZwTzFtMzhueXhh?=
 =?utf-8?B?eTBLRUY5TTFSQ1FPU0JFTTBKVmpBT0RJT0xGS2xFVHcva21QZ2Q1SzVVT2xP?=
 =?utf-8?B?V3dLZUZnY3NZNmpNRFgxWVRIZitONkVGR3N0cXROeWlpRzdIMFIxSyt6cGNm?=
 =?utf-8?B?ekhLS3pzMWtCclVSeXp0MUJtT0owN3plZE4xVkw0UFNqRmUybzVPUDRHZGEy?=
 =?utf-8?B?OTNwOWNCL3pGa0NTeEJtaUZyaGc4RDRnMWRneHFQTG9uT05aL05Kd3FyTWFU?=
 =?utf-8?B?c3F5UkVmeVphYWpveG9OM25ac2pDK0pZTlVJZkNFUDJDQnVCNG9qOTZBLzJn?=
 =?utf-8?B?YTREY3lUQXNkQVlSazBRK3R4UFVjRFBCM0hTVkdURW5mOXB2RHQ5T3pzUElr?=
 =?utf-8?B?amJVWG1WMExEL2x4aUZzQUxWTTQwVE5iY3JsTHJLMEVvT1E4QXdaSVNlYjNl?=
 =?utf-8?B?eDBOcjRhZ1NDYVBvdllUT0hIdytYRllUelpSRzlTNVo1SmljTVRRUVQ5VjIv?=
 =?utf-8?B?Mk9BYkhFL0dzTCtxbXcwZlVvR0ZRYnF4V1JsZDFMK0lCRWdvNHZZMjNHRkVo?=
 =?utf-8?B?YU1MRzBOK1dyMXR3dVkvSVVXTWFmVnFqbzVQa2Y1Q0ZsZ2F4Tlo4Wm41NFAy?=
 =?utf-8?B?VzZ1c0ovRGNvOUdJd2hOWDdPUTkxa3ZRQThVQnd4U3loSmZtTnAxWDl5SUUy?=
 =?utf-8?B?VFAvQVRPNVRrdHV0c09zNU9NemR5TFZGcG1QN0ZidzBTZmV0YnZVTFM2ZGpX?=
 =?utf-8?B?ZXF5M0NKUnhEbDVRNkFPWFRvZFBpL2pUNmJpZ2lBeWxoNElkYkMyRFliN2lo?=
 =?utf-8?B?UlhxRW5QMWVvYjBZZkdYZ3IvUzNTdnIrcFVkS25aT1V3a1BKd1Y2V2RDWHg4?=
 =?utf-8?B?QVdRcCtLc3VQUjlqdHV6eUJ6eGE4SStEaVl5Zk9ndjVqTmc9PQ==?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR10MB3396.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(7142099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?US9Fd2FQbWRNdWVaTEx3UEZycTNZaXJRMmZSU1VwNkpYL3VEam8rWnNZSHY5?=
 =?utf-8?B?TWpPZU1IZ3kwcjVqY3JKNFNHZEdjUzJBRkdMYUNoMGVtMC8vbnpycm9pRzh2?=
 =?utf-8?B?N1RxZ08yeHE5d0UxUld4UjZtL0VVNjFvOXpIaldpQlp6S2NQRkNYL24zUGRT?=
 =?utf-8?B?VFUwYVRXczZDQ1d2a2Z0YmtpaXlmYmhSa0xHa2lQc25RWG53T1AwQUxsM0N2?=
 =?utf-8?B?Z1BmQWVOcmdhc1k4MU5qdlRpTGpqdldISllDSUR0T1ppMGptRXhyeFM5c1NP?=
 =?utf-8?B?WmxVLzJvZkZZSlphWG9vMlhuV2Z2T3NYRjFMTVpOa1hIbDM4TXZqUWk5L3Yx?=
 =?utf-8?B?bnUyakcrbE40SWdpQTFBSlExVXpqVjA2TlVlQ3RLWklzcVhsRHF0ZWxvTDBi?=
 =?utf-8?B?NERmeThjZjFsWHIvaU1zNnU4cHJ3OXBubUxSMGFOLzAydVpxRTExeW5TTTc2?=
 =?utf-8?B?UUJoY2FWSzBVVW5tUWpUa1kzL3ZQSGc1Z0xFOTZIaEVablQ1ZklSK3VjT3da?=
 =?utf-8?B?RklLOHFCeHZTR244ODAwSFphTy9HSTZ3VVVKQ1ZtNTVqeEMvVkdhbWlucU9F?=
 =?utf-8?B?dmR5NGdVakFBVWNyRUtMbUIrYmFoeWZ1S3pTUHJtYWxacWR3TXM3cE9xVjJ1?=
 =?utf-8?B?eUM0aUR2blNNTGxuSVcySGx4bmppZTQ2cmgwZzY4R3Bud1Z5aHIwbmNYNi9w?=
 =?utf-8?B?Z3lCTkRuVFdkOWFkdGN2YU9GbnZXVDNmUlg2eWNxK1JTbWM3UkJueEh0OUJF?=
 =?utf-8?B?K0dyYU1jUkdGYlMzRHBkUlJoeDJwVzhZNHFrYzdtQWU2Tit4T0FWR0F6TTFi?=
 =?utf-8?B?dzJTK053aVJUbi9pQ3VGTlpZalBCMTZtV1VQa2tDK2h4d1V0bHA1YlhST0tK?=
 =?utf-8?B?K2xrdlpYNjF3cGduQXdHWnVURGQybE41SGYxMlZBd0FFZHZoak9jS2VNeVFH?=
 =?utf-8?B?WWFoRGxneHFMWm53VERTS016c05lVE9BN1FHQ01qNmh3NTJzVnQwcGFkdXRJ?=
 =?utf-8?B?b3JaNjZ5czRKZmlXNjRiN3FKYmlZc01kK0JnVVJmZXhQbkpSTXNVemI1cWdz?=
 =?utf-8?B?eTJjNlVLb3VUK21KZHd4bG5lbG9kdDZqdFV5NXlFb2NXZjc0UURWMTlSVXF2?=
 =?utf-8?B?c0tySjVzdXhlbGdjM2NnZ0dDMzh2Vk5KeGNrekVVRHFpY25yWFgvSjREZzV3?=
 =?utf-8?B?MUxIOXBGSHQ5Tk5lQUp6UW1SdnVNNklFYXU4UUJRT1g1a3FHd21sUjRkZEtt?=
 =?utf-8?B?WHEyNlZod3BZYkJ1bDJwQlI4b2ZIUHdrdjI3OEpZS29jbnVJa291Vys4cUxq?=
 =?utf-8?B?L1p5VUV4bDl0N3BtL1VZTytQNHdqeEU4b0JlZGE0QkhEcW1UamNkcHNXWVk0?=
 =?utf-8?B?SUtWeVJRcE9xS2JOeDhOQTJKN3VLTWVqcHFNelYvMGZoYjVlL241S0FSQito?=
 =?utf-8?B?bjJOOFYrZUhCL0NHQ0JtU1o2R3RERTlidDNlTE5wSzFYaFZGeVpVVGZUVW1z?=
 =?utf-8?B?Q2swaXVJby9QRlVTZlFBVEc0NTFTLzJhai9QRkJYamg3aHhld0o0Y3kycXdY?=
 =?utf-8?B?U0VXRjR6MU9rN2tQbnNqU2FKQUdWSkF4OFIwUkxaSWRjWnF4OUVBYVpKRjUw?=
 =?utf-8?B?VmtJN09RLzJIbEpkRHA1QzBLV1ptM3d5QXhHRks3R1NieHliVm5LTmVZRkhm?=
 =?utf-8?B?QU5JTU5nRWdzYzJGcDEzYTJCRGZSQStTdlR2a0d6NUF5YjhUSUNRRVpuOGFV?=
 =?utf-8?B?akxOQytyOVBrR3I4UjlLK05CcS9MMzVDYlNjZWhnZzFSemxSdkxnQkpPYmEx?=
 =?utf-8?B?VHowUlkzRllsMGVBYmY4OXpHd2NqcVBoajF3eEl5VzAyekNveC9OL0IxOG9B?=
 =?utf-8?B?blplaEpHa1Z2cGE2SUxRTk1iY1ZHMEoxelQxRzFWS2Z5cHpRZkFHMXFCQTlF?=
 =?utf-8?B?QU8zMmNNMHAvQ2k1K3d3T0FzU2VDdnF1Y1AyanFubS9GbEhwYVl1TWpDYXR2?=
 =?utf-8?B?MFE2V1hpaElCVk95bkNteHg3THhWVWhZYk5rNU1EZkNSSDllUjBpYWt5OE5C?=
 =?utf-8?B?dWdsK3dxK25HYVVhaHY5NEVQdmllbGhzMDJtKzhFZ29FZjg2cVhqK0ZtYldq?=
 =?utf-8?B?WWRQZzZzTUhnMG9oWUFFMXhRaHpYRmYxNUpGRU1rVGdJU1FBNU1leEY0MUJZ?=
 =?utf-8?B?WmIxZWd3ZTc1bS9rYmRQR0o1YURMSDQ3NHZhK001U0VpUnlYMnNNQTIyamls?=
 =?utf-8?B?M2xIaURSRTltOW1USUw3S3MrZTJuL3oxZlQrbmtad3hPdTBIWFF3SFNPeFFH?=
 =?utf-8?B?TWlLRE52b2RHSHlOaEg0aFJhOUNLVmdVNzBMclRHVE50RmU1WVBSMjdtTXFD?=
 =?utf-8?Q?DJ7xZMI2osZ0CuYY=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	EUIgXK6BvK2vxg9tIOZR3hvK/92t+mdHFV+zKex8RKasBAQ6cObqo1xeqYiujnsXqQ3sLALsGpNkfFZ76HSMrtl1Vh+G+yS81780fuz4R2IXLKWUrVakzM2c07sXYfgceZzCGx1+IiTx4tFAj+AauXYNvtkvy4hN2OiDLN3oluCJDi5D+UlzoZN1RUTFm0iJa5VnyfL6TGJHl+lqPBboqjb28mbVUWxkEh4XAtj3Xqzpk8IaRf6GfuXQWw13Twjol7pYLANQoyp3UD3pPj31i5ANyahXyqJ+1q+kSr8/b/ER1YP1ppFZAHoJpF/DoY/jnr/afgrk9fC9nkrgh0WRLT0KWThsWtj6joxIs+Ojs8/FAFWiKXlOxKVSTcVDQGLoG+8DYvJjEZra4dFsr7ipfnIM5lMMqlR5GFYNyUS7CVJLiTw2uNqJnbQKkfBDzrsEQFZGXbZ/xt06iv98zF6lfeADLR6OeR+B4yl1Q6Bbs9LAU57450gFcxOmgyT/I7ugi6bcwSPWgWJI/DerA8jDoomMjWRHumjMWXN63hW3r/IqRYaroEONLINtDhb8+3cX2KXInRJdBphtwrkdV/hYbf2f1TePaojJkb0P6bjPWNk=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e68ff3b2-0045-44db-b18a-08de4c7fbaf3
X-MS-Exchange-CrossTenant-AuthSource: BN8PR10MB3396.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2026 17:27:41.6044
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tknEVnF4qheUvbGoOxhVN8Y0w9o1DQCVXqJUqyAQghSv2BMbPGqZFGCY8ZINXPyEoVA+jxLdquqruBAEW2y5ENhgsQCom2hvd+paTAXTTUo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR10MB5123
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 bulkscore=0 malwarescore=0
 spamscore=0 suspectscore=0 mlxscore=0 mlxlogscore=999 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2512120000
 definitions=main-2601050151
X-Proofpoint-GUID: tBnfuuRXG0Q4s5v11cPOP6DEE5fzM_nC
X-Authority-Analysis: v=2.4 cv=J9SnLQnS c=1 sm=1 tr=0 ts=695bf492 b=1 cx=c_pps
 a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=BE10-0SnAAAA:8 a=AoeSMSUmAAAA:8 a=yPCof4ZbAAAA:8 a=g1yKXgUx6fylW_SDFmAA:9
 a=QEXdDO2ut3YA:10 a=3p_NMfGnNR8A:10 a=gWwGET_y_eQA:10
 a=7Sfvhf337DmkywDkm9lA:22 a=2UY7SMgi64q-0UtCmZ5F:22 cc=ntf awl=host:12110
X-Proofpoint-ORIG-GUID: tBnfuuRXG0Q4s5v11cPOP6DEE5fzM_nC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDE1MSBTYWx0ZWRfX3hFMMR/fU9Lt
 yXiZ3gu2NnwAnyLp+Ju1Y2Lm26jbFMJ8Bfj71QnVeRMNp1jJEu96584HKzi0ehwA6T0RXkFfKd2
 h1PKcvXfwgBDq/b7mDn+uK3KyBFJ46tsqH55cU6wi7uOQHABw1whZAjIojnsJ9Ndlg4+uGApcRo
 4OueVVKtHoPdzfaP5NRhz3EzMueSL9o15L9TSDH/SiV+CLTPXcQpmOOOVmVbvUJDC/gYBM+kqwI
 wmQfhKOLjI6wxKbDx/LJFHxuJpz+QTge/1OaFJxrFg0jbTX8hgVgKbItYyAYEqabXI1rSorLIur
 bJMlfdzw5fcKIB8/L1qmfNg62/N2WL5GBkjM6Ix6L8raFQD6CYQLzPAf6V0PhllwWo3tqUGAsXO
 Gzw+cFaqMEWKmOMrEpBhIe9OPqpt2/J+NNydqsG1nTGhhzax34oURADtld8XsPYXSnh2ETDyqYb
 ujdslfn8mToLCZX3YifxxxU0I8FfRb+WAGTNtYhs=
Subject: [oss-security] Buffer overflow in /bin/su from UNIX v4

Late last year, a tape was found containing the only known copy of Bell Labs
Research Unix Version 4 from 1973 - the version in which UNIX was rewritten
from assembly into the then-new C programming language.  Since then a number
of folks have been running the recovered software in PDP-11 simulators.

https://sigma-star.at/blog/2025/12/unix-v4-buffer-overflow/ examines the
source code for su.c and shows that the buffer for password input is a
simple 100 character array, but the loop to read password input has no
boundary checks and will happily keep writing long past the end of the
buffer.

Doug McIlroy from the original Bell Labs Unix team points out that
"Overflowable buffers were common in those days." and that there are
likely more to be found in the UNIX v4 source code, in the thread at
https://www.tuhs.org/pipermail/tuhs/2026-January/032966.html

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

