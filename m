Received: (qmail 21658 invoked by uid 550); 28 Jun 2024 00:15:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21625 invoked from network); 28 Jun 2024 00:15:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	message-id:date:from:subject:to:content-type
	:content-transfer-encoding:mime-version; s=corp-2023-11-20; bh=F
	40CyNWdYr7DBEiMOAOKfGpkKhbPgdFT0DaHuxxayBI=; b=ETpjCHoIuVl/mq114
	U1rUwvNFA3YA1Z7PfmyYm7wBdDSLv+xWsQzmmD/wBmEKVvYl2KLpl36g/tkUVuCz
	uaj85pWSTkY+u9JBR3RtHewxjD0hI+MzjUKkbhWu28JQeH2WVGTUSiNVVyLoZa6p
	xsMqPRFvNXgDhONUJMXxwwTBhK5pvL6Pd8YkMxWKEkqCtWir0IqIva+QbcojWH6h
	H38Gq2lW+lp/YZ9qxyq/QuHPrZTjm0Al1WtyL6CGbdN/cKB8Tqfcyf1AHWFfEjHF
	q6VzAVJi3K5rQfGUOrH9FDFZt+vXz/CLg0G+ZucXnCB9nIwSWoQ3RF1xAfLHLzA+
	l2qTg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S0lTxD2UJKAy/FoNeisRb81JtAa21OBpK5OGOqSB3vnBVCHimOOO4qzNe6kQEU23LBSTd0tD9YDEnOLPXytEvgcrxZtQEEP1HUVioIYGf9TFCeUMp7CGoQrOj4bZE0yut4vrtfE8WqXR2qmJ+SKhBuBY4ZLUw4RA0z1rGwpt67syVir+hitfg5/QNFu7F6jSBp4vfmQuhRQjioQmBdFWj5SDVIjCn2FayfNA9d4xHWJymduQblgDsFnxcMnNN2xxN8T9S+T7L58aR3wFYZZ7Dd+JEDHAw7UcyoEOCli5Os6h8YOeTmqNBipRpQxryEuLkGJPvi38lZlMZDc6WQ9iNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F40CyNWdYr7DBEiMOAOKfGpkKhbPgdFT0DaHuxxayBI=;
 b=V0Do7u5fWVz+wURIfzA1l79KcVjQohZmvfRRT56Oj6TYudHmsBuugJLBy0zsdvtgljyDScu+Qj6MoMoP/ZRuHO36Dv0ws991qvGCqh5WxKYuR6RffpfDNDi8FkZ8pQxpyg8N2PUUB8cL6m3VHbS6JiJAQ6raBbS62bNbCIh3CZrMg5lbLM/0hY2lguXFBYj3IP9krS6rh1GFxsS23nMm+hJMQUqyGac5kP5PS34krH84yjLGO6AelJcnpuBDvttYJIkYzcVPsWCNE+cjwpnO0szFpLjh+2ewpiLv9d1OXgeSJFrYrco/0jbbT/zKzt/ASPRw0aTJps0g0Gq2uCCtow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F40CyNWdYr7DBEiMOAOKfGpkKhbPgdFT0DaHuxxayBI=;
 b=Nx7oppt80ybAWb1U86dO6lmzXt+TNt/4Y9Btskay05w4HfVkA1VwfS7JrpkOfN2S70bzY0Ry6614zlblKrOSng+2Kx3EY0vdNt+qYaH9czsPZMX84CjjeNuR9oWiR38UoGuW+2RtmuuXtDtZIkgTxdS4VpHDsFW2Hg3v6eQCeFg=
Message-ID: <2fdcdb0f-98e9-499b-a5b3-f9c4f6032bc9@oracle.com>
Date: Thu, 27 Jun 2024 17:15:20 -0700
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
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
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: LO3P265CA0007.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:bb::12) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|BLAPR10MB4916:EE_
X-MS-Office365-Filtering-Correlation-Id: 0466b2df-e527-4350-6938-08dc970768c3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?WElyTWFoSzVTTXRTc0JnSUYzblRYYkp2cklIS2RIYzBkRkQ3b0Z0UDdPVlZX?=
 =?utf-8?B?b2ROQVlzbmtYY20rY0ZodDNoRnM4Z2lzY1dEU2xCNHJ2b3UwSlpQWE4yNGNF?=
 =?utf-8?B?M0NmNkZGWk5DWVZaUFRJYXR4MWd0cTJjZnpkVDNpNWxxVkNJaXhoMzg2TlZ2?=
 =?utf-8?B?VEwyWjhiSHB3SWlnMnEvMk41ZkNINENBNnExWTRMYnI1OG5rSGU0Qk55MDBy?=
 =?utf-8?B?a1JpaWk4dTk2Z1hYc1hTeVhxODRQL0ZJQ1BCUlUxMzY0TC9TaUJYS0tkQjF1?=
 =?utf-8?B?aEtBaVg4RjVtQnlZem1rVndHLzFvNnBSL24xSnBLcDFMcHFNUm9sVjRvMU9M?=
 =?utf-8?B?dHRlY2l0R0NlWmN2UThBODFQNTJmd1YvVDhxTGYzSnVCMWk3U29KbnVRTHoy?=
 =?utf-8?B?clFoOEZ2NDZ0WjBPVU1LYk9UU0ZKMkVsQ2ZuVzQ4ajZmUHA2bFdhdE9iTWRu?=
 =?utf-8?B?WEZBUXBzUzdBd1R5UkNWYVFVdGJJZ1V0UGMzSFZzVVc4WUgrUXJDTkNKUGxO?=
 =?utf-8?B?NGtQSVVpYUNNN211alJxd0pJc0luT3YycitSdUxNeUwrc3MxaHNnVUJqajN2?=
 =?utf-8?B?T3Y0elNRNU1ORDA2bHNuSEZ1azBLaUNFc2FaeS9xdnhQSDEvZTBxRWdNekJj?=
 =?utf-8?B?WnplSngwWXhHYTlpaWw4Zzd4OHhzMWdtWGVJUVM4SVVkMEZtWmxuYnBKVHBQ?=
 =?utf-8?B?SW1ydG9GSG4wQjcxRFBUdDZMOUxSNEVYRHVZOHJnM1hnUEppUk1YN2ZmY0xn?=
 =?utf-8?B?ZDZkbjhkZ2ExN0VhWDZ4WlAxbVFNZ21WaktZSDhVVFdkYVRIbEtEcjFacU1V?=
 =?utf-8?B?VmNkc2pCQStJcVFlVkZ1bkdwSnlEdlJiZWtBOG5rQkZqa2w1NUxybEhKbk01?=
 =?utf-8?B?RU1lNUtCZGVCN1l5UTl1b0swZHEydmxmeTY1bm1ZSG0reHNOV2VYSFkrTEs0?=
 =?utf-8?B?dlRDZGw4RG5GbXBuSWRJMUJjQ1c1T1lyc1Nhbkk2UlV2WFRYcFRjQUVRbFg3?=
 =?utf-8?B?UXNmeEU4bDgxWloraVpHYWMrWDl3bUxVMklPN0EvbWNnczBvall4cmFmR1lh?=
 =?utf-8?B?VmNmbkNKT2cweUJwVkF2TnFVeEovYytmcldDekJUNk82a0lCbll1UjlQUUpn?=
 =?utf-8?B?MHI1Wkk3WTlkRHdOQThZWS9PTmRGRThDcnF3VHgyMmNySFArQVRsckZXR3lR?=
 =?utf-8?B?VGs0YXBuZ3IwWE5RSGVVekU2ZDFYWUJUTlllK1UzT1NzMnhHSTdtSVFsMjgr?=
 =?utf-8?B?MTd4aHM2UkYvUllwNWtHYXZVTXJ3QzRtS0Fsb0NXbEovN25Nb0EzVERhN0t5?=
 =?utf-8?B?aVhOakI3LzhNc3AyeGpmYnlGbnllTzZjUEJvTE83SWFpckExbzJPWGtYb25R?=
 =?utf-8?B?UlFxWWQveHhtbnZDZGFzVERZUk5xRW5rT2tacjZ0dW1WK2RDMXVibENDc0I0?=
 =?utf-8?B?Mm1OZENPdC9RUVdLbGJjTEFRbW1EWTdXTFdZem1HV2x4VnJJckhtbFdYV3No?=
 =?utf-8?B?MGJxRjNQdk1mNkZsaFVvSHEvSFhtSUxGaWlOY1BiVDh6cUx0TXMwUVJjZ2ZX?=
 =?utf-8?B?NlRCMW85cVBjZnBjSzJqSlhMQWNmUEhPQ3U1TXR5TGFPS2NaMUFXKy8yK2tj?=
 =?utf-8?B?WU1hOGJyc1ZhN3RQNkR6aDA4UG9UZ1U4ZVZrQkV2M2t5ZG5ZVGFrOUR3azJt?=
 =?utf-8?B?bk9GMkxOekhGZDB0NGx1L2hDRDhPa2pjYUdRY01GQ0ZkeGJSTndpYlUybkJI?=
 =?utf-8?Q?iEn6bxNM+6vA29dK+8=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?R2N0WmtyUG0yZEhqSXB2bzRWMTUySlUxdjIvRzdwenNMSWZvU2Z0bTRXa2F2?=
 =?utf-8?B?eEZMMm9SK21NQVhZYWZwcktDaXNFcVZzUjNFZ2RFMjNKeEM2cEtPT2E5Vlcz?=
 =?utf-8?B?ZDEvaVBGRmErcEMvV2xneDgyaDhkQUZUdCtMb3kxS2VRVXRKTUpra015aTRX?=
 =?utf-8?B?cU1FUmpMUldCUkR2M0NHNC9SdWhYR04rdjNPODdvZzlOUzBGMUVocDJXZUJt?=
 =?utf-8?B?S3hwdUFpVVlMTG50SEN4b3VmYmhJbnZjeU9rK1k1V1NHTmhiM0hzMndzRFZR?=
 =?utf-8?B?MDU2amJBZ0NpWjZRaFE2V3UwcklZR2MrdjZicmdiWnFpdVV0Q1gzWXdwVS84?=
 =?utf-8?B?NVMrMUF4S0tGWTN3RFM2UE1XMkE5cFFOTnBoa0JwOVo0YmRRamlSbi9vWXFO?=
 =?utf-8?B?ME1HUWVqdWdreWFZd3F3cnUxZzR1UWgyanhQZ0tiT2ZDRnpoaWsrWTJOby9P?=
 =?utf-8?B?d3dMSS9aejlYc3lhTDlycmk1azVYek5jaDhSaFNzSVFzSXJvaytkeGxzaFRw?=
 =?utf-8?B?UTlPR0hxQmw0MHBjZHNqTkM4RVdhd1Y4NUY5bnhCdEo5VUtlSFUwalZmV1Jm?=
 =?utf-8?B?eStFZU9YamFLaFdlZ3BHZDc2dnRBczBCcDBYbDdoTXMvMFBSTmhna2IvNEh0?=
 =?utf-8?B?WGJhR2ZreVpDWkVNN1pOS2ZWQTZpQTljTGpGbzdFVFBEWjBmQ0hNNnBPSisy?=
 =?utf-8?B?dGVrNGhFN3ZZQXBXWTBwM1VYS1oyeUdjTlJRRzBKYXdNN2lSM3hnS1ozYlhm?=
 =?utf-8?B?ZldhR0Z1QUdLdGtLaldhZ0xrd3lUaVFzdmFnZk52M1E5YlQ1VGY5T1NZNGM4?=
 =?utf-8?B?TUwzV3F1SWY4RTZRSEV4RGt4MzVYNExycTdLYmVISGh3ZkplNEdWYkVFT1dr?=
 =?utf-8?B?N1JxTkNWY2h1eFdodElRRVluK1hZV3U1ck4xeGd3RFQ4bVkyR09YWlNCcGF0?=
 =?utf-8?B?T0NpUmt0SDlaNHdvWldJeDZFR1lhNldTeEJPRklJNEM2Q1lBczJDcDlpRlFj?=
 =?utf-8?B?QUdVU2IwYWptbVBkb0NSaU1VK2wySEF1VzZQeUFsM0lYbGVlWXFwS0h0dXNI?=
 =?utf-8?B?cnc1Q0VVekE0TVNKZ2ZZemJhY3gyQWd0eUtTQ29PZnFRMFlGbS9qbkhpVXZk?=
 =?utf-8?B?NU8rUjRPWTVYSytFNG1xN0JybzlyRnV2MjVHbGxGSHlPeWswMW4wOXJXQXBv?=
 =?utf-8?B?dm56WDFBbyswcEV3aEs2SktnTDRTdHN0S0RHZ1daUnRFTUJ6cnBZREpoUFdj?=
 =?utf-8?B?NVdQTVZUNSt2TkUxYUNhVXFNZzc0QUdlRUp5R0w0c2lZWjI3UlFrcytMWUJ4?=
 =?utf-8?B?YlhKZHZBYlNYbVpKUXdld3dIMTZnazlaNHN2emlIa25sV2F3SkV5SUFVU25s?=
 =?utf-8?B?NGtwcDFMTW5LNmJwMC9JNlp2bnZ1Ym1RZUF4VFRkZDVlczlxR3B6b3k4TG5N?=
 =?utf-8?B?R2dPcGhjQUpqT3Y3citSemVLSkw5emF4YjVOYk1uZ21yT3NVWkRXRFNzS3RI?=
 =?utf-8?B?bjVRR2wzRFc1R3NPNUcrYnN6ZWQ2UXJTaXh1bVBtTW5Ma0NaclJqNkZyazdZ?=
 =?utf-8?B?YkRJeW1TVHNPTTFUZVlUNUl3NWNCTHZNT3hJVjk1cXpDSDRMcW5tRmtPUEhM?=
 =?utf-8?B?QmxiYmp6dXVvcm1kbzBVYndaMGpnbldESUJLT2daRkJTRVZpQ2xSNmY0cmNu?=
 =?utf-8?B?bjJPK2QxaStCMWZVOGloLzJ1OXNaSVZmWFUwYm1zbFVHdnFEOEhhMXd4ajdE?=
 =?utf-8?B?Y291YVhRZmQyMXdTMHBmc2l5eElXNUxFOHJzMnZuT2pDMWRkS1AwWHEySjlN?=
 =?utf-8?B?QlhNSTF5YzFKZ0ZKNjdOcHlNeklzQUFQdFpPYS8rRzJmTjVmY1BGNW83Q3R0?=
 =?utf-8?B?ZzlyQ0h5U3RMeGIvVm52NUhXV29UOEFKbGhnR0NNQmRUbHYyVFBtT1FPejlv?=
 =?utf-8?B?d2J4ZE9rdm9ITmNRMHZqM0RJdUZqemdMR2RSL2tUN2twRy9PRllVRDljOWFD?=
 =?utf-8?B?STVUbHNoUUVMQ0FnOGtEWHdHZEh4dnliUmJsMjdOYVl4Mzd0NlV6bk96MzRj?=
 =?utf-8?B?OHVYaWZhUWt6Mm1MS2xab1JsTlZLMS9tbDhJdERtTkU1a2V1eHlTQnhmT25S?=
 =?utf-8?B?WkpHUVFiNjB4QmQ2V0ZGV3A0bWN4dG9YK0ZHeEx2YmlDY0pyaUp0V293dGp6?=
 =?utf-8?B?Y0E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	EAIEcbFb5lbsqU3N69NNi4kEd9m25pbRcWUcqZcRgoU0Y+A1VqiHsYGsW77e+GEGHhA1y2U2XdKGKdUmzC1PId4vuEeIdtZt9pxP8jaFRqb8PbDI4T+0ydHMkRI4kkfrS3UEeA6zs90oz3N1JF07v6Yya+ZHEHpPcsigrNv3VSTCjmG8Z7w9HxrEycdfOXaf5T1+Ilo3M3NZethlBXAKLdLaeCvBYG1KbpEvHLEooEYm3Leng+L3JA42uvCzJVA7uo520YuD1z0WSb9HtFHiJ35m2UKIz6u7dWqpmEpqZLdWKUi9Ic0MSLzli7lTlzLP7Nih3ifAzo0pGNVq5/E+GKmXiBySD2pz+0tQtKGaBl8Begg3BpZf1eUBC839lfAgNXDUL5HLQYV7lZSPfQ8BRQPHfvSiFSA/6j+llC5sJaMbnQq/kFpNQcEN6+cJBZ4+cJ2lPdVsGSpetxuDKH1ltlbpQ3jcFpcQot3LAiyo9aiG4K3/AFwsCGyCCEHtSPBNycVoJVXUMd7vUVg3Z/YGjMtSuHoi4p9aSRAfamwmvlYTF6kRTmf1lUVkq24PpmGX08mEqmuf1UlYZ1jarI6iuv+nqSPAq0WmZShqxL+s+LM=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0466b2df-e527-4350-6938-08dc970768c3
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jun 2024 00:15:25.9801
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 884Itce3nm/mNfso7jG3cYoBGbKatkTGbn/3JW0y+S7LA/UVsibKdOLEXnNcsRdtXYR3Gd3mojA7P94pK6wgJkRAAIgPVvP5+ooxNuwxAjM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR10MB4916
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-27_14,2024-06-27_03,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 mlxscore=0 suspectscore=0
 bulkscore=0 phishscore=0 spamscore=0 malwarescore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2406180000
 definitions=main-2406270179
X-Proofpoint-GUID: PIp_mlKdR8mzAMJLlYLxp89ig9hGiVpo
X-Proofpoint-ORIG-GUID: PIp_mlKdR8mzAMJLlYLxp89ig9hGiVpo
Subject: [oss-security] Indirector: High-Precision Branch Target Injection Attacks Exploiting
 the Indirect Branch Predictor

https://indirector.cpusec.org/ announces a new Spectre V2 attack method being
presented at Usenix Security Conference in August:

     This paper introduces novel high-precision Branch Target Injection
     (BTI) attacks, leveraging the intricate structures of the Indirect
     Branch Predictor (IBP) and the Branch Target Buffer (BTB) in high-end
     Intel CPUs (Raptor Lake and Alder Lake).

     It presents, for the first time, a comprehensive picture of the IBP
     and the BTB within the most recent Intel processors, revealing their
     size, structure, and the precise functions governing index and tag
     hashing.

     Additionally, this study reveals new details into the inner workings
     of Intel's hardware defenses, such as IBPB, IBRS, and STIBP, including
     previously unknown holes in their coverage.

     Leveraging insights from reverse engineering efforts, this research
     develops highly precise Branch Target Injection (BTI) attacks to
     breach security boundaries across diverse scenarios, including
     cross-process and cross-privilege scenarios and uses the IBP and the
     BTB to break Address Space Layout Randomization (ASLR).

Their mitigation recommendation for operating systems running on Intel CPUs is:

     Using IBPB more aggressively: To the best of our understanding, Linux
     opts to automatically activate the IBPB during context switches
     between different users. The default policy in the latest Linux
     version, termed "IBPB: conditional", only activates IBPB during
     transitions to SECCOMP mode or tasks with restricted indirect branches
     in the kernel. Consequently, IBPB activation is infrequent in both
     user and kernel spaces due to the significant performance overhead (up
     to 50%). It is not a viable mitigation for frequent domain crossings
     (browsers, sandboxes, and even kernel/user) - plus the fact that the
     OS does not use it in the most frequent domain transitions by default.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
