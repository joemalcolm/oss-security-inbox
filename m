Received: (qmail 9886 invoked by uid 550); 9 May 2025 16:15:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9848 invoked from network); 9 May 2025 16:15:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=qqkmvwRsXQAcQMIg
	uObr8FxuDS9m7K/n8hTtKeHvtt0=; b=WQhpppDQ2j+V1RVig91W+KGK9CFph70/
	LqbFdxUYI98cgghKHXYkM+Fi7rffGdX4i6seL+UAVJfosG8uHQfCBY05BfKs+iox
	uSE6wfv81Ft3cJ5TGKXusohLyWhM4nlpyrHXyB7+j1pDUGjwBUxrkLNLlKK8Y+qj
	xZ5hhqOWS4XOqIaWAVk/YfKuxG0029vQeZDDZWGwMN2RYSfG/pQ33yKiPrAVy9Gu
	xPBj7MEhmnex9U6kInvDVkHU02hibP71ucKgS9LEieB2c8RISVR4pr5dIWPUImfq
	Te82uSJqnojwieqJAeA6a4iyH9nt1Va7B46eTzqEyAb1pqbsNi/K1g==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OdE+9ldcsLGM95M8ALDxmEx20HI94WgIWOVr0t6/2wBw/bkuurLoqe5tbDosl9CmTay0VNhSuAJgYxQbxV9oWTpgGlNH7ILws1pWNWs2pyc0TnbTkq88zqv28DFbxL7sFSUUXkPW9Fql36cm3hS0hgER32dATnBeuSTsOK1DEUiqMMRJFGk0om0nDP53IAUPeSHVn6Td5irxpqoMq71g2gKe136zRY5iQqoHz1y8z/zwhtkKLTWVEHGYLm1XCPKVJS0Ahqciudz3obPfJlBC5y7AP0OcLoJVK8X6TZhJKhUp0h5tWGgisKGbGm5xW98HKOGZefOYfLX61Pva8wjIsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qqkmvwRsXQAcQMIguObr8FxuDS9m7K/n8hTtKeHvtt0=;
 b=gyAHHv9C08MLpavmjQrimGEn6MdhplAWobwELAGpJ7FCrA1x8M2IT+yqGiSySeDymRje5O65pEDlY40r4I9oNvvUMGqBpNfBV39ZOBz2h/0wzNprlICCo9cz9Bbys4VuhAUNjjLWe7d1lcY4gjTvS+T3JeLsTp5iJmJC+d7rQFumC3hzkCe1h8yKUYmPM0fHL05+MJV029o7iF7Dm13T4UfWOSYM1RE09cfNZ2FZL8Xs4b734hI+0gjIIFibvPlfzrOStIpcfDBZeW36+GYXYTA3zM03zhXfKVk4+3y+SvihDkeL3gXArqfytlCwsWjyP1jZcsKWiaf77WPo+BPPOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qqkmvwRsXQAcQMIguObr8FxuDS9m7K/n8hTtKeHvtt0=;
 b=JVevi4gzk3V60HLcIs+GyaxTHU1eGEwkyeQNeSousN0BjGdIOFATMvu9xeTXdED1r9LMzdQ/hJaS2itMienRClPYPOJXP2HSe4kV43BJVI+EDln/vRUOXrJKaTKYH9pw0SQbT7nTpDqoUyp1d5IaZr8C/dUi4JZ6biQsqrXsmUY=
Message-ID: <23c5cd0c-2a9b-4caa-a936-381210400cc2@oracle.com>
Date: Fri, 9 May 2025 09:15:37 -0700
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
X-ClientProxiedBy: BYAPR08CA0054.namprd08.prod.outlook.com
 (2603:10b6:a03:117::31) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|DS4PPF109C7C399:EE_
X-MS-Office365-Filtering-Correlation-Id: 9ee709e4-db98-4cd3-f374-08dd8f14bd12
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?V2lOTVgxNndSZjdtU21EZTFvWXJtZFZDTCtzMkM5anEzaC9QbHQ4WTZhc3VX?=
 =?utf-8?B?a1VQSGFjaEltNWViZ1FCS3Jja1BWTmtOUTVJWGN0dDBGc1p5VUpxNmpxczkw?=
 =?utf-8?B?cXBiVTAyYkJ5bU10akpPejd2ZjNXaWNScDdlR0tsL1ZWMnBGbXFXU1dSWmJG?=
 =?utf-8?B?bnJaY1lUbFlhVzVOUlRZZnpCVEo3MFFCb1pKTlJvZTA2THFEUDlOM3NKV2oz?=
 =?utf-8?B?V2prZ3FkZ2ZqTGtmRHpmWHFObXB1Y3MyMit3cnFPUk9JRytlSGVlczFUKy8z?=
 =?utf-8?B?SkRqVHY4K3h4bFRMM29nMktPSGs3OXNmRitnR054RHZhYWgxZTFXNFJsQ2Vi?=
 =?utf-8?B?MkVEK1ZmUTJDbnkyUXZKblVVaWFhSW1xNWIrQjVtY0FsTFBpZVUxbk1sd1pJ?=
 =?utf-8?B?Q2t3b3M1WmN1UVFYSStLdWFNbXhkT2tZUFNtMkR6VWlINVIweFYxZ2hoMzE3?=
 =?utf-8?B?c21SSlBwN1poRjUxK2IxR2I1UStZbkhjK0taSG1GWGxyb2R1S1VEbjExL2p2?=
 =?utf-8?B?L3RPdFpkalNvMElpSHBpblhlQlpaZEsyMkIwNHIwYjJKLzA5eUZLRWN4NFcz?=
 =?utf-8?B?SDFYS24rU3Q3OHdyaUk0ZFpzekVUK2JTZWx2bjZPa092b0xMZVZNK3NKVzhW?=
 =?utf-8?B?ZGlySHNFZzRxdzkvVE5FbGtXWFo0b01YeXpkdVcrYVRhQmM4Wk1HcVVzckpL?=
 =?utf-8?B?NUUrbDdlK1RGVkM4dEx3R0hXblAyTjgwTUgrNk10YUhQSUV4NTBLZ0hJdFQz?=
 =?utf-8?B?TGpEUW95T3RtdDczTmFRVWRLazl6aXRqV0NGQVhYUEVZejJqTkRJODF3ZGsz?=
 =?utf-8?B?cVhSZFhHeUdpR3hReEwwOWRaUVVLSkdPbEpVMkRkMHFuWHd1U2MrSVZIUDVG?=
 =?utf-8?B?QzBINjNsT2NOVElZUjVCZmswS1ZvL3hOQzBmZ21WbVdlK0pHTHJpVXB2Myt1?=
 =?utf-8?B?RjVVdUJNbVFoLzBFMWVCOUQyNmt4SWM4SnJIcGo3VnNXZUhpUDNYbXNVamwz?=
 =?utf-8?B?Zlg2NEpJMXVWbTJlK0V1aEN5MVpQYnVnTVQ1QVN4Z1hHS25qNnpPUi9VeTcx?=
 =?utf-8?B?TjNOQy8zaGJVNGVXOVIvd255UWRuNFRLNnlCVURhUmZwZDF2YWwwQmpMYnlp?=
 =?utf-8?B?N084TFJLTTh6SmpUeW91dERxa2xFaHp1enVyV21BOHNIRlloV1pYdGVzcFZn?=
 =?utf-8?B?aGJVWlFXeXMxUkd4ZlNYdFppNGh5dFpuWVFPdDA2YjZ5OHJSdWw4VmNDYUFG?=
 =?utf-8?B?aWduUDNuT3ZlVWhRTmxrOUNlZm9UT29UTWRFUTJHVkdZRXZHM2loTmdaUko3?=
 =?utf-8?B?OHRzWWQzVmJCYkFuM2V3dWtYRzZ3aWwvZnRXQTlGem5PbXpKOVN0R2MzZDU4?=
 =?utf-8?B?QXFsekEzYTc2RXQwQnFma1RDenJ1Vk1vV2lTT3hvVGRPYTZzNmh0SFkySHpK?=
 =?utf-8?B?SjBPc3dCYTFqenEyRzY1N1JDZ0RJUk5jdXNOZXM0Z2xDV2xYMnZKWFNuWUlk?=
 =?utf-8?B?ZE51VWpyY0hOQ3IzMEV0MUxxL0FiUkcrdlpQTnZRT2VNQURrU0p4bjV0S2J5?=
 =?utf-8?B?YUxqT1dYVGNFVjd1aStxRjdJRkh3amhrMnJhZFFKeEw0R05CUUg2ZGdFejJ6?=
 =?utf-8?B?S3dST3Z1N2dURThhTmEzeHpnc3lHWWlYaFZ6ZWpVOEZTeTBielpMbkhxNWRP?=
 =?utf-8?B?aGlpc1BQTVZJN0tYR2JKN1ZyOXdwa3RsNytzNEd0cUdpWXJtZENtNmNkaEZh?=
 =?utf-8?B?eXFnTGczNVU3dkg5YnZWdnVvK1FLWWlhYytXU0dLZndpMTMxY2Zrb09ybW5E?=
 =?utf-8?Q?8Igd7sFmYEmdtj0wk+IMFrur7LV6I3PK0LbIs=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Wm10aDBEWllCbzE5dTIxRXhURnM0RlZXSE4zRUdmZE1nbUQ3Z3Z4VHVFOUVz?=
 =?utf-8?B?KzU2bVJQeGh4bGQrQkp5RXAxM3hhMWlPQXowdGM3bzd3Y215cFRtN0RDaVB0?=
 =?utf-8?B?MFpOMmZhMVNOZ1lWUFB3V2d3WlBWZit3dXByNEpLVnRibmN4bkk4dSs4QjJh?=
 =?utf-8?B?S2VJVHV4V1lReFo3ZnFibDJnSDhocFh2amt1WENzYUJ1dE5DbmkvMXhkZ2Zs?=
 =?utf-8?B?WmdXaXJoVmp5TGx4MmVFRm4yU0Jsd2FzaEgyWmNOVkdsVzFoODQzRUNxYzJN?=
 =?utf-8?B?QVZscFR2cWhsaUxBSk9YZlEyemdzT2tjakpUOVE1MTYxM04yUnRzMzVWUDBO?=
 =?utf-8?B?b3NNU25FbkJkeVVmZ2VrUkd6U2FJMkRjYXVWZlhnM0hyVHJNWVdWNTZuWDBq?=
 =?utf-8?B?dWpQNU9ZUVVrUnBlY0xYdDE2OG5wTUt0YUhhVEZMSlRuWTNPU1gzcnB5NDlS?=
 =?utf-8?B?M203MGg5ZkhDUUZGZTlsbk9ZVDNza0ZFMEw4THFKUmtlR3BpSFdMT1cwRWdS?=
 =?utf-8?B?aDRJZnVoeEhwQStIa1IwQXZUNHY0WU9pempnOXdER3l0Ly8vL1R6eEIxamRE?=
 =?utf-8?B?ZzZjUlhDcGZ2SDJ0d0VNZk5JVEIvaG12bTlWVUJWVzJ4MC9WQkVCYlB2OUFo?=
 =?utf-8?B?S3U3a1dxc081TGNIejdZaUxWdTh3WFdRV2x2QzNyWjhUVWFHblhCSmRINDI3?=
 =?utf-8?B?OU9YMmJnZVZqWjR6RXBNZUNMemp6MmtPaU5KWEVJUjFadkdwTjZZeVRlc3Y5?=
 =?utf-8?B?SU42RUp6WklXNGcwemdqdFUrV1NKSm5MaXpNYmxMZ0VLa1ZKYWpCZHBKcDJK?=
 =?utf-8?B?cUZPV3d4YkFVekQ0Vkp4MzJoQ0R3NkZjeHNmUmhrS0cySmJlMmNCTzluME56?=
 =?utf-8?B?VWFydEFCNnd4TDVuTlpZOEdBcXA5ZHJDM0Qxc1dPandISlBuRlNScDV5OEtx?=
 =?utf-8?B?cWpUTE1DeGQrNjVQLzN0Z2luOFcza1V2UWZ2WTdkekNIcFNSTUF3VEtzdVl6?=
 =?utf-8?B?eVV0UmdMdVRvZG51UHUvak1SaklkSmpVaXRXNS9iTnlYU3F3RENRT2xwb3Ay?=
 =?utf-8?B?dVNFcnUwbjM0U2pTT0xqbGhqeU14SFVqWlY0SnNIT2dacjZyNnNydFNBOHla?=
 =?utf-8?B?VG03bS9rNWVJMExwNEpkN2JIS1NrQnFlZzhmVU5pc2pva2xWQ3g4Q0RGODRQ?=
 =?utf-8?B?OHBhektwRWR2Vk5zRjg2ZTBrMWNyeEgvbVFvcDJRZzl1Wk1idTh0dDNNZWVk?=
 =?utf-8?B?MlpTOTNVckcrK0hteERCc1V6dVUwNm5xWituOHk1K1FUa3pNSlNKL3NwamJL?=
 =?utf-8?B?Mnh5dlJPOTdpMDdkU3RJeFdjTER3elQxNnIvSmpJRWFNRlNsWXEvdFhXTzJk?=
 =?utf-8?B?TWdPWWNNR2E3amlwdHM0ODZsakhKYy9HWENPQ3VXNURoNzlrTllkOTlHNVYx?=
 =?utf-8?B?ZnBZUmVlTEdtbHlYeVo2QlV6d1lRQ1lkbGlKaHU4dU9DUUhrTGxhNy9QUXU5?=
 =?utf-8?B?aGFrTFFoY2x2QjN0UkFhTDRUT3pwM3I1dlMwVEN3RmJDL21WT3hIbkZpVnli?=
 =?utf-8?B?b3FNY2Q1RHhyZ1pGa2VDUjRkUVkzdkMxbUhnY1REdDZzVXBkWGd4Mlh3UmpB?=
 =?utf-8?B?NmlIamtyYUc3UjZ2cStzdTR0NTdJdHQrQUs5QTJSNmlGUUlhVlFFcnpmT1l2?=
 =?utf-8?B?RytoR2pxbTZSTHVhMU14MnRVNnhGWkV3RFg2MnM2MlAyaEszNnhBNGF5a1dm?=
 =?utf-8?B?NHBCajd4MnNsb3AwQnZ4WTc5ZE8xY2E5S2ZKVWQ5QVhIcE5NSTJXQUFRcnFZ?=
 =?utf-8?B?WGlKRTZXM1dUT2lpYkl3UjJTd1NsWmgxaVg2YTZFWVE2c0taODMydXZidTBL?=
 =?utf-8?B?RjJLNEVIUFRpRmhYamFJNG5SSmR1c2Fub1drK1dsdlRaZlNJbHdnUnp3UWZJ?=
 =?utf-8?B?OHp6OWpPRnpQVDJxODhqdGk5bjdIKzZSbGF2T2s2SkRFbnkrYktJc3BUNzE2?=
 =?utf-8?B?MTdlbVdiRXlnZW1jbHNKVWJCNHVEQU51WTdTbDF0K3V5QXA1OUY4SXRVV1c5?=
 =?utf-8?B?YkNuZWVnV0hlaUQ0eTJOdVhpRWFFUVNRUHF2UElkaURHaDFzMHpqSDlHZkxD?=
 =?utf-8?B?WnV5bXNrN2ZtNlFFUU4vUmcyd1dmbkhRUEZqNEdyVlFWdmxIK3l3b2RGTXZk?=
 =?utf-8?B?YWc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	OGbRIRuJItJ36XvgXrucZyaKZm7l8d1dnjmv4hNNdMHI5/XRq67PmndFPyPu4GxllXu8mHMNq3jY44Uvb1PlnW+HJ65t8XjBfeyjbN0SaVCZJZyCLOFCcxUJh90e7OYtCCWpXtAnVlIF2ANCcjk82xMa02flQidiF2gPk97CK+UOnoIfEXzOZ/ynbY1DAyRlod0iy9U7RdzyGGOlEiqXHshyhDy9hapJsA/W1lOtzjpqAgxakBdcvzerb6wfwUIla0kd7Hf4+3nfA6rFe5xeKkj098rfune5Ri7ElVlH6f4F9Fcy35e1Gl0VoK+2e/x+XR6nOgvF3ByF1NmJx2yZ/l+/DPsjWTi9GMJGQDoYTgB1lD9y+g8iDtKXT9rN8/1OEw0+YsJvKqJE8x2Os3BIeGG9P7OBUUnl+H59MHmcO0MzHtbyz0kbVPFi7hQSiHw1onZYgnrpftii5Wv2E6pmSaL43EaXHREtjf3uyJqTUV6SnYoM1ksSmLFZj/TNbqUVaMqhDXAdeWP/qGaah8id1Mf8Zh4NlFbX4TEf+yKJ68ZWlXplXrYrt1h47Sx6BqMkd2x34r93ulTGzuNVrYTVVbI/cmKvcYaMN5zzrMQedF0=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ee709e4-db98-4cd3-f374-08dd8f14bd12
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2025 16:15:39.2033
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b3p61DWmj8NMeTJux43XDDLBDEDUTQLsr4cYwEV2vskPkPQaWsMfBEms81jxNjp8B9pu0YOqE0iF0b/AroT2ldUNNZ60mkWcmgFCCjwlxHs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF109C7C399
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-09_06,2025-05-09_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 bulkscore=0 mlxlogscore=999
 suspectscore=0 adultscore=0 phishscore=0 mlxscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2504070000
 definitions=main-2505090160
X-Authority-Analysis: v=2.4 cv=GJsIEvNK c=1 sm=1 tr=0 ts=681e2a2e cx=c_pps a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=GoEa3M9JfhUA:10 a=yE5h9Ii3AAAA:8 a=yPCof4ZbAAAA:8 a=ZHf6VHr880b16LFT7EUA:9 a=QEXdDO2ut3YA:10 a=8na1GqSe0DkA:10 a=ZXulRonScM0A:10 a=gjF6SBsekmi9tRAG3z7x:22
X-Proofpoint-ORIG-GUID: BqcaWywZOTBN8HVR7d3tr-pu1X-Qdl-C
X-Proofpoint-GUID: BqcaWywZOTBN8HVR7d3tr-pu1X-Qdl-C
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA5MDE2MCBTYWx0ZWRfX22x/bKcOFstX FT8MDai9Fe0VBWucyIoATwhTd3IiuBRNa8PCUefskpKjj+OyPjLGppcyfjXvCrw8jP0n3Abu47e 1hAfzYd+2XifmnAm/4qWePYvayOBMrH68YhmFCVzMp5ufa2o9znV4zxFlg1IjbYLOvvr+V6Q1Qz
 UKXqlSCEk9a48mtJqnoFQXhXoWh5v6FwmbzsP86fvq8n3iRS+f7Xynk2+R71AzES0BzwFbwXTR/ vjnWCttM5nu0aXTv+GcOjB3uxcFODUgpBFwI8/TSjNAvyqFqI4Y+hV4Y5gDsLh4DTBMCWJTAhyl N7moUWHrSH9rP76h21oPKDv+jrX2yiELMd4OQUCTNvzZJCjtz970mu/5SZf6oHKdsZt69SATPE2
 o9FduxJ32dZSideOVLoQWHK9+3vlQKfcw4+1VUs1gyOFdXtISb02yudPV8mnJUnDQ3VoNIWW
Subject: [oss-security] Dropbear SSH 2025.88 fixes CVE-2025-47203

https://lists.ucc.gu.uwa.edu.au/pipermail/dropbear/2025q2/002385.html
announces the release of Dropbear SSH 2025.88 including this fix:

> - Security: Don't allow dbclient hostname arguments to be interpreted
>   by the shell.
> 
>   dbclient hostname arguments with a comma (for multihop) would be
>   passed to the shell which could result in running arbitrary shell
>   commands locally. That could be a security issue in situations
>   where dbclient is passed untrusted hostname arguments.
> 
>   Now the multihop command is executed directly, no shell is involved.
>   Thanks to Marcin Nowak for the report, tracked as CVE-2025-47203

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

