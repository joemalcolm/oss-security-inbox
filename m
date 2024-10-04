Received: (qmail 9777 invoked by uid 550); 4 Oct 2024 21:17:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9752 invoked from network); 4 Oct 2024 21:17:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	message-id:date:from:to:subject:content-type
	:content-transfer-encoding:mime-version; s=corp-2023-11-20; bh=9
	RszyEbowoZxiWVJpw7VnbRNEnmr+LEx1sy+ndJxh3g=; b=guvCigljaUOOysL1Q
	DtTP/QsHBNF9eWhV1r0qt9iW04UqnztXTEIzyNMDEdXHyD4s+dNklRR2w8vKAJ75
	JBQ7qpWRMOIOLkMfVuzszzjMQbeWR+t9wsGbAg5i+qYKMF1vlUOTrkGJee1h5voz
	267EPxsPZoO5UzYXahFggwbNg8SAG4ZgRt5UeXTFCYX74ooIVoIaZqcFq3n9gRx0
	VDsPxdNQ+84DSSPnGlWTw2qFOudinrLnWKDLnBvANegkArgqKBoXWEDks7rkdnyv
	gHC9TeGmX6YXf3iYlL29SWqJcx1QeEesAl84xzEz97s1cvI81C2Wesi48kt1DrBk
	IGKkg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ljAZCcG1v7+xq5zX0ie7nJNlwlyXnyBXgMcgOpkyFO5nm/x6USUuvhX7MCEX7P3oKHWCIY+rJcXD7w0gC5wHsEA18rMZQ/nTSDVZNffV50Xx7XthWr1OWhNx6As1A2alwuw9PyQ/DgnGzLPL7hvzskUbzF2AsaPvy5OTll9wwmFZZJPE5Hqcz8baZEgmyXOPziKSg0ac0qxJU5bJXP/BAOAKIFpr3BAUFAZ/UkirzQwX6sIV5p5LMkClEjQIZuS7U27GBF8cxoZMTFnszDeooJBFY6BsdmTUnv5106q+gcPxHxrJNryhvMPMaFgfS/Y1X1Ezs1gpNLr+Jeligd0REg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9RszyEbowoZxiWVJpw7VnbRNEnmr+LEx1sy+ndJxh3g=;
 b=NtTwFYdokZyYu+2EqwKs1UnMeLGuq96r9MOjSqX/dgCa+shHzqq8amNTHSD/45AAW6ScaNOj9evFNmad8XlYb0lqnX1WCxnvKeiCHaOH3ak1cW40HV2ALNfTAvPb8s1QQpZ4THipFebv3VmBbV51eiZ3axGR7X1xFRf56M8CDMbrCyiY+hJZM98UeuMbq4/bX64CNIIQKCxgyJOtLmelTaM0HEkR+JwdhMHkuxEu8PJLHA02zgw+nd6phswEHFzlLxXHiZMFzQiybWEvS/Ec+JhP89NKzsWI2UlTGwjTE0nb0hi6hJ1+uaZpqBjzmbH+hLZxlynKgvTQCbA5IsSUkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9RszyEbowoZxiWVJpw7VnbRNEnmr+LEx1sy+ndJxh3g=;
 b=cB2k9qQ0f0W2NDKj0JoBIvcNo+NjlkxqJEsdyyAxfIGqIjGmQJAXXgF40n/+/58oDGUfpFQV/9fsXMmWbXT4NR0GrTgnmIqBta89fveCNwivk6RdIrbxsX129Y040dU3ivwhbgkhed58/zixYprpw7izLS2HLNVFE0HiOnonMTU=
Message-ID: <49ccdfbc-8518-4e9f-9e2a-b9837af147d1@oracle.com>
Date: Fri, 4 Oct 2024 14:17:44 -0700
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
X-ClientProxiedBy: SJ0PR13CA0191.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::16) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|IA1PR10MB7516:EE_
X-MS-Office365-Filtering-Correlation-Id: 8ca3736d-3797-4423-5452-08dce4b9fd94
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?b3gySkNTeTlFa25LczdWaWpZSGFWV0dSMWxVTTczalBhdyt6clQwK2NHaDlx?=
 =?utf-8?B?RkQ2TWJCdmtqQzlkZEtSYXBtYmhIa0xYZ2taaUlGTFJuSUhrbFAvaC9oYzJF?=
 =?utf-8?B?TzV1RG5hbGhIMnFxTjEvRWlvS3k3aWh6NE9Uc3BwRjYyby90cHhHVyszRFBz?=
 =?utf-8?B?UktDeHc1MkI0TEMwWTg1M1V6MzJ5YkV5UHVjQTNRRVpZbUR3OU9wQnRrTjFi?=
 =?utf-8?B?NkJuY0Ezckd5Q0ppbjhGZHNDQkNDSmZJYS9vY1UyMlQ4UGhQU2N2VGxndzdG?=
 =?utf-8?B?NEdBV2hDM1V4Uy84aExWb3E4MkdaWWtnSGU3MTJlbmdNK2cyQjlEcVZVQUxQ?=
 =?utf-8?B?Tnp4WU1PUisxTEErMmlvOUh5YXhtanU3azVOalRFcHNKcXFObjU5RC91Nyti?=
 =?utf-8?B?L0NFaFl4MFlLMnFuZlMxZ2tuOXlXSzRuTVduZ1dtRkdsV1dBS2Ftb21ydm9C?=
 =?utf-8?B?NDFvTTBmaFVpUXFmS2VUUFJpOVRQN3R4cTVzWkVyRWhHUUtML2xIb05GVGpk?=
 =?utf-8?B?N3B3dSt3WHJGenNpRkxCb212Q1ZKa3NzUUVKYmVYWGhmY2gwc0FFUkFxVzIx?=
 =?utf-8?B?L0VDMENXYjBScWk5NjdIKzkvbGNIc1N1TUc0MklwVFFCYmNTSi8ySDlRb1Zk?=
 =?utf-8?B?cVlvNTZ1SlVTK0dydlRnU2RZekdvRkJUWVkrdWEzNnU0TFIvYmVDRVhkRWhG?=
 =?utf-8?B?aTljM0owMjdaNnlVUFhHc1Q3aU5oZG01OUlOYlJjZzNiejVkS1V2a1p0T2Zy?=
 =?utf-8?B?NFpER1Y0YWVxb083dklJQmFPNkJQQ2lnUFphK2VrV0xNS3RhcXJkcHpSYXgr?=
 =?utf-8?B?T09XR2gvaUxXcDhNYWdpVm1VUng2RGdNN3ZMak1QMlZ6T0NIWXlYZTQ3TlZq?=
 =?utf-8?B?WTJXYjlobEIvNWU3RmxHRDExQ3B5ckI4MnFjUENrZmF1bEtwNEtWcjBHNHli?=
 =?utf-8?B?emN6cnM5NGZmSmgxb0Y4N3NGenVHZmNOdDVzay9xcmVhTHMrK0xiOCttdW5O?=
 =?utf-8?B?SERLN3JlZ0djRndIZE4zN2RNcWJ4ek04bXhycFdBY0hoeEM0SFNubjJhZzc5?=
 =?utf-8?B?Q3V1ZjBaS05rL3g1Nm96RkkyajJoZEc4K216Q20xL09LQXlnakRyUmExdEtN?=
 =?utf-8?B?c1ZBQWlWWk5IL2pSMGpYR1EwSDRta1BWVTk2cjBBeUxKcFBuTVQ5UGFYRVM0?=
 =?utf-8?B?ci9MTXNJaThMeXlBV25YOUJyKytXTU0zRi9kNnFXM0duOTdXWm9CS20zbHR4?=
 =?utf-8?B?Wm4rK0hYU3FibUJWU1g1MmNkdEUwM0tsajFFVC9Mbzc4L0gwWEtBa0FLalNa?=
 =?utf-8?B?dEZRdTh5WWZXYk55SW9tNFRUaXg5SlBDejZSOEpmSUJXTlh4VlRNaHZLcDkx?=
 =?utf-8?B?WFYvZE54TmRISUhMQkFKUVdKV0FDWkJyYzdlU0pXdmFjbWNHYnlZNlhXeml5?=
 =?utf-8?B?U1E3ZjUxcjB3V1dGN2xEUWg2eTBxOWlqQnNlRkFId0xoakZRZWZhOGNUSFpv?=
 =?utf-8?B?Wk5QMWdCckQzRFZtZ25kUWRkT25JUU56SWR6b0dIL2xSais3OE41SldMTHNI?=
 =?utf-8?B?YkJka1M1N1RQWmZ0SHkwbW9acVZRdW02VVlkNWhHckQwMjZVak50OVZQUDNz?=
 =?utf-8?Q?bP88opf/DSLNcrYtPJetrxH+Jqi3IjOzCKJzl1PDc51c=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?cE8vR0xNN0h2ZGJsZkd6RlhKeXRTQjlybnlua1IvZFVHbzBFVGtVTTZscnZz?=
 =?utf-8?B?SE52eVlXNUVubitqT29laldyQVd6dklkVnlaVmxmRk5Qd3dMazZuVnZjZ1Vq?=
 =?utf-8?B?b3RMODFoNHBuTGVtSmpoT01iSDNqN0RNbjI0LzlnUWtURUlQcVgwT0pXeWJi?=
 =?utf-8?B?WTdGalZNTkx2RzNXaWJrOEY4SGxPdzdXYm5hWC9oRlhjekJiSXE5S1doQm9G?=
 =?utf-8?B?Y0xLZTJmUVFRdEQxY0RTNEVjWmxuS1Q2Yi9CSC9NU29ON2NnQ21EWm9IODVj?=
 =?utf-8?B?R3JoOCtHVjZzaUZncUFtUWpOYlNwOUc3SCt6bSt1eE4xZ3V3eTIxcEFnNEgy?=
 =?utf-8?B?TjFGYmhzSFJIMUZ0TnV5U01rZjZ0S2lhVUZoSGNCWGlWYXVjMUlhRTAyWlRh?=
 =?utf-8?B?YjVTOTd5T296elJlMGhwUHZxN1U4OEVMSzFVeWQ0YXV2WjRnd0s4SUVUOStY?=
 =?utf-8?B?SlNJTmdFQW13Qk11ZVRGZlJlZW1GdGJXYTczbFZPbkkrL3VqMlA5VDZjYVNS?=
 =?utf-8?B?aXIzV1FXVFVYVnpqZmxNOFM4TEhaNUJQb1dsL1VkZFJGa3hDRjk3cC9EUDgz?=
 =?utf-8?B?aHpTSGRHMTZKbW05OFlXWXBjc1RrNjFDMVhpWDIyWTNwaVF6dmFrenlqTGRu?=
 =?utf-8?B?R2swTDgzeVpGMGFPWkthU3psZDBmNlM0TUkxM0ZpY1dGaGFiZzJVWG5WUXlk?=
 =?utf-8?B?MUxEbUhYbDBLbnpIakJTbHFlcFFvZ3dERFpNeEF2MUNqWS9OLzV0QjZ4S2tC?=
 =?utf-8?B?dk5Ea2lhSzZYT3JVczd2YmVORUpTS1RpVkhrQVhqbVBZc0pEMFlRZkQ0RTFv?=
 =?utf-8?B?Q1dESGRJQUJEeXY1S0tOUVBvR0JKbnBvb2pyYWpsTXlTMFQyYzZzVXVoRHhr?=
 =?utf-8?B?UE1TM3BidElBRmJ5KzJoN3V0c2syaXZqRFA2Z0llemdsUFU1UmJBVmJnMEda?=
 =?utf-8?B?UTFNOWgvRmNMbEFRYVdBcmJqYkJlN0RRM3FHZWtKT0tlSDhWT3UzckllMTln?=
 =?utf-8?B?K1FxY1l2ZVVRMkNLUGRSQWFzSlNIUWZzZmFOS2FBSlVTM1B5VTF5NE9nY3Qr?=
 =?utf-8?B?aXFWUlNvc0ZML0RrcGUrVXVYTEZ4YjVUSlJvQjVhYlorZzJhZmFIeWczNWFY?=
 =?utf-8?B?aXlKdUZMTUV1RmxFU1dpcjJaSnhEdlNYT0lUWFBQWTM3aEdGV21URTdDSHNK?=
 =?utf-8?B?N285T3NvNUdZUnZNVTkvWnBLUWRpOFpZMkhLdHJ0KzlkWmtaZHA1T1JJZ3po?=
 =?utf-8?B?UDZmM0tKaE9sZkZ3U1QxMHp3YU53K1Q5M0p2YXJTOVBTd0J6QlJyOW9zOG5S?=
 =?utf-8?B?Nll2K3Z3UG1QbS9RaEFrUnVFTkhkdldrNzVaMVIzUUZCYVlzdndZQndEM2Vs?=
 =?utf-8?B?dW5kbllTZmY2L0MrbEhwd0xHOEdPbVNtbXNmcUVhR1RiamozTk9TZCtiak1h?=
 =?utf-8?B?NFhZVGNJRXFnNGhlVUJIU3ZyZVdSOEd2TDl4azcyQXoxSFFKS2I5Z0lPVmkw?=
 =?utf-8?B?MVVDZC8xNWl5eTJVM1pBeWtPTzF4bjdva24wdzQySWx3UDM2RWYvYmt0RE1p?=
 =?utf-8?B?NnNQdGJoaHVxWmdubHZQNjhzN3RabHRTOXpYM2tEaVk4bi9Jdy9qcUxxU0di?=
 =?utf-8?B?cHNCNWxSeWVBYldUcnQ5N0pzeHNBalVwS1M0YUVRam9kaTd0U3A2VGRNdmJy?=
 =?utf-8?B?RHBiUVNWU3RaaC9oeFF1dC9PZTlUOG9LR0FJcDJ2ZlNtUFc4YjJqdmRrZ1pU?=
 =?utf-8?B?VE1KR1RUN1pqTy9rM0hRdmllZG83SXVxbW90OGNyQkU4SnVFaHQrWWlwVldp?=
 =?utf-8?B?WTcwY1Zmc1ZsaHNsSC83Znc3Ylo4Y2s5SkFtblB0VW9aYzFRTnZoY05KSjlJ?=
 =?utf-8?B?b0JXWWJpNkNZaHZsOFh3Wkt6OGRCRWVmcGt2YnhSNFhJMUtGbkpFZWNaRm5F?=
 =?utf-8?B?ckZRY2hVMVBGZC81S0tDWWZpUXZpWDh6Rk1pMkJlOW1oYWJPUThsQWdyTXJw?=
 =?utf-8?B?VC8yOUFyMVB1aWtMYnRqOGRyWmFiZm1SbFp0bWQ0V0RacFVCVjRJWERpSnZH?=
 =?utf-8?B?QmM4Z3BHWGRXYVY2V1grYy9MVGJ5VHpmRlNVQ2hRNUE0UXlScnphMVlKdWRU?=
 =?utf-8?B?b1JnckI1dWU4ckR2MlhqMjdpMlpZTkMzV01Ga2FObEdtZDJWc1BUTng3TXM1?=
 =?utf-8?B?MFE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	hROqkJ9iGIZfP1b9lAGn4x3Le1qS2cVUXLrcl+gM/2ZDwgmjXFk0eTx6oGG9kFRG+AABn5OcKVFNveBOkDcW6IqRsNXYfiZeCxSkRzvV9mwmAI3LbFbhllenDItybtGzNWm3pM420REEgcxpk8qisWvKvWKayy5DttvDwRecv6VGOZenugPh32lQ05WFxctu1PadEZ1glxtZnnzyJ8hk2pLnkaM8+0TX/ZwMyAsap/vuRzFuqsTO68W2h3Jw90cBussXDdr+/iZ5RY8EA2XWilXT+0GOhVLJKoh9PaEyLMNk3T/AM5u2JXaF09OdZEeeqQifWMvmy3i9e6asDsEc7GTlMqV2F/FSWa5dHQR43gENeLUUh4oIuTa13PhcV3YGQ26Wf6n009CveWgDlO/nAvwvEy0vMawPGHMsYZt/Cyh/R5+Uuh4LjxOf4opRKJTy9Y44scDxD1vtaJLeTrkn3phsWhLlq1T7Yi2g+SCkFqvDLb5hjBR/wH2YE3qF+4YPF62KPTWqEWZNa9VoVSdoE8dP85DlWX51MveyFQJhRcFVeolIYbsMiV81ARDM8WH35Cf3h27qkMfBzf3g9YmNFu/yZoyNLO4YWvvO1lVUIaA=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ca3736d-3797-4423-5452-08dce4b9fd94
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2024 21:17:45.5411
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FNiA44yqlGufXoTUUo74y4fTCwjMg+DVC4Sx92v1bmflPXaTN/CNsCqY1iFktM2i8hoNd8wN/yVEs+chIZlBVMkJ8EiF21JGg+Xvsz5zBBo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB7516
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-04_18,2024-10-04_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 mlxscore=0 suspectscore=0
 spamscore=0 malwarescore=0 adultscore=0 mlxlogscore=971 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2409260000
 definitions=main-2410040147
X-Proofpoint-ORIG-GUID: DNiClHYJ7o1yL4jkTcNS1C42HMGYvFzj
X-Proofpoint-GUID: DNiClHYJ7o1yL4jkTcNS1C42HMGYvFzj
Subject: [oss-security] CVE-2024-8508 in Unbound DNS server prior to 1.21.1

https://nlnetlabs.nl/downloads/unbound/CVE-2024-8508.txt states:

> The CVE number for this vulnerability is CVE-2024-8508.
> 
> A vulnerability has been discovered in Unbound when handling replies
> with very large RRsets that Unbound needs to perform name compression
> for.
> 
> 
> == Summary
> Malicious upstreams responses with very large RRsets can cause Unbound
> to spend a considerable time applying name compression to downstream
> replies. This can lead to degraded performance and eventually denial of
> service in well orchestrated attacks.
> 
> Unbound 1.21.1 includes a fix to limit time spent on name compression.
> 
> 
> == Affected products
> Unbound up to and including 1.21.0.
> 
> 
> == Description
> The vulnerability can be exploited by a malicious actor querying Unbound
> for the specially crafted contents of a malicious zone with very large
> RRsets.
> Before Unbound replies to the query it will try to apply name
> compression which was an unbounded operation that could lock the CPU
> until the whole packet was complete.
> 
> Unbound version 1.21.1 introduces a hard limit on the number of name
> compression calculations it is willing to do per packet.
> Packets that need more compression will result in semi-compressed
> packets or truncated packets, even on TCP for huge messages, to avoid
> locking the CPU for long.
> 
> This change should not affect normal DNS traffic.
> 
> 
> == Solution
> Apply the attached patch using:
> 
>      patch -p1 < patch_CVE-2024-8508.diff
> 
> then run 'make install' to install Unbound.
> 
> The patch is tested to work on Unbound 1.21.0.
> 
> 
> == Acknowledgments
> We would like to thank Toshifumi Sakaguchi for discovering and
> responsibly disclosing the vulnerability.

The patch is available from
https://nlnetlabs.nl/downloads/unbound/patch_CVE-2024-8508.diff
