Received: (qmail 5812 invoked by uid 550); 20 Mar 2026 19:00:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5769 invoked from network); 20 Mar 2026 19:00:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=uvySuvovRll4sPF97/JNVCX2AHV6IxjPX/Q3SCPyQps=; b=
	ajZm5Jsh9KIY1cCAU5WyKv/lerWJEYIYJ+Xcv99snL6i6h8cpWTMz0u1yNVSmLgF
	s0AWIFkRHPrCgcuo6eNtHDVfDxcWeYq35orwKl31djWIQmrghFMKsKcdtDNa1GcJ
	a3bjqnIZMevUm6THpIug+B6g8Jh7s+UueQkLb6+rcnRjD/MyISjxIHsxOis0aF0F
	BwyvLg/BiizhmqhnHxuyo9JNToRxpv8M8Ab5mIq2goRjH90chkd6iziNUUacP8K+
	JiqFFVb5nsZY54bPZ7TjyNygGdpENI5Ke8Avp4tAlcOFv6XrgZsqEe8sNztERwlO
	aesCYkcfOkvSuI0puAPASg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EqXOKpz1ZLfmRlTTrhjA1Q5rfN+53oXjjYd/dEnPsRQM3nOIS6jX9d1fAdskt5tfRsnh4J2poRvHDCIx28FTnEXcsYn2d/HwZOs0wdGo/uPDZxC1lsfUX7PBR9r5+/WAeVu3JSFA4++3Ypk/E2EZoMGjGgQqhLQgNZWLTZt5SGA6GOzOiDBVAfKKPFZYQbuycedn7mzpnjINAxxvzT6hpasMge+CfTnadNOb6C/EGS+T4G37xKU5WK3BRJA45FLsupdmE6k9INHmE4CZbtp2s4ti91ES9wAEKYqT3/XhNtF5rwpfa3diu5Bf4niD3GTzAQgUh+3gl87nlPvY2X3XHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uvySuvovRll4sPF97/JNVCX2AHV6IxjPX/Q3SCPyQps=;
 b=N/Ac/4iYfu9gHnWHR2NDK0+ZM9LSZFIAeuAPprh0l0tmsFGP8fg7EcI+MkObcaJSkU0+uKQW8jKRoLw+VS8E3R/RDUsHDGfiZ3N4g16BFbr699HIUC/miQRQ06NhfAg9mU5HALQr1QOFFOML1kYYw8usRi26R56Ti1hPF0qzErOsgKmqEhx7S41p/Dl+aw+AHMv+UCQhCrijKvXX+7k7jcABJGmepGWb2UXDTGqa2hCj2LHSrgeghWRusmB4kogpyqlPU6bl55Cy+1O4G+w6lzd5utAXsDsrRmaOMMyByFRDZbw2O/s8xdH7a8tVBJTis76n7Q21rJ8E2evm3Y31RA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uvySuvovRll4sPF97/JNVCX2AHV6IxjPX/Q3SCPyQps=;
 b=EmAB5Oic6zZFuou2S3oHU+3kvM8zYOVj+aXnmwbuJRmS0EVQcTubFmfRObs304m6ygScIv+UyCon6VAKJkiJ//bPMI0OYI55XBZ0KPMkiRE4OqI8VsDjNbHoFQgYZoUgWPJEOZhRFFTJWsatZaIu21w+pgrphWFyQUQwGUzPYEY=
Message-ID: <a561c833-da09-40f9-b8c4-9aad4f5dc12e@oracle.com>
Date: Fri, 20 Mar 2026 12:00:10 -0700
User-Agent: Mozilla Thunderbird
References: <CAADqWPQpijXCYDYQWkPb7OzTf1z9FZYiPtF7Jb=Ja_oJDdqfrg@mail.gmail.com>
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <CAADqWPQpijXCYDYQWkPb7OzTf1z9FZYiPtF7Jb=Ja_oJDdqfrg@mail.gmail.com>
X-Forwarded-Message-Id: <CAADqWPQpijXCYDYQWkPb7OzTf1z9FZYiPtF7Jb=Ja_oJDdqfrg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR21CA0004.namprd21.prod.outlook.com
 (2603:10b6:a03:114::14) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|CO1PR10MB4562:EE_
X-MS-Office365-Filtering-Correlation-Id: b899f1fa-21ab-4848-2d70-08de86b2ea76
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|366016|376014|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	Dn7SxtM0DUGkR655RUZu5/eoCaxauCEVmNRw9yHEa3OHHL7zMMUW9gWyfYjedSz4hkq4FRL+JyA/mqlMiPHe1naGReoDCSdhGasoms+OUMDtjXf9KPdd7gvclGO6sZ1pumsB0LpROCdiS+5mEj3uAl9WdXXRp5rdj34J/LKC+6wJy3FnWWwZE5JJFNUl0/dYe3n7LDGuGMQDd6PU+oEVAvZXyny9UZJPcEZiinpKMEhv7Nl+dFK4udWFiw2JOv7QdcA7rES4ojrXSAWzFVId6ctCmMc2t3gOIQ3BrfBGqPNhK2XwknE0jeVRFg6NDT9+sAYNWHtfGCmK1CL4+LcFuJyrrvdVtnDgvpLeiiJCBab2TYV9hUNczVMfx74m9ZyCOsNfNCNP/HJ2fTmTergxS4bjGjDUXtQl76Hc1d8AiAwIUqWeVe1yK6rwz3HEoUr57gsZgmOQebhXOuTuhuxzoK+ReOx2Oh3bzAtML27bsRdvl6mTvl0Jg0pOTt8bx5Vm7rv3cESwIyHE4VO6J3p9nvxT4c6NsJRYM/xc8qIWYPF6CCj99QbvvPtpDS38GEDEG2fNS6zRyQNRqWo2q76yfXVqnxxCkEJ6r/zlIxX9FyOOB2T/zCZ5D0Njffd0ZXR/fht7BInHFfOozKLk8JyaJPNOqHI9UR7+fV5VuUiogy0i2cB11TM9plYRWs9E+Btf
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(22082099003)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Mm1hY2dzditOY3lPVTB1WE9IdjE1MHRPN0FYSWFzak5pWmdGeUliZFFWMktD?=
 =?utf-8?B?Z0hIaDFMVkFSWk00VEhsZVpRbVBYVmZhY1hjeEhUQ0I4QmdNTFRnQ2ltTXBY?=
 =?utf-8?B?K1hnOGYyY1l5Vy9EMU8rMDNXNHFkYjd2RFpXNUVTU1BxeE1aWU1EalkyRm9h?=
 =?utf-8?B?Y2lYTEJGSjNCaytCbXhzZGNMQ09BZWFNTUx6MFllSVUwSzhsbVNCTWN4d0dP?=
 =?utf-8?B?TnNOa0NTTDJTTGozS2dHc2hvQ2RQbEZaUjJNOVl4cy9HSUNKNDJWR05PWHRH?=
 =?utf-8?B?VnBOMjQ0ODZQV3RxSy9Pb1Y1MUE3Z3phakQzYVhhVGMxNFF5MFpZeEJmTGw1?=
 =?utf-8?B?cFZ2Uk5yTDFQVzEzaHFCL3htRUJiSktGU2x1MFYrNmtEVHZUNUFZUGhUMmlP?=
 =?utf-8?B?azJJY0crWnFKenZHdElveHQvWk9MaWpSSDU2S1pUV2VIREgwVmthNmZDaWlJ?=
 =?utf-8?B?N1U4UFcwREJrLytoRGo5NTh5bEM0VzlHam9TbjFBVW5ndXE1VVgyZWEzUjhK?=
 =?utf-8?B?akZSWjlRQ3ZWUVBKb1l1cE5NL1F0TGkrSUZKaUg0Z1JWby91TytKS251Vlcx?=
 =?utf-8?B?QjJuM1Zta2FFZFR4bEZwZ0JUdDE0Yks5TEdkWEpxTUtxYkhXU09kTmhxdDJ1?=
 =?utf-8?B?WHVFY24rRms2YWFsbGNiRGs3YU5vNDVaL1U0MUptSmxwUmZoeHBIQWo5cmFK?=
 =?utf-8?B?eHBBcWJ6MTBwNk9MT3dscUJIK1JCNmFlcnlHYkNkNk5jcEJzRzNxQXpYSmIv?=
 =?utf-8?B?YS9uM00xRnNpSWZ6cXlCYlBSNTd6OUQ5T2FwSVdkbXdQRkVPbTNmcHg4NVk5?=
 =?utf-8?B?WWtiNjQ3UTRRVnZQWmpsbVl6TVpqVkxRRWhtaHc1dlRLTDNxNTFuYkpZUU5V?=
 =?utf-8?B?Zmh5aU5nMHI5SmdsbWVIMnNhZFFBR1BmMFc5aDl3N04vL0FCMCtrNVVmVkw3?=
 =?utf-8?B?WVV5TWJXVHFHOVFDYWxmdDVqQURTa04zUVF4ejFQNm4zYUJRZ1ViR1VWeXEr?=
 =?utf-8?B?d3RHYUV6REdhT081MndCMFhWRjdjTUV0NlY3NjhMekNlSlpXVlUxaDVnUlVy?=
 =?utf-8?B?UUZTTDBsdnB5KzJ4SjNvemxTcEo5MFFqSHUyVUpXNC9VOUVxNU1TU0JWM3Vw?=
 =?utf-8?B?cFhmYlVpUC9WMm8ydDh1aFNaZWQ5VFZNN2lHWTFRQ1lwUlhncEpHMjZ4cFlO?=
 =?utf-8?B?cHcwZmQrV0FUZGhicGYwSjhEaFVEbDF1NWhuM2xBaFNRZ2NpUGptaCtUdC9q?=
 =?utf-8?B?dWFlYzZKWitSVjI4ellXY05OZTRBMEZEbElXeS91NTVyd3pJVDhIN0swMlp3?=
 =?utf-8?B?aDk0QnphQzZqcVYzUEFXczY4RlU5SDRoZjF2UUdVdEhOdGI1ODBLUDhBRTZn?=
 =?utf-8?B?SldEWEZKb1AvbGFZN09wOTVCcGNBWnYzRGtVZmNsU0FrcFpnM2RKUEY3aGtC?=
 =?utf-8?B?eXVKWGdZU0srbjFyRUNiY1A0MStHM0ExdDFGaUZBTFFnUEsxeWJ3dkdSVG9O?=
 =?utf-8?B?eEo2UVNIOEJWMFc2aytscFFHQk1CeWFTS3F5UGdKYTZBTFBlWVQ1dERMWXJy?=
 =?utf-8?B?d2xPZGRudG0ybGtYc3pRcHQzM3VqZFhudy8ybGozaDBoNXVwUm16bCtqOXhq?=
 =?utf-8?B?M00rZkdxdGhzSlhlUFR5M0kyc1ZvUkloc2twaC80Y1NTUG93MTVFbVZIcTZN?=
 =?utf-8?B?TW5Eek91Q28zK0FWWDIvMGVaUEpsQjJxL2VsQjJ4OVUxQzNvVTZTNU9YaE1L?=
 =?utf-8?B?TzFPb056TlBDL1oydXJ3VW9yTlA4T3NTWHBzQ0kyK0Q0YkpyeGRKMHE2OXdT?=
 =?utf-8?B?dUVlajVKd2FFQUhCTTNpWVlmczhJY3Z0RHFOSkcxeHkySjByQUhwbm1mWDBx?=
 =?utf-8?B?bjZhVTV4Tmc0V2pGQzJvS2p5eWtxM3BUS1lxV2tVVHZEWmpXQUdLYlNabGN5?=
 =?utf-8?B?cE1zbEo3SXRlYUZnT2NpOSthOFQrbkxOLzYvYzMwVzJSdE4yYXJZRkw4OUdC?=
 =?utf-8?B?dGYxK0svV2Y3S0tscGYrWTZJWm9NWVEyTDZFSGRGNWdSNExrNzllUkZVaGlS?=
 =?utf-8?B?N2F0cjZWRElpdUh3MzVWdDhBcUFkeHg4MVhyT2lEMmFWZkFrUER6RGtaVEMw?=
 =?utf-8?B?OTBqY0tCWityenFOUTVMTk1XVUFFakthdVlMcVZySERKTVdZd3BrM1JIdC9V?=
 =?utf-8?B?Qk1HemVIQ1RuSmJKa0x4TnU2U1VTWHc4VkxTVkRXSFlNNlNyUHJUZ3BxS3E2?=
 =?utf-8?B?UGNWZXZwejhma2syUlNHeHJiMWFwMjJUSi9qUXFXZjB0M0JQVnorc3N6YWZm?=
 =?utf-8?B?bXdTMkNtUGREb1o0VllxL3hOUkJmUGdoVDNWd29sajZpdnh0WEtoaUR2cUV1?=
 =?utf-8?Q?70yUO/+2xiPbSTP8=3D?=
X-Exchange-RoutingPolicyChecked:
	JmDOl7/+wavVc9F/+T/YXDqpurIsDRPRPOW8lrl7YOmz76MctD+X61M4ucdz2TExh0NIm5s+nt3BoVHd9OuSgWpTPqW0TmSZa+MFr9Vjr6lkWWSQ+m/qnNK/gL8JL+eZylgcPbyyy9nvW1qeSAqnDu3CfCd5bXrSt3F3vUod9JPjpR8UnbcA5GisTQ/VkIcas6AeTKEOMKrE/O9WN263klLmv1VOjHPPGcG3K0zKuC9MuvwEo9sHBUNv0rUJeJmu0A/ytg5sBs2pLQUi+5mAj0u/zwd+DGeR8lotUBK56IM85FQBIUtNhBgt7IEZEztkBZ4p/KUCwHkyvX9IAf6GTQ==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	WXpt6XDolcaubNyLLQSKercLPkDIu+G0flwmJhD9vHrdApJLOrFPTYFCXUcUJm5DJ2E7kqUaAkJ+PeDa4YmzYWWs4nWrKEER0qmiJ1yKov2nZMS+02hba1wTjkFmPYIslLsy0G0rbSekQf6y1CLY7EK/5PiDFSdQvvKGGhxMDGRN2rl66Smk+wO001oBQ7N+MjWZSxc+wOPMiDnT4VVsOTt3tfg92oc1e4xoPsAHGfAu7qOz2c8JUB1KDINoNGrz6ZfJHBF7S90q/P/gj0DrFH8a6CnHnuJnxpSiZtU7/hHOpDtmrE/DUff4VCM3ugYJlCf0OilN7X9RCsyFqG/9H1gm/MX9UpkqIBT/fhP/R3tsfVbEoynanPefKuez6Kv8wZAoOsgDbpSocsXeIlM77av/qsZSHgBPGnPRIiyLT7sQIWQ9x32fSM6zRQKC5pmGaPYrGeD6ld+uSkUSfkfCtl/SNu0Swo6peYiwJO092+O3x+piWMFkvgpb9tagtHNuWHrqtLw83VcRJjC7pHVMKFKwg36BTS1s2ZZps3kaxwq0ptdoQ7iT2zT1wCsU6kgZeakYNvrU3PWlTVzQczkrsxK9Bv5BiVgH2okaHbBC3Uc=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b899f1fa-21ab-4848-2d70-08de86b2ea76
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2026 19:00:13.1059
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P4+EWQJpjoSUCiq9YIXfPUVOuTjnGJFWIdxkw5CBgvbQIFjXAyiJJbf/dhK5w3kIEWw+9spUjYenoQ80OxKnnWdcCZAw6Nh3FKsnNXdJwpI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR10MB4562
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-20_03,2026-03-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 adultscore=0 bulkscore=0
 phishscore=0 mlxscore=0 mlxlogscore=999 malwarescore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2603050001
 definitions=main-2603200154
X-Proofpoint-GUID: MAKr6aV4jMHE9hJf_E9yh2z01OYMyqV3
X-Proofpoint-ORIG-GUID: MAKr6aV4jMHE9hJf_E9yh2z01OYMyqV3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIwMDE1NCBTYWx0ZWRfX1Z/YtezqVgIf
 Sh/0p36qkCE6Ab2lRs+9Tnt0u0hzfH/Ks9Hluhq4zZQ6Rmb4PIF7JJqsL+cr66rvxOquKWxfERr
 q3dDeyFmzGUQRpMobi5ISChnBIbL/h8AQ7lFHABdmlQhcAzEaAWjwLCzwJCMnvlcRlkkqviRByF
 vYzr7NO+5sAqeGLrMHDj9qnvzikJ5icIqaCAj3i1c0elCtslUwSVOtDK5f3IcRXbzx7d3hrpv4H
 xHMdzcRB5k6l47GEhhrMldCZyH5u5trC4YJJZAbkGDphys1VMdCyzhSCykMR437lE+Sk/eXhjmg
 clITnwpSpMs57Rgxh/XnLS4EXVghLmnVRKtBEDwaAIHqZZXFUNjvcYvs64EYhLV0OTzz+rKhw0s
 KcihgcdDuPgbTXixfkViA97FXhOjkSvAX2RF0hS01Cp2I4V0eX8JUyDSF7gZ0ratEuylQziH8Vd
 XcGGAPm12tjWs0STlyA==
X-Authority-Analysis: v=2.4 cv=IN4PywvG c=1 sm=1 tr=0 ts=69bd9942 cx=c_pps
 a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=x4eqshVgHu-cdnggieHk:22 a=8r2qhXULAAAA:8
 a=NEAV23lmAAAA:8 a=8AHkEIZyAAAA:8 a=bO2dvHbr5lML-9a0ET4A:9 a=QEXdDO2ut3YA:10
 a=ZXulRonScM0A:10 a=8gvLZcY7Nlvl4CGD_6nf:22
Subject: [oss-security] Fwd: [CPython][CVE-2026-4519] webbrowser.open() API
 allows leading dashes




-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-4519] webbrowser.open() API allows 
leading dashes
Date: 	Fri, 20 Mar 2026 15:03:34 +0000
From: 	Seth Larson <seth@python.org>
Reply-To: 	security-sig@python.org
To: 	security-announce@python.org



There is a MEDIUM severity vulnerability affecting CPython.

The webbrowser.open() API would accept leading dashes in the URL which could be 
handled as command line options for certain web browsers. New behavior rejects 
leading dashes. Users are recommended to sanitize URLs prior to passing to 
webbrowser.open().

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2026-4519
* https://github.com/python/cpython/pull/143931
_______________________________________________
Security-announce mailing list -- security-announce@python.org
https://mail.python.org/mailman3//lists/security-announce.python.org
