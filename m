Received: (qmail 30308 invoked by uid 550); 3 Oct 2023 20:17:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30267 invoked from network); 3 Oct 2023 20:17:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : references : cc : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-03-30;
 bh=u+Eb6RwM7HtHeOmuBV6NwQXGamE4Boc5mnbkj0dTvHo=;
 b=aS07aUbF78RmeQtA+tvI0sf6po66j6OLrHI28uh5P0YAxFS4I8piYlwkVL1pkQJpofNZ
 blYROm5WnVb6DoCKjK01LU2rwo6qTf69TP8oAKZgDHpYccSs/OY2c1CipcUcL+SrhMxt
 y+DimJAMmV3iZT6zXgjoSoKoVWNv8r0evSKwOD8+sixdNFHs0BEG0JVEMsMO4YPBKKPK
 yac66IJz0VhYKRNgWw2MWs88Pkg+N+bXEld3MKdRt0TTcSvnuOS6MC3dyGVwakEkE4/S
 VyqM2kIlQjaW4j2mzurl7SsRkp0DdUjzjS2XZNoDRHbOP43ScwPuOiIeo58j3wN4/qa6 mA== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wa4y4NEmnU98TYNTbFdRtFDnlh1uiKJ3vZ3SMjbmWg7ZHdXewEHtNPQE5/juEvcUXDmGmHU+0MMpY1nSRqVxNoKjlcv7c0alPt69VEy/QQ7fPb6CnCkBfdpIak82krxl9zVmc/5HN20SDSk4n0Qe4/cstH8KiwFwXP6GNpKGya4fyorcFKIB3Gku6z8d/b0k4rL73boGalOOJYvxrgvqoRN44VJWpc2OYW2by7h6LGMJcXuq8cBX1t1Blj+dhSuegie5BM8jDrlpSRGUjw+Knm511Satq07kBhim72ZS4rkLVEOfe7UbGwF9OruFArrlvId1tfEFcsBeiGvWBUKRqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u+Eb6RwM7HtHeOmuBV6NwQXGamE4Boc5mnbkj0dTvHo=;
 b=DJ4Qv0St6FTxihxp6L2hkwXqox++UVYBNY1sWzL6itDyD0OwpLzpHhcbBRAcGHAlog/zM9GCANQ9+3LnrUjUbKzpf1AR04vM0ps2KCm6VKbtqbs55Nq66b1QrtaGp+YWpZP+Chc2I/g4LoylaSiJhtII6Wzzjc5qGeNgx2leCENXp6lXhzHnFDSsGRsJtuMXv0nvFNpupi19oKe5SP9pGg3TnBhDynxYwKEM+/RU3jnnCiOdEZ1hAfwtB8uSNCHFD3mgJNTbRYXIdLBJ43EsyQaB1iIldKm2TPZ2glH9eyzExMGKOyH127PD5nv9U0ZNPQBlkIdFl0hLo3gY9ul5Ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u+Eb6RwM7HtHeOmuBV6NwQXGamE4Boc5mnbkj0dTvHo=;
 b=uT78T/Blc2almjzlxCTHyKsadTmZzb0PRhmKoIVunXyZDInORrvC+qCNqpqTBNG9tUWvJNhAqaLpy0NdU39MI2hQ9naNKbA5Txg5T+wijt7cmBSabTe04G59xk7K6jzZd3flqaGUIFGOjWSMc0n5dQWS8QsRfBDD8UUGLxbgiaA=
Message-ID: <e4e38e9c-370a-4b4e-a525-101d1f68e9e7@oracle.com>
Date: Tue, 3 Oct 2023 13:16:44 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <ZRxA6isrnf2hA3QD@also.us.oracle.com>
 <e95ba96a-88e7-4bf1-a18b-12b566812225@oracle.com>
Cc: "X.Org Security Team" <xorg-security@lists.x.org>
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
In-Reply-To: <e95ba96a-88e7-4bf1-a18b-12b566812225@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY5PR17CA0002.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::15) To IA0PR10MB7303.namprd10.prod.outlook.com
 (2603:10b6:208:40d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR10MB7303:EE_|SJ0PR10MB4541:EE_
X-MS-Office365-Filtering-Correlation-Id: 35a65dfd-a6f2-4c2c-8202-08dbc44dabff
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	uvVtqsR3NpC6OFbG40Ro4il7K0BB8EeUyhE0gdquoKilOuBPfaq3gL6ngy5kpAtgLw10iOrihh8dISSM/Kuxqr6A/6Esk4iqEtMrbiys7GkKoc+ZDEm/ZpbXsnj9k+ePYwjprZU2pOBlXJOFMXMghKJBCA1hhhGveDAkaLvXtYrawv9O2x5d3N+AQDKglDB1tQ4g6RkSKffsomshhpknfTgxO8j18915gI1Bjfiz+WU6m3Z/dPxUqzZdga3xn/YSQC9wC1cc6RtlphHD29W7ku89aAfhlZxF0TWONTzWTIIPCnzmbv+mRefZSpVvAZMCflxKxjNdXm/EnAsdFANxsKUdhr2fQG/YbOLRgLE0Ah8m1NhwbHTH+DaG/EwLCd6JXQhzeuVj/CvjL8pyK7qVZAgr2bZQ9felXTpnUVILMMtjy1VSfGjXuQyP3+079R3isb7yIog85AUV9DxRvAZDCP2/WNssgRrOFKjZi6R9G1wFmP/yw0S9sA0WamrafGUEWL74Yt9hhrH/TMKR+yNv3ymVDswomKg5cjgGNIuraR786c4KRSsNc+PsjqkbFh2KbS2wcMo5EhVD9CMB7H9vYYwGN/9FGoLMt6jNCPnD34hKOSNffzuoJGeovSsj/lwPVW3mKXsOzheUKTj1tF0FoOW17BfsB0S4vvg7zgQ42Fc=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR10MB7303.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(376002)(346002)(39860400002)(366004)(396003)(230922051799003)(451199024)(64100799003)(1800799009)(186009)(2906002)(38100700002)(31686004)(6506007)(966005)(86362001)(15650500001)(53546011)(6486002)(36756003)(31696002)(83380400001)(478600001)(4326008)(6512007)(26005)(6666004)(316002)(66946007)(8676002)(8936002)(6916009)(66476007)(2616005)(5660300002)(44832011)(66556008)(41300700001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?LzdEVEc3NHgzWXNQWXUvMjhaN2EzQzRsbzlLZ245Y0UxakZBcmJicUNZbkdj?=
 =?utf-8?B?bG4rNWRla09tWGY4VG12WWhDU0dmdG1vMjJVT0YxYXUyVzF4UnQwd3d6OVJG?=
 =?utf-8?B?NmZCTGRKN2dORUdZZmV3elFXdnJOcThkZjhjWitSbVptR0g0VVJlR1p6QVFI?=
 =?utf-8?B?Yi90RUxDK0s1Y1NSdVhxS0k5NUlTTllrZlRZVytYWVBZVnFLSkdHVld0Z3Jz?=
 =?utf-8?B?VnJ1TnJGdE9ZblZOYml0ek5HV2R4ZEpiVC9TVWU0OHUweVlQOW1ZcTRRbHFw?=
 =?utf-8?B?NkZLL0xUb21VQjVQOU5ZZ2I3NG5oVDdBTVVsdWFrWjRQTm1BL2hNdjVzeS9k?=
 =?utf-8?B?YnE0SHJsbEQwVFQ0UUpWMTN3blFhVkR2cVpsSEVKT1ExT0dKWEEwbEhiNmh1?=
 =?utf-8?B?ZDlrZGYzeFNHZldtNGNybWwzK0RLNlRZTFB1VFRnNGJTNjNpSW1SL29aRFBK?=
 =?utf-8?B?ZDZnV1pnWEZ6SUR1YTc5cjJSNFE0RWhUWXlOMFdrdllJdTB1YWlWNW82QlFv?=
 =?utf-8?B?dlZEZTRDdktjdlBDZVNyV2xhNVlwVytJRUVqNEhPUDBsLzdFWHA2S2Z2OG9Z?=
 =?utf-8?B?Y0xYbXRqVGpEY0MybTBUMzNLNXdyUjVhOW5MSllFWGhpRGFLZEtiOUpOMjUz?=
 =?utf-8?B?dVBiak5SSUxIbXJnOEpuSmJUQkh0bm9mcVA3enFrcG1FTnBGQjNIMkFUNGJ0?=
 =?utf-8?B?VmYvNVdiTndGUUVjMG4wa01BVW5LSkVRYjUyOUk2WU9wWlBZaUFoNkpyVkpS?=
 =?utf-8?B?QWR0Y0l0SGt2WUM4U1hVaTFYS0VmeHNNdUI1SVFtZy9XT2dkVldSY1RQejVz?=
 =?utf-8?B?aFZiY1VNM2NVUGxXcThlQ2k4S3AvclF3VGNVeTdtSEdZUDFQeXZ6eEdYR0xn?=
 =?utf-8?B?ZXFhY2U0UTBCN21ickZ1SjZlc0dSY3FwOWZJZXNZSk9vRFRycXRoRjJ1WWhO?=
 =?utf-8?B?eEEvTDNNK2djd3JTUjRHV1B6WXZNZW9JMytlcFJCS3k4N3R5OUN5RTVQWFlU?=
 =?utf-8?B?SjhGRmIweElUczFsd2RQbTg4STI0c1R1QjdWQ1pBVERsRGhJSCsyTTRPY0lo?=
 =?utf-8?B?QlkyYkpaeFUzclVlR2I0TnBNSk5JWXEwSkdxMVFRbitTRW00YUpUeGl2RlVi?=
 =?utf-8?B?ak1Pc1hOTFJxZjl0SGtrMHEyWktvSWM1MHVVcU5ZMnM5aUdzNXpRUXZQVGo4?=
 =?utf-8?B?dVpCSloyRkRuZWIvMmZ4c21hS0Vxb2JmRFZuNzM3SHd6ZkZRTXJoVW54U0tP?=
 =?utf-8?B?UjFNOWxyYU1XUWkyWHNwbnV6RVdRRDlhdU5WOTdxR1drc0hkMWNjU09odWVy?=
 =?utf-8?B?VlhWUnowdVI3QXhETGxNNERKaHU2N1lUaC8xY2I1cFl6M3h0ZGdyRUVZbmpV?=
 =?utf-8?B?UjAwSDFMNlNqVTl5cnZQODh5M3BkZXMyK3lXTXNUWStneGdaeWpDUHhodm8v?=
 =?utf-8?B?ZFo1L1NjTFpsR3JYNG52R3NDc3BQYlY2TmVhMGpMd1Q3ZHB0ZUJKL3NnV1JD?=
 =?utf-8?B?WmhjZzV6M254SitQNDJzWW0yTXZ1dVZaOWgrMFY5U3dVd25qWDRHK2FseDZt?=
 =?utf-8?B?L2szbTZONmM1K1ppdTVJd0ZsZWtSWmRNZ0I2OEZxdzRZSkhxN041aVdzSXkr?=
 =?utf-8?B?R2RMZnYraW9jQ0QzYy8yZW9aL2hjYVJUdjl5a3pFenlka09KL3BibFFUV3kz?=
 =?utf-8?B?ZS8vSzB3dXBTcUtWNjRKWFB5ZWZRNlhsTWdmSUdxejZCSmoyajd0QXRpckl0?=
 =?utf-8?B?eW13a2hQYzFCSWVLbkdCRytGZjZzRHJqUVJYaDlicm9PRm5WZGVmZSs1b3R3?=
 =?utf-8?B?MVZmRkxMYk9RN2xuOWo3VTFPTGozM1pBRk5icjdDL2EweTdqOG84QjVZTlF5?=
 =?utf-8?B?MitiT0FSa1NCcEVqejdDV3daTjBOUXFDdnpkVTd4ZjF3UloyYWNXWFdxQmYy?=
 =?utf-8?B?L0ZTejNZM3U3bkhVZXovWmplTkUxa2tzeU41cDRFK01JL2tEcy9wTUhyRnZI?=
 =?utf-8?B?bTQ5OE1WZjdrWVRYTVRmamFDd0VyaDBDbzBpalpncXExcVdHcnEwa1NwaWhC?=
 =?utf-8?B?UDA3YzlUb1lIRG1oL3lTUWI2cXQwL3RDSWlQNlNzZUtpcy9FY1c3ajNiS3B2?=
 =?utf-8?B?ZURJek11R1RGVkZ4UUU0VXhEK0lzR3FoN1FvV3lleWh3bVJhMUU0dmVDaEwv?=
 =?utf-8?B?amc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	NUS6igJHyoEjx7T8m9PRK9SUEbEPkMskjQezz+T+w+lNwrl2B62Q3slD7Ey9Yi04U7dRdMGHX1IKxEleLrce9q+mpG1ekxin/TM6Wf2ybCwXObvBlEOlXulE033vn6laaI0/EMEwFJr5DnAYNVNDvHzJA5L/9q8PDOP8hIN/Yvh5lACHWARohUHXBvIsVrdezItIYkmxwSjZwc/0EhobYdVsIOsWnP8QNdSC0davf+QmerwTh3PptznaFl72J/PmfMB+o9cOZzDYCXbh6WngK+Ww3TeCBmzL3+q5ZMjtZ7uQ4JgK1T6ndLFP25AZqYlJm3ZQYjPC0W83igg5hCMtv7IG1iQTUUBH7eTf1nVWB1owbbJyOhhpAnusoPONUZt2QnlQdijGr6nZrDqKPmRZGn6gbmJc8CZ6xHW+ZW5QRNLh9sitXE5AVidOdii8liUqJ6RpmMG/Hf1MxLElsNVHAx/EyDM530jRx1bR4QMYj3vqTfiHUniH6WV0rbxdLPWLnsDx1HfyrVQUcqAUQRT1DstxoDp+psRs66pIau1CS0KWqUR5YLMZe8RzXtrx2zjSh+x1VdPffpVJHGbuYrcKV0D6YryVQTkFuuag7ocXNpAskjJIAmFJ6kranxaDwtWdT3gKgtwOEUOyFSRBK1g9p+eyeW69Jolmmeoronw8sJDFKRpc5Qa8y3gsipXcAjqKyBbGw0cQR8LBkY7RgS3gmfZzXuIWsix2XktgdT2uuSs8De68fRV7+S/ST6lXOc/SR7QAoyEGhkfWr8wzC/IzrX9DB6eHxaaXweoYd2iKq44=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35a65dfd-a6f2-4c2c-8202-08dbc44dabff
X-MS-Exchange-CrossTenant-AuthSource: IA0PR10MB7303.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2023 20:16:48.2637
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mbyER9AEwvkiaxIASd03vWBlvcSZpRLRuHPnGshAc3cYdEONFLlTAoPnpYZNxnCpPmYUn4s2xpi7zVPan1xdmo4trJlkCZf+qjMCeuqkcb0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB4541
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-03_17,2023-10-02_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 mlxscore=0 spamscore=0
 phishscore=0 bulkscore=0 mlxlogscore=999 suspectscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2309180000
 definitions=main-2310030152
X-Proofpoint-ORIG-GUID: deknxvsQuvOnz9wSJ_s8F-tUgHL5rYT5
X-Proofpoint-GUID: deknxvsQuvOnz9wSJ_s8F-tUgHL5rYT5
Subject: [oss-security] Re: Fwd: X.Org Security Advisory: Issues in libX11 prior to 1.8.7 &
 libXpm prior to 3.5.17

On 10/3/23 09:31, Alan Coopersmith wrote:
> X.Org Security Advisory:  October 3, 2023
> 
> Issues in libX11 prior to 1.8.7 & libXpm prior to 3.5.17
> ========================================================

Two additional things we shared with the distros list pre-disclosure:

1) Test cases for 3 of the XPM bugs - instead of attaching them to the emails
    to test which of your mail readers are still vulnerable to these bugs,
    we've checked them in to the libXpm git repo - see the commits starting
    with "test" listed on:
    https://gitlab.freedesktop.org/xorg/lib/libxpm/-/commits/libXpm-3.5.17?ref_type=tags
    (The test case for CVE-2023-43788 was already in the repo from
     CVE-2022-46285 from earlier this year).

2) When Dr. Duck reported the libX11 issue included in this set as
    CVE-2023-43785 he also reported several other bugs as potential
    security issues.  We determined they did not meet our vulnerability
    criteria but fixed them as general bugs and improved hardening.
    If you are backporting individual patches instead of upgrading to
    the new releases, you may want to consider if they meet your criteria
    for backporting as well:

    https://gitlab.freedesktop.org/xorg/lib/libx11/-/merge_requests/233
    https://gitlab.freedesktop.org/xorg/lib/libxrandr/-/merge_requests/6
    https://gitlab.freedesktop.org/xorg/app/xrandr/-/merge_requests/12

    Each merge request contains a comment with our reasoning.

    Of course, our releases also contain other bug fixes & hardening besides
    those listed here.

-- 
      -Alan Coopersmith-              alan.coopersmith@oracle.com
        X.Org Security Response Team - xorg-security@lists.x.org
