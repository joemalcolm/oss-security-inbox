Received: (qmail 24287 invoked by uid 550); 7 Sep 2024 00:40:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24242 invoked from network); 7 Sep 2024 00:40:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	message-id:date:from:to:subject:content-type
	:content-transfer-encoding:mime-version; s=corp-2023-11-20; bh=k
	LeI87y9U2s5nSRImLvxbr/IjpRNNZGz36WefFi/37s=; b=JBOq5fvtlNSLYrvaG
	1Z4KQRKkqZHVExIr8pK9sVKkJadQHs+rSTMuv8f5701cLYU0q9FTTLhrzp+PQQQj
	yo32KOJQqR8qaVUWNfpSB4xip1++f+Fya1e9UoXL6cWu23xefFXsNXkF5/lseB57
	3Ip1rZ/2VcNwBSt1j0JWcWkP73/LqA1UB9rjvM5GjNXVcYfQqhkS1USKcmajteFN
	S6V9zZ0puX4G4sOVj6xifPH3JIFC2htiQWx/uE+cYqTIO1kZcdQ5d3b7JtsBUArZ
	4sChXHBrFBd8z9sEGpb0jSowR3NE1N5wY9Gsk06NgZgXOAAt1UYrS+yp6Qs96Tat
	mxeVg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D2KhkCpH/8iNTt6Ne+unxqpLZfgRBlPrS7Ww7s7/fw6eIIutiFKWYmg5v3KI2rgwJZUHSibnD83VQsnZ+CCA8i34CKAyYr6lAr4j5ldN2LEMcD0tiY+Ms9jRXFD3+O5OXsgiauMts2m3uCm3tytkptlzeb5aqjfi8PHTcSYyWo5qhbfth9VDSTgRQS1TExUHx+FJiiJGAgKZYc6AlBGP59kvsC+nEhhBfgMYRnFVRv6CCjte3OY92FB4tMUJmAlxZF5qa2b3cPvASXj/luHgRGXV9tVnSfKQFoijJoU2wYA9UonIjZM9oXMDvo8cCUQWHYw87ILlSHyvjn+0R13H8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kLeI87y9U2s5nSRImLvxbr/IjpRNNZGz36WefFi/37s=;
 b=C33sMuTG9vEnLjBaqPdcfkFt65EplKzA4HRSkAYGSUkFbNplZzn6PBFehgzqGk82tytNq0GrV4p1AfO09vvNPoVfLG1MLKU2d7svWJsAC1ZBwrseTylbDPV0vnBRmz/R3sA2ihLT2hRiWVIyGoU00q0W5UCV4jG1jsz1ix7BsvoBceYuhK6bp2AkYhboF9GGfFOX8dqD0A/L6mfIBoPz5RyskzbADCyanxTMkqwklXR30K+fYQLnxIjTIXyUS9sqvt/TMOplLZD3/2VXF04wDAryKrx6rlaAlQvibER67/US8noqMmTJ9ersemE9bJcUn4j23fJGUXkRFWLZ5+5R8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kLeI87y9U2s5nSRImLvxbr/IjpRNNZGz36WefFi/37s=;
 b=pknMy7IBlXDUJ4RDLKqqpioYSfH26llNaX2kh69k9nqsfptGxJsRwD69mgAHMFdWxVaqhiI/513t9SfcM94bhJsEMV3PkRZhQywxddPRGmUsToJDHKrLGpkg689zlENpHnlklUGNR+DHGNBEC7YUSUc3bKsqd5EaQrfxuei9n5o=
Message-ID: <7e311969-c78b-4377-a37e-54ff96f06546@oracle.com>
Date: Fri, 6 Sep 2024 17:39:48 -0700
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
X-ClientProxiedBy: LO4P265CA0032.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2ae::18) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|SJ0PR10MB5550:EE_
X-MS-Office365-Filtering-Correlation-Id: d226a059-c261-4f79-d2eb-08dcced59605
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?dDhYQVlRbis4Vjk2S3EzSjM5VGp0MGFCb0l3cmdqYkJjVElPVS8reTB2U2p1?=
 =?utf-8?B?OVdZV2ZYT1RNSnVaMjhqS0hteU9xVU82K0ZUa2x0dDAyZ1V6ODdCRWRmNzZt?=
 =?utf-8?B?Z2syRzVod0JCZkFNNnNvR1I3UU5ESlV5OFMySXFDa3Q3d0M0eWNMS3VCeFFx?=
 =?utf-8?B?NHpsZzJiUHdaNVl1NExWbWtncklkZFVDY2VBQU1DNnl5V2FjU01zdDQ5VlR5?=
 =?utf-8?B?TzdMakZOdm1RRTh6akcwa1Z5QXNvNkY1cXVmQXVKaFpMZk83TFVmMGRsNS9j?=
 =?utf-8?B?NFg3aTBSU0dWalZzYTlHMzFRbGpFQzRFc05Jak84TDBRUVZCMTV5THpvVUQ4?=
 =?utf-8?B?c1cwd21WUE55NHQwQWxCMUM5RkM5VTk5c3Nqak1TcWllQzZFZ2VXR0c5OVRj?=
 =?utf-8?B?SG9mRWFOckRtZjVPRTFGMVBsSEFzRE5XNkRhS2pLZ2NVQnZzVEJYTDRaY2hy?=
 =?utf-8?B?ZW1Jd1E0VmZpTlN2L0RhU091TFhHWjVqc2VOa3VpR0ZnVm9kTnprN1FKeFZH?=
 =?utf-8?B?N28rSllBYk1xTUVSc21RTlI0Y2tYWlM5RjJNQ1lyWTF2YUdmWXRGelZWWTZU?=
 =?utf-8?B?N2owSVY5R09HbU5MYlBwSi93VnFVQUNYaytZREtBdmRTSUJvSEV3Sm9YSzEx?=
 =?utf-8?B?NU83YkZvRDMxQjF5QVpxSnc1ODU5N05tUFBWUXc1WnlXeG1BeUlaWUptdEF5?=
 =?utf-8?B?Q3JMeDJYM1gzaEoxelVMVEJ6bWN0a2FFbUljNnhjL3FLRjlidVMwaExVMlNJ?=
 =?utf-8?B?b0p5ZGQ4QXJhb3VjSm5idUxlL3hQU2UxTzgvcGRxaERMRzNweFN3d0JhZEJX?=
 =?utf-8?B?THJ3b1NGWVU4OUFsVUwwcVRuNCtGT0pYcWNTS0t4Rm9xMUpTS1IxRlZjcm5t?=
 =?utf-8?B?USsxbEtva1o3YmE0eXlCaTZTVWtVZktyNHEzdWJsTy8vTDFEQURtLzVMeWNH?=
 =?utf-8?B?em8xQkhrK1R1VGhlYmkzVXJwcEwzNmxDcHUwTFhmS3p0V0s2VVVqNkRsaEs5?=
 =?utf-8?B?UFF1UFNLa0FKTmNHUnlHcDc4b0ZuMHJXbmdoeUt3bzdzWUtJWHllenVnUGdV?=
 =?utf-8?B?N3BmR21qNUFNTlBKOVBJQ21MNFpDakx1OGZtTzNGREtLVHUxNEttL1Mycllm?=
 =?utf-8?B?TEt1YStBdndDdzhRRlYvME9pKy8xWFZCU3Z1N1BkZVhMSnJXTmZWWGwvYXZN?=
 =?utf-8?B?WUZlN3VOb3hCWEdZZDlGUTl4ZnBmMkVOSkU5SWY1Q051aFZQVEU4NWlJTjdu?=
 =?utf-8?B?YnpjWXJ1dkdHbUU5Vnh6c0pUeHFncE1INXFhR2orU1lZQ1libnNmcU02NGxM?=
 =?utf-8?B?cUtDdEFPOFVaZHZ3dWJ1cW1mVUM1MTNnd3grMWlMRmpoZC9NVkZYU01vT1ZK?=
 =?utf-8?B?Y3l5anE3aGJ0RlNUZElBLzlyL0FORHo5R05tTXRQV0ZVSHkzdU55K0hSa1B2?=
 =?utf-8?B?RHJFQmwrTm1oY1hTUVZuTjYwaGZiSlVkSEZRYzNTMnNPUFlWSEVxTG81bkpH?=
 =?utf-8?B?cVRqZWJpdTV4bnlhOXYyYS9DaHdLZm91aGZZbGNSMnpXZ1BmdklmM1U2ZExu?=
 =?utf-8?B?QnFvSnJSWW9kV29hb0hmQlZPdk1wK3JpQm5kUzFmSVRqejhPMVh0UGVzNEZ4?=
 =?utf-8?B?amZQVjNhZFpjekVYOCtWdnBQTG1ua2FIWlMvY0RkUG0rSy9BL3hSeTA0UkpM?=
 =?utf-8?B?emxjNWhZblBzYisyWU1wMjkxL1hGV1JyN0x6cnBVMlNrVFVoQ1RJUFNZMWJw?=
 =?utf-8?Q?pnIOwxz4FHG6Wn0jg8=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?ZTgwUWVlRkZPNmRMdkUyMzQ5aWV1TWdUUk5nYUZicE1iTzdDSElWcmVBMExQ?=
 =?utf-8?B?REJqUEtzMGdlODNheTEzZFRxR29rQWdYWGl3WklpSkJQWmg5N29zbDdzdXlT?=
 =?utf-8?B?bVNucXgzbWU5V2ZsUEZXRy90ZTFwbE9UVmhwYjFBeXJWNElEem9hc2JYRFdB?=
 =?utf-8?B?RG0zalQ4MjZONzhhcFFIbERIZmlMcW9SeC9FQ2s2bnZuS1Q4bEZ5dm1LOEJL?=
 =?utf-8?B?S3FRa2x5dnJ2MVdnVU9Mck1WVHlFdmlwWU5HaStEaUY5aTZ1RWsvRFhWM3gr?=
 =?utf-8?B?NVhUS1d2Zk5VWHJDRkllYUVGeGlvVU56S0FOczNhTERXTlBDNmVoeFFsTkI5?=
 =?utf-8?B?Z0MzUlBuZUZUaTJaenJxU1Z0QjR0K3QvY3J4V0pDcXdCcmN4RTRudnBrWTZP?=
 =?utf-8?B?alBiVXE0RTdSTHI1b0YwVXdBNmdvUm8zdThiTlJUVXFHK1ZaMVd3L2JwZ3ZP?=
 =?utf-8?B?NEYrcTIrbEU2TmRDZ3ZSZG5CeVJ0YjR5ZGhHd2c4Y1h5VTRNQ2l0aUFIOFJ0?=
 =?utf-8?B?djRDWWZmSWoyVjVDcWQ3VE05bVkrSW9IZHp4TkROWFBMTC85b2RtOE5PTVZ2?=
 =?utf-8?B?S2UwVlZhUFRJRUgwcXA4TnRJNXBSNDJjZ2NZVHNVck1aNlNqLzkxNkF0Zkt5?=
 =?utf-8?B?dzMzLytJbm9rNnlGL1M1MXV3dXplajhFeFVHU1FEbHFJcjB3VzUxNlB3Zys2?=
 =?utf-8?B?Yk45L090Mys1UjdDaDArSGdDWmxrQ2VDRHc0Vks0UmJ1aHlVUGd1aTRuR2dq?=
 =?utf-8?B?WmtWNU1NeG5rQ0NKWDZoYmZjZ0pLTmd4Y0VwS1BZd1RFMVdWTDRKZmE4M0RT?=
 =?utf-8?B?N0NEL0hIZkNzZ3ZOM3NLOGVBZ0UzY0Npc3Fxby9SclpjYzdkTTJuMXNYVmxk?=
 =?utf-8?B?WmVuY0pnQ3U3S3BMeEU5Q3RFeFVUVFE2R2ZtT2gyNDREK3dOSTJKUys4OS81?=
 =?utf-8?B?b2xtRU9NL3RhUDNIUkdOY1VoMDNaQktNZWhscVZRMlBIMlh1VnJnc3g5aUph?=
 =?utf-8?B?V1IrY2pIU0R0TUN0ZW9aYzJQMnFLOGlJRjVzNEI5eXNQR25qMDUwTUc2Z2lR?=
 =?utf-8?B?REJ3SDY5TlA4UFBXV2hZeEZvMWhMQkY3dS8wRzQ0dEF5bXlRV0xvSUlveWFL?=
 =?utf-8?B?ZldpU0Flem1PWlFwUUFpeENITnF5UWFqVytRMWJRN3VHOEJvaGY2U1Qxc0hp?=
 =?utf-8?B?MW1kVUMyNlNaRHRhY1EwbWlpN3J6QjRZbXpJNHBHTUthb3ZBWUZaOFYrdlFo?=
 =?utf-8?B?UGFLajg5ZytvTHJDQ3JLY25CektOM2svdXNpdXZub0Yza3V1S3d2ZFk0R2FB?=
 =?utf-8?B?SC9HU0U5OGxTK3VvWUhTT0FkbGpXbnFJVUhEckM2VFBXK3Zocllqbml2cytB?=
 =?utf-8?B?em1icHB0U2tta25xVktreTBtNk81cWJ0LzJqUk9xdE0rUVI3aUZsUzVwalBK?=
 =?utf-8?B?RDZXOEhENW5uMzhBeHBCQko0NTNTbGhoSnpsY0tJU2V6d3FlcEF5YUJsbkhB?=
 =?utf-8?B?ZFRjdkVuTXd3b0s2TWtQY3V0WmVhZnNVSGtaanN6UVBhazlUdExUMEdiTkpN?=
 =?utf-8?B?SmJrckowSVFRbEJkdUpUWXpqa3dBN2E4U0g0M1BIeHhaNnNDY3djTUFhR2Zz?=
 =?utf-8?B?VWx6ckdHTGJhMHlqOFBZQzBCNFpFbjg0MW56akVqWnlVbmFhTDVVK28xdjVH?=
 =?utf-8?B?QmcwZzRQZVlOZnUweHVpb2toRXVicDZIeXVCRFg0dktyb0Q3TWpDRUNVT1h2?=
 =?utf-8?B?eUVjVmFJcEkyQ09Ma1FvTE5xN09UeVlmNEVqbUkyTEsxTkVaSmJKaHlWalM2?=
 =?utf-8?B?TkRFSHZGeUFVRlZPU0ZwbUpwL255SVFxT0pMNkJWNW9xd3R3MWNzcE9GSG8r?=
 =?utf-8?B?Q0U0WnRud0tDa1V3VDQxb3p0aUhrUDNaN2lJM1ZZV0VTdFhmbkdlTWxDeVJ5?=
 =?utf-8?B?U1JDaWhQRUh1MXp5TlBma2Z3aXUwWm9oaHZiUUg0TlZXd2dUcHVjSTA0aWxx?=
 =?utf-8?B?TEFkaG5OZEF4Y016K3ppWnVObTlvU0I1V2plelI1Z0k5dlYza3Y3V01Dc0hr?=
 =?utf-8?B?bkZuMjdEZ01ZOUZvbzVLZXMwM25QaUtoZzNBZWhxMlN3aHVIMHgrbXc2S3hH?=
 =?utf-8?B?cEp6WFF0QjBpa1dKRk1vY3dEejduL2Q1T2pIL3pleXpBNktQTlQ3d29HZVV5?=
 =?utf-8?B?b3c9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	XVsBTkfbEG1gyYCSpS7KTj/IuwQtnQILqF7QEYQ0MRAmESmFk4l5mLhmRdti7tovYcFZmAQZpmQmYC9BOHi1DAGnFgj37BI7+4i8J/TspM8P9LHbOXrd6FGogYPhjrJhbb9kYb4lIO4JOZzWO4ztbmtq8ibJ9jjwIrZD8rSvXa9HZtlyN2y6j3YyjzzVm3CIj9XvInP6YrzQEhaDJ02TdDLz3c5WshCR5yAjxH4gHtduADIa21BLNAeCgK0AYG96h1bq8uOPADQ2OdtQpbJD12q9UtwHw1NTXbC9rqoG7OJVS2CXBa7dnSgwojytXubRjELOU0htZoI4j/9Iv2DrlgQALFp1E+yIdLe4kD2jxltQzru/73g4ToSGdldNEDzBvJArIfJ7+ees6I67dtO5bUAAhWO1LNI/822Kfj0RDjjgvCTQbpAC6c6uk9iTZupb1TA232UrFYHXZQS15TLtrthjXA8EkdqDZhHen2qOzTC0x+eNjkND0JZiGTgYI5sbRNhnS016dSpeQAPJuILJov8QKAJ8wOzg3o22dpyhQrHVFH8i73wbXu3lGyZxZ02aRQ1EkXd/EQu8ujE4wV81ro4+9GiwiPAhU36KM5k66HM=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d226a059-c261-4f79-d2eb-08dcced59605
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2024 00:39:52.1966
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AWVe9ZqYsrh/vxikb7XfQSAu5XwFi6LOugR8aJvmdWpOAQgr1HFaZ9pZaFuIxPxHS6Kkg7NM2MGjDJKHsFD8DScd4twRdvVYmq5hDsItLIM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB5550
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 suspectscore=0 mlxscore=0
 phishscore=0 spamscore=0 mlxlogscore=999 malwarescore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2408220000
 definitions=main-2409070002
X-Proofpoint-GUID: gI9Xa_ZygVr3wR0DmaQRPeTve8ZL3w4Z
X-Proofpoint-ORIG-GUID: gI9Xa_ZygVr3wR0DmaQRPeTve8ZL3w4Z
Subject: [oss-security] libpcap 1.10.5 released with two security fixes

https://seclists.org/tcpdump/2024/q3/3 announced:

> I hope this finds you well.  tcpdump 4.99.5 and libpcap 1.10.5 are now
> available in the usual places [1].  It has been almost 1.5 years since
> the previous .4 releases, so this time it is many more bug fixes and
> improvements than usual.  Among other things libpcap 1.10.5 addresses
> two CVEs that only apply if libpcap was built with the remote packet
> capture support (which is not the default).
>  [...]
> 1: https://www.tcpdump.org/release/


https://www.tcpdump.org/index.html#latest-releases further says:

> This libpcap release makes various improvements and bug fixes
> available whilst the work on libpcap 1.11 is still in progress.
> Among other things this includes the fixes to two vulnerabilities
> (CVE-2023-7256 discovered by Dora Sweet and CVE-2024-8006 discovered
> by Flavio Toffalini and reported by Nicolas Badoux) in the remote
> packet capture code, which is disabled by default.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

