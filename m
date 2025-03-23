Received: (qmail 15944 invoked by uid 550); 23 Mar 2025 19:31:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15914 invoked from network); 23 Mar 2025 19:31:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2023-11-20; bh=U0oeBsab86PM79zhaOflOSuemieK/cz1Nb/qmjAn4Ag=; b=
	AqX+Av48Gok9tz5++D4wzxe3cck7TnFvFITSzKkhFdmAxSRymgYzWGXVkN1UkBvA
	evxSSPcV0Grr+iBxd2ouAx2Hqd4HNP40D3Sx9Vd3PI/SzdGcSl3+BJ2H66pRr1VS
	3Mr522g+DPWfTaPM7CFc++TY4ysei2u3VXeTRRbRZIGOUO/x2Svh7pm23dOe53Wp
	c9SuKQngnGqcWbBHCyVE4BW9ILkMGYYp5FF/B/WnOHAgJ5HmP4UAOpoOwh0SHwNq
	ZHx6Z1HFGK+tMlj/IdZVUYWW/W2DVVslDzuEmxZE2BD627X1XaRw1fW6C8cUWqZ2
	IVpU8pjDse7AHCTQvC0psg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IjhiPubA4bQSDZFizr2Cm71cEPHULt1uTux9NDtX/3U87jYSmP8Ft94zemNYCTCUeEwbMtwO/Zi6pBosH412eRakii1W0MWDn8deA8zmZhs7eMoT78CbAeLzBii8/fGgBNE8bQjTLfFzaQkvHTa5MJVA7imYrjvlnY58lojbZVQq2Cm9mQfAGgWwUJruagHcGwob2Xkl7mMhnbpP+GGIfFyS+kOwRv4tEv/1H2cB2PoTaO1LbqH2LEz/TQ496mk0SN2fZ+LFAdhlJnQV8qx9HAOyUkaseYuhbJDmcLBcmqSdG+p6OIC4dbF6KPz5VugZD+A02SsKqy1IiD4BzQ8XBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U0oeBsab86PM79zhaOflOSuemieK/cz1Nb/qmjAn4Ag=;
 b=pPQX27CzbVJMSI5Dnd1LH7bzm710PgF72OaHwYx2BbtL6TjECpspqJUB7pvdoP9rkzYZNlppYpPRbYLy5ZWeb7tAYfScwRnbIgkJt/QYgP2d1gA4l99gg/00L/KrmJForc1U9AipKt1eYfs1paWrmOAwR4mQidGqC7lLHicOQOkWNvz3K6eYR56jhICwZfIB41RBDeErmKryxJ0klKjFB0XAQyLYZGy/DcRNfqntuXBw62e+MRW+JdZOGLzr9PbdC1WisZxihhQOeo0ATYo8mBxe5rMFLueVP9mx/1eIasw3DWQPOFjf00J/k3G2Cl2y1ovpu8QNDVAoJnOmun+gGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U0oeBsab86PM79zhaOflOSuemieK/cz1Nb/qmjAn4Ag=;
 b=f7AMnGwtDh+5UquP+LUje/OSEsaLhSMChBGf+L8btgCU7tgrzVUDy3yd84bxV016ElzW+pTkc6DV1M76OjbShgBHCcV0IFG/En+9e82wlCfaMCNJd0jol9xW1IshBS2hHlBdUDwW5X81qccaiXceIrfhrOs848cDaQYG9y1vEb4=
Message-ID: <5673e1c9-6369-45f6-9822-80e6da1dceec@oracle.com>
Date: Sun, 23 Mar 2025 12:31:14 -0700
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <097b20b8-b6ee-40a5-9116-2cdd4189ae77@oracle.com>
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
In-Reply-To: <097b20b8-b6ee-40a5-9116-2cdd4189ae77@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR05CA0157.namprd05.prod.outlook.com
 (2603:10b6:a03:339::12) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|PH0PR10MB5594:EE_
X-MS-Office365-Filtering-Correlation-Id: 004a4d22-a7a9-4863-d254-08dd6a41474b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?NjZnZkF1UUMvNkh3aHVJUTBBM3ZsYTREZ1FhdHQ3djRYZHMyc1NFaC9XMWNB?=
 =?utf-8?B?dzlLNVVJZ3ladDlKeTNZWnI2bElYMTMzNlJKOHhRVDFtRXhyRXBFb0Vwdzhl?=
 =?utf-8?B?Wk9yOEU2bGhGb2p5WkhzMlNtaVdKSG9MNFlGc1pldHlSL1ZPZlFPQy9nNFQx?=
 =?utf-8?B?UGUxNkdTTjJpR0JnbnZJY1FnOFJ4eEZ6bjhVTTlkMXRWOFhaYkQwTjlwd29y?=
 =?utf-8?B?bGtvTDdnNkoxUHJpUjU4YnhPbjRqUk1uT1pjMXpZM3h2T0l3NnFOSnYySGs4?=
 =?utf-8?B?UjJpc0lFTFN2SUlFOStsQTVyYmtQWUFHemZ3RHc4dGU0UjFJMnppUHluTGVm?=
 =?utf-8?B?ZXpISk9TcmlRQnBMQVVIdFpkaU1GTkVIcU1hT1BCcEEwbWh1RitqNGRrbitD?=
 =?utf-8?B?ZC9ENEY2YVM1SjREUnUxVkRqQVJ1aEpVUEFxYTRSRm1iSUxCdTJwanNRcTV3?=
 =?utf-8?B?a2sxVVFXR011L3VmS2hIRlBjNjdJZWw1bzRlbEdXTUl3Um9tSXZ3LzRVNU5z?=
 =?utf-8?B?RXo1ZUNpMTZPZ3ExZXhOc1M2NjhhS0dudkVoYzJPZXA0cWhYL1hKMlV3WW5y?=
 =?utf-8?B?YnoxbmxKWUNPdGFWWlE3NTRuZk5FR0pHSjlIbHAxeHVNamdjMDFZWkxiUERM?=
 =?utf-8?B?dWVLMXozM0I3bUszdUIrL3dPc3lNRXllcW14WTJZWUs2YzNtUmhUcU9BN01m?=
 =?utf-8?B?N2hmNzRia0Rqb1pSQmEvQWVtb1JJRHRpMHExWXQ4Zmpyd01aaFBLNHcyeitK?=
 =?utf-8?B?TTRHL1ltbnlrUEFLajBvQjhHRHBjdGowcS9jYzdIM2xqUWZ3WFVaNE5lb0FZ?=
 =?utf-8?B?VEVmTkF3RFNIUE5oZlBMcHViUkNMWStUekUwanVIOXlJdUtlTk1KRXZPb0ZP?=
 =?utf-8?B?ZnliYVM5SHVFMDJCT2xBVGJ1TGNYNWU5QkUzUisyKzRRWmRzcE42WVB6c0R4?=
 =?utf-8?B?MDVSOWxlV041WitGSHJodUo2UUZQTTZyZVU4ZHY5TXl0cG1nZEU1U0JPNXZ4?=
 =?utf-8?B?eVNlN0k1Q3ZWNnR1NGoyMjBxZDZTd0RsZUJOZDdjQXBlYUZOL0tZenJmZ1Ri?=
 =?utf-8?B?RHorRk00K1I5MG1uMVZZM3I1Q0EySmFCWmVhVXI4Lzk0T1BlbUprR000eUg2?=
 =?utf-8?B?VGF4dzNoNXZNZ0NQVVFuZUdsMHJvQ1BpQlM0MzVqeHUwdUtXVWxqRlh2ekYx?=
 =?utf-8?B?OWJzOEFYSk0ydjZLajZvTmxhakpCQ3djY3NwK3VKQ0pVSWxVRkJucitwbFJV?=
 =?utf-8?B?bWN6Qkk4TmZuSWJqNlN4RkwvWjRQMkFvc1VWUC8zRzh5bEhWQjNmV2ZPWnN1?=
 =?utf-8?B?NENQU1l3WmlRa3ROV0k3OXFlQXk0eHBtaHYxL1c1ZEk3L20xdkFWekQ0a0pa?=
 =?utf-8?B?OHhRcTdIWXZLUGVkQTJCZU0rWEMyaVFsbVVKNlFlOUpUekFmc1Z4d2F3QUEy?=
 =?utf-8?B?T1BvbW5LYW5IMnpnQ1A0RG8xUkpqck5jL2tEbitQbWdIdmRhNlNONGpYZ3Q3?=
 =?utf-8?B?QW9OL1dXdGY5emlCZVVwejVMVmZicHF0OVFYMUttSmI4ZTBIemVCVkVWRVpS?=
 =?utf-8?B?bFZkMTFwcXQyaENEakpzaERPUHg0QkE4UE9hTEpCeis1T1oyQnNKMHNRREc1?=
 =?utf-8?B?anJSNmhnZFV3U25FYktYNkdwYVFvd2NtZWZUNERDZDhKSVZ4VHg4SWJ1MkdG?=
 =?utf-8?B?QUo2Sm4yd2xNalBnRmJQc3dVR2JTMkVmR2tIT2hjV2t0dDVpbElBaWNWVjNI?=
 =?utf-8?B?SXpkQVBEZVRNOW51bVAvQTVmVE15bzkrNXZ4ak1KQWllWXlxNVNNQk5MS0pV?=
 =?utf-8?B?SFR5Vk5hY2JwZVJOQnlHQT09?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?aTVKWDJseUVyclhyeHJicTlpNFQ3NjQyNUtBRm5PZ3lEOHd5dlJINUFjSFM5?=
 =?utf-8?B?MFRIOTRaaHViRjM1TjNzUit5Y3hFRHllaXNVekVUMjQ3UU9vc1dEcjlxenpm?=
 =?utf-8?B?b0R6UXcvTkx0UHNFNzZOZy9LSlJ4YXpZdDdWcW9pZXhsTTFEZXVQZy8yeG03?=
 =?utf-8?B?U241ckFldWhUOHFnL1dNVXpQOHNFY2sxVHJJSXJFeHVqVzlUMXFZSzZzeGFj?=
 =?utf-8?B?Z1VFYUhoU09Oa0lIZ3F6WDYxSk1qRXJETVNqNHYwQllNVmdwNGRnM1lPWHlL?=
 =?utf-8?B?V1hHT0M1SnRZTEpFbmFCcEhRSWxyWWJSTDQ3M29aa0FES1ZPc0l2MkNTRkJN?=
 =?utf-8?B?YTFxM3BRUmROUHlmQjR3T3hDczRoRG9DL2lsc3NLS0dzbU5XRXJyVzJERFZr?=
 =?utf-8?B?bGtGZm5qU3RsVnVQak1QUkdaeUl1TXd5VUFvdWtJdW9tRTVweXBrMGdkWHc2?=
 =?utf-8?B?Vzdqb3V1MU1DQ2RzYWx1bUdxemxVT1Jzd1pmRzY0MjdwYlVwbzVHUWF6VHUv?=
 =?utf-8?B?RS9YMzVUMHlrbzF4b3BDNng1REFWMVh4UTBWbndoaHp6NGtTRG55YjdUTGpP?=
 =?utf-8?B?VEdFNlMrVVVJUUlISmUvM2FQNlJZMUtOaXh6bE1KWDV1dHozeUY5YnVnQjJh?=
 =?utf-8?B?WnJZc1I4Ti8xUG9DZlJaa3YzYkhtRFVpNGVNc0FIQlY4V0dDVWIrdWZzR1NW?=
 =?utf-8?B?NmNiOC85VW5meW9PenJsYnBVSnJsdVF0bERWamFLUXRRbUp1Y0pnR1lpUWtQ?=
 =?utf-8?B?ZzVCRU8vUjBwT3BCTVJtSXVQWkNNdUNBcHFyMVNENzcxZThFa21ITXgyazVN?=
 =?utf-8?B?SkV3S0xtb3NCSTZEMndTNEdyMThFVDdCR2E5Q2RFN3lqakhjYUp1ejN6TGRZ?=
 =?utf-8?B?aFJCZmJxQWVVU0hIME8yaVpRMVBKTFVCejh4VjNobi83TStEaWVyUmZQbHJh?=
 =?utf-8?B?Rk1vVlB0VTIybHZwMnI0aE44b1lRYWwvM0VIRUZWWGt6STVFNVFKZ09vVU1O?=
 =?utf-8?B?UFgvMldxYjZzY3AyZ3k4OFl2TTlaRnM4M2N4S3RxRzBlYmNzTVhLdlc5SW9M?=
 =?utf-8?B?V0VQczE2TzdHU2F6c3Q3TU9BbE9oQ1BLMWRzeUo5aURsS3lBUDZnZUdvZjZI?=
 =?utf-8?B?SXY3S2NWSnk2S2VnSEUrR0QvTURCK3pjeFFvby9aZ0dodFhNMFNoWllRbHNZ?=
 =?utf-8?B?SjlRRU51bXVYMFZ4M0hTeWhTaTJKNDUwb2I5UW9ubGVvZUtxcjhDOEJKMWZJ?=
 =?utf-8?B?T0NLcmRuVVBvQ3RzeUxFbDFQMHp0UC80RytzdEJ1c0Y0YTk2aWtWRjBJWStQ?=
 =?utf-8?B?aHVPSHIxWEh6dHd0M2luQW1NQSttY0wrSERDSVBPSlQyZThOMktMeHNsb1hz?=
 =?utf-8?B?aEhKQXB5S1JaYWFuWnJ5WXJtOVhLT0hsaWdsQ3pSZHQxbzhaWk14MFFydWdh?=
 =?utf-8?B?WWZmK0hzMVhySXplWUxqOXhHL04wbUNucklOOG9OcFpaWGFhNzNXYlZEL1Bt?=
 =?utf-8?B?dXp4T3R1TlpOSUdoanZXaklrZ0hYZFZGN3dKRXo1T2cvY1RLUGNrVDRTQjg4?=
 =?utf-8?B?dVl2Z0RtdllvT09hU0lGaGZsR25nS21sZmhKTWxnM3RXeWJDeGVqOWNHVHIx?=
 =?utf-8?B?QVpkeFNVcVJDTE92T1drZUhDdi94RmxkaWc5a3NpTlpqdmFVOXNvNzZlbysz?=
 =?utf-8?B?SSsvTExabmNUd1lVaGJ4WEFSaUovZ1VrOVJXdDg0dFFMYTd0YXFRZEpNWlFh?=
 =?utf-8?B?ZEl6TVpDazBJa25ITFo5MytBcnFRdzVmWGwxa0dHWHg1SGtWUGFtNHNzVkJx?=
 =?utf-8?B?eU9rK3JPdnpGSS9MSzR5UUVUZnduYmFBNU1TNGVodjdaNXJJejdEUDd0QmQ2?=
 =?utf-8?B?N1hWaWM2M1d1eVNtTU1qNmxEZWhMbURJTnF6d0FGN3pYbExRSml4RHNnbDN3?=
 =?utf-8?B?MVJkL3Y1YW9Zc25WbFJieUZVZGJsQVFtZWFFWXJidEkvL1dQK1o0Y0RzYk9S?=
 =?utf-8?B?dVg5d29XN0pmZzg3Smk0SW53a2taMkhoNzJON1NDVnJLRHpSRkQvUWZ5KzhF?=
 =?utf-8?B?RCt6VUF4c3ZySnltRXdBcHNDWTNqQUYyWFVSQkFaR1VqL2kvRGdUUjY2L0Iw?=
 =?utf-8?B?Q05NV3c2NklIRThsUWtJTFNYUFE2dW9tOTBkd1BEeWFKbVdMbURmSEcvZDhG?=
 =?utf-8?B?N2c9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	dTu2UByp59J32RvOgTisWEWwHaLEwnwrq4ZET8QkVcaCxPDehRTgF5y/0VWoQkNOsc16kQ5j3lYPo3+5l638TvbY4+pnmDjW6TD8BmwBR3w8EjY3tPYgOi2oBeIofPlp0Hn4p+yvzQr2yx9FPMumbERXN3dWAIjNeCEMjY4DQ+NRG8zieR8fIgqsd95Q7spzetD31NUwqdLb1RzoFkLbs/bY7aYxgZa8T9HcU/JJT39I0LPGX3Qz+vdpFA+RFp7gI/2tKbtAAZNzPohjMDijlWU4+xdcBhiMDuKeupEe7sGo8Hipq0a19p37raF7Sbgp35zC/YAjTMVUQ/yKXRsHQCQE6YF0pYjgtx4f00jcUnL8Zr9mbfshhLC1y9AIOBxt6GdwqknjckT68t3bQlKGWZaFSB2/Rk20Xa3uimhP5ZKhDrtArQjCS0BPTsUTgmOnwM3nq0RV4190E/Ba9xyKtHsOVtrQqbe3XEf31c1eSpKO+kOlG7H1k77+PIA1QeaTHQuTijus3ZE0zcwvQ5gfhyGuSbDnw+Wfn7/JFW7VzMxGiCngnBvTN/p4OIxRW+CXQd+QNMqRQTavhK/0SZKNgZZDo1mKrKxvVCy4eecAI/s=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 004a4d22-a7a9-4863-d254-08dd6a41474b
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Mar 2025 19:31:15.9354
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t4aLajUT4K2d57P+Qncv5ijsvS/ydGRp3E8T2BcljPLE/QRlu5gC4dsF49hjLrdwgNTQtGHbxWL7ZLY+0ThqBFHO26ztQrPD6Not81qEX7k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB5594
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-23_09,2025-03-21_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 mlxlogscore=999 adultscore=0
 phishscore=0 suspectscore=0 malwarescore=0 spamscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2502280000
 definitions=main-2503230138
X-Proofpoint-ORIG-GUID: 5-MpHOj62BON4xNd_XKz5CDH_e2_n-Dk
X-Proofpoint-GUID: 5-MpHOj62BON4xNd_XKz5CDH_e2_n-Dk
Subject: Re: [oss-security] CVE-2025-29927: Authorization Bypass in Next.js
 Middleware

On 3/23/25 12:14, Alan Coopersmith wrote:
> https://github.com/vercel/next.js/security/advisories/GHSA-f82v-jwr5-mffw adds:
> 
>> Credits
>>
>>     Allam Rachid (zhero;)
>>     Allam Yasser (inzo_)

They have published their own writeup at:
https://zhero-web-sec.github.io/research-and-things/nextjs-and-the-corrupt-middleware

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
