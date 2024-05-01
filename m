Received: (qmail 13851 invoked by uid 550); 1 May 2024 20:27:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13810 invoked from network); 1 May 2024 20:27:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : from : to : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-11-20;
 bh=0QlLKZLqkWvXI18MA0KasA12+qlhmO6k4dglZRxJdfU=;
 b=C8hOZ16/XRAPtVlczfgR0VFsdI+w9+xqfryJN7sr5JhLPXWCq9omjJCoFX2SYrXRkoNq
 B541RoT7qfrbthOZ9oBgcDcHLggP3RahMzPN+0rhIkeO0LJ+nvs7y2ZZRAK/73LYwZmH
 LEX4uk+Qr9Nj7G67SGbIEa4bxdOT7F5s8N7hLpLejmyc0IptiaDMFBuZOyaY0ITJdWEJ
 E3VFMRg+t495P+FtuH9D/lR5RQb0CA1eqfeyqbZmbCZGgh1SYDNuplm0jvGCR4le+Hj/
 q2d427ZHL9QbEy8tH783acyepR2VWkWqgjGy66qrlOdCgCZaz07+HaLvIWxydCHhW9Z8 Ww== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lqm7MQF99P5mt5e2Xg6zfw1PmSo7oWQ8AALo1vFr3z2gvzake+7m2PAMBoMD9SISIfoOH/2fRAUDt4NP2bCVuQBKpJmeq4FGSj0UhRBFE2j7i4CWnhV9iZvvYudgGUBEF7LPBg+Vl77JFWl2GjdDcql8am7rTHla73Z2ApqqNhT4zs4ZNdDvb8kGhP5RlDt3xveD3gSCGqYYCvc4WVPBvcylw5LgAy2ERciC1ky70rJTimYcmpJxlTJIxBCuR5Nu5g5R8xy3B8mf8ren/gIMEzelA3bsvqUzDJRIdyJJTOTdKZCAqWErBr53v/Q/+hmQH7Cz9ncxRpJN8HwKMEixYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0QlLKZLqkWvXI18MA0KasA12+qlhmO6k4dglZRxJdfU=;
 b=UjQSbaRG15uKsejHyr8LpNGiyk1Q9dQ3heexoE6oz4DoA2ur7DPf5W7kKCssENJtbilW0k2yJMfnN+rI6u3DcOyNblH56e+qyIv6MdNJ/Ka7AWwWqrsnxK2cEc2d3NQKRIAKzRKKn52rlGtiBa4kB+e484+LRwuBIK1x2T2Cz6bgHnleUDMBiSXHOnNX4BhfQi3ZUPCxPmNkvR03NYdJIXMX9yfMxsaBn7J33UtClDTDVxx6Xip1fSnUZAc51iQAYhak5PwuLjfLi0wzT50uMloD/DA+dy9MRciZbBKk1eZ6b3M/YCjFyioA69GsoE4e+P7CcYYETQQ7r9go8pKTwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0QlLKZLqkWvXI18MA0KasA12+qlhmO6k4dglZRxJdfU=;
 b=pdxiLIz9hoWpb+KKx3MWVBjq0wlUzjQW3NIpQAksyPbrLmFRctZ0Sv5Y/xul4BvBg4wdOs9t+/klfjV6Hj9IzeFX4mCEl79Li2V339IMm0idHaC49LhCKbQWwzCAz+rYVcY0d9htpumnT7DUfYNEeJRthZc58kIkPG1SjYMcRmc=
Message-ID: <2661c15d-52d3-41b7-a725-cc66c2094ba4@oracle.com>
Date: Wed, 1 May 2024 13:27:06 -0700
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
References: <7e78b8d8-860c-47f5-bbec-a967c277d539@oracle.com>
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
In-Reply-To: <7e78b8d8-860c-47f5-bbec-a967c277d539@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MN2PR01CA0020.prod.exchangelabs.com (2603:10b6:208:10c::33)
 To DS7PR10MB5005.namprd10.prod.outlook.com (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|MN2PR10MB4255:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a9b9015-89fa-4e51-6431-08dc6a1d1447
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?aGFiUkJ0ZGJ2Q1RhaHRUZm0vNXFKU3lHaWZjOHRlTmc0bXNKWlFHRXFNNzdv?=
 =?utf-8?B?eWtBMFkxbVhGbGdhRUtHdGRDdmtPd1hQRHJsR1hKaUZuSU9JaE5sdmdVM29x?=
 =?utf-8?B?ZitZYnE5WVdQNDZ6d1ZLcEF6RVVpeHkzWk1jdHFUNVZxMDZaaktvcFh0OUxy?=
 =?utf-8?B?Mnczcmw1ZzR1R0NNQzNWL3Rybm0zbThRODhZT2tNeThvWjdEazR5NE1PMUo1?=
 =?utf-8?B?N29hNUkxckNRY3k5RU1KejhvUituM3hGZktmYmVoVDhOU0xHUHVvMWlnYW9k?=
 =?utf-8?B?TFdKVlU0QkJMd24yT2ZyRXN4WTFTU0U4cklBK1FqSG8wZENWVldFZkRXdWNr?=
 =?utf-8?B?SUIyUU1kK1YrNlV6c3NlUnAzUUJ3OTN4dW1jNUQ5OVEvUC9Wa1hyeTFRa1Jr?=
 =?utf-8?B?NTEvai9hVXoyZHBYc0JUK1N6SEdNVDdSTzVJM0xvNUtqRUx1NmdWQ1pvYlNB?=
 =?utf-8?B?K2l1V2VlLzJvQjZVaGk5YktKRDJXdXI3Z3A5dXpwb21YU0Zjb1FFVCtEcEhh?=
 =?utf-8?B?UmZHUUhIZDNSZTBpWTR1UCs2QUlYY0pYWTJnWmt3dnE4TTU3REdlZnBsdThv?=
 =?utf-8?B?c1kvZ1JYeGV1emM1bmxKWkdJK25BL2xqTmFzYzJ3a0MxVHNRRzBXTmdGS2th?=
 =?utf-8?B?ejlFZWRBS3oycXhTckxqKy9IZjNxdHdGSkZiK052QjFhUUx1MExUeG1YV29D?=
 =?utf-8?B?bU5NUmJ1Q1hYOUpRNWl5NXBpRnJWbWswSVBQS1p2a1ZIQkxpV1FSUXpnSDR0?=
 =?utf-8?B?TnBON3NZaDRVU3Y5K0NYbTNYTjFyaVE3RWJJQnVDb2RscWowRVBQNlJJSS9t?=
 =?utf-8?B?QUF0SjA2U2gxbnJSOGZjb1lLekZXRkUrTW9SckRmMnBFbE5vSlNuajQ1Q0ox?=
 =?utf-8?B?amFFVTM1c2Rlcmc5aEZpSmptenZCZnpuOEdkaUExODJDeStDMTRhbkFsRFZP?=
 =?utf-8?B?SWhZREJGYXFiaElQRzl0TEsyVmpaSnBhNHFpRTk0RUNHZm4wb1RrVkZYRXNM?=
 =?utf-8?B?MUJTMXZ6NEtOTDZqOWpYTHRZVnl6N254amRHSXQzV1d6RGFNb0xhMC92MnhD?=
 =?utf-8?B?UWhMMjdQTDYrRHpkaWRZUnp0L2o3ME5yOC9WekxLdVM1Z0Roc2oydmNZZTVa?=
 =?utf-8?B?SzlUcGErU29EUnIwZHlJdEFLbEdmRzBhV0t0VENTcVBSSjNlbnhJT0QzWXdx?=
 =?utf-8?B?KzQyRVlXak04ZDN0VXFqMTVZaHNNNnVhc3VXcExVb2d2SGFJZkh4YU5LVjNx?=
 =?utf-8?B?bmFFbHRycjZoeWs0MEVOY0dZR0NrMzlCRVBEakk1R3pyMTRMVEpmK2dYc1Br?=
 =?utf-8?B?dVpTeVY1UjZqbXdja0pIQlQvVDRGejZMdjRFMUIwcFQ4SzhWVmh3NVVIYkZG?=
 =?utf-8?B?ZzEzMWNTRW03eFFJd0ZBMjIxRGk2d2lTYnNwSEZLUlNpa1ZFUzM4ZEs2Nlpl?=
 =?utf-8?B?TXY4RmVwbmVZMUpPMmZXT1o0ZlFyYWU4U0RhYWh6QmkySGNhNVZWc3B3cWJO?=
 =?utf-8?B?ZnNtcmh3ZlY4VHllUXA3dUp2cHljU0NkbDl4S3EvNUpyME5yRmwxV0JsWFRl?=
 =?utf-8?B?UVB0MUg3VWRzSFV2OEpVV0Q2UG9ZOXFpTTdQTHVNZGJGYjhWMlE2Ymxsd0Rz?=
 =?utf-8?Q?1dNo5/pJ6X32+4IFKRiJOsFEEz3hygotM0fhIf3RYS0E=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(1800799015);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RVZWUUlvWFR0VHNqaTRnZXJVSkhRZDRKcjJDTEw5R2RQaFl2cDArOU1HSTEr?=
 =?utf-8?B?di80c0IydE4zOEM5ajY1WjFBdVpmM254aDJxcXZGMStWcWswdTIwWTNsellF?=
 =?utf-8?B?dXZHaTVvclpTRGFTRDF4YjhJemx5ZUQyUXFkcUNtRmYrSVpsQTRYc2tKVUlW?=
 =?utf-8?B?RUZMcmV6eXpPSVh3RnhzY0ZOUGd4dUxacTJxWjE5NFNyakQ5N2dGbTdJL0Ev?=
 =?utf-8?B?RU8wNCtZWHNHUTBaT1ZhbjBQOGloa2NTaFRObDBDb1o5TjBaUityejh4eUtk?=
 =?utf-8?B?eXNYVHpXZEp4OUF2SmFUL1Fid1JaK2paM2pKeEUwV3l6NVpjRHUwYURnQ2VG?=
 =?utf-8?B?T1FDTnB4RVNZNThlUVE2SkIrMmwyVjdWdldFT1NCRzRDd1dzMWlrOVIzOFBY?=
 =?utf-8?B?YzRLQXpQRnRwQU5UTXdRQUNtVEw1dGhvOEkwQTgrTlZIM0ZNY1ozbzMwMHdX?=
 =?utf-8?B?bkFyYmhDZDdtVFp5MnNtL1Y0a2Q1RS9Qd0poaUcvQm5RZkduNW1ybnJJZDRD?=
 =?utf-8?B?MnlIbDlPS2VuNlRyc0FubXg0NUc2K1QzOCt2UVVHNERMeUcvNnVJMXVRakJN?=
 =?utf-8?B?a3F6eDhLVEhJaVRWbTJKbURBL1NKOHZKeGNSK045ajAycEpzTG1vaUFWNXdM?=
 =?utf-8?B?blJFNXRGZXpWdnNXakU3TWpnMDRFbGUvZXJQUHNaUWNWZFMrS09LZTRoZjhB?=
 =?utf-8?B?TDkrZUFYcG9CSFlIMEtKTGJSZXdtMVpuekRJcTdzem8za0VuVnNOaURxZkVK?=
 =?utf-8?B?VkV3S2dWRHJ0OXJkaFdOY01rckwyaGcyaUVFVHlNWEEyb09zOFBXb1NPTXFm?=
 =?utf-8?B?QmpIRGNkcGhVaDhQS3pBUFR0UVhnWVRVNFBVdHJnVVlCZGlKNFJvZGFJNm5D?=
 =?utf-8?B?N25uVVIrK1pDSDJLVitXVEdCTXJHblNFK2h4OW1rMjVmOTRLUGkwTnlxWFVK?=
 =?utf-8?B?WVdCejkvc1pTdlMreWFZSmRTdnU1ZkIrcHovQjdQY1pvellYOTE5aVhJMXRQ?=
 =?utf-8?B?R2ppajRXcUJFbFlSOXVrK1hEdit6QzRhZzA5ZnZOU3ZRb0JycllGRkQ0Z1ZB?=
 =?utf-8?B?bmJDaWJueSsxNHFlL1dvMnNNUnhqWUZCT2xXdnFRY1BIT3JHM1NXQmI0SVNj?=
 =?utf-8?B?L0ZPOU9YKzRGRmdDS3kvSGRHRzRBVjlFVUZxZDZ0cDBzNlJKR29BNVdRWEpK?=
 =?utf-8?B?QytQdFlES0drc21YdUEyMG5lam5SS2ZtaFBaamRHREZFbGdza3JsT3lKSlFs?=
 =?utf-8?B?M2JDalFhYWY1TWNXekFXK0JzdFUxTmppNHBLWjFYMEFVK3Y0M0FHMnQ1Mk9j?=
 =?utf-8?B?WTRTRXcxTTYreXlLSlhyQ0NSU0J2U1NnRGNVdU9tVno1UU8vY1ZBVmEyUWxh?=
 =?utf-8?B?cmxIalpKYmF6SjVid1hsOFhFY2hiamhadzB0c1plTU5lYWRXRFg2VWJYRXlJ?=
 =?utf-8?B?aEJPeXNLeTZDclRhYlY1b1V6bzBUZUVRdjVNMCtralI2RUhwTkMzaThtOU5N?=
 =?utf-8?B?VWg1aXNibnlURCtvN2VSWmtwN0lwT3JVREF0V3M3Q240NWp1OUdJSWxob21y?=
 =?utf-8?B?UWhSNllLMFJHdnpzaFE4Mlp5Y25kT2NSK0EvMzRSNUxwdENmWXNmd3l4a2dY?=
 =?utf-8?B?MEc3cFdOU1QrVkdmRzlGMzdqSHcyMDJkSHdoSTRmMFR6NE42QmlxKzNxalZU?=
 =?utf-8?B?MHRjVFoxcVBhT0NuYk1nMDdibTVWeTZnYVRrSEkzc0QxZFNJeDVXQllITTVG?=
 =?utf-8?B?Y01RVVg3QXoxS3F3cnl3S2tqMFM5ZE5UNGVXSUswK0ZWYXkxZGhPNUJmb0xw?=
 =?utf-8?B?SmxZSytNZmZ0VnFlNkkzaUtQaTZON0RWNk1JOVp6cE9FK0dKejF4Z2tSTStY?=
 =?utf-8?B?WDVsMnNzc1VudGhSbmhvb3k3VmtkT0x0eVR2TXhaOFRoSDdNQnFyTjFVcGxV?=
 =?utf-8?B?b2Rnc1RvaWtyL0FZL1hoSFJKM3RiN0FqQWtEQzJTbjg0a3lIaWh1RUFQL2Nl?=
 =?utf-8?B?VUtWM1lUZjN4WXYrbm4vWlUzTlhBNWROM0NJTW5VOUtlcVQzeExrNmFheFpU?=
 =?utf-8?B?QURJcW5neHRieTI3YVdPd2d3NzBrNDE4L2VXRjNuSFViVGtDODkrRGNxUmd4?=
 =?utf-8?B?dTdLUUgzMGo4alJ0TktSempKZEpWaUh1amlEZUtCRzE5OE4vZWlBVGlXWE1R?=
 =?utf-8?B?RVE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	81xnVhTnEsYvxSWs63El2Kr2oa7iZwiS23tcrgARWGKVA/y73twB5iAUYXwNyv0bIJ7gnk6CKZFXvh2joxd4X9WOvX/GbYloKR6ovjix1vwa8SgTDX2L9Z5HZvs6SmIVnfhpLe03gyS/BUU4icf+x+wpKXM34jUu36oUiuumb9kxuFG1jM8HeuPpnfnbzntbqtKOb/sT9TpJMhITF3AX+u6ycQldTXrOL/yrgD2B3YDimmrKXjL+Gbu/iRx/C7BWuoGmDrcxeferjTS6blgSqDBZtRTq4wJzPfLZm/8TCD8SurL42gPeIO65kXQZMIm35uf6t7IleiJy8KjpAj6XhwyWSeNN4t+WKgckB643wSglQ4DFhNnqHw8Hu0a21PYBpLFaJVk9rvKeN/coXX2zhOrRv2+/Uzl2KaUwJrHNagOTJGNsTjgtJZkjdz65K+qNirj1Q3X1J62fwCIlIooOFDzCJDs3+xYvdbj93PrtqgMGzz/loYSU1HdtAsWgd+NyjdiGNXU4AArwzOstUSuSiex+FRsIlKuDEEFlvAvPXDt+FGxVrs9Ur5adI4/8sU/jzOnWQSWFyJTS2dl98mFHvVIH5G7ZjnbAxM9DOYNPmPI=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a9b9015-89fa-4e51-6431-08dc6a1d1447
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2024 20:27:10.8050
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HJb5G/GCowkB1hzPsfeob2rcVFBXbGg/MIiM28xULCja88zEICcs/ECuP4Fm/al4vyXOi7MtNFwqC8+MjBLhp/zbSMKDOlYAidAQ6KXz0/E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR10MB4255
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-01_16,2024-04-30_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 phishscore=0 bulkscore=0
 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2404010000
 definitions=main-2405010144
X-Proofpoint-GUID: uG09vnphOTOfPnkRTY-2W2tt2kyY1cl_
X-Proofpoint-ORIG-GUID: uG09vnphOTOfPnkRTY-2W2tt2kyY1cl_
Subject: [oss-security] Re: CVEs issued by the Linux kernel CNA

On 2/20/24 15:30, Alan Coopersmith wrote:
> As recently announced [1], kernel.org is now a CNA for the Linux kernel, and
> today issued its first 8 CVEs, as seen in the archives of their mailing list
> at https://lore.kernel.org/linux-cve-announce/ .
> 
> Their documentation [2] warns that we should expect a "seemingly large number
> of CVEs that are issued by the Linux kernel team".

Quantifying this a bit more now - Greg K-H provided some stats so far in:
https://social.kernel.org/notice/AhSCMVs4RofbnTftGS

which says:

> Year Reserved Assigned Rejected Total
> 2019:   47        2        1      50
> 2020:   37       13        0      50
> 2021:   39      304        7     350
> 2022:    7       43        0      50
> 2023:   60      180       10     250
> 2024:  107      435        8     550
> Total: 297      977       26    1300
> 
> 
> Anything older than 2023 is us back-filling in from the GSD database, and we
> still have a long way to go for there. Some 2023 ones are in there too from
> GSD, but mostly not, all of 2024 is since we took over being a CNA. 

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

