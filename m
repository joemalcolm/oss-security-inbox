Received: (qmail 21655 invoked by uid 550); 20 Jan 2026 22:49:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21576 invoked from network); 20 Jan 2026 22:49:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=Ry2Bt9VvJJaoYhZQurqUX4c3NoXaYbOrIE7xDsOzQBg=; b=
	mHDTQVOmd0COR3UN1IvUfJDM+BkieuH7mDcP3iOeeVAEfwa2hfyeZ06pHpkHNA2b
	UZcRfE5yQuVTaaIVSEzZW+BYWPDzCLa59N/xbQcTybcW7v7M+mo9pO069JHQPJef
	YBLOaQcVUIV4lbXJZWyiwL1UrcC5obbaWKBWcLiNuJPWugwU8P+Ave6dxuwL4tY4
	lzlVpo/1WEbEteQTHf5/wSj8eu6CmaAMmamBU1wiI4fKCvT6WvPZ39g0FPHs0JiO
	biUBkrroQ7G1pzcB4pxkCOipMpWDKUVnlTHEPe4+PyHetQCI0Cmbni+0V8jsdBJs
	Yg8WxfWK5TZhodgVm2v34g==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AxpuNidGrakE/F+KDNd1y1hEGKNkpIgDYb8YHE+V0oU3aMPwuOsW0S9riryg9zlNTa8p5Yh5ZAGc866+Mo0sPQcwJGxn90ZPR3O5aysDIugjPgto5v99uHX57/4Spdnjxytg3dfrcdhswL2JynQ3bAZwC5ZyjtJ//hB+pBKz+W5MU1PBd3foTFT3Qq3ba1b+YFdcw5KZ6/oka4nH+DsB6BXYwK6PIrOfJ36hyiHH7gxW7fZgoJJ9pwl+AJv5EBMvRmd71IVG2nFwDJxgecwbehXEdhfJu+lHZXge6wT0lgd6dKgfYjD3sJs4yQZDVb0kz7pGrB7lUB5OEyPt3zUhBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ry2Bt9VvJJaoYhZQurqUX4c3NoXaYbOrIE7xDsOzQBg=;
 b=c0OHd1DXRh4WEmighTUnIqxQ45MHwZ8Ql5NR3fskyLyAiYlet3hxFFd1rgRwf6ZYjnHds8GxVlG7Z3CTsS6uBaG170JWYa13e73QeiKgtnMxC69zTkf21MF7+ALMcuu85a81jv90Gu+wOQWmmIawUmTjANNim9mAIfJzwAhxzUfOa7Wg1F1VmvWY8rrDyY7WLMCpIwFO6A1/D8YtRxWYgwT/uZpsY/ryC655fYD3/gl+hd1kJslHAkw5VQw8ZxBVb9JfpzsODPUiYHu+QQRmnw9TyT6uqOCrt3JhA35iObxEVHShLqpJ9oYAI2QiTuBtUA/PBUhKnPSXrMPQp5eO1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ry2Bt9VvJJaoYhZQurqUX4c3NoXaYbOrIE7xDsOzQBg=;
 b=U1Nh7zzGCxIFizWNcjrKo/XfMhijgMRj7TjNqb7HAT6xY3CUm7YPjficbMkrSi0WJ+t2QBDt0IHYkAkKYPKm74PTqqqz0jB/EuhSGika7TbPpi78rybEBoOO8qWpxEyT+8uXr/0A0Kv+NUNgoWvxbQczlehY3dXyEAV/JcADErI=
Message-ID: <62f8eb68-dacf-4259-b3c0-da9f4242a986@oracle.com>
Date: Tue, 20 Jan 2026 14:49:18 -0800
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com,
        mohammed gaming 222 <craftmohammed460@gmail.com>
References: <CACepC7XhXqWh45fOYL-4kdZW-h1jQfMb2b10W38RD9euV1j+OA@mail.gmail.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <CACepC7XhXqWh45fOYL-4kdZW-h1jQfMb2b10W38RD9euV1j+OA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0384.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::29) To BN8PR10MB3396.namprd10.prod.outlook.com
 (2603:10b6:408:c5::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR10MB3396:EE_|BY5PR10MB4113:EE_
X-MS-Office365-Filtering-Correlation-Id: e54fafb2-a5ce-4a07-6e33-08de5876260b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?a1g2ME9XN3JBUmdxdmtIejZFYWNwd3Q4UkhHTWFUc0RNZkFhTUsxS0N4TmZD?=
 =?utf-8?B?ZnJyRjJJQ3NkQVlyamtDQ1NwVUs5Sko3NWFZTUhaZTZNdVhGWmY0UDNQeGky?=
 =?utf-8?B?a01DMDRrOGFFUlNYMGVBSEJmNkRFakcrai9LTWhVRkoyWE1xcEI5cUVCTHVU?=
 =?utf-8?B?bTdZUkRiZzUzbnFnSm5GUDNVNnNGTExMSlJBWk5yOGgxUGpoV21sT2ptUG55?=
 =?utf-8?B?WHpPbTlYVjBPemV3V213MVZRNTJNNzJ5NFNMUHh4RkdSdTJ6RWFLM3hZWnVz?=
 =?utf-8?B?OWVzNmJOa3VzeFVEekNaaWFwbGlqVkh2UEtsRFZGaGVIc0JpV3FTMWkxeDNh?=
 =?utf-8?B?d2Q4YWlYOHdnaXd5OHBtNFdGaFJBQTdFbnNJZ1ZEcXFUYkVrSnkxVkRXcjNZ?=
 =?utf-8?B?cDdYci8vcUxEWjB2Z1dna0hjOE9wT2tubW44M2hsNk9hcWFQKzlzSDB4YkNl?=
 =?utf-8?B?cjRTWXBCVzQ4WTBvVkdkdDdrZmovMDNXazlyYTlqRW45VDRPdHcwWU5ZN1hC?=
 =?utf-8?B?WFZNOVk1cWl1ZnVtN1dRdEFEelhjb0dWelRBQitzbXpxd0NaUCswWHFXckEw?=
 =?utf-8?B?QVo3N0VnNGJ6ZDAvaEs5WFo3WTBSVm9tdmVkelJiZ1lyTVdzZjJsYVJ2cnho?=
 =?utf-8?B?N1BEN1R0dHBWbGhqdnRpNEloTmV1WHBmSFM2YXkrNElObGVKOWVxRHYwSHcr?=
 =?utf-8?B?WVBDQ0hKQjVrdElYTGpWYzB0SlRuNjlLbmtXUG1tOStHVjd5UkZYUmE5WGtq?=
 =?utf-8?B?bUY3STR0eWNGb01SVEtSVnFFcWlQei9pNFVBSk1EKzA5ckVCWU1GL1RhcS92?=
 =?utf-8?B?NHJsUDFYSEtWQzRMTExyVEtPM3lUeXZlYWhSWkNveVZFVkZnOTh5SkJOakZz?=
 =?utf-8?B?dmVZMTFGN0l3ODBwZlIyTGlsUEM3aVdhYnBzS3pOTFg1K0VLYXFCTVlxRXVk?=
 =?utf-8?B?ZGY1VnV6UWl2SnZ2U0NqOFlsbnQ3V2NkemNHWjVLRlJDS2wzbTlzZG8zaEw4?=
 =?utf-8?B?WXJ1VDlLSFFENWltSjdqUXlsWHhvOFVCdUltZDhRQlFQRExUT3JLY0dmMDlS?=
 =?utf-8?B?RlNwbDFaQ0JUUi82c21QL2hyZGg4NlF1TUFYeGhVSmR2eFNURS83b1hwRmJR?=
 =?utf-8?B?TGNPc21WQ0liYyt6V1lKNURCeWNVQ0VjY2g3YjJybnFuWWNDc2tyMDlHMTRY?=
 =?utf-8?B?R1YwdEx2TEhzbzBjbWh1VEdkRDA4UmtHdDNsWmk5V3dqaUVDVmhUdENDcEdi?=
 =?utf-8?B?WG5hRExaaWNPU0szYnpkUDNGVVdrNEh3K0wwc05OTWVuSVZzcjliWGl2aGUz?=
 =?utf-8?B?aVppN2hubjJoY2x6U1k4U1VVR1hSc3FwN2NsNTkzbGN1U3RrSTlQVTFFUGN4?=
 =?utf-8?B?YlNIY1hYaldmZmRodzFBZEhmRVV6ZzFIcEtrNWY5NjUvNitVdlZVOTVTOXNI?=
 =?utf-8?B?bGtsN1BOOGtBYUsyYkN5YXo2Vnp2L2h0V2tJU1NOSGNYcWlmOVdVeGhWMG5B?=
 =?utf-8?B?WXlIaFF2ODNzRmhWa3JyWHVCNXIzNkJEaXFWRCt3a1EwZ0MzL0JIcWdEdkdl?=
 =?utf-8?B?QkVheVRnT3BsWmR6eTF3emRhR1BzeGZ4dzM2MFM1NHFaVWdRRGg5Rk5CQktm?=
 =?utf-8?B?REVIWDNsaWxZcitvWTUxaWM0Q3p0d1NJTThBaGVtdHhKdHJhMnVHOGxOaDZE?=
 =?utf-8?B?MVpsNlI2RWc4Nm9ORXVBMmFYOEF5Qk54RHQxb1JlMzFMQlMyYzJxRGd2Q24x?=
 =?utf-8?B?NWZWbldNVW81YzkrenF2RmlpUS81bU9salAvenRLT3k2b0ZlYzh2VzRTSjJL?=
 =?utf-8?B?NnFiMXB3Y2hsWHRrQ2RRYVRjUkx6cUowNlJ5NkpXcFJmTVdrZ1hlbzQvNEM4?=
 =?utf-8?B?UWxEdzhCTEsvTlNCTkhqeU96MTdNN0k0bmF6TzQvSlJCeDJzWlVnazg4aHNm?=
 =?utf-8?B?ZWdwVzcrSEkzT25jeitRQ0dhWGZHNVBhZy92RkpzTFhqYXV4Z1dQUFpka0tN?=
 =?utf-8?B?TndlOGdHZ2hUT29saDJSaEdvalBuVmJDTU9KbDlqeDcxdVNIak1lTzY2K0Z1?=
 =?utf-8?B?UGVaYkIyZTRhZTMzQ3NIdmo0ck8ySjJJTWRvVE1jazIxbVRRbWhlUXE3QTFW?=
 =?utf-8?Q?g7gY=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR10MB3396.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?M0s0ZkFpUUJzR2ZObW1VYlJUQlZBK0lGc1dIYU9Od0NXbzIvSyt3VDVJUWJE?=
 =?utf-8?B?RWt5TDR1ZGhQRXZUNjVHc2hmU0czNW5OVmtMU2dRWmdUZUpVRVo4L3lxRkVr?=
 =?utf-8?B?eUZkVjJrcmdZcTRkaTcvTkN6UnlqMVpuZkZvSjJQOTFDUFppYk4vcXlBMWFu?=
 =?utf-8?B?WUxkZFREN0Q0eXc1UUFpTnM3eWh6bEJWOUJmckNvZDBBbnZHNTRZWm1sY3FT?=
 =?utf-8?B?djh4MDRZU1VYMHF0K09IRmxiWWZ4dExFeXlrY0ZaNVpDSWRWVjlRMHQ0ODJC?=
 =?utf-8?B?YTJYckgvWEtSTm4wTitxZ3g0UG1FekxSa2grQ0REeGFHMkgxd1hYR3RkZGtE?=
 =?utf-8?B?L1RUSldnQmE3MHA1SnJPb2tiZzByOVQ2WTRnYTAxWDN4a2JuRng4TXVOd2ox?=
 =?utf-8?B?d0JKNDFDQnUyejF6bm1rbWVXNGtRb1NrMDVCZU9sbTRFUk5TRVdoeGxrd3g2?=
 =?utf-8?B?QUZCWWlOMFNJN1lTRWhGQWVrd3M3R2p4ZUhyN2l3TFFDYXB0bGhkdW5ZaTJz?=
 =?utf-8?B?NHZ6RTZ2c0dnaVBwSVB2bm4vSFdkS0daakFHMUZVV1QzZkd1dnk4WXk3aVNw?=
 =?utf-8?B?WUc3cW5nRkUyQWEyeThCK09tdHY0bDJ5V0lGdnlNOG5zMm03cXJicEtSdDF2?=
 =?utf-8?B?cjZHMk1FeWgzRUxLYmphZWlKYkhTSXlCMlpuaFNHOW1Qb1BtVXZkZnVnaVc3?=
 =?utf-8?B?UDlXNFRLNHFCMlVnNVUySXJZeXVXL0JsVWhuem9EUDNZUFF4YitPRUdNVVRN?=
 =?utf-8?B?LzhNU05GVHpKWEdWbC9xWUkzUW9zMUd5cGVNdmJzb1cxclBmRFZWTzFqcWJv?=
 =?utf-8?B?dmNCNzdUeEZ6QnQrN3IxVERZTHQvUE5BN04xcU5uWXN6SlVTc1hJZ0t4c1ZS?=
 =?utf-8?B?eFdtc0l1TnlJeDlKWGdOdUo5UU9HVDhyQkU3Q0lIZzd3QkNiYmxmTWwvVGtq?=
 =?utf-8?B?ckh5Rml5cS9VbHZCNHFWS25xV1dxOUNoNDJ5SjhVUmI4QUV0bldsVWNEWmlE?=
 =?utf-8?B?azJYWjhUdENHc25KUjZKbDRkS1dHdzNpUFdTZi9rN1cwRmU1UXlub01PZUgv?=
 =?utf-8?B?SGtQcXM0ZEp5akkzYlp6WG1RMFkwanFGcEJpcjBEYnB5cmNDZGxNOStMRDgv?=
 =?utf-8?B?UURXN0MzYlZPN3g5NzNzRmpDVU1qbzZTSWJVdGpKb3Bic1JXclYrQkNlTkRN?=
 =?utf-8?B?bmVqYjVZYm5OTXZHRHB2anMxbFpDelg2bFhuZXNObXd6L25EbUlUbmVrNUND?=
 =?utf-8?B?ZHZkSzNjYitCdHUrUzhXREV2cmRsUTkvV2tDN1VCdktJRk1wQ3JDU0ZCWjhi?=
 =?utf-8?B?eFM5TlRWTFRQNkJNUDRYUGdFS1ptbVQ5V0EvRUd1NkROcU9EaGp6Y1YxVWIx?=
 =?utf-8?B?UFdPQVNpUUM4bUg5UHk2USszODNMcGg2VS9lZDBSbTQvdmNLSlpiN0hEdCtp?=
 =?utf-8?B?WU5DajZiaU85MlZybUpUbTc5VFo3UzFVYXdrZ3NGTE4xYm1tZFB1VVZPMUlC?=
 =?utf-8?B?aTl5RU5mSGJWZUZBSlJQRkdIbmdBNFpRQksvanJJbVdlOXZuVG40UFNSTXQx?=
 =?utf-8?B?SVpsTjRtWnhmaWtFRXorTkxDRFpPM1JYR2MrMmZYbk5Gd1N5dWdXcVNaOFQ5?=
 =?utf-8?B?eHRDTDdkUzZOL3hPSWhSQndiZWFLa2xiYkhScXl1N2J4WUtucmNsTkhoRUxr?=
 =?utf-8?B?RGxKNm1lS01sYXRrM0lNRVlIVVRpSWJxRWtrQWZPanFxTVFsQ3d6RnBKMkls?=
 =?utf-8?B?bCtDUzNzQ0lUUjhyWURTL3VKVG8yVjN2OUxBcytNbzFoLzg2cno4VndEeDRR?=
 =?utf-8?B?WExFRnlPQ3YrUzZSRXNhRWh4WGNCcVRpeStIMTBCbWVGL0lmSnN5bDVTbE14?=
 =?utf-8?B?c1ZJdlEwU1ZrRUM4Q1BmdkgvTUhkVFF1N1B1dnAwVGpRTjdLZGdJTjB0eDV3?=
 =?utf-8?B?MGYwQ0ZjZURqYThWZjdSMURMN0pLdlV1L1MwQVJZNnpHMGhadUNUM1gxdTNt?=
 =?utf-8?B?TjVQOFR0M1FtWFNjMC9RdU5saDBwNVJXcER0T1MzTHAvR2hTY1d5QzczY28x?=
 =?utf-8?B?aGlzaWd4bTZsVFFWTTFtR2xzQ2tGMVJXazdVbEI0UnlwNWt3NlJCZlBwTmZy?=
 =?utf-8?B?ZW1XR2VpUGlzejJoQmkyTC9xS0VjRDNsMU5GYm9jelhKREJWZlpkMGd6c0JZ?=
 =?utf-8?B?cEgwZTV3NUY0TlFEZmFCZGhRd29ncWt0K1kvTmNIQ1dyVFJQazAwVzNlZXNK?=
 =?utf-8?B?RUxXV2VreldjdXZHL1pnOUU0YVNxQXM3Vnl1c0srcXRGdTZEQlZCTXNrTGIy?=
 =?utf-8?B?UHBJeHZ0N1lRVlo4UjBBQ2IrYXplTExQemhUU2x3bnEzVjZLVFBreHJRS3VM?=
 =?utf-8?Q?6LNBZn8ZWRvfF62g=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	V5t8SYYw0dtCGOd65hvGz7Mvq4NBO2Os/z2rwyeAmvKlQ0Gq1GhwTcV8w8lvoyKZzM6t/n34KHXAfAvhAeb7yAOFJ1QRjgNFVZzPj6AC6EwF9waUeCoVJVJFBHXTgbymJGeBAQumZPQV8/cEy2E463gzAswbPr7l4CKoBftSGb/pgG6dNf9aY/LOXrkcppVNE8GEULcQahq1cdIz4YFzA0e7aBvQ/WmZoQgBeVCnvOpv6xcVgcBYSgkrsZOkb55qiiZo6we8/cb/LvdHF8TFjANREhEpZvpYUCKUWHyhrPW8/NcEGtbt/rFQIZZrTzFdrIN1SagoIut/B+CZ85MVwcevIxdxz+6Kw5WEt3apsYoCf9f/eH8fdhvmvxN0W5zCVD+p6GJqDJBRdxH/MzzY6m2AlRyZJtN8OaZTvQvh7rO3KmbC4BBnv1zsbm7BRxj5jXnmMhSNZ/raXjhi+wODcgSWO7BNBwE6MvRF8d0G9VkunUv3jXN7WB+MldQakpDA2bR51JumQjLh4tT9xYkPachCGi0u5HVwHVmM7Wq8YmLkxbcU491Gi8k5o1s17pikM/qt3j8IXkM2TfKj/qVGQmgdc1pbo/ZY1+85JpO5nDE=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e54fafb2-a5ce-4a07-6e33-08de5876260b
X-MS-Exchange-CrossTenant-AuthSource: BN8PR10MB3396.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2026 22:49:20.2883
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LuoSBb/LyiFD8//gCNRv5vl4TMKNvKAjK4gju2AjiIJb834kkWKpOP8d4TOjdLTuXg481USjrJiilU/DWj3QBgrWrZgFUiQLrhxCyLnlw+k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR10MB4113
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-20_06,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 adultscore=0 bulkscore=0
 phishscore=0 mlxlogscore=999 mlxscore=0 malwarescore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2601150000
 definitions=main-2601200189
X-Proofpoint-ORIG-GUID: v8QVy1IEigh7P0r3gDr-ODYwJ0LyrdIX
X-Authority-Analysis: v=2.4 cv=IsYTsb/g c=1 sm=1 tr=0 ts=69700673 b=1 cx=c_pps
 a=zPCbziy225d3KhSqZt3L1A==:117 a=zPCbziy225d3KhSqZt3L1A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=yPCof4ZbAAAA:8 a=ZYMurKmHm5xyOETySv4A:9 a=QEXdDO2ut3YA:10 cc=ntf
 awl=host:12103
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDE4OSBTYWx0ZWRfXz5sg+qE8aUN3
 vDpN6Q8wgDpOFvbh1qm6fga5pjla2GS6YgKMoNnVRbCyYhBsvlACQgTktHLHNgJDUaBr3ycd+DS
 u/2i19q3jkjj4Pc25GtJY6ie73fPGztK8hWWOrsJgYZ/TaI4WosAzKe3E2lNdcF5yA5rMKSw02T
 8wW7JjGopU8IN6VDtqI8RcxBZ+4hfAWb4cK5mvCsm6r1alvQprhfpp2rKEpnG9uH56rocMEp+nU
 NTxdpY9wi96K9beAALkM0MmR1/RZiVH39et1MWJf0vX/Th1I7VePOkcQ4sI+swhUSsc7Uefp2It
 l+bUbo/vwvZqb8ugGx9ioANKrKebGd+Ah4KufJ8Nzf1f/LeEGr6rqZbQv8s2MKP7PbPI/cgjaiN
 Xr3nRLD2B6Z8dm1RCFglLSMcKGgzv0f+7dL/Pg/QRqibp9x/bOiWL1uV7uolLTQjFBoXTK2esUm
 cPyg5bLUkQ6/4KuEe1Hjs1oBkpqjm8qc0BmIhnYo=
X-Proofpoint-GUID: v8QVy1IEigh7P0r3gDr-ODYwJ0LyrdIX
Subject: Re: [oss-security] WordPress Plugin "Under Construction & Maintenance
 Mode": Exposed debug functionality

On 1/20/26 05:31, mohammed gaming 222 wrote:
> Hello OSS-Security Team,
> 
> I would like to responsibly disclose a security vulnerability identified in
> the WordPress plugin *Under Construction & Maintenance Mode*.
> 
> ------------------------------
> Disclosure Timeline
> 
>     - Vulnerability discovered through manual security testing
>     - Advisory published through community channels
>     - No active exploitation observed at the time of disclosure
> 
> ------------------------------

Your timeline is missing the dates these events happened - and most importantly
it's missing if/when you notified the vendor.  It's not "responsible disclosure"
if you haven't told the people who can actually fix the problem - as Moritz
noted, Wordpress plugins are mostly an entirely different ecosystem than the
folks on this list, so they're not likely to find out from a posting here.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
