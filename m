Received: (qmail 15459 invoked by uid 550); 8 Mar 2024 01:13:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15438 invoked from network); 8 Mar 2024 01:13:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-11-20;
 bh=POWaXzkYaW+qDjV7hasRXkNhlFz+FiEF9b+xWCbell8=;
 b=n77RWZM5jIES6BxqFGAJ7R+sXIoqj4By61y4Ejsg+/SgoEYiB7emkq4H1R5BZAi7ZuRB
 l6uyCyVBN/BiKU3jNncnwRTAYsL8LB9bGOGoXUskRR9pRqWiTffL+MA0G3xcUk9zPe5C
 qVHNIku5UccV++hUly8A4MzN6u9OpBA4waOSwPotmXu4uIpr5yIYLDw4dDWKTapkwVTk
 jnhNddF0Z2oMdBVWQ6H1X9ZzJdv4XY8ahNMSDXvmktvPwNE4rkybMJgZpEDEUAyc2aWy
 Sj7C8gvWEm/xO0zVbnKJ0iQ0aJWfxVwAIR0JruYPHc34XRG29TGsQshxbiy6tRsjiOI1 7Q== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f3T1oxLPzSUJJEIDefMI4VthuqAwrwLysd0XIarBYluPq5mhNHz+ObcWkR4xU4o19TmIbe21azc4rexVYe/5kKsvznC9qydHJi+e5dgnpBi1UE1Yjw0kQ9wpY+AjsWp/3hMiqAlNd6hhsrsul+9v6VXoiRoT4CqjqP51Oa6R9L1lSAGc4pgygzFtafqc1HplyaDECtzdKpDoMmmLceyENY08JHzIm0Uk52opXXrQZB2uUP27QVf/vdGomgdU34hIVya6x++XC2dF+e+SikIK+P284s1LG0ts0cvm9umW2FeGdJCghwe8k/+5xQUTQOUg28U1Uqh0TxYa5cZCTbYNyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=POWaXzkYaW+qDjV7hasRXkNhlFz+FiEF9b+xWCbell8=;
 b=XUnnEIvdVN5a4+PhAExQqf3xgCW7z4myyrZ5erIZ1YbpqDpWIkOCNRb9Zjf9+L0lvuu3ZuIx1Pygv4rO2cY0oHOlY+Z2dNd4nzML3QSz8jLXZGcM4ABx2TmecIvzslKJOx1k3TaEoO+rsUvmhBXRLzbM8zVHI1Gt5A2656gwy5RhsBkiKL67VGLyCwUZ7i6CvMY9RuNoZEFmVwH59hNS9LeNJlnSOBpqT4LFS21ViuarXsQDeBEohjQbe/3KeYANVbnTy6gYJ0DbapMiSs1dh/5MTfhNth6EanAuVtpkJcp7xXBYBtpUJ4bbE7bMx8jzLp5wqi6xQkiG+59R5yPNZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=POWaXzkYaW+qDjV7hasRXkNhlFz+FiEF9b+xWCbell8=;
 b=b3VNeFAIWjmew6FjuU2JpGrjEM3lznkMTjrSNpu8f7KBz3RXbjvBLFe4ZVveN6gtHkHzNAWTAPUcVlxLsUspq00nbyPSOtKq3k2tfh9VZszlFsfRJcdeH89zFkxOoH0gWtmueyWvalVDfDLlYAxSL1lSl1oth5xdMFyzqpbMUyQ=
Message-ID: <2a3792c1-0df2-4337-a1e5-6c1d60083112@oracle.com>
Date: Thu, 7 Mar 2024 17:17:03 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <20240307215637.GA31298@openwall.com>
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
In-Reply-To: <20240307215637.GA31298@openwall.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0023.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::28) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|PH8PR10MB6525:EE_
X-MS-Office365-Filtering-Correlation-Id: d1fb21fe-89ea-4d9b-30ad-08dc3f0d7816
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	WUI8mNx/cDhZRm37q4uN2+rwaFOdUkpK3f5m3d3Bn7wo1B0c40UuxMCUSdmnsr1zMfxdLqy7G5Hvub9yzi0JYAaTSYLQnu0DR26IB8mG1beP9RTFVx20H5/6WLu2zU0Zcow0EPXOIFLKooZuUiroXd0fmGYYGnjF5HZN4wM/VMqUI0/cJSuip1S25QxxK6auKCqWx0iz28mXre0Wvdr+z+3fW2etrv7JsDaBkZ7EdHaDw7maaiWE01hXhaEpBvE9KJD74y+ak5KZkf/ckJ+MfR8hlDjp4IjHaFmp16xOXignVOZzB/xnL+3ydE5Uvxs+OueFqAQHXoa1PDy0jcBQC2Yx1+oFrolrAa6GG05RdOjNFKca4jVSdG22HTlkFMnlZ0JwhDbfiZbQ7DoJOSGEfymJm/xRwC+iCXfJFCOOwYv8hfH5Qovkxp7sOfVwme/jocAC4y6X0J0WHWomkGKhgI+3MpSQuZagBSZ0CICpK45IkzlesZ3ulKH9THrUItWO216ilz2QE51J2PgJC19BPCWp9g0Xx+DLpMQtyf9uxbrKj12yo7ELffWUj8T9oK2L7nfB2OMptv6m2Hx+7+50PGJBE3Iq4CV/TqvW5NcN+ag=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZXo0VlVSRlFLVnd4RnR1VmpwY3ova0QyY09mSk1uYUpkWXo5UUs4QlZJWWlL?=
 =?utf-8?B?YnB1MS9aVWFjRXZuNEtWeTdVWTRrbTFUTm95SFRPMmJKZnVDcFkwZEwzYktY?=
 =?utf-8?B?UGVvSlU4dm1XNCtqa2pvM0JJaVo1T05naGMxa2xrbnNaYnhmVjZla01tZEJx?=
 =?utf-8?B?V3pEOHQ2OVpnUjVWUVRLQkU5d0RDaGVnQVY3RHo2aEdKQUp5RWtUcktNWFds?=
 =?utf-8?B?UDNkL3ZGVEF2Y3o5SHhISGNyRU9yNjIwQlFtaWVGMnFBSTByUEpZbS95bHgy?=
 =?utf-8?B?YlgwWU02dkVMaWJVRHV6VGtJRndvdTNRZkJaNmhDdnNuS3QxRHUrVUZpQ0lv?=
 =?utf-8?B?b3VKQkVPRFZRb1NKZjdncXpmSEo1Q1FpcHkrZlJLVjNvUmFGc2dsVWJRRzFL?=
 =?utf-8?B?S2tLSWhvb2ZWUDhTbzJnS040UzQ1UEtwR2dtbVFhcWpBSWpUYkkwMEQ3eVBt?=
 =?utf-8?B?enlwcVFjbi8zaXRpdDFaSGtTTzE5NU96WUVWdjh0TkRPTDU3VzdHajlWK05X?=
 =?utf-8?B?NHJwWXF6VUlGSGQxVUhoWEdHVFY4UDA2b0dIWFJwT1dRd3FieW8xTCt4MzBi?=
 =?utf-8?B?SzcveDVTWHlKYXFVWm83WUEya2NkT3EvMVE2R0NoeEtXNjNpM3I2SzRJSjV6?=
 =?utf-8?B?RUJ2V1RtVE5icmJNemh0MjcxdDljbXFTcVpGNmZkaWx6ZzdDamtjVmpaSUlN?=
 =?utf-8?B?YkdDTVRrSnloeWUyeVdxdy9KQlEzTkh6V1orQ283bmZvM2IzaU5wSm83MGJ6?=
 =?utf-8?B?SnYyVWIyS0Y3SHJNZkR3c2wwcnJ4VmE1RXpRYmFUcUlxL1FRalJabGJpWG9D?=
 =?utf-8?B?ZlJZSVlGSk5ES1pFeEpkODB0ZzJQZWV1RjFMaEwzUFo3MGVMckM5aWpNYSsy?=
 =?utf-8?B?K24vT2haMm9sTHVUOWUrYUVvSFg0eEcwem1VcXV3MHB1c3hGOFVITG9YVHdh?=
 =?utf-8?B?OFVGTmFzM2t2YjZ1Mm5jVHdkWkxhZk4weExpa01VUzVyYTNqSDlwdWMzblJ4?=
 =?utf-8?B?a0t5SmtCWkdvKzErSEU5anVjL0o2d2FMOTcxVFhPaUVzN2xHQ3Jic2lOb2ha?=
 =?utf-8?B?MHpaWmFZUkE3RkwxUVQzVlQ3bnFIOXR5dkpEeElGaHp2WHhCdXNBM3FzUmdW?=
 =?utf-8?B?TFBOckpQSG91eFdlbmlYU0NkT2VkOFY0YkVKMkFWVDk0MXRmUDB2cDZYUFBa?=
 =?utf-8?B?elRTSy9kZHhoVUh3YzFyNnlpaXlOTmJpaUJDOThSemJxQWt5ZDdiczJIYS9q?=
 =?utf-8?B?c2QvQUhMZy9RZ2w1THVld3Blc3gyekRaQXpFektXZFZ4aWg3RWUyMHp1VXIx?=
 =?utf-8?B?R2JqMWhxekJHell6RG4yRGRzMFBESHpsb2tHeVk5SlVqazRXbTdKRnBqQUhJ?=
 =?utf-8?B?SDhUVWhiNDNsdGd4NTN2MlFzWGZleEE2aG5ZcWg5MVJRNEszL1E5elIxTWZO?=
 =?utf-8?B?M1VNTWRKZ2FMRnlSSnIweFJhTldxQUcxa3dVNE9HZ2kvbXNKRjJvb3NXTjFH?=
 =?utf-8?B?NEZSdVEzeGJQNE5SeUkwYzE4UzA5SnRTTlI2UVRCV1NJSERhVktId3M4UldF?=
 =?utf-8?B?VHdPT1FTelNZbEpzTjloZTdnT2pzNEhOaFpEbTNrZmNlK3FrWGFNNWtramZY?=
 =?utf-8?B?dDh0cGNWbkxSOVl0R1JsdTBISWlGYXVCSlMrQlV4UmRjME4vengzNHFTU2pr?=
 =?utf-8?B?U1ZGNzJXUE8yWm9zdzhUSjBNdk92aEhxdjErdW9INnNEbmI3NHJmTDMvenBB?=
 =?utf-8?B?bzRsRTNJeU14bnZZMzFmVWxMQnpXdlhlQ21XYUEzWEtCYUlTRUVSN01KMHhG?=
 =?utf-8?B?UnRyQXFVeUhQcGRENmJuNEVFaEZBWGJQOGNYSzJRMXptR1NjeVNpbWppaitr?=
 =?utf-8?B?Z0xHK00xQTNMUTdiVllaUTM5N0ZKNUhxQnVQTWIxOHZ0R3Bmd0xLTlk0OTNv?=
 =?utf-8?B?NmtscUlHYVpLM1JLVFZQVnMvZGNFT2pjUUxTQ3h2c1E4QnRiREw4TEdMTUsv?=
 =?utf-8?B?TzZsVnIzMFNKYjUzVG92WDZYOVNaQWNLV0dkZVlnY1ZhVzFVQXJGTy9nNjg5?=
 =?utf-8?B?bUsyc3JsQ2FvQ1NwWUhPTW9mekhmazlBMEZxN0ttWm5makpEbkU3SUFZaWNo?=
 =?utf-8?B?OUxGYndxWU91SzBnZWg3b0FzSmV6bklhSC9sVURhR1BVbVc2dVRTTzRmYm1I?=
 =?utf-8?B?Y1E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	3+kpA2SdquOhQ+FCdErr8AE/dLO06sKx4xCYKyiGPfGhb/HhnVAbV3lFYoGdRq3TtADHhuLnGviiQSK3Trfj5F3K4Yh3mcMIAvRxWWekFVlEyIj+pi9vLpOSTMWR4b2ObqdjwmVkIvx4ysLT+EdhBDmHsbMbzjvGaFFAeAEXGJhA9r6Lg1aH+QueoRcABsQjQEcefomFTFWIg9zxFEe5/EZ2lv4Ils7qK5z1kujUE7isyjPPnEHeDlsY9hbHWjGbigOCllVnwEigRx/1ds9H80BiMrCgimc8GvjwKVuGluAXyfBXtEHGbc4ZOWV1trBVXvVedY3jVWJ7voM1f3n+8JIBEF6DVXMeaiQrfEv8kB3YiKYaOA8BKgX136GFQKT9w/XAOLolKoWv2FSqrCTA8185BbEhVivS0GOQgphUKutD4OVoPLRcAxy7Hl6qonXAutsbVV56tk8YXRwozbZTDo0g9Lqlwb7rNYBfzNFQYwN/ey+Y5sd2H48UmJ04BdGZ5zxhl0sk2nG+W7a+4jYkAXc7lzjIvPcSVELsjzEj2Dwa2AwyCshOZ6inM+q4OKEuAtnRi9c1Esk1KpALbh4QbinqU/v3XoGchxYv29y9pWI=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d1fb21fe-89ea-4d9b-30ad-08dc3f0d7816
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2024 01:17:06.3388
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZOtIDe23akMbkQQHQi/FFd43bPKtQtt8Nuq0ERcRkyLOYPl2CtRoQ5QDYhXzNcvlbzoxbwAw36m0V3Jf32gPbqJInzc0tG47P7eBeH3+eI8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR10MB6525
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-07_18,2024-03-06_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 mlxscore=0
 mlxlogscore=999 spamscore=0 adultscore=0 malwarescore=0 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311290000 definitions=main-2403080008
X-Proofpoint-ORIG-GUID: wtkzUjw0NM1Tb7Ni5gdVysbMry8ysFfa
X-Proofpoint-GUID: wtkzUjw0NM1Tb7Ni5gdVysbMry8ysFfa
Subject: Re: [oss-security] help wanted - bring more issues in here

On 3/7/24 13:56, Solar Designer wrote:
> Hi,
> 
> We have this contributing back task not requiring (linux-)distros
> membership:
> 
> https://oss-security.openwall.org/wiki/mailing-lists/distros#contributing-back
> 
> Administrative tasks mostly unrelated to (linux-)distros lists (but
> relevant to the wider community)
> [...]
> 3. Monitor for Open Source security issues/topics published elsewhere,
> identify which of these would fit, and bring them to oss-security -
> primary: Oracle Solaris, backup: vacant
> 
> Alan Coopersmith of Oracle Solaris does a good job at this task.  Thank
> you, Alan!  However, this task needs more than one person's involvement.
> I'd appreciate it if others volunteer for it as well - both a second
> distro (as you can see, that spot is now vacant) and anyone else who's
> capable and willing to help.
> 
> I'd also appreciate volunteers for just the third sub-task.  I happen to
> notice many "Open Source security issues/topics published elsewhere" and
> "identify which of these would fit", but I rarely have time to write
> them up for posting to oss-security.

I also notice far more than I can send on myself, so tend to filter both
for those projects that are more likely to be distributed directly by
distros and more widely installed on systems, and for issues that seem
to have a higher level of impact.  So I'm not sending on notice of every
bug in every WordPress plugin, nor every npm module.

If people want to see different coverage here, speaking up can change that,
but helping out as described above will make an even bigger impact.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

