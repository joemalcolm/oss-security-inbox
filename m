Received: (qmail 30671 invoked by uid 550); 23 Apr 2025 20:33:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30644 invoked from network); 23 Apr 2025 20:33:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2023-11-20; bh=2YukcywxC3z3UvZ7
	Fp8UiZjVVrRFoFNzl7BmX8yXRRM=; b=X+gnYhDNBT+MMofr51/w++n+JIYbmmo0
	WfyyxGPuOTl5siJ5fy3z8YHPA9r901OIpyQXDV83c3yWLHow0bs6HmP3Njv5tFqP
	dnG7lekxDAoSRlnpdD7B/MlCeoYGgQUPwNGgVQ+ykz8J7UoasH2Wr+CcYJUkOve9
	2KbCzRy4YUeDT1zpviyOaSGNGTWW4Jqll1MKbDwEElNUkAv47ik+Lm0RfImOEubM
	WrXsYDuLa/WA5/pGEd5fDrsKmYHFhkmVzfX1zcl+sawB185f3ohyiTUfda+QP+ya
	o8UUPHTNETX2jazpKPvRc2cIRrnHvjtH2CalxHp8BjrvJxopQCfY4A==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LwivclNFUYk5sdbcU47D1Jda4TZNlXjpHmcPOkXtzrIy+x7yeG9nlPFa91NwtSGNl9wJ4DnyMPmtbxcDEsQ8veB16bEH092Q+f2ZEWOPcYqsngcYbtALvlU0AWpLetmaGrB6MYPU7QsxMBrG1AX6BB29Xkyw1hv5C8UBzkkLgTfHR/3x2mvHaR6tBoRYRX0M9p7xR1GUm4PBOCnqrDylSZelTIyZ3D62aMM/S86HoFvRegQ90Jb7A5RsulEyk22ZxmFg6VWVqzJG5JJx54CGRMUdh7pJO8OrSGazLVNgAA6rLyVy/Oz9DLd0rdVK6+bsoKgdYpbteJN1Jm3NeZcAQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2YukcywxC3z3UvZ7Fp8UiZjVVrRFoFNzl7BmX8yXRRM=;
 b=BHHrbd92kUSd85OttX9+lUb+Fw0IvphZ4uePWQ63FPlGQmFvBdFRXfLvHfrzBbdMqYzWfwgmLXKBjw0PU0CGF3iOkNN54GNjGC/DHmi3K/f1Z7qZXwUT2TCAv2BB78cMg1W5kb18WQ7OrhelU1Sak/3kfBf720DTbp2CQPY/ZUIMZujdXMWXDtKy6srGkN/xjEtv2seAIi/icTultMo0xUjRNf8FxTn1FKCcK1rv2IUktSgwVfeg6i64ASEcca6VJAJp9yqL6ACtKhK4t2r3r8HdJTzAkGr/e2jSszAjjE9pXBIQYuPZCAltwnm7F/DAp06ZnHqa2pHVCS5CZSAPtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2YukcywxC3z3UvZ7Fp8UiZjVVrRFoFNzl7BmX8yXRRM=;
 b=GsvXvf+Ohj5zjbyqfLdrsqlLi5JcU1kYRz/9PFXmg8FwUOAL7QPG86UCagmLdyt9XVKsCNxPsqO6wARrZxeh/Ibj0YtWxbauMBeX768Qn6EoVgzuDAmJSCnIP3vp5i8pakbwA7IpiXk6WtDW9i3d4EcQH8AiWu2pFsCFAPINKJo=
Message-ID: <5a2f67fe-886b-4c2a-a023-d5d5acdfed3f@oracle.com>
Date: Wed, 23 Apr 2025 13:33:27 -0700
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
X-ClientProxiedBy: BN8PR15CA0032.namprd15.prod.outlook.com
 (2603:10b6:408:c0::45) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|PH7PR10MB6033:EE_
X-MS-Office365-Filtering-Correlation-Id: d6840622-1c96-408d-fd37-08dd82a61ba8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?UzA4NXVDWGtGNXN0aXkweVI4RDJWR0RZL3lHNmNlMVRiTm5JSlFHOVM0cHBt?=
 =?utf-8?B?TW5Fc3krWC9VTlJyaGFYVHR4MUc1ZjBTVmswOVdjTW5hbXlCZGRHc2ZIV2tT?=
 =?utf-8?B?Y2ZwWm9ob3hpbEZTb1k0UGFJQ0R1NEFOaHcxMmhSMWppYlBnNXluTTNybnlW?=
 =?utf-8?B?NTUwMU4wRHkzY1NhWHV0ajZ2dk8rUjFRS3ZmWEI0bytHQ1VwbmRydW5ZN2FS?=
 =?utf-8?B?SS9DOXFBb2hBVzNOM3VPT05WQStBMkV6eXhSSk1qb2NKZHgwaGxzK3VjOFky?=
 =?utf-8?B?RXh5aktTU3ZoUFRzbTBRTG45RVB3Z0JPYVpRazhhM3NLV2Q0eFdoUmtPNXBR?=
 =?utf-8?B?RDNWQ3MrN3VGK1cyVVNneldualY0VkdITUx6bGM4VzlXZ1RuWG1oSVdJd0E4?=
 =?utf-8?B?dFVSQkhRT3dkM0ZDQW1SMVJNRGV2SFlqWE5UUnUwQkVoeWF6V2ticEhFWWVJ?=
 =?utf-8?B?YkJRR1JGSnJDeXJGa1c1ZkNua1l0S2dZMnA0ekZBYkJNaERvMDRtZGh6VU45?=
 =?utf-8?B?RjNFTE1zQVR3TzlScCtEQWpDZGlBNmNZRW9TWHNQMXNTcUVXU1pWODhMRHNh?=
 =?utf-8?B?Ly9KSzZZNDhrYUZPTFUrejdVZlEvRGp2S0JtQkdIbURoSEhKVDNOVTlDMGtL?=
 =?utf-8?B?VWhxbkhyK3FaMUo1UnRVcE5SdUdQamltQndmc3k4NUY1T1JtV2lDUWJmV3Jt?=
 =?utf-8?B?S0VjT1ZRejg2Tk8xZWpmbVVKMmhSMFRGK1AvVUI1Q3R2UWlyMGxuaXQ2Mm5w?=
 =?utf-8?B?K21LQVNsb0g4SWlBVkRUNUY3bHNwNlhwZTR0a2ZZSHFmcUpSYjdkZ0RsMndU?=
 =?utf-8?B?UHM2Z1JOKzhycytsdm83ODM3dUVESHhkMTM2TmZ3VVBMTEFFbld2TTJPS3RJ?=
 =?utf-8?B?dmF3aTgvY3FSR0xlSXl5TTVYWUt0RzgzVDNvMmowWHR1dXhnZDByMEZBMlpO?=
 =?utf-8?B?enFZcDFLM2IvSDl0UFU4V2FHNnIrY29kWDF1YlRpbURnQTU1eGJkeXR5anlv?=
 =?utf-8?B?NnArZ2NqekJ6eTVGa0xzeXF2N3FaYXE3SHdOUXVLQ013WUZnYm5yMDc0S3JW?=
 =?utf-8?B?SE1jcFZVY1ZjSW41NUs0QkRvNkMrUjlCMGVqQStLTlIwK1ZwZ2Via3lNOTZj?=
 =?utf-8?B?NUJnUkJhS3R5eGtVZ0wrWDZzVnNicklYdlpaMHNkTVNMNzRqd08yNWo1MGti?=
 =?utf-8?B?UEZZOHROTVc1K2tOdko5SWM3YW1lTW5XUEhwVUEwRUxWZU1jR2kyV2NhWkxM?=
 =?utf-8?B?SmVrcEkvck12a3V6SDc3WHYrWDBJcFNYMyt3RG01Q3BXOXowaGIwZW1QRmVl?=
 =?utf-8?B?WFlsbXZDQVhYc0pYQmY1MTVKSzNCNmtqaFhDc2tWSmFCQXA5RnhSd2NwZ1dj?=
 =?utf-8?B?T2ZFY2hlZVpndlpXZTdZa3R2bllRMHkzejY5SEdGdi81elNoNmJWZHNzY1lE?=
 =?utf-8?B?dzdxNUJJTDl1WGVnd1BCQnZhS3BrbDRmdGZ3UWs1eVEyeDlDSjhwMC8waEQw?=
 =?utf-8?B?R05hY0JaSVFXMkVheWJBam5XRlZXUDRWVzJ5bzN5QkRJam56M3V5UXVYaGVq?=
 =?utf-8?B?akR4ZHZsR0Z0cjcwNDZjUnBHZFFoSWZmVTIxZ3o2Rkg4T1VTWGhiQjlyOFhG?=
 =?utf-8?B?ZHA0UFB2dTNaZlE0Z21vSkttU2ZNY0dLd0tqVHBZTStXU3JUKzlNSG5QR005?=
 =?utf-8?B?aTd6dzlDTnRFQWRzbUpOZG1qM2pLYW9QQURIa0FSUEFBanpURzhlTVpmRGRS?=
 =?utf-8?B?a0ZwamZ0T0ZLcmwrRURYbnpCRXVOdE94cG1FaTY0VGN2TlV4NzJHcjU0dyt6?=
 =?utf-8?B?enJlcXRvaXhDZXNjTU5DeG5VTHl6ZWNnbFpzdUlWcmRLK2RnVG1RQXB1SUNM?=
 =?utf-8?Q?16q3Vobu9E5QQ?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Y0JSOTJHUVNldmtIQ2p3Z2hUc21KS01pdUFzdHFKcFA3ZjRpRnJMYlZid0ox?=
 =?utf-8?B?d05Vc3pEeVV1MnAwMjJzaUs3TkVCaTRDVUx3NEhCNWRWQkxjYXF3M09uQlhB?=
 =?utf-8?B?b2Ftc0tBZ0xnYkhsT2s5YmNUcWNnWDdmU1BHemlPb29iSEhjNkc4Tk9uZEhZ?=
 =?utf-8?B?YVZPV2o3bHdqL3ljUEM4TjU4cmZBYXVvM2ZjT3VoalgySDgra0JTdkYzbDhw?=
 =?utf-8?B?ZWRhbHFkVzUxYzVqRTZXdk95bmNReHpJZHo1WUwzV1FkWDhaUnlxaVZiVWRU?=
 =?utf-8?B?WWVPVWZhRFhSZSsvNzVVSHVJUHFjd0VkbFpXTHZia3o1dS9XVnRMcTRRZFFU?=
 =?utf-8?B?TVRqZHVkS2NoU1J3SXRMNFJySks2TGx3QnhYVjJWdS9MVlUvcm5OODVGYmti?=
 =?utf-8?B?ZktJdHBLeHJmd3hBOWRGZW5nSHpyQlJUb1lObHNLSmNNWFBQS09pZWV2Ym9K?=
 =?utf-8?B?WCtUT2NwVC9XMER3aDIyQ1Y1U2ljU3Y0TmRJaTF6SFlBclVxOWVvTFJYUVhx?=
 =?utf-8?B?bTJQMEZidlpsdWVQT0o5dXlwa2ZtVjJmbEhtNTFFZS9SeGxvUjVCbjNRKys3?=
 =?utf-8?B?OGNsZHBvRFdCNUJMMmVNMy9UN0VIdEdQZGJRSHVxL3UwVmJJOERTUVgvUHUr?=
 =?utf-8?B?TXZrMTdseWtwNzF6VCt4RGJPYlpiOFl0UlJCWGh3SCtVWU5xakNJbzdxN2pj?=
 =?utf-8?B?a2oxRU1rNWtCSXpkRWpDWUhWUERJNHRpclQrYStLeEdQaEU2YXlLRnF4QVVY?=
 =?utf-8?B?Z240VDQycXdHR0FrS2h4TEtORWlsOUp2eE9lMmRodHBwdXY2WXZvbXlxanhr?=
 =?utf-8?B?UEUzQzRiVzU0U1ZqNUcxTTdNTW1tNmFFWlB6VWtXWmpOK0NxcEkyQ05pS2pR?=
 =?utf-8?B?TVU0QUMxQzJOTmd3dFBaenN5amJCUE43S3F2WWh2b2ZHVHVCNWx3cU83M1lr?=
 =?utf-8?B?WlJlckllMUMzZEFNazVJSk9reENyT0ZRNGV4UTJpWmczNUE3WnBzWlFyYnRj?=
 =?utf-8?B?dldqSmZwaHFSbHV1TU9pbE5BYzFLZWJIaDU3NmNhZnAvM0lXMURucTlNS056?=
 =?utf-8?B?WXZnS3krM2tVS05lVVVSVTNaQTlJWjJxQzY2SmFjZEhXQ2t1WHFlWmlVVHY5?=
 =?utf-8?B?bklKdjZPUVdsd3ZLU2dIRm14bEt4NTZ5bzBBYmZIVnE3YUhub28rV0VLZG9v?=
 =?utf-8?B?NGZCTTUrdk9iTVNFbkNLVlFES21YNWU5UVhySlIwMERsdVFsOWMxUXB3RENh?=
 =?utf-8?B?MjVxTWJpTXR4dTY4cDZkZURWM2V1MVcwU0ZNV2lYQm5mMngrcGNBRGRJMjVM?=
 =?utf-8?B?bnB4VTBYb0RRVFNKcTFSTXRwSmRrcXFJakY5STl3QUQrMitCbUJ3eXZzdkt1?=
 =?utf-8?B?bHM1RzVPVlU0c2pYbExsYUZERnlHdklVc2VzMSs4YmVMWE03am5xYllKR08z?=
 =?utf-8?B?OUNRaUpDMVVnMVRmc25YSU5VUFJYMktUUXlzNFhySnZXdGpxYSs2THZES0pP?=
 =?utf-8?B?NDFLV0xFMWRmUTRFNjNaZ2xUMU1CL2p2M0swVEplZ29PMThuR2NwL2VpTU9l?=
 =?utf-8?B?MEl5K1h0bVZSYVhiUGFJUExJcEZKY2ZsNGhRN3o4bDlzRkxjc05zNllKb3Yz?=
 =?utf-8?B?cTJ6SWtDN0Z0YkZlTDVSSTkveWVMTzVQNXpNSTYwUkx0UXowa1N6OTlnK2ds?=
 =?utf-8?B?QnlXdW82ZnZIZzZhT3ROSDRvTmNhbzJJZ0dxTWQwc2RsQ3B6RkRUTC9VR3Np?=
 =?utf-8?B?cWFkbGNaRG1KODl6YzlQMWdqT2hSR0xKM2MrY3orT25Sanh0ZzBnc0t4T2J5?=
 =?utf-8?B?cTU2SkFyMzZDeHJITmpQQVlhZ0tpYVYzc0FQc2xLMU1wcXZUVmdHL3dWVzR0?=
 =?utf-8?B?SW9PZFN4dGxjV3FXdmswazdBaDlmd2g1eDNxU3doekdISlFyOTRmd1UzODhU?=
 =?utf-8?B?NU5aUkpSSFc3L2RGYjVMdFNyVUVjK21kS2cyNlpvdzRSZGp3SjdYdlpyNHY2?=
 =?utf-8?B?M0hMandOOGFKMDlTbzNuQVdoOXJlUmVsZjJpeFZCL01sZTk4bUxsZVFPbW55?=
 =?utf-8?B?THd6K2lYUE1xbFBOekt5VEFwV0RLaU9qUnBYNkxSYnI2T3kvdXJmWDdXRCtD?=
 =?utf-8?B?NjJyUzlSVDdFSnB2dVpmV1VpRGJ3aWEzd1RIeVAzNmNsUTVNWDRmeGYrL0hL?=
 =?utf-8?B?dVE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	jV2za7uTfi6YF6DN3MnDsvikAxyLUa2jBrf9XOKRhzn2szqX1cF9XXvIlx64zj/GwL89ZQARIjWh65r0ZSCZgzdscf/MJhFf8qw87euYqSOknULnKnruLLcYnfNRWMi3gyXkp393yVZuhuR1CddHLkB4GQ5RPedmd3gWLkxv7RbO20e0ORXHDhtrL3d+QRYoZlI6PPbxtJqgc3MmiUGl4kozTHS/pdBfH7XVWJwk8Y+N9J0c1gxP+dsPfeY+JeNLpv9DC8VAYszlll4QmTdXGvnLr/0E0pWrM1v9su1zIqpMx1yt+zCepvmwhVzAdXdMagS6Yp2DWyr4sn9aSUZLsIatp4uCey27w+xYjtpROAYqLZV+HHSiKF2nPt155pwZfa3dcUuMLdXfOZygSlQQt2KgKVWQ3G8MhtywE9kFStWQkgS7xaGI0NKC0CgwxIwCovcyLgwBggqUsEtVYUW9MyVoRLW4a9nu3mq1OIqpnSCAvhGW4t9s/dmqexlbZVVkd3nyzEwfn64rYS448ycMCgeO7eTMw+bBZBD0iGzq0tobyXPYfmZvRXlcVpEY9Mf9yBJsRYxRtL0yslwhh7EU0V9sDrAGGYHBZUe+25BPZbM=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6840622-1c96-408d-fd37-08dd82a61ba8
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2025 20:33:29.9299
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: atou6gAdmFyh233QuNcuLG+ii4SX2XYtpPwu7ae+xoR/l8ENvceSIchg/BQK94dK+lqgx95ciJ8r1rWzRvMUQG+x4FU0y7mqNj7UAxPLJa8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR10MB6033
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-23_11,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 mlxscore=0 adultscore=0
 phishscore=0 mlxlogscore=999 bulkscore=0 malwarescore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2504070000
 definitions=main-2504230142
X-Proofpoint-GUID: xlLpgkEkMJGKRU7CMexT-SrzD6tdiFTH
X-Proofpoint-ORIG-GUID: xlLpgkEkMJGKRU7CMexT-SrzD6tdiFTH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDE0MiBTYWx0ZWRfX7ODIEuldcpJM YaVeJ1m2Y66G6e9imSYoBs5IsrmbXk3DfXVyDOoBnP4TqulsEONneFcuUdqRxwnBkbZFTnYuS15 sdpm1yRFzp9M/wLwn9I5wFMYcyM2WHfCOMXdzDA4Ji4r2z1X1QizvB8BixZJfQ9P9/1oHdHEzFW
 qrm+B0IQ6p7kSG7qDRPDbjJEEX8OvjaXKagOjTBe8XWH3/NupHvxZCVN7vqanYjhPBTf6N9Gerx rIO7Sy/CLqADM/desGGRI/RG3+9DNVJCw1MM1PA7tmg7+ZqT5yC6sWaTEcgbTyrW5syED3KT0zV p8nVYDZoVp5tBMqInFo3k4PNUEopR43pRgcYIEDDiunyF0+VT+/xq4nbAv4h1HYdAwYldS8nkDo Wq0bVRmL
Subject: [oss-security] CVE-2025-23016: Integer & buffer overflow in fastcgi <
 2.4.5

Version 2.4.5 of the fastcgi library was released last week:
https://github.com/FastCGI-Archives/fcgi2/releases/tag/2.4.5

It fixed CVE-2025-23016, which is described as "an integer overflow (and
resultant heap-based buffer overflow) via crafted nameLen or valueLen
values in data to the IPC socket. This occurs in ReadParams in fcgiapp.c."

The upstream bug report can be found at:
https://github.com/FastCGI-Archives/fcgi2/issues/67

and a detailed writeup from the discoverers at:
https://www.synacktiv.com/en/publications/cve-2025-23016-exploiting-the-fastcgi-library

which suggests both upgrading to the fixed version and "limiting potential
remote access to the FastCGI socket by declaring it as a UNIX socket."

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

