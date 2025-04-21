Received: (qmail 16094 invoked by uid 550); 21 Apr 2025 16:08:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16067 invoked from network); 21 Apr 2025 16:08:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2023-11-20; bh=64pFuBDuELdj5PXC
	6lfcALk9rOaTMl/52HaNSa19u0E=; b=IxGvp1BsOAm2PSjtzPu43c/3sl5vIXwy
	f2Rz685Inlk9+sWKluH7DouxcqAPHBC0VbdU55+M1dyKw2PZbCKb7RW845YNKjsR
	eu6qixYk7OHSkQcnXUfYFYaJfWKKXfok/+tH6sgGcqkTndtpWGyoW9pDhIoQ3Zi+
	VNizfk6BZmTiz3DmavKISR8dLmH4IXI+ExJHaNS7RTpbF4aBpbm91yMP+Yq5Oc60
	Ij+TN8G+CV/yq3hkZFJncVfqWsDtwapl1x0+ValJXJcYLAzqFq/cGrHioS2iccAD
	mLriCgy0VFd7ZwNBps0jHgdpKzdHhrrpO8j5CzOMmOBcmVPrE41eYQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LiWc5ND5aFJO0gJQUG3Ijp/8d4bIXg/A6xkRu75DxA39iChsMCxcMGxUSSIN2Ov0zrH5kf0tiAbzLn1Vjn+A01s5aa9lgiOoxhT55ORin8flehLtq4/xx/cmwNyvZSV6PjaUs8uQjl6YOumOWvdfQQJrDLbPhdQP/9LEaAQeyZ1llZpIiOqEGQ4pKvAZUChAp2au062p6ni1JqEVsp5VzCDOgxBV1pcWzQKAEaOJNwzN53+oW/CW0RSlXQac8jCaYH0eh813Yz7ArfMj3MqXf221v6ZtASUVRIjbMQ2QZoY8CqElifnBV17gHSSA8wgk4ARmrk/aPLy/JJ8I8+bbGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=64pFuBDuELdj5PXC6lfcALk9rOaTMl/52HaNSa19u0E=;
 b=beNfj0n+aRmV8zXHCj9/Fu7wwo4CMoceDRKxkoidzLafEDW1nM9dT9+rUklhTSR1NGDaH+/j1FSe5UcR9nyo1FR9hyeBKryPEZNGpO9CvOWN2zHJG41xSAGjL8F00ncZpxRaurKEs33XyLO91R1VfUP1vLK5L/oKF0zIN4tLpCV1WpqIbtk8Xq14Jtt0XaY3+gGqrCEuaJjdenOLsqIFxZkYxOWPrCZsixbpfN+WnuYncfIzvU5b+tyigi3bII/Mb4RTwax9DMxPLc9mN8gSBIzBE2eXgWVQAEEpX4BlxaNOKErwKPlWm+PPSiyXhctz3032qemSnfwx6tqr+9QBXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=64pFuBDuELdj5PXC6lfcALk9rOaTMl/52HaNSa19u0E=;
 b=eEeoM3yhodOUmHI/QfJqvLHvhnTg2vOudPSBUj96Gp0WpnUj88aACVeTzQC+aRlPuAAAMngOZnX7eOtxE5rNaU34qXoaBIEtKT0aB3l+L2WXbkvPbvY0wu8dIpVCH83254J9F37E+kKB6Ec9kAXj7fTwHNyij7OWq3nL94SK0vQ=
Message-ID: <62e9c3e0-dd06-4d88-8192-1d0add89d0c8@oracle.com>
Date: Mon, 21 Apr 2025 09:08:33 -0700
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
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY3PR04CA0030.namprd04.prod.outlook.com
 (2603:10b6:a03:217::35) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|IA1PR10MB7385:EE_
X-MS-Office365-Filtering-Correlation-Id: d36d56c8-9423-4174-0b77-08dd80eec4e6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?UUhtS1I4MzhaWCtxOFlkZ25wT3ZGb2dySVBPQVZxUWwvQ0FxT25idkFuek55?=
 =?utf-8?B?TUhhaXJ5bFY1aUI5a0NjZVQvd0M5Qlp1R21QSkM2c3Z4d1JWNllhMzVNOE03?=
 =?utf-8?B?SDlLU0dNZW8yd2c3VkdxZGNuRGlpSm9OVWtTSkZvbkg1a0l2TmlzaWVRcGdR?=
 =?utf-8?B?UC9xSHNKSzFtNVVhczNmeXR1SW5lOXYvUkcvOVhoNXAxSGNETTZoSkJFaG9F?=
 =?utf-8?B?SUl4bDdqR093OG5SeFI2N1l0bWxlL245Zjc0ZWs1M1d1T2ZmOFN4azBxZ21S?=
 =?utf-8?B?UXdQY09xZG90ZjB5bzNZTGRueC9tNndMazVmcjhXaXhsQktGbHp2MWcremw1?=
 =?utf-8?B?MmhUNUEyWEptaURqTFVHQzM5eTFXSlBMWXl0dzJyemJVSnovdk1OVTVzbGJN?=
 =?utf-8?B?Mm9zOGpGSGJydDBkY01UMlY5R24rQ2syejhCeVFobldzS1hxdWdUTlYwbitW?=
 =?utf-8?B?T01KZ3YvclZrZHhqeGFpY1FHOHl0WW1FRzYvbXJjY0EySGZKSUZxdGlpVSsv?=
 =?utf-8?B?UnZTZnBIK0xYVms0ak5NMnlJcm9qSlZoWjJxYmpvMTVsWmZSYjRUdW5NV2xo?=
 =?utf-8?B?M2tabUJyODE5SWgyeS9nOGZia2RYdm9oM3NTZVdzMUM3a3BmWjdlL1RSYlcr?=
 =?utf-8?B?dlQ4ZnNUY2NzbGwzZzdDcmtleThaV2Jwck5vTW5VR1NMQitibnRzU1JwdzYr?=
 =?utf-8?B?aUlzMnBWbkk3VFQ1Y00rRU54UG0xallGUnJ2NExtV0I3RHNHZDdNdFlIZGZu?=
 =?utf-8?B?aFFpZnBQazA2aXV6NGpsNHlraGlIK1JYWEFRWHFydTIxNzhQTXZTeXFISXlP?=
 =?utf-8?B?QXRLZCtYVmZhSDhpdDV3R0RncG0zSXp3bW5Pb21mL0I4RUZTQ0FvVEw3WklQ?=
 =?utf-8?B?WXZIV3haVjJvYmFzdkFPelRvVUJhSTRNMUVmVlZtYWl1RVh0UDlUSHg3ZWdT?=
 =?utf-8?B?NGl4aG5wNjV0VmhKM25VUGpzdkVPZDc2YUVVOWhjYWZxNHFYZkNUelpQWmRB?=
 =?utf-8?B?ZVRSaFlyR3p2WEtBak9saG1GTkF5UG5mVjM4Zll2R1FxV2prUk1oay9HSWVO?=
 =?utf-8?B?NGM0N1ZHRXQranBEZmMzVXlRM214ZURRUU5WQlJsbUZzWUpldFJpRHZZUEw2?=
 =?utf-8?B?cWhvL3ZvWVMybHBxQkRlNlFLSmdCd2ZZWnp0WXVFSGt4NWtlVDY3eXBMdFkw?=
 =?utf-8?B?bFVJakpqYVJOOXB0ZUVnaW94Sk1NcnFJL3hKempLNXVnMjBuQ0gwUDZUU0tI?=
 =?utf-8?B?YkxoWFVmeEl4TkZEblE4NjlPcTFlcU5oKzJnaFB3OUJBa1FnaFlqaC9UODk0?=
 =?utf-8?B?OWRpUThmTDNMMVZxOVJUQVh2U0lXcUpmM2dRVU1rUE83VDY4S0hvcEkyaHVC?=
 =?utf-8?B?ZmFHc2VHTTB6eDhtNzI3QjNXVlFZNkNqYnc4SHdXSGZrK2x5S2t4eGpEeTZS?=
 =?utf-8?B?N1U1MWp5WGlkU1NablRWOUtXWUMrVVJOQnV6eHlNcXBUR1Y3TFJ6S1JSUDVi?=
 =?utf-8?B?OHZPeFd4Z3hRZFVHaDZOcXlWTnJRQTF4MXZpL0Y5UDhZOGg1TUpKd0VQZUFB?=
 =?utf-8?B?byt5aEM5REVub3ZoWU5hR3Z4NW1yNWFTMTZXckJOU2kvQWVtNUtETUlSbG0w?=
 =?utf-8?B?eCtHT3hnWW8yNzlqcHRrZzBNUklvVHRCTHVaSmRoTkZjZkRkeVlzVUh5Z1Rt?=
 =?utf-8?B?SEhYS1JUTXZTYks2TkRJMDBPUDVoMDZSaDRkVmhMOHhMZDg0QnE0TzhGVkNK?=
 =?utf-8?B?OGxqc3o2cUR2T3lCbkNRRWtwK05hY3ZPMlhEdnI4cU9XcUZuNG8yWTdkRXM3?=
 =?utf-8?B?UzNLaHdTSXJUaGl0UHZhZ1VQc0xqdFprcnBGQmhpYWZqMzgrbHN3d1haeGcx?=
 =?utf-8?Q?Q11yvoO5OQE4f?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?RVVpZklOYmZ1L21NcFdGdXBKN09EdjFxcitJQmgrYkZGRXRMUEZQUnoxazlP?=
 =?utf-8?B?VXVTRFdyekxUdGlvNUJxR1UwVDBidG9wejgrSnVzYmxFYk5lMHB0dU03UXZu?=
 =?utf-8?B?ZFhLeEV5NkplYi8xZ3J2eGRzS1dicEIzZUtHeThKZmVFTFRRdDQwSFQzZWVh?=
 =?utf-8?B?TmhISTNJZHRvLzZSYjF2cUlWKzN2Mm5IWFVUQlgvWGlwNWJpZ01QbkpHaFFj?=
 =?utf-8?B?U3lhaTNWQ3NTNkFObmJaL3c1YUp3TjczbTFtNjhxWDJ6VHg3Y1Jhdm9FKzFZ?=
 =?utf-8?B?SEZSeGQxU2FiSDVMZDh6RHcwNFlWTG9iRzNHRFV2cDB6cDdaMWRpNlhSRjFo?=
 =?utf-8?B?dFVZdFZ3ZXRFYzdPRTRsRnU3Yk1aVG1wTmxPK21mV3RoNjAwc0pYUW52Mmhj?=
 =?utf-8?B?dmZJVjkzeEVyKzhiOXlNenV5UjlORDhJU1V4ZlN0TFF2eGZoNUJRbHVLOThi?=
 =?utf-8?B?aHVUcnB0eGxNdWhxZzdza3hxNDVOM3RHVFhtbFVDL1JvS3ZQeVlGMVlJYnVP?=
 =?utf-8?B?anNGNUI5ajdhd0thUlYvYWg2bHMzMWpZUXBlR3VBRTBZN29rbVJsTGVSOE9i?=
 =?utf-8?B?d29vbFpyQnhRazMvamxhWlZkdGpTWWVIWjhwQ3lJNG14S3JsQjdCTy9UUHdo?=
 =?utf-8?B?RlBwaGpsS3RLbGxPd2pOd0ZVZzAvT05paGxVbXJYTVFMMGJmbVk0SWMzbVUy?=
 =?utf-8?B?ZDdUMzYyRkhVQ3hXaUdaVWp1bDZ6a1d2QkphemxhQjFLRk0rUUJIam1HOGQr?=
 =?utf-8?B?ZDgvU2M4VlA5SmxPbnB5OWQzbXQ0ZnFqZFp3cEhqeEFsVnVxcHF1YloyU1BQ?=
 =?utf-8?B?aDYxaXRpWFJyV29CWkFTOHFYdHY0QW5IdUNpaU9mZ3FBZUdBemZrWnRnOXA5?=
 =?utf-8?B?Q3pRYmxqc0ZFTWp2VnJqSzFycnpzRWFrcGlOQy92Z1QrM3hpWHZmZjdic0JI?=
 =?utf-8?B?UElISUFtWVdZTWFsQVRqZms0UnF2dTRFVnlBZWkzazZZMEZ4UFVGZHBZSHpq?=
 =?utf-8?B?WU9ndkVBS1plenlzeTV2Qzl4emVTSWtXdjFJVmRrb09IZGlPbndONVlxYldx?=
 =?utf-8?B?QUJJQWdtRzFpMXhNV3RIdHBaOXFmNW0wMnoxTEZ6UjJTSG5tTkNUNWhZdXRO?=
 =?utf-8?B?b3Q4UXJQN3JCdDRSckNkc3VNSHNPNHRqTVpaM01GWlZOL2Y4Y0tka3NxcWF1?=
 =?utf-8?B?b2FoZnNTRTIrWDZIbHZ6TE1UWUJjOE9NUEVHVERPNzltTzlJWWlwSnBMdU9H?=
 =?utf-8?B?c0xIM0p5Q1NXMTJEdU5ueDUzei9ORWFUQ1hNREoxMXpjZitPN2dpVEM3MVVO?=
 =?utf-8?B?bWwrYWxlaUVHLzlxb3Rlc2pMQlczekhrU0l4RzNFa1U2YXNMTGh1UjQ1WW11?=
 =?utf-8?B?ZzFsZWhKREhKRTZ3bkIwaCtMc1JCWlJZTlJhbW1haWNhT2hCWTY5ZUUzdDBP?=
 =?utf-8?B?bkpMTnl4ZkU4aW5FRmNJU3ptb1RDMktHVllodUdLSkRqWWYzRWZ5OThTQXNH?=
 =?utf-8?B?V2xXUnpqaUlKWGdqMlZkR1dPeHhSem9hTVNrdjQ2YUVmZC9rckd3R0lWQzZO?=
 =?utf-8?B?cTdXa0pBMWNrbTd6ZE1TSnFsdWZEU1NoRTEvRVkzR21Uck5aUTBYS0JYMUc4?=
 =?utf-8?B?eUVhUGZ5MWVGdXpXUXNybGV0YXNJRjh6UFB5RHFONFNaNGc0RTJpY0VGdWZ0?=
 =?utf-8?B?ZXpCTVlvZWpTN2dsWFh1VC9QdE1vQnpEVVBJaGsyNm85OE9PbUpET2N3YVFT?=
 =?utf-8?B?WEFwV2tXeDlGYXpOUnFZV2RzY3hYMjZGbVBQRytaVW5oTzB6d1l4WVVHZlp1?=
 =?utf-8?B?ZGttNG02RjQ3Q2llZ3RRK3FKUDVUbUVyaXZ5SncrakRvRHpka24zWjBjcG53?=
 =?utf-8?B?M25wdEJDL3dMYVIxWkxIWHBjSWFyT1pJZExVdUhCOEcvb21DLytBZU5oVUEy?=
 =?utf-8?B?SHlJZjk0Ly85UjVid0VXdHIwNWZMWERkdW54RVlqMm5ncHRhM0loOHNGQlhP?=
 =?utf-8?B?V05QNnVzZGpISkNHazZjbVpXbmUvQVhGcVp6bTZzczRLUmZnK3ZWNXp2UGMz?=
 =?utf-8?B?ZkZYTDN1SzRCdUdzaWNuVE5ONzdUSTB1Y2crTE1NL2hwdzlqUG5NdnZUNFlB?=
 =?utf-8?B?VWpyVjVmL0xRWHRkbXpadS81cGpOWUtHVXJXQnNLQXBRdmVnemMvSEdBay9u?=
 =?utf-8?B?b1E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	uDVxbDU35o0C4msVzoFTrQIvjJi6Y4v12H+P3Laqr5+H5cf1mAey+kk4XLPunmVJmlLcqFR54ylDeN7Ru1oNjuys8V7QAQr1wn7k4FLwUBd2mi6tkia//K6QMP4YzsjNy3Pf3QK07GrBGgJKRiy+OZvl/W2C7PC6amLpF5j7cGwM4jDD4vim6V6OWCOuGE77V9F/bi7W8pO/a+/sg2tOvx1SJxNnt0BJ83iujJgxhqNZEQpDmKe4e6Kym4qLhLUklsQ2V/Xe8aONh+OrzDUQOamTZPElYxHPOBKhE3yqQf7F1jusVynba5divA5vdRPqAKPfs6sl63N0Tu94NoAwq8TcZY75k/jAj8FN26crhtpkNulN9H6oNlFsWE5V3Uvkq6AlOdJtStfYvbUECczqs1iGf5/4CSm7bBGF9P4Y42v43ZnJpvNZvO+nUlbKrRwkA2zcOkDtHZwkt18GivFFs20Q64UWY2KrVeGWbqsSNxW3MtAy+CRJsRnOycLZ6UZpCRRRwYT5VmIN682mHBFY8JCwxnXFBhv5mjYvzdqQyU5/3iA0UHzDeYqYty6pY0YF+OIwMhAC4MoDFMhq/FOa/121eCFvjImaAnRjvM1SCL4=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d36d56c8-9423-4174-0b77-08dd80eec4e6
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2025 16:08:35.6338
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3yL1RvpxkeDvbobcufRCEG9LEkb9nFi4huTJqJdQyqGj1hsyxUZQPy5fFfN5dOGLzZBvFFea/2DbMs/yczdtwycXKNVUQbwFWd7F6keB9J4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB7385
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-21_07,2025-04-21_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 bulkscore=0
 phishscore=0 spamscore=0 suspectscore=0 malwarescore=0 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2502280000 definitions=main-2504210126
X-Proofpoint-GUID: U70T2zPEW0ftpbmhUVNRcCz2NHG-INv-
X-Proofpoint-ORIG-GUID: U70T2zPEW0ftpbmhUVNRcCz2NHG-INv-
Subject: [oss-security] 3 new CVE's in old branch of GNU mailman

3 new CVE's have been published for GNU Mailman 2.1.39, as bundled with cPanel
and WHM, credited to Firudin Davudzada and Musazada Aydan.

Note that upstream declared GNU Mailman 2.1 (which requires Python 2), to be
end of life back in 2020, and recommends migrations to Mailman 3 (which
uses Python 3 instead):
https://mail.python.org/archives/list/mailman-announce@python.org/thread/TJLEX52N2ARNOQBC2ZNYMNV5U226R5NM/


CVE-2025-43919: Directory Traversal in GNU Mailman 2.1.39 (cPanel/WHM Bundle)
Details/POC: https://github.com/0NYX-MY7H/CVE-2025-43919

    GNU Mailman 2.1.39, as bundled with cPanel and WHM, contains a critical
    directory traversal vulnerability in the /mailman/private/mailman endpoint.
    Unauthenticated attackers can exploit this flaw to read arbitrary files on
    the server, such as /etc/passwd or Mailman configuration files, due to
    insufficient input validation in the private.py CGI script.


CVE-2025-43920: Command Injection via Email Subject in GNU Mailman 2.1.39 (cPanel/WHM Bundle)
Details/POC: https://github.com/0NYX-MY7H/CVE-2025-43920

    GNU Mailman 2.1.39, as bundled with cPanel and WHM, is vulnerable to a
    critical command injection flaw that allows unauthenticated attackers
    to execute arbitrary operating system commands. The vulnerability occurs
    when an external archiver is configured using PUBLIC_EXTERNAL_ARCHIVER or
    PRIVATE_EXTERNAL_ARCHIVER in the mm_cfg.py configuration file, and the
    email subject line contains shell metacharacters that are not properly
    sanitized.


CVE-2025-43921: Unauthenticated Mailing List Creation in GNU Mailman 2.1.39 (cPanel/WHM Bundle)
Details/POC: https://github.com/0NYX-MY7H/CVE-2025-43921

    GNU Mailman 2.1.39, as bundled with cPanel and WHM, is vulnerable to an
    authentication bypass flaw that allows unauthenticated attackers to create
    mailing lists via the /mailman/create endpoint. The issue stems from missing
    access controls in the create CGI script, enabling attackers to abuse the
    mailing system for spam, phishing, or resource exhaustion.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

