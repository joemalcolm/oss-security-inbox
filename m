Received: (qmail 24269 invoked by uid 550); 12 Nov 2024 17:50:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24248 invoked from network); 12 Nov 2024 17:50:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2023-11-20; bh=BOWVtL/z7wOxHcUn8cyDgVcnjrz2RdjNgBnjD+rzkn4=; b=
	QK64bsK/s3h7Fl7Y9Hi+q8ZaaCuzAQz0Y1If+lObvaJUSB7832Yt0Ym3PNvXFhZM
	7tuJAaMNfy51OhKT8z169nwNvV4vfY/SNITwjxwcNznjuGA8CF94hlrTJL2iZ8na
	kYCI4QkqG4o5F/EbBr4BwzvUu0tUk45QDERDsHiV+nn3433b3F3j+hqw7/jg78ch
	rSEvP1MHfs3dwz98sheuAcT9H/qlxcmnULcZUeL165RxGOE/YIJ/vAgtR10iOqAp
	caCmWfHcroXIqJCwd09fgRel5m1CKjMiXIFY2DSLzrWRd2ClMnAI5sng3BCpljgv
	roKtmOKURO0yuTmTZeODoA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kKTbzl6EHZP/92srXZeiDqiwtHzPlLQ961+a5gBu0h0jOGlKDsNBPyeRaQUNEsgUsShUnv4O7q4Yf0RbkiaFembxqiOtJaTvnBnpWvi9VKL9M+wPTSOKE6KUjZZAmYE4iUlNTb8dX5KUilUE1gLMVKp8XSWcPhqTnQd7eb1RezmZWbukgGWyQFo49xdVidFYoD9Mo5pPv7fwP3YsOletAFIvky789/IoKHlUh3w1h8dpfrL19i6X6JnkkjGLPGGmQ3MzImfK06tIUlwPCISJYzPK9QYTqDy3QGyCIf7AXM+ckUBXkV3IC7EVuG45cnJT/P48KXK3EkEHWUeFvABVag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BOWVtL/z7wOxHcUn8cyDgVcnjrz2RdjNgBnjD+rzkn4=;
 b=ptZe/UHLdOsxc/ePN55Fj1BcZP2rziPDFpb+hzvsbqKVShWrPEBu6SlgKgxtz8vcdIrh5b8Lclti4e7XsiCx2v2sxRc9PgQKMvtgKt0rU4OvHrnsOka+cNvm2FTt6bgyq58tfhq57+s4M+Vv35WNzWantqIn5sAUXqQzxQ+D5wTezrMJMP5kgdyEHtOqbQIfR8sncE7RdwenN7WIsjQ5vF4Zp9vfQuo0WL6h9VmejgqFHxO8Hoc2VX/oSwotSzTcNa/D1MwLxnZx4bnUu6Ql1mhxn4kj1k+atgrVqteYFLfylxTO2486KRLLzYewob7K8TQwQEIbOj5OAfIrmHKWjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BOWVtL/z7wOxHcUn8cyDgVcnjrz2RdjNgBnjD+rzkn4=;
 b=FUdI9xmoDNQwngpRaKFCYCDmq/7mqwWHCVYGAi14OZmT3VIBElbq6TYXSOpsXvPc4NGpSxrSBoy1mo2fgbba9nUq3SesBXg6fQl6A+aNR4dI+j2RPZDM/wR8D4KUHHXR0v/5WogmChtoIY3J+m7UeAWjZm1tW+zXhCSkSGxQeBE=
Message-ID: <231b522b-4943-439a-8e41-9dac3cf3953d@oracle.com>
Date: Tue, 12 Nov 2024 09:50:11 -0800
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <ff474a61-af6d-4849-b87a-9a7ac482663d@oracle.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
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
In-Reply-To: <ff474a61-af6d-4849-b87a-9a7ac482663d@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR13CA0069.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::14) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|DS0PR10MB6727:EE_
X-MS-Office365-Filtering-Correlation-Id: 4b717032-596c-480e-f246-08dd0342759c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?ZmxKeGRtY2xQTFE1L0g0dnQrWjRwWVVJbFdSTWlCdytwZGNRV0ttL2VjdkM5?=
 =?utf-8?B?NXZUNGFFS21pR1d2NU10RlFXbzU4dWhsNTMxUnA0U1gzT0lhTEVBMDJJbFpS?=
 =?utf-8?B?WHpmdm9pLzV3OVM5YVRMSFdkdVhQY0JaalRCYmJ3ZFM3VE9SRjZCNTM1Um1o?=
 =?utf-8?B?WldGR3JoVnFwZmEzRjZySUc2Y0dqblE2T0RBekxYQU8rK2RrM2lCNzRCbFVv?=
 =?utf-8?B?djlESWVkbEhMV3FFYnJZTVdETm42Z1dPdVdsK0NGMjNpdHFpaUhUSnVKbnpR?=
 =?utf-8?B?K0ltTGM2VW9oSklnWlZNZ2xWcVJyUzB1OHRGMnlLRndITDhlVXRhOWVabDRU?=
 =?utf-8?B?a2hpTFlUbFJ1QzJOWXdMK1M3UkFKRDgvdFhmTVZtOGhKRTNyeDBZR0pKL1cv?=
 =?utf-8?B?bG9WT3pKc1RreXlXMHVBa3JRUXRpOVBON3lTMVRsTERYNlFMT2RBYzlCU0pI?=
 =?utf-8?B?SjRsU201Y09NZ245N0pKUHNZbVFMLzlTYTVYcmlOSGVKYlREQWFVWU1ZMi9V?=
 =?utf-8?B?WVVPRXI0aWtXWmdFOGoxSy91Wm55OFBhcTdwL3pXMFdwdEhuaXdaUjgxc29x?=
 =?utf-8?B?KzA4eDI4OVZ3MHExRUI0S0tCdGJvUW4yUVZkK1VrZWJCZnBDTDVsQmcwNXBE?=
 =?utf-8?B?SWVBWUxCVUltbHErZXplZzRzVWFCcnhpTUJHWUVzaVdiU0VlWWNzVjZuU3FT?=
 =?utf-8?B?OHJsQmVwZUhkbjRoUTQ1ZWdreG90WnkrakZYaU1BbHJBUXZiOGNNQTY2bExw?=
 =?utf-8?B?VmZFN3ppUEZpdGpwbDN6Q2tBTU9wb0ZSV0dOaFBmSEN6M0x4Q2VqWlZFNDhw?=
 =?utf-8?B?eW05UDljUGJQWHcwQmUzUGNKYXdRVlNsbFRzem9MMW1SUldxZWYwajdDRTFh?=
 =?utf-8?B?ZmNURnJnWDBXaktoN3VjaWlMMm1CSS9ZRC9pdFl3dUQ2THZKd3F3bHhZa0xz?=
 =?utf-8?B?YlhvaUt6UU05VzZmTmZsalFGMlo3aHdmOElPYUNaWmF0bGFSNVUrOHNXekxa?=
 =?utf-8?B?SmFwRzZ3dU1LYXpJWDdmdUNwMGVKUUZ5ekN1eTBXQXJXQWE1SU94NUd1b2lG?=
 =?utf-8?B?T1pBN0pRYSsxSFc4MVVsdHJ4V3NKcEc3TjdIeEt5L0tZVDE0SDJXZmwvRU5i?=
 =?utf-8?B?a2s3Tkc1djdBamNjeWNPL2ZSUThxbDVHd1JpU2lHNHVobU1qVkpWQW5BSFl0?=
 =?utf-8?B?VnVFdG01L0RIdEVVT285M3JsZ3pSb0VRVjNrOUY1ZEZsNmw1a0V2VTJuSlhJ?=
 =?utf-8?B?NVhLek81ZUNsbkFtK2FjdkpZdHBMZlh4cThQTUhWbW1xZi9tUnJINGZjWFM2?=
 =?utf-8?B?VDFOWVNLaDlQU2orMitSUDdFaE5XbGdBcE1keUFFaU12dFVmSEhqTUZocFlk?=
 =?utf-8?B?elpIT3lHRTFkNVJad255QnJjRC8vSVlId0pTeHl1Uk5LamJsMkxHK21QUTNB?=
 =?utf-8?B?OXUzVUJ0NmRWVE1KZjkxeFpOOXhYKzVBNHVOSm5vRm90V2dGRk5yNEtHTGxv?=
 =?utf-8?B?ZEprTytmRHhrN3VoRkxMbnVDaTdsRW14UFJmOU1yU2w5MVRsZUhVTE9lam9B?=
 =?utf-8?B?aUhKRVZvSmZPWWo3dzRHZnh2dW5RUmRXOFgzcm05b1ppbDVudTRLeS83SXhw?=
 =?utf-8?B?OFBVUDRjTjQ2aXIxWlFKTTE0eFpGWnRtS3hjNG0vcXhPY0hDVkhEaWdEc204?=
 =?utf-8?B?OXFVcFRpZ09yNmhEMHpPMVdCUWlSYjdqRWV3MGNCdEMxUEM4MnUwVmhzOVc4?=
 =?utf-8?Q?c35npQhSkdtJCaX7NJ+/Ze1dsChyjCdSpERgOFG?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?R2huK3BJSjcvdTZQQzZQZlM4c1QvZkdsd3c1aTNqRG04STJGN0ZrdHJxa2pC?=
 =?utf-8?B?a0ROSjJaN2w3dCs3cXZIYXEzSGdLSnVXTXh0T2szMUNRa3VBZkNlWVN6SjFV?=
 =?utf-8?B?bXlXZXluZkVKWU40QXB2N3JKek5iU1hsRkNYMXlnTGJwM3k2elRRekJ1Z01v?=
 =?utf-8?B?bTBON0xoekJkc0RhYU9iWjcrbDB3T1U5L3BxSG1qekh2dUdHUkUwdHJPWW1v?=
 =?utf-8?B?a1VnYmpuTmUwRTNRRWdLNENhUGJ1UFhZNEx1cGNHUkRJMHdMMi9HSjFQaXZP?=
 =?utf-8?B?TytTdFJ2TWM0RjJJSUE5NzVDVWJSR3QxdGJDRm9EeWNDVE11cnkwanR4a2pS?=
 =?utf-8?B?ZERJMit6VG82bmhIeWlGRFRpTlJZYVdmVGs2RVRVUzhHMkcrT25mRVNSTkhM?=
 =?utf-8?B?RW1DMWlGYXpUemJmbzBON3pPT1FtR0N5MlI5R1E3MG1HYWdCYzRRK1FhM2FD?=
 =?utf-8?B?NW5ZbkNvR1UvakZ4RDNhMUJaSkQ3eUZ5U25vTy9iMHJPZzdVdGNHeisrMUpw?=
 =?utf-8?B?R0hSak4zaWhNR3VoZGZkcTROZ3hnMGpZODRRZ2x4TmRIQnZXbnJhTi9IaEJi?=
 =?utf-8?B?RDVvTEtTSVRUV3M4NUpwZk1OZGZGcER3K0RsNU44U3Z3bFNzL0dtVW9hSzd0?=
 =?utf-8?B?SG9BSnlMY21xaks4RHV6V09aTW1yUTREU1NIRGhZaWlzeXJnZEZISWVjNFBN?=
 =?utf-8?B?cDdJQUpzaUFpdHJDNzB0S0E3QWFpeU5LQzZFbHJNS21YTFJMdy81MWpnU3Vi?=
 =?utf-8?B?TXRwd3c0SkxNOWtRY255SVVYWlFqanZ5OTZGcXFkTUJsTWNYN0wzeENOZHpa?=
 =?utf-8?B?RERCQzU4bzJ3cXNsYkZyeGdmenQzYjJSdngxZDBPVXBHREpMM3RYQTU3cUdL?=
 =?utf-8?B?RW02UXZWY0FIK3dCQlhqV1F5TWJZTE5pQ2RGOFF2NTJ5T1hOa1FsN21KVUt2?=
 =?utf-8?B?WjBxWHdTUzVVMUFtSllGOVpDZXhmRnYxTWlDbU5rU0duSjZIeXRPL3hTSFhW?=
 =?utf-8?B?RXhmTEtXbnBuR3lVSGhNbmtzOEtLL0o4Zk5HRStoRFpkcnBIUEUxV0h2d0JZ?=
 =?utf-8?B?MnZwd0Qwc3Q1N3AyVXZSM0k4K0pLb3dIaWpTOUtBMGJFRHZxZHpTeVd6TTdW?=
 =?utf-8?B?S2pzQzUxdGdwRlhuc1hNQmVMZWorMkZzWmRjbVVkN2NFbzk0TGdwMVVDdlZL?=
 =?utf-8?B?NmllMERZVXp1c3lIZlRLZnNDUDFqTG5mZFRYSlRMWS9abm94U0dkdXpVZm1t?=
 =?utf-8?B?dlNLVXJzUnAreVMwNFhRbENCQTVFVjA1eTQ0ZVpEOXptUEE2ZHgzaVdVOWJB?=
 =?utf-8?B?MFFtKzZ6dTdwMDZlN3VTalJaVFMxWXJzRGZtVHhLd2hxQ2VQa0ZRUzBRR0dQ?=
 =?utf-8?B?L1dxRHFobkFaZWJ0SldmWTU1alo4VlZudlNOTVk1UHRNaUUyYXhkQkYyTm92?=
 =?utf-8?B?Q1NUbmQxclV4dkl2UGZtNmVPSnlmWWdtZTFtcHNidkMycWdXL1RMWkQ2c3Jp?=
 =?utf-8?B?a0tPS1NlRU5waDhnWFE3Y0VCb3RTV0IxYldReWR0ekMwbnE3NCtheXZ1VmxY?=
 =?utf-8?B?S0twQXZ1eXdON2lZbkgzVXZPK2daMjlYM0d3VjViNyt5cTRuZFJSc3E0bnQr?=
 =?utf-8?B?Rmc0dnErTGtna1lHSk9PazNzenpFNVVHUkdXbDEwSzlOREx2cnpWNm1tbUlr?=
 =?utf-8?B?TmZ5V2xjN1cwWU84TStoM3ZvemtrTFlHZVUwSzd2ZTRTamxNazlQUDZFYmRV?=
 =?utf-8?B?WElwZkNXN1MrWlNqWlhQdkFqTUhMMjdQTmpUOG83eGdYN3VoUHl4MGxVMjRY?=
 =?utf-8?B?NysycXlHRGVvTzdWVEo2TFBwSkVZa2VlT1pGRHRuakZPemltQWlMM2I0VWtq?=
 =?utf-8?B?dk1VdnFuRHcxK0I5T3lROFkzTUFsdzhjN0hvckpNMGE2bnlxQ3pXN256cFJW?=
 =?utf-8?B?cnVRb0RrRG1tU3JCdDd6d2V0ZE9mYy9XbVNTam9TRE1lREpibW83Qy9jbyt2?=
 =?utf-8?B?dm5DRVhsemoxWURIWjR3MVFNN09hZ2V4YWJNSGhaZ0JJeE5rY29RT01XSjRO?=
 =?utf-8?B?THF1WkRXalYxRVVBNjdtRkFtbGlIRXJ2RWlvWWJIUitvcFpkT2IzTmJvVlB3?=
 =?utf-8?B?Y1dSUktXSjFTREZoSHJLcHh0WjFVZ21kYTRQYWlGeFRzME5WMEhJS3B0SDBP?=
 =?utf-8?B?eXc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	N9zuFwq4CCE3T2W1d7wNd4xrRmAdNj7+usoI2x7bT/bk4ifbPFEw6RfRKNWJMrBoZfz+FI5DlFxDSPt2x05huzr8HaMctFgdCzHFv0lB3caOU7KW63jHSIM6LXtgJSvu1F6V+1nSiQD2AEj+HXhMhBphGpCU33eNIY9QFfQmB8nZMB909LMseS1k5oewySE2tbsfoifsXtMzYelbolO6MBoqYUjueInaMAwzIE+rDqEl4PWMavSOp+7AdqZdS4eSeaKRDkPIJWP3AAQY8H7rV2oJP3PvMaJ1jeAngId9xMqaYlrcUXvlxnqWZDuQshKameJlPA3VeLAFBdiQAa5aTMFgssBRkD6IrI9cJ+ElLYXPPTUEsFbADKYl99U6eLVWSMU6/sPy256XGv6RRluh6krUkMiFf8eNZKCNLxw8V0y2gah7XLXg/UuDEbHoEyQ1ET0VRk86xk+ngDhGPc3K2Vq+UqnLEa2OgS/pYeIcHHWnFK2hFX9rgOBVOmDxviT8/2eyLk8btl7QQRThuVf1v81fwrqezSdozII+ZafBszObucrMFbQdv8qjsi7Ej4eZPjE/JPbXnZn48VHLaWyqYV3BIvZDqpelPUmBE1IIOo0=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b717032-596c-480e-f246-08dd0342759c
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Nov 2024 17:50:13.3729
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I31xDUHetIk1go9uWo/MI6OUxS3YPRgaIsElrSscdRyi7gVxZ/DzkzSBuaBHdO5GAqDMNvqu95i2GHSKchnkGKLXZUQxQlSqdhatTgEWiXs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB6727
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-11-12_07,2024-11-12_02,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 spamscore=0
 phishscore=0 bulkscore=0 malwarescore=0 suspectscore=0 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2409260000 definitions=main-2411120143
X-Proofpoint-ORIG-GUID: zydgAMdhK3hS6qUMXu_mySF_ZL8GX4kS
X-Proofpoint-GUID: zydgAMdhK3hS6qUMXu_mySF_ZL8GX4kS
Subject: Re: [oss-security] 4 recent security bugs in GNOME's libsoup

On 11/9/24 10:45, Alan Coopersmith wrote:
> https://gitlab.gnome.org/Teams/Releng/security/-/wikis/home lists four security
> vulnerabilities reported against libsoup since June 2024, none of which have
> CVE id's listed as being assigned.  (For those not familiar with it, libsoup is
> an HTTP client/server library for the GNOME desktop.)

It appears that Mitre issued CVE id's for the first 3 of these yesterday:

> 1) Request smuggling via stripping of null bytes from the ends of header names
>     https://gitlab.gnome.org/GNOME/libsoup/-/issues/377

https://www.cve.org/CVERecord?id=CVE-2024-52530

> 2) headers: Be more robust against invalid input when parsing params
>     https://gitlab.gnome.org/GNOME/libsoup/-/merge_requests/407

https://www.cve.org/CVERecord?id=CVE-2024-52531

> 3) Infinite loop while reading websocket data
>     https://gitlab.gnome.org/GNOME/libsoup/-/issues/391

https://www.cve.org/CVERecord?id=CVE-2024-52532

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
