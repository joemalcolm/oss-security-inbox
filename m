Received: (qmail 12066 invoked by uid 550); 20 Jun 2025 17:31:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12035 invoked from network); 20 Jun 2025 17:31:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=OJw7ZaqptuA3ejpa
	RnVa7iqXQzzVP8qseq9cIICOlbs=; b=nELTknOcYhCGV9qHhoV8E3mBYVxkDiIf
	J62B4w5Zq0Si5TdADrqJ+sLUZmAuvwtr49bcxgsDosclNb8+GD4dMUVAas0za8Yo
	1DLh72f/bmjViRIMYymx1zgpBS9b/aCTQ/VeKO/ls/l1NqGz2orzZkL+7+u3gW1a
	gwnycHXA8yTn1qWyVz7SuRxfQ9V6l1qRKb8ojfv/L3AQJNbiuT7w+CV9yMWGdxAF
	Olk87Ey8CPLCAa4WVYS1DFxr9vMgjSqMI/zaFgLZ//r3o5Oz6cgvOOsuxhkvSxgp
	rFd0KCUtTDO3VDeS4vXyjp6zqME+v/gcdxyk0maQAvhbzRzxDh/i7Q==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AJImr0E65bG++RVTSbbDeGJXpJILbwFPIGo8/1r6P98faXJtHqbPtbn0+kwQTa8ys0V7G9UvlNhGVRhkmhLvdWwkNrWdGIANb6+QzSW9TFCrKJfRHQONCKbXWKMUbknKi6ZWMzwlHMspKJRX7tP5b9urU2Kd6uuvyiG4U24oqovF8zcm+notAkHVxE52EHfbsB/3iv2wkBiAJFelzQkF8xk/G/FtuaUtcMfmLg30X9B+O+epGLUsOimzptk5CxCIcNuIqD7bP0BSk5r+YUwt4PckaJ4XCXP7eT9krcbSvlkTPnDhf8rCL1x50uAu994nksfTuS23xSahiH8htK2eJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OJw7ZaqptuA3ejpaRnVa7iqXQzzVP8qseq9cIICOlbs=;
 b=W9l8rMNBONxw+BKKDBoWf5vi8pUeC/TQP3ympsPJHClwx3EVfyqgdXpH4gevTeE6RQJm0OhAGrYtD34b3AhDQUKje7kSGC/owaqyiUOkuEEsSguTL+5d/1hLICAbJhXSUxSScMy1uzxAeoNqMgq1kj0QabH1lm+t7ALsRM1UPqjJKnVY2M6BEBxIEfCALkEvCoajDdarrOaxdmHvVJkoSNHxD4bC7FV9rX2wDzXU6obwcukeHxDwSb3oA/mjkWX1ivJN1+VszqLpoguepGRzURZdbalVLDMS9QWt+D52fcDQymGXSegLZCsfEPg86QUf5kUFlv3VHvjz0W15fLPs6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OJw7ZaqptuA3ejpaRnVa7iqXQzzVP8qseq9cIICOlbs=;
 b=HVG2Ft8fOTUPZSSHVyNTgL7x9yXT9HfpZCA9efX+1Kvz6SvoLGVModdc6KFisBOjMuKnJYDj6+AdYGTac2oXMMnLX1cTv6dIjalVWGHfsmJ1ZtlEiZzifcHFNpeKqDivhqP5nXXCVfBMOxIrNI3VsGAajoMjEdsuXd6fmhYpPVs=
Message-ID: <022292bf-7399-4a01-a770-f3eb5c92bb07@oracle.com>
Date: Fri, 20 Jun 2025 10:30:46 -0700
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
X-ClientProxiedBy: BN8PR03CA0029.namprd03.prod.outlook.com
 (2603:10b6:408:94::42) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|DS4PPFC31902354:EE_
X-MS-Office365-Filtering-Correlation-Id: 134a236d-84f0-4411-00f3-08ddb020323f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?cjFTTGxvN1JFVFdBU1NkaXQyWGJVV0pTWHNvdlVQazVqZjlQczhmRzBVM0Ji?=
 =?utf-8?B?SDZYQjhzVlp6UTFEQWVaU3ROcmVmQVVpMEF2Mm9Ud0Z5MVVyOExVd2haRW9B?=
 =?utf-8?B?TUUzMFFFYklGcktZTW5IdzJvNVphS0MzUlNETDdYNWpqOC9kVmVBSzk4NGh5?=
 =?utf-8?B?Sk9MN0NhN2FTVHdPRmxva3orT2JZMVo1N2d2aExaUHUzQ3poUituaEE2NE01?=
 =?utf-8?B?eFJiNFNxRlRIaXlXRDZPUFFVcVN3UVZKWXNNS2ZSK0k5aXNmTHZmcjdpcW1G?=
 =?utf-8?B?QVJLSzl3Smt3QTlha3k2dit5dENoQ1RJdXBSTXpZZFNaeE16MzY4SFMzL2Mz?=
 =?utf-8?B?ejJxa08wZXFJSnNtTWpiQXJxcEVyUkhteitJdXdCemNCMVVXZkFtc3kvenRl?=
 =?utf-8?B?UzBPUkMzenBtY0V4SmZoQ2U3NWtRVGFOcDhqSnBwMHZlSHpuVys5bFdCQW1w?=
 =?utf-8?B?bVBQcFIvbjR4a21EQTgvUndnWlJGeFRDb3VQVGk0T0RjNjY2K21EclF6QS82?=
 =?utf-8?B?RXNSNkpKdGZ3dU1aY3M3UVNEeTNUZXRoTUVLYUR5ZE1tVCtOTkhwYXpVdWZs?=
 =?utf-8?B?SXhDdS9Cekp6WXl1OGtlWFNicHZrcE5MbS8yWnUxRElWRzhybnNZZXVFK25U?=
 =?utf-8?B?ZVR6M3RyTmZvVXYxeWJQZEprR0k5TzlCV1ZyemdSbktLSnJGaXVCQXBaM1Ew?=
 =?utf-8?B?YjBPa0toRldtdmdabHJKNzR2a2hPQzVnZUhIN1RqZFF1cWZpNW1oTmpEcXgz?=
 =?utf-8?B?K3VoQXh3UTh1RmJvdnpwdm1ycjQ1VCt4ODRnRzg5Nm9vQ1ovMUs2d2RFMjRu?=
 =?utf-8?B?NnRKTzVjcHo4R2pHeEd4N2EraXcraWhndVhXR1FoZjN5S2NBeURYMVpWbSth?=
 =?utf-8?B?cUZUcTlYOVZjemM1dXEwdmpMdmwrRGNrOEVQYmZ3bDc5MFZFamU1Q3lHaEhk?=
 =?utf-8?B?S0pJTTBZcFdYVlF2dWR2cmlvVEhJNVhsMzJ1cHFUWCtycStJOUtJODNGdWlw?=
 =?utf-8?B?c3p6dnYzdXN6bzVxd0FSWFhFVVdvSmY1RE5xMnIyNHA2eFNtRTBrT00vRkFF?=
 =?utf-8?B?Wno5ZUVZNDJRaHhnQXVxMDF4aUFKeWg2dU5SNFVwendudkVkVUpJd2YzcmZQ?=
 =?utf-8?B?SkNvUDZsakFkU2F5N3NrKzB5M21mamM4eWxzM2c1eVBuRnVSamZPaVdJNFYw?=
 =?utf-8?B?SG9xNGRFRWo1aUlNUWdUMTFmZTBMMHczNzBRZEpSTzdUQ1JmOVJUbklnUE11?=
 =?utf-8?B?OTBVVy82aXcvdmtrU3NqUkVHc0o0dW5ueGsxM2s5eTRPQ3MwcGViajV3YTMr?=
 =?utf-8?B?QlNMOWU5T05UL0tKUlFjVC8vV2toUytmYmpDd2dtR282bXIwZjd4Q0wzV0Uv?=
 =?utf-8?B?eEt4VG9uNTlOYTcrMTZMSUVURnlNQnBva05zODFTaUJZWGZvdnFQQi95Ritj?=
 =?utf-8?B?VFhGT1J1UFRDdzBFOWp6c2hncCt2eHI4VUhWU1AxOFZGYWFSWEFSem03QjB0?=
 =?utf-8?B?Q2RYOWNXdGVieUZObnFVek02VTdaWkVxM2pzNHhTWVBoY2w1WWJzRWJBZnVC?=
 =?utf-8?B?WFJGU0MrbUVQdnJkZGJ4RkZOZFZmNTRCV2ZQY2JtK2x6bmN5MGIzRXBGZ3Fh?=
 =?utf-8?B?SXcraEp5S1NnVisramp0Mi9nSmIvRGJCT0FCK2oyMCtrUFA2aXFHNElGSUdk?=
 =?utf-8?B?T21oSDU2K0tUZElLRDlZa3FnQ1o1YjRLdnJ0MU1OOURLZXRFMk1ZcVdZYVg5?=
 =?utf-8?B?UlladGlaR1dUaWhNelcwOEhFY1lKcEsrSU9tc0dVQklZSHJJMHVSTnByZHpp?=
 =?utf-8?Q?Gckr1JaSAbeicz/NQgqDEp1RWOdp+HK+1KcFE=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?cHJ6ckRDZVN2NVdBUEUyOElZM3NxaExSZFRRM1cwZ0xReVpZZVE5K08xY1Jj?=
 =?utf-8?B?UitJVzdPWjNXZ3V0cE5wUzhmNlNDR0pkRnhkTVFoV2k4MDFxd1FRVVhNcFlC?=
 =?utf-8?B?R0ZnVnp2RFhDUUlkRE96N3I4eTVjQ2dZWGJjRjJodW1CNFRVTXFCTFhBSjUw?=
 =?utf-8?B?cHFhaHVWMzFGN2w3S3N2UFRNaFI5cUtqK0dnaGFQWFNNS3ROamppSGFkS2s5?=
 =?utf-8?B?VDBJd1FuTzlYcHZBMy9PUXQrT0FvS3lzdWVlVW1WUkJvV0hVaE1rQmQraU9j?=
 =?utf-8?B?MWRFNzdUb3RMWXp3VS84aHJheVIrS0lVTndGcmhnY0VIeHhYZUJQZEtKNVox?=
 =?utf-8?B?N1Q0VUVJU0FVa05uUlpUbWlwSDQ4QTJ1cnEvMTQ1T3BmR1RwZUptUGNSMDJt?=
 =?utf-8?B?Q0dTT2tjYkVqVTNGSmJHV0p6emRjOC82VUxmS1ZNUVEvekxFVGVNNkJrb1Iy?=
 =?utf-8?B?WC9sZjVuT2NwOHQvZ3MzUHIxQXZMMGxrbUxVNitXWTJHbXlPTG5tYlk2d3RY?=
 =?utf-8?B?em9JUDlJNjZDMm9UdVJjcWFRMkprY29kVzFQejdyZEpab3JWRU1DUDh1UTZ1?=
 =?utf-8?B?dGZvNjVtR0UvcFFReDhmR29yWTVVNVg4R1lvb29jZlJvZGJxc1VJWTBBOFNu?=
 =?utf-8?B?bmkyNlNXQnArOEN4MGRSUlFWTmhwZkgwSlNrZDZ1T2YrNm9FbHkvdEdwQ3F2?=
 =?utf-8?B?b3YrSThDQWdXcytUUjZqNU1KTml3aHlsdU91NURybkdNRVJsSS9zaC84YWR4?=
 =?utf-8?B?ejlYWE9pV1l3SlV6K3hFR1JsVnpUaFJIWFNpY2trTFJRYmd1RDhLOSs1bjZk?=
 =?utf-8?B?QUlweDBkNTVsMit2NC9heTJKeDBzYU51TEZuNExyWTQ1Wm1MQmNZeTVTUzhI?=
 =?utf-8?B?eWhWTjh3Tmt6K3Z0NEZET0F2OEhZWndGR1RyT1dvQ1BjYTZMTEZRRGFHOVU5?=
 =?utf-8?B?Nyt5YXhUenhWdEdSZVNzZXdDZVNndjE5N0dCWk9zQnFDZ0hXSmZ3NG9jcDIx?=
 =?utf-8?B?ZlRtZEhEM1kyRXVqdmh3VFAxT2VJWFg5dmhSN3JQMnNJWnZ0NG9iYkQ1SUpY?=
 =?utf-8?B?NzBMcnh4M3dRQjkzb0R6b29TUjFrOTFFUDE4enVOeW53RkYreUNwblBGelFT?=
 =?utf-8?B?cEt5MWpLV2JmeHA5ZmdlaXY1blVrdEtPMUNIeVJxSGJXY25PTWpnaVNZaDZu?=
 =?utf-8?B?ci9PNVJHSGRqdWdmczNpSTBHVldpWVRlVTdoVHIrMlBXdDhyUjhmaVgvSlht?=
 =?utf-8?B?M1lISndwTVhwek9zZkhzbTc0bWlhV3BMMGR6dWgxREFZZE9EbC9QM2lXbSt3?=
 =?utf-8?B?d0twMDMxV2Z6WXhzS3VUbjVGT2UzWWduRFFiWEltaGhkRndNZ0MwZStTNEg4?=
 =?utf-8?B?T3Y1NUdWTzdzM1NvanBBVUZKK0NQdWc2R3JqSjN0U2FCcUQrTDB1Y2tFY1Vz?=
 =?utf-8?B?Vm9aaWlzMXZ0WEFtNlVhVFQ1Vi9UQVl2cWMzMm04TXBJemduRllsN0RSYkZx?=
 =?utf-8?B?bDdKUGVXdmlBUy9sd3Q5Ynlham1DN1N5bXRvdU1YR2taSUpJR0ZzUTMvVnlz?=
 =?utf-8?B?VncyTW9GZUdDV0dvR3l3UlNVT0xpanYwWXB1M3lyZitYc09FK1RIZ3QzRW03?=
 =?utf-8?B?dUloTHBLKytHSnEvZ0ZnbURUeFI3YVB0YnRjajhITVFlRGM5TWFzaVVWYnds?=
 =?utf-8?B?TEErU3JyZ1YySDczdzhIdTBrSGVIaG5wcmlUcTE0MEUrckRIcDNVTHA4TVFE?=
 =?utf-8?B?bkNlSUQyWWY2Qy8xUHNtWk50UHk2UFJvb2RKckRBeWZuSmN0TGFtQ2JiWHkr?=
 =?utf-8?B?MGZDOXVIYisxc0FBd2l5ckduWHFyeHAvYXZxZWxCZjJvRUJva3o2K3Bld00r?=
 =?utf-8?B?QzBaZnFxa3dudGVFUHJPOTErWHVlTTNHWHBackVOWmtIS3JTYlVnTG00emdo?=
 =?utf-8?B?S0JHVGt4TWdzYVlGM1pDaThrSnNIR1pVZ0VGc3VteFNzS2RMVjNBSlpBUVc1?=
 =?utf-8?B?V21LcWViL3dQd2lHMGErNDdqLzNJVDRjdEdacXhZQlpSd2llSTd1VDE5SEtW?=
 =?utf-8?B?c25lRkFmK0JLMUN6cTlicllYaElvRnNEb252d0tVM2hhcEpwQ281c1pqY2I4?=
 =?utf-8?B?ZytzV3hmVlo2TmIyTENyMks0SFczckF5Y253K2F0UCtjUmtUVEJCY3JBNUFS?=
 =?utf-8?B?d0E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	XCjqESvSME+k+7k9VVvuQUj3LS2An4LS0rBIwLGFMi5+yn8oLkmz8s5aUUZyjvxN3Ip9VmwNAvyNafyEztKQ8Ty0di17t3gSj6Ej9izZ94UKJrmSn8c0WmUqcdbVFO25XWog84xdBv+H+RewSMYBlALwl8h8N9ouhxWFTFn1FYOAvvml1n5PBv9tETSDzOl+qPaOqmzTbsR7wnMrvhumNpjIpHk75MiLHThD55PpEErjNMu/yF9GfhPN7WL6vpuonPacNQOGTsQEN9Kky14aytavUfFuD/Vg8/yE9jvbV6UYI5y/1zxwQi9l/YQsoT4cXPrT3p+O/BS6YFz+TFBCINhbxmxVb2SWUGXGs77ymZQodT6JZi2D0M0S7Xaa7ZLbj3yINgvMjbnODCi/rQYppycB3hdxh1kj8ZjcMfwfa5voTlDzsM9fmS4g6b/7oOkSarYKRX7f84Usgqr+FkqpKH5q8fPz8brw8CQdsEvcQivy605fTl7PnnT8Aif0SB6r7gpJ5PQCw3a0qIwIcB5rzQcYEjJu1gRUpciHAVAC99joxtO4lmkpCvpBMLE7wOVJSgEJkPZK51ui0tgcFbJXPV9nHkeWA5K7b3zxxDu2R5s=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 134a236d-84f0-4411-00f3-08ddb020323f
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jun 2025 17:30:49.1783
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k66U94gkoC+IA+fzcY0BRRnjTSJgq+DZV1QOkdEbFYcO+plbrGWIOH/acyj127u5g4MJMndEr7hEpb+pbYJ1stZa5KlY8oUnwk9if+TAUQ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFC31902354
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-20_07,2025-06-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 suspectscore=0 adultscore=0
 mlxlogscore=999 spamscore=0 mlxscore=0 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2505160000
 definitions=main-2506200123
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIwMDEyMyBTYWx0ZWRfX1ITbGmBfTozM 1ZhgRyUMkQdNMfoqea2I7BLJ9dMT+LA4xRpqGdMngRnV492zdofsl+Uwq7iNBKCpnogYdkt8pV8 UltaYN7X0Xb4ROOPiYKqjaKWVRB+PAECJEwTQBfuDvAWq8vY2YGQwHyCZcpCf87LUmGofABT5NR
 Q4YJTOH/JLdp6pf3CsHeNuttPqas/Kz0ahnbtLjHvh0N5tOvpdUV1jSZzaISr4Dhmc79je9dfNl GXgQAvwbfsaYPaQVLzpNeh7gG6JztjPDMen7vWUsDarcKn2R4EpMUDfjkCIQVvymw+/wGnlynx8 7EWKpDmwBCfbN4YuZqPtTogpKBcqYnPChTDOLRGhMWb/Iwpxyu1FSV5us1cL2DcWC+sav8WkyfR
 trZTENYLv6xTe5YpKhE83Cfs0RaaqWxG3egiMcR1u07/lOR7O2TlDPZxTkvaDcXj/TRBwHF6
X-Authority-Analysis: v=2.4 cv=U4CSDfru c=1 sm=1 tr=0 ts=68559acc cx=c_pps a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=GoEa3M9JfhUA:10 a=tPundid6AAAA:8 a=yPCof4ZbAAAA:8 a=EFo6-gmLEaleOJTNS78A:9 a=QEXdDO2ut3YA:10 a=TK3xXBcW8RkA:10 a=aPicV9olnlo_TREvANR5:22
X-Proofpoint-GUID: 5RsKovL4jJfjSMPhQpgKQtt-r5z-K2Fw
X-Proofpoint-ORIG-GUID: 5RsKovL4jJfjSMPhQpgKQtt-r5z-K2Fw
Subject: [oss-security] ClamAV 1.4.3 and 1.0.9 security patch versions
 published

https://blog.clamav.net/2025/06/clamav-143-and-109-security-patch.html
announces:

> Today, we are publishing the 1.4.3 and 1.0.9 security patch versions.
> 
> [....]
> 
> * CVE-2025-20260: Fixed a possible buffer overflow write bug in the PDF
>   file parser that could cause a denial-of-service (DoS) condition or
>   enable remote code execution.
> 
>   This issue only affects configurations where both:
> 
>     The max file-size scan limit is set greater than or equal to 1024MB.
>     The max scan-size scan limit is set greater than or equal to 1025MB.
> 
>   The code flaw was present prior to version 1.0.0, but a change in
>   version 1.0.0 that enables larger allocations based on untrusted data
>   made it possible to trigger this bug.
> 
>   This issue affects all currently supported versions. It will be fixed in:
> 
>     1.4.3
>     1.0.9
> 
>   Thank you to Greg Walkup at Sandia National Labs for identifying this issue.
> 
> 
> * CVE-2025-20234: Fixed a possible buffer overflow read bug in the UDF
>   file parser that may write to a temp file and thus disclose
>   information, or it may crash and cause a denial-of-service (DoS)
>   condition.
> 
>   This issue was introduced in version 1.2.0. It will be fixed in 1.4.3.
> 
>   Thank you to volticks (@movx64 on Twitter/X), working with
>   Trend Micro Zero Day Initiative, for identifying this issue.
> 
> 
> * Fixed a possible use-after-free bug in the Xz decompression module
>   in the bundled lzma-sdk library.
> 
>   This issue was fixed in the lzma-sdk version 18.03. ClamAV bundles a
>   copy of the lzma-sdk with some performance changes specific to
>   libclamav, plus select bug fixes like this one in lieu of a full
>   upgrade to newer lzma-sdk.
> 
>   This issue affects all ClamAV versions at least as far back as 0.99.4.
>   It will be fixed in:
> 
>     1.4.3
>     1.0.9
> 
>   Thank you to OSS-Fuzz for identifying this issue.



-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

