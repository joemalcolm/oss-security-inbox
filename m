Received: (qmail 19961 invoked by uid 550); 10 Apr 2024 18:33:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19898 invoked from network); 10 Apr 2024 18:33:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 from : to : subject : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-11-20;
 bh=xL8pYZ3DMAsIgrUvwrKfAJmxkR95EwxVabnmFA8LdTk=;
 b=UGyTwirz3uTndt/OPmqad3YEWm0Cp0JBXoXCHkLO2bNsOhMFcna2IyyrtyaxDpWnVnKu
 MrMsZ8GHRajchuf1+fohixYUMSKGrTb/slQFnALkmYE4A3Qxx3whlTa0PgYzlI3UQKH7
 cpxa1UHVnfzVt4KzLtvsFNJmBdQkurbIJrzlFbwe5CCddJ25DUzlgzeso6kZ0ekzy8Gw
 faja7BGUuU1u42Rb8FwFHdPArozLj4pdpcX+iSB9Hv8Zd9C+hztL4ct0Fq46zZYk8Xbd
 zbbCP8KNeMv8Uj7VhfGKGPB0wqb8eJaIiaMLokAqMtZd2K8E6XbtsHFgc2UmOgUk5XxH rw== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BIXDfUSnCYiXVmT7hb1+zrkc0MN7juVwQS4xkoqE9WsDKkTosbClYtcPwY1aCgRo9st4/H64zvLwnw9kjgSPfnRlxEBAEH5Jyhis4GwRgaX5A470dxDJ1sYnm5+3CqiMWI3tMCiGt2r9C9x0pSdcaeSAtp8oxvswglpNZJLR/2X23on5UwENUVeg3qMOFNoHJuAWLjYrhIUGPbvrdsNGhE5tVgNRGqOtH3PiFFs6WJW5inNSEgmkE92KqKo7y8erRhSLajv2yBNdn/cLTnA1KGuaZQlmwruvToD7ZTPH21GmKZRkQi9dkq0bp7vBBdeaCdmoURoVbPSB4QyFWKOPjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xL8pYZ3DMAsIgrUvwrKfAJmxkR95EwxVabnmFA8LdTk=;
 b=hBmLfycbhOhQS3EfBm9hR+Dtxnu8d6Vh7KSDGCx2oUS/sh5mvpfqCxLQHN1U8VujcN7HFPEXRucV//UioIeRB4zAnfCJUCDy6aWeQXVT7l3CMFK7+Vj7Q/LPaioo2vUm6+rOh2Q3WkmDcCrInK2PhJddtWP8BRrCMBV7XCB1d9iMdxcQnQ7sd9/FbsKIdTEoswI5EqpUhtH7QO5g7O5W17fnS4tMewinFLuW7sQokpC4wR2EWx4UUAkOx+qwOk+1pm9+tut7HcWLJFlAyBih+usMavWlMu92MPd9LBofoA/GoBCuxz7ppnWM5nydxhdsOEz56ZdvMJTcS6qxwokUJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xL8pYZ3DMAsIgrUvwrKfAJmxkR95EwxVabnmFA8LdTk=;
 b=IeN2fusF5HHhEVpB866oCNNSngAqXtTBJDDlvykyLhmosz5HeqUwkftQiuDHcQJFtO/SXX7Jbz0obKG1J3OVpmXoyOCObAFjgrF2oUSsnashoMIjkdgNBZgRP8nRDW70B0wYkoLWFyyNowb0+x5qcwmsXMUpRztYxQYvMMvm9r8=
Message-ID: <20215e9a-c05f-4897-8e4c-ae617ebd0cd4@oracle.com>
Date: Wed, 10 Apr 2024 11:33:38 -0700
User-Agent: Mozilla Thunderbird
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
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY5PR03CA0025.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::35) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|MN0PR10MB5934:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	MIyWcspt99hR2Gx0NO4bIFA60mvbmT5FvJJxQvPTaKVOUiDTd7QR2LEWcXM2zAKWWh6PnqEip0YKg+awAord3BbYvnkYl6OKnqVaUWidM3zZjk1RW2V8ybiySOid7cEBrZU9OdwdUPopdG9QMVnue6hnB767DPsaymYXDt34piKetJ9Q3e1uQzzbLLgnTxXTCaP2zzB4vIhZCa1FWhE0chul1LO2MoyuBGhWKfdeei6xWtbgH2u3Zpj/UeXmvTNnCxv3kEIdOUxPEIy3YPyOyI1XVlg+rEqsNOIvuhAaS9isqOnx7VYEZxtAArGPeXfiq3YHFvXis2KjQ5K6ZEhSDcIaKsqTcFGBVWnIALFwusljxPTdi5TLf234qwh0ePa28CRNaTv7bYjXhFtCu2gVixX0c/U1MQYS/sHBHIy1U6yKyn/ZFMVv80P+l3nWKKfnQuy3LGVp8vDfQbjLt3wRKK2O+8tE2PkE6+G12EmdNinc0rNF7sx1QGJ+nloSMDvCbD0DUhTkbHQqa9ykhNqa4REeXts/EsEY8Q43aUypGrZ2NqW11kr0vlZk+vW/Bb2cO8hOIWNQD9dAjg1bbhZdRzmvfDYdoBMJ+68yVaOM4WXl10DlitEQnmtcwL+T8uJz
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(366007)(1800799015);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?THhZcGhhZnk4UTF0UTFRZ3VYNnphcnZ0SlhnWjVhRDBrM2NIdGdqSTZjc0V2?=
 =?utf-8?B?RG9CRGJweDNnWGZNc0FIY1EyeFZRc1hNZ0FJUkdHejkxQzk0WWZxbVFvUHA0?=
 =?utf-8?B?MnlyVVJ0YjlIZlZOSFFnZ3VtNTV0aHZhNUFnNk1HRnRXTmFzenNoY2NBY0N4?=
 =?utf-8?B?Szd2Mk1VSldBejhHYXNRbHZXOWtzaUE0YlVUSlloRlhGSTYxc2NMaTdPOXJB?=
 =?utf-8?B?TXdWUzRsQ21vMGRBenhkUmdXcGpKMFo1czJJenQ3YVlvbURYQmF2bmNKeVhs?=
 =?utf-8?B?NjZDc1BLOVBJK1krK3llWTdKSTZ0YkZhMisxcStXS3pGTzJaUVdrS2dQWUNK?=
 =?utf-8?B?T0JVSllTcHhKbXlkODlJYS9kdExWdElIL2NDWWxOZVY0MFA4VnZlTnowdkhF?=
 =?utf-8?B?YXBQY3ljSmppUW9yZk8reTBhTm40aXFxZ0JBRWtCbjNacXNCRDNSdHNTeU16?=
 =?utf-8?B?dXUwaWREd0hhWTYwdmNLRGk4SnNRSlp0QmpuQmVEaWVURDVDc2tIYURXRjBv?=
 =?utf-8?B?VFVMVXZ5NE5MMTVpYkczZFdoaEZXMGRITjlVQVlkOU82YWFwSHAzS09qVjRj?=
 =?utf-8?B?Zkg0RHRmQndiUFZ1QzZTRnBFeTZmRFN5Z003bU8wb2xzTGJZVWJvM2xlUEJO?=
 =?utf-8?B?ZmhNdjRBbGFBK2VVelcrZFhNUFV6cGhETHo4WFRqaW5yWCs3Mk1NbDEyQ3VL?=
 =?utf-8?B?THhiV3dxenVQU1dFbHVvN1d6SDVPQXFIaG0vdHZBQjZoQXVXKzJpMlE5eUpH?=
 =?utf-8?B?L1dUeTRPbm9EeElUOXc1RXpVRCtGQkxDTFBrbkpwdHJUeG51NlhEN09LU29t?=
 =?utf-8?B?UEdiWkRZTmVkNXl0dkJ3dHk4c1BWNCtkTmdHcURaTlRUVlhKMEw1L1ZWcGRa?=
 =?utf-8?B?V2R1c3RocHJnejZDOVZhd1dxYTM3RHF6VU9kMTNLSnVyUGw1QWtLWVpmTFVv?=
 =?utf-8?B?YTlZQkE0enVURDlCbU9lMVl2TVFoM1pWT0NuYkJKRHlFbmdsZEJzb1p1eW1F?=
 =?utf-8?B?RGFYaWVodmFxMTRlUHN2cC9PYW8zd2NqZXcreHkrZHpERmcvYjkwc2YrK0tu?=
 =?utf-8?B?RkgwZjI1S2NxVEd4NnJqWkZkaVNpOUUzbU1IakxSWHYvLzYxTFNxM1BHZ3B5?=
 =?utf-8?B?UG53VUdKak5UV24wRXRDL1NQZEdURGxBYUFEeUhvMVB2TnNrVVlvK2RuVWNV?=
 =?utf-8?B?SzlkSXdVZ1BZL0pYZ0RMbnFBYk9OYkZCWmRlREJLNDFUcnRnb1hTQ2lRalVY?=
 =?utf-8?B?KytjN0MwWHVXZ2lnOGJiK3NucEdLUjNEU1FjVHQ1dDFYbmlvYzE3d0dTckhI?=
 =?utf-8?B?NGpEMGZiZzBqbmIrUHFFZElYTHRDT3lPTDRNRWw0WitSNlJnM2lPbkp3WjJv?=
 =?utf-8?B?czFxQW02UG5zQVlVQ1loSFBMdHF5ajRuZVc4b3J6dzlvTmRPbzZVYXVtWFFw?=
 =?utf-8?B?WnFwMWVSamcvN21KYWdaOVZRSXZ3RUJodjVEYlRXQ2ppTlpBSUZ1eThVRDhU?=
 =?utf-8?B?TDFFbm9IczdLb1JEZ1YvSEhjTzVPTjh5WnB4RXRaNWpEcjYzdE1Bd2JxWm1h?=
 =?utf-8?B?cmJBS1N0OG50RHRicE56U2xzeHdWZkxpdk5zd0NXYTU2TG5DTGVpbzF0dlFM?=
 =?utf-8?B?SW5GL2RiWUJOYnlpby8xazhHczgrNUJpQVI5ck04Q0FRS2dNb2xHVWtUZFRC?=
 =?utf-8?B?aWFxVkJYbXVtTFJoMzlJeFZJQWxqcG1ySE5TK0V4eFkyYTJhNEFjVW9Pd0ZY?=
 =?utf-8?B?L1g1SDdBeVh3dGI4K3FkSkNSZGp1UmR3N0JxZ253RXpCbjBKdDBsTGw3THRH?=
 =?utf-8?B?TVQ3MVFhdlNqSjZRVGFjY0VISFpqK1pmanVrS0ZvVkliZ2xCaGsySVZXaVVE?=
 =?utf-8?B?cTNqa0UvZWtINVllVmsvN0hXL0RRRmh4ZlJISmU1MWowZU9zZExUbEp6S1dN?=
 =?utf-8?B?RXNnR24wU2IzMm9yN2RYbUJsU3krVWowVFdlY3dLZCs1bzBoQnJETDRlbUJs?=
 =?utf-8?B?SEc5MTdtL21aLytyM0h1MVhVVG1ZZzNVdVhSVVZCUzlHbjBrTkJTMjVFTXk5?=
 =?utf-8?B?Um16WU5IWU9DVkZrUm9CakRPOUtvKzRmRFhHaFp4d0t6N1N6UjVuZWxidFRZ?=
 =?utf-8?B?RHAxenlIRGZmMXA4Z0JOeWkvWGhhblhrUW1WMm9BWlVCL1o3S05tb2VEYXJ6?=
 =?utf-8?B?dGc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	kv+a8XRkM+t3N8j15czTfHklSkfMyR2kN3A35VXBlnCQd/twjfhsPU0FNaZIYHYkT61auAfpxI+BEwaZe3LoBJ15svYkyi5X3RzoZ5H1ODAspqmf9eMUkbfuPlWELEYWwCZcgrDp1aqSjuDoicJH6RhNtauv9H9lz+060rgWgWsMwtUs6iMcvEQX4je5sXYPAJeFmHrY05yyA67cQp45h1wx/ONLmpPTltBAxd0EaZ5Y3e0g+hYDn7ncQiBrWEB/LzoR8fcJkeEjqytQWBKIphxE4dk18jymDVWwHmUMXRU1DD0w8gjjUJ+F0wD1o6EoclaVUi5mDut72vEL0ubO5O/PBjZCLNn1rKWHG6pdS4kh0QUHatpcUBr0zTWDjjv/X6RXVbfHjq0OoWT9KC1WK+7N591sy+sHXUS6AnSe96V2HXfZiOjQYtKPrpfcW/QHVEYPMHza6KyPOql7uh5pJjvjpvhXPTQJo29KYNSLf/4+A3H54hZ6MkFQ8NGQBCnfio2VOD9AIUs8mZ6sTh3fyB+mEvXbqdUBm6bhDXvPeynfI4bhn7+4m/Xx4SP9Luwec+6qZ4kXYz09vwF24YBPLNWQsDJZbccV6PMh59XaFAo=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f3ee682-66ab-4a9e-30fe-08dc598cbe94
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2024 18:33:40.8544
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oTaD683VSKXLVH5nK+PiRB9d9YGCVeoPUPsPyWMoMY1s5UbgHYFxmjt1iBhSoCtTXZNve208I5LtqJeErsEvPjoDvGFQbQvjFiQLV2hjq3w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR10MB5934
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-10_04,2024-04-09_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 malwarescore=0
 suspectscore=0 spamscore=0 mlxscore=0 bulkscore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2404010000 definitions=main-2404100136
X-Proofpoint-ORIG-GUID: UBOFFTrmEVcvTq5MJe7nmHiN59l20cVo
X-Proofpoint-GUID: UBOFFTrmEVcvTq5MJe7nmHiN59l20cVo
Subject: [oss-security] CERT VU#123335: Multiple Programming Languages Fail to Escape
 Arguments Properly in Microsoft Windows

https://www.kb.cert.org/vuls/id/123335 announces:

> Vulnerability Note VU#123335
> Original Release Date: 2024-04-10 | Last Revised: 2024-04-10
> 
> Overview
> ========
> 
> Various programming languages lack proper validation mechanisms for
> commands and in some cases also fail to escape arguments correctly
> when invoking commands within a Microsoft Windows environment. The
> command injection vulnerability in these programming languages, when
> running on Windows, allows attackers to execute arbitrary code
> disguised as arguments to the command. This vulnerability may also
> affect the application that executes commands without specifying the
> file extension.
> 
> Description
> ===========
> 
> Programming languages typically provide a way to execute commands (for
> e.g., os/exec in Golang) on the operating system to facilitate
> interaction with the OS. Typically, the programming languages also
> allow for passing arguments which are considered data (or variables)
> for the command to be executed. The arguments themselves are expected
> to be not executable and the command is expected to be executed along
> with properly escaped arguments, as inputs to the command. Microsoft
> Windows typically processes these commands using a CreateProcess
> function that spawns a cmd.exe for execution of the command. Microsoft
> Windows has documented some of the concerns related to how these
> should be properly escaped before execution as early as 2011. See
> <https://learn.microsoft.com/en-us/archive/blogs/twistylittlepassagesallalike/everyone-quotes-command-line-arguments-the-wrong-way>.
> 
> A vulnerability was discovered in the way multiple programming
> languages fail to properly escape the arguments in a Microsoft Windows
> command execution environment. This can lead confusion at execution
> time where an expected argument for a command could be executed as
> another command itself. An attacker with knowledge of the programming
> language can carefully craft inputs that will be processed by the
> compiled program as commands. This unexpected behavior is due to lack
> of neutralization of arguments by the programming language (or its
> command execution module) that initiates a Windows execution
> environment. The researcher has found multiple programming languages,
> and their command execution modules fail to perform such sanitization
> and/or validation before processing these in their runtime
> environment.
> 
> Impact
> ======
> 
> Successful exploitation of this vulnerability permits an attacker to
> execute arbitrary commands. The complete impact of this vulnerability
> depends on the implementation that uses a vulnerable programming
> language or such a vulnerable module.
> 
> Solution
> ========
> 
> Updating the runtime environment
> --------------------------------
> 
> Please visit the Vendor Information section to see if your programming
> language Vendor has released the patch for this vulnerability and
> update the runtime environment that can prevent abuse of this
> vulnerability.
> 
> Update the programs and escape manually
> ---------------------------------------
> 
> If the runtime of your application doesn't provide a patch for this
> vulnerability and you want to execute batch files with user-controlled
> arguments, you will need to perform the escaping and neutralization of
> the data to prevent any intended command execution.
> 
> Security researcher has more detailed information in the blog post
> which provides details on specific languages that were identified and
> their Status.

We've already seen some of the updates on this mailing list, including
notices for Rust & node.js.  For other languages, see the info on
https://www.kb.cert.org/vuls/id/123335#vendor-information and
https://flatt.tech/research/posts/batbadbut-you-cant-securely-execute-commands-on-windows/


-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
