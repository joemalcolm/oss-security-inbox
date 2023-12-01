Received: (qmail 7791 invoked by uid 550); 1 Dec 2023 00:42:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7752 invoked from network); 1 Dec 2023 00:42:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : from : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-11-20;
 bh=9kqeuoQUBJ1Wjzszk7BGL3A0cS8pFcI69wlfKdtFFbk=;
 b=fgDTyEmQJKtd4ituxZqS/eyVMA7tiqHtDmvz3MfyoKo1UOLjregmmZoeWzWsdfEA7zRv
 AuVoSjmZ9NkrfHCtvpEamLjDVknReesLaYmeKz3rffWgAeNAdxUnOaAkVxbhovmC9Yvq
 h9aZr+7vdsJ+C/oBaGSLNsJ0MwFIAG1nCx484BJApqlH34tEQ4ly8UY9w/3qkG2Lp0ju
 H26Ld30olHTPLWPGAP/0E0UH3vW4zLCIPwgYopck9xY29GFzGAjBPDGWWXVwL1Ww2nS6
 gEny3fpYwW8snbliZqEdrV4ngePZ+9jq9hoHGa9d5s/6Kyv+jC+u9RE6tgDRE/U+uEWY bw== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bVc2JSIBulxctgccXjmrs3IvpHj2uzmNHiZf6gffxzVUG8aj4FVzRGwEq6P+apv9Q0PHm9s0Dua/TyrG8Wa00yedavtvsQEB6iXIdPUr5X6Lr6r2R9zTb/m9a8JQ6STnOws1i16eBVjLd+IoWFAodeEKWkHymPieev/ZWeWaMKJj0WaXXOQCHJIDWpVEpqLtZ8X3w/LGi3DMt+dCFAHg6b7s6kgqjqIexDGXwVyGLawb2lL/TX1tabxi3kBb22a6IpxRa2gDAaZya9iyiaZdRSFg6QokN/v2uvjiD4hc7JzbAOyFoaIQOFYjUetcQLUMW1vqj23qdljJQjYyfYus3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9kqeuoQUBJ1Wjzszk7BGL3A0cS8pFcI69wlfKdtFFbk=;
 b=X2Ayrq/u5eswgkujEZ8UdPDnAm2QLnYhxRFGGp8H6JEWZVD2qwrKqBUP2LnHJr9BiF6e7zvHsEnbDIQyHRPEjzh2cBxSxLIlTV0ncmYJ2q6iPTIMXKTqmiUwBk++3ZbVKlqffgNiETrDILRV37Sem0s4ubyA52lAb2mBNR816l2WO87J5qAMApub8/ipE34cOd0eLome9ZQrLSK4wgKPvPEVsQj5If/vW3yKHgbMVUKQUd9Y3v5Hlledb3i3SbMH4Bz4apSvy/O+A7XIQ9OsEKBfTTbduyaSfBJ9FhV2ViXewcI1gID3Yb4hmB4eLgweaQJuUwbCLBaCrhOgVK9Yuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9kqeuoQUBJ1Wjzszk7BGL3A0cS8pFcI69wlfKdtFFbk=;
 b=gPEoL9H+6tXgK8K0QLGen8fWxHfuKkHrEUpnjnwIUTXrcCVB0YVVsiRLQgASBTe4DFRlZ9U3dF6OStR+rteCk6MSlPT8fyLkg2zCWVvdQmAZeLovhMAgXrayA01aaPYR3/tuhfOYPZiVgmy0+RG4Povg7GGOwdVwn+EC/6ccbVU=
Message-ID: <9bf069f5-9476-45b0-a89b-6b5dbf1235ee@oracle.com>
Date: Thu, 30 Nov 2023 16:42:04 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
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
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH0PR07CA0047.namprd07.prod.outlook.com
 (2603:10b6:510:e::22) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|DM6PR10MB4364:EE_
X-MS-Office365-Filtering-Correlation-Id: e9f8c3ec-d938-4f72-5921-08dbf206583b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	RIrE7PJpG7gA7t8G4gFv7tAXOn3jHnhEk/zJctGOK79Jj/NYBaYJmRM/D9FU0CRYWhNopleO4mKPNx1jd0tnQ/w3CKtafOBMWeoukbrm+8Yh3Y4tHgUREdSiwwlQ11V7zkDB0miRBqJSehJdpGCZS5cnD4NDbGvOpE6HjU7per+2YU7V2DiCjqThiH7mf9ha/ggLG2ybKrWsFwSU5nc8H3Aasr/p10mIQ6WnnG64y3NMp8KcIKYE+CmQQ8BnTxKE+uBheMRRFk9LLQb/Y/EcLTNEZWlObVXDc+bSELlwY1k2P7TL24FcGNu5pvclyhOY2r4uQcTNIwYoCUiPwiitXeAjQn/HdJVHcPpkJTcWvNkrKnEzNuQzYH+WecCVOH0dC2g9mhQLXxI/LsUnPahO73Qs+yRE/IW8IwUsoyROwFaBKhCTloDu0M/U9GzCUtlhXVl/SltBKvkMVfuNGCBbYJkZon12xz6SSMGGr16RTK3Ga/aVxPX0mMeOouXh1JW/y7MQYAisZQa2gN4kihh+YTo7vf7O6lj6TQvEayWykaZKF+2Z95hO8XGhmtzRWUX7iKQumUJ1GsZ1LCwNuL9YW8eHA/GSWdHa8v1CjOqLq6t0aRIPNrSr42IqSwXg4F7Dwh/mzb7u+tZ9Du+tWd/w27SGo2fznxfPTiBgjQBvJL9zFI8CNeCsO/yB1Vy7Im68yH968ymjiyolLInI8pBSnA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(346002)(136003)(396003)(366004)(39860400002)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(316002)(66476007)(66556008)(66946007)(6916009)(966005)(6486002)(478600001)(6666004)(15650500001)(5660300002)(41300700001)(36756003)(38100700002)(2906002)(31696002)(8676002)(8936002)(44832011)(86362001)(2616005)(31686004)(26005)(6506007)(6512007)(83380400001)(45980500001)(43740500002)(460985005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZmdFajhNTW1iVHowaTlmOEFVbGYybmlNZEx4aUxDMWs4OUU0UG9aenpIbys2?=
 =?utf-8?B?dFBmL2o1S1ZYN2Z1WVlNaVdMRUpaY2FNRzJ5VU0rc2Ftd2huZWF3Q0w3SW5v?=
 =?utf-8?B?Z2t0NWJCUnVqTGJkTWJEdTFZcmRDTlV5WWk5dE5sa0lSLzJSV3NZc3lmcnhk?=
 =?utf-8?B?VlcvUnZjVHRuSWZ2dmRXdVFaMWxiUm8xWXA1YUF5eFJ5UGViTXR1WTkzcHpP?=
 =?utf-8?B?WFVvaW8rOW9HNCsyOTJyZHlMc3MzK0xkN2NkeEROSWNhUXV6eUQ0S2F1ckpo?=
 =?utf-8?B?N3U3RFg3azBHcS9ka1FpcTBUcUg3bVcrYXNUbkFMMDhjK041WkZDdVJSWHdX?=
 =?utf-8?B?TGpIY0M3NGRwbVFhdk5DWWNsdVFLK1hvU3I4aTB5eFNCbElwYktzNmZJRnVN?=
 =?utf-8?B?ZEYxR2JNN2pISG94YmlVa25KOWgxL3RJaFYxRGZDRmlJOERDa0F1ZkNPUUFm?=
 =?utf-8?B?bWhibGhEZ0xEbjVCdVRmZG9HYUIzMjVGS1d0Wnl5TjFkK0tPTkVhdzY0ZzBG?=
 =?utf-8?B?VXBTdFl3eTFsYzdyZU92SmpjcWxTOVkzWjlLbFdQNGMyNXRTM3l1dGdrajZp?=
 =?utf-8?B?R1lFQ3dMWFhxWTNCNks0a09uSXBlRzNjK2s0Q3JVNXM0SHdiQXNDTDlqN0VU?=
 =?utf-8?B?VEU2bENPSVZKK05GMXkxdVM5OW4rbUw4OEllQzB2V3paNWp0a3RIZ1hMdUpU?=
 =?utf-8?B?UGtITWlBTmRxWUFVbUNQMlpkN3B3NkxSZ2xsMEt4cDQ2bEVNVzFxQmFrNVZv?=
 =?utf-8?B?TUhaQk5wcnpGbG9UZXdjMkU3MFB2WGZ0a1BFZGE0Y2dBcURGL2NKVHdvOU1l?=
 =?utf-8?B?Nk5wMnZ1d2dKMmlDeGRUa0tCT3FKZm9SeUREWVdGUGxPSVBoL3FCSVFMQWtL?=
 =?utf-8?B?b3E1ckhoWUdBYldqbTRrNThkdnVLdGZ1cDlub01OM3ZGTmFaRHcycHUxNlpz?=
 =?utf-8?B?WE5ZTlZ5bEROWEx0RXpDY0dyZTZtL0k1TWtvbjI0bWJFanp0bUYxOGt6VVBF?=
 =?utf-8?B?Z3pnYnBJdXFMNVFqTUxhMGlWaUtwOFYxcDYrWnMzM01NZ1F5VmVPODhYQjNK?=
 =?utf-8?B?aWwzb01rclc5U0NGQTZpbU9LQ0JQeHgvQXlTaldMN0d5Qi9RU2lWNC9DSVlv?=
 =?utf-8?B?Q1ExOHdaUEZNcUVDb25Da3did24xV0pTNExLSjRYVUYwc2hZTk5GSXhMQ3dE?=
 =?utf-8?B?U0N3RExEVnE1SUZ4NzM0V3A2R2p1U1ppTm1xcnRWRnE4NVRBUnNzdkMrMVpC?=
 =?utf-8?B?YTVmYVhiZG5pbmlkTU8vbFhGZGFnU1dwV1FYZjBpSVhuT0NET25wQldDU2Q1?=
 =?utf-8?B?YVNjK1dqQzQvNWxzVVppOTdLY2pxRDJjd1RqQldaRVc5YjU5ZGdPUk1WU3hG?=
 =?utf-8?B?YWphWVRkM0grSkkwUGNRYkJTL0lTMFBFa3ZyTGtiNmhrZGNaMVBoL1JORU81?=
 =?utf-8?B?NGMrOFExWkcrNStpRExaMDJSaGpIbmVpR1JTQnZrS3d5ZVlGdGlXS1UzRVhB?=
 =?utf-8?B?dFR4S0Vvb0NIbEdpL3ZvRmR6dTdWRURyR2swVkdUWjc0dzFFQXBZRFdqMVV1?=
 =?utf-8?B?UlJ0QXlzSlhVSzF5NTJwM3AvOGpIVjYxLzVvWnpTR2hEbStXWWZmRTNDdWNy?=
 =?utf-8?B?dXdPK2ZLdWZJV2dqNU4wWVdNc21DNTdPOHlPZTd0Qkxaa2xvMWJDM1ZQTVJk?=
 =?utf-8?B?ck5wMHhYNTFWT2dNdVBCT0FtWFYrSGt6MytDSlB6Z3pqVkkrVXJGanMzNTEw?=
 =?utf-8?B?bElJcGY2M3I0VzJEeTl3MWE3UXlzclV5T2NlSW4zY0hzNXdMd0tKVWRjeCtB?=
 =?utf-8?B?ZHpYaHRyUjcvbjEvRVNoeTZjWmtJRWhYSk9KK3lPWTNuYnpPRyttWGRBVnhS?=
 =?utf-8?B?VTZQOXpqVXBOOUlkbk5mZGtaOWJUN3JkSXRCQTE3cFpBbWxENEpIR0p4azd2?=
 =?utf-8?B?azh3dCtQUi9VSDFNUmUxNVJUUXpjbW1uNGhucUIxUGtCUmo5WHdaVEdtYlZw?=
 =?utf-8?B?REJ6MXVPY1l6UmdNS3I0aDA0SEtvZzl1WTR5ZEg4djlRQm1sYUlENDFjdllL?=
 =?utf-8?B?R1BXeFZkeHgxYWpJaktkSWZlaGt0NnpTZk5hTTFKRnAyVmE3TE9rRzJySTVI?=
 =?utf-8?B?NHNDUExWZmZydldUc3FobVF0U1hueElrRGxIL1E2VkxBaW1IcU54SWRnOUpT?=
 =?utf-8?B?MlE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	H0a3841XNi440O6gI74lS358m85rEr897DbtxNoezc7Gjow27CMntZHNp//PC6Yt+M3gx3SyiHQlQboL5W4kGgjzI+dro8NwslmecdkmVlM+QLhybcjTlCzxbZ+Em8b+FlwJRmfS32TwrY8GjMYe4l+3UdIfZ/UEkNKbhCxDbfBp/qX4u/v2Hv9JcFqnC1esNnP8CMfpEnqMp3jN8e7xZRJembdOq4MxycXXxP+g53Xg0er53ES8oqBWWU1gPxpMIHJQCxjHEOPs01P+i7nhtWpbzy9OKe3xewsHDsv0W66fxXdeXk1diNk1aEqHEySO6Os67z45gG3ckoFjZ9241xq3/6yvbHr6gmtklQU/MJT5L1jLewIWL2Zw6frCmfWgmr1N2eCbZFF90Dex63GddWnWYj04koXRJ/5rdacUjmYnLQNpP+qRSKfgMtquGolTf6/5DEFvUFmp1RCHjpEfJnmyvEfDwfFeLI+ql2Yru1yx8JSfvSA36h4FJxp+nhQUItOo6Er9ig3wAEqBT7WxyiEmm2f7DIRKSZ3coxIBpwlD6V2jytTmhBbG/dCPzU7K48o+fSUTjR/r1HHoglL9fQAe3dtFQ5FJsYJG6j4hLXuZs5n9rg2oGi4wLQxyb6hiDbmbRasLQK937wTtOu+8Ye11ZRFyLL82GqcKr8nfhTlQBHLuSyXs7iJXU2VxL89DsteCLVsiNmoJI/ZP5/sX6uHAITQvDn1VdZj+MmkrLGH9ORm4NSlgWiHb3FrAHfjXhAgcXUgFQrATfE0cZkc58Q==
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9f8c3ec-d938-4f72-5921-08dbf206583b
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2023 00:42:06.9390
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bojqeYgw3faZhywmyaz9jn/snsghL2qk44B0tffGnwfSP3XgISgykGJhMuyAJS53AIBbnSzGZGMyJssvoaTSjkMa/xpPmK7Ad/OTxTByH10=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR10MB4364
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-30_25,2023-11-30_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 spamscore=0 mlxlogscore=999
 bulkscore=0 adultscore=0 phishscore=0 malwarescore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2311060000
 definitions=main-2312010002
X-Proofpoint-ORIG-GUID: XJIDchbQ4fT10TiyFpyasTMXs0f3LaU0
X-Proofpoint-GUID: XJIDchbQ4fT10TiyFpyasTMXs0f3LaU0
Subject: [oss-security] New CVEs and security fix releases for perl

[While https://github.com/Perl/perl5/blob/blead/pod/perlsecpolicy.pod states
  they will send security advisories to this list, I haven't seen any come
  through yet for these issues.  -alan-]

https://metacpan.org/release/PEVANS/perl-5.38.1/view/pod/perldelta.pod lists
two new CVE's:

--------------------------------------------------------------------------------
CVE-2023-47038 - Write past buffer end via illegal user-defined Unicode property

This vulnerability was reported directly to the Perl security team by
Nathan Mills the.true.nathan.mills@gmail.com.

A crafted regular expression when compiled by perl 5.30.0 through 5.38.0 can
cause a one-byte attacker controlled buffer overflow in a heap allocated buffer.
--------------------------------------------------------------------------------
CVE-2023-47039 - Perl for Windows binary hijacking vulnerability

This vulnerability was reported to the Intel Product Security Incident Response
Team (PSIRT) by GitHub user ycdxsb
https://github.com/ycdxsb/WindowsPrivilegeEscalation.
PSIRT then reported it to the Perl security team.

Perl for Windows relies on the system path environment variable to find the
shell (cmd.exe). When running an executable which uses Windows Perl interpreter,
Perl attempts to find and execute cmd.exe within the operating system. However,
due to path search order issues, Perl initially looks for cmd.exe in the current
working directory.

An attacker with limited privileges can exploit this behavior by placing cmd.exe
in locations with weak permissions, such as C:\ProgramData. By doing so, when an
administrator attempts to use this executable from these compromised locations,
arbitrary code can be executed.
--------------------------------------------------------------------------------

The 5.34.2, 5.36.2 and 5.38.1 releases were issued with fixes for these issues.
However, there were issues with those releases, as noted in the email at
https://www.nntp.perl.org/group/perl.perl5.porters/2023/11/msg267365.html
and thus versions 5.34.3, 5.36.3 and 5.38.2 were released to fix those issues:
https://www.nntp.perl.org/group/perl.perl5.porters/2023/11/msg267400.html

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
