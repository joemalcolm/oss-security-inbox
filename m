Received: (qmail 15840 invoked by uid 550); 3 Jan 2025 21:31:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15736 invoked from network); 3 Jan 2025 21:31:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2023-11-20; bh=vDPuKoaNhUPiZNN9XJUvYxu6UYbZFlz/fP76wizfHro=; b=
	P5VGRSwbJ1feJgxkdNqUx1Dim92Z8cs2Bz1ky9/YHXPepKv6lP3VaTuA+yZfbN1g
	QNY1fJ+PbvPXHnHzhH4fNg1/5WfWALCs1QdO/zM8WzCBpwoZzPixmKn5iNiRx5Cn
	0KnJGQwHYBAYgB02Xc6aOPEpcGkFqu6PUBRbLEEEykjGtS74zFt08wnJ7P725e8o
	znELKaPLXcb8eUd3+kj0bQqNVhK1T4cgNZ0HlOgeLeMri0SzSLOzjxvvn+R6eHQO
	HNknLVe+jy2rh8vPzT331aX1c9zXKeet4HVcG6NaXQ5XVSMaAzMtEADS0wW8HEkh
	30Eum6SLTddEXQXSU1LPCQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yXIVUVc9FYbj9ShfQ7700SDKSq19St2etkH7EC0Zr700bDPaNmaf19YVF1a94h4alrFT43h8Tk0PaOXTsUWz9U+2TqcaCU5lRGT5c09fPHVs8JGWygFVotDwmyLQ0oR/kWmsIq1iWnCD3TShXdKBvUw1tPFQSHO2/0WCCSWJo+72lco6YqRjRG2FEw8Phr3CEJC3fKKxzlRzFmfFiU+/CpbL6V8ifajDggpkQL0QWERjpIwi4xLc3W0qqHr1NEm3vhDbD0JW5Mum1nExb9tlF9ND4js7t7b5wwoOVwawKY5Iskh2fv5JtOKyQHmZQ7ZKXUHLnCKfPfgJlY6cSIkCmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vDPuKoaNhUPiZNN9XJUvYxu6UYbZFlz/fP76wizfHro=;
 b=bJsBCYIwamtQPbbve1WLItMwOYdG0xFb/knFCeA8QysN3+E9Mcrj7md2VHx1aSF9XJ0RTDD6v+/TV5bQH1b59jCqVIcduwGyXcImOjt6I9pbZJcl2BlnmXeO9EWbzKK/Ulsp7lffHfeXxrU6d/6KbLa7JOksaMlAKMd3vZoIyONGjJDBgYEk5fWRvW6+rz9cv1NIzvCZo1ks31E61B9E0a3zK1vFG55+IJtioA+rKekUk9WaTp0zy26t8E5V81p7LSgYEQuN2zo4DPsCFgN0mlyUOZ3obdh3rUOLgquXHWZNTmO5VZDjpxS4Wb6RRqDuVwi2y3RxgqYfDR6bYqOHXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vDPuKoaNhUPiZNN9XJUvYxu6UYbZFlz/fP76wizfHro=;
 b=vzKkz8a5vp7PqZtFyKbLd0gT7otOy4SgZ3ymbzOAagJDd/Orhksiqi+s6+IxsFRJZEQCF0a0EaESuoOA6+IQqiQY5fYOgCQzy9eKrS/ZjN8vkJq1/K9H+zbv/SPG4YuftkaRxkdjzm7mToyTuSchrck1sUAFgNS1Fk30/TT0z6c=
Message-ID: <ad5128b0-26ad-4fe6-9d91-1a2ac04d190c@oracle.com>
Date: Fri, 3 Jan 2025 13:31:13 -0800
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
References: <2125e253-9551-43c3-81b0-cb5050ab1964@oracle.com>
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
In-Reply-To: <2125e253-9551-43c3-81b0-cb5050ab1964@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO2P265CA0393.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:f::21) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|PH0PR10MB5756:EE_
X-MS-Office365-Filtering-Correlation-Id: db1ed33c-84b2-4166-6589-08dd2c3df53c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?Mnp4RDYvMThFM2lsTWtaWU1UeHJOTXdZNzZVcVNxb0JidUlucGg3R2xkMDRG?=
 =?utf-8?B?WlVBVGJmZHdsKy9hS1dBeW5OSThHdDJsM3g1cFc2TmZiUm9BU3dFUWN5RkpM?=
 =?utf-8?B?Y2wwZnNOcDZCL3Y3QmVBamRnQkVlTVdneWVFenk5N1F0SHpwNUhxQ1ljOHgx?=
 =?utf-8?B?d083WlJTWUVqZzFJeEZ3OXRacjkyVDJGemRvS0dad2JtUDdWSnNhRlFZTWVZ?=
 =?utf-8?B?WFlrYzJIeDhwL2pIRUxCcmNzM0x0ZktDL1ZvczFQSWVwWnNRcDZtekFZSjZ3?=
 =?utf-8?B?SkhQR3lBVXFiZHNxOVNDK3U1RU1ReisxUnl2alpTOUhJaFNQS2tSS05Sb3ZI?=
 =?utf-8?B?cGxWM3B3YW1WVWZGQ2Fyam5Kb0FpaXNUMHV2VGxOeWJZMEQ2dW9UQkdUbU1H?=
 =?utf-8?B?YjdiMnkrTmZzd1QrUlFCeVduS2J0cm1BU3k3ZERaNUkzMElPWkRUc0FtYjVT?=
 =?utf-8?B?dVNUVnhtcDhxRks3NGZpa0xhWXFSS3FRMW4rUzFQVXdmR1NZRENoWFRzbkZx?=
 =?utf-8?B?L0s4ZXdSSDJ4VWlwbC92cFBwV0ZMcFhuaTFsMGNDYnV0TnBSZjV4ejdIb2JC?=
 =?utf-8?B?bmEwRWs4eUhSMHRlY2ZTenU3cUlydTlZYjRteEExTHdNYlhUbmRTU1VvTGZt?=
 =?utf-8?B?eDlDUkNEYmp1L2NmdWdvekwzSEhXN3VXalFEU0w1Vmswc0tPYXJ2K1gvb3pp?=
 =?utf-8?B?SkRsVnoyWXRBTkNiYTlSYUVmdDA4ZkNGTDkxcVYxSjZYQzVyY2w5NFMwelZG?=
 =?utf-8?B?ZmozdTA0ZE1OYlg3dUw2aWw2VEdxblNDb29FV0xxZGxFOU5DUUFsQ1FSMlNH?=
 =?utf-8?B?ZG1EUU43dldmZUdZeDNFNnV6ZUErM1dDTFlYWHVNUjNjdjdiS21ocXNUOWhV?=
 =?utf-8?B?UzlnWC94VFhBR1BmaUtmYVhXUDN4SzJpNWZIdzY4Z2J4akZIZkEvM0ZxcGl3?=
 =?utf-8?B?ZXlIZGFIMWVvU0hkbHRWaWhVQVdQbUYxUHZEUGpwNDh6ekdjOU82RkRNdDA2?=
 =?utf-8?B?ZGFqVCtXeVFBWERLSTJKOWMxdER3WmZQTHJIUFZpNE9STFBQT3FpRVo0bzI1?=
 =?utf-8?B?OVIyempJakdyVzRiUnd6WEh0Y2taYkN2L01kbUdONkxlWndEVDhidk5rUWVV?=
 =?utf-8?B?KzFGN05KZXFQbzBvSEpQcFJSKzdCcEdVaW92eEJGR1ZJRnJJWVhhcThuRnZE?=
 =?utf-8?B?VktNbjNXTjJmeVBOWHMyVGk4V2t5eDVWME1PY3Z5NEVmcFRnaXZQK3lNdWdF?=
 =?utf-8?B?dW53UzduNDVZcWU4Q01BNEpjcjliYlRYS0doSFpYNFhMUndSZzRLZmQ0cGJl?=
 =?utf-8?B?bUtQV1daa28zZ3NTSVlhVUhoTUhyOHRycFcxS3R6OTllakl5bEMzM1NCcGFx?=
 =?utf-8?B?TDhZUDFKSDNtYWprVnBrWU1HYkdBRUltM3poZGRITU9FYXZqbUpkTnZqMmMz?=
 =?utf-8?B?bXpUNXdEK0Vrc0QycGJiVHlQNm83V2Q1TlRrYzRTVTF3aG5jQ2tjSC9Ja0xR?=
 =?utf-8?B?dUpjQ2hLVE8wWFlCU1JvOTZXSkpnS2Q1WXdhYWdrcFFKaWxnUXVvTGMrZUdO?=
 =?utf-8?B?bXhHRTg2RHpYb3BYcHhITVB4T015NFhoRytpZ0UyblJDZVJTSHluZFJBdTVh?=
 =?utf-8?B?VmhjQytJZ25aWHlyWkN0NnFXKzNYQ1crdnYvT3N4WG9qY0pORkc0TFpwUGJN?=
 =?utf-8?B?OUc1dUpjK29hd213dEJSWDlVdStvYWFIM2VVVzYrOTh4eHRpVHptaE85NWR4?=
 =?utf-8?B?MEpqcnpveEhra2h1WVMwNkZyWUlmY2xsVHZpdTArOU5VYnBORzN4bisvSVJt?=
 =?utf-8?B?eDR1MXBSVUZXN0JCcXFNQT09?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?czVCQmp4TWlpd05nL1B6bE9CNUZ4NTlZMmlwSDg2MmRNWEE2bFQxT0w2RnJI?=
 =?utf-8?B?a0Jkb3Bid3gzVXkxOXNuNE9PUFM3eEYxbE9TRml6S0l0MUNyMElPOERUZ0oy?=
 =?utf-8?B?Ui9rWHhVK3VMTVJOcndycjI3UzN4TjdRNkFEcWprYmJwOHhCRStpMm4wbnN3?=
 =?utf-8?B?NFVibTFZZlV4djVWeEVQeE9mWmtYNzA0dG10bmZpZ2NnaUJIOEMwYlBXWUVH?=
 =?utf-8?B?a3dhZ3I5bVZQaVlQdktFRDNRb01PSUtCOW91UDhJb2JaU3h0bU1Fd1YyS2FX?=
 =?utf-8?B?dDcxZyttd1dpcEY3WWp0d1FRWGZvQUZxTVdNT1VJYm94ckZ2NzZRVDJFV1BO?=
 =?utf-8?B?enZLOHIrVGQxUWhGRXpvY0J1OUZTcnNNZTNaOXl3ZHhqV29NZy9FVnc1NEFU?=
 =?utf-8?B?b1RaOEVNeThMYUx1WTFWR3psRVl2K1FHWmZ6YzVYOVA1WjZNTDJqZmYrRUNN?=
 =?utf-8?B?TTdKbTExRHNCVlNiT3F5RndxYi84YXJjM3ErZDF5OHZ3cUxZL1NlNGN1V21l?=
 =?utf-8?B?NnA4cTdPaWxSbHZQODVZMHV6NGpGUHhXdGs1RXZMN0x4eFZxRFRNTWxtajBj?=
 =?utf-8?B?QWxkOHBlUWoxaTJNNmRzczRYSkNlSVhOeGxVemVrVGlqSTk3dXdTQTBTOVA0?=
 =?utf-8?B?bzJLbDgzTERROTZpOFJvMEpuWkdDbGZZU1U4VVZZVE1ESVphTnZqU01yUHBk?=
 =?utf-8?B?dTJ1M01Na3BGMkdzcXRJc0w1eDQwQUZHSlJBTUh2WnozOTZsMUhlZXBpSGlt?=
 =?utf-8?B?WXluZ3dOSVZhZFF6UzNvNWRJaUxHcWFndUFPdzN4VnJBN1ZORVpkdUhlaUJa?=
 =?utf-8?B?YzJyb1NMQXlPVENRK3hjT2xmd0E4dUFWcTNyYVBwU3BUT2xsZ2tQY3pNMEZQ?=
 =?utf-8?B?TmRIT3U4NExTY21zYW1JaER0SkZWMzBMWkpVNmtpb2tDblFoelFxRmd1WmhO?=
 =?utf-8?B?NEZwUDg2bjRGYnZSLzdPekQ3WVZnT0dTZjNaU3BpSWtwUytSWG9KZjY5bDhE?=
 =?utf-8?B?b3lQRHlOazA2cVduYm5uWWs1K01PYnowMmhna0tPbUxzVnczd2dBUVZBT2pi?=
 =?utf-8?B?UGNuSzBEdEs3SGZVVFc5Y0N5Ykdla3I0M0I4dkNsOGVnVFpoMlpBVEVDZnF3?=
 =?utf-8?B?VkFqWnFNclVZcjJBRGlLWVNvVStyT0JSYjlvbkxyTVFLNzdDNENvMG9QR3Fa?=
 =?utf-8?B?bkFCZHNzWTkvc2gyYndXQWhpdUpKeTRXWXlmSWhWSmR6cnVMN1NsVFZFRksx?=
 =?utf-8?B?eGZBUm1VUXU0Sm1hVDhSYndidnA2Y083bXJTMzV6U2lRQ0RPZnUzQjZsRVhi?=
 =?utf-8?B?TmN1WUJPMjlua0xEMkhrVFV5UlIyLzd4ZGoxMmR1OE1zMzRwYUI4OWkvem9E?=
 =?utf-8?B?aEpBVWNwa3ZvQ2JKSEg1MTVpbFhHMFVyNGd0WW1FMlZyVExMYXNwTUJiUzB3?=
 =?utf-8?B?Rk93MEZGWkREVlRwZTlUeXlKSDRDSm1EUGowenRWUnhJb052S2NrVE5yUWNX?=
 =?utf-8?B?VXRrZzJtYzd6SEtsT1hRTW1ITDc0MUdaOW5NcS9kMEp4K3dENDk5blNpZUtn?=
 =?utf-8?B?bTNOZDQzRytob3UyWGc5dXZDa0dwTzdYckE0NGNhbmpuU3lUVW93TnpoS0Ew?=
 =?utf-8?B?cW9tZEhMSUlIcGQ0L3E1TGo5THF0aTlhZ1BmeGx6N0hKbFo3cm5rOUNENStK?=
 =?utf-8?B?S0VXL3NYQjFuYVhuSmkrNjBwRzg1a3hOZkhaVGVNdGtGOUJCU1VMdVNqS2lq?=
 =?utf-8?B?YTQxN09HMUZPL1Y5OVArUFFsZ2ExZzlTM0ZQSWRyQXZDcG94UjVaanlpVDAv?=
 =?utf-8?B?UXJxdHVpTHRzTDJWRFlsU2R6WG84VWtQY2JSQmRtVnNZZXNKUzBkSVNvdTcv?=
 =?utf-8?B?alVKdXJVMjFOQ2E3QlgrL2pNclBuY2xabitxR1JIQ2pQMFlqbUtxVS9OQWFz?=
 =?utf-8?B?MXc4U3JnWXBDemo4M1F6ak5GYmpLNjcxbStzVXNaL2p6cUVVNWpMTHBGN1E2?=
 =?utf-8?B?V2hlOHpCckJPMDdDSzQ5OWs5dFYxTjlzS1QvMjZnbjRkY2hUNzNYdlo2OHVh?=
 =?utf-8?B?SkJ2dzkwM1hLd005b2xXMFZyc0ZqOHVmZEc4aWh6NUgyQkZJV0ZDK0lHNU5S?=
 =?utf-8?B?TkcyT1F5YVVFZDRSYUFlUjMrbHVtN2QyL2JNdlp3ZzhaMzFJU1VCeWRjOTZN?=
 =?utf-8?B?aEE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	zlHtrijInoqhMru7yAH7CZj1lBdgHDcpkYT2rGKORLWv8ZKPrSbeG2tQQL23Dsz0hRyRdNpVFdHebmcDrbRbuyN5jTjxCmoRRg05mrV88tHFCwDEJVNNKOC83t8kPWqyYAEMEI5X0/8t4HTCwYt9PN6k4DEC446IpElHaDy7k0v+icyITgwCXHJPjPb4GFZcD/HTPH1Wv8k9WEd77jCnlOjTzNWdi4hjZC9EBu0YKvY+XGCwlGOBqnU39Js1bdMdz1FwLHah8KvRmwdL1nAYNA5ARrV5wBQtOqMPkSOF8gdhvoxpKbHor+0Pma44NYe5ZV6+nXfhVa/ZGLsRkmlpyBfDXzYLkL9u8vtWO8zt0yaYcxSVgdGaPjZ2KihNHT6LhcVzqc+BuMTZCBsAS6nc53KhuA1TZ1ZWRrimFQUraY4bTIW45qwmem36U7sck1zD06me6e+v+b18xoVfe10nxv7N1DH5toGOL41YQJ9kwhTUuDA4L7wE77SVBmCT4yc/CPBXnrQ8mRbeOtKU5MM+4vSj+smGAa6z1ibNqjGKwR41bN8WFc0+6z2CA2FChwAQ6ulBZlaHCzlD2V7y06ok9sZ/sRGMTrN79cnnKuACZqI=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db1ed33c-84b2-4166-6589-08dd2c3df53c
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2025 21:31:17.7988
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EGH+AlkcpMs7FouQMq6BSeHrcuUqBzouz46l9ZHJOPQbXRTNpgHYG2RbdAVpnKqrOyJmPhaCaDfYe0ifuYXz7ND757GwK95cQa5i3rSj0cc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB5756
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-02_03,2025-01-02_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 phishscore=0 spamscore=0
 malwarescore=0 suspectscore=0 mlxscore=0 mlxlogscore=933 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2411120000
 definitions=main-2501030190
X-Proofpoint-ORIG-GUID: CojGIS_C7Xa2VV8Tecyo_45p7pLF62Qm
X-Proofpoint-GUID: CojGIS_C7Xa2VV8Tecyo_45p7pLF62Qm
Subject: [oss-security] Re: GStreamer 1.24.10 stable security bug-fix release

On 12/13/24 10:26, Alan Coopersmith wrote:
> https://discourse.gstreamer.org/t/gstreamer-1-24-10-stable-bug-fix-release/3683
> was posted on December 3, announcing:
> 
>     The GStreamer team is pleased to announce another bug fix release in the new
>     stable 1.24 release series.
> 
>     This release only contains bug fixes and security fixes. It should be safe to
>     upgrade from 1.24.x and we recommend you update at your earliest convenience.
> 
>      Highlights:
> 
>      - More than 40 security fixes across a wide range of elements following an
>        audit by the GitHub Security Lab, including the MP4, Matroska, Ogg and WAV
>        demuxers, subtitle parsers, image decoders, audio decoders and the id3v2
>        tag parser.

The GitHub Security Lab posted a blog with more information and links to their
advisories at:
https://github.blog/security/vulnerability-research/uncovering-gstreamer-secrets/

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
