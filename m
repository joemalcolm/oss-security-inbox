Received: (qmail 30599 invoked by uid 550); 16 May 2025 16:10:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30560 invoked from network); 16 May 2025 16:10:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=zF5os+IwZU8ixxkjX8ZZFfeIUh9wlkSKXwW0KfiedBw=; b=
	msEBCXw53uPHu9i2JVlftptuaWSjkX+CJAXw9EsH3XgKm9jx6Tlcd+ZKdOZ7raDZ
	ltrBE7ZtpVtDNYa9bErLw+uxPVmeJVlYYcBNyWuTc9K+x7OOtCorPjKrVEb1Wzfu
	bYzkomIHCRbj54l1Bi0OvOpGQkVkERoSD0+CM2CteTzgUutsMIGSWjPIvdIdraLj
	R0YxityPXGOfQfEC0norHwQ+JmxdNWCychZG7aw9T7VIusqllCMvIzA2D9SmQb6g
	C5csDvyg9Euz18UL4CoWWRhn2UupLEkwOS1BJu4E4uDNmkP3NmxQl6l0ol6yO+EM
	XU7ymf7pXASsgK4n7a/YkQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kUcus3VvLLJT0ReIwlYi0n7+UIY7BZqPElRX3FmOA6NGxMWMMjOUeIX3pXpQVfM8JbX5Gj3Zl1bMup+AjmBjo9VwnFBBDWPJx4ndyCHqjToB//45GZ7Snkq2JIPBD40ZmBqOO7fUc9CDthJdbHCJHcBnZBI+Hiq5aUKv3jhSX79g0rI6639OtKM4M3sWvhVoGJ9D5qolr4HW33AUMkmfYieumL0+Ekic09RwaQFf9C7H+MSX4NOUCSVTf8/vg1Azdjm6gOxLmiA19oW55vU1WJf9qi75FFtfsGz2RXdOWJNX34n+5igmcF9tPkiMdSQhiWJBsmc6bMrAp5oYR+0ehg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zF5os+IwZU8ixxkjX8ZZFfeIUh9wlkSKXwW0KfiedBw=;
 b=NLR/7qADaXxHcEkqsCgNRQLEGS0tvE5uvUxzBGgOb68dMRrCS5xiKkX8xRuzbY+zdAl4yzzVXJuPmII6PKCR4EW8R2o6N8chzoVbjWDSu7OpiM2Gk5YS4XTj73Dv77wrlSizI0ypry4LSS4vxzKJs7a7tTVpJQ+Nh39fK5RgXl/CYacY1sxkHGVfHjUvQYrD3ZqJfMkakOnDilvxJAljNmcgRj9qR/9D0t8ZRI2z3QbFhAnLFjGjgxtXp8Jm70FpYikbcnSPsygfjZgrxtgotTUYT7cf/pS+iRNwTK541MwJpYEXRXODf9dSEtm/ZuQZ4IByVpW5sUjzDJBv47sZEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zF5os+IwZU8ixxkjX8ZZFfeIUh9wlkSKXwW0KfiedBw=;
 b=S4joeVviH08KdeLqSW5kTDIdqtwVXbKw+jlNgSc+lnUmQoYsxzPvaz1RjtvZn83veR2oygk9Q/96IleYY+tK+V7/b4hE2+nDxJEOF27kJuBZWTJ4I5FBPlqpN+Y6WdYdJcB7BeVnf9fKQayGTTCeT9fCriYd12H8ddFKZ0K7E5s=
Message-ID: <e2ea05d6-55c1-4ebc-9342-953609f90593@oracle.com>
Date: Fri, 16 May 2025 09:10:17 -0700
User-Agent: Mozilla Thunderbird
References: <CAADqWPTJ55mGyvm5Qy9BZX0rJ2ESvTvYe=cFtE2Qs_wYJB=w+Q@mail.gmail.com>
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
In-Reply-To: <CAADqWPTJ55mGyvm5Qy9BZX0rJ2ESvTvYe=cFtE2Qs_wYJB=w+Q@mail.gmail.com>
X-Forwarded-Message-Id: <CAADqWPTJ55mGyvm5Qy9BZX0rJ2ESvTvYe=cFtE2Qs_wYJB=w+Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BN9PR03CA0306.namprd03.prod.outlook.com
 (2603:10b6:408:112::11) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|CY8PR10MB6826:EE_
X-MS-Office365-Filtering-Correlation-Id: 6462f193-619e-4c1d-38de-08dd94942810
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?QUNkYTFlL2RoT2hjdEFScVBSR2hiSDJDaEdXSHBWVEg1L3NiOUNVMGFaZ0cr?=
 =?utf-8?B?UXoxeHZmd0dBeG5pVG4xSlp4bm1OT1pyeGo1TmI1SEtrNkkza1dqMllSenZJ?=
 =?utf-8?B?dzFPS0xud2VyOTE4SzM5TDYwQ3FvSzZGNFNpWnlUVHU5aUpXSjRVOExJTU92?=
 =?utf-8?B?RHh5YllST3JkTkxLTEcvZzc5WCtkVTkwK0tEYmxlL0pOTnowbFBpMmU5czZG?=
 =?utf-8?B?WlAvcXRlQlBJRUlSd2c0WUFZYTdlS1RTRWRxbzNtOXV1c3BrU2NLZ2ZQQUV2?=
 =?utf-8?B?ZUsrZWZINjlKN2hnek96RzBTQUFCOTV0YzBJUDdTUk9qdnJ4K0xsVGgxeWVL?=
 =?utf-8?B?ZlRERFRVaW1hazRSNy9SME9tSGtDUmNBdnNCRjRyZGNacjZLOGNxTEFPeXRl?=
 =?utf-8?B?bkMxSndrbm4zd1NEZmlrbG9pQXRFMU5TQVpMYjZhRGtncGQyOUgrL1F2Tm50?=
 =?utf-8?B?VmJpeUF6N1NyZkhncVJZZ29pNG9EOXRqdXdxRmV4dTh3VmNpd0JUZThzM0ps?=
 =?utf-8?B?ZHRLVmdJUjh3bzRqMmtkbjhhd2dmMm5zY0VyOE5IeXdZZUhvb2ZSeVlPNkhn?=
 =?utf-8?B?ejlIOG9qNjVDRGE4UnRmcDBab1pkdEJISjNLeHdEdFIvYm10OVgralExWTlr?=
 =?utf-8?B?cjV4azZsVlpSTXh5Z0kvTVZlYVJQK0pLcm13bGdRd1I4R0QzMkFHK1BScnVE?=
 =?utf-8?B?Mk83WGJtcWNKNmoyc0F0Y2xDMGcxOVdMNkhYVHRBUllvRmNabjNpdG5EcWVL?=
 =?utf-8?B?MW9IS0JDRmp0bFlmd2JHZCtZcWhKQjdvait6SVNZSW4wQmM1OTlsUnBtYXB2?=
 =?utf-8?B?Nk5xTFJQUFE1YzVYMzE2MTNuNEtmRlhIRGI1VjB6Nm5oU0cxM2NPbDJJVXBL?=
 =?utf-8?B?a2tRaEE5VlRvMHl5cnhkNkMwOUtvWkhnRjVYdnZhRTN1cGJ4OEpxRElzWkFi?=
 =?utf-8?B?WU4rOElVK1VEQTFXY1hwcU9MQTFzSnFQNldLMllXV0ZWSjBVTE1BQ1ZoSnVS?=
 =?utf-8?B?T3IvYWQwWkZPUXZnWUJWcnh2alIzNmxwMWdHdGdCUUl2dWl1SW1ZQ1NVekRs?=
 =?utf-8?B?OWxkajlxT3JNalhWazN0WlhzWkkzd2FYVkZHbSs0NnEzYjQ1WVppelQybkpY?=
 =?utf-8?B?UkxlMnF1UTYrdUExZlk4WDBZUHNhK1ZnTnFpTDhGWXlQSFFFc21OQ0xodHU3?=
 =?utf-8?B?VnVxQmFWME51U2dOV2NkM0ZlQkpOSE96R0JQL1JKRCtMWjg2SCtDK1k1V2tW?=
 =?utf-8?B?dUxaVjhPUkdrK3UwVlBXbEdiR1VkbzV5ekxMY2l1TXFGcmJ0NzhBUUIvOTVN?=
 =?utf-8?B?TUcrMkhqOFZPb3o1a2pweEY1b3RBN2xwSzUwS0t4TTNidWdQajRtcDV0ZUZE?=
 =?utf-8?B?UlduaWlFRWJwT3VuWWlJcTVqbEZRL3NCK3AzMXNPUlNMUlZ0WklhcjAxc1hn?=
 =?utf-8?B?VDhDODZETTNWRG1QczNpQ25RbWhKaUo0S3VldC9ISkt0TFM4eUVXQUhFcHVT?=
 =?utf-8?B?ZFZHQ1pQSVZ2M01HR2pLR1RIMnduMzJkN09xSzhsNzN0VXFwZHY0b25pamlR?=
 =?utf-8?B?dGFQUnpQZnJtL1VvU2NPdXg4RG5CTXFtbkp3L2RZSmVvbjNyS3FPMmhZbTN3?=
 =?utf-8?B?dDhRa3kzMERYZzBVQTNDS094VHAybWhBZkJOTnJsU2p5MjUzUENncnVhb1Ax?=
 =?utf-8?B?UFpWaW02dnFSLy9XY20wVEtpYTZSNHU3R2NXdjNjMXgxc1JBUWFWMnhQQkFa?=
 =?utf-8?B?QzlSQUVvTTZNNGliNjhYb2J5Y3JBRnYwT25peVo5V09wakg5VWdoOEZ0WFhX?=
 =?utf-8?B?bkRZTmpJWjRqUWZORUZsU3cxRmo0Q2xqOXpiUXRpK0VvdzlqSUd2NklDTjFq?=
 =?utf-8?Q?3bYFNTJlaN3CW?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?OUVaVU5HU3RHZFJFcDJxN3VKTkR3d09sb3hXaHZhSVVTcmZ3WjhEN2FaanJ1?=
 =?utf-8?B?ZDZjL1lwdXpYQnZ6WU9lUk4xTXVzdmp3Y2pVbERaM3d1dGdWc0dxczhYNnF4?=
 =?utf-8?B?ejRlSnd5YmUyWCtlLy9XbU54dVBJdHRYMWxnT2Z2ZHMrenBNK0txQ3psZTFu?=
 =?utf-8?B?ck1kK2taODlRYUV1QkU0Mm8xN0Z4UUE4RDZHUzhoTEloYUt6MzVwbGpoWER2?=
 =?utf-8?B?UFhPTHhNM3hTUFZJTzE4RFpDaThoYmlLUWdMUjNLdC9RcEZ0ZXhvdEFLVDRv?=
 =?utf-8?B?WG02U2d3V1d1MnRNdE9mNjh3SVE0dTVTcTQwbXpldFBYYklFeEtFSDdNSnoz?=
 =?utf-8?B?NGJNT210azJNOGhxZlpaQStDVmdqS292SlF6end1QXpWaHprSjkrZlRsb0Z4?=
 =?utf-8?B?Y1VWZ0RkYUpzV3lYUGdVZ05iY2VQbjNhc1R5RWdkS2FoSG41NUwzS0JmREhK?=
 =?utf-8?B?QmdDQnh0TDIyQ0ZnZTVpZU9TOUxKc2hpSjM1VXBHQVoxOVQwOHFzVGZwKzlK?=
 =?utf-8?B?cmZQSzlmbGRVQnhTWlljRjRnd3lva0pPQmg5eUZ5cm1UQldkRnhFSW9qSGt1?=
 =?utf-8?B?RU02QjNVT0k0Z2xmM1oyYW5uNjgwemdXb0ErYUdqSzRwWnFWM3M4Tm52QS9R?=
 =?utf-8?B?TmJ5cXBvbDd0WW5QVW44MW1aMmJvalcvKzhkUFlaRStlTU1ydzBMRlJrVG0v?=
 =?utf-8?B?a1NrZVl0dkdibGowWXVjV1ZKcUpSN0hDWjNTazgvNDd4ODdodURTWHdHdTJK?=
 =?utf-8?B?NkNoLzJXS0VMUitUSGQwa09RTTF3aUltSUwrUVpQVDg2V1RUVHpLR3R5TU5P?=
 =?utf-8?B?MXVCL3g0QXIxNW5VaEJpeVlCTWZXTFNaS0VHTUhjMHVONTA5QzdnbExhaXNC?=
 =?utf-8?B?R282R3RtNXErVWtMVXIzekR0Z1d2RURNRkpId3BpaWlGUHNuclRnT2RSb2Ey?=
 =?utf-8?B?amVBeTdNeFZsaFhzSFlvVXFzUi9xZXFJMjhMQWtxZkJxNmhLeHBUOHZ6NUds?=
 =?utf-8?B?L1g0TnJiNVhNSERyM0w3eWNxZmdLMHQ3YVRoU1l0ZnNoM2Z1WjBXTnBDN1dw?=
 =?utf-8?B?LytkLzNjeUJ3ejN3ODhGOVhSNldXNFNxOE5pS0ZYWDZIRDhWMEZ2S3lHMHVH?=
 =?utf-8?B?b1k0UTRyR0NiYzEwRU5RUGZSZVhnTTNZaTFCMDMwWlRmcnljUzVzbEs5WmhN?=
 =?utf-8?B?N3BIZGt0Z2kyOGdUOTJuR2Q3d05Qcm8za2pnOExHQ2FMdC9FZ0poQXhjVUZE?=
 =?utf-8?B?cGtUUkhvdFFETTVnVGlsbElIa2pMdkFlU1J4dHVSeE5TNlJHdzJCSktjY1ZO?=
 =?utf-8?B?dnllcHJxRVFRWnZYR3hYaXdQeUFMeHVWaVJHeHdvaEZoYkthYkZHaDVxOEtL?=
 =?utf-8?B?Y29DR2tkcDNXeDg2dTM4dlM2cUJvMDV0bXBKeWJTU2J6eTREaStxcUNvNmls?=
 =?utf-8?B?MjdTMXB5SWhLb0RsT0x6VTNNaEhkeml5aUl4Q0pBTk5hYXhpQmlIMS9Pb0dY?=
 =?utf-8?B?aDVoWDlzQ2hJWm4rOGVpWFlWUTNlazZ4VGg0Ylp1RUNlbjVoNHpGbndKWkNS?=
 =?utf-8?B?M2ZJUkhpQWlJN1dCUU9HWE9hWm5maVRFWnRZeis2L2RCTHkvSlpPMU5tMll1?=
 =?utf-8?B?Z29tMHQ4akpEVnQ2Z2l3OFNjcXpJSjBodU5FUUtpUlR5QlFhaGRNNEZNRzFP?=
 =?utf-8?B?VEhTMnZ2M2Y4UjB6VnRaWmZkczIzUmhSOHRxSjV1MW1rRzgzQnoxQjY3ay9u?=
 =?utf-8?B?NzRKM2xWakt4d09BVGVueWtkUCtWakVFWUMzTmJtRXI0azc3NHpLZjF6Yk5r?=
 =?utf-8?B?NXlvcjBLdSt3d0U2VHowUUZmbGZld25qT0pzVlZUd2Vxb0xGTElJeUFIdzRO?=
 =?utf-8?B?NDBuMkZYOEJFZU1zV1ZkcllaMnVGNXZMMVFqMjF4L25zb3hoSnMyNmdjcnJo?=
 =?utf-8?B?TUZ3K2xoRml1VmhZSG9nSUxXaEJFWllpQW9uTzNPZ2xBQ01BbWtQK3loVTFO?=
 =?utf-8?B?VEQ2UjhyZ0tQeGRHYzk2SSsvMjgyR0YrYVJMZ0JIM0h5RURQTllnNG8wYXVv?=
 =?utf-8?B?dHB3YjFEL0JrSFRqNFdNcXNCVHFWOTM2Mm1vVkZnYkVacHNtcE5TNHg2UldT?=
 =?utf-8?B?eTZWMVZSU0QzT25iMnc4Y09FcXhvRTFUcUVGQjBYMUhGZ0grZFRmVW5WMU52?=
 =?utf-8?B?RkE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	pY3T9OCG+1tVFR2v6/d6v5M1bF7ikdZnQE+Gt5cLj4uQRCc6nWQf6pfyAs8pZETryOWCozB5HCH+MclhNUZq3zEjXRIaklotnDfcGr7Y1xF42bdZfgOStWyrfGOWPmQOPUM/uWTz2m5yTsFiJBj3H7KQdDR+wQAS7uNk9IMRmDSpIOeT1gvl3HQ6iC+UxcaiIhLHTQupmtK+jaeTPHo6o4H1NswKYB8ciIM0aFnNar89sdC0jP3DPiKEYOOdQBU0orjvzK6Eh62T4fBJnT7fv0VYTYsWbCUvfppBzfFw3hpApFXG/HOMxdCsIJXzCwm+YY7vhVuQP5ldzrBtGAkojhthqxJ39gJ7f2y2NdW8E1EOMP8CoxSMgRXEMGYz55awLInEj5W0FdgLo32GZ5WSCEu7111eVOVLpP01QSlJpl8K3hcEaI5MNFrH91t3U3korRFbg+2HV6X7sfMwz2ZRAxH1X/U8GI0XBC9uG282C1bB00frZzEZPyja3R1npTkcMuwwnCdxEydH8DY5IhYQhnGdeRcNqeba+WE9d5uEP+l9krqlRM/m1tuKjKFeZjU8Y334Q6w15PIzo2CoVadCSGyWvkiP79QcqNQw0xcrloc=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6462f193-619e-4c1d-38de-08dd94942810
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2025 16:10:20.6243
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jQr4uZG21yE0JpGVEgJeVqA3y1smWKjoVWv8huj9u9dw0z6WzywAMDTwPDruuLVudQqpj6ODXQgBWEo5+hofN/56Olk3LSOOq3fcaH3/JCY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR10MB6826
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-16_05,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 bulkscore=0 spamscore=0
 malwarescore=0 phishscore=0 suspectscore=0 mlxscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2505070000
 definitions=main-2505160158
X-Proofpoint-ORIG-GUID: __Sy1eH9jf9FbkAXO4D0A2qc83SfdfC0
X-Authority-Analysis: v=2.4 cv=OK8n3TaB c=1 sm=1 tr=0 ts=68276371 b=1 cx=c_pps a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=GoEa3M9JfhUA:10 a=8r2qhXULAAAA:8 a=NEAV23lmAAAA:8 a=8AHkEIZyAAAA:8 a=ABZ7tenF-mcuPhNmvNwA:9 a=QEXdDO2ut3YA:10 a=8gvLZcY7Nlvl4CGD_6nf:22 cc=ntf awl=host:13186
X-Proofpoint-GUID: __Sy1eH9jf9FbkAXO4D0A2qc83SfdfC0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE2MDE1NyBTYWx0ZWRfX5SkX2v2zfzew hkw4t46USpAMfwT9E+Nk4gIco540QpB2H7BTvzU5GFKD2B64h84fcnnTylwovRiKdhc0dAAsbAr oXvQS7wWNrrVSI2hBqgc3kgskHjujrF30kVsE+ELuedc3KH9UhEHOEekOOtsk/5j2OTQWy9lJN2
 DoGItizJXb07jarcGXIPOU24VZn57I3WtJK9WGWiEzsOVFllIkRqqT2JNib7stshScxXEsIUBzg 9Pa1s2OQTFmhKfbbAknC3GXRlfgNk91bOOwZw3xQCELvmCGqJFkmW4Kk6MS1jg4yNyrfKsWWrBp wZxVLB/NW7OKWXbpVESUNhMu/RPswUQIagawBqHVGP5IRL1l+JhgTXel5q+1PDZWp6EroY7m5z6
 kOMZlhzoVdj6hkuq30csWDoqnSory6z1CKd8evYLi52TnllrOcq4nkioPpJktgLStoixtRWB
Subject: [oss-security] CPython CVE-2025-4516: Use-after-free crash using
 bytes.decode("unicode_escape", error="ignore|replace")




-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2025-4516] Use-after-free crash using 
bytes.decode("unicode_escape", error="ignore|replace")
Date: 	Thu, 15 May 2025 09:33:30 -0400
From: 	Seth Larson <seth@python.org>
Reply-To: 	security-sig@python.org
To: 	security-announce@python.org



There is a MEDIUM severity security issue in CPython when using 
`bytes.decode("unicode_escape", error="ignore|replace")`. The use-after-free 
being exploited would likely result in a crash.

If you are not using the "unicode_escape" encoding or an error handler your 
usage is not affected. To work-around this issue you may stop using the error= 
handler and instead wrap the bytes.decode() call in a try-except catching the 
decoding error.

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2025-4516
* https://github.com/python/cpython/pull/129648

_______________________________________________
Security-announce mailing list -- security-announce@python.org
https://mail.python.org/mailman3/lists/security-announce.python.org/
