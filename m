Received: (qmail 9388 invoked by uid 550); 11 Jul 2025 22:13:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9289 invoked from network); 11 Jul 2025 22:13:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=8V4V15W4kFja8Dne
	OiKM6Cl3ZkvjDoy8HHZfbF6talc=; b=bk+BTCeFTEAsc5+qvZchjCL49VQEZYMY
	YUHIo6lL+BVGBewAtg/ui3GvYNCXcqo+1oq/S5cNBxwP7w8p3j6/nkw/mQQH6Pno
	zxfU2cF/kCaI5XOyP5iAnkdE0mfx1N+gJY0X8SbPvT1cZKvnZaRINAe2CV9SGpw9
	+r5NdH6TPONTrhKm3YQRAhtaPdMstAH6GrphJqIlzK/IcjzlBJuzMv82yE1fvDgK
	PSD/zdjvSp+Xip8iYxDNG+98Smb2FtsonNFKIM7T3Qph7iM909//FLtSvo5/reYV
	sTLsa7e1DBnIjWDbeG6bqrB+2dYDRPwelb0KncoWC0n8mTqyATZMyQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n34zDpPySB1nBxnDNhdO0/5vzb1noNlL55VJiHWUnVxL+3c2Oucr0pmrwD9rK3kL2zO1tHWw0dC11bv1rPCCoezxQ9+UEO05AHjo0ot9HD1Edlw9+38mGgLv8ZJCIUmCVeJsGQC/qPHKK5IYUp1zo1kzYAlovsm0CSDRg4QiJEs1+BkFjRzpoJsDowShIz6Wf1Qqtro2JmGiwfxy6zCXXXsSIuCu7z3fjiLQ4DyRRRZqQ4zahvJ2kSxWLnkPDz+Vn+GSI9/aj3yEIjuE4l2LfsCPoXwg8USl5VdouTf+wUlbDkpIKq+N+ODrtJma8j0382A2tUAzog4VqTbvi0Eg4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8V4V15W4kFja8DneOiKM6Cl3ZkvjDoy8HHZfbF6talc=;
 b=emPfoDSeDeebbAYLdeaoQ2L7Uj325bsts/bLi8jRn/dMsCuN1iDzM8xVCTWL85XCIDrn6MI/Zz7PSf8QTQdLurwzsjuYOuYlXSuVXND/3gwO7h7W6qXk/LkC04DzepdpGi6vj+u+B0r4Xu3fiCUGNT5sKiPFwDHTBHB8eoTugIaRLkOzlmUpRRQO4rN1qPZD6ECG+/sa0kRsXH4qfon1bAu3hySdFs1SMSdOdEweJNl7bG64iOVzjYXCt2PnFGwiJOVgAuPZD5Y60qiZ39GRW2MT4xKZRSsI2TRkNFsiJD3BBYPj7tqsm8qFaF+veu7j+UCIbv6qm8wtlE5BAKpJ1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8V4V15W4kFja8DneOiKM6Cl3ZkvjDoy8HHZfbF6talc=;
 b=PuTZfROWQoicXLSZlX37R3PM2t0masHCqjlKJvktNVHyXrRjX5IEQ/rmP0/beXN/znTzwEhI7/+fF0trFn5AQ+4HzlwoX6NKKvd4hE84i6YjQeXxnGT1QIqxRVFw2ynv2yuU+v/nIgdPqU3qwWt1HHzsV/AC9aJrL8nb5WKzsyo=
Message-ID: <aa5efb5f-a06f-4ff7-9a09-79617106335f@oracle.com>
Date: Fri, 11 Jul 2025 15:12:49 -0700
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
X-ClientProxiedBy: SJ0PR13CA0001.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::6) To BL3PR10MB6140.namprd10.prod.outlook.com
 (2603:10b6:208:3bb::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR10MB6140:EE_|DM3PPF905D77450:EE_
X-MS-Office365-Filtering-Correlation-Id: 38c9ab8a-9fb9-4746-5293-08ddc0c81374
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?UmI5RmVsZlRXVlZJMnYvblNudVUwYk4wVk8zUzd0MjFJUWVTZW5vdkovdnZW?=
 =?utf-8?B?TTJva29lU05vQVFkOW9rYkgvYkNZcGNmaWZyMktJNWtYWEgvSWFMUVE1ejFQ?=
 =?utf-8?B?THIzSDJJTHJlVlpyUlBuV2RhUytuTG05bCtsdHAxNEpKay95NUlLT3ozaWVS?=
 =?utf-8?B?ZkhmNnRkeUFRRFRmVW9QSUFQdkxHMFB3bmx1MHd4U2RqV3NOZUtTT3NIYVlS?=
 =?utf-8?B?VFRwTVdjeHZFYXg1REVWNWRKdk9NeHRiRXVSekt0cEovQjdNN3FYM2pSK3lr?=
 =?utf-8?B?a2d5dlBvQlhmdWJCK0VQRk00OTg4WTZObXZ4Vk1PdHpCdlNWQUFvaUFLMmlQ?=
 =?utf-8?B?UkgxVmNHQjRJd1o4aTQyN0pYeUUzV1lLQ2k4VEVHbFBHNk40VncrMG5EQXJO?=
 =?utf-8?B?S1VlT0NzcTJ1ZERVTTI1bEV1UzdSUVhuYldFTTZZSGZXQlZRTXBDNmYwTldB?=
 =?utf-8?B?S0lEQWdWYmc5MVFUemsyQ05GRGNXSlJoeXkyaytFd0dwU21zU0tSYjhTSFM1?=
 =?utf-8?B?dlc3S2dFWDdyUEpTN2FrRkNHdkdvYk1CU0FiYlJKZU5FSGEweFNTYjFidkxq?=
 =?utf-8?B?OWJlS0xlZytTK3dyMGREcVUwU0xkb2ZZNmhRTWtPWXZsMzIyRjNNamU2Ulcw?=
 =?utf-8?B?OXRydElyczNuQlJUN2pMc2xXSXRINHczSXJ2NG9zZmJqQjJVWE5WUG9ZZEdV?=
 =?utf-8?B?ZXFDMVh0SkRRNG0wVUNBNnB2SGhSUllMN2NJQkpVdTE0ZVQydjF4SkF2MzVW?=
 =?utf-8?B?aFBGaDZuai8vdzN5TEhyQTI3M3hEYmZFNWVTck9KME1laUVUMEw5SkR2enF0?=
 =?utf-8?B?L1BJeWdsL1FQMk42ZjU3c2tyMHhwblpzN1RiSytPZGVuTUhKWU1scHc1SmVI?=
 =?utf-8?B?Y3NjNzZ0QkU3cXJhTWlmeXh6OEtYK2ZhWkRLRC85cUZaU09MYnNOOEU1R2Vk?=
 =?utf-8?B?STBVYlZVdFZJbk55QzFPMURZTnFNUmU1YklZZkdoZ04yamd4VHUrSUtJR0NF?=
 =?utf-8?B?YUVRYVpOVVBwMVBTd2lwZUlCS3l6Z0JMaGZUaEtVaUc1UHRjbjJ0NzZ5ekFw?=
 =?utf-8?B?VDFad1QyWmdrNWJEdFVsZVlaRlM1QzlrWTMwYmdMSUU4ekYyRE5MbHZyMTdp?=
 =?utf-8?B?ZTR6RmZ3K011RVZiaTJVWFhTeWxCQUlpRkZGNldNR2xJbUpYRXVvcytIQXVs?=
 =?utf-8?B?QWpQUitGditSRU45ZmN1VGVna3JsYUxmUTFSNThiQ2Y3ZC9RcHp6QzBsU0JE?=
 =?utf-8?B?bVpNMzRFaW5zQ1pxVmM1Y01uSmwwUTVGQTI0eWIzYkl5ZitGVWMrZFFlbVJr?=
 =?utf-8?B?bmxpazNKTHRGL1lWTWFGanFadUlpREw4UVdLMEQrQkJwUkpVRWtML3B5QzE0?=
 =?utf-8?B?SHRhOHZacUF3cklkeHBFSVd3Z0gwTW80MklRMWxXMXcwMDZrd05HYVA3Zm1P?=
 =?utf-8?B?T3R1Mis3a25YNGNoZTExOE9VM2ZlQmE5RzlGTkxVOXpOS21jaUhTQVltcExz?=
 =?utf-8?B?ZTZ4bXl6eVFGVlo1aVN0aHdCajZadmlYN2Q4d0t3bmJNUFhQV2VzdlVrdVQ5?=
 =?utf-8?B?L3hKRzlIK3M0bU1DMlM2Qm92VmxYKzZrSFprd0c2SmdzcXY1dFNoclJhTUZp?=
 =?utf-8?B?UkxSWjEvd3N1ZHdpN1R1enVZVzdOQVBhMS9CQ0lwS05wUkQrVUtyWTZPeEIr?=
 =?utf-8?B?cWhidlUyaURFMGxHN1ptbjkrUVFVaytsK0plaFE0Q0ZWVEdqbkYrUU1vUU12?=
 =?utf-8?B?MjFJRDZJcWVIUXduMG5GSyszS2dGaXZ4U1JpWkFJeDB2UTFzNndtVVhMalU3?=
 =?utf-8?B?NWcyb0NZbjh2aGI3RXRZVXdhdmtTWUI4SXdHbEUwVkh4bXdTWFY2VEd4a0xh?=
 =?utf-8?Q?abweH+xFa2oF/?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR10MB6140.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?THNWWXFXVUtLK3JicGd6aTZJeFhZSVJoNzZPbFNJNU9xdGlKYW1XcThEVzF1?=
 =?utf-8?B?M3dUMHFEQklaSGY1QmdnSk4xakg3ZHVHWG9VdXpTaXB3cy9OeGVKYXJaL2dl?=
 =?utf-8?B?TG04d3RzQ1l5bGFnYlB6M1VRRTh1UnhMaEl5V1VXWkE4eGVqYlZTdzVCbFND?=
 =?utf-8?B?VWFQSmdQNjQ1b29LSG1vUnl4cEVZemNOSEt6VmdvbXhHMUpKaDRVSFJSeGVw?=
 =?utf-8?B?SGxzSUFYcTRaejMvTjJaajVtN21YcGVSRjd3cVJzM3VOczR0dUx1dFRJNHRD?=
 =?utf-8?B?cWE3SUZGb1FRbHBPNXVadFNhcktCU3BJQ1gxZ2RCVEkwZlFGd2s1azFQcFB0?=
 =?utf-8?B?NGJGTW4zMFhDb205Y21YbHFtU2c5OXJ1RHNmR09xeG8ySFVkMVdXam1ubnZE?=
 =?utf-8?B?WjRnYjY3VGhDOStuSDFwcWt3dXIycGQxYVVObWVpWDgrdVU4STRSMHFqSDNo?=
 =?utf-8?B?c25SNjcyMmNVZUNNRi9EdTdkS3FiSGVlUXJGZWkzUURxYlFuS0RmNnJvL3Y4?=
 =?utf-8?B?dko2cGRrcE5oZjJxRFFVQnFPMDVqbGhWS0pjNDVuVWNTWllNT0ltY3ltZGk4?=
 =?utf-8?B?OGs5ZUo4V1ZhcEtlN3dmd1FyMUNPbERFQStvRG05aEx4ZmJaYUczcTRRY3Av?=
 =?utf-8?B?ODZWanl2ckN2MjMxRE95VDdtTnozR24vSmdUSWZGWDVWR0JaM01lcENiOUM4?=
 =?utf-8?B?eUpRbENTUVZiV3JJU0xKcVpRNS9EL2lva0dxSnRWOWRyTWxxamFmVS82azVT?=
 =?utf-8?B?UXZGdWhuZmk3cjJiSkZBS1NtSmI2NFdCaTA4aUI1WWdGdno5YUN3T05OM012?=
 =?utf-8?B?a3BxT01YN3FYRlJHbzd0MURUUzV1bXFwRmhXQTM0OVBtTCtQaTVaWG1FazFV?=
 =?utf-8?B?SFFZWWZ6T1V0M3dzTFVEV29XS3ZWK0VjRWpYV0QrckdaOVN6UmJMWFBvNnZX?=
 =?utf-8?B?aVZXUDBIdTRQdlUyaW9NWkViT3UveUR5SkFSNi84ZDM1Q2hRV0NjMzA1NHNo?=
 =?utf-8?B?VE9RNU5BNXRuZk5YK2hNYlRYR2JocStSZDJHZllxelZZa3FZMmNKL2Y2Z3Rm?=
 =?utf-8?B?TTRkK1dRV0ZOMlNCOHl6ZytaeXp5TXFxOWxuSmUrVXJnUlRDNWlZRTJLaFVN?=
 =?utf-8?B?WERBM25GbHNqNWd3ZnR1aVI5aWJqRkRXcitSRVhlSDdKMnEzT0Q2YlF1VVhO?=
 =?utf-8?B?RVZBSkVQd09OazF6d2ROdS9RMUlDK0tDQjRSS3pHUjRlR0VkSi83amVnMUFj?=
 =?utf-8?B?b3c3Vm1OV3lYVGEvd2p2aStGZVNqbS83bDBUVWpTaHEyM1d3aWhmZVgvdGsy?=
 =?utf-8?B?SkZzYlNvVjBLYnNpRC8ybHExcS9tU1daVGhFZStJOFp5UnB2VGZNOU5WaUZ1?=
 =?utf-8?B?dWtaajlTSWJFbXJ0a2dhVTdEZDJzMzZEK1Btbmp0ME5ORkJYWlpRRWJLWkZQ?=
 =?utf-8?B?b0FzbHMyQ2dUVnNSQ2hjWGJhTDdUV1k5ZWZ4RG5vWkRGcVRzL3NtZi81K0JY?=
 =?utf-8?B?MUFOSDUrZy9WNWUvT05NUUJjNkVNZ0Z5enorTWhYeVZjSkEwcU1nUHhuY2JM?=
 =?utf-8?B?aVNrK3Y1RmFxYmlaYVpoTkFOWENlbWtRb09PNmFQcXFjcFp0QkNBdXBQWWth?=
 =?utf-8?B?TkNyc1VnUEZSV0pSbUZsSkd3UDJweUxra0pLVEJnNWF6RmNqdkRxQ0NLam9K?=
 =?utf-8?B?cDJ4MmRBSGtrSzBVK05zd3dTaWpETys2Vk5XZEdTaTdBWWJOa2VKOGZZR1Yx?=
 =?utf-8?B?YkprdlpLdlp1RUc3RnU3NkU3WXN4eFpsc29rS0Y5TEovTGEvY1FOZzlRTXEr?=
 =?utf-8?B?TWk2Mm50NEQ2ZmRiMnpFOTlIZDUxbk54RHdBaU93cHJOQU5JOGxpOVMxZFEw?=
 =?utf-8?B?MTFaNEJsQVJDWXY1MFlzZG5pN0N4NnJiK0RJd3BsaW50OElGamk4MlUrbjkv?=
 =?utf-8?B?bzJtUWN3cW1MSjExa05lQjJZWEVRcHF3M0xJQjk5RHNZKzd4K0x4ZTJKQ0pw?=
 =?utf-8?B?dHQwaXJpVFVpWi9Gd25GKzZINGFaYWNXMlp2TlNIc3lmNlFJdkQ3ejgzeTBF?=
 =?utf-8?B?bG1XNHIwMGJIbTZEbGJSdjBLQUlZY3pTY3A3UGNOd1k5QzUyV3h5TDVnSTVz?=
 =?utf-8?B?Nkh5MUtlbGZGbXFJaTB3a0hCbDNTVVN1a1dmNmEwSDBUdFdoS0xzYmFSQ0dR?=
 =?utf-8?B?eEE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	SQHHT8hRAEiVa4QxPre5tlTNuGlHyR0FZX/va3ikPuJ0Vdn8f4UDip5aczDMHD4yoBmWeJWz+6XdWLYak6dK0jWOXRd8ZTvkoIFkmDBj1KiO+108v/hptYAY0Ta4jcnkOOXPdIGLkiscoSt7qzMNc8uCHzky3RuyJJC8KIAuqUlQVyGAETIcgG3Pp9s7uKjQvoDog2q/14GzipgfV/1IBDQrxn9h8XypruJhYcUeajPZUhoRr8M2f21A8yG73pUR8UJK9DMdQrYhg5CxeNmcB9YYEXKlCsymISN70xKXx8nyGhMCTWhlQXTe4+IvFI12qlSuFRft3wfcuDzweSGx+nQ4blw3KSyzpsukNFRrM2lVBRjgnHKx+NunkH4pOHhwM50vpZw6VZ1dhLVD02jXfBP3GsibuA//MT7j0XK47Duzu+vQO/P6tSe/lkXR1EGTv68HOpwyXCBFm6r189fQUte2HxRjSRrO1mIE+rgcZgHYzSy8XUM14SDv3nCLXnFc1k4JBdTZmPsPwabd34Gn4vT9Bnf9gooOG4QCGhsCafe4MuWMWLhUod0sc/0aU23wSg55kqX2XYmBmD49UqvRXmDhX02sTRdyyKvLtNeHm44=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38c9ab8a-9fb9-4746-5293-08ddc0c81374
X-MS-Exchange-CrossTenant-AuthSource: BL3PR10MB6140.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2025 22:12:51.0013
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UrItnbsSxRcKuFmsEdsM6c05TjubTPxvRYoCZW1dsvNUBQ9F9JSlxT//87/4uZWOGeVEwZ03X0VmhUl7RAH9c6wh4NIDjJsldjulqlxLeVw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF905D77450
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-11_06,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 adultscore=0
 suspectscore=0 malwarescore=0 bulkscore=0 mlxlogscore=999 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2505160000 definitions=main-2507110168
X-Authority-Analysis: v=2.4 cv=da2A3WXe c=1 sm=1 tr=0 ts=68718c66 b=1 cx=c_pps a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=GoEa3M9JfhUA:10 a=qYKNfHejAAAA:8 a=67BIL_jfAAAA:8 a=NEAV23lmAAAA:8 a=yPCof4ZbAAAA:8 a=4kA6QUhIXSFLNJLh9lAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=xXeQd-R7dKE4HXh-qqqZ:22 cc=ntf awl=host:12062
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzExMDE2OCBTYWx0ZWRfX3OZyFZOPleDb wF3WuqNWt91fApTsOUlupbhQOUOGdMhCPTQbKYDCen1YIzf1pcBTKbkDYcnGwjAj0iAE7XY4apY trnZ950gXOt2uesFbQNcCQ6Zkh/Hs6dpHpSAaO964tVK+NpVXZhMz8gBqIW84cg0//F+9tmLkl4
 rHtj8Gdnhj1lID9uuHIh83pTvDcTSeksDd87s/pCcltz5a5kCeiGuSE2/rK9XKV4Ei+ba9duke2 klsqNLWZd7Ad3R+Q5+5K8hXjpfvWL3ZlTDfVJbzZNDBbpUI9YhFhgWARw6iYUWiL3MNWWtUfI+c wUdqAZQk7tH+tdE+AyiJTzeNrqP9PJ4zauO0xrDjcA3txBo7gHKH3u3WRjWb5cSi9GnZ2PjPv88
 uqL5Dv77ZDpLqa+nXyaYlznXYZIgx+uWoH9RRdmXAhWRj/Laxc6ZalQkMoesjWiFQKVSbtad
X-Proofpoint-GUID: gLsPWUnFwGObZfi8FZGcZAKADkY1Y4Dg
X-Proofpoint-ORIG-GUID: gLsPWUnFwGObZfi8FZGcZAKADkY1Y4Dg
Subject: [oss-security] PHP security releases 8.4.10, 8.3.23, 8.2.29, 8.1.33

https://fosstodon.org/@php/114790127424938370 trumpets:

> 📣 Announcing the immediate availability of:
> 
> - PHP 8.1.33
> - PHP 8.2.29
> - PHP 8.3.23
> - PHP 8.4.10
> 
> ‼️ These address the following security issues:
> 
> - Checking errors during escaping in PGSQL
> - NULL Pointer Dereference in SOAP
> - Null byte termination in hostnames
> 
> 📝 https://www.php.net/ChangeLog-8.php
> 🎁 https://www.php.net/downloads
> :windows8: https://windows.php.net/download/


The ChangeLog link includes further details:

* Fixed GHSA-hrwm-9436-5mv3 (pgsql extension does not check for errors during
   escaping). (CVE-2025-1735)
   https://github.com/php/php-src/security/advisories/GHSA-hrwm-9436-5mv3

* Fixed GHSA-453j-q27h-5p8x (NULL Pointer Dereference in PHP SOAP Extension via
   Large XML Namespace Prefix). (CVE-2025-6491)
   https://github.com/php/php-src/security/advisories/GHSA-453j-q27h-5p8x

* Fixed GHSA-3cr5-j632-f35r (Null byte termination in hostnames).
   (CVE-2025-1220)
   https://github.com/php/php-src/security/advisories/GHSA-3cr5-j632-f35r

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

