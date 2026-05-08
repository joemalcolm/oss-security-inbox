Received: (qmail 9901 invoked by uid 550); 8 May 2026 21:23:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9865 invoked from network); 8 May 2026 21:23:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=Mmc8gel7zJGVVPou
	Vbjydoa6+NxtR2BWb4+JQVzECNQ=; b=riOX/8XZGoXL3eL0ZSDcXBQKOgw+i5da
	H52SbhEJVEpYQ9pjrs+/PguUzf0KV6kgKVR8OaTglAk7puLfQlizIGYdC6nS6R+C
	JaI6bFCXyGAm3iCD0MMq6r8JRvrtHMSoq+3MA9W4AC2l9W+et7bLaphLjA/U59Mi
	8sOuaDH5pKo98tWym3jEHRK+NYOop49ChceaznGa0txfQ9nR+sw6+FQ3xnh5OdJW
	9ATwS9iWa220BLXxJi4oyDYA/ipw9lUoaMMx9PF3TLRE8bs2nYOnUxyxjX+/jp5u
	RECNO8PV5QcRnyK85+8SKw5E/SGQoS6O2XYs8uMgE1XMBmD89yMFMA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aMJ8w5gFGjDPTQp1wQEe8yvYcYy4Us62VF/JCCvaKwA7Q5r21UB4VHUqWXZO+zv6JJEV8FCKH+ZDOxSBNKb9rxonKE6B/qtDF8FHUTYqdxDKkRg+GBgmJUBecoPq9EA5uevbbFg4L7dmc3G1gUgI5K6HEAPw+86j+lkNuaBBTYGfqc9lovQjj5L3WavBuEBtkR31nDmNqF4U+8fUmy78TaybbLw5yBtzMi2egkyWdfIoSO1aeRy8AOaR5fTilh8TnC55x5q3mJUm0kRPFg1vQzF1urPX/BGaySJQxaGWdtNhUhxeuq0kRIm0ol8MepZ2XCffUSmr010Wqgc/ganf8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Mmc8gel7zJGVVPouVbjydoa6+NxtR2BWb4+JQVzECNQ=;
 b=kowtIXkjB/W2jvLylGPJCgak+Wc4vrHH74EnXwg6BUmrcKw0lsrjY4NW4H72VGMMUR4kUxEZyBNg0HHsWYyN5NTX259i70dRNlx49qlAxzZ9dxnVtyDs9JXs9AwYy/q27t8DGPwv9n1WFWYO7BEuTeOU/Bko8nmW6BMCw536Y7qw7us4Y6CumD35EUSu2wpg5tg7H/R/k8kRpXa1hOPfYu111Zd0rnWYMYO5NHcBqzzRdcNWS/EVe8QkbjH6Tp69L6/MTFdPiwRg1wcK6mJEjQI8FYtG40S1Nxcnuk+ukpbJxGa/Day82cMi1fz7dz6G0K8n1BzwKleq1TLzt0LnnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Mmc8gel7zJGVVPouVbjydoa6+NxtR2BWb4+JQVzECNQ=;
 b=PyRPtZFhHVybsswD4IvM5/l+EneIUyfjoMSLR+HrXBXiNRftek4mrjUzo04hXREJzMPrFPij8orASMRPMBntAo/6awiTpgOWqokekNz3a/9TGHmM2nEsjisNUGI3SxPh1BHFOy78H4Oi2ljgI4+h2wNAR5sH2QynqVafW7nqrT0=
Message-ID: <d6f07325-e27b-4a80-8195-ea996bc7aff5@oracle.com>
Date: Fri, 8 May 2026 14:23:07 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY5PR16CA0012.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::25) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|DM4PR10MB6277:EE_
X-MS-Office365-Filtering-Correlation-Id: 690ac27f-f1d8-4605-925a-08dead4800c1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|366016|13003099007|3023799003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	9/NjhtDtfLodVhiAHIAqmzZWoONbcCqYn89Uk3AMAx75r0A8tyKyQNW8LDSqEbP3mGovMNSlarWA414GiU1L9xWNg/Y6GRTHjuAQUGFFklrI932tiBHaAPy/D4P8W/wLWWkH0y53sezTfTfN9jYhwUxGYbMATjVi+58gS5R5/6hIAU8WFPEsdaP2pF/eruoWhnDuA/5oHLE+5tUX8JI/dmPORRbGfRUg+cei/Kc739BeqMF8EHwoBmrgxQwhqZTuvVafYCHboKvVeSMVJKMLEKDRSdWYOxHDwX7R1iFbQzk2Cc63RA9Rh1kv/iwTGKfzZv+amZqUUpmKvc3E28j62wwkbHE+nk/OiHQBQw+yLeM0MCx0vwxYN9yUh2q92pYtuRbaRDyHRP1fB/7rd1dHBQaAU5ba0hocGlD8lMCff5qb7b7IM+4qGxQK2yQaMvTqQSg4pE6iWXwanWxlYjlhbLwavONt2dRial9lkBV4M1+SiKQO/krgFbgtdFJpAr68GLMdd3oGTgC5gjirrmDOIeO+hytZC87Unu4u+/wRK8EH8HMZaNcdQh4Kcx2X2oxQFM/zY7xgk2/7s3RnjjVBc22KNvEWmC24nk6VxRpXDoq651X3ADsvip3TsD/OhgweDO52LkURSDLKeooVwLGvjw==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(13003099007)(3023799003)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?RjZIWC92VEFxUGZPaHV0dTJtSGFPNG51dHdnamVITFV3K2xLNU5FTy8vcTlz?=
 =?utf-8?B?LytrUHYrby80blBtU1NBR0VFZ092OWdVdjkwdmQ0djN3c3R6cG96VXZsUGVV?=
 =?utf-8?B?b0Nqc3lqUDRPdC9VYldJWVV3QWZwaE9pb05BTDFKWHFwVE14T1lFcm1WbmVK?=
 =?utf-8?B?aURHNFYrUW4yaU1QRUJKcW1xbkxjaElyb1lrenNMZlJ1MXZ4ckFWUElHZTV5?=
 =?utf-8?B?SmtsRTdpS2xtVXBWSnNFRTdLSHlvT1dzSGUvM2FHZ2pTdkdycnRIaGpmVU14?=
 =?utf-8?B?d0IzMGpMdEVnT2pScHZrNmR4bnhqdGpPb2Q2RmRPaFdONkZhNE4wMTd2VVhP?=
 =?utf-8?B?VS9ENEF0NTlONFpXME80aEpBUTQ2UjdMdi9iUXlyYnhpRmV3WTZFeVhCUVdm?=
 =?utf-8?B?UWRoejNTUE42TllXV3N6d2d0K1c2MUZwK1MrVVFKMlR1RlFiTnFjY28rN3RW?=
 =?utf-8?B?NjhaWUFQMkZlZE9GdFVoT0lHa0RqbjhRMFF2K0VkN2J1VlVtdktzcW02bkdQ?=
 =?utf-8?B?ZEllWUdwdHdEVUtzSmVDZGoxdC9FNU5wWGp6RGFVcVlnWkNzL2x6OTVPa3BD?=
 =?utf-8?B?cFlWWE0ybUJMLzJmcGVuaWo1VExacW1ZV2o4cXJiZk81SUdObGxOYlA2WXFz?=
 =?utf-8?B?dHJLZDd3SmRmbnQyVm1aQzdzWkFvOExpTHFQbHlGV3RnVUdFZmpQOUttMVoy?=
 =?utf-8?B?TGJxaXg1WEFBLzc4Wjd0Q3VkVHNpdzJRY2NxL1NzdzVKS1VDSlJMRExXaHJ3?=
 =?utf-8?B?ZEpoSDhVN2gxU2JkVUY1OE1BM3JBQVJiNVhmckE2K3ljaFhpQ0k4UGdRb1dt?=
 =?utf-8?B?c1U5aGx3Yk00NWJxU0pWKzkxWW1DR25OSjI3R0JXNWkrRFA1amJxbmJTcVhu?=
 =?utf-8?B?ZWJ6RWZzaWpyU05kYzNVM09kYTdPMDNuWDFnbFhLUXRrdUxDcWpiSEVlV3hW?=
 =?utf-8?B?dDl4M0RCdW1Hb1dXdzU4UWFXTUFmUUNyMnkxQVlBN2J0MXJxRGZjb09sMDJF?=
 =?utf-8?B?YlFjZkE4QW9FamVuMlNrYlEyamhza1JiRklQOXdlMUJPd3hYazg5QWFSaUph?=
 =?utf-8?B?S3U0MHlMb3hvNXlKYXY3cUNDVmo4VUdSNWc5aEU4MUZZK2c4TXBtWjNROGU0?=
 =?utf-8?B?bUNIaDFHOHhkUWx4M01Ha1VpdzdMRlVQc1RvbUZHNDkvQTBpRXRwMXpkUXls?=
 =?utf-8?B?U1JYQWVFWUpNNVBWcmFDbFp0K3U4Y3FBSG5xMCtxRk5lSXcxRm9TVnVyNE9y?=
 =?utf-8?B?YWd0S01Ub2lGYysxSWNqVUlScmMybHpVVDAzbVdhWGZXQ1k3RHRZa053ckdV?=
 =?utf-8?B?ekJ4NXFCYzBxZ1N0QWMrYUh1Y0IyeG55SlRwWDRSTEFRTXIzRFhGREhrY2Jk?=
 =?utf-8?B?N0ltVDlTZGFMRjFrRlVId2lqZFZzN1F3TDE3eTdiWVUvVVFXZTlLVWJ1OW1Z?=
 =?utf-8?B?RkluZ3VHbEwxL28wMmJ5dGFkUTFBNmRRbWRMSjFleFVGN0ZNRnBSMkIxQ1k5?=
 =?utf-8?B?MWJyaWFUWE5OSjRvSlVadVJQNTZCTnJaZDlnYnN5anI1WXNCZ1R4V1FGcEsx?=
 =?utf-8?B?dUQxMnRiUVdzaFpsM0drM2ozWVIyVUJGN1VYRFE1U1ArRkUzaVh3R2dVWGZ3?=
 =?utf-8?B?bVRON2NQV3prUExCWGozenlCT1NJbUdpZEpqYUFLTU55NllSdSsvTnJTUWtr?=
 =?utf-8?B?VFlmTlI1MEl5MTAyNUZUbWZuK2RFTlNRMmNNNGNBa3NpenF0Q016TVV5YjU4?=
 =?utf-8?B?VGNBcXpOZ2hOV2FMQzgvREJXZDVWQ3lXYzMwV0NhNlVyNGsvV2VLZzNRZVY2?=
 =?utf-8?B?RGFtbHppNHlEclJyQWxPMzhqc2xFTmdtaDB0Z0R6UWRoNGZaWGpobE1YWE1M?=
 =?utf-8?B?QTdCSkR5QlBHMk9kWXk3OEcwNDBPUWRnOWZVTnBEenNscGQ2RHVlRXBnVXRa?=
 =?utf-8?B?SzJsUjVWb3FhcFRJU0NLdGw4dlFLaUwxL29WOXpEcldxSHF6am1iM3l3Wlhh?=
 =?utf-8?B?RXJ3akJzZWRyYXl3Wm0vSmtDNWRZMStKQThoV2lIMi80T1pyZkxmUGpxUjE2?=
 =?utf-8?B?b2VxcWNwbHIxeWt0U0hZTEJzRXFCU3VzVUVpUVRlS3JaT1cxak5saFZBcVkw?=
 =?utf-8?B?SnU5VWxneXM5S2pnQjFnSHNDajZmand5YWk5bVZEWng3amZXR2ZyTDBRUzJC?=
 =?utf-8?B?RW1kdCtJZU1zYXh3RHBEQmwrMldKYXd5aXFtNWs0SHN1Tk12b25SR3RmM3Jh?=
 =?utf-8?B?QVcwQ0N6allzSXFXbndxR21uVHJEQnkrQ3lSejF3Ky9LYlBIRW95YkYzd29C?=
 =?utf-8?B?Yk9DVSs3VmVKdm9LOGVKRGFRam9Cbnd2REd6MndJM05vS1NPSkhTK3h6NGVr?=
 =?utf-8?Q?OJANgXmdFfcn7gjw=3D?=
X-Exchange-RoutingPolicyChecked:
	Q2wtN7+4o1BZOM4lN8YgyyglmSJDvGwD2sJjeWBNgflWVpN4Ite6AzSCoUxbsboi0I1WHN48I/zmZHr+LPUoFa1wsI0BksY7BYS5W+h/Fbfsb+oKZ9t4L28hj7mvEBOq82zb2j9RgaIpgVXysQHzFPg/9vnSAeD48eKKuZA2eAaRQpu+BNgBjEkyjmXGX9XsGnyX6HVF9Ote1dEWU79k0UzUymcUSJ0Ini6nNvz4KU+8kKXgsYmEJmbmqPLSAB1jUM8zZ8B94DvMHK8gJPbinTTnyY7Bt8PovQhWr9wW8Wm3gnSYxeLhE1H48nGwrXxkMGYnF+DKX85/3l3xgmW0ww==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	C8cfytGQOyBx4Fg1VNHH9D4+6kaNJxHohzL1pSv7XlaahGEeKJcZoWc1x23HiQVpT0YW1hynwyLSLMHYuvh/0W6sPOvBJSFi0lWkDS5URR0SxD3kCAtXkW9ySIDBp/PNl5Ey6MvLAt+SydkOaiaLbBcg5fhUfxEyjOaw85NcsvnsNA2ez/FjPeagong/29/fz9a7/8T3sreMWrKiu6xwmYe+/ukxEMqEYl8yRnddxZAyr1eevEfFUuJCjpbMp9e/U7S4hX28keFhnPTO2zta6216gHIBea6Wbym3JOpeufbT1Va0gqSzZqH5/rZHpyQ6eeMgL7BuQNEXJHoOQzni45EoqJ2RrkHnzdqDPGeSrP8c3aiW5PiBU0dX1F+DtoOB5Z2B78WO0ghpz6tdE4NTUGfUJBVh/ZSW7syAz4dVnsydIddOdNPBI5Xj02g4vKXEXAQWjHaMZMB0EMRNoqf9gsYM/5TyunrDGBjA7aXUWrESITatSzQaps9FDXWga4LZqKCnHb51rcRUQGKr9tjv8fUDFBay0Mz2NVYydwEX73vXIEge5Lc6hmv/XDrwZyxDHzb/x/Kr2onLDBps0SmvkTBlS+uGEhnEcrd6i0ACrDk=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 690ac27f-f1d8-4605-925a-08dead4800c1
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2026 21:23:09.8180
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LlXEodOsDqKOJ5/6Il4Kfk78CfQo0n0GSxxNi9pdWj3fx8XZhvDhHedFd8ntUlRLZHRafS9XpkAum48qtcW8dw46wHfbyCMK3RdSlPVAJR0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR10MB6277
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-07_02,2026-05-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 malwarescore=0 lowpriorityscore=0 mlxscore=0 adultscore=0 suspectscore=0
 spamscore=0 bulkscore=0 phishscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2604200000 definitions=main-2605080211
X-Proofpoint-ORIG-GUID: MMgvdxRI0UWaBdUkuCj2tBCtGWOz8Hnu
X-Proofpoint-GUID: MMgvdxRI0UWaBdUkuCj2tBCtGWOz8Hnu
X-Authority-Analysis: v=2.4 cv=Wa48rUhX c=1 sm=1 tr=0 ts=69fe5446 cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=3I1J8UUJPc9JN9BFgKH3:22 a=1XWaLZrsAAAA:8
 a=NEAV23lmAAAA:8 a=plf8rDjJAAAA:8 a=pGLkceISAAAA:8 a=XeYH5wwuXsDGEEtcESkA:9
 a=QEXdDO2ut3YA:10 a=JWTSs7K9Rhv-lrTctFka:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA4MDIxMSBTYWx0ZWRfXzqxC0qS+O5Le
 lhrndK3xpJPj2dHNGs+fBkhW3SgWXOxPjkDzX+JJPlDrU8v/0t0f5n9d9VM4qm/QAJ9sSjkaBr3
 pxdMNSG/EaGL9qGpqCOqtWYSE0spUs/o2M9v6mPtIj+FNCR9XGaC3ojin9MeJdPVXWesVSxctIV
 PFwcPrnaEDNtEsKUNf/vEHIRT6+f4F8Rij051mrUQlYCFWovVt2y6JUoALVkYYa4QhuuUn+Jo2C
 0VfcZNMus5w7awHK8Kmbmz1z0+HAL82MoFiTCJFg03ARh76HjrJUOfYiu2KUmACJkIHMr9VjRbl
 jUcd6KXAgG9uSWmph2MGCOuoOWcNdsp9+VVNkKOexEsToto00QxO2ImUk7PQRZwoATh7frhWnx4
 gtvpO0P5aQrKmE8KkGUkVHpVaX6TMwg3V4xfTIquEEbS3ZGKNQaWyiLumSZqvxuLQV7aK93CqXn
 jA/fdx9Ukk/7B99WbOg==
Subject: [oss-security] Go 1.26.3 and Go 1.25.10 are released with 11 security
 fixes

https://groups.google.com/g/golang-announce/c/qcCIEXso47M announces:
> We have just released Go versions 1.26.3 and 1.25.10, minor point releases.
> 
> These releases include 11 security fixes following the security policy:
> 
>   * cmd/go: malicious module proxy can bypass checksum database
> 
>     A malicious module proxy could exploit a flaw in the go command's
>     validation of module checksums to bypass checksum database validation.
> 
>     This vulnerability affects any user using an untrusted module proxy
>     (GOMODPROXY) or checksum database (GOSUMDB).
> 
>     A malicious module proxy can serve altered versions of the Go toolchain.
>     When selecting a different version of the Go toolchain than the
>     currently installed toolchain (due to the GOTOOLCHAIN environment variable,
>     or a go.work or go.mod with a toolchain line), the go command will download
>     and execute a toolchain provided by the module proxy. A malicious module
>     proxy can bypass checksum database validation for this downloaded
>     toolchain.
> 
>     Since this vulnerability affects the security of toolchain downloads,
>     setting GOTOOLCHAIN to a fixed version is not sufficient. You must upgrade
>     your base Go toolchain.
> 
>     The go tool always validates the hash of a toolchain before executing it,
>     so fixed versions will refuse to execute any cached, altered versions of the
>     toolchain.
> 
>     The go tool trusts go.sum files to contain accurate hashes of the current
>     module's dependencies. A malicious proxy exploiting this vulnerability to
>     serve an altered module will have caused an incorrect hash to be recorded
>     in the go.sum. Users who have configured a non-trusted GOPROXY can determine
>     if they have been affected by running "rm go.sum ; go mod tidy ; go mod verify",
>     which will revalidate all dependencies of the current module.
> 
>     The specific flaw in more detail:
> 
>     The go command consults the checksum database to validate downloaded modules,
>     when a module is not listed in the go.sum file. It verifies that the module hash
>     reported by the checksum database matches the hash of the downloaded module.
>     If, however, the checksum database returns a successful response that contains
>     no entry for the module, the go command incorrectly permitted validation to succeed.
> 
>     A module proxy may mirror or proxy the checksum database, in which case the go
>     command will not connect to the checksum database directly. Checksums reported
>     by the checksum database are cryptographically signed, so a malicious proxy
>     cannot alter the reported checksum for a module. However, a proxy which returns
>     an empty checksum response, or a checksum response for an unrelated module,
>     could cause the go command to proceed as if a downloaded module has been validated.
> 
>     The go command now properly checks checksum database responses to ensure
>     that the expected module signature is present, not just that if a signature is
>     present it matches the expectation.
> 
>     Thanks to Mundur (https://github.com/M0nd0R) for reporting this issue.
> 
>     This is CVE-2026-42501 and Go issue https://go.dev/issue/79070.
> 
>   * net/http/httputil: ReverseProxy forwards queries with more than urlmaxqueryparams parameters
> 
>     When used with a Rewrite function, or a Director function which parses query parameters,
>     ReverseProxy sanitizes the forwarded request to remove query parameters which are not
>     parsed by url.ParseQuery. ReverseProxy did not take ParseQuery's limit on the total number
>     of query parameters (controlled by GODEBUG=urlmaxqueryparams=N) into account.
>     This could permit ReverseProxy to forward a request containing a query parameter
>     that was not visible to the Rewrite function.
> 
>     For example, the query "a1=x&a2=x&...&a10000=x&hidden=y" could forward the parameter
>     "hidden=y" while hiding it from the proxy's Rewrite function.
> 
>     ReverseProxy now avoids forwarding parameters that exceed the ParseQuery limit.
> 
>     This is CVE-2026-39825 and Go issue https://go.dev/issue/78948.
> 
>   * net: panic in Dial and LookupPort when handling NUL byte on Windows
> 
>     The Dial and LookupPort functions would panic on Windows when provided
>     with an input containing a NUL (0). These functions now return an error
>     rather than panicking.
> 
>     This is CVE-2026-39836 and Go issue https://go.dev/issue/79006.
> 
>   * net/mail: quadratic string concatenation in consumePhrase
> 
>     Pathological inputs could cause DoS through consumePhrase
>     when parsing an email address according to RFC 5322.
> 
>     This is CVE-2026-42499 and Go issue https://go.dev/issue/78987.
> 
>   * net/mail: quadratic string concatentation in consumeComment
> 
>     Well-crafted inputs reaching ParseAddress, ParseAddressList,
>     and ParseDate were able to trigger excessive CPU exhaustion
>     and memory allocations.
> 
>     This is CVE-2026-39820 and Go issue https://go.dev/issue/78566.
> 
>   * cmd/go: "go bug" follows symlinks in predictable temporary filenames
> 
>     The "go bug" command wrote to two files with predictable names in
>     the system temporary directory (for example, "/tmp").
> 
>     An attacker with access to the temporary directory could create a
>     symlink in one of these names, causing "go bug" to overwrite the
>     target of the symlink.
> 
>     The "go bug" command now uses os.MkdirTemp to create a safe
>     working directory.
> 
>     Thanks to Harshit Gupta (Mr HAX) for reporting this issue.
> 
>     This is CVE-2026-39819 and Go issue https://go.dev/issue/78584.
> 
>   * cmd/go: "go tool pack" does not sanitize output paths
> 
>     The "go tool pack" subcommand is a minimal version of the Unix ar utility.
>     It is used by the compiler as an internal tool with known-good inputs.
> 
>     The "pack" subcommand did not sanitize output filenames.
>     When invoked to extract a malicious archive file, it could write
>     files to arbitrary locations on the filesystem.
> 
>     The "pack" subcommand now refuses to extract files with names
>     containing any directory components.
> 
>     Thanks to Harshit Gupta (Mr HAX) for reporting this issue.
> 
>     This is CVE-2026-39817 and Go issue https://go.dev/issue/78778.
> 
>   * net/http: infinite loop in HTTP/2 transport when given bad SETTINGS_MAX_FRAME_SIZE
> 
>     When processing HTTP/2 SETTINGS frames, transport will enter an infinite loop of
>     writing CONTINUATION frames if it receives a SETTINGS_MAX_FRAME_SIZE with a
>     value of 0.
> 
>     This allows potential DoS against a client by a malicious server. HTTP/2
>     transport now properly checks that the received SETTINGS_MAX_FRAME_SIZE is
>     valid.
> 
>     Thanks to Marwan Atia (marwans...@gmail.com) for reporting this issue.
> 
>     This is CVE-2026-33814 and Go issue https://go.dev/issue/78476.
> 
>   * html/template: escaper bypass leads to XSS
> 
>     If a trusted template author were to write a
>     tag containing an empty type attribute or a type
>     attribute with an ASCII whitespace, the execution of
>     the template would incorrectly escape any data passed
>     into the block.
> 
>     Thanks to Mundur (https://github.com/M0nd0R) for reporting this issue.
> 
>     This is CVE-2026-39826 and Go issue https://go.dev/issue/78981.
> 
>   * net: crash when handling long CNAME response
> 
>     When using LookupCNAME with the cgo DNS resolver,
>     a very long CNAME response could trigger a double-free of C memory
>     and a crash. The double-free has been fixed.
> 
>     Thanks to hamayanhamayan for reporting this issue.
> 
>     This is CVE-2026-33811 and Go issue https://go.dev/issue/78803.
> 
>   * html/template: bypass of meta content URL escaping causes XSS
> 
>     CVE-2026-27142 fixed a vulnerability in which URLs were not
>     correctly escaped inside of a tag's attribute.
>     If the URL content were to insert ASCII whitespaces around the
>     = rune inside of the attribute, the escaper would
>     fail to similarly escape it, leading to XSS.
> 
>     Dynamic inputs to a tag's attribute are now
>     whitespace sanitized prior to escaping.
> 
>     Thanks to Samy Ghannad for reporting this issue.
> 
>     This is CVE-2026-39823 and Go issue https://go.dev/issue/78913.
> 
> View the release notes for more information:
> https://go.dev/doc/devel/release#go1.26.3
> 
> You can download binary and source distributions from the Go website:
> https://go.dev/dl/
> 
> To compile from source using a Git clone, update to the release with
> git checkout go1.26.3 and build as usual.
> 
> Thanks to everyone who contributed to the releases.
> 
> Cheers,
> Cherry and Michael for the Go team
