Received: (qmail 17542 invoked by uid 550); 19 Dec 2023 21:30:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17524 invoked from network); 19 Dec 2023 21:30:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-11-20;
 bh=ErhD8gb9E5dbu3pqOilw8NComviMw5iexFITe0EnsVc=;
 b=eaosceLw3cs3q2kQm5Bv0V+YGAr7NENsUVqaDHh7y4I23GIrdRi5o49vPsaBLgBhVy47
 l9m/PXadx377kXv/ruzQTmnen9uLUjKqDyBverffYn27AqkDs8ePmfbYw3j936jMsrNQ
 ug+gePNRtS/uAYnFpip0xRZURHs0ETvm8djqmOMLDvEbvydlX1npwd6zn7M0Eett+LMB
 TrfBBUzrIozKWV1gWRolnn+/3SagTwPx3zTmQEActcCVmJJi5UImJwggDtBv+F9FV/XL
 bmlcyFLgXh7sVsDjW1Y9Ktmia1yaMM3lmEr5fn2/+f/3Oo37Nk3LCIBd5puexzV41948 kw== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aTdPG4c7xWnCMWyu1bgCY8zhXTtwWc/mxhKmLNscKRZjq2pXtsJY97DuQAigZ9BrsBjwuFwx1HZTS2E43JIvjhOmhnVwGa2Au61y95cFTXkXQpd0Q9vrBUQikb3NWyWqDSI+/iAoNOx7PCgxRBRoFnGDO9JHbD8prTKO3dykYesMVLUP+H3Je37EOlfeQrwEarl0uMBGKiUk2kbUlosu0bl4WG2JgoLPVjNOmtXlwWCWQs4IMI77z2OqXLJzOKHKYHo6QQwXTbw3YS8rp0lTgrc1iRor0P8vfUshMXCqbUNHxqpMneT5xtBeRy7jp0QAf1f9Bf4w9saqvIdfnCk9fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ErhD8gb9E5dbu3pqOilw8NComviMw5iexFITe0EnsVc=;
 b=UyQ1MgCcTTkCr+iDAonJFx5sd+fMztc973suGjbcTJVLqblfNM6b/o6ZLviuMWTgdjU3Qx0w9G/aOhzNhl78URJhxLi9hIKzNOsDxhcBr+kl+pnZVtaycGqicKSvyI2WIigHc6X8GzhfUAXJbWO334n2Bb4qkZfD3FJ09glpd+wS86jZhplpy4OPLDOWtnm5oDFsuhGJudOi+jP+Wfvhgrk4LB3zcwlBYjyofdAi9/HHqZyPYwq+CtzDfXupP7y5rDadMlBL79vsZKlATg1U7WR0EwI6OUPshMFtjYuWa2qZL0S7EuNGXEeNTnrJSy7BKPjhT36DJ3OYZ32AfRIUCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ErhD8gb9E5dbu3pqOilw8NComviMw5iexFITe0EnsVc=;
 b=LAqAhybgsHkgleD/kKam5uBy9gpQNFPJ5eu1FsjosgCRV1Q61NR8HxzKrYTUbdKdd1OHG9EyO1mBgXT68WdpFomGhbBUewamq38kcHKryC7XTemX7D/k8Uufz2WXyjhH6Eg1i3KaIHkSrKHeE1W97tAEwEyjJQlllRxcTlxrY9M=
Message-ID: <6c354ad9-7d17-4b37-8e54-73cc4088f2b0@oracle.com>
Date: Tue, 19 Dec 2023 13:31:03 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <a8637927-82b1-4f95-a7e8-7aa6cbaca455@rub.de>
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
In-Reply-To: <a8637927-82b1-4f95-a7e8-7aa6cbaca455@rub.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PH0PR07CA0042.namprd07.prod.outlook.com
 (2603:10b6:510:e::17) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|CH0PR10MB5353:EE_
X-MS-Office365-Filtering-Correlation-Id: 6c9bfd80-1f16-479d-1622-08dc00d9cf12
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	7mqGxNeQccbzv/cN2R7kASRcqxhYbnSZMZEg22VhmJyuDV8EU7Gg6FD7XnbGX4Z2/mp7DPczxAb4BTOeAkSY8k80qzwrx/piFadl768x5NUeTo6ypcg6GubKaGQ8U5AoTai4DSHo4Zf8zEc6EKJdP2xgJfm1DsQBNzXvVyXkD8ux1nAYK4UQkuMZpXZKXAeF2f9nJluS0ilMDYAdHeSMTMR7ib4frw+EUzzk47H6MBSYMhtf8jczyHH6tmsozTDrheHaOc9lAhUuBPSVdYWtPLdJcOQgiZQdd1d/I5jaVMDXkjMHcqNwKBN5pXl2PWTcjfsDbmyT3kOxBKbOrMM7CcC6H3uyJC/LZE7+S+r/I1HT7gppSB6aFyujyNwE2wNkXNTFbDJ5Yrc77vr83qcMMr1wXHQMg4diD5T4wYrwYA0ttEsXfcAjbHEnCEoO+UayT/nk9R2SICMTaMm/frcQd3ricWTVDWiQ2H3BSt9Cchccp02ll9cV5qxGgjrwFfLLNerbOivJKDZohWeOPNIonnfxD+cWbmGUpQvIvB9E5R/sX90RB9HEEoXglnPJp4Y6WmzCISR0h9Gw/q8m+caLP8RcnluLXYzmw/6thW6waI1PnHpdf/fOiYPVa/Oq0tKQCZQAZUDeUMsxuyh1HgUUQbohMKalJ8l2mfXNsl+uXxA=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(346002)(396003)(366004)(136003)(39860400002)(230273577357003)(230173577357003)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(478600001)(36756003)(6916009)(83380400001)(8676002)(2906002)(66574015)(66946007)(66476007)(66556008)(15650500001)(38100700002)(84970400001)(5660300002)(8936002)(44832011)(316002)(53546011)(6506007)(6512007)(4001150100001)(6666004)(86362001)(31686004)(6486002)(26005)(966005)(2616005)(31696002)(41300700001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SzdqaUwzZWxOR0d4R01wYWQ2UWpXN2d5Z2x6TVdzczgxV0hRNHNOTy9LZjNB?=
 =?utf-8?B?Q2JBV0Z3YS8raG53NU94bVVnUmVmQWNiQ3Mvd2xDOHBHSUYzbTJVNGtGSVgz?=
 =?utf-8?B?dTJlc1ZGSXZYcE5oNWlGN1ZFS2Mrc2xTRUFVUzhBZnArL1hlU3FnWWR3K0FQ?=
 =?utf-8?B?b3pteUxWUlRFWjQ3emFWZ040aGxieHB2dFMrdG1ob1dsRnFEbTF3OWxuQURN?=
 =?utf-8?B?cTdGcy9EVVNQSld0eFpsZ3RRMDRWSUt6d0Y3aDExOHhFYWFDdU1IMVljcWk3?=
 =?utf-8?B?NUpvS1JnWmQrVmxIYzg5TUhPNTNtSzJHTWlGeDFqc1NKWmp5SVR2c2tKcDg2?=
 =?utf-8?B?cVpGZzI0OTU5cHM4WVdRZmJKTEhPS0xJaENnOGQzbGwvYjM3MTBHdFAyekRG?=
 =?utf-8?B?emVSQWxnSEFOOEZyOVJ4b0VpWDdTM0t4ZVBvWjIrNGhnUVJqdGRsZ0F2MzFF?=
 =?utf-8?B?OERmc2krMVBKQ3ppcEJUYWcydWx0NXhDVnhoR3pOclZtSkxwOFZNRUNRUHdG?=
 =?utf-8?B?eW4vTTRKWFJwTXNXcTBrcVVseVlhVndSYXl0R2FSU08wWU93UXFlcWo4L3Yy?=
 =?utf-8?B?QjV3RXBaRDI1bnhxRXBlVG01bk9qemR3WFcrK2xUOWJiTzkxS2lFVldvQnVD?=
 =?utf-8?B?d0ZzdytQQ2hWSkpOczFCbTZXNTF5THBIa2Faa2orNU1tZWxBN0JodjZqS3E5?=
 =?utf-8?B?RmJ6aSswaVdWSG9KNHY5MmNJMVYxOStVb0MvSjlpRUtrTFNVd1dIMWJRMlFj?=
 =?utf-8?B?VnRwU3gxMktpbVY1R25kSDlGNVRoWFpKb2JXTy9uenpiU0FZcWY3aGtLeEdu?=
 =?utf-8?B?SENxM1lEcktlWnBFRGJIdjF6ellobTJxQWh3UWt3ZGVsVkp6N3BvOEVzSmtt?=
 =?utf-8?B?Q1ZWYlJ4ZFd3ZVVwNjB5ZENWZmJPMmVuOHVCamszN25PbVlneWFUNXl4MG1S?=
 =?utf-8?B?NFpuUzJJdk96aUplQ0dYQXBLRUVwcUhFRThHdVVtbHRwRktBcWIrWjFDVFZL?=
 =?utf-8?B?Q0xnQXFNeDBQbmhid0Z4YzZjbDBHd3FnUCtmTGEwbHNjZDYzYkJPcUd2VHNN?=
 =?utf-8?B?b2ZzSUNUam0zR0x6N0NudFZHeXhCWWNIclFCK1loWEQzc3VoK0V4aExjOHlv?=
 =?utf-8?B?MjZ3UHgrUG5GYVdVSW0rbng0VjJHQ1NPeTF3eElxam1WYmRxNlZScHp4NHNZ?=
 =?utf-8?B?MWMvVzJTVE51MHV4bTU2VmZYVDNXTEh2SVZCNVJKMUR5REdYeHFWaFVnR2N0?=
 =?utf-8?B?RXUwemVkcVRWeVNJRWJ3OEs5bTlXaWtSdzZtNkw5ODQrV0lITkp0c05LNmI1?=
 =?utf-8?B?RW83a3FwRlFSUi9naWpNQnpRMUdPMTBZYnhlRzJKU29XVk0rS0QzY0w2a1cy?=
 =?utf-8?B?d3o2M2EvQUxPMC9lcnUzUkxuaVo2ZFp4N1F2ZDZObGEyTXJNd1lJbmIrUmVx?=
 =?utf-8?B?UUlsMzlKUmQvL3M0RS9aZzZNSnZ6b3N6ejg2azB4Z01OSWRBK3JjeHc1K1RD?=
 =?utf-8?B?ejUzMjQ5a0x0dmw0a2dua0JYWWdjbEk0WFZEbmdxNGIyZ2tDWElKb0N5Y2h1?=
 =?utf-8?B?eW1CY0J0ZkRLdWNoakZadXBNK0RDQlI5WU9tWVNFTWx4a3plMVJsSjJRNmlt?=
 =?utf-8?B?SGhJUHJOSi95aW83SG9qVHhXak5wbWV2TGh4VkxkWGZvSXJyRlh2dU0xNlA4?=
 =?utf-8?B?NjRPZGlNMVZmUzUyWW5XbkZYemswS0lHUEVSZGZMbmV1OEs3bGU0dmppY1hz?=
 =?utf-8?B?UXRFVkRGQ3JGbmdHeG9CNWxRelhnam1taEVXY3ludEhjaTNqc203RDg1YVQz?=
 =?utf-8?B?TlpkVm1POFZrYXJaUjY1eUpucEVTamJrTkwwa2xpY012SFdmUmhOcWdmcHl3?=
 =?utf-8?B?VGhDM2diRTV1cEVjOFBLaTZJeHFOOHAzR1NkUWpucis4WC83aTRwcWxXcHY0?=
 =?utf-8?B?MFNrN3ROOTZGU1NBVlVsSlhxRWhRem9KSUo1S0xpZ3hTWFlORTFsRktxRDNF?=
 =?utf-8?B?OUl3M1N4SUVNZHdZZGx2cG1teDBqT0x1Mm5RYVRIclNPa2xZNitvVVRGbjVJ?=
 =?utf-8?B?VzRVbXB2NjRQMU9vTWdGeW1FU0JJaDJZSW11cnJYTkpwYnhrTUNnRmJhTmdR?=
 =?utf-8?B?b2FmS0Q2YnNsNFJsQm83N09CeXlDNEVtUVVnbkpCQWx5bm0rdjVoL0RhY3R5?=
 =?utf-8?B?NWc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	a7Eh1j1AjKZcAdKwV6ddImEQEkXVxvuNOhNgUGmlHMiEFIFdsap3ds+kLgTcNe9YrA7mkP4F/O+RSLX+sU7F5WL6kImfjvPfJTz7CggdNQmM1Sn5jhA7IOHj+OltyAa7pfwngBdt+U7JYTim6hTzRxwuZthfTMtKGm91is+eMt0YJhu5mJK29Gq8OaDXyjK7eh7MVPONFHDHkJZUnUYkKOVepqpOWWK4uoW3VueSiDXex8/Bc2CW/nJT+eMjN5V+fyhyyK4kyLGR5zHAfx8B7RmcRPWgpX7yTwC80ABJVrKF9AHIgNlw32q9oC+QB+3SRxMyHNmHKoDMIV2z42PekQuCWF9qExA6UTprhHg8QNb2o4K6TzWlo9lmnL9XkfUcpFKsvdNarhjvt3zaLSOKgKL9sEaF/nlEI+O1NuVveOzqHrcEj5kUTTnzjSEV1n7i8DEyc/cc7P79+D3MGwQoOzqjg8gEjszgA+YmxGKaYBtcnVDrD+rZtMW2l/mfbbhtWAPbBPAtCjbQwffRhqumesyoMSwx4K5028wLktUgJtooQp8vplTIw6MqhGuyTfRAxxMfy1/DkVbMixhpZSeP2vnl9uI3e27d5w+0KHeFL4U=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c9bfd80-1f16-479d-1622-08dc00d9cf12
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Dec 2023 21:31:06.3600
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MFcn8yjrNhrwjuDxam8h32FIoe1MsgCf66mcGQ/MUDEmmf5ASf9rkyUQ8lXU5xjcHyuYBRV/7/Re5bZ8RKBUNAhgEie5DyjGgRO6w9gVPZk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB5353
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-19_12,2023-12-14_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 phishscore=0 mlxscore=0
 adultscore=0 suspectscore=0 spamscore=0 malwarescore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2311290000
 definitions=main-2312190159
X-Proofpoint-ORIG-GUID: O5ZcTRJwk2a08Ro3Hc75rQ0gllgdOURR
X-Proofpoint-GUID: O5ZcTRJwk2a08Ro3Hc75rQ0gllgdOURR
Subject: Re: [oss-security] CVE-2023-48795: Prefix Truncation Attacks in SSH
 Specification (Terrapin Attack)

On 12/18/23 08:08, Fabian Bäumer wrote:
> ### Mitigations
> 
> To mitigate this protocol vulnerability, OpenSSH suggested a so-called "strict 
> kex" which alters the SSH handshake to ensure a Man-in-the-Middle attacker 
> cannot introduce unauthenticated messages as well as convey sequence number 
> manipulation across handshakes. Support for strict key exchange has been added 
> to a variety of SSH implementations, including OpenSSH itself, PuTTY, libssh, 
> and more.
> 
> **Warning: To take effect, both the client and server must support this 
> countermeasure.**

Open source projects I see have implemented this already are:

- AsyncSSH 2.14.2:
   https://asyncssh.readthedocs.io/en/latest/changes.html#release-2-14-2-18-dec-2023

- Dropbear git:
   https://github.com/mkj/dropbear/commit/6e43be5c7b99dbee49dc72b6f989f29fdd7e9356

- Erlang ssh 5.1.1:
   https://www.erlang.org/doc/apps/ssh/notes

- golang.org/x/crypto 0.17.0:
   https://groups.google.com/g/golang-announce/c/qA3XtxvMUyg

- libssh 0.10.6 and 0.9.8:
   https://www.libssh.org/2023/12/18/libssh-0-10-6-and-libssh-0-9-8-security-releases/

- libssh2 git:
   https://github.com/libssh2/libssh2/issues/1290
   https://github.com/libssh2/libssh2/pull/1291

- OpenSSH 9.6:
   https://www.openssh.com/txt/release-9.6

- Paramiko 3.4.0:
   https://www.paramiko.org/changelog.html#3.4.0

- PuTTY 0.80:
   https://lists.tartarus.org/pipermail/putty-announce/2023/000037.html

- russh 0.40.2:
   https://github.com/warp-tech/russh/releases/tag/v0.40.2

- SFTPGo 2.5.6:
   https://github.com/drakkan/sftpgo/releases/tag/v2.5.6

- ssh2 [node.js/npm] 1.15.0:
   https://github.com/mscdex/ssh2/commits/v1.15.0

- Tera Term 5.1:
   https://github.com/TeraTermProject/teraterm/releases/tag/v5.1

- Thrussh 0.35.1:
   https://pijul.org/posts/2023-12-18-thrussh-cve/

There's also some open bugs against these open source projects that are not yet handled:

- Apache Mina:
   https://github.com/apache/mina-sshd/issues/445

- ProFTPD (mod_sftp):
   https://github.com/proftpd/proftpd/issues/1760

- SSHJ:
   https://github.com/hierynomus/sshj/issues/916

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

