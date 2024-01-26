Received: (qmail 1471 invoked by uid 550); 26 Jan 2024 19:50:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1440 invoked from network); 26 Jan 2024 19:50:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : from : to : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-11-20;
 bh=rbbE9C/7Py5FGQsefXZDh20CJn2vhX37L2aEQ9z9fcw=;
 b=SSDd0RdLuVw5S1YuyHue11f6cwsFVkd7adTCy8PL+VT9FL7erhuQ4EUeLmJkGOyOq7Hr
 Gt7OWUX4UFPGgggqcwFlIPIEFNBxQTmFtEnzSQ3VRnzUy+b5ZBCB0hdCTL5bNJFCZz76
 sTogFs6rvgWRj6QGqcnLysqOY4kVAsTTZTyLX89vZK83h9e7O/J3cT407cTK77RV/jum
 JLaiXy1FtUC7gor/wmnyqgIH61B0UTCYBcpPdTvHW6Nlq+2baiPgCHxa3783PVVRF3wW
 zzPRJDWrB10uu3yKXxUrT2GKyho/9pKZ1pe0ncMHH9PAzNIrAiCV74MpBgC28vjLBKhh KA== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z8YXIwx1o5nvE3dX93zx3Snnj6DoZ4OWSF+eXFJYAVEhRkpQt1Js8OsdP3DuKEOuwUAzrkJJrmyX2+8B8iW2GrGfZ0RZ4+A+/HNmB6f6O1bCjZW4bSRX+1mKUGytd/Y1BzmJ8cam843t51IsXHrYUtLjM9+wUvmyU24P2HDM967XaU+WQS5+5qCNLMpI838GOhJy5wZbS3cjXRPzl8s/hb9PjpVweTIbmAbgeP2DZkdzcgdLTxrWPDMQpz6HpaH6PBKRvgRImpEcmle2JXLbashZC94+GIbmVNjQlx2c7LJXRbcZ5Q6kW+vqvgtsxP5vg4NsdkCADILAhRWaI8dzOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rbbE9C/7Py5FGQsefXZDh20CJn2vhX37L2aEQ9z9fcw=;
 b=MG2vWL2v6S7sQQqSL4f3PfqwlSwit36Aa7gjFOf7xtEpm70ShwU7miFCatXir7Zy3s/A7J8D0WIpVaBX/W6yMAc6bBElfJXyteKSeO/llgAZ3NmD6wj2s4IN/I4GvoisvL4gKmc2GIexMbWgifuXnfeMsMWSm9XVp0Yp3QtBm+sP0puSynpSrsmTAdqFKlJDWqIA+NwbzNuEA8Bw8fTO0dmecfiGrgsR/g9mO+zfN7gjS7b4yf9e1aGzEqH9P0WIbVsGUG50E1DVQviwhw5R0HKaWExg1NGbq3mOBPW0jEey9O7DJgqEVR3fTjPxvc5q30WZNWA6q6+zAZl54yUOfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rbbE9C/7Py5FGQsefXZDh20CJn2vhX37L2aEQ9z9fcw=;
 b=mc3y+A8tdOfZVYVMGXow2STPZ+DzFO244r6MGi1wYj2cKKSBHvwg9lmh7o7yDxJPLoKjCS0rbpbXcV6TcDZEQ/8OjCWb9ELoVFrIOdYWU1iVrt3InMeQsqQ7CMxuQf21/5gDmRgg1t+RxKiuBV6zR6TWmOKWT8fKoIldZj2Br5E=
Message-ID: <ee09edb9-6ce6-42ab-82bc-70f011ca7c88@oracle.com>
Date: Fri, 26 Jan 2024 11:52:40 -0800
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
X-ClientProxiedBy: BYAPR05CA0037.namprd05.prod.outlook.com
 (2603:10b6:a03:74::14) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|SA1PR10MB7790:EE_
X-MS-Office365-Filtering-Correlation-Id: c27afed8-2968-4f81-b4f7-08dc1ea85be1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	OeHKdvihDfUGEeUJqB1Y2WuE4srzr0v8qfPoFxPGq6naGMlh/l0iHu6B7MW0kF0tPGJgLrOGy6gSRLJL/4uCP0KOCL6d6zPAkqlSEn2dZWqnpVp0leXtqLjvGZHycnGOj7D010SF0PXem5eHr78mvT9B4Zbw21mmcRJm23bTsXrqffBP8w5oNti1o9iu+GvhZzCn1y+G+q5vPTvTDb9GRT6sAFDtA1K3VbrCv4dqHNYePxFvO86fCRB4OtnOglUnPblrLLlc/+nzIyozwqdrFQts0LpvJPlgHn0+P5ud58bYnoLOoUL6qOgrgrm83w6uAtaInVjQjVHtOG2YB7QpS6jayx4ZHtKfdPoby6Uya78kaqOfU6UEoeXoynaLnx+w3zH06ZGxU50X2GoTgkeXp2cnOrHcnv7vMemhx3ZJwSQE5TjMQPQ88FAkkFXFLSL58TmrldU9l+GDoXZkjxwq7gRITpkzBunqqrQ9Qrpxep3hRX7oU3tzIA4n6MHPv/AF64SZ8NqfWktIvd7bZGHZGfigZ33rqmHo9IxgkXlB4LMzceBHceWSJTYsDm6/AscxFCQA2MmhVjhzbsDpa27FnFXP68wF6m6LIDO8OtmzrJpKph1Ma04l/hJEIk2Q3j4K4udQwBkUbM37GOYI33O86Q==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(366004)(39860400002)(396003)(136003)(346002)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(31686004)(6506007)(2616005)(6512007)(31696002)(26005)(478600001)(966005)(6486002)(316002)(66946007)(6916009)(66476007)(66556008)(86362001)(83380400001)(8936002)(8676002)(41300700001)(5660300002)(36756003)(44832011)(38100700002)(2906002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?M0UrY1pSamlqeHkzSnF5TkxQb1VMRmdlL3BRQTU1c2kxOGowUGdtdXNRVEJG?=
 =?utf-8?B?VXY2VlQ4dEZZb0k0WnlIZ0Z5QTVrZUd3dXBxSjA3U21HdFNGL0RjeXFhdUNK?=
 =?utf-8?B?ejZQQmg3MWltUDdiTlRvTW0xRWRmOCt5MkVSRERNN3Z4NXlmczI5eXdaZGJ2?=
 =?utf-8?B?ZGRPcUxSQkRURVVmdnM2L1ZnVmFOb25VeVJpVGJtMnJkQVJCc3Y3ckIvaUox?=
 =?utf-8?B?V1R1UHA4VDM1cE1tRTNUekp6a2hEQmx3d1NkN21DZmhKdWlsU2JKR05nTUxn?=
 =?utf-8?B?OGw3RnE0WGFobm0xOXRvQW1ocGJlK0VkdWdneEQza3Zod2ZHaG42M05RMXlu?=
 =?utf-8?B?Vjg3bEFBcDVlWks0Rlp0OWp1OEJjVXVsdW1ORE40WkJpT2RSZGJOQ2pQRUlD?=
 =?utf-8?B?cUd6Z1psTTY3Miswckh3SHp1YWxaMDY4NUhCazZ0cHFtYlNKRjNpWmJwdnB0?=
 =?utf-8?B?Slc5MTFySm5qYXZHTVlOOUdkTU5WNE45UWp6N3NZUmp1SXBnakk1cHZGbTNX?=
 =?utf-8?B?Zk9NVXJaVTFqajNoSHFwa294ZnNJWTFnVERLMlo3STR3VGVVekVreWE3eEJ0?=
 =?utf-8?B?akd3bVFrNDZtTjlYOThQVkVwNldLUXB5NEZaQWppc1RiZlRhOGdaaEtSckZq?=
 =?utf-8?B?TkR3QjhZL2ZyNEFoeWFGL1Flb1g0Z25sNlhWWk9ySTBQN0RnQThKSjNkZ0Zw?=
 =?utf-8?B?TVZyQzZvQkJEVk05TGRKT3krakI4bmhIRDVSYWM3akI3QmVFMkhJclJhOXVa?=
 =?utf-8?B?ckI0TmQvTytKdDMwSmxhZVU5cE5xNFhOKzVzbUY2b1lVazdNem1hQnJ4MXkw?=
 =?utf-8?B?dTZqNExPNTJqRnh2YWRQS2xRZUZnNTJmWm1CQmpTTmh3MEQrQXBOY2MyYzV5?=
 =?utf-8?B?SVVnWDczUjU5bUQ3K0V4akd6U25ROXkzWXFaYUg3eTBxQXVUeUdNMmZFbXdS?=
 =?utf-8?B?Z2FpZTkrdlNZdiszaFhDakQ0dGNLZlJidjNxSkZNQ2pXY2krZFVyaEpVOVRV?=
 =?utf-8?B?K2p1bThPSkdNS3YzNjVEMWFXaktKNDNQNG9LMm9JVXVkU3I3UmhPVVZzS1pU?=
 =?utf-8?B?TTNpNGpqZytKbXQ4SmVjaVl4VjhiRFZFSVdTMmxQU3R3Nm5oUlZHLytOYkRv?=
 =?utf-8?B?REFaTmN6U3Nsak92U29tZTl5MjFsTmEyR1p4WUM5cDdzSHpKYnVFV3NWZUJL?=
 =?utf-8?B?N1JOaDZlcnRSYUsyQ014dWI5bGdHczZ0cDhVblRVWURBaWlFNXlRTER6ZkZV?=
 =?utf-8?B?QVhmUmVHSWtRMnc5M2hJUXNJekR4QUtmOXZVUml6T08yQjhVZUh3SjZXeU8y?=
 =?utf-8?B?N29mYThtNUFZc2VzTTRjMnRqOHYzbkJOK1Zha1pNNU9TOXhkd2pWTTVDWi9l?=
 =?utf-8?B?RDQ2RkI2OEg3K0l2WXBoNyt1bDBibFRqVUx3S09xWmFIRjN0OENEK1FFQVJB?=
 =?utf-8?B?Ry9yOSt5QTdrL2tMbzlhL2xzZVVXQk4wdFFpY0NnbjBMeW5jbklKSXRiQ25P?=
 =?utf-8?B?Mm1MOWM0eHVlUFJUaTdBM1d3eGFPZmZOK3BlYk54ODRGVkt5VXpIaTFWaW9Q?=
 =?utf-8?B?ZklwQ1F0YTRVUWduNUtvWVE4RytScDkzY0JhdXJhcVJkb3VvRmVtbXFEVGVQ?=
 =?utf-8?B?Rzk5bHZtU0haKzV0RUFZUis4emFLQnRmUFNHaUpEMTRXNGl6NXQxdmJJcm1k?=
 =?utf-8?B?WkEwT1JnUU5VOXBFbDl6TkJiTjZoK0xObkpOTEhxU25OZnpzUDhYQWphS3cv?=
 =?utf-8?B?TUZLZStBRGNvN3BmVEl6MHRadU94Z1RRajI1dzQ2KzVJanAzOUQyM0VEbi9k?=
 =?utf-8?B?NHFucmI1RWJKWGVxdjBKSm9QeENyZ3I1WWUvcnlOK3k3eTh6K3FJRXBNRGo4?=
 =?utf-8?B?c1pDTUVCK0FhTFd3Zmo0TFZObjJHSkljdFhsbTlTT0N1NVducnhBTndDM1BS?=
 =?utf-8?B?L0JpRlpQTlcxendIWEljZ2pqaHlSdmpWYzBxRDFjUmhIT2JJQk44TmdRZ1Rk?=
 =?utf-8?B?S0cwTmZ6T2lvRWxBeElYR21Oa3VSbFBRRWt1cnBUdzdWMEtMSzgzUmxEOCti?=
 =?utf-8?B?SWdCWm5WbFgwMHJiRmFpSC9BKzEvcUZuRThWUFIyVmtITEorK1MrOE1RZnNy?=
 =?utf-8?B?b2NiTjhqK0JETmh0VlAyamJvRXloYlRudEVKMXBMNGxHQy9WL1libzRXQXlN?=
 =?utf-8?B?UHc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	cVuYFVVNkn6kxsgg5OcysaC1tbXnXDt8WsmBbdiLsuPo/2KtzM9oSUWeAaj5kUNL1cfHjhPl015P/X3pQ2uy9Jez+6vpWvo6RK3oTHJCD3VGPlIQmfyy9mt6xTx/u66m524tjJxG92ct/pirFxi7LuhnJGUT+V+/C2iTJTrQkzMroxE6c6wKhf4+IgtA3lfy4OuopeUlwI2goiGU2F1XJ7hABSbYjFNmAUYiJ+ZvK3HbeXqtqOnyvAhl5hhMm3pxtdzgiEDcQ0Eje8DOMRpAINjG0UU5ZHrNPiYPOt+UVLmx8On6Vpz82CJEB9p74VrvAoPnG6qZBdedgd4Mp1syG1UOQaLrYBISzQKFsD9xGvjMb9QkZvR5IMSsJrfQ8qkRGmp3GjMIJ6CvYB3KxKbhmc69niiuj2XBa8rYYUVqJm/LRTHSsUtOYKgbKN0L6i1H2KDTQ8Vgmi/7TbfnoPEEtWxNtYDT9voeI0e/jVr4pL8pWugDkUXbed7DzumzvrNrCF3K8AHsdYqZ7JWZMLkyQ0sqoiittexCo4V0FkQ8IKnv2Yw0MpOYNwiV6y3ZksVJpo/P0weV2rPo7SCgDz26LJAvJsJQ9Hd3iBylHV8fqAE=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c27afed8-2968-4f81-b4f7-08dc1ea85be1
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2024 19:52:42.6001
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Es2bjcJbKWz8g2KbhB0IZP1H9ZN/fFsQoSuj4VD8HR8UyARtFqC56mAcrRpG88HtZFpGayuZ+nwvJhLyx8E/65tM7FEHZfyJjDWLXfq8RNg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB7790
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-25_14,2024-01-25_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 spamscore=0 malwarescore=0
 mlxlogscore=999 suspectscore=0 bulkscore=0 adultscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2311290000
 definitions=main-2401260146
X-Proofpoint-ORIG-GUID: f_dFc_jMFRy-vVDymZFbjIDN90EcDuGO
X-Proofpoint-GUID: f_dFc_jMFRy-vVDymZFbjIDN90EcDuGO
Subject: [oss-security] shim 15.8 released with 6 CVE fixes

https://github.com/rhboot/shim/releases/tag/15.8 says it fixes these CVEs:

   CVE-2023-40546 mok: fix LogError() invocation
   CVE-2023-40547 - avoid incorrectly trusting HTTP headers
   CVE-2023-40548 Fix integer overflow on SBAT section size on 32-bit system
   CVE-2023-40549 Authenticode: verify that the signature header is in bounds.
   CVE-2023-40550 pe: Fix an out-of-bound read in verify_buffer_sbat()
   CVE-2023-40551: pe-relocate: Fix bounds check for MZ binaries

According to Red Hat's bugzilla, the details on these are:

CVE-2023-40546: Out-of-bounds read printing error messages

A NULL pointer dereference error exists in mirror_one_esl() at mok.c. If shim
fails to create a new ESL variable it tries to log an error message, however
one of the variables used in the LogError() function doesn't match the format
string and additionally it may be NULL. A successful attack may lead shim to
crash resulting in a Denial-of-Service.

Upstream bug: https://bugzilla.redhat.com/show_bug.cgi?id=2241796
Upstream fix: https://github.com/rhboot/shim/commit/66e6579dbf921152f647a0c16da1d3b2f40861ca
https://github.com/rhboot/shim/commit/dae82f6bd72cf600e5d48046ec674a441d0f49d7


CVE-2023-40547: RCE in http boot support may lead to Secure Boot bypass

The MSRC Vulnerability & Mitigations (V&M) team discovered a critical Remote
Code Execution vulnerability in the latest version of the Linux shim
(https://github.com/rhboot/shim). The shim's http boot support (httpboot.c)
trusts attacker-controlled values when parsing an HTTP response, leading to
a completely controlled out-of-bounds write primitive.

Upstream bug: https://bugzilla.redhat.com/show_bug.cgi?id=2234589
Upstream fix: https://github.com/rhboot/shim/commit/0226b56513b2b8bd5fd281bce77c40c9bf07c66d


CVE-2023-40548: Integer overflow leads to heap buffer overflow in
  verify_sbat_section on 32-bits systems

An integer overflow issue exists in shim when compiled for 32-bit processors.
The issue is due to performing addition on a user-controlled value parsed from
the PE being loaded without verifying that the result of the addition does not
overflow. The overflowed value is passed as a size to AllocatePool, and then
the resulting buffer is copied to using the original value, resulting in a
buffer overflow.

Upstream bug: https://bugzilla.redhat.com/show_bug.cgi?id=2241782
Upstream fix: https://github.com/rhboot/shim/commit/96dccc255b16e9465dbee50b3cef6b3db74d11c8


CVE-2023-40549: Out-of-bounds read in verify_buffer_authenticode() malformed
  PE file

An out-of-bounds read issue exists in the verify_buffer_authenticode() function
in shim.c. This issue is due to adding an offset to a pointer and then accessing
the result without proper bounds checking. This bug is reachable by providing a
malformed PE file to shim. This code runs before signature validation of the PE
file.

Upstream bug: https://bugzilla.redhat.com/show_bug.cgi?id=2241797
Upstream fix: https://github.com/rhboot/shim/commit/afdc5039de0a4a3a40162a32daa070f94a883f09


CVE-2023-40550
Score: 5.5
Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:N/A:N
Desc: Out-of-bound read in verify_buffer_sbat()

There's an out of bound read in shim at verify_buffer_sbat() function, which can
lead to information disclosure.

Upstream bug: https://bugzilla.redhat.com/show_bug.cgi?id=2259915
Upstream fix: https://github.com/rhboot/shim/commit/93ce2552f3e9f71f888a672913bfc0eef255c56d
https://github.com/rhboot/shim/commit/e7f5fdf53ee68025f3ef2688e2f27ccb0082db83

CVE-2023-40551
Score: 5.1
Vector: CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:U/C:L/I:N/A:H
Desc: out of bounds read when parsing MZ binaries

When handling MZ binaries, crafted PE headers can lead to a out-of-bounds read,
causing shim to crash and possibly exposing sensitive information.

Upstream bug: https://bugzilla.redhat.com/show_bug.cgi?id=2259918
Upstream fix: https://github.com/rhboot/shim/commit/5a5147d1e19cf90ec280990c84061ac3f67ea1ab



-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
