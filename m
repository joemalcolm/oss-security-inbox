Received: (qmail 27924 invoked by uid 550); 13 Oct 2025 21:33:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27886 invoked from network); 13 Oct 2025 21:33:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=PMmoBSB3hvKi20ff
	yZWRspq9hbPwVkZllH4ZZDtBaeI=; b=PFujV2ghSHBbXWR/TH6MsgscOJribmO0
	btu151y6KTt2agYnb3bUj5J2KIK86/79qpr8ResAbt3sYVG7ZRRFIFfhFow4B8NH
	E+DDCvgcuXwmIHik3QxqT8MGs9N7pRGcH0W885OdtWWRtOToc6Fy0Dg0oVmsCcwL
	Rb/ceT7HHVcoQZ02EsPx+8Qi9B1SEEsw0WhXW/rA6gXfqQQ+osjrrzQtUUO6qMia
	LFykGSXoRInstbogjHxm41rYkD3FpBXcARZpwtsJwcKoKpoM3V1+pIiP/+zSYug2
	4+wVbcQ0GlNX59qHkh8COEc8C0hWbAINWrly5hDFm/55TDSZDGW4Ig==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tjj9ztMCrIojk6fnwmT8JpO2LyxugPDrNUYFQNM7mxdLNR1UZhsPY/KKUEzLB0xLhROFjjotRm2eD+QF3Vk3aDDCOR5INg/bXXH1vQCJGFipvjDB81y1Wbjcca2AE5OG02WJn2uKkES3/gcPiiKTuAb+jiKbf+i4CRbTDn1uUL3sQfT+OJDWNofHmmB4VEkydFzBH2GbGN7Fo8InleB8r5Qz1Pi3U1FnJAvrTa2BgEA7vaTwOQplmwXUpyUvv2yTM61dWSVE9nIz8w0OLXLNWDR1OjS000XjbHgaxy2wa/WQuNI68JdH8+KBOc0TKts9GKlvF+mfy9M/Ko6Yuv/1gA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PMmoBSB3hvKi20ffyZWRspq9hbPwVkZllH4ZZDtBaeI=;
 b=lQryRQt/XjS+fmeiRDMoTf83zL1fpSI8dyo3Jlmgr3vM1Cw3Vy4TPeKXSLjdDMXnhK+qXrbhSlHHvLH8Z64q7oMbVGGVGKDUEOtfytjNedcLsydIS4Af/CfWMKbsiz4D5sxGjYWnP315UtCaX9hAl+rLpRA1LQy+ZVfVoxFLvHECNZXS8iHCzeycbOaPg+P1I/5uVf7AHAUSPTXX9KxwgkaZ+V/N+PnDi+AKzMt8bMlpkJzYTV3o4HoZhk55N1qHM/hBsosOz1MwyvG5hnBoCktVm3u1jXQXPM7qCmOf5Vu2EQIF7aYSEZTLGCtgpLleBjFC1j0fi66ENWdJ5pi8KA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PMmoBSB3hvKi20ffyZWRspq9hbPwVkZllH4ZZDtBaeI=;
 b=GXxIajCC1iyQypUVKMHifFNqaTXN08wMEwABjNNSQNahxMr4zPzKWzPo2jXuJV+v+usAi4iBTq2gKTuMMrqaIAxFt1jfLiD6wl5vObvfC3Nt4ilK0LCrLk/Q7s6Dalknqu+Ct1iOHd0YQbmAt5kuh1EAA8tcv6XOXonVVoXSGf4=
Message-ID: <83f5796f-bca9-46ce-9ad8-d7e8c9938498@oracle.com>
Date: Mon, 13 Oct 2025 14:33:04 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
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
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PH5P222CA0011.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:510:34b::15) To DM4PR10MB6159.namprd10.prod.outlook.com
 (2603:10b6:8:ba::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR10MB6159:EE_|DM4PR10MB6863:EE_
X-MS-Office365-Filtering-Correlation-Id: 3d6d25d8-b53a-4a5d-34a0-08de0aa018f9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?NEEwaVdtNk13SUJGdTdZZHkvTU1nZEZxR2hVT2JFbHFzNXJ4dTY3UzFSUGhQ?=
 =?utf-8?B?S1F0S1Fnb1g3U1l3dkc0eHFLR3VJbWt6RVlNeUwyWFVHYjVNbUdIRlBUempD?=
 =?utf-8?B?UUpwNFlaQzErcyttaEhIbi9rMjA5eFBiemFpaG1IZi9ZUFJrbjZvcURXZ0FU?=
 =?utf-8?B?SlVkYmt1Q09vV2lnYW1rb3d0YW1UdzJjTFcwT0ZxS0FwMWw3a1liTW5TNGNN?=
 =?utf-8?B?Q2hwVVNRbmxxSTVpNW1rcnJtNm1udWZDMGxpR0RaSEhvZzdNWkk3RTAwbUZw?=
 =?utf-8?B?OC83WWRPTGg5SDJBU0d5bXFUam9ZWEVVTk1wa0dOVWZLSFdXOE54dGdUR2JV?=
 =?utf-8?B?QjJTUGVBUGJVWjZtOGliZjNMMnBXdGUwcStvTmpiNlF4Q2NJYTZvVFpwYnRr?=
 =?utf-8?B?V2xFMnBqK0Z3ZFlISW1XcnRlZUg5RHBHZmRLaGRqRUpMQnl3VkUwbnBrY1JU?=
 =?utf-8?B?bUlnaW85bWJ1aHQxckd4ZW1uRitob1M2T0NaUXFuVUR2ZnZRVXdzVlpZaVBN?=
 =?utf-8?B?b1h2ZGpSZ21wVnhyQUV1MG14N1BtWkpFaWM1VXhGaU5nV3QwTm5WTE5KVHly?=
 =?utf-8?B?TzY3cG5ZZlpha1lNR0VnU3d1a0Z4SlhwT21pd3ZON1RsV2RUc2VyTVNvMit2?=
 =?utf-8?B?WCtZMGVRSVNLTHBFY1MrdVV6SGppZ2dXVS94bTRsUFRNQUxvOFE1WWw3ZFdN?=
 =?utf-8?B?bDZXSk5PdndyOGM1dTQwQXhIRHRMc1BERHZuenFBUEp2RThwczVabm5ERGJW?=
 =?utf-8?B?d25LM2o5RzgraUhDUEdkTWlrZUN3aE9uK1RGQjdaQVpKTE1wZDI0dGg2WllD?=
 =?utf-8?B?SGlVVFhhSW5GanQvdVhXTzFVS1Z0cWtVREJmNnRJd0pxaDZ6ZHY3Rmd3Zld5?=
 =?utf-8?B?S2JUZWkyd3RmU2lncnlkSmE4amJCOUZabjVpNFY3WTdFMGlOZHNPQUFjWWNL?=
 =?utf-8?B?NENiaGpURVZzZnpnemtGWVpLeHNwSlNGbmFHV0JSRUxXSkxpZ1YxL1pyY2xN?=
 =?utf-8?B?WHNESE96b3BJcFk4ZlFLTnVlVEJyQXJRdVB0eFhDZnlYQkVUNUF6K2RvWFYv?=
 =?utf-8?B?OVQySXhsd2s4WXNqN05GalhpMytWZlJOc0NSTzZleEd1WmVINjVIZFgyTWN5?=
 =?utf-8?B?cm1Qb2FUdGtBcDNQQjJMaHZZSDFxTStSYlRUQ2NGUjhHZytIWlhNOG5ueXhO?=
 =?utf-8?B?cnVPT0tLMVpaWDB1NlhSd09EOVNUV0VTcVQ2elpBNWJvaUx3M1FzQTVZdnc0?=
 =?utf-8?B?VmJkaGRSTlVZNVpsK0ZvSkVBL2F3ZVNiWlNYRGxYbGhnU2gvNFdyYzZFcW04?=
 =?utf-8?B?VWNoYkRuOFdOMTRyNndWVWp6VlNNOTdaa1RiZUdWL1pLeGhSMUJGZHFNN25W?=
 =?utf-8?B?OWdlN3BWUTNMSzBGbm9BUS9paVdwdFovU1FqZ3crREhwQ2tyZXBRSEVsNFoz?=
 =?utf-8?B?WWNiSzI4SEJiWWRuVmduTnlCTXlERFM3VENyczZVOUlKck9oMzlVY2VZaEtl?=
 =?utf-8?B?SW1hUlZ5eFU5Wm1nR2hGTkhQVUg5RkJnQzY5NE9xd3d4Vmh5VDcyTmJERVA0?=
 =?utf-8?B?eCtCdWdyYnM1QUMxRnNURmhHdUN2aTQ3RjE4V2Z0WUxCMEREcDIyYUFSSXVa?=
 =?utf-8?B?eExLQXc5L2s4QTF1ekxFVW1kNklmNG9seitGbEFXenNSN2RDa1lXRndCdVNx?=
 =?utf-8?B?V2VpU0tPbnV1SlRGNVQ3bVpMaS8wMTZ6SWN3R2Y5ZUpHTWZQVGlVem5ROWhy?=
 =?utf-8?B?azZFNXFqT0l4Tk45YzhVK216bEZpMTZTZ0RNQ2FNNElqRmtBa1dVaGNYeEtu?=
 =?utf-8?B?cndMWWdSMGsxMytZV3Y5Z25WSmRINkl4a2xGa05nRkNNc3RveHcxbDlwSGtz?=
 =?utf-8?B?M2ZhZU13YURoTC9xaEFHTS9XakVRb2ZZS3IyY1RQVjdxa1E9PQ==?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM4PR10MB6159.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Vi93Vy9tc3VPM2xVVS95UWxFaFNicEY5UXdISWRDY1d3cWxGTFdyZ2JJRnRD?=
 =?utf-8?B?QmpkQjE3UFF5bEdWSXZUcEp1eHJZMmp4d2RDTURJY3BDT25kM0RPQ1hsRTNs?=
 =?utf-8?B?TlNONHhnWFVJL0VvbXZTcnhvRm5udmY4aWN1MUo3Z2RkbEdPUGI3UzhLTEhF?=
 =?utf-8?B?NEFMd2g1U0ZlZjlmWGpEcnpDRWduaVpQOU5vZ28zL1poelRQSHF1OElLSEtR?=
 =?utf-8?B?WTIxY3ZJSUpXN2FnRCtwVkJkaStza2FWd3dXbHN3TnVwNDJGSVdWWUcvcHZq?=
 =?utf-8?B?dnpwRWkrdHlKak80ck13a0QyT0wycGJZR3BhZ0U0bk0wNmJ0eDRMTWE3aFB4?=
 =?utf-8?B?emh5WWV3RERIaUlwZ3h0b2dUUW5ELytLV2gvTkNkTWM3WXl4WDlGNXRjbUpI?=
 =?utf-8?B?RG1oU0REdCtMaUVHUkhBMGpiOGtmdjVlenV6NWFhMjV1ekkvRzRYQ1BGNEw2?=
 =?utf-8?B?djFtdGd2UXZpZWJtNUMzY1lpL3h1Y3VQa0VWU0FNUXRzUU8yZ0xmNWtHRlBk?=
 =?utf-8?B?c2J4UXM4SUljOEZIeXRLeUJ1SkJpQ002cW5EUmJnZlpnZmE1R2hESHZhbm9I?=
 =?utf-8?B?RmN3d2pWc3FsejZGN2UvY2pvSDlEdWVBd1o4NlY5b3ROZWtpSjJyOXhENTQz?=
 =?utf-8?B?WDVsbTNBU28rRnlPdVAvY3N1VGNsQ0ZFZHZWNWdyOU5xRVIwZU1QVUpQN0Fj?=
 =?utf-8?B?VnNsb211NVhLM1JRTzN4cGhSeTNvdHNpTVg0Smx3RGpxQkV3bTJkNkF6Mmpm?=
 =?utf-8?B?SXd4S0ZBd0VmRm10Mlh4aDFKb0VoaGswSmxCLzZJWFpSN1VieXdVTVB0RGJs?=
 =?utf-8?B?M0tBSUFtY2M3UGsvQlRRcTU4dTYzZnM4b0VOaVFkTG55dTU3dTRxdnh6ckNq?=
 =?utf-8?B?MS9jdUJoVS9vQitwWU5tY1VmekVTTmNNZmE4U1V0Ty91ZGhETGpTWVJsWWhj?=
 =?utf-8?B?OEI2RnhxRjV5eFk2dzltUEhqSG5JeFJCLzFNR0IvWlloR1VKSFFMbUFqWUR6?=
 =?utf-8?B?bkpMNzk2dzdTdGtVVnQwSERiMnY3Z2JVUlBrNzFtQjZOVEJiYnl3M2FHVTVx?=
 =?utf-8?B?QWI0eWJtZXQrRnpNL3lWQjZwK0ZCVGttdFNrZUR5OXhpS1Iyc1dFNE9lWnNW?=
 =?utf-8?B?c0F2RWU5cTlSaHMzOUJBMGREc2JsWGdLMXZ2YVp3b2Q1R2Y5YVVqRXdWYnRq?=
 =?utf-8?B?cWk4VStNaW84ZlMxWTZjK1JaYnFhWit5MENIZENGY1ZsZHhCbGVrQVFpNWRK?=
 =?utf-8?B?WWNPSWFvYzlNWjluSDhUWUJWa1ZwZy9Ub05HbENmNC84bUZheDhLMFZUQ2N0?=
 =?utf-8?B?bmJCTUlIMnpTQnp2QWRKSnc5a3ZNWG9MaGZINHJDcFFoUWZSSS92Tk83cWdT?=
 =?utf-8?B?RG5DenQxZUM2MkxwYVZpd1UyUG93SHBjTUtzZVdhdlRtdkxlOE0rRk5GcURE?=
 =?utf-8?B?QllML2FFRlp0UllXYXVVYUJacXBTaHR1Uk92QVNSQmVpTjZEZlJ5MWl2TGZ6?=
 =?utf-8?B?b1pFdTJBVlc3RHBudjExTVl2aFFUREZ5T3EyOEFtK2w5VEpobVlqdUVGb1Nj?=
 =?utf-8?B?Y3RqK3FBVis4MUVia2RYQzAxbTl1a3VWcjUwd3hhTzUxTXVwNjhsa1c1alFq?=
 =?utf-8?B?dnR3ZDhDT25tN3IzclQ1L3g1YXlBK0l6KzJ4QUE4TkgwR01rVk5OYklKazM5?=
 =?utf-8?B?WFVTT3E4L2t4ODI3V3UvV2RvRkthWkVUZFpzWWdoc0VPeHZiTWx6VnZpcTF0?=
 =?utf-8?B?SVdjeW9kdndtU0xjNlh2dE1WREt3S2Z4NXcvUFdyRHh0bDhRa3o0Wk5MdkR4?=
 =?utf-8?B?YzRiSzRkanpnR05ycTYyQ20waGRJZHZNMC9YdjRSWitKcFZDU1p2SUpTWlZH?=
 =?utf-8?B?UlVpZ1dRbTBHdUd2TExQbkRxRlUrcXRGODR4cVZXUml4d3dpeEJiQWdub2hm?=
 =?utf-8?B?WkNuZlRTdnZwcU1vdlFsN2tycGM4VjVMSUFkZ0RUanNUM3hqME5QTWcxMUta?=
 =?utf-8?B?RlRpUi9sOHI1RWJiN056N1RRRWZZMkwxbzk5NVV4VTdpbEs2WUsxajFxekF2?=
 =?utf-8?B?QjhVVEpZcEYzRDlqSGpHTUF6Uk52WVJIQUxxeFdzR2d1MC9zVGFFaTRHeGdj?=
 =?utf-8?B?aWFkcEtRY2M1ZVpFUERwSmJGY1NrVlJxOGVEamY2WUJmRWZGSkcvSytQeExI?=
 =?utf-8?B?dUE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	yF0/10c6nVvY3cKJo2XuOipnX4kIkWyOlVNLFtjyd3rhWygj18EQQZKdzXNMxmCvIAOSxeNea3C29BI3zDxH3Zi5TtS/gkpLvZ0fkmpLPoBrUvmDB4fFsYvl9cpbjksnD69Bmfllmn8Ql38/R6yKaYCAKRxp1EhwQaM1cqyGySSZBH2mZpEOHAAe58dgoatxLP67PkINo4gH2JSxWx9jWXpx9I/A8z/yVGGKBLSIuYVMyG0HGnRWV4N72MiZdST5QesKanAhpIvlf0dna+KnHaGDHZK0cKzW//wTPxcrWSfK1GGlZ/Ljet0Mo5aFXp3RNXAVC08EBlyH/GgpwHjlNiw5SARcF3wtafS7PT1S1qneXnLG7uMske32N7hZ1c0rV2rTU+BlxS6prEjxrwY7thMWWbFuPBFNEjcdgpNNOKZhrRiYQUlxzpwZjOsv/4qUgGHkjJGo/WxO+FAoY33qOR+/4ilMarDlsuCT+2tysXWeN8+IarW6uENedC5jSkgvwaI6YudaQWTsicCYQdSRMuQzyx3FgrPtD+gJ1iERjfDU6M3gpLCUwNYLkRmwnEHTBp2bUuT/2Nn+FE0+wdLq9laaTzkXl912gdze0JhbEQA=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d6d25d8-b53a-4a5d-34a0-08de0aa018f9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR10MB6159.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2025 21:33:06.4498
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aDyUXKcqIznBGLm8XPCgohG4LHefV0FY8gA4E1P0GHiF26rb9yjsbeBUnpYSEtaqsqVT1p3D9E/ZQ3A0bPfKapVg5tjjpjfLrKb0cgrV8zg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR10MB6863
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_08,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 mlxlogscore=999
 malwarescore=0 mlxscore=0 spamscore=0 suspectscore=0 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2510020000 definitions=main-2510130100
X-Proofpoint-ORIG-GUID: CE6np2NhXovcM73aMm-eU7bV7-yxgOpk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxNCBTYWx0ZWRfX12pMkNMHOxSY
 KoQByZvt9xpEfJYdxIWybzVfVXgir37Arr+Mcs00tV/csych3efR95IFbOzLZKNu7uTkkvKweg8
 fkERwZKQnoT80MiHfhNTpiervyQHVMapMd6O1BNzEuRo21IGb8bqtF3JUHi7TBUhglhEj8T5yMN
 njuNf+DrCwARPH24bo5OG9jx+kXRe0aWURlBhvqWxO1Tpjl+M0/PJcrDA/bvoMSV24IT7AbBWrt
 GiXj5plMSEOZP6BHnVYZQjvh855CjGszMieV17yxcIAzBjmitWu8oUP83ynmqWR9YgtcJx6R3GN
 SOH67bOQ2LQdlAqBEhjrNiODItd61zeBP+Z868gDOGla7bpE6bO3T1PA8O1KvQIzr6TFqfNsIDP
 jAArtADpjITisiTqtEw+ZJvoUENPgB0N7wpOKJdAOdCx8npERAU=
X-Authority-Analysis: v=2.4 cv=E7TAZKdl c=1 sm=1 tr=0 ts=68ed702f b=1 cx=c_pps
 a=zPCbziy225d3KhSqZt3L1A==:117 a=zPCbziy225d3KhSqZt3L1A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=x6icFKpwvdMA:10 a=GoEa3M9JfhUA:10 a=NEAV23lmAAAA:8 a=e5mUnYsNAAAA:8
 a=yPCof4ZbAAAA:8 a=r9u2WGcuNJhzlKj_gvgA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=Vxmtnl_E_bksehYqCbjh:22 cc=ntf awl=host:12091
X-Proofpoint-GUID: CE6np2NhXovcM73aMm-eU7bV7-yxgOpk
Subject: [oss-security] GHSL-2025-042: Use After Free (UAF) in Poppler -
 CVE-2025-52885

https://securitylab.github.com/advisories/GHSL-2025-042_poppler/ advises:

> Coordinated Disclosure Timeline
> 
> 2025-04-03: Reported as a private issue:
>     https://gitlab.freedesktop.org/poppler/poppler/-/issues/1580
> 2025-09-03: Created a merge request with our suggested fix:
>     https://gitlab.freedesktop.org/poppler/poppler/-/merge_requests/1884
> 2025-29-09: Fixed merged
>     https://gitlab.freedesktop.org/poppler/poppler/-/merge_requests/1884#note_3114334
> 
> Summary
> 
> A use-after-free (write) vulnerability has been detected in Poppler within the
> StructTreeRoot class. The issue arises from the use of raw pointers to elements
> of a std::vector, which can lead to dangling pointers when the vector is resized.
> 
> Project
> 
>     poppler
> 
> Tested Version
> 
>     25.02.0
> 
> Details
> 
> Use-After-Free (write) in StructTreeRoot::parentTreeAdd (GHSL-2025-042)
> 
> The vulnerability stems from the way that refToParentMap stores references to
> std::vector elements using raw pointers. These pointers may become invalid
> when the vector is resized.
> 
> This vulnerability is a common security problem involving the use of raw
> pointers to std::vectors. Internally, std::vector stores its elements in a
> dynamically allocated array. When the array reaches its capacity and a new
> element is added, the vector reallocates a larger block of memory and moves
> all the existing elements to the new location. At this point if any pointers
> to elements are stored before a resize occurs, they become dangling pointers
> once the reallocation happens.
> 
> The affected method is StructTreeRoot::parseNumberTreeNode in the file
> poppler/StructTreeRoot.c, and specifically, the following code snippet:
> 
> 
>    int keyVal = key.getInt();
>    std::vector<Parent> &vec = parentTree[keyVal]; //Get the vector reference
> ...
>    vec.resize(valueArray.arrayGetLength()); //vector resize (and posible new allocation) happens
> ...
>    refToParentMap.insert(std::pair<Ref, Parent *>(ref, &vec[j])); //inserts a reference to 'vec' into the std::multimap
> 
> In this code snippet, a pointer to an element of vec is inserted into
> refToParentMap (see line 149). However, in subsequent iterations the vector
> may be resized (as seen on line 143), which frees the previously allocated
> memory and allocates new memory. As a result, the old pointer remains in
> refToParentMap and becomes a dangling pointer.
> 
> Impact
> 
> It’s possible that this use-after-free bug could be exploited to achieve
> code execution in poppler.
> 
> CWEs
> 
>     CWE-416: “Use After Free”
> 
> CVE
> 
>     CVE-2025-52885
> 
> Credit
> 
> This issue was discovered and reported by GHSL team member @antonio-morales
> (Antonio Morales).
> 
> Contact
> 
> You can contact the GHSL team at securitylab@github.com, please include a
> reference to GHSL-2025-042 in any communication regarding this issue.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

