Received: (qmail 3934 invoked by uid 550); 5 Dec 2023 20:51:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3899 invoked from network); 5 Dec 2023 20:51:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 to : from : subject : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-11-20;
 bh=CgoY0drEHmGPii1ZylThov1mPZssMT9o4FhS1g6Ll1w=;
 b=HKp9WV5BQtK4wcQID9BvVQGksgCjpP82agev0aucQ9bQlM6bzg0dgyc1U79jQyaxw2p3
 MgWfwg0WmMLIYKEWkOtkUqTUt/XasB/GpNIs4LvR9TYW4SJNlyLD/RhY5oFGMY19TMym
 jpKuDvjzEgEjw78KM8QmiwUaMKmXNjkKF2paMYT/ZwzgeM6+AYmJK4C47fd/bIe1WrvD
 YyrgfXQSw4GzKUSn5OIMcbpNY3Yo+lYRd/uGksvVPzz7jAjzd3bcEtVOIVhHIf4lpCwA
 JrdSBn9SCJBq5+BKcQrmTEBtPK+DuAkgFFvVqH5+uPqxCIA6SJWYnzeKE9f8O9dgZS37 Xw== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BHlJJCTxXAOrjndfnaLXbGeku8dmfuExc9LC3gdkQejEnSR2gGSXMGVxKBBVojVDvfaGUPIYY+pBBseSzW69RUx38y1jak/hRjaRkPgGlIssBFN29WJABySAHXXozQAq2ehN22cRsJ8nISfZzLnalVKRLky0SoQJ1lBRxn1aDfVZMDzHSgN5H/6ONOeWlg797bGRplH30GPjsMC3y0tHsQ7qvLdXDVSHvmW69q60yJsVxLsCQU5FwBCmeppzRf8yX3qRnF6reeOR5jaXRCkvFSmtTf93TvHqvMq/Y66xIcpWm6klkQ2DUUCOXW+jZb3nw1QSwyhi2OW+O2bq75jRqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CgoY0drEHmGPii1ZylThov1mPZssMT9o4FhS1g6Ll1w=;
 b=WbIRjstryzeedH0jr/w1bfNZyrUAoJ/gD9yM1nMCQNM280AlBsBkOnS4EI0v/jlZhf6waHswiESGqtnmS3Af3oes2bv8waPzsGFIjaM18RVpEISpMpGPfGdu9ArgKP5zu2mJJGpUGY98/etGoxVnaAmAGVwmb/9z5lBGxPX/9BSXCBLfVB2mZo3K5sFZOK4kvSBPAFE00Vs0aiHIbPEJkkDS9SHitjZ1Agp8sydf16iTaepjjl3UCZGGRa/bFjMm/eQx3w8ElCQl8Ri0pr8j4LZvuma7/2+yBkTicZ6hq4Abm90r1QhUq6UamSQklHpEnixpaCK/JwhXBzfT1TVBzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CgoY0drEHmGPii1ZylThov1mPZssMT9o4FhS1g6Ll1w=;
 b=RI+QHEaeR7OIXWI8IP58/2vtH34z0e7hCY9/XHxJlucJ53PX9hUNCCpyohcc8GxXT2W4Aec+SA2XdPpqgT/PQGwuLU0rnbKWuifJorsuF84KXnp8TUWRc0IyGqsReU8Vw6jhOEVd7JF/mH9mkK6Rq+4ZtzWv7qDVQlJ2RkSZi08=
Message-ID: <db3f8160-c5f9-438a-9cbe-e227b5d8fd76@oracle.com>
Date: Tue, 5 Dec 2023 12:51:07 -0800
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
X-ClientProxiedBy: BL0PR05CA0030.namprd05.prod.outlook.com
 (2603:10b6:208:91::40) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|CH3PR10MB7611:EE_
X-MS-Office365-Filtering-Correlation-Id: fd51c873-7aa5-47fe-2698-08dbf5d3e8aa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	bs+Tzv0G2lq+TEHQTon2aWmqkrA5FuqzF5WL8NAqR9G3dpdqmOzaYrb9x15gQ3hb7Zw8aogZ4Hyhv6tTAKZqeR0zhwmflP6a13QNzs1PmrbQEmpCra0KYWURfhSMQtIPFPvFsEwRE1WFQ76IjegE62ONo8A76wccZ3MxzbzdRAYBdxVwgCMbjaC7PwZ1vklwSQJXaOyJOsvxG70JLoZN16nQnOjLnGeYd8S86mDfg8fsIAPvvRZRy4pHaR6O+kN5kbbNyIU/MwC0wY+8gS4RAk9SwavQDzpVi22KLkn+u7wZlByMaK1+l9S9OgVD0hB188yMcn010prjPcCp3btFQ3pdgUiolZX817GZOhj9ziLyQdS/ynaK5dV7UwCVa0pa7TpcTFY2EzYBLxfTgvQU0VNbTjvRezgSQPlQGJNQW762JiltTC8Sz+cLPs4/UBzviiBcyDEF70eqviTc6QWvXBoT9krknwz5ObAHvuoEY+17BP4r4jHeO6esmR8QgOKyB7ERWOnzK7Keaf5v7WRh48WVDwdEoAKSILpqI8OpXhiH/Y6645/pFOTp56r1se/8jYsu0D3WEcDj2/3FFW6FZAFo/HGVjHnhuXfgFmooTGf9YvRlUg+T7FZMa6AZoXz0bXsXVvczdyDT2Kf1PjKwbKR6D9pGJvcNf6U065Pasy0=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(376002)(366004)(346002)(136003)(39860400002)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(6486002)(83380400001)(478600001)(6512007)(2616005)(6506007)(26005)(966005)(316002)(66476007)(6916009)(66556008)(66946007)(86362001)(8936002)(36756003)(41300700001)(8676002)(15650500001)(31696002)(2906002)(44832011)(5660300002)(38100700002)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UldPZDloRkZTQ1dzU1VTSTl3dmM4WEswREwvWkRPMnB3TkEzWVJTN2ZzRWR4?=
 =?utf-8?B?d3poUmZTY1IwcEEzc01yaE5CYVRVT1M4SjNHb1hZemdIWnU1RFUwV2FlNTRl?=
 =?utf-8?B?S2tacGFLNlpMR1B4OU9keDczaHdhdmVZSC9MQ1FtRmZ0SkpaYzNld1Vja0No?=
 =?utf-8?B?R01YQm01WGQ4Z2Z2Mkw2SGl5T3Q3TzZ0WUhpMVg3ZmlKQncyeFgySU9hL1ZQ?=
 =?utf-8?B?NU4vZWFVbktSRTRqWEs3cHpOL1RwK3Z2L2xOcGl3NUV2cFBYNjYvWktuZTUy?=
 =?utf-8?B?NXhWMVZ6b2RrSXROSC96YkZiRCt5ekdJNzFzaUh1NDhsdE83cU1VRUhVdEJ4?=
 =?utf-8?B?Y1NvRmRCTDhlWHFIcW1oT25oc0dDajBob2FvWm5Va29MQUdFVnNnc0V3YytK?=
 =?utf-8?B?ckdHU2VJcThzUW9ONWs3T2VwYVhSengrbmxZYjd4V0lCaWpLVjJVZktWRmVH?=
 =?utf-8?B?bnMvREtmdW1lYWdPOHJxeSs1R1F3QzAySVhCcDRZVXp1TlV4L2pnV3l0RXVC?=
 =?utf-8?B?djBUNzBNYW1ZRDV5QzNRbm5YbUJDbjRNQkVHaFV4R2VBSmc3Ukg5blkrdkdV?=
 =?utf-8?B?emgzdXVacjJSMjUzRDlkUTZVNmthUi9wL2V4bXVHZC9GbWRuUUxuUzFRQnBH?=
 =?utf-8?B?TXI0bkhnNkhkRVdJKzVUcVpYWmxUQUZhemkyYlVTWkRQRGJGQ3FOL1kreTBN?=
 =?utf-8?B?TzFFOVBmK0NBQU9acEF2VTZPVGFxUkNSZTZjOTNlbnQvR1l1VXJvUXZ6b1lC?=
 =?utf-8?B?R1N0RVNJVU9GSXYxZGpqSUd0NEpvQWk0MXFETSsyeEp2U3U0bHVSYnJpa2tX?=
 =?utf-8?B?cXNsekFkZ2gzUUVsOEhMSUtYdXRMSVRneHZnNk1UVjJrM3BYc1FaWGdiRDRa?=
 =?utf-8?B?dmltcHE0MFV1dHdaeWUxWXdaSk5iWWo3Ulg5c0xDTWE4WkRZUC9QVnJzdEw5?=
 =?utf-8?B?SkZWeVRwSmVTaDNTUFJSa2NoSExTR3RGbkMxb2hUN3JONldIOS9LdzcrVDh5?=
 =?utf-8?B?WGRTbzBhTWxrcmdEYW9HTmFRb1pGY3UzUEpUWXd6aFgvRnQ1N2FXQ1dZMmtL?=
 =?utf-8?B?eTRxY1k2anh5UkZMYUUvZHNXczRtUmladXc3TTRxOHRvUWNWbjAxM1pXSHND?=
 =?utf-8?B?Y01leC9xcWkrblROVnl3MC9mVkNKODFTRHA4bzRLTFB0WUJYTUpIaUF2aUhB?=
 =?utf-8?B?OGM2MkptcHpGbE1POE9tOVQ4aFhveEpXVTBYNlhOenVpeHEyNFhlY2NBcXFX?=
 =?utf-8?B?ckVKdllhQmxwZGJPSCtuL3lERFZjeG5Pa0prWWsvaC9Zdjl2am8yVU95ZHBq?=
 =?utf-8?B?ZTVCZGEvaTZBVll3b3ZFOUNZMkFkUG12bUpIY1NSTXdyY3B3QTR3QnZsbTlD?=
 =?utf-8?B?UTJMQWpYRlgwUVp2UVhISCszNm4xMC9SQVJ5eXdjOHlEaTVTZUladEpOZWlI?=
 =?utf-8?B?UVFUVmFCWm5vOEZtRitrQi9VSjRnQzNqMkIzRWFBUVdFTnIvMkxpZmtmeTNS?=
 =?utf-8?B?TlU0TG5nbFNjL1BtUHdNWXZhQjJIRFpjRE0zQkxQUFlhWDZrYnVrMjRjclM2?=
 =?utf-8?B?YXB1aU1ZNkNjQ1hNTGtQeks3SXM2R042VXRKT09tRFRsb0ROQ3d4cWJqYlZF?=
 =?utf-8?B?RitiSmR2Rm0yRGhnSXBXeEFhc0JLSFZJT1JScWdEQ214RG5WTVdhaXBoNWV4?=
 =?utf-8?B?RmRheTZITEtxTVJKS1Fqc2Nlc1pST29YOWFnMDRtWUF1dFRRaW03R3JhZXJi?=
 =?utf-8?B?N3lWZUhWWEFjYUplSzB3NzB0OTBpRFk1WFZ4K25ZWkNLNFJzQUp5a0cxY2lu?=
 =?utf-8?B?WHBFNThQemlmaDV4YjY3emxLV2NmbFprdCtNYUtNQTdYTnF3c2U1UUFaWE5I?=
 =?utf-8?B?MXV6a2IwL3lQYkZlejRYK0ZKendpL2lrNjdxOFg1RnpCZ3dFRmRuU2tkcVUr?=
 =?utf-8?B?eHlsR1NZTW01VGI1V1didHJlMHYyOWtOR0cwVCtwNzJSRFBNMThhOUhIZU1o?=
 =?utf-8?B?end3SlpuSW5WbVBZeTM0VDRQN09lcHBTNnB0RlJ3S005YmlRUmRjZjFuSlZn?=
 =?utf-8?B?b0ozaXFOSUdMR2NVc0R3M2RycldBQ2l3YUZPWEZTL1RGTjN5MlU5R1ErVjVt?=
 =?utf-8?B?UG9YMkRiQnRoSkFIR0U3aHJMMGVVOFAydDNPYkNLOG8xdDZSNnZmSlUvNDRU?=
 =?utf-8?B?T1E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	1lTdidWOfK7Q7BdOYxV7UvxhY9+XByTVT0JSlD0BEtMFgLCbvvaB+EUTgcooC6KmJPlESDxMgCCEx8EXfeLULNC7c/1dkk8e30vJWnq0rsNyngWsvLZNUgwC96w4GnUmjjA4NjCR3FZylFwc1//w8pSQ1NVk8FAqIwlqleZJ4uyY8ax4dcq8rWJVQlluPK7xLHJjCKXynacTiIeBPYuw6/il0NoKHtx+uCvtTfFByVHda6YC+6AHdN6/igAqF2aovqJ0z9GIuXprlbddt7+2lCECA6VLKEtntIW3kKlphtljTraFqCg4lpbcmoIlBC7/PFCuQYWXUSOtwCw2Q/DcC9Zxai0JnQ0o/PuuyQwTCwquaotVYlCf0y6v4hfExwRoC+U01kZvjIHKNVFiOS4wLweAJvsENvHxOn2BRG1eMMrEDvGTEE7gYSmwGvm0m5nSpiWn8pe/B47YJ4QCjhNh1UNV4eWiB8meO3FAx1GC1C8aLnOOwMrb2A5gQdBGTAKNEAvdHJxS5wD/P1hEE6Xcp6C994BweAIa1Cog4vC8OPxgTFofEFOUgBqfg3h3E5kyhOxyZSt9gK/ba5WpoY/WXOn9I8ejXK0AWkmaRH9xjxvTc0t8Nr72OjyVQW+hH65HHcDFiDyL7NRcNAyXV0zPpbFJzNY1WS0o1MsQ39vUMw1MWhMnqnGV0PaYqxciKGEN/1RlvPfSIrIF+IoSj2R3QLDG4Fe0LhvGEoMxUZdB3emP0TJf8FzqzNhLwdbxiONyV7dUUXekggRbCQSZ6l5yVw==
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd51c873-7aa5-47fe-2698-08dbf5d3e8aa
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2023 20:51:09.4471
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KP3H5KsCbVAdm23D3ftZ1WnBpX6HOxqRLapO0eouCF8GfWLTv2mKR4wzKo/2Sjkh6gGKH3DwdndEPz023wzM6retnpOVw//+NS82IOim21E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR10MB7611
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-05_16,2023-12-05_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 spamscore=0 malwarescore=0
 bulkscore=0 mlxlogscore=999 phishscore=0 suspectscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2311290000
 definitions=main-2312050163
X-Proofpoint-GUID: qDEUpCqDhFkCoqyt7wi09iyjoHBcujDr
X-Proofpoint-ORIG-GUID: qDEUpCqDhFkCoqyt7wi09iyjoHBcujDr
Subject: [oss-security] Security fixes in Go 1.21.5 and Go 1.20.12 releases

https://groups.google.com/g/golang-announce/c/iLGK3x6yuNo reports:

Hello gophers,

We have just released Go versions 1.21.5 and 1.20.12, minor point releases.

These minor releases include 3 security fixes following the security policy:

   - net/http: limit chunked data overhead

     A malicious HTTP sender can use chunk extensions to cause a receiver reading
     from a request or response body to read many more bytes from the network
     than are in the body.

     A malicious HTTP client can further exploit this to cause a server to
     automatically read a large amount of data (up to about 1GiB) when a handler
     fails to read the entire body of a request.

     Chunk extensions are a little-used HTTP feature which permit including
     additional metadata in a request or response body sent using the chunked
     encoding. The net/http chunked encoding reader discards this metadata.
     A sender can exploit this by inserting a large metadata segment with each
     byte transferred. The chunk reader now produces an error if the ratio of
     real body to encoded bytes grows too small.

     Thanks to Bartek Nowotarski for reporting this issue.

     This is CVE-2023-39326 and Go issue https://go.dev/issue/64433.

   - cmd/go: go get may unexpectedly fallback to insecure git

     Using go get to fetch a module with the ".git" suffix may unexpectedly
     fallback to the insecure "git://" protocol if the module is unavailable via
     the secure "https://" and "git+ssh://" protocols, even if GOINSECURE is not
     set for said module. This only affects users who are not using the module
     proxy and are fetching modules directly (i.e. GOPROXY=off).

     Thanks to David Leadbeater for reporting this issue.

     This is CVE-2023-45285 and Go issue https://go.dev/issue/63845.

   - path/filepath: retain trailing \ when cleaning paths like \\?\c:\

     Go 1.20.11 and Go 1.21.4 inadvertently changed the definition of the volume
     name in Windows paths starting with \\?\, resulting in
     filepath.Clean(\\?\c:\) returning \\?\c: rather than \\?\c:\ (among other
     effects). The previous behavior has been restored.

     This is an update to CVE-2023-45283 and Go issue https://go.dev/issue/64028.

View the release notes for more information:
https://go.dev/doc/devel/release#go1.21.5

You can download binary and source distributions from the Go website:
https://go.dev/dl/

To compile from source using a Git clone, update to the release with
git checkout go1.21.5 and build as usual.

Thanks to everyone who contributed to the releases.

Cheers,
Carlos and Dmitri for the Go team

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
