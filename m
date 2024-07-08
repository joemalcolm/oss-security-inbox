Received: (qmail 3141 invoked by uid 550); 8 Jul 2024 18:12:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32106 invoked from network); 8 Jul 2024 18:10:12 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qf4C+8ACi5hFtGSBppFn1FNiYljsJ5XSVrTnqszBAWyvpEK6rTRktia7uyszxLe+wVij3oE6tuS+0XmQJ+kOufI8qwOuojNLzBSPdnetxzcayx2hCZXhtOt0yG6KL2YIt4LH9KlhWC09tquusdK2RLKKOML/Vv/mZR1u7LpP+t7YFV5C/j7Du6fuenoOEoCK/gca+Ytf/ZCtSKRlhMSvjBdCejLQQ3aaSrtaq8VwafMo6/aNR9hTsVNQTeUxQFE2r+weOXNe4hFVmP+2f/c7NKFXDypV3jH1j/lneDpQJa4eRQHYnduddycjpcFpU9LcDDGcmCd6q3Er2PNw/sWi7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nK2c52OkXK1Ijg/70smwVNO70sEtZqWSaStDz6TckC4=;
 b=iMy/OWz6arV85nMjCOxlAgF8Uz5z1dLqfm4CS+7dOGbwQDmqPamsLX86aRnlHKG7RYLejz5lvXjUqmkKDRj3vvvrgnrpkktzsibo3FfPqm54yTxuD4Mp8ydPNXKnLVQ1eTx6PsrHaf0Sksjo2OXE4dhiaouxGlBxPXZ0KMU/kiAGohDuhm2YIC81ow8T7hUJdoc+IfXtthxWH7/tgaEtUM0fs9D09j2Q6fLIgKpYkEI+GLAsPFmOHJTQ2sPDOTmZoTFbhC7IBLUFwof+DX0bQHYzVSR/sBNRe+OQ7xmFC2IWlRxidtK/JLHqByyBVubpGTpVuPYkPMSp4cWsTtDaVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analygence.com; dmarc=pass action=none
 header.from=analygence.com; dkim=pass header.d=analygence.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analygence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nK2c52OkXK1Ijg/70smwVNO70sEtZqWSaStDz6TckC4=;
 b=kB8Rm6b1PW8Pt/z03J5j9YwzFVCIG34MgH8YJdcWWUfjnN9x9BkgHOzWppxx85meGPadnzIaz4tFdJCL2URYXQ1g7of9BDVrDrWed53I/NnclcnK5m2/Dit3ggqLpshdjZBjfHL7AB6gQFrEb9uCpITL0qyx/WajBEjia1i0yvvg5zjxbHZtQSuOTfG9Z9oLn+lK6Z5ewJL9b+0d0nMopEzYkTLhjEdztj/au/DEIgEh0xRDvc4tT8XM7D0gUz8ZkOJ7x5w4VtFVNMOvYeCHxJVV7y2aGMMK9sKeKquU0Ehqh7zezFTbL2yPiK0cx9FNZwsTyTaAXMzXOwRrMMCW0A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=analygence.com;
Message-ID: <a97223bb-e7db-48c8-8a94-4ca3c8b29803@analygence.com>
Date: Mon, 8 Jul 2024 14:09:59 -0400
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <30400489-6c59-4133-a3ce-fa0c16b63c02@analygence.com>
 <87y16bdc9p.fsf@oldenburg.str.redhat.com>
Content-Language: en-US
From: Will Dormann <will.dormann@analygence.com>
Autocrypt: addr=will.dormann@analygence.com; keydata=
 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
 CUkSuQYhz5EOfhvAp7jL
In-Reply-To: <87y16bdc9p.fsf@oldenburg.str.redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BLAPR03CA0145.namprd03.prod.outlook.com
 (2603:10b6:208:32e::30) To CO1PR10MB4771.namprd10.prod.outlook.com
 (2603:10b6:303:95::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR10MB4771:EE_|SN7PR10MB6381:EE_
X-MS-Office365-Filtering-Correlation-Id: 26b50adf-53aa-46f6-4719-08dc9f792f19
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?a0p2MTJPRUxEcmhMR1hjclBTYThIdk9JQTVDcE9JOTQxdms2QVB2MUNaTUxP?=
 =?utf-8?B?a0tDL3h5VUw3NVhHV2xIKzFZMklHRW9wd1dJc1FSRFZwU2VvRktPMklXWG5w?=
 =?utf-8?B?UEtzQW9qK1ZGN05Gb25jUG9PaUhzWHFmK2p1M0N6ZTBpZ29pS2xURTk2M092?=
 =?utf-8?B?UlZFTWdvK0tGbFkvRUtab0JHSUlHemwvYWxscjl1eVFoSUM4aDg4eDlOTEcy?=
 =?utf-8?B?S1FwbUhMT2NxMUtOOGlCQytuSEN4YTZONHduOCtRb1JFcGlPb0FKZ2ZmcGhO?=
 =?utf-8?B?VktLVGJ5SUlmaWFiNDM5SGFsZHFtQVc2anBvQ0hudWNNMXh1YXpTakcvTnVq?=
 =?utf-8?B?RkRzN0g3LzdndzJKNlh2R2VEaWsyWEd1dHNlVnNaYVlXSU5OWGdkdGg0blB5?=
 =?utf-8?B?OFR6c21valNaOVRZaktaK2E2MEVUdWs2dmxiQWZNMjM5bUlGMEM0VWl3c0Ur?=
 =?utf-8?B?bUR4M25FNm1wUGFRelI1YjQ0MWgvYnUyNjRVcFVnWjJZaXZINXYyZ2x3Z3Vv?=
 =?utf-8?B?TXA2TExNSmZSR2JCYmlpMzJ4WkNpbWRrbjVVZjVWRFRpUVBJeVNoR0lnZFpU?=
 =?utf-8?B?dEoyRHpSODV1a3pjZXdwaGhSZ3JFTDZqUWY2QjhpRHJpM2lvNUlwVGQyZU9v?=
 =?utf-8?B?ejFycStFeCt6Q2ZuZlR6czZVbHc0SnQrTDNxV2tCZ1pqbG5ZVTRPbWhXd2E4?=
 =?utf-8?B?SXg4bHV5U3ZtMFBCWkJrZlUzL0w2RG1pTk1UTjNRenNBQXhGVXptdndzZCt5?=
 =?utf-8?B?cjNKbjVHaW1xKzkrYStZZmU1Wnc2bjZ3N0M2Vk1aTDJxeXRPZytSdERnWHhR?=
 =?utf-8?B?VGtCVUxMK3p3L1VmdWt2eGhxNVFDSUNJZytPS2t4UXlsU3hOOEVVdkppcE5s?=
 =?utf-8?B?Rk00ZWd1aHZQSVI2WkRndW5YWnF2U3lBSjBXd2FWQ0RWNG9ZcDZMSC9oM0I5?=
 =?utf-8?B?U25ubUJJMGNTU1hkWEdFTUFXQ0R4RkxWcWZoSWs2WTdvS2g2dE1odSt6T0hQ?=
 =?utf-8?B?QkhqeU1HRndjb2d6SWdvaTB4R2ZVcE5ZS2VOS081dWxDanBFR3hSQU1QZzV0?=
 =?utf-8?B?RVRVa0xBR3lmRFVWcGFBRnEzRk1VL0xBT3lpYUpQakxuUGVtMXlpUUNGYWtC?=
 =?utf-8?B?QmN6K2VWTjFHWkVoN1NNamxsWXl5WVhYTFlWbytRQ1JHMFJSeFVXUkVFYWJF?=
 =?utf-8?B?Z3lXSU56bXFuNXFpM3lBMGhIenlOaE5oMkM1blVReTBwRFFRckMxblVmWCtJ?=
 =?utf-8?B?N3luRG01Z0VsVFVnMnVCT3RVa1VIT3hCTXlnSmgxNU5LY2pVeHlvM2gyOUI4?=
 =?utf-8?B?K0N5Vmh6SkR5cjg1dGo1N0RYa2VYbUxOKzJMRERrNXJmVGdSV2VURUwvV3Y1?=
 =?utf-8?B?YXRza3ZYdHF5ZGxxcG11K0JvdmpIUFg3OG5rTDd1NXdjWVdrYTRhSkN3NUNR?=
 =?utf-8?B?b0Q0Rm1PZlVobDFpN2pzVUovUlQydVJ4U1JTUnZ4VXBzZDFjOXJoN0l6QTN4?=
 =?utf-8?B?YXI1REFuaVhaWS94K1ovaEpGTWNxTXN3d3VVT002VkxyNm80UkdadTRpdDQ4?=
 =?utf-8?B?dXpIa2ZZa1RKUnJJMUx6cnhaUHFQZm9TRWlSQ2JRQXFCTnlsNXZSMkJmVk81?=
 =?utf-8?B?UmFJcGpOUWRpaUJQb29ORGozRzBnbTB0MHBTQWN0bXQzYjR5ZlBncHZabmJp?=
 =?utf-8?B?bWxvS0gzUllKaWp2cHk0WVdOUEdnaDFYY1RucFN1Ukh6TmZFVGFJeS84Ti9k?=
 =?utf-8?Q?tKIZADRe5b8BOdnaKA=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR10MB4771.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?cEQzRStVUGZDVHgyS1VmcjVhQWdUTU1NdHg4UkdaZmZzcURjU2wxMG5IL0Rj?=
 =?utf-8?B?RC8wWVhQVHRuUndhYjQzOVFHUWx3Sm84aitwN2NxUXVlNTllM2dkby9nRlJB?=
 =?utf-8?B?ZEZ4bGVWMmpVQzBnZXIrb1BtQnp6WU1CeFl5Vmx3L2h3NDN5bkZvNWdDU2Vy?=
 =?utf-8?B?Zjh3b2JRaU1QOGppeUE3UW1kL1VsOFVxTWlpQU44Nnh6dnp2VC9XQ0tqMVpC?=
 =?utf-8?B?MG1MdnRkams2eGRXQ0VBdzBMTUhoREgyaE5DQUp0czQ4Qml5N2xDT24zRmxx?=
 =?utf-8?B?a25uUFBqNkZnZVlLZVFxWFdiMjU2dmhjOHpYMERLNjl2bWI2SWRJWWZ6V2px?=
 =?utf-8?B?QkFEbFZoL0V6OE9LOFdEUVNjbWl3VW40MGVGZTViSjRuODIyUCtXdWE3NURO?=
 =?utf-8?B?Nk5VWlR0QzM3eVVJVHNEL2lyNGdUQjFVUnV5Zk9YWklsaHZzNUNHZzlKYy9V?=
 =?utf-8?B?Q29UM2N3alBZMEtrN3NUejZiVktQakFMaEFkZTIyQ2xTdFk4QzB4aTBuQStQ?=
 =?utf-8?B?bXQxcFE5YS9IYm8yekpKU1lrajZYcnQxSVBycFNUSVI4SEF1c0JwOFhsUVNy?=
 =?utf-8?B?WUFIVDdkYzJtWlVOd25hQ3pmcDhDaFdXTXdxRUl5SzNocFF3QUY2OSt0QkYy?=
 =?utf-8?B?dVFMTTQyUk5OVE1XY3hBME9ldGJpOVhTNVhvVllubHovM1R3M3B1ZUdBb2Yy?=
 =?utf-8?B?TnB4MmtJNDB4R3ZEMThBNmdMZ0RGblVrd3dWb0V3cDdOM0FYSEgvNE00cHM4?=
 =?utf-8?B?TmZqQnZLQU9tK1NLQ0dFS3h5NUFPaXdIaFYvT1kzS05qTmRCSGQwUnpSVlJD?=
 =?utf-8?B?YzVIWFQrY29mQUVuK24zZXFoYlZldFVta2VRU0Z3RVBINUQwTmZ4eXlVM3Ur?=
 =?utf-8?B?T3lDaUhoN1FlSndNNVlmZXdic3h6V3J5RDM5Q2RBS24wZDdnM0FEdG9QWncy?=
 =?utf-8?B?aG82YXNJSDByOEhWejgxaEt4emtxeFViNFc0NmhTbDAwNXZ6NDRiN0xtdDMr?=
 =?utf-8?B?dDJCU0N3cjIzWmNOR0pNMTJnRjJQSDVENWhKbUpRUVJZU1I0WmIvS083YkZW?=
 =?utf-8?B?QXFKT2pqNENDTXQ2T2lUU1VWa0UxdCtLSGEwdjJUOTlrRHRsdFFReW53T0Vh?=
 =?utf-8?B?b2wxQmZpa2xPajk4N0Z2SGNCcFBTNzlwMFlEQ2pKNXBSWXBPR0ErMk1uTStY?=
 =?utf-8?B?ZDEzZHlUc3NvNHNGTkZPOTVUZndFVHF6WVhFb1VnSWV0d0ljTDNRRGVKeGRn?=
 =?utf-8?B?VDczMUxhM25YWERDc3orTy94M0JwZnk5cjJDOUowMSs0WGg0MXR3N1R1a1BO?=
 =?utf-8?B?Sld5Ujd6a3FHOWdnZGNpMWpNM3RqOWJPMS91UmQrUEhQblVoN05NK3JwS0xh?=
 =?utf-8?B?YUJ0OWdNbkptR3pGNWxqaHNKanQxRDVMY0U2bXp0dGlKQWtnUU1yVlJFc3ly?=
 =?utf-8?B?RFFGTWw2QlVmYk9CYkJDVTJaZnZNdXpzcm15R01XRzg2YlNYMDJvQzZ0Mm5k?=
 =?utf-8?B?dXlaWDlnVXBBdUpLcHJIN3hSbkcvQzZ6Ykd4K2JOeVdDRjdwRjlYeWJ1R05w?=
 =?utf-8?B?NERHREduWHp1ZGlPT05sTXlHRzF5K1FDUXhjMG5LK05nU3psRjVmYTZSY1Js?=
 =?utf-8?B?Ymk2dW9mMU1VaWJycExoWnk2TVFZUzYyYlNMYzFQUmVYeGpLVmZKdkRheFpE?=
 =?utf-8?B?NHRLV1A0aFU3ODYwYnF6SmlzMktXT0VuZzhQYXcxLzg2L3Z2SWkxeEZvdzNq?=
 =?utf-8?B?Q3hsTEhPZVZaMzA4SU9pYjAyOXVidG9XSCtsL3hDN3NXYXRFd2twYVdkRzIx?=
 =?utf-8?B?VEt4R002a2RTbzQxYUZyczBBb2Qxa21uTG1HbldIeXNzUXBWN1MraVRCdWd3?=
 =?utf-8?B?aHlUVlp6eVZtZERadVJkRElJNWZzbUxER3QxRU13YWhRQUNtdGQwWXFUL01s?=
 =?utf-8?B?cEVhQjE1TTQ0N3dRN0FSbFBEdjlFa2g1OCtlMExVbS9LUE8xOUlaMlhOQ2Ex?=
 =?utf-8?B?c3R3clRSSllOc0d4VklwVWdLYzk2eENuVjNTd0tzc0l1TGxveUJEYVBlNi9W?=
 =?utf-8?B?aHpLank3VnRkdGVReDJUdjExYUdTMXR3blMzUWM0RE9Kckc5U2kwU0cvMHhH?=
 =?utf-8?B?TXRMNnNFT3JyMEJiRjhkWkMvT005T1dZWGFaQkdtbHRXNDZxU2hmUnVZTENT?=
 =?utf-8?B?N0E9PQ==?=
X-OriginatorOrg: analygence.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26b50adf-53aa-46f6-4719-08dc9f792f19
X-MS-Exchange-CrossTenant-AuthSource: CO1PR10MB4771.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2024 18:10:01.1150
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 0b2befc2-4942-462a-9d5f-50631e1040b8
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IXARf15EMskiXvBL1OOb2zSZOlkpkOfop4a7PObFnWayf0aj9xO55dY8LejIayL9UcB6n1Tuuk2amwlKE4bcV4zFwP2FwsdonfEVtco2EII=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR10MB6381
Subject: Re: [oss-security] ASLRn't is still alive and well on x86 kernels,
 despite CVE-2024-26621 patch

On 7/8/24 1:28 PM, Florian Weimer wrote:
> The kernel should not apply hugepage optimizations to mappings created
> with MAP_DENYWRITE.

FWIW, Grsecurity has published a blog post about this topic that covers 
much more nuance than the original "ASLRn't" blog post:
<https://grsecurity.net/toolchain_necromancy_past_mistakes_haunting_aslr>



-WD
