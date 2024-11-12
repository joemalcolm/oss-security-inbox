Received: (qmail 15540 invoked by uid 550); 12 Nov 2024 18:10:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15484 invoked from network); 12 Nov 2024 18:10:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2023-11-20; bh=gTyCz7zxpAsfY2UP
	CLkxR9lE+P3kkn3LasE6pKcBHQI=; b=UrPEBtyT4g8byjcP3H/Ov1seU0/S8wqz
	vyEsIptcUOV/KEeX79Xb1mrRRK91wVQRr5e7yqGr8Eq4yYPZZjwRZ+l9CfYtWnQg
	EhaggKXCQDsS8PZszdCtd4Dy+GpGlB+QNRN0hCvZh097em7p+gu94KX1R8JggHQJ
	XcA+rHSPQNiT+45dsk9hRE1/dkpnErJq7AdvgKQR7UGlRaKRl8OZKAqlUMZuA/HE
	8b0jwCUkj5xEt94m0dvBXZQwQJm6v2HL+UeM2mmZsTGntVhRDEemMRp4pUs40/Fx
	HOhHPnH2bPQ6t1ohSdQiQMJP1tOsTo/4okUFIvsYJwuUgiTMrugyPA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ISuUUSQpYjYqJbpXQNR2fnbbJef73uFwohws/RMhYcO5KSoBty9XsiJimuAFgUR1YlkuIOv3AuEp3w2yYo3phCSlQXADkxr5KjD2Xw/JDbxKeUCoQIW6iepr9yVgd7dSFqZYZIkBB7V748YbMGu9Rr6QeYpAomYaTEENRafyfY4zTABZ7ns8x0CtC0r1rTRJBCTyC1JrIJzOvKWzmlD9s/vLUHTXS8/Tz7atcbjTyHLecKUxRWukJejRUQqFA6rFNdbZT3QGpj7ctlMjn4TxlE/F3k8Knb8EQdyWplpco08BjAH3epCBIA5C0mz25c3CuvhUmcn69IBNEgmZBytNsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gTyCz7zxpAsfY2UPCLkxR9lE+P3kkn3LasE6pKcBHQI=;
 b=cy/xi082oGRZk2KxB4ASyLartFmh+46JQYCIFiPs+ZYa0KCsP9/pumJO/bMPsY1OcaQzv4lWbjtZkfMkt9JABmdWGnJ/Jq3X0bj8h/JisZs7pOSd9IizwP61D5AHtJWYNHtL1vKn1QJYSNdAfr9LO4KV/oAMfY18pLilf//rmaxQlPRt1sLCsJmaJs1d6VHMNxDfED4Aidyl4qrCfNDJ7zhgKg+lYCXPN5Qh7NB6jprbGIlTjb2UYJXFzowsTBSjWj5hqbnF82GyqAWbfDAmgHNB8WQI+fF6+uFIVQlRl8zn7u4ZBog99iHV8hYGX6dY5d73YGOn96Gzl8m6IcIcVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gTyCz7zxpAsfY2UPCLkxR9lE+P3kkn3LasE6pKcBHQI=;
 b=RTYCG8WIE5ont9E0RhfVya/rsbBi35MqaXHn2H6Jz3ZP+Di9Fd3JU/Gl/xVGSrfvLNEHukIK+Cl6hvQzgl6rDR5pMbiN0w735h4HZDL223DbLxvyQ/y3hE6RGWc663FI5RpnXrJNzdsZFDQLntBBCO/plphku460rBuANyIa9ho=
Message-ID: <4f2c7f2f-ad50-4c1b-b48b-17f287cdd043@oracle.com>
Date: Tue, 12 Nov 2024 10:09:53 -0800
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
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR04CA0009.namprd04.prod.outlook.com
 (2603:10b6:a03:40::22) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|DM4PR10MB6840:EE_
X-MS-Office365-Filtering-Correlation-Id: ac05e2a4-dabc-4ab7-7d1b-08dd034535ed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?OVZ5ZWhjME1SU3RHVFBoRzBpektWQ21wb0VOTVBoSmtNTzN1MVR4bHY1aVV5?=
 =?utf-8?B?d1FtbXJ3b2crcTJoeFNEanlmbUF4bVRjUVFQMFMyMU5tWGdLQ0ZuYjd6Wmxw?=
 =?utf-8?B?djRHbDdQdm5UMWVHUjhsOFVrTnJINmVJbHpmYXFWQzdwdEcxY0IyVi9QUjlW?=
 =?utf-8?B?Y1ptUERkN1Iwb3Q3ZUxoWWhuMC9oTFlaZHMvNnUxc29ZYjdDMVRaTm0yMlhY?=
 =?utf-8?B?WVJ3K05TcnB6TE5NRGlwK3RYMGY2VHFpZ3h0K21Dck4yWDE1YndST1dMazZz?=
 =?utf-8?B?RDgyVDFkM3JDNWt3WmxNMjVnZDhzd0szYTdCYlJSN21haTlQTExmdkQrclA5?=
 =?utf-8?B?TW5hRVBDZ2RMRFNVeFF0czdsT250WUZmbmwwLyt4S0N3VFozTmNVK1psQjdG?=
 =?utf-8?B?U2RuZEtiUkVMWjZHblZhQkRtWENQY0dIRWdKRkE4TWdXZnZDNk9FTExJZFJS?=
 =?utf-8?B?MlQ4K3B6eUloS3kvVENPS2VOelkvUTJNQXlxaDV2OEpyZkNkanNUQWxWQUhR?=
 =?utf-8?B?NVFrZHdSbFF0K3Z1QXNpczZtOFRjT1ZXS2pxa0lWOWRzZEErMFVHdDkzRWlZ?=
 =?utf-8?B?aUI5bXV2cWNGQlhrNEdwNjJROG95VnBOVEZQdzdTa0RRdW1BcG5sUDFXbkJm?=
 =?utf-8?B?azFOcitVYk16cFJ1Z0VmNEhVc2lNbVE0WWtTQzk0VGI3dUFOMi9rbFhiaTBG?=
 =?utf-8?B?cE5yL0h3NHR1NTJhZkFtL2ZIZ204Uy9nUHNiQU5BUkQxNDQzN29YRW54bzAy?=
 =?utf-8?B?QnI4ZlkyelZtUUk4VjVFc0I0bzNvUCt1UUpBKzF1VWVkUmZjUUV2dklzQWZO?=
 =?utf-8?B?U2RVUkVSdXhiTXVGVUx6ai90WGtvbmJRR3NYdkFpQ0VWU0NsclFHeTlrOXNs?=
 =?utf-8?B?Ry9RbE9NemtIcFpacXk2NllrSFR2a0p2NUJtZUJrTGd6OWdHM0NyQlVVWEdx?=
 =?utf-8?B?d1pmVW1TNE5NRFVlcUZaRCtKNmNha3d3SHBiUmZrUStkZk9vZ0ZjWGpsclhG?=
 =?utf-8?B?eTJQYzVXbGpsOS9Ub3hSM2VkYUo4amFUMXgyMVRsc0lYTUZxT0RXRzB1MlNY?=
 =?utf-8?B?OVZjdEZ4eUZ2VG01Q241dTBmZ3RhNlRBOTdiTDlDU2V2Y2ZhaWEzd0Mvc1cy?=
 =?utf-8?B?NTgram1ya2xmeDViTFdyKzlzTk9WVVlSSXNVWUlDWHJkR2N0a3VpZXNld2dw?=
 =?utf-8?B?Y3JCTTBpMms3VE04VE1oZDRzNEtCeGpLSDdiMzhTdXpzUTBueGtic3JMNlZu?=
 =?utf-8?B?NTdObmxCckM3ZUY3T2VUOHduNU9iK1ZRM3NxVlhRRHN1WlJPY1lub3l2NStH?=
 =?utf-8?B?ZkdWTGhiWDVjZHlpeHdrdHd4dnEvTmlGb1hORmVWNEFXMm1YUEZicVpPcEpl?=
 =?utf-8?B?TnJaZVROVUFwdjlTMjdqYXRzZkpJdHM4NU02YVhBV2dOUFRPdUdHMkFXbExL?=
 =?utf-8?B?RGFlRUpIQkd3RGhQd05aY2RMM2JSYzd4TVpqN1VLSnZKV0xBL1daVDRPMjFY?=
 =?utf-8?B?N0RtZFBlRWVGaXZDSERzU1dibVFZQWg2OUVUeTk1aVlRVzhjbkRKcjloakNX?=
 =?utf-8?B?OS9zREZZVWpKcDIvWG5HcHFCbVplVkhjdndUbzNIQkNZd0FubW03RzRFZmRZ?=
 =?utf-8?B?Vk1ydVNTQ3dsdExnV1hvMWh1bG8wQzNUWU9IWkcvWTUyR0VXclY3S0pwQ3hX?=
 =?utf-8?B?UzgyZU1qclNaM2xhSjFFUTR1UHRyTGpzcXBHTFdhWFg4T1dRUU0rTVRnPT0=?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?anhlR1hWUnUxTGd2QXJXZHpqZkNxNHZSK1FpT2hYLzliK29KSXF5YXRIY3Ru?=
 =?utf-8?B?eUllaFVYcUhMMVBKbnFybjRUQkdRQUdaaEoxcjdna0tCTXV6THVUWmtUaXZU?=
 =?utf-8?B?Q0VxYnlkaTYyaUU5NFRhMFk1N0hRMkJPSWdFNnhpd3F3ZVVFVEs4MTAzYWsw?=
 =?utf-8?B?V0s0RUpTZ0lXaTA0cU1aekpmQ3ZMM015SW1sc2NOdE1GMStDRXFoVDlEa29h?=
 =?utf-8?B?amNMTDRId01nNTRuS2tPakVxUHo4ZFNtWUlRcmk4SVpvOTlNTU13ZDZORVhF?=
 =?utf-8?B?dmhQSk1SMHd5dUtBSDRYWm4xd1IrenRqZEpzdG80aE1TWWFUdkpCVjNSSkc2?=
 =?utf-8?B?Wm9QQ3RYTGswVWVzM2lZV0ZobHhKWjhicXBrR1g2b3YwK2tJc3RkcEM0WXo5?=
 =?utf-8?B?c2pGTmZPZjgrUTFqT0M2R0dKTzVxamJvMGIzRHFNYnF6Q0JsOVFXMzUrYlU3?=
 =?utf-8?B?QkRDcGkzaXFzaWx1K3FVVkplU1A5QUZZaEc4UkVJSmxOV1lVS3Zld01vYUNj?=
 =?utf-8?B?RDM2R21CeTdGRk5tcVZZWC9BSjBLTmRDMHk3TW04NHIvZE9mdWQzZU1rRk8w?=
 =?utf-8?B?dFc5MXErSTJkQXd4TzRsa3JhU2p4UXZPbjBrdCtrT1pOM0VyQjJ2VXZEbkFk?=
 =?utf-8?B?WDcvTnY1ejczd3YvSWgvWkJKbmszWFcxZUFJMzVWck9ISnlZOEx5OVJiU1g5?=
 =?utf-8?B?TWpXdkxPd0Rsd3JCNVNYcWVaR2owS0pweEJRZEd5OFJmN214VHVBSDBUazRS?=
 =?utf-8?B?STRRTWVnMzdENHhsNExqU0tlU3MxbGdBb0VxL2xtL0g5VkRMbUJhWFpQV1Yv?=
 =?utf-8?B?MEFNQjZZTzZFV2hzYXpYd0l0NHR6MEZMc25KZDdYcDVzblpIOW9Kb09YSGxl?=
 =?utf-8?B?eHJrdGpmV1lrK1hXWU9xMUZDSmR4N285NDhqYXhPeVhnWnNnL0JHekhGUlNQ?=
 =?utf-8?B?K2wwcmo2RlNBNFVnMXlKY1BjWWN3Mm11ZzYrY1o4U3lCNTcxdEdhVjNDYjVS?=
 =?utf-8?B?UEJpdk5taFVrMExHMzcramYzY2o0TVhNeUJZTUdNeHl5TmhLOUYvZjdEVEU1?=
 =?utf-8?B?SDJaSldkWHhocVM1OW9BTVpNaEZab2xGd2FCRVpuMUpDNjU5QTM0NStMZkNC?=
 =?utf-8?B?dXdPb0lrV09GdnZ4WDFIK3Y4RzJZSWxGRVNmVGpWVmhnc3ZQMjg0TGJUMXpq?=
 =?utf-8?B?UmRBM3I3cGw1TVdrSlJ1TEhHci93WDh1dUkzUU43VTBIK1duRWxxcnBsd2ZT?=
 =?utf-8?B?ZUdETm5WdFBxcG9wdS9ITzR0NXlRTmtLREx0ejlod1RKeDcxTjRvaDBKQkU1?=
 =?utf-8?B?eC94aUxSSkxxYlVDcHhVWUs4aXRUWm5GNHhzdERGdVdaRGZFYUs5ZGtqeURl?=
 =?utf-8?B?RkJyUVdMMVZYczdzZUFzODVsWWNrRUNSdnpXRTBEVEJOWWdPdmg2Tjl0T1U3?=
 =?utf-8?B?d1VOQXNDS1NyVDZoUC9ZOHhtOXJTMDl3eFRjT1ZXeWFodmNPSEFNZlpESnYr?=
 =?utf-8?B?RGcyTldHU0JJejZrVGU4MHBVTGo4S01kWFNYOUhnbGRaMHNucS9rWmZJQzNo?=
 =?utf-8?B?OG5QTkZaeTdSSTNTbEl3TTRoVDJNZTZaQ1p0Tys0c3VXbi9jQk80eW1oUnVS?=
 =?utf-8?B?RDNDTStqTitUUkMyOTNsRnVqYUZGbkQ0cTc5c29RN1llZE1zM3BPcjFuaHY4?=
 =?utf-8?B?YzZ6MndXbGJPTTFyVXNDVXpGR21nVzZ5QnJmRCtkaEU3L0M5d2ZNQ1ZqdzhO?=
 =?utf-8?B?SVphSVdpSzRXc0pFUThSTVR5VmpTaDhvOVRZOTFDWld2alBVaE9NV3FoOFF4?=
 =?utf-8?B?ZFNlc21icFBVaEoraGdaV1N5eXRQM1d0djZqcnF4amdaSFRCT1lQaWRKYXpo?=
 =?utf-8?B?OU5QaS9oTHBBQlc4aTUzZllRZHR3cGhOcVNET2Z1cHR6YmFtRy9ZaHozVGxw?=
 =?utf-8?B?cXNzcXV3Nmx6ajRmSmdZNWdPdzgxN3JWMEx3aUF3aTRpb1ZyQXVqV2c1WUti?=
 =?utf-8?B?YVQwSTJQWUdDdGQ2RUt1ZVl0YzJndUVPWkdrYU1nWDNJME95ckZyM0NBSWpH?=
 =?utf-8?B?U0VtQlVpMURsUE1xRG1NaDJ2Y0RTbUc1Y0hkTXMyZXQvYnU4UVBNV3Rjc3R5?=
 =?utf-8?B?SnozTG5vT3NqS3lPUWEvUDFFbWVHM0s5Z2V2U0lZd1BCTzFvOHlGMmU5TWxJ?=
 =?utf-8?B?eFE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	kTf2FObNd+4KxI/OHJ3GvaN79LWrPWfaLTjRBCl4quEcjetoDnAAw9Kv92FoPtIwtbO1FCRCMFdHAb0DjZXun/7hB89rnLYSnZliwqJkEnebtS8uqHphg3DWMNTUHpvM0t74IL+iALpjHLMLWWYEUx53qbQep9RcrjaMlT8zCb2/ptTxKgh2sSp7e1OYAKt4LFpwDHrdvkJv0HaCrQ5dZu1C2uGiq+NWd5ZUFOGA7DxPaRiBnu+84Kjz9CQt8u24rDCe+DjPyzJ5IEQ9ELJJIzxbE7+qTNeywiDg3QPuoev4nXUM/7Uwsf4SSAmX2kZSCe3U9KfxigMaxDtSkiNCzkjZet0U5LP9nUPsY3EsuSJBT4Fg6L1ORA+kjtSNa4R1Zy6nDEsPy4jjUievHnXY0R9zTQzL+GpGIuL3fxKdGfZWTITnhT91NuD6E2utW6MW1OQsGlTvxqscSIozFsjbKEaDOjx6cl6zinOriDh2/WvLZipkgzaOBYN/I/TMIK7PCsYnhmSockpfFv35sGVOzeG1myuN35FsBOr6K0TGtTuzZNO5rVDhSroF5sG/BDCxNUpk8y1ByAJBUXoeXnHtqlly2SEzgrVSs0CICMNxIKc=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac05e2a4-dabc-4ab7-7d1b-08dd034535ed
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Nov 2024 18:09:55.0192
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7pjuRTKd9RFFHHnUHvrPobHgUr8cRguqyc4bzAk98Sc9mrq6mqG2nOqOrFPcFySDqAyoSN0TxMS7eHQun9s1gSkOXgh5LoxX4DwACn6RO+Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR10MB6840
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-11-12_08,2024-11-12_02,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 malwarescore=0
 adultscore=0 phishscore=0 bulkscore=0 suspectscore=0 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2409260000 definitions=main-2411120145
X-Proofpoint-ORIG-GUID: RzQcO3oxOdV4bSx8rpwRviCnq1WK-vfr
X-Proofpoint-GUID: RzQcO3oxOdV4bSx8rpwRviCnq1WK-vfr
Subject: [oss-security] CVE-2024-52533: Buffer overflow in socks proxy code in glib < 2.82.1

Another CVE was issued by Mitre yesterday for another bug listed on
  https://gitlab.gnome.org/Teams/Releng/security/-/wikis/home

https://gitlab.gnome.org/GNOME/glib/-/issues/3461 reports that:
"set_connect_msg() receives a buffer of size SOCKS4_CONN_MSG_LEN but it writes
  up to SOCKS4_CONN_MSG_LEN + 1 bytes to it. This is because SOCKS4_CONN_MSG_LEN
  doesn't account for the trailing nul character that set_connect_msg() appends
  after the hostname."

The fix was made by https://gitlab.gnome.org/GNOME/glib/-/merge_requests/4281
which was then backported to the glib-2.82.1 release made on Sep. 19.

https://www.cve.org/CVERecord?id=CVE-2024-52533 says that NVD has assigned
a CVSS score of 9.8, but https://access.redhat.com/security/cve/CVE-2024-52533
suggests a score of 7.0 instead.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

