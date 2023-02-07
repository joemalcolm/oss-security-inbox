Received: (qmail 17846 invoked by uid 550); 7 Feb 2023 17:25:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17811 invoked from network); 7 Feb 2023 17:25:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2022-7-12;
 bh=wDFTb1hQHSDL/FEI3NWxO/rPHhypw6G4LDXoOXsUBvY=;
 b=H/3uGQ4tUjcEPQLZr+nFci1yaM7bw+SVsYHjLhq2/X85UTnCokPfUlgOlL32s4s8ypjf
 3ZE2EufNSru8cf0MffjECqFgunfUSt89vNHG7OMYrMf/isYPFrq8WxFET8FRwAiXPEe2
 0DQkUeGlyZr+J8PF4hKBtPgQEP9D4hhQ1We6066rO8XvFDSVLMkFg1Y2p/SqRmucWNLH
 qEeuXjUvaK+MRUMzdcADK61YiNNbPamCfAhPQbyhx1pCgB2Iv7tgA9ePt1C9UalYHcdL
 3aZV0EPgyXoxNmt1VwaJiC8QRE7tv4xALYzHdmI3ynrb75v+VnUeWj7qEWml0C94WeeR jw== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lKhh0+YCd17LaOdlEAehmvCZ3rKBLQMpG/FSoAaL0iPHdGxx9qlkjKc1pCqusFmgU6C5YXfdmET6iKkoJalinEzzvCahigIvoNDvK0CbYVd2LLm2TCq11UemTsg0B4AUlOy4+0QK0kJSwtMxgXdWi/tnRbzEpH7FAme1/VViVrbgQmL2bWPMqMb4y6kgm7rNBvrJO+lK0BxKvvoeMcr9S3C2T4SJr65y7LNQFMy4an+phH4VYqQflYumuX/D2YFhR79yWvzTwscZbMQSH6DCJyKiU5qsNr1JDvRsTZXscH9J48GtHQTmZBbWPV2YyobE+iwwP68OlV5nBERuEKVfSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wDFTb1hQHSDL/FEI3NWxO/rPHhypw6G4LDXoOXsUBvY=;
 b=l+4E89f31dvDr1oaiTDWJ3OCKcyWqAvmQLEFaWrS6US324yaGS5JHXL5CqCkAoBxn7Ss0eAQBPRptIMWX7CDbaXd4MGsVkptLL03eonmU4ffU10ATWLHokLFLR08CEhb5wIVDHsHU/k1FOmLKY1++NT96xnG6VR2WNF8aOvYnKsG2lKhFtsAuSTQamnfZ9wnQFD8i/gBcocISPzM5JqXyn+1e1MgIli+efFVCe2GuurY5rXia51g9ywCRFTwSNEhyDxr3ZuVzoJq1tXnMF7mjD7yk9JJjOLBAu6VIcZfuro0Ij3R1D/Xccia4Ummwun36u1a+PsT0mE5u+fTTlnYrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wDFTb1hQHSDL/FEI3NWxO/rPHhypw6G4LDXoOXsUBvY=;
 b=miGDV9I6ErDstaeVIB/p1IK/tPMN0JYDBxPuAhMTHZFD7TUBuEt7+i+Vwgqom/UBUbTdPx/QCRuYwF6GrGzhClXsfGNppbD08l68B6JhYRnT8KqKJJfMVOPxSO1QAnqQVEX+Cb0AOUJNtFNt+ARSYnWcXzdhQjdkRa/4AhUOBFA=
Message-ID: <63fc7caa-6f5c-d45b-9cb6-aa9d56a3a243@oracle.com>
Date: Tue, 7 Feb 2023 09:25:00 -0800
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: oss-security@lists.openwall.com,
        Peter Hutterer <peter.hutterer@redhat.com>
References: <9afca616-11f3-ac36-4d5f-918487e1a756@redhat.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
In-Reply-To: <9afca616-11f3-ac36-4d5f-918487e1a756@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DM6PR07CA0093.namprd07.prod.outlook.com
 (2603:10b6:5:337::26) To PH0PR10MB5730.namprd10.prod.outlook.com
 (2603:10b6:510:148::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR10MB5730:EE_|SN7PR10MB7047:EE_
X-MS-Office365-Filtering-Correlation-Id: f498ca04-86ba-48fc-1301-08db09303fea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	6wXMZaPHDgES7WTrsL2F0iIyHxovIpR3Cr3qnOQ7K7KIsP/XbDdZZhH9+HhfRhzqoeyeFUhrsJluhp0ZXsBAhKXHOHioDsNvLDEYraJL0GqzXk/SfQx/JPZmvowgArkpFWEt3jnGv5Vl5R3AHO+Th21HdjYr2EnV5NkhDaS1mrZZub52GY6TPtUhl0nk7Y0+r9fnToVRhVyz4dKX+c8bTPW8pzzgNPvG5paXcoJMUxoJW4zm3VaDbA70dkVuT/Ejv70989i8ijKHQ8Pr3AcAkVPGNdwB4Fvo1MTUb1tewuDW2FoYpsXUCgpTQYoL0Bd5cYGClycq1cdflnJeVk6ZtAOU8iNjf2pMRNCgFkS0NSGgWlb4ekVq2heps2r6x31A1rEzSkDn//MjFd5wGOSF+Q3A9Debc8IFRav0gPQ5IueY8a7Fu8ENht5p6tMRJC4ni3b8QQ+yejsLlw1tlxskyMPwAbvO6DaxDOVTTtyhd5/jtYuv47S4GXL0FqRYbmf2cSMoeQvknm5pf8blY0VVKtU5szuBAS695WJekW2+ZO/zDdEB/adi8jDz9PBUT7HuHwrvdcGuu4T2+t+XoABstToxfZ0hzuczE1AO32ikBVuKWrSRAfLCATOl/sCVPYdong4YvFgWZpOON/imhVWVJ7CmmGy23FhOwytibglFz5m1L95avkswsnPyr4pFiMHfaqWEDXxSHENvp8jMkUte3enIn0HiuAujtN6fY9+hElXgFp++u+trH3hn3vLUElF/1s5x1QdOCbNxMRk/N94ZJUICs23EirV+fJU5z+DOMCh0l7onKX1UPmmYytNkrVXn
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB5730.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(366004)(39860400002)(396003)(346002)(376002)(136003)(451199018)(31696002)(36756003)(38100700002)(86362001)(316002)(478600001)(44832011)(966005)(8936002)(6486002)(5660300002)(41300700001)(66946007)(66556008)(6916009)(83380400001)(8676002)(6666004)(15650500001)(66476007)(26005)(6512007)(186003)(53546011)(2616005)(6506007)(2906002)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UGQxR3ZIblpuMHZad2RnSXdyaVN4M2FPK2ZnRGxncmc1ZUJYd08rM1BHTWQ1?=
 =?utf-8?B?TE5LejdGbjRzOGJsUG5HWktyT1FLMDhXdXZwRkM5bjhIdkFRWjZpNmp4TGIv?=
 =?utf-8?B?bHFUZ0ZyYTBDWStiQm13aEJjZWNZRWw4OWdLVWNveXdwdnZzejhBOVczemJL?=
 =?utf-8?B?ZTVkS2NtaGNzZWFHKzJGc0REb0JwNGdVcytCeHZqd2lYWFBqbWVUK2JSOS85?=
 =?utf-8?B?eG0xaFFXTjd4OTMyaHNjU1Z2akxjQVNVK2RDSjR1UVVzWGd0QWY0U2dIcnIv?=
 =?utf-8?B?Q2RCLy81c2E0V044WnV0ak1jMnZyV2w0dHQ5ekZaZDFOYVptVks2OW5WMi9N?=
 =?utf-8?B?WDJrcnJKQU1xdE9Ec3RLeUdPSzJMVVJiMnlYQ29FdU8yWXNtVVg2eHFNaE9L?=
 =?utf-8?B?T2xFT1cxVWp3UGtJWmVSQmcxaW5YcWJRU2p4M3R5eFI1SWdKMWttQ1NQMEw5?=
 =?utf-8?B?NkRIekRuTW5aSyt0WlJsVnpkTFJDYlByWGhhSFk0UWpZVVR0RkRnVkhTNFly?=
 =?utf-8?B?U2dmTzhtSHRUaExxZVJaZ0JxRjdCVWhkekJIeEtxaXdWbURnSTAxaWlvWWNt?=
 =?utf-8?B?czVGVEJiRHhFdlJSTHRwTlk5ZEZRRDFqWWc2S0lwL1E5bmhuWmFGcE0yZHdM?=
 =?utf-8?B?WThmdFVwRkRNbEdBVVY2NHZ1b0xLeGlXVUNQM3I3Y3RuaEUzTDFyUmhTdDNj?=
 =?utf-8?B?cGRPcERlZ2pEMWVXRVp3OUp5blluQWE3aVRqUk9rNlNGWGVUS2VEazRnS01Z?=
 =?utf-8?B?THFQTWJqUjFGekdTV2ZOL2pEcjh0amxMR2lTQ2lBMlZWYkd6TFhlQkMxVHJP?=
 =?utf-8?B?RjdNOGNLNUZONzA2NHpyaGJsM1NTWVIrV3V1Y2dpUTNPWXg1ZmpwR2tSTTlY?=
 =?utf-8?B?MEQraGNxb0d3aDlFQnFNUnk4emxFRjRwRjhzUVZjWXROZUowTXZwU29YNFpD?=
 =?utf-8?B?dHJJVDZMWS9DOUFndlY2SGlPQkxnYXBVbFBaa2Uybnh5emFwOEtsVWhXeDFs?=
 =?utf-8?B?MDhUSk5oMGs0Si9uVXJ3RVZseFp2WmFiYjdQV0xzcXByWk5tY2tGMStKNlFH?=
 =?utf-8?B?Z0JYVUdmVFhvV0oxVUR5RmpsV1lYRDd0UFhWbUN6YXFvcGxxcTlUVHVQMVZZ?=
 =?utf-8?B?VDBZcHdDNHc1a3JUS09OMUNESTB0YnVxZDI2MEwrbDRiVGJBMlBtL2lxRjRU?=
 =?utf-8?B?blArVHYyNGxSNmtFWGkvUUFFN2RVZFQ1SmlUSWIrU21FZy95bS84ZFFocHlV?=
 =?utf-8?B?NkdUc3dwT3BMSXdscUpiMlVPcFFibTRSVWhWOHpQcTdVQVAzKy9yd3FpUlVq?=
 =?utf-8?B?aDFIeE5QUFhWTjUydndPQTZIZmUrQjlUUlVoWUxqeTcvbGtiZjI4akNCZ2Zt?=
 =?utf-8?B?UnZxWEFYSDlML3JGWE1JendvRmYwb1Flck5xYmdiY2tMY014cnh0MHBhMkty?=
 =?utf-8?B?Njd3N0U5MXZmdnF4TzZUQW81N3ZieGNJT2IzaWdnWXFjcXR2VlNRVnl0SDJt?=
 =?utf-8?B?enRsY2l2Q1hMODBrZ29PZHJZKzVYcCtpb1JuaUt3bE83SlFjaDVzcmIvOWhz?=
 =?utf-8?B?SFF3dUdUMXdkNzVwN3ZPSlJmTVJ3aDNGSG40VmtyQ29sZ3JNc01pRjBsRWds?=
 =?utf-8?B?OGxTSDFWUjdSWGpnZXZZL1pNTmhGYWkxa3FpaWd5M1c5eHE2ZmszbDdvaitG?=
 =?utf-8?B?ODYvWjVQTUpjZGlFV3oyYzVGRm9DRzdVbEhVRjA2RjlpL0RzeWs5UjRpdGtD?=
 =?utf-8?B?Ri8zT21RZUpUK2x4MlVhQlZHT1dCaGVrZVhuZk10ck80Vm1GUFNmdTZubDZx?=
 =?utf-8?B?RjlucDVwRnF6cUVJRDJtZjBmTFovSC9Lb2lCb2pLa3VGZzF2ejFQUCsrU3oy?=
 =?utf-8?B?Uzlub1k4WGplSERCWUlQQnNTTnp4Q1UydHFMS1hvb0hBQTdSUnZrZktMM1pu?=
 =?utf-8?B?RUQvZHZVdGdiMWpad3ZFUjY1Y0NadTFOczcrVDUwNGszazlpRE1IM1hFVW1k?=
 =?utf-8?B?UUloQjNZdXVDNUhEaFJBSVVuMGhad1NzKzhIYmJwUW1BdmNQUFpvcERUL2ZS?=
 =?utf-8?B?OS8rdGxoZ0lxbXVsL3dNK0o1YUFtUFpoeXNQT3FZbG5mbUo3bitkMjNTYThY?=
 =?utf-8?B?T0FPZEV2MzJFUFByY29qeEg1SW94d2ltaGc2QUxlSDhxL2ZCN1h2WHhFTy93?=
 =?utf-8?B?Z0E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	XGuobSd26jXnPhJZcC5+ZC7Q68NlWotyMvZw1gmX57O68WUhTmRpJGLLX3W21GtRnRS9xgkGXtUGE3chT9gMMEo1TM8JGKfasXh/2V4G4qs+fhaiGvgAL6OWGkoXz9+pnDzkQJdnd0hPbmY6TGjgjtAmsPfSb+lvRCdWBr1Pbtlv6KNiuC1XEyX9wo7nwQ3paDmvI1i+Uc9YFBMfVMEP8bJGqnG7tXraHJIlCoiCymDj8lasNVzejBAysM32LNc+BdTpHbSawQKrFH1hTjXP+/LZuqE9hf4ptH9N8RNBbcuWNeEzWmO47eA9P1mDyN1bjKPm/AVygGNEvIKawpVQ528KnWBIGDDTXk8kB8+Afjm2d02MQ1K2uk7XFU8FIvGwBXVBhLgpsZ+y4ftS3XMwdObzth/N5kEMmpdWzWuNpt/dUboA5EZvGmmN8EKN9x6ryUBk3dGu0ExYhHNzPWBl0z4Pgqz2ZEjeHmy7yczjBonZNS7YFjywCTcJ+/AXj4lROZOPO0tNl9+HdqVLa45Tq6rA09NRlWor8jwtVjdSfX9mzKBARjTaft6+DAgBzv9GQSOtkAcBCdsU0ro4xNi3FmW1XaKiuqgeABh7cMhE+/6cKV946BzFwHULOiD+rKXACrqcs22sUm+F5Oi+Ai2gPhoqo6vyOfuthJ/U0KpGr8LzQsZnjC2BJM/qf4lkRdrcaEm2tcm9RqqjiGc/NJgBdbyy4kRvahd4tqxUZnR0rlofX4q5pgk8MZKnznLwqkOr3tFGhHi++NnNk1AMYSimayjeVqzR7hKgOYCERJAhpSo=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f498ca04-86ba-48fc-1301-08db09303fea
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB5730.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2023 17:25:04.0004
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nETMlrRq+aO0jwKDTuhnUXQLRYFU6GNo/te3uW6IoiyjE+5QusU+ey3Wnsl3bVOllgXaHHfQtY1+yD8AiS4ICpKhHyXj2SJgHoBQ763PnR8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR10MB7047
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.122.1
 definitions=2023-02-07_09,2023-02-06_03,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 suspectscore=0 adultscore=0
 malwarescore=0 mlxscore=0 phishscore=0 spamscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2212070000
 definitions=main-2302070155
X-Proofpoint-ORIG-GUID: a60QA4RA2t5oJsLpiUrb50jUnljgZnpw
X-Proofpoint-GUID: a60QA4RA2t5oJsLpiUrb50jUnljgZnpw
Subject: Re: [oss-security] X.Org Security Advisory: Security issue in the X
 server

Fixes have been released now in:

xorg-server 21.1.7:
https://lists.x.org/archives/xorg-announce/2023-February/003321.html

xwayland 22.1.8:
https://lists.x.org/archives/xorg-announce/2023-February/003322.html

      -Alan Coopersmith-              alan.coopersmith@oracle.com
        X.Org Security Response Team - xorg-security@lists.x.org

On 2/6/23 17:36, Peter Hutterer wrote:
> X.Org Security Advisory: February 07, 2023
> 
> Security issue in the X server
> ==============================
> 
> This issue can lead to local privileges elevation on systems
> where the X server is running privileged and remote code execution for
> ssh X forwarding sessions.
> 
> * CVE-2023-0494/ZDI-CAN-19596: X.Org Server DeepCopyPointerClasses
> use-after-free
> 
> A dangling pointer in DeepCopyPointerClasses can be exploited by
> ProcXkbSetDeviceInfo() and ProcXkbGetDeviceInfo() to read/write into
> freed memory.
> 
> Patches
> -------
> A patch for this issue has been committed to the xorg server git
> repository. xorg-server 21.1.7 will be released shortly and will include
> this patch.
> 
> - commit 0ba6d8c37071131a49790243cdac55392ecf71ec
> 
>    Xi: fix potential use-after-free in DeepCopyPointerClasses
> 
>    CVE-2023-0494, ZDI-CAN 19596
> 
> 
> Thanks
> ======
> 
> The vulnerabilities have been discovered by Jan-Niklas Sohn working with
> Trend Micro Zero Day Initiative.
> 
