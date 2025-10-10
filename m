Received: (qmail 7951 invoked by uid 550); 10 Oct 2025 18:43:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7888 invoked from network); 10 Oct 2025 18:43:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=hKL3sJvl5dTXtGko
	PpEue+5gkkuuDyjzTXG8WhWNJfg=; b=fFoiC/abLRggfUFd6iwh04rGbx4EpT0L
	9c3ytTJP5br+ue5WorGPMejTLOZJi/cuISmGvKgfaVeMjXuatcB+dB2JfM7WklGd
	uHXhswKRrz7IwJRdnZ/dhzjT1hWBE65K5EYMQnzXn9Pe08XHttiMNGFIUBGkl4pq
	FdQg4gtDFV04gI7KP53e1rs7z+HMUfHe5nFV9BzYudqFM2AuMvdI8KeWjABStKZm
	WOgm9ssztnj72+c8xyDE30CZVpmzh6QNIiaKfzsLVabGYL+8TeHjojt5D8eMyRrC
	JCkz1dMHg2jXcehZakN9q1HRPOHB77BFPw+3JgJKPq6epR4iHEnqgQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Mc5DAuvFL/gpmtYCD2WU6WF4xWmv7/59hiAlG5N5VejXdZGkUhNTo42k26eDReZrEo0pAiMkpo0OEpZ2il2yzt7xkVkDMRf7p4ugsla+ccQgeSLRmEST2bfU+h9M7H7+LX/EM2Ia5DzCTHN1kXaxE714e+MjWBFhlqxX9Vc30AmN1j8VatC04QrA0tpvFE8SMVSq3ozNcwTIhxXkq5pcE/7kCq5Ad2Ye2nsD78ysMfuS8dLBm1igGz7wAoNdEU+M3jJxUeDwa5/ZGXWQbfCi23bahzXdVnpYbUY12+LpLHf1Naaz49Z4isxgRCT/TPdGNgDwXJtR39900BWNfhHbZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hKL3sJvl5dTXtGkoPpEue+5gkkuuDyjzTXG8WhWNJfg=;
 b=cjbzs0nmLZN+0JXP3SCRWU5J3CPwm/ZG+78sxCiV2OmxIpVTV/uLkeHW2NjoUgVMsoV7891mPh4cZy5FPzZgwzg33H0QzdAzD2vrWSIuPjTWmO92BFb4EUbrLoGG5Kr0xkrjn/pmNSYtNc+QJW3y/uVXa/r2JLieRzxtBapJSDvyCi40vkfV9h4xa0QCEWH70Ni7ID4sStil6Xk9IVQicCcNhtSn2+Gw9Su7VPWnMOQI4WxKHuVCzKM7Qhj3EcsrQzSwWjtbPtj8qfHzt4fn9xdl9gyBZZNglj4mKXToRIlzBWjyS83Ah9s8AjnPopKHcPY2uhVmeZ1nY32vWeaIXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hKL3sJvl5dTXtGkoPpEue+5gkkuuDyjzTXG8WhWNJfg=;
 b=ncdsXZ1aL51WEDngOgbC84+T/kSDTSFyhaCtaocJ3R3ZhjGXqDYD9Gi+jLZoW7tdNdXlVuGZOhm8ROp2v+mVCwGUHlo84lSIEsjQKE/j1Prbmj9xPc8bLG/e9kOQMiuu673NkOrR05WDZ3tTezw49BIF4EmzygcpP4qKH/mwRy8=
Message-ID: <95eb6abf-ba09-4750-8966-a21f815454f3@oracle.com>
Date: Fri, 10 Oct 2025 11:42:48 -0700
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
X-ClientProxiedBy: BY3PR05CA0023.namprd05.prod.outlook.com
 (2603:10b6:a03:254::28) To DM4PR10MB6159.namprd10.prod.outlook.com
 (2603:10b6:8:ba::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR10MB6159:EE_|SJ0PR10MB4526:EE_
X-MS-Office365-Filtering-Correlation-Id: baf7e632-b2f2-410d-b5a9-08de082ccffe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?eFpQOEJYZTVWbTBRR0VlV2hWSi9IZHYvUGJjbmEwNlI3TFhyay9WQXJydUhS?=
 =?utf-8?B?VER5OFQ3eENFREtTU1JiNlhwN0xiZ29xMlRyb3pJQy9Lb0lJY1l0bTN3NGNS?=
 =?utf-8?B?L0ZzS1lRTjZWeVhaUm1oZDhnZ2c2QzF0VWNzU2V2TTlKMDk2bEJhL3B0VURm?=
 =?utf-8?B?aUFUdjZ1NzRMMHo5WTNtOE41bVl0cFdWb2FXWGs3SU5sVTJhRVJwQkNveUZX?=
 =?utf-8?B?YVYza3RDUElrS1JpRGVNcHZsaXhRUTg2bkorNGJOMStFdGlTU0kxN0hvczVt?=
 =?utf-8?B?S1R3d20wOWVFbVlhMFN6ZU5uVE5rV3llU2E4TG51Ukl1YVM4VWR3QzVnYkRV?=
 =?utf-8?B?Z2RZcDRwNVprb29haE4xRDdvY1BUWXRaZldWZGRiVlBxajM3eU11YW5Ranc5?=
 =?utf-8?B?aVdGT2ZoWisxcCtGV3N5Zzl0S1h4TmJqdHhWU3l1TjVFT2Z0RXB6aEVGeGlv?=
 =?utf-8?B?allYMExQM2tBNENnMlliRytkL0hMb1YzTEJOZUFqaSs5aWZXaHk2MzlUdDRh?=
 =?utf-8?B?WTlVRnBqeFNWeDJsS1YrdmRwVlMvMnZnZWU2NnBFbzZNcTNrR0trNVVrRm8w?=
 =?utf-8?B?dzNPckFSeVFpSVYyQ0hvbkxvWHVpeW11Wlpyclc5d2dRUEx4VHV3V1F4WDZR?=
 =?utf-8?B?WnZFRWtyRlpZTmRrVVlGMHVIK0ZZZDhiM0Z5c09MMXFhOEllSGRlV3FoQWFH?=
 =?utf-8?B?c0hGL0JKWXVXQnZmMDdSaU9TRGFWcFBYQ3FrZy9LSGgzZm5iRTRBZG54cjB1?=
 =?utf-8?B?U25hclRPNUZwdGtnQTM0WVdLVlBJR0dHd2orZ01CUWl0QU1Ta2NkOEI0em5V?=
 =?utf-8?B?dU85elluaS9JSDhRemE4NU55VGlCWHJDdWlmaHV2bittMml3dXUrVFQ0cnZQ?=
 =?utf-8?B?NHVoWGVaQmFnNnBoWjRSTmJ2Qm5aeitTWmhjcXpnMFFwRThLQjdvNTl2Y09O?=
 =?utf-8?B?UDFEODc0cXRoWnJ2bzNRNy9DQ1BtZ203NDhQalpRMjJMd3ViazdzTUJjL1dt?=
 =?utf-8?B?YjZlTldTZGQyTXUyMzhtZms1YjgxUUhPd0srd1lqOGxBMzRiMmYrQStzbGI4?=
 =?utf-8?B?K3dLa0w1OG5ERTFpUThaUFJaU09scGEyQ1Z1L202OWNhZmtjWGtjak9ZQnc5?=
 =?utf-8?B?RDkzV0xWWHNjdUlwUTlnVm4yeUZ1dUdFdi9xcHgzbnBVckJqWXpaOG93a2gw?=
 =?utf-8?B?Z3lFcVdxKzlsdzNRUjFjYS9WQkw5S0ZFK3Jod3hJZ0RQRjVlekY3dDZsOG9P?=
 =?utf-8?B?dGg5d1FCS2JTMXlGRmsyVVh3ZmxEMWlPd2Rtb2ZmRHNiUE45RUxaQkVHZnNF?=
 =?utf-8?B?SEJMWWpPNGxUQWs0ZjZ4cHlzNzNrbHdWdmQwTHY2L3dwaUoxNWhadjNYZTFE?=
 =?utf-8?B?Y3I3LzBMVG1ZSWJ5S2JSVkJQV3dibXZDako0N0ZGWVZTRnlUYU5vdzJ3N3M3?=
 =?utf-8?B?NXlCd0lMRmlUU2tIZVZyUzlsWXpVckI4VkpIZWZib0hZS1ZjVEU1N1hTUFMr?=
 =?utf-8?B?MS9Ka0o4YjJvZThEYUprdjRzNEhQSndoa3o0dko2RlN4UUUxMzRWMTVJYmFo?=
 =?utf-8?B?SEEzS2RNaUdhdXBORmg3RWtSVDM4YUJXOUJxd2gxaGMxUG1JNlZ2ZXFMRWJG?=
 =?utf-8?B?UXp6TU5tdCswam5OU0xWSWZJOCs3ME8raGVJYnp2RzBrUEJHRTh6VUpERGZT?=
 =?utf-8?B?QkNkbnlFMmFmYWtnS2h2cW9UcS84cm5YZVQrUFBUQm1rQmFvbVhQS21QSG40?=
 =?utf-8?B?bEgvK05vbS9oeEdReEVNWmNOQi9QaDYvU3cxRlc5Wk00TkVrbDJoUSt3VkZ2?=
 =?utf-8?B?SFdDb1FMQzJoRmtuUjdPbmRxYzJTM2Z4YVM1WnZmbFd4ZXExZ3NoYlhOTnd0?=
 =?utf-8?B?c2MyZTRVb3k5VXg4aUZweVhoMlBJckZaVFFua2tVdGdXWlE9PQ==?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM4PR10MB6159.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?RVB1VlZ1ZmV6Ly9uak90ZkNJQ1BBYWNPUUJrS2E1azlRM3NLVlFpOTBwTzZz?=
 =?utf-8?B?ZC9lc2Y5bmZMelA5aEpnemlvdXN1M3B6MHFlL3BRWnkxbCtRSnRVaVJOcmxB?=
 =?utf-8?B?Q3JPd2RXNDBGY2syOWpLdkE1TmJNY3ZVZXdwajh4QU1WZDVUVDJ0STN3dFJO?=
 =?utf-8?B?Q2kvYkdwUGgyQlp0QVdJMjJCV3BwWXBWUUF5cnpoMCtlcmFaQ2t0T3BQWEt2?=
 =?utf-8?B?LzRuS2pCbURFc1hvVCt0azJIL2hvRUJ1Z2V5c3kyQnh2UnhBdUVTM2Q1akVl?=
 =?utf-8?B?UGZqVlBOeWh3M1B1RjdqZHdZdkNMVkZyUlk3TjJuTkNpamxacWlNRTdWSEJr?=
 =?utf-8?B?MlMwd3RlRjFPMmwrU0hTZk03MFd0allGR0xRTjkzcVBtdTlOd3dQU1NRZXox?=
 =?utf-8?B?WEowa3NtN3kreFo1VHdSb3kyaGx6emRjSmNucXZHZ2J1Vzg4eWtJb3hEK0sz?=
 =?utf-8?B?YUdCSEhrZHh2cVBTWm9PeEo0VzkybEhYN1hPRmFyeUp1bENRR3QzL0dldUVX?=
 =?utf-8?B?dGozK2J5Mitpdkc4RFRqSEY0T05sWVFmSnVtRzEvZ29UU1RnZ2tNd1owWGE1?=
 =?utf-8?B?S25HaVd5N3BCbC9QSGN2czNEZ3Y5MGdNLzhtdEYyeGdwc29xdjUrOW81RkxL?=
 =?utf-8?B?SU95d3JxdlA0R0l6U0xCY0RQa1FXdGtQdTlzenAxYmdqWkpFVmVSbXRsWmNu?=
 =?utf-8?B?dE1TTkdVNWhwalJTRTZ2VmZHS0kxc2lpZTJMcUdxZ0hHeUFkQXlpbnMwZFBt?=
 =?utf-8?B?WkpOUXF2VUI4ZEtMMVRyZmZ6M3V3cWlWaWhqQnlQbHYvOU15ZzBWaUlaTEFo?=
 =?utf-8?B?c3NWbXZqSnUvSi9GVDFPWG92NE5jWHZVbXlUeXFnUklvTExvTmJienYvOHJI?=
 =?utf-8?B?OU1VTjA4U2Z6QkdwbUJPaDEzOUx5SVJqTlZMNi9DaU0yK2U0MmYzTHU1ckVL?=
 =?utf-8?B?dmVPWnlrWTFMMWUrWWxMb0tzRlJQYXNaQlNCc3orbmVMQVBPR3E3L0VMclA2?=
 =?utf-8?B?czkrdXpVZTh0Zk1WWmZpMDB2R3d0bHo3SkFrM1lmWXpWL2w4SlMwOGVUdFhv?=
 =?utf-8?B?bkx5aDhrRm04dk54VmRwZlpERFdGdzlrYldWN2hieDFmcXJWclR6WC9yN0J2?=
 =?utf-8?B?dWFMVTBiUGt0MHA0U2ZDaTI5elhOMkFxYVlTVERhYmZadzVuZi9jWjlmRE0r?=
 =?utf-8?B?SURwYXJiK3RmZjU0RDRXYWx3bjhOZmxQcnQrRVF2SVJLeU1UWWFXdDFxNUFu?=
 =?utf-8?B?SmZXNlQ4azBTRUxVQThTUkV0TlZnRXBHSVMwQzAxRlFZV0xPM2ZIY1pFbVly?=
 =?utf-8?B?VlFjZ2REM2oxbklHTFRKZjg4LzZYQTM1aUZHeDI0THpIZHBRVWxINFRCRDdq?=
 =?utf-8?B?VGVtc0FUQWc3MklmbEZpeDBrVm5USXlmQkR0QmVpSlVuT3dUdkMwZG9SUXRH?=
 =?utf-8?B?bmxZUVE0WFRqbS8zTzVDa3Q5Q3kzSm1pR2xJbSt4akdQY2t5Zy82S0Yvc09C?=
 =?utf-8?B?OWhOZFVSR0ljM25jT24wS1UyZlFxa1dlQ0ZieEhHa09KZ1dkaVNiTlZMYUtB?=
 =?utf-8?B?TkZleHFvV3UyaXNlUXBYd20xMHNtY2hrLzltK0plUmJlSWdoemJuR0ovb3JK?=
 =?utf-8?B?MDYrNlR4T3lmWjhsemZOYmIxTEZxOThaRlEwWGgraFVlMEs4OEdEbU1SZWFi?=
 =?utf-8?B?cHRZM3dpNWMzTngvYmpHL2lxSC9jQnJiV0hzbWpJS1lZd3FManRwdDcyVnZN?=
 =?utf-8?B?ZCt1K254eDRtaWdSclNoZERUUGxDbE5KMGFjL1FvL3FpZC9QbHhCa3V4OUFZ?=
 =?utf-8?B?MUQ3Ukd4aldyRnV6enhteitzb1ZBeGlObGF6ZDlkRFVVWFJqb2JtVG1uZWVH?=
 =?utf-8?B?dFhlcVlvUEZXNGxkUGJaeVF5SHI2aUt6UjQvMmhIMVJINStlMW5hYVpMclUr?=
 =?utf-8?B?R2toRng3eUhKUTMzbUszM05DanZTRi9WbEV2SEZGYTFHNGozaStOdlZON1R5?=
 =?utf-8?B?R0ZaazVCa21RaVhWMG5XYVdDeDg1VnF2aHFKYXE4SXpDZWVSeTFKaThleG5a?=
 =?utf-8?B?VVBuUjZMK010QUFKKzgxRUs0VzYyQmU2K3dZUjdzWldVeGd1UG1zU0NiY04v?=
 =?utf-8?B?dElwNHo4NS8xa3lPdHF6YUVFS2grYmtZekp2d1ZLRWxGSzNXUHJJRXlWL1JR?=
 =?utf-8?B?QlE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	cIcEWsFNi79yh4kbapV65HBmQOv62Haclfy+bIxLnilJzU8wBXDa/e/H/WCZ5z21r3+ZnEZ7vZ3EojrVdoV00qI3AxlhI2g+L1hREnLX7z9+/YjedGz2E/q97xMNzLDOXx9lWy22FcO6/SI69orQ9csDLYdF2UjM44wPMkRPF4M5SCW+GViQl/svOj2rh/r/T3SwcfUeroVeQ0Sl7/iqywP5m67LAZpabIPKjylifjtFxkOfxNSeqnjyUOqWc5thXE3m+HQ8oixlS/4E9we3TMaJKjJ7Xg3KR6md4aPl35hVkKQzRmJn79aUNAPGyUJDmoddI7d9JmIYb3sTNROe07oqGttfR1I4G1OKPlMqL8h7k7XmcqlaST7ZH7JzjCg5Prhmxk9MeGXkbGK/pxZ/TSt3PJ/ultVP6rU3RL6n5LJn6UITjou03/B4TXfyz/YxELLaLCR8J3JWSqBbtnkBAF07Mn83io+P7iMMeXd7fJ3LTm5v/tzRvTI41vrSaJkEZzOJ7NkWd/gbX+xd10kt4HZejdsQLhLKb4sbyZEFmMijgJb8FeEW6OERJYFRcZoyyNvpUAivP526hM9C8GGRWSnzw3BMIVI83ANy1MD7AvQ=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: baf7e632-b2f2-410d-b5a9-08de082ccffe
X-MS-Exchange-CrossTenant-AuthSource: DM4PR10MB6159.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2025 18:42:49.6271
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b99HTpkBFVBLk14F5J2K0UhtqfPFLSxNhnoHBa30bxHHirwxUa//XbrzuxzE+SAilOrZexU/V3W8yD9TmfOivqTsQiiFJkbEwogHvNomfKA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB4526
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-10_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 suspectscore=0
 malwarescore=0 adultscore=0 phishscore=0 spamscore=0 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2510020000 definitions=main-2510100107
X-Proofpoint-GUID: 3eEuhDQTTsMA9GQVUYHpZjd0fYp46_F4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMiBTYWx0ZWRfXx2JdNKma9g2l
 13B9Ouwq+jBgekQu40yVrA6L4p4WqxE+XrNFsNN7KnFLoULaU+8HbcO6wfKVtIdbT57K3yaIRt0
 7JB8cfV94us836/VvfxLUxh75rYcGPXZuyNIgW1WTZroGRCghsaXCGB8CB0TlRE8xkNEc8PJIpD
 uw+vG6TpWrGX6d3xONkhnC7U83fIjowR8OdTqsfg+DwDUhlNMlyqDMUwCPErCPEeBr8oG6r+LdI
 JxOPnU5OFYOvVEkTCfz0wU4mSTkuK4DdGSHwK/100GhEO8mCWAtnbKHnV/pHfyEO/Jim0SlX456
 4gBxidOo1/xyWIeEF80DBey3T8YFM5Lg5PKoROIgp3pfHa0CFmMyeH5JS+UAS8zXGW7AwHvYKAk
 8B6WqiSO/69FKzXIq5hJ9MFzTxiNgw==
X-Proofpoint-ORIG-GUID: 3eEuhDQTTsMA9GQVUYHpZjd0fYp46_F4
X-Authority-Analysis: v=2.4 cv=U6SfzOru c=1 sm=1 tr=0 ts=68e953ae cx=c_pps
 a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=x6icFKpwvdMA:10 a=GoEa3M9JfhUA:10 a=1XWaLZrsAAAA:8 a=plf8rDjJAAAA:8
 a=jU4qhlNgAAAA:8 a=mTHUy4rv_6hSz3c0GbkA:9 a=lqcHg5cX4UMA:10 a=QEXdDO2ut3YA:10
 a=s5zKW874KtQA:10 a=JWTSs7K9Rhv-lrTctFka:22 a=Soy3cZ2v3rD3IzUh-QDm:22
 a=poXaRoVlC6wW9_mwW8W4:22 a=p-dnK0njbqwfn1k4-x12:22 a=jjky5lfK57Ii_Ajn6BuG:22
Subject: [oss-security] Go 1.25.2 and Go 1.24.8 fix 10 vulnerabilities

https://groups.google.com/g/golang-announce/c/4Emdl2iQ_bI/m/qZN5nc-mBgAJ announces:

> Hello gophers,
> 
> We have just released Go versions 1.25.2 and 1.24.8, minor point releases.
> 
> These minor releases include 10 security fixes following the security policy:
> 
>  *  net/mail: excessive CPU consumption in ParseAddress
> 
>     The ParseAddress function constructed domain-literal address components
>     through repeated string concatenation. When parsing large domain-literal
>     components, this could cause excessive CPU consumption.
> 
>     Thanks to Philippe Antoine (Catena cyber) for reporting this issue.
> 
>     This is CVE-2025-61725 and Go issue https://go.dev/issue/75680.
> 
>  *  crypto/x509: quadratic complexity when checking name constraints
> 
>     Due to the design of the name constraint checking algorithm, the processing
>     time of some inputs scales non-linearly with respect to the size of the
>     certificate.
> 
>     This affects programs which validate arbitrary certificate chains.
> 
>     Thanks to Jakub Ciolek for reporting this issue.
> 
>     This is CVE-2025-58187 and Go issue https://go.dev/issue/75681.
> 
>  *  crypto/tls: ALPN negotiation errors can contain arbitrary text
> 
>     The crypto/tls conn.Handshake method returns an error on the server-side when
>     ALPN negotation fails which can contain arbitrary attacker controlled
>     information provided by the client-side of the connection which is not
>     escaped.
> 
>     This affects programs which log these errors without any additional form of
>     sanitization, and may allow injection of attacker controlled information into
>     logs.
> 
>     Thanks to National Cyber Security Centre Finland for reporting this issue.
> 
>     This is CVE-2025-58189 and Go issue https://go.dev/issue/75652.
> 
>  *  encoding/pem: quadratic complexity when parsing some invalid inputs
> 
>     Due to the design of the PEM parsing function, the processing time for some
>     inputs scales non-linearly with respect to the size of the input.
> 
>     This affects programs which parse untrusted PEM inputs.
> 
>     Thanks to Jakub Ciolek for reporting this issue.
> 
>     This is CVE-2025-61723 and Go issue https://go.dev/issue/75676.
> 
>  *  net/url: insufficient validation of bracketed IPv6 hostnames
> 
>     The Parse function permitted values other than IPv6 addresses to be
>     included in square brackets within the host component of a URL.
>     RFC 3986 permits IPv6 addresses to be included within the host component,
>     enclosed within square brackets. For example: "http://[::1]/".
>     IPv4 addresses and hostnames must not appear within square brackets.
>     Parse did not enforce this requirement.
> 
>     Thanks to Enze Wang, Jingcheng Yang and Zehui Miao of Tsinghua University
>     for reporting this issue.
> 
>     This is CVE-2025-47912 and Go issue https://go.dev/issue/75678.
> 
>  *  encoding/asn1: pre-allocating memory when parsing DER payload can cause
>     memory exhaustion
> 
>     When parsing DER payloads, memories were being allocated prior to fully
>     validating the payloads.
> 
>     This permits an attacker to craft a big empty DER payload to cause
>     memory exhaustion in functions such as asn1.Unmarshal,
>     x509.ParseCertificateRequest, and ocsp.ParseResponse.
> 
>     Thanks to Jakub Ciolek for reporting this issue.
> 
>     This is CVE-2025-58185 and Go issue https://go.dev/issue/75671.
> 
>  *  net/http: lack of limit when parsing cookies can cause memory exhaustion
> 
>     Despite HTTP headers having a default limit of 1 MB, the number of cookies
>     that can be parsed did not have a limit.
> 
>     By sending a lot of very small cookies such as "a=;", an attacker can make
>     an HTTP server allocate a large amount of structs, causing large memory
>     consumption.
> 
>     net/http now limits the number of cookies accepted to 3000, which can be
>     adjusted using the httpcookiemaxnum GODEBUG option.
> 
>     Thanks to jub0bs for reporting this issue.
> 
>     This is CVE-2025-58186 and Go issue https://go.dev/issue/75672.
> 
>  *  crypto/x509: panic when validating certificates with DSA public keys
> 
>     Validating certificate chains which contain DSA public keys can cause
>     programs to panic, due to a interface cast that assumes they implement
>     the Equal method.
> 
>     This affects programs which validate arbitrary certificate chains.
> 
>     Thanks to Jakub Ciolek for reporting this issue.
> 
>     This is CVE-2025-58188 and Go issue https://go.dev/issue/75675.
> 
>  *  archive/tar: unbounded allocation when parsing GNU sparse map
> 
>     tar.Reader did not set a maximum size on the number of sparse region data
>     blocks in GNU tar pax 1.0 sparse files. A maliciously-crafted archive
>     containing a large number of sparse regions could cause a Reader to read
>     an unbounded amount of data from the archive into memory. When reading
>     from a compressed source, a small compressed input could result in large
>     allocations.
> 
>     Thanks to Harshit Gupta (Mr HAX) -
>     https://www.linkedin.com/in/iam-harshit-gupta/ for reporting this issue.
> 
>     This is CVE-2025-58183 and Go issue https://go.dev/issue/75677.
> 
>  *  net/textproto: excessive CPU consumption in Reader.ReadResponse
> 
>     The Reader.ReadResponse function constructed a response string through
>     repeated string concatenation of lines. When the number of lines in a
>     response is large, this could cause excessive CPU consumption.
> 
>     Thanks to Jakub Ciolek for reporting this issue.
> 
>     This is CVE-2025-61724 and Go issue https://go.dev/issue/75716.
> 
> View the release notes for more information:
> https://go.dev/doc/devel/release#go1.25.2
> 
> You can download binary and source distributions from the Go website:
> https://go.dev/dl/
> 
> To compile from source using a Git clone, update to the release with
> git checkout go1.25.2 and build as usual.
> 
> Thanks to everyone who contributed to the releases.
> 
> Cheers,
> Michael and Carlos for the Go team
