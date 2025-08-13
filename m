Received: (qmail 24278 invoked by uid 550); 13 Aug 2025 18:28:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24024 invoked from network); 13 Aug 2025 18:28:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=AUuptqvi5aBt6l+T
	GplGfbIaw3J9hz5g8g3mbcXkyK0=; b=RYFHd0uSVdIes1hvxTS4ZoMYCy0T4Hw6
	4F19v8KFP5WeSRiDBAdgbngYN2vqlqvqN2llNSX4Nr0sUJehSoy1a1ctsmbNUpNd
	X8ZHWSXwqyVlCR/QBe3L3kDJM+iiE2GTsD0IWggUhkpCfkX6b3oikbLlLjmv9rZV
	OBg/YEBgzaQVKyAwglwQZMcRKPe7nL25rZdqx8lOMuDeFYYiYwd5RzKssbQLg+fk
	zY8YjOmitgjWqFptFcH7LMfFcS8+nFgi0dqccaJFjxWLfhBktAb+pCK0DiO5Wxk5
	JSD8/XYZDki2hpXgJER18q+GLEwyZrPpdN7c5gXozrnR77GoaKfpTA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NHT7hLSX4izf+T67dz5fCjLohrY+vinsZTTeQgMDLGuvd9aoqKRq5S5iCFJ8Fp1p4uD0feuWeH9z5/zTTz78fk6gF56xtHlmD4eRJ8vMxD9/TeT/Fm8Ft0tK0qJiRKxslEk7doxTew8PEYce62xBpytTlzwoWSmxWaY/NdzM3i+x4zeenM9KKd2XtQaGfthIo6ONq9Y9t6IrGGK01jDCIAZZcl4OAIC2x9v1Gd3rcvSYrSptxCJwSvIFay+M5XLd+WjM80zCfD3SwtClg3dsG9mQds2nERzabUXB5S1vUmnLxzuwZDQ2pcVtTOQQkttHaYLGjrOykLnX3wIv80T22g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AUuptqvi5aBt6l+TGplGfbIaw3J9hz5g8g3mbcXkyK0=;
 b=D2mc0Wo39bYXwN8s5YHuL50fmJ0p/Ei67wShReHsgfDAbfR6X7nRTE7pQc7dBZ6mIu6v0fFstnJQJOnjrZsM4sJ3zCKhSQdWJBiQpeHidUUkUGnee2l7QIUjNAGuchTEjAT0verm95LdpnSXBp3J099h9I+m6BOSO3l9eqpJOYoP0vwjV9TRqtmdAq/vqF16/ZANlw2VAIOfTxf5UKEJwJhh18Ap9aGu07f3OOQT9PTHSfQ2Z+epvZMwRQNYy0auipiMvyCH2b61vNn+P6A9aWja3XFGy64KZcnq7CMW9o2M0rL6XSWBbMazBFUpedIqDwi479v6j5ICKeEyvMaqsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AUuptqvi5aBt6l+TGplGfbIaw3J9hz5g8g3mbcXkyK0=;
 b=HYOXogpvZyCd+OwS1OGeX49ucF0H4QgM3pvAsCeswGfLAkWUqEBZ/lnIMmXgYdzB02TIt2elXsGPnJVRJK9CwnQwszggKtIv3NKOy//WzfHAFgIzq9pGMZVA+9RGukC8zfM4/gkBiZILko3/MP8xkFjRUhifF8HZnpB/eMm/nDs=
Message-ID: <9d746b4d-0fcb-45b9-8c43-16247cf79dec@oracle.com>
Date: Wed, 13 Aug 2025 11:27:53 -0700
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
X-ClientProxiedBy: BYAPR03CA0033.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::46) To BL3PR10MB6140.namprd10.prod.outlook.com
 (2603:10b6:208:3bb::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR10MB6140:EE_|IA1PR10MB7238:EE_
X-MS-Office365-Filtering-Correlation-Id: b6ddd139-2d7b-40ec-a387-08ddda971f02
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|366016|13003099007|83080400003;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?djcwV0MwT1hxbUFPY05nNEd2TjUrMFlWOVVkRnAzUGh0M1FOYmtGNCtRT0Vl?=
 =?utf-8?B?M1V0aktFTDJNQ3ppSVdsdlRNK2VtOEo2QlEvZVF5clpQdllLUTVoMUMwdlZJ?=
 =?utf-8?B?empLMEZ4ZDd3UkEzOEJ0T0JSWFd5V29sY1pHL0FIZzZndjdveFhvdXQ5ZW9V?=
 =?utf-8?B?Q3NBTmhCNG9NMDZub1N0RFhKR2lQc014OEFVdVBPZE52YVNFQzFhQWNCUWlV?=
 =?utf-8?B?MEhXUUREVkszaEhCeDdpMFRsN25QQVNyY3JXR1ErY2NrR2QwcGtoYWJ3dWFF?=
 =?utf-8?B?K1RUSXZjUmxrN3pyOHRyejdjTWlNQ3lMMGdsaGpSK0puMS9KNHdCMzFibUt5?=
 =?utf-8?B?RkdrckJhbVdydmhhczBjTVJtSm9XenhnOGhFUWFzNkxKamdNR3ArSGphNFFB?=
 =?utf-8?B?d0hBMUd0NUx6Q1NlTkhrdDlxd01BdVIwbWdzUDBrRndPZ2ptZGhLc3lnWFEr?=
 =?utf-8?B?UGpNUm1mc1BkT1hRRmtWWWZ6SG9rdVpKSmFFbWliZS9NNW9sR2NCLzNrTUVN?=
 =?utf-8?B?VnhKQ05rcUoybDJsT20vd01CY1NSV2tOdytkcFd1dFdYUFJNbFlwRWhsZnNL?=
 =?utf-8?B?Yzh0N3YvcVV4Y2tBQ09jZnRFYllPWjMwOXhBQXlWa1c4NTFsaWJ3azVRQmVm?=
 =?utf-8?B?V2hpbnRUL3B2UTlBYUgxa2ovM29LK3hpMGhCbzBUSWxsV3ArOUFuRWdobTVU?=
 =?utf-8?B?a3FuTnppNEdZelgySDRMMFMzOW1hNXptdzF2QUZDZXNrUlJOSU5ia0ZNQTNW?=
 =?utf-8?B?UFNuS1dvTXFHQTBFWjBLaCtmWDJsYkIyZmFZMjBuRVFBem5veG5MT3ZNelNs?=
 =?utf-8?B?Wkd4T0FsTWJFUXcreDdBTVM1NXV6czR4WmV2eVA5am16amdROG9pT0M0SkFN?=
 =?utf-8?B?SU02Z25OK3ZrT2JBdWJTQWdBQjBTdWhLWGtxYVFxZUtHMVMzaWJoY21kSC9V?=
 =?utf-8?B?SlE0dlh2RVJXQkFDNkRhQ1VTdGlCV2R4T2s2aS9qTDljTThXVFBrNXdDSml1?=
 =?utf-8?B?K1RwbCtGVkxIaXczV0hRVXhDUHY2eEErUWN4MFQxbVRNVUZvSlhtNnFMUlNF?=
 =?utf-8?B?ZzdLWkN2SW12Rnk5MGJoVzVSVjFkY1Y3WFVEb3dxUTdpUnJNWVc5d1lXS0pM?=
 =?utf-8?B?REdqS3BpUWw5UnZHeWRHWjJQZndYa0JmNXJDN1JENGNpVDIyVS9Icnk0dy9B?=
 =?utf-8?B?RDZKV2daNkVNWUwwZ3o2MDVYWElMSVV3Uk5aYWVWaTBnYXN6aVB5bld1RS85?=
 =?utf-8?B?SzZpYThZVGlzYmhOWXZWK2p4RlNJeU00Mi9qdmdQOXB6bWN5UllTdmh0UG9U?=
 =?utf-8?B?N2NjMUxsendHMnplcmdNeE5TVEtuSmdHNW1TMnpabU5OSXRhandudktPaFNE?=
 =?utf-8?B?aVVmeEtHWUNVUnNSWVJYL2VYVE9udmFQcFBXbjBLbWs3dUl5cFZvemNyWDBC?=
 =?utf-8?B?NU0xeTBRaklObkUvQXRudTlLWkdWOGZPWGMzczhiUit0S3ZaTGYvSlpPVFVw?=
 =?utf-8?B?ZW9HTkVDSDV0TFZMQjRpUkU1dFVHTWVqcmhrQy8yaDRoNk9HQjFpZVhMWUhW?=
 =?utf-8?B?OTM3dUdMLy81QitzYlNZcnY5OUxvWTJ2MGc5MVA2MzlGZGdOSi85QnRVbUxH?=
 =?utf-8?B?RGVucWxOeUpZRjBTclpxbU1YRUthcG1JYjJiUWJGdUx6TXRCdTJBQ2pUTFBv?=
 =?utf-8?B?ODIzcTdnUUszMWZRM0hTMlUwUW1GUlJHQVFyWHZNaWhaV2tGUCtmMW5TR21I?=
 =?utf-8?B?UCsxd0ZqN0dFSnBSMkx3UHBWOEdBUEpoWWE3cVl4U2NKSUx0eDNZbDdGV1hz?=
 =?utf-8?B?TzJqSXNnMkowb1M2NEEyY3diWkZORE50ZnlTbnlMejhaNmtUM1Y4NDdxVlFk?=
 =?utf-8?B?QWhMYXF5UTBzUjh2Ykc4K2svMEMrekVUNFFkQWJtc1VGd2RIaGQrK1dhUTJH?=
 =?utf-8?Q?UoCupB1vFjU=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR10MB6140.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(13003099007)(83080400003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?d1p3elJoakt4TFhaakg2RnAvL2Y4OUduclM5M28xT0c1alpFNUxadENXNGhK?=
 =?utf-8?B?K0pwZVVwczRSRVhXM3Zmc0tKVzFtYTZ4aDZrYnFWN2o0WE9PYStFMHJGSkli?=
 =?utf-8?B?QU1iWUdYU1ZMUi81YUdUWjJhaHVMUW41Mm1SaDc0ZlFMVnhGZnN3QlQrZFdV?=
 =?utf-8?B?Zmx6NDhaZU8rZmI5U1IxK2NnNnZqYnBjcGNjQVJ3Vi9wNnhDS2JUS3ByL2Uz?=
 =?utf-8?B?eDJlTUN1OUhjU0FHamdDL2RobkdyRmZUYWZHVDJteFRpSTUyWUlqUjdIbDBC?=
 =?utf-8?B?V0NzYVNuVDRoNkdUaU5mYk5sNDBLRzVWY3Vmb2VjVWttbERHa3V3Z1dNdFFm?=
 =?utf-8?B?Q0huL3hDcTV6RUtuMU90bW1RdmExNUg0dFF5U1lXUzJYN3poSUVjVktuR2hG?=
 =?utf-8?B?NGlBclRlWS93dU5ITDh4NXludS8xVHhPU09qK2ZhZ2tjK3h4YVp1dGk2NjI5?=
 =?utf-8?B?ajIvdmVWRnZnZEU2UEpjLzdSSzhkUFNOdytRRnFvSUl3c1FwejYxNmdEWVhw?=
 =?utf-8?B?OTJRY2lkYXZCZ0NhSTNSNGpiZVlpRXRwMXNiWThtQllqZWdKbjNvS1RERm5o?=
 =?utf-8?B?QVN0OVpsOTl6aDZoVWlEMi92OWZuYTRhLzJLSisvb0RhZ21SNWFGSEE3K2VX?=
 =?utf-8?B?TUJsNGlJdGd2bDBqcGFOUG4zNVkvMmVQQ3hlZU5IQy90Z050eWpKcG12M2do?=
 =?utf-8?B?RHIxV3p2SUhMVXB5d0FpcFIyT1FxR2hYRU5mcTdUMlkxcVY3Sk1zNFJCQkIr?=
 =?utf-8?B?SktrNVpmUVIvUm9NVG9yMXlUZTNzOTQwNEYwVGdYV2xweXdLNGRKRE9ERWNw?=
 =?utf-8?B?bVA0d0VBYmpYallSdUNvblFhZ3Zsc3pHd0pydkd5VklpdWN2YnlEYjBDc20z?=
 =?utf-8?B?MTJ1NS9qb1pBd1ZhYTI4OFlxa0ZvMjcvaVZHV0tNZFJUTTRlaDQvWk5HVkdP?=
 =?utf-8?B?eXk2a1BkRllhYjFKdVBJWUsvZy9GVlBEcmZKTWgxejc4SVIwWFMrZXIrd0RZ?=
 =?utf-8?B?N0hVbUFudHl6VnlJREtEQzVUTE56VmlGWTY3S2lOUHB1TERlQnUxdmZzcmNX?=
 =?utf-8?B?NUY3VDF5RCtYZXp3bC9rRDNyc0h2aE1QaXJhM0N4V05jVGo3NmtCNFMzQkJ6?=
 =?utf-8?B?eXN1cTdDdkFEVitkbXYzK1JaS0NxWm05QlNXVlRrZ1B6ZDNxSEo3RTNQenlT?=
 =?utf-8?B?dmtUOVpXaCswQjM2c1NLRldySUxYODA3VCt6bUltM09FdGZBV2tYeVY0eStZ?=
 =?utf-8?B?NFlqT05zRDl2MWhrSkdYc2pPVVhxSXdtRUpaQ3dhOE5namRVMmV4RTJLWFlZ?=
 =?utf-8?B?TzlwWVdTd2k5ZVJjL0RJMDg4cDRrd2tQV3lUbnBsQTVHVTZqa2VUcUlLYU1J?=
 =?utf-8?B?ZXlncjgwZU1SN3RyMnM0VVFqWnlmdE5RWmpxTVdHRlBkT0JxTVZTZzBEMXd1?=
 =?utf-8?B?ZHN6SnQvejJNaWYrYlZVSitqRWJ0TzBwMWJhZ3ZBUkZZRk1Pd0pkK0FLRUVT?=
 =?utf-8?B?bEU1VTNldEgycml5MTdESGErRmhoMXpnSHhWRnVhQ210YzliNHRvS1BHamdr?=
 =?utf-8?B?VnhFMXB5azBUOEJUbnlvSVV0eVdKcGN6NlBtRjZOTnJHLzZlSDBZUGNuamFW?=
 =?utf-8?B?TXJIL24rbWVOMExmY2tvSHZvYnpEOXFzSzN6Y3hzTnQ4U0c5ZnNTL3MwK0RP?=
 =?utf-8?B?bktLK0NiSTZzNUthelVNUVV6U0cyY0FqM1Y5QXdzcDlleUVLNG9YS2tGTkdX?=
 =?utf-8?B?QStCeWxkVmcyYkxWdjNSMGc4NEY2RnpJWVBMRVhVbWt4dDFXQnZYaHJnTWV5?=
 =?utf-8?B?aXBWOTRwZXBnejY2eHJwbnBhbDBrZ1dzV01JVXhtVEtpWFZiaHBkdGZ1NWFj?=
 =?utf-8?B?SXJaN0gzUWhLRzhmZjR0U01CNHo4WmZPczhGa3hFY0VTUU9RTWc2YzlITWsx?=
 =?utf-8?B?azBuWXAvL2YrMElmM3lwK29Jc08ra3phYkFnV3JSbG5KUDFzVW9pSEVRTEg2?=
 =?utf-8?B?TmhKZk9HbXQvWnlLOHRrNngzMXpVTVlMWGFacE5HT3p0V0FVZVROakdCZVVY?=
 =?utf-8?B?a1JydXU0NStncndKeUJLV1NCVSsvRVZ6a05lV3VsMHc1bTBQekV5K1daQ09X?=
 =?utf-8?B?ajQxUXUrRFVlbVQvMEtiMmNDTUEzTGdxZVp0S3pBNS9SRUY3UmtpaDM3ekdH?=
 =?utf-8?B?cWc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	x2z89o4etr/Xo+olqAIJu2WTGke/nUmkAhsXDXGMpKiFd1rQlHO6LS9q1OWczFDKfiV2NiEwTEI4mKT20VkPQF4iu97CD9qBmvSQ5vlZw/ePsZTvyz7ED5bBrQX8ZQHA8qYVddxaREPrV4iKGWUsqH+0Nq5n4ZRmUOoNY92mtCQB68g4aeT9vmhq3N6dUxVX4wYOJSB20dYnEr2x3wpebfWdSE40skGMTwcdtyxxUQlPC7UvaeADMFgHoVSCmtJx1AKr9+u2xnCBKWrvL3eAPsDwxbT1h6aVuiKw4fGkQQkKM74fnHLZg6Fs9C07iZn0Vt92fkJA1asd6iUVaw5ZEIL3rWvA7v9pp3Aubq/USDfWeJQVdctHkJNgLK1+e6lGowlYLk4eqtCTWT8g6dAy/HXq1ECFb8rsYB7UONRbQH47TWDrmbQdCPxtvmJrCqlvbsGI3sjb5VZwjvOXUDRm2rk3XZSYexBqw7hO4CQwKeBT2EO+PQWSPsnAvmaXKc06ycZTQiPYaeIP9C1VaLFzsEMf5ISCsDy0IbRFFjQtyK0sC7h7jz2dgtDughFU1fAKsu/8KAPCwwg2h8FYellRSB7PRYEA+YGkHI1kukOC83Q=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6ddd139-2d7b-40ec-a387-08ddda971f02
X-MS-Exchange-CrossTenant-AuthSource: BL3PR10MB6140.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2025 18:27:55.4137
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lBzW08QpaB40exS37kaXPcZ2p2kOcLwxnxqXgVTtLo9B8cxPy57PrwZXNR31Y3pDZwIOetRZ6LSbHOq9MsfIhoVUAWZUGGTUP1lN+qZM4/M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB7238
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-13_01,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 mlxscore=0 phishscore=0
 spamscore=0 suspectscore=0 mlxlogscore=999 adultscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2507300000
 definitions=main-2508130173
X-Proofpoint-GUID: z5WLuorNJA9OqQN5am6zhqg3r1fHX9iT
X-Proofpoint-ORIG-GUID: z5WLuorNJA9OqQN5am6zhqg3r1fHX9iT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEzMDE3NCBTYWx0ZWRfX7yX2WsN36tkN
 7Ylo+qJVauSslmBPnJs0nSmiCC7mE/EEmPGnJGkKVjXnMSyTXftXSvagQSVrO6um44QLn5vRxqU
 SOB1N/HUbhNQVZ+ZEYPinQX4MMvIsR6HRNxHpdIT+mN2PPhCYRtRsnZ7Zx1HJH552gQwtTpncNY
 D0zt/3jF2uxDnpiO3QCeU6GPto0EERCdioL8sUCCAamkM0ukyZPCIczOg3d6NQJkbBWowY/8xmN
 kLjzq7m6NpPFdEAHFII6HP5owbbQNIJEVACSr+louROjRWHMbMTgBvsEwDYMe1n8nnupiIG/emm
 NkNpr8pdBsRo7iu7Yr9SiFJHnmyieQtZSLoY46SqcTUoUYiATjeuVl/IwPom+VxbheQKW3GxkJB
 sQx6XrfWp/cxfbfkcGEgKJ1q9srLnAOTX5U239Qtrxw1yaPiwfQG1OvnMW8OR4FXCLWLDsu8
X-Authority-Analysis: v=2.4 cv=dpnbC0g4 c=1 sm=1 tr=0 ts=689cd930 b=1 cx=c_pps
 a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=GoEa3M9JfhUA:10 a=TWq6ZYQzAAAA:8 a=YnXibQtlAAAA:8
 a=yPCof4ZbAAAA:8 a=_k7NzrluaWfKVJlmjiAA:9 a=QEXdDO2ut3YA:10
 a=ELI009spOhp4_qEUuRHw:22 a=SA_pLSVxXJeQFjSNEoxO:22 cc=ntf awl=host:12070
Subject: [oss-security] HTTP/2 implementations are vulnerable to
 "MadeYouReset" DoS attack through HTTP/2 control frames

https://kb.cert.org/vuls/id/767506 was published today:

> HTTP/2 implementations are vulnerable to "MadeYouReset" DoS attack
>  through HTTP/2 control frames
> Vulnerability Note VU#767506
> Original Release Date: 2025-08-13 | Last Revised: 2025-08-13
> 
> Overview
> --------
> A vulnerability has been discovered within many HTTP/2 implementations
> allowing for denial of service (DoS) attacks through HTTP/2 control frames.
> This vulnerability is colloquially known as "MadeYouReset" and is tracked
> as CVE-2025-8671. Some vendors have assigned a specific CVE to their
> products to describe the vulnerability, such as CVE-2025-48989, which is
> used to identify Apache Tomcat products affected by the vulnerability.
> MadeYouReset exploits a mismatch caused by stream resets between HTTP/2
> specifications and the internal architectures of many real-world web servers.
> This results in resource exhaustion, and a threat actor can leverage this
> vulnerability to perform a distributed denial of service attack (DDoS).
> This vulnerability is similar to CVE-2023-44487, colloquially known as
> "Rapid Reset." Multiple vendors have issued patches or responses to
> the vulnerability, and readers should review the statements provided by
> vendors at the end of this Vulnerability Note and patch as appropriate.
> 
> 
> Description
> -----------
> 
> A mismatch caused by client-triggered server-sent stream resets between
> HTTP/2 specifications and the internal architectures of some HTTP/2
> implementations may result in excessive server resource consumption
> leading to denial-of-service (DoS). This vulnerability is tracked as
> CVE-2025-8671 and is known colloquially as "MadeYouReset." This
> vulnerability is similar to CVE-2023-44487, colloquially known as
> "Rapid Reset", which abused client-sent stream resets. HTTP/2 introduced
> stream cancellation - the ability of both client and server to immediately
> close a stream at any time. However, after a stream is canceled, many
> implementations keep processing the request, compute the response, but
> don't send it back to the client. This creates a mismatch between the
> amount of active streams from the HTTP/2 point of view, and the actual
> active HTTP requests the backend server is processing.
> 
> By opening streams and then rapidly triggering the server to reset them
> using malformed frames or flow control errors, an attacker can exploit a
> discrepancy created between HTTP/2 streams accounting and the servers
> active HTTP requests. Streams reset by the server are considered closed,
> even though backend processing continues. This allows a client to cause
> the server to handle an unbounded number of concurrent HTTP/2 requests on
> a single connection.
> 
> The flaw largely stems from many implementations of the HTTP/2 protocol
> equating resetting streams to closing them; however, in practice, the
> server will still process them. An attacker can exploit this to continually
> send reset requests, where the protocol is considering these reset streams
> as closed, but the server will still be processing them, causing a DoS.
> 
> HTTP/2 does support a parameter called SETTINGS_MAX_CONCURRENT_STREAMS,
> which defines a set of currently active streams per session. In theory,
> this setting would prevent an attacker from overloading the target server,
> as they would max out the concurrent stream counter for their specific
> malicious session. In practice, when a stream is reset by the attacker,
> the protocol considers it no longer active and no longer accounts for it
> within this counter.
> 
> Impact
> ------
> 
> The main impact of this vulnerability is its potential usage in DDoS attacks.
> Threat actors exploiting the vulnerability will likely be able to force
> targets offline or heavily limit connection possibilities for clients by
> making the server process an extremely high number of concurrent requests.
> Victims will have to address either high CPU overload or memory exhaustion
> depending on their implementation of HTTP/2.
> 
> Solution
> --------
> 
> Various vendors have provided patches and statements to address the
> vulnerability. Please review their statements below. CERT/CC recommends
> that vendors who use HTTP/2 in their products review their implementation
> and limit the number/rate of RST_STREAMs sent from the server.
> 
> Additionally, please review the supplemental materials provided by the
> reporters, which include additional mitigations and other potential
> solutions here: https://galbarnahum.com/made-you-reset
> 
> Acknowledgements
> ----------------
> Thanks to the reporters, Gal Bar Nahum, Anat Bremler-Barr, and Yaniv Harel
> of Tel Aviv University. This document was written by Christopher Cullen.

See https://kb.cert.org/vuls/id/767506 for the latest vendor information, as
it gets updated as affected implementations issue their fixes/advisories.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

