Received: (qmail 11437 invoked by uid 550); 1 Dec 2025 18:24:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11383 invoked from network); 1 Dec 2025 18:24:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=eT1Y16o7QqJZuTO0
	mkEYY2kk7AppwXuPq93HkEK2LlU=; b=KaaUZ+Rpnd8dS28W9bRr3XlxnKccDuD6
	0bgdGrOLv2JXKGpZ2nhSznPxYKw0JzEbZE/Xzgyus/oOw37lQgb4FGwEhHFZ4Faz
	uvkPSg9kug5FOhlhGokC8tghOVF1o1KGHeLiY40DthdWwd52iEs4V5Eyp6nzHJ/5
	b1LBmGr3jGL3xlOkr9N8TXanhYVT87896yeKQHDSY4XUhlUti8UG5g07jgwQvhFT
	7bdPdHekiru2yKa7D2/7osA3aIsjtiNif1JN1dOIWy6f8UvnuyvTGYlPn++7lWdj
	tR7ufkmMsOUNKwfb7OaZ38QStTiB2xczYGZ+5ugBSy+V3oQONC6MFw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ugcKsg0BBqm7qnAw58edjeU5uHIUBJa0pCgTedNhJ8YUESqtFkGGa4acPBOYTfonHaJZ9tgdWWmLjt2tFJBe8oM2VnlDuCDebFrVCCXl2w76nYaJOvCtKcVRpC39Dlp+EWAJ5y2urNlhrDwUOpN7Bq0iBFXCOLj8SdozAQ2lZ/qPClUV7X0nB9vZLkJz+9ns167it7ST/37xsYhAstR0z/kqgq+02hFWgEjsbZDcBRHUjI/BtggtBSCh7abpG1JRnIGaDIf5KUZpoIRsjbXLIGoqNZ/EtWeO0RirUoMu55Tlo/4T8jv8r71Tuza5tHoUAMu9jBqQy0P3GlG4WPWwig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eT1Y16o7QqJZuTO0mkEYY2kk7AppwXuPq93HkEK2LlU=;
 b=aDdqYr2lYOegtpj1jk+8inafcLKIZiuyvMZVYKN0nFLMAcKa/x3VYIaTVaWW1imWVN7fJjHF4U9jV2P+vSOB6tBC8LNWSK+uOYAgo53f+TDwFHlRosTHM5+2h9D6UEF5ZvTIDAFbSj3XkRBA+tJVoCDYOWgs6Eb4v222iDkbhexMapwhvYuzBwSh0+X8i+Wioa1QhWbeocsOE94Uhlu8KxTK9JA26eQxoR2OfCkRGgH55l0GQyTDrESagJ2WY7JGmqXGhbGfykclgw82CmR5a+PHdtv19+DDuun38zQqtBFLUCyHxW0flyzMAI1Oom1Z3WIF/7c/rj/LKeWb+4Q8Zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eT1Y16o7QqJZuTO0mkEYY2kk7AppwXuPq93HkEK2LlU=;
 b=w5qetXj0aRHClO4vSAU3FKWw05ySpJJ1EVxy9WNsyi07MqGMoRgIE3FCmhZa6W+8InVTPiZ0sGD0ja0SCe+Oj/llndvxEn33hFLj9AgoU+y46FXWK5Ir7YhILcKsre/yF8m+45QLMwztsuNF02VlfdoAHGR4A9FjR1j8ZbEDL6M=
Message-ID: <a4bab4d9-bbcb-4f59-9aa7-7a9cf3fdec74@oracle.com>
Date: Mon, 1 Dec 2025 10:24:38 -0800
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
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY1P220CA0011.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:59d::11) To BN8PR10MB3396.namprd10.prod.outlook.com
 (2603:10b6:408:c5::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR10MB3396:EE_|DS0PR10MB7293:EE_
X-MS-Office365-Filtering-Correlation-Id: 2f714e73-8b64-4da9-d6c9-08de3106e487
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|13003099007;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?czgyZlRCUU1FNE9kUUZQZ1JrK1NKbFhid0czU2VrWXYrWFFzc0NGQnpzL0Yr?=
 =?utf-8?B?WHBVaUViMDhxVnd3SXhZYWY5dWlreld0MHlsV2k5RVpzTHU0aTZaclBObFBj?=
 =?utf-8?B?US9ON3kyUmRTdWZIbUZ4K09tUFNwbzI5Rld2ejgrRXZsRllCdzZ0dDVSM3p6?=
 =?utf-8?B?bUxxdHVMVkNSaGN1QXlrUThBSDJEejhRQWlyazlYYzEzblBCbVFzUVB0ZmE5?=
 =?utf-8?B?MzZvN2c1eVJWQnYyYzloL3Z2ckcrZXV2ZXlDWWxHc0xwN0ljbTYrR3RKZ2Fk?=
 =?utf-8?B?OWlOWmNlbm1BUEtpZVFBTGtSejA3aGcyVDVUTGdZWkZrc0xQSllUYlRhZWZw?=
 =?utf-8?B?MG9oVTRwOFVQcW9qSVVPZkRUT2R6ejl3TGJycGh4dytXSGRvdTltb1FwdCsz?=
 =?utf-8?B?Yy8xZ29lemhxRjVuSXZCa2NsQ1Z3Z29vNFV3ZUtweFBqbUI3RmZpdzhyRjR1?=
 =?utf-8?B?Ykg1Y1NtY1Z0cnFaM3VjZ3lzK2ROWEg0bjU0MG0rNVFRSXZkWWpyQ2VkRDRZ?=
 =?utf-8?B?cTNpaDdsWUN5N2p1SHkrckxjVm9YWGR1QTZnWUJ3enRiMC9hWUN4VndCeDA3?=
 =?utf-8?B?bmRmS3lxUmE2dXFxZm1sU3A4UHRpaThyMVFGeVlZK3liVXE4RGkrQmRIOGpX?=
 =?utf-8?B?UU8wTXk0ODBLNy9BZ3lIV21ZZWwzUTcwRHV0TWNSelpqQ2x2UTBtVGdPU1Iv?=
 =?utf-8?B?Z3JTbnJ4bkxObG4rS3NIaGhXQ3hmV1VsQTRJU282SVE0WW4zakNmaWk4OWRE?=
 =?utf-8?B?Q2JVWEJHZWUwc0FpdXdmN1cvZ1d1TUZTMHBSYUowenFqV0hYL0NOeC9aRGta?=
 =?utf-8?B?MWFBZnpYSnhPL1lZZEU0dWpNcVV2ZnlBTGtRaTZoTkM5U05weVlHQ0xBNTF5?=
 =?utf-8?B?SHNUc0xkSlI2SHh1ZVdSVndIYVYwcG9oVVlwelB1QkROT1VtTnBuRHcxSC83?=
 =?utf-8?B?SjE5dXBJSCs2WUtqWUV1QlZNZ0xRSzlGaTBXQVdyMExza2pIUXZvcnAxUFY0?=
 =?utf-8?B?a1NCZkNUTXI5N2wzN1lTZ3lPSTVoN0dXMkU0elVnd0dzWFdYRVBod2ROUWZM?=
 =?utf-8?B?NGpzMGtnNC9UbFk5TGFEY3JxVkduYjBxMFdzQmpPWkhiYnU1VDBrTjMwcmZa?=
 =?utf-8?B?bisrdFNZNjRSVStkM1JhckEwSE9BZ0ZMUktiYy9VRzh0UGE1cXVDTlJTZkps?=
 =?utf-8?B?Y0FsRXNDRmZSTDRLZHN5c2daOUJwMUljQkI2amg4VENHc0h1TjJRMndxcVlL?=
 =?utf-8?B?TWptSUZTVHpaTWF1SVhPV2xlVlZoRUk2a0c1TVJIYXJ6a3JKdzJ3Z2lWZDQ1?=
 =?utf-8?B?RGdVejhBNDFPWGdOdGhFV3ZBQUh6c3phVjVMUXVPR2JiR3RTQTd0TjdlVXR4?=
 =?utf-8?B?U1o4c0wvNFYyU25YbVlXSFNoc2M1OHcyRHNrN3FRb2lWTFpsdmlUOWt4dzVo?=
 =?utf-8?B?TS9aQXF2aW13ekdxSlhEbXZMUHVQN21yYVFtd2Vlb0tLbkd4cHFGRnpsZ3Vv?=
 =?utf-8?B?SGhyUm9CQkVQMUswY29UczZxNk1hME9YekJXK2ZQOUFNKzlJRXhLQUhPQ1V6?=
 =?utf-8?B?QWZhaUI1MFlXOFV0TWQ4b3VlMmxwRGxOOTVobGJlc0kyc09RTHI3ZWhjK1hU?=
 =?utf-8?B?SE1jb2tDM0RtaWIrMGRTNEVCQ3daWHpkcTBzV1piQmFyYnJSOEtrOXhuRlY5?=
 =?utf-8?B?ejFZTnFGby96M2w1VmE2NnVhOS9UNlF2Z3pMVHU0R2E0dXRhYjFYYXpiazQr?=
 =?utf-8?B?UmY0NWNnMFpsazlMVi9HV2pvYWJ2VWZBSkNuWk5rSnJlYjFhQ0Fxa0c4MVhm?=
 =?utf-8?B?ZmYxL3FqNXlZMUYvclFQVnVhd2FobXJwSXZTbWd1YkpITDZlUUdFNWJqa0c4?=
 =?utf-8?B?Y3VGalVZMGNJQXMrdVhZa3FaZGc5RmZrUzcyOFV4VlJuUGVtd3gxZzR1WTFr?=
 =?utf-8?B?QzJTQmVJUWd3MllpSGtMVElLSmNoRVczNDR4elk3bmxody8wRVh5R3VoVXVi?=
 =?utf-8?B?VkhlbUltNE13PT0=?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR10MB3396.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(13003099007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?ZjltR0laTGoxV3Rxa05WalJJTmxSZmlTKzVrTGMxZlRiVVIrclNaMkN4TkV6?=
 =?utf-8?B?KzlYTjZTQzVDUkh2dlFuYktCL2lMbTd1czRyTk9WNDI4emc5aVlxSEZjbjJh?=
 =?utf-8?B?aERYVzJnajl3ZjJzcVJZSTNteDdQQythd3RDQ2lGNVp4alA4YnJpOXU3YjUv?=
 =?utf-8?B?UUNZVkdnb05ENUtXaVh1bnZSS2tqMko5QlBndEFVdmZkQWlpb0xibDJBRVJE?=
 =?utf-8?B?TVlJOG9iZXpjMVdGbCtwMkpIc3c1SzlKTmwydEgzQmZVMXRFa3dlU2ZUeHZp?=
 =?utf-8?B?UGdFSWswd29CYnVaNVdiMlpGNDZ2NHV0UFJDTFNxNXlmN2lubm8vUDJWVDNF?=
 =?utf-8?B?S04xaUQxRWlxbU9PeFRmSmNqVEdqUnVzUmpJSS9sS1NES3I4MWx0aE9kc3BM?=
 =?utf-8?B?a0wrVzZ0dGRmakd4eXJ5eGR4NHhBbEtUOHZGZFp5ZHpoMitOR2YzcjN1eEhi?=
 =?utf-8?B?K2txand0NUMyWS96SzBpZXFaUFJGd2lSNk5ZcWM4MlZ4UFJyaUVVQWkxWTJT?=
 =?utf-8?B?cGgwS09oV09SWmhQV2RPNVhpbDQzKy9tZUNyOE9RL3hsN0ViWDl5NHdsck1Z?=
 =?utf-8?B?TFAxZ1o1N1FXb3M4b2M2OUw4eWJ3VWVBY1VvaTRBMjl6b3ZuNW1EVC9lbUJq?=
 =?utf-8?B?bFlGenMyak9iSmk3RGU5Si9QRkc3czZDeDl6M1djZ25aSEU3M29XWUJwN2Na?=
 =?utf-8?B?dGhXWlFzZVBKMU9Ranc1YXdFZ1VxVDVCMzVtR1lRT2F1cis5Q1ltZ2RCQzhU?=
 =?utf-8?B?NWF0clk5ZGJqcGxFdGQ5SWdWdU90ZkdYZXRmRDZPcW5oWHY2ZE1FVjFucnBZ?=
 =?utf-8?B?UFlSZWtIZGRGNDhURGhZQVdLbVVjRjRNZGhBQzBoTUZlbzBpSVhMSzl1N2ls?=
 =?utf-8?B?K09weDVTY2wyTUVmeDVISVZCa0lVdllzZXBDajJQMG9weDdqSHhQbWMxTVRF?=
 =?utf-8?B?SkJ6SDFKR1pFdjdDZWVKTUV3akd6VytQU3NmemNnTnpISzlkMld3OGdPTmNT?=
 =?utf-8?B?dm9NVTRYSTBQZUlSS3NzWE5BbzRURnA2bHBmNHhxTHF0SGRxcEIyOUFOTytW?=
 =?utf-8?B?ai9BSXdPUTlRZExzMWdtYi9wRzJNUzJXZ21LUFlEY3Q3K2ZJNVhMaEJHRFFR?=
 =?utf-8?B?RnRqSGthNGJtUXJJY2RYeWVMd01SNzM2KzE1c0JRL2lNSEJwQzh5VTNQR29r?=
 =?utf-8?B?ZWEwU0FVdWpyWDF5UDdqZk5FaWlSd1JndG1RWkVKOWJCcHRDM05adzhjN1ln?=
 =?utf-8?B?ckhTL29EV0RDRXJ5RUVNaDRpdTZ1MWRMcGZINEF2eEZlZ3VMQlNNR2syRity?=
 =?utf-8?B?cWgzQzIvWGlrM292V0hKTi85aDQxTVdyamNQaXRaRkxmQTJ0enNYa1UyUHdY?=
 =?utf-8?B?ei8wdXpyTERzK1JUNERGUEl4M0JoRkVnaExEUnNrY01SUnlKL2QzZHRSTnY5?=
 =?utf-8?B?cyt2dU5TSW1PLzZWOEl2emZoRmIyVW5UQ0Zya1AxSTdiZWNQV0tDTS84eWFi?=
 =?utf-8?B?emREaXRMMFlaQWdSZWxsb2FUZFJIbHV4RXFPM2ZpMDBydE5icVJKZFZKYUk1?=
 =?utf-8?B?cjc2NkxWU0huVmZhZ29MVXNtdzdRYzFKcTNqYzcyamVpNXBWWUZhaTJvR1dt?=
 =?utf-8?B?cE9XZktKdk0zNnBoeDdSL1huTlp0bjFScUVJQngzTGtlWmxkUGYxdnBjQ0V3?=
 =?utf-8?B?TitJSlQ5d08vcllzRUxhdEZzaHVVQnk2K0Vyakl2bXR2MFk2TW5IcDNydTBZ?=
 =?utf-8?B?VVBVQnpHQ3dUOXY4VFR5ZXY2a3o5WWJQSG9BUUIwcnh4cEx3WjBjdkV0WkRt?=
 =?utf-8?B?NFBjd29xdFdLM1A3czMvQTdxSHk1eW81Umc5MllUblA2NkU5MktSSFhCbkQv?=
 =?utf-8?B?THNJRE9GL24zbE0zTGF3aC8xczVrcXduL09nY0ZvOWErdm9YZkJlZzQ0dEs3?=
 =?utf-8?B?L3BmamVpU2NLaVZtck15NTRFWk9FYlRJbGJQaUtDMkRYNnpXbnJQNm81SUZH?=
 =?utf-8?B?b1BsdFY2UElncDRwU294azJ5QUQwc3JvUHhLTUYzdytSVzZRVlhSNlVwbnZa?=
 =?utf-8?B?NkZFUDdGMVBMdGgzbTk3bEk4ZHhuZkQ4VXJXdWRNVWt3eW1hRHZOOUZnRVJR?=
 =?utf-8?B?NFZQNitVUjZuUTJaTllCUmlGYUIxWlB6bFNra2U2M2V6U2Q2QTcxNnBVcXgz?=
 =?utf-8?B?eVE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	1lLGMN0zzX4xSfe507GnIqlwh3slAbzg1Mjsi31owOOW7Ev5ntd3/nVHvSIEONUjEMeFK1dZFTre0LSre+FkRg4vfZKXKo93jiy47jIbOdZLbvYGn/EQ9G8wii0eMZFWBamKW0dxuAORDeJJiPE5HOT/wlZdS8BOrN3o3Jb3umbSSlSeQuf2+/BY2t9xyf4xfY4gW6McztSViJ0UI3mUPz2vOoPvgK3sRB28WhjPh22OzYmexMNX3Fcf4tmvVfw1pEGYDWjaR+ah1RC/KAkk34VHORrVeESN4i1WQnbnZeZYL2yh6W2TDIyilTsc++QPfXZTXqK4URjvKn87v/gGvZkQj/B3q2OkXx92NtxIVVfSHJUgVEaTuU9OzUOlk7Q3pJu6x5Hz3j9YeWWwg8YEaofWYaPN69XYaJZdrq5e4mBxt9jh56r2E4e3l7yt0VmbraqoQ+5hLEOmR1PuYY/qwn0g8MLpokII2w4l4m4nYclMd9oTYNInrIZkKsBh32IzGyLZovVETE+HktCe4pW7+XBLWZuVkW1hqLzNz94Fr/52EqM8cYCwkhKP0DEMdyJLigrvihtJGwdMWf5Jb7cRRA8OQKz5TK00A5jOYYNvV8Y=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f714e73-8b64-4da9-d6c9-08de3106e487
X-MS-Exchange-CrossTenant-AuthSource: BN8PR10MB3396.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2025 18:24:40.8161
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +J30Y8BtIAj2laBEKiJHdRhu8WHotTGdcnaoaq551Y+o+9Qt3fz1/BhtzZlNciQX1U3zfLoafXWek2vdql+2IbzIuoKiIbZwVY/LzowZzh8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB7293
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 phishscore=0
 adultscore=0 suspectscore=0 mlxlogscore=999 spamscore=0 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2510240000 definitions=main-2512010150
X-Proofpoint-ORIG-GUID: 1WR-T1GBnWsO8lD3oOxPkO8QB-oYguUe
X-Proofpoint-GUID: 1WR-T1GBnWsO8lD3oOxPkO8QB-oYguUe
X-Authority-Analysis: v=2.4 cv=W8w1lBWk c=1 sm=1 tr=0 ts=692ddd6b b=1 cx=c_pps
 a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=1XWaLZrsAAAA:8 a=IPomYXzwAAAA:8 a=NEAV23lmAAAA:8 a=TH9Qxr1cYxSaZ3AtDzcA:9
 a=QEXdDO2ut3YA:10 a=PNPSunfWRhLFkCCyWCsd:22 cc=ntf awl=host:12099
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAxMDE0OSBTYWx0ZWRfX/8x61UqlGIi6
 /kBfEaNpxaTPxa9YEV8jglGqW8UMAdGtA9VkMKehGOGwib1dZ8D7cBDX4UTtZR4x+AGJiDWKWZT
 HZmti/VCfyPxHtP69476xWfq7ESOTFzTvVxWLlHKJPzvhtba+1NXecQOq4VLoFuJIEsrS4e5AVZ
 mrhw9mPDgRGUDDEIidhMwyG9SNUwZLMGqNTZGSZtPeXeL1H5OsumxfZTsVILPGWLsISH+r9kT/B
 OoVoJIWwJeC0Y+CcsIev78+A/LOv1hKPeZyBnrkA8MBlDgRnQFJ0jpOhj2H0oLZR3f6SHgDa1LK
 vxGS7aSEaMQ8cL1viVPVAN4xbei00RcKajyjl2YWw2vg7GrBJUq7ZyMQaUDyUYv4c3gAccaqQL9
 jE/1gxcJ1vVx9PX2OVjwUog8rslNVU33hA/BWTg4CiW2EBO7lJA=
Subject: [oss-security] CVE-2025-12183 in lz4-java, fixed in new fork

https://sites.google.com/sonatype.com/vulnerabilities/cve-2025-12183
discloses:

> Summary
> -------
> 
> Various lz4-java compression and decompression implementations do not
> guard against out-of-bounds memory access. Untrusted input may lead to
> denial of service and information disclosure.
> 
> Vulnerable Maven coordinates:
> 
>     org.lz4:lz4-java up to and including 1.8.0
>     org.lz4:lz4-pure-java up to and including 1.8.0
>     net.jpountz.lz4:lz4 up to and including 1.8.0
> 
> Severity rating & weakness enumeration
> --------------------------------------
> 
> Rating: High - 8.8
> 
> CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:H/VI:N/VA:H/SC:N/SI:N/SA:N
> 
> CWE-125: Out-of-bounds Read
> 
> Technical Description
> ---------------------
> 
> lz4-java provides a matrix of compression and decompression algorithms:
> 
>   - A JNI-based implementation based on the lz4 library
>     (LZ4Factory.nativeInstance(), LZ4Factory.fastestInstance())
> 
>   - A Java implementation using the deprecated sun.misc.Unsafe API
>     (LZ4Factory.unsafeInstance(), LZ4Factory.fastestInstance(),
>      LZ4Factory.fastestJavaInstance())
> 
>   - A Java implementation without sun.misc.Unsafe (LZ4Factory.safeInstance())
> 
> 
> Each of these variants has:
> 
>   - A "fast" decompressor
> 
>   - A "safe" decompressor
> 
>   - Compressors for various compression levels
> 
> 
> The JNI "fast" decompressor is based on the LZ4_decompress_fast API of the
> lz4 C library. This function is deprecated because it lacks bounds checks
> and is insecure on untrusted input. Other JNI-based APIs (the safe decompressor
> and the compressors) are not vulnerable.
> 
> All Java-based implementations lack sufficient bounds checks. For the
> sun.misc.Unsafe-based implementations, this can lead to denial of service
> and information disclosure. For the normal Java implementations, this only
> leads to ArrayIndexOutOfBoundsExceptions and is not a vulnerability.
> 
> Workaround
> ----------
> 
> The vulnerability can be resolved without patching:
> 
>   - Applications using LZ4Factory.nativeInstance() in conjunction with
>     .fastDecompressor() can switch to .safeInstance() in the short term.
>     In the long term, it is recommended to switch to .safeDecompressor(),
>     which is not vulnerable and provides better performance (despite the name).
> 
>   - Applications using LZ4Factory.unsafeInstance(), .fastestInstance() or
>     .fastestJavaInstance() (Unsafe-based implementations) can switch to
>     .safeInstance().
> 
> Patch
> -----
> Because the maintainer of the official lz4-java library is unavailable,
> the lz4 organization has decided to discontinue the project.
> 
> A community-maintained fork of lz4-java is available at
> https://github.com/yawkat/lz4-java. Two new versions have been released.
> 
> at.yawk.lz4:lz4-java:1.8.1 implements the workarounds listed above.
> The JNI-based fast decompressor is replaced with the safe Java implementation.
> All sun.misc.Unsafe-based compressors and decompressors are replaced with
> their safe counterparts. New unsafeInsecureInstance and nativeInsecureInstance
> factory methods were added for the insecure implementations for applications
> that operate on trusted input only. This version is directly based on 1.8.0
> and only includes the minimum changes necessary to fix the vulnerability.
> 
> at.yawk.lz4:lz4-java:1.9.0 adds a reworked build system, updates to the
> underlying lz4 library (not security-related), and various fixes for the
> Java implementations. The changes from 1.8.1 remain. The Unsafe-based
> implementation may be made available by default again in a future release,
> once there is confidence in the security of the patched implementation.
> 
> org.lz4:lz4-java:1.8.1 is a relocation pom pointing to
> at.yawk.lz4:lz4-java:1.8.1, provided by Sonatype. Users that upgrade to the
> former coordinates will get the latter artifact, and a warning to update
> their maven coordinates. Future releases (including 1.9.0) will only be
> published under the at.yawk.lz4 group ID.
> 
> Credits
> -------
> 
>     Jonas Konrad (Oracle corp.): Discovery and patch
> 
>     Marcono1234: Patch and review
> 
>     Sonatype: Disclosure coordination; Relocation pom


https://github.com/lz4/lz4-java has been updated with:> Note: The official lz4-java project has been discontinued.
> A community fork is available here <https://github.com/yawkat/lz4-java>.
> To address CVE-2025-12183, Sonatype has added a redirect from
> org.lz4:lz4-java:1.8.1 to the new group ID.



