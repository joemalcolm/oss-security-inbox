Received: (qmail 24266 invoked by uid 550); 10 Oct 2023 18:40:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24239 invoked from network); 10 Oct 2023 18:40:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 to : from : subject : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-03-30;
 bh=tgVNrAWiw305RoKhB5bp0ufDz8WjFMMm+CArqWiUUT8=;
 b=oHZ4jdpjWRL/v3lRQ6Rqu2tGg+nq/VL1i4PpNDzkGR4yGTzYn78XlaliLx9YrkEAYk/4
 sPRqplv01+on6dnuYdVCeJ58yO8WaPjRfplClyIDr12J3NWzkLJJKdXbRS1DgdJH54N6
 Dlf5Vm7D4MxjjnSxWsAd+nMywiC2WTtNmqNEGtRzR5lit/JdBbMLfl54Oq59Y13s5K/w
 TaSrvqANvPdlgGLJlK0XGhy/o+JTbKY2bXYGCgVfAhq6JDbWQe8QolkAuVavpTrB+Ed6
 P2oR23T1sxQ+Uhgbyt2a3elH2LcKqDAyz6+nMiaCR9KorsaEhNdiCyJfsaFLXOu9fnbk ow== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MOKrTYFRyqXAf9q9zSXl8CdaXx8Kzt0wmaLKUCBPGxzF/sj3Rt8/7u/pwpP6rDuPkZONZmtuFeeHhe92TKOme1y0nzVzzAgy43AA0OZBa0BDmAr7K16O1cdt0kuYbGWLF6HvKI9uDTYtn8B1rQ95aZMAZ3gvYE5DFNQhpvstHQLxWFhloD3lyp4oN/kCan3oYj0qJj10tuXoTLqbOCjJrjmz2oMapRxgj9VU8hVAgTY6NIb8SOCHM64Nd3B2Mj3BmLsyH1t252O20G181vAFLe7FToB7IZg9bUoQzcW7t4Xij2IhAI6W21wxroPmSkQQHiAYXYktVNpRrT9R4f+2qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tgVNrAWiw305RoKhB5bp0ufDz8WjFMMm+CArqWiUUT8=;
 b=UisBseLx3QAxu+wyKR6mn9uHLcPsAyiD50scacSFR1j7/OgRkte0aYmLy5w9zJtcH28hjIEnEXkHGdO+o+3ou2kXklIGER0fuAs+OL8PstzQ4XnBCyxEmF01jhNLVb+/RnhBvl3wGpNV7pL+gRUK/PCSNAZ112lyGp5Hj6tknne9g+7xZWY7sd6vbU1Bdz8FcgvPPCaW4PwGGr+4F0Twk6RF3LBTi0Rfu2VLkaGAkP5pdBT4u/MXwCQkhrNBtXwBaQqcdPt/QThxOoCsFEl4tquBSfItx0kuBo3WynKywDylWgY2EGHx06U6JBGewhNlf1WOGLnzkocjQPkf6RfSpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tgVNrAWiw305RoKhB5bp0ufDz8WjFMMm+CArqWiUUT8=;
 b=F35QJbnNG+IxZyQsNISgHXWVbJHuED1Uk0W24vtMB2AB6/Ngweu49JspqwuminoVMvQox3yRe1QqZilyRNGQar+bTB1V0Vk/oX2hN9viQQVd7JSyK9qGU+6AxK6ZiaZS0pWZpr4mZGsloYcxVjkikSmswfcjSiQE4W9PIMleE/c=
Message-ID: <51049a59-5e4b-4def-895f-97b9c2b92b24@oracle.com>
Date: Tue, 10 Oct 2023 11:40:06 -0700
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
X-ClientProxiedBy: SJ0PR05CA0118.namprd05.prod.outlook.com
 (2603:10b6:a03:334::33) To IA0PR10MB7303.namprd10.prod.outlook.com
 (2603:10b6:208:40d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR10MB7303:EE_|IA0PR10MB7642:EE_
X-MS-Office365-Filtering-Correlation-Id: d883fa7b-1021-4b7d-dca4-08dbc9c054bd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	IKQMUtgvkltkVMi5tvL40sVd8HqNIucDMbtuhcOF0G/V19BlMmQroMwnauULxkBG5+Ng/5UjNvRiYlxuCaM65gT9o4+IzgZYjyCqkEkyPbvu0ZWrFo6scmR5pFzKAX5HBwRoRc8lHH7ZfHthGuScguIr9d4OPcXN8Nq7xjMf6jJeKpqS6VEpsF2n2T0Hlyxz8FymyviHQM3lUTsrwMPqIs1UMXsqpHcWEU/YnPdh9cjC2OS414ZvjxHid0Au/6jV6B3qXG9i+IP4LTNMfkQEF3Crv0EyxBu0x8b/YBll7DTgGfp/6dvJ5WC5I7BFtfYHJ7MnOk5yPaMS+mkJmFgJC7ASfvN8FOzN7KnDKyJ4yrZXbpYWTejd7qT94+PXvv92S4wdVzthTjrxUeXfu0zFu/INw3bKUKG3jwFA9kqqM+5OkcEaYexigA76N6wezSI7gI+NaFNLe0KAkPX2QVvP380l7HgoZ5t3H4Ml392mWYVchYgF9XvGMzO5N0sXrThNi48BqeB5n6Dde9pKq34Lx8z2fzd0PHNhPp4CNwUsJMGzLEbNHTmrmHrxbeFN1qj5i+oRysadEJmpUqtuLclgxjr2ScwPztEfJ/bj0z7TLC1axRzjVM70uB+3iaUwVA4+aWocFs+13Ut68GBfY4iID45YOy/nEUvJId451WNstUU=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR10MB7303.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(366004)(376002)(346002)(396003)(39860400002)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(316002)(66556008)(66946007)(66476007)(6916009)(966005)(6486002)(41300700001)(44832011)(5660300002)(31686004)(8936002)(8676002)(2906002)(83380400001)(6512007)(2616005)(31696002)(86362001)(26005)(38100700002)(36756003)(6666004)(478600001)(6506007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TWJpa1IxRDcrT1ZiY3ZRVjZMSjVKT25GS29rdlQ5R1RxZ1I3cnA2Zk56aFkz?=
 =?utf-8?B?VHk5NllPZ2p0bnZHMmF6Vi91MVJSTnJYcllSU1kwQnRxVUhuaUlkVjVsNlY2?=
 =?utf-8?B?NHVpdjdBN2MwMlBKTFE3UkcxbDI4OHY1Tk16S0pyanJyelJ6WldUU2RKeGtS?=
 =?utf-8?B?MkVuekJGdTFid3RGZWwvYlVBZnhaeUpNNWtJWFBKOHNhY0dyUmVCbGFrN0ZU?=
 =?utf-8?B?NE5QbzJ1VS9FL1pFNDd5cEVldFdhQ1VScUVMM0NDay81ckgrQnVlNk9FNHpM?=
 =?utf-8?B?S1hJbnc2TmtGTDZ6ckpLQWluRm9mdzVIektQcEMxbmUyNGlDODN5eUtuMVZE?=
 =?utf-8?B?dXUwbTUyU3dENnFlN05ENXpLT2lwOThUTkIwNXBFUGFwc0NTSmFnQmRTRmdv?=
 =?utf-8?B?Q0VOSFFWRW9acEtrODJUa3djM2NSWHlzVm5HRDdzbURERjF6encxdGUxL2pO?=
 =?utf-8?B?cnc2c3FiQWhmL2Z4aitPOXBEalB5R0VEaTBCcVl6b2ZOWVo5b1lTSVVNMmxE?=
 =?utf-8?B?VHFrSXp2SkVVY0l1T0VkMklFMVdYc1RxVlpocjVqOWRTaWttby9ocUUwaWZl?=
 =?utf-8?B?Z1Ivb2k3TTNWaDg0UGN4NVI5RHVZdEJQT0ZxZVRUQXF4ZXg1MUlka1dsVThN?=
 =?utf-8?B?VEdJcTNybzI0VXQyVncrVXJQNlR6ZkhUL1VrbXRzSDVWTkxSV0U4NkZmWkxo?=
 =?utf-8?B?cmFQYUozdTRnWExUUDdhcmM2UXExdDJtbDRZWVh2ZDZkNWFVSHFGRnI1M0ZN?=
 =?utf-8?B?bmVsbXhnSGhqNlhEU3dFV2cxNHhwSDA1Y2RUejFleUdwYWlvVTRVLzRGTmtj?=
 =?utf-8?B?ODZlOG9md3VaRmVSOVVNZVh5WDhSNzh2SEVJM2p2cVNIUjhnR0RHWFJKU2Jx?=
 =?utf-8?B?UUxwMHQ0dERnanV6SzFjTkwvUDdMMmxZeUVDWEFYK2Q3eHAzc0hWMVB3WjVQ?=
 =?utf-8?B?enlLMUFudlduY3hVRVZJS3RYRnVRTitkZW5SS3dYOUViSjl6Ymw3NTd4MW4w?=
 =?utf-8?B?bjdPYnZaMmNCbHgrYjgwWlZObitxL00vQXk1czczTHNmNmJFM3kwZC9pMC9C?=
 =?utf-8?B?bGdKdWplRGtCQUd2K0x2eTBKbU9nKytPdmZvTDBkWW9odGFhM09mNVpuN29M?=
 =?utf-8?B?cVNHUHJYeFFsTHZaUkFjUEtZWkh2Z282Y09OVlB3Wk9iOGM3ODRFREtXcmhQ?=
 =?utf-8?B?ckJWb1lQaTlzQ2htd21QMHMxaTd1UFBMQ1BvSUdxTFBkMWxicEwyeXF4SVlh?=
 =?utf-8?B?bFd0VCtRZ1JUSUNzazJzenZDUnIxMlRCRWcwWjFDekZGTVovcjdxSmhXRTNL?=
 =?utf-8?B?SFZOblF2SFlFUWloQmd5QmZvOFpURGlqb3dPV0t6UlpsM2VZY2hwSzlwNTB1?=
 =?utf-8?B?K2g1OHl3QTE4U3YxMzVyT1hIZXpicWlJbjlweHYxWTRTaHdQbG1ENHVzTUFU?=
 =?utf-8?B?TXU1N01yUzNUTUYvMUZWOGp0cGhVSUdseXVuL2lFbnVEam1ZYzRSWWNzTmtw?=
 =?utf-8?B?V0VqR1FJUDVPdVZUUlphejFIczZyd0xRVldvR3gxSld4N0kyUk9GMGEwZkVL?=
 =?utf-8?B?dDVjY0t5d0tpK0ROSGdoRm9JYXlLenc4bG5wK2MvYXgzS2ZSdTdSSDJpamJX?=
 =?utf-8?B?YVNGREZiQ2ZTVm1zMytMQktoSlVqYi9WOWVnTWJnakwwUkUvTER5WnpDeWVW?=
 =?utf-8?B?SnI5dEN4RC9RNTlES0UzeXc4Q2hObkRRVlZwdzR2a2VxUlBPYUhvQ24wWThF?=
 =?utf-8?B?WG1mNElySTltUU9sdjlxRmRtMTNoVEF1NytkTW1UeTBoaWdjYWlTcmpHWWp1?=
 =?utf-8?B?T2ZsRG4vcGVrMmNOWllPZzRzL0lld2ozNnIzUEl4MndOSmxkNHh5SXhGdVp5?=
 =?utf-8?B?VDBYVFRIR2tjbXFzSDNuTnl4TnJtN0JkZ3U1akpkU1pMRkhoK1U1UnhZV2tU?=
 =?utf-8?B?UklEMXpOdE52TXA5dVZ1dVpOS1dIaDJ4SHRDaWgyZjJzbEh6WkZwU1VYMXg1?=
 =?utf-8?B?RGRod2NDS0E5SExTR1NoN3JDL0pGcVdieCt4dVFwTGE1TnlXVlZiTW9vZllx?=
 =?utf-8?B?eHFIa1RCVDdOYWcxNUwyam9YN3FXUkhTajBKMmJzR3BFTXZ0ZkF3dG9xSFJC?=
 =?utf-8?B?eThTcXlPbEIvbmhZc3ZmUmFXWFlacE5WVWFSM2ZrbEV6OFZ2NEVSZVduWFhB?=
 =?utf-8?B?L1E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	1ry6hfY4hGUKmooYFDoN1sbW2WubrgGanh948MdXGscULvft+8WQ7PlgZXwoLf802E01uxuZGY7AemjpYvLBmMY+eGBGBwwRM6N/Ea7ZZaft71Qfs9GStoTK5M/HI8iyixrCNiHYCRIjapGnAG9MvZWmZgR4iOs9aXURunESqu7fiQtpgP8uPLQQwpKIXhZhVy7Ntce91qhqFZHp8PQClUUMgxZoMJgYs0U2eN2YMsys7cBd+bf6dqVhxIVKnxdeZiEix0N0S/bPbHjVlCkESYJ5xvrl3wTq98x5OX7Erhz0S2Nfe2bzluagJVBVCAaDHrNp9dPlW2Qk3SKsYVQqaIovZf8AtXvqgX0TF73gzk2QpgnrE566d9oD19J6du+T/R0x68vVX9+JfoFS17ZpfKdI4TXhayjBArkqK5zVdHg0QDBKjQomsVXeyoZK8/YJ/40LoTkNbz7BGuDYPNjonhbpDEgeQZMiMphsxECR3seFBkZSEx2cwtVULzNLL473GqUn8vcHlPJyYsAUwVYyq7qFdHSzfI/M2lYAktvbc4ljCPq6EFDkpshh8a+TKJn/5xrYyjD2SQP1wSQc6xVRIv/phT75m6O8uG1pj4YPB2JOZ+MpgnQoTvE4t54QZSkwVStrX+0MiyzS7p3QX/sytUjzRoqPMf768nsOX/OM4nKsW/KZEJDhSdPhvYTV7CFpV4Bw7Idp6YPrji/o1QkQsry3bbWg0lsl1rZIYCVIBTPfRHRnINgFao6YxSz8jz3Aei4JzY4DIKILFxf6dTU4oQ==
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d883fa7b-1021-4b7d-dca4-08dbc9c054bd
X-MS-Exchange-CrossTenant-AuthSource: IA0PR10MB7303.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2023 18:40:09.7257
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yGmxE3428v2Kv1lcmY61Of/YvDdva040zn7RNWNRUOXzsC1sAizTBHcvzRVFwMpiQhPKQqraDNuieKC+ai9uqE8eddwXyuCEf/Dc+TrITnw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR10MB7642
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-10_14,2023-10-10_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 suspectscore=0 spamscore=0
 mlxlogscore=999 mlxscore=0 adultscore=0 bulkscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2309180000
 definitions=main-2310100142
X-Proofpoint-ORIG-GUID: Zjf0tqulxBpR0cJ0NbubXAyCYjcsuem2
X-Proofpoint-GUID: Zjf0tqulxBpR0cJ0NbubXAyCYjcsuem2
Subject: [oss-security] CVE-2023-44487: HTTP/2 Rapid Reset attack against many
 implementations

[I've seen multiple news articles & blogs in the wake of the coordinated
  disclosure today, but no postings here yet, so lets start fixing that.]

Google, Cloudflare, AWS, and others released details today of a protocol-level
issue in HTTP/2 being exploited in recent months for denial-of-service attacks:

https://cloud.google.com/blog/products/identity-security/how-it-works-the-novel-http2-rapid-reset-ddos-attack
https://blog.cloudflare.com/technical-breakdown-http2-rapid-reset-ddos-attack/
https://aws.amazon.com/blogs/security/how-aws-protects-customers-from-ddos-events/

This attack works via the multiplexed streams feature of HTTP/2, in which the
client repeatedly makes a request for a new stream, and then immediately sends
a RST_STREAM frame to cancel them, resulting in the server doing lots of extra
work to set up and tear down the streams, while not hitting any server-side
limit on a maximum number of active streams per connection.

CVE-2023-44487 was issued to track this issue across implementations:
https://www.cve.org/CVERecord?id=CVE-2023-44487

A script to check for affected implemenations has been posted at:
https://github.com/bcdannyboy/CVE-2023-44487

Information I've found so far on open source implementations (most via the
current listings in the CVE) include:

- Apache httpd:
   https://chaos.social/@icing/111210915918780532

- caddy:
   https://github.com/caddyserver/caddy/issues/5877

- envoy:
   https://github.com/envoyproxy/envoy/pull/30055

- golang:
   https://github.com/golang/go/issues/63417
   https://groups.google.com/g/golang-announce/c/iNNxDTCjZvo

- h2o:
   https://github.com/h2o/h2o/security/advisories/GHSA-2m7v-gc89-fjqf
   https://github.com/h2o/h2o/pull/3291

- haproxy:
   https://github.com/haproxy/haproxy/issues/2312

- hyper:
   https://seanmonstar.com/post/730794151136935936/hyper-http2-rapid-reset-unaffected

- jetty:
   https://github.com/eclipse/jetty.project/issues/10679
   https://github.com/eclipse/jetty.project/releases/tag/jetty-12.0.2
   https://github.com/eclipse/jetty.project/releases/tag/jetty-11.0.17
   https://github.com/eclipse/jetty.project/releases/tag/jetty-10.0.17
   https://github.com/eclipse/jetty.project/releases/tag/jetty-9.4.53.v20231009

- netty:
   https://github.com/netty/netty/commit/58f75f665aa81a8cbcf6ffa74820042a285c5e61

- nghttp2:
   https://github.com/nghttp2/nghttp2/pull/1961
   https://github.com/nghttp2/nghttp2/releases/tag/v1.57.0

- nginx:
   https://www.nginx.com/blog/http-2-rapid-reset-attack-impacting-f5-nginx-products/
   https://mailman.nginx.org/pipermail/nginx-devel/2023-October/S36Q5HBXR7CAIMPLLPRSSSYR4PCMWILK.html

- nodejs:
   https://github.com/nodejs/node/pull/50121

- proxygen:
   https://github.com/facebook/proxygen/pull/466

- swift-nio-http2:
   https://forums.swift.org/t/swift-nio-http2-security-update-cve-2023-44487-http-2-dos/67764

- tomcat:
   https://tomcat.apache.org/security-11.html#Fixed_in_Apache_Tomcat_11.0.0-M12
   https://tomcat.apache.org/security-10.html#Fixed_in_Apache_Tomcat_10.1.14
   https://tomcat.apache.org/security-9.html#Fixed_in_Apache_Tomcat_9.0.81
   https://tomcat.apache.org/security-8.html#Fixed_in_Apache_Tomcat_8.5.94

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
