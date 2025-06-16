Received: (qmail 20370 invoked by uid 550); 16 Jun 2025 22:12:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20320 invoked from network); 16 Jun 2025 22:12:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=QKG7I6/ywU2lAv6R
	d4q9eJv/7ExZz4ANl9OCq6yGn+A=; b=OH8g5R3nBrRNAJxkglN8HP0Zy7l2dvdA
	uYOEYjQPSJRu5lKC07X1C1/ygK3bx27Sjar66YKCz2Lq9m5zSc8rXvb/+zFS1EGr
	fd0Zg8wyd8pH4DfMg2gtZZ8mOMqhedydSSW21RY9Jqc0dlKRa/eCd+sWbqEUE+Eg
	An9LYW6+7Fl+TnQrLmflp+d7ax+N2r+F9jXC++ybXZ9C0CSL0vbaX1AZWTh9RziT
	CyQiNoMlH4v0njOIHs3aS7uxfAcfGOXQOBuHgrxxa2Yb9DBM4GUf4X9m6wmJzM2r
	ELKe3pmfZPEgwR7dWARZZQGGD98CBw+QeqSdhSZKX8bqHYJ6PyxR4Q==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J3tdb7TLlc4ILCwogBkHRUHp6zQNGudabyJaEmGQWe/BmRinnrIaUeeELW4OSvroiKD82641L0njhkzxWnAcFJenFuMbOCfRk62CS0zaSUr/QWD1Zg5auYP+DXnU1OeabLh1BqaDU7ZtLgi7cXDZoMBxKfPfKa88wxxILGv+LVz8POn+hmvEJfBi/dIyACvxAhjnB+MhC2dRXEt8yHrs11o1pWEnU9wAgBvHYUd/LkeGjjWj32IGl6kVi/LmFrJz39/XhvBn3/6yW8NLccxcvprTQMF6yixIgIcmaD624R+dp/Uitl+90nSppHXBhybWLYL75LxMquQ3JQkWUlJ7nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QKG7I6/ywU2lAv6Rd4q9eJv/7ExZz4ANl9OCq6yGn+A=;
 b=tHRSSEHDTSgrCinsW9N0Yn1zBawcXIAxTED4lTKDyEGL2czBWfVkRYCOMvQI4QLMJkGxVNAIWzrBo61C07zQ4bobp07/PbAfFcEM0U68JGxEI+PIniuE/bQDFs16WsfaucjJ+jKmPIpVZRdtTuUj1JmO06xZ6jbG+hGb6TWHbRA2gCrbKY9ut3hInyrI8mwT70AGo3FAcQgCBVS9x18ZUI/EW66cGoF4VK0moh66bncaXzfHbHliaAd0XdYAKtYGWYCAfua2MAstEfuCPeKMHcienZsoVLg9cwoRjT5D99mV0P1Yz9fRW+L7zN/kxnv0Rzwsz2ePRbAgwSmjaSHtGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QKG7I6/ywU2lAv6Rd4q9eJv/7ExZz4ANl9OCq6yGn+A=;
 b=MTcbXov6mdLhVhelBA4ckQE0riQzg4It5CaP7YdztJyWczU2s2BuQgvHscxLbxMijxbMbpmNejIXUESiVsKkZrCMZOjF335gVvRm1MdHy9mGFsG49NQPuIIqQWQSuT8mv/F7HsA2NpeRTgUZvpXp1sDQH4Ax3lMzFGslhgxpbcs=
Message-ID: <81cb4047-7a23-498b-8bb5-ae0c84d540a1@oracle.com>
Date: Mon, 16 Jun 2025 15:12:25 -0700
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
X-ClientProxiedBy: SJ0PR05CA0136.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::21) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|IA0PR10MB6700:EE_
X-MS-Office365-Filtering-Correlation-Id: 914d64d9-2dc1-4ee9-74be-08ddad22e0ab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?SmFOOWVObEc1NHA1eUg5ZUEwekprYUxnSzBJNFZMdUZrZ2FDNG5lZ1N2cE1s?=
 =?utf-8?B?VFpmcmlBZVdVVlVITG80VEFLT1NoelZhRUdkbElBK0VXOFdsWWlKL2x4VGpP?=
 =?utf-8?B?bFBDVU92S2g4R2dORUhZREZubjJGOVUyRjRxRzgzY2tOMlR1andETVZGb294?=
 =?utf-8?B?RGNMUVFQQzdLWi90N0dkMCtMNjY4QXFNSnpLRzBDOWlLaGxDcnF4Wm43WjRT?=
 =?utf-8?B?MzRBUEZzTkxnQWFRWWExSXFsUFRVUnhUMHVncmNxY3hmYmgraG1pdGNHNHRl?=
 =?utf-8?B?dE1ja3Q0NlJuRkxmVkttY0xnbGRMdVRiWDFyYThPRGpudzc2YUx3TkVUUWpU?=
 =?utf-8?B?djhod3I0bUlhVkJreFRlY3dQZ04rc2dQTy9pZ3QyZnRtUWZlOTJUSzJGUzlD?=
 =?utf-8?B?OFd2ZHMrYnA3MEUrb0gzOERQc3JCRTd2ektIWlE3TFpLS1JRS0VyT1A0dkMy?=
 =?utf-8?B?alhSVGZ5SzFvcFVZaUxWOVpESW9BdU9sSUVJRU9sb1lNWlpCSVA5dDdBZUlh?=
 =?utf-8?B?NTJQNk1jeGUrcTBTNzlOZmJyRk1OcW91Q0ZLUXFreUNBZ1hhYzFTYkdnNkIr?=
 =?utf-8?B?VkJUMVpYSU8rOVhsVktJNzdqRmdWTEhENmdjUDhKYWZLSllaMzEyMDMybC9v?=
 =?utf-8?B?UEZZdThYamdmUkdMUDVITmdta2UyS3N3UTBtRFNTZWhMblVpb2t4aTEybHlq?=
 =?utf-8?B?ZWRzL2RSUjB0Q2FSRkRHN3JuRjJwL1N3QUJnZ1hnK0tZSDNyVnk4cDd6dlR3?=
 =?utf-8?B?dTBzdnJlU1JZL0x0bVNBamFPU1lFT2VMc09WRHJRQ1ZtRHFIemZZVDVCeGtQ?=
 =?utf-8?B?WDJibFUrR0VvWUVvU0JMNDBRMGVtYXV0VHBna1lWSXBLMHAzekozOW9RYzNu?=
 =?utf-8?B?Y0pSZ3RrTVhSOW5FU3JQSFd2Y0NwRmY3M2NQVGxJYVE5MEFuMkRrM3lYRmxG?=
 =?utf-8?B?WVhGL0lnL3NPdVBWc054Y2lOcWFoTE5vUlM1VDltWXcrcCt1eFk1clVxdDJw?=
 =?utf-8?B?RHFDWkI2cUgrcEt2R3ZhYytxRkdOaUQ2eDkyT0JnUXlsbXNKLzdIQ1RGYnZ5?=
 =?utf-8?B?dDB4TjRnMjlHZ25hODVibDZ3YzNRV296U3RYbzB3ay9YK1JYcVRXNUV1eXA3?=
 =?utf-8?B?RWVNclA4Lzlrbm1VZ09uZkRwWElrU1gwQSt3M1RXYlhQcEg2cEw3VWFhWlpK?=
 =?utf-8?B?anRzcG9lV21RbVpqNy9FMFJEWU5JcnhsSjV5SS82aDVXcG1YeUIzYjB2Z3FX?=
 =?utf-8?B?cWcwYSt0d0pJVHNHVHljaEdKK1hpZTFIVzEwbDR5aTM3aHpER21CcjJtSmFW?=
 =?utf-8?B?WlZYQ0E0cmpWNUNqQVFVejR4VWJydVRXNkJrQ1dDbkhEWGxzeExRLzZuM0NH?=
 =?utf-8?B?RkQwTHpZb05SS0c2VW5aRHIyeGtKdkdXTFpXRzd4TkdrU0c5YkFmcmJvS2lH?=
 =?utf-8?B?MXBvZ0J3dlFhQWJrUXd5RnRWK1lvMkEvb3N4OUVlV0ZaR3FxWGxMRkhyMVVO?=
 =?utf-8?B?UEU3N1dyejQ5U3BBNUQ0eEVUZ2NJS0E0RTZUaGtDK1pGQ3V6WkVmdks0U0Yx?=
 =?utf-8?B?NWJ0aE5mY080cnVOdmpvcFZTVk9rRmJFUXpoNTlVV2t4YkNYaVFTT2VPZksv?=
 =?utf-8?B?TDRmTjZtRHhBUFU5V2tuaVFvZFVYTkVJKzEyUjJCQ2VnMXFCQ2RVZVUxVC96?=
 =?utf-8?B?NHlWZ3lpTEpsVVpmam81NGFlbGRyYWdKSkhFV2s3cEgySEZOQkpDQlRvbktq?=
 =?utf-8?B?emg0R3J6dERoRnFlSHQrSlhaT21wRUVXYis4UlRTM0NHOTM2UU1HSkRuQUQ3?=
 =?utf-8?B?V043cFM3NXNTcmNZNjhtcFZXZXp6aHBEUlV5RzVjT1hidU5MTFNUUDJjQ3hr?=
 =?utf-8?Q?3KkzYYVGmtYZk?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?ZEdWanZuWHh2NUhpb21iRmNJSHVyMU9WSC9FemhlTUt3aVVXWTN2cnlGU21y?=
 =?utf-8?B?elZxS05DV1B0aTczams0d3JUSUlRUDFjYWdKc2IvQUZtbjJxOHpJOW41OERu?=
 =?utf-8?B?b0N1YkljVFR5Y054WVJoUU4wazFRenZtZGJqa0FvQm5zUU0veitnS05ZMDRN?=
 =?utf-8?B?VUxPK3gvK1cxQ1hseng2bWZtRXJRMEFXL2cwVlN4QWlQR3RLRjJwcDMzMUow?=
 =?utf-8?B?b2o5bU01dFNFM3FRYUhkS2Y2ei82dkZlOXlHN0JDUmU1NkhKSzNOZ1lmTEJ1?=
 =?utf-8?B?UWtVbXZsYnVESUJJc0NLck9zWFViZERRQWsreDlveUdVWmptdU50M1dVcXJO?=
 =?utf-8?B?UjBFTzdGNHNMdnEyNGNnWTNBMmZTTFF3Z0dPK25LMUUxTEEwR3lnVk5ueUdQ?=
 =?utf-8?B?c2FZZ2w5WlNIMk13cDZKeTBiaEZrNmlGaXB0M3dxSGVYMDQ0VzJTMU1UbnpG?=
 =?utf-8?B?dEU1Zmd5cHJaOUNWZHd0WUhCQmlaV2FkQU40cWdpYTZ6U2NZNDdqYjVBSEVU?=
 =?utf-8?B?R1ZKNFZUUGZJR1c4Q0cydnBDTSs3Z2p1YlhUdXRWUWcyUXRhSHBzR1NRVFpj?=
 =?utf-8?B?MFEveXcraUViKzZKekNjcFJoZnY4UU1RMzVYeGFNbmFjc1g1TThIaW1MWmZp?=
 =?utf-8?B?eENKV3R3Sk11Q1d3Z29TbURnSnBCNHl6akR4bm5TMFMraklnUTBxNTg1MjhH?=
 =?utf-8?B?bGJNSXA0Sk5HYUFHakdNRkVtaDkrNHJ5UXNRNlUwcTQ2ajJoMUdKN2c0cTlq?=
 =?utf-8?B?SENrZmZadXhXVUZmMFphbnpZRXlCeUkrTjBIQzlRSS9zMFRTS2hpU003aFF5?=
 =?utf-8?B?T0dFaGQ2emkrVlNyOVB4alpPMXlLSnNINkhtSmZzS2NmV243ak5vWnY2N3l4?=
 =?utf-8?B?cU1hZTVjSGpjakt1TW96Qyt6REg3Vm1aZ3FDc2M2RjBVNGd3M2V6b0Y0NCtN?=
 =?utf-8?B?anNScS82VTFVbnRIZENkSWtqUlc2WldqL3p6UmNndGgrZUN4MDhNRjRzMVZX?=
 =?utf-8?B?b0JlY3BqTjQwVmh4SzFlcXA0QUl3YS9mMFdQYVF5anQ5NWVzRkVIZUlvVy9L?=
 =?utf-8?B?bjVQUUJwQTEyMko4ZkovR1N3NlFpdFRlUnNkU2lmM3paSVZwY1VvTGd2dlRN?=
 =?utf-8?B?UnhBTzNlMFBxekhuSEx3MGlEaUhLM2hyUnpPdis5R0F2b0pLMnJ4WXZ4d283?=
 =?utf-8?B?eGNGbDl5Ynk4WE9CcEh6NDQ1NmVsTUpRVHF3S2VVcUJlTXRLNHdqU2UwY2pn?=
 =?utf-8?B?SmRLbXovQ2hZYmxMV0tSNkJEcVBDSzAwemRwMzB5V1cyLzIvckdWNGpraXRH?=
 =?utf-8?B?eTgzb1FFcE9QUVYwUlhEcHFrakR5YUlwdElIRjlUY2hkK1pEUVpCL2NBY0h1?=
 =?utf-8?B?YkxFNGp2T0g0cVAvMFBYL2grREUvU2FPUWpLdWcyWGFVTk1wSWdWTU1NWEx2?=
 =?utf-8?B?dWxXVWg3cHlOZm4wSmU4YlgvZ24raEo5VVNKeVVkT245SXlBNFg0MDZuaDF2?=
 =?utf-8?B?c0cwZHRNVCszMnA4STR4Vkl0VnVDWXNPeU1lQVFBRkdhSFVsZzd2b01vQk5C?=
 =?utf-8?B?aXFXQ2FwaUNWekV6WW1vUDJId1cvejlJQmptYTM3dEFXSzEwc0d4U3R2azR1?=
 =?utf-8?B?MUF1NWhPMGgyV0IwLzM3Y2lSRk56Q1JRVzFHNGZ0bm9XcVZXbzRjNDlGcktR?=
 =?utf-8?B?Q3hSNUtkWEl1c28rcFQyL1Q2alZmQVZiWVNMVG9WeDhLY01UV2JvWEJSVk5m?=
 =?utf-8?B?cDMvQlBoTTdkcGpET2luWFIvOE1jWjdpbFl1cnY0OUlIZWRHdmJ6bnJqU3pD?=
 =?utf-8?B?SkhVRXBLNzVYSDByek0vNWZwMWxoSFJLb3MyZUdnU0ZDT0pRNC9LTGRySlVJ?=
 =?utf-8?B?dVRkY2dZakNqT3hTaDNOajQzSFgvbkVodVZRcm5MTnRtdEFFVmtMc0RWM2Fv?=
 =?utf-8?B?SlJPckdVQ2FBaE56S0RQMTB6eHR1UjJMMlhSeFoySkY1YktTVUZFOXFHbkYz?=
 =?utf-8?B?YTlmSzBhM2RtWFJWNDk5UW5Nb0lPWjVSUVlHZmVab3BBTlJYbmRhWk9GUktC?=
 =?utf-8?B?QnpIcGtuZEM3SXlidVZSTk1VQWhWSVAzc1BDRXNEWDMzalFCK2NPR3lvaEhx?=
 =?utf-8?B?UVJsYXY0Rm1CZ1VnOE13TWxNYnBSUGZyRTg3dGdXQmkyNXM2K1FON2Z0L1Bh?=
 =?utf-8?B?U2c9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	YU6kLrYu4TeLJ6yto9V2PHV7cA7LL4GyX9EMHVyxIJRVPabl1wPTmUmlSmiJgcJ9Q/YeVddpc9enCNODUvvI92bAA24zWF0P8qMPkV71Lts/TZvhVKjv3Mff3b7zGZpURKtB2Pn1u4RYWDqENXQNNnx5q9jr+mgW+gRc0lwsP4TDgtfjoBGgm7i+ubv1Z34PLDI9xA199KuAfCw6lxKHRtnU4rDlSk7uY7ccTs2lFHts1tm1BZuTWhOIYw5cP+Om16I7vcHDTYmsOvikGzPQMI/AkBNrUo2La2tA7aRcmC7SIVn84C+cyNyJviz5QR4RSKIPDP2Bu5XOu9rP30gASpXUxtCyWJchflOarKVLdWxBk2mHGSo+ttX5jlUwrNWz2ckePeIiHTb7VnFbVrc8KkT/n3hkyfbdhZG3sE+00K2pgeTZ8aj/dUQzuOb/21GLUHnOOYs7/DsnDxtm8hsTKnaSSl8PWj0qDzpJAi0lGbxYy8yL/YACwpe2LnUzl4QAWT8thCgT+beMmtjiYr82A2rSyaxDscJDzgRfxKxt3ZLSTBuJEebVlxslPSb6t5ipTIwQGtPNc1MP9pwiFxYff6UI8ZC2s7PzYtV4EXmgMtY=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 914d64d9-2dc1-4ee9-74be-08ddad22e0ab
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2025 22:12:27.1563
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: x0OrFiGbbrTOY1ZWR4QmrzlQ+ELENCtFzVWzW77MIZDq+dxQ05/2c2GYiWOD2MjcYChHHIwH4sl8fXnYFoFOB3cworZr+DCSrFdSMIiwBVY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR10MB6700
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-16_11,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 bulkscore=0
 phishscore=0 spamscore=0 suspectscore=0 malwarescore=0 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2505160000 definitions=main-2506160157
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE2MDE1NyBTYWx0ZWRfX4kVm30EE6jIR ktUp76vwrLdhBDBD1SkjWB+gli+NUmL3sPOQx8IdbmF7xrDQR70JOfSyMtlv084IPvAnDBIAj47 uz8m361zsQYIrsvxi/23ly0/HkLUinTO8/VJQoxESGrxMHC2p7NjN9ShUy5k8cDdOduSmhe34FG
 Ba2sLOTNK3bVlvP/oLnddLQpw2BJOHC+KvrCM/0nhRyfeH1RVznNRg23sf3Y96kSczep07ED+n9 uiSaIjFrY8f/bwSPqbpqZIQypFqsFYnafFC8AL5ERQlWqZQgdL6G6a91r/TuJHm2R5ME1jEz8QZ 9ocvMfnCDWn/UKihn2D0/BS60cuMZOOto43Pq5ZmHlaffYNZa5RQ3NG8EZWupHo3nBlbBXkqbXV
 G27a150eb+4i/yrHIf7EEiY3D0MyLLKw6sEceS953BlmVkbpYvpOoAMIASgj15i1/DmohJ9I
X-Proofpoint-ORIG-GUID: Sy0oH4CIsK9MJwzDGZibROlMRrTGrvxf
X-Authority-Analysis: v=2.4 cv=X/5SKHTe c=1 sm=1 tr=0 ts=685096cf b=1 cx=c_pps a=e1sVV491RgrpLwSTMOnk8w==:117 a=e1sVV491RgrpLwSTMOnk8w==:17 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=GoEa3M9JfhUA:10 a=GHR8O2WEAAAA:20 a=9hAa4PE1AAAA:20 a=yPCof4ZbAAAA:8 a=-mbflib-HXA8lyCFgvUA:9 a=QEXdDO2ut3YA:10 a=m9p5bXcFLgAA:10 cc=ntf awl=host:14714
X-Proofpoint-GUID: Sy0oH4CIsK9MJwzDGZibROlMRrTGrvxf
Subject: [oss-security] 5 security issues disclosed in libxml2

As discussed in https://gitlab.gnome.org/GNOME/libxml2/-/issues/913 the
security policy of libxml2 has been changed to disclose vulnerabilities
before fixes are available so that people other than the maintainer can
contribute to fixing security issues in this library.

As part of this, the following 5 CVE's have been disclosed recently:

(CVE-2025-49794) Heap use after free (UAF) leads to Denial of service (DoS)
https://gitlab.gnome.org/GNOME/libxml2/-/issues/931

   Description: A Heap Use After Free (UAF) vulnerability was
   discovered in the Schematron in the libxml2. The issue arises in the
   xmlSchematronGetNode function when processing XPath expressions in
   Schematron schema elements <sch:name path="..."/>, where a pointer
   to freed memory is returned and then accessed, leading to undefined
   behavior and potential crashes.

   Vulnerable component: The xmlSchematronGetNode function extracts a
   pointer to a node from an XPath node set and then immediately frees
   the entire XPath object containing that node set, rendering the
   returned pointer invalid.

   Researcher: Nikita Sveshnikov (Positive Technologies)

(CVE-2025-49795) Null pointer dereference leads to Denial of service (DoS)
https://gitlab.gnome.org/GNOME/libxml2/-/issues/932

   Description: A null pointer dereference vulnerability was discovered
   in the libxml2. The issue occurs in the xmlSchematronFormatReport
   function when processing incorrect XPath expressions in Schematron
   schema reports, leading to undefined behavior and potential crashes.

   Vulnerable component: The xmlXPathCompiledEval() function can return
   NULL when evaluating invalid XPath expressions, but the code
   immediately dereferences the returned pointer without checking for
   NULL.

   Researcher: Nikita Sveshnikov (Positive Technologies)

(CVE-2025-49796) Type confusion leads to Denial of service (DoS)
https://gitlab.gnome.org/GNOME/libxml2/-/issues/933

   Description: a vulnerability causing undefined behavior was
   discovered in the Schematron in the libxml2. The issue arises in the
   xmlSchematronFormatReport function when processing sch:name
   elements, leading to memory corruption and undefined behavior when
   accessing namespace information.

   Vulnerable component: Memory corruption occurs during namespace
   processing, resulting in the assignment of a corrupted pointer
   (0xffffffffffffffff) to node->ns. When the code attempts to access
   node->ns->prefix, it dereferences this invalid pointer, causing
   undefined behavior.

   Researcher: Nikita Sveshnikov (Positive Technologies)

For all three of the above, note that upstream is considering removing
Schematron support completely, as discussed in
https://gitlab.gnome.org/GNOME/libxml2/-/issues/935 .

(CVE-2025-6021) Integer Overflow Leading to Buffer Overflow in xmlBuildQName()
https://gitlab.gnome.org/GNOME/libxml2/-/issues/926

   Description: The xmlBuildQName function in tree.c is vulnerable to
   an integer overflow when calculating the required buffer size for
   concatenating a prefix and a local name (ncname). The lengths of
   ncname and prefix are retrieved using strlen (which returns size_t)
   but are then implicitly cast to int variables lenn and lenp.

   Discovered by: Ahmed Lekssays (Qatar Computing Research Institute)

   Fix: https://gitlab.gnome.org/GNOME/libxml2/-/commit/acbbeef9f5dcdcc901c

(CVE-2025-6170) Stack-based Buffer Overflow in xmllint Shell
https://gitlab.gnome.org/GNOME/libxml2/-/issues/941

   Summary: A stack-based buffer overflow vulnerability exists in the
   command-parsing logic of the interactive shell in xmllint. An
   attacker can supply an overly long argument to any shell command,
   triggering an unbounded memory copy that overflows a fixed-size
   buffer on the stack. This leads to a reliable Denial of Service and
   could be leveraged for Arbitrary Code Execution on systems without
   exploit mitigations.

   Discovered by: Ahmed Lekssays (Qatar Computing Research Institute)

BTW, users of libxml2 may also be using its sibling project, libxslt,
which currently has no active maintainer, but has three unfixed security issues
reported against it according to
https://gitlab.gnome.org/Teams/Releng/security/-/wikis/2025#libxml2-and-libxslt

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

