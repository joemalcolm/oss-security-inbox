Received: (qmail 5263 invoked by uid 550); 11 Jul 2025 21:08:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5199 invoked from network); 11 Jul 2025 21:08:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=ZfvTzDzspBz7KvL34xGJg06BtGlIBgD4I3s+BYMnzyM=; b=
	hoQE0bnZ38OC2UDrCFeWK/e0MU7XvZCEHEXeMUryoHo4fRDezvs+Rkf4+LvRhP/q
	vg/M6GAPJtYXonWXra9YVRv9r6ug86GXy1wjlULniHRPV8ngryOa7fQtDqIQ/0aq
	SGRSktezZCuPs4bvBJK7kiomca/S5OMFxURhCTDtASs2HzEGZTVQqwwZazVlT7vT
	msa34IyVJbaVunr26azyOpBZbbmxHaU6MUmxAwgUwh986ittQF/WMbhbIxAcq74E
	FWSg8bj6wckLzJKgLc04+HCe0ZQsmbS7fFzLQoJgBdoZY16ABUlmzQDSeWChZ3Y3
	m9bw7elqSdhC/L3mDrXBKA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MAK4iDXUT/SDfmnjM4TD5fA/rPdDG3VASDE1Zhk40LUIM5FwWv279tmYMZo6WaIchYF1yBcJxHxE4kjYMcZd6RfoUz6H/F2yTTdMowYFl2y7AgUXZUEOYCr+OwDosf58W0G2T8WarbPop9hRIT9BbJMqQ3rfFae8ALEgSfKol5HVWegtnwrYodjMLdxlJ080Ql49NxwqILoPwscPGF+4MD/wVaxVmkVWUi5NsQPPwxjSYBPRMGoani+YQBoAHdFiZaGBN3HLr6Zx5m3ZT5E85ZgCIx/mEYT6YQLD+RcIEe8PBcPLvUOt5PPgo8RR1PO811FxZWiudRjSX+XjeiewNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZfvTzDzspBz7KvL34xGJg06BtGlIBgD4I3s+BYMnzyM=;
 b=eT6ukR9t8M/ccD0npXhIkoVnJTiAEJyIKOhmS8aY5aXeNApIRK9cDIxcv55wIV0tiF0wU9SzXUMKJxHvAJyrIPxRFcjE2Vm8m/HPm8Gmq3xpjpK6euQTfDYZ6PjC1BYyBaJWQc7ns8v/iSg3jPgLljiC3qlwkF8sU9OQCysMu/nnrU8R/B9IZV36fw6EgG09R9ODL0FaZHYLa7Sj9jHH5hpZQCzu0ojbMoiifEy6ApwymH3S/UzTRPDp326DPLz5Kw5NP+RGPqHf9uqRzI6gcgPWz05rMfvIHc4Ees3cxW3aV3kX13NZs5gFVP5wth3PSj1dus60q0GcVGnNJ9n5kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZfvTzDzspBz7KvL34xGJg06BtGlIBgD4I3s+BYMnzyM=;
 b=NMjlPixlPZI6n9nL+5C4R6jbSqqucIrATJHUzgWfcvvYvseivCbJVcsFkTBudZXwuOM8mReUPnBji8A07UW89LTvLf9sfBNwDOoWBWnKv+kl+JNCt0icUSFMdKttGN4ZTbqoL8AWXzW751omya1k9CS4irxe1JVkM1vWuIPiW+Q=
Message-ID: <3795e233-cb87-4396-9f15-cb244b46f9ff@oracle.com>
Date: Fri, 11 Jul 2025 14:08:18 -0700
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
References: <81cb4047-7a23-498b-8bb5-ae0c84d540a1@oracle.com>
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
In-Reply-To: <81cb4047-7a23-498b-8bb5-ae0c84d540a1@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AM8P251CA0024.EURP251.PROD.OUTLOOK.COM
 (2603:10a6:20b:21b::29) To BL3PR10MB6140.namprd10.prod.outlook.com
 (2603:10b6:208:3bb::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR10MB6140:EE_|PH0PR10MB4552:EE_
X-MS-Office365-Filtering-Correlation-Id: 99b3f38c-b84c-4c7f-0345-08ddc0bf114b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?OVBGZUU1V1FGM0oxTXJqSnl6NVB2eWZsZVk2RnJEMy84V2N5bXc4TE1WcGR4?=
 =?utf-8?B?R1puMnl0N2lCeVlxQkJ5R0VpOFZYbFk1SEMzVG51OEJkalNMSW1uL2UvV1lw?=
 =?utf-8?B?b3ZEZmJDYnduQytJa3JoQUVqQ2VibTFzVjVVb1gwOFlYZXFmRU00R2JUQUp4?=
 =?utf-8?B?bDlCRE9meVFER3V0NE1YaW15WGNsSTNvT1FrQVpJaC96RkxMWTNaSU5RWklG?=
 =?utf-8?B?MUpBWTBFSzN0c0RuVTJzSWVsaTFISlhrZlFDQnNRcnlHdjN4b0ZPMkk5Y0ti?=
 =?utf-8?B?VGMzQldDdDdON1lTTjY4TTNSU205d2NSRm8vR1NWQXA2dzVBL3ZoOTFCYlRh?=
 =?utf-8?B?R21ReWhRdWlHMGEzd1ZuaTVqZVk4K28wOS9LL2tmQzNvWldpWElQUUMxQlhx?=
 =?utf-8?B?UVp0aXhaWlRjd0lUaWNIVmh0TXIwT2Y0cmF1T2NPRE1DdUoyQytacUhWbmdL?=
 =?utf-8?B?OTlnaTJ4cWZENjFEN2ppTVpWaDlET1l3RkZIVWM4QnpsalBtQjRYSW1OczY4?=
 =?utf-8?B?RzV6ZmFPWERrK3VpcEtzQmNZZmxnT21tWng3NUtUcGkrenRxNjVUV1JSNU5U?=
 =?utf-8?B?YXNzRldMVkRIb3dwNmtHVVdCdEMwY25VL0lrOWNiOTNQdHl1bXpSVkM0M0xO?=
 =?utf-8?B?bkYzcGpjeGREQ241UkdiTW4xUURJV2p5QkM5SlRDeUZQSUNyRVROWm9VQkJB?=
 =?utf-8?B?dk9tb2hXazA1b0d4ZVVMYWhPd1hxUXNuYk9aRTFjRWVqbmlwelR5QVFZeVFw?=
 =?utf-8?B?VC8wRlBCV2JWZGQva2ExNWVuc1lEVnhJazRDRDUzc1RUTS9Pc2F0T0d0RlE4?=
 =?utf-8?B?dllaVzFzZkFxMjFFL1BTeGRBT0JaOWE3SitlTjJBWFNpbWxoQzRSQll1M3FQ?=
 =?utf-8?B?ejFVQkFvRHc3WnpBZE93RTM3T0hxdlhlK0xYSXBtcTltdGVuNERFRkF2aFBh?=
 =?utf-8?B?bmpsRVhxYmZLNThkM2tCclZ3M1Naa0RoRGVLQm5zekJIaExZMUgvNHV5b096?=
 =?utf-8?B?cnp4VW5EemNaWDZxWFRkSjlBbkd2MGFKdDlsRjdlUGNMUUdMY0FWTUIxM3Jq?=
 =?utf-8?B?eFN1MnB4Sk9iUkdyUitHbFl6cDVuNjU4QTdsZmRXVWRvdmpnUThlMytJczNx?=
 =?utf-8?B?VUVOKzJqN29ZL1A5TjVNdVBIdGQxNDh4V1BxMEgwSmxna1FzMHFVSXh3SWRm?=
 =?utf-8?B?R1B4WXlnbTJzcU8wYms1UFozeG5Rb3Iwd3lPOFFiWXhJZG14WUVpNFBqUzR0?=
 =?utf-8?B?bUJYOE5BaEE4TU5TZlpSWjI1czd0QlNod1Z0QXhSRGg3NUFXek4yV2w1MzJY?=
 =?utf-8?B?a2JucTFWOUFGamNLMVJFQXplYzJNNFNLRGNaZUhYekhVQ25ibENDcitnMktN?=
 =?utf-8?B?QThKd1o3Qm1mRHVXVUdMcFFEMExTYmdsa3QxL0g5dmtVaGV5aWx0MFBESSt5?=
 =?utf-8?B?ZEk3dDNabjdtQjlaNHRTYlVmLzd2UmhFdlYxUXFLMHI3WmpqTURGa2FLKy9o?=
 =?utf-8?B?RFhxZHFTczNnVGVzZnFTcFJ2NjQzV0pHTXZPZ3NJUnF4b0QwczlFY200NmN3?=
 =?utf-8?B?SjJ3dllLbXpCT3BBU1RVWVZjMDM2ZnRkRFE4aUZaYitmbk9tVWJwTDJsL2cy?=
 =?utf-8?B?VVhFL1NRQXFLVEs3SnNNQWpQbk9kbUo1MitjZUdROEErQ3N0Ky9GTk5pTXVM?=
 =?utf-8?B?SEVDK1dUTC9GMGxqQUxPRWhGQmdQRGNYNWVLaVNjc2krbGVjYzMybS9lZEVq?=
 =?utf-8?B?UlZ2aEsvZDlUVjU3cTUrbVk2dUNuZXBqUWlIa2NSLy90ZUZtWFZEUm0wSUUy?=
 =?utf-8?B?bGdiM296RVVRazl0TEY0bllGRisreitGRkI2dXVnNFBHN25OL3ZrYis1VmtG?=
 =?utf-8?Q?iigL228cTYZpI?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR10MB6140.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?TXJOaWlqKzNvRE5zZ2dwVVZQNTM0RnpnM0taYVBWbm53Z3FjbVlLbnFxelFF?=
 =?utf-8?B?QktCRlZtODJmMldmMWw0TUQzODlJWDJwbDhIR0VhS2crdmJTWjVQNnFXNC9D?=
 =?utf-8?B?aEU4dUdRZndvM09zZHp1QXpHM0tWSXBBaWFCeFBCdERNRTcwc015NnpvRFJz?=
 =?utf-8?B?dEw1eVlzQ3ZTUTMwMCtISDZtdmphTDc1WUxFZTd2dm95b0d4WnRmUUt1alZr?=
 =?utf-8?B?Wm1ITVg0UEI1dzU2UklxWXNIQ1lBWm5iUDllYkpZYlFLN3pHcDFBUEUrVDBO?=
 =?utf-8?B?dUpDSmt5Tnh1d2RRVlVqZktUVXZTTllaTThCdWZwQ1hHTHpZdlVkN0hXVFJI?=
 =?utf-8?B?eUhnZHVSMTM5dGptZklGekhWNHBXbzZQbkNVNnFQaEFDelVyS3RlR1ZxOXAz?=
 =?utf-8?B?cVVkYmx5N2VjTjgrUDU1cndJU1ZiL3hhMGVsRlVPTVVybm9FZEpHQWs0a1Fi?=
 =?utf-8?B?NHp2S0hMc2NWazloa0JFa0sxWnJwT3g1V3dBME5YcklaaEplc01xdk9uQ1RR?=
 =?utf-8?B?RHVSQi82bFN2NTR5djBqVkIvM2ROVHFoalM2OWFyN0FFTDJvVkxuNytOWHZK?=
 =?utf-8?B?Wkl0SGNjNFZsZHY3OHZDc0QrTU1FTjcybEYzZm90S0hzMWp1dlFFMkJacE8w?=
 =?utf-8?B?Q3ZzWVV4djFVRytqTFNjeG4zOExJcWlCelJaS2lWVUp1ZjFQOWJOTVlnWWp2?=
 =?utf-8?B?WjE0TjNCNDdEVXRyNEhDWHVFbHErdk1IVmJPOEhYSEV4QXBlWFZjZFdGc2p3?=
 =?utf-8?B?QjFGWENWQ050Y1F5QkJXWFJKNXhtMnpZUDZkcFRleE9oM3R6VllTaUxsMnp1?=
 =?utf-8?B?U29XS3p3RkZsc1JmVys5YkRNVCsvK0dHQm1OYzYwS3RLbEM3Tm5iZkJ6MzRn?=
 =?utf-8?B?U3h0VjVjUDdpd2NPWHNEeCtpOWN6MlV0WEVWc3FQRkNQUkU4ekRkZU9qcWRH?=
 =?utf-8?B?TmZOUk0xcTU2ZnV6TVpQRnFzdmFleDlLNnhNamd4VHJjTkdoSjdySkduT1py?=
 =?utf-8?B?bUJwRHlZMmVMd0JsY21JQ2w1a1E0Skl6TlFjYnR5NFAvb21YRVNZUWNwdlNG?=
 =?utf-8?B?dHExL051MkJkN0RpZUpUTHBKd3Brc1AzYUpSRjhnbVhXeWRNVWtaWFFWR055?=
 =?utf-8?B?ZzVOT0tkS3dXaUxya0J6Y1J4ZU5STjVRK2FHWTZ2NC9qcnNRajgwcVZ3U3VP?=
 =?utf-8?B?UTZGc1JLczRLWllqd2h2eGdwQy9FWTdrdTEvNW1VK0FwNmhPUGgzdjRvT0I1?=
 =?utf-8?B?QnJ6bVRCWXovQUNiRlJXc01rUnhwVzRmYlRHUC9XV3JBTXpnbFIzSjVjVnIy?=
 =?utf-8?B?d1BkdmlodnE0T28xMEtNSVgzSmFYRFhIYkJxS3BQVjhtZEN3RWJJTHZ5REEv?=
 =?utf-8?B?TlF2N0JWU1h1ck5qSjRIOXFWMFQ3NE5OZTBUWUdBN05sTnkwVGdWa2RCZnVP?=
 =?utf-8?B?SU8rK0tHY3paeDl6TW4rUGdhQk9iY21maVpaTjg1NTdnV1hJRGRyd3YwQTl1?=
 =?utf-8?B?SDFjM0FJbnIyZWFmN3J5MFgydEErN3FSY2lxc1huMHZhWjJzWDB4eCtNOW5B?=
 =?utf-8?B?djNzR2dLU0Erc29UMGREajNLR1owM2pnRnB5Wml6YlJDd05GU2QwcUdyWk02?=
 =?utf-8?B?OEE1a0NVMVY4UkpFTG9DSW1RbkZlSi9xNWQvZlpOL0R1WXNJZ1doUWtTYkVO?=
 =?utf-8?B?anpmZGRCd2RZSE1oNXFRTWlPVVAwUHBMZnJqMDV0NzhPNXBMdk94UzJWUEhG?=
 =?utf-8?B?Q25RVDZsbUtpOFQxcmdzL2U0UHlyM2pacEhUQmdnN0cxWk5tWnkxMXFiZzhW?=
 =?utf-8?B?d1JuSVlWUnFGSWltS2JPM0VZc0pEY3AzNW83VCtXUjc5UUJya1V2d3g5S3h6?=
 =?utf-8?B?VE1hcEJoUVNCRU11R0Nvc2QyY1ZGL1FvdnJNdjYveERGTUE5QUs3SEN0Y2FO?=
 =?utf-8?B?QS8rM2EzK1ZuTmRxYjRCVjdZNG1zS0Z6MTU0em53eFN5NVFTQ3JMeEZxRlF4?=
 =?utf-8?B?eGtLSnF1SVVIUG5mbWZPUlZ4aUkvS0Y0RmY5eUNXM3h3bXoxOFkveCszOWN6?=
 =?utf-8?B?b0VXT1NuTTRHUDkwYkd2OEMrV3hBZnNzRkhQQnhoVmsrbWtOT3dCNDdXcUV5?=
 =?utf-8?B?WkRRVzRpblh0RnZya3kyeExaY2ozN0YxbjBZSWdwZDdMVkt0bklqRHlGbjJV?=
 =?utf-8?B?Nnc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	jIvrU33ehK+r0DI0zQW0vnN537mRXHNeGi743M+q5jD1+G0nvH9XdX8HsmtK+DDMVApmhzJJqNRvhlHgOzytlNv3joy6tcGA45bLmje18s3Ba9tkVHkJk+hlna4gaI3ZBZHYWNiQPGRbIM7Zd8XKk7GwN2MQraCF3vGSZHYDfMhXFhYASPETWF48+F988cennh4Uvhveu3CCg07V18Lb8iTS2JFmkPx0/berU1AmOYCqkYAKpUaeWJbzQNBhJGyRu3ePzC4DTzGYBYJ32H6cazbiIbt2uvr9r+oVGCD0iZln/X93P8UMizKdNKx9W7ejMxWG2kIZ6cFV6TuuJN+GCHefUuWmHBZ4AjAGt3atT9h6PTcdjhzo0BDaaAUfzGwDxfS/8lwJCX4tDZIo7rPeuIYjI4zvmG8jsfIyGLtE3pvjnXRGNbkFtnt0sgGe+K6UYImytsHlAUyrtVk4cpmNP0Whb+XwWvjiMm81hAC6M5cmwuKwRGlN03VVbUgDA+bv9M5avMvCtl7PCqfDwFP0pAUHaDKm1R2Ejivt2uDNqxt2Yxn2yFUIWx9YIbomJBSk0S7yJoBz2v0L0TwdbOZCwwEvfvNzGMKcB6pgKbZdQ20=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99b3f38c-b84c-4c7f-0345-08ddc0bf114b
X-MS-Exchange-CrossTenant-AuthSource: BL3PR10MB6140.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2025 21:08:22.0250
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8IqUPCjftq5g5GNd4jw8+cTJzHaT8eGYUUikaff7JaPzONmh72usUM1fdxLRSudGy69LpBSLUQKsyuDpwf1Z3YNKu/aDnUoTddNR2a+z0cI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB4552
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-11_06,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 adultscore=0
 suspectscore=0 malwarescore=0 bulkscore=0 mlxlogscore=999 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2505160000 definitions=main-2507110159
X-Authority-Analysis: v=2.4 cv=BYbY0qt2 c=1 sm=1 tr=0 ts=68717d5b b=1 cx=c_pps a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=GoEa3M9JfhUA:10 a=9hAa4PE1AAAA:20 a=GHR8O2WEAAAA:20 a=cm27Pg_UAAAA:8 a=yPCof4ZbAAAA:8 a=qxs-4Jtya7xJSlYXfJsA:9 a=QEXdDO2ut3YA:10 cc=ntf awl=host:12062
X-Proofpoint-GUID: MiQLUBxzFftZTn4Z02XHbpT9aoZcnVJU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzExMDE1OCBTYWx0ZWRfXy8W7rFW1r5jI 9dVOK/0wShvuPLNo0L0QydVi45s+xiBEEkMUqsdlot+Nkkx7r57EztMwY2qUBsNLbkJWBTCfXF0 51YSpLK0so5QxJU925x3BZz28A7KV2QKonPi+oQ9/bqC76CLdnXkSl/J4Uv6MWcbg+PSRPIohjW
 0gq1g0eHkzY6M1G6ymQ2L5021HfyiXTv6pX3jKLeXUCHz9E0O+uflaSXEeFU7vVBQTslBeUgYOL zcT2ypv/3fBBqwadQMCEnM6siOXMgcZ43lQJA3cBhP0QFo8tSBP9EzlASJQxQm+Qt/8hWmb5vaM LuEywWSx308OSvUPGoYNeS9VE9sIgaHHcXCDCYpJQTBqAD10Inyr8XGzJqZ/hUxzSm54EQJXZYU
 LQdE+yEzn2RjlYS6SJUCfb3jXn8hyHb1l1Zj8Wi5zNz3tLx5ZPbBCYhAqPi65+qYFINomWcw
X-Proofpoint-ORIG-GUID: MiQLUBxzFftZTn4Z02XHbpT9aoZcnVJU
Subject: Re: [oss-security] 5 security issues disclosed in libxml2

On 6/16/25 15:12, Alan Coopersmith wrote:
> BTW, users of libxml2 may also be using its sibling project, libxslt,
> which currently has no active maintainer, but has three unfixed security issues
> reported against it according to
> https://gitlab.gnome.org/Teams/Releng/security/-/wikis/2025#libxml2-and-libxslt

2 of the 3 have now been disclosed:

(CVE-2025-7424) libxslt: Type confusion in xmlNode.psvi between stylesheet and source nodes
https://gitlab.gnome.org/GNOME/libxslt/-/issues/139
https://project-zero.issues.chromium.org/issues/409761909

(CVE-2025-7425) libxslt: heap-use-after-free in xmlFreeID caused by `atype` corruption
https://gitlab.gnome.org/GNOME/libxslt/-/issues/140
https://project-zero.issues.chromium.org/issues/410569369

Engineers from Apple & Google have proposed patches in the GNOME gitlab issues,
but neither has had a fix applied to the git repo since there is currently no
maintainer for libxslt.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
