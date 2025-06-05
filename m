Received: (qmail 8068 invoked by uid 550); 5 Jun 2025 19:12:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7964 invoked from network); 5 Jun 2025 19:12:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=0xUu0lQZp+LVFpR6
	ckqFjIWqISCE4hBJH45nitA9OUY=; b=XFwIPzJTJiOhHdCKSYYr6eH2+x+P/52D
	x6lFZ9dguBy772OSw3/5JLqxbL7QBS7xblzChdWGmaDFRqpRyKrji8GFoaIxZaJU
	ODd+3ERpP0X5VicE5XBv1V81/6ou5LNOdURQvRtFDK5b0UUnfm1F5EJH68ba9w45
	/uZNlMfmsfy/cJnIrjyBL0EEUWlORYxqHoS+c+k/Z60QHyJ9WU9qttYHPMJjQamg
	SK3FigoCROwCzqqhGQPW5N8P6g63m/IKFExk1kLX6JmOdSczBJ9bz4Y/bjyMlJ2n
	ndZpGSHMjn4Y5204JjjNkB38piOHMyCAVq1HLg0YXOn9Sm2eOzq1qQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xp11TDcqFk7UtMKswt2xpMWycy5DamOtzF8SpphfvpwuZ1tiISg13ypDMKvHfI11w4EkVpRi0E+L+/ZE5s74Rb7Imui1V9i4iGKG4GY9RNWbJuFox88cfqoa1H94OZxGcLS2nN/j6JCrc2oOKJiPW6qT+hCuNafIkh9o2WfKd9DR3It67ZphxgUVAmpMYxeJRDwPmErOkPqfdEnhjEHUIRCdUI1zzs0Y6tVXRPvoUiyPdv/IeWqGn4+IGTp2uM0aavtRbEQOTl+Pq5SbSK82MQirVbX4CVTZproKCWgqZLh66x/XHLmTyute2markK2YAZfHu9W7oYHCxsl/mRcZyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0xUu0lQZp+LVFpR6ckqFjIWqISCE4hBJH45nitA9OUY=;
 b=aXkHSRB022K4oslZaPkqWf2ziJvQHLIHYASmFu0pcgwfAl3/3RTbmumWuZHlxZfiH2F9dq8/x64Wz0qDBRqy3ygPd/fd5qAJtuyY+JAXby1zsVZbkmVi+TwagClzC3uAy0sB0SP9mQAp7CkxfKSQnBTJnjdCAl//+K4gy/p4RVFPsG2cNPn2fJObLjaYEHCA0jYlgWEvxTiapWhvFLoFsqZRXRzsYGky7aPKYMZ31aJh9M9Oc2B1PnJXnU9Evj6mclQLLi4Al8ffRJZpnAqgRAmcFMEOpBgSbjft1nAsMSwKH6dXBnY2+eeRJNT7+wT1Nrg/SQxHw3hLgLXw1J8WXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0xUu0lQZp+LVFpR6ckqFjIWqISCE4hBJH45nitA9OUY=;
 b=mYq1vwTu1Nl4e6WKdvQYhNV9p5e/TZdg7fLh1c6KdvfMKE0+iJFOX9PntrdSLpm0+DO8+GgMeNH49mBLS1fv5HLwv/1ckOPAv9f+r0p6nRmGlINxOJa8bMpld9wxvGcOmMOHhoK89g1yiBEg29LyvnPWQ5wU9sXdzbHmxeA+l+Q=
Message-ID: <e53c2ff3-6a27-4318-8245-8b99b3609e1d@oracle.com>
Date: Thu, 5 Jun 2025 12:11:49 -0700
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
X-ClientProxiedBy: BL1P221CA0026.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:208:2c5::27) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|DS0PR10MB8199:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c9c4a7c-437e-4a03-9e8a-08dda464d433
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?KzB6MFZKQitmNUM5U2dnUGtzdmx4UkhFTDN1cXVCaUVtSHhMbjFpSzZKY0tt?=
 =?utf-8?B?Z0ZVVE1waXFiSnFRWVk1bmlwS0VuZzBRWHMwRXhxZzUzWGR1ckMyQ3RtUlNo?=
 =?utf-8?B?RjV5Ny9kVDJETGw1QlFIYTdkRVdVdFRDTWVYV2JlSVQxVWtDcXUydCs3L2tN?=
 =?utf-8?B?dXd6Ym8wamlKbFI3Sk5Xa0o0QWM0djBUL2NHUmVwc29xUklsdytJcGRrVGRv?=
 =?utf-8?B?L0pSMWZYdGJLSm1wWDhRRFk5b2lKVDd6Sk82UlBZczQ4Z1RPblNoeVpkanND?=
 =?utf-8?B?MC9LT0VsUHJNWjF2Wko1RFdiemdMTnlZZG1Zd09TeERHU1JTK0ltMEVPUEVX?=
 =?utf-8?B?YWNMdDkrYjFVVjJBZTViaWlmOG5UcHo4aTN3QitUL1pjWVVGdUM0VmFwNnNm?=
 =?utf-8?B?c0dFRHFzd1B0UU5zQTZqZjNPVU5RVkphYU0rSkdJbEVmRnlzZGErRzh0UDdt?=
 =?utf-8?B?aWdVMEExcjgxZHo1czRuQjkrY09RUk1ZT0phSmZQV09FOVVaYXRuenF3YU16?=
 =?utf-8?B?bTVoS0RLSjlQNFhkL0p3UXA5U0U0YVFtNHpLbzFubXhXaGFCUDJHR3A1MW9D?=
 =?utf-8?B?ZnBLRlJyS2xEbjJ3UXVhNWwyK2FEdmFOdFhWSzRGRlhDendRc0twenAyakQz?=
 =?utf-8?B?N0VpaWJWVnpqalZRUlFGb1d4c3B1VjJqRWNEUGpJTERIOGx0WnJOMis0eGZU?=
 =?utf-8?B?VStoRnVCSVNHQkt1TGZiZnkyekx4ZVlmRHpmNHVBUTBNdXVRYUluSy8vT3NS?=
 =?utf-8?B?VWtLckxsQzNQQ0UwNHllb2pnNlFtdlNZWTkzc2daVml6NVNhcUJvR3NHTDlE?=
 =?utf-8?B?bGgwellOd0xvYWcrdnJtVzg1VlhBNlQ5WDNIK0hWOFN4dmljbEJKbnd3dWpC?=
 =?utf-8?B?bEpRU2kvZzYwd2wxNjFoMllvUU9XM0VabERRZ2xyTlNzYWdrakdzTTNjQjhP?=
 =?utf-8?B?TE04S2M5K3pmMWVtZzVUT0dpcWxNS0g2ekxpbU5XK3NYY3VuRXcyZEdTeUtN?=
 =?utf-8?B?SGl5bTRzU2FsQmhRZHNuVzlnZkRtU0xEUWRIQ1ZIdU96SEFPK3ZYZW5nNS9n?=
 =?utf-8?B?OFJHb0c4Q2MzcHBZT3JGTml3V3RuQUdQRnZGanFmcDJEMjU5S1BDRWN6YmtV?=
 =?utf-8?B?NlNSLzd5V1FDYkxJdDlEMmlseUxnMjhIUExFeEpFc29SOXZTRUtiZWl4ZWds?=
 =?utf-8?B?TzJkbCt0MU1sNXRGUnJ4RHVYMUZpSE1KY0gzeHV0K09XdU8zbVdOUDRXNFBs?=
 =?utf-8?B?L2RVS3NZa2lNbHMvM3JLS0lqL24xVTBMTnI0M3BvTVlHWi9QbCs0ZkVBL1Ir?=
 =?utf-8?B?NXczSU1wZG9uaWloQ1ROVENOTk9ISVpKd1NIUjZiUHBiYVNQbkYzZmpoRTVB?=
 =?utf-8?B?SFVMMGU3NGJIN0lKbVJVNngwSVkrT0dUQlJSV1A0bk1OVlhNUkhVMWhiR0E1?=
 =?utf-8?B?MlRiYXpPVDltem1xSVVRZTR5QWVxS3dNK1VlWlhiUnREeEN3VHRIT25VMktO?=
 =?utf-8?B?UXE5aGM1dGdFQlNiUktYTkFJU2N2clorZzFGaFBJa3FQaFlwYVJWWStxZE8y?=
 =?utf-8?B?cm05UDJGcVJtczkxTDVYRk9iQzU5cmFScXJNV3ZyWmRraUNXQ0ZlaUxqOEcz?=
 =?utf-8?B?b0VkOFphRnRVYi8yNVhHZE9lUEJXeFZiemFCeXBsUDY0bHU4bFNMNjBmR3Bz?=
 =?utf-8?B?TGR1aWR6akhXK1VrdUZuNFkrSWpNd0IvZWUzbXhEVUNTT1dhOEV6Ujd6cGk3?=
 =?utf-8?B?cWFCMDVkR0NTd094WFlnNm52czdtZGVOTUR1akdreWEwcCtOczMvYzhxYVkz?=
 =?utf-8?Q?1Lhhrgj/nJ++Ae071eQNiwkfrESql9HTjJRKQ=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?TlR5MC9FVUtEYUVqeHhGWkJIWDNBaVVXU0lTMWpoWkNJUitMM3JnYzV4WVV4?=
 =?utf-8?B?QTlVWWRQSFNqNHBHUTVEcjdDeVFGci80TFR5Tms4dzBRTVdlR1JteHNoajRV?=
 =?utf-8?B?dmM0aGFudVRFT3Nwck5tYVhqT1p5OVdsRnhYdldNUGhWdU8vNElYNVJVN3E4?=
 =?utf-8?B?VjY4c3drSTdpaGcxdDdUVGZEb0M3L0JIckxtdWZxYkF2ckFCMmFlNFczTXdw?=
 =?utf-8?B?UWZUWm1PZHNxb0xWVWlEVEtIR3JlUUxQQitTMlZ5dGc2K0xJbFBtbGdHcDVa?=
 =?utf-8?B?RExTVXRYRmVhV2hUb2ZCbVJwWWVDM2JnNU14VlRxVnpsQWZnOVQwM04ram5x?=
 =?utf-8?B?ZFQwcldFV2RJUjRaMDIwVUNKb3RWYUN3UUJwZ0xhR2ZCaThPU2NseU15bnYz?=
 =?utf-8?B?dnBIYkxENTFBeVpKL2loUjdVcVZjUy9LTVBrWHAwL01lU0xSSVpCYUo5UU96?=
 =?utf-8?B?SkgwbTdoQzhVTDZlc1UyekE1NytGclFuRDFnUjEycE83OE9ObVZ1Q0Yrb3BR?=
 =?utf-8?B?KzdwU2ozazNOdFlJL1lpNGhxdEdyTFVlRkdIbXNPeE5FSStMOGlmTDh2Skoy?=
 =?utf-8?B?MDlIaWRkSHlCa01ZczNtSkRIWUNMR1NiS01hZUNoM29DeW9NTkplUFNOQTV5?=
 =?utf-8?B?UkVkazZVdkxxZVp5b1RYV0pISnJqMDFCdjdFZk14MlowdzAxSGFzanMzTXlm?=
 =?utf-8?B?a3NsUUo3VWVBNUFPWmJwQjhJYjJ6MkNZdFh4ejVMQzlyNk4wTzEyU0ZYeE1R?=
 =?utf-8?B?YVk3MUhscmtORFhNcUZscGpudEtkbWtaM1NvRENoNTZpd3U0MWkzRWVkRWlz?=
 =?utf-8?B?KzIwdGlNR2U5Rml2a0RiWnN1RkhDaSs5c0c2bVF3SnVpUGJhMmJva0kxbTJ6?=
 =?utf-8?B?YUh5bzJHdnFmTjZtOVZ5NUtnTFA5bFArUi96SGlRTWFLUkU5TXVuSjkwYWZI?=
 =?utf-8?B?a2ZmWTEyc2NJbk5Oa2lnL3ZOeU9WSHR1bTdPMWlxZ1Z4akJEb0R4cFlBY2p2?=
 =?utf-8?B?c2czaXgvaWE2L0FBSDFsM0IxWGxGcGx5MTlSWWpIYkRqZDdnNEMrR1NZd2ZQ?=
 =?utf-8?B?QUpDOFd2bHp0K1VXUEpMRXN5SlpReVNGeWlhbmtZK050Sml6TlRyWW9tZ3p1?=
 =?utf-8?B?SVpZM254T0FxTEF1ZE5iOHFuVi9MTGVDS0ZkcXl2dXJkd3BwR1FOSEgrOXRB?=
 =?utf-8?B?RGVHNHFOMnpPSk1saklkcS9OL2FRdEtYakI3MFc5d05qZDBZSDdhcG1ONVdo?=
 =?utf-8?B?OGgyc0xQWHhzMU53Tnc1dThsOVpiTGh1RTJOTHk4YUd1dFFsOTczY1lPWmVx?=
 =?utf-8?B?TW1KNW5Ja2kwQzduN0V5MWZxSUluSEpkY2twUThDVFJmdG1xdVQxcnUycUtw?=
 =?utf-8?B?ejhmaTRqREx2eEplV3A3cjZZdFVtcmFLTTE3R1plTlNhTFVJVnRyQWxDcGJs?=
 =?utf-8?B?RFlrR2xhSWpRVzhCUXBKelJVcU1wSGJndDR4ZGRZem1XdnRvQzVMalhxNk9a?=
 =?utf-8?B?T2F6cTVpN05FWk5zZ1FzTHJ5OWNYOTRlQlgzbzNQaTk5Z3EwdmxBNERKUXZN?=
 =?utf-8?B?ajFJTWNJaXZMZ3RJdWVjMjRyMloxc1htbHlBNjBUZWxtSXc0OXExbC9WRzRo?=
 =?utf-8?B?UG42dk90TXRxamUyd1hjZytPNkc5Y0piczdUclByWC9rY2dvRTd5TU9GWEpi?=
 =?utf-8?B?QnZ6UmpOTUVoTXRaMWo5dW5vRjBGZDF4ZGM2K3pnd3U1QnRnanVSQU5vVkpm?=
 =?utf-8?B?SkdzQ1NBT0NVNnZIbVVrYzhVRVpmUDNxQm0xdXRkL3FCRDVSaGRSRWNNWkVE?=
 =?utf-8?B?dDlMRTdEV2t4bmNpRHZBYk1NWmU5UzFuaFQ2aHhYS3JINnp2OTdKMWh5Zmpw?=
 =?utf-8?B?b1BBemdqL3dTQ1J3bUNUVmtaaDErZXNSSk1ockgzUmJnSXNFZm1aM0FkWHVz?=
 =?utf-8?B?N2VPRGFlWk9EVGd1T1N0QU11RVJ5bTZZUG1YN1N5VXZOQ0pHcDNEOGtQNWlP?=
 =?utf-8?B?Yk5FMGJWUHNUOVpTVm5zQVM1eUJQc3pnRTBPSDh4U0RrQSt1YTZhTCtNK0E1?=
 =?utf-8?B?ZmtQVTQ1b1BpUG1nRWhzUStIU1daSDl4MEhKMlhaS0hVTzhmMDkwL3owUEpI?=
 =?utf-8?B?ZVpKU2krRWNKRHdFbkc4RC9tQ0VlZGJvY2tSUEtLSG52NTdvbW5QZWNPZHBs?=
 =?utf-8?B?TkE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	4xYxghiacJTOn0l4j7DfLyy7i0F2U8lmhbUpig88OhJly5zAIyKUiuWlXjXEa3pseOah4keY9S560Pf7lSoI7+etMd+7cApmGQbYlnREZ4L2sxDOXV8qxTSNXVruQHJRcal4giLw7rSXttuV5++GQXu0DQDEdYWEqasTfW8iTSB3+ccZKvMSJGjbfX6xNo4TRywlhTM1wJjSFKnW6JyvqAGh1e+4j9JPmw8II8xCSeJHlpnHl47Ft+lnZSr1PMfbryjeFJdvNMYKzDUAWjAkJmkDNnJCetLyxQ0mOFRkFGLrcxjjYYkswzyUUDgLD8YODo93kQevFwJX/CiwWikd42rKJtDkliHdrjtdEUOzWMIeiCV9ORH79vnJlwHV7w80dauL/IdFv0ahtScvgvHsRWDKRmTjOIw6MIRQt545oVfFtC8elYMMTlBIpaykHFd4TkfIO/GHW0Lhc876nPscU2V2YONziVx68R21tUrcATBaC0l0Yro2D38vC5wdCr1NOAi0OBzpvzk5lu24pmDYEdan2JrdWG55DteAwkt0IzPGIf2c4kBUrQbNysCDfSh/ETAWgRtSuAMilNVEONY8FgvzaVcVh9Af+ee9M7vMWNI=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c9c4a7c-437e-4a03-9e8a-08dda464d433
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2025 19:11:52.2006
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zKOSLJRlLq54Ga23ByP1SLpFof5f092REgR3jDsXt4jJQoTymymMfp4QHHVij08QFbHBJppeb60ZhGuZyQyzyGF1awmbP7DLSUrZSHVEM8E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB8199
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-05_05,2025-06-05_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 mlxscore=0 adultscore=0
 bulkscore=0 spamscore=0 suspectscore=0 malwarescore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2505160000
 definitions=main-2506050171
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA1MDE3MSBTYWx0ZWRfX6f2T72LgBRVZ lhQhmhgl0C03jRNp0AwHQ9LIhsPzmZ41toG927ufHhJ5V52Iy1B2sXTamiQGwW5xmacBhH/bQ2D MDeU7l/W3Eh5+WTPrq43EQmOo7f+8BuwOw8e5HR4WO+8BbgabaKy6EAJA2aF/y53ZgKPcC8KRRn
 X7H0gXRp11kzmK7zBl0KsNurPIuzOvgHSY4275jAZbO+nIQ9KydYr84rJrQqn/KCnYEDObSwTRw WyUaNnYgs0Dg07ImbN/mlNjDmPKSiKlQMYDYETU3e0LJPezq/UgpebFcUQEZlYMTZ79aT10l+Xb uOehIqX/Z25gywrrn00LWxxdxiqbfKBMp96i14cbj2IPvooxkiV+D3S7B6sl3I8rO4fiqKAhHMJ
 F8cbCEaTWCb7wOlf+l2330eTLaUYCsHYhA6MqW/91FmFZB2n1nnI++kBKg1Ha0RVDX4CEpQ+
X-Proofpoint-GUID: 7EDgnIGJBD1eC0OvVhUWRlfFcxFohVZz
X-Proofpoint-ORIG-GUID: 7EDgnIGJBD1eC0OvVhUWRlfFcxFohVZz
X-Authority-Analysis: v=2.4 cv=H+Dbw/Yi c=1 sm=1 tr=0 ts=6841ebfc cx=c_pps a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=GoEa3M9JfhUA:10 a=1XWaLZrsAAAA:8 a=plf8rDjJAAAA:8 a=YbTJWawbomyDd3-vu4YA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=JWTSs7K9Rhv-lrTctFka:22
Subject: [oss-security] Go 1.24.4 and Go 1.23.10 fix CVE-2025-4673,
 CVE-2025-0913, CVE-2025-22874

https://groups.google.com/g/golang-announce/c/ufZ8WpEsA3A/m/XDxq7uidAgAJ
announces:

> Hello gophers,
> 
> We have just released Go versions 1.24.4 and 1.23.10, minor point releases.
> 
> These minor releases include 3 security fixes following the security policy:
> 
>   * net/http: sensitive headers not cleared on cross-origin redirect
> 
>     Proxy-Authorization and Proxy-Authenticate headers persisted on
>     cross-origin redirects potentially leaking sensitive information.
> 
>     Thanks to Takeshi Kaneko (GMO Cybersecurity by Ierae, Inc.) for reporting
>     this issue.
> 
>     This is CVE-2025-4673 and Go issue https://go.dev/issue/73816.
> 
>   * os: inconsistent handling of O_CREATE|O_EXCL on Unix and Windows
> 
>     os.OpenFile(path, os.O_CREATE|O_EXCL) behaved differently on Unix and
>     Windows systems when the target path was a dangling symlink. On Unix
>     systems, OpenFile with O_CREATE and O_EXCL flags never follows symlinks.
>     On Windows, when the target path was a symlink to a nonexistent location,
>     OpenFile would create a file in that location.
> 
>     OpenFile now always returns an error when the O_CREATE and O_EXCL flags
>     are both set and the target path is a symlink.
> 
>     Thanks to Junyoung Park and Dong-uk Kim of KAIST Hacking Lab for
>     discovering this issue.
> 
>     This is CVE-2025-0913 and Go issue https://go.dev/issue/73702.
> 
>   * crypto/x509: usage of ExtKeyUsageAny disables policy validation
> 
>     Calling Verify with a VerifyOptions.KeyUsages that contains ExtKeyUsageAny
>     unintentionally disabledpolicy validation. This only affected certificate
>     chains which contain policy graphs, which are rather uncommon.
> 
>     Thanks to Krzysztof Skrzętnicki (@Tener) of Teleport for reporting this
>     issue.
> 
>     This is CVE-2025-22874 and Go issue https://go.dev/issue/73612.
> 
> View the release notes for more information:
> https://go.dev/doc/devel/release#go1.24.4
> 
> You can download binary and source distributions from the Go website:
> https://go.dev/dl/
> 
> To compile from source using a Git clone, update to the release with
> git checkout go1.24.4 and build as usual.
> 
> Thanks to everyone who contributed to the releases.
> 
> Cheers,
> Carlos and Michael for the Go team

