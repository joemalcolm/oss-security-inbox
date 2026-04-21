Received: (qmail 20443 invoked by uid 550); 21 Apr 2026 16:30:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28258 invoked from network); 21 Apr 2026 14:44:17 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NutubrSW93blaeTQXsthHd88rB9ewVvS5Cdf8CUFwmYMOOScvGCo1r+0hJDp0VWMOnsH046nl+TmF5w9zDzfuHGe5dlCsdVPvUVqdGv17MgOtr5W7thTZ7c7T7FkInwXAicP8P03tY2Vyxw3S/GVOVRGrqE3lMsJnqh8BZ2ZUeaYuYQIqSGG0/SBJRDRcb4Pztl6e0Gy6uX3e59rXcAwfTQwrezsIHkF1iD67SG+N/LA+SEEsAyKExglyM+4J7kcMRUmRcY+xmeuXV/yBKGQPmBZgEhEyfqZHTqsDEgafJU1X0DYRkMYVeHgBt6/4fo+v0g2EZTXcf1pv+fSw+Ve+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dcxzmhW6oq9u3JsQMHeeEKK46hlZcI5C3vYgzpSAgOU=;
 b=qUR3mWCCVs6NtxvqUPg2k4iMiRK3Njrsi1dL6CyBwbwSeomorEOcEU2Lfx4uBVLzuK43cz+RHhEzyddPVeWBEUXEaoQ89QfCQUaWOme372RZXKFSx11a5t3Dm1xxWw+1WGArQ6VwTuZx8XruJWxSSZqcOOJG/KUMRWcS0s/iSpiV7pSHfVYjGiEsnWsHXnPHysaUgtrxX8Q3VD+YrZKml5M0PdDBD+XCujVtG6IOtifHB0e2qfTxCneR4nU9gIKYFJTflxR0lLU72ql2oxNFk/+xHmTbZdW8B3zevinzc+l1T2wMYdPo/vSt6cAl3Vw3lD67t2sOuKOaWEJQaqmNZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=tuxera.com; dmarc=pass action=none header.from=tuxera.com;
 dkim=pass header.d=tuxera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tuxera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dcxzmhW6oq9u3JsQMHeeEKK46hlZcI5C3vYgzpSAgOU=;
 b=UGt6cl8mqujbXjLknZ1CBonG2/CQPYkNdT6dAJ0KQfoTFGxqZFWjuVm9HDmsVBnR4e1V/xJD4qtj8/oruQ/6ZO1tALqTB2KrDB7pqvcLchM4dYAdEZ5noP9q7+CdpnwJKXBWdjQwXNYsf6XWSwHByGUQ89ScC/9xHtWM4WdYGLy1sqnXy0DCbyWfscgCynqBaarDNVkjCphKGArqOlk0LQ+zUsj/xlGHfk4DKG5mnoLg2Z1sV7VoXYTBXq+CV1wk4xvTgjrSTnKMSmQySWxNqjSL3xN5oa7PMozjUB5UWGngvgmyIoAJNDWWoNHy4p/rvPXNqDA8F9ogCzsLgn43WA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=tuxera.com;
Message-ID: <d258ceb7-f991-4e3c-9d99-ae99a165945a@tuxera.com>
Date: Tue, 21 Apr 2026 17:44:04 +0300
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Rostislav <rostislav@tuxera.com>
Autocrypt: addr=rostislav@tuxera.com; keydata=
 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
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: GV3PEPF000167E9.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::669) To AM5PR06MB9917.eurprd06.prod.outlook.com
 (2603:10a6:20b:6a0::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM5PR06MB9917:EE_|DU0PR06MB8432:EE_
X-MS-Office365-Filtering-Correlation-Id: 15bd638f-5b95-4f9d-aa36-08de9fb46ff7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|366016|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	W390hq/VLPj5f2RTJB1fwGsWCp6fvdY9dDPQ76AnsZEIY5rTXEv5ZXqaMC+F6LXrI/2thtwSJWH3H4uk9KmFVazotkjLMmlT2PTO4HLbmS0JaZI4H/CO8uHlJYEJe7bDR4gDEMYqq+1HDRiXXW++3zQ+Pj6IJBsq8Jj2AyxyWF2zJVFWEgThUeCGkfG2BS4hXfHeb6FWyRqqsaEForfo8NCPk2C6ic7pgEl50fdC1Dlowv51uY1ZOR2yRb2FDQIY0Kdq3nPDPb1GhLSW8TQUhfM5GaG19JM6lGu1CjB5SpyYMaEVuNeN19BX1VGDlwAz9+8R8ZDl4qiH84RQyzIj9B8gWXnQ+MKBrG1D6LHgr7Nmj9jmU+aR0wGydKHpVM8Xk8zs9tVKRmbSYrkx0z5juFxnq0E5AM5XcUks3p639z9+WUJck8NlXDuR3mIt7cvOAyyrxzZHK+VSZyWxVpKIWX/GX4lqGpy+hnqxqj804uZMZ4GB06jxVzvvbeKnN3uCWnSJP7Sf4AUk7FmvLIP0EuBFn6oHKEayWacZb7QNaRl3OSno41DRPDTWIJyRZRH+byfoylZPWv26mRJhGts2Mc4tYGjyz6AipqlhYhPiwJBkm9S/GX97W6fZ8YGGTFHNwZx+jD1gRmdXSXpmEge/T8pj4E39HsvHFptDsHt44v2BCvLk9Su1JMYyjzgx7+TqwLEuIR4VlK2XgvkRRm1cmgIQxNj0d+NZ2z1V/CkpWHkl6bFx5rmSHMNuWjmXzOyh
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM5PR06MB9917.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(56012099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?RjNVL0ZZNWJqdFZTamwwblB0M2JBeXViU0s4Tklha2MxNnp2MDJMTTVsUE9K?=
 =?utf-8?B?T2dMdjdEcklYejVtMzE1SEticFBuWTdYazJtc0VyK3JIYjI4V1ltVUhOSk52?=
 =?utf-8?B?aEZ1ZXN6QW1EU2tBZUVSVW1kT0NtVXlGcWdjcTBOcSs1bGZyNFhSRjd6aWZm?=
 =?utf-8?B?YnNsTHp0eEdiMnZScG5pQTFpWTRNZVhQS0dXZWgyS0dhTDE5aWxpVnNNcXhl?=
 =?utf-8?B?VkM5cnpZWjRVNHVzbytYZ0tkV2ZPazE3bTh1WVgralEvMDBuNVNsdjZwK3Mz?=
 =?utf-8?B?dC9JUVdyOFlzVmRHbjhTTmRERTVqZG9OZnBvMllKTXhrN1N4QTk3bURYclQ5?=
 =?utf-8?B?ZTFVaW1kSW8wQm0zdThpMUhVTXZqcEpoYXhQMHliZ3l5TUkvVnVRZFRKR3BP?=
 =?utf-8?B?Z09DU3B4V3E5bk9zaG5uVFEzY2JyWm1QTFJUYTJBRnpDdzFydE0rbWNkTmJY?=
 =?utf-8?B?TkkwOGhPaHJmSGhIQ0RISmRBNUxlYXJUTDRtR1A5VG9PRjBwTzdOSno0WGtv?=
 =?utf-8?B?bEcxRTMyVitSWG5BQlVMcm5GTEx6VHhTeWN0U1BSbEdsZU9GQmt5eEZjUzBX?=
 =?utf-8?B?c282QWZjUldrZTFTRFdIWmtmQnhmZzRjRWhLbzZOTXQ3VURrQjhHOTg1cUkv?=
 =?utf-8?B?a1grdmw3Ty9ISndiT0JtZDh0T3JQUHg3bVBGTHlGMkpzMFFRM0ptSEJhT3hh?=
 =?utf-8?B?VlpMU1lVK3BmSGdtcUlNSEgzbVBZVTU3R01aRktJWWRtSlZtbGxmc3FuVlB5?=
 =?utf-8?B?aWVzajF2NXVZb0Nkdng3cy83UEhaOTVOUXBMRzlHRW9USGUzUFZheTM3bTFE?=
 =?utf-8?B?QWczc0hpMDFhNzk3VllILzduaTVNMUlDZXdraFpobm1OT1pTTzlBY2w5Ym9P?=
 =?utf-8?B?dnRIT0FHa0NzcEhRQ1FNZm5DNTJRTy9ETkVWa2EzTjBsQlNsdzlYTzNjVVpO?=
 =?utf-8?B?SmwydU9EUDFjcmdORThld09rRXlPRDFNSUliQVRmbStiQ3BqSVlCQ2FXRXdG?=
 =?utf-8?B?T1hXOXlMU0FtQmZ6bDRhQ29lQ3huZmNJd3llUmQ4ZFdJeTdpRml1ekVQSlV2?=
 =?utf-8?B?MG9nTngrdm9SWU1xNE4yRnNQdUxoVzUwY0lCaForVWNLWE0xUE44RmZTY3Rt?=
 =?utf-8?B?QVlTRTNsQmZpbW1qaEV2Z0l6MGZlYWkrNXVqZ1FEZUJPZGVlUXJiYzIyakhS?=
 =?utf-8?B?R1VKKzFrdlpsZENubWVTNHErb1d5VzZPT21aWml2ODBzVmg5MHFQc3lMalN0?=
 =?utf-8?B?cFJuelYveG1QQnZvcjNrT1VDVEZmSHlpSEF0dEJYdFd1VmJTb29LSEFUSk1D?=
 =?utf-8?B?YVVCYnpFZ1doWHJDS09jY0EvVHFwZmYxZ0tQUVVuOVZWWVAwaXlrdEhEZTFV?=
 =?utf-8?B?Wm90R3ROb1dXcVBkVGNQbC9wV2NldUpEcmJNZjh3WjRNQnBHS1BlS2lncXNj?=
 =?utf-8?B?aWRSbGdXUUh1bGpGK2RHNzM3TDB3N2tYZDB5ZGE3bDR1TmtIS1NOMzcvdWZI?=
 =?utf-8?B?ZUtxcDAxdVFMZHlPU0habnlkdmJZWk8wRnQ2K3JVWXZQN2U5ZFQ1OVc2VWVz?=
 =?utf-8?B?M3F6LzZFMHIvYjJ4SitBMDRxWHhRUnVXYlVmRVNGVjNYdHRhTDVMdmhQR1dK?=
 =?utf-8?B?QWI2dXlrcWd6SE0yc0hIN0xoNkh0S3FZRnh4YlVGRkNXeVJZUWd6Tjltckt5?=
 =?utf-8?B?eHN0TjU5MEZWNjJiMW1JSXRNbnVGVmkxRCtPNzZSTlJvNGczRXl2VHZ3TjlR?=
 =?utf-8?B?ZHYxa3dOaUFubjMvMG9BRStiR29oQ0x2Y2lXamJKeldUQkhUWHdGdlpLWUdC?=
 =?utf-8?B?TTI3WTZqM0djYjhIWHhWckpva3RNaitaUnBRSHlIeEx3Y2lsV08yYnVtQlJ3?=
 =?utf-8?B?V0dwY3EyQTVxTVFFNE5xTXZJdVBpK2U2aGhVQWRGWUpwY3J4RkZVVm9kdGJr?=
 =?utf-8?B?ZU9acy9uWXFLYmQ2L0Z3c0tWRENISkRqQzgwSnE3TUZra0F0RVQ3NXpHNUND?=
 =?utf-8?B?M1IvNDdVQ0QwRzNRVVRpN3JBWG9PVUFGZDhSVC9lV2ltbDlJL29waDN3WExZ?=
 =?utf-8?B?SnhrVzN5RU1KWElvWFJCeG1PNVdUZHh3ZXVGWGlNUWVwUXNTZWRHWHBWTU9B?=
 =?utf-8?B?Y0tCaERLQUhRcm1SSk9TZitzQWZ5U3ozOVU5SlB6cEhnd0VteE1NdkxIMEpj?=
 =?utf-8?B?VGRKM1htVXN4ZmY5c3NyN0RyNU9EeHl2cDVwL29JNVh0cFNaeFBENkhZWW9O?=
 =?utf-8?B?b3p6OElsM2FPdHFCVTlLQkxhQTV2anRrdWtiQmVPTklITHZiem04dkVBalNL?=
 =?utf-8?B?YTNBN0NlT2JwQzhVTmlHUVZZSHRGYksrYk5nS29rK3ZudDZNaklMQT09?=
X-OriginatorOrg: tuxera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15bd638f-5b95-4f9d-aa36-08de9fb46ff7
X-MS-Exchange-CrossTenant-AuthSource: AM5PR06MB9917.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2026 14:44:05.7631
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e7fd1de3-6111-47e9-bf5d-4c1ca2ed0b84
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 88hWtZsZl0B39enxN8mvzFhHBcXIqdMGM2J0UngXvgd9/OfttvL2bjA1nmGsnJZwhWm4OJ8/aRVc34UshqTXXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR06MB8432
Subject: [oss-security] CVE-2026-40706: ntfs-3g 2022.10.3: Heap buffer overflow

Hello oss-security,

A vulnerability in ntfs-3g (https://github.com/tuxera/ntfs-3g) has been 
reported to us by a third party.

Short description:
In NTFS-3G 2022.10.3, a heap buffer overflow exists in 
ntfs_build_permissions_posix() in acls.c that allows an attacker to 
corrupt heap memory in the SUID-root ntfs-3g binary by crafting a 
malicious NTFS image. The overflow is triggered on the READ path (stat, 
readdir, open) when processing a security descriptor with multiple 
ACCESS_DENIED ACEs containing WRITE_OWNER from distinct group SIDs.

CVSS 3.1: 7.8 (High) — AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H

References:
CVE ID: CVE-2026-40706
Full advisory: 
https://github.com/tuxera/ntfs-3g/security/advisories/GHSA-4cwv-5285-63v9
Fixed version: https://github.com/tuxera/ntfs-3g/releases/tag/2026.2.25

Credits: reported by Andrea Bocchetti
