Received: (qmail 24522 invoked by uid 550); 24 May 2022 14:01:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22039 invoked from network); 24 May 2022 13:57:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2021-07-09;
 bh=tAUblvkc3HElUC9pJ1J8F2JCeT9HmVzTP9YcwPmZlY8=;
 b=fQg7gP6Ae9/oOt6Qmax1TDsHI+RT1AR3zssCtsuTTM6Ue3WbQPesM4JkllP+AJkxYvPR
 18PdF/85sBf6HftkkmpAFmu3/eg1BPFG3TT+PlzXW0JfvV0OOwNDYbOWB88RwYn5cPHc
 7R9KUCOJSyy+hsQcpHUQDTV3TmDeaRhGr/Tfx/yy7QnvtGl6a3Zkxl+Ib8XWYJ7/vMyw
 K/x2oSAhFyhuWdUyTDHuD2tY+vd89WPxbve+G1b719wUKatdXwBv2D3q0mNRXYwt4Xc3
 WqJ+ecy9l46tB8PXqrbL2Kw6nP1d1gPQJk+RymHgNxMWo67Z2uJ2Wro6Q2VtjcEoaIxx /A== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=APOY6xUMbcJPgsYlelGD6q6zDfvxshbNu15CEflXtVYZegJXFXBeuvY/5ABhaU/Rcg2RkhPwktPD69GJMByXVis0lsipPriqmqFPsSgiF7JXo+QMaZECSf012np/YDgsNJrpQNlni+j4+JhaApDN5d5uwdTMOwv+QgyBoFdrLT1cztOkmvy0ceDZdtFh6TCdw8DSm6q8oxwhQEn6w4aniG80iCS1APRhxxZ6l/KtR1EbXnsVvyckDBa9a160bymU+upo8D5cq2GuSDXKMqRV0foRjHQBhGGI/4+pMBcCTPTGXtg4Jn40VLwrHEBdtgCkYtVVfqg6Z4W/Ua3JgPcyBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tAUblvkc3HElUC9pJ1J8F2JCeT9HmVzTP9YcwPmZlY8=;
 b=jBa3ekCetfHgd0Sc2BeTRifiFTNsOQVvgdyGEx7sFJpApLBAUE3KHOaeFkQhxdL9yevDLmGQwblPUaB5wvoKknPPSCZMel+cnF2F+yyaGH2h+Ia4TmjD/Zi+OzGezTeGWJoSWSfi1c8fq1UQ2DHsycXslCkcZFzBFGhHyYgp8ZrSLN3W37Wz1quhXk2NFLvAIucsJgB7PVW6g1DbVnKh4jr7/haZbAyqPRtEvTuw324i1Gwo8Fwzzg06lSFWfYiZHRUE22tXqlKWYAo1h68d8+hwjU/FZW8aGnzxjMm3VP+w6XX8JynjMn08+WA+EydKfln5suQVDM/4AtynV0mIeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tAUblvkc3HElUC9pJ1J8F2JCeT9HmVzTP9YcwPmZlY8=;
 b=IZ8VmI/4lwcAMJoNYmAtGmT4U+sbF5h7FOKlBwTupVIGxOc67G7luzJNRset1M7C10UbnhtyTUMszHnsQ4l+2d8JltOWaR/bSz3vqxghVMm9DRiDlXeEXXmNoFcbQgHCOn8nQ01T0/IeUvf1//v5rCvB9EsQYvr4QqcUwFRMwHE=
Message-ID: <f5299cec-6ec4-d69a-188c-36b88618947b@oracle.com>
Date: Tue, 24 May 2022 15:56:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <20220515162740.GA20526@openwall.com> <YoKiGWAX4E/mbGWB@kroah.com>
 <1be21670-921c-9f0a-d99c-a9f6fd02b9b2@oracle.com>
 <20220522191951.GA21330@openwall.com> <20220524132929.GA29337@openwall.com>
From: Vegard Nossum <vegard.nossum@oracle.com>
In-Reply-To: <20220524132929.GA29337@openwall.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PR0P264CA0190.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1c::34) To PH0PR10MB5433.namprd10.prod.outlook.com
 (2603:10b6:510:e0::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 18e67d84-222b-44b7-79a1-08da3d8d42a8
X-MS-TrafficTypeDiagnostic: SA2PR10MB4538:EE_
X-Microsoft-Antispam-PRVS: 
	<SA2PR10MB45384092EBDCA2B8B52017AB97D79@SA2PR10MB4538.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	jcJztQZNMrsRPUey7PRRYMRQzh2gbn5usjfs1pKlrXSJYlh1RI7Vqae0WxW87nM/mQm5iN/DQWVQcRM/SpnME+O4WyU2bMQmBYfTXMj2BnPcoSm5w31+5brYsBHIc1VyAQN3RNKoaZZdTqWKyZxxCRoM0ElPBiB3di6XrRYD6N8EPQL3wWXd5Rfi6RcJuagv0L4hJIy1csI5peGLmATj32HOkn1bRiPo9n1f11v1k02WZpTlQLw/pq8v62OW8LTlXPTuHO79m3hWQRdcN6srMxkDP8JuYTiTIlU7Z22YpWkAvwDXPahsntel+P1BO3fy1ozVnxHU6MlPqq/mk4oXrzAFNozlfz8Zo4YAPrJPcfBvHZCs4BVq5p7d6M8VG7sBAo8qfao7K4NtENkmQmdc5xU+WXmp+/yH7QYS9lcq9F2nW9YpycLpCUSUU1Am29RnfQp6zzD061QOtaUGGFluTQkE9SnGPIj0o/0+I5pqmIJshB63lqLnWXU9GlX0/GtNWj0syfsJaqRVjDj4l8YlPIWZWzfao3Na6jzFkem9y0UkjbdCeKvcyEdeTfgEIxvI7L8q7eMKp1prSkolRYK8YdyW8n6NFXsrEFpJHvB3PyMuzqWIYYvz/BvYLW6d4RMsQq9B51s6DVIlRYYKhp0aO1S4J9AciL3XLZnFm2cvxnCOTmPBVkZPlXPfwmiG0GJWzFi5zW6muMlUpXCioTPfVHFekv6vI8dDw9SUYutQpfSNFgPsTwjHV8y6t54aOxMk0U2388wYeJwwycxMtyzn8JCx9zOQjuIGvJKgf9jw9Tl8f0x3GwK/yan+Kg7jcjHjEo1SkoAiAnt1VxYsXdJcxg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB5433.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(6486002)(6512007)(26005)(508600001)(966005)(15650500001)(31686004)(5660300002)(52116002)(2906002)(44832011)(6666004)(8936002)(6506007)(53546011)(38100700002)(8676002)(316002)(83380400001)(6916009)(36756003)(186003)(66946007)(66476007)(31696002)(66556008)(86362001)(38350700002)(2616005)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?eTJMWW9BajJrcmdUdXJ4VWliaWtPNEw2NUZnUnJ1ZWRUQVZqTlhFZDZNRmNo?=
 =?utf-8?B?anlWS2hvTjByVlVzYjRRWjE1b3pRTFU2OFMxR1B5cWczYXN0Q0JSR1lrSXUx?=
 =?utf-8?B?TUxOSytoL1l4WGdmNFJMQTB5cllld1NsTjdsYmluWWh6WFU4UW5CUGtFOFNY?=
 =?utf-8?B?bnJnY3VGZVV2QXN0QjlMV3ZSNjAxd1RNOE4zdmRBeTZLSFF3NURnMnZKcjBK?=
 =?utf-8?B?SFBFNDZmaUNPWWFXRFYvWEFSYnM2bWhrWWUrNnVVenNEQ1JsZFhnNnZlRGI2?=
 =?utf-8?B?MGV4ZXZZeTZpcmh6K1VXQWQ2MndwYWZhNFhtQ29jTnZacE1JQ1hzSnBYUERv?=
 =?utf-8?B?Wi9sWDA5RUlHYWhkcVc1RUZyT2F1VW5CekFUM1locktyUWZKSmFPTFFzVXNN?=
 =?utf-8?B?NHRzMThEL01mSXlXMjBIa1RTVjVQZFRlZEU5YjJ0UGozVHB5OUxIYkkra1hm?=
 =?utf-8?B?RW0wbDFZWHp5ajYweVdiN1RUWTlVK1VFWHZiTEdMOGZuMG5NOFNIWXpEeW5J?=
 =?utf-8?B?UDlQQmUrejF6ZGNMdlVYTzBWNy9PcVdNTlJXMXlpSEpORDZaMXBmTUNvd2ZU?=
 =?utf-8?B?TU9HRG9MVDY0aEZhdjU3dTdHS1QzS0lUZkNjVkpMZlIxK0M4eFBENWhZQ1Y5?=
 =?utf-8?B?dWtYWXc5dld2S2FyVzRIVUtpQ29IR05ZNXlNanZacGZNQ1JVUFdoa3dCV2FB?=
 =?utf-8?B?V3BKcmJqOGZ3Zy9wcVZpSC9EcHg1SEtSSEM5TUtlUWlTUzNvck9WQ05GbWNv?=
 =?utf-8?B?NzNuQ2psTExxeGFPVHVERnFHV0FjL1IxbjVYSUJYQjM4bjVuRXRtNVg1SU96?=
 =?utf-8?B?eUErMHBSaUMweVhGUjVGdm50TFVOZTJoc1loaXkrV0dlSDNldjR1c2pBSkth?=
 =?utf-8?B?N2h0QVYwUGhSUmVYNjduRmpWZjBUT0ExelZKU2d3dThjR21lNXdTbStGdTVU?=
 =?utf-8?B?VjNYeDNWdlM2dlUxY0FycHhmWE16OG51UTYrc2lLUkRpVlBxM1F2cFlWOEtQ?=
 =?utf-8?B?aUZtVzgvZWp5TGRxcnc4Sm91WEJNV0tXZXVZaC9jVStSSG55Yys1MXZZeUEx?=
 =?utf-8?B?bjZnUnBiVUh5VzVqV09CTnRLMU40Q1E4RkRaZnJRa24rWnR1TE82VEhPZENx?=
 =?utf-8?B?aUl4YVpIb0dKaVhSc1FKeEVNQzJwRlZlbnFrVUVqeU9zcXhhNC9pWERCeXc5?=
 =?utf-8?B?QXRMQkhJeFB3ZEFRRFQ5MzN1RmVpdFAxdFJRRmJYMWRMOGVPMXpQbnBlVUZX?=
 =?utf-8?B?ME02SVQ1Tml3ejZWOXFPbGFNUkZWMis1NHBOOVF1d2NBdDh1Qi9malRXQ09J?=
 =?utf-8?B?ekhkakRiUlV5VXVadURySlVoS3ZxWWNTa2liVlVOTkd0VUc2QTdSOXQxOGg2?=
 =?utf-8?B?eTZxdEZ0WVR6MlhYdkVBdlhKRlQzUXpLQWdsMkJaL2FrMTZxVzdXeUVIUkF2?=
 =?utf-8?B?RG9hMjVRRmF0NW5heGxjTW5JTy9WdVFPZk1HRmNnYWxFR3JHY3NiS1dPNUF6?=
 =?utf-8?B?TWN2NHA3V3hHKzNlbUNnMmZuek9RY1JSVkJrVTJiOVBCNk5raExaTVRHclUy?=
 =?utf-8?B?OVFwN1FIN2dhZUFzYU1jMjVoQ053bEFsUDdQVGxmWEdBNDJvZEFOTWtUQVpX?=
 =?utf-8?B?Z3l3TUhNcHRvR2hoNWN3ZWZqV0hkUlJ2Y3FNamJSc0N5ZEdhTGMvTlh4YVFa?=
 =?utf-8?B?Y2dEWEZBN1k4YnNSSERmTzdUZlg1Q1FYM005SURqVDVvelNqK0RPR3prUlFW?=
 =?utf-8?B?SW1jNHFPUnNuTTk3clo0Y2krVWJEOEgzanQ0Rkd6QlVsV2NsdW5NRER6N3pq?=
 =?utf-8?B?N1dNbjNSdHlFaVczc3VucFNKd0J4SE1NT0JsT1U1R3Qrb3pxM2t1bXFmc3pM?=
 =?utf-8?B?Z0JPd0Q4dWowdlVuVmNmSWpnRHZjNlo0cDA1RlJYWWhTQk40dXZzb0U5RVNX?=
 =?utf-8?B?eHVRN1ZxUmJOZUdrb1lXZDhPaVhRVGt3dnZGMmZhS1dUeDk3QlIxUTFiN3Vl?=
 =?utf-8?B?TWN2L2FnMHFTNFJWMEZZc000a1RUY2RHSXBUNmc2aWoxTml5TEh0QVVSTmp1?=
 =?utf-8?B?Zi9sMVpkVWJxVGkydXUzcnJoS2ZUVkNMNDRaMnpoMGxUY1czVER5Qi8yVnlP?=
 =?utf-8?B?NGl2eHpUcXpmL3E0M0d0SG9ZdkZNQ1V2Mno3MjNXckxKc0Z6aWhLM0VqNWpV?=
 =?utf-8?B?VHkxTFBYemhTWnd3eWtsdGovM2JrdGUxcjQzVnBmLzdkS241MTZVU21xVnMr?=
 =?utf-8?B?QlZ1ZE9zR3l5TXpEazBOMC9raTRRU254TUNoNWpkZ200UHIvbGE4NzlKalgx?=
 =?utf-8?B?cGpjYVdJdnVzZkF5NCtGTmZybUdldkcxbGsvRVJOQzdNRGhoWGpBaTQxbEVx?=
 =?utf-8?Q?Xvhh94rK2FZDUr4Y=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18e67d84-222b-44b7-79a1-08da3d8d42a8
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB5433.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 May 2022 13:56:54.7491
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q6Q172AkQcJ3VPQ3CcGY86bB56O8RwRRl1hL2Xfj7GygCnNbvBn+/u2RmBD1bDZmrhARiO/k0mduhT1yO06pZNFwTDaMWkEcYDwnymsK2ws=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR10MB4538
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.486,18.0.874
 definitions=2022-05-24_05:2022-05-23,2022-05-24 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 spamscore=0 mlxscore=0
 phishscore=0 mlxlogscore=999 adultscore=0 malwarescore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2202240000
 definitions=main-2205240071
X-Proofpoint-GUID: ozBWuZBRVnMDrXnEUClwuUpyXNOJ3-mN
X-Proofpoint-ORIG-GUID: ozBWuZBRVnMDrXnEUClwuUpyXNOJ3-mN
Subject: Re: [oss-security] linux-distros list policy and Linux kernel

On 5/24/22 15:29, Solar Designer wrote:
> On Sun, May 22, 2022 at 09:19:51PM +0200, Solar Designer wrote:
>> it looks like Vegard Nossum and maybe Thadeu Lima de Souza Cascardo
>> intend to propose changes to the kernel's
>> Documentation/admin-guide/security-bugs.rst:
>> 
>> On Fri, May 20, 2022 at 10:14:07AM +0200, Vegard Nossum wrote:
>>> I'll respond a bit later with a slightly more detailed option
>>> that also includes potential modifications to the in-kernel
>>> documentation as displayed on kernel.org.

[...]

> If there are no objections, Vegard can you please suggest specific
> edits accordingly, and if there are no objections to those either,
> then submit them as a patch?

I was going to propose completely rewriting the document to be clearer
for reporters and to be more in line with both s@k.o and linux-distros
policies. I'll include the full rewritten document here so you can reply
to specific bits of it and I'll also give people a chance to comment on
it here before attempting to submit it upstream (if somebody wants a Cc
on that submission let me know).

Rendered HTML:
https://vegard.github.io/security/Documentation/output/admin-guide/security-bugs.html

And just for comparison, this is the current upstream version:
https://www.kernel.org/doc/html/latest/admin-guide/security-bugs.html


Vegard

8<--------------------------------------

..
    If you modify this document, please consider the following:

    1) The most important information should be at the top (preferably in
    the opening paragraph). This means contacting <security@kernel.org>;
    if somebody doesn't read any further than that, at least the security
    team will have the report.

    2) Make the differences between the lists extremely clear. The old
    version did make an attempt at this, but the lines were not drawn
    clearly enough.

    3) Emphasize some of the posting rules which can be confusing to new
    people (e.g. the fact that posting to linux-distros means you must
    propose an embargo date and that this cannot under any circumstances
    be more than 14 days).

    4) The document should be a "step-by-step process" as much as possible,
    so that you can use it as a guide while reporting an issue instead of
    having to search back and forth for the thing you're looking for.

.. _securitybugs:

Reporting security bugs
=======================

Linux kernel developers take security very seriously.  As such, we'd
like to know when a security bug is found so that it can be fixed and
disclosed as quickly as possible.  Please report security bugs to the
Linux kernel security team at security@kernel.org, henceforth "the
security list". This is a closed list of trusted developers who will
help verify the bug report and develop a patch.

While the security list is closed, the security team may bring in
extra help from the relevant maintainers to understand and fix the
security vulnerability.

Note that the main interest of the kernel security list is in getting
bugs fixed; CVE assignment, disclosure to distributions, and public
disclosure happens on different lists with different people.

Here is a quick overview of the various lists:

.. list-table::
   :widths: 35 10 20 35
   :header-rows: 1

   * - List address
     - Open?
     - Purpose
     - Members
   * - security@kernel.org
     - Closed
     - Reporting; patch development
     - Trusted kernel developers
   * - linux-distros@vs.openwall.org
     - Closed
     - Coordination; CVE assignment; patch development, testing, and
backporting
     - Linux distribution representatives
   * - oss-security@lists.openwall.com
     - Public
     - Disclosure
     - General public

The following sections give a step-by-step guide to reporting and
disclosure.

Contacting the security list
----------------------------

As it is with any bug, the more information provided the easier it will
be to diagnose and fix; please review the procedure outlined in
Documentation/admin-guide/reporting-issues.rst if you are unclear about
what information is helpful. Any exploit code is very helpful and will
not be released without consent from the reporter unless it has already
been made public.

The security team does not assign CVEs, nor does it require them
for reports or fixes. CVEs may be requested when the issue is reported to
the distros list.

**Disclosure.** The security list prefers to merge fixes into the
appropriate public git repository as soon as they become available.
However, you or an affected party may request that the patch be
withheld for up to 7 calendar days from the availability of the patch,
with an exceptional extension to 14 calendar days if it is agreed that
the bug is critical enough to warrant more time. The only valid reason
for deferring the publication of a fix is to accommodate the logistics
of QA and large scale rollouts which require release coordination.

**List rules.** Please send plain text emails without attachments where
possible. It is much harder to have a context-quoted discussion about a
complex issue if all the details are hidden away in attachments. Think of
it like regular patch submission (see
Documentation/process/submitting-patches.rst)
even if you don't have a patch yet; describe the problem and impact, list
reproduction steps, and follow it with a proposed fix, all in plain text.

**Confidentiality.** While embargoed information may be shared with trusted
individuals in order to develop a fix, such information will not be
published alongside the fix or on any other disclosure channel without the
permission of the reporter. This includes but is not limited to the
original bug report and followup discussions (if any), exploits, CVE
information or the identity of the reporter. All such other information
submitted to the security list and any follow-up discussions of the report
are treated confidentially even after the embargo has been lifted, in
perpetuity.

The Linux kernel security team is not a formal body and therefore unable
to enter any non-disclosure agreements.

Once a patch has been developed, you are encouraged to contact the
linux-distros list; see below.

Contacting the linux-distros list
---------------------------------

Fixes for particularly sensitive bugs (such as those that might lead to
privilege escalations) may need to be coordinated with the private
linux-distros mailing list (linux-distros@vs.openwall.org) so that
distribution vendors are well prepared to release a fixed kernel as soon
as possible after the public disclosure of the upstream fix. This
includes verifying the reported issue, testing proposed fixes,
developing a fix (if none is known yet), and backporting to older kernels
and other versions.

The linux-distros list can also help with assigning a CVE for your issue.

**Disclosure.** The linux-distros list has a strict policy of requiring
reporters to post about the security issue on oss-security within 14 days
of the list being contacted regardless of whether a patch is available or
not. It is therefore preferable that you don't send your initial bug
report to the linux-distros list unless you already have a patch for the
issue.

**List rules.** The main rules to be aware of when contacting the
linux-distros list are:

* Don't post about issues that are already public. If your issue has a
  public patch, but the security impact is not generally known, then you
  may still post about it.

* The submitter can suggest an embargo end-date, but as a rule, embargoes
  should not be longer than 7 days, or at most 14 days in exceptional
  cases. Keep in mind that vendors may prefer to release new kernel
  packages and/or updates Tuesday through Thursday.

* When the embargo ends, the issue must be disclosed immediately on
  the oss-security list (see below).

* Prefix your subject with the string "[vs]" to avoid getting rejected
  by the spam filter.

For the full list of rules, see:
https://oss-security.openwall.org/wiki/mailing-lists/distros#list-policy-and-instructions-for-reporters

**Confidentiality.** Please note that, as opposed to the security list, any
and all material submitted to the list must be made public once the
security issue is publicly disclosed, so please do not post information
to the linux-distros list that cannot be made public.

Contacting the oss-security list
--------------------------------

When your security issue is public, or you wish to make your issue public,
you can write to the oss-security list (oss-security@lists.openwall.com).
This is a public list (anybody can subscribe and view the list archives)
and it is not restricted to Linux kernel issues.

The oss-security list typically does not assign CVEs or accept requests for
CVE assignments.

**List rules.** Please do not cross-post to other lists when writing to
this list. Make sure to read the other list rules before posting:
https://oss-security.openwall.org/wiki/mailing-lists/oss-security
.
