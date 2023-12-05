Received: (qmail 5753 invoked by uid 550); 5 Dec 2023 21:00:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5717 invoked from network); 5 Dec 2023 21:00:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 to : from : subject : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-11-20;
 bh=Z58OnbW2snv3RW5MZVwpEhC2yidO+xx7i+oToMItHu0=;
 b=ZzOB+3x/r3qLmlk+dkcqunWbWu/aPWhdJHhMl03JuXYNerA6mNgJmsD0C2zyntNwleM6
 6EpJAAGXLIh5AUIzXfpHDUwy5vBGWyKTUzdhvuk2FoegLpFxWzFSDtbCZQNkb7BlNYCT
 k8Nh+IYQAltnSaXtPJo1B5tXpKeHo56UaFkru+yc/VH8PKYNip693KqWgejpIJC7HNTp
 yMKdGSryDbhg5jbzPLrGENJeBz/YSpuTRZtY5H7egLLOOsFT/dCLrfeKt+JnSoF2ij0D
 za22NuBXNjemNKT/Y2anGoDg3T23QJT8ztaim90v3dFhcQxRfBfUdTaeQsac4cJ2tfd5 bg== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f0c5UvnqBZO4S/BEyuhOSIWhe+N5D7k4SksMYvlgnfiEeu0C/10RLas1JGiVLP+g40umrQyZ0kQtcwt00rYzBaiMFHdA9IIV9MMabcoJTd9P0dUpAKrKdHUNr+1sUpaqaLzY0GXijT3NuG0E/RQlACxrd8CxDv1a/KDNVHEvwvKMi3yDGaNU5ubMVFCieZWsB9Qj5RFslyXMNc7ZeuWJ0HAXMFiJiNuzyjTWqB1gMocHBrVs1qRXEjeru8KrMrxxXQBIIvEEyfaKFn7CFGXTx0n8domJuhS0ppQwsX61DQutVNbLjcNIECndYgiAlTvs4P+uWsjXW+G4yTB3iRH/KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z58OnbW2snv3RW5MZVwpEhC2yidO+xx7i+oToMItHu0=;
 b=T+VyvOygC//VaWE9oyV6N/ZhA5sxqiYZ5GskVWhychUNV7wvW45QziwJUiEAfWVE0U+HORrzoT7b4O/mPRdNEcbVBUegLNvUG5zDq2mfMXRyOXjgvufwUJPcxv210u/SYhZQrPTfIG4boL9RtQakgsoNAlvLv3gqbCdAxrhD/1iR7Hf4cUcXLJ6UI+oHJ2f7r5s5Sx0cBe86zUcdqxdBpZHCrcbtiyXxIML3Ayb71P6Gkvs01ZZ6nX6L6H3aJRtksSOs4aeC//lTdRuWQ6yxBfkn0Fy1KDr3S7bo/1qSm//otu682qkrB5O3gy0QxvtLQm0ENUr6m0jfIRMGMab1Cw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z58OnbW2snv3RW5MZVwpEhC2yidO+xx7i+oToMItHu0=;
 b=GbEnQvETBLGM0QuqxG9dJXLso7om8r0jIZqDz132XaclB+weTMoHLctxYg0FKpMHaKBRd+i3IJWai6fMH60R+DsOO6hOmqnOzHubRIRgEyLXgZs8Rb9PisAkWb5lkx0gEBu2LtCSW3TB0xRL23GMYTxuBkpUCYr3Qj4BdhTv2wc=
Message-ID: <824d0fa7-8068-4a06-9185-58b25eb4c678@oracle.com>
Date: Tue, 5 Dec 2023 12:59:57 -0800
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
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR03CA0046.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::21) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|BLAPR10MB5009:EE_
X-MS-Office365-Filtering-Correlation-Id: 068dc20d-b5bf-478a-3e0f-08dbf5d52467
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	41Dcq8qkKlFcCQXB1uQqpbmLz0IwW5fnwxlOfDVvLcha8IvQIvbX42fs8C6W6jJhV+UvGeqewPiIFo9RZFaYm9aWb4FZ3rLxJ+bezOqKc7X+trwuWXo6XdW1A/ONb4v+eStW1stoDi2sTx7lJM90kpdtHAyL1bof2t+3v1NodHKutKOkOkga40dmaMEZGpscg42eOqGahS0fS8z86TePY+noVDqIXAIvcMvgWbQ6VPkw+WACvMMjtX+k3+JD1O5pmC7oEfHgLnwvyy1ibRC3UDNOspWILjcKryyQTDVPiOMgbf5zDnvb0CojE7D6vvc8b2aqLoAxQmQcye87b4+6KCTouEZatsFbGGYeujP1REIbW4eiNZTq6D+Au/vGnw5brEHiFG6xb7w6l/C5D5ek+A0PSDfrMyATMMnausa61RPntumgd9f8DAA9YujCGknKImvigrJLA+rYP9Nm1NNmVNFvJBfDnjI7QLZFZl6d+KQWcMuW+rMd8In0e3nkbPaqjhONV2CmcHUDUlM6LkyBtReKGptjUZrmvO+7B5xz0r+LCmWcT1KIE9RC32fCCuz1LFkF4jOr7przfOr9EiDPMFyCO1v6/FV0OofkZk12lvW3m1uYnjPig5rkZU8rScizZ7bZnmzm6NRMmk6nJ12DDJ9tbH373oeFoqQ2Vv2e3pPIZUrYHY5o7Kw61rNLCZSJ
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(136003)(396003)(376002)(346002)(39860400002)(230922051799003)(186009)(1800799012)(451199024)(64100799003)(66946007)(66476007)(66556008)(316002)(38100700002)(6916009)(478600001)(966005)(6486002)(4744005)(5660300002)(36756003)(41300700001)(2906002)(86362001)(44832011)(8936002)(8676002)(31686004)(31696002)(2616005)(83380400001)(26005)(6512007)(6506007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TDJoSjBNYmRQdkxLcVVKZVlCVWU5ajMvZkNCSFlGK0YyVS85WG9aalJ6ZTdM?=
 =?utf-8?B?cEF2NzZyQlRiZmh1aTMzLzZvajRXbWg1L0tpdy9wTGJ1a1hFSlNvaU8yOStI?=
 =?utf-8?B?bFIyQ1EzejRWOHlMRW5IOW90cUVoKzRoUlJaVmtMck5tMW1jM2htOHVNV0wx?=
 =?utf-8?B?cWhidnIxSEF5NmQxZjRtc3J4WXdlc1ROcUdsamp3c3pIVWtwSStVZElNSlRP?=
 =?utf-8?B?dGhJRUFEanZwVnJpL29wSzNDODFIT2tna3YvSDE2T0FwNmxpNnM0M0ZMSi9W?=
 =?utf-8?B?NXFiQWVkZGdwZ0R3dk5INStRSEFSR0YyTGM2dE1QZ1V5bWpZWnFmU0RaajJY?=
 =?utf-8?B?RG1kZTVLOFJNOU5NVnN3RmV5OEFnMGtUV0phMWpweDNOTXB0SEgxUTVtSjM3?=
 =?utf-8?B?OENFU3hETXZhS3lvODljR3h4TTljVDV2Y05SZ25DWldaL0x2dTdSckF0QXJ1?=
 =?utf-8?B?OGFpUkRGQ09TbzJDSXA4SUtDYnNYNFI4bFY5QVNOL1RkMm5taDNKRkdKRkZa?=
 =?utf-8?B?MG9abkV2eDA5SlF0WDRIV0c3ajBvWXBxUkMrd2tjVG9kN0ZlcWdlbTgzejFK?=
 =?utf-8?B?SnpFSWZuOW9kS2VkVVRKb202T0pnREF5M2tVU1hhd0ZpMzc1YVQ4VUV3aXRC?=
 =?utf-8?B?RDN3bUZmRlFWemo3MXMrWTUzQjhVeWdQVzQraU9aTGdDMEc4UEhHTmNHR2tZ?=
 =?utf-8?B?NDROc0xkR2RIbDd3SXRMQVBoZWxOaUY0My9mbXRPTU1zRjQwMFZSR3VMZk1a?=
 =?utf-8?B?bHZLNG5Kejk3THRMV0RWZ0ZrQlVmb1FuUUxJS21yY3hsWW5BRU8zOUsyM2R4?=
 =?utf-8?B?NUU1VTYrd2IvcWlGbENkdkpicjRFN1pEVS9EbUIrM0NBWTN2eUlHY2w2aUlJ?=
 =?utf-8?B?ZjN6bkNtTWNOS1NkSEVBbUgzS091bEJIa0hVb0MrM1BjZGJHME5US1JlWGZE?=
 =?utf-8?B?TUd1MS9VMy9yMERKVnFGeDJPTVhlb3IxcDdpMElub1V6b3ZSSEN5bTNaY3hO?=
 =?utf-8?B?VlRRTmtZWTJTN1Z5cDN4YU9GUVMvQ0ZTTlpvUnZTanhvUThpZkMwcmJuOEVw?=
 =?utf-8?B?VWNQSlJETHIybWgwdlc4akJFVnpDSVpZbHR1bndHTUpxSDAydFE5bE93Z2Ir?=
 =?utf-8?B?SGh1djc2WG1uT1h5eE1mSVZBTDVaUGNNSHh5MTk0Qml6aDdwenRNYjVybm5X?=
 =?utf-8?B?Rk9TZklWeEtQNjJ4WG8za3VYK1UyUk9lK1c0dGx5eVBXVHk4WjNrcER2T3Fz?=
 =?utf-8?B?bW14UURId3FySGNFN0xCdU4renFNOGlHNmVNWS91bTB4MC9hVzllNlBsV1Z5?=
 =?utf-8?B?dnJGQmZ4NjlEUE1OcFhHUktwWHEvS2ZOeGRYeVNRYTlKVEhtSmhEdW1lb3Zp?=
 =?utf-8?B?Wmh6MDJyYUptYWV1c1VFS08wQ2g2aEVBR0w0WnRvY2lYQ1R4Sjh1Q1IzRkRM?=
 =?utf-8?B?MVBJNS9ObDF4d3ZQVjdGYUcrKys1eHhOdHVjeW5RdDAzUXdrUjhKVUxpQmRI?=
 =?utf-8?B?REhvM2ZvWkYvWkhSaHVrOGpBU2F3djZLclcvUW4vaVhGNSs3Vi9LTkVIZFBM?=
 =?utf-8?B?eHdkM3lEUTB5LzhUUEJHcVVacnBhRFBqSldtbjEvRnJiaEEyMGIxaXRtZ2h6?=
 =?utf-8?B?ZnhQa2hZNi96VnJuVkt1b2IwTHNNdWkzMncyNjR4a0QxYURVN0FhNkpVRHJY?=
 =?utf-8?B?QW1jSFlnNlpmMCtHUGtMZXdKYzN6eDl3VXQ1SWJUenZWdGg2T3lkQkdGVHYx?=
 =?utf-8?B?TTVtUHAwcG1JcDBLOU1jcW9LWVhoMjQwYTZNNEU2WCtUSks0RFdnM0Z2ZXNz?=
 =?utf-8?B?WkZxOGI2dy95UlNtVGNmdHJhT05Oa2V1UmRqWVRTVFZlWDE4amtRYjZ1VUhR?=
 =?utf-8?B?SVFYT0xDb2JhMTRKV3FSNU9TVXdSaEJ6aCt4V0FSbVlPR0RGcFpJY0doVkxW?=
 =?utf-8?B?QUhKTnNsM21tcWhubXdVdW05cE51RU8rK05kb3ZFamw3L1dLQlpoUWs3VmNi?=
 =?utf-8?B?ZTlBMVJ1YzR2OWRpaE1ObzhwN3dKd0xlSkhtcUFycEU1aXo1UVJOTHc4cCs4?=
 =?utf-8?B?RjJaWTczUlNDazdvaXgzdU5NZ2x1RnRCTk94cjYyRFdVMklTd0JpelMyNnNi?=
 =?utf-8?B?ejFVMWNIVXh1dFpQN1VmOXY0WE4ydnlCRUhrZTlJTndXRDVEeloveEoyclNh?=
 =?utf-8?B?WEE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	Uh5PLxirtszptr6Xi14fJ2+Dy7ZfZET5VEeTMnBc0tD+XLD8d308ncJ8WxrF4Po784niHlI/zm3Vgq7UxlBgyFWF4ntnHWBfRfn4/IAKSWmHupIsWlHBhEZmyY1n6QftCA2VQ5HTqES02o1uzvWAWBbBTt26AZy2mer81SaWYfCwl/+ezMF+wOTLjguTY61YH1bh4WL85I6WVt16rn4msrsIUbszkMdT6iVvg4tSifCdO0vVFpF7MwcUTBJ+mWW7m5SH0XDFEH5TBnifO74KF0IPlbJdqjCXclObHLRFZgGladWLtel2hUc3DJL/cmXejhQtb2UB7jbn6HXgOZUazQCCEMnT8mm4YU6FtRcUvaZh7NLS/0FV9DWlpLWuwn0GluNkDOv5bPOR2SYvBc4OYAbENcDPXyPVSwVAsAA+HfsL4eY+UjBAyShSs3rxLVut9RtzBO6yJ1HKT+yKworJ0zvkxZlpiHTj+yd7jpdQm6uR/jX3Y3wMSMvzp1Xksr/8Cdx/Zh0LzEYkYN4fSvuUEu/krVqJAD0fk0RBiL1eQu9Ctt4V8sjRIsIQo+vb0wrSer0BjYZyuRThrdvBOvs1JCZQnO88oSy0KalbwiWqzXLfrAHB0zYKMfCF1apc7/IR9/1fmTHiM2Evi3XzHhztdcLSmDHhLw51YaVeaZ8OUCbEKQATLXErd/b3WkakGWh+kZnYx3QjRm4aiE+pdkmWuiHw7IMupvDzhiBj+sPFooZcn/5RHETCVkNSiNi1m+0Da/cZECVPkr8QQ3ufxp4vPg==
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 068dc20d-b5bf-478a-3e0f-08dbf5d52467
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2023 20:59:59.1910
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zQEAvrZJIqX8UzT67gBzmQGCzdSBU9RTumGRPhTg43aBtYH8v6r/axyQdj6b/qj5W9J7f5RE+FXIyhaG2WF7+fFR5CCVRQD0FrlbZ1mW9l4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR10MB5009
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-05_16,2023-12-05_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 spamscore=0
 mlxlogscore=999 suspectscore=0 adultscore=0 malwarescore=0 mlxscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311290000 definitions=main-2312050164
X-Proofpoint-GUID: 524SCdhntfO7-UV5_uFCt_vNYoYOiC1i
X-Proofpoint-ORIG-GUID: 524SCdhntfO7-UV5_uFCt_vNYoYOiC1i
Subject: [oss-security] SLAM: Spectre based on Linear Address Masking

A vulnerability in closed source CPUs which open source OSes may need
to mitigate was disclosed today:

https://www.vusec.net/projects/slam/
https://github.com/vusec/slam
https://www.youtube.com/watch?v=y4wZ-tREaNk
https://x.com/vu5ec/status/1732099516621521003

The first page lists these processors as affected:

    - Existing AMD CPUs vulnerable to CVE-2020-12965;
    - Future Intel CPUs supporting LAM (both 4- and 5-level paging);
    - Future AMD CPUs supporting UAI and 5-level paging;
    - Future Arm CPUs supporting TBI and 5-level paging.

as it takes advantage of CPU features which allow masking off some bits of
pointer addresses to store additional data in, such as Intel’s Linear Address
Masking (LAM), AMD’s Upper Address Ignore (UAI), or ARM's Top-byte Ignore (TBI).

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
