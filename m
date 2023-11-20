Received: (qmail 7903 invoked by uid 550); 20 Nov 2023 19:48:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7871 invoked from network); 20 Nov 2023 19:48:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : from : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-03-30;
 bh=cO99yKks0jQWWmb7edqYVVXXlAT1UsGLjXWGess4RoQ=;
 b=VhfM76T4fTUBVs/QJHvc5NNds/HUilb1NYa9Hk6dnx4wNf53bM6+aGXNHiowGh8cNATC
 QruL4tX31c1gPx4s7lufiRfM6sdg6o4YGGOtjQxV/MktYa2tqb1ogBLSBrGr89lmig+s
 3nYMIvkGg1+B0F4zki+KOjs3U/PYkf1edinfzy9xcMYpzHMyAIIy6/qVXYxUYVSuaejR
 2GfIWtMTZQ1kfwva6Lio6C89stAmh05aJnD5HC/ezEZGvSnYZ8TtYFR0cXyfgyeYhLGq
 Lm67SqAu3gDW/5Jyw/OCJPO4eN+gfIOBNEZKok3SaSKmUx40rS1CumYO11c+4v5OcYos +A== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ghyCfQYevCX8txcb9m92BlaOO/QB8OGW0E/cCDqFfgN71hySxUK0D31KR90PsloqCNLga4f4dmEhy7ZgZd9euVyJMTkus4wHTNi1tk/UH/Vizu1XAhpFHfa49Xb70U+QOGWhd8ioPFJ/0t04CRcPxlNXemPFJT2btUrPZ/lR+Z84o4tlU91/0dvCG+XRkKJ9nKfqlCVq6WAqmES4EtVo3LjIFJvIwYiVljrJoh68xPSc450JpWrK6Yloa0biPYfdosYi5aKSx9Gy6lnPcMdCKSLlq0NsY8/B8wFx4kOLUKW2rhJ/ZHEqN+h6ybeiJedDp44j8TntTTFI/9tVkVc+TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cO99yKks0jQWWmb7edqYVVXXlAT1UsGLjXWGess4RoQ=;
 b=YJXT49TvKUTDlOaOGIMfrAkyAjgx/WDvUd+QfLsV+ihfAV4yZmjZjY/IPd3APmzZ15yTYWmibrMZJlglgYEZtWn09zo9laT3Yn+ByQvcGOQdARs73yZqW0akNJF7Qrvi+GJKmflTUjDenUAPsIWnYM7OuBV1bAEwx5aCqDQtD3jwFC8Y+a0rFlyBXNPu/jJkh130izJUuDqcbeGCeiDydBcJGIDez+l77JletMOo6Oq5dvtnCJzULwmivithG365tr1Noc9uy56P17n9kgQ+9nLW8Ol9PZoJJgayMqEjJy12mVuKdt0mLwlu20ozC9gC0MFxdWAFQ0/gtCbNQEG6iA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cO99yKks0jQWWmb7edqYVVXXlAT1UsGLjXWGess4RoQ=;
 b=opXEpoT4A/VzKIYqUjw5czlAjtDIKdOtxgahn7m+mndYhjDcs9aq24S54x1EOVo0xAW2Q2RCqrrYVIPePd8xeGOYGHjFoz1FXUhA0k95EDhPUNH6cCr1DVUL/wB7ZVQpFnBGj/nRY5FSoN3TOIQlSXlpFkTuuG0UKKjhUpeIJ18=
Message-ID: <64c644b1-9c98-406c-b947-689faf39efd0@oracle.com>
Date: Mon, 20 Nov 2023 11:48:11 -0800
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
X-ClientProxiedBy: SJ0PR05CA0148.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::33) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|DS0PR10MB7067:EE_
X-MS-Office365-Filtering-Correlation-Id: ac47552c-6108-4616-18a2-08dbea01a214
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	PUH7yE007gLWLlNf70M7fNMnUFQWU2Bske52cz+fg5svn3/y5qevE11OsdVxNJo09zju5M5BqPmsTyCU2gC9CwUJjpBjzGSJ1xxHsTM4IrYAagin2SI9xVqX2MuxY6JrEsko8ffgT658P7erUsKYU08f9J7A8fLrQO72ZSDt6UXM8oUaOhUlMnILJpJu55WlVaWLyq5aAbKAVRj93eh4q8jHqUj7QIswx1CqGpFMXyVaQQUBwx7aQ/gvF7mB0HDIorB1z3qRH34K0uYKNLp4KeQhod4P/s7lpSKmln0clyo7iw/9+RBwYYBVAvfAxHc/qIyQmWYaHqur9bYM7IFCi0SQt/iHEUrDJmGWO96LfkXDZ7+TQZBNDfvgvFysvf4JQhZhDei91G+iDrogpAdKVcN+LF6Y+iIyzCnT+eTUT4EQ6SsziIFGdsY62Px6yVgdkcwjaXYm8gVGy6vG+caaFBkplv0hqC1RzB3EbWWAuHBwgxPxDgTla7+4fiH49oS937MG9EvCgT6DkhhG7gGrYYZBIWi02yowNKcJqvUnx3l5gsjJT4UXzWTEZ3M+QDjt9PN8Wi6tezkWro27SbjTUoUSd0mV2IFZmmwNuJblS1hGxJnemQpKb/d4CJSmiMR/VKGhZ2I1X52VCg6z0nbebFQHWxODTPyvIAGw17cJXAD8ZR4rs7fpjdDS5EKeNBH0
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(346002)(366004)(396003)(376002)(136003)(230922051799003)(451199024)(64100799003)(1800799012)(186009)(66556008)(66476007)(66946007)(6916009)(316002)(6506007)(6512007)(36756003)(6666004)(2616005)(26005)(478600001)(6486002)(966005)(38100700002)(31696002)(83380400001)(86362001)(5660300002)(44832011)(4001150100001)(4744005)(31686004)(2906002)(41300700001)(8676002)(8936002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MGhKMXFGT0hsMjJlT1FObEFTWmNVb0x5ZUFVNC9kTGp6TnN2cU00NkdMOXlK?=
 =?utf-8?B?SDVLdlZJQ05mRVRZZzcrd0VhLyttZTJvUDNVNUZreW1FRkdVeFB4SStRaldz?=
 =?utf-8?B?dEtjMm1Mc1o1MU5iaEEycVgvK0pPSUI4d3NNWlliM2lEaHlpMmcxdWNKaUhi?=
 =?utf-8?B?bEQzOWhSZzFMQnZxR0xUbXZNZlNqM0ozbEUvcG1HWGgwNU44WlE3RFRtMnNE?=
 =?utf-8?B?U3ljRXdLRjZxL0wrN2hRSXIzNVRFRFFTK1ExN01pcGluNXdtL1luWHpYOUxU?=
 =?utf-8?B?NmUxekdxUHp3RzhxOWVSUkJlbUxEVzVQTXRpMzkzVzBhMjNYRjAxL1g4Nmth?=
 =?utf-8?B?Zjl6ZEJ5dDhUL21PSnNFVHUrSzFIRkU2TXZjSjFrYmhHY2syaDVabTZyUjAr?=
 =?utf-8?B?MDRXRnJZOXI4Q0ROcmJWUWZuQXdZNjAreFZ6aEc3YU9YNEhiVVdqaERDNEhC?=
 =?utf-8?B?SUZwQXoxU25rbklwd053YVltcitJMmtrWWovRGp4QWNZZnBnQ09lWStHM2xi?=
 =?utf-8?B?OWV2bjdpSGw1UEZaS2orT1U4VzFsZkZ4c3Q1UUlCa09rVXdhZ1UvcWRnSG5Q?=
 =?utf-8?B?dXI2bGZqM3FsTDJYM0FOWHZBQ1pHOVltYnFidzNFOHRPTnpsN0pDdGlDUS9M?=
 =?utf-8?B?TmsxVWZGcVZMb0pqSk1HZFNZd1ZZbks3TzNqU0VwMkk1bXc0dWpYYWh1NGZs?=
 =?utf-8?B?VnJZUFFLbnlVd1RubVExNjdoMWxwL0lDQitXbDV5eEpyK1NDV2ViSDdxSkNs?=
 =?utf-8?B?aGVKaklmWFRnNCtJQXppQTM5bWZITXg0T1RyZFFicUhHbFI1Sk9ROS9DMnRB?=
 =?utf-8?B?NFZFbldtRFU5eFVqQmF3R2VNTHBrUmNkUWFCSVQ4OVZuT20rYjEwcXFTcTVw?=
 =?utf-8?B?MVZYd0UwWW9WeExnOTNIN3cyUkhrSWdRS1REOGZmN0NQbUd3c0ZkZHBicExk?=
 =?utf-8?B?Z2tuWmRnOEgzRWlacjRCZjlrN1RPaC9FY1BUdkEvM3F6czNRUFgxWWtZV1NQ?=
 =?utf-8?B?ZDFaTTlNMG10VE9uaHplL3BvcEFMNzFBUURnMEcxNXhJOERMdEF4OWtEUGdQ?=
 =?utf-8?B?WGhjV1JDcEVta0pKUEV4NnBnV0V3ZGpwVVFrV1BRYmRDckNKcWZseVpYTGcw?=
 =?utf-8?B?bGxteFUrMkw2MGNnejNyNG5sMW9oMk9YbVBncWJ2aUhkeS96RitFVnp2bVZW?=
 =?utf-8?B?bGxIc2lBUUoveEtSVWEwM0Mxc1hSU0loMGtMMmFGOXBKZFRnakp0UUdlSXdG?=
 =?utf-8?B?Y25rMGpXWjJzN29sbDR6WGF6M0pDY3FWeWF2QXZSYS9ZbGR3MW1wYlliVWxs?=
 =?utf-8?B?NWZMT2JEbityc0ZqV3REQXRPZXdsWWNsbUFPZUtuN2lXRWFUdXJMVm16R2s5?=
 =?utf-8?B?NW1ydm9ZMlZEWU9qSlEwLy9seGJ6MEluYThXMkx5dXJ0cmswWEVoWHpPT0tq?=
 =?utf-8?B?bmhUVlV3QXREWDlCdSszUVl0QXVqME9XK1NZbHQ3Myt2KzQzaHYrdVZVVEpr?=
 =?utf-8?B?Zk9BYzZYZ0pNOVFSNHFXcHVyL0JHOU9QUlFQdjhBdm44Q3dKUDNrOWd0aXhy?=
 =?utf-8?B?bFdsT3hGbklQZVZVc1ZnYk12NzN6K1d2MkNvL083elBmd3RIeG5kbURlTm9l?=
 =?utf-8?B?MXU0Qjhva1BFa0RWakg0anA5N2QwSC9UYklOWEplSDR4b3pRejFSTHQ4SDFi?=
 =?utf-8?B?MC8ybjVrQ2pEclJVc0RIMkVTVVNGMU1LN2VpOU1HQVZkSHFUOFlKcEdDd0JW?=
 =?utf-8?B?L3hyK1VKN3p2N0xSVGtIL1lGNGFkbmhQTk1XMlg5TXVpODlwcmpRNVNXL2x5?=
 =?utf-8?B?S3NYc2F5azN5NkY3UmlyWlZPaDVvbXBKOG1VcnBiNFhNd1dNaFVxMGZSb2ZQ?=
 =?utf-8?B?L0pHamsrSWFzN1F1TGhzTXIyUDVETE80OE9qaFVOWFp3RUk4ZERYOVNiayt2?=
 =?utf-8?B?K0Y1aExJcU9TRExXaE9KTWpYaGV1R3ZZUFRTUFRKRU9VWjByM3VTTncwL2c3?=
 =?utf-8?B?Q2ZxWFBzT3RUVlQxdFlEcjhaa1ZsMnVjUlNSTE1PREo2RXJUL1kzblRRUWF5?=
 =?utf-8?B?ZHc0OThpZXVhZ1Q4c1FPL21CNG9jVWRvR3VNRDgyc0tFa3YzSHBNWTdoQ0Vk?=
 =?utf-8?B?TUdKS2FaMTdDbHh1L0lQQXdZT0prNkFoT1JEbUVzVEZyVzlBL0M1elpwQS9C?=
 =?utf-8?B?NXc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	XmuQexGD4ypMHeu4NymGof+gTjygYPTx8w1N2ipdOqt3vbViZmwcblXx57LnNshHWGBzfjkUEZ3ZD3oxSQBtbfcZ78tIfNoRVW1oRkhZVZKmtH1ilZlOjVGMqZ9gj+KJ7tUxtP/zblSd18vrFPt3Yklmm996xSUSQDpZXM9G+CEEqI5JeJYMst0Bx7kBVNCGfzH3tWage1oJQxfzy1xPkKSo0yWZhe2+RXLtDA8rBmpMaDonNoP3cjSWHsnaMIqBDnEhG0BMsw4T4//YSjfNHav1DW03Qyvj0GmBGxlYqg2eFmVf//gjzSNKhm4Aqk8MVlwcX7hJA3/4bvvg5uO5nJt/V9yDMr/RFsiHmJx1ixMvVol8pp/Akqj6wJDox/QwbVxfHawBOPCMkAMVqhjfVJSI/dYof0mfurwr8bn3rqNEASR1PnlgxnpGM16Lq3nmc7mfhAHBGWr8bzuRaUxRHs92sI1JKhmHDLb95aJR+lPa8Ju0JPx5J47jrjMsEwRYTzLlbMWdT9ctCbk8zp22dWlZokJnp2QuvpR9G27bFfuV7zS7an4nYPN6uOZp+HD5oGUqL7D9fjVdavezAcG5QB59EOm1L9MHwY/1s3ldOUzWbmQNHY/kSiTztrxJUM0a9SZHAagkLAC0POvx/pQ/igITOHdpV1O8EuDv1kLrRKcp4A7t8nDz6rhu3GSSk5rwTRui4DL1t5g/IObdB6A8bVm6V7moFysZMs+bCvlztb4hb56Djs18GOQoNr9bKKw5qSRsB9VpD96DuXF0+bbBjw==
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac47552c-6108-4616-18a2-08dbea01a214
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2023 19:48:13.9722
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t/QhtMkrJ5LL37OUpMKExhUVdQ/488DNkAbgsxK7ni1crvX1pSSfXQyr1zLCQ6QgFh9JNUgpCuONzJHtWYjB4IiMfrbJqQskB0UHKk6kIO0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB7067
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-20_20,2023-11-20_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 spamscore=0 phishscore=0
 mlxlogscore=999 adultscore=0 bulkscore=0 malwarescore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2311060000
 definitions=main-2311200144
X-Proofpoint-GUID: vsEP5Dcvgtt3dBIS10W_DXRv2vcQKee_
X-Proofpoint-ORIG-GUID: vsEP5Dcvgtt3dBIS10W_DXRv2vcQKee_
Subject: [oss-security] GNUTLS-SA-2023-10-23, CVE-2023-5981: timing sidechannel in RSA-PSK
 key exchange

https://gnutls.org/security-new.html#GNUTLS-SA-2023-10-23 reports:

A vulnerability was found that the response times to malformed ciphertexts in
RSA-PSK ClientKeyExchange differ from response times of ciphertexts with correct
PKCS#1 v1.5 padding. Only TLS ciphertext processing is affected. The issue was
reported in the issue tracker as https://gitlab.com/gnutls/gnutls/-/issues/1511

https://lists.gnupg.org/pipermail/gnutls-help/2023-November/004837.html
announced the release of version 3.8.2 with a fix for this vulnerability.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
