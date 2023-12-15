Received: (qmail 20385 invoked by uid 550); 15 Dec 2023 22:44:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20358 invoked from network); 15 Dec 2023 22:44:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : from : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-11-20;
 bh=2xwVlhtjzWni6JFhA+21VbRajeAqs6+IqScyDYM/rsE=;
 b=VnYO32aRJegWVYLg88g9QvYQK+dcVnh8bMBMz67m1IqHODCSgaR1RakacqzHsRfaYfpf
 ZR0M4vM5M3WWv0oMwEuQVQ8u+xpuYBgrO1libRJ4xltESFaMY4kQxKvAjHc76MGn3SJ7
 m68IVGQl2ZeIZX1P0+7IFuJeEMUbiqpr/2S/JmuplJe+Nq3srBEzTaqW9sXRA69JWBBF
 WA8NvXMz3WG9SD+4qE1yafZAQ5ryXmJs0ZSL+NTeJ/Xvalvv6p5bcz2XmaD+vXzwoGgq
 AZo+hcHPGAURcXLv4hnmL3fJMuQder8+c9ocyWb+qDCY+JvXuCeiqDQ671MKsXAT6t+T mw== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UeZL7MbcsF2dfJfihIJUKrLbJut8PPeeQ7HY4PBrnVBIB+sQ5tEoL2BJDkicbcswfTtawg25K6vSJDI+8OK0G1prfx7Yqfi2mHrcRtqnncxeg0RoOfQKaKP4R7GYMZMmhvV3bWkv7WHxlctECwSXvfivqvRcVIXmN5k6K9E10+S1Bnes9gnBUs7+Ka7n+2HlcwNdWXrSWvbPDaT1UECbLO6HN+GdVouiLXc8cqc1WbdYqWXefPnCHmUPj+czL/r+tPRjBegWGPyCPPOPwLroBckpRbmVJLmHj89uDVa7eobgsZNVxEG/Lf7paMVXLTJYH3kULxxu1HnvmpeRm0g3fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2xwVlhtjzWni6JFhA+21VbRajeAqs6+IqScyDYM/rsE=;
 b=POvtdhAzbkrWGKs+NqHmwI8hNFtaglTCRiPCmzkHhdmv5VRWYFK6MKHJ6w9PGqXV0PUnw8z+tMla+yq5Qrx/3Y6WFIqVMYx43xqglPZ8/1oEBjiYstpFma+1gtNeultns+JACgkvpPGVho8MoQwozRDk3PaY4X285Y1zR9QfMmWmABSExXoImsJxCUNcLa30tACOH2OIfAMHveYjVhdaU3Q+dJMbllFiSnCWZbxbTIv6u8Is/Hea//cz4xaXmzgOPz1xgO6E/ZPjRE/L5HnSXuRiHIRp4aI6syUrquyjrObSi7cOCgnyRyG+B1cwb9fVVwuG6eWWfIH+CWTA6tW17g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2xwVlhtjzWni6JFhA+21VbRajeAqs6+IqScyDYM/rsE=;
 b=hVXm1S2DXtscinU17ohQi0wNpX2nKDo/G5IVl7pmr8l13jmCRpMUmRQO2gUGVMU6u9jjsjHnFbewy3Xkha46b5QeWYPHe5YocfWaGiO8cqEwk269iX4AQbLY8er1ih/xsmhdL/NM942aztIEOZo1F5A2XxHVd8zUS24NmB4//nA=
Message-ID: <be1b1e24-dd0c-4296-b7e0-5c6a77601ee4@oracle.com>
Date: Fri, 15 Dec 2023 14:44:43 -0800
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
X-ClientProxiedBy: PH8PR05CA0013.namprd05.prod.outlook.com
 (2603:10b6:510:2cc::13) To BN0PR10MB4997.namprd10.prod.outlook.com
 (2603:10b6:408:12b::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN0PR10MB4997:EE_|CH3PR10MB7416:EE_
X-MS-Office365-Filtering-Correlation-Id: 84a773df-8867-4789-b99b-08dbfdbf6f87
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	tU67UXcTSvg9WCkJLVZ9O9DJ4igC2lyyxuDc0DXfe3AAPdABRbWMr5ricGTXVmATF3DU0bPEFOnn3kHo6OT6lN0FDEihEiSWz/oIjvwcDzyLVgztXIf7TtLjobm+d/fn7YDxp/IpAGZriAEVK/otVBNGQIQs5IUmfXjYF9tw3Iwn5A+VtjTpBr/PcQK1OtpV3E1I/wBuOYQ9fws+ZZNaUrFqcGGju5yNFhVjg4lwMzjaXG5ZAS9jxJ+xVX1TRt1vPNAs4vh58LFmm+UFbQAFmqdDzOXDILXGrlDEpclmXfK5t0EeAcnU5sq65e78gsuKR+vIs/d2GMxUyYalcOTFaI+RfXZZE99yIch0hZb/YGyHkMEKBs+FVuqFZAZbQeI7rp8rZawdf5dsOlsReUCTWos3ioc/zN7ZwEw7bIF5edqB1DgY2UUGVwfO3T2fmyc6M3qT5wywv3Xiof8pkwmhf3HKT0KPtOiZmdjSbAPYcJw5dn+43jVSSndYbj01Hwu5YzlJPDqfiVlOwRP9JC+o/0pt5EWKq6r01XNC8biiRxKhcfgrE5yktgrQDM63/+FsLUC7PgEIfXHgc4RpOBy97m3OwQzeWGXy6256sWHPoI9LrMGJpJozXdGZuv38pEh/xvYOhx9+U9vDC1iQTjnlIxTltcWRtOf2WwKVluQCi1pGPtKrGNscn7CIcDYts2At
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN0PR10MB4997.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(136003)(366004)(346002)(396003)(376002)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(4744005)(2906002)(31696002)(8676002)(8936002)(44832011)(86362001)(5660300002)(41300700001)(36756003)(83380400001)(6512007)(6506007)(2616005)(26005)(478600001)(966005)(6486002)(38100700002)(66556008)(66946007)(66476007)(316002)(6916009)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?eHkzcXdSZ1hveDc4SWJ5a0I5dFVJaE5iRDJRd0diWXFRanJBVFVWSThrSTZh?=
 =?utf-8?B?ZVpSVzdqUDhSb2Y2L1QvU1c4ZVJzcUdRMWhoN0E3ZGZkNkVsT0hyT1dtRENw?=
 =?utf-8?B?WnBUQW41ak13RmZyRkV3Ly8wd2o0YzY2V1c3SHdrSWdkVlViV2JVbkVJWFpS?=
 =?utf-8?B?NHBsNGd5NmNFVDRMWFJ4UG4vRFE1NlJKVnN2Lzd5L2xZTmMzZmJlY0kyOEQv?=
 =?utf-8?B?MUFlcW9oSUYvL2k5WGlsMlVjODVxdXBzR3RpTjhYWjRmRysvWlllbXU5MUh3?=
 =?utf-8?B?NWFhOUsya3VqTVJDbS9jODh0d1hPS2NIQVRFS2FDVmp2TnpqQ3ZnMVJycnVR?=
 =?utf-8?B?TFZ1MUhGU3FCZ3djTEVyK0xuVXZXVXpIRGJiajhZT2Vhc3ZlNWh0K2hwaWtH?=
 =?utf-8?B?OXRUVFl2N1ppVzludmRuM0cxRlRTQlZHTEJpUk5Lb2ZkUmlsNjZqOHNEb0kv?=
 =?utf-8?B?amo2aW1xVUZoekw5NWZmZEZmako0cmxWVTdUQWRxVUpYS1lhT2toRzZiTldT?=
 =?utf-8?B?OEQ1WFcwcE00eTRBMDBUWEU2V3hpaXBqMHJiKzFqdmNvV0xRbk9uaVlqSGM0?=
 =?utf-8?B?L1owUSsvclRzdmpHVitqMUhLRTYxQTVGS2toMkhlbnhWQUdjWUVqTU1LUVA2?=
 =?utf-8?B?VklIZ2V5WHNPci9UOU5LQ0tqb2x2SXNNcU5DblRJL1JJUVZtSG9lMVpmSXM3?=
 =?utf-8?B?dU9xQ0Nld2dMS2lkZnZ5blRxZlBJZGtVL3JDaWdtUnYzbnVhN09UazRRb1ZR?=
 =?utf-8?B?Mzk2cGpEYVlDdVBReURoK2dIYklLOC9UM0dBNzBYdEExbjhjRURqVjlsUmdX?=
 =?utf-8?B?bllkQ3FYc3ZTSmtZVlJiRk9peDdKcWhjRlNBWGpub2tzMVhTSWVRRzRHN25q?=
 =?utf-8?B?Zm9RbkFPSEYyQlBCbGtpSDJmaFJpNFFBOVdwbVRua25IZ0JOMjIySmhzRjRz?=
 =?utf-8?B?aitBSlFBcUN0dkpEcnVldzk0elpPemRNZDZCaXk3aGFsWjJndHUzd3oxTDZV?=
 =?utf-8?B?L0pXOHEyVnRTZ0xpWjN3Qk1hd0puZmh3THI1d2szNTBVak5MOEZiNzhsTGt1?=
 =?utf-8?B?YWx0RExRMWp4VUNHQUhqRzJwM20vVWtYa3ZWRUNYakxucXlMcE9tQzNuZXZz?=
 =?utf-8?B?eDQrYXZoWDZPQmp2S09NS0NKaFVHaGhQYVF0UVpZblZXTzMvR3loRk5kRHFr?=
 =?utf-8?B?N2ZlemZuT1A3cmdOODdzampGWXF1UG1RTG95RUpLaFR3eUFnRnR6ZFB2SlJ1?=
 =?utf-8?B?YWZBWnV4VUhzQnBhVUM4eGlrZVRMMTdEWE1yelQ5OUw1Yzk0cDEzUlBxcHJG?=
 =?utf-8?B?ZkdwY3RhOVJ5MHpVcUFtZUdjZC9RSkFidjN2U0xCWTJmeHE3SHpCcUpCMDVQ?=
 =?utf-8?B?TzFxMkFXdUgzczFHNml2WTg0bFIySVVKeXFaSkZ0dUNsMmRDd2JZMmVRS3Z6?=
 =?utf-8?B?dCs4VkI2WmxSU2s4MEZqSmVjbStOKzY3Y0h0ZHcraU1OcTlQWDkyNkRlLzNx?=
 =?utf-8?B?RVoxYlU3ZlVDenQwTStldHh2T2ZNcjV2cW1pbWNBSGdmRXlJaHRwUTV4WFdV?=
 =?utf-8?B?UTJmSk9nWUNNeEZQNW5SUVg3dWp4N1E4bUQ1aTFGYng0LytaaGhxVFNEM2tY?=
 =?utf-8?B?L0lUYS84SnpCTGxSOTdhaXozWE80MVBVa2llazIrd0c5R3o0aU0yQUZaYlBX?=
 =?utf-8?B?QXVFdlpGWlVVMFUwdTREcEJwWU4wTXpaL0lQQ0tEOVVvWjZBSTY4WEdnck9i?=
 =?utf-8?B?MmtZTzZpQ1BObUZKSnBVaE1sRUJ0UkJ6QjBUZi82a0I3U2ZzRFpndktRWmV6?=
 =?utf-8?B?aE5UTHdrNnBhU2FiOXNobkdaNk0rSGlVT3N5eiszeUhRVnNFOWpxZzJXa1hw?=
 =?utf-8?B?dXE2QTB3K1NmR0VHYlNTbFg1Sm01WXJjZDFCQW4wclNVczh3L0ZvSmd2RWdn?=
 =?utf-8?B?YVJwZ0VOU1JtSUI3cFpBQzNwa3dtMEUyRyttcTBSNFpRWGFiN24vU0NxcHVv?=
 =?utf-8?B?bVAwYmdDb0lPMDJhV0lDR3R4NXVzYWprTVRPL2cxdmY0M1VxaElDUUVXdlg3?=
 =?utf-8?B?SEJHRHpzaU5RdEU0YklmZ1FBSEdXQy9jaXFUNE11Y1E1dmVocG5LMzNPT0Rn?=
 =?utf-8?B?ODdjRkxSMzU0VkxWUStPMHNTSnVwSmJtc0RpS0o4RWZrcDhNRk8vMXZ6VkVI?=
 =?utf-8?B?NUE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	ftLqGn+LR/XQBhspI8GSt5n31DE8qkf+FGxNyXHTuu9BCza2/g9K62VE6btYl1P5SRYlDn6zWTQUz3s6DV+FRqD2xgBasUfGEQzJWXtE0GmG1F2Xv8D4Bk2C9NFy1K31YkDF6VsObTa7O1jNEzHlPAOuJrfh2wfjm93Zd/v/Xo2erMYX+OJaAmWmUbQ0vd5eufMh/kInSG2stnqCEL0J9fWLHTWZ5bamSmypFx0TRKIpzVl8N1wRunLop2/8XbXhEQAWpYNOOJjvMSc/UjDF60mtaceo1BpQgPx/9Y/3zcoQS4nEe3w9of2/6/m9pF0lFhKKAmV2c6OyP3hZVZ3PizjYCv8aX9lyR/e6riQR3un23Py6Jz+5AJvsNU7eAJadEMscdRu9z6wHvsK9zULOux0ddFTut2hT7rmdUeI+Afvlj4r9KU3v2aLFLs1nXyKP5M6KM4abUlyNUQvvBFrmubrs17doHxMDvMY+ZvN/2jQRtuMbKNNrg68DrwXX5dTb0Grlg7PAP3ArqHjvefARMSmSqpLAhO9lvKZnU0z3i8/brgfZGK3YCfLlXtjnEq0bsmvIciG+oyIi3nPn2PfOYM9YxZFciuLyQ8XC2kto86Q=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 84a773df-8867-4789-b99b-08dbfdbf6f87
X-MS-Exchange-CrossTenant-AuthSource: BN0PR10MB4997.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2023 22:44:45.6172
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DJ3X9XcIee4OcZfxnRmDsBB5hFE/Ipmg1bn+20n3kVRnXV87Pkq0YHJHjdYkfOfB0FvuPAPlnnx9PdOtn9ZpTscxnM7Lubw1aYICApJZVhI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR10MB7416
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-15_10,2023-12-14_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 malwarescore=0 spamscore=0
 suspectscore=0 mlxscore=0 mlxlogscore=999 adultscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2311290000
 definitions=main-2312150159
X-Proofpoint-GUID: 5koRwd5RjG9-LIaDxobeQ9nwMHNip5Gu
X-Proofpoint-ORIG-GUID: 5koRwd5RjG9-LIaDxobeQ9nwMHNip5Gu
Subject: [oss-security] jq 1.7.1 fixes CVE-2023-50246 & CVE-2023-50268

https://github.com/jqlang/jq/releases/tag/jq-1.7.1 lists these two fixes
among the changes in this week's release of jq 1.7.1:

     CVE-2023-50246: Fix heap buffer overflow in jvp_literal_number_literal
     CVE-2023-50268: fix stack-buffer-overflow if comparing nan with payload

They've also published advisories on github for each:

[oss-fuzz] Issue 64771: jq:jq_fuzz_execute: Stack-buffer-overflow in decNaNs
https://github.com/jqlang/jq/security/advisories/GHSA-7hmr-442f-qc8j

heap-buffer-overflow exists in the function decToString in decNumber.c
https://github.com/jqlang/jq/security/advisories/GHSA-686w-5m7m-54vc

The fixes appear to be in:
https://github.com/jqlang/jq/commit/c9a51565214eece8f1053089739aea73145bfd6b
https://github.com/jqlang/jq/commit/71c2ab509a8628dbbad4bc7b3f98a64aa90d3297

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
