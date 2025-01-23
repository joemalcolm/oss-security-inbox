Received: (qmail 30155 invoked by uid 550); 23 Jan 2025 17:24:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30105 invoked from network); 23 Jan 2025 17:24:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2023-11-20; bh=lPtWcQvCWs0EZDn/xZW9zI+q/3aIN9/ZM7UDV6gBZF8=; b=
	PPbMlW37Ljy0sBK5erxjxqD8srp+ndJfiQD42My/Q/7BCuzBDSTxR0eBW46T7Xjm
	oOkNZf8hqlWL8nBo7fkXpIjNAAOgvSDxx5DTiuCnoE0D29uyT8H3rM3C5whHDxdy
	CAb0d5PUFb6k4ntchK61sWGDuYldMWEOjOvjMjHDljgBDt4nUL+zaxO/TwdLfmbQ
	zsqq9Av2FDX42MG8S3rFd02JRbmpdgqZk0GDOtUCK1QQDDjMMLT6PBk9/6qKFuaF
	XbL9ce77+AEeROL3cK8KaEeLX9OJlUuUpMoi0aNDl1kSwMhUaf1TDHPrmMDs9gXl
	dEuFHMQzJ+mWdO24MwBOXg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UBXeDuMC/EFea1QPCtNI6fntXr0c9erP30eCLXybsSuJS6WHkLbYC8rqxILBTGP7L/BcABeaiY7Gfbfe9jHBkaUEj3cZ2KGMF7Q7m1KrYAbBp7X+Rsj6TxYDbbIgeNX2RROTktpA3LTgl0eaQbp3g4C6fzrDOXQ6KAvdNXlvmt4ah+HdZVP7bABz/2FRMQcjTqEvKUaAbHSCI65XUvWv7+UHN9NqAHRnj/eyrnebbqLqPj02smwTJnVsd7iEtHAE+ViXRq+eG7P8FLvBf4Mp1ahSEtkXJZaMSfJ6XYuEJENCc9kzIcVlylHw44GbpRY8GHqVmneN8zZdnq/X5s+gZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lPtWcQvCWs0EZDn/xZW9zI+q/3aIN9/ZM7UDV6gBZF8=;
 b=cvP23SJ9LF8L4xT50jELi5dkX8kGQZ96whIdkvuRwUfiiOorFMUyVt52xPg2/80TikTlXb08i3gbHF0xI3/IAMeTFiV4elPu4bkNMA3SM/i0sgg97i8I80d2N8k8NTC3EOdK3D0SWgYtEx5Zo5ZhpR289W9ZSB0tDEaZSO/FqMOHfVXbfrMa76U0aXCfYACRA5G2HNFPaEG2E3ArPECmGCXXWKi/aJPo/ThiIXO29x5osfLsCt2YdjzW7/YhRpFLYqMReM2AHtSdJ1XPkZFif/MI/8OLp0sLvyFyqm+ct8jmDyhIw0GWz3MB5yNXp4o3gemG3O7J06Ap7pwyT2wZpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lPtWcQvCWs0EZDn/xZW9zI+q/3aIN9/ZM7UDV6gBZF8=;
 b=ZpjnDQ27H8yqq7xXmrv4BMPbvVwXiHv+VDMjbFssfdOpCUEHxh4iNcXcHH38eF0ypHaSgBe0LdH85R1MgyT/7tvwAc+NQI8ermEvfXIsqu8kZIQKTholNbn92wS3CB9G6O2pkh7SzQxYmrKZyZYYPERIFPs+N0Cmxk5J6GjIIT8=
Message-ID: <fb02293c-d4cb-4de6-85d8-2cd82d574ba8@oracle.com>
Date: Thu, 23 Jan 2025 09:24:14 -0800
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <20250123024222.GA16803@openwall.com>
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
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
In-Reply-To: <20250123024222.GA16803@openwall.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0014.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::19) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|MN2PR10MB4367:EE_
X-MS-Office365-Filtering-Correlation-Id: f49fa612-78fe-4f66-d9f7-08dd3bd2c2ea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?SDE4NnNyWjA5ekp3UjUrd0xpR3dBVnZrTDFPckJpYjdmcnBOemMwQ1NHbHBS?=
 =?utf-8?B?THNTL3RSMEtsajhrNnVrOWN3QS9ha2VtV1J5MG5aQWZMaFQ2amVRQk5QdTBQ?=
 =?utf-8?B?R0JIVWNPMUllSDEzYkEvYS9xRHFtaU1PQnlyUEJ4cTZkendZTlNqOVVGdFcz?=
 =?utf-8?B?d0QzcitoNUZXbHUxTGQ0bGJCVlJlcnpMaC9FZzRSd3diZGp6bGYwdzZlWStI?=
 =?utf-8?B?UFhPWHNxK2lWL3VTbEQzTFRYeVV4TkF1bks4TE1OZDcyM3NTcXkyaDdML3lt?=
 =?utf-8?B?S0NtNG5IZEEyN2REQWFyUENZVUJhOGRQc3g4eUZxQ2hLVUkxek42M255SDUv?=
 =?utf-8?B?L0FWbTV3WUxDMVU4RHQ4bjhHdHRqZlVaUks5WXRFUUd0a3IxQkNNS2dsY0NC?=
 =?utf-8?B?QXN6eDVuWW5KV1IvSUFMREMzNHhpTkNKckpmVEhCanYxYTFkSXp3TkZsNTNw?=
 =?utf-8?B?ZGtMSUlMS25hUnJpU0F2eDMwVGxzdkFEeDl4QnArZlNJelcxZnUxK1pxdW1J?=
 =?utf-8?B?OEFzMFN3WlVpRll3OVphQnQxeG1OWSs5aldDNnNWcE9Wc2lBSmsvTHlrbnZh?=
 =?utf-8?B?MnVlaGhlNldxVDNUVEVYZENXVFpndE5IYnpaakt5MTlZSDRCYmo0UUE3RGVV?=
 =?utf-8?B?YXF6SExIOGNtL1lIT25pUCt2RlZRZ05GK1VrZHhHRVFVa0VKeWIxemdOcHoz?=
 =?utf-8?B?bld1ZmJKWEs1NW1xdE1PZkxkMHdzY256dUZCdmdaUTZJV2F1Y3dKUWo0Nkxw?=
 =?utf-8?B?NEt6cXRZOFRGR0hmWXk1WEUvNk94Q0xTTk1mZ3BJV044NS9NeTB3R2s5OGdH?=
 =?utf-8?B?c05DcmlwQWt5eVlnb3hwejFLTTdIdjVmbW9PdUFRZng2ZGpHa0UwdzZRYlYw?=
 =?utf-8?B?cmg1QUdnRFdSelNmeC9rNEdONFZheHpOdE9Id2ovcFZDb01PcUlQQmNFZXZK?=
 =?utf-8?B?eFlUYm84ak1MaTFhbmZ2ZWtPZk45N1ZXNEFLejkrRmNPaWR1KzZYaUFSTXNz?=
 =?utf-8?B?WWpwUU9neTQ4QUJYNzJYV0dwVEVZWVpHbnAyYXN2VHV1MGlsNlNqRkh6UDBK?=
 =?utf-8?B?Y2R0U21wVFF2dHFkTGNUNlRjM0VxUXY5QUhwdXhDTE9JZHNTYmZ3ekJLN0ps?=
 =?utf-8?B?QngvK2toSjRNRHZ5Wmg3YXBieHZtK2hUakhRTmo5aG9QUWtVNDNxWURQV1dL?=
 =?utf-8?B?RjR3WGdBS2RPbGVGMlNVQkxWeUlVRFJiWjRiUkJ0VnFrdVFzb05PZi9oR1VC?=
 =?utf-8?B?ZzlIRXAxblNuM3VrUC9YekFUazM4ekRZZXVFRklMc2dST1BHK2VQZUFxdzRv?=
 =?utf-8?B?Rkd4OWtRdE04YVhWTWRzVjdEa0R5V2Z2d3h2UlRqN3B6WVl5OVVCSC80M0Iy?=
 =?utf-8?B?MjVleUM0NE1oNWNVYWVqblp2YWdRMHllRWlFck11YzdtaWNGWk45b0ZINmRi?=
 =?utf-8?B?WDQyTVBXQmdGdExjSnRsaVVKVy9JTXBmVk1IcGhiWjF1L0dXRTJReHVFV1Jl?=
 =?utf-8?B?by9Bb0pvTk5ldm5ia3Q4Z0xQRUxTS3U0S3FQUy9LS2xMYmRoU2ViNk1mbUcv?=
 =?utf-8?B?YmJ4azZrNmZ0UWt0RjQxMFMreTQ2SFZzUVlhNFk0bHQ3a3RyaVg5aEVYZXBU?=
 =?utf-8?B?ZmlNWHBCbEs0Y2lvcWxBOG1pS2ZUSmJCR3d3UU11ak1OUUFBc2ZWWHdRTkMv?=
 =?utf-8?B?VzFOZnBTYU04SWRFc3RFakdpWDhJZENkOE1zVEtRU0xEdnJHVmhMQUdhOFNF?=
 =?utf-8?B?aWZFV0lVVHMvMXFoY0liV1QvYzVLRkFGSE1DUlBjRWNadjJ6L3EvdmQ0bmpl?=
 =?utf-8?B?MStYaEM1Rm8xTHNocUhJZz09?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?N1ptK3JNTGovUnpNeDN2a0dlTHRYbjJrV3R0Tm1mTEJPaUtQL1oyY2NzSGg1?=
 =?utf-8?B?bE5pdnI3cUdBNUEzM29CQlhGakI4RldUYWJvTHlUMlkvVGVhbDRBeXVNZHlp?=
 =?utf-8?B?blc0YUlOa1ZGUkVvN0tLS20xblQ3cmhHTUQ4TWVnL1NNdGpWV3pHWlEwaVBr?=
 =?utf-8?B?SXdLMEdXTlJabUFRM3Qvc0JPSG8zVmZkK0dYU2dpelhjWTE3UU9tVHFwUFV5?=
 =?utf-8?B?TEl0bTlBWjJkQVdIdjJyS3RtbXIrUkVtMmdnRS9wNVdiZi9MNkhOSm9wa3g3?=
 =?utf-8?B?QkNQZUtNSkZBRWZsMFFpV0t5UG5IVUo3djRpdXNSZEV6aEFiOFloZnkwK2tv?=
 =?utf-8?B?eElIdjFDYWRYMDdVd3NCTzc3N1ZKTG1oTURldHZoOUVvWHpqS0hpekJ6TytV?=
 =?utf-8?B?SVpHV2J6Ty91OWhiclFUOWRYeC9EUFBvOXdwaWM5ODNacVdRQjZhUS9WOFdY?=
 =?utf-8?B?emxtMU50N0x2N1NiZlF4UkRUVStuZ2NXVmtqKzVRVFZaUjhuZjgybVFjYmVq?=
 =?utf-8?B?Vno0eUVtQkhwT2VQVURFVUpsTURLMnlITzA2dlpKMFc5VEplZTc3UDR5Z2t4?=
 =?utf-8?B?UzRzZDIxZkFZMGxzSHRtTDc5WVNtbi9OOWZvWmZTdDkzdmo2eU4yOHBxdlVL?=
 =?utf-8?B?VkZDUmRyVXk4WU1PTFlCZ0NtOWo3VDNOb2l6YzhnaHIrNVRJbVFPZUUyb1pT?=
 =?utf-8?B?U2VTa21NNUpwUXZCWFlGRzZYZzlWQ3prNTlhbGE4dGpGYVRxNnlQVVJCd1U0?=
 =?utf-8?B?dG8rSUdTYy94eHdpSHlGK0JNQ2tRR3RKbzBkQVlvWUJVTGFvZzZQVDNTRDRu?=
 =?utf-8?B?Zzljb2xGaVdXY0dCeTE4bGNYeHliZkxiSVBqRFlCOXI2ZGN3WGpEN2RMVng4?=
 =?utf-8?B?ZWNqayswL3FpRk5vanNERUZ5Z3V2OEQyM0NrOHRsYUo3cE95WXExZDNOWjc4?=
 =?utf-8?B?QkQ5N09Ed0duMHk3bEthbU1CYjNvNXprckYrOHBaK1RxeFRyU2t6ZFQ5YzJ0?=
 =?utf-8?B?L0h3ZXRsWnlkbXlvQjRWdWVTOFk4dVpKQ3pLenNvOHVBa1BJdk5aS0w5M0Z0?=
 =?utf-8?B?Rmp6NGZiZ0ZwYmFBK3NsWGppMzhMWHZZQnRLMVM0Wnd4SEpTT1VDMXp2Zkg3?=
 =?utf-8?B?T1NtTXhzWlFNMUxWcERxNlNXZkxmcjhsWExuQ25FTTdWUnFxaDhlYUE0dVR4?=
 =?utf-8?B?azREMlhSN3NQQlJzenZoZ1p6b2I5cllqNm9HZEpabzlpb29OYlRUMENqSGZr?=
 =?utf-8?B?OEtLVVYrUG4rMzRGMVdWbldyVnltK0dEUHFuZ2NEakVNWklkYjdtbTlUWXYz?=
 =?utf-8?B?cmU5SDBCY1owcXIvT2JmNzYwQ2NkNFpkSXRYZ1hwbEZ4UXhhTEovbG0yUUMx?=
 =?utf-8?B?TkFJM1V5VkFqM1V4NytyRWZHVVBqSFgyTEgyZ3NmY0JRamwwYlViZFpUOTJq?=
 =?utf-8?B?YU1TY2xtNDhiSzZKeWR4dTdVYkFpSWhCaG8vS1Y3aVNldHlMU2hUMnB3YmZl?=
 =?utf-8?B?eVBjVFAyQTFMRWhMVVZQelJBbmtlK1k5dGEvL0dSdzcrb0p5QnhGMGNYNEd3?=
 =?utf-8?B?ME9HQVZVZVFiS0s0RmJlTnlRbXEyUk8reFpuTm42dGFnU1U2TzFUTnN5ZzM0?=
 =?utf-8?B?UHE1b0hXRHR3RFZ6Y3VoaE9qaFoxTHM2TkVUUUFZc0N2OFl4VzBUOUhnczhk?=
 =?utf-8?B?Z2JmMXVKZ1pWeDNxQlpQbEJVd2hrUzF1YlVTOGYyL2lVUDhTTmd1UXE2QVpV?=
 =?utf-8?B?OE1BamZHQzNVSnVQcnJLQTVzWW1wQlpzNTZqYWhFZi8zQzRXT0hDSkpoVThs?=
 =?utf-8?B?YUFVZ2YxS2dxc3RoQUsxNG4za0dod1dTQWYwcS9PZStEblZQcTlMc0Q1Y2FI?=
 =?utf-8?B?UGhpK1hpWVJDa2pkb2Rrb1Avdmxsb0IyalNlTHBNbk42TVZBbWtrU0Y1TThG?=
 =?utf-8?B?NjE4RFpvMzA2eVhJb3J0QktOK0dTOUNDU2ZaQWF6bjY1MGZQK0ZlOGxPQ1hz?=
 =?utf-8?B?SUVFT2VXSDdsU21LS3p4LzhWQVpQKzNFRUYwNWMvbDJ0cHZkNWFmUEJENXQ0?=
 =?utf-8?B?a2cyak43UTdGaDRFaGV0T2VxdjNiaXowVGJNdmlKcUN6eURmcmJZMXBIVytq?=
 =?utf-8?B?Yk9yR0hoRDczbkt5azhDRHcxT01sSzRtQmNPZlpoeFA0OU1ZMW9STE9tS0xN?=
 =?utf-8?B?NlE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	5WL4eR0eqHgGK+Vqey0kkBn/e3dNcD6Z3egG+lxDf6XXxy9mTB5hi8nfMA8yBYifxUFA9CgjTKnOA4tETAi84z6iYCNJH623PYERR41ky7QtOZHCAePege9JR5OySkmbShzYLwKHRadhONp2PgaPq7bWl2ZggZdefgg2iL0zbjO23QSLjUQ24CjZo9CB4xveIMBj0jAsYdjz3IzP60QXg7h2cwTLFUx3zucNSVRC3QtCNGdHmDV0tx8CCnGC5Y5iD4JsZ1/lEXMu96WEfQb6obsRDy1N0CjmtbFFKeaTGfQByByTXwe2DHFnlaIW2+Vt+hjg+8+QPKh4MAnU9bxGnmjaRUbTThII5o5IE+Dabl+7XZXcpo0hGAOK4qbags4/Bpub0a6/FtvU3CwdxE2WX/E6qQ3AYI/Ay7g+pbXM3LUdRFmxBE/pcPqnLQ02IpFJouWdOIzQaPnpiwGZFl4nMdQK54EG+sqHU6mQpyhEexdg96ghfbU+3LdE3CYlfojrw+aCz2XjhiMtNaZN46XCgJR+FpiG35pJPW0V3m8TIHb5byQY9kUl7Ds3HkojsSkJaHzHU9g4pTr1qEOM5pQFLPIN3bejyNy4+azjbsE/C+s=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f49fa612-78fe-4f66-d9f7-08dd3bd2c2ea
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2025 17:24:15.8239
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1q7p+9n7bYaJDY/VTBHKa3GacfE3zmlyOKnyEGs37mAXA2EusAwBh2oXcE03Oq8jirDdXnghuibah407FWeZUMwwCDms/7Lpv3NFxl1qbxk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR10MB4367
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-23_07,2025-01-23_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 mlxlogscore=999
 suspectscore=0 phishscore=0 bulkscore=0 mlxscore=0 malwarescore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2411120000 definitions=main-2501230128
X-Proofpoint-ORIG-GUID: vYRikb3OjmE95jH61y2TTtLBqox089m5
X-Proofpoint-GUID: vYRikb3OjmE95jH61y2TTtLBqox089m5
Subject: Re: [oss-security] Oracle January 2025 Critical Patch Update

On 1/22/25 18:42, Solar Designer wrote:
> Hi,
> 
> Once in a while, Oracle publishes what they call Critical Patch Update

Once a quarter, per the schedule published on:
https://www.oracle.com/security-alerts/#CriticalPatchUpdates

> documents, which list many vulnerabilities addressed across many Oracle
> products, some of them Open Source and some not.  This is great, but it
> would be even better if Oracle also communicated to oss-security about
> those vulnerabilities in its Open Source products, perhaps one message
> per product (e.g., MySQL separately from VirtualBox).  I hope someone
> from Oracle reads this and will get the wheels moving.  Anyone?

People from Oracle have read this, but it's specifically people from
the Security Alerts team who publish those documents who would need to
do this.

> Perhaps there's more Open Source software listed in there, which needs
> similar treatment.

The open source packages delivered in Oracle Linux & Oracle Solaris are
listed separately, but these are downstreams, so I've always thought they'd
be off topic here, since we normally only cover upstream issues, and don't
publish every distro's notices that they've applied the latest fixes to
rsync, openssl, glibc, or whatever upstream was fixed this week.

For those who want to see such downstream notices, you can find them at:

Oracle Linux:
    https://linux.oracle.com/security/
    https://oss.oracle.com/mailman/listinfo/el-errata
    https://www.oracle.com/security-alerts/#OLBulletin

Oracle Solaris:
    https://www.oracle.com/security-alerts/#SolarisThirdPartyBulletin

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
