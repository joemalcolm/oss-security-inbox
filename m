Received: (qmail 22436 invoked by uid 550); 29 May 2025 15:49:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22409 invoked from network); 29 May 2025 15:49:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=ep7XyMrt5ioowwD5T2LxpTbl2cUy7/tzKfR/Ts7PbFQ=; b=
	qDoi3EXDM1QzacX36HU3aP882FkPba5D2236GMZz0KR8FU93LDS3uPm3/KPyQp3D
	AxB/MWzYaiKbo3M5AOZTIySedSwcXL2qBcXHIqS3PNaQprDeRoF+XVsrPg/135W1
	0YY7Oc9HTYz83obYh6mG0MyKSjvhAymGDL4QwjDd1PQGu5ivj2BhH9+xh5fMJRkz
	LIGbi4Yg0ZP5LKV4WXoYXOjA35WqWutXO1imWtiDzSpWNwHV/PMSTt5zAQqShGhl
	fnR//YmHMecId+3ig6ZjLhliUMoyt8+7gMl2IaB10AUKNOUPrczH3i4nDu8qw7wZ
	NLDmHpxTYPUz+kq+gouTxQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=acZHOTmaOzgHuV/4PGzy0XFz3eMkQULxOZMv+LfNjaFLQYqqEwB6sbDeAyi1ENkv4vRCRMyZ/ELC6ZXSxtJaF7SFn0i13bjXqiwX1bxey0T/XmRMbGNFSUm3gZ/UnbzIQIbimdpK+kElJO2DV1oTGjPoyYWE/WmtptlZfIqos3HjtrnMxYK0vuXhYW7oVnjEUFXAJ+RRIQuy4XWoFDNsTOwzx0mijAfFhHQ/FYXvOGDZFD0PC/rCqywl8CVvvLFK0mg97+Y9pwYJ/PPr6seAo/N4DveThkqbQWT9TYi4RBmy7rEspYNw28NPp1YE/wA4Sfqe04wf18GawHFQb1thGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ep7XyMrt5ioowwD5T2LxpTbl2cUy7/tzKfR/Ts7PbFQ=;
 b=WJ4fRYCIyfxvtD1Pu9HvK+NH5u711Lxv/EEiiHcEo0wP7sSmsjM72Lj+taM0GRp1zMjSbQBiXp2uMHOPYhPjm7WvDNjQcql3Qm3sAoy6ZkXEbYmO6PQvg09Am6E1uhJ10Ad3oary0jNNnvDmn0RQSfZbtmSFVvNmDqTGbHCEsyd+y2bzSvayERzl6b9itR3z+nMvaksy9YRd8xkAHFRPjPZwEyVK2D+WHGKC2kCduEN4fIRu/8NKvmZIS6ndV7Ftli3eG2AhdMLlszEbbvdS6n+g1U0HshpgcQGMni9wlcIMyItQtP7yxu5zwRC5iyFlibor+Nm2wlFGnXq+9xiwUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ep7XyMrt5ioowwD5T2LxpTbl2cUy7/tzKfR/Ts7PbFQ=;
 b=nGERZIpsXn/9hJ1jNi4qQSwlJkQc5/4fdMsqOntIvudTnHp3E2Zg0PGVPDRyXe8Jil19nmNpVzsCG/gdWCTJ/Y7g5xRpJ+msRmm2lQ3kg44WRUPtpiUAUG1hio9GwUnTOADO0KwUSKI+ZfATpNJ/J9bW77/rPzwQgfcmxB8Sfu4=
Message-ID: <549e6e56-9050-47b7-92dc-d9f6aceff31c@oracle.com>
Date: Thu, 29 May 2025 08:48:11 -0700
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Simon McVittie <smcv@debian.org>
References: <faad8379-ad8d-48fe-8de4-9cfea8046125@oracle.com>
 <aDgs5a-wtRQv2aqE@remnant.pseudorandom.co.uk>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
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
In-Reply-To: <aDgs5a-wtRQv2aqE@remnant.pseudorandom.co.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P123CA0110.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:192::7) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|CH0PR10MB5097:EE_
X-MS-Office365-Filtering-Correlation-Id: 738e4338-042e-4db8-49e1-08dd9ec83a2a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?M2dYaEo5TzFwaDh6ekRjcFBIQ0h5WUc2NlVhVWRQblVFVDFOZUovdUV0ZVFs?=
 =?utf-8?B?UThRZGE4VmRqZlQzdUNvaVZITXZ5YTJOK3UzdlV2aUk1T2NEc1pydkcreEc2?=
 =?utf-8?B?cUhsdzRRSlJIeE1mM1VBS29kdjV2VlNqTUFDU0t2RFFKMTlHOEw4eDRreGVy?=
 =?utf-8?B?NkcrSFRxN0lMTTJBSThidFI2MXZSYVJabld1ZUxMeHRRUEYrVVJmNXBrSzQ2?=
 =?utf-8?B?TWNEU2FQOFlsdWs4VFVFSCswbytwdGpBTHpZK1JMMm1PekVrTzNGZGV3YlJw?=
 =?utf-8?B?VUt4UTV2SzJFUEhnUmNyaGtGekNkaFd0czV1MEEyZEN3QXJlRDZMRDJOYTBH?=
 =?utf-8?B?K0p1Y05leG5xNU9iRkFKeW9wWWRpL2YwNWU0VTE0amdtang4WTBGVTczYTd3?=
 =?utf-8?B?MFpvUzg1a3dPZm1Sei94OTRmc1hZL2t6enN2LzdCUlhZcS9nOUNvRUNkWkJS?=
 =?utf-8?B?MHl1a2lFTkF5NzU2UHZaaVl0U0dJcStkNDd4RjQ4STdJTFBQMW9venJ4NXkv?=
 =?utf-8?B?VXo4a1M4dnZUV0k4L1ZXZEp2UGNMUkZxQ2xXaUUySCt4VGd2enRBOGFMbGFZ?=
 =?utf-8?B?MnFjSDE3aVVwR1RPeUcySk04Umdtb2hSOGRWQmRWd0o1Rm9VdE9rVXVqK2xJ?=
 =?utf-8?B?SEloblB0TktMOVZxbHpUMjRQbHhMb3ZYeXphTXVNaVptTVdFOUhPdy9rUGwz?=
 =?utf-8?B?Sm5EMzI1Tms0Yy9jMXlSNXJJd2tEM0FCekZLUTNtRWpKS1Rnb1hsZjJ1bDRF?=
 =?utf-8?B?OTFlbVRGbS9NY2hrb1NGTjNhWGt1V1M2WWh5L3Eyb2phUnhBRyt6ZnhhT2xl?=
 =?utf-8?B?d1NnbzYwRDVMQW96dDlIR0RkejlsVDYyNytPQmFEVUV6WjRueFlEcEwzdnRX?=
 =?utf-8?B?T2lFV1JJdVJnVml2YS9ySFhrYnhHU2hodENocE52SW9CTHBHUmFXendoc0Ra?=
 =?utf-8?B?SWhrME1qSHJDYk5SUm0rM0t1U3o4cjFTNTZwQVdSVWVOaGFEbUsxOXhyYnM3?=
 =?utf-8?B?cTFNQ2hXL2M0a2gxekhLK2FWUUE4aFEvRklvWXpaTEdVeklnVGZVdnEvbnli?=
 =?utf-8?B?Tkd4bEx6UmdoMXFka05XK1czSkhEUUdNY3VEY2dVaWV2alVoMk9PV3IrbzVQ?=
 =?utf-8?B?a05pSy9MQytGd3NBdDFwOGIwTjZlZng2R2g5N2R6ZHAzK3hZVXlQWEhNK2I5?=
 =?utf-8?B?ak5VNnV0VWpmVDBoZzRQallrelFuSG9EZm92K2NpU3Z0ZEJzTC9EdEp6WjVB?=
 =?utf-8?B?cUdZc2tYdDg1OUZvbVIrcnkzaFNuaENUUDZwUjNkNS9WYWtTRUoxQSsxL3dS?=
 =?utf-8?B?OVZVcFZFdnE0bjF1V0pHMTNDbXVqa1FFQ2dtay84bFVlVUVzNUROa1NRUHlS?=
 =?utf-8?B?cWVEOGhmR1hmK3RVelVLa2RSOFVNdFhlWFJMdkFqdEdMa2l5MzZZazVEakx5?=
 =?utf-8?B?MktKaklnK3NmYlNMdTl5emhhazkyZTRUcVJkWmxzbHRoaVEvY1FhUTVIZkZa?=
 =?utf-8?B?cUJKZDY2czJob3FZeUJGVW5XZ2M5TGVNM2hUNVQwT1lBVmI1TTZlZXFVNVJE?=
 =?utf-8?B?dmlBNDFJN3FlelQ4a1dsa21WUm5vS043YjdRSFFZbTBYbVgyd0NVREdWMER6?=
 =?utf-8?B?UW0zV1JRZjRQWHV3RVVGakZJSGZldkpVUTcycWorZlNqMVpvY28zdHBBMEJr?=
 =?utf-8?B?SldGTW9HSXU4N2pxVkYxamVVQTFDSmRXai9TRG5OUCtUdFVaRjI2eHBXaGdq?=
 =?utf-8?B?M1MvSzdid2tjOE5HeHB4RVZrZHgwVTFnTWt0Q1RwSFlldjdiWURGa1d5SkdP?=
 =?utf-8?B?WUlQZHVkK3d2dHd0N2I0eVlrZXFla2liTHpqUk0rK2xkY0ovd1hnOThGUUsz?=
 =?utf-8?B?T2d4SVFINStYbGVSdDFIT21rYUk3bFRnMnYvakVtT0tydjNpRW5qeDBDNS9R?=
 =?utf-8?Q?DX2sqR0TKWw=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Q2ZCT3pxMHlpNEtLc3RmL05aemhJeXVUMDVEVVIzN1R5NDU5RmRyZzNlM2xI?=
 =?utf-8?B?UHU3MElrRGhBTVByUDB3cmxVR1NLdVN5Zm5pc1hFY2hjbzlacTJhdmVCaFNK?=
 =?utf-8?B?aEhaMlhuVEtHNzlwdHU2RnRkM2c1dkxLNFdjZkh2WWRjbkp6ZUE4enAwdUZu?=
 =?utf-8?B?UzNEblNkMkxTcE5MdlVEQXE0VHJKbXN6SHVadUdZcVd0aC84c0FNNDVicHVK?=
 =?utf-8?B?amRpdW5Xb3ozVUVFbVVYSDRrdEN4VTJYeFFTRlQyOGt2MXZVbFc0Zkw1Vy9h?=
 =?utf-8?B?VGJEaU5zTjc2dXhsYmY2MXA0SXpjR1NmN0t4Q2pNeC9aOEdva1doN0ovVlc4?=
 =?utf-8?B?SFdDZXZpeFVOYzNmaHlMTW40MFRnbGIrZEI5ZUs2MGtnSlNaS3JlQ1UydUFk?=
 =?utf-8?B?aXBpZVZCTDJITitTNGo2SkZWYlNaWVBKMC85VkRjYk5zdVJWZ2VkaXg5eHdR?=
 =?utf-8?B?bFFxVDZSejlBNFhmU3gzVWJqQngzWThqVU9Lb2JBSGJZc1ljWW5CTDRWZWJD?=
 =?utf-8?B?blZjL2xvQ0VTMVFLbWNpeGR1QnlpZ2YzWWJKVXdxTVFiWWV1Q0xLQ3NrQjhD?=
 =?utf-8?B?VHhOU2haVm0vRk4ySWZtRzhRN3JnY2FRRDdva2dJaUZMUFF3YkltQU0yamVr?=
 =?utf-8?B?MGlDWjIvNEowRzErS3RYdThSM2F4L01IV0VJb0F4dS9OVHU0UDVJbGM2Yi9x?=
 =?utf-8?B?b2s3eU8vK3dsU2JTUldjSlFlaGRFQmUwZy9Zc2JMOTh6TmQ4MlBIem1zMHNV?=
 =?utf-8?B?Q0tYTlFhTGVpczlnR3VHUnVmbjcrNVZRb09tTE1ISnNYdHZsNFhZbUdvWHBD?=
 =?utf-8?B?TWhTTDVJbjhvRHRGc0lkeEJPbkFWd2Z5Yko2UmxMeitpbHNiNWlVd0VYY0V1?=
 =?utf-8?B?OXJUWTMwRlo2MmJmYlc0YXNnR2R3Vm1RSmo3WStyVUd3cWdZMTdEOVRDU2xq?=
 =?utf-8?B?ZFRDaDdLNVBRaEplRU1xak8yY3R6L2I5bXhmVGlrdkd6akR5dEtDeWxqNjBC?=
 =?utf-8?B?V1QzdVF0Rmx2dDZLa2RhRm4zZ2tFWEQ3UHJvbGFpd01TNU02WlZQaytlWi9S?=
 =?utf-8?B?WDVBVzVwRTRmUFdsUC9YTEdWSnlicmRpWjIrN1h4NDZKQkk3MFJwbHpVS3o4?=
 =?utf-8?B?SjlWNXlHc3N6STRSZzBsaW5veklWVzNBOFhUK3Zxa2JkeXptZFNtTTJvNHJI?=
 =?utf-8?B?ZGlJTjhIdnEydm1EZHBRVFc3eHM4SlAvSnQ4VWhwQVhkZ0h5MTRaa2lRN2tL?=
 =?utf-8?B?VjVudmpIblBEbEtLRmpzMGxXK0Q4enJtWE40V2I5QkNyWHEzQTRIdWt2SE56?=
 =?utf-8?B?SUZWNXpmVlN6ODBzT2ZpR0J3b2txWk51N2J3MUczaG10MGZwblNzUmp1aDBL?=
 =?utf-8?B?VUpId1pYV0hwOU83OHFFVEJXU0tiSnd3YWJ6NEw2UzYwM0oreUhocjJjY1Ey?=
 =?utf-8?B?WkFDOE14cjY2K3NpanRKa2xCM0llWWNmMFQ1NU8rbmFIWDlpN1B1TjF2b2tj?=
 =?utf-8?B?ZzZyL3ZSM0l6S3RldnZOWmJzTWMrSG1YQlFiL0FHWGNHeklIVUdQUjJITjU1?=
 =?utf-8?B?QXUva3V5OG9IQm5kNjQ2VzFpbkMrWHVTYlR0K3ZyZjBHUFpMQVRydXlzdkxD?=
 =?utf-8?B?cGpFNFQ5MUlFcVhPKytEdlE0bGJCZUJxdkJnNW5Ib2RkWVExN3prcVBNQ25h?=
 =?utf-8?B?V3FacmNsU2ovUzZublU3M2xNWTZBOE9XUnVQdkZYQTBnOUVrdmlNWXQxZWJp?=
 =?utf-8?B?bUw1SkFEVitCWmJua1NrYUtiMzRueXhoSUVXWm5Hb0hWMVAzKzZYK0tPdFhK?=
 =?utf-8?B?VEt3VkhiSmFPTkxTcXZNNm9FenY5QXNlMGtYTjQwa3ZvTzlQQUlxSzZWbkk2?=
 =?utf-8?B?T1NteEZ2TUhVQVllYS9KbWdheG04WmIwS2V0Vlo5cXg1cklwL1hHVXVwUnI1?=
 =?utf-8?B?aXZTUGttZEI3UzcrVTgvSVljMDUwVXg0VXQ0UnRRbkxUNEZrV1JxQVM0OWJ3?=
 =?utf-8?B?MkFKekFwNjBZVENIS3o5R09Ka244elo0UlRZVFRBSlhac3NCMXc1SlV6NzJK?=
 =?utf-8?B?TFU4eUhZbDA3TFRkdVVpaGZzeTVXZXN5OW8wNFl2RGV3RVpCM25wTnRxd0M1?=
 =?utf-8?B?bGVreTBaYmw3eTM0YWdoekdEM3lIQ25FSDhaeTlESE9uVkd0bFNXaVFNRVcz?=
 =?utf-8?B?UUE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	qMLsvElq4cAKq/jX+ZIJHEqYq8tgmungGk0h0KzrrikeeYVhMnxeZ1YHBOI966uAFVAI8OFjfd+Zm8Y7tFNIhXISHFjGzNBRzilu2U3iBffgYKfbdYEi5VrayOcU41GblrGwW8BiCI9/gS6wZhMkS5TEKOQ2I5c5uYqOZ0Yo//1C3GnthlSp0Nyav6kMtkoWOMp+SYXEg/+2cdxVTQNro1v0lH2yZkm38D0xOqBHvXMoKf6zh+wSCCgDW2LVAqLTfw2PxhJ+k7xawi6y3JrgFaRCgUBWTH1rm+mhWDgZTPTYjnD+TrSF8ejFGvsDupXIXshYPz5iD6Rl1CMd7DQfHaRzCFq7YjY0FvFMQPhXGu/qRnHEelJQ6scEuqo6FbJez3epV3vdMhN1iRx/xhcr443oA+WkkyJxK3zxHIyN3DU1TI/AsaJDycV8fwLUTuKfRfm1nhOWKzbvaiGyuBc7YewAYFKx7S0DLWpXcKMr8JNU3xapNJbP7qzfUXKTjXMnIeiAZjD40/34Le7/kn7NM1nOyUKTgACNXionpxppAnWjtnCM8Epu+AZQZ7qMAss5SjMkHJpj1cxWOOfySn7zjM/JmxbLMC5KMwyigqTBKgw=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 738e4338-042e-4db8-49e1-08dd9ec83a2a
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2025 15:48:16.9353
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zxeVWmBwK7k+C+Ykm8wW2gBIXdhnpt+OF9Z5wNMGKbIIVgdYv8GrxMZPQ8DyRaRVOgO+TWdnBa6mhAu9Uhmbz6aOIPLqEcbFley3NonRdsA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB5097
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-29_08,2025-05-29_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 mlxlogscore=999
 phishscore=0 malwarescore=0 bulkscore=0 adultscore=0 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2505160000 definitions=main-2505290153
X-Proofpoint-GUID: 7dS3NOcpivIw-NflyIpfxe87iEOUjcad
X-Proofpoint-ORIG-GUID: 7dS3NOcpivIw-NflyIpfxe87iEOUjcad
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI5MDE1MyBTYWx0ZWRfX3BLiqoKSXy65 czXeNvpdZfFIWslqLZZrQ3o7udADe+vFW8WMND4gzifylVVgb8Eb5tdteYZeuKDqi6KDlOqSAUR QZANHf6kuGSu6kpUEqhI8FCca+cJSOT5CBn7MTbu4SkPvZRC2XQ/M/jwB0QT7zADmcA3z4CLjVx
 xOaH8JD5LoGBx9ORqswy66hXTqrJjGwIbnUR5LUjMntoSI3MrJyZDSTT/CaCOnl2YNXmW6unSS+ vmgLMnPnPXa3C3UmcjnlvugVunj+sts7Nt6xPRDfJDBNYGgmBoQnGZ/pUu17iLbxq2FMS3DzmJ9 AiJb1IRBXGd0C9OTSQreXeuW0aXhIpmkUzEtUe0nLPDz23RTIQpurOm7jWOHJICGSGkahYmWqe3
 bSq17oMbCs+sey/at3EaQMWLMLxv8Oh0VqRqhYvlvR1i8jF6rKrCsEGgKGALbs7S1BJ5OLAC
X-Authority-Analysis: v=2.4 cv=c8qrQQ9l c=1 sm=1 tr=0 ts=683881c4 cx=c_pps a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=GoEa3M9JfhUA:10 a=8r2qhXULAAAA:8 a=yPCof4ZbAAAA:8 a=SCb_gS2UukKtFydXUc0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=8gvLZcY7Nlvl4CGD_6nf:22
Subject: Re: [oss-security] CVE-2025-5278: Heap Buffer Overflow in GNU
 Coreutils sort

On 5/29/25 02:46, Simon McVittie wrote:
> On Tue, 27 May 2025 at 14:43:44 -0700, Alan Coopersmith forwarded:
>>> The vulnerability is exploitable when:
>>>
>>>   1. A user passes the key specification in traditional format (
>>>   +0.18446744073709551615R)
> 
> How would an attacker trigger this? Is this only exploitable if the attacker has 
> control over the sort key (equivalent of -k), *and* the key is passed in to 
> sort(1) via the traditional +POS syntax rather than the POSIX -k option?

An excellent question, but I don't know if the people who were involved in
making the decision are on this list.  (I wasn't, and was just passing on
the information I'd found.)

https://www.cve.org/CVERecord?id=CVE-2025-5278 says that Red Hat was the CNA
who issued the CVE - perhaps they have some insight?

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
