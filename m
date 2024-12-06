Received: (qmail 30544 invoked by uid 550); 6 Dec 2024 17:12:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30523 invoked from network); 6 Dec 2024 17:12:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=corp-2023-11-20; bh=/ICsJPsJLZLAdzAvba
	EzaSrg0H+rYCpSpWIyAt/dgL8=; b=P8oHUAIXKXDjgDur0KZBISbJlCtY8aOteY
	ErbVDMe8M0df8WvPxac/lw1Z0LoT0Ne31sZ7x0rLlDI97p0QX/IzXAok4THgXX2M
	6ndydUu0EWS262sfFoWoRYcRAbT0Xu1kYyw+VWX3GA+wmNj4euTI7l+V57f/gYHD
	noa5dHgUPCkqmq52/yUfptdZdO9AXAPRXxJpXr3rU7ZkeMFlOLf+Vlbx5KgrpScM
	TDrtn3dEat6QWz8f+E3nfn4UfwBsMvl652b1o7C8rZVHLK83Rbix1b54G8a8Wo70
	YVbLwvnhFPVrSMY+kVlncDqqHy8tWsdOSnOxNLwm9bIPkb2f+ogg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d/0tU+yePMVLYK6GHSn49Xfx7pW4NdkU5qaF6jJaIgf3HHKa8zMaZSoldTHfaBYx/qTZP1jgj/ZV7ERU83bABhX7OATKODCviyYbkyP0lCM+4MBiH62SUWVd5hKGjKWXYyBrcGv3gaLGE7tU4RTpSAutj0KHGuElTyXsC+z2pVTH24Vwg5wVpytLAVMBtxToHl3i1GPW8W6Vs7LSnaHGUyC35ah2RNT94k0rCZWZB/p0Uu2xQXBOSrhg7jNbTpwslnPMpUYpXCm0P/f+B1jAymgCLJjKHBXnAJyOETofSww6g028M9dQfYy0P+V7X5v/T+OKO7a4E8cPqwvLozL35A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/ICsJPsJLZLAdzAvbaEzaSrg0H+rYCpSpWIyAt/dgL8=;
 b=dWBNahevGoNAE3sNAUci9tKymuTDos74pgln6rO5cA7ACCeDhofGAVQAycYIk+FkIEU59++zdqVcExNToQpEuh+PdIQvKCUvosGcZ5qg2Kf49tRkOWu6kNUkMmfZILo+hInsry1QenIuxZgUsCytzCb2LyUuYWQ9wXY8+unidxrmMJWMES8u4wP8Hx4DBbzj1+mKhP0C154Zf5IhBGzbQhpDAH1P7EN4Dk3nQTPaTYQdjXKNfavnFBxVgzQuuvYvu9Ud+wCtWYOl3ipMzPyITKSm7dUadLcCftmER0LDcLc1WPp/sK8ajC3juZbYI/Z47DXMrqA6HHjUeK4GyiQyKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/ICsJPsJLZLAdzAvbaEzaSrg0H+rYCpSpWIyAt/dgL8=;
 b=P9jT0E6iZLpNXxKLdYcnortEhmoAnNDT+uDHAZ7yPvC2eO8p8KSRmWgqDJO6gDZff6g7fGDtwqJ8QPjoKY6CiHha+SVl9e8y9qo2Gw5HpEIVrCJtaOm6u6Vye2rqnV9Hoq7NyhByrXcr5Equuei5bL+hMrj+ZLeHhlkxopHo/CM=
Content-Type: multipart/mixed; boundary="------------zGylVKHhSIoUJewJ7WUDhMO7"
Message-ID: <008f1936-17ff-4ce5-b16b-529ad7866d1e@oracle.com>
Date: Fri, 6 Dec 2024 09:12:39 -0800
User-Agent: Mozilla Thunderbird
References: <CAADqWPR82BjP7jbyV_rcwP3KOHxripKbBB2OtoQyeMXVZ-XDrA@mail.gmail.com>
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
In-Reply-To: <CAADqWPR82BjP7jbyV_rcwP3KOHxripKbBB2OtoQyeMXVZ-XDrA@mail.gmail.com>
X-Forwarded-Message-Id: <CAADqWPR82BjP7jbyV_rcwP3KOHxripKbBB2OtoQyeMXVZ-XDrA@mail.gmail.com>
X-ClientProxiedBy: BL1PR13CA0280.namprd13.prod.outlook.com
 (2603:10b6:208:2bc::15) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|SN7PR10MB6405:EE_
X-MS-Office365-Filtering-Correlation-Id: b1aff769-d68a-4700-6823-08dd16193132
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?RjhhOW4ydTBQc3RiRXh1SkJRNU9iYlJNOVN1TXJ5QVAwQmhCQlNGVFlwZkNt?=
 =?utf-8?B?NDljZ1R6cmwrdy9jY3QzckdEeHVvVDlSa0hZWFJsZEpxN3VIRU8yeFg1dk1a?=
 =?utf-8?B?ZFN3di9MMk5JZml6TGZuNHRBb1Q2UWZBZlFkLy8rKzFWOU1XUnNuT01Kekxt?=
 =?utf-8?B?UjFhdnk3ZzU5aU16RnlLb3dFaVlSSWNEeDB5T1VzQ3p0Q3V3ZW1IVkxBUm5j?=
 =?utf-8?B?aGl0eEMyVjc3aDFZWDFXU2Y0cmowdDVEcXloSm8zbDVOb1dyOGlaWHVoMlQz?=
 =?utf-8?B?cXZPWVVrZk9yeHFSRkZSMzNyZzNUdlZGOTNnb1gvOTJNMkxGU3dZRmU1azhn?=
 =?utf-8?B?c2pmUTduNHJxQ1B1R3prM3FKWHY1dXg5TFBNVHhzb3ArRHVzZGZqS2orSTNn?=
 =?utf-8?B?QitOSkc3eUdXVVZaaXRJeDEyRkxiZk1nVDlWRW80dkFhZHl3VmlJaUI5TEJj?=
 =?utf-8?B?UXZoNFU5Unp5cmZYZWhkYUJwWFZMY2JjUWtzcHpKaGo2NTM2aDRlRm9ZdmYy?=
 =?utf-8?B?VFBocm5Tam9aZTk1aDlmUUp1VUp0S1dxanRTRFJxZFU5TWpIbEs3ZXF0YWRR?=
 =?utf-8?B?ejJnSVNiSUpMUUJsb3Y1MEtGbW15YkJmVVhyTk5iekdZZ2g2SFdOZEJMMGhz?=
 =?utf-8?B?NGgzTHlVS2J1YzdRemp5S1Z6S240UnpjQkM2VGsrajBzcGsvbkIwbEdpUVpV?=
 =?utf-8?B?SUpMblp5RDZEdFJoZHl5TjEwUit2dnAxMSt6dWdZVXZ6dVRqM1Y4ZUNvTjdq?=
 =?utf-8?B?ZElpT0ZibjFWWHVsTlRKNndWZVRxZHNOdkVpalhxNzRVak5KOTdObHNmdDNN?=
 =?utf-8?B?MVloN0RoT1pCYmx2RHkxTmlVREVEalRtK3UvQ2J6clFuZHV2SVcwOGxMQWda?=
 =?utf-8?B?U0hCbkdNcHRKNVcxa3VzbU95UTJGZUJ4ZnRLdkg2QlV1UHNia3ByRGlWZEJ1?=
 =?utf-8?B?WWVYREQ1NG5hMndOUlcxZUdiQ1ZGdmZpZUVsaW4vS1grd1AzVzVHVmVNMXJ3?=
 =?utf-8?B?dE5CYklFVWFIOHRDTnREemkxTnBpMXYvdkovQTV5dXZDMzErRFpRRjhPTTZj?=
 =?utf-8?B?Y29MTytBVUxrUHVjVEVuOVlsK1JUZkZvWTJZZytQbVl5eXR4ZlRXRUVmSzlN?=
 =?utf-8?B?S2FRSjBRbDNwWWpEdVhBSWMzSVpZaWNURk9JVU82S3J5TGc3Nk13ZjR0Lzc0?=
 =?utf-8?B?SlhTNlEydWREQVozMnNselQ0cWVPdEsrcGtrZlViRVVDb3N6SFlXWnE4Lytk?=
 =?utf-8?B?aStLWHZJUWVPM21KOThHRVp4SUFxM0lEQnhUVUNYeUpzKzQ1cVZ2OHRxZzh4?=
 =?utf-8?B?WXg3T2ZTaDZEYkgzaEFVQkxzSis3N2dvQ2JsdFdCek5CNHdWaFd6eUN3eFNU?=
 =?utf-8?B?aUdkTi9SYnVQSWxZcmpGWTRKVnZEaEFxSytTbHlRNE9CWkZONDAzSnF1eHAr?=
 =?utf-8?B?WXdFaVdubTNhb0tNVHdUdzgyWWdZNXZ5bGE5NWI1ekxNeGdydDRwVmZ0OU4y?=
 =?utf-8?B?T1B5Rzlkbm82MXREYzQ5NmVjVGJtdDk5QTQybjRGRmhVejVTaElCT3QzQmNV?=
 =?utf-8?B?b1FnTEdSSnQ5YnIvdzlrU0dVbVR2R0dnRk1nZkVvL2lCMVY5SE5IdVNiTG1R?=
 =?utf-8?B?L1FxdFhkKzVPa0twNHROTklFZEFma1pjaitKRWhvMEZFU25lR29XMmJCeEYz?=
 =?utf-8?B?SWRBM0lTQzBNQ000b1JSWDFmeUhMRjJHOFBMVUM2NENvdC8yMHpxVUpiOW1z?=
 =?utf-8?B?VHJBWE1FQ3ZhYmJwRGwycG90NWRuVE1COU8zR3JLZHRDeUdpZzQrUmFKUTRT?=
 =?utf-8?Q?xGONsTiktE5Zle8YN2UGjnCShT8eZQvOuXwlY=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?NW1aZ2ZiY2pqWWFsOUxkNVFkS3p1NTJ1dGxwYTNFNk1DUHQ2YUh3K056cy9Z?=
 =?utf-8?B?ZzRFN0Fzc0luRDhjYzgvS3lYa2hBSlEvWGRnTVlwWW5zK1BWUTFPcG1xVHAy?=
 =?utf-8?B?WEt5SE5TZ0xmd3dUSTJ5U045RHRtankwdSs3RFZFMFdVcDU3K3V2Zk9MTmRv?=
 =?utf-8?B?UWVxbEd3SCtscnlFY2p0cWZlREFXWXY4cGk5MXN6b1JPOThGMk1KbkVYWUlE?=
 =?utf-8?B?bXB4SFZQVVAwd2VnSEJDQ1RMMmpweTdiMFN6UkFlMU50VjlaR2ZJS2JRQXZi?=
 =?utf-8?B?REFibk54YnBZbWtzSVNOcldvclFxMTEwLzJYbTVHSjRFWnFhU25EUEJZRlB2?=
 =?utf-8?B?M2JpRmlqWFdmQU9BdHZHbWRFaTVNM1ZUeFZ6dlN5UDczRDJPaUphU1gzQjRH?=
 =?utf-8?B?QXMyc3VkL0VxV1I5dVkwU251cU5VemR0TkJWWlpUT0VBckY5R1E1TVN2ME53?=
 =?utf-8?B?bjBXTCs5U2VzcEZRakdzc0lvRG9KMmZVVHFkRE5IdHNjNGRzWHZvb1hWdFRk?=
 =?utf-8?B?QmNMZkQreUxycVJteTBXOXB3NHViSWtnUktSeGRjUVJNbGVFMERObnlDWFk0?=
 =?utf-8?B?aHFWeWZScEkreWRYeHlPZ2U3OFE0cENSbVAxNUc5Ui9QTno4Y3Q5UXRmSWpX?=
 =?utf-8?B?cGtaSUk1eUsvTTlBcjQ1Q3ZDNFZ2QmhvbTBWNXFCd2t5bnVUM2xQcDg5UlJT?=
 =?utf-8?B?ZFJQVVdjUkpJVWRiaENydmorYllaLzZNeXVITFlwMjJuTll0YVdwUGdGWWZY?=
 =?utf-8?B?VThSMkhvSUxXTjBTVWllR2lCRWhYWEpRa1N5NHpjK1AzRFJlNjhxdkJ5azMw?=
 =?utf-8?B?bDJ4M2VYdmk4ZHhtZmV0OVltQ0ZVMkdjb1RjRDRCRlFsVHRCbU1WeWFWUmVI?=
 =?utf-8?B?L2phQ1lrN090aUNJMERJNmk2Y2ZXdVdFdmI4N1lDR2JUMkdMZWFVNm92bEta?=
 =?utf-8?B?NUl2TGlGWDcxeVFoZUpKL3NETmhDakdyVFo1cDZYSHMzZ0hJRXlSMW1ydDhz?=
 =?utf-8?B?K1BWTnZSY2x3UStkL0tlVzJCSGlrenhrK29UdjcrNkR4R0lybU8yYnpvVG03?=
 =?utf-8?B?bk5wajRCd2ZFV0ZBZDNNUWVmZ0lpdHFQRW1Fai95N0ZYdXlQTHlPTG5RSzJR?=
 =?utf-8?B?SU1iWU5MOGtUWElJc01URUUyd2p1U0RtS09XNi9DM2E5U0Y4SmJPdWx3UnZz?=
 =?utf-8?B?OGpwVjRSRm5GQnlOTTh0K0QyNHRkV21CUEdPY0RrTk91MmRKc1M0WktWL3c3?=
 =?utf-8?B?MU90RGlOemtGck9zczUyU2cwOTBENllFQ0xxcHNnVUJhTDhFdE51azJmSHBh?=
 =?utf-8?B?cXlVenB1L1h1ZUZ1UjJvakQ2bGNQcUN3RU8xU3pWMWEycHR1eGdnWjlRYnVz?=
 =?utf-8?B?U0xRMG9TVUFxNTQ1K0ZxQUFUQ3hmci9PeEo2WWxJeTNpUHdnZlZsWmFRamky?=
 =?utf-8?B?aS84cmFDN0toLzNvUEtwVDRiWU4xVWJkVVVXaFduU1pNVUt5aUx2bFhJUTlm?=
 =?utf-8?B?VFNDNnVGSmFNVXdKSk1VREpjbFU0QXI0WGczWk5McmhtN2lTWUtpbXBDbUUw?=
 =?utf-8?B?cGRabGZMMDUxdzhpOGZaMXdtbVEzaTNqSjA0akRrSis3WkFsVG82OHBHWnlD?=
 =?utf-8?B?U1FOUFI5eEhtV2ZQZk1IdTMvdkNES096RjJCKzMxdk0xZDZaR3N6a0t4SWE5?=
 =?utf-8?B?Q3VJZEIxekhMOVVDZ2RPdWdqNDh6THd0d3JrZllPK1VuTGI0K3d4UzdRaHpZ?=
 =?utf-8?B?b1RJOEVKejRKK0N1VGZlZklYd2YxTGc4THhjVDVDNVhicmRqSm9Xek9oK0dH?=
 =?utf-8?B?N3l2cWZWeHZpa3VDcE5tZC9PbmI0TEFZVWUvUk9TNmdET2tnYTM4STlhR2ZE?=
 =?utf-8?B?K3p1QVlqd3A3N2oyQUlvOGgyUkVrQXRHeUZqRWVsbitiOGkzVUlrdTVLdjBy?=
 =?utf-8?B?MGJJV3ZId2NQcEVxYXlYUHZvQWk5RFg1OG15cXg1YWpYNFVJM1Nxbm9SNmVW?=
 =?utf-8?B?ZHpvQk5oTlg3L25pVVVDcjhlaVAxbURRMTgrU0xrN203L0xSQkhQczYvMzhv?=
 =?utf-8?B?akc4SFh6MFhRZE1MTElialRJaWRvMFc2U3NLWThaS1FhQWZTWnY2d21ubHIz?=
 =?utf-8?B?ejd6Znd4dEEvYWFKTFd4U1Q4cy92VHF4ZDZnUStWYTlId1dId25JTTY4anhI?=
 =?utf-8?B?UGc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	xRjCTkVczjTKxQPBPK4ATVwVBDcA0cwZ4pvjafu/fgHpsa0tk2fQKODXudqZKtlXngZePGrSs14TT327kSJE1QzMOC7N93K6JE8AWlB8T1ILrTRXL0bCVLSNrxvRdwXWjsJLOjmIhAkxVbUcnSk+3I3/heoxJH9nmmwBTAxZC18L8lG83MDQc4gzlUAZaulA3mYCHMW3JEQaH0fiSvmcKfOO+dKnTFg664WqB90j3WbPnaGEJbON4G88bW/BnUHYjtGPxgpB9DBOuqKkI/ykXofWkZd4rIYw9gTcNnDhDJtoUct2FhWUhAJXKG5zLBl6JOyyLINE/AkDpg4ctlXkHRJtSeSdXyzOxZzeo0BTIExeKJWWhCqGb/YVSwPYxL4iag19eJJumOiNZVHrVcFGyn/XRRzCnJLonOqbebLMOkhD78FukWMG19Ejt7KxXHm+32LMNd+8TCSe9bjbg+e6JXAqumzE44pHVW14UhmLT6Y8fK0A4qqXOrmOuqA9+pLpkKH91IhQWmoESfTVV9kNJ38+erwU7285XZiy6IUvjTkC2KTq0PwLkmOQzNNT6QtvdIgBzNJGv8JRW9GiZDpmiQMvcIPWIoJdIRK9dQ1lqFw=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1aff769-d68a-4700-6823-08dd16193132
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2024 17:12:41.3161
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kMgAh5nhkV8MGLoD2vDfRC2b1xZ0J48waGBTdVChY9gni+Ip8MLd3HlLe9wl91sRKLucNQoJ51aRAwmisDlVnEbrM5BTh8qU5xZzCs3OLPM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR10MB6405
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-12-06_12,2024-12-06_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 mlxlogscore=999
 spamscore=0 suspectscore=0 malwarescore=0 mlxscore=0 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2411120000 definitions=main-2412060128
X-Proofpoint-ORIG-GUID: NVhkAn6w0_0-dEARz5P5C8YOVc1m0r8k
X-Proofpoint-GUID: NVhkAn6w0_0-dEARz5P5C8YOVc1m0r8k
Subject: [oss-security] Fwd: [Security-announce][CVE-2024-12254] Unbounded memory buffering
 in SelectorSocketTransport.writelines()

--------------zGylVKHhSIoUJewJ7WUDhMO7
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit




-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2024-12254] Unbounded memory buffering in 
SelectorSocketTransport.writelines()
Date: 	Fri, 6 Dec 2024 09:15:28 -0600
From: 	Seth Larson <seth@python.org>
Reply-To: 	security-sig@python.org
To: 	security-announce@python.org



There is a HIGH severity vulnerability affecting CPython.

Starting in Python 3.12.0, the asyncio._SelectorSocketTransport.writelines() 
method would not "pause" writing and signal to the Protocol to drain the buffer 
to the wire once the write buffer reached the "high-water mark". Because of 
this, Protocols would not periodically drain the write buffer potentially 
leading to memory exhaustion.

This vulnerability likely impacts a small number of users, you must be using 
Python 3.12.0 or later, on macOS or Linux, using the asyncio module with 
protocols, and using .writelines() method which had new zero-copy-on-write 
behavior in Python 3.12.0 and later. If not all of these factors are true then 
your usage of Python is unaffected.

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2024-12254 
<https://www.cve.org/CVERecord?id=CVE-2024-12254>
* https://github.com/python/cpython/pull/127656 
<https://github.com/python/cpython/pull/127656>

--------------zGylVKHhSIoUJewJ7WUDhMO7
Content-Type: text/plain; charset=UTF-8; name="Attached Message Part"
Content-Disposition: attachment; filename="Attached Message Part"
Content-Transfer-Encoding: base64

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU2VjdXJpdHkt
YW5ub3VuY2UgbWFpbGluZyBsaXN0IC0tIHNlY3VyaXR5LWFubm91bmNlQHB5dGhvbi5vcmcKVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBzZWN1cml0eS1hbm5vdW5jZS1sZWF2ZUBweXRo
b24ub3JnCmh0dHBzOi8vbWFpbC5weXRob24ub3JnL21haWxtYW4zL2xpc3RzL3NlY3VyaXR5LWFu
bm91bmNlLnB5dGhvbi5vcmcvCk1lbWJlciBhZGRyZXNzOiBhbGFuLmNvb3BlcnNtaXRoQG9yYWNs
ZS5jb20KCg==

--------------zGylVKHhSIoUJewJ7WUDhMO7--
