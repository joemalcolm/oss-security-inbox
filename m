Received: (qmail 28652 invoked by uid 550); 15 Mar 2024 16:53:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28615 invoked from network); 15 Mar 2024 16:53:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : from : to : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-11-20;
 bh=ds5F4UefciApAzYIQIPstQqeSENmiky9HEHeD5RCvR8=;
 b=OzmSawupFxICFhhPEJ/f3b4zz/NJxz4zT+fIVDOPKjitCR1iU3EsZpVMkRuQZArmJcBT
 HOZhBTZ21DRG2HuwxpoVBm4QsLoFhACkG+QB5z9JQQmUjxPiq26GzT3Rd3t0xOKzvvDG
 GeF7WbBlvhBxOpBCmEIELn8SKOEemw/RaqbpIs09icJFIVyhVbRzfbyExVXKlfgg71Ce
 c/cwu55zZh/InmN0/WowDo5N8k/j5maVzFzwP0cdEbEtP3GiS0eFbEjqSharGHKTmBSb
 J44WvvIrVUMun/eaRRM8JSQ8OzqfafBzym48n1igjBAOeMHONX3Etg19G33fG3EwkhVX bg== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AIrqJO6cP/jftBnlc4vaSVRvLzOTKmqG88kZ99tE4f/0ckQNinSAo4KHIZRRqaZdj8yl5/uHW4IA0F7MMimD5YKWTVkiOJ2Z6Hhe9BO20sfff0Ajf67RowkhyL4cXF060nMo1WaBayMgeMlL9/0qdlAi/G9KjckLp3fjc69Hdnv9wEfuQzw7sMKf1pHs/3MHlXqgkpFmCeYzhD7nS9akL4GLTF8iWVC09F5qiTCB5WLciOLVvGKO1wkUnjOEGR++QMr2atowMkF/j5622OwNG+db6QCIxjOs8eTnXFAyGdoW5l4AZc2Q1JWn719kC6ak59hY+zYHlTmMc+pgGEx+xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ds5F4UefciApAzYIQIPstQqeSENmiky9HEHeD5RCvR8=;
 b=dZNEU+e47Obon1Y8V525GcK7pPzifJG3XnuY0yBl4v6apRZUOM5bmr72T1dAqMrvwvjwIYQZvmM/+jWU5YgfPcew0r+/SPbEqSkbACnxFC3ZquyiXCXEYGClb6eDlg9qZjv2CuoNRMwjJsAIpmWy1b2IID4LbP4peOrqp1v/fEP43pofon+K3ZnqDxpvTop5YJRczADn74giAmDMnGgC3Uuz1oP742a988O2rkYSS0e/YnZyV97iUn5lzKKCcc54ducgYltROzQNof+BZgmV6tEKADkZ50Rzw90kHnPadJAMIW5j1VeOIVkhdsG/6JmHdTuEfNaLodSPwRhz1QtSTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ds5F4UefciApAzYIQIPstQqeSENmiky9HEHeD5RCvR8=;
 b=kFUFe8XCgjDtYrUOm9HmPNvPBIW0a/57lVK5r+tFEJbmTMD77gDwbMMwo4vTK+aQhpVGHd7Fc9Sd+SS3Cw/Y0K5/DQx7N/OwLSxkvmoo7dwGFWZkAMbKQaT1pRRLTHB/aU8K3k0+EiBdRbeEIUJIoqWLIwAmKOgHDCxlipk5uo8=
Message-ID: <397f9357-0f60-45d2-b150-573028178755@oracle.com>
Date: Fri, 15 Mar 2024 09:57:05 -0700
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
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO2P265CA0339.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:d::15) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|DM4PR10MB6184:EE_
X-MS-Office365-Filtering-Correlation-Id: 247367cb-1891-45e8-f8aa-08dc4510f679
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	pLcqo7tw7HE11tvGoNTgpgsjwrbZoMhwWQJhQoenAY0tjBaNpaIT04CkQ14m8M09jE9OgYe0J3lSXqvX1S7pijL+gBz40H50s1wWc1buKuMJci8WCbSZH5RDzzqnNxVt37xYIlsNOiOm97KuQ9OgEnT2mM/LKY80neT+j0aQiBLkw8B1817lhEn1CVIOHBQbmC8WvsmefyMnz74Wbh4Bq8YImWadtShlc5sLrZrNMcJO7O0rhVQ5AZrYhOxIxk4nwy67RZcmGWtCGtHrgK0VkIyiJF/CMOo87b8cA4tt21tGIIIM2y+9a3E2KkWeHEr2r0kOGLms7v7iDNH6RleNLOl6KaJdngYmKuGyMI+rOqh66C4LmN8uhavfplVF5KS44L+EIIk9nwVvuN7ulAfjaTI717Fe66sqqHcblp/KnskZX/DUK1ZUcJZlHRZZBITakYwrwLHW4KuYzYCTkVomNX0KZEpp/ie40aMmgybH2a5uj51yWxcatmdF/CRezpVo4llDhGGdXE7gR0/YGR8ZHZ5+hLbuJwbogE5Gn/0BGoiLwgzNu6VQns5JBJiCPktl7uMV+8j53QqWJksM4LPbuuisHwleDgE50bVdt/zyfXamdKLkpCn7zNi82uvCYY9s
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(1800799015)(376005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Nm51VFNxZllzSFBDd3lvbTY1WkJOT0daMnAyL01uSC93aDhxRC9DM2F2MjRx?=
 =?utf-8?B?M2tQTmpIcnR2NlFMZThENnBMM0RBUWpOWk5zV2FIYjNNUlVuOGx5dEc3TWtJ?=
 =?utf-8?B?RkcxYlI0UWljRGhKU2J6VSs5ZEVNYXZBTDNjOFczQmJmVnZOWDFtWHBPSy9Y?=
 =?utf-8?B?eVlqSVBUazRudXVCYURBaDhXRzZmejFaZEVOekNlRW12TzJFLzVvajJtZjhF?=
 =?utf-8?B?WE9NWlRvZ3hSOGw4dHZHWUJyeHdadkNoTWRQQytDTVpQTk9NTjVPNlRSTlRP?=
 =?utf-8?B?dHYzaEtQcFl3U1BsdHc1VnJvcnk4SDZqWlFCUHpVbWkyRW1Wa0xJdm9xQXlK?=
 =?utf-8?B?MDNscDM0bzJjRG9UWmZPSEY5SUpDRmwyTXZVTFBzOS9GWU5hMWJxT3hhYTZ1?=
 =?utf-8?B?SnVsMDAyMUlKU3EzZzU1RnY1MEZkYURCa2p5Qk9lRVJNUzhtMFlSNHdoSjAr?=
 =?utf-8?B?VkRWSFZPdUduM3Y1MjhmaVVtZ1JYc1lGd04zTlNvVWNlcVV5NVkya1VIZmM2?=
 =?utf-8?B?OUxRSnY0cGdKWmVuVVhNUzMzNXpHQ0FHSHBNRTY4aExDTnlxREk2VXlYMTVz?=
 =?utf-8?B?VzVKWUdzNVFJZjAxUUZpaXV1dXFTdko3LzJONUNyNmJ1YU1Dejc2cmRvbndn?=
 =?utf-8?B?V1FETUMwaVcxRVFqM0JJTFdGc1I3YVRTVG9iRUEyb1JJeStrYUlOS01ycWUx?=
 =?utf-8?B?ek9GdWpDTU44RDBkaUV2bExGK0k5ZFVGcDdiT0tSaUdoY3JmVURUNG5QMEhI?=
 =?utf-8?B?TjhTRHFzUmpjTVgzS0daOVVNWFlid1dJTnUrUmZBWGw3bVVXSWJBalV6ZmNx?=
 =?utf-8?B?WkYra1Q1N0RNSUxRcFEvendUeTh5STRPT2wvOWN6cC9MMDZEa0VzMlpJTERS?=
 =?utf-8?B?eEFha3NYUk80NkdyVjJ3M1N6TE91bWZVbXNwQnNiM014NkxmR3Z3bUZnMHdi?=
 =?utf-8?B?T1puZmw0YXptZ3V6VWpQdjZZVS9MajFpNXB3cU92Zkd0QlhaT0pKa2piSkdN?=
 =?utf-8?B?c0hXbXBuZVFSdEg3ZmNQNi9FdXZRb3FndlovUm9vc0p2MUxRUDV3ditFRjlz?=
 =?utf-8?B?V0k3cFJURGVsTjNXeEV2cHNtdG9yWnJaYUU4Mm5LSFFOOG94TG1oeEY1WGpV?=
 =?utf-8?B?aklYSWdjQlkzVjFjQzR3QWNSNXJMWThsaTBSWVpIc0hoQVQ0L0ZCbUlTRVpS?=
 =?utf-8?B?aVJla0JJRi8wQXdIVHZNR0g4NWJpSXlWQ0prNit4NjRvL2tKTjEzU0ZKcTBv?=
 =?utf-8?B?M0hjN1JHRWtndVhTRTJsajZlRDBWZCt1RXpLRWhoZSt1VG5CbWVabTNSWFJo?=
 =?utf-8?B?ZTErTEIzZDFybklXQlV2TWNJeHRveTdrV2E5dzlsVzcxbmpmdDlSUmhlc09i?=
 =?utf-8?B?UVIzdlBnNHo2TlFVT1kyRDRSRkxnZzRMN2JLcEc2RTJ0YmgzWkxpU0RWUS8y?=
 =?utf-8?B?VGlUdTcybTlaZlRKWXRaekUzYmcreEgydFpuVlJSSHlvaDlmNkZGUi9kVWNF?=
 =?utf-8?B?RmxNd3ExZW15U0NhYVNFRmx4Y29QWWdoN0RNTkp1QkhTZWhTUmJ5NGhxMVdN?=
 =?utf-8?B?Y29DR2FJZlZmOGg1VnFIZGlTUVNsZ2VyZ0lCbVFKajk5cHZKbExDT0tIYXpx?=
 =?utf-8?B?V3R3cHhkZ0tSTWpnczh3UmRhL2hhRzErMis1T1kyc2UyUVg5ZUtBNjlDQkJU?=
 =?utf-8?B?ajAvK1JWc3NSbWJ3TGdXcTBDazkyaVhoWEFPTzlKRUtGT00wWmFnbkFTQS94?=
 =?utf-8?B?dHdNWllWazNDMW9qc2R2b3VxNGFySFY0UStNT3BmOXB5WmdXWDdCcFRrL3Zr?=
 =?utf-8?B?dlJmYlBLSUxZR1JpMjZwZjVIWlE2NitBQ01LYlV1MXQzQU5VTjNNWE5iSzF0?=
 =?utf-8?B?VzFFSzVnVGR0WG1Qek5BaWdjOEJxMm1lS2l0V1VtYXVMaDhjTURTeGVzRjRt?=
 =?utf-8?B?eHJ4MkY0UHVVbkJCZ1hOeDVYUFMwd3lzRTcxeDhIYXJlVmJ4YnMyeUtHVUIv?=
 =?utf-8?B?SHNLS2pvenR2YUlqbUJHZXk0TEhZTlUxYVoxUG1HN044bSsxWmF0MzVjdVYv?=
 =?utf-8?B?QXlHMkp2bFNMZHV3UTFhRjQwdUovZzdvVUxJN0E5a014YzlHaWdHcHhyNUZX?=
 =?utf-8?B?RkZrNXhGUndUT2k0Q212eTgwdXFMaEhTd1RMRmxiSWFWb2pmQ25MV25ENk11?=
 =?utf-8?B?UXc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	Q2BhFD/OXU7Y84eCSXCMP0H1mhOEMWymJIDS+GPOXLH6TWONhkWorqQw/JUEuX/3tUMBD8KKLhw6PqWTyV5d1yetpa3plkAjYV7WCrWbYZpleX0/95aDP1ccb3nA0y6N5cvGMS8MMNzSLhgDrQvjflKQvLGPmfdcnUdKc2CHP9GfpwnnD+S9RIlyTO3L4TuYb6Saf3dpPyO9v6L2M3b/fdBU9HbSUuZqccAfRaR/QqeDqxDJs194a0GCxPdgvQxagkQQLlgD3Ui7Q+BloJ+ZxZTgZsI6I26L3DoEPuUFeKCJasAUn36hpTuREJPprhGarZS5YUyApRoCKIlj/uCHZvbmtMniT5t+l6LZLV8BfmQZTaCPbha89lA1w6yoQhUapQ+NRdQh+aDSvCNk6vhHZemMs7OrJJg+MXFBXcDJR2hI2R30qvKvG76mHALI6+bcjThgP6R9ORytnds16zORuIyQQ5DHJuCrHgTOnmbXgSIXDAYQs9hM1bBVU4+HjsYDzmwR/dbOBpdRFVar1ojH1gIBvqG1Q8zwB10eqWVnqVA9lg3iZL8ZQ8NaGEi1qaHPMcyDLgOhSYnt7rf4M3NSzzMgh9Pr9PGNfokzxhvQ2Mo=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 247367cb-1891-45e8-f8aa-08dc4510f679
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Mar 2024 16:57:13.8869
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y8/SrbdU1cYrifbWK7+hr6cXR0rYVLxv94D5s6HHVHfddTBIhHFQxChLZvD2Tu/EXci5FSGAJsAM0ubHaohElS6S4HUPXWXjhd5YhF2hvgQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR10MB6184
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-15_04,2024-03-13_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 mlxscore=0 spamscore=0
 bulkscore=0 phishscore=0 malwarescore=0 suspectscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2311290000
 definitions=main-2403150138
X-Proofpoint-GUID: 3L7jlNK-O9HwcU4WcisPRSjdt84Km8qm
X-Proofpoint-ORIG-GUID: 3L7jlNK-O9HwcU4WcisPRSjdt84Km8qm
Subject: [oss-security] Expat 2.6.2 released, includes security fixes

https://blog.hartwork.org/posts/expat-2-6-2-released/ (published 2024-03-13)
announces the release of Expat 2.6.2, with security fixes:

> Regarding actual release content, most importantly, this release fixes the
> security issue CVE-2024-28757 that can be used to cause denial of service
> for code like…
> 
>     XML_Parser parser = XML_ParserCreate(NULL);
>     XML_Parser ext_parser
>       = XML_ExternalEntityParserCreate(parser, NULL, NULL);
>     enum XML_Status status
>       = XML_Parse(ext_parser, doc, (int)strlen(doc), XML_TRUE);
> 
> …where all input is sent to the external parser and none to the parent
> regular parser.
> 
> The commit message of commit 1d50b80cf31de87750103656f6eb693746854aa8
> explains the problem and solution in more detail.
> 
> There is also a bugfix to reject direct parameter entity recursion and to
> avoid the related undefined behavior. The issue was uncovered by
> ClusterFuzz/OSS-Fuzz after 20+ years of being unreported; that speaks
> volumes for the value of fuzzing.

Further details on CVE-2024-28757 and its fix can be seen at:
   https://github.com/libexpat/libexpat/issues/839
   https://github.com/libexpat/libexpat/pull/842
   https://github.com/libexpat/libexpat/commit/1d50b80cf31de87750103656f6eb693746854aa8
   https://github.com/libexpat/libexpat/commit/072eca0b72373da103ce15f8f62d1d7b52695454

The blog also points to the call for help maintaining libexpat in the Changelog
at https://github.com/libexpat/libexpat/blob/R_2_6_2/expat/Changes which notes
that items that need someone to work on include:

!! - <blink>fixing a complex non-public security issue</blink>,              !!

!! - teaming up on researching and fixing future security reports and        !!
!!   ClusterFuzz findings with few-days-max response times in communication  !!
!!   in order to (1) have a sound fix ready before the end of a 90 days      !!
!!   grace period and (2) in a sustainable manner,                           !!

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
