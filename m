Received: (qmail 5399 invoked by uid 550); 24 Jun 2025 01:30:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5355 invoked from network); 24 Jun 2025 01:30:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=corp-2025-04-25; bh=P4VXMryMebPtLz98Pk
	5iZCWZxhlmWM5XWa88cPNz6vw=; b=HupILIE5yngchmTu1MjZ/NAEJXqUtBX7rH
	WkhHNuebtQrDZcnB12EIrCReVSkuDJ4s/JjVA59LIhn+5jmxvPGcqLXNdYquRDw4
	GIhjO5DPUFERY7zUxc0ymlAFLCBRrCSxC69S3GwsFKSXNQx5k9vYk8WlzAlvTDG/
	3iG0qwqPVprLBtvdxyQUj9dYEnaNEW4zIChiGpucbHu0K3U9JAoM9pJj8zdy4eJl
	aUItfGKy3q/J4sbfHJjqOeCi1DY3lVv6w8Gl8qSXqifQPuWP3WS9rS9lqUhKAebz
	UsLSMdn3x+/CXbea/ZpvQz/4wbf0Otctmyc6uW+L0w5DN7fz0ntA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e0XylEigaFnjnN7KGox5U3d1OovmqGszlVXJb0h6o8zATwKAUeNjs49KQOZi42lYPeC7sppUMYWfuKhykk2i2NttM9ta6vdQ0DNfhCa2ZL76m13hY3AA0Pr3lpjnBKjcDzYIZcXSBKZYH4PSTaQ6Nifaz7toeXsXlaJ0wvoDSSLRbfmvR5ugNBn0HkLqTUvPc3kpvptDcfV2Avc1kfXqBz112dNtttGaTqq/opO4ZzDRHlZHstMiDUfq5jL4tmdqWaF1fe6EpLMdMnhtY57UDiVVth9JxlDaXUFvsve+dHrgLonAQhf2fmLw78tUt/nD0n8BvvkdwfccZSErAUzupA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P4VXMryMebPtLz98Pk5iZCWZxhlmWM5XWa88cPNz6vw=;
 b=a+IBf+f5ijHbyK9Y5lATniiJmJC8l2o4Nr6/I26T1/T4RBTWqlwh4KQorjJ74BXQywiYPB29C6dD0FwQMDkMdZMwm+l6yjnPAu0NEQYf050smXcQyYRTbP7LF5VReCbAoT3wzb6bcKLJg4xvtZuHyfO8duOc+NAjCKbuuAd6Cll3n6+5+KEeAOqkyo2Q1H15auu+JeLs+zCSNuFzgKl56SA2lr+Fa8KvNvIvA4GDjvL+vmBGH6zydiRP+HNrR+dlzO30CmYSyv2BBl5AxsDbNXZ7qoNo5D23B/uYB/cj2H0hi94NQGJ8wOXK6m7SmFfpJOlPUZqfvQir4tgH1lMM/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P4VXMryMebPtLz98Pk5iZCWZxhlmWM5XWa88cPNz6vw=;
 b=JYDXt4cufOrP8n5E64ewFdTYdkocOcfuDVHBwYbf3+/Z6Pr/xvfoCub+yrWvuPstCxdrQih+OcH5ALdwziQc87/yLXYeLY31TzypXyd4Ahq88AFtspMsTo+gzv6ffXxPLjBdUmTYt7dcWLjZvZBuMCbwSbJWvexjyqNF9qKLCLs=
Content-Type: multipart/mixed; boundary="------------IkLzKPPZxydJKeSxd0pJuIWC"
Message-ID: <d823ee80-b9cb-4d95-ac9f-6ca50523dbc2@oracle.com>
Date: Mon, 23 Jun 2025 18:30:03 -0700
User-Agent: Mozilla Thunderbird
References: <CAADqWPSu1y1JmaSO1Tefj7p=YKg0KbKfTXzL1U-14gANoECEdA@mail.gmail.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
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
In-Reply-To: <CAADqWPSu1y1JmaSO1Tefj7p=YKg0KbKfTXzL1U-14gANoECEdA@mail.gmail.com>
X-Forwarded-Message-Id: <CAADqWPSu1y1JmaSO1Tefj7p=YKg0KbKfTXzL1U-14gANoECEdA@mail.gmail.com>
X-ClientProxiedBy: BN1PR12CA0018.namprd12.prod.outlook.com
 (2603:10b6:408:e1::23) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|BN0PR10MB5014:EE_
X-MS-Office365-Filtering-Correlation-Id: d9534e64-6081-44d7-4c02-08ddb2bea624
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|4053099003;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?elVid1c2bXJXaTJBZUszWUhkZHhoK3gyQ0draXZLbURhMUpBNEhlWTZSb1dv?=
 =?utf-8?B?elVuQVlLODR4QjhHS2EzMlgvbnpueXRKc1VWZzhCWktiN0hjWm9FY3BkTWVR?=
 =?utf-8?B?cWJvYWkzaEZiUVZJTjZPSmVMUzUzaHdVVUlDOHB3UjNOa1piQnRCZUlMT2lH?=
 =?utf-8?B?eTExd3A0azcxbktlTjVHSlNYYTFoeEp1eVdtcUxXS2NkOWJmMVVwSU9PN1da?=
 =?utf-8?B?RFpMcmVqTGRwcmVNWHdlTDVmMzFKWE5iKzJxc2p3akl3RnVYYzNObUM2NjlC?=
 =?utf-8?B?WW9pYVM3NG9IZXhwN0RPaWZ0MG1oQkRzZWUrT0xPa2h1Tnd2dzVGcnNucTM0?=
 =?utf-8?B?VFFpN1k1eENyVTdBdzZoNzZ5UVY3bkk1eEFIVGh2UmtNb1RnVi8zSjRjb1Rj?=
 =?utf-8?B?a3J2OGlWZ2ZLTVZJUWJ5NGdyM25zQ3Nib2NtWDM1R1NqMFQyd3h4VVd3TFUx?=
 =?utf-8?B?VGlKdXFjenVjb1p4RFFLbERCVHA3akJoc0tYS2RuM2pMWDhYRXMzc2NtUDd5?=
 =?utf-8?B?RVRzYWJmSTFwTDdMR2hFbUcvQTBpU083V3Z3RzZuUWZxbGdZUmcwUXNtTHc5?=
 =?utf-8?B?OGsxbVZUKzA5OWlkTmUrZnl4VHkyTTIzc3FLc3JyWExWRkJodytJbGJJRXJj?=
 =?utf-8?B?NU5mcElJZFkwUExVOVFBaFR0OWZFeHp3WHRhUkl2Y2lWUEJmUVY2VTloekJ1?=
 =?utf-8?B?RjZtZ3hNVGdjOEJxcStwZEVabUpvT1lxWGE5RU5RL1JPTlZsSVdHRS9UTjky?=
 =?utf-8?B?L0pNZGdoWDB4L2JZSEZGNVJ6MjBzQ0dPMzMycmlxdHBvU0xsYlRCa0J1Zy9S?=
 =?utf-8?B?SElWWVBRWGRpd1MramV2Mk1uTk5MejdteFFtTS9sVmxZMVFNQzNXcTVGNm9p?=
 =?utf-8?B?M29wSWVGaDdTcjRLc1I0MjgycHNmSm00MS8rOUcvczFDeDFxbmJWY3NjNFNJ?=
 =?utf-8?B?YlRmVmNqS0UwRnl3U3FQSGIycDlxK0UxWGROSjJkUnpFS0RQNGVTTGtHcjk2?=
 =?utf-8?B?VEgrWW00eDdycEg2UnRoaEtPZk9GeHhydTRJT0JaTkgyTHY0aDgwUDhTWmN2?=
 =?utf-8?B?eEtoZTN3Y0ZTVWM2MHRFc3g5RHYrR1lpMG9ZZkpEcklYdFl2QnliRnU4eE1p?=
 =?utf-8?B?NXFjT05ZNGdlQi9RNXRWYlBtR2k0REhNMWtwOFBFZFQvLzlVZGRWWFlZOW1h?=
 =?utf-8?B?YkJBMVBNV0pncUJCc20xdWZqNnVUWWEwYmFqakpFdis3TmQyS1o2cWl2SmVi?=
 =?utf-8?B?ckdhOXNCK2FaZWNFKzB6dlFkS3RKaEgvWmlKT2lRSnVVSTB4cWFMQmJtQlFL?=
 =?utf-8?B?VFN5VlluUEQ4cEt6VGU0bEhoRkZIT1FwSlI4WUNSWEZrcVdNamdpRlZsbzND?=
 =?utf-8?B?QlFobVlyRU5BRmpoZ2hCWEdpeFM3eHlpaHVxeFNFUkxRcWZjTHhuQ2szOE8x?=
 =?utf-8?B?Y0J6YWcxZlVRYTlGVVc0UmJHck1mTDVSTFEyeVFpQ2o5L1EzYmNaeWdrejdF?=
 =?utf-8?B?Wmo4OVk1bkY5dE5kM0p2SUdRVmRINlZIYzNqSDZ0VmRrZ1dsam9GaUpDR0xZ?=
 =?utf-8?B?eU9GQW5RVVpDdThKQTF1SGg0SGNpc0tWL3RnekIzZ0pzVFk2Wld1akc5UWsx?=
 =?utf-8?B?T0lUM3JONndlcnl5R3phdGhJUVQxQm12TzlHZzFrNEFjQTRWNEl2WUh5YlZi?=
 =?utf-8?B?c2tZTGNTUENoWXM3MVp4VFpwdkpiamhDZDNocndIRXBUZUVlWklMK2tlS0tn?=
 =?utf-8?B?WFNvWnVBMTQrYjVDTG9BcTNpWnJMUGFicDlyM1Z4bEg5MVNlU1czdDRXVmZV?=
 =?utf-8?B?Y0xOQWQxRE9zL3puSU53THZtUm43WEJDWjBnSjFKZUMwQmNHV3FDR3JBQ3ZM?=
 =?utf-8?Q?1rtLz3ODqJD8Y?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(4053099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?a0JxUEZCclkrQTd6bGRlNjZ4elNqZ3ByTlRUT3VzaHo4TSs2cDY2N2lrRXZk?=
 =?utf-8?B?dVYvR3pxdXpRQml1cWR3SEk0ZDgvOHMramFuQmh5bXh1V002a1d6TFVid213?=
 =?utf-8?B?d1pnVWREblRVRXZnS01tMHliUUxoM0hMMk9LMlR2OWhCZWNVQjFrTFpxVC9s?=
 =?utf-8?B?SEZxVmlJelhtK3hVaWFpRDQ3TTk4eit1U2VmTUlwdGUrOGJCcHJWTS9ZVk9I?=
 =?utf-8?B?RTBTQTBtejZXK0x3ajN6RWh5U1RIWHlEUi90MzBvRVBsZUtsVGtTeUQ4eUZT?=
 =?utf-8?B?Z0o3R3AvT1pmWGE1WFpWOVJlYmovVW5Kd204ZmxSMnlOWTRPVHo1VEdsc1p4?=
 =?utf-8?B?cUNtWXBjUnYwSWlqOVM1aW9iYUdHNVRCekNDZUpjOXpFUE9yMS9Gc0hhNHp2?=
 =?utf-8?B?TXQzSUlNSmlVL1JjNENmTzNsR2N5dGxsNXNBaGY5c0p6NXZqelpiTmI0bEtt?=
 =?utf-8?B?S2k2N3pDU2UvQ2VlOXdWS0ZmOTF3Y1EyYzh0VWFKVGZCYmpNN0Z1dExvWEhm?=
 =?utf-8?B?ZHpoT2pPL1VTK2sxT1BydjFrZjJWUHdKc1hIaDNVNFJ6Tmo0dFNqQjc2OVY0?=
 =?utf-8?B?OGFKWEhjT2phQXFUL0pFQmlxY0JVeURNNy9URjBTL2tveDB3MnF6MU16NkhC?=
 =?utf-8?B?NjJTOHFTeU5BNlNUYWFOejJSK0YzbzdQSWNBMWUzcEs0ejRtYmc4K055ckdV?=
 =?utf-8?B?dU1BckNlbU1jY3B6eTlDNFNhZHhCejlaY1lRWmU2dk80VjlzUnduV1Z2SlZq?=
 =?utf-8?B?VkE0NW1wclJpNkU0V1o2ZVV6eTNqKytxUlFrNlpLODVkUkxWaS9NeE16cGZv?=
 =?utf-8?B?RzZwZXNnUTRmS3oranVORWNXTFg4YUpRblNvYjVMQTZwcWNMVWdVbzl6S25v?=
 =?utf-8?B?ZElPSGZLT050M0J1UU1nSlM3bHZkSlQ0SlcyUjh6V2FwY1VNL3orRERQMDdY?=
 =?utf-8?B?UVl4clZveVF5M2gyaU1FaHo4aEs5a1pETEZlOEwxRjljaWhLS0ZnbFV1QXlB?=
 =?utf-8?B?SDI0eHdFQThheVgzSzlTdEV1VUExMTJDcVQyT2ppUGdhckhTZ25INURJam1V?=
 =?utf-8?B?YldEbWhFU3h4VjhPSXg2MDVIM0ZReGVBZGRhNnRQdDNZaVNXN3RRUWQ4ZHd4?=
 =?utf-8?B?SUcvTjVoenIzdFZzMmRGbmJpSTZBajYvMDRTcTJwUTdVWC95V013U0dmejR4?=
 =?utf-8?B?MjhyTjdRemdCNlFScnVVQUlKRVIzQTQyZnZBVzNQUTJGMTZBZWRYUFBYQzhJ?=
 =?utf-8?B?eHdWK0dua2lKSzlaYUhsbDFyaStCVzlZbk9TUVFheHJkOUNBOFRLU3pIRGFG?=
 =?utf-8?B?L1RkU0ttUVdObnExanlPYjlYK3ZvRXVudm9jbXdVTXc0cERaR3duWnlYbHRl?=
 =?utf-8?B?ZEovNXRFK1N4T1JKOWZoQXR6UDRodXZYZzFOUzc4TktiMnE3Rk9KR0F0VjE5?=
 =?utf-8?B?Y3FGTmhlNDJoVzdLVEl0S3ZzRENWNHNiMzFDQzlKZDQva0hYY09QdXR1SkNS?=
 =?utf-8?B?YXpyVzVSSEdLb2o3NFVvYjFHUnY4eTV1YklNemhOUGFzMjJxa2VBQWNSQ3ZU?=
 =?utf-8?B?WUVmbk5SQlZFOFRZZ1dRemp5SWNjcm91Wkw5STZ4azYwZFo4c1RxV1NSMFlK?=
 =?utf-8?B?d0VCMnFnYUtsOGdEWW50MmV0RGorSDFadGs0MTh5RVB5Mi9TcWFUSThwTjNV?=
 =?utf-8?B?K3J3TnhERUlJMHBSeXlTKzMzcXMrRjBwVWtWcXpWMGVRbW1TYnRqMHJmc0Jo?=
 =?utf-8?B?eWY2OGttUE1BTjhTRnJSOHFDd1hJWGphS0pXR2Myc2dYMUJxTmZQYjdGdldI?=
 =?utf-8?B?VjhuajVVdENLRVNONmMzS0xWMHhROUhxSGNVTEF5Nk9KeTJDbjdRUzl3dGZt?=
 =?utf-8?B?aDFKNVhWWDR5K29JbFMyWUQ3RnRrRFVlWmhsNWFWaHgxai9NanNqT0UzaTls?=
 =?utf-8?B?bHdFN2U2K3VNdUtQQ1hpS3htWTdoUGUvZmtwVllnQW9td3psaDVycWdpSVlE?=
 =?utf-8?B?QThDOVR6aFJKTHFOSnZ6WjRvcXN1TUJ3c2QzeVZBQ24vZG9WQWVmZDE3U2ta?=
 =?utf-8?B?SFB4UlhWd01DRTgzSEE2WTBZY1lYaEsrWDl3NTFScUIzeGdib2I1V05DZ1Na?=
 =?utf-8?B?ZHhFcjA1KzVmaHhKeTFHYjFCSFFuR25YV3NIbStsd3hSc0pGakYyMWRMa3JQ?=
 =?utf-8?B?VHc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	oYeai4fcZeMneasruaRt6/egMzI+kvEo3bPFmsOp+mYbrvreGltJ28DNfETIQO82uPjbs3LRNzqDKVBMx7Q322ahBqq0HKbnMJKIKzyhh+mTQauzzEKOQd9j/jgue117HCpOwcYE+s2YbMmk9arsBYsAv6ZNdfyDyWymKSldWcJ3x2tKLF3pne0yPbVE1rqV/RjEKhN9gL3UwH394SfzvWas0qUXSK46ohZ8gUXIbJNj+rseHB5+G4fzaA21GeOhqWfCtsGsfYAbkSJn7R6fW7eXWtTUGGAhvhklWzEgQCZiOqx/y9KIGv7sqCJVTwfW/psWU8OsMVr0nHmSSIKAYxBeJh3j+ieH88WeNBmR+brqD61/Wcmpb7abUSxg9XAcC06Oc5C1PVpSEJ5CH+2rTO4O7Sb1qSNIscfu51ndU+v/2wgQSbsAluUJtbPSGdI4oVreXFl6UgWdAOQoY6aGnGWvwRY24FPt+2f5zrSOZPtKPdsUq9rkUL7aKcyDXmJ1cULbs0PVAVkuE3bzk7FjqezQuueRabaCgxhD5pdqP358PrOSSH65Ka+vQvk+cpOadaQIAwGsrMh6hNrtHSddm/kQQpsp4d6/3OEpnpb6GEs=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9534e64-6081-44d7-4c02-08ddb2bea624
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2025 01:30:06.1795
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f1C/khXoil32L7oVSgfOVtv29LN3Tz2zDAvP1886syOQrUeg6iI98ZSULQbj73CMRb/1tu7BXGLSKQhk/qW6JDD5jnHaEBGrp2Wc7251Wbs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR10MB5014
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-23_08,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 bulkscore=0
 suspectscore=0 adultscore=0 malwarescore=0 mlxscore=0 phishscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2505160000 definitions=main-2506240010
X-Proofpoint-GUID: iw7MOYKACXaxWnojKUt07vR8gyNXTWpO
X-Authority-Analysis: v=2.4 cv=CeII5Krl c=1 sm=1 tr=0 ts=6859ffa3 b=1 cx=c_pps a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=6IFa9wvqVegA:10 a=GoEa3M9JfhUA:10 a=NEAV23lmAAAA:8 a=8r2qhXULAAAA:8 a=8AHkEIZyAAAA:8 a=_abdVw5KK75gjJrfq7IA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=LLZfw03TF3EeWW-aypcA:9 a=OjBMN0Fc8twA:10
 a=ZXulRonScM0A:10 a=8gvLZcY7Nlvl4CGD_6nf:22 cc=ntf awl=host:13207
X-Proofpoint-ORIG-GUID: iw7MOYKACXaxWnojKUt07vR8gyNXTWpO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDAxMCBTYWx0ZWRfXxiIWiudAlM5R CAodK/zLtCE4SQOAu9+cIeXS2ApnJSOZubP7sv++fFpLB2o+XcbHzvrLixKqwDEVoiu0wxQoUKJ DbDqHVq6tSzKo9bzSRMYSiIasu7Xqf+JnxRJOaaroY/MgtlgcDE8gjw3Szb9xVb9y4/zZzBWEKp
 Xf5hcvUTFvBDoxQ+js99rUNtWXURO0zFi8iiLBKDFEChzGcU8YhiLQAWcYxE1f0vgxGpcypPaRD 0jaEtqOsdWAedJuk4t22Qv8u7N6VQtEBWN5hlDlVwsrQ6hI0K2YpvQAGZyt6Zx3NxaVb59IpzCZ h6nSE1mHxuY/My5uQ99JswyyqpbiOuj6yq9cWvl3qB7vzYOcZY8KHKtEIDW7seT89fyud1IKhuH
 BdawuT6xfiPiA6wQfwOFRv7lWeLE6KB8Z5NtbVvv3WWOxMz2drBxWoTAXpcHlvcL6tSyVM1S
Subject: [oss-security] CPython: Multiple CVEs (1 CRITICAL, 3 HIGH, 1
 MODERATE) affecting the tarfile module

--------------IkLzKPPZxydJKeSxd0pJuIWC
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

It looks like the following notice never got forwarded to this list.

A followup post added:

> There is a correction for the mitigation. The mitigation code CVE-2025-4517,
> CVE-2025-4330, CVE-2025-4138, and CVE-2024-12718 is now provided in this Gist:
> https://gist.github.com/sethmlarson/52398e33eff261329a0180ac1d54f42f

and a second followup post said:

> Correction for affectedness, an earlier description of the vulnerabilities
> mentioned that only Python 3.12 and later are affected, however the tarfile
> extraction filtering feature had been backported to earlier Python versions.
> If using extraction filtering in versions earlier than 3.12 then that usage
> may be affected. As always, please look to the CVE records for up-to-date
> information about which Python versions are affected.

Google's security research team has also published a Proof of Concept for
CVE-2025-4517 at:

https://github.com/google/security-research/security/advisories/GHSA-hgqp-3mmf-7h8f

	-alan-

-------- Forwarded Message --------
Subject: 	[Security-announce]Multiple CVEs (1 CRITICAL, 3 HIGH, 1 MODERATE) affecting the tarfile module
Date: 	Tue, 3 Jun 2025 08:01:26 -0500
From: 	Seth Larson <seth@python.org>
Reply-To: 	security-sig@python.org
To: 	security-announce@python.org



There are multiple advisories (1 CRITICAL, 3 HIGH, 1 MODERATE) affecting the CPython tarfile module.

## Bypasses in tarfile extraction filtering

These three vulnerabilities are all different methods of bypassing tar extraction filtering which is a feature in Python 3.12 and later.


You are affected by this vulnerability if using the tarfile module to extract untrusted tar archives using TarFile.extractall() or TarFile.extract() using the filter= parameter with a value of "data" or "tar". See the tarfile extraction filters documentation for more information. Only Python versions 3.12 or later are affected by these vulnerabilities, earlier versions don't include the extraction filter feature.

Note that for Python 3.14 or later the default value of filter= changed from "no filtering" to `"data", so if you are relying on this new default behavior then your usage is also affected.

Note that none of these vulnerabilities significantly affect the installation of source distributions which are tar archives as source distributions already allow arbitrary code execution during the build process. However when evaluating source distributions it's important to avoid installing source distributions with suspicious links.

Note that when extracting an untrusted tar archive without extraction filtering enabled already allows for arbitrary write access outside of the extraction directory.

* CVE-2025-4517 <https://www.cve.org/CVERecord?id=CVE-2025-4517> (CRITICAL) allows arbitrary filesystem writes outside the extraction directory during extraction with filter="data".

* CVE-2025-4330 <https://www.cve.org/CVERecord?id=CVE-2025-4330> (HIGH) allows the extraction filter to be ignored, allowing symlink targets to point outside the destination directory, and the modification of some file metadata.

* CVE-2025-4138 <https://www.cve.org/CVERecord?id=CVE-2025-4138> (HIGH) allows creating arbitrary symlinks outside the extraction directory during extraction with filter="data".

* CVE-2024-12718 <https://www.cve.org/CVERecord?id=CVE-2024-12718> (MODERATE) allows modifying some file metadata (e.g. last modified) with `filter="data"` or file permissions (chmod) with `filter="tar"` of files outside the extraction directory.

## Filtered members not skipped with TarFile.errorlevel = 0

When using a `TarFile.errorlevel = 0` and extracting with a filter the documented behavior is that any filtered members would be skipped and not extracted. However the actual behavior of `TarFile.errorlevel = 0` in affected versions is that the member would still be extracted and not skipped.

* CVE-2025-4435 <https://www.cve.org/CVERecord?id=CVE-2025-4435> (HIGH)

## Mitigation

The recommended mitigation is to upgrade your Python version to a fixed version or apply the patch(es) linked within the CVEs. If you cannot patch or upgrade, rejecting all links with the parent directory segment (`".."`) prior to calling extract will mitigate the vulnerabilities below:

```
# Avoid insecure segments in link names.
for member in tar.getmembers():
      if not member.islnk():
          continue
      if os.pardir in os.path.split(member.linkname):
          raise OSError("Tarfile with insecure segment ('..') in linkname")

# Now safe to extract members with the data filter.
tar.extractall(filter="data")
```

Please see the linked CVE IDs for the latest information on affected versions.


--------------IkLzKPPZxydJKeSxd0pJuIWC
Content-Type: text/plain; charset=UTF-8; name="Attached Message Part"
Content-Disposition: attachment; filename="Attached Message Part"
Content-Transfer-Encoding: base64

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU2VjdXJpdHkt
YW5ub3VuY2UgbWFpbGluZyBsaXN0IC0tIHNlY3VyaXR5LWFubm91bmNlQHB5dGhvbi5vcmcKVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBzZWN1cml0eS1hbm5vdW5jZS1sZWF2ZUBweXRo
b24ub3JnCmh0dHBzOi8vbWFpbC5weXRob24ub3JnL21haWxtYW4zLy9saXN0cy9zZWN1cml0eS1h
bm5vdW5jZS5weXRob24ub3JnCk1lbWJlciBhZGRyZXNzOiBhbGFuLmNvb3BlcnNtaXRoQG9yYWNs
ZS5jb20KCg==

--------------IkLzKPPZxydJKeSxd0pJuIWC--
