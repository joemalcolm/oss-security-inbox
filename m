Received: (qmail 24542 invoked by uid 550); 16 Apr 2025 23:44:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24500 invoked from network); 16 Apr 2025 23:44:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2023-11-20; bh=rDjkl+eJOThH/GN4gIZa5bvt3l6tSm16QfvaYWmmesA=; b=
	WLha+bLQr3yhwTvW5ijykgxVJDUXP02xk5ca8vsfZAiQATP8n/739RSFDWHMxrJY
	UukRZcMe6ZstXm+BICRXEGKWc+VOSMvU+UkZJUh90szHS/imKpVIS14IOOhXRsS6
	py6vDk94bG2LlAS5wEuzQNzLlowLTJD8WYu2pq1T9kJ4Zp3Ulo3PyEI1Fe5jZXm0
	VBmu4zj/rGhh++X+jj1a+KAhBhqEGRi32WD0o5uRkpBiaEPXsU1vNw4Rec0ux7Fh
	dbQ8yF+Y+84d77pZ8vdES7UnSvJx0E3mgVvdYB5QapwmRZgNqUTBmMyPi1nboO8Q
	TvTUPPaSKV0o6FL93udPFw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rkajFiQVqSfmG6f/KpQU2JBCTHgGmBiXYtkjuj7WfgHheiWg0zDm7/8ae14gOnU8dOUB1M9NKUDcaeyfwL9OJUqOF3aJmQcRh2k2OUES1S2NDBX/Qkw3iKzjMkgMKYu0+1m68uWbJ2umTejbr8YMIB9qTtbMjMhe4/O/wp1JJSY5EACmNsuiHzquU8hbP79weOZgro9HguA8mk2Sqtp5QaIxf1qi5BZmN9ZJ++odMfK+g16MYP3WKZQTofHjWR9zXa72/jjtAvdoxKEDOx4NIozf9Yzgcps/MJwy1FyAqpvZE0T/qDll3tLgxBSS0YiHunFHqtWWCM6heY2kDBOB6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rDjkl+eJOThH/GN4gIZa5bvt3l6tSm16QfvaYWmmesA=;
 b=lDDCnhy89+csvP5MapHij50DL3LJ41tZT1a89qy5APPKTWtj/MwFzGKddeKefsBkJw3OVrMuo9ME2tB+uISsSg3rtRxCsCG+InbF5LqkWPhkQmSZDOE1c85iQNYgd2A2JJIo3l014k1lpxgyZCGMd5CJ6TJ9ICcBkeyjblJvhdK8vbVtfC93I7uwenyMr1zPSiJS4Pw0O+IKaA3BxL+F8e25kJyUzn75x++/7poksife37qzJ2hUkCZQG4scmjpZCzliBczj7PtIxbsaVFVD5Xikhj/4gXUzDviOt0MydSjVBYurEWTm6Ymi7S0yIs8ol8R03NUFJFF+nqAWUEsWPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rDjkl+eJOThH/GN4gIZa5bvt3l6tSm16QfvaYWmmesA=;
 b=YRrKkSIGjT8Ifow2CedD34OhL6PHvUqoMg1pQ+uovB+PSRFaBGmeXiAK7AZRmUUWuz/X+J0u1r+iBLz/kxViS+tHic1BTtB7e2gC821RCBV3SKLZIryajLkGh/INYsY3KB903q6CX+sDkgnNU+S1USNzYmbIsgXqi2AnnerkAN8=
Message-ID: <c107e018-fe22-45d4-a9f5-304e46e74f6e@oracle.com>
Date: Wed, 16 Apr 2025 16:44:35 -0700
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <ebb379a4-03d6-491f-9e93-fc724f597a81@web.de>
 <3440a686-5dca-fd31-70a0-4f47da438ee5@behlendorf.com>
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
In-Reply-To: <3440a686-5dca-fd31-70a0-4f47da438ee5@behlendorf.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BL1PR13CA0440.namprd13.prod.outlook.com
 (2603:10b6:208:2c3::25) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|CY8PR10MB6634:EE_
X-MS-Office365-Filtering-Correlation-Id: debe69c4-c6c4-4f69-4849-08dd7d40a66f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?c3BuaTFEYTRGUWxaTG1IaDhkNnY1eU9wZVppc2JHNjQyREpGdU9RQzhlY1Aw?=
 =?utf-8?B?MHMrWTVWNDlrT3VBTHFYdFJQZk0xVnUrTTlZVGtydDAyME1qOGFDQzJkQVQy?=
 =?utf-8?B?V2VIK252cjU5TkRvRDE1KzVEZ014ZlIrQmE3cHVRbHpRejBEMkRFSDhsSWxN?=
 =?utf-8?B?MEp3T2ZROEJnSTlNeUhDOUhBZjZhanZnS2NubXFNUGNmc0pHbndQR2F2U2t4?=
 =?utf-8?B?dnNYQjRCRzlLdmMwc0xNNkxMQTVISVFXVnB1RVVJN0VxUmY5cTJOKzh0Y0cv?=
 =?utf-8?B?MDQ5RnpiN09CWHI0ZEFmZS9JbU1YSHhCTmNYN3FIV2Y0enVyRVZCUXNocUd6?=
 =?utf-8?B?V1hnSk9jM2R1VldmVXh1UXZDaWVWbW5TS2pkRUtTZmtmZjhBNE9keVNOa3R1?=
 =?utf-8?B?aDh6Lzk0N1ZmYlRWZFA3YisyWlB6aHFZb2J1VU5ZUmtIejJ1VHdvWWZPaWtQ?=
 =?utf-8?B?UTAzWlI5WVJDZkIyVGEyOUlVbnFhY3BhTGpudEhSWmc3U01LYU1iaWsrbVI3?=
 =?utf-8?B?UUd3eXE0SVNZV3ZFN2Y5VjlSMFVUYThKaXl0NFFuVmJlZ3VTdDF1anlWZHRC?=
 =?utf-8?B?OTlmdE9rY3dZekFCeFE4bm9oQ0FjVWhocnZUbWV2TUN3NGpIWVBLcStCRE9V?=
 =?utf-8?B?WXVuNGt0WDFZWmFjYjF3U0dvU05qdWVOZWtMY2FJS3o1SFRGc1F3TFlEL3RL?=
 =?utf-8?B?ZDNWbDVIUEhtZ0kyK1JjZHdEYmpmdnRzc2ZkZ1k2L0luMEFlTThCOXU2emZR?=
 =?utf-8?B?eGN2S2tzNFJUSmZSQmwxaTVhTVFBNlFzTkJaOXBOLzdGS2xzNHd3czRZdnBr?=
 =?utf-8?B?RFZlVFRjMldjSWpidjFhNytnY0NRaWFvU1Nrbm16SWMvZWh3bk9sUHBzM3Ri?=
 =?utf-8?B?c3FlREhXNHhZQzNIbHBHc1hmc0xBUjZUM01mVzN1ZEpjSm1YY2R2VWs2a2RG?=
 =?utf-8?B?alFXb0FzVTd5dDRNTHpodDBKNzNFTW9iUTFPOG1mNlVGdjEyek1iQ1d3bnBW?=
 =?utf-8?B?NHJ0NjI1MG0yN01ENjRId0Q5V0RNQmpmVldDRExBNTk5bjk3VmJYaUtYYTRL?=
 =?utf-8?B?ZHlXN0tqc0NFbENZTlljWklnNWU1QktKeW5hSll2U05ESXNnaTBsVWIwbEVG?=
 =?utf-8?B?YjloMW5iYTZCSmNRVFRNdk05V2I5MnErdGpVU3ZnWStvOW1CaWRnOFJrbDFB?=
 =?utf-8?B?Y20zMDFVOUM0SExLanJMOWQzVkpGTHAzQVNXR0h4QWMybjUwdEUxVldXVVIy?=
 =?utf-8?B?UlkyRFhJcDZmOEM4VDQ4ZWYzaUw5aXI0L0NNQjF5K29xaFV0MzVOZjFPb1Zu?=
 =?utf-8?B?MEJBYXR5UmNEUkxLS2NFby9nT2c4eFhVMlBpd3o5VTVPRCt4ZHhJSG1tZk9p?=
 =?utf-8?B?VzdkelBDMm9IVUFGamZ2c08xcEFwNnFuZDhwZTJ4bWEvSzg1SHBmZDFEN09O?=
 =?utf-8?B?Z0lnZFk2NW1pbEtMZERRTFcwVDJhaE1yR1U4eldVd1FVekRBTm9qdHk0bEtw?=
 =?utf-8?B?SE5Bc2loaXhLd0Jib3paallueUhGdDlrMVlCbUJPTGxhWUljL0RrRnJPNWM3?=
 =?utf-8?B?VHRrMWV2VWZxbnp5c0ZSMUk2UzV2QUJ2eUJnc2ZldjZrVVhIL1lxd3MzMWxm?=
 =?utf-8?B?anVKSnpEa2FZQkR6Wm5XQlhOWEFQVFloRmdyQlJJc3dTZ0VzVWh5a3pMa1dl?=
 =?utf-8?B?QTd6WWFNVHppY2NEODltRVdJZWd2SWViSlNySzZmZVBrM2ljOERzVVZyUi91?=
 =?utf-8?B?b1pIMkkrL1AzeGZVUnBQME5kMVcySmwxamkyY21pRGhaKzRJU3ZxNWZQSjl1?=
 =?utf-8?Q?kmIQZIYJDNoMAZDZ05uSGCoTjjCjxQoyw7vms=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?dnJqYlhYeGZJaFcramNyeVoxdDNoQSs3NHdTWVpDemxRaHhaUncwZ2NhWHRa?=
 =?utf-8?B?aXVsc2M3ekJ5WWpjNEpJMHdobXUwOFJSZzl1Y1VtcWY4UVRlV1BLb3dlbWw4?=
 =?utf-8?B?OXFRajNpL0dPY0lCaGZNTFFjWmtRY3RaSUh3Rm1DZTY1ZVV5MElxV0k2OWlu?=
 =?utf-8?B?MjdSRGUrdTNBeHlET2h1UU1TWTBOR2lsdytXZHNKN3FsU2ZVUjdCdDNmblZD?=
 =?utf-8?B?R1NZVk5BendqUEU3cy9oV1ZWM05LbXNyL1V3NnV0QnJRU3BER0R2YitXK24r?=
 =?utf-8?B?Y0EraUJDT2dFYjVaMlFJbEpUMUpTdTFBRCtqMlA4VjlTU3Z3eWovSVA0Z21E?=
 =?utf-8?B?ZTJQUFM2cWs0SVFMT1F5SlBiN3MxQ3BOeEVpL1crTHlQUmN3RGl5N29zYXZ6?=
 =?utf-8?B?enBQcFJCaHZwMWUrdzF4WGJZOVdRNWp0V2RrK290WUUxekoxSUI5enB0cTNY?=
 =?utf-8?B?UUk2VW4yeVRvSWUxSjh0dG5VckVzRWlIWERxVFVLYWhBWm9keC9qcjFJaEM5?=
 =?utf-8?B?WldjaVNpckxpYkluaHNCNU5DTTdhc0t1alczWVEvQXVMZG5tSTJwN1R6aStn?=
 =?utf-8?B?R1RzbU1IZEtmUU1MVGJtaVN4TEZRcU5RdGR1ZXVndTE5R1EvV3RQVVcxb2J1?=
 =?utf-8?B?di9IS2tIYnlEWEZPaVptYXhMMitHYWJwb3QzaFlXTWh4RDBDQjNJSlZ6NnpL?=
 =?utf-8?B?WlBBT1pOd2FBb1ZPeWw5azl0MEtKWEpCTlVsbmtIL3plNkZrTjJ5VGpPeVV6?=
 =?utf-8?B?UzhxOXNwbHlBS3JxdDNOblZlTDBtYlhSV3BRL2gwWWVId1hWMHg1VDBaTDEz?=
 =?utf-8?B?cEJUcXRmRHRlNDhpKzNmTXh3YzhUZ0RzU0tnVGsraGxHZmxQaEtHbWtvN3Rw?=
 =?utf-8?B?ZlhmaktLVGpPY29DdzBaa1htZkZSdVViS3R6ZmJIOFFjRmp2Vkx1d29mZXNx?=
 =?utf-8?B?WlVUVEYyNG5acjZFV2J4aDNzYWIvL3lVUDNlRU0rOC9YRXIybis0ams5UkFq?=
 =?utf-8?B?dCtETGpKZ0doTkl6OEVLWlBhN3FTWWVxS1N6N2VscXErYWJHRU5PY1Frd2Vx?=
 =?utf-8?B?ODZNZHlCM09KcUFjWDViWkEvRTV1U3FHVTVWQldjdDIxallOV0hEMjZucDdr?=
 =?utf-8?B?c3kycWZMczVPVitYK1I2U09YUXNka1pGNVlBbmZRYkVQOWhvblBsT2llc09x?=
 =?utf-8?B?MXhnN2Mxbjkrd2cwZDFHRmlSTVZVRUtiRW8weU1uckZBUzRuTFZCTGFKT210?=
 =?utf-8?B?Zzk3VnhNdCt1bGNoWHQ0VVhodndjWk1GNHc3ZGxxVzNsbkpxOEJDTkZDNzhx?=
 =?utf-8?B?aDVhcjFkdWJyaXpHaGtxQVJ1QklBaVU0Q1FscjFHLzJCdkZlbnNBTDhJQ0pS?=
 =?utf-8?B?L2UyNlFiNms5OXpPMEd5eTRUT1FVT3pla01jR0FvOHdmNTRnNkN2RTRNV1Vr?=
 =?utf-8?B?ZVp5NGJINXp1UDFWWUNvNkV4dnJzaU50Q3I2ZnlxTk1jVU40Qmh0MndVQkdK?=
 =?utf-8?B?T1JRaGpmYmhRemR6bkIrTTBDV2pFNlFkUkxwK3JZekhqRVh2YjVhWTI5QnpB?=
 =?utf-8?B?Nkp0clRvNlFZZ0FLRXFhMjduWk5aYVllM2lENWgzZEdlZXVOZitlclRpclRE?=
 =?utf-8?B?TWVNRExEVnAvSG9tblY5MkwxdzVzTFAyTlFzamtRV1cxTmMzT3ZueWtuOTFa?=
 =?utf-8?B?ck5JYm10UFR6L2Ewd2xYaCtrUUFuRlNzNnR4ZTNDcWE5UXVwaEFxc2FKK1V1?=
 =?utf-8?B?eFFlM243dUdlT2dySkFPaFZqSThxZzMvQnhpQldRMmxMZnYxbXg2NG9rN1hY?=
 =?utf-8?B?K29Hc0R1TlZINkx4R3pXQm5SVjg1cGw2V2FYa0RXenBQQytodVA4K2kyYTZ1?=
 =?utf-8?B?SnVmVlNyY0NaUFNGc2o5bWI1cjRSMWUrM3I0Q3gyOFljTklEVmEzTzk1WXVV?=
 =?utf-8?B?QUwwdm9hWXZlbXVqMmo0TGdxREl3R3lwVXBBL3MyWjdQQ0x1WDA5QUlYOTFX?=
 =?utf-8?B?RURQRFpqRkx4NGZJbG1XNjd0ZmZQK3VqQmRVWlMzZ2l3bDYzN1F1ZHV4a0VC?=
 =?utf-8?B?anVYVW1xVjI1VlVHRDVWcGozajJtQlN2dUttazNnRFZOQnRkNEtVYkVMcEF6?=
 =?utf-8?B?RDFuYjNqVFljZ1BBZHpHNENubldQZ284QndIem5CbVFzQStIbGtneVRsZEpr?=
 =?utf-8?B?c1E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	M1713XWwoek0ENCYErVUS2vpfsQ8PHV8uLc+zqDx5aP0RxybWCdf36uVGeBdrKhsrnpq8pwpkxlvIWQ3BjvgYK0a12XEiYBv7Uhffc8rxGRJyRs510zaOat44DtL9RcJSwkNQIZ0Gv7hIAfgm5+b/FYpRSugDNkRZW4PHFhuX1qlqYQd6agTTrX/gJ/7igQaOR2WavGnlO2+0UXaDf1ZYC9Z6VKHuyOSISuqTFEFG5i9pVnwWlNBm9Rw0V7CltSJlji1Fnebbe5P6h841SLu98nufuySTnKV7p5r9vNLsIMI4oU3FaQDDH0E5QHyjA6LGBUoO+xAVOCopIi3nVwle3aQlYPjqSWYpyIzRGn7mcDJxd5b1azcq1jwdrGkOj9uyoFh+BqInd6LTSLdBXlqqnoUdA4/26ZVItE+qxnBcxijAZhEuaegu6pKUhcDroj8Kfagsz4/BGG6+G9zsu5WLtoNCqsq9hmX64lsFYGzBKY6oNiEFu1ZLIiLTvuklxNlwUL7SAsd6+ZnpNvd9enjrKCjg/dgpYh3Tg77+fK6iIu9Nuag1eUWeZFE+PxWO3tyoFVhkTkEZmtG63q5bB0qylg8MlTK/IB8XfBzYbXOz/g=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: debe69c4-c6c4-4f69-4849-08dd7d40a66f
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2025 23:44:38.1782
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9X5kV9kh5DQWGc2pAaml/igzAfyfMBvjGzj4o/AvSpjEt5CCAAeK8GoM2dEDY3usvVrsFUfzLQRRXj8RpSyj36MFm5RuFxRgtCvE6axwzZI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR10MB6634
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-16_09,2025-04-15_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 suspectscore=0 spamscore=0
 bulkscore=0 mlxscore=0 phishscore=0 malwarescore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2502280000
 definitions=main-2504160190
X-Proofpoint-GUID: wtYVE254Lw-wE9lSE5de-Bt3-MZuiysi
X-Proofpoint-ORIG-GUID: wtYVE254Lw-wE9lSE5de-Bt3-MZuiysi
Subject: Re: [oss-security] CVE program averts swift end
X-Spam: Yes

On 4/16/25 12:38, Brian Behlendorf wrote:
> For critical infrastructure that requires sustained funding, it seems more 
> important than ever to move to RAID - a Redundant Array of Independent Donors - 
> so as to avoid the complete and total cut-off of any one (or a handful) of 
> financial supporters that could collapse the system. I assume (hope?) that MITRE 
> is pursuing alternative sources right now; if not, someone else should be.

https://www.thecvefoundation.org/ appears to be doing so, but doesn't have
details ready to share just yet.  https://euvd.enisa.europa.eu/ may be another
option, especially for EU folks.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
