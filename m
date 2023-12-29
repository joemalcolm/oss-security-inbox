Received: (qmail 23949 invoked by uid 550); 29 Dec 2023 20:50:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23928 invoked from network); 29 Dec 2023 20:50:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-11-20;
 bh=gJaMKn12WmWNDVCzU10V6vq7ZCZMCAhpcl/e6GiiHKU=;
 b=d55KGSlJQC0Oz5WHMu/BazJk0gJw1ayHQF8KECej2BaPpG/AsBHP2kJG5hOClA2KbhYB
 vj1w4+nKTB0BMj4lxA9+P/rwuRQAnCMX5JbzGhyVMoRYDYnEf5sGRCxZvpwLQcS+aLyg
 6TNJl8ZBibEENJg+txBgQhhCYp2GzTtCAH0veBuPu65TmA6/TpX+LzIECV/VXghr53Vx
 FvKNcWJBzAKjKYSYYwvgYBWyBciGRCEEtoRMJ9MqZ2fU9dmV1rkR4y5qtoxO/jjHPwYs
 ZUCEdyK6HAw2PkiSWNpm3m6oPpfEy1t08R4U5LL31S9Cev5QW9CKGEdv6L2JjNhA/2la 5w== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=POJbJtvSj69uB9jAjGZBYvm6VWqQyJ1ux4RdrOd92C5mD33focCFnTbAaM5TJeKt6IkLAUUtka46kWK3dpxlm9gdGr+sbUe+B2R+zq1F+79+u0zR/NQRoSKpJPX2IX0lIVNsPjvXrVLmXjjIBuBWorKrPwDb4F63up6o5JItEumdWs5VNSYeg1wKpD33HoWc7/RriMFkcrkN6FmnghrXYLLgIpmAQVUj/JgHFr5zmem6F0Nn1VGB9JU/85WrCp8Xitwlq3+4DwzVbdZ+Y4Q4VmQTSakLTS65UClfPAstPlAJ9c2fMXUwMkPGUeATVsyIbr4BNV1rIMQ81KVGI7z/PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gJaMKn12WmWNDVCzU10V6vq7ZCZMCAhpcl/e6GiiHKU=;
 b=cQRnonNNiznipC7W/6f3Xa3aMQ7o5AAVehPGsmvn/TtO789JUW6KkN8FMxQNqmquGsiuVv33b9gZCki+FNXGQW2RaoJpPa1V9YcUClVxP3wTdpjdfX5t0BrbWC4S1R/BwBifRs7vyizXRJ8JODb/fJEXNJkQWSUJZz9SPQxCCRo5nZW4OgNWLRpqVjWwai6/x6InkAxDNlKrsOXXsEPDOsUEIQZqEazWbIeS9P+yetwNRaXrikpZyxg6h6lsyrpWJu4/fXLY+jPAg+oU3fmypeTn2Jd9fSC7GXaBSjzxwF3rPr39tVaay1TxxCZATqIJfGtEpFGDKGAETkRq63TaFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gJaMKn12WmWNDVCzU10V6vq7ZCZMCAhpcl/e6GiiHKU=;
 b=igiU1zzi4PwxT7D+Aq7RSDoxY3bRuKsfKzTtvo2ee0EvCzVSV2O8Xfexi237w2C94ywhlfJ+0G81HJUWCCKLDLf1STOZOu73vK/WLLpQ/u/HhKOSqj/7sPDeDbkQlPotVBjRwc4BAfM0Z9HDTO3aPD5GZjcIluYAixsX73c7vbQ=
Message-ID: <f3008fbc-4dbc-49ae-ba0a-1badbad2466f@oracle.com>
Date: Fri, 29 Dec 2023 12:50:55 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com, Claus Assmann <ml+oss@esmtp.org>
References: <20231221143630.GD14101@suse.de>
 <20231221144656.GA40693@veps.esmtp.org> <20231222104647.GH14101@suse.de>
 <croalohbjdjf2cb6e5ol2l7rsdoxd6mr4mw55lyzzf7ljkkx5a@czm7be4dpjj4>
 <20231224093335.GM14101@suse.de> <20231226191528.GA6930@veps.esmtp.org>
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
In-Reply-To: <20231226191528.GA6930@veps.esmtp.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MN2PR16CA0018.namprd16.prod.outlook.com
 (2603:10b6:208:134::31) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|PH8PR10MB6315:EE_
X-MS-Office365-Filtering-Correlation-Id: 1dc8d6c2-4fc4-4f5f-af47-08dc08afdc29
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	8u8HK6J7IL5uH7fyoq1irBpu+eeSieagRcIIwPkS8h3w37UnXVe/2/SrduexorNnteHstJL4MxsEmt7r10+nL9ygJ3f+O0+qyp4axlYwcKx31w+o8GZS0DREICnDi5NJNQ0LX29x88HeGmxa5JscoCe5p1gNvVURvvwlkiMXkbZHtIEFbs5+2y3rQsoGIZ+QPlKqDbgQ62xhvxrWj3HkbIoKYCnj2xvVcVl/1vmhblLbdDfyEiwpOwILhlRzgzYcG/buGTMQw2Zt+++q84yGVm/lbXoin9GOuOiiYI/+GCma4KV1kTAHSL87jQR9qf63kEVllKQKlnxMRR/PT55a/XNbNEwnUd+vEhtGum8f+qKfkOb7BAhdVD/Auvvno6upEbh44Nzrc1HuB4Uz8vXd2XkAvxaPf/AkVpPdZEIRdVI/cydNfUKkgoA6rYv86ruPeHNCzIZzjEip6Qxug78SpRaF0Jisj/lBvnNfakQ7HZ4onW6aHeunr2aJQQT/nrCV2ZlwJiYV0nnPc07h47m82RTXwy25x9hevC0x4TH/+JSPIhMUcDb9dQnizKtfc6JHD0z7rT6Punn3S6YAN3E2Dt+RSY8Gb9gJi6tiD/y39okL65tdkLABC2x/5757R4gxR3MrAixJh1BM59Mzpeu5EQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(366004)(136003)(396003)(346002)(39860400002)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(36756003)(31686004)(66476007)(6666004)(66946007)(66556008)(6512007)(53546011)(6506007)(31696002)(86362001)(83380400001)(4744005)(38100700002)(6486002)(478600001)(2616005)(41300700001)(15650500001)(26005)(2906002)(5660300002)(44832011)(966005)(8936002)(316002)(8676002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Rk1PK1VjZms5QnV3UkFNY2V4VzAyUTB1TXdHd3llckIxdTZMY1paeUs0ZkRV?=
 =?utf-8?B?L3RxaldNWmR3S1JYWmVSVUx5VU55UlhlbDdWTDFLOGJ1UDRhOHZJOEIwblBr?=
 =?utf-8?B?SWdXVE4vL0ZZc3N5NC9wVHZ4bXU3QlVteXFQR0x2cGo0RlZvWTRmaVVKUW4x?=
 =?utf-8?B?c1dzMVF1QWwvcVhPd1pVbmdxelJ5ZHd6bmtJTFc2REUzZ1hiRVRLNzI1dU0r?=
 =?utf-8?B?TE5xVVVNTVdYaTBlelQxUG50Vm9naFJvREpFcVdCQkw2TWp2MzVxN25LZFp6?=
 =?utf-8?B?QVVhL3Y0a0UwV2JXM3F5L0x3c2hXTU4xTldmUnVmSnpmbGRsbWhmUzNVb0dN?=
 =?utf-8?B?QjN6UUw0QnE3cVgvUlVwdUVLaU9mNjBQblV5VEhvUnk1b05sZ2JWbGQrTHls?=
 =?utf-8?B?d0Izb1laMEgyVkdnWnFaTHFCWUdWQXZjOG1YblNQdWwwK2xZK0lXcmFZSnZC?=
 =?utf-8?B?b2JhdEdMeUhhUFFaUkpobGo2d1hsYzI4ZFYwa3VpdDllN0tuMW1KRmQwK0to?=
 =?utf-8?B?K3AvcElFUTNha0txeU9QUFUzRTZLWWJBWE9JOXhJQ0JrR21rMllaWjZiZkdz?=
 =?utf-8?B?U3N2Qko0blIwamwvMEdUb0dlWnNiQkd5cG9ObmJ2SWVGQ2swSngyN3RnempE?=
 =?utf-8?B?RldLTjRYMG8ySmRiZVJ6cW5ONVZHZllQWU82dEtqaUJsbmNRdHJzUk9aZ1Jk?=
 =?utf-8?B?a2FPYWlDeUZMOFZSY0lwdE1lSHVpMXByZGRiZXR0UGRhSE5IbnEyY0FYcUlU?=
 =?utf-8?B?Ny9VOU1EbUN4QTgvSnlKZU9qNFN1dmNwbmRWSHJHL015dDZUU296aXR0b0xZ?=
 =?utf-8?B?ZGVnc09wdnRkYU0vYnFkQzNkdWk5ZmFUQlJxcGZMN01rRjFJSFBDazQveTlY?=
 =?utf-8?B?UEo0RzFCdXo1NUNoM0Q3T2NZb0hlMk04Y0FMWlFhQllBMUYrdWNidDBHSVBR?=
 =?utf-8?B?a1gxbCttdmJTaDQ0MmMxWXQzRVFxT3ZKVDlnSGdGeUZMelE1MUdvYSsyYzM0?=
 =?utf-8?B?eEZhOHNvaUhWUzN3TXhzYVBpb2Ryc2xOa3ltZ3FVcFBQREJUVnZDM1VUZE1q?=
 =?utf-8?B?c00rMEhHSFo2ZFVjY1FKL2N4WU5EaE50dDhncW5mNTZHbWNmb1dsUGdGc092?=
 =?utf-8?B?dmRHaG1PakVCdmplRmpoUFFwZVdTbUZDajJyalp4SFpwMEFEMWt6eVZVRzIz?=
 =?utf-8?B?VFQ3bFNnemsvemsxL1hqVE1LQ2U2Yi9JVnJhcEdyQUkvUjJxbmpna2dUOFl5?=
 =?utf-8?B?ZWdwUkVzbFVnYVlzV3cwVklmaFBYenY4aitLOHdMaWZxT21rVHJMN1BUbVVF?=
 =?utf-8?B?Q0l4VDBhbHQ1N09YT1RWY1plSWxYeDQ5K3dkeGpTMFBKUUtPY3NORkoyZDln?=
 =?utf-8?B?d2s2a2NoU0JuKzFxNXd1eEU0MmszZEJPVnBURThEMnNsdFFtT3R5N2NoM2lo?=
 =?utf-8?B?U0hXZENGbGRrSGgyWW1xeW5NUTZjTEcxc2xac1AxUU91MnYwK2VENXhaM3Zo?=
 =?utf-8?B?QkEzZjc2Z0w3ZXY3a3NEVHVOT2ZzYzY0dWQxTDdGYVdsUit3VlN5ZUVnR1d3?=
 =?utf-8?B?Qi9XT1MxdmdXNnVYMVNnRDZCblFQU2dmZ0RXNzFoZjRzYmhvUlFCb3QyVExx?=
 =?utf-8?B?bWVVSHlLaVh6bjFkL3ZMU1hjZDNRVlNwODdtd2lNN05aK3kzVmdpdy9XOVNJ?=
 =?utf-8?B?V1NoNDY5U1pmVk9XcWN1Yjg5TGtlbnRjbWVNanRUTXFZUnVGWVdYaXhGL09L?=
 =?utf-8?B?eVkySC9TaHRSU2s5NVU1MFBtdG5VT254WVEwYjdLcjhSQ1VSbjRXcmJxUkEx?=
 =?utf-8?B?MVFTYysrNVIxSDNYMnErd3lUN3JDSnlUbGxQaUs3TWZZTVR6WUkwSFNxbUhI?=
 =?utf-8?B?SHY0cTFKVHpENkFPTnFmY09GUWNxQit2QklpWVJXTW9BUXRsOTQxcEphbnB6?=
 =?utf-8?B?cjNKVW4vY2FENGFvc3J5TTBIVnh3TmlIWWt1dGxnMEYyenB5ZjhPc3FjbDVJ?=
 =?utf-8?B?ZUhNbmhsRXZiaTMyd2FONEJKano1VjJwK1dJTERNdWRxakwzd2Jib2JXOWpj?=
 =?utf-8?B?UHpIbS9DRXd0d0NsNWN4Z1o5Ty9MS2JIeTNVczRwbktJNDVVNUUxdjBqSWI4?=
 =?utf-8?B?WG1wQ2hYcy9nMzBzVEtSZXcwaXRSbjA4TTkyTlc1TTlkSmh1SFZJdkVnZlF1?=
 =?utf-8?B?alE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	WR4cZ1ELaumSUaDlJduzTZgIyAEZHwyX7ha9vlAmPltSMK1an40sdf6uKGYBo7RP1EPmvDpdvpcMe0qUw5Xj1fiieojLorZM/QU+VaGo4ifxtaqUDw7/DGxhrUNSvMrI7n7gYCk/TKprxoPeVK6zZnfcxn9KgzNklRTbOo1orY41xEj3Hw1I8/lI8d5AUY9qnPffLFs/gmRmN9VTOSUXUhBDGZlBDv2IxNY0ibOVblzSgqAo41ifLdhUZzAfyCnbZXL3gNpRpceUNCwkSU/hDyl9jmKMf/uwdUdEQ7UX5egzdr1klUfUCrEc5kLic8VUiqeLCfo85JrjfOP7ehaXNlnZ5nOAR445r0QokSLL80E5aH85UtcUS92sx7mlnQCPTbx/ay8ZRyhqH/rdAiDYwHrJo+ihXOZ8hjr6xzJTpPWnjltUh5XAq2dzRczBzxvu9kTcZO5kDpS4RYlyBFGcalJ1oUIFb7d+JJF/eLFPxkZt207ZjPPmFoxyOXtJdsGEOr2Qj2NFMz6dxmFsHI3CTxGucCb9oD/nx0PSrdN9KVG1rcE4cDHcLkMjYa4UjMpy0H7G7V77iTv2bckGKP9uoZXJJPd08nw0l0ElwC+hRfs=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1dc8d6c2-4fc4-4f5f-af47-08dc08afdc29
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Dec 2023 20:50:58.7338
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EdQVmHVZd48oO04LkYiUdCBXQRZoGQ/dEgo9ZRjxd3EwlNB88THwoCAHt+LZXSPFztarf3iGY2mzuK25GgfdaJ64nDfDqX2OsFgebrOVE+g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR10MB6315
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-29_10,2023-12-29_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 spamscore=0 mlxlogscore=999
 bulkscore=0 adultscore=0 phishscore=0 suspectscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2311290000
 definitions=main-2312290167
X-Proofpoint-GUID: zzpiXeZMUn_DIYW7yAuI3cXbs0AABL8l
X-Proofpoint-ORIG-GUID: zzpiXeZMUn_DIYW7yAuI3cXbs0AABL8l
Subject: Re: [oss-security] Re: New SMTP smuggling attack

On 12/26/23 11:15, Claus Assmann wrote:
> On Sun, Dec 24, 2023, Marcus Meissner wrote:
> 
>> - CVE-2023-51765 sendmail
> 
> Can you update the text for this (or point me to the proper way/persons
> to do this)?

https://www.cve.org/CVERecord?id=CVE-2023-51765 shows:
   Assigner: MITRE Corporation

so you can submit updates/corrections via the web form at:
   https://cveform.mitre.org/

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

