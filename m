Received: (qmail 1463 invoked by uid 550); 20 Nov 2025 18:48:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1352 invoked from network); 20 Nov 2025 18:48:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=bwpvifc3B5NVsWcMmA07wFWCvlgOkahJuCQmonDyykg=; b=
	SkVSc30/0St/Tjge2W9Tf2xd3/EqutHK2yRAM9k5l2izMrmcc6x6rEbpsGJIL8gO
	PlE9oB4GRlHLjo1o6CAQk4uaYna8XSgIPlEK4/04pqgQG1CuOp+73d/0ozQUWmIt
	ttwBI9Bsjiq8w3pBL9opFJhrbrejlq88WlDbBNOkhaaeXdRPpRzMHhDDj21laXFd
	6fJGOYAuFn0hL/BjRm8fsL5cPHE5tCTiFJ1LjZd6L59ot93WfVPtXcauQPclxExs
	i6aPEMV+fVAKrLJ/CaY6xUwx2FkxdUsgcTEQkUBBW49RfEkOLsdnRZT9XHdhEr9X
	gJ/PVZg/b1S3a/1eodAV7A==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W4vlnbM8PajADXGeEfEtXJ44jdCUBYGaF2oG6J2v+jmMFDcBLx7GI6uGqWx4Cfr4Sc9PcGwloAbtcE83TuFgG4eaiu1NVzlVfbp+5kxlFkloME+Q6ikJPF5E1R0yY82kZ7DVivUFSROAN8NxvSYjKN2xhzOkMDWdfb0ERPKwbb8RPrY34dvlwaBbN2wd1gJafZHbTCyjDAho98qSeYNtntCzVlnvtys/Cqg5yyoDITwaOgsnuSZCkLpIBCLfd+BLBctyrl/fvyZUDYbC3fX7H90yhLrsZ7ML8aZWWBqRcRg9ANSgv4AQXxPPaECooY0HiWXxOinyPenvbWAOwG2Ksg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bwpvifc3B5NVsWcMmA07wFWCvlgOkahJuCQmonDyykg=;
 b=KbAU3+v9U8X7FsSX1QUSUQIw9gMrePhq3+0qsOckMDRJQS57wzXxIRXZCwMrTm9aQ31lNHJGnCG0rnOSkobRU8FQ4GAdQWT0V6BO1UEAXoRVNY6dJYe4WzyBv5EKROPJGQpcqUP41I6cj4Szf6Z9WCuofsCmq5ZcRT4ORzqL/iFQCU0BIdK8UK4fwuWPww/tgBakbx/7P9DZI60o8iaHgRpGjsLgJ24tIbRaqmqNtI/TBAiMs6n1ev+qZ5Ed27pyhAc91W+DK58t3h19CUZYaY0oEr7skKjzXZJ/98fvygXNbieS/9vpYO7jUHaJPfM0B3qQsadLftu0Ehn1GRlxrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bwpvifc3B5NVsWcMmA07wFWCvlgOkahJuCQmonDyykg=;
 b=SCrJIgLqU3WaqFpZ9XfEhc2TuiHoiIoIZlSH2+fXMXcZzZNW5v4Jj8lee/8ythc2JLBS4qcFtSjKtSomDSZUfktbGfiAhsvWX8996g4GLhfO59WJ36L1sZTdoNWmL2ktJBSJhCUNjlmYbqiROXQm8iptAtd8N5KJco/xgPblDhU=
Message-ID: <c6cb9061-710c-49aa-80ce-62045f358a81@oracle.com>
Date: Thu, 20 Nov 2025 10:48:38 -0800
User-Agent: Mozilla Thunderbird
References: <87h5up76nx.fsf-ueno@gnu.org>
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
In-Reply-To: <87h5up76nx.fsf-ueno@gnu.org>
X-Forwarded-Message-Id: <87h5up76nx.fsf-ueno@gnu.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PH8P220CA0021.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:510:345::13) To BN8PR10MB3396.namprd10.prod.outlook.com
 (2603:10b6:408:c5::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR10MB3396:EE_|SJ0PR10MB5630:EE_
X-MS-Office365-Filtering-Correlation-Id: 39feb0f8-4774-4150-cea8-08de28656c4e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?clk1WVNVejN2K2lGbWlVTVdaVUd0Nlo4ZmtCVlJsclNUdEhVbUE5dVMrMkJ2?=
 =?utf-8?B?MlZsR2R0dDYwb2hKTjEwcktqaGU4S2tBUkxYQU1lRU5zWmFUWVpaY29lRmxU?=
 =?utf-8?B?bG42aDB3SEx5YjNhalRxejk5QmNJbC9CUFNSYk1VODk1blhCSUdJN045TVVU?=
 =?utf-8?B?d2tuNWhsdEpwZEJGc1krYWhpYXNQS01ucXlIRWZoL3V4L1VKVVcwVzZkR2ZI?=
 =?utf-8?B?eU5rMnhSQTQrSVRLbzlVc0Vpd0VkNTU3bVRyNTZkOGY4NVYwY0VIcFl5R0VB?=
 =?utf-8?B?alBQSGZVeXZvOE1Wczh0L3FKYjJZSmRsWTNTTlV0UDB0WHcxcXBvMXUvV0Ew?=
 =?utf-8?B?Nm5iVnVBV0UvK1FkL05VR3BMTmhlWGRNTW45TmhtUWl3bjQvTktqU1ViaU5B?=
 =?utf-8?B?cTVxblh6Nnc5QlVNQnZRSWRrT2hSdDFRUjE2emJNNDFHV0dEdDExeXB0Y3Bz?=
 =?utf-8?B?YkgwNnBjMlNuSVovakcwbitZWVpIWGVEVFhGWG9vVXpHS0pZNDdGQkMyQ2Zm?=
 =?utf-8?B?M1VlQ3AxS2poaUdzbjdRZjJiZDduaG1pZXgxYWhIR1BUV1FkM1RkcW1QVUI5?=
 =?utf-8?B?VEU5Q1kwTWV0ZTFZalBxemhiTGNBL1BmN1V3NkRuMUNzcU0yOG5VUGt6dEZQ?=
 =?utf-8?B?V3IxdE9SY0ZRaW9DZzMyZlErcDF0M3hEQUVKTnJ0cmZPWFBBNmROMUs1b2xR?=
 =?utf-8?B?QUoxcnRKSXJ2ZFdpV3JaVCs0RzR3ZUJRV1ljZmRraWFMSUxaa1BST1V0aUtn?=
 =?utf-8?B?cGNoYm9EdjhUbGlXa3ZERlM3WCtaRHkwdm1BZ2NGNE42K2tVcWw3S3RDZXdS?=
 =?utf-8?B?NHZpbFVsaEF1Vzg5RXFzYXU5aGswaHZqY0NDaDdRcTZGelplRS83U2p3aXBW?=
 =?utf-8?B?WjB3ZWpMeWc4S3h3U3JzdFlvMWJ4SDBYVWpLUGNzS3Y2V1pIYUtCUnRnMzZB?=
 =?utf-8?B?RzV2YUZ0TUxBNlBJUnFzWVIrSlJwbEsyZG5XTmFNUkV0SnB4QmR4ZDhZeDlF?=
 =?utf-8?B?Q0dKSFM1S056OURVZzgxZGtjeGR5Y3BMdFc1YXUxLzBiZ0VxME9HZnFvRjVQ?=
 =?utf-8?B?WHhYVlVwTmxNR0NJRDlyQ24zcFdjRGlvdHpWL2VReDdPbmJyNlVWdVZETm9C?=
 =?utf-8?B?d05ISnJmMnlrSnhOelBVSVlNTm9QWHNyRGNIRkNIaVVJbnVhNDBzeHFsbmpM?=
 =?utf-8?B?MzBYT3pyK3hCMW9EQy81eDNMRkZKemhJdnJFV2tsNVl0cDlLQnhQNFpUcFM5?=
 =?utf-8?B?SzVUaVhzUDl0ZFpTLzQ5dUVRbFAzNHg4QkdVWUpucXgrOGdMUEVaUThXbzZC?=
 =?utf-8?B?WHRBSVNJQzlSd2NFY2RXQmhiQnJYU3BGZndBS3Nwem04TUZ1L2ZDUmFrMmNR?=
 =?utf-8?B?bzhySGM0MUtIdzU5Q0ErU0RmR3JmK3E4SWZ0MFdIa3RNOGV4YkVJYWNLUFNZ?=
 =?utf-8?B?UEY2Vnh0bE9rQjZscjEwK2tPSWY0Vkh4aTFwcmJURVdQaVJUcEc3bTY0NHM5?=
 =?utf-8?B?NHpSdGZ4cDltdUszWDRwQVRQTWJLSTYyc09KeXZHcFJUaHNGSnVacUZFU296?=
 =?utf-8?B?WDg2MCs0T1ZyVS83SElpTFpTNGRnRTFEeDZIOFcyRjdhdmxaL3RSZE8xVU1C?=
 =?utf-8?B?eUpnMXA2V1gzdHBURmF1d1VtVkgrdElodnYwZjcxUkMvbkN2UTN4cVhSWkoy?=
 =?utf-8?B?Qm9mWHdjTjlvSEN3RTdpYUVxUHZRQWUxSDQvaXJMYVlGQmtWOVlUWGxiRUxZ?=
 =?utf-8?B?YllyR2hvZk0waVJaQm01aFY3N3EwMXJyQ0xsVHlyTW81cHBaQUFuUmxrWTZF?=
 =?utf-8?B?VmpOb3dZZnp5VXQwOHlrU2RJaU9PU2NRamdvU1FUME5DeUxuUzVLQ3hycWFz?=
 =?utf-8?B?ZlRnUkxkanhTM3BlcXVDbjVwVGhNckFqTEs4RnlVbkczS2c9PQ==?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR10MB3396.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?ckgrY1JFZDJNUDNZZERXTW5hT2RqUW9Va0FES1lpMjBPT1U3aFVFTytCc1lC?=
 =?utf-8?B?OXgyRFZTVVIzb2I0SVBPcEx1M3BzcyszQnhvdEU5L2hxVkhxOTNuSEl2NUJv?=
 =?utf-8?B?U1ZqVG1mc2wzZG0zcnFXbnRMclU0NmhMREhCRTl2QlhMTXVsVGxiRGlXbGx4?=
 =?utf-8?B?S2xoWFVuNkNyc2MyR2pqcVhRNnMwQUZSbUVkUktNQkorZkR1dFhFdkdSNUFS?=
 =?utf-8?B?Mjg5Uk1aVzk1bjBSU0dFa2djMEo2MGVwNDhvblpkTDhBZTRiRmg5MHhVNzRy?=
 =?utf-8?B?K1kzd1dVaGUvcVJJNGYrZ0lVUzlqdHUwTDdjNElWa0VnR1E2SzhqT0lWczNa?=
 =?utf-8?B?cFFybC9tWHEzSDhPREdYMzN0V0pPeU9HSmdxdUVwQ0pON3R6ekFYYko2NTVW?=
 =?utf-8?B?UEFhSC82VkFJTWg2S0tHMHlJTGEwN0FDMjZtUVFjL2VHbmRzd2R6b3F0RnBR?=
 =?utf-8?B?N3E3cUJjMWtza2ZrSTZuTTFNNkoyYzBaa0tuNEJuVVYxem9qT3M2Y01rajMr?=
 =?utf-8?B?TnU3dHdia0EvM2cvdkhJN3RtNDVxandub1YzL1pnazVzQU84WFdadWMzd2t6?=
 =?utf-8?B?U2hxUVMybzdJUmpYQ1lFV2ZOWisvWUdVTml6cjVnSmJCMDhyRWppZTZzZ2t3?=
 =?utf-8?B?NlFvbGZVdEtGcXc1RkdMWjFKZ0R5TWhiRkpBYnNBVHcwMlZkbHN0MGVKV1pM?=
 =?utf-8?B?MjJFaGhQODBjYzVPenR0REF0NEJxUlJYWk5rUlpiZnlENE12ZzRROG5GM2Ny?=
 =?utf-8?B?TlVwT2lwZk9ISVNxTE1CZEh5WkxiRGh5NnNMRVh4Rk1CNXRqTjZwS3Y0MnlT?=
 =?utf-8?B?Ry9XNW8xSFhjbk44eGl0d1czYmtmbDhDaWtTN2lOZnRMMEFjdXliZkM2NHlo?=
 =?utf-8?B?TE0zeWhaanJwS0Y0NGdzZ0I5SHZMN1REM2hTOXZGaHFORkthT3FXTFBZWnN5?=
 =?utf-8?B?dTBGS2Fyd25kYU42cDl0NEp0aHBRZU9NQk53VVJyY1JOeHlaVy8xbHhnN3RB?=
 =?utf-8?B?eGczbE5oeGhzakI3aHpKMmVaZTZUWFQvekVkNk9aWFcxY0VEdWxSMzh6R1hp?=
 =?utf-8?B?amF3Wmg5R0YzQ3JIQUgrczByT0g0M2NNK3cyNEgySFNENTJqR21Pa0ZCUjN6?=
 =?utf-8?B?RVVuY0pOZ0sxbTJKVUN4NXI3dW9yd3pTaStIS1ZoaXVYZ09pSk9yRzZnM3g3?=
 =?utf-8?B?eFdQZkk5S0RYQ0drZXlhdGhKOHNDWlduQlF5SzhIaDlwcEZZcUNhNXVxYXFP?=
 =?utf-8?B?TDFmd0ZhTXVQT2M5UTZxNTQ3OVB1NG1sVFBweFdycUVpa3VOUERFanZkdGNV?=
 =?utf-8?B?Y2t2VEhKakFHa1NDTHY0WkkxZTM4dktINjk3NkpNU3F5a2JudVlxZE4zbGJI?=
 =?utf-8?B?Y0xRTWNubi9GTWdXWGl1aVhFc1Y3ODB6Wkt1aHRmWTlnSk1oTU02cm5xL0tO?=
 =?utf-8?B?citLTS9BSis2OGZCN2NKWUV2N3kwdnFGY3NkNkE3bE5VeHZFUjFIYzdxTmFG?=
 =?utf-8?B?MnF2TE1yMEliTTk2Mmt2R1FQdDlhU0xKTFE5b091bkpRRHVGYmw4dDErUVBU?=
 =?utf-8?B?L2RTbGpoTnVWdVlLN2VGZkI2cXVPbHgyNk03bUdnL2xzTkJQWnF4V01vWHNE?=
 =?utf-8?B?bkV5V2l3UVBMdjdCUytHU1ZWUmVoYnVhczN0OEJzdHp3Q2EzbGVnT3A1cU41?=
 =?utf-8?B?ZEdkMHNMU05Eb2MxTjF4MVl0UXIwZ0JmVms2aURvZThLY2pCR0ZIeGJFU3R5?=
 =?utf-8?B?b25UWTJZM3IxNjBXVWZwVmdISjBPcEZ5bjBaMDcycSt4Tlh0M2JFZUtnNFFT?=
 =?utf-8?B?TXdKdVJKTnE1ZlNoZHoramloSDZoTDF6NTg5d2V5Y3RLZ0xCcjlmNmJ3cnN4?=
 =?utf-8?B?b0J5NEd6NFFralFPRjRvL0t3NzNNQ1FoNGwwbkVNMDFPNGdBVTRmM2xkei9M?=
 =?utf-8?B?V2FRc1dzN0R2ZEs2SnFQbnh1SklyZ244SFgwUUZHY0NLRGpiSkZSZ2lkeGVy?=
 =?utf-8?B?VTU0SGh5QXpndFQxQTliOWsyY3hyVmdZdTUzR3h1UVVERXRkYjNzUDhKNzhQ?=
 =?utf-8?B?ZUZBWlNpeG5GeGJ3eUpVaDZQQWd6alJPUnVYVHBNb2pTZkh3bHdaQ0pWWThT?=
 =?utf-8?B?Z1BVOEUrdU5JMGtocEQzcng0RGN4VytNTjdLZUVMc1U1ck92elFXTjhkSG1o?=
 =?utf-8?B?UFE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	y9uVer2qYmheisjlvaAJQ4hJxPmlWbWBpVl0azavNutvUhe6Jr/JCDdPk9yq29amrUHuIAI1N5YEtwHYYL/20DiH/b+gz2Aidqcf/1A7T1EcZ3/eKbxjBBVqC13yDGaKmXJ662dJIPaa+W8X/Rj3YpB1GAQhWhBsDYzzLZKNdVn8pSCKpKj+SQPW636oCpyA8vt6NQb0A0tFEP2d8qQaU0tHM4IBo7quPI/vFpUGU2vtwnkIs6ySrZM6p/v2D+XSTd+mVq3izdeEIZsxhSigzpAzHyu01Dj1Sl1SaeIq6LUf7YUhX63p3ruFm3nu7kLBb37X1F2dmULVD05eaC41xa4UFTYHml8cH1o9/+Ns3Q3WvQDd+TDnpI+52fq7lU0UeukCPtizve2OGE4ZG2Um4TEgddHwXTf6KZrAZlr+85H7u5K4mRtQefWkT33JrtJiL9RIDUmASiOHCZFfxC03SQ9cZuaasuI2KXF6J9w11yPk0OdVX6AxDNhkUArNKXfL6Ml0glywImN1isfGKUu/HcDR5PCGL+E/WRsUs1wFmOaHBwKfRi/AbDV96ASvVmN2O49Q3Q5E8zztonOnT7peLjhtkXzO0YWifl33gDXcdUw=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39feb0f8-4774-4150-cea8-08de28656c4e
X-MS-Exchange-CrossTenant-AuthSource: BN8PR10MB3396.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2025 18:48:40.9849
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OORoezmzAyKOmcuG7PTPu6HTa5i5VjDaBGkcpomkn4aGr2jqGy3WPNZaaZi/baIiA0q7tlPDwPPtv+rLpZ6XVv7CCEzXzMwOVc1B8X2+DUU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB5630
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-20_07,2025-11-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 mlxlogscore=999
 suspectscore=0 malwarescore=0 mlxscore=0 bulkscore=0 phishscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2510240000 definitions=main-2511200128
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIwMDA5OSBTYWx0ZWRfX87eDuLChvooR
 65e/sJ6A7iZwAlqGw9do5aWlzjMigvF/ObdQVE4Cqtpf3apYE8XvbjYJb3V9nWdWtdBz44Ukhr4
 dqe+rtOCUP2n4+/G2xB4O6JsTI6xPDYk3uLUsMqiud8ziWG+wXu9Mzq2g95Noa+y1pEcyNh6TP3
 fX3wnSMLBcUk3BwYRgsNy8XdUZNXuvInxMYblvHp41NDq51cVEw04mjrMcvkrwuObO30bigdHiT
 xosxYuHLnEfb5e9kZcjeMaqQIvrFjnGKpJ6bqp3seMdZdkDOMabCtBeuL+sOu+lkVzyK2xiBnA2
 jdBeRU5enZPWDdb5JN1phEfI/sRCGludJz84a9DrAO5BRLukzAr4MoxCxrgikAXt8Dfb8unsl4Q
 t5jVxunD5ZYg7xyK+WoYwVPXmilhjQ==
X-Authority-Analysis: v=2.4 cv=Dckaa/tW c=1 sm=1 tr=0 ts=691f628f cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=gHvrztcjAAAA:8 a=p0WdMEafAAAA:8 a=GwUem0DFAAAA:8 a=mDV3o1hIAAAA:8
 a=izy21TPNAAAA:8 a=6MtP5LDsmS-X2GVvusMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=yQjQ0J4DlTkA:10 a=J-vHlZUkWQ0A:10 a=T0kky7oGOrUA:10
 a=WxcTniOcZjVTbgxX5Dew:22 a=r0dl5i_q2XGqDZkti5dn:22 a=3x-p4aTSueypHCUDb2TH:22
X-Proofpoint-GUID: VZp_Lv7OUxC-ww35NYLQyc-sy1wfS_Lb
X-Proofpoint-ORIG-GUID: VZp_Lv7OUxC-ww35NYLQyc-sy1wfS_Lb
Subject: [oss-security] gnutls 3.8.11 released with fix for CVE-2025-9820

https://www.gnutls.org/security-new.html#GNUTLS-SA-2025-11-18 reports:

> GNUTLS-SA-2025-11-18
> CVE-2025-9820   
> Severity Low; Stack write buffer overflow 
> 
> When a PKCS#11 token is initialized with gnutls_pkcs11_token_init function and
> it is passed a token label longer than 32 characters, it may write past the
> boundary of stack allocated memory. The issue was reported in the issue tracker
> as #1732.  <https://gitlab.com/gnutls/gnutls/-/issues/1732>
> 
> Recommendation: Given the length limit is imposed by the PKCS#11 standard,
> the application should check and reject longer label exceeding the limit,
> though this was unclear in the GnuTLS documentation. If it is not feasible for
> some reason, we would recommend upgrading GnuTLS to 3.8.11 or later versions.
> The issue could also be effectively mitigated if you compile the library with
> -D_FORTIFY_SOURCE=2.


-------- Forwarded Message --------
Subject: gnutls 3.8.11 released
Date: Thu, 20 Nov 2025 11:57:06 +0900
From: Daiki Ueno <ueno@gnu.org>
To: gnutls-help@lists.gnutls.org
CC: info-gnu@gnu.org

Hello,

We have just released gnutls-3.8.11. This is a bug fix, security and
enhancement release on the 3.8.x branch.

We would like to thank everyone who contributed in this release:
Alexander Sosedkin, Alistair Francis, chenjianhu, Daiki Ueno, Daniel
P. Berrangé, David Dudas, fundawang, Hannes Reinecke, Jiasheng Jiang,
Karthik Das, Maxim Cournoyer, Samuel Zeter, Wilfred Mallawa, and Zoltan
Fridrich.

The detailed list of changes follows:

* Version 3.8.11 (released 2025-11-18)

** libgnutls: Fix stack overwrite in gnutls_pkcs11_token_init
    Reported by Luigino Camastra from Aisle Research. [GNUTLS-SA-2025-11-18,
    CVSS: low] [CVE-2025-9820]

** libgnutls: MAC algorithms for PSK binders is now configurable
    The previous implementation assumed HMAC-SHA256 to calculate the
    PSK binders. With the new gnutls_psk_allocate_client_credentials2()
    and gnutls_psk_allocate_server_credentials2() functions, the
    application can use other MAC algorithms such as HMAC-SHA384.

** libgnutls: Expose a new function to provide the maximum record send size
    A new function gnutls_record_get_max_send_size() has been added to
    determine the maximum size of a TLS record to be sent to the peer.

** libgnutls: Expose a new function to update keys without sending a KeyUpdate
    to the peer. A new function gnutls_handshake_update_receiving_key()
    has been added to allow updating the local receiving key without
    sending any KeyUpdate messages.

** libgnutls: PKCS#11 cryptographic provider configuration takes a token URI
    instead of a module path. To allow using a PKCS#11 module exposing
    multiple tokens, the "path" configuration keyword was replaced with
    the "url" keyword.

** libgnutls: Support crypto-auditing probe points
    crypto-auditing is a project to monitor which cryptographic
    operations are taking place in the library at run time, through
    eBPF. This adds necessary probe points for that, in public key
    cryptography and the TLS use-case. To enable this, run configure
    with --enable-crypto-auditing.

** build: The minimum version of Nettle has been updated to 3.10
    Given Nettle 3.10 is ABI compatible with 3.6 and includes several
    security relevant fixes, the library's minimum requirement of
    Nettle is updated to 3.10.

** build: The default priority file path is now constructed from sysconfdir
    Previously, the location of the default priority file was
    hard-coded to be /etc/gnutls/config. Now it takes into account of
    the --sysconfdir option given to the configure script.

** API and ABI modifications:
gnutls_psk_allocate_client_credentials2: New function
gnutls_psk_allocate_server_credentials2: New function
gnutls_record_get_max_send_size: New function
gnutls_handshake_update_receiving_key: New function
gnutls_audit_push_context: New function
gnutls_audit_pop_context: New function
gnutls_audit_current_context: New function

Getting the Software
================

GnuTLS may be downloaded directly from
https://www.gnupg.org/ftp/gcrypt/
A list of GnuTLS mirrors can be found at
http://www.gnutls.org/download.html

Here are the XZ compressed sources:
https://www.gnupg.org/ftp/gcrypt/gnutls/v3.8/gnutls-3.8.11.tar.xz

Here are OpenPGP detached signatures signed using key:
462225C3B46F34879FC8496CD605848ED7E69871
https://www.gnupg.org/ftp/gcrypt/gnutls/v3.8/gnutls-3.8.11.tar.xz.sig

Note that it has been signed with my openpgp key:
pub   rsa4096 2009-07-23 [SC] [expires: 2026-06-29]
       462225C3B46F34879FC8496CD605848ED7E69871
uid           [ultimate] Daiki Ueno <ueno@unixuser.org>
uid           [ultimate] Daiki Ueno <ueno@gnu.org>
sub   rsa4096 2010-02-04 [E]

Regards,
-- 
Daiki Ueno

