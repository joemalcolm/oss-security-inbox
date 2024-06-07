Received: (qmail 26074 invoked by uid 550); 7 Jun 2024 00:05:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26038 invoked from network); 7 Jun 2024 00:05:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-transfer-encoding : content-type : date : from : message-id :
 mime-version : subject : to; s=corp-2023-11-20;
 bh=S3Nf5ZcfJEWy5R1mL3LLji5H5Lm+sjAuTF0XHWRRbW4=;
 b=MBWgfV8/Cea2ojvZZmPSaLXoepKp0IQ2kgZ7iq45mG5Ot3f5ckYd2eRXKutd7kFrbIGT
 /L1ottggfYvqCsSoHGZcQwkpSQGBWC/73Cv4nRO7t0q2kFvEM+gkinQcHM68CkwNa25o
 3/crT10IdPjoY3G+yd5NWQEWb4q/u46vNbEVgajbJBHgrautk5VFEEp/38WP9kMZZvq9
 XVqR1Eoc5WPzbVNHAF+1WnLAfaH0LqaRMSE0FcsBTc218vwNjibj16chqkTCAtLmTjJI
 5JcU8J+cHMMkCiCr2edgbJA0swGnVzongniWAI8kXPSx3eXaG+Oj/RFB20Tnz8GlevFA BQ== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QW8SPI9RIhFa7LWiLInt0cdYsawKspLigfe7qQQrZ7KP4q+WyBMUY8nz8mHEA8/um94Ve0Mm/24aQ7BiVAZtjW0f/wBu+oGKZCrbx0r6KDeO3EUPlHdbomGdL3/4Ql6qmNYXbBtr/CoNK+KlHcjOt2RZ64xuPrlR3Q/o6PpE4OX/PFijkppqeJ0jwf8biB+RadDqViZw2FbrEUQdqLAR9N3JkMNwOT3PY86PzEY8VevFRVW5gUmoRQpaAZSy64Zrhq0xhXpU/2Vo1uq+Rgyuabk3qS21vkFdsl8ERtQYn+Kv313EmdlmFyxO3p7Y1+x1WpQxQ25wyJ6vdmZpBn0i9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S3Nf5ZcfJEWy5R1mL3LLji5H5Lm+sjAuTF0XHWRRbW4=;
 b=dv80nigz1yh07bfwY455UvrC/GE2uqV0K7YTLwOfAqq6FvHdQoqydkaz1uMLFx4txuCQrHQuK4qodb7RcIC4Hpoh6qE6tDYNAstKGmptIz9trqDkCHEUaCUX2ZRJ53skns99q4Hn+2kkYL766yyWBnoPIC6B3Zt32dpb/MO17yzHuBiC2pNvq8IzZ6+Cb/guG6OOXauIENobnjBMKMG6ZjOjUtkdUvIc3EDgctteHF+Y6vqHxfMZBu2LwR19NNCBxcW5YQxqUTJcpUuImEJG6N/PXHKAIP5hPT+806NxB0YXi5XEofDk4UekTpuLY+VuvwM2BsXuF0QqqYDC7wLFRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S3Nf5ZcfJEWy5R1mL3LLji5H5Lm+sjAuTF0XHWRRbW4=;
 b=bB5sY8xWDLwpKsAeY3RBoYLF7ZheKrK7nM+s7W8bjGb8qOaBnBKE/IenNsninKrSjMxYH7x9IMFW6zJC4+jH+XqJqTaV1Fsc/jSuL2qG9RNJuTQxWHp1+WhWXk/FpLyP46q4YHEzMLv74hBgIOkkmkOOmHBnroWSlyFK9FnraLo=
Message-ID: <663ac45c-9e58-4e79-9678-b7846e000f15@oracle.com>
Date: Thu, 6 Jun 2024 17:04:53 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 xsDiBEab+moRBACDH5yKqS3wcc5bdxY7PBNuwKvF5TKMfagmSvuRDtZjjIIWaA/nZ1KboV9G
 q5g7kP7+Kfu+Qgd8u65eVsWwmPW10fXvj3aCU53glx2EdGdrHcgiyH2gEQfPiyBw+trIppWF
 RV0IDXSLMA1FNC92t2nSG/VFHaPTVwcgkIRSfcXDvwCglGdEa6f4uLqoNHP+m4yYnzapFuMD
 /R4+2AJDAvEWKDdYCGZzlawjAmmWyXrmT7/C/mx98qUR473l4buXjHgDkkXXlHqdzil1vK85
 PhrKzNJDCCmlHUJNz+QwiAMOLwpD+kwVPb57RG7y+a5JQ5+jtVw4RlUxZIk/wj2An9YBO3A5
 vR7PdjM32ZJCN2+aM4dYfNzQxQKTA/47icvBaBVTl9rztjg2pd2Aqpc1P/GsIYLGj7XjnnJv
 GAENBHSH1QjpZMJGCTS9oJ+B0/wrIr+pA+MdFgYAb6ojMQJOO6UChjWWSGjMFcs/CeXhxlLB
 ido3DtAETbNTwO6OEfAvdosvTdhJFnwvZlJ+zZGGy5CrF2Fd9PUe9tmASc0uQWxhbiBDb29w
 ZXJzbWl0aCA8YWxhbi5jb29wZXJzbWl0aEBvcmFjbGUuY29tPsKCBBMRCgBCAhsDBgsJCAcD
 AgYVCAIJCgsEFgIDAQIeAQIXgAIZARYhBEoZPAbTXnxnD6TvC6L7nggfLRMOBQJkQs2eBQkn
 DNS0AAoJEKL7nggfLRMO1esAnR4FVD60BpDY/bJp5RC1VXhOVlo4AKCJgsQeVeGLxDlMuhAm
 bcCkOjafqc7BTQRGm/pvEAgAmnlpSWGjmtSGlLqKTuymwBAU9G7Jw8ow27QngXS/86g/PTzm
 yhXzK0uPgeoIaTZlqaHWNKCWJnC6T2btXtaDHH6cElrClYNf94os5sSt8PBDh184W+NtctAy
 Y2dA1pQYhYs8/eXwa4E4cyrrQG75M+CHrbu9Se0vlERARCpNcjNYLpTXRCwNuUvAi905VJ0Y
 XnGX83WbJfNIq+uxnBa2gVzwb2/2FwKOG03Wyb1vs6NznWJle9x61y8/LlEDoBRbfIQTFp51
 R0ue8gX2yMVgh8lYVViHYCBq+cat7p8X41Xa/fN/HfBFPsf3/+bhggNgmaBmDJBxxd6BPB8Y
 EireiwADBgf/UWIxQwwRLkiXPacOoh34MJYQIBTrCC8gVFxetlbEPEH5mueZMJegAPTF52l8
 6REenxdNVz/0xT7BD6VlHHY5DowlbRca4W8eb3gpkX/wfNYDYCHtTifT7ewumTrNZx5mrbNk
 0XTJVOPAP3z7E0rVD2w/xo4p22DzIwfeGKwpHqt1b6Z9fmrRDwaiXaFmwUf+rIiGc/OFcOSe
 46HwTmIyTOt6NVdQSf75jOPbdeM/n1I5svOdWTLEj6QEj2q9UQ98UEPJuMdaotyBFwKlcDOO
 LMSL793fWINrYSskdXhHjaht5wWqI+egO2JfciI/vP1+bEzhpY9llGq+r7WG3nCSf8JJBBgR
 AgAJBQJGm/pvAhsMAAoJEKL7nggfLRMOgugAoIdhGnD9d/IS6fDVgv+4xnOXvyohAJ0VVxc1
 uoPzepWFbgvLuHIMvyjRog==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR13CA0037.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::12) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|DS0PR10MB7152:EE_
X-MS-Office365-Filtering-Correlation-Id: 757ca6fd-e195-4b20-971b-08dc868576c6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?cVVGY0I1dDJpa25lT0NiTXJVY1JmTEpRMU5VYkFGWVBkdmtlaC9nRG93eDBD?=
 =?utf-8?B?dEpTVFRQVnBsWjl2NHFoeDljN0llODdreHRPbWY3cUlORnQzYTBaSDYxVmp0?=
 =?utf-8?B?MmhNNTdpdE0zaWx1UWFMZEcrcGZNZTlPV1JQOEtsdzVzdEwwNmZXNGIvTmZ4?=
 =?utf-8?B?d05SUW1HTjJ5WXVtN09vUFgzNTFuOW5ONVRuSnN4cXVnZXE5M05sY3QzVFpV?=
 =?utf-8?B?emZ3WU9qbUd4Q0wxMWV6VFBWZXljTTRWZFdXSkZYWjViZjY4cmdLbDdpdkVX?=
 =?utf-8?B?SUNsYjdBMVpJZzFZRHRSTUNBN3crV1NlUHpTNGtJWis0VmdENlloKzlzMXdx?=
 =?utf-8?B?QU5mdUk5QXBrU0o5K0htWHJUM2NPTExaOWRMRWhFQjM2WldyeEJ6ZG85ellH?=
 =?utf-8?B?TnNRMTQ1NzBmYlUzWEVOU3hYZXowY0F0WU5JdnNVRHpVTDV5N20yV0lvdndR?=
 =?utf-8?B?K2g5VTE0VzBTVi9wc2ZXRmRBeDZKUXJ0ZFp2Mm1jWUNSM0JqTGpsQ0paRWw1?=
 =?utf-8?B?NXZCVWg3RUgrYm9aaldoZ3hxNTcyYmFPU2QvZEFubGxDRGthL2VPdGpYVlQ5?=
 =?utf-8?B?WlZvcFdNSlBvcU5lclI5cUt3eEtJQWdRSEFSTVl6ZHAyb0xGemZXSWlTRW5R?=
 =?utf-8?B?UlJlT2h3YmYzazlhaFVEbjdLYVFUNVowVDk0NG0zYzU4anBFTkkyWVB1eXVV?=
 =?utf-8?B?ZFJPUmJDYUVUaWpHRVhSc3FUVVZ4TThCN2hQMHBoQlFldnFISlgvQk5XNTRR?=
 =?utf-8?B?VkFudGVYUTd6eW5haWRmaW9TR2xFL01pTHRRKzA2d2ZKK29lTEMzN2haNStK?=
 =?utf-8?B?bFN0dVZoc2JIWnNyT3MrdUpBR3pIWEtrcGlOV0VoWHppNXhVbFk3OWZHRzRI?=
 =?utf-8?B?UmhMcjNmUG44RWs0R1k4c2lWdmc5RC81SFVWZFA2WnRKVTVPNnludkVhSzdk?=
 =?utf-8?B?aVRMVVVZWFNnOE9WOWZQY2w5RVVMSjZWTy9sMEliaXNnbUQ4UnpQcGtBbXht?=
 =?utf-8?B?SlFnM0Y1cnV6akNQc0N6Rm9pN1I0Wm1qK0FzL0srVENta2wwWXQxU3Q3ckVq?=
 =?utf-8?B?emNUeGJONXh3c212YWxwaFNhUGFUTVU2MWVqN3U3L2hrQVp6TG5HOWZrQTB3?=
 =?utf-8?B?bHRVbWgvMEdEZFR6NE5mbGV1dW0vWmVkcDQ4S01KdHc3MmpMVHRsT1VHdWFM?=
 =?utf-8?B?YklvNHgzSk5FcFQ5bzl3ZmdTR21XS1VJbXo3WnFjWmx3N0k4aTZWWFJhQ1pt?=
 =?utf-8?B?bTliYzFCZFJaUE1iYUcwUng3STh4R0lwRllIRDFIMXhodG9RQnl3Q3RJdXNR?=
 =?utf-8?B?V2kxY3B5RmxXRnFKcWV6MStHU290WnJmMG5aZEluZ2syVWJzTDVQUVF0SUlQ?=
 =?utf-8?B?RmlvYkpIS3BNUDdUZldCM0MxNWZLU1lGWmFvdzlyV1FHb2xCakV4dm9hUnZJ?=
 =?utf-8?B?dHpwVnJHMDNZMUg4bGVYbVplSzBjWHdhZm94dktjVXpEeGtyRE1YVlJkQlh2?=
 =?utf-8?B?U0RCSVR1dUwzNWFtQTBSeGlWa1hCRzMySEdoMzFoMXlNaHduSmpHWFNGbjBW?=
 =?utf-8?B?RmdoaW4xUjZXNzlCS01VUkJQemp6Y3BSeGFVWEYwdS9za2hkMVJaWEdQY0RW?=
 =?utf-8?B?N0UyVW1seU1kSVA1c1JMVkhwcnkxcy9Wejc2cGtxWEFOWXBKdUdDNVd2Z0dG?=
 =?utf-8?B?RUMwRVowTEc5eFg0Mzg1ZTRQSDlYbHJHZlUveEsxQkY1b3FKSmFIZVdnPT0=?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UTFJb2VDSkc2VFFrWDV3YXY2emd4ZXVWSm9UM0FRUC9hRTZ2OHZxeTNJdFFT?=
 =?utf-8?B?dG5CTFNhWjEzRXBYMExHZDB6b2FhdlEvd1RET0V0UFR6aVdsS0JBQkhSWUFY?=
 =?utf-8?B?NG5janlwOWVTZVo4dTNNVXc5dzRHM3dOc1FLYUtTQXNQcTNIM1owS2xZMWFl?=
 =?utf-8?B?TXZ0ZjhMQi9aZDRoUXpIWHdyall1MWJMei8xNGtOSkZiOG90VlRtMFVGNDhy?=
 =?utf-8?B?Y2luZUpDdzlmdFA5ZzdoQStEcW5MZzUxR3RxUStqeGFoZ3psdUxyYnFqaWNG?=
 =?utf-8?B?UUZidmhjdEdUbGUwaDFOQkdFbWJkWjVsWlhBK1FjTkI2amdFSXBhYXF5R2dR?=
 =?utf-8?B?ZHlxRWJ1UjNXT1haNlBIdDJGYUx0TlQvSG9FYVVvWlZNU1c2RG4wek9pdFNL?=
 =?utf-8?B?L2QzYWNmYXJUMnhoZkowUDBJWGlQM3JiL0tlYm9CS1NNTk9UdGZYNWN1aU9l?=
 =?utf-8?B?SEhSZlVjUmg1ZUdwS2FJcDZEbTVnTHVWR0JYWXdRaHdVSXFxWnJCbkczL0g3?=
 =?utf-8?B?UTlxVlRZOTg1aUhYYWdXOEx1Z0VNNmpmRTA0RWhwd1F4bHZScXFxZllYd3dE?=
 =?utf-8?B?dUgzK2t4NlphSkZKWWRXVzgvVmNqekcxYzE5dU55TSs1bFRBWDlsaGJDZDRt?=
 =?utf-8?B?NnhkSmROS0E0czR6UXFkSGd6TGpHeVg3NFVHaW8wUkdpNW9CbFY0TEQvOFVB?=
 =?utf-8?B?bENtWHlyY0swK0RTZjVjaXp0aE5INkg1eFVtWWh3RG9YNmtHbkNYaHRQeHJn?=
 =?utf-8?B?TmVLelRsbU15a0xvTER3TWpUS1Noa0xHd0NzbEROUitWc1M4TG9YemNQY3FD?=
 =?utf-8?B?NE5DTGVHcDVqNms3UkJSaGNaaDVGdjZ1SjBvVzNkdDhEemYwUmNhbHJQcEVV?=
 =?utf-8?B?MHMrTy9mZ0libUUrSUlnSGpMWUZEV0FOdm4vWlFESkc4QUFEUjdid2NiQjJZ?=
 =?utf-8?B?aWI2ZHF5WEFxNzZJUk1iUm5HUE83N0xTTkRYZEV0aVZ0SVJ4NWxjcW02OU5H?=
 =?utf-8?B?c0ZRN1B5N1ZRcEZibUFONVFWVXlGRjRNTjA1MVV6RUJKUFBiaEY5bjd4c1Bt?=
 =?utf-8?B?Y3BUWE02ZGRUeXpkeFNqVEJReWJzVjVGKzJZRDRHKy83NEVzMFNuS1FicUlP?=
 =?utf-8?B?d2NYTnBBNzNpRFVFU1N1UXFIRGFGRjB1Z08wRVpNQllqSVRMNzdzTm9EaDVF?=
 =?utf-8?B?NXVXa2piTkc0Qm5VcDVqdlhKSm4wYmlSY24xV09PRTNNRjU4U1d0S0hLZGI4?=
 =?utf-8?B?NEVZZGpwb0lhTm5LbWhjV3piblV6dTZrdzZRTytYOXRhdCtLcVlURGgxZ01P?=
 =?utf-8?B?clR1eWdOMVM1amRnYWlsSEJxNzBpM2QxRVFoK1RCMzUrNnRoK2tEeUJsbmU1?=
 =?utf-8?B?cWdTK01JalIxOHhHeHBwOHVobmZWQkRmTXJYWjZPUkpUOW1CS1F1R1doYlNs?=
 =?utf-8?B?a2MyTWNveHJqTnBtWDFpaVJWaU4yQTFmNHlLTm9yNk5JYnBBenB2MUhmdkpT?=
 =?utf-8?B?eW9sTHd4UkRuRzB6MjQ5SGJzVjY5bUN1N2N3eDF6ZUM1ZmhSbDgwQ2pjVkRQ?=
 =?utf-8?B?YldscEZGeEFYWVMzK0JzQlZDalFPUEtueGZIbm9KYlFCRGIybUtpOWNlVG9R?=
 =?utf-8?B?eUs0ZHFNbEhoUXlQS1B5Mnc5MmxiRTNncGUzQWFrcmU4TUJhNHNXdGZLSkUy?=
 =?utf-8?B?NGx3dTlISE80THRReW8yblNEN3NtL3NidThlcEJPRWljS0EvTW5SYVZLM0M5?=
 =?utf-8?B?Z3E2WDRzckFRZWNkdldKMjArKzBYWTBwR1ZGWDg2eFcxenQxU2QrMyttOGJo?=
 =?utf-8?B?dFdzZWlUeWthYnFYbFZnYk5Ec01DVHRqSkl0ekZDYjEwUUthWnJQWTJkblJi?=
 =?utf-8?B?d25wcHVldHdUSUcxV0U5NDNmdk1tZkovNHdmSnNzVEhORW9OWkp4dHBac3VG?=
 =?utf-8?B?ZHo3Zk5ocnl3Q0lJWGNUZnRTd29DWHVueGJmRWJwN09zRnZtUFZXVnM4MXJN?=
 =?utf-8?B?bE1lamJOcW8vdlcvVGIwSzc1SStUVGlxNFprb2lWL3FwZkVUR2J0Y084MFVG?=
 =?utf-8?B?N0xRUXU0VnN1d0xVODJhQlpnU3VvSEtFL1NNMDB4YmlmMFpNclJuaEloeFcr?=
 =?utf-8?B?MXoySTN5aWZ2dzFnSUpaMWZWSnhyU09WM2dHMFdLVTJid2FHZ0VyZVk0WFdK?=
 =?utf-8?B?cFE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	4ZTTRccHZfqKztMX7Fa1EpjxTZz9Nofpq73X74XLqE4icRso/sMIF9FnJiPjoaAZI/ZEak2FNUXF3Gd3u3lA4bvauIO8t4IU7mQ0Y1Ugy9mBq0hW9wHrc4g/3HUJROCEkCFPaZVLdbo7KFs7m5aYMo56vQdBxfcgLLAe8Ti7ST/UR+9Tqc3LbIfsTjbhiykZvjbr89yLWFR4UHJHz1h6E8d/eIfNJ+1kDK8krjy/mH5lk16yJan5/19Abtsi+Z9bt21/FF8E9M/RTQ6kwRB8YSEt9JGBUyKOECoW6Ero9YjL88D5upnHrt5z+ppXgLlBOeejwfkhxKAeP6KWW+cKTJjmFIRFxqlS9+6Ux7taZtgo9XG/WPky7PrcC0dq63m8xBCZ4VY+CfXs/1trqd9mlW5uJh2Ayw43I6ftFmVxLmaayUaUZlK1k+TUH38/TFIs5Fqfbb4YHvSOlCzDotomi5Z2AdfzDUhhFGFVt90+qugkSQVbiFc/HVGHyEb44S1kw5xBSeKDYBBLSjBLW6TQVUo67Sh2BhkZxkUKNwSwxzwvOFENzfI925qNVo6Pd6c6xl77JieDxS8XnUIHnnLIflGDKK9FTjuylnF3qvluMl8=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 757ca6fd-e195-4b20-971b-08dc868576c6
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2024 00:04:56.2465
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 35ZAVQBm6Xh014gqcBPEVecfBMq8C+79mGNMt37X3H1Ndn7JWS3MvkTatcBfE2lioKBhHbyVNMwKYGi2HmQzy9pzYVTv0BmAf33egkBnDiw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB7152
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-06_19,2024-06-06_02,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 phishscore=0
 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0 mlxscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2405010000 definitions=main-2406060168
X-Proofpoint-ORIG-GUID: sW7AuqmYhT_dmQNGjKww_4C8iPyAIgsn
X-Proofpoint-GUID: sW7AuqmYhT_dmQNGjKww_4C8iPyAIgsn
Subject: [oss-security] PHP security releases 8.3.8, 8.2.20, and 8.1.29

In https://fosstodon.org/@php/112570710411472992 it is written:

> Announcing the availability of:
> 
> - PHP 8.3.8
> - PHP 8.2.20
> - PHP 8.1.29
> 
> ‼️ These SECURITY releases fix:
> 
> - Argument Injection in PHP-CGI
> - Bypass in filter_var FILTER_VALIDATE_URL
> - proc_open workaround Windows with escaping arguments for bat/cmd files
> - openssl_private_decrypt vulnerability to the Marvin attack
> 
> Please upgrade ASAP.
> 
> Changelog: https://www.php.net/ChangeLog-8.php
> Source: https://www.php.net/downloads

The Changelog link includes further details:

  - Fixed bug GHSA-3qgc-jrrr-25jv (Bypass of CVE-2012-1823, Argument Injection
    in PHP-CGI). (CVE-2024-4577)

  - Fixed bug GHSA-w8qr-v226-r27w (Filter bypass in filter_var
    FILTER_VALIDATE_URL). (CVE-2024-5458)

  - Fixed bug GHSA-9fcc-425m-g385 (Bypass of CVE-2024-1874). (CVE-2024-5585)

  - The openssl_private_decrypt function in PHP, when using PKCS1 padding
    (OPENSSL_PKCS1_PADDING, which is the default), is vulnerable to the
    Marvin Attack unless it is used with an OpenSSL version that includes
    the changes from this pull request:
        https://github.com/openssl/openssl/pull/13817
    (rsa_pkcs1_implicit_rejection). These changes are part of OpenSSL 3.2
    and have also been backported to stable versions of various Linux
    distributions, as well as to the PHP builds provided for Windows since
    the previous release. All distributors and builders should ensure that
    this version is used to prevent PHP from being vulnerable.

Unfortunately the related advisories don't seem to be published yet under those
GHSA id's on https://github.com/php/php-src/security .

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
