Received: (qmail 17978 invoked by uid 550); 18 Apr 2025 18:55:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17939 invoked from network); 18 Apr 2025 18:55:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2023-11-20; bh=N75Je7kUykdTxxmE
	MNgvX0ceNTC1Yee8u+bdu6tWEYE=; b=UeIiahvC6Jx9OlEm4az9E3Pq3waoNgkH
	jTkcumitsCqawJV7s3bz5XgxZin2pkEywpy4UqeIFoVr3fdX8kf/sKJCvYbvrc8P
	A1VVLYRv6zGHY38FSPoLAP2+QMdhfM910Jdruekhh2sS9yadvN9jY5PUSVKAE0rm
	2qOsFi/H7XVH5TsZ1BTBEJMIaAtFyBCOGQFhq/c5MQiTkdc9RnzD5on1j6Z4s97b
	xCkXiwJnEkCtbhoZGBUv3ngIuO9rlE6NZhLt4L7ENJnOOdr4ylk4WDqDhVqbuC02
	fqsapDXPb3uU2yXc6N133E0bHtgmHo5c059oSTb+JMHqy+PGk91oMQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GB2rTRHnWQg+cni08SnVAtpemfI9hY98N4WwLHy/5cTVgO5RP765hxZ7b/2N3Fu6/9MZ5kAz+AohWnupxAOLZWqfxJRog81CgnDoMDpzGNffvmwq9FWbzvRiijJTo6di2AA0I32iX8BkWFgAEf4+z53uW1nZn4Mgt4CsYYdH6uh9683uhXun6se3RZSY8YXo6SnU8VhX+JACpt17UxT333zbYRcBOcD/ZIJHAlbbUZbCMqIDN/K4Av1ZiP0DNDp8NgJ0kPH+JjIaRdNCSGfoOXRvv+mAKA9fTh/wsoRM56lShzF48odPUVjhl2VqFcL9Fy4jHVZlwgQxVf3J9TD0Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N75Je7kUykdTxxmEMNgvX0ceNTC1Yee8u+bdu6tWEYE=;
 b=SA+NFB+rSeDI8OuTZArml5mJyT35hrn+JSRqOFalXbl9nenTEyYQ9FW+P1Kr5SW2Exu633XyDMGzB34zJ5BaVab/kUcnjUBW8F4kX2IGc77l07LXowxdeQUwVc5E6M9S+xZ0dEYyu1sfdUJ23MeazLKjlaheM08ee5KgNFashaM8rfNbBYMjIfF5LYqyjstVjTtG9A80zvPf1CAIELi9CUXuPwK7QWsvyCcjR48+w5El5SzwAXgCVJnb8LUvLwW5wUPYz/ZUexWIYlu/HynfCP9480JOsjvNmldCj/X6Dc+9NwNJ3TIbK4UbQLyLs5YkfuoQYyZbeqUAXg/xjVS7qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N75Je7kUykdTxxmEMNgvX0ceNTC1Yee8u+bdu6tWEYE=;
 b=BJyRHFOJH+wH+KUjyYhRhthIo0U3j+jkd2SynU06hmc+5D9RjNe/Ng8Tw6zl9XMu9hRWnPl9o8j4wrUNLE5bV7lpquobbf9CIgBmNCfNSsCgDqGaiGLOteCjquQ1quvZRRbzW+sUTrUscQbD87V77ekliQGBoK+ubY2seaLmqHM=
Message-ID: <cc283d3e-5a45-400b-97d6-78dc176fe4bb@oracle.com>
Date: Fri, 18 Apr 2025 11:55:01 -0700
User-Agent: Mozilla Thunderbird
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
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR13CA0186.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::11) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|IA1PR10MB6097:EE_
X-MS-Office365-Filtering-Correlation-Id: f38b1ac9-0484-4fae-71b2-08dd7eaa8786
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?S0xpakt5RFM1MXB1ZDFlYlVaNk0vU3RKWDNIeFBpamN2QWpqUXh2eHliMGFr?=
 =?utf-8?B?UlBZRGxxUzdMRTFVcHFiNitWaGhSR29HY2w1ek9rMU9Db2NQbXByVGdEYndI?=
 =?utf-8?B?OENFek02NU1HY1dnZERTTExjVTJVSkRyN0tvUklPRmVNdHd4MmhRNkNuUFA1?=
 =?utf-8?B?UHJHVXk4Zjk1aHFUWmp6YmpzR3RaRE9vdXZwQUpCZHJ4L05ZUDVYNmhKV29X?=
 =?utf-8?B?RzBCQ0UzS2RtazZ5SVdVdld4SjFUci8zMmJkMHBHSHBCc1pQakE3b1hnajcy?=
 =?utf-8?B?cVFaZ2dRTENYTEhFUlNkUDFWOXF2UEZabjdtMUlOUkhJL1V5MkQxRWtYYVky?=
 =?utf-8?B?UlRVUGgzcGhNMHNVdDNtZXl4RGQ2eFMyb0l5aHZUbzBIbWJ0RmRHdFlWM0Mz?=
 =?utf-8?B?UWhMU25YZ29wd0s1U0ZDbHJOR2pVVjh3QXdnOE5QMUhidUsrWFg1S1p3ejhZ?=
 =?utf-8?B?a0N0UFRqM3hSTWx3VDV0bXdjWEZxQWx4VWVjalpsNkgwa0dSWktVeUxVUnpz?=
 =?utf-8?B?eGJ2d3Y3a29TaC9wMFUxNGI4Q0tQS1ZIbG1VaHBDVERMWnNibGd1Q3NySHVR?=
 =?utf-8?B?KzVuUDZNOFZBL1oxRXQrNWMzZlhkNmxYUyt6Q1Jyb1YwQnhkWnVmQXVtRlcw?=
 =?utf-8?B?VnZXR2hFUHRwUG9sdFhZU3h1TkFmUHpIbVJCVTFORnIwbjkwcldjcnYrVS9G?=
 =?utf-8?B?N25XeGMxWkJ5eDY0aUZLa1JSZTZQc3RITkNkQXVJcXloSHhCSlN3RzhmR3pC?=
 =?utf-8?B?MnF5OWEwaVRYUFZ1MXgza1hrTXVxQ29qbE5NZHJLR2g5bDJqcXp3S0tDZE9C?=
 =?utf-8?B?ekh4ZEJqenBCUUsyWlNLbzBkNDJXb1VqUzlHV1dRUmxiZEN6Q0R3NWJrYkpQ?=
 =?utf-8?B?Z0dndGRrMXFjS1I1YlNjQncyVVlCaDVyY1lnS3JaTkZYUG4ydnNjMlF3Zy9p?=
 =?utf-8?B?Rmp2eDNKNDVyRStKbWZPZEZqMk1QMG1ITVhjUmxUaHZlaHhWN09id09VOHR3?=
 =?utf-8?B?VmVMeTZyQVFQZW1IdTZkNlN5TENmVCtnOUQxOTZpZzRGRkRWMFRtVlBMWmVZ?=
 =?utf-8?B?NHRqR25sd09QbXIyczVKVExXL1FTalZHbFlka01xSkJta25USzFMd2l6UC9i?=
 =?utf-8?B?T05rbTRVOEhDbFBjTWxodUNzNjMwemFqMy8vZFBFYlBsT1FCRTJ4YVB1V1Jw?=
 =?utf-8?B?YmMvOE1ZUDdJdHhZVlNMWU50eUYraEFRQmVrL2dKOUtYVXB3elQwUXpjcjRl?=
 =?utf-8?B?T0lHMUc0Q2wxYkx5MUpiSWpYMWRlR3V1VE4zRjFHV2x1S2JUQzVMcW4vZzVT?=
 =?utf-8?B?UnZsdVNYeXZoKzBGZi9SWVlGelV4NkRTNjNKd0NndjdTUkJmUE1nMUkxdEcx?=
 =?utf-8?B?VjRCYkUzT1VWUnZSUUd2RnVhNnBJNXdsWHBVSVdtc2NRcExGbkgvQzkwVUVD?=
 =?utf-8?B?eStIUDBsdUFlMHBtVHJ6aTBLaC9NUGUrRnJSTkNjRHU4MHhQNEkzS0lhZGR0?=
 =?utf-8?B?bFVBbHh6VktISklzQ3Vwa0o5d1RmcHAwNGFEZUFYV1EyemoxVlNZb0hKdTVu?=
 =?utf-8?B?Umw2RVQ0QjVMVVlFUm4rb3JmS3pxV3piMGFISGUzN081dWVhRUhwZEw5NDMx?=
 =?utf-8?B?N05FZUJQZzhrTFlwUVV0aVlyMk0rTGFuc05IT3ozbXRRQXJoZ3hSS3NDTW1O?=
 =?utf-8?B?aFQ3OFBMSXNMSEYwNDZDMnY2UHN4UnBnclhLbitob01uMjRJYWpaMnE2YWo5?=
 =?utf-8?B?SjFva054K1BzK0xkRUtWWkZrU3lGb2xFNDl2ZUFQbmphVnc3RlJyZGtzeTRX?=
 =?utf-8?B?UDQveHZLcUhpWXJuZDcvZ3FDSVFIZ1FzUEFja242NnZ3aVN1NFJXU2tzQURn?=
 =?utf-8?Q?Jmg0+5id0bJ/R?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?NTJHc3FQWEtkaEtmSFIrMjFCZ2MxZEFjY1BnTys5RjJIUTNPbE1acW5ESmkw?=
 =?utf-8?B?cUFBTE50eHRhUk05dW9mSmhKcXRVVkdHUEpuQU9XdXNqUEMzTkZ3OTdQY1dQ?=
 =?utf-8?B?bEgzNW5hNlRIbnovWmJCVVlldExwY2NBTVdnOWxoaXBOL25qaTlHM2JwVFM1?=
 =?utf-8?B?WXhYcEpkNERuZGtmT2JWM0l2RVBvWk9tdnhydDVZMU1VT0NBM2xCbWNUU0sr?=
 =?utf-8?B?MW5TUThyQnpUOXpMdGpDL0l5Q3pJYitmUnE2dElSc2NNTXFtdmNsS0pjcVY4?=
 =?utf-8?B?bE5Rb1FWeDBoZnMzRzg4b2xSWThvbUlEckR2bnltRjFmVEptSzVBT1JBcHBp?=
 =?utf-8?B?L0IwUlRwb0hLYng4bGxpTVhxVWUvSUNoVXpybU1RNTZWbEcyQWJzNG5BTkww?=
 =?utf-8?B?SlNERU1xamFmK0Z1WVZEenFYYVVwRThJTzlCTXVVNFBvNGRFTTEyZ09aZStG?=
 =?utf-8?B?RkphYmNzOUVPSzI5SFRLa1lVVGdXaFpjeWhKR2s5N0JGNXAyZTloeThoQW1Y?=
 =?utf-8?B?T3RQTjJQZFFpNVI4K3Q5a3VlZkxEcDZ5RVE4cHBBYWcrZHdIaHM1OC9HYjVz?=
 =?utf-8?B?djRVSEhFU0tOcGwwb1h1clBaUUFMZkNBWTk4RjZMKy9kcUp2K1M4a0s5Qzk3?=
 =?utf-8?B?V09XbVZSUU1OSTB4VlNOL2xwS3V0ZHM0KzJDcmIzbzlOL2RqdXBrNjlTQVo5?=
 =?utf-8?B?VUhFeW14YlJrOXF6V0Y0OHAvRjIxK3F5L0J1eHhoMXZxMERJTkRjeWNSWXp0?=
 =?utf-8?B?TTNid0thNlJRZ1lzMGhYY2lBQmxpRlBIM0RNaE5SQ2JrQjFIVEtoRk1hamxH?=
 =?utf-8?B?R1hqeHRvNEVmMUJYUnJ5blk2ZzBWV0tuMFNaOU0vUTFYczc4SjFjSVRleThL?=
 =?utf-8?B?blRKWUtpVXNsYTBzWit0S0hieUE3blZYSTZtMlBRaXFBOEYxM21kRWpHNWRE?=
 =?utf-8?B?ak9oa3JMRGdEYXpMQkJIRnM5eUEyektiMUI1U2w2R3dCcjQxdmZZV1UwTDFZ?=
 =?utf-8?B?VWh3NnBHNnl5ZlVEUXUxUTRiMDBpUlRXSFR6WXlzYmovZ2NyemdncEpuUCtv?=
 =?utf-8?B?c0xQMndJaTZSQmdzcW90N0d2eWppbUcwNDJSelFjaUZ1REY0TFJ3ZWpSRHJD?=
 =?utf-8?B?VVFrejAxWkQwTnBBZEdnQ1prT2c2MTltaysrNVVNVCs0aXhGM3loM3ZMcXlp?=
 =?utf-8?B?WTJLdGNscjdYZUNkNm1aRlJQWTRCU1BTZWtsQ1RkWVl2TUZ6RHNRMGxsNGRF?=
 =?utf-8?B?VkZjL0xWT3MydVZyVVM5c3QyL0xGb0pEOHdqVEJVY3pBUUdwNVZkUzgvTG43?=
 =?utf-8?B?RitoUWI4NjE3MTl1VHNDRE9BaVJtdnNYbWhZTW5XQzBVZjNleFh5a2FKSmJG?=
 =?utf-8?B?dFBlNE1FK2NBajBoamhOQU5scFEyaGZiT3FSZmNRRTVhaFpZaWN3VDV1Yk1l?=
 =?utf-8?B?SERXZEQzZ2dKMjkrUUREdllHNlJYbjZmQnI1OUdudFljVW9UMWlaQTNiR2FK?=
 =?utf-8?B?eUJzQnFveUxTd1ExL3NnMEQ0NnZrR0dNcjh6MDUrbUdjNHBQVjY5Q0YzcTJt?=
 =?utf-8?B?RHRVQmh2b25qTTU3SFI4ekp2T1BnVDBQTGdlejFJK0xGL2pwUXBXczVqamZ0?=
 =?utf-8?B?YnFXSDlVNWNJTlBXc3daUkZSd01zUUNCY04zZXFVeUE5bEVXaFRNcHdxbnkv?=
 =?utf-8?B?SXNUSTl3bmhpSi96b0pSTEdPSzc0NjRNcXNrdzV4czkzZjFaTVhCVk80MTBC?=
 =?utf-8?B?S2xJeWxEczFCRHFQcS9zalVuR0hTRWZScVpYNDdhcnhpSHFOcjlvUVFDZ1pa?=
 =?utf-8?B?eklZV01oU1N5NjBmRHI0LzBKRnBIYzVjWFdGcDNiMjJuUzl4MUd4SXRObmhP?=
 =?utf-8?B?TklRcnV6N21hYVZSeVRNK3krWTFaNklydVFQK3FYWmVBWktOeHNWWk1mZUJo?=
 =?utf-8?B?NTZiTXRydW9oSzhRRGlUVTE2Y1EwU3pwUzM2d3prbDNwaGtqWGpiK3dqaFpm?=
 =?utf-8?B?SUY3Wk9BN1A4Y3JIVHRLcGZSM0wrWmx6bTlsMm5Ed0pQNHY2RHRoTFROM3pz?=
 =?utf-8?B?WUxZSXhkVVhpWExFTjlJaG50UzhVMzQ0aFhhRnowcVpHODN2bkJkTFgwOHpu?=
 =?utf-8?B?RzBpc1RSaHdPQXZWMGNTcHNhWmNhWVBVc2Nwc0dZNDEwSXgwTFI5SW9wdm1Y?=
 =?utf-8?B?TWc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	ejFY4aF8ZWipWk6jRpcGOSNbL4ZhOvmYYiHTvCwG+j+snD+2EvqhG0Q6468tG6oX6bXGSR/crD0YhHjhcox5atV0kv4b6CE3fmuJy+EXeCW9Oahpq3zSj6p3STbf5eonplEVyY5eAc7Z2fKGlNBBzF9hOy48wx2Wcn5AVupvzcTUUf4+0KbWTo0ZTFPO6jlwN1Ooz4azRBj0Yp/QKgvQERc2bi9H5TyXZKjHmiTYVPXx9xqpCtqCgX19Vg/SC6LSu+NdUErxNXmCAj0fkljM3AmmqQ+mow3KxOilE2y7RZ655x1nCYjs2FooDV3OY74AHF4UXgRhYaRtqvgDJSlJl3NLSzoIKRozW+OiL7oiCfg/6nsvVODE3G5kRQi55uXLEV33KFchu62qNTs7xkz6z9f0ldl6XHd7ZKMvqgdRzT9/9HnYdzOMAeD9/gNJRwxYBuf8gmGYnW2FHdINKAbACfrzTD02kWlpwEUVShLOAWVXfyuwCEU7gQ4tpuFHasISqM/yrckuu/13cobqldmdFJH+da3XF4KOfM4paF5jO7uWPnvLMFcGVOC+AwPm2AGkAfd0lJMt6yTOi/oqyZaMHYyCEiTzG/uglOqAAc8hlBo=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f38b1ac9-0484-4fae-71b2-08dd7eaa8786
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2025 18:55:04.1463
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TPiyq06tbset84FD+KzcJLRB9V+piFja3c95TbDvjIbi1xxZIuAx0wggqbqcjOWzZk1WX++BllYe21bzV7uM1bGlyFfFLnkBpt910sg2FDs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB6097
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-18_07,2025-04-17_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 bulkscore=0 malwarescore=0
 mlxlogscore=999 phishscore=0 suspectscore=0 spamscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2502280000
 definitions=main-2504180143
X-Proofpoint-ORIG-GUID: exBllIY-T6LLanSlP7ajR3sdrRPZO9Hg
X-Proofpoint-GUID: exBllIY-T6LLanSlP7ajR3sdrRPZO9Hg
Subject: [oss-security] A bowlful of bugs in GNOME's libsoup

libsoup is an HTTP client/server library for GNOME, hosted at
https://gitlab.gnome.org/GNOME/libsoup

A number of CVE's have recently been recorded against it (due in part to
bug bounty submissions via YesWeHack) - fixes are available in the
libsoup 3.6.x releases for some, but not all of them.

Some fixes that also affect the older 2.x branch have been backported upstream
in https://gitlab.gnome.org/GNOME/libsoup/-/merge_requests/449 though upstream
encourages migration to version 3.x instead if possible.

CVE-2025-32049 - https://gitlab.gnome.org/GNOME/libsoup/-/issues/390

     Denial of service on libsoup via soup-websocket-connection through
     "process_contents" leads to unbounded memory allocation when receiving
     fragmented websocket messages

     YesWeHack Report ID: #YWH-PGM9867-12
     Date Reported on GNOME GitLab: August 21, 2024 (#390)
     Date Reported on YesWeHack: November 25, 2024
     Date Fixed: Not Fixed
     Fix Version: Not Fixed
     Fix: Not Fixed
     CVE: CVE-2025-32049
     CWE: CWE-617: Reachable Assertion, CWE-770: Allocation of Resources Without Limits or Throttling
     Discovery Credit: Ignacio Casal Quinteiro
     Additional Discovery Credit: Jan Różański
     Additional Thanks: Sovereign Tech Resilience program of the Sovereign Tech Agency

     The websocket protocol allows sending a large message in small
     chunks called frames. The problem in libsoup's implementation of
     this feature, is that there is no restriction on the total length
     of a fragmented message sent through multiple frames. Every time a
     message fragment is received, the message_data buffer is
     expanded. The problem arises when client never terminates his
     message, and keeps sending message fragments. The outcome is that
     the receiving process terminates with an error once the buffer's
     size gets too big:

     (process:26989): GLib-ERROR **: 17:39:20.346: adding 98303 to array would overflow
     Trace/breakpoint trap (core dumped)

     The issue originates in process_contents function in
     soup-websocket-connection.c when dealing with priv->message_data.

     Proposed fix (not yet accepted/merged):
     https://gitlab.gnome.org/GNOME/libsoup/-/merge_requests/408

CVE-2025-32050 - https://gitlab.gnome.org/GNOME/libsoup/-/issues/424

     Integer overflow in append_param_quoted

     YesWeHack Report ID: #YWH-PGM9867-9
     Date Reported: October 28, 2024
     Date Fixed: November 22, 2024
     Fix Version: 3.6.1
     Fix: 9bb0a55d
     CVE: CVE-2025-32050
     CWE: CWE-127: Buffer Under-read, CWE-190: Integer Overflow
     Discovery Credit: chamal de silva
     Additional Thanks: Sovereign Tech Resilience program of the Sovereign Tech Agency

     The likely impact of this bug is denial of service. Since there is buffer
     under-read, there is also theoretical confidentiality impact. [Triager]
     thinks buffer underwrite might also be possible, but is not certain.

     The libsoup function append_param_quoted is vulnerable to an Integer
     Overflow.

CVE-2025-32051 - https://gitlab.gnome.org/GNOME/libsoup/-/issues/401

     Segmentation fault when parsing malformed data URI

     YesWeHack Report ID: #YWH-PGM9867-11
     Date Reported to YesWeHack: November 21, 2024
     Date Fixed: November 22, 2024
     Fix Version: 3.6.1
     Fix: 0713ba4a and 79cfd65c
     CVE: CVE-2025-32051
     CWE: NULL Pointer Dereference (CWE-476)
     Discovery Credit: Anonymous
     Additional Thanks: Sovereign Tech Resilience program of the Sovereign Tech Agency
     (This anonymous discovery credit is in addition to Ar jun.)

     libsoup's soup_uri_decode_data_uri() function, prior to libsoup 3.6.1, may
     crash when processing a malformed data URI, resulting in denial of service.

     Report summary: Using a custom fuzzing harness, I discovered that these
     two payloads both trigger a segmentation fault in
     soup_uri_decode_data_uri(uri, NULL): data:.///, data:/.//

CVE-2025-32052 - https://gitlab.gnome.org/GNOME/libsoup/-/issues/425

     Heap buffer over-read in soup-content-sniffer.c:sniff_unknown()

     Date Reported: November 14, 2024
     Date Fixed: November 22, 2024
     Fix Version: 3.6.1
     Fix: f182429e
     CVE: CVE-2025-32052
     CWE: CWE-126: Buffer Over-read
     Discovery Credit: Ar jun

     libsoup prior to version 3.6.1 is vulnerable to a heap buffer over-read
     in the content sniffer's sniff_unknown() function. libsoup clients may
     read out of bounds in response to a crafted HTTP response sent by an
     HTTP server.

CVE-2025-32053 - https://gitlab.gnome.org/GNOME/libsoup/-/issues/426

     Heap buffer over-read in soup-content-sniffer.c:sniff_feed_or_html()
     and soup-content-sniffer.c:skip_insignificant_space()

     Date Reported: November 14, 2024
     Date Fixed: November 22, 2024
     Fix Version: 3.6.1
     Fix: eaed42ca
     CVE: CVE-2025-32053
     CWE: CWE-126: Buffer Over-read
     Discovery Credit: Ar jun

     libsoup prior to version 3.6.1 is vulnerable to heap buffer over-reads in
     the content sniffer's sniff_feed_or_html() and skip_insignificant_space()
     functions. libsoup clients may read out of bounds in response to a
     crafted HTTP response sent by an HTTP server.

     WARNING: the fix for this issue possibly introduces another security
     vulnerability, #422 (closed).

CVE-2025-32906 - https://gitlab.gnome.org/GNOME/libsoup/-/issues/404

     Out of bounds reads in soup_headers_parse_request()

     Date Reported: November 25, 2024
     Date Fixed: February 24, 2025
     Fix Version: 3.6.5
     Fix: https://gitlab.gnome.org/GNOME/libsoup/-/merge_requests/440
     CVE: CVE-2025-32906
     Discovery Credit: Tan Wei Chong

CVE-2025-32907 - https://gitlab.gnome.org/GNOME/libsoup/-/issues/428

     Denial of service in server when client requests a large amount of
     overlapping ranges with Range header

     YesWeHack Report ID: #YWH-PGM9867-13
     Date Reported: November 28, 2024
     Date Fixed: Not Fixed
     Fix Version: Not Fixed
     Fix: Not Fixed
     CVE: CVE-2025-32907
     CWE: CWE-405: Asymmetric Resource Consumption (Amplification)
     Discovery Credit: Jan Różański
     Additional Thanks: Sovereign Tech Resilience program of the Sovereign Tech Agency

     libsoup's implementation of HTTP range requests is vulnerable to a
     resource consumption attack. A malicious client may request the same
     range many times in a single HTTP request, causing the server to use
     large amounts of memory.

CVE-2025-32908 - https://gitlab.gnome.org/GNOME/libsoup/-/issues/429

     Denial of service on libsoup through
     server/http2/soup-server-message-io-http2.c via "on_frame_recv_callback"
     due to assertion failure when client sends certain values in
     pseudo-headers in a HEADERS frame

     YesWeHack Report ID: #YWH-PGM9867-14
     Date Reported: December 1, 2024
     Date Fixed: Not Fixed
     Fix Version: Not Fixed
     Fix: Not Fixed
     CVE: CVE-2025-32908
     CWE: CWE-617: Reachable Assertion
     Discovery Credit: Jan Różański
     Additional Thanks: Sovereign Tech Resilience program of the Sovereign Tech Agency

     libsoup's HTTP/2 server doesn't fully validate the values of the
     pseudo-headers :scheme, :authority, and :path.
     A client may crash the server by sending a malicious HTTP request.

CVE-2025-32909 - https://gitlab.gnome.org/GNOME/libsoup/-/issues/431

     NULL Pointer Dereference on libsoup through function "sniff_mp4"
     in soup-content-sniffer.c

     YesWeHack Report ID: #YWH-PGM9867-15
     Date Reported: December 2, 2024
     Date Fixed: January 8, 2025
     Fix Version: 3.6.2
     Fix: ba4c3a6f
     CVE: CVE-2025-32909
     CWE-476: NULL Pointer Dereference
     Discovery Credit: Alon Zahavi
     Additional Thanks: Sovereign Tech Resilience program of the Sovereign Tech Agency

     libsoup's SoupContentSniffer, prior to version 3.6.2, is vulnerable to
     a null pointer dereference in its sniff_mp4 function. A malicious HTTP
     server may cause the libsoup client to crash.

CVE-2025-32910 - https://gitlab.gnome.org/GNOME/libsoup/-/issues/432

     Null pointer deference on libsoup via /auth/soup-auth-digest.c through
     "soup_auth_digest_authenticate" on client when server omits the "realm"
     parameter in an Unauthorized response with Digest authentication

     esWeHack Report ID: #YWH-PGM9867-17
     Date Reported: December 8, 2024
     Date Fixed: January 10, 2025
     Fix Version: 3.6.3
     Fix: !417 (merged)
     CVE: CVE-2025-32910
     CWE-476: NULL Pointer Dereference
     Discovery Credit: Jan Różański
     Additional Thanks: Sovereign Tech Resilience program of the Sovereign Tech Agency

     libsoup prior to version 3.6.3 is vulnerable to a null pointer dereference
     in soup_auth_digest_authenticate(). A malicious HTTP server may cause the
     libsoup client to crash.

CVE-2025-32911 - https://gitlab.gnome.org/GNOME/libsoup/-/issues/433

     Double free on soup_message_headers_get_content_disposition() through
     "soup-message-headers.c" via "params" GHashTable value

     YesWeHack Report ID: #YWH-PGM9867-19
     Date Reported: December 8, 2024
     Date Fixed: January 8, 2025
     Fix Version: 3.6.3
     Fix: !422 (merged)
     CVE: CVE-2025-32911
     CWE-590: Free of Memory Not on the Heap
     Discovery Credit: Anonymous
     Additional Thanks: Sovereign Tech Resilience program of the Sovereign Tech Agency

     libsoup prior to version 3.6.3 is vulnerable to a free of memory not on
     the heap in soup_message_headers_get_content_disposition(). A malicious
     HTTP client may induce memory corruption in the libsoup server.

     Michael's note: theoretically this could result in remote code execution,
     so this is particularly not good.

CVE-2025-32912 - https://gitlab.gnome.org/GNOME/libsoup/-/issues/434

     NULL pointer dereference in client when server omits the "nonce"
     parameter in an Unauthorized response with Digest authentication

     YesWeHack Report ID: #YWH-PGM9867-20
     Date Reported: December 9, 2024
     Date Fixed: February 8, 2025
     Fix Version: 3.6.5
     Fix: !417 (merged) and !434 (merged) and 910ebdcd
     CVE: CVE-2025-32912
     CWE-476: NULL Pointer Dereference
     Discovery Credit: Jan Różański
     Additional Thanks: Sovereign Tech Resilience program of the Sovereign Tech Agency

     libsoup prior to 3.6.5 is vulnerable to a null pointer dereference in
     SoupAuthDigest. A malicious HTTP server may cause the libsoup client to
     crash.

CVE-2025-32913 - https://gitlab.gnome.org/GNOME/libsoup/-/issues/435

     NULL pointer dereference in soup_message_headers_get_content_disposition
     when "filename" parameter is present, but has no value in
     Content-Disposition header

     YesWeHack Report ID: #YWH-PGM9867-21
     Date Reported: December 9, 2024
     Date Fixed: January 8, 2025
     Fix Version: 3.6.2
     Fix: !422 (merged)
     CVE: CVE-2025-32913
     CWE-476: NULL Pointer Dereference
     Discovery Credit: Jan Różański
     Additional Thanks: Sovereign Tech Resilience program of the Sovereign Tech Agency

     libsoup prior to 3.6.2 is vulnerable to a null pointer dereference in
     soup_message_headers_get_content_disposition() . A malicious HTTP peer
     may crash a libsoup client or server that uses this function.

CVE-2025-32914 - https://gitlab.gnome.org/GNOME/libsoup/-/issues/436

     OOB Read on libsoup through function "soup_multipart_new_from_message"
     in soup-multipart.c leads to crash or exit of process

     YesWeHack Report ID: #YWH-PGM9867-23
     Date Reported: April 9, 2025
     Date Fixed: Not Fixed
     Fix Version: Not Fixed
     Fix: Not Fixed
     CVE: CVE-2025-32914
     CWE: Out-of-bounds Read (CWE-125)
     Discovery Credit: Alon Zahavi
     Additional Thanks: Sovereign Tech Resilience program of the Sovereign Tech Agency

     libsoup is vulnerable to an out of bounds read in
     soup_multipart_new_from_message(). A malicious HTTP client may
     induce the libsoup server to read out of bounds.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

