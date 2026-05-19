Received: (qmail 9223 invoked by uid 550); 19 May 2026 17:14:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 8178 invoked from network); 19 May 2026 17:14:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=EKwb5FPeSBv5le3k
	xKiS9j8QW/59VJCOjztyFvst3g4=; b=bosmjNN3I6h1wyxDrVAdMWD2d6vsAD2K
	OU53kxuFAhgyoLw+cwgUnugaBMr5wmRfLnmIe7CGJCJs4R/LsgTXwXAXVRUZAS1o
	R2GfbfRunKpAA7Kh9lYntqww0oi7M4+KY/CEiYID8vR9s/QRUjVlCZiNiIRQRzXO
	4HaKjJ+fECJeMPShcdN9Zii7aMlZItrtUyOghD8RFBNSKPbI7uvpOHzenr05EXrx
	+JxonqBOFMglx7b42uAIYp4HLnPWbH7giPrt1rhNQf9x2GOHgiOh55oI4lQdJ9ze
	YX4/CbY6yaJx3T0aQ0S8NNVhrHgJRSwrZGqi296yr3/AHIFXLimI+g==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sYeatCftewexD8RMsovJbuDFiGFmhqM6SD0MH51ifuAFPIBtjpF9J/5XvuLt8uCkcLmTeWMbsdW21jUFb2aKuJ8cW6nd8R6tGbFAsfMzvM6Vlf/EZyRRmVCHXr/K9w2VSvJ/OIrpW888RZ+JTKihVu6TbvM7yKvZ1i9Et4ajraGRmW2NRAljtW/mZpAhYgqaHnUz9z2ZvZKKJUG718yYXEwAHcoKxe3TFDKse0HXzcpaBzFV2jNFbuvPno5t7hRGEMW0rtyhiw0OEfPXK5F/Quau7KB3noNswySHM8szbkvUT3AU5/RkzlqUAuv0jvQ6uhq3AKtZe9OXK2lWeXSEIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EKwb5FPeSBv5le3kxKiS9j8QW/59VJCOjztyFvst3g4=;
 b=t2DWwjnPT8uW0OHnuzNkmAVDKhphwRtM6OgWpH8WDwU9mJYfleDD2yPztk2dFxJSGF0DiQUwe9fuAaBO8/tB1q5/s0VM/KUCv+IyTXIa/TT6HaSz/bIZlF1burXYAk5TE7mYTF/X3MoWHdqA2is1i7WkD/BTko9JlwXc8wW/gh+9SQIBfmZK92g3DzFwQ02TqBBnBaxv9VI/3JuNIfweaVjI2okfYew6ouI72/cXZ2WZ4LeETObdlS22yeU2BPIWMuhA+ZoS1PKUqeBjlCzVVCHzXHXegeFd6IuTFheha1euEnkx2dYh+CgcwV8GFdxFoCN6rNSS94Fo13y+KjsCsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EKwb5FPeSBv5le3kxKiS9j8QW/59VJCOjztyFvst3g4=;
 b=s05GdiXWGOoRAg6iZZLzRjqMJYtujiJ7ErUPzh+bm7ogu0s4mPukYoEVAz539Aiw77l5whQAkDRWWasBmd6xEoYt6a6a4AJvbRFm5YUr8frc7QUWwVYQsWuvOeTIRk3d8u4SkEM7vMQlT8998mXs37/UtdSQjRzJB540AaBhbnQ=
Message-ID: <c4f7f03e-194d-4a1a-9c9a-5f8a791e5051@oracle.com>
Date: Tue, 19 May 2026 10:14:00 -0700
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH8P221CA0024.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:510:2d8::30) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|SJ0PR10MB4608:EE_
X-MS-Office365-Filtering-Correlation-Id: e2d47d8f-ce8a-4adc-66c8-08deb5ca06be
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|366016|56012099003|18002099003|3023799006;
X-Microsoft-Antispam-Message-Info:
	YPB4IAYk4pxqr9IAWMhdNJY4blE/PCq2Beu3dK4I1Karsd5ZhsnQxN/6AIHMlc2L1l/kSpJVDEvqDGE4PdAr+niLmjqGDcubitttxkih7eA4rT/soXRRsqFjsTKd8TCAjkt54ogzC/adTiVnvfemc0SJYVX183UTnJ/SYBuhm0e7gcEu7Rb0RRbVzcPnM2/acjJKiO1HWuDogOq7yB8t8n2g690MwqKZTJXD2YDucTyJx5bJoFyIDWa6jdrOtNxqZakVc7Wlepv2vcFgpC4v+JYB+LC6qrD1vK90dXxAEIyM+SdThuXPkcI46jj6lu2Th9djJtM2qKkUPLmumoad9+XJJdZsJ7QnTN3fI14qkNo2yX2GPUQ3RwJBZG2ewKNIpaH3iJk3SxzlzgitcQ57NteIvz+oBcBg45V4rSkDT0sDqTywKhxM4VOzNCeWFQjCu2E1LZaw8PW+cnuA8n9JvzfTHiQ4iuXcp+E0lNoG+tyn716MZXcJSGp0qknMuXwUy2F+IYbY+I5E46BFOYx8NJ1mjgkE4hX2mzXjUqKdP2KZmt3kJk9iU+ImG5wP5UTVQRQpnTcOTgU3y+SEdju5d7TiqV8jsyhCZn7/bqRioFhDfjXoNhGUBdCuZrhqvI+j4+qaJpfFPI6OTAF2He2Q+g==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(56012099003)(18002099003)(3023799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?RFczQUJEelg4ZGZ4K2p2bVVMRGttNzhNTk9MVmhvTVZTajZjaDNleVpWQnQ2?=
 =?utf-8?B?UE0zUWh5Z2ZzZTBDaXVFT3ZCb1NxckRWeCsxR0R5a205eGRwMFo3Z0NMWWxE?=
 =?utf-8?B?ZjBDdnh6ZGxZcktTcVRacmd4S3lRanNMVlBGYlU3aXZXQ0tsK2tmRUJzemQ4?=
 =?utf-8?B?c0szc01DMUw3WFpKYWFQREdNRG9KWHFhYWpVaWxmTlEra3VPaTh3SXlETHB5?=
 =?utf-8?B?V3BndzBnRzRLdWIxU1RRNUJKZlRjaTNpOVR5dzd6QktUbE4vdUFZZ2diQ0VT?=
 =?utf-8?B?WmZCQTVuaHMvOEt1Z2ZzQlVxTm9zWS9pRGkwQ0h2WEJacGdYZmVHU2VBbmpD?=
 =?utf-8?B?RFg5Q2hUMUtmQWl2dTMxeU96SGJrOUlzUmZCY3Fucjk1NFRqZGVXb2o2V21L?=
 =?utf-8?B?cS95L3BvQ2I5QzBnQ1RSWXh2TVJpZUpvRWhQTlJJVTNFQzdJd1VYQkd6REtP?=
 =?utf-8?B?cDRpczMrQWhKZjZuR3VRS1gyUThxZ2EzeEhIaU5FeDlDVjBaVE9qMG9mS1ho?=
 =?utf-8?B?aFRCejFuZG9haHF0QnpSekdYV1lUdFZmbFl4UmUyUEtvSW9nVzliWTE4MnB1?=
 =?utf-8?B?ajVCbC9iL3ROVklGWERjQWxiMkJzeU5jenRMUWNTY05kRVg0YldGelhJRFgr?=
 =?utf-8?B?VVg1SHFCWU9hN0dTWDdYT01Ld24zVHVqaCtSUGtMN2k3MENzdlJSdCtJd0xk?=
 =?utf-8?B?MkwxbTdTQTlmSDBwMlNqOTcwOEVCcC8ybWhDcWVFTWlSYU5URnhkc1hqc2dE?=
 =?utf-8?B?NDFZYjVLWitDNFRFQkVMNHJZOEo1SGFwSVY0SkZtSGZGbngxbGVCZWpXTTlW?=
 =?utf-8?B?cy9aWTVsS1BERTBmRE5jZG1LN2NycnZQdVJJYmJYdG5wVjZQQnVQUlpqMVJy?=
 =?utf-8?B?ZGFjZ2lsWEdxSFJvbWMveVFsa3JweldjN3FqbFBmRzdSV3VuK0NHODNlbUhN?=
 =?utf-8?B?SGx3MEJRTHdUUFYwY3o4MkxodkNweHhnUjNkT1JaK1lJWkowdlM1R1Z6dTVX?=
 =?utf-8?B?bGtQejlkUG4zdUh2VEp4N3BVazAydzVlOVN4Vjl0WVM5emVkS05vbTVRZ2Jw?=
 =?utf-8?B?NEM3WGhCRFdlRlk3bjU4NW1SNHhlNnhORjlTSGxSUlhlYk9JUnlKN1I0dTFr?=
 =?utf-8?B?dHl0Y0tuYjBBR3RDTWJkVUZnUkdQcXk3Tm8wVkVxQWpEcllSL1drcDNGTWNx?=
 =?utf-8?B?ZExlaURBaCtVU3FNUlYzck1nYkEvc3NHZzdlU2VsejhodUFOSjJQYXgrL1E4?=
 =?utf-8?B?a0N4ZGMwWFEwYnZ4cFBHREY1S21xci90NUppWTBVc21HTGpDeVdJWk1GSlda?=
 =?utf-8?B?YzFyZW0rb1pPUmpxOXU1WDhOZ1ZaeDNQamxIZ3oxcjNqZWVQVDBXem9aaU5Z?=
 =?utf-8?B?WnpyQi9uZitUQ3RxaHl3ZVlJam1hMS9CMHFEVGNySktlS2o2RUd4SzgzQk9R?=
 =?utf-8?B?Z3U4V1loUkJlekhKNTN6a1NubGw3K0FBU3dMYkI1Y1VPVWtDMUlQVXRXbTRJ?=
 =?utf-8?B?dUNQOHBCNHl5blliQTlHRmlDTmVnMW00U0o4T3ZSZ3ZaSXlNOWtUL05GNURq?=
 =?utf-8?B?MmZoMkhucVR6SGRoZEFodXhaR0l3c05EWGZ6Rkt3RUIrQkdHbFY4WVQ5elB0?=
 =?utf-8?B?RmJkTFRDNlMrQ21qcWxDVmhzTWl5WkpTNm11dUJPbFZWZ2krVUQ2ZTdtU1Bi?=
 =?utf-8?B?OXZDREJDV3lWMnVRZFozdFJDRzlsTS9pbFVhdDZXcTMyWjdqWkw3T1M5SkhY?=
 =?utf-8?B?cmZyNEhUbzFISkJNeXEvRFErZmFEUVkwS1BDeXYraFdHaGZDeXdMK3VmcTBC?=
 =?utf-8?B?NVBWbElBdklwS0tCejFYQktSdXlZNlZYMDhxSGFBU2hCWU9XcjdiZXJCN21L?=
 =?utf-8?B?bXRjcUNIeFcvMlZqWnY2SkhxcXM4bXdnUzJQdkhBVzlSRG9BbzVKM1QrRnBm?=
 =?utf-8?B?a0ZVWGxNcTQ0OHk0bWtpc1JEZGZoaVV3N2dlMW9BUTd0TFludlZXM2lqNG1l?=
 =?utf-8?B?alU1RXUwdjJlY0dDSjhiQW9nTnA2Unp6R2FsVWx6ZW5mZHYzYTRiQTMrR2Rt?=
 =?utf-8?B?NE9tTmgwOFYraGtuSlVITkdmU1FPRjJzd3pBL3o5K3JRTUlVdDdtODZzL2Jz?=
 =?utf-8?B?NU9rTE9OZ012N0h3TmxvV0NVL3dyMWVRcFlERXc0cWRCcE1GYW5vVHh0dFEx?=
 =?utf-8?B?UUYzcTIrMVVwN0xsRnpFcUN0UVdQclAveEltemlQeFRVYkdJc3hyU1NzYXBU?=
 =?utf-8?B?bElkSFZna3htbDFzMVFXN3ZJL1VvUE8xZStiVDJlR0FiWW9nTWpRRUlNcklI?=
 =?utf-8?B?YVpxNzZyOEVtWTE2R1g0MDhuejdMZFljTW9pV3dFTzNNYjRFek5WN0lJR1Vs?=
 =?utf-8?Q?802RG2lj2MaEchhM=3D?=
X-Exchange-RoutingPolicyChecked:
	cNeaHnNUk/h5mA7lQGPE7FtR8jHFtu2VNUW8Z5fFsmaKlEuLKlwK+lsjRKW8xZr1AY2pSoqds1Ca192Ou+QHnimmzA60A+BDPn04xl4H29Th+vRmqEIeKqwdVJomb13hgxPTS3sCW0YHqs8OeW05qgOjEZMyfLvJdKgmlF25fjoiPgH+yAiRyLj1WqN6mZBw5u0HhDFUaVP9CC39hEyK03tfGmFpL8WygfjKMnP2svXTbEolBgTzWQgg834B4+rh8OGXx+yQu85vQ3y8FpgW/LUodn0rjovJD8u0TbFvKwb89m3iNdJ9l9bHvelSXJO3UYlDLb7lHzy+/X+W6h9+zg==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	G7uvF+wBYZeH4LS42B/b2/d5TwhUmHsFNHUOTrcX1o7T6OmrN9dYr1WXajyS9nXj0s0mUNdHxW7EkSwmwapM45UKaxl1KbP6gikmAmrqn0v5yw36SWC9Juc/iW3KrUj9h6T7/QbpSmwEny+DNfCBU9yIDeGNbkgMwg1OFjxHnXvyFb3UzIK3eeF/9i08XSD3wdySLB8omy5q5yTdr5/SFe8WkX1M0U5yFt1aSUmgWZofdA+b88xpF+azTHQwJJP9ecAyg9hcZKM3uCW1ZRrJc6pXYH7ip9Y6wZd9IBGaN8c6h1lZRwfRy365iWtlHoh244yJY+Q5ihMUIuamwiFFOrVleaMvubPo2kgevy5klSgx/o5qi1oiaiVslc5CxAJFdgpy+YHLoqhCJpJAl8pgx+wSv/9bGsTryRtdUVsTCjc0iFqjF0iNvQX0Q3T4n2F4K3lFkiQ7O3PKlxydWOJP5ZkZByLfkYtledI7hapKrVLWIgyvyubJ3tVlHVHDGyO6ad/LFBvYuX/GydaqczlcESLwAeDeSuBFxbQVMQamq7rVTSNxCHPjMVZYvRs9Vb3UEojTwP9EQXi7k7ExMV5o3OsGVjBS0OsBL5zxqE2AB2c=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2d47d8f-ce8a-4adc-66c8-08deb5ca06be
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2026 17:14:03.6911
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4L3UHROl1ae3oQ0utcot7OqWf35q44/bX9VUJp+TbO1ktPJm/+vQOqKaZVZ7nXMEnvpm5Ae+Hc6MEzzKNjUd3IGa4CcY+FlMPKKxp+9Hi4k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB4608
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-19_04,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 bulkscore=0 lowpriorityscore=0 adultscore=0 mlxscore=0 suspectscore=0
 spamscore=0 malwarescore=0 mlxlogscore=999 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.19.0-2605130000 definitions=main-2605190171
X-Authority-Analysis: v=2.4 cv=UOjt2ify c=1 sm=1 tr=0 ts=6a0c9a61 cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=3I1J8UUJPc9JN9BFgKH3:22 a=NEAV23lmAAAA:8
 a=P548ySWuAAAA:8 a=wpjeoAaxng8NuNP13zgA:9 a=QEXdDO2ut3YA:10
 a=dtHbOJcC6pB8gVwlmWzd:22
X-Proofpoint-ORIG-GUID: 1pYAZjmc0FVrogzeY-B7xTTd_Fu5YUNn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE5MDE3MiBTYWx0ZWRfX6yGKpammSo05
 9T25Lo9IgCSVsUSEHdMslGfEmSeJCvZiujRbBi1y1h/t9O20d28VCjeUE0eecmb3oBynvXX4lRN
 OzQ463ZFQ/CRHaTx8ZFDaf/LFTv3BKOyL2Faxls5ftnqciiIc4duJCBcWeYj7RJWAxgQ+TrsZPk
 R4EJI4Ab5/pU5hDpWR1eRkBusI2F2wsx0BQvPVdsYEuP3OJC9R9xThynLc1nKi2dXfXUbvpHB+e
 6se+x7z3SJ46evu4ggwc/sh1bs/K/BEyt+59/FFsY4TOlkn/zcA0sTus0tk2UuMPt3f83NILl3U
 2LRuh57hh6ZCCxMbtQ5lwazHG31gVJO84jiLZjtcj1KML9rtnapTJH+0Oxx4TwEabturryRmALy
 LCkyjYiUBGf9d0q3uyhKXQzW5HiR9afVs9/zCqKr+Se/S5PWl5T6n/c6JvCw2+ZZLLMfCdqUiXs
 NjuBEddBfXfDohgUB1w==
X-Proofpoint-GUID: 1pYAZjmc0FVrogzeY-B7xTTd_Fu5YUNn
Subject: [oss-security] Memcached 1.6.42 is a "major security focused release"
 with CVE's TBD

https://github.com/memcached/memcached/wiki/ReleaseNotes1642 reveals:
> Memcached 1.6.42 Release Notes
> 
> Date: 2026-5-18
> 
> Download
> --------
> http://www.memcached.org/files/memcached-1.6.42.tar.gz
> 
> Overview
> --------
> This is a major security focused release. Nearly all of the fixes are security
> related for issues that can cause memory corruption, crashes, and so on.
> 
> If you submitted a security report that ended up being value, you are credited
> in the commit history.
> 
> If you submitted a security report and do not see it here, it was either not a
> security bug or I missed it.
> 
> Due to the very high volume of security reports in this round I did not give
> them the individual scrutiny that I typically do: if there was a clear bug, it
> was fixed, but no effort was made to validate the potential impact of the bug.
> 
> Most of the these bugs look extremely obscure, and are impossible to trigger
> without convoluted configurations. This does not apply to all of the bugs:
> if memcached can be accessed easily by an attacker it can be crashed.
> 
> Similarly I have not created CVE's for any of these as that requires
> understanding the severity of each bug. In most cases these submissions
> vastly overstated the severity of the bug. I leave it up to the submitters
> to request their own CVE's if they wish.
> 
> Upgrading is strongly advised, regardless. Thanks to everyone who submitted
> reports and for your patience in allowing me to collect the fixes all at once.
> 
> Fixes
> -----
>   - vendor: Instructively warn if vendor blob missing
>   - proxy: fix write length in extstore miss
>   - Fix timing side-channel in SASL password database authentication
>   - proto: fix signed overflow in bodylen for binprot
>   - proxy: fix underflow with 0 length values
>   - auth: fix data race during reload
>   - auth: fix crash when given huge token
>   - proto: fix crash in binary protocol
>   - core: fix crashes from slabs reassign
>   - proxy: check result of buffer parse in match_res
>   - proxy: fix memory underread when nulling requests
>   - update data block protocol description to no longer reference obsolete S flag
> 
> New Features
> ------------
> None.
> 
> Contributors
> ------------
> The following people contributed to this release since 1.6.41.
> 
> Note that this is based on who contributed changes, not how they were done.
> In many cases, a code snippet on the mailing list or a bug report ended up
> as a commit with your name on it.
> 
> Note that this is just a summary of how many changes each person made which
> doesn't necessarily reflect how significant each change was. For details on
> what led up into a branch, either grab the git repo and look at the output
> of git log 1.6.41..1.6.42 or use a web view.
> 
>   - Repo list: https://github.com/memcached/memcached/wiki/DevelopmentRepos
>   - Web View: http://github.com/memcached/memcached/commits/1.6.42
> 
>      8	dormando
>      2	Bujna, Igor
>      1	Alec Stewart
>      1	Sarthak Munshi
