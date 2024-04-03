Received: (qmail 32503 invoked by uid 550); 3 Apr 2024 20:06:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32468 invoked from network); 3 Apr 2024 20:06:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 from : to : subject : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-11-20;
 bh=M0cfOd5HyRmqGiCLsEHXnB1bLXT/rMPu0KqgEyzfkQk=;
 b=gH49RQHgJVl1RFVu/v8//Fm1TkARQX1FQ2yHqwVwDqlGfaREFLuq80wQOpAIv8HFwSdt
 cpnqKnO6U3tJOq0LHfx3HOllU+PeET1BQ8/8as9M7PVm98PZfMI+VrdWKz0JLlWsOGQk
 /rsZGs8hHOaqx7qOSdtR8d2arf5/dSuA9G5QAGAAzNIqiUONu0mxbSTN57G7j9x1gnSL
 MM10UZsBjIZ4/9vMdDM95eGb/SqJGvpPr0+FVoWqwvNY7KKofIkY0iEAaH9NH9/QRauL
 TNLFnNIrCc52YEnjaC4NZifKzO4rIXd0xXoNT96vxv4ZZdDubTTRzkcStgYLfw7kmzML jQ== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eSnVL5RUCchTtldERAtQUEpwcXFpdUmpUWGDGgupShVHXcvZrKjc1DKeMJ+lam0kKbZCYoxX/Vo/lk6HGz3AzKNl+GzmMiTSo/WhSj6WF2LcHKe2i/XhAvqxr04iieM8ikwyLoUgFvV5Dgew5Doo98MXe2bk1rcWjZAKBauLv3ScVf1JRBgEZlCelaEmCVvacsNRRZpihaVSVwco+k9XUlY76TLwm3yN3wGhhUWSDlJQSE1InL6fgna4qC70vQra8jhr1C0H8sWxLTaAB5k42s1Hcd1Wr8J/YzNcNJ8XCMvwQqo7kBhAucb9aIGZGW65AWDNYFnQxoQno36h+FofhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M0cfOd5HyRmqGiCLsEHXnB1bLXT/rMPu0KqgEyzfkQk=;
 b=PEj8eZ0rGh1hpWYomFr7NA5BHseq+sFaZ6Lihdp+tmo1cc4m8TYXjeXO5AnbPcaejeGHDHWh7ulJQCKy/wdrcAhcbaYgH4LqiLsP/sxDhRnySQofplKpwKmaRCYRzSdH79cR7ec3QLg62xSgm61CLkFymh4v2uSgFMh31M8Bu+Y20NZMr88eQM9z9fnSaZCoVuot03OvdZbabUusQnl26AvqG7nrTPUt/rifqKfE+/KgXx8VQA/paTIUCEoGJPG2osRcmWeWbB2QxLqkxIWq7mPYH5sFIDjISIqNRGaGQVG698/1QuxWHUJv9aCywri6NZU6NYUtVl5ZUAlGLPYyqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M0cfOd5HyRmqGiCLsEHXnB1bLXT/rMPu0KqgEyzfkQk=;
 b=fsqfDKxQ6+odAlMVWasvO7Og/OF2U8voeY3ekw1ArEfzWlIXRmEyul86HoCk3zKzHjOdfEf1mAMTuUo7u626NPrbyCZC2K89kGqvv1reGXUt0nD36OBYwPoewDa5LuuElgshE9Y1hxtWRW/J1It4GRGsKW5swowYao3B1ePhm3I=
Message-ID: <5afad6dc-911e-4a76-a9fd-e166b9fde5f8@oracle.com>
Date: Wed, 3 Apr 2024 13:06:00 -0700
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
X-ClientProxiedBy: PH7PR10CA0017.namprd10.prod.outlook.com
 (2603:10b6:510:23d::10) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|IA1PR10MB6242:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	qKUENfaOsNW5LDuZuKKg3XWD4JVqsilEy63BZnKVS36IvpYkZWFz2Qmj457Yjs9/ZBZGu4Qh4vOSGiN4T22SSQFAIXx1c12o5MaLO+9GhCISofCQWgPquoz2STR1lBsWfOzhIdVXNpTNKpvZBgwVyCxEbVtO6FJp6B9WFjE+AbNxedOoEkb/4+IUIqxAPjNzPn8ZhB1yA3mp0dgNH7/z9q0FE6Q0JzdZl2Tz3YITyfLPXa1WzoZ1LlwHjBkzFglfr2uv0tFj+3BLAKYzfO5qFSXPFKcs5aqSo6qD9q8BMEwhseKy+vZmUcXunhrjcDFTxfXslr6D1IWlToc/q9xWPRsWDPzfKljvy4LLu54CDdSQlyIm/BVokJLbFGtOYhPApUnq2pUgRaND53eWGwEFbMIKd0JpCiSCVdD8Az4F8hM/Rn8PO+YCmw8L0BgWjKg13TrOI5enntJhN+LRzBd4RSnfBfXwBtzl/8G61Km6izRKMbTyVbAhuHxBpw22VqGjLK0UMsL8L4fXBLhMHHlPHvLJMJjAPq5RdXRfKPrXq3Zi/FeBIkX+5GW0n3CnAvbMn7zFm2qUKStPyUH3kx1RCCePzGgi0DIDegn7uIb9twU=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WDhLakVHWjk0a0RsOVg3blVlaG5JdElBNzRZNVo5SEtOK2I5ZER3YXdzdjlM?=
 =?utf-8?B?eUE0bGdwa3BZb1ZLOVE5ODlmaU80K0ZZVE1WaTFVWXZDQmtqNkpDK0c2Ylg2?=
 =?utf-8?B?VEhidEppMWY2bzJ1RmVKVzdkVHBwamNRSWZ1ZVB0MGpTNFBmSWRiRG1JdUxL?=
 =?utf-8?B?NkprRUxQY3N3aTlCYlhDT1gvV3VuYlFHak9yREFzQ0h6eUYvVGJmOTdHS3Fs?=
 =?utf-8?B?dGJUNUd6Y3VzRE1CMXhSbFlCNzQ0alEzaEhkWm1QNnZyRFZIWHZJVGNGOEdn?=
 =?utf-8?B?ZFR2SklBZVdkSjVjYnowalpPbEhSci93Q1FqQWNhNG52SXduVnVSdWpoc1I4?=
 =?utf-8?B?aGlHRk5vWEhvNWNnVlh1QXBXMDlFSmROak4wSWJTOUo2OUQwU0VuWUZWbUJx?=
 =?utf-8?B?amFESkZrRTVYK2lMR1pOTkh1ZzlyRUNsTkx1L0laTWVpQlVvQUlucC9JQ2Jy?=
 =?utf-8?B?VmZqYVJKZHFEZzVNTkFvaVluWVZVTGhVYy9JQkdUelRKTzRoMFdUbC9BaU1l?=
 =?utf-8?B?NDA0RTdWR2hUejI3U3k2ZmJyeEsrQS9QQmZaL1kzU2pKN084eXk5VlNPQWxY?=
 =?utf-8?B?RllGeXQwTFpSdGduMXZvY3lxeHM0U1YvZjYwTmhNdmZlb3VRZ25CcUVjd1BO?=
 =?utf-8?B?UGgwaWl0bEFDandGY3dzYk94d25rUmNsVFBic1RqTlRScWlCT1ljZjU2SjBT?=
 =?utf-8?B?cGlSR3dRWTQvclluMnp1V1RFTUxZY0dHT3NucitCRzU3U3RCNzBzVy9HWjBu?=
 =?utf-8?B?RlNDZlBtbGZ2eXBVWVVsa3lzZDdUVkhDMUdISUM3RDl2SWIzd1poSUx2TXdh?=
 =?utf-8?B?M1JyL2ZUN2p5RlBscXdJMWZHeEJ2Nk1Sa3JQSmJrOXorLzVxSVdlU1RCSlBx?=
 =?utf-8?B?eUYzbC9qM1EvVE1TTW03TkF0dUpKODBpbW9mMHVlNC9XK1RJVGhGK2dCRHQ3?=
 =?utf-8?B?VFpoMVQ1eEM4cmhmSmFwS0o5Z0FBa2RRK2o0VGZPV3BndXZlVVVHYnFZOWdm?=
 =?utf-8?B?ZUd4YUFJaHhsQWh5MjVRSmFJa2pXem5kdDJiQzVJajFFSFAzc1M0UnVXQWdW?=
 =?utf-8?B?d01udGk4TFc4T2preGFLR0lJUGx5cDVkQXFFcWRSZ2EycDgzRlBVSWlpNitt?=
 =?utf-8?B?bURBRGFGc0MwNi9Za2wzeldKNG5iTGJabHVYM2oyd1hnMXg2S1VNYmhuL3Bh?=
 =?utf-8?B?OTE3RXpBMFhzdVZGcVF1MVYvUk80YUVkVWNESDFuVGM1SkZEUVA3Zk04bXdR?=
 =?utf-8?B?ZzNwd0UvblJMZjVOdDZaRGJuQzFNZDBmMVNsN0F3YmdDaDR1aGRPbGRpMG9L?=
 =?utf-8?B?QUEzaDVhakNaaU9NSmJrMU1Jb3pTdzRKb2R1bEl2ZGlJOE9tYnVUSFJDdWZG?=
 =?utf-8?B?ZVJxS1lIL1NoUjYxejhvQmg5WFdSZ0xWNHp5aklRdkpuck85WU5sVW8zU3pa?=
 =?utf-8?B?WWZ0cW5HTTZoRmprejFJRldSQkpYTTRWeVJiNDRwRmFqRzlZbjNXK242dmxi?=
 =?utf-8?B?M1hpdWNSTHd4V2YvVythRFF1ZndLOFdEQnNONDNSQ1FHeFFMTEczRzNnOElx?=
 =?utf-8?B?ZENrenJLZHR4ZFcwdS9YcUQrc0txS0RpbG5YUWxrejRiRDVIWlFwaWpWV3Q5?=
 =?utf-8?B?SnE5UHM1SzJUU05ROEFvcVFTWFBJeWRvempiM2FFd2Q5ZU9kY2RNK1p1RXpP?=
 =?utf-8?B?aHNDUjNPU0N4TElJZ0N4SVZVNHcvWGdWRCtBNFZweFBRTlAvdTVzQmRvOS9p?=
 =?utf-8?B?N2lIdHJ0dVIxK2cvdGJ3QTkyanBuYW1RdDhQeEsvc2xzRUtJdXFxdWlzMEI0?=
 =?utf-8?B?ZWw2d3RRUmpYakRxdnZEaGZuT3FkbHdmNW9INWZ0NGgyY2trWE5IM283ZmdV?=
 =?utf-8?B?Mm0yLzZEYTRkZ2lPd2NHYlV2bmhjTThCYUpLMGZycHJFZE55R241UU9Oc21l?=
 =?utf-8?B?dVVBNG9OWDNmcnl1ajM2UFFWQW9JVFlEaGRiUUh4UGNFVExuSUR6R2tBZytu?=
 =?utf-8?B?Wk1OLysveFhrSFNGQU9OZ0ZTQlJBakpsbWlqV0VzaHFIVGk0RGpCVEJaY2t4?=
 =?utf-8?B?VVVkL2tIK3ZEYXRvTGZ4MEpMbWNOYk40SlA3eEdBd1BHN1N0Nmh3QnoyVDVx?=
 =?utf-8?B?VnNlc1dKakp0R1NCTnR2OTNNbFdQYjNWSTRpQVZSZUJxSW9IVmpyMjZaRmlJ?=
 =?utf-8?B?MlE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	jBSNX3WptC3c7Ua2HHvZa9dOzrXmxQqjhFjqIrrgiBrFrLXVE7AzNCdtlpMRuFnYE3jpIekzpaU5pBoAXlHp+7zUpVP5/WaLtsGHOEj2gWX25D33e4xuFzCZhMR7JacDLUW+0xYUlnSs1OD3cWF2fe43ryQ29NxkqtdB882Eu5VRk8PmDqp7TPWb6jdlKs8LHEq7i73gbhlYx9dSfRF2dXELHReMAZa7Bz8TqF66TLiYviIqWK/+FDo86jQX5z35N8wFWaomsdSFGUEfcH5PPTOSkzKOimGmR8bkPUOVV8in+2QTb2fN1M40PriK9CB96yP7Z1kUOtC/6qcZSfN+eB9m49I2rQN5xEMRPP9mOlTedTlEEwIyxbFHKkFrELxcFanc+zWjbXj12bMgyt+5bmIFdHVcbWqaf/KGGrwPgnNoJcyUADoRrMtmKMgrSK0YchQ0t66CiVMpaRtHfLnG0p4X/nzdFOqXNG33942hu7dHQm8kXvYnIvqzDG+qR5K3hg50iUplH2br+hK6uNcQakS1hHa0rJwbK2amSj3QQ51+3aNigrUiQ17avn5zomK6TNKFhji2rxyiVc4+OVCwiR3dg7246wHQVom73sP1ozk=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48f163cf-0144-4634-0af7-08dc54197d4a
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2024 20:06:03.3937
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 99p12YpH7UBLU93Uox+m+7B9UWhS5yMFq9JHLJcuGfITTvl437z5sx659RTOrREqyNlg8s/eqEqCmyu2HOGr/ppFE59yPE3q+6/yvKvDpbk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB6242
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-03_21,2024-04-03_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 phishscore=0 spamscore=0
 bulkscore=0 adultscore=0 mlxlogscore=999 suspectscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2403210000
 definitions=main-2404030136
X-Proofpoint-GUID: qofWbOSDl9VduL8NolQppwm8nSmoI4B-
X-Proofpoint-ORIG-GUID: qofWbOSDl9VduL8NolQppwm8nSmoI4B-
Subject: [oss-security] CERT/CC VU#421644: HTTP/2 CONTINUATION frames can be utilized for DoS
 attacks

https://kb.cert.org/vuls/id/421644 announces:

> HTTP/2 CONTINUATION frames can be utilized for DoS attacks
> ==========================================================
> 
> Vulnerability Note VU#421644
> Original Release Date: 2024-04-03 | Last Revised: 2024-04-03
> 
> Overview
> --------
> 
> HTTP allows messages to include named fields in both header and
> trailer sections. These header and trailer fields are serialised as
> field blocks in HTTP/2, so that they can be transmitted in multiple
> fragments to the target implementation. Many HTTP/2 implementations do
> not properly limit or sanitize the amount of CONTINUATION frames sent
> within a single stream. An attacker that can send packets to a target
> server can send a stream of CONTINUATION frames that will not be
> appended to the header list in memory but will still be processed and
> decoded by the server or will be appended to the header list, causing
> an out of memory (OOM) crash.
> 
> Description
> -----------
> 
> HTTP/2 utilizes header fields within HTTP request and response
> messages. Header fields can comprise header lists, which in turn are
> broken into header blocks. These header blocks are transmitted in
> multiple fragments to the target implementation. HTTP/2 CONTINUATION
> frames are used to continue a sequence of field block fragments. They
> are utilized in order to split header blocks across multiple
> frames. The other two types of header block fragments are HEADERS or
> PUSH_PROMISE. CONTINUATION frames can be utilized to continue a header
> block fragment that could not be transmitted by the HEADERS or
> PUSH_PROMISE frames. A header block is considered completed when the
> server receives a set END_HEADERS flag. This is intended to denote
> that there are no further CONTINUATION, HEADERS, or PUSH_PROMISE
> frames. A vulnerability has been discovered within multiple
> implementations that does not limit the amount of CONTINUATION frames
> that can be sent within a single stream.
> 
> The implementation will continue to receive frames as long as the
> END_HEADERS flag is not set during these communications. An attacker
> can initialize a connection to a server with typical HTTP/2 frames and
> then receive initial frames from the server. The attacker can then
> begin an HTTP request with no set END_HEADERS flags. This can allow an
> attacker to send a stream of CONTINUATION frames to the target server,
> which can result in an out-of-memory crash, enabling an attacker to
> launch a denial of service (DoS) attack against a target server using
> a vulnerable implementation.
> 
> Additionally, an attacker can send HPACK Huffman encoded CONTINUATION
> frames to a target implementation. This can cause CPU resource
> exhaustion and result in a DoS as the the CPU must decode every
> encoded frame that it receives.
> 
> Below are several CVE listings to reflect the vulnerability within
> different implementations.
> 
> CVE-2024-27983
> 
> An attacker can make the Node.js HTTP/2 server unavailable by sending
> a small amount of HTTP/2 frames packets with a few HTTP/2 frames
> inside. It is possible to leave some data in nghttp2 memory after
> reset when headers with HTTP/2 CONTINUATION frame are sent to the
> server and then a TCP connection is abruptly closed by the client
> triggering the Http2Session destructor while header frames are still
> being processed (and stored in memory) causing a race condition.
> 
> CVE-2024-27919
> 
> Envoy's oghttp codec does not reset a request when header map limits
> have been exceeded. This allows an attacker to send an sequence of
> CONTINUATION frames without the END_HEADERS bit set causing unlimited
> memory consumption.
> 
> CVE-2024-2758
> 
> Tempesta FW rate limits are not enabled by default. They are either
> set too large to capture empty CONTINUATION frames attacks or too
> small to handle normal HTTP requests appropriately.
> 
> CVE-2024-2653
> 
> amphp/http will collect HTTP/2 CONTINUATION frames in an unbounded
> buffer and will not check the header size limit until it has received
> the END_HEADERS flag, resulting in an OOM crash. amphp/http-client and
> amphp/http-server are indirectly affected if they're used with an
> unpatched version of amphp/http. Early versions of amphp/http-client
> with HTTP/2 support (v4.0.0-rc10 to 4.0.0) are also directly affected.
> 
> CVE-2023-45288
> 
> The Go packages net/http and net/http2 packages do not limit the
> number of CONTINUATION frames read for an HTTP/2 request, which
> permits an attacker to provide an arbitrarily large set of headers for
> a single request, that will be read, decoded, and subsequently
> discarded, which may result in excessive CPU consumption.
> 
> CVE-2024-28182
> 
> An implementation using the nghttp2 library will continue to receive
> CONTINUATION frames, and will not callback to the application to allow
> visibility into this information before it resets the stream,
> resulting in a DoS.
> 
> CVE-2024-27316
> 
> HTTP/2 CONTINUATION frames without the END_HEADERS flag set can be
> sent in a continuous stream by an attacker to an Apache Httpd
> implementation, which will not properly terminate the request early.
> 
> CVE-2024-31309
> 
> HTTP/2 CONTINUATION DoS attack can cause Apache Traffic Server to
> consume more resources on the server. Version from 8.0.0 through
> 8.1.9, from 9.0.0 through 9.2.3 are affected.
> 
> CVE-2024-30255
> 
> HTTP/2 protocol stack in Envoy versions 1.29.2 or earlier are
> vulnerable to CPU exhaustion due to flood of CONTINUATION
> frames. Envoys HTTP/2 codec allows the client to send an unlimited
> number of CONTINUATION frames even after exceeding Envoys header map
> limits. This allows an attacker to send a sequence of CONTINUATION
> frames without the END_HEADERS bit set causing CPU utilization,
> consuming approximately 1 core per 300Mbit/s of traffic.
> 
> Impact
> ------
> 
> Successful exploitation of this vulnerability can allow an attacker
> the capability to launch DoS attacks against servers utilizing
> vulnerable implementations.
> 
> Solution
> --------
> 
> Different HTTP/2 implementations may have separate, unique
> vulnerabilities specific to that implementation. It is important to
> note that it may be difficult to analyze incoming malicious traffic
> exploiting this vulnerability as the HTTP request is not properly
> completed. Analysis of raw HTTP traffic may be necessary to determine
> an attack utilizing this vulnerability.
> 
> Acknowledgements
> ----------------
> 
> Thank you to Bartek Nowotarski for reporting the vulnerability.
> This document was written by Christopher Cullen.

https://kb.cert.org/vuls/id/421644 has links to further information
from various vendors about how this affects their products.

The writeup from the researcher who found & reported this is at
https://nowotarski.info/http2-continuation-flood-technical-details/

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
