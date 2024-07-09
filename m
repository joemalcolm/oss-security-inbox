Received: (qmail 5971 invoked by uid 550); 9 Jul 2024 21:07:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5947 invoked from network); 9 Jul 2024 21:07:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	message-id:date:from:to:subject:content-type
	:content-transfer-encoding:mime-version; s=corp-2023-11-20; bh=t
	xGIvSTX/Oi4iVvLtj91oGLOyQ9JEg+XgWbR4Fz9/y4=; b=Bf/8+XELhCI4IWNrW
	IHzcTZAqNGDPQQBglErkFeZmG3ns+Xn6VImL9X5TtnALUUEvD9iGJYrSC1u/Ae5x
	wgVh1VRd9rIQvguytvMlUrWWcaphd5/MyXwszaQkb8Otln7QDyrBjHSqKNfgEAQ6
	LyfDanuEENOteGdMcpfiW3OfkaxXhzlcsGKzEHlHcBgrMJ9xbXIfu3kowUzHXTCs
	XEi9ijx3eq7LteE1iOObxolcb7yuMs6fDQBN6MGmj6ECVNTtTUBV24/XYumo1OyV
	hstHuyidiZfLW4vPGZzpru1ncQM1C/ZIO7yV2vhbhx8exUF8VKauvfJRZKLgwLVd
	+SfeA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OcJVanu/GeofUzA1JSwyNM8h5kVW4CLy5PjmxBOP6gfozGg7dK/sedxwzQ2FcKXj7RFTXV6V1VgQoYORqSr9P0loBpQuvfpY+FXB1Li4qJqKgI8mZ73QJ1WIBzR7O1LvdKpeqV6/sPXgMbAU9RkgaVSFF07vRXZoilBtfwhi/tMTxCOE5VhOHBLDpD2VoSByA2aee9w3hjgqU6CxHM8BGdU+qx8z+qOcmF9CpIT94JadcRPhNdFjcMYjH3MVtVP8IzoBpnkH6i9jEFPzDTrGihT59/s58NS4I4GWkn8PHuHzM7fqVt23hGPzujRjHuXOuZuMCV0LEzXkilAW16DOBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=txGIvSTX/Oi4iVvLtj91oGLOyQ9JEg+XgWbR4Fz9/y4=;
 b=m9QCnWFVcpLZJuNUDr+15zv4O/yZRrFAzOq5RWWRA5YSGgfh5fZ3MhC2WSsk9hXIUUPmEEul2L/tWkwCeWA+LLLYcRlCuxCHmQbmEkllbhrlfNpjnFFc7/zpYH3iBfL4UyOwb6EVp9Qe9JPF3CFNuQGTVWi8JdaAgLABz2P4wDPMczMgVptnwDAU8rLu5DJiy/pSpqgU337fwULpqV2Fkv+dOkmDlPzb9w87ZFyHpPTvo4wkt95/J2eZ7BWvFpBg/3tnydIeeWyHiz7gJNpfqp0fNyMDLA+NKWNqof7J+VndaLdDvu2SqiZW5km5Gb09sQHxo6NyZ87ZOm5yTEKvpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=txGIvSTX/Oi4iVvLtj91oGLOyQ9JEg+XgWbR4Fz9/y4=;
 b=Xr79ZNEW7T2m7k0vAJEzgqxleFVJ7Muc6wYjb+X5DojKUMXisjgPsj/aDlIruDV6lQeRWEvbRT84xc3EoKSvkwCJCnvNFWVH0dOlLPIM+F1E5U/Q+bDz0Aeh6NP0/dFyWBLMmVdgYC0oJscIU1LgiioTXgadaEGtGmnTLbWE+CM=
Message-ID: <047e2b26-5287-4c32-aac8-224292b1b284@oracle.com>
Date: Tue, 9 Jul 2024 13:03:28 -0700
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
X-ClientProxiedBy: BL1PR13CA0149.namprd13.prod.outlook.com
 (2603:10b6:208:2bb::34) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|LV8PR10MB7967:EE_
X-MS-Office365-Filtering-Correlation-Id: d9acc5e2-12ec-427d-8c82-08dca0523483
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?MnY0eXNFT3EzVk84K2VVbDdwMlJkeCs4OCtSV1hibTRUYzBIUjIwQVIxVVZp?=
 =?utf-8?B?cVVLMGFxSnJUSFZMSTVlOTl6Ky9CZ1ZhNkhtQ3Y5YnE4RGwxMDlCb3h3YUpT?=
 =?utf-8?B?eXJRTDlMUGxhZlZsTUxYbGhYMTUrTEdhV01jZmNDTHVKNFNLNk1JMk9MWXE0?=
 =?utf-8?B?c0Z0ckNjcWhXWEhSSk9PcEFPZ1R5ZDB6Z2ViUC9zbmRCcWFXdy9MZjhpNDR6?=
 =?utf-8?B?L203ZmJvZ0tZeXgvaEwxMzJ2bmFkNHVXdit4OUloK1VVbTF3WXRFM0tkdExi?=
 =?utf-8?B?bHdqcHVpNDlud3FFR01Jc0pDVWszS2ZQYitsVGRWMXFCWkRxTlZaaVcvWGl6?=
 =?utf-8?B?SnZlK1hOdURtbStZVnVaRFBibDN5NVgyZGkrN2tQL3BJRTEzYUNtQjlXamFQ?=
 =?utf-8?B?SHN3TWFZOE5PTU01L1hJQW84WmZaMzgyZ3RjaVl0c3k0d0xYa0R5V0dGQW5H?=
 =?utf-8?B?cHhaQUlFZEs2QkhvNUc1K3BySTFQVFRGcnRuaTBkWGNaRnZxSzEzUmxWVElr?=
 =?utf-8?B?MHdsaGluQ1RGRGRYUXQ4OG1PZm51bGt0NkZJUEc3SjFwREZwdVhqQkN1alVq?=
 =?utf-8?B?djVPK3ZBQzVOd2NONmVSQTZZOEhLV0xoam5xSk90TDEwMWZCRDdTOU9WTTFL?=
 =?utf-8?B?T1ZBYVR0WGlpK0NUNnk0QVNQQjlhZTBZN0h2QXp1ZWpkM3lxc1R6aUlLUHhV?=
 =?utf-8?B?M0RjWEFDc0lOdU5TbzV2bXJNQmlTc2xyWko3b1NpRmkyWGNvbzRZcU1pYllh?=
 =?utf-8?B?MmN4SG9LZHRvT1RJWXM5WUFpSkZSemZRSkxkM0RHeTlSRXAwZXJ1YkxkNzZp?=
 =?utf-8?B?aVM2aGdoYUlOcnZwVkVFSTU2WXB2UzJ4MWo2elBTZlAvZEZYZUtOdG8yeUpZ?=
 =?utf-8?B?ZjFyRXdUMDZteXM3OVZPeUVHV25wR2VHU0JjanRWR01CdS93UEo5dVpIZlVl?=
 =?utf-8?B?cm05OG1pR1BsM3ltMFAxanhCOGxKWThRYUQ1QmVpOVVBY1ZUOWJFRlEyVERM?=
 =?utf-8?B?ZkM2dkQxVlBEcHJ1b0ZXRzhVM1dSVFhtcHNZeW90VkJwT2dLOE1sdjk0YlJB?=
 =?utf-8?B?WTFkaFlzM1ZTdkNJZ1h5RThaRzZ3d3RCK3AzVEJuMFNVMVZreFdtWUVPRVJ1?=
 =?utf-8?B?MnNXTlJCa29LamcrYTcyZGwwOURpdEhGUUxXaTlQdGx3K3VRcmR3T3U2NXBh?=
 =?utf-8?B?M3luUVpPU0ovazFYbkNydUFjZkVRVGRrMUZzRWFpTjlTbnNwVXlwb0VjS3ND?=
 =?utf-8?B?TUZQN3g1TnN1cXl2VVZQOFQwOUNnVkZxdWdaVjIvSjRqY2x6RUltaUhDczNL?=
 =?utf-8?B?Sm5FOWZSNTN4cWVMbEVsWmJVK2NlMWhSNHZtNlFNcERKb25qZkZ0MGNLQmRz?=
 =?utf-8?B?N1owZkUvckZKbGMyOHZVSXlNQXNzdFZIeEVOcVV4c1F3Qk5DM3N5djBISUxh?=
 =?utf-8?B?MkpnK2RJbVFFK3RkT2hzSlZWS05aZ2FYMzMyeEJPL0hUNWE4cXhvbHZLYUF1?=
 =?utf-8?B?L3Q3Rk4yRkEwdGxmOXM5MGxxWUVydHdzMm5hMFBJcEFwS1c4cVVkdVJ1dUJZ?=
 =?utf-8?B?RUZMUVZZbFgxSU1tT3oveFF1bUV6TFA1ekM0dlRRYkFpYjFYTGk4THM3dUVr?=
 =?utf-8?B?ZmlGa3hwckYrVm1ZT3lWcDQrV2hic2VsdzBtK1RqUXJ1akgrUXMvT3F1cW1Z?=
 =?utf-8?B?RmVrRXpzQlp2NUZ2YnljK0lhT296MVoxTTZiSzNURmhCV3J6RncxcEprTUw0?=
 =?utf-8?Q?lc/WJKu28Nt4OM8I0U=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?THZqajA3OUZWWU1RL09PbXpqczBrdjE3UTlkT1FMRURNbHlqcXBnK0RkOUE3?=
 =?utf-8?B?dGVDZkNEcmxOakMyclZoTllVVVo5VlRtVThVUlFud2gweXNzUzJoOFpMelNm?=
 =?utf-8?B?MWU3OVJ4Q1JtcWlYRWtsK2d1am5PampXOEZNN3JsWGZaYmsxUHpTMDBWZzFo?=
 =?utf-8?B?M3ZlTjlDaFVudGl6VU53QlV2cUJQRkZ5VHNnV0ZKai9DWFErMWkrYWJvNXpF?=
 =?utf-8?B?ajlZWkxxbG9Ea0JVUmc3bHZJbDNlOUdBU0k4N01LS0h4QlpSTUVpY2Z2aWEx?=
 =?utf-8?B?eVRvM3ZKL2ZvWm8zL01FTFJOM0dnSVo0dWREWTVGQ25MdTUxVmpqLzMra1JB?=
 =?utf-8?B?R1dhNUw4YlU1Ym80SDZIWGpIcDNxbU5ndHowVEJXNVhUcjBjS1pWTXFsTE1B?=
 =?utf-8?B?aWhiRjFiekd4T09Sa3R0ekl0ZWxKeC82Y1VzMUszeFVyV00xNFA5SDFVY1FN?=
 =?utf-8?B?RFcyd2hDOUhFRERORWpMaklYQ2dwU0Y3NE84SDRuREFKK0xjRXRDNmtOTHpx?=
 =?utf-8?B?UUtianpOZUl3MFNlUXpXUjhjVG1GOFovNEFuSi9YaWpmcVNJbEgvejVrL3dr?=
 =?utf-8?B?eUNtejROMTNONGxaRXBLZVF1ejhaV3kzdm1wdE9iYm5TUnhweEMybXJYMk9L?=
 =?utf-8?B?NU12RXpIS3A3Y3NUL3lyZ0l4eFc2TFduelAvbG4yc3dWT2J2dHJDSDk2b1ZN?=
 =?utf-8?B?aGdHRGlNc3B1Ymc2ODJ1eDUzdFNnUjhvUCtMdzBXZ0xEaFc2MnIvWTc0N1E1?=
 =?utf-8?B?OXhqS2pFcC9URVpLcjFNWlRVZHJsQjhERkFkakdMNG8weE9GSGNMbDczTG5s?=
 =?utf-8?B?d21LRXRiV1k5c1lObUJicVB1RklESHlhOVBtOFpVOE5hNkJSWkdLY1J0ZlFE?=
 =?utf-8?B?Q1pkVzI2K3NJZ1E2dnNjOXdwSWFHa1Zkcy9kUTRzWnI0RHJndWVoRlJzRUxW?=
 =?utf-8?B?S3lzWlZ3MWxEVkNmYWxJWEhYNnNhVitsS2paSmpLUU95QUQwYUFrMHV4VlBw?=
 =?utf-8?B?c2wyWlJ4WGpKQnFxVVVieStoVGk5YkoxOFVHUkxxVFViWXFUMS91eFI4VE9o?=
 =?utf-8?B?MlZmN0llWWhaVlZMSzJWSDQ1V3VxVHNEeW51S3BIendZRWNFYVNGc3NObzll?=
 =?utf-8?B?Z1hvOHpuTU8yOVBRbGJWZnRJR2FTeEZhai9KVWlFTFRITjQzMFhTZlRmU0hi?=
 =?utf-8?B?Y1lrR2ZLOVlQMmJBb0VXK2FKanIyQTNFU3F1QlFLaVExMklSYmVzKzVuL29z?=
 =?utf-8?B?WmdZMkpzQnhjdzJXcS81ZGNOL1k3cGtXM0VMU3BWamhvMWovakhqTi8yN2do?=
 =?utf-8?B?Zmt0NUpIYzV3VlRNUjhLbzB3SmgrV1h1bEc5WTR4R2VMQ01Qd0tFWm8wMkEy?=
 =?utf-8?B?VEZSOXpJSkhQTWF3MmY1UWZNeGJ4THcyVy9EMU5rdVNiZUFQTjZ1djVqcE9h?=
 =?utf-8?B?b0FUczZ6dE13R24xQ3ZlMWFTZXcxSnhjQTM5VnY2ZVZTZmpXV3NMUnFlNFhI?=
 =?utf-8?B?eERPZUdXM0pLYzJOVnlVN0tZRnRacyt6dzVPM2E3WVpDVHlkME5PSW5lK0g4?=
 =?utf-8?B?WGFCUjZSV0orbGF3Wk83M0hITjNDeDZFNzFhbk9xeUk3a09sam51cTN2RUJZ?=
 =?utf-8?B?aGFRTTRuM1RuUm1XNWlhUVFDL0gzTGJTdWVBc29OMHJScHpwdno1SDZkTndO?=
 =?utf-8?B?eWxvQS9zL3YwSHJxb25EODFPTlhMUFFXaGhuVmdwc29QNUV0MFdRYkVVcmt2?=
 =?utf-8?B?MzdPVmhTNnVpUVdHNjUyYkhha1ZLQTYvVDB6YVdkdm04emxiOW5hZzhubUY0?=
 =?utf-8?B?MVVIS1hyUGVVQko2T1Rqc1M5QWU3cU5ZZGhRTi93dWN6cnhHeUVWb1R3UEoz?=
 =?utf-8?B?R0o4RzYzRmtOWGR5eEcvQTBYUE14bWtrNTducVluR21DNkprNnZJZ0NPZkNx?=
 =?utf-8?B?dXNoQXlWTnZoMGpEZnV4REo0K1oyckZjcTZwWS9QVExHeUl6SVpPcnF4Smht?=
 =?utf-8?B?RnhhazRTaUQzUzY3WVZJYzQwK1RQMGU0MklLMDlyK0tvbnJKUXFHbytoUjln?=
 =?utf-8?B?WXQxM092bTg5RWtGeXFINFNpUWlIeVd6UzhQNjhOWFQ2UUpycmRoVEo1V0x0?=
 =?utf-8?B?NEloT1VncW9HSUcwYmtZRk9jbnM5QlpweXNlQjJYbVVtdE1Oc1ZUdEF3WTJF?=
 =?utf-8?B?eFE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	s8UnwtFdjZ43iY4X3wPy3GA6gujnJ9sMbFlImsgTWBOy093oKn0xUXysTZm4rJy4JO3qi3+EwbWhvah5cIgtpkTR8z1sCTWrhKZey6JFlquBHqbhvVwumUojoTwKsVDPz7V8/URhVeUwBbrdik8CbSzRDaoJuDCG3OZbrhdMhdFF9lYs6Pd5IRj588ECgyNw+xH0GOAnn5BjnuDmFhpE81wMjc+l1V+BqRXc6U8R5iNZZIXzubI9H4URtUbBMipSTCl5n/sQ5QqJOd1t4fBMEONHOq0WnAyRYO0P24wUdRCZTouqDXMzYMb4lDl8ela05iWhVteGrWULZH8ua+OPrS4zdJdRDlJCq218edCsoQGrwYE4+BmWm64UlT6WSuYgIyYcMyKPIqz1H2xPykD8LCNhaVRi+Czs6+5uOv+jfWLbrSlstGlXZjZhf09P8a5DXIKqI0FuIbiCQ12wQ0xMD1rmibziKXc2Be2upegOf3ZPe0eMjuakvaVwKarIgjLc8yPg1T6RPsM0cfxIdlHfiI6e0+y1IE7oPPf1I/DJ98BEQSAbS1nhVLOuoS+DDrUS69WDFptp4Ym7qT8VLZlQ5nGPRkLJhEF4a6pg6PbvLCg=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9acc5e2-12ec-427d-8c82-08dca0523483
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jul 2024 20:03:30.9846
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +qk9/4fcw9amF3QI2yOjT/TdkjtfsohL7MRTorzffup9JqaKSSuZGD+swTaeJKSHV30u58r+pASThKTe7nM09knKV9s6YtyQUu8ijhZ7LDk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR10MB7967
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-09_08,2024-07-09_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 phishscore=0 malwarescore=0
 mlxlogscore=825 mlxscore=0 adultscore=0 bulkscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2406180000
 definitions=main-2407090136
X-Proofpoint-GUID: lwXMuMnoOhJQknJeWZBjn-xIbKDxQGw-
X-Proofpoint-ORIG-GUID: lwXMuMnoOhJQknJeWZBjn-xIbKDxQGw-
Subject: [oss-security] CVE-2024-3596: RADIUS/UDP vulnerable to improved MD5 collision attack

https://kb.cert.org/vuls/id/456537 discloses the new Blast-RADIUS attack:

> Overview
> --------
> A vulnerability in the RADIUS protocol allows an attacker allows an
> attacker to forge an authentication response in cases where a
> Message-Authenticator attribute is not required or enforced. This
> vulnerability results from a cryptographically insecure integrity
> check when validating authentication responses from a RADIUS server.
> 
> Description
> -----------
> RADIUS is a popular lightweight authentication protocol used for
> networking devices specified in IETF 2058 as early as 1997 (obsoleted
> by RFC 2138 and then RFC 2865. There have been several other IETF
> standards (RADIUS/TCP, RADIUS/TLS and RADIUS/DTLS) that cover and
> enhance various parts of the specification for the use of RADIUS in
> authentication. RADIUS is widely used to authenticate both users and
> devices and widely supported by networking devices, from basic network
> switches to more complex VPN solutions. Recently, RADIUS has also been
> adopted in much of the cloud services that provide tiered, role-based
> access-control to resources. As a client-server protocol, RADIUS uses
> a Request-Response model to verify authentication requests and further
> provide any role-based access using Groups. RADIUS can also be proxied
> to support multi-tenant roaming access services.
> 
> A vulnerability in the verification of RADIUS Response from a RADIUS
> server has been disclosed by a team of researchers from UC San Diego
> and their partners. An attacker, with access to the network where the
> RADIUS protocol is being transmitted, can spoof a UDP-based RADIUS
> Response packet to modify any valid Response (Access-Accept,
> Access-Reject, or Access-Challenge) to any other response, with almost
> any content, completely under the attackers control. This allows the
> attacker to transform a Reject into an Accept without knowledge of the
> shared secret between the RADIUS client and server. The attack is
> possible due to a basic flaw in the RADIUS protocol specification that
> uses a MD5 hash to verify the response, along with the fact that part
> of the hashed text is predictable allowing for a chosen-prefix
> collision. The attack, demonstrated by UCSD team, takes advantage of
> the chosen-prefix collision of the MD5 message in a novel way. The
> widespread use of RADIUS and its adoption into the cloud allows for
> such attacks to pose a reasonable threat to the authentication
> verification process that relies on RADIUS.
> 
> RADIUS servers that only perform Extensible Authentication Protocol
> (EAP), as specified in RFC 3579, are unaffected by this attack. The
> EAP authentication messages require the Message-Authenticator
> attribute, which will prevent these attacks from succeeding. The use
> of TLS (or DTLS) encryption can also prevent such attacks from
> succeeding. However, RADIUS over TCP itself can still be susceptible
> to this attack, with more advanced man-in-the-middle scenarios, to
> successfully attack the TCP connection.
> 
> Finally as explained by Alan Dekok, developer of FreeRadius open
> source software -
> 
>     The key to the attack is that in many cases, Access-Request
>     packets have no authentication or integrity checks. An attacker
>     can then perform a chosen prefix attack, which allows modifying
>     the Access-Request in order to replace a valid response with one
>     chosen by the attacker. Even though the response is authenticated
>     and integrity checked, the chosen prefix vulnerability allows the
>     attacker to modify the response packet, almost at will.
> 
> Impact
> ------
> An attacker with access to the network where RADIUS Access-Request is
> transported can craft a response to the RADIUS server irrespective of
> the type of response (Access-Accept, Access-Reject, Access-Challenge,
> or Protocol-Error) to modify the response to any of the valid
> responses. This can allow an attacker to change the Reject response to
> an Accept or vice versa. The attack can also potentially intercept an
> Access-Challenge, typically used in Multi-Factor Authentication (MFA),
> and modify it to an Access-Accept, thus bypassing the MFA used within
> RADIUS. Due to the flexible, proxied nature of the RADIUS protocol,
> any server in the chain of proxied RADIUS servers can be targeted to
> succeed in the attack.
> 
> Solution
> --------
> RADIUS-compliant software and hardware manufacturers should adopt the
> recommendations from the
> https://networkradius.com/assets/pdf/radius_and_md5_collisions.pdf
> document to mitigate the risk of the RADIUS protocol limitations
> identified in this attack. Manufacturers who bundle the open-source
> RADIUS implementations, such as FreeRadius, should update to the
> latest available software for both clients and servers and, at a
> minimum, require the use of the Message-Authenticator for RADIUS
> authentication.  
> 
> Network operators who rely on the RADIUS-based protocol for device
> and/or user authentication should update their software and
> configuration to a secure form of the protocol for both clients and
> servers. This can be done by enforcing TLS or DTLS encryption to
> secure the communications between the RADIUS client and server. Where
> possible, network isolation and secure VPN tunnel communications
> should be enforced for the RADIUS protocol to restrict access to these
> network resources from untrusted sources.

https://blog.cloudflare.com/radius-udp-vulnerable-md5-attack/ provides
additional detail, including:

> The IETF is an important venue for standardizing network protocols
> like RADIUS. The IETF’s radext working group is currently considering
> an initiative to deprecate RADIUS/UDP and create a “standards track”
> specification of RADIUS over TLS or DTLS, that should help accelerate
> the deployment of RADIUS/TLS in the field. We hope that our work will
> accelerate the community’s ongoing efforts to secure RADIUS and reduce
> its reliance on MD5.

https://www.blastradius.fail/ has further details from the researchers.

https://www.freeradius.org/security/ provides a lengthy response from the
FreeRADIUS maintainers.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
