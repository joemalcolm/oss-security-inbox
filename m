Received: (qmail 32638 invoked by uid 550); 22 Mar 2024 19:06:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32617 invoked from network); 22 Mar 2024 19:06:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 from : to : subject : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-11-20;
 bh=7jCo4AsHKGm+3HsbzHTznElLx4pxaC48f7OkBr8OjkY=;
 b=WdU3eZI3j/l+6kkiWCx1IcYK5FEAIT3P9tQzGzBz+0RA1SFDnQz7tHVzAm8IG6BfesXA
 mEkujpDmugvYfp0vCskv4XIpa15S9ucL2cNl07fysgBa5rWzBhJYDNS5c9rBo9oGcQr3
 RU+hemqAb2uSG0E9NCjIPDXBY2cat7+jaAWC1+GY7hqsvYv/t3B1q0hrbME+cV2QN4iB
 wnDSfSciwxFoWNe4FD5jLtajQ12c7hAKBxMTzERx86plJ2mMjUokDJoBqKpC/0HivHrA
 L6GJPWXOcD1VcZzbryyqpezz1TLf1CC560zI9srPMA1X/VInZKlZrpVoInORlFZtxrDa sA== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ADSz40+YmxbdK7zP2KS+gvH2iOlU2l55gee3RvsdVFmZjAJiPRfXfy4Y94LYGEbQd1s0b41zPi0v2GlssK1DkxCFCzG/2GRCTbXa2EMAgwpOv92KlUxPoVvkRWxjv4IqwpQdqA+dbpo68Ux3sQkm4/BjLlfxdx0aK8Rn2GgW7Lzrp+L+x6xIYQmgPN2amygZsBBWl0YzJ1IUYfNbZIJnNPBMdXVx2jpy+gh9MCv0D5ZbrdZL2XZLFGbnRdY9w2FK7gBgL60poVdZIDl0090RBi73ysmmMi23RE7GQbR3kDVC8FoSLYrD6EtsROIYNUk/XfX7LMJo+ifM2wLFLdHr2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7jCo4AsHKGm+3HsbzHTznElLx4pxaC48f7OkBr8OjkY=;
 b=d2I2vcKQiQ7Un+9z1fcl8qST6sUaNwRi7WG5bYgC3+fNfKc81Nv+JmZ/qxCBY1itWYGsGNHhq3n9FPljcWHaX7zRbP8ecp+1aUYq+fGXy4jCZvdI/Y2jt6kYuAZ2im2GzaV+vhEjlyyaXiLZLEzmcbCbwyOKSVseD2AbjTWMpZtxVYD+mGY3Mhrsk642w5Dlxn5G7P3vkkEZzc4x9aUFhKLLbCTDfbl2NB2kS24bXhUPjvtKN+ONwNkBeSXuu8N9VyIWUvDt1IcCTpktg1cF9iWFZ9RWybcboDDchFLbSrZttZolMOXmJbHTdfmKtSpQyvtIC3KhUsrcGtGi6PlY5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7jCo4AsHKGm+3HsbzHTznElLx4pxaC48f7OkBr8OjkY=;
 b=HYPTsc4cObE3j5/7wXj9luv+GrZr0ObRO7aaiCjYlhGAqx44xK+wtszixtmeY4Lj3mQ15aH9HOgJCH5O9EQwrZZFeijHqtIAvTcIfxkf83OEcF5uTGgNS9V4iP4JkKybMyc9UxX/wTHI4fVJLpHfYR0zZwgqI3N/0llrlKNKWnI=
Message-ID: <2c65862c-886c-435c-ac5c-0ad954a2b7cb@oracle.com>
Date: Fri, 22 Mar 2024 12:10:37 -0700
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
X-ClientProxiedBy: SJ0PR03CA0210.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::35) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|DS0PR10MB6197:EE_
X-MS-Office365-Filtering-Correlation-Id: 481068e6-7ea8-43d0-bc89-08dc4aa3c2e9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	wpxv4Y7+268H0PvSuKV3LCDW1rRSthThGIpgUs9GlIts+p8ObM+sih32PQHwAjFZeaBpuzNwN9NE8qXLxL9k+puEakstgJ85saO1f1CuffIK0O5BdJXsTLjUp75Hdh2DnCFHtu32bzNRpcn82dvYQQMqwdV1vLAabHnko59Zf37R4cd4J6ujQBFlPYUsKzT/MmQLHKKG6I7NN8YzcydmHhabQA0sSKizrWaEDgBSHNm3Ia9y8TtXAJI1atUOteg9y26oeNFULYcyzZN8g6PUAQMALnUG4vEYGnNU4t9UkO2loSMII6awhNxCXTHASbTFUgw+wH4Y6uYiYK6PZPMi9Q7HaxcQgpWdLXZ3T1KpPkBeSYEBemundbECjt13OCqH36FlzuEXZwNrjsM1JYCS4IUliHAQfPrICvh0Foau1NyQuCyaPhvbI3ZYGZyM5R4+iWkTUhJZ7kFJTtNBXbIxcqIJBDDbQBReaz+rZFZbPv15of83Le4EiU9mwazjzo1MoLZOUgXISAEJuMFYVbCVbEMVBdKh4TyBZ41uq3f8zbml0fowDdeQO61AmgvHy+yQTcgDDS468Yzw/oPaHddgwmLt6jnssfgWYzckHfOm5ckIKQdCkmjKyxar/pnfT2bd
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(1800799015);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cUp0UjFyRTRHOHBzdWR2ZGtsMGJHbUJaS253NXZLMHQxamphVFZtRmFhdGVz?=
 =?utf-8?B?bGxvNXY0WU5uYTFielZ5NXV5ZlM0VFZzbDZ3MDEva0hhOFJpbi9kR2tWQ01S?=
 =?utf-8?B?OXE1eDdOc01UdVFXd00wRmF0K0ZscWtZMTJUcWYxcHArSlhJZ2tscGppSEpL?=
 =?utf-8?B?cytVMFdFNnBsV0FwN1FZeHVVYUJOeDQ3ZmZhc2tma0ZhWFE1OTRvSERUQXE2?=
 =?utf-8?B?VzFrZmpUWno2ZGxYRTV2bldieDBudFNwSkYrbGRFcFloUWtpUU5KT0JoeC9t?=
 =?utf-8?B?bXJMRFpYTkdLRjFwL013QTRaTnVOZ3ZGSjIzMG41YjJGZU0yU1kyOGdlM1Zr?=
 =?utf-8?B?WjloRUplV0Z3dERqcDBsVlp2Wkh1WkRGN0hhNDg4OGVWWDNZQ3RpeEl3SFVt?=
 =?utf-8?B?dVRlcUFwKzVHU1pWaThpWUpXMEh0ZmN1bE96ZWZqNGdROCtBSFBLTDV3ZHFY?=
 =?utf-8?B?UzUwRUszdUNFU0NRNW9qRlkvb0ZVZWJGVjNHWjk4SE5USVBjcm80ZWZnTXEw?=
 =?utf-8?B?elhoUFBJWmRucW5oc05PQ0R5Z1RlNzZxbk1PWjRCUTdMRHNwaWlvRzJqSzcw?=
 =?utf-8?B?VFl0d3cyNGZEK3U3cDZ1c1o5aGhjdElqYkFucVN0VTZ2K2dsUklzelI5NUdU?=
 =?utf-8?B?dU9zSk4zSWNqeUprdXlPbnF5dHc0b3VxMXNlQnJRS25HaWYzR1pvcFdIM2Fm?=
 =?utf-8?B?M2RkSm14TG1aQUF1NnVRaUhYWmdrMHA2V0p2Z3FYOXo1bHFrQk4zMVdlUW9Y?=
 =?utf-8?B?NUYwVUxrb1QrK09WTnJ0VzdpYTdqOHo5d1JBTElyaW5rVGlYQ01GVVZrOUtq?=
 =?utf-8?B?L3Y0NStOYkJOVnJqM3FNYUNFRlljb09hNzVROWdTYUxTUWs1QTFzY3pzVWpO?=
 =?utf-8?B?NlRzR0NKVkhnS2RSVCtZNUJKbEhoejNqZ1ZPbUtCSFluZ0lrNDlYalVueXNz?=
 =?utf-8?B?UEdhQi9xdjgxOTB3Sjc2U3BxRkJpc3AvNzByVmwzYXRjS0ZYUU9IODdLdm1i?=
 =?utf-8?B?cEk0cU5CSGFnYmlnejIxZDAzV1p6Y082YWtsbUdoRDdFdElMRGlhM0VENXJ5?=
 =?utf-8?B?R2s1NnNoNkhaQm1saXlQMkpnVk15U29RR2lSSTJZd09iS0dEYXVIYkpNd3hR?=
 =?utf-8?B?NUxoMGJScS93aWZRazlDcUpvZWlSSnNIRDczSDRUU2MrcUZaWWh2OCtvYWkw?=
 =?utf-8?B?OW1CWll3L2hKWldZWUVtTlZPVGxaVGtlOFFyeHFuSWd0cTduaEVzVlFBWXBW?=
 =?utf-8?B?Yk9mNEZYdzAvbXJmSFVQQk0wQjhUS0F2bjNCU0lzNzJBVG5kMXhTN3A0Mzd6?=
 =?utf-8?B?VkczOU5zb1RvVnVSQmxiSWxHN0VJaFFmQmE4T2JtdnNTRkRxeU41S3pweHVk?=
 =?utf-8?B?aThjSDRKT2FwSWtRYWhrSnRHM2NmVFV3cXRiRDJHbi9ZMDExTUlTVld2RGZY?=
 =?utf-8?B?VDZiNUtsa3JySzVtSDM5RjdmM2JIZ084R242ZzhoRnoxa1cvZkVxdnJqdjRx?=
 =?utf-8?B?S2VhKzRuZnlGTzZwZVQva2RoZ3EweHh1b2xQeTh6MGlVSElXTGtBc0VScUVB?=
 =?utf-8?B?NmNoMlp3eVJVUnc5NVZpVG83T2Z4OE9NR0VEaXU4MSsrSjhZVGUyenNscGY0?=
 =?utf-8?B?SXVaR1VEelJicG5XdTg3UFBhUm9SMzFPUHVpdGN4SktnSm1zb3R2ZWg0SkdT?=
 =?utf-8?B?TGNUYW0xUmtua2RkdFdNcVRlY2trQmZ1U0UzRkptbWdJMVhlV1lJaktwbnV3?=
 =?utf-8?B?YUJkczFSSi91TFdSR1lFT3JCMEsvQ1p4T2g3a2dlaFl5SU9JTjRUcTVyMkh1?=
 =?utf-8?B?bWtsdTE4bjJkbk55MmNJMjdyMmgwbEFjUzdPWEZVWUo0bE0yVHpib3NvZnp3?=
 =?utf-8?B?ZUJ3NDFqNjNFVFpvd1hNTXM1RGFwOUNUeUlsUFdja3FMUUYrWGlmT3AxUzVQ?=
 =?utf-8?B?RC96cHo0MTlEMkI0UUdRQXp0MWRGbS9XdDk4SUxQS1pnZnpSZTF2QldkWGFi?=
 =?utf-8?B?cmJJZUhQQkFqRG51ZnJPRUNaanBzS01ySXF2VDQyYUVGR2N2Z3hoTkE1bm9r?=
 =?utf-8?B?QWtSYkpReTlJQUNTbjZHWElSOFgwNFQ3TDdFWWpvamNGZHdXZ0VBNVJKaHNB?=
 =?utf-8?B?MG9ROW1rZEVCclk3MWc3bFVDZkhwQWRNdWk1Y0wyK05CM0RMcExWRnl4ZEcx?=
 =?utf-8?B?UlE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	ISh5k7cXt8eYIKZqSRA1FuhtuNNqbYGyXcZrBI6KOTqGqxrvA5Fmcoy6YFLdOutliiwQ0p6THnvHqGlgZM7d8SIATx8o4ykCoQlXZuxBfxW7AKl+HFy9/mb/Lyrbg1YgLo6gPE138J2GKA0IGbvYgfQFK9PStF+u8DPZuWWRxWjKYPfAkSgoSvAiQyDMaAwMsDxTEh5tw8NOy31yZP5NDY0oKQW1TD6581eOSP7Hb2gQdEuJqE/g3kTVyiIEGsXzx30TgsgbuIh6EBjNkei20HGXt+xnKZY3tpIU1kQsgmZ1a8uae4ZtojZ1PvgYvdhvnp6FhCil9kLmEU/K3HRONCPLpn+ZSHo8L8LBbkXza2xd232OCdmts4aVRjGF/P+xRzWDOdcDqEuppBVkr8x95kkKnXI9AJ4V2z0JczNAiawrCMIy/k0QvLpuySaXIxavXGsbGoDsULHTIa5ueeoqfzDHe6WGOtYmvOf34X0w/7wzMZwXI9UmfHm2driVHmVqBbD4Rx4bqMh2FylmddbnZEmKtq70KwKMVi1EkYJzMXfKvVnTKGV2ZJtZ69QkxZQI6rsDnYmMrHVavxkfDnHjtpLyJZCx4aI89nxAsi2L/sc=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 481068e6-7ea8-43d0-bc89-08dc4aa3c2e9
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Mar 2024 19:10:39.1082
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0f/VGBlCnAIM5jIXpjSn/HuLCmjPf6uSBPzcpXGXtRGBPQLohF3lsIzgeDcbIIOHi7u79+LG6cEjLv5UvPbqwcVB1LGrGXYrzt/Ns+L24N4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB6197
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-22_11,2024-03-21_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 bulkscore=0
 phishscore=0 suspectscore=0 spamscore=0 adultscore=0 malwarescore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2403210000 definitions=main-2403220138
X-Proofpoint-GUID: DwlSOjZ5yNqrWOyPcHNy03zMG4cwxQNH
X-Proofpoint-ORIG-GUID: DwlSOjZ5yNqrWOyPcHNy03zMG4cwxQNH
Subject: [oss-security] GnuTLS 3.8.4 released, fixes CVE-2024-28834 & CVE-2024-28835

https://lists.gnupg.org/pipermail/gnutls-help/2024-March/004845.html
announced the release of GnuTLS 3.8.4, including these fixes:

> ** libgnutls: Fix side-channel in the deterministic ECDSA. Reported by 
> George Pantelakis (#1516). [GNUTLS-SA-2023-12-04, CVSS: medium] 
> [CVE-2024-28834]
> 
> ** libgnutls: Fixed a bug where certtool crashed when verifying a 
> certificate chain with more than 16 certificates. Reported by William 
> Woodruff (#1525) and yixiangzhike (#1527). [GNUTLS-SA-2024-01-23, CVSS: 
> medium] [CVE-2024-28835]

https://gnutls.org/security-new.html#GNUTLS-SA-2023-12-04 says:

> CVE-2024-28834  Severity Medium; timing sidechannel in deterministic ECDSA
> 
> A vulnerability was found that the deterministic ECDSA code leaks bit-length
> of random nonce which allows for full recovery of the private key used after
> observing a few hundreds to a few thousands of signatures on known messages,
> due to the application of lattice techniques. The issue was reported in the
> issue tracker as #1516.
> 
> https://gitlab.com/gnutls/gnutls/-/issues/1516
> 
> Recommendation: To address the issue found upgrade to GnuTLS 3.8.4 or later
> versions.


https://gnutls.org/security-new.html#GNUTLS-SA-2024-01-23 says:

> CVE-2024-28835  Severity Medium; Denial of service
> 
> When validating a certificate chain with more then 16 certificates GnuTLS
> applications crash with an assertion failure. The issue was reported in the
> issue tracker as #1527 and #1525.
> 
> https://gitlab.com/gnutls/gnutls/-/issues/1527
> https://gitlab.com/gnutls/gnutls/-/issues/1525
> 
> Recommendation: To address the issue found upgrade to GnuTLS 3.8.4 or later
> versions.



-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
