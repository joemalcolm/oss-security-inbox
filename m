Received: (qmail 11687 invoked by uid 550); 28 May 2026 18:05:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11659 invoked from network); 28 May 2026 18:05:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=jZ8wacT8dN2gwcdM
	noPIODuYFQRZi5GJRoNGLpoSu9M=; b=IEPbFARcDVe9RNRRiYV70WoaYiWjL7wO
	C3DrZaSx8ZyX5Aa5nu/grAcPrSaPxXayCwWGp00tYwn9kpbzuEmMwgEM69TALm5a
	8mugo4Ic9Zv4YN9BNXaH47myF4qMb8wiNCzL/qUF7lAVUMVHGQ9YqDfkQmzcvDrO
	r1QjTDYA3/YrHpQFPGbs5wjbu1X5s004zt/tFngoBoWhvi9zkI3pugI7Y7WuXNLK
	i2As65fwpNqkZje+EwmIElLvWP9Z0bHLS76C+kP8YFYnrWF05R/0X6qVZXlmEb0D
	SclNUc8r3PgKsF9oQiQOBDGN4QLtcXfUs3jvSZ6bgHmJbx/jWBKCGA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VOvFWsCvzvrtCStu6xrt9gDyWSNZnbNK74/UQR4oqPrl+eo2EBeJlPNwghRIpibrkySiA11qKTuTRsMBCaNoVcF18XtXHrRguDgRKD+BHn6Za7s5nl3Ksa7kIDLKk3E428psYp5JCpjmDBR8E3bT7K+F+6dRaxjthi/Zo9+9tylOxWRayVaiVtLt4z4IHC3WhTHbpOEG1TJeuy+2jDqQ41+L0Cf3el7l4mzWHEtvMuDffsvxvh3Jh6vhIzOa+bEjx1qCd3PebZtqsTSAd52wWNGxEluf9TsEf4l+aIGiXWvpwYKuyeZBFUqGtjYsF2o868Ow7SYA93kv6fdsK0YUJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jZ8wacT8dN2gwcdMnoPIODuYFQRZi5GJRoNGLpoSu9M=;
 b=fM2Gv5+BRQ/jv7lOrN7498KYxPgiiafw56GUjQMNUpFaYv9d/CydnNY3ZR1MF9Kdbvk9K54uglu9Qlg5BbhuSRjy/B7JLf++xPqsFH2vHtWhjciwK5ptZtq6q0Tq0SN1CDr8JzMnf5xqJ5LgwTk8RLZog0L7TsWESoJGs6AXnErB9cvISQtFdsgTnvLm5eObMNTUxQy86myhZnkCfPKuNImuVv2vH3+PKKDHoM9HKDdXpufCWKYBVWqRpb7ncMZGvQLbQaUJe3vuA1js9GlnKZVL8ksQu0vF0sqUpchSoybFiLKLPENwvcxFZb2BaZ3/XmupwZW51o/ACB4x18b1Ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jZ8wacT8dN2gwcdMnoPIODuYFQRZi5GJRoNGLpoSu9M=;
 b=RQnoqaUW9JUFbH/IUHxATK0MmoF+wF66xSHyFkvgDps+9xUokCWMfHBeSpmNYX/FgDKZz3dLd6ipClYmL6VgDrSHwLDiQIodIfw0vK37Rr75eC2INBys4+vxCSgnK7tGZuIXPhs8xQcey9gm8oCwoQ7P93kDNUCso/t8wCPJkEc=
Message-ID: <a6c44ea0-fb8e-4a61-a59d-13ae88f1b6f0@oracle.com>
Date: Thu, 28 May 2026 11:04:55 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH8P220CA0047.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:510:2d9::19) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|SJ0PR10MB5645:EE_
X-MS-Office365-Filtering-Correlation-Id: f52c9b57-afd5-47b1-b483-08debce3a197
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|366016|56012099006|18002099003|13003099007|6133799003|3023799007;
X-Microsoft-Antispam-Message-Info:
	IkMCILfDVNd9JdGShR/dBxLokqwcdKWuGcLny8brlwoSPGsnghKXJMM2xAFHbngni0lw8VpqdjYQy0pkRcp6Uhq7tAxkyyAm7JyQtPXVV9Re6gr0KyHzxQCVmc3OUmC5rDbutQqArGSXSNZBEkgJ7rvPsRF+WPJpylMKV8yuqCQqU4l3tzmZtER1oUMknCBWL6KTKBJBHdgpcQO3v+yMZPSKFY2x5yVa7/eZ1gXD9NZbTVY/KcdtIa2XRcKp1bunUhlNezF4xUJ6uDKv5UVF+6QVaNsYSLtfXm4jTGOCUK1qg0F1KdNZzcnzli6JqWksAFyHLNv2ihobfawZ2BredIHfOJBPAefXtwjQB1b+yX+4TFgxfsMv6wZb9eA1hQmZx42qETyuOMTBwKSjJjl6DI7v23ZGzVx0zq8I1xlvGdjn61xlcSx3IobQh/V50XqbyLncSuw2Cv9Cdz3Psuea4OK4DjR+71GRHScj3W5OIFNqRKJ9/heoCvjEAkUTQqYyxHI89rklCV5yRcdNP55S/kn/PaVOMJUG+d2Z2SntAC/IyrT2VePRO4IswX7oH8sI+1FjaOlvNPbzjzDlGbTDphYleAUOUYndaMXnC80ylfR673h5YdwKeL+MDsetF02rKICmqAYVbmiO9lSQfXiqrQ==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(56012099006)(18002099003)(13003099007)(6133799003)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Q3VwZnJsaVQ5aXRiQXhrSmdXd1dRZzQ1TjRhZXBlajU1NmZ5L0RhMW5tWUN1?=
 =?utf-8?B?N2ZaR3h1N2xoU1dtZlgrQzF2VFRucmxqaHpvRkZJWFBvMlVDRWZOd0NQdy9F?=
 =?utf-8?B?ck41TUplQmJqdEpGU2tXMkdKTlUrOHZ5TEZHMG1TcDQzMnp0dnNSWmt3WlNL?=
 =?utf-8?B?QTFiMEJQRTlEYkZtdGtnTVFuUGtLRExyZWpKQ3UvNTVvM0NtUGFOUkpZV25T?=
 =?utf-8?B?MG9vdDZsdGpCUitTcG5PdHdhcVh4TEY0alhESVQvNjVUblJtL2hOWWhreWxu?=
 =?utf-8?B?V0RzSVduU0llOFIxTW5kZnNxejBJKzY5T2lOU245L3piV3dEcWVaMDZoaEVz?=
 =?utf-8?B?OW4rNFdpK2NWVVY3NjNUb3NnZTltamVNMStGdmZNcVMxNmFtOHlBSFY4SWxI?=
 =?utf-8?B?d1JpYWYxNVBxWnAweE1obkw1YW13RzRqNVFhSGtxeHc3YTVkZDU4a09pTWh6?=
 =?utf-8?B?dzlkZ2ZZOVZmYXQySVhhREhQMnZjMTYwUnkxa05DVWZRKzg3V1RESWNNWloy?=
 =?utf-8?B?Z0g4NFdBWEhkTllTd0VTNE9MNnBSZjl6LzdVMWl4R1Q0WG03akRHYzJFdjRV?=
 =?utf-8?B?eWE2SEtNQi9ORW10UG0xMXdrWDVTM0tvelN1bkdjSnd0TWR3VktXbmMzUGNR?=
 =?utf-8?B?c0RobWdER1lodldmMXl5TWZjUlMwejcwdUdMdW91bDFFUHVLWkFoZUticlJP?=
 =?utf-8?B?RnJhUVlld0w3RUNKRzYrbzY2blJBYnlxS29LWVVKMUFoZlU0bGZsN1FUR1Fr?=
 =?utf-8?B?SXNxUFgwSm8zQlBPemlhYmpLM05PMWRudkY5Sm9yMEZiVDkwMEczL2EwdEc1?=
 =?utf-8?B?dSsvN3dCVUY2TDBUNWdObVlJTmM5STlGTFR5MkRaeHdIenRiRWwyYStIdzlN?=
 =?utf-8?B?TGZqODVjcGtqWG0xRkJnR08xOWpFTTZRUGpianFadGN3YnNlUXV6MjlPQXNS?=
 =?utf-8?B?Z25XTE1URUswN0lPWC9LWVYyVG5pZTJyNnNQeGYxNnQrL0ZtemdmMFlFNGtm?=
 =?utf-8?B?aDBieGdmUVVoQ2lwQ0pkd3FIY3VjWS9TczZ5eFZZdWRacUZrSFpldnZidWRF?=
 =?utf-8?B?bjkyeHRWZHk4RUJKZWMzaGo0TFFRemxUb05QeGM2UjREOEpNWjJBWi9MdlNh?=
 =?utf-8?B?eGxDYnQzdVRseG5Id3NjQXpucE9LZzJMTGZSUHJlajNMWjgyS25GUlYvbGtT?=
 =?utf-8?B?NnhjcHk4Rlc2aHdLK3JDQlhzWnVKQVQwanMwdXk3M3hqSGtPWDU1TjkvMmxM?=
 =?utf-8?B?N1QrbFhaWmsvNlluWElhRXpwOGtob1c0WkhFeUdFbytsNFZtb1lVblYvL1JL?=
 =?utf-8?B?eHlLUGFSdzBMbWlqTmZHLzJ6R3luN2tic3p1cVluUXJIekVlNGZHT0kyRGtH?=
 =?utf-8?B?dXdXazhON3JlR0gyZWp1TzZpbkk4WVhrMkhlU0RUcXF3QklDOXRYbkpuZWl1?=
 =?utf-8?B?SmZsM2VNYnNadWRFSndtWURzWnA4Z2xtZVB6bkdrYlMwZTJQdG9JbG9oTlpK?=
 =?utf-8?B?Y2FFcWRqOE9ZUzRScktWU0RLQXpiNjBUdWNnbHRrd254bUt5TTc2UjBHeXZM?=
 =?utf-8?B?YlBxZHl3Y0lRRDdaK1gvcFltK0dxQlpadUtBU2FmdHhTbEhqSlRwS0gzSEtN?=
 =?utf-8?B?RE1DSEsrd2g1ZythaUdIVmUxMXZlVkRwUTFYcEZCWG92TTFpMHN5R1ZsL01I?=
 =?utf-8?B?eW44SFNqT0dnN0hnM1FMSmJQUXZ1dDFyNnRZU3NNZlJOa2ZxZXZOcUlQQlpH?=
 =?utf-8?B?RERpNjlvZHZvTVNLMENESGZ3ekZzczVpZCsxQzRKNktZa1hRKzBidFlTMXFX?=
 =?utf-8?B?cFZHZHl1V3Z6ZE5pMnFGT1ZuV0doSVZ2T3lhcDRiRmlPR0VsTlA2TTR4TmE5?=
 =?utf-8?B?eE5ST0RqdlY0Ti9sTW9xOHJydjdrU1MyY1F1elBqeWVZL1U5R2ZCNGpuZ2ow?=
 =?utf-8?B?NWZMMHB4YlFUN1VnYTBuV0F5Ym9IWHM1NnBRb3NkU2YxcHRpYXBWSVpyQktr?=
 =?utf-8?B?OE84cGtSWUhsdTlQWk94NGVyd0xRQXEzUG8wOXhKVms2NDIzQ0JvTnk0TndB?=
 =?utf-8?B?bmRrbytwaGtNTityalMyeGh5RnY5K3owVHBBUHlDRndjRm1SOXlYT3lRWGI2?=
 =?utf-8?B?azVFc3krL2lKY1dDQVFvWG1WeXoxZFoyRHhRZDk0V1MzTmlZRjdoTnFPUHg2?=
 =?utf-8?B?NERMejM0cmFaeXVMbzBWZlhDc2s5MitzR0pGaGtRaTFZdE1sbWRJalJveHg1?=
 =?utf-8?B?RlQ0aWl3dU8rQzZFMmRVdWY2UlQxalRpbEl0aDY5Ym0zOVhMQWtJY0FpSnpR?=
 =?utf-8?B?Nlovak9FSklJYUh6dkJYdzVmTC8yeVZCVklPMGgwRVRHekg3VkNVQkJCblho?=
 =?utf-8?Q?aQqLovs/iUPWGdqI=3D?=
X-Exchange-RoutingPolicyChecked:
	S3umMEtnTT0vzRWkPTRQaYtPngFGpNXEjR+tgfcrn2kdlCcCFmy0ZZqwBXwsgGeGtiEzfLsfAWzKU09+76kEm28sC1+NtHg0ZdHFc+PqmE9LVuXW+RjateHiAWoB5yGDglqxgjP/tXfe+P5dc42z6IMKBlCMX0KLU6QW5pkLKcaFhfHhAoJRVmMvd/3i4y9kLXy8OGDu3yJmzw21hVDBupmDbgEO628tA0ITje7giogeu470HqfodkppxkB1pyLGCSCDYAqHe7maqpZij702WGrewQ0EepvJuGbhEEvjaZcUGaFOh3NhTJdrK4Vz091toweCkj5pNQVlw1wV4WPstA==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	3GOzlYc0bEAYDobLpJMUMY6keJZgpb58rB3dTFz5B3BS4fNc+G/gEiS8GNdlDZcX6n/6ZQ/8t/uwWikp34D/IhmcrZOrFHTJVBJwWfeah7Gldf55yzWtx+/58b1ZKJk/kn4XhjkSkQqzlJywRKWJMW8ixkhaaAI0jATmHCQ0Gzz//nF6JPISdofx9vnR5+wO/5NSK1L1A+L99mI/dSH25XIFNsIQrF/iepl0Xt9W/U+6PRXPXPuLxaz0gRP4jxxUQr/9FTolMBcR5JTE/Xx66G1B2TTW6ewdPwYdla0TAy9TE+ZzpKMIwiGlwET7YfmRMmD1u1W06GeblLbCAKbMTKcNSW2JpBlOHnJJ+ByIMuiuBJ5Iz28Z1tN28MshZd/Z6TskMf4sIVOkYdcmsFHyFYdR1HxtwRyFTlBKk3qAUCrMM/i1x5zLF0UuObreiNPUMVq9w0WDMzxEYJ5bPXQUbu26JK/bD6UfCJgNmNjZGES2lBAkNOVoKoUrvtG/7ukMAVOcnDk6kKm15IaIJ5jFMntP5j8ciPsLiaSRWmi15Q9oDyeQDFW9nUrzCM3k27vzzf7ztlGtnCeRi1QBgzXrH7qv0r7MGcfUB647pqZuyoE=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f52c9b57-afd5-47b1-b483-08debce3a197
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2026 18:04:58.9414
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q4FSm3T5qUcPtRvTe3sxDOAadnl7uBO7+gsHEXQ1oMMQWAeOtueqiyZXfRcjXgunyoNnzruUvlpGvrEVyE0WVoMJKMlWRtLG5HyKNnhCtY4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB5645
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-05-28_05,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 spamscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0 mlxscore=0
 phishscore=0 mlxlogscore=999 suspectscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.19.0-2605130000 definitions=main-2605280181
X-Proofpoint-ORIG-GUID: uSBToEc5QnPXBhb2y3Q_w8YCsCRq_hMa
X-Proofpoint-GUID: uSBToEc5QnPXBhb2y3Q_w8YCsCRq_hMa
X-Authority-Analysis: v=2.4 cv=TaSmcxQh c=1 sm=1 tr=0 ts=6a1883d1 b=1 cx=c_pps
 a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=x4eqshVgHu-cdnggieHk:22 a=ei4SEBeUAAAA:8
 a=1XWaLZrsAAAA:8 a=A1X0JdhQAAAA:8 a=yPCof4ZbAAAA:8 a=Ibs6ec1LQuhYPNjVffoA:9
 a=QEXdDO2ut3YA:10 a=8zIOOLb7Ym0NljyPXbuS:22 a=5yU3S35YU4bGjq-dph-N:22
 a=Bho9c0fBagfJEIQBS7DQ:22 cc=ntf awl=host:12303
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI4MDE4MiBTYWx0ZWRfX/o6qOZUK8jpm
 E4UIHhNIYxASIinQ2zgvUpZtwalnuK+9OmA9lAgVQ+obPAAgVytdaVaogaQw3x2ZTc0XI567ULG
 oucHN/WOmR81c5zLFhjyJjJCQLKI+yfedySJjEglEaFXaFOIQBBJ1EBvyU7/Ix2Q9M3h8mA0PNl
 cRdMZPnPUaNF6LT0Cup5BgU6oFm0KS32kGrDUT7v7OKUdttnjn+DfyY7kQC8Yxa/4oUIgc9Q2zj
 35n0aPntQvbmqr5/QO+p8vqx1fm4grd4JDCKzr0IYdcC41UNp+1AO5OA3ZiLCVlZjD1sgCTNv8J
 X/sdyXh1HVZMhIA6vHNopZxB+/pLH4ZiHL9gC9zq0UhDkBEWkCW7bw+BEHMY3axrIrjhuYH+idw
 ptkwVZYqnp6GhAAYQ6HEz8v/1uqx2b4hYDRDRiLzubXDuMA6abUGJ84uCpwz9AAFUJXDVodqaIn
 czRznzV+rSnudrSplpFI1thZuZlA/TUuNu03M7n0=
Subject: [oss-security] Two security advisories for Cargo from Rust

The following advisories have been posted to both https://blog.rust-lang.org/
and https://groups.google.com/g/rustlang-security-announcements/ earlier this
week:

> # CVE-2026-5222: Cargo can be coerced to share credentials between registries
> 
> The Rust Security Response Team was notified that Cargo incorrectly normalized
> the URLs of third-party registries using the [sparse index protocol][1]. If a
> hosting provider allowed multiple registries to be hosted with arbitrary names
> within the same domain, an attacker able to publish crates in a registry could
> obtain the credentials of others users of the same registry.
> 
> This vulnerability is tracked as CVE-2026-5222. The severity of the
> vulnerability is **low**, due to the extremely niche requirements needed to
> achieve the attack.
> 
> ## Overview
> 
> Originally Cargo only supported storing a registry's index within git
> repositories. Most git hosting solutions allow accessing a git repository with
> or without the `.git` suffix, so Cargo mirrored this behavior when normalizing
> registry URLs. This allowed credentials for `https://example.com/index` to be
> used for `https://example.com/index.git`.
> 
> This normalization was unintentionally applied to the new sparse indexes too.
> Sparse indexes can be hosted on any HTTPS server, which treat URLs ending with
> `.git` as different URLs than those without the suffix.
> 
> If the following conditions apply:
> 
> * `https://example.com/index` is a sparse index.
> * `https://example.com/index` allows crates to depend on crates from any other
> registry.
> * The attacker is able to publish crates on `https://example.com/index`.
> * The attacker is able to upload arbitrary files to
> `https://example.com/index.git`.
> 
> ...the attacker could configure `https://example.com/index.git` to be a Cargo
> sparse registry requiring authentication for downloads, and with a download URL
> pointing to a server recording any credentials set to it.
> 
> When the attacker then publishes a crate `foo` to `https://example.com/index`
> depending on a crate `bar` from `https://example.com/index.git`, and tricks the
> victim into downloading `foo`, Cargo will think the two registries share the
> same credential and send the victim's Cargo token to the malicious registry.
> 
> ## Mitigations
> 
> Rust 1.96, to be released on May 28th, 2026, will update Cargo to only strip the
> `.git` suffix from registry URLs using the git protocol. No mitigations are
> available for users of older versions of Cargo.
> 
> ## Affected versions
> 
> All versions of Cargo shipped between Rust 1.68 (the stabilization of sparse
> registries) and 1.96 are affected.
> 
> ## Acknowledgements
> 
> We'd like to thank Christos Papakonstantinou for reporting this to us according
> to the [Rust security policy][2].
> 
> We also want to thank the members of the Rust project who helped us address the
> vulnerability: Arlo Siemens for developing the fix; Weihang Lo, Eric Huss and
> Emily Albini for reviewing the fix; Emily Albini for writing this advisory;
> Emily Albini, Josh Stone and Manish Goregaokar for coordinating the disclosure.
> 
> [1]: https://doc.rust-lang.org/cargo/reference/registries.html#registry-protocols
> [2]: https://rust-lang.org/policies/security



> # CVE-2026-5223: Crates in third party registries can override the cached source of other crates
> 
> The Rust Security Response Team was notified that Cargo incorrectly handled
> symlinks inside of crate tarballs downloaded from third-party registries,
> allowing a malicious crate to override the source code of another crate from the
> same registry.
> 
> This vulnerability is tracked as CVE-2026-5223. The severity of the
> vulnerability is **medium** for users of third-party registries. Users of
> crates.io are **not affected**, as crates.io forbids uploading crates containing
> any symlink.
> 
> ## Overview
> 
> When building a crate, Cargo extracts its source code in a local cache (stored
> within `~/.cargo`), reusing it for any future build. Cargo includes protections
> to prevent any file from being extracted outside of the crate's own cache
> directory.
> 
> It was discovered that it's possible to craft a malicious tarball able to
> extract files one level below the crate's own cache directory. With the way the
> cache is structured, that allowed the malicious crate to override the cache of
> other crates belonging to the same registry.
> 
> ## Mitigations
> 
> Rust 1.96.0, to be released on May 28th, 2026, will update Cargo to reject
> extracting *any* symlink within crate tarballs, regardless of whether they come
> from crates.io (which already forbids them) or third-party registries. Note that
> Cargo never added symlinks when running `cargo package` or `cargo publish`, so
> the impact of this should be minimal.
> 
> Users who are not able to upgrade to the most recent Rust version are
> recommended to audit the contents of their registry for the presence of any
> symlink, and to configure their registry to reject symlink (if such option is
> available).
> 
> ## Affected versions
> 
> All versions of Cargo shipped before Rust 1.96.0 are affected.
> 
> ## Acknowledgements
> 
> We'd like to thank Christos Papakonstantinou for reporting this to us according
> to the [Rust security policy][1].
> 
> We also want to thank the members of the Rust project who helped us address the
> vulnerability: Josh Triplett for developing the fix; Arlo Siemsen for reviewing
> the fix; Emily Albini for writing this advisory; Emily Albini, Josh Stone and
> Manish Goregaokar for coordinating the disclosure; Ed Page and Eric Huss for
> advising during the disclosure.
> 
> [1]: https://rust-lang.org/policies/security



-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

