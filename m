Received: (qmail 24326 invoked by uid 550); 25 Jun 2024 19:16:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24276 invoked from network); 25 Jun 2024 19:16:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	message-id:date:subject:references:from:to:in-reply-to
	:content-type:content-transfer-encoding:mime-version; s=
	corp-2023-11-20; bh=ARRlKZldfChoxWTgFoCTETfBE4uOFf9FLNSLlvl5MlE=; b=
	QiLVe6xYm59GO2qKvJeWNOpmwk8P0iv99h4OhKyQpZ9ozgfgYKOvVJrVFUEvhU0m
	gPqNv1yr1V5Nmv6fDOstGnG0AuBPcM7pk2cIy9lqCjvqJqUZbQFsKNxdqgOFyeo4
	9PY2/pKMdHeFrRwL9AEIfklbb/VA6J4E43rrr+4i/imFZVTD8wzsYNaOTO/j7c60
	SMopFca5R3zRFmZepmR5V6lPeiQV/8dtlfULQDiQtRAJ3K72Co6s0Un4O/ZnXB9t
	6o1yrJHs5DAM5RFj4HLe/C033YQgw/zxCa4zOAHxueovlgIyDb695cA2wbwCfMcH
	i5uehK/OM4qZyyccvQTKIg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aGTVnqAlt1jUZue1ZaMfh4DWon0CQqCNzRnoOMIMKXEtvr826C70JSF3m3IVxNL2CIHM2jOR5CJ8yXpwWtaUuOR4LCX7ImpL8inwJQulkooDv4sxDF/c/v95RZ7Cp9+tFhz9TtoyYGlRNsF/m2C0ctduijw8X4NJPiuwPmKqdZYkz2bOsv9xXbYx8Rum/G8piAfKEHkeMHOMXUqacEWxhjmR7HImNtFZ39qp7F2RYrqbmdNUl3C9Dn4DJe2gvz2L9RCc7qrU9/Q2LB7782t73gppbIhP3pl9/YJx2POzOr1/2DU8g6W+weSZqRudsVrw8jqbafo3fDME8oCh3Y1Njg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ARRlKZldfChoxWTgFoCTETfBE4uOFf9FLNSLlvl5MlE=;
 b=Rjoi+aw9BSeMuZnV+C3GbtTcsbId31mvkWcRNhxP70vNm9IvXey9oHZZkVOB/PfkfZfpWvcZU3xfUnrTDq+jID/NzZZK2oXgV6REhvqzoptYF/BYGQMvXKZhSJOoDMp4RDW9WFeHCNFcb15rtYbffchMDguTxDco9X7EoDAfR048DpJ2mlh6A6ZorU1zfWnoKD0aVqtWGn8xlwUv7fsX9Ku1IXyoa3u4h3Mvq15DCwBKY70rEEwhnzvc0M2orkj0kakSxWnDKbRhm6wRrh5jcK0KKgAqiYdZmaeETA3Ht3GGoeeV8tWwIn3O/kov7W/SXpj9X113MAHSobu/n+32kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ARRlKZldfChoxWTgFoCTETfBE4uOFf9FLNSLlvl5MlE=;
 b=zimMCd26/zMDJCJyBEg5xb7kZDhPjwV2ofz8wSUyI/NT24UQ3niAr0Njh2Ex8tK2XeQfs/CGiTcws1vparILNdqWKBmREZeE11iRQ59vXFoalL9daHoWhszIbo3DzPNPg/s4vgRJx8F4PJHglxPP2k2C7AojJRL52lpkekw6VWU=
Message-ID: <5fc9fb83-2f59-4e9e-ab08-c5748cb0792f@oracle.com>
Date: Tue, 25 Jun 2024 12:15:47 -0700
User-Agent: Mozilla Thunderbird
References: <CAL6_Ycxg1vyY24uTfsM5uNW25Pf7pT=X8tTnp1=Ni46CrN_z9Q@mail.gmail.com>
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
In-Reply-To: <CAL6_Ycxg1vyY24uTfsM5uNW25Pf7pT=X8tTnp1=Ni46CrN_z9Q@mail.gmail.com>
X-Forwarded-Message-Id: <CAL6_Ycxg1vyY24uTfsM5uNW25Pf7pT=X8tTnp1=Ni46CrN_z9Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: LO4P123CA0537.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:2c5::17) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|SJ0PR10MB4431:EE_
X-MS-Office365-Filtering-Correlation-Id: 0fcc513d-ebe4-4141-3038-08dc954b3b90
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230038|366014|376012|4022899007|1800799022;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?bm5xbHdOcXI5eUk4VHBwK2xIOXQvbktQODhlbklyWlZXTWtYMDNGblFObGo2?=
 =?utf-8?B?ZDM0S1daZlJzZGQwSE9mNnJRbWNjeWkvamp5dnBOdm1FbVorN1RHd2ExQ1gz?=
 =?utf-8?B?b0NPUHVGQ2E2VjVBcmZqYnFjU1VicWN3RTJHUGlLdzJPNXFVREdFWnhYc3pT?=
 =?utf-8?B?cTc5VFJMOXlON2ZmbWxaWk1WUWIrVDFDVG15SGFJVFBDeE5TUVpPTU84am4x?=
 =?utf-8?B?RTRnODRIT08wa1JRNkEyWU56UVVZaHZhZTZBbSs5RmkzZWRIbUV5cnAreXor?=
 =?utf-8?B?UUVoMnFveVhBbVd5RHlBYXY1NjhwUEk3ZDQ4YVFSNHpLaFpEZWRRQVlXSFdZ?=
 =?utf-8?B?ZHpXYnVZSG91Tk9JSEh5V2tmVmo1VzNOSENUUXJZbW9NWnBqRG9tWXp5bEli?=
 =?utf-8?B?ejZFTTJQaWxGckRzWUZLSnQzUzFUa05CVkR0VHB1K3BkM3B5Z2MwRWRmOGVa?=
 =?utf-8?B?Y1g0eXcxRXRRMy93OXhhMXB6V2RDYzYyMjZpcDAwTTRCWmF6UFhKVzBjS0Ja?=
 =?utf-8?B?b3JVWDMvVXUzUEtRZTYydFJRUjFKV2dtdVNHTDhaWlZ2elE1ejFLaWtFUGIz?=
 =?utf-8?B?YW54MTkzV1VNdW9tTkJacGVMYlFKQjlmV1B3cUNtUEc0YkxlazR0L2Z4cFpi?=
 =?utf-8?B?bE9aMmZWNm00VmJHKzhUWlZXclFVOE9mWEF3eGtzZFZJaWUyVmlYZW5FeDIx?=
 =?utf-8?B?Um1LU20yZi9XK1hoTEhEeDZLZ2VSOFZYUFNNQko3TURtSFFwMEYxV0lJYzlK?=
 =?utf-8?B?aTd4Mjljd2JUZlk1RWZ2aUZSV0JZdTFuOExmT0ZYU2JhUUVmQnE5aWxwa3Zm?=
 =?utf-8?B?SERJZFROZzhPbC9yVjB4Y0ZBOTZobW1kdnpoMHJYUkJJQlpONm8reUtrMDRD?=
 =?utf-8?B?a05lQWhCRDJuUEZ0N0pXaURyZThmTS9wNmJHN3ZxVFJKQ29ld3R2UzlBTzFq?=
 =?utf-8?B?aXlzU2FWQkpNYlFaWXN6Q2xtcW1yYWpGaU5pT21oY2tQVmR4a09RZjh4VG1Q?=
 =?utf-8?B?TGxBTXNZNWhKbElUVWs0VzlLMkZXQmVYVFZid3A3TkhpV0FwVmJWemZHYU5w?=
 =?utf-8?B?YUd5dGpGRVpaZ1Y1VG9yRjBTL2Fud0J6V3dUYW9OZWVmMzBzQUJHWGlOcXI0?=
 =?utf-8?B?OGJJWTN3QnBPN3hRSVdobEl4RUNqYXJpYTl4OEViZzRaRTBSOXhVbkVZNENt?=
 =?utf-8?B?YlEvYnlRdThTbUxPZ21uTnQ0WXUrdVZ0RU1zNDF0RHdoUThQNUtQeEtnU2Uz?=
 =?utf-8?B?c0l5d3pOZWNibnlHK0J6WTQxKzFZMC9XNkpJUTRSRW1Hano1b3V6Y01mQzNw?=
 =?utf-8?B?M1k1ZFpUWU1vYXZLbWFKOTBybnpkV2VFa2VGOGs3Y21VTzVCMExaL2RCYmJj?=
 =?utf-8?B?SUQzYldqK1RlZ0R2QTZDWGIvT0sxdGlRbEhjdFhrbDNBREVKZkpva1hIT3Zr?=
 =?utf-8?B?VHlpbzI2T0hSZExLR2JLRlNPNFFBSGVyckRTVmtmSDBqNW5ERjN6OXl4aTRW?=
 =?utf-8?B?MFFUUEJYZkNTbEQ5VlYwRWx2T3dTVStYVU5tV0hUWnZ5U3gvTVBrVnVtN0w0?=
 =?utf-8?B?RTQ3a2RXaVhUVE1VcXlEWDIvZU5xeFlQRW1oTzNzd3VaRVErTldmR2Q1VVo1?=
 =?utf-8?B?Yk54N2NTeUJHY3BpSTlKeC8yK2NYZytqYVgvZzlrMHlPV09GaytwNGNYampC?=
 =?utf-8?B?ZzN0RWJ3akRTMHl4MHNzS3dVcGplWEpRVW1MYW0wSlNJNjgzKytMSWduVlYy?=
 =?utf-8?Q?Hm39c5McBO7756M+9c=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230038)(366014)(376012)(4022899007)(1800799022);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?b3N6ejVGZ1R3dzFsMzg5alhtQ2RubjB4MjA2dFlZNGp4YmlTc3FaWituS1Zs?=
 =?utf-8?B?UHF6Z3paOUVmb1V2WHh2ZFhZNmszdmVrSDB4YVd1NDV6b2U0Y0t5Y3h4aHRG?=
 =?utf-8?B?ckMwU0RVblQ4cndiMTY3YzFlM3p1TXNnQlhqZmwyWXM5NlRBN2VnOUJDNmJV?=
 =?utf-8?B?bVlaWEw3aitTTXpEVG5SalpjMVlVdUIyTlUvOGQ5bkdtcTBZVzgyaHR2eGpD?=
 =?utf-8?B?MmpKM2VlRDdhY2paZjl0bEZSb3htSXpFbkZiWjhmV3daeEpvT05PeFMxZkNU?=
 =?utf-8?B?ZVRZMVkyNStWVDh1ZHY3b3RZT2NNdFU0blBqcXFIdVI1VnZidFBkYUtXMUx3?=
 =?utf-8?B?TURWdFFubnI4TmFjWVdZY3p6RG5rNEd5Y0tRc2ZTZC9XN0o4MVZnQzdUbUF3?=
 =?utf-8?B?L1dtSXJFZ1hzNXRQU2hRSk1aeUo5S0JCazBjaUpvRC9KVHY1WjR3d2ljOVlE?=
 =?utf-8?B?UTJiQlJkTlMyK2t5MVNlZCt1bzdPNWJIWDY2UzlTSXBxRWVSaEhBa1Q5cStm?=
 =?utf-8?B?eXJPTUM5ZGg5VHFRL3dYV09XTHYyeGp5TDl4WlFzNGw5cWtUdHV5ejJwSi9P?=
 =?utf-8?B?ZkJDaGRKRW05KzB4NkRYVFVpaHlwbDQzL0tHcUpDVVRDbmlobWJuRVhjWU9a?=
 =?utf-8?B?ejBHYnlWMjdpall6RjFWNlNDQXpOQkVuc0RiWWhWWFBTN2xOS3ZDZTZZV0tz?=
 =?utf-8?B?UGJOT3F4SUd0RnJiZ1VpeGUvL0NyZXlieHg2ZCtvQWJHd24rcW01bU10NXYv?=
 =?utf-8?B?TUxPSU4zdXBqZjY5QVh4bHBKejlFT2QvU2R0SVNIL2g3OFZkQ3Q1dkV6STJO?=
 =?utf-8?B?Y2wyaTE3Yk4yVzdzUDZSelljZ0pJZ09PUnJiNEw1TDhzK3cxeW1pdjRQdlFn?=
 =?utf-8?B?RkVNb2xzSzJIK0lrUWZxbWxJRnlsYUNxK2ZuTG92QzNiUFNlakVOZC9ZSXJV?=
 =?utf-8?B?T3Q4V0o3MXBWcGs2UzZUM1l2K2RlR3R0dFVMLytqSzB5UXhHbnZQZnRtNVdq?=
 =?utf-8?B?aGVjbnNzbitpUTZReEFVblZ5RldHVDMvRWVDc2tMbkx2QXgvUkU3SVF2WWFr?=
 =?utf-8?B?UmZMdlNqbXpWVllWbXFpd01EZUhRcTM0TzllL1Y1Ym9BYW42YVBtV1IwUHp2?=
 =?utf-8?B?RGZpS0p0L1dFNEVXY2lLNSsvR1FxcDE5aXo5UE8vYUJoUzNDRVE4U0czYU80?=
 =?utf-8?B?L3A2eXU2Q01oRnJXUkZKSnFSMFk2YWxhM1pIZDJvL0M2T2VaYnJoSWRiVXZu?=
 =?utf-8?B?a0FWRHZzeDVVZUY5eWdUc3RKbXBMZ3BOVEgrb2JHUG5zaHJaeDVQQ3A5bllL?=
 =?utf-8?B?c1BoQXNkUy9PVlUzSVdnSmxBS2UyVEpnTFhOb1RkYlk3dkNZOUpMOUVUclRh?=
 =?utf-8?B?dEtvN21wdW5WQmhLdFozWGVIVjFwYTBzUkkvdWNNMFZRUkhudmxWMExxQ3Jh?=
 =?utf-8?B?Z0xRdkpibDI2VEREMmNKVkZHeEV1Z2VhYkprcVVHc0d0cjk1amhZcWp2Mkc5?=
 =?utf-8?B?NXpPUTZ3UDB6Sm53U3BPU1hSSFJObm1YMXVSVkd0MVhVWlVNbWJIZVVPSkl6?=
 =?utf-8?B?Tk4zQmlzYzFvcTVqd25rOXdBS09UWVJXbkRjOGNJemx3Y3RZMWdqM3hZNHdJ?=
 =?utf-8?B?YjJHSGNkMGQ1a2FlREtmMVBFbXlaZDdhcS8rU0RTRmxpcFBVODQ0SVprVnpX?=
 =?utf-8?B?UjJoeFdKeXJNRk44M3BsdTVMSXdLeEpvTi9ha3J4azBkT3ZTVGhua3RsZm0z?=
 =?utf-8?B?b2M4UFZrNEYxWGxKVjdPR2N1ajQvTmhyRC9Fd0FySXlxR2MwWk9RdzR0RTRT?=
 =?utf-8?B?K0Z1Q3NlZ1NzOTJFTTd1enhrWlY3MHRKdUhDc3dDOVJ1cVk1Vk5JOVZXcWdr?=
 =?utf-8?B?RkZNbjRQcHZWaVlRNmZhcWxCT0hHVHp6dUZYSVk0Rkc3V1VKTjhSTnREYlVu?=
 =?utf-8?B?UExQa2MyV2N1blFsY2VXUGtYYXJqeXhoLzR2TkljYWpSb1RhV2FsTWRqcWw1?=
 =?utf-8?B?VTBEa0RiMjNWanluRisvZjBiYUlqWjFJNU1rSTc3MUt1Vm9oamhiOHdFblVz?=
 =?utf-8?B?REUzTGFGTGNEbkxKdGt6T0sxNlpRQmM0NEtDSkkxM05VL29SOGREcDhYK0ZU?=
 =?utf-8?B?TUNHTytBdjUxK2RKRU9IazR4ZDlSTmZKQ21EVVdVNEhNeUlXVFUzd0pLeEpn?=
 =?utf-8?B?eXc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	GUXPviC/3xXIySQLwRopra7F6/quPnMI0pwB5cyKmki96MUOirEneB1We/8dxyLAyK9Sdzg8wrXgjXTrAAEw4+c4ccn/IWd1k6MYpxYirWomAp4ePIIb/tUNUKzwiFcX3I5L3m5YQuHox3X/pt6IWMcn43twja/HFebI+sOKk0N9ThZBWKSLUrimVZRM5Sb8TBfUarPhuD2MeT8PR+xvraBM53bZCEr/81DPo2KxoGD7MirMJTFPoTaCi+RWORZu2f1oH9ld9HssFei10sVijRWRiAt1HeU/onG22W/6RSPlvoXXOSA7Tguxovgfwprz8ObDvFFm8A7scmx9Ifgp7q0h2dagCQl8b8AwD6SVsQ0R+RqrnBbRml9vECBQW28ZxjcPKevHsXxTU6jMyCVUis3uasTh9MQPO2kh2UjvWIJOAa92jPZZS/rXeXmwqkeSYYcE+YpCPu/5TwSbpKd4Jjw/n99Qe6IYgL8me5627aXyTCJJ2kF2XudORht2oKyEyNZKo9+HUjebEUN3mILpdZDJJb3a1U4JQVufWj2z7YM51hPxyRW5leOr9sjAGFG5EAS52HTEpjMne976b46+PGzJoxFtyDPAKthiUoKY/aM=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fcc513d-ebe4-4141-3038-08dc954b3b90
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2024 19:15:53.6435
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DyDB376LCJuS2IK2IppvMWRJxr8rJEqAS7afI5ROR+TXey1VaiNDq1pzTacYo2vK6mvrKo4Esr/0zhYmc/eWWDAwiEIPozWwmxkaPHoiwEc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB4431
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-25_14,2024-06-25_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 malwarescore=0 adultscore=0
 phishscore=0 bulkscore=0 mlxlogscore=999 suspectscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2406180000
 definitions=main-2406250142
X-Proofpoint-ORIG-GUID: gz8rraiGs5uKQY03rTS5YrOaR4NUsKMO
X-Proofpoint-GUID: gz8rraiGs5uKQY03rTS5YrOaR4NUsKMO
Subject: [oss-security] Fwd: [siren] Reputation Farming Using Closed Github Issues / PRs




-------- Forwarded Message --------
Subject: [siren] Reputation Farming Using Closed Github Issues / PRs
Resent-Date: Mon, 24 Jun 2024 15:29:38 -0700
Resent-From: bpursell@linuxfoundation.org
Date: Mon, 24 Jun 2024 18:29:26 -0400
From: Bennett Pursell <bpursell@linuxfoundation.org>
Reply-To: siren@lists.openssf-vuln.org, bpursell@linuxfoundation.org
To: siren@lists.openssf-vuln.org

Closed Github Issues / Pull Request Activity
Reputation Farming Using Closed Github Issues / PRsCVE ID (if applicable):

none
Description:

Maintainers have reported in discussions on OpenSSF's Slack suspicious
activity in OSS repositories especially in Github against closed issues and
Pull Requests.  This includes commenting or approving on these closed
items.  This can lead to the accounts at question being able to pad their
Github account reputation by seeming to have contributed to those projects.

Reputation farming may seem benign, but in the wake of a number of recent
incidents, OSS maintainers are recommended to have increased awareness of
anyone attempting to gain trust illegitimately.

TTPs/IoCs (if applicable)

    -

    Long-closed and approved Pull-Requests and issues being approved again
    or commented on by users who are not members or contributors to projects
    -

    Non-contributors with no real involvement in projects show seemingly
    significant involvement in OSS projects

Recommended Actions:

    -

    Monitor repository activity and report users who take part in this
    behavior
    -

    Lock old issues / pull requests / discussions
    -


       https://docs.github.com/en/communities/moderating-comments-and-conversations/locking-conversations
       -


       https://docs.gitlab.com/ee/user/discussions/#prevent-comments-by-locking-the-discussion
       -

       Github actions exist to do this automatically after a set period of
       inactivity

Known to be actively exploited?

Yes for reputation farming, further use of this for attacks unknown
Date Added:

June 24, 2024
Resources & Notes

    -

    Discussion on OpenSSF Slack:
    https://openssf.slack.com/archives/C019M98JSHK/p1719226970214779?thread_ts=1719225074.824219&cid=C019M98JSHK
    -

       Join the OpenSSF Slack: http://slack.openssf.org/
       -

    Example of existing Github Actions to lock old threads:
    https://github.com/marketplace/actions/lock-threads




Thanks,

Bennett Pursell
OpenSSF


-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#1): https://lists.openssf-vuln.org/g/siren/message/1
Mute This Topic: https://lists.openssf-vuln.org/mt/106860104/8539914
Group Owner: siren+owner@lists.openssf-vuln.org
Unsubscribe: https://lists.openssf-vuln.org/g/siren/unsub [alan.coopersmith@oracle.com]
-=-=-=-=-=-=-=-=-=-=-=-


