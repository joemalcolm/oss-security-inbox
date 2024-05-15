Received: (qmail 30500 invoked by uid 550); 15 May 2024 17:50:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30474 invoked from network); 15 May 2024 17:50:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : from : to : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-11-20;
 bh=M4Bdp3I1k6Mfv8b9a4z5oTOO3BvrlApijAPGpqZxMtU=;
 b=QJ9zAzce2W674k/tzGovyBt/+lcxzhpueMQaxMBqU6lYCVr/bmiu0w7t6Pec25l1NEKM
 2X9iDs0DKEJsieCp1hDFajAtZ7qmiUxTJKW9FLh2Wnffc/M3tsB4PIP7u4QBwu73A2X2
 nRtXNEpWjvgKcEvvvVAz8LtlD2HYJERcCtV0JL2VGJEwysWSON+8dSTZSfRJxbFcGMb4
 Gfag5p5JNU+4pH1FfdHiBpsZpjuyAOuPUELXv3C/GRUIYwY2ImMxki5Pol4I9jND3rML
 P7yodbCw2eUmQfBE7g1tPdqw2JP6/6Ct9DF/VI8XS0eb+OWQWm43pU85H7M9BN3gdhew sA== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TmHSWNRV9F1HerRgzu/i/zhz9/Z0R4+EmknRHT6TZusV2YlXfFGQYiR0hgPmf4kLLBxYyhRwhHt/yn66X6CDqTIJCxDdu/zLTUF3OeJje3kOjVs9NJS75HCiOdwTEBGT9FMFmdyxRzDwKkd06LVyL/gagjfwyKJ9VDByXkc9wUUaSqONP5hL7vqeWswVO3nnd/5id7Z61t0IjLnnVUj2RQ4iyjTTf22AbgO0AJI5+6IamE6P1JBctM+rSkV+JcPrph6ceqUXKnGPmyxaXQtZcEp3/+Pp6Z+jGzckTSUkOp7I0In0vqraWKBvot4gAehWBo6OWSYrQWYMXnHsgsby+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M4Bdp3I1k6Mfv8b9a4z5oTOO3BvrlApijAPGpqZxMtU=;
 b=FemCglIi3hflbQUREq+cqLrzzkx4OoQzK2hq8IF9ujUgIF5g+9KE56fBevmR6YqWJme3nHi1w/dQEpHTmIljtWNZqa0XAJ2pWHPuxNQSSAbrOkzYF2FyCc6VfSUXgonBd5po5uCX27PADTh2Iq16n/6/6aXYoMvixcL1KaJaWOscnR/kLXr9UWKlSjaa9jUfD8e+mDgGY93z3AZcKMuWKwvaQ+ZiS+X5pYQ2+xtZT8a2bFFVtESiLSHQWeHxuKjZh5pPvUveyc/DzpA9j2V3JQkvye9LCLxlcjFRCcYTwkN80YsrI8oJnYGt+Btz9jdR+EVQSnNf7Ay46B/dEqqJvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M4Bdp3I1k6Mfv8b9a4z5oTOO3BvrlApijAPGpqZxMtU=;
 b=P7uR9YPFlgP8C15529iwTbi6NQWcjLTWrrifxxF+j3XKpOnjvS0M4xm6icUtGhT+rprz5tLE+XLcdrEROArMoniggpVYYra68Jhu+bS+DJan+xVBK8OxzDk+XpaYN8Nd+hSan/oVyQ9ANl3vBMoKw14HbALGkVt8Tv7b0w9XkWI=
Message-ID: <e4050f09-9238-4d08-9117-15d3bbbab237@oracle.com>
Date: Wed, 15 May 2024 10:50:09 -0700
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
X-ClientProxiedBy: BYAPR05CA0107.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::48) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|BLAPR10MB5075:EE_
X-MS-Office365-Filtering-Correlation-Id: c36d1580-a2d6-401c-71ad-08dc75077813
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?S0hLcVpydXJvdVdxUVJFay80WjZiK01iTFlqeUNOTEozbXdpWDh3dHY1cmw0?=
 =?utf-8?B?d3dJK1NwUWMyQnI3bkNTYVlVSzF6T1FFVmg2YjNVUkptM0RmVWdhM3RTaEVr?=
 =?utf-8?B?QW1HazZybUFQMVZnR1JZMkhCN045STNBaWlqZVRsVWc3dGlGNGc3WkFNRlkz?=
 =?utf-8?B?OXkrcVNUaG9IWHAvenRyQ3haL0E3cGZIQ3hwVUxMMkdHbkFkMUdqb014V3h6?=
 =?utf-8?B?ak55YkUvUkt6OXdhNlVIaThBV3pzcnhBcGw3UGxud2Ntc2UzOTVrR2NVekor?=
 =?utf-8?B?aXZGN3pWeGZFbHltNi92dUVXeHFWQWpaVWdkOXBWdWZZaWJKNUdoeG9DVVBE?=
 =?utf-8?B?bEp4VFhVSUNkbmNCcGw1dnRhbythZi9GTWVySVVHUXNZY3UwUnVxeE5XQVNW?=
 =?utf-8?B?T3JYZHdQZ0FmanhSalBoeFMzNGsxN0hyNGtWRS9ldXNPdjdwQkZPaFJMUmE1?=
 =?utf-8?B?QWJZR1ZTQlg1clM2Y3piSXNvK0g4cmV4VGVkSGozVUpQdmZHRXpVWWx2TnR6?=
 =?utf-8?B?dVFDaVR6N1dFeVZYQlM2RVl0M0todzhmWWZlaWZKdmhnWU1aRG9xamd2bTBa?=
 =?utf-8?B?Yld3ZlMxU2hENWp1UjU0em0yRkplMHpqeldFcXg3bDRaWitZRE8vOWhsWm9T?=
 =?utf-8?B?QVNqZldHMktzbHdZYnhvNXcwdllyeW1LRnNyYk5ZdEFXY0ZCTTVnVFdIMU9E?=
 =?utf-8?B?Y0czVkVDbzl5M213bzE1MGJYdVNwVVZxWm5hMk9HK0lGQUxjS0xNa1d3MkJn?=
 =?utf-8?B?anFyWDlwaFljSHFwemcxbkxDNTRrdHFncHFxS0FMaXVUd2NlUlJYanhML2cv?=
 =?utf-8?B?amNTR3NucnF0TC9QZmZJczl5U3dRaXhXUERUUDdKMXovUE55T08zTzF2ZUY1?=
 =?utf-8?B?TjN6anpNTk85QmUyYlhPVTQ4d3JjQzhwTUxqVFpITjBDYkdYekVnSU1zbGFT?=
 =?utf-8?B?VGNiUTVKWHJjSyswbUJDSVlFamZPdUtlTGhYMFN3cm80ZzliNW9uRWZ5UGFG?=
 =?utf-8?B?Z2pRYnV5Nmo0eUhzZlBJZ2xoTmVISkVQM3pRRW84Y1Z1TVY0ZURnT29YTTJq?=
 =?utf-8?B?SXp4SU9nd1ZhcnF1NXRIc2FGR2FQMm15K0o2V2tDdFBxVnhRZFVHTWYwNWN5?=
 =?utf-8?B?K1Q2UlF4ai8rQTVXaVZWZ2taSnRUTk1VZE5TT01nbFdwQjBKejhPU1N2MXV2?=
 =?utf-8?B?d1k5N0FCMGUxY2lSeUpxYW9jdm5UTThkTzg2UDYxUVpGalExZ1Z5Y2JJeDNj?=
 =?utf-8?B?TitYenhTTmI2ZFVTdTdWZUZOci9uWEdNK3hMN3NDdlJrOUdEcEZRbDdiM2Y2?=
 =?utf-8?B?dDNjYlhHSE1WYXdkL2tXdExFRzQ2T0c1WVZxWHpYSW9wZU4xT2pZdmVweHVK?=
 =?utf-8?B?Y1dSOVVDMC9zcjhvYkdVUjd2a1VTTEc0SXRoUEpRUExldGtvMCsyeGozZWRI?=
 =?utf-8?B?N1NZcFVwY2lhQXJlNUQ1dzJjcHYxMGVCMzcvdXlPT0R0dzEzMUFNWTB1c2d4?=
 =?utf-8?B?ckZveTB0bkZDU0w5OXFtRHMrSDcxS1ZSL3pQazRZTEwyK084Z2Q5eXJuS05q?=
 =?utf-8?B?S2VucndBYnNISEtMaWN4SXN2WitkS3grQldUVFhFTm9XMEF3cVIzbUdlZEdp?=
 =?utf-8?Q?kDFJGd6f2tfUlROhUplje/iDT7RRRt0dUMlARt/nIKA0=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WmxYMzZYMzV4SVg1d0lGd3J3TTRaRHBPOU9tYmlhMlVCaVkyNzBnYUZZcjIx?=
 =?utf-8?B?ZW4zUU5UUWVaODY2aWRMd1cvRXNTQXVVb0RKRkIrWVFJNmxBWGlxNjFmVG5P?=
 =?utf-8?B?UEh0R1ZqKzNqd2pnUG9BS2puNC91Wk5JK2ZUOFVOM1BRaXFoRktaWHh3a1Y0?=
 =?utf-8?B?ZVRtb1VvdWVZbFVuN0JkS1FUMVlBWGFjVExNdGtPRHhYSFRuV3pCaVRPQ3pJ?=
 =?utf-8?B?WE1tNE1qTU9sbnNEbTlzWFNFSWR6S0VkUkhBbktQTnJDWWY5WEtaVTc2UGJv?=
 =?utf-8?B?UkFkVUh3Sjd1OGtUUURabjNlYVJzZWd5QnNFUjNYYzRKQ1orS2ROMTRMMGl5?=
 =?utf-8?B?WVlndEVESWdZSDR6bEYxM0dIc3NHZ1U5MmFhWWpqYUZGUzJSdGtvMDZHTy9y?=
 =?utf-8?B?RCttR2FCVXBrdGhwVVBBYXl5Mk1lUHBydi94d0JnSXJ3RFNnTno3MXg5K3Fw?=
 =?utf-8?B?Mm5heUNKc0szbTVSbWxXb2tVR3hnRHcyRU9VWDQ2UzhBYitPUmdwSUc3bmlC?=
 =?utf-8?B?Y3E4dDRMdHFHWTgyK0VFclJCV1V1NHNKNjlQTmFXbGxSdWpUMG9OdWpSMmc2?=
 =?utf-8?B?Y0U1Nm1oQlZaS2dTMGUzdzJMK3IvNm1EQXoyNHFGcnV5MjM4ZEhTdnhUVnl6?=
 =?utf-8?B?MEhXajNnbHlvaGVLYS9hZGFsWFJnZnF0Q1diYmpUN0xsWnMxR3BxWHloc3hm?=
 =?utf-8?B?VkJYMmNydTdVcnNhYXVrbFEvVGM4Q3Y2d2pxM3U1alZSaXl0NW9DVW1EZHN1?=
 =?utf-8?B?TDlYL3ZQNFpJcUE1UnBrWjVDdjMrVjJVa2dDRGp2UlJPT3VabnZ0aUliTjBv?=
 =?utf-8?B?N1JBU2N2NlZLSnhWV3dzcFZCQnBVN1lvQjRVZkFMcm5YOFBRZVRxUzNCR0Zj?=
 =?utf-8?B?YnRxb3hTTkVyYkdQZmgzTHU3bVBCR25vTEd1cTlvOHNjTE8rZ1d1WXUrT2F4?=
 =?utf-8?B?M1prc3ZZS3ZzR3ZqbUQybzNTSjQ3WlJkQi9LMy9zRGlhYjNTdDluQVFURjVC?=
 =?utf-8?B?WFg1bEg2a2J2MndwU2FyQStkekplcFkrQ1V2TXlnZnR2V2ZjbjlTK2pXUlll?=
 =?utf-8?B?anVvQ0N5cVgwV3NlSVlRN3lzNUZvSTFnKzR3UXRxZHcxUElvUjBrakhxcHo2?=
 =?utf-8?B?Zlg3VkU2RnRudjBXYjIrT05yZzFXeGNjL21NWk5FRWdWZDZscG91U0xpTjBs?=
 =?utf-8?B?eGRFck5DVGVya25FVTNCV015Y3dQR2YzV3FaYXVRd2loNkFDdVFFSXJuR05m?=
 =?utf-8?B?MlQ1VUpEQmVzSVEvVTlTcUpNL1pyaGpHN2RrZnFMRVM2aDh5VUZGMUhwaUxv?=
 =?utf-8?B?aWNxWUtNMDREbndrYlFTNVM0ckw4UlF5dDM1enN1NG1CMU5QSkswRUEydTRH?=
 =?utf-8?B?bmZudGo3SFBhd0NHY05qbFV6cFQwTE0xN21zTmIzTytsMU16THc1SjZmNzhq?=
 =?utf-8?B?dHh1SUdZOTFWVEhLOXA3OHU3eWV5RzhFOHVrSXoyenQ1bDQ0UitKdTdpTTM3?=
 =?utf-8?B?TEg5NmU1S2dmL3NXKzJWUFBkczRzcGdudjVxeXNQUk9NZHpoS0hIL1lNWk1q?=
 =?utf-8?B?RmM0NmdOeEZ2Uko2Sm94RUZXSFI0dDAvVEhmcU9ScEJXN01Md29ZS2k1VXdC?=
 =?utf-8?B?MzFoTjdhRXo2cmNVV1dSTG5BTm9HOHpzNWI3U09NdFEzeFh4S1lRWk1USnYz?=
 =?utf-8?B?clh2WERqb0dlQlFmSjJRWDEyNVBUeis4VWhxS3F2V2I5c1BFWmtHSVBhT04x?=
 =?utf-8?B?SlpIVWFkZy9RUlNjNFZwYkc0SXlGTnpEc1F5SXJua1gwTVoxU0lDWTZoZWo1?=
 =?utf-8?B?RTl1ZUE5ZWw4YW1EWUkyUlduL0V5a0xnMFNQT09vMksxT1JERENUdzdMbTlI?=
 =?utf-8?B?SS82QngvdFUrall0eGFGaG83eEhqc1BHN2pVVml6UkNuVjZHQ0lFdjVtemUy?=
 =?utf-8?B?THczUm9HWlBROEp2VHZaaVl6ZjZBVnYxYkNMc0FqQnRHUm9qL0lzSmEwZDhz?=
 =?utf-8?B?c0pVQU15QUlNNGNXZU5OL1RmbTN4RkVRRUZ1T3A1UzZBbWZJVEgxNjdjK3Q2?=
 =?utf-8?B?TDNVZmdjcENPQkZvOENMbUs1WTB1eE1oN1p6Y25yQlQ0eEFRUWUyNVp4K2dE?=
 =?utf-8?B?RlRlaGplMTBCZkR5NThxWVBsNG9Gakh1TEIrN2Z5SjdHaHlmbVZWTWtkeGVM?=
 =?utf-8?B?Nnc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	JjE3Wc5bMK9qOS+qBQ1va0MaIxgjh36XA3Csi04V2l7CSDnDbK5hbnPvVaYOlwKrfjwg6187fUG0qEjqqNBy0hUygFh9rhynIFaEdnm4Qe6z6QgGfoLlO0+E9YjlCjxr5CDT3nZOCl0Otg0eRwCGceKQEw+zpAQuZAU78oZM8z92YSDbZmQxtTBQuEpIl2JbgOrIjHyK2rTyeA58MVhKZsAwpteoeJTET+hwjS6JPb8N77SdSk/cgVRS4zEqf4oPZEp+AEWTVRcMEnuUSFsZHrHpNW2YmTRwgZwHJmJSHnpYpCaYTG9PkMTV/N7CtbqL/6QMzEnae5ofH7Uz0qKmbRjHfYiUZEJKEhIQBtvS05qbK6SmZEfLi+yGmyq4Ikxsjbc0QEHoOSlhrDOF5XuReUFGa0WQmr7PzaQKQ3rWCbGPq9hl+4mvLaxITczTaENDb+ALIACAesqGMKUZrDz9WK3/XG+FO5GEmlBGjxixeUM3L3/qBpITwJV0pfCSdVOCXiv0Y8EBuAUoFiqSW1Lx8mO3UAHEkt+18ZqZGc7w4NOvUAsJgr6yji/4XhRwaKhYCMEiZ7wOYVwEOCWZ5ZaBtDUMGDC5hs+KOZNsaAoD1s0=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c36d1580-a2d6-401c-71ad-08dc75077813
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2024 17:50:12.1005
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5HIJifCla30NqZ/ND7XnVwsws6ITm76xRfCvMWM1V2Xir/aCrnvARwdEbQp6U/eQ7RgGyzpjtJkpW5EX/bBTJvyME5La1Us1RkMTni2PCNU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR10MB5075
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-15_10,2024-05-15_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 bulkscore=0
 mlxlogscore=999 spamscore=0 suspectscore=0 mlxscore=0 malwarescore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2405010000 definitions=main-2405150126
X-Proofpoint-ORIG-GUID: CMdQmqDcMfJ1hlZw3YlWKOOInyTRsF7D
X-Proofpoint-GUID: CMdQmqDcMfJ1hlZw3YlWKOOInyTRsF7D
Subject: [oss-security] CVE-2024-21823: Intel DSA and Intel IAA advisory

https://www.intel.com/content/www/us/en/security-center/advisory/intel-sa-01084.html
was published yesterday covering OS/Hypervisor mitigations they recommend
to reduce exposure to a bug in certain recent Intel CPUs.

It states:

> Summary: 
> 
> A potential security vulnerability in some Intel® Data Streaming Accelerator
> (Intel® DSA) and Intel® Analytics Accelerator (Intel® IAA) V1.0 for some
> Intel® 4th or 5th generation Xeon® processors may allow denial of service.
> Intel is releasing prescriptive guidance and software updates to mitigate
> this potential vulnerability.
> 
> Vulnerability Details: 
> 
> CVEID:  CVE-2024-21823
> 
> Description: Hardware logic with insecure de-synchronization in Intel® DSA and
> Intel® IAA for some Intel® 4th or 5th generation Xeon® processors may allow an
> authorized user to potentially enable denial of service via local access.
> 
> CVSS Base Score: 6.4 Medium
> 
> CVSS Vector:  CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:C/C:N/I:L/A:H
> 
> Recommendation:
> 
> Intel recommends following the steps below to address these issues:
> 
> Restrict untrusted usage of Intel® DSA/IAA devices on impacted Intel® 4th
> Generation and 5th Generation Xeon® scalable processors, from VM guest or
> 3rd party application. Intel has worked with the OS vendor to provide an
> updated Kernel to disallow direct access to Intel® DSA and IAA v1.0 devices
> by untrusted software. Intel recommends using the upstream or LTS Linux kernel
> with the updated driver containing mitigations. Please contact your OS vendor
> for updates.
>  
> 
> In addition, Intel is publishing the following libraries for the updated Kernel
> version and recommends updating the following:
> 
> - Intel® DSA Transparent Offload Library (DTO) to version 1.1 or later. Updates
>   are available for download at this location: https://github.com/intel/DTO
> - OFI Libfabric Shared Memory Provider to version 1.21.1 or later. Updates are
>   available for download at this location:
>   https://github.com/ofiwg/libfabric/releases
> - Intel® MPI Library before version October 2024 later. The library will be
>   updated for Intel OneAPI in October 2024.
> - Intel® Data Mover Library (DML) before version v1.2.0 or later. Updates are
>   available for download at this location: https://github.com/intel/DML
> - Intel® Query Processing Library (QPL) before version v1.6.0. Updates are
>   available for download at this location: https://github.com/intel/qpl
> - SPDK DSA Driver before version v24.9. Updates are available for download at
>   this location: https://github.com/spdk/spdk
[Further details, including a table of affected hardware, is in their advisory.]

https://bugzilla.redhat.com/show_bug.cgi?id=2278989 notes:

> The fix went public today in Linus' tree with the following commits:
> 
> 95feb3160eef ("VFIO: Add the SPR_DSA and SPR_IAX devices to the denylist")
> e11452eb071b ("dmaengine: idxd: add a new security check to deal with a hardware erratum")
> 6827738dc684 ("dmaengine: idxd: add a write() method for applications to submit work")

I don't know if any other open source kernels or hypervisors support this
hardware yet - if so, they will presumably need to publish equivalent
mitigations.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
