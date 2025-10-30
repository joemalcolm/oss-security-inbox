Received: (qmail 19692 invoked by uid 550); 30 Oct 2025 00:12:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19662 invoked from network); 30 Oct 2025 00:12:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=/OL8dxNMUZyU7y0AupKjWSt8KquVOAeeqIiuixWdFTM=; b=
	ixbQa/ua3j/M23ZF1Q8ZJhOZXe+yWhCmOl6hZNaKtdTu9WyqWWMuiDLJuSep7epE
	LbxlIWRAfx1I9KkpjJWS6fzE8/Ne7TKIyYB1ajHd41EzYF8ZK7w/ldoX0gweBLHg
	BaJP7oeWhNnC+/AKLWCoUZaWluDgn0oQ9Ny0yk1cFozdV/+lx7tSy7ozkJIb5j7k
	yyum/xYfUn/7dDAl0uj40n88QPjV/9CyNgfb60+O83/CGjmZbn9NYXD3uGfxzCeB
	KbPJKPUN5F8NNFYf3rsQQ193CKXuu8SnBxVs+T7V2uvkR5Dps/gD8SFbjd64ZUK9
	DuhPZHlB7K9XNjjiEh/WIA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mAOkxTfnkGM2ldoCpQwjfiT1QEMVRo3ykX79unGGQkzwdMLDCT3I3KIBV/bPmpB6XzCqcV/zZKlyq9eBdhwZxoV4GxE1HOu7bWmczAzdX1w7bqscWhdclaU/OJ81Vea+7xQRjLbwY0mqaYzZSwS1L/v/nP4C+5krA2ahw6KpQx+9s87LInrIa75xxfKUKM4UVdX6TpaRKitljquDVGnB1W2LCk5crbuUWjFqTFqKTk/qd9fJe68hoNWLYAsCb8ERPysZRbm4k5/vC7GhVpEyPBR2OawbRxJ6Wk1bjt297LFPxu0EHNH+u8l4dsl+c8u5jTLqON5vPx8IBoZUfCe0YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/OL8dxNMUZyU7y0AupKjWSt8KquVOAeeqIiuixWdFTM=;
 b=hq6N48ULHaQm/4Ciwz07N3KcxFkczB9dxgB0UvcJHxDDH2X1W1xD2bJ6wY2cwi3hIFofYZP3w6GRZkoVPH2j2hlL1rkVr/o1NpnRIe7cyOkwNnOYikaBH+Qbv8Tu1+DxBVtdW2xiwW5yaqw/vj0O6gRAuRtnBnqNijeOWKV/KvWNwiHYHikWB6vC2z09dWy1GCLAyNv6xonk9oakn4sEFAHZlY77Qg5tjU7aIbDuBYGHHv49EFghfxn3nXiD5tP79SOgI1o7PeFFlmzmiO5elJwYaXuCMa+MUi2YhQRLu0WRbh57F+nHq4EBA8+x8RdrxsIM0fJJ0hJoq71EEF2SoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/OL8dxNMUZyU7y0AupKjWSt8KquVOAeeqIiuixWdFTM=;
 b=lZ9B0KW2kJGiBun9SfKy3o0mhIeIOaEFHYARFXIedrIdSCdzJdNM0ToN4TPnYZM6dUgwB5thrhgxFm0hAbVKWeNOn43ZvEwgnBGm/8CFYifvT10l8+V53myFcvH/16xM/5HyqWO+1jfSJsvcOdbQTGlVNQQRCmX1ScTpXH1f+Ao=
Message-ID: <84b54a0c-c68b-4d39-8d7c-6e16da591b19@oracle.com>
Date: Wed, 29 Oct 2025 17:12:03 -0700
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <2ccbcc13-fc25-484c-a34d-56f27ac87db7@oracle.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
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
In-Reply-To: <2ccbcc13-fc25-484c-a34d-56f27ac87db7@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PH8PR02CA0025.namprd02.prod.outlook.com
 (2603:10b6:510:2da::15) To BL3PR10MB6140.namprd10.prod.outlook.com
 (2603:10b6:208:3bb::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR10MB6140:EE_|SJ0PR10MB4782:EE_
X-MS-Office365-Filtering-Correlation-Id: 019c922d-14e6-49e5-cf8a-08de1748f512
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?eEsrMDFzMTVkS2RvSXRzaXJCRjdJRHJyUEdpZS9tT1BhN0FTOHg2KzVFWHl1?=
 =?utf-8?B?SUxyVnRaTVUxend6OXVreEdybUZZMXd1YXk0Q2tCUUlMMHJnaWRodSt0YktO?=
 =?utf-8?B?a2pGUWVuMmRqeWY5S1RiTDJjZ1dxcmlOY1hKKytLMEhoMDVEa3psMUZjVDZH?=
 =?utf-8?B?Q3BiT3FQNkliZ2tMRkRJeUJiUHlpZkRoUHUvM014ZGo5eThhNVQ2TzhvNXlZ?=
 =?utf-8?B?WUlFVVJQakFzMmxjMHl2dTdSS1BkWnhQSzM5UUMvMjk1L3A3NVNWd1ZxcGZa?=
 =?utf-8?B?VWZ6d1RoSGxPbGd3WXh0Y2VQc0ZuT0laaXVlcFZYbDVYYkNJczFxekxYS3Bq?=
 =?utf-8?B?S1lPa1p4T0s4dUo4TlVKYlAzaW4yYmprbCtpRkFHUDlPOXBRajMxVEk3Rjc1?=
 =?utf-8?B?bU5lbEp1dHNzQkpBYUN1TG56eDkvcEhMdXRsU3RVcWZ1L2dMV2c0U01IbjJn?=
 =?utf-8?B?c0xrTmNrYVoxay9xdmhQQVg3UTNGazFzbThiRklyMjdpREZwN1lBYTA0YVha?=
 =?utf-8?B?V2NqZE1vOTBuK1h0UGpsQnhqWGRJcmx3YWh1a1BPeTd0WnU1QlRjSS9mam1M?=
 =?utf-8?B?SVRORkRaNmEwSzYxRWl3WmpJMUp3QjdSS0hMc1EzKzkrNTNHZjR0TUd0Qktz?=
 =?utf-8?B?dDczRHpMb0NVLy9zYkRGYzdMMVJWMGZ5TVRyYXNnWUJkUlQ0enFkTlhldzhV?=
 =?utf-8?B?cDJydGI4bStjOFRQRXljQnBBempHamlMTXFoS1B3Wll1Z0lLbThWU0hHa0dY?=
 =?utf-8?B?UGZIYXBsem9iWHJlZ0c0ejdxWjBqOU4yRFl5U2FxdU4vWTA1dTdWVDRUSzMr?=
 =?utf-8?B?ZmtuM1NMUGZLTW1aNUpHc3pjODFOK01acHpTcmlaS2c0NTdORlUvMmE0S1di?=
 =?utf-8?B?MkhVSHhKM1lPTWE5NzVkS3NDK3VzZWhFUi83aWRpTFJzTE8ydnRnaFM5cmdM?=
 =?utf-8?B?bmFmTEJNSFdjZGdzWTUvR1RjWUlhLzJuczY1VGxxQzRaajJFV2UvM21oS2lX?=
 =?utf-8?B?TGNaVzVLMDJpLyt5T24xRmJtamRsb3NRRmxuVVorYlBEZmtWbTBqSDI4eVIr?=
 =?utf-8?B?bklGbmx6cVJHakRQMDh1Yy9ta0l2eGE1a2gwKzFlQmU0eVpMSHQ0dVpqRGoz?=
 =?utf-8?B?SFllZkc3L2VKNXF5WFZHTG51WWdyQnhrWTlLd3dDeFFFYjl6dklxaUxwemFq?=
 =?utf-8?B?b0RmK3ZRT21OU0ZKV0RNNTdQL1RzSjBSMXpuREdFME56aS9rVmVxQUF1OEh5?=
 =?utf-8?B?UFhTa0FGWDBDNTJIQUpqN2kvN2dCQllyUk9jL3NEcTJDZHRaNHpBZFI0MnJM?=
 =?utf-8?B?d0VXcmxBKzF5U0psN1h5MzlEWk1BVDM1L2Y0dVRyTDBRYjlDQlJoSlhVQTFM?=
 =?utf-8?B?Tm54dFl3V2t1SU5kY21aRzFKMGk4UWd5SjlGQS8wTUpCMU1XWmkvRzN1Uk5H?=
 =?utf-8?B?TGZ3QWFvOEs4UXp6dkpzaXROTXd4cnhFTjRxWFhJNWFVSW5qM002aGRTOUZU?=
 =?utf-8?B?WkF6NkRJMlB4N1U4N3ZCUWMxOGJueHFqSEJtVldjT2Jid05kWGdFVWJ6OHJQ?=
 =?utf-8?B?dndpdWE4dmxCUURpVmROem9RSVNSRzQ5Q2JKZ1c1RElKOHQ2SG52azdtQmNR?=
 =?utf-8?B?NzhObksrV1RGRjR6d3BtM2FSWFMvcG05NmprZW5QTmo2aHBzUlR3S2dJMmMy?=
 =?utf-8?B?QWg5Q0RjZHVadXhLd204RzJYcUE1dGx4SmE3ZmgxY2t6OVEzSm83VXdNUmFE?=
 =?utf-8?B?Sk92MUJOOEJJMHl4ZG5RM3N3aVBWVHZFVE9xSGtpVUxwTFhhWkpEM1hCNHNT?=
 =?utf-8?B?MU5oeWttRFVlMFBXSmpzRk9MNnQxZG9QcnFaSGFSdXdsRnJFRHBRVW0rd21Z?=
 =?utf-8?B?WVgzVHBsT3NWMWpmOVI3YXZVcGVvM0Jwa2FxRGU4ZFNYdUpCUmp1a0NrQTVH?=
 =?utf-8?Q?nLg7cPI+OiHSv7Tedy2DcITMVjeqQCuB?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR10MB6140.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?TTJJL3ZmQnJKMlZldk1Lb2lTUDVEblRORHdWTWVjSUh3ZUZkdVNnUzJieU1x?=
 =?utf-8?B?dDc1ZjkzbWI4cnNzN2dFdGhJRmVnd1dpYStWQitLR012TTE0bSs3Vm8xWDRS?=
 =?utf-8?B?aFMzazF6eWJkYVM3RXR2U3NHTW04UGxnUnZ3VUpNMy9JNlAwTGtZb3RnOStE?=
 =?utf-8?B?Mzk2cDBBVWg5SFJ5WGgvQXFoRVVoUStqS2dwUmd4R08xZjdyVU9EbTY5QkUw?=
 =?utf-8?B?dlg0eTlEMGZ0MjRuK1JlUVhINnM3amdqdktMRzhSVDZYNlhBa0FQYjBTcDVB?=
 =?utf-8?B?aklnV3RjMGtRNmtCbWcrVlRQbStVSGU1d3hzVmFtR25FVHMvODBia0lnMlpR?=
 =?utf-8?B?MkZFOEpDZ3d6YlZWelNPMWFaUWFOa2FWa3N1eHlHNzdPT003MDlLQThaVU1W?=
 =?utf-8?B?aE1oUVV3YVcwc3NNNVFFMEZPK09Kei9jV244RXBvT3J4S3VCSUpVOTVMV2xU?=
 =?utf-8?B?ZUd3Zzg3Nm5adkp1N3crdWZLa1FkSVh0bmpQRVBUbWNBRVVadWtNZFBKWnZH?=
 =?utf-8?B?OVQ4M0l2czNPOHp1Y010enB6cUpUUWs2ejlRa0FQVmIzV3B3ZzNIVG5SS0d4?=
 =?utf-8?B?bXFzNjd5ekV5VDRvek0zblNDVkJFdGhPb1JzaHZsajR5ZW9pZFZjOUY2M3VK?=
 =?utf-8?B?UlFzUlFUT010MTc5UldzbHZZYkxydTIwV0d2T1V5b0U1SDZDVVo3Q0phUWFL?=
 =?utf-8?B?VE1PM0N0Qnl6OG0vMkZVMGs1ZHBMYkZDdzkveDF3TlNBbkNFeHFBajFEVGZM?=
 =?utf-8?B?cVlYU3M1WmxIQmtoOHAveTN6NmVxdU90dUhXQmlkZkljYkdjalcwNG1KVVZJ?=
 =?utf-8?B?YUx1UXRjUWZESEEzY0tpSnNVRVpCNzRXNlBnc2pFR25iNU9ONTkrOWxIRVVy?=
 =?utf-8?B?M1VtOVJrVFdoNWlDN2pJbFhncDlZeC9Vc0tMUGg0R2M4Q2hRb29SVWcvOFRU?=
 =?utf-8?B?RjRJczllcUVneXArc1ErNzBNdE9aVElOaWx5K2s0YWoyVDY2Tjl4aUtYZG1E?=
 =?utf-8?B?azVHY1E1N1pKU0Z4TkY2dldiWUFRa0dTcU9jaXpYNlVrRDEvQjU0Tzd4ZC9M?=
 =?utf-8?B?WnkxSkp5R3BhSVNEUk9nRkMzMnpqVlVRTnlnME1ZMUg5YjZodDFXRGt1ZVNR?=
 =?utf-8?B?eGhGdld2aVRmNG5UMENiOVowMkVweTJyWXhRcnAwLzBraTZJWG5WZlhlZ3Q2?=
 =?utf-8?B?QmYrcFprN1MwUHpoQk9tWFpibkJRSC9ZbWIraGYyY2pUb2lYU25XNDFhNmVM?=
 =?utf-8?B?ZzBjY0VUS0tlSTI4L3hhZXJGZklWT1NrQkF6WG4wTXBiVTE0VnkrM1FPT2U3?=
 =?utf-8?B?dzVXUThHdit2OW45Rk1Fc1cranhydW42ZWthZkZ3eHR5bDYvVW4vaWk5VEZt?=
 =?utf-8?B?bnRqSk5LR1BuaUdIOEh0a0JKd2ZFaXhBSlh5S0QvYjVJMm54ejFsQ1h6UDM1?=
 =?utf-8?B?MGhkRG5XSE9laUNIaTZVNkZKUDFYVVRoQUhDV3lvZHIwSXBFQWMrU1JQNEhY?=
 =?utf-8?B?ZnYrT05OQmVRQVB5UVZrR0k2RFFpV2k0MHFoNU5SV3BkTGx0VWx5dSs3amFC?=
 =?utf-8?B?ZUxtdWdKQXUzTDdxdmsvL1J0SUtpQTRmMFRvYms2akhOb1g0OHlDcGVjM3h1?=
 =?utf-8?B?OEhQckR4emxIL2hhTkQ2QVROckFQUEhRbFZsdkJwOXorYmYzWHM4THlNQXhp?=
 =?utf-8?B?SW44Y1BXR2VEN0N0OE0wYTFBU295MTZYTmlwNFdsUGZoOHh0SHRwQkFPL1Uy?=
 =?utf-8?B?NXFlUHp4Nmt2MzhEcC9NMFJER1BjOG01SzRxOEkxRUZoNUVqUHppdzVma2RO?=
 =?utf-8?B?QUZmdG0rVjNjOWRxYnBvV20yVktOS1l3YlNsaVlFUStKUHN0WXJWWGxHVm9p?=
 =?utf-8?B?WFZLMHExSkdFWFRMbHdNNTE5dFc0V1BTcVBKR0hPR0NTSVZoWGppTUVRaE03?=
 =?utf-8?B?c2x3SDJaZSs3OHg3Z09SU2svZkdSUmt5RVlNZVJOMEEwWlp5UW9lRE5oYlBu?=
 =?utf-8?B?bzRjSFV4dFRyRTdZcjJ1cTBqODk5a3VRdlRWcVlwOStMdzhJeUR0RDY5UVJt?=
 =?utf-8?B?V0UraU9ma1F0ZXFDWjNHV2R0QjhqSlh6UTFESFBjbDljelNEbTd5OC8wektj?=
 =?utf-8?B?dlFOQWJ4ZyszYVRmWHRXOGRkc1JlRncwbkt3SDhzajEycFRCUWM1alZLQm1j?=
 =?utf-8?B?a2c9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	qG7VtWXqG8ihs3ESRY5sD2oWAqgg5I1oWBpBYE7maytrOqsJltHEgVCA9I6NFdFpQiWLY4AJwEt0cqG/c87zRtTY/z0zhB03ZB082I+ZZbOQRY2fhxGWMus+d9p9ckCmdSHxMxvNaj2VmHsavlojxVvVsJtSGu6atigaphL0Z/WyHpOzGi5x3iWjP1PpxURLsnPJuimKmuLE64HNrOigpZSgSLAgxG4zN57N9n2zkPv7YtlTxkZ9pWP8vXY2uuG7nWwiYTs/Y4bxyzYVWM22uItge4DfsJtlLvxqr+IEGKWM/ZMujPCPw3CAHGoDDPMN/0FR5U7rdm40zFq4nhkxR8drPfXzJmr2LzHEe4fojfELKPAV3BkFMQc6qz28JTm4giUdqz3D0IEYwxb0rxXh9m/OqoF+nnJhQ35UaPRZyEeEskf0qSEtC+5Ks/6WBiZgnnZ2+kCoTfBXN9BJuvno/4yeB59HUCd31/A1eOhviITUPMGLWe5k5GDt02EfuyyOGRfJ5+Cp54gkJy4zmAL1egpPjjcQF5J71eZHzCAdKt12vQqG6wtwSLRRXQE4TwotOWHENWVMr2v777maTkDW0DB3BkRXRpe8YTgJWOE6hCw=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 019c922d-14e6-49e5-cf8a-08de1748f512
X-MS-Exchange-CrossTenant-AuthSource: BL3PR10MB6140.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2025 00:12:05.3829
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0UJAJj+kBMuBbN5IheFLrrC4DW+0EQ+Z+aN+rcm2pQOqaMgytbwWEP/Zc51hMgaj1xEH8aQwEiuSSIa1ESsZd3GGa6W9S9s8Wws1gP96giE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB4782
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-29_08,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 adultscore=0 malwarescore=0
 mlxscore=0 phishscore=0 mlxlogscore=999 spamscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2510290195
X-Proofpoint-GUID: lqhS4SEZQ_zr24FCiXz-yVsixFo_5X0L
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDE2MiBTYWx0ZWRfX+l5kL/D/EIIX
 W15WZlyiAOWaqtjh2ZsGqYAzJTGUDStbqUdDkoiJzYJ/8hnyK+0csjCN/5XEZNb0+U9ck04QVxU
 Hpia5jilfyXTe+uZvJ7qWMYKPDpKlWwH/hz37TEUC6W7cb3yF49n29vvqC3RnwQg+k3jZelHQR7
 GaUGw2NaoNig87b1GTNsPwzS/qlKPZufLH4BMoYCyZIf54H/corGgsODkI/YAqkWRYKLPpGPoAM
 OlFu0CtFSmPyz/5MUZjAOup/9B8FDCp7h3cj3HMQFVGSyvsCX6kahPq2SPZgkgcpmxSTov3XizS
 I6rRP2deolVyvvtfoOJ31YO3DOQvsDFCSE7VJtE+n5DX7Iy8zvbmpNMhjVZ+P9BPWijIp7oSW4L
 hymwagQyW4ZwF4VRTOfToeESp7YGNvFvdieoApGTy64f/6J8Xs8=
X-Authority-Analysis: v=2.4 cv=Uslu9uwB c=1 sm=1 tr=0 ts=6902ad5a b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=x6icFKpwvdMA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=omqxvBYPAAAA:8 a=yPCof4ZbAAAA:8 a=I6Xzomif5BfCAXvvaQsA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=pgVImZlf-HoA:10 a=LHRESdT2jHCYgTnjdhDM:22 cc=ntf
 awl=host:13657
X-Proofpoint-ORIG-GUID: lqhS4SEZQ_zr24FCiXz-yVsixFo_5X0L
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

On 10/27/25 09:34, Alan Coopersmith wrote:
> Among the new CVE's published this weekend were these from the VulDB CNA:
> 
> CVE-2025-12198
> 
>     A vulnerability has been found in dnsmasq up to 2.73rc6. Affected is the
[...]
> 
> CVE-2025-12199
> 
>     A vulnerability was found in dnsmasq up to 2.73rc6. Affected by this
[...]
> 
> CVE-2025-12200
> 
>     A vulnerability was determined in dnsmasq up to 2.73rc6. Affected by this
[...]

The folks on the dnsmasq mailing list also pointed out the version claimed is
a release candidate from 10 years ago, not anything current:

https://lists.thekelleys.org.uk/pipermail/dnsmasq-discuss/2025q4/018338.html

(The current stable release of dnsmasq is version 2.91 from March of this year.)

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
