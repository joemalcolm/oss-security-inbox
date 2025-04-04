Received: (qmail 27851 invoked by uid 550); 4 Apr 2025 20:48:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27823 invoked from network); 4 Apr 2025 20:48:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2023-11-20; bh=GSWqO2kokxhmhVs2
	jLoexSeh5hBF+XIOT77s7JmDn8Q=; b=fE/eHldZhFIjIqXG+TuiabH/Jt2t5KZj
	t61aZO3WFSHbOHRmkJoBe6UFN0yhuTNNosMSp2OYvHJgUe6QCe2y++azwdj2LJn7
	U4VD5PEYsURZVY9oln0bMfgdpcaLB0jBk3PrV20z3BRr4If6oufD9MgXZRok27Pd
	AuD91mo1C5tD/vKpP9rP9Zck1WEh7HjSehdsJD8K+j0nYodrUFgV+Mhx/DacN30J
	fn4SIMGFoFyuy5v/hfKNVVKp/H5s7E6E6BQIsOCrYkAMaU316xBRaASFDxYOFhP5
	wrwtLc+Gkgz41SDtt47diQ5xOfc4LpWLeDRpJ+uZ4wM1lSKnleLDPA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AuzMqEw1qSLIis9m6+Fh/I4tWF2MJfO6yqagN2SDXOe08ZVOY3PmZbdqipqa7zRllkVQhV5zJcxPrKOg6vUPZzpYZV/CR+GeJI2K3PL0nVGzpxm/ejg5zzLbsRcvcPELz3+3IBBAtrJlkKN5eMw3Z6B7N7l3be9bCI/s3HGVXKPhHwjTZKTQ1liUQ2sKtqvpVI8OdqcuCa30V1AJ/BIfLnFHDHpId12hj79DknY+RHDqfh241ul7SDvJQj2+5NeK3p56AZyOrzEFYSwShS65MWJzf/iymICZST4GgBEZZZ5SsoeGMfHs7p4obdQkG2ob2FmoNiCyeYMSY6IAh9SBdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GSWqO2kokxhmhVs2jLoexSeh5hBF+XIOT77s7JmDn8Q=;
 b=Q2eYIDItaF9/MwM7yW2QBETdjX7rF8+kL0gRNSsAM+9wM5XofNK96BlCpTZVURg9eucRAcZGzBGP/IVo3rcsv6N/rmdgMONy+1gZ7W8+wlAuVzn7mr8HNRYwk68GfPzh/Y6arScefhaY8yJbcsKUW+6Nu7GzFH5AF8iZov7LPFXloLL/HrQnSwHaCIA1ZaR+rvqBJnkq/FQkIzcGJPTzmbX7Yqr9iSTZ1iL/R3MD9s/eJitDlpWYblh6P/K5yoO4i13ctEZFEKAMOZbDobyAXz2LMkSHsknIA1g2g44mPIqzId7MwPHcZojsltqMIUT1DqmINU67VyuVqP74QKSPTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GSWqO2kokxhmhVs2jLoexSeh5hBF+XIOT77s7JmDn8Q=;
 b=aXW7i1WTt0kYh7v7PCzFc8brY63/8Xzyg3iowbWx+R7qMt/rZWMVj04Bgmb8eTNdnI4x7e9HRGWylauSlOAS4oGFuyN7sTfLZKJJzSW3T6e/VxgA7iVLzA4bTyjmbJRd2ra8n9vuFEsIu1z47KaQyk+tPmcLrtVUnwK77PvewS4=
Message-ID: <7045e01f-d911-4a15-86ab-da25a0501bb5@oracle.com>
Date: Fri, 4 Apr 2025 13:48:07 -0700
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
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR08CA0058.namprd08.prod.outlook.com
 (2603:10b6:a03:117::35) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|BL3PR10MB6020:EE_
X-MS-Office365-Filtering-Correlation-Id: 767a1700-9553-4409-62b1-08dd73ba019d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?Slh0NzdIdW80RDNoRGFicWJaZjdQYWwrV1BzQVNreFRpWUJUWERoVGUwU3dR?=
 =?utf-8?B?Y2hvRC9OYlhGWlE2Q3RGZDUydk51cHJmN0F5bHhrZ3pyTWlWdWM4VUlGZHQ2?=
 =?utf-8?B?RkYzRkpIRjF5cE9aSUtMQW9LMEpja1ZzbXEvcFpxMlkrSFVXQU53czBTQXFX?=
 =?utf-8?B?UDNSQmw3anN3Z0h5NjJKRmhvTjcrSGE2TWEybUtydW9sczI2TVFrNU85Q1Br?=
 =?utf-8?B?aU8xUHk3S1ViRVozb2ZsSEVKRE1EanorbEpvUGRsOVJSMllOSm9hcDBudWU3?=
 =?utf-8?B?S2FJeE0yZ0RmUTY5NkhYZWp1YTlvd3huMXJkaGNZZE4zcm1XbFU1YjFXN2h0?=
 =?utf-8?B?MCtjNTJRQVE0cmhCejh5NnF0NCtETG5BRDVmUlNvRGp5VGxCQXpIK0ZKdGVN?=
 =?utf-8?B?ZlRLTlY4UTNnR2dpcVdLN21STG5Ha2dPbExtaENQekI5SEpzei9LTkRSMmZi?=
 =?utf-8?B?Z2VIZ0dnNkxNM1h2ZEdrYmdrSHo3NmpXcTZGR1dOdGEwY3VXenlzaDUxai9m?=
 =?utf-8?B?a1Z5TDNlVU1zekZSR1d3SFl2clpMRm9uQVJyWitnZUd2K2NUSWY0ZUpyOE1h?=
 =?utf-8?B?dDNYMy81akRiVG1vVzNwYW5kZjBVZXlSdWhCNmVWZE5WSHcyWFhTVW11enUx?=
 =?utf-8?B?dE9pVy9sVXJ1UjZtTk8wTVM0SEdGUCtrNGQvM0pyeTl2WW1mTWl5MHlDcEpo?=
 =?utf-8?B?ZmovUlJoaWFEcys4cG5xUHczdERranJWNE9teG1RcGVUSTR1U1pRd0JRYlc5?=
 =?utf-8?B?SkUvUVdEV3o4YWpxekp2ZHhyZVo3M3lVQ0F6YURrc2pyZTNwS3pMTi95Tmpy?=
 =?utf-8?B?cXNwbUhuWGNkTE0vVzlhZ1dRSWN0WWU0VkNKbFNEOFVzLzU5M1FwY0FSOTdL?=
 =?utf-8?B?cTB2d1VldTBDcXIzKzhZQUNVTnE3dDhpeHFNaXpKOHZJTlIwNnM1Um9sUkJh?=
 =?utf-8?B?NzRKUGZEZG9pSFQyT1YwUWZjbldGZlI5MWtSNkY5WWZEdkQwdVdzdEpVVmF6?=
 =?utf-8?B?OTVRbjRYWTRHanNUekJWVUZqSEFTZ1pWNEw0VFlKR0ZlNXFaR1JwOWVOaVJD?=
 =?utf-8?B?S2xhRXZWVU80a2lFRTVTWTBiNFQ4OHRJelZOTWhSRW41azlValNFTjdlQ2Zm?=
 =?utf-8?B?TTdHblFQaEpKSlIyMWxURmVLbS8ySFZKZFJOckhBbVJrRkRrRkFiWkFYU0Nv?=
 =?utf-8?B?Mm1qUEgrOG8wOVdBcjBwWDNpNEhUVjQxNGhZc3loTjI4cTJDNWNUUUw4MVZF?=
 =?utf-8?B?ZkFsUzlXWDFVMDVONGVtUEc1cDBsbVpXOUxVbU1sdWIyK0tyd2k3WXc5V1ly?=
 =?utf-8?B?TVJvd2l5bnJPb3ZRWHBsYlU0QzQxVWNmb3JqV0p0S2FtZDJKZmVGdTcvWDFQ?=
 =?utf-8?B?enpNQmN6VEhKamZJaEJnTjRjYzRGY3hHK2VPdWVoaEZIS3REQ3Vpa2k1L3ZG?=
 =?utf-8?B?WlJxbW11NU85MTZBVEFuOXZZQ2hJc1hXZCthOVhxV29rL293VjJMTmdCb0sv?=
 =?utf-8?B?d0dGa0pMZ0hMdU92MDlRYnZ5VVVLb0hPSEtSbG9RL3hYMXNwbTM0QkhMeWNu?=
 =?utf-8?B?WXFTOFVXYlQvK24vMVBTNzQ1YWV0NWlESW4wOUR1L3dpZW5EVkdoR0VMVkVY?=
 =?utf-8?B?TUtxNGsrUm12eWNoMlRQOUQwbmVWSFBwbjJDTU9HcWRvK1Ywa1l3cUZYUU0z?=
 =?utf-8?B?UTQ5QzlwUURJMmw1VHJBUzlJWGhqdEQwZXhrYitCdFdILyt2TS9qNC9NdkZu?=
 =?utf-8?B?K0UwamR2bUJ1cFROVkkxeE9jbUUvTzdoSW1oZmF3ZUtWT1BYKzh0OU5lbndG?=
 =?utf-8?B?eUZ4OE9USy9rMDZDNnhvRjRZdmtmTnRhUkpyaVBWQTQvYjlCTFZTWG9SV0Vs?=
 =?utf-8?Q?szur8IKtTINiH?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?b0J1WER4L3FWWmlvK2lsV1ZCbVRoa1NRUXFrVVRVTit5WFdZeDBWREpEZzh6?=
 =?utf-8?B?Ykh4OXJ3UERVZURnaXJudEtaNGdIei94V1MzYTBtNzNSOFJWVVk5SnZzMHYv?=
 =?utf-8?B?NC9raVROSGhEcUxTQTU5Z2l5bjZ3U2Q0V0s0dG1pVFVIMHhCSG9xOWpWZDda?=
 =?utf-8?B?bXNEbGxONVRtcGNGR1pXTWlqcXFyYVBSODlORStzQ2d3cURsRE5JMUxsSjY4?=
 =?utf-8?B?VWtENE16QTBaU2o4VVk1Rjl5bDFOMGV5ZzMzdDdSREZaY3BNNEtWalFxdGR3?=
 =?utf-8?B?MUs5S2VZZkZsaEc4M0JZWTdDMzk5RjlaU3h4dnJnN2hCaUE5WXgrZDRjdFAv?=
 =?utf-8?B?ZnBmNnpsRVhVcXA2MFJ5eDN4anNpUFRkc3lNK2dKTTBuaTc2NTQ3TnFLbE5v?=
 =?utf-8?B?aHlHSElJUDBNZ3pRSTlNUTJ4cVpwTlBHTi90WkgzaTExMEh6VTFLMnJpSjNG?=
 =?utf-8?B?eU14QWh5SFByeXV0VVdVZG11a1RPa2h4VWwzN3VIbTA3em1kbFg2RG90OFlK?=
 =?utf-8?B?bmJiMm9QQkNUb0tlNmQvbUcyTDljbEN2OTRvVzc1Q0VWSWNDNERsSURhOERN?=
 =?utf-8?B?RHN3RmRYWEloclUwRTBRVUZFSlI1TXN2QTBtb0o0L0JWT0ZvUkpqc2NpM1ZK?=
 =?utf-8?B?Q3c3K1ZIR2luem1nMzhFd29FeitQcW91Skp5bENYL00ySXFrR2Q0QnBBOGxU?=
 =?utf-8?B?dGtDWFNRRDVHRFdkWUphWDNIMWVMSnhSaDVGeHBnUzdUSS93bHNGMDdJSEQ1?=
 =?utf-8?B?L2d3RFFqZWpEaUdXUnhHdmsxYWdlQnc0d01LbFAwdXcrRVM3djZybDRqOG5H?=
 =?utf-8?B?cTB4ODllRVBYeTlHMFduK2tKd3hObCtua0UxWmljbVcwWFJrZXExbVlCbS82?=
 =?utf-8?B?MTdpYXVFa0hwTDBZNm94TFZiVWwvWXZNZWgzazd2VlR1YlM1THBob1ZjV0N0?=
 =?utf-8?B?S0w1SnZiai82cmhJMWthbFlNZDlsR3gxbzFRUWU1N1hqWG5hQzVzazdhdVI0?=
 =?utf-8?B?VUw5RDFCN3NzdFhVYkVESHNCWUV6NEZHNkQxckVobE1sYWxxVjJaZ01Oc0Mr?=
 =?utf-8?B?SkFGalFjY2VrdVZYSjRRZE1aWFRDU05jSmY0bVpReWJDQTU0ZDZ1VjZEc21k?=
 =?utf-8?B?cFozaE0vdHdWUUx3bmEvczBzaDAwU2R5NFB5ZnhmS1BWSE00K3dyMXZZL1pk?=
 =?utf-8?B?OFQ0UUpXaXFNdnlaKzhQUE9EWk82c2VaQTJYbG1MbkV3R2tORU44ZC9aSzRi?=
 =?utf-8?B?YmJMdzYyUkxzaUJ0a0R4Q29QL1dxZXRkbEltRGd4QjR1UEFaNW5xc1RhMENF?=
 =?utf-8?B?dkc1WUpBTng5MkVSbHRpclZySC9idDQ4MWYweVVpZWJSNnVXZEI3NUM3RHhm?=
 =?utf-8?B?YVE1WmRZZjFxQ205MGVjZmFmVjczOUczeSs0dDdoTm1JTllqNWQ1VmloWVJt?=
 =?utf-8?B?aFpKc1Eyb3FYWUxNL2FNM2ZXT1dmL3FycnZCQ0poNG1wTzRnSHcyZEZPbDlT?=
 =?utf-8?B?aFpqTVFBQ1dtOUtVZi9NVkd5YXo4a2R0SWR0R2FSUUVGMkQxVjNwRFNldEFi?=
 =?utf-8?B?Q2lIOUV5eWF6Um1odXV4aUYyRlRiT0hjVnJ5RUNZbDBrWnQwek0rcUs0QS91?=
 =?utf-8?B?N1REQk5FNlFrYkszeDdnUjR4eTBFc3JDemUyVnl2SGJrNlkrOEFNdTVBQjlD?=
 =?utf-8?B?REN1K0NJRnVYeUhPbEVFbFIyN0ZNVWNqZitJaUYvUEVKa09kMVUvRlgwaGpP?=
 =?utf-8?B?aURTRHd5ZnljMDNrcHBlblJIYy9la3lvWHVERFN0a2FlM0JLV1g4SjkwRFpN?=
 =?utf-8?B?eXlnWUx1NjJseDZBaGljeS9oUWIzYy9adXZLZ0dPZm1RNU95bWZIQksyYTY4?=
 =?utf-8?B?WWV5ekJRb205UGdpRjVaQXp5OTZKMmVEM2J6MEM3QzIrSnRETWNYbGQxTity?=
 =?utf-8?B?R09qdnRsVFJ2and6dXFodnY5RlZCY2hyc1I2OFU5WU5FV1BRQ09OR2hTUzRt?=
 =?utf-8?B?Vlg4NXc0UVhJNE1yV1hZQU4xYkFjSzdoV1VqNGFRRTFsZmRRZWRXSjAyZXVw?=
 =?utf-8?B?RHRoNXM0dGVrTzBTWml1M1plWEQwOFB2TjB4L25ZdzMxOGhld0QrY2lrOWNz?=
 =?utf-8?B?czhlandLNW9ha3RQc0RsNW1xVFpVV0U3SVd2Tm4xMWNpTDBrdDl0VmtXWkJ2?=
 =?utf-8?B?T0E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	9G6eZNjl0edVZLKjska3TSZ6dyGyq1DvkRSddzbfJWQYIy/if1iWxFLkAdb+irZovLjAA63gR/h7ZOvqsf6o73kCZhaI6HG49eJVN0Tq4kgsLDdl01D9v6xvRXzBDFhhphugOE0tTApl4H0SxnwwHprRE28qANkZKDVsrxsRE12AHi3cyEqAuhSJhRsy5itpUJqPfW48ul0zoFjf70edyUlnV/B7RfYJEMYnZwNcbExKzxZakSuOIyLEbYRPJPOiTyl5mhQX/DMu1zDyHCnIP5rS1HJN3DC967AMzlVKB1f+E7ken3AXKQcbFl6imq7eLj9PGynN5W1NM2MCtP1m9Mc8U3bvZdblSTcq1Ntmtl72gvX+NcHuhHba8NDN+1MktNwRtV1tOqz3p+6M+j9UrBycrPQLjtDi8H4DMo8asjpwmP1eat4rPWUGUjTd7eVVGEaweyQ6Z92jW/eMIfFbvqrFRm4sJ1V4sis1fJqFIg6jX/SK7YfsYQqDFKlHgrKmMV/oKoJKpIjmkqcNMFbW2s8zSeG6QUtMB0HGaLZYF7PO7EaEsMweuhE6PI0bej8urZbJ1B3PKeaEPed4BSdfi2nkeTuLU1Bb2TF5RyQavz0=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 767a1700-9553-4409-62b1-08dd73ba019d
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2025 20:48:08.6130
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7t24sfhWVfxWNOzDc8O2bJRzcw8i3rNuYJIwsnbjx1lEqHBippS0cgqD8P9mHtPYN7dKmycSGnK2vWCXWhMQlJufYUveP5ddUBYNhWeCm+0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR10MB6020
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-04_09,2025-04-03_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 bulkscore=0 phishscore=0
 mlxscore=0 mlxlogscore=999 suspectscore=0 spamscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2502280000
 definitions=main-2504040142
X-Proofpoint-GUID: NAkSSXHDyeh7s6WNy6Wz9uoZ-hZGke0H
X-Proofpoint-ORIG-GUID: NAkSSXHDyeh7s6WNy6Wz9uoZ-hZGke0H
Subject: [oss-security] pgAdmin 4 v9.2 fixes CVE-2025-2945 & CVE-2025-2946

https://www.pgadmin.org/docs/pgadmin4/9.2/release_notes_9_2.html
announces the release of version 9.2 of pgAdmin 4, and lists these 2
security fixes as being included:

Issue #8602 - Fixed an XSS vulnerability issue in the Query Tool and View/Edit Data (CVE-2025-2946).
Issue #8603 - Fixed a remote code execution issue in the Query Tool and Cloud Deployment (CVE-2025-2945).

https://github.com/pgadmin-org/pgadmin4/issues/8602 says:
> When a user runs a query that retrieves data containing malicious JavaScript
> payloads, PgAdmin renders the result without proper sanitization.
> This leads to the immediate execution of embedded scripts within the browser.
> 
> Steps to Reproduce:
> 
>  1. Open PgAdmin and connect to any database instance.
>  2. Navigate to the Query Tool.
>  3. Run the following SQL commands:
>     CREATE TABLE IF NOT EXISTS EXAMPLE (TEXT_SAMPLE VARCHAR(255));
>     -- TRUNCATE TABLE EXAMPLE;
>     INSERT INTO EXAMPLE (TEXT_SAMPLE) VALUES
>         ('<img src=a onerror=alert(Payload_here)>');
>     SELECT * FROM EXAMPLE;
>  4. After executing the SELECT statement, an alert box is triggered as the
>     JavaScript executes directly in the query result grid.
> 
> Expected Behavior:
> 
> Query results should display the data as plain text. Any potentially harmful
> HTML or JavaScript content should be sanitised or escaped before rendering,
> preventing script execution in the browser.

https://github.com/pgadmin-org/pgadmin4/issues/8603 says:
> Query Tool REC vulnerability POC:
>   https://github.com/pyozzi-toss/poc/raw/refs/heads/main/pgAdmin_poc.mp4
> 
> Cloud Deployment with Google Provider vulnerability POC:
>   https://www.youtube.com/watch?v=V2WzCmRct7s&ab_channel=SYP

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

