Received: (qmail 15455 invoked by uid 550); 13 Feb 2024 20:04:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15434 invoked from network); 13 Feb 2024 20:04:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-11-20;
 bh=2Kx3M4OR2MpcFmBfqLFV5Brz6XSHVlxdJqHG3mhrkm4=;
 b=mW/UIQbL6cKYYHps5/uLwwL5asFMoN9cKPdpQNkUMJCuuwlrpqCtE9BMtHDM3/ykpJBI
 Ki8b3j60TAE/j/AAnrNC2yDiq8ixYQ5DtWRU3T7UGi9DQiVuww+Minx+bpU9Hvf90dev
 h0nvpy2Cyl9+X68ZzYIm0V7Z8O1lMKCC1hL9rqy7OwrkDZ/EZ4np+OydLkJffg+MRxDA
 DqfJAnNdAhYsVFCe01xxSqz1lrtfylU4cgflRZLdFGG9cT585iADX7sMV3KYwoJBxVit
 A1Z62OWWhlK3B/ezWoiyxShzb3nsXLfmAeuGeuBpTrZZV/aOKyN0WuZtXef5cb3Au5tp vw== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bliM4MMz6MjJ4hRuAY11WVx05y5XZbtcPh32s23DMZwKs9noRY7ZCtzcKBDE5bg9zaeEPxSkkteyJ3rvYmIhzS+Busde1TBByg2898pO+SKu/I3AxVO+CdgNXnf9nGHA1UxDjKaIJ+xWDf7MveXLII6z8NEtc1mUqTBYJbkjyp+GtQ+4DRbhdnWEfxALqtekXTfPrZF4lwhGwJBvu1DTvUhnp+Gt7XfBB8yA/+p64U86BuSuh7IbMcXBP20RnGGjCQh4cuOOio2vf4DuSkcjNChtPFauw6S8TExQbJHsrJRWWYHcfnUI/nQkhugvuOoUZAUib77rWTWBEuzoB7rNMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2Kx3M4OR2MpcFmBfqLFV5Brz6XSHVlxdJqHG3mhrkm4=;
 b=EgSkUr6ldsOWX6ZMOGeePq9a8ESmazxghdr40XYnut//9JorSeWFyzFZK6ml7hwDzk8+kXcseB3k8zz8+fa7uiSTkKQf8vRV7Vfj1+EYeCowV1GGiusTlPAjXGCXRdGiiuIwOoqC8/WyM4+00jXzqQc58z52DKuZfvLoqT4QUMcNf5mFclAWcXkNeXaKNBlVXVwpfU+cTwYrmnRuuAxX3tg2gmY9hsm7mFF1AzJnY/kFJ+NrliBnIpnNORK/aZ18qQBVULAGjf6RZ2Gh4oKkou4n0W1+WLnCC0zBWNMOLWUlStXJzUzEi6oSY20pt4TLKTl2P6VHYibU+ehunshgcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2Kx3M4OR2MpcFmBfqLFV5Brz6XSHVlxdJqHG3mhrkm4=;
 b=RCJcjfdXlub9Tq07eJcv2rnP6seSNPJiDNTdioo9c+hyxQp+kLRUgYxVCfOSqjvu+/UPZP4QRcHpFyL2QkOhkY2ftGmhNGwUSFaJCv+I2EoEp+C2ydH+eoP3evSw5B3TFfwgLxs+uqknPvpioi20tLwpffpg03V8SpX8tZBmFHU=
Message-ID: <bf47ae9d-4a0f-4446-b224-c8c7f08e44e2@oracle.com>
Date: Tue, 13 Feb 2024 12:06:42 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <8f2901ed-401d-441a-bcf5-f23eda0d9e88@nlnetlabs.nl>
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
In-Reply-To: <8f2901ed-401d-441a-bcf5-f23eda0d9e88@nlnetlabs.nl>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR05CA0040.namprd05.prod.outlook.com
 (2603:10b6:a03:74::17) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|SN7PR10MB6362:EE_
X-MS-Office365-Filtering-Correlation-Id: 958def8b-5351-47e8-7077-08dc2ccf4d95
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	PXdFUVSmhlJ3DuyMwyVxzIzvOQ2+TSIc6VHXwjzamm99W88rm7xXeuW2uZOiHhvEeNUwmu1KSdP/SmHsKfsDMO8Le4o7LkCTn5exWkcElqNBIHZYi7srEiAauxtGKUxJe8FjY9zk9hbvagdfedNyE7p/Sz7hXyI9RW2+z05cEgN6d3H8QBlqDJk/V4cePAq6rZv26cKu13oPkHuGnhOB0o6dSReuJPtaweSVI0oZbxW4xKa91xiE5RL8uKM3ieCAR8TiUWQdbwl1u6uRrxDxB67+HeAzvhqbIiXHUuksOlbOO1M7laJxt+5E3nhhTB6bAzuTib6ulJy/NIZTX50wWBotLvPk4l6PU8ucohNdPHrMMY0OvCsBSLOpQu5ZENhikpvVmYSTQB9ozh+5bfViDOoW3NdCSadX4xE8Mt6Z1qhuHki8DGT8VVvOaudAw13vVr/wFlVFNqGJ/qg+lfi88GeLjFoJMbtJrB+CAUEc2iOJz0ReSMMV7x3hLkhfr7DxqNuRSjBN5OZeoqWpPaN94+UveE9jXtCcQSUiu3ojDtA=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(39860400002)(346002)(396003)(136003)(376002)(230922051799003)(451199024)(64100799003)(1800799012)(186009)(31686004)(966005)(6486002)(6512007)(2906002)(6506007)(36756003)(44832011)(66946007)(86362001)(66556008)(38100700002)(6916009)(4744005)(478600001)(6666004)(53546011)(31696002)(66476007)(83380400001)(316002)(5660300002)(8676002)(8936002)(26005)(41300700001)(2616005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?d2ppaTlPaURHRm1RYktEMWIzVmhuYUVQbUFsa09hemZtd09xS3E1d2V2bnlD?=
 =?utf-8?B?UUNPQ0lIUUtmWUxnYS9BY2cxckhHMjlmN1I2T2VXOW9vN0pxYzJIRHZVV1Q0?=
 =?utf-8?B?WXVFTk9TdzdiQ2Fvc0d0ZzM0bDYvK3RQMXM3aGl1QjVxZlE4RUU1TG0wMEtI?=
 =?utf-8?B?QW1zU2ZyQ0N4RjZKeHhzcm1Rc3BvdzhEY2crVjlFYVI2T1RTbzBCMzd1UDYr?=
 =?utf-8?B?SHVVaGhhOWJWTjNEdWRTQTFpZ3VyRkM3MFMwTGd3VFdLalV3bVFZVC93UDZD?=
 =?utf-8?B?WDcxTHhkYTZrOTRjMDFvRXgzUlJ2VjFLRXNPODFWbnZ3OEZrTHpaYUI0Q0lI?=
 =?utf-8?B?b0Q5QktvWU9NazdQcVcwZWc3QnJlWUVHN0U1RG5RckNmNmJzQmgwSU9XVEcr?=
 =?utf-8?B?SUxubHRlcFY0b1ZnSmw1eWZ3Nmkwa0h5aEgrYmtLYURjeGlvQkZZT3pzZ3JN?=
 =?utf-8?B?ZmZWRFhSeWZXQ3BiZWI1WHM3c0hVR3BpdWRyQ1p2d1J1by92bGgxRUR0RUpF?=
 =?utf-8?B?WENzZVMycE92N3NrWWNNRWpNeEdCS1BrODVzU1psTjN4a3N1L2h6bldwenRW?=
 =?utf-8?B?Z1ZpQ08yS29UenliVVRVRmhoK2V1ZUppcjRnMCtlTEFjV01vcU5oci83MG44?=
 =?utf-8?B?VTN5TjBOQ2pGemg4M0NuYkhKK2t6K09BYTAxVGJMUkZ0M254ckppWnAzNEFG?=
 =?utf-8?B?czVQbGJnais3NFFWcXZndlZXRkdtYVhMTDJQTnlaQldyRFZPN2pRbmVhYlJl?=
 =?utf-8?B?RERoUVljaDJSN3NEbG52cEN3TjBUek9MTnBJc1pEZ09BRWpCeXNlZ05jOTd5?=
 =?utf-8?B?VDdiaVN0UDIyS1V6VDdPSnVtaE1pUEF6Z1Z1Zzc2ZEN6d3FhYURERDFmcExI?=
 =?utf-8?B?UTQ4b3VkcEN5UkswZWdoSkFHWUpodGpXa2xzZW94MVY3SitwTHcyNjNlTkNo?=
 =?utf-8?B?RFlLWUpZTVhzNE1MR0NON1BqV0tabFhLVWdBdEVVKzBJN0NibHRaR255c2Fh?=
 =?utf-8?B?T3RxQzZGSmF2azd3OVhqQ3pBeVhOMExhbC9FYW5JZ3pBaFh6UTlWZDkrR05G?=
 =?utf-8?B?QVR3d2RmNHNjSHZ5SEMraTY3R0FZZG1qdVh2ekFUUHlvdm1nQTMzKzYzOVNu?=
 =?utf-8?B?Q1BETmxrbERlOXd5b1lubkRKYWY2cGc2WG42UFdPbmg0dzQvZytncXFKWWc3?=
 =?utf-8?B?R2lkQzhqeEx6eHZYbm5JdmJxSjYwa2Z4RnFCTFJ6VjFCSWlxZzFyM3JXVWRS?=
 =?utf-8?B?TmlVMDdjeUNHQWdSTWRmcUNFU0JSTm03Zm9CSnNSZGNnaWR4ZDA1ZWNQWnZT?=
 =?utf-8?B?UkNXZHJ3d2g4UEsyNFNxTXR6ZWJYNHhJWEF0empxdDBua3FKTi8ybllmZXpn?=
 =?utf-8?B?SEVDRVNkeGZkY2Mxa2lBWmJwVVhlZmU1cVdMOW0wajJGY0x6enZSNDFpeko1?=
 =?utf-8?B?dk1TSWs4cDRqb2R6Vml3clZHckpKVTJ1QmVXVTRRZEJBS2p1RllBUFhtcWRu?=
 =?utf-8?B?NGxYdC9UdGVMUDVvQ2hUeTRQSXZ3dGNva0JWekYwQ29rNkUwUmlvTjFaVktl?=
 =?utf-8?B?ejI5NklsdnJDRUlUVUtIbndNclEwUFF0Z0RMKzZQQVVXaUM1REFWYnpsakNS?=
 =?utf-8?B?UkFNa0tvSy9PcHZSb0YrRDFmNlo2YVB6dFRYQjMrOFdpMnJIQjlFWkJ1bUNh?=
 =?utf-8?B?TktxZVc1M1YrQUlHdzR3MHdPdFlZa3hCN01DVUxHSzRtQ3F1WFQvdjUwaGdw?=
 =?utf-8?B?R0M1VlZML0pkWGVBMFN1Y3IyRUtUUS9OMzd3TkJLMXJhc0pMM05uTGdjNzdD?=
 =?utf-8?B?S3VaM2lTN2g5a1hDak1TUWZxYUlIMllQNjhQSE5vcjJrcHI1R1RjZC94QUhH?=
 =?utf-8?B?SjBZOUdJNFc4MmlJRDhUSzZ1YUVJd1NvMjBzMTM1YklnZmdzVWZnQTJNUVFU?=
 =?utf-8?B?VUtIOGovUVd0V0s3bXJXV1B6THppTGVpWEtGajZ3d0F1TVMrWDJBUEZPV1Rt?=
 =?utf-8?B?VFNyTkpIeHQ3R0kzMU90UHFQd29vRmlFTXlHYW5iOWtmVENjYzF4aS9hSkhR?=
 =?utf-8?B?L0VFbFgxRE1xc0VhQnJ0Y0tYK2orZU5QOC9LWUwrRjNuOS9kRlRvNzVsQlZo?=
 =?utf-8?B?a0lLNGh2ZzVoK3l4UmZYc2NsaGhRRENYMFBJaW9EUzdvalpRS3RtOVU3YlRx?=
 =?utf-8?B?dGc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	AuGz1D0rQRiDkU5kioE+F1NbQ0iyZe9fIXiJn/xS0r9jDzWYef34VP1cwrv3jrQmH0jKSABo3OWCJUwKEHro9C02JNa1zEau/cqWK4al3QFgzPWfn3wmg6Cg0VkYwtJXHA8jRG3ZxjQZcLp4nOwvCCuKGr7YGrpXRvBlNnoqx+6sUA2La7jaHDLFWMvhVVkYmrW5/Mf59cTEjy5482zEMZBwL5hY20wYG/ZlTVl4iAaTtmUGVHqv07qYfOYhqGQZG1wTRA9I6+/CAufW011QPiKuOqeWDeehF6LIdzaIGbZMcFa1BemnzkHxwlaIKHCxkndIVLbktcxivZNN8zD6tHKKra81RcoAArz88axW2xfJJwYVlE+IOB8BqvsnznNP+ruPE2Ar1TEjAWCXL4ii1/hL6RGtkcsdCPej4I7aOf9G1V1MaSQm82Vjlc+W8kNG2yKKeoW2pk1EFl2v0lQpAi5zESFlpqEHlUW4oZgg5feHQRDIP/B3yRHuL5ghDNdc92wMSywh+/p17FmH2OIep9c36PdWUQwijGboYhXuGLDEtrQuGHNFOpyxvHcocmUkHS+ZuxfqOG7PJ3u+GCw9Vt8lzu1v7seAhnGwJrxJ/0I=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 958def8b-5351-47e8-7077-08dc2ccf4d95
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2024 20:06:45.2411
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wSW4vgzKVOV5MpjmH1+ZwKiOz3Q7KHQqJx45wRuMLr9YvcCKsYVlTa8Cqv5jYFqTMoBqBMUAgu/OvYdx+1Ma5EsZFhKGMsiUU2bQrok8xl0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR10MB6362
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-13_12,2024-02-12_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 adultscore=0
 suspectscore=0 mlxscore=0 phishscore=0 bulkscore=0 malwarescore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311290000 definitions=main-2402130159
X-Proofpoint-ORIG-GUID: Fo4OQ9rOwXqkGtZOPp5MItJEAEyis5dc
X-Proofpoint-GUID: Fo4OQ9rOwXqkGtZOPp5MItJEAEyis5dc
Subject: [oss-security] Re: Unbound: disclosure of CVE-2023-50387 and CVE-2023-50868 DNSSEC
 validation vulnerabilities

On 2/13/24 06:07, Yorgos Thessalonikefs wrote:
> DNSSEC protocol vulnerabilities have been discovered that render various
> DNSSEC validators victims of Denial Of Service while trying to validate
> specially crafted DNSSEC responses.
> 
> There are two known vulnerabilities: CVE-2023-50387 (referred here as
> the KeyTrap vulnerability) and CVE-2023-50868 (referred here as the
> NSEC3 vulnerability).

Similarly, dnsmasq 2.90 was published today to address these:
https://lists.thekelleys.org.uk/pipermail/dnsmasq-discuss/2024q1/017430.html

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

