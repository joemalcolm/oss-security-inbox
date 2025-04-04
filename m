Received: (qmail 26140 invoked by uid 550); 4 Apr 2025 20:53:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26098 invoked from network); 4 Apr 2025 20:53:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2023-11-20; bh=GjnxNaGhGQ2NTCHr
	B37X5XqV1/ZFPji9Lm25t5kswKs=; b=nI+dzpQ7SfAX+SmRY6kFX99QJh3ECSMq
	rr1AFfpoTKb5Q7M8feLZtmwgmIPGggYVbZ6XJtfT4gLcJy0p12V7be0ET0GY/yyW
	vueeZjcF0G1J726BEtpzrnkJWYg/Cb9w9guDOP1Q2EOE8S3NYa0ZUulnW8ymVvRE
	QLWf3gFARz0p2XGaFL7hTpQsSwYGwcQDPy0rRtXmLkmBjcxyJHYusWSc1Ib986Ix
	LVHuI/DFl9Qq0KdKZ1dFoNDM63B88i+dIodzTb/ydm6e1cb1jQU20MN9PFOAFhLR
	TEhYepM3yU/mGVkMz43d3p3Jraa4PDuDcgUMopwxZ+E3817veC2i1A==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pOlxemQTRXO7tJFYbc8RGKo8kviSaomHEaI6dM2btx/1A0UizDagAkf9tDMwAvRU71GlGTb7fEw7M2GxskOuYpQg0zOdpaQOqMnAmdRcciuTVCaXQjXuxB1Ss+74IaNhiUY/b6vKPfHB4LR8R15kCLLBJTLDkpAJK917M62uXaw6UJ2fWOEwfExUqNejMIJC8BG/8RuzPnSzB9Bv6en7TQ/vC9I04zD55pdV1IEsaDRkysrT9/XyxM9ThZ7ycPl5Gw1qpqVlXqSWFq5EYX9N6qQGR/E97Xh9gn5WvFzgo151FHq5ri/Kwvhl/U4+9SMegfRkudQ31CpxuIFQIPhnsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GjnxNaGhGQ2NTCHrB37X5XqV1/ZFPji9Lm25t5kswKs=;
 b=az5rr0MmDEXUTb48OcRvlGxMVA6ZxoTf8UxAcmX9NNXfclJMqY/PMl8qzWUeIRN32IzEex5PMVsw4rPzFLOIBXcxBJVho8Wtnb6j3jDTJdfY+Lmo5lZriWkWPVVLhAm4aZY7XL6iPJXJEdhfZ8i7g/tS3hXf4vohK5KWxSfWAaC6epXO2WfN0fCOwzYHayQA5IkHhqn0a8q1Vb0VWzlC/mr/paZlMxQJb5Xc4/eq0Dah0/nfaDLcZj/uoCnhAOo6R7cSz+0Yy+OqciTbfJ1+ov2qZRINhjqlVsJbTEG/ijfenHhau1PSGoGvVBbG/lieJY8BJWSuerdESG3fnYA86A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GjnxNaGhGQ2NTCHrB37X5XqV1/ZFPji9Lm25t5kswKs=;
 b=YRj60ZsFfJu84P3+djfNVTOeAnxBihuILWyK4c7EiWZnVSIeOYhD4hTCXpcuufaESOuFVAhEV6Lw+z8eRGhUKw8653C8RIWtlGhdepHTx22hENq1eUSFJ2iXjzvVmxfXzKSR6jdt+E32oYvaG9E6Ky1os0a8Wx65OJ9xk/axD7k=
Message-ID: <063b927b-4a6a-448d-9e8f-28b8c64a6539@oracle.com>
Date: Fri, 4 Apr 2025 13:53:35 -0700
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
X-ClientProxiedBy: LO4P123CA0494.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1ab::13) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|CH0PR10MB7409:EE_
X-MS-Office365-Filtering-Correlation-Id: d86eff01-f5b5-4578-c9c9-08dd73bac6f6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?L2JaM3FOQmhyMFR1YjgrRnpadmgwdWI5SklWcGJ3c3ROMytBQmFZYjFOSHBn?=
 =?utf-8?B?ODR6Sm9EUWRrdkRBOElLZzhkOUptdW54b2I2QjR5T0EzZXJyOE1kRXNrQU8w?=
 =?utf-8?B?ZFkrTXJWbGR4MDdSL3dBRWZKSmlSRlBCM2JDZ2JsSnQ4UmYwZFprUi9PaGho?=
 =?utf-8?B?RWk2Zm92RXVFbFFocGFYZDg5UTd3TnNHZ3kvazJGS2hESnoxYm9KcVAwalFZ?=
 =?utf-8?B?eXQ1SnVTbWc5S2Z1eHNXbHVmalBYMXdkS3R2NXhKVnBWNEJOVlJqUE85bnJz?=
 =?utf-8?B?UWxzbE9OS1MzS0tUQzNNZ3VzU2x0TVNhL1BUZDVONmJ6R1FvdDJ4cmVlWmNq?=
 =?utf-8?B?b2diOVNFdWRZdmwwZzhlTGlhc3hNamVCT2owWStMTFNoamFqeTMvbS9Bb3Fj?=
 =?utf-8?B?bTJKTXlkd2lGenI1ZG4vSHFZWTdMKzhieXRDL1pTQi8zUlJaOTcrZVpjNkk2?=
 =?utf-8?B?amNaTS9ELy84VkhKdzg4QmE1UHFGRFlycUtyQXlNMDNEZDJKMmZTdEFHVnFE?=
 =?utf-8?B?d08vajg5YkNWMWd2OHorb3BRU3JPQy9idEhjSzNGV3hjaTRpaGZtRXVxZ0pE?=
 =?utf-8?B?bk5aWStNRUhpVCszelZmenBTdmdXa29JQ3FlRmJuSWJmeTQ0bUdvN2hKZWhn?=
 =?utf-8?B?TkhtLzh6OFVCaG1Rek5xOGJjWlZ1dEVXNWxBZVc2SFcrazZoV2p2QjJGZlBX?=
 =?utf-8?B?blZ4TWMxb3g1bi9iMjdodVQzL0QyalN2Y29jS1pyV1lLUUpmWmJXRFNYbUda?=
 =?utf-8?B?Mno4VE1xSmJpcGNKSURJbURmdUcwbWhwSmZHQXF5SW5QUGZjN0dIMkpuWXE2?=
 =?utf-8?B?aWJuMFpCTk1kTUZnODFhaVZCcmJ2VUN1NDBROW93eUtBUXBTcTBqb0dva2p0?=
 =?utf-8?B?b0VMaHpzZGNUMGZhVW5SdDkxajBGdzZoZnhkS2dsVlVTTFpXRkhNMjVKMFJS?=
 =?utf-8?B?bnBLS2Yvc1k4VlVyK3QrMVIxQzQwbTIrREJNd2lDYjhXWDZrbVVYSGIraThP?=
 =?utf-8?B?Qm1mdmk5WjNtZktpODB5UkV2Ym1vc05VaXZ0QVNaRlhZTmx1ZDM3bHZmUnVo?=
 =?utf-8?B?bVhnUW1CdXlaV0FERWV1aXQ2WTJ2ODBqbURJRUxHdnFFUU5FN2ZabkVBUEFt?=
 =?utf-8?B?RE90ZnpsT1JkTW92RTFmVVBZeHpVUkNTdm9LUnJvcXk1M0NrRURXa25CVDlQ?=
 =?utf-8?B?NXlEajlvWU1JbjBVN1VuSFcrSTA2WllHN2E5UHJhRGl1RFpmcGE2QStYTWxQ?=
 =?utf-8?B?ajhrbDNvYkR3ZlViMEhSMXphMGZDbUVlL0U4ZEsyTUtZd1p5OHRuQ245dWJJ?=
 =?utf-8?B?SUpSZlhCN0xlT2g5MUpRbUJmcmtYd2hpQVpjTDN6UHlyeUZVYzl1ejlxTkFJ?=
 =?utf-8?B?THhncWR0ODE4LzllZFRMSWhCN0RRT3BtVDNzRlBDYlNYdU5CelJBSklYSVB4?=
 =?utf-8?B?aGdNbnRVNXdCZnlZck5vOHY3VVRZZENsSHA5NWhDelByakhGek9TdmlSVzVG?=
 =?utf-8?B?QXJ0VWRXMXJCU3hJT2pBZ3hScmJwNDRsNTA1YzZWSmRWaVp0M3VWZEdpVSsr?=
 =?utf-8?B?akJiYXBVaW53MUNpQkRialM2ZkU0allCVE02cnlrR3VxdGRxckZDOUdCUTV5?=
 =?utf-8?B?dkNZYTlQZFFBNjAzRWN3dXQ3K3ZvNmhvMG5FUGtOUGlZV1VSQWdyV2h5YWJa?=
 =?utf-8?B?MUNtVzFqV3BOM3d1V1VJR1N4a25NaXFxMXA0RWVBclpDVTZSN2ZadFBoZUJs?=
 =?utf-8?B?NmtzWTBLTzBoejQ5RDY3eXdOczhyTXpLOHY2MWdsWXRvWWRWSXUxa2hhTTFi?=
 =?utf-8?B?REErVTlleVRSc2phaXdidz09?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?MXh5YUdKUmZ5SHFpcTc3aC9JS2MzODdVNVFZTDhEejNvM0lROVA0ck1yYmFa?=
 =?utf-8?B?TkVmMWhKTkRKdlJMbEpWWm12U28vaXo2ekNNb012TzRJaWpwMmtOR0V0TjBx?=
 =?utf-8?B?V1FUOXNYblZaRDBWZzdPVnhqbGs1akdtT2svcmRiV25ONmlFOGxWQ1dMd0du?=
 =?utf-8?B?b3laK3pyTVlwaFg2UHU2TlJlbWVwQUo2ci9oOHBuUkVmOGpVbS9ldTl5Z2FW?=
 =?utf-8?B?ZDRMdUZZUXNWek5YTU4rRFpNd09jSjhycG02aXF3bVMxK1ZlSEt2UVF0YnJK?=
 =?utf-8?B?dkFQRFBWL0dqcVViaE1ZTnZLVkhYL0tmOHpPTFI0SjR5OHg2cUY3dHE3Q3Q5?=
 =?utf-8?B?TFZILy9nV0xNQ2gydGh1UHYybGFkLy9OTmhMOUJVQVJOM0QxSFhSUEtkRkVL?=
 =?utf-8?B?YmRuaDBmeTQvcktXMy9RM1ZXZWtwYnlMSTc3czZ4ZTR2bnBqWXYrRWRCSzhi?=
 =?utf-8?B?YmE2UXR3eU9TeXJKQWRXbkt4ME03Z0kwSjRWY2tQS0I0WXlNNVdzTHE5Y2la?=
 =?utf-8?B?OUxoVU5aZDNQeFcxK1BLeW85MkNGQStzZ0JweC9ibmFaZGNub2Zody96eGVt?=
 =?utf-8?B?MXhQblh1WU91VEVTWXpKQ1R5ZmFsMjNZYlE0Mlc2OWRqQ3NPLzdTQ3B2ZVBt?=
 =?utf-8?B?dWQ4SVZicHRaYUgrWTZkY1UzMnY3a3gxUkVROHl5L0RFYno0UkQ4WXM0UXdw?=
 =?utf-8?B?czdsOTNEOTV2NUcrNmQwSE8vTXRTdDdqc2x0YnhDUUY2dWxpMHdUTllmVXp2?=
 =?utf-8?B?SE5ubmNFY1cwRlV3Wlk3M0JQaldaWXNxcWZBSVdMcWhNWEg3ZUhUQzZJWE5u?=
 =?utf-8?B?Z0tRb0xnTVhoZUJRRnVpcis3Yk1JUEVyQjcrK3I2MXJCTGVyTng3dFFqcXZ6?=
 =?utf-8?B?N0F6S2lJWS83NDNlOFlSR0NWTCtmUlltS25keTAwdGhMSkhrRXBGMVBmSmUv?=
 =?utf-8?B?NXdQeFVXWG5NS1Fic2hKT2dqZ2orQzVVVWF3Z2hOME5BQTdRM3h3WXhPczRy?=
 =?utf-8?B?UndCZ2RzYXk4aEZ0a0RndHBUTjlrVmNibmdtaVZDMXhOMldMWXVWbldWNmpY?=
 =?utf-8?B?TFpZdkxnQzlQSXdCbUhqb00xQjJqRUpLbEdGZ2NxTFRTQUM0YmFmSG56U0Ux?=
 =?utf-8?B?eDAydjhCQnlHbVBpWmU4dUlZT0RxcTFPUG9RVktscVc3Q0tvMjA3TnE3bmla?=
 =?utf-8?B?Y0tENWZEWWIzL2E0T0NkQ1hHOXkzZExrUldTL0JadC9UckRYa3c0bzU1bmhK?=
 =?utf-8?B?MnhXUWI5SHp5VTBwZE5hdm5xL2drTHA0bVNyWmdMajQ3MXNiV0l3ckVaU0Vv?=
 =?utf-8?B?MXdvY1JRTlh4ai9QUXZVUnZ6SG84ZzdORmtOUjJwWGsyNk0vNnkvY1RjZG9X?=
 =?utf-8?B?UVBUZm1EcG4wQzljbXRyc0pvU3lObVBKeTdCQTZxdVJYREFNOVVXdU9vdGpa?=
 =?utf-8?B?eE1GMGJIbDVNTHZnSFJVZ3VvbTFBeGJNVGxiZFJSVGk2NWU3Y1VjeFZFNndB?=
 =?utf-8?B?OUJIRUQxdTRPZVdYelh6NzJKenVCdnk2b2drRndEMHhWN3ovVjJPdDVQSDRF?=
 =?utf-8?B?U2ZmKzNaY3FTdE5HaDhBcHhXVnE3T3lBaWdFUVcwWFZKV1hXNVl2Z0hUbnov?=
 =?utf-8?B?TWl1L1JrSW53UGdLZ2g4YjJRZ3dtdVplcFN4ZzBlcEFRckduVkd0bUlVeS9E?=
 =?utf-8?B?dVAwZlBJckZEZTAvN3ViMkxSSktRKzByazlqNktwOS9Cc2Jya0xEaXArT3hN?=
 =?utf-8?B?MmtwR2lTY0xFWE1BY2FBN2lVWDNERm1JTzNFY3BnZEFOZFd4bFVXTmNBdEZI?=
 =?utf-8?B?LzRWSDVtemgzMTFXTEw3Q3dGcWdIVkd4ZVdadnEwUnZydTBSamJQdDVpdFRj?=
 =?utf-8?B?VVZRQTJvYUU0cUJJbm5vK2xCNFlTVEdFZ0hOVTVCd1VYbEpmb2xLM0Rrd3Q1?=
 =?utf-8?B?MlRvL3NSQXJUM2tjRlF5N3h3TGNjaFFMZ2RwbytCVTJjMFhlYks4Rm9PVzc0?=
 =?utf-8?B?dUZzaUM5eXFnUzFiWmtERE1DUnFPbzFCd2xRNlYwZnRRRkxwQWRxVEJjZXVW?=
 =?utf-8?B?YUhKTTIxL3p2aVpsdUdndURldXpsb0tmVExBVTBrQ3JjUnZXakJPUTdWTzZL?=
 =?utf-8?B?K3YyZVVCeGpJYWZKdDltODdvdUIwSE5TRFU4Rm5FNnVOYTB1VXlab0p4ODdY?=
 =?utf-8?B?bHc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	XDGFupTSfnaMNX628HD6qUh0vs89Xt8inr2+DV7wsJlZ9876DjkyhyL+H3jM6ZTA8VwFJPM1pkCa2KOKYXjC9uKm4HuSrhh/Lew7CDewgm26eObEpnyPDJzyrnHplvfC6qL6ObRXW931o6cNe0T8aYj1aJzEYv1eYIvSdVHpd1yBHWzhLaFYkAZucAazVBrj/x6Y31HDLjqX1Pf+3h/Uwb8aM9elFZW75SI1E5Zmtlq2xf8ew12ZEQOj1QIEvfGO8R4x14xGolaJsuOalbFH9aPadqEMfrZIB9Gn3nvPlapltS1rVU4XmH/m6nIF/k/tNZYfjxnsZ3k9LNc+IUUIB2B7jZg9ryhVbw44xvl9wceVHmRzgIzcDZfPn+KHVrng1O05C+hxWEjbJ3GVjlRngmLMo+2psh3Mm6PtiRCZdBXF0qzbgYbYzP8ueGQgDhoUjemfvM2jwCeXQZt7qmzqLJTyjxPM3+LxVjkQVtVpmL3rqtXQF0qvqdWTUu06w41WxJ34RHezE3ctfUl6O3bqHZ0o9RfmBhk0oauQND0uBx2bKxT/Iy/6abu6jg+ve/844V9KDSnvn37g7kGcmTDvTsLQtEEQZddpKucKObdHtgI=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d86eff01-f5b5-4578-c9c9-08dd73bac6f6
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2025 20:53:39.7617
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wvijyf6AOrxwXYOPpKBeajtpg3B7yMWCDJALcqOiXJmJfWXcC1fguv7BG69QrtJnKTwsM5QemG+NkQDFs10Knkg9Zz/8EQ8dRdoq1cbCxQU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB7409
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-04_09,2025-04-03_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 bulkscore=0 phishscore=0
 mlxscore=0 mlxlogscore=999 suspectscore=0 spamscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2502280000
 definitions=main-2504040143
X-Proofpoint-GUID: vfpgPS_Jh7oUnd5EziXVoY22g3vpDdC3
X-Proofpoint-ORIG-GUID: vfpgPS_Jh7oUnd5EziXVoY22g3vpDdC3
Subject: [oss-security] CVE-2025-22871 : Go net/http: request smuggling
 through invalid chunked data

https://groups.google.com/g/golang-announce/c/Y2uBTVKjBQk/m/cs_6qIK5BAAJ
announces the release of Go versions 1.24.2 and 1.23.8, including a
security fix for:

>     net/http: request smuggling through invalid chunked data
> 
>     The net/http package accepted data in the chunked transfer encoding
>     containing an invalid chunk-size line terminated by a bare LF.
>     When used in conjunction with a server or proxy which incorrectly
>     interprets a bare LF in a chunk extension as part of the extension,
>     this could permit request smuggling.
> 
>     The net/http package now rejects chunk-size lines containing a bare LF.
> 
>     Thanks to Jeppe Bonde Weikop for reporting this issue.
> 
>     This is CVE-2025-22871 and Go issue https://go.dev/issue/71988.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

