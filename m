Received: (qmail 5180 invoked by uid 550); 6 Aug 2025 22:59:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 4089 invoked from network); 6 Aug 2025 22:59:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=C04T+nNCKmRysA5Y
	Tf+8mODuzmzpMT4k61GSQiUtQ/0=; b=bZ7ZiGhgs1WBHetr6zZVbdQ2ou2PvQyQ
	m5GtNc64tPNS8EKWqaxHL8z8okduEMY3LC22I/mEl/P+GIYvM70ffY9smd9Tbq3N
	9UniE++5LPSGPz32Waej9HLgVfnT4ywXyzUk7HXqWX5Yp2E33Wq6gz6yD7M5yHCS
	OXtvpt/1hyqScWXbeEq9FAOwDIy+22qRyma9QJf80i7WGwVCvrMAY56vyFBXxpIU
	nZ/DPj7Yx+hXOci62v/CHIfgrtePfa7Im8s8yDVdE3lJU3RpiAdB2NAFqDFr+crz
	2PuQyp3avbUWqf8LKXv0sRxmVqhz068+37YxvndU2a0EaaJYUGjcJw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wtvrOCGdG6AfIhpIHKlPUMEjPsXw22NzeEy9tn+yPc0qB6CBACwJgjR2Y6DXc9D+qr3kpDmsOhVi+knA+CW0Vi9SWTQHRudafzR+Z0iySmhO7+9s6QGd7j6b4zuYkzjn46Wjvz/Gt/aMqPCTRa/peQJzBwNKVVnS1mua8VyLNzCsWcFvOoOefGPF0qvGMBAoF+nn+Z4NOFOiH3QZJmGKT5PT+gENK9MjZZEXE0Lf+xXQc+3No/7hwWuCLmcHdh9pzhPf+bo7yOp4CakPqKJvHMB45Q7DBGSACOrAZERDIfsYQMHEmif/O/Om/MCjykfZpI7/9ZHgb+qOfMSicK1FZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C04T+nNCKmRysA5YTf+8mODuzmzpMT4k61GSQiUtQ/0=;
 b=N4T0dDkNvhUhsZvR/4AJrTtLDSuKane58dpAH/XZWFoeIUB317feZUW9C5fGiEp/4cOCqWYuEPqiJdH6BT8LyRCkzzuknXYDY5a46XHG3ifs61v/azwog85XTWdHucOMC2rZTRMad/0AiK1JMEFHpMVfkFWD4AqAl7CRhOChND5bZdsIGjkIN3OKnVqXQ8vVZNdmhOHULENyjrUyUt/hGuW+PcCpCi9oSP3pvAPbdIKnTL9SnMtPicraOPe03aA8U+WnFBr6cPnAjxdb3JQK3Nuqwj71safBAXsH9Ogemz9fEohnHB6O5WGJctrlA3n8OEUo+hX8iJXjJY7rSGL31Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C04T+nNCKmRysA5YTf+8mODuzmzpMT4k61GSQiUtQ/0=;
 b=acK0MjTbHnB5AVh6wgEOKUD/yibbj6W4NMzc2yckNsm4DN9fYZt+GZbSUku0CB35Ru6V7YVw2ynJ2lwkW5XkrzB4ULZgnPPjCtbfZMtpn5eC3QQy+nAKGgpuWCD+AMSApRnGHr43EuVJaCU3B0wDbgVj9W5hQhpBZKnvVB0tHuk=
Message-ID: <359880e5-56be-4d2e-a678-efc477ab079a@oracle.com>
Date: Wed, 6 Aug 2025 15:59:06 -0700
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
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
X-ClientProxiedBy: BYAPR07CA0064.namprd07.prod.outlook.com
 (2603:10b6:a03:60::41) To BL3PR10MB6140.namprd10.prod.outlook.com
 (2603:10b6:208:3bb::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR10MB6140:EE_|DS0PR10MB7933:EE_
X-MS-Office365-Filtering-Correlation-Id: 634468b7-244c-4321-ed02-08ddd53cd956
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?aWNSNG1iUW5BLy92dC9taEV1a1phMFp1QnlhaWticjhqOVl5dENlaGcrWUhs?=
 =?utf-8?B?Y1l4TjE2ek9nZzJnVlljQzViS2ZPc3BBQ25LbXpIRm9NaTlsSWxja2xVYW01?=
 =?utf-8?B?UmZ4ZG44OTYyNUJNdk96Q3Y1WndCTjRncFFJMGt4T1JkT1FaK05zVW5RWHJK?=
 =?utf-8?B?MzYwVy8zcTFJdmVxY2s0UHdYWFV1YlpZcTA5ZzVUQUJwYUdMS3hndHZwWitT?=
 =?utf-8?B?QUhlTS9RNG1uTEk3Mnl4cUdWRnlVTEQya3NTb2JDMkhJbXVzM0ZoUE0waFY1?=
 =?utf-8?B?OS9lckZPVFJjTzVwUHNCTHBIczdiclJuODRHTEpCWFJLVE54RC9qM3VvaktY?=
 =?utf-8?B?L0EwclpXZVpQUzNnaHFOQ3NnUUh4U2tBLytxNEM5aWtOdTYyeEQvY1VTN2h2?=
 =?utf-8?B?bmg1Z2hxT3NrckR5Y1BiU3dyay9YRTdXMnFTWTQybnRaT2FyT1pMMDlLMUR2?=
 =?utf-8?B?ekZyaDEwYkZzTUZUajRvZ3oyMlBxY21pay9aMThDYzM3TCtWZXo1RnZCVDd4?=
 =?utf-8?B?bGwxL080SFNsQWUvNTlIR3d2enloeTlGRU1NNG5IOFlRcEFiL0VUUVdjTEs4?=
 =?utf-8?B?a1dQZTV6RW9Tc2JDOFRPVDJxeWJQbXY1Z20zNWg4VHdka2E2YTJPRFBMOCtR?=
 =?utf-8?B?dll0S3grelp6VS9GOEdxbThleFBhc1pxYU41dU15VjB5S09ySXRtSXdUUlRR?=
 =?utf-8?B?UWp2YlRoV1lwa1EzRlFFRWtoYWlScGJiMGxrdEpyQkNtd2tLckxLZGlNOHhY?=
 =?utf-8?B?d3EzMm4xRzcyVEtqWmg5SVFRV0VLSXU4TXZFdjZma0dwc2daZXJYSGVQK25i?=
 =?utf-8?B?Wi8xR0Q1MnVQN25oYWYyQU5ZcnU4V2VsdVpQbnJsS21TaktRRU9oeW9TNi9G?=
 =?utf-8?B?cmRScGNRN2hOTWt4bzZSenQrdDNEcVJ3aW9icHNXZEpIdzNZalQrRVUxa2lj?=
 =?utf-8?B?R3RxRDc4QnBDSlUwOGdZajFWNW5ON011Nmp2c2MramIzVndFd0l0YVpwQjNO?=
 =?utf-8?B?UDRsNFNDTkp0UFpBdTZVR09mU1dCeGRJOFhDclVDd3NuaXFTdlp1T2dVanVK?=
 =?utf-8?B?RW5DZnJkZGUwNFM4NTNTK2hwR3BRUnlUbnhzdXo2M1NzU2tqZkw0TTJBMi9G?=
 =?utf-8?B?OUtEK29ZSlRBa0FMd0dlRkk2RjNhcm5JeFN2U0dVcnU1bUl5V2RDSDRyRmVP?=
 =?utf-8?B?bHFNdU0xWWtST1pIQU5XUG5hbmdMTlJ5cXd6czhrRjBTSjdDdGNHOEhxaTFH?=
 =?utf-8?B?T1YyMlplQVJlZXpwa1NzQmg3QVFSVTlzNWx6ZS9NaEl0Y0RBQkV1U3hJVW9E?=
 =?utf-8?B?cHJVaEUrSktwRklER1BBY0JZd0RxbU5xVW1OWWlkYnk5LzVibmpFZnZMT1RW?=
 =?utf-8?B?Q05wa3VsSVJwbC9Pei9QOFFQeFREWWlpMWZYYnUzZEZJUXBBTVF6SHJBb2Qw?=
 =?utf-8?B?bFJQRUQ3YXlQVkR2TzB3dlNNcVprZmx2M3ZmbTZPNGl5MnVFeGczSUE1eFV0?=
 =?utf-8?B?cWtBM1liVkdNa21OS3ovVnduSFY5L2lOS1BFM2dvMVBTZkVMdzArUk1iMFUz?=
 =?utf-8?B?QnRTUE9la1RhL2Y0YjVNbzVNT3FmTWdVYkxHbXJBUk92TGZXRXJlSmdCUnhI?=
 =?utf-8?B?MzJ5WmxSS2tFWjdtbmNZeFlvNURwUUxvYjhwaTdiQlhjVGh2bmZ0NUlkcHlP?=
 =?utf-8?B?RkNPVXFDb2tvM0dKb2dEUmprUTJFa2dKUm0xUWNQbFVNdlZEQk1EZjZNcFdm?=
 =?utf-8?B?QTltemlmaGhiWlV1RVJOZE8zRG9MY2JMMElQcFFRQ052cVBHRUtnam42Z2xZ?=
 =?utf-8?B?Z3pUL1UxaTUrR2JIWFhmbllTVExBbXpMTjZqNGVNaVBud3F5Z0l0bldrRmw3?=
 =?utf-8?Q?QXKiptdDWe0JF?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR10MB6140.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?SEYwajUxK3V3YXVlVXJWV2ZIZ29jMVIwMDZGNjVoRU5rczZYRFVNOEg0K1FT?=
 =?utf-8?B?NmptaEdkc1k1cExXTkdFUXdEYVMvaEt2cG5pdG5qM1U2TWZwNW4zUjQ1M0p3?=
 =?utf-8?B?S0pDa1VvbHZBQWY5aW9PY1NHZFNYWERlaVcrRzMxSEZ6UWF3WEE3UlpRanAy?=
 =?utf-8?B?bVU1Rzluc1gwWHpUbFFsSWNQNm9WaUVmeDIrKzFsaVRxVW8wbE83clhvcXZW?=
 =?utf-8?B?cEhxNEtQYUlacVVFaUNvWGt4QzBHS045Q3hHK1hYTXVaRFdUTTcxZDJWc1Qv?=
 =?utf-8?B?MndKSXBaR2R6eFJqWHVNVDRIYUswSkNjbzNwaTFDelYzand2Y1czcU9MTzFn?=
 =?utf-8?B?SzMyb0JyTzBPZTFva2JxeS9TQ0dMYWprVmVlK21qTDltKzk2UUlvbXZQZDN1?=
 =?utf-8?B?SldhaGtNMmU0S0hvMC9zZ29mVXFFOVlJQWdiZjhDUXFCQ2pDUFZxcFhQL1JZ?=
 =?utf-8?B?N2lWYXEydCtrSGl4dmI0L2FrWGZUeUlBdVpZRU53WjcrUFJzc2JwWDRjTS9B?=
 =?utf-8?B?SGpISGJkWHdmWStzRWRCQ0lGOStYUHJtdXpyR2daK0lHbUJ4SUFHcXIxNWMx?=
 =?utf-8?B?d08xaHdTenE5bm5mNXpUWEwxenBOQlZLcVpkQkdSRTE4b055V1A1THNQUUI5?=
 =?utf-8?B?bEpybWJCZU5hQXZLRllkaFViUzAxN1IyVXhlS0ZrK3Z1Y0t3OFd5c0pNOWRm?=
 =?utf-8?B?UVRYazZ1N1NVZkxSQlhVZkl1S0htbkRabjZKbkptNEtGRVBHK3Y5SEMxUG45?=
 =?utf-8?B?L284RG03MkxoMytEajRQTEhCKzU3RkRRM0cwU1hnVE1Tb0d2bGVrVG1hV1Fr?=
 =?utf-8?B?SEE4MVhQbTltdnN0RFhTRG9XcWZNVUVnd2M5b2Q1clVXWkZxekdtZXlkNkFR?=
 =?utf-8?B?OURjMGlyRGxZUStvSkpDZGVtc3Vyd0hPNEtMaHdxbnhSVmx3WkF4TThLNkdN?=
 =?utf-8?B?ZDFLRlVVU3VCQkNxUXA3UzFzL0hnVG1xR0hqc3F5a2lUeHVySTVsMVJNVWhM?=
 =?utf-8?B?THF0eTNVYUFLdWVxMTM0WkNQVG5MMUJveDFtUkkrRkkzOW9OUEFDU3JBVjJ6?=
 =?utf-8?B?MlBha0ZrN01BMmdBQ2RWZGpjeEt5OGZoVE1ianZQYmZ2Y1QxcTVEbWx3dlRy?=
 =?utf-8?B?YnhtazFRVnFsVWI5TGQrOGYxdlVZOVpvbnFpMmVlZU5UOEdkZVRBNGlHcE4w?=
 =?utf-8?B?QWhSRTBIQnorN3ozazNkNUcwbHp1RFAyOVp3dnRITjN3ZlVlR2xqTUpsTzNE?=
 =?utf-8?B?aUtiSlFwNVZKem9Qd1IwbnVqajZPQ3liMU5rOEFvTGR4ZERVekk5anBOa3Fn?=
 =?utf-8?B?Um1rMVpDcTEyV01oYWRCVEpqcVZkUGlyOHhiQTVjdE02UERhU2x6VmtnVzhk?=
 =?utf-8?B?bmp0MXlObXJzRU1wb0RpbnBZY3VFWnBxbVh4SnYwQ1QveXhXbFYra1NBNDJD?=
 =?utf-8?B?M3pla2huV1JhRWtVS0dzSlkxNytmT0E2RStkdWx5alVtcGF4M3UzVVZBNWhz?=
 =?utf-8?B?eTN1N0hrNDNwYXY4aFhqUTdqRUc4T0srMTdXTGVIczlja1RQaWVUR0Z6VWZ3?=
 =?utf-8?B?ZW9FQmFjUm9CbENPQWt3Z2xMUGlXUTlRWWREenQwalVSWDBSeFpIRU5XRmdp?=
 =?utf-8?B?Q0tneGw4elZDMTNtSWZyczVJeFlQWndFRUxOK0ZVSmdJcUtqdy9MTEc5bUY4?=
 =?utf-8?B?eUVMU21iOXpBbnAvQzFpd1R0STE4TVFyNU9GZmdtRTdicWNDdnE2bFZnYVpa?=
 =?utf-8?B?MWVoZ2xMYkxaTnltKzdqRi9VWEZuWFg1ajViNE1UWlBRaThtVGF3dHFKZ3Fa?=
 =?utf-8?B?TXdGMXphWGhFL1liTEEwOUdrTFhYekdQK0ZXZ044a2xLRllGQU9UNG9vOW1B?=
 =?utf-8?B?WTR5Z05vRS85Ty94ZnlTZ0hXK3ozZ21rQkxaUlRtWGJaOGpvTjVrM0VieUZt?=
 =?utf-8?B?dmsyZ3Y5K3hKb2lkWEx2WDdvTkljTVI0SWRzNnpsQitQK0pZMFFkaHlrTWNN?=
 =?utf-8?B?eEhBMjdja1BrWElzNlk1dURXVFJNc1hsYzFiL0c3dWUzMlZMV2xJa1VjZ0Fo?=
 =?utf-8?B?Uk5aVFE4OXRZSm8vVkVSLzZTWUo5Nnpjdk11b0pOUHpOQ0UrbXd2NTNiV0th?=
 =?utf-8?B?WHFPL0ZCTGdKSFZkTm01ampmRTZOOEc2dldPZ0t1c0s1TzIvU1Q3SEEwdW11?=
 =?utf-8?B?a3c9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	LrcI1tQAgylsvjA/4NDuC0iU80lrURp8l5oLH1jWAZMUkV/I84rxEGcn8VaKU7R50HNZNCM+D1oh1sGqYdif1XB9i62DEY4riXdeetpIVXMfg0fnCV6odF+fNkdw1/Sc9t5Q0+faftGq+PnuqQHHTrDCXvwRpM+NfFgKXrrB1Rh0icXUew49t8jqlElxdqL7sPOZuDGbjV99Q7GaYW0ZoaQ019we4cfY8ew78X+jrllWxvMWf2MVu1Sp4iKNFynndXyvrOgm0k09itDfBh42G5l5ZsHdH2OhuCRrp5We2FhiM1gcOIUhS5/K9V4q3S6svSl/Qe0J4cc5c01/oNzjz7svMnAhdmgPZ9QQ90RmYQ4xMDC+saJi/hgUwHqOrEocwHZ0EyJ8gL42DHkBD/PUG0oyUO6T/O6uDWfO//EYckit1v9NPpxdhM7Ium1HZ//TrTaJOppgilu9IdzDRb2PYpYQiP6X1UTyq3shpzpL2+cAjp5uuaGTuHd+k9qkWkcMFmCmCIbHYJpHh8VGLJ+J6CT6gx0Ee+SEuukjbdztWETMQuncQkcCvXBbSw4+LQwTkRIHfRIPjy8h2CPd0E7TMU9CrmT75ImnEbkBulTYcM8=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 634468b7-244c-4321-ed02-08ddd53cd956
X-MS-Exchange-CrossTenant-AuthSource: BL3PR10MB6140.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Aug 2025 22:59:07.9996
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KhAAbdo6SAb60ICv1GecwZSQjQADH/5QT9tFslRiBghKhlOcq7XpHfHtc81GuJEP17tLRGJWCTd3+JlUzDaadAqfa59Iu2bwJicCoBfd0WY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB7933
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-06_05,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 bulkscore=0 phishscore=0
 mlxlogscore=999 adultscore=0 spamscore=0 suspectscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2507300000
 definitions=main-2508060154
X-Proofpoint-ORIG-GUID: PyS2QhV1vmWOkPM5DKBkoEKif_IJKrLB
X-Proofpoint-GUID: PyS2QhV1vmWOkPM5DKBkoEKif_IJKrLB
X-Authority-Analysis: v=2.4 cv=QORoRhLL c=1 sm=1 tr=0 ts=6893de3f b=1 cx=c_pps
 a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=GoEa3M9JfhUA:10 a=1XWaLZrsAAAA:8 a=plf8rDjJAAAA:8
 a=yPCof4ZbAAAA:8 a=wUWdRHtHkRzFvsadZHYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=JWTSs7K9Rhv-lrTctFka:22 cc=ntf awl=host:12070
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDE1MyBTYWx0ZWRfX7TGXn7d8yJuF
 ILH0icLy0hNU09Cn0M57QY8Zdvvlyz9wk07voD2LgJLTLZYe9D4qJax8HwkurWAcK0VHB/Kl2H1
 7Dsc0sivB+oNGcYcNc5rGoqvYRA/SXwNHp9UDwPHEbE81Zz9SYLZVEfRu3H+vDWAM+DZoAeTyl/
 GoSsEyEUnsu6MCgFVBp/0gOfML9nqvEsXRbnlO6sNz0bdb/2Z/Ef9JS6ghpDp1n08IYpv5YWVCu
 4BsY9I87UAADFg8/bFtPPpNwN+LYqqGTfRSIptnx+XItsC/tEsJFPu0zDMsQ2FrP+OKfa/zEyYx
 jLpWFTmPl1AAD9EM1orilopGM45v//skGZbSzPgj9nmbSsupFO6lk8150OW4H1CFH0vfls2UohA
 1yPYY+R2Stc3vm+X0PsE+E5Vc+/tphx+7QeMzkNaF5P8P4XETb/T4Ie6qxRpSJwlkMvwXx+o
Subject: [oss-security] CVE-2025-47906 & CVE-2025-47907 fixed in Go 1.24.6 &
 1.23.12

https://groups.google.com/g/golang-announce/c/x5MKroML2yM/m/5_v-oMjUAgAJ
announces:

> We have just released Go versions 1.24.6 and 1.23.12, minor point releases.
> 
> These minor releases include 2 security fixes following the security policy:
> 
>     os/exec: LookPath may return unexpected paths
> 
>     If the PATH environment variable contains paths which are executables (rather
>     than just directories), passing certain strings to LookPath ("", ".", and ".."),
>     can result in the binaries listed in the PATH being unexpectedly returned.
> 
>     Thanks to Olivier Mengué for reporting this issue.
> 
>     This is CVE-2025-47906 and Go issue https://go.dev/issue/74466.
> 
>     database/sql: incorrect results returned from Rows.Scan
> 
>     Cancelling a query (e.g. by cancelling the context passed to one of the query
>     methods) during a call to the Scan method of the returned Rows can result in
>     unexpected results if other queries are being made in parallel. This can result
>     in a race condition that may overwrite the expected results with those of
>     another query, causing the call to Scan to return either unexpected results
>     from the other query or an error.
> 
>     We believe this affects most database/sql drivers.
> 
>     Thanks to Spike Curtis from Coder for reporting this issue.
> 
>     This is CVE-2025-47907 and https://go.dev/issue/74831.
> 
> View the release notes for more information:
> https://go.dev/doc/devel/release#go1.24.6

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

