Received: (qmail 6026 invoked by uid 550); 4 Oct 2024 20:59:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 6008 invoked from network); 4 Oct 2024 20:59:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	message-id:date:subject:from:to:content-type
	:content-transfer-encoding:mime-version; s=corp-2023-11-20; bh=/
	62LUTrsFYdWWhucYpo6g+OoaDgaBBWQXwRp9Ft6IPY=; b=EaLYILL+nF3A/9vsX
	Ht/Ip8wct2FMhJVhsvWt+UbHhIdjul/umIQKLvtG0UA3YHHwkXhHFX1iGkCcc8GS
	bKtV2q2SXtSJpndPxeVidtLibX8kKqO5ht/4lSAfjjvtAfU5J/Si9RxLb1DH1bmw
	PeT5/QDuuP+971Mk61v60DsCsjccrIFj6fMqieSae8TKIgoly7CJ1H9/HukIiq4h
	97LjksnKITFqyO1xRIMnJdR59pDtkAgzJhTVhHr49ZiomDErGCCWUt7eLzgio3iR
	141zOG6qf8WTEWvNfhQWJs4WxiqxovcEpo0nV3lA540qvbJ6m8JIKqLoSZf9HJgr
	YB9Tw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BRmBvuhcNSDm2yVZ7ZzguP9CBLyQZd6ECc6gqgDqC4KaUOXRWj+pa9+J/hQD820aSL/VPHQS+E9aTs6pDTSxgz52o8f4q6AU6K0pJtSyv0ZPdN5FEERySkqWQX0IRhfN2VgHItjyX1Lmw7PXYgC3UpP53OskA1H/SQUQBgXwk5W9YjutIOU9hxywkkQdiYKJOWfC8NKpaV5bPv710nTY5Fwis3mxPim3kstDVqdVeEDMoR/dE+HsFzvhglIp0t5L/ClUeReCOD6p4ijR8yfq06oGWAf3q6ReZnJwdLvQz/QkcKE7Y7z3vAvrusmM456MvxSC8EzHwBmgiSFlfL4dTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/62LUTrsFYdWWhucYpo6g+OoaDgaBBWQXwRp9Ft6IPY=;
 b=bGnMiYabKnpyruyhKlxUbKZLQj+SAPIAoNhbQgSF2yTritMycxU64O3ILtnnjlWuomjwIcgJZuQTZszGx+DkW1UxsnBrj9FYSkM60Wr+kOyTN6gZKiC1PpLK+pKxvpfKMAJXZxAjIR1gRzUfteyeXbbJ+oKCH+BHFA230FVuCxZaEAH000WI+McPcTprV0hGv+URZ9FPhOH+EMdNjryYiOaBqAgsThXTnYktqpHa7U9a6wz1ioJfQjGrduJR2AI0FyesAO3Pz13Oueu2oFz9+QXJhfc4p6rPE73cxT1BsGWNut2GbVeBo5TA5Nyk/rCglY8+n0NF11fYcK9S1VIb9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/62LUTrsFYdWWhucYpo6g+OoaDgaBBWQXwRp9Ft6IPY=;
 b=TDbFyLfLDyM1etVQPjOLMkAfdDXQ83TozSwgSaFn4VEuiRXfVfw2zj6OZq6oSPxQ8wZzd9ndUyX1eDMcjMI4EXBCaZeW0lBcIk14cCrN4wmQr2185gFAJt7MHcPhXKJlZWFLInVER5MIOD7vqwmYd7WeHKTNr8q37s0znkhyCZ0=
Message-ID: <f2b1d265-1862-4924-a0d1-05cd821b0506@oracle.com>
Date: Fri, 4 Oct 2024 13:59:01 -0700
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
X-ClientProxiedBy: LO4P265CA0047.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2ac::14) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|DS0PR10MB6848:EE_
X-MS-Office365-Filtering-Correlation-Id: c472bd41-0a20-40c4-93ef-08dce4b761eb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?dWNvNGtIRHhWVUtTQndPbWdlV056OGFyNG9pdFZoeFFMUHZpMUtuN0VvVGlw?=
 =?utf-8?B?ZGNOTjBKYUZ2Y3FyVEZnT0gxUkkwd21CM244TU9rYnlvUWNEaHlPLzROYXVt?=
 =?utf-8?B?RGZ0UkVRQ0F0TUZxc3JQSC9UTEV6YkZaSGhzT0lFZFdRbG5yS0VVOStidHpn?=
 =?utf-8?B?Y05PeU9Za2RJaUN1WEF0S2x1MFo3Nm52eUlGQ2ZYQ3ZUbVp5VGpGVTNZMlJu?=
 =?utf-8?B?V0Y0OTVqZ29vMVZBQmJlRElybG50RmwyNUUrdkwyTGh1OStTTWtuSUxyUXdp?=
 =?utf-8?B?Mk14cWp1QlhxQmt2OUNnWXFZeE8rZWdCSm5zOHhwaDNuR2h1Tjh0cytrRGho?=
 =?utf-8?B?SlZ4L2lMWWJKQ0s3U3FyUis5c2VnTWV0N2o1MDJ6T0ZMeUZKMW5rYXJVNWh1?=
 =?utf-8?B?Y2RrUGN2aUZiVnUyYXJXemxidzlGdFFnL1ovaHpNUktTd0M2YWhWNDhPN3hY?=
 =?utf-8?B?UkhXQ3BFUGpaVWh3OFhyRHB1Y3hCbjlqUThxMU0rbzRsbGJyTm05b2dneUJI?=
 =?utf-8?B?NkJEZjdZMWNGVVp2d0V5SUNESW5odm1LbE5qc2FIUnBSUDdsU2tERDJjK0dR?=
 =?utf-8?B?WEhiMFlaSGdlYUdJcmdSbHlKL0ZISG9HTzU1UCtibTlCSjhDN3hTTGFRNjZk?=
 =?utf-8?B?R0ppUVF4NWNCaTcwYkN6VmhSbHorMGxGNGlSQkxsTnhkVkhDcFVTaHFUOEZ6?=
 =?utf-8?B?YklDMXNyQ055M09mdlRZaGZlSnNYdS9CcFBYOUNXTm9KV1Yyb1hTZU5oRFM3?=
 =?utf-8?B?V29vSTZSQUFTZmtKMms0alBJT1dFdEtWQStyQ3FiY1BMQ1dZZit6VWIyeHd2?=
 =?utf-8?B?d2xYZWR3YVFxNi9zQWY4R1c2TXpMVkZNOFFOTWYzSjl5YlNpWHErdnQ1NUVC?=
 =?utf-8?B?U3BkMm1QOUt0UnpZbVVMc2crOGR4RW9DMG40TzFPWFZFSm8xWmFMcVc2MVM4?=
 =?utf-8?B?ZWhlYUowWmVSWHFid3E1bGVXYXU4Z0YyMXg3VnJPUlErYnF5WkFpQ1VuaG96?=
 =?utf-8?B?dFptNTdvRXRIWGp5OW1GMnRBTVBzUWtwY0VxdmpjNlhzdzVscUl1cDk5YXJq?=
 =?utf-8?B?UTBvVldiRjBXRGhGRFZ2MjBZci8xMThta3hnZ2JyWnQxUWRXR3QwS0ZNWVl5?=
 =?utf-8?B?QktjeFgwemN2bGxpVW9LYnJqTjdxaUcxNUExd2NKd0tEejlxM041Rmt6KzRx?=
 =?utf-8?B?YlViWExhc3lpUnpVR3hpQkxxd0pxWElUYjZPQ05nN05Zait4VEJ3MU1nSnNh?=
 =?utf-8?B?d2FxSDN0YjkzRDRLQWliL3VWZUw1ZGlHYXVxRVJxc1hHUnlSdHc0MDhiYmIw?=
 =?utf-8?B?aGNLZDZhWExiRCtDWU51bU5wckR5SERUb2FGeXIyZWNkR2dNWkhXNGZPbDZP?=
 =?utf-8?B?ejJ2cVl5RWNaTjFsZThmMHdISGs3bVN2bldhODBPc3hXNDliblViM2NoRnRM?=
 =?utf-8?B?K29XQ0dKR0N5Mkh1cU8rMW9KNml6T3hIUmZOMWM3bjFaeVdkVEFYdThBWE82?=
 =?utf-8?B?dUlEVmZwRk9NQ09PeUxzZ2dJemMxd3dsV0p0ejFINUo0L3hjZUdkKzg5U3Vj?=
 =?utf-8?B?a2wzWS9qbEpwMmc5dnZPZkNrcUdkMkJrNEhPOFdHUVN1azlOWTVrRHRZWnl0?=
 =?utf-8?Q?ILfCcA3vEsBHZWLC5Oqg3SJkvto8f3dRbyPSx1MonKQk=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?K0kwSWFEakVZZWpMY0ducFJzbFc0ejJzZDNyOXZWYzU1T3NWVFJZSS83V3di?=
 =?utf-8?B?L0tEd2lMd2FHdkhUcU9GTXZFMFVYRFIwSnA5aGVlaStHUTdHVHFKZ1p3RGRJ?=
 =?utf-8?B?bjBmOEIzZnpteTdMZVhLRGVDakFjNVQzWFdjN2JxakZrUjJjWnY1WXdHZktr?=
 =?utf-8?B?OHF6cHpyUFRtS0VVNFUxb1JtQ3RNTGt0aE9YWHJDUUZyRjhGV1YzM1R0ZEd2?=
 =?utf-8?B?RUZsL3dsYXB1ZzRSZHRMd0QyWHJhNmtpN05neTdKUUFJY0dwdVhNaUFKa0Va?=
 =?utf-8?B?Q2djZHJCYituSFNweGxZRVBadkdDMzdPbXFQaDRJZklYNjZsblpXL3ZZdnFz?=
 =?utf-8?B?cjlqcWp5blllUXlNNy8vSW9sNk02bllEb09od210cGh5TEphZURPcU5wSXVZ?=
 =?utf-8?B?aWZBSUlDQW5LQ3VBNWV1MHAxK1hVekVNN29DaUw5V3NrZHZxdGIzM2N1Y3R4?=
 =?utf-8?B?QWNnd3JiVThzamlMTmxCVmN4ckFlN2FSeUp0VlRXeGQzYVpIbUVvVFZxOFFJ?=
 =?utf-8?B?cVRXWlJZVDlPd3lUeVhwYWJYTkR3NFNidWdxM0R0R0E2NDhhTGZFNDUrcGVl?=
 =?utf-8?B?VjV1ZWV1NEZzdXNQN2tHQitGcVN2WUpwcXhVTEZZZHNvcUw2ZEFkY01vSmwy?=
 =?utf-8?B?N05RbTRCMmN4MWIrNGcxMVRmeEV5bHN2bW9ZVDhjV0gybzdOcW9Kb2ovYW5B?=
 =?utf-8?B?bWxtN2xPUVVhcW13TnFsTU9IS0ppRmxDcDBTKzczSkp3SVYwVVoyS2p3Z1Rx?=
 =?utf-8?B?RmRaTytMMWtJSE9QL0ZrbWx0OCtISUZqYTFvaXM1UFZYSWZWRVJUQmNwTjhL?=
 =?utf-8?B?UTBURlZiQysyYUlIcU9KL3h5dktxQzdSUnhiL003V2RBTjIweDhBdHVCYWt6?=
 =?utf-8?B?VG9uNnBQWlZEL0VZYUNxdTdOOEN2bDJwUWhyRnVaY05ZdkpUbmJ6aDJkNmlK?=
 =?utf-8?B?UE14UEh0UXpFRlFoaldTMHF2WjRSOFREN20xRjRVMnhYcitjb1NoaSs4ZWo5?=
 =?utf-8?B?RDNNdmwwdk12OGFXUTJFR3dyakJ5UHd3bTJiZVRHVDM3Ujkxenh0bGJDdjJL?=
 =?utf-8?B?SUJiV0JpR01kZkNZWlc1WnRiK3NBK0xoV01nTm9JTDBWVTBRS0NvUW56aDRt?=
 =?utf-8?B?R0I0NGJDWUhaRTI4eFduYUxuQXVneDhEN0RRRC8zb3hyM3BNQUZtRm9IcUo4?=
 =?utf-8?B?NENrUlFocmJWSWRDdkZRcGVIQ09JUllKUnZ0SHFYdElVS2pTbERuczhjNW45?=
 =?utf-8?B?UW1qcThUUERMS1hqVExIWFlyZnB1d3pMYkxzak55OU9HU2tHUFNHam5VOHBM?=
 =?utf-8?B?Tk5iOExxYjk4dk12RWN3U2FXTzlVNVd0cm5uWmhZQkFOUHpPbWU3Q2NhN1VI?=
 =?utf-8?B?Wm5vbWN3SUlJeld4N0ZJZzN3N1RQRGRsYkluMys1UERmL2w1SFphU0RlV2w5?=
 =?utf-8?B?L1VVSHFvQUs0UVNaVGc5bE5zdEZYM3QrZFpSRkRKR0lqN0h4SnBRaURyY0h1?=
 =?utf-8?B?a21aN0ROMnBHUDRUZ2diSlRNamYvYVpBNHlWNjlQaFlJc3pZTHBlMGlZK2dQ?=
 =?utf-8?B?WFJvdDVwc1pKZHVWeUQ4bUlPQU0weVJsbWRUU3JnK282Nk9yVW9ESitrZjFi?=
 =?utf-8?B?S3lCM2pqRkN3ZDEzVjl3cER0Y045MVZVZHpweW9CbEFOZTBjVGJSVDlZRXU5?=
 =?utf-8?B?MDkzZGFTNmFXak5ucXJyNnhpRE9ZbHQ2ekpRb0pqcDFlYmxxaElmMjQyQWVD?=
 =?utf-8?B?OXVIaThmOS9kOXJGUFNoa2ZmSmNOV0hYUWZWZ01MNER3SElCMFBRRzdvbG5H?=
 =?utf-8?B?bTR1RXE3ODJuVEpPMDJ0WVk4QTlJWUQzMTdPQlZYWGFvNUs0NXhOb25NWkR4?=
 =?utf-8?B?WXdvTU9aVExsaUEwUitQQWlzMy9Ud0toRzRZLzNpSlhFbFVDSlFNODF4dExa?=
 =?utf-8?B?NUxpMktsbEpmWEhPZ0pJOGkzMlhIUm9zWFdtSDVnNjFEcWhSa2pvLy8wRDly?=
 =?utf-8?B?cTZpWDU3ZG9OWG0zQVN5bjlHWEIwUkNWZXlMcW5ma3VUYnloV2dGcFE1M0Vy?=
 =?utf-8?B?TXAwVXc5dHNMTXdRU3NFWUV1T0lOU3VBRlpDMUlCWjdlSHNFUGxibWVsMlVJ?=
 =?utf-8?B?TjJEcFd0cVYvbUNQdm9vWkJWa1VsUGhRWGx6OXJMVGdGWFZVZW9raFFFZ3hy?=
 =?utf-8?B?bEE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	2DpEjW3loFvDrGbz6/Sp/DiqB3QdZohpjO7lTJkfUca8QpOG7TpcWNsZB57B5Pp1EO2ybRB35MATSMOR3dHn93rbuZiiKB6urDI5dKe/BL0bp15/MtXmV2nKswFbf7oL242+gBoDvGoCgQvweNz35xHS7NJCOHoPwfFUc6awRPsUb9Wb0qqqvJ1kn2nZ6qwqY8MXR+HJGJklA2XKkEF4IHosVQ08fowFWwIolspONgo+KjTlF2cXZAUGo4k89EsmtB75kRUYKybpCG8JD1GnR+hnbfWTYN7Wmmy4zfLojQfvzAhpzVj784hMFI4dnAkKGK8uFNEmeyE3m/4RF9M8pPqckz/cWOIZgH67/yLIHYAJUqqjZe8mO4QNoMBhbyWvEOj0CcMMUkXWrypR7qb+JD1ijOCHRyh8o5/uxjJ0rQf11pqfx3YePAeTipgG4ThuZ5eSb77mDPHdFE+5w6nuJWkQlOrVMHq8nl0HRlbIIrC77UonSxsjZwGpCWwkTxY7iFx9ylixB19B1yP61b/mqKBMAjHS/lat0zkAH2z7E3mhIlbJDJ7zWtTPOh/Z4Jb7o9kS9Ydti9ab7D2W3gIvjBnzrAdjivW2VHW9P7FK4ww=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c472bd41-0a20-40c4-93ef-08dce4b761eb
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2024 20:59:05.4839
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZLY2UO76QKLx7NWpcWD3AcCCpSeZqG29sl+/tfot4Y5rR6k8mk6f+bizQEBaGr5jOvBDRHE9OqC1uQhuO99EZ+oABAhaEgl3Z5bPHWaN1z0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB6848
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-04_18,2024-10-04_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 phishscore=0
 suspectscore=0 adultscore=0 bulkscore=0 mlxscore=0 mlxlogscore=999
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2409260000 definitions=main-2410040145
X-Proofpoint-GUID: HeoKsHmmw2LKttHLESj_7jAHL0kOF9Xy
X-Proofpoint-ORIG-GUID: HeoKsHmmw2LKttHLESj_7jAHL0kOF9Xy
Subject: [oss-security] CVE-2024-42415: Integer Overflow in GNOME libgsf

https://talosintelligence.com/vulnerability_reports/TALOS-2024-2069 reports:

GNOME Project G Structured File Library (libgsf) Compound Document Binary File
  Sector Allocation Table integer overflow vulnerability

October 3, 2024

CVE Number

CVE-2024-42415

SUMMARY

An integer overflow vulnerability exists in the Compound Document Binary File
format parser of v1.14.52 of the GNOME Project G Structured File Library
(libgsf). A specially crafted file can result in an integer overflow that allows
for a heap-based buffer overflow when processing the sector allocation table.
This can lead to arbitrary code execution. An attacker can provide a malicious
file to trigger this vulnerability.

CONFIRMED VULNERABLE VERSIONS

The versions below were either tested or verified to be vulnerable by Talos or 
confirmed to be vulnerable by the vendor.

GNOME Project G Structured File Library (libgsf) 1.14.52
GNOME Project G Structured File Library (libgsf) commit 
634340d31177c02ccdb43171e37291948e7f8974

PRODUCT URLS

G Structured File Library (libgsf) - https://gitlab.gnome.org/GNOME/libgsf.git

CVSSv3 SCORE

8.4 - CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H

A detailed analysis is provided in the report at the above URL.

The upstream bug report is at https://gitlab.gnome.org/GNOME/libgsf/-/issues/34
and states the bug is "Fixed in 1.14.53" and
https://gitlab.gnome.org/GNOME/libgsf/-/commit/06d0cb92a4c02e7126ef2ff6f5e29fd74b4be9e0
says it fixes that issue.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

