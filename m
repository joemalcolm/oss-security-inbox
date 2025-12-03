Received: (qmail 32289 invoked by uid 550); 3 Dec 2025 21:10:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32231 invoked from network); 3 Dec 2025 21:10:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=bsWUKgQ9NJ/79N+7sU6dHlAt/bOcdMCZp3Or/B6j/nQ=; b=
	mTsc5BqWg0o1OkAdE0QLLYc5pk+ZMCBhxtl/QxIb/+vihNrvbG0MxYvTiiJ9P5QS
	onIcdQTZTzDENdSl2T9+Ge6iKOn2ci4hs6EKIgeaRw2gWHXz8udVOtGGgTNnR0lq
	miiQy/M6UNca8NsMAks5Xc7cSbbwCgKBW5y007UwxLM4aaiiR/QRUh7WWZSJ+4SX
	chGB8184GRPX27AKoF+7obFfwo3jxsBGnNEdg5GWzV9YU/Txkcg111zuYpLNjz2q
	af95wUK8UlC7EyVUySzLFVlqJ58W+ms+bINv0p7qPi2vsR2+IDpkAcT2OxT4bO7j
	SpdYBZhhd5jhFZe0h8hG2Q==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iBp0qBO+t649bvx9xKGyQoV7YreffIg7TsYAQ5LG2mfiV/Am80NnhVO5KKFztVEpvPPJg00fPbqdWu2Uxm2pj8mYjvuxVWCpHGLzIzeGMwqfL1xysqMFpZAnsHi1sKviwz4Bvb5kAjENrTmBXwR8+YWXmfNdxAXABn+SfqlnmxilGi4EYN2+j2FjzWyqY9Q4ii7P9tGs3cLRdVOnjwGTxbfObJzf4ew63iHXFIKkfTRIspBj0hS3ibtS/fJjK+1mUGuFgEkDOHDWfr0TmMnGy981qtDCd8AXzIeRrcz4pqbuSXCdXinyCngxlpiYrG5Nzy3IxFtFsf/k1N6n6pjI0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bsWUKgQ9NJ/79N+7sU6dHlAt/bOcdMCZp3Or/B6j/nQ=;
 b=XTv0BuAz4nq40qEA5nG/rMwqihCS6zkuL6L8l9hv9owBV/Jk3B/zSp+XoIqMCxKwZkB198dYdagoAMpds1eLezI1WgVp7dgP2MQFIva7WIC1xli1EQvupZ3R7Qk2frS5IWdR9tH83MUwQ/RKNfRMs0a4+14AQ7LG3jsNNA5MxSrwoRvuNh8UrR3lX1YOqagAO4fh7ZX2l2Ru0aBbyndHKU45dLGybGLz43UmDk0dNbRoSPi+5q7BVqKNX+8GaOuA/JfVG3hVSmKql43E06s3Fa7+d6AXKCOHLCKqnXY1KvZfgXz5C4exQLjzfntjYL1TzVELYym3HRBqf1GYN98wng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bsWUKgQ9NJ/79N+7sU6dHlAt/bOcdMCZp3Or/B6j/nQ=;
 b=RHcoYY244/ibnB/Kk1TKgVZZyddi6leLXKCy6J2qChucK2ihGnRERNepzsMZIp1Z7Oy8bHNaIac6v77NsjHhHFr6Kaa05pJqC2MmrGnH+uhHMcnV75q6yrOdUqjsfDslVzOj95+AwDFmAwpeucnsr+CYfyPCWvpZcR60md9V8HE=
Message-ID: <7e93b4f6-2ccd-4859-97b4-d51d61b95694@oracle.com>
Date: Wed, 3 Dec 2025 13:09:49 -0800
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Cosmin Truta <ctruta@gmail.com>
References: <CAAoVtZwksfG-MFfhdamHt2SazD-n-_1HuZwXcRpRAJe_g3NDKg@mail.gmail.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <CAAoVtZwksfG-MFfhdamHt2SazD-n-_1HuZwXcRpRAJe_g3NDKg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0040.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::15) To BN8PR10MB3396.namprd10.prod.outlook.com
 (2603:10b6:408:c5::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR10MB3396:EE_|MN2PR10MB4128:EE_
X-MS-Office365-Filtering-Correlation-Id: b7013843-0d49-46b3-c8e4-08de32b04d1d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?bytMYnU4cmpubERYaTAxRGFPYXNVZ1lRUGdCMWhaSnMrRURDdHphSFlrd3dy?=
 =?utf-8?B?VE9KVThxWWp5N2FaK2M5NEovbGZ3Rk1EVDkrVk5xc2NQV295djNDZWlKN1lD?=
 =?utf-8?B?Nnh1N2w3eWt2U1pQUnNlY2xxRzVzODhQZkY0Z2dJZjhINkk2U2Jmb3BRSFBN?=
 =?utf-8?B?OVdYZXRBOCtYemFHWGZpSW16eW9MUERPZ01vamxRN211THJ5STh1SnY0M0pY?=
 =?utf-8?B?WW1TSmdVaEVxcDRsNUltdFViSkhrdlZpZVlzcW5wQmtpaXBPaTk0OUF0aGRO?=
 =?utf-8?B?UFZrQnVtNjd3ZHVsTHBmSVhFMVFBankyWVQ5MEdBRzZ3cGlQK2xZY0VrOXBC?=
 =?utf-8?B?NGh0WTFGcGpKNHVkZXA0cVR6Sy8wTWlUZVRqak1JL3FTOWJsVnp2Mmh5R3ow?=
 =?utf-8?B?ZURIMDNIM3JHWWJzY0pVdzlTYW53OUE0SHR1djF6MXduZk9OVGo4SG9lMXdO?=
 =?utf-8?B?dUx5UjhHaDFvcjR5ZnRKOEE1U0RRM00wWnE0ZkRGSWdKb1VRMSsyQkYrNmkw?=
 =?utf-8?B?UERpaUpYWjNWTnA5azFOZmlLRmk1NEJndVBzOGFCUVMzZE10c1ZqYmk3MGc5?=
 =?utf-8?B?aWZLd29LSzBvd3BwbVZkSnVRWXF0cVdYRUQ5WG9nQ0F6LzhYYmp1cWYrUmZL?=
 =?utf-8?B?NzFPZ2ptWkhjNmpxMGJJaVdVTGY0RUFWRmVXeFRZb2NvVmVUYXdNRGVidHJT?=
 =?utf-8?B?SXVVZERacVM3MXU0UFY0RXFNYU5DblRpMXpZaHI5Y1BHNUsweW8vbTkvYmhH?=
 =?utf-8?B?UkJCLzBidE90a3FQTWdFSlY4YytnajdGOWlYeEFxdVN6alJRT0Z2Z2N6NTBX?=
 =?utf-8?B?ODQrdVRwb0F3QldHeko3dUwwem14clpMUjh3bWJWdWtyd0VFTVgzdUNwS3NY?=
 =?utf-8?B?R3ozK0pabWZWd3V4OXQ3RjRxS0JweUxFQTBhdTA0dVNZcjVyZHFLSHh5cmV1?=
 =?utf-8?B?a2pPRGtFL0tBVUYvZFRSd2VBTU9qbEVVUVJOaDVmL0dHdE81c0NsK01QOGJF?=
 =?utf-8?B?ZUZ6SERYYnFodlYyUlZabTVKUk1tVkh2R0NFOGN2ZXArZFhpbnU2NVlqUkl5?=
 =?utf-8?B?RGswOWsvU202NUcwT2tURExSYjBmQnd4YXVIM2JIbzJ3UlZDQXNUU3BqV00x?=
 =?utf-8?B?NG9JUjVKL2g1TzZlT296Ym15OW9leGVSaXBSMWd2OTRaWG9wMmN1UUpkQytU?=
 =?utf-8?B?L2NvZDdvZWg0bFBib1ppekZWVStkYmREMkpoRWhKRmZuZ3crMkc2dWIxRTJ4?=
 =?utf-8?B?KzJNb1ZNVGNHREN0bkdBaFpGaWhiMlRPTVdTTCtONXRUZVhIMDVDWHJmR3o2?=
 =?utf-8?B?S0JqZGNyeEJXYjZaM2hTZ3k0OTQwVHQ2V25DeEdNL0RGejk1NG9IV3lwMzN6?=
 =?utf-8?B?OFJINmJBQ01sajdsTU5iMi9kdmowM1hmbytLUkwxOC96eHNhKzRFdWxWNUtv?=
 =?utf-8?B?Y3NhTmtIZVkyM1llN01FcGdFejBQbFI2NWZtdTRMY3VYdzNGdUlubS9CeW5L?=
 =?utf-8?B?WUdkRCtkWU9mNDVRRklCdFZJTWxmV1dOZTVkTTdwZWpEc1g5cVBJS3dFb2gz?=
 =?utf-8?B?VlNvT2EzRit4RjJZYWdBZnZNOHkyVVlwRUhrTDA5N2ZOQWRqYnFGM0xVVlVv?=
 =?utf-8?B?OXpVTjJqZE1kMWQzREQ0STNuMkwzcmxZVnpnOE9ZeU96b1R5MFhubTN2MThm?=
 =?utf-8?B?MDM2aEFNRVJ1bWtELzFWYzZOc1lod2tMT1NtT2ZMZnRCSHl4eTI3QmJ5Sk1I?=
 =?utf-8?B?ZVREblFMclRFd1dnQUtaMkp3OFlKbmNnKzJPSEordm1zSHpUWmdPVXBLV0lC?=
 =?utf-8?B?TllUZEIrSDZlWFRZTnk1ZFg0eVRjdGEwNGUwbnFXVTllL0lGOUF5N3ozVUxW?=
 =?utf-8?B?VWkwQXR6ZU8xUWtsdUw2WmFTbkU2WnhQNWxkWVpaR2Zvc0E9PQ==?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR10MB3396.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?MDdxV1N4OHVGKzV5UW9pNVAvODhDVlBEU0djOXp1a204c3VXSzd3MXhvbnN4?=
 =?utf-8?B?RHdmL2dYMnFkdjN4NnREQ3FvdVRjVEtFS3VpZUI1V09RL0NCWllRUXZHVzJr?=
 =?utf-8?B?SlRWSCtjQjF2eldqZVlqb0xPUzhhaUgwQUZDSkQwVjBYa2tzN1hyd3BSOC83?=
 =?utf-8?B?dW1Mb1J0Y1k1MGY2Y21nbm1xUUpyN1oxVWZXbWJ0QlJqaXJ3UkZLNkUxbUly?=
 =?utf-8?B?SGRsaVo1Y3ZQRW5NSndtZ3V1dHRXaWxzMEFFMTdUTnM0WEQwcDJxbnhObUh4?=
 =?utf-8?B?N2xrd3FXVHhoZHlZSWc0R3QvTXRZMWNzTU0vN3htTi9MUGFNKzlHZ3AzbXpp?=
 =?utf-8?B?REVHbDVhMURyNEphTWZjOHhqK2Y1aHorOVVJZzlSMitMajBPRVgyaDVMdlVx?=
 =?utf-8?B?ZmtZdk5GZnVGSTFxYjRXeGpCc2d3NEFuclExOXZIZ01CRlVraUF6NDhsWWRl?=
 =?utf-8?B?SnZra0dkZ0cwbFhVQ2RYOWp1VFpzODZ2TU5LZ3N5TUkvMEhIajFJMjlXNlFR?=
 =?utf-8?B?cnVTSkpTaEVUYU11YWZxWnBseXg2anlRaXc5UkpQNEtPQVdudUxaT1BSTU9v?=
 =?utf-8?B?S3lObUlmeERPQlZYSHJyajFwRUhVVXk1ekE4aDh3QVZ5R2ZMU0dtTzU5ZnlQ?=
 =?utf-8?B?aElDWUowS1NrR2VROFVEODZGZHBlY2xaVDJzNld2OVFGbGlHWEJzWkNwZFJs?=
 =?utf-8?B?Y2labGVpWURrY0lPYUpQR05PbGQzVEo1ZFJSaHdGRDVGYjZBaFlWK09zOXFC?=
 =?utf-8?B?aXVkK2g5Z2tjRk9kMVBPUHpmaS9uL0kwWnVTUUlyNlIzT0YwQ0U0T29rNzhV?=
 =?utf-8?B?TlhVTXB3SXNOdkJ2cWVqRWIza09rRjhwSVUxUzF5TTlwVmY4cDEwcGFzcHk4?=
 =?utf-8?B?aVlSZFdNOHhMNjJvdU9jcGFKeGFmS3VlNWc5eUxtSHN3b2JwZk5Bc0NOdXo1?=
 =?utf-8?B?SWYyM1E4MmtiWk92azFxN2NRdXJQWnhGV3I1ZDVWT1VWbS8xYnlra0lnblJU?=
 =?utf-8?B?aVZhdmhCbEs3MUp5eGE0RW51dnZPUi8rcU11d2ZjVnIyYUJBSGg0Z0VLUVNH?=
 =?utf-8?B?ZFZCUmttL1dMcXdNQ1E5RDBUVmdPLzJjK3d1cC92dU5FZUt1YU9FSUlONm1m?=
 =?utf-8?B?c296K3VSNGp5R2VQd0UzVnBWWUlTQ1BxNlpYekJiRDNOOWY0blhtYkRXVTVp?=
 =?utf-8?B?ZndPay9ZMGtveUxNL2IyVFB6cHNWcmZVbmYxL2Fnc1JQVUFDUklVMU0rK3E0?=
 =?utf-8?B?OUFSR2gvTU9BUHdlQmdJMGpBN0pWY1NtUjZnLzNscE5UdEtoc2xVc2Rsa2I2?=
 =?utf-8?B?L3poNWQ2Y1dXTG16REwrNmpCV0x0Slp0eVNrVmxWZ2xqckJ2Z0pXUU9rQ250?=
 =?utf-8?B?bEFXR1hsdjJOb3JaeERTK1ZRVU04L28wNkFBSGFwcW9VN0tmNm1rL1doR2Ux?=
 =?utf-8?B?REtFWHpSckJqbmN3dHdoTEtSOXBNSWg4bWZRNDJWOGJPeHZOUENKYnJTTFhN?=
 =?utf-8?B?RlNjZldoT090K2d2U1FUdldUYUYwalZXZkFRK3N1Ym5LanNRMEhRSXdLbExR?=
 =?utf-8?B?QnQzY0VnRWVleTZRa2pXaS9aMFpIZ2Q0Rk9INjVBNmNHMzY3eXRUbkZWaG9I?=
 =?utf-8?B?U1JsL0xyVHF5VTQ0cG8rdEJwZUZtRkhUb20vSDdMZ1U1eVB6eExwZ25pR3Mw?=
 =?utf-8?B?R3J4b1pPUFFSRDlkU3Nua1B6OGJTd3VtNmExSXNxOVlDYjB6MENQck5XTXRs?=
 =?utf-8?B?YWVEL0dPRkphbDFZdlhmVWVFdkF1NWxnbnZSdENYMzk0NEo4TVRDRXh0VFA0?=
 =?utf-8?B?aW1HbjVBbWpMdElmMG5ldW14VWc3bUpJRzdjcDNjV0lVbk9kcjNGMDVyOTZu?=
 =?utf-8?B?dFZTc0xOTXp0ckZQTTl4Nkw4cWxQSkpVRks5d1VqeDRRMlZiYXVteUdMejVr?=
 =?utf-8?B?Vzg2VnkrSjdBYythdDdBOFBQL1pSN2lIRGJxU3c4K3dVTXlRNDFIdllwSWtX?=
 =?utf-8?B?Q1JKOHVXdUtyL0JjMER5dGEvbGxiTWd4Sjh3czU3RXY3TFpjL1poczA0MVBh?=
 =?utf-8?B?ZkhVdk1tSDkxeExWVEUrRVo3T2ZhTEJXMWV3N3lSMzJTZUpvLzJGdE8xalM3?=
 =?utf-8?B?Tmd1WDMxbC9kWUNCYzdRdmc0Y2FJMXN0QjczeTdtMUNoNmJYOG1zallMTTZC?=
 =?utf-8?B?R1E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	vULgJaBzEcmawifE7aJX4qLEgcqGXSts67+puBnvnD8KlKEQDH8PqH2dP88R13d+ycjH7tK4CH3yUi9MbVzMwz9Fyr+eOlHlTzMfxNjm3q2gaq5urcNfD08uudo4Rn9ung60e+bqlJ6FiBJn2V/sNW06gPngjNWIrbB1l7gyD/JeSXhZIItXm6IKMLNROaxVQpYGgTvpYFApIvi+6qjP+ATYo0EJ3wjfxgHbbEX2EXRORcoMSbjFIyfgXLae4QlI8UeCOVkPPU0i5EgDZ4tZsk1c48xBWXeX/Zphcuymq/xsajPS9EsKOePRVHAWE/uFd4gKF2KZqzB+SyNp7xTbRmamdcYeJyX39FyKwSCREtGYgwABjAuyWt6+sR1HYXJ+jVA5KdzWubhr0lJEyCJnSTjdARHmsvhYU+Ak/P/kZJDZcyHvPBUZtPwnI5+TcdQ62b9VWQFAw4tNzQrg+Z5ebk8t54jCFiOHv8E9bFVSOADA68N1yMBm0YxBxQzRlFxIQeFDK+2GdA3kG1XPAs5eF13l+pUE9gbJsCHaWZyMcVU2K62z35AgZOQyMYZ6QCFfk5Rg8eXx5fd9if2WVgno6viKR8VtFYQINKPVGDl9EiM=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7013843-0d49-46b3-c8e4-08de32b04d1d
X-MS-Exchange-CrossTenant-AuthSource: BN8PR10MB3396.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Dec 2025 21:09:52.4044
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4Pp1HCTUi0b+729YcuQjl7Su0g+Ajel0HV6s8GmixfpzEC+i0zwwg3KHjicq3fNcsl1o++F+gKtQZHwdLB8tOwDgqIHkbSxhVzDypC5lrq0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR10MB4128
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-03_03,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 adultscore=0 spamscore=0
 bulkscore=0 suspectscore=0 mlxscore=0 phishscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2512030167
X-Proofpoint-GUID: pBQudYXj8lZkCt2xGmzwP5EoF2LiL737
X-Proofpoint-ORIG-GUID: pBQudYXj8lZkCt2xGmzwP5EoF2LiL737
X-Authority-Analysis: v=2.4 cv=SbX6t/Ru c=1 sm=1 tr=0 ts=6930a724 cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=qwXHvmjyAAAA:8 a=ZkvPBPLQAAAA:8 a=yPCof4ZbAAAA:8 a=A4UBzs00ifR4E5bEa0IA:9
 a=QEXdDO2ut3YA:10 a=3Goy5foIZagA:10 a=ZXulRonScM0A:10
 a=E4eG9ZGiMwtIG-3NilLR:22 a=SFr2u9Cu4sbnRqnMvguH:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAzMDE2NyBTYWx0ZWRfX58WOQQczstij
 3Ymwj1rXGrvyWwaH9dK3Nh5UNYH24XFYaOXc7qfQwBC1UMnCTkvX9/2tK3It11DwTl0KNSo2xU5
 G0u7GPSUzYsDuXQ+9h003iv8rMQl59aXkL/P/coQGp1P0NwCe3ew874Cz2duDOSs6BlsGgKbliD
 Do3dftzXyOjoyKV4BAr1y/G4KEt6WsKqgUDxknTxOBcdL5MfB16bPnacaH0/89SO2FYBYhv8xaE
 gu7q/mmnV6E6DHJQ1Tr7qUoOskdJbw5GYmhnJLzPtTpkYnJmbSzmsRpi0G612vpwyKN9M4mQQO7
 Tq5t38Utd4szm4hoBBKNqOPCJUzuAC2IZPKuGzzTRktliSFV8mn8r7ss4m+kutfy3Xn1vf4cFsc
 3q4MWl/XAA4ZMjdRx9gECznpC6Psgw==
Subject: Re: [oss-security] libpng 1.6.52: Out-of-bounds vulnerability fixed:
 CVE-2025-66293

On 12/3/25 12:51, Cosmin Truta wrote:
> Hello, everyone,
> 
> libpng 1.6.52 has been released to address an out-of-bounds read
> vulnerability in the simplified API. This release fixes one
> high-severity CVE affecting libpng 1.6.0 through 1.6.51.

Does this bug (and the recent bugs fixed in 1.6.51) not affect the older
branches of libpng, or is the statement that "libpng 1.2.x continues to get
security fixes, as has 1.0.x for well over a decade" on
https://libpng.org/pub/png/libpng.html no longer correct?

Is the statement on https://libpng.sourceforge.io/index.html that the older
branches "ARE NO LONGER UPDATED" and were frozen in 2017 the correct one now?

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
