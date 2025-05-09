Received: (qmail 14111 invoked by uid 550); 9 May 2025 15:51:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14082 invoked from network); 9 May 2025 15:51:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=lslCnUBVu+k66Vdw
	fTLD1qIUO8FRzX7AMpAvXWv1PM8=; b=XCkJO4LsU0jeAwQa+jyrnNz4GDU4Pp3T
	g7vs3GsKiUau61SXGOQbsI8stOqOHiqsp4CFU09oFJAZudA+To6P8whD5dkkAcWJ
	gYYEZbzk43P0XgQlrhtTz+JZMDdkPJSjhgkyO7KkpDNndYk23ffSnz6o6Ig+JIuL
	fgse6xfpqzQgAtoti+q/BUbxXxcxHHU8wzT4JyEOznccmU7hmmJbgTBIydlr2Dxf
	NYB63WMK5OseobBJHrMw3DURONyixK3Hv9q0o3cWEqwZlqjroz/25Qjs8Z1w+BJN
	6C5AbCLf9QKR1bU+Woi7cwxbN5uableNytn9wdR1ZAqpu+aebGXMPg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PrdAkyMSOJZuVcdVs+HQ3Ri8mBr86c7xmuWKr/YyGOw3KfMyf40p+ySOO+KQpaeZLOA+Y6YP7fI8ZYDrRefCv78qnHP+tHzutj0FrdJ7dl/Bt48wKuEvolEUuU+UamP1TgtgeHPZ81GPGiI0djCpwWAMYPUHZeHVvOC6tIbMPFT/1wUmde6lf36gRutLGEsjXwrY0cND4oOiKeSUoQL2sVkSz6PIo4kYzBON9HJnSShlXV+UbT1rl8fq7z6w1FQMEZfvNUkJA0fsTe8Y+Vp3UNrVCTNCK67IBNy+Tbjf0LrJUjW6nRemIox4I/n4NIjnk7xvf0lMIahYSYBlsnRFuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lslCnUBVu+k66VdwfTLD1qIUO8FRzX7AMpAvXWv1PM8=;
 b=wvO3V3MfMqC9U5hlkqZWnU/kaOqIs5D2iOFnDZQkg/lETVRm3UGJfCaWyUAwlhfWdnxy5gOqk2e6rMCE/UnIcfOI9X4WRmzXf20G0WpJKsXYhPg5yssvZ6Y2NHmtXeMbrO0WpNaZ1vQizSPaodedovJ91J1Qo0MzXj10GFMzORtb6msW8S1TixuussFtAs5dPynC85CNSVFchQ3e0OKHxy5JrzfOxBrDTAznWIueBeGsevaTRMfSNbrr3FZW+yH/DGLzHzNvhPjDNS2nrYr1WWaPweD9AfE7/OC6sNMalTnZ51UGQHpZvmu//ewTPkvardYUiayStUaU/oUhKdVXQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lslCnUBVu+k66VdwfTLD1qIUO8FRzX7AMpAvXWv1PM8=;
 b=Pyyoo5VpQPTnoSQzQBQGBL4lYHwtrekDzOA2T81j0aEE0t12dLdv5uKTl2bG1sGbBUBQZn2foK+7HseHUwk1W68DoR5MK290srpxqGf3nUPzic3Unp31gRdum82M38jSe7JS0iBy9ElPE6wFxKxQD02liFbSieHb+GdZeGgJQZQ=
Message-ID: <38844bb7-2fb5-43fc-bf12-3808a35ba657@oracle.com>
Date: Fri, 9 May 2025 08:50:46 -0700
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
X-ClientProxiedBy: BY1P220CA0019.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:5c3::15) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|BL3PR10MB6140:EE_
X-MS-Office365-Filtering-Correlation-Id: fb5a9524-d4e8-4719-2abd-08dd8f114454
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?QmgyWWhLOGNHL1FiRE9mUGZvLzZwdFBEZjJpcnhHMWovdXJNblhKUHhZMVJa?=
 =?utf-8?B?RW5mUG0vRmp6U05lbUozZ3B3Y0lqLzgwMEQ2RkhyLzJHdmppNk5zcU13VnV3?=
 =?utf-8?B?WG9WMzVoU1hXRWJIaFd1d0VXK3NHemt2Nk1UYnAvakF3ZGRmcXYvQm5US3F1?=
 =?utf-8?B?em1rcElHMUY5dDRxcHVxMDg5aEE5d2RKeFZJbmw0ZGVSeHh2SVBnU0xpUFJ0?=
 =?utf-8?B?L09xL2FHak0vQ0lqQXY2Sm1Ybmx1b2NEcG9VZkhvc0UzeSs1cWp5MWpIMGFt?=
 =?utf-8?B?Z2lmZEk1VkxLNzQxdUdsMWFoY0xTYk1kb3V1VkIrOVdrTTRReWVTYnBzcVYv?=
 =?utf-8?B?Mm14OWdtZDNkRDVrT3gydDgrak9WNnRDWGpNcWNBeHM4eUVPYTltTDhvTm85?=
 =?utf-8?B?eGwrSGpUQXBmand6c2NvdTVkUzNBM0V6elNvcVlxNEpvOHg0Wjg2RlZNKzE0?=
 =?utf-8?B?S1lJRWlNMVI4YmhpYTlYRFI2c1Nvd3UwdjM0SFIyN1VoYXdWVWF5S3JvVk9B?=
 =?utf-8?B?aEpCU0dZR3VCd3N2MGFLTTcxVWE3UEp5dTh5M294Q0pjMDJhSit0dk4wendD?=
 =?utf-8?B?MHczWWNYaEkycy90V1pTNGQ2NkdLcTdkNnIxdkZacStDbmFxY0diMEpvQkZo?=
 =?utf-8?B?OU9rdURSQjEwS2VWL1c1T1ZOZ05nVHhIU0U0TW1iellqMkM2aHhhVmdQVVRi?=
 =?utf-8?B?eFRWMXlxaUlLVldyRlhUemxKV3VnWmxxYTJ5SzcyVk9RZXBMTXRyQWdZREZt?=
 =?utf-8?B?WE1TNDBLc01QWXN3THpwYnlCYVAyYk5aTlUxN2VEUFcxQ2FpOEtRYXpHVldy?=
 =?utf-8?B?SFo4NkZRK01IK2tmZjBqcE9MMXByYlNPdmdLckRNMEF2ZW00Z211K20zYWpS?=
 =?utf-8?B?N3RNc0NTK0s1b1d6MmV4NHRaQlROREp3WEtQcnZGS1l6TVdhUXB0ZDNZRHNL?=
 =?utf-8?B?QVVhZlk4MXA1MlZIR3pHRCtITXZtN2s1Yjhja1pRY2JMcUdWTitURnY5T01H?=
 =?utf-8?B?WG4zRHM4aFkxNVZRcFZPanVsZ3BRSEpWSFREaFZNeWMrbUs2ZFFXQXZQYzBR?=
 =?utf-8?B?dFJBZ09ZNS9maWQzeEJDMGFvanpZdXNLdDF5STd6eElNTHIxaGl5ZXpkd2Nq?=
 =?utf-8?B?VTA2YU8wanNMVVZQNEl6TWI5NmtqNU5nOFpmSVdqSjVjbnErN0ZWekNLTUVP?=
 =?utf-8?B?ckR0aDVDYmhGeG4zd3lCcXRmTHY0djhLS2FRUktvK0wxYUxRcnp1YXMyMG54?=
 =?utf-8?B?VFRVWWU3cVE1RjBrcko0dE1BWEpPRlRyWW81c3FmVFp1SU9HMWhMNHBmaS9I?=
 =?utf-8?B?dXJxcGE0czNkQ3lycUd2dTRmYTgvL2E0QUEwSFpOc1Fyb1NwcWV0eEpjWWdp?=
 =?utf-8?B?OWRJTDVQaml6TzVicHkwb1dONUZCRkFXRm9CZlVWb0FaQklBa3NzY2cyZWZC?=
 =?utf-8?B?U2ZtWnNzYy8wMlJuTjluSDY5UUdDN3dTL25hZklTTGwrVWIrMWkyU1B5aWxm?=
 =?utf-8?B?clhPR1pra3hxQUZxSFBPNnA4MnQrUHJJdUtod0hpVjhhdEc0elJhbzJPejhz?=
 =?utf-8?B?SWF6U3VVWWdiT3QyOWhRVC90UDlpR0tFZ2NZWGV2THk4U0F4VDV4SEthTVZo?=
 =?utf-8?B?ckhKeGpjcUtOY0pXSnBDdUdXbDZuT1FNUU9CeGU4UjQ4OEk3VytJQzN4NHRU?=
 =?utf-8?B?VGMzVmFiME1TTzQyODFjWXF6eDZ6VjE3SlpzVTM3YjVwSkR5U0ZpSUMxOUFP?=
 =?utf-8?B?Y3cvWlVkc1NYdHdLYnVSS1FDTWt0c1Q5VWxONjZUU1BjRWxPZVpadE9BY1lt?=
 =?utf-8?B?S3FHQ0I5UitDbXlaVWI4cWpSSlBKdkZsWU5DS2I3TlFLRldFbUtYTCs5WUNU?=
 =?utf-8?B?eHQ0TGVyYWxVT0RzUk9NMktrbWZiZ0NCZDZhSHVnTU9yYXJFd1JObGZZeklv?=
 =?utf-8?Q?vYVvkIppAQc=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?ZzdIcXlwOFFwZ0NlZEFzVjZzS2JKSGd2dnJwTW5uMWpXeUVET0V4TC9RMmQ4?=
 =?utf-8?B?MFhqTkpkRW5uLzRhSFNQZG01RDl4UkFpbnI5NytsbGpoLy91a3c0RS9PQWRk?=
 =?utf-8?B?ek41MmR2QU55N05zUitGaHNLbXV0enc0OWg2R2lzTGp5SUZGblV4NGw1QkNU?=
 =?utf-8?B?clByUm43QzM0QmlmL2JIQzY5eU82ekIxLzRwQ0xDcXVGYzVZYUtlb2tFRity?=
 =?utf-8?B?cHhPemw3MzdBRFE5b2FwV3dKTzV5QnZ6MlpkTGV5NHVxZEIvcnlGVzNBKzhj?=
 =?utf-8?B?Y3dSUm9uNE96bENNK1BrQi8wSHdFRzZTSm1pUjQxQ1pmUUcyYzZScWNEVkto?=
 =?utf-8?B?ZzNka05ZWFNCNTQySGZqUElqL1JiTHQ2TVpqdGI4TWVNVFF0RDRTRFdQeXdi?=
 =?utf-8?B?WlBUTWp4bHBOWW5BRW1xV3laK1ViVUh1bjZRVFh1bEtBSjVqaHZHa083L0Q0?=
 =?utf-8?B?WkZBYUpwYmQ5NDRuM1RSV09BNERtU3RUTXV2ZFltUkV3SkJDRjZNRm45UjBs?=
 =?utf-8?B?YW9XeFNiYUI5QXEzbEtPT0dQVkVKeGxZSE9EbHZFNDU5L2RQbjFLaFNhRHlw?=
 =?utf-8?B?T0dsb01oN0VjWFY4SllNaDJrbEF1QVYvaE8xY2N6RkNrL3VjVzl2YjhjeS9v?=
 =?utf-8?B?UFNoR2NUYzZ4aFdQZVB1Nnh0c3oreVNHemxpL0ZKcEVXQVBocVFpanB2VWR6?=
 =?utf-8?B?T1dXRHVvTHJrOEtIWDVXN09kUHZUK3N4aFU2K01oL1JJYWh4M1JBSzN2N0RN?=
 =?utf-8?B?TW9zeVBhMnp6TjlmWENlUEQzK2pTOHIzSTZyS1NkV3IyM3BoRndwVFFsUkl6?=
 =?utf-8?B?Wmt1L0Q5NHFuL3EwSjl1aVVHcTlnNGJmeGN2Zzc4YkRmQnA0Ri9lT3g3L2ZF?=
 =?utf-8?B?WVlLWmlNMUJUL2p6ODNDQkNieFZtWWFlcGw0cHUzMWdFSjh3eU9uS0t0NmNs?=
 =?utf-8?B?dXRickhHUGsvM2pIK2RHdE9HSCtDdE1YL1FSVnVWTUt5QUNHalRla3ppVllR?=
 =?utf-8?B?YkVHL01yakRyWU5xMVZrT3owTVBQbUd0bzJwbnp5YjNERyt3NVZEbHc2eXdF?=
 =?utf-8?B?dDVkYncwUUt5WER5RGFsMVdrQ1o0aElhU0RleWZMZk9LWnVIMkxUYWt5dHds?=
 =?utf-8?B?a3JiK0tycXlUOEdLNk9qTWZBUSt2azRjZC9PR1NGRnc5bkMxaGthQkZzYUFh?=
 =?utf-8?B?bm11OTRPWTRlNElWS2l3UHpmenViWTRlN3FoMnErVHBZbFYzQldVSHJ6NjZ2?=
 =?utf-8?B?YVJzdTZXTFVWZ3hmQUphZWpJalErRThxWHVFV2RqZXBsVnYzWURQL0JySzRK?=
 =?utf-8?B?YzlnUDBORVAyUTB4ZmYzMWZFSkVWdVptcCtmU3IrS21RUEdFTzVhblY3S1Vr?=
 =?utf-8?B?ZGUrVmg0NkxXcjFTdWNxTHhXMkxtSmUvNHEyTU0wVS95R1BqRnZvZDUxcWZa?=
 =?utf-8?B?bi9UWUoydEZkMEsxM3Z5MzdXYVJWaTNhajFTMGZXWDJTcGs1K01JREIwL1Z1?=
 =?utf-8?B?dXB1NUVmWW9JdGRGWE50bXo1Y2xqMUordGRyUm1haWxkK3RPZXo1eHJRTDJy?=
 =?utf-8?B?RitITHo1aXV5OVJacS9CZnJ5TllFdjh5UlpVUE54RDd2bC9Dc0dSWVZ4UXlH?=
 =?utf-8?B?aEQ2M1hIazhiSG5BblgxbWxqcldMa0hmbmZYUy96STUreXE1V2tQTG5CN0pV?=
 =?utf-8?B?RjZodUlCY1Z6TDA2Zyt5SGpRRHg5UE9NbUdZd2xPSGNHSUNJamNvUjZiZXFT?=
 =?utf-8?B?dmFoNXNCdVBqSUU4SGpKK01MWWZ2aUU2MFNUN0wvcHJSenF5SnRHWit2bXBY?=
 =?utf-8?B?YnBoaXVIM29Xc29DMmEzYUpRWnlIVm9FT1Q0VjB3dkZpam4vUSt5R1RQekVK?=
 =?utf-8?B?aElDeTZzbWNLelBoakJBNXIvZUxMVFgxQk9LWEQvR1BXUEt1WE5WcC9QTmQv?=
 =?utf-8?B?K0pnRm5XNFNGSUcvN1lVb2pjMVlqT3gxRlp5WFJ6UTRqL3lUb0tyLzhRVWJ5?=
 =?utf-8?B?OHV2OHRSTGUyWTRBWWQ2ZWpESUNzQVYvWElRSDhjRFk0ZWJteDE4TFVWcTBN?=
 =?utf-8?B?TWJxTGc5Z2g1VjBkTXFBVUhsNVBWcU9CSDZBeVJsQWp3VGZyaXNBOExja01u?=
 =?utf-8?B?amNGMU9tTU4vTGJCMWpxdjJHYWFaOXVQU29RM2Q1bTRHc0NZcUFNOWt2cjV1?=
 =?utf-8?B?clE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	bEz5jIscAAJ+T3PmJcQXOHXil8WQdTFKR8N1VjJdUBgww0dl6vk2UNQgpB9bk7cK7/rOOm+9h2jMGpzwGkh6SwdX82LyUQPyFoh9TvJ7vLkwrWNsDpgHNGK9AzSZymx+YIERzAZ1hzY2MGOhhX0nqlSQo8XpJRe7fdJFdVbsrNHeeuN0urTnbCMR1eMju52XI8lIjeRcXBDAf+7RJAcWRy3nWO/FjJr+9dcO+mIj9LadgCKI6QJ1F9APGeiVCoDCtqBKlDemTBrhAVxNOHycU+G5N+khnktxTgOW0wHUh4wc0I4zp/bwUtc1vAH23TaP9EF9FzQ80rMmHc+y0hl7jKa/jqN1YGIefVoCbbYCmYT2IfimttbfhCeDg2dhd1qnS+800c9qWoPJt3rzvdrtTXhNqHXNfuVib9aANTveq08Lm4vRJTvXWurmzdOdp/jTeZ7KctiLeqChUoTBPU+/fTASVCREdq8snUz5ry5oIBj3ll3kJqCQ22QTegd7D3u0UdBcOEohYaHzw20ZqWUqvS/uRWsFmjnOzn3KM6kn2Q0qAyAV4NtMgsz/bb2qqOAFaV/vthC3h7f8L/NSee+2g1s0CpUk8DTwrQ7MZhvV4Dg=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb5a9524-d4e8-4719-2abd-08dd8f114454
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2025 15:50:48.2024
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qJ9+wWTaWCAo+1XDeCGBh2TXntrv6AjFlpx1W1a8MFRdou+zj+Wba4w3PyskCVL9kdA8uizQ2ySEbEJNP2LgnygczAoR52W+i0VPa/o8/Vc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR10MB6140
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-09_06,2025-05-09_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 bulkscore=0 mlxlogscore=999
 suspectscore=0 adultscore=0 phishscore=0 mlxscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2504070000
 definitions=main-2505090156
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA5MDE1NiBTYWx0ZWRfX/H2B4Rh6pGP4 3mP9Fy51R7quMpePYNnxvx5NXdMKfv+VBRNJc2K5F2rX+zERRSZrk5rju7F73JUiN6Cxwaki8IN pSGntnaGu0wbr6Yv4+hsW5yV9FoWrV8V7oaXgqpvh2JDe66lACLfAt+IW74OoEmeGr3nDRaSuB9
 POKg9ZX4WyntPgXV/A7RGtRXb+XTqTxDASBS8Tv/cZQLy1j6HZktBBAXroLhYv7j28zc0WSpX2E DcWdVvuN6Pd8PGRUpTIWN3zenjcgK/JH/Jkyen+C09odTCB7wb3Cq7TnAY0deciEYKLx69G3Ve2 3pqYaINH2ATikjcJi/Q1tBxzJruZH13t/NirL6dIww6xelh40DHq8sz25JMmYU7Hbmgv44JhXD2
 O/FTwu7B9OzC2GXbxvwG9a1YozVBzFB1mteslxzRv4vX3wZvl8XYID+OVHpHbO+xuOoteaB4
X-Proofpoint-GUID: smMC4QZnRUnn6Np-KzgY-ZBQ3J9ZT8vH
X-Authority-Analysis: v=2.4 cv=INACChvG c=1 sm=1 tr=0 ts=681e245c cx=c_pps a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=MnNCSrTsc6cU1e4I:21 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=GoEa3M9JfhUA:10 a=epTmVMiNAAAA:8 a=yPCof4ZbAAAA:8 a=azZ7I--4mGR0sHbOD7IA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: smMC4QZnRUnn6Np-KzgY-ZBQ3J9ZT8vH
Subject: [oss-security] CVE-2025-4207: PostgreSQL GB18030 encoding validation
 can read one byte past end of allocation for text that fails validation

https://www.postgresql.org/about/news/postgresql-175-169-1513-1418-and-1321-released-3072/
announces the release of PostgreSQL 17.5, 16.9, 15.13, 14.18, and 13.21, all
of which include a fix for:

CVE-2025-4207: PostgreSQL GB18030 encoding validation can read one byte past end
  of allocation for text that fails validation

CVSS v3.1 Base Score: 5.9

Supported, Vulnerable Versions: 13 - 17.

A buffer over-read in PostgreSQL GB18030 encoding validation allows a database
input provider to achieve temporary denial of service on platforms where a
1-byte over-read can elicit process termination.

This affects the database server and also libpq.

Versions before PostgreSQL 17.5, 16.9, 15.13, 14.18, and 13.21 are affected.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

