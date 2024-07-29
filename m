Received: (qmail 3105 invoked by uid 550); 29 Jul 2024 22:25:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3087 invoked from network); 29 Jul 2024 22:25:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	message-id:date:subject:references:from:to:in-reply-to
	:content-type:content-transfer-encoding:mime-version; s=
	corp-2023-11-20; bh=1SXEH5uvAheEBs3OtuKJUngdVEC5n2Eh93Wrk8wXHRs=; b=
	GWh2P3doMs2/PupnmhDsCBqQD/VvHUmLeYVflOAiPFBpt+Q4WR49egkdhFtdmWS3
	LMZtHeSarH8aDwsnbhTMQgUBIWdKNAkWdyNs537XU8KzRS8WojGEL42uQXRpIVi4
	XzNfjWYlxqnTWq5ilGwzZFSK36AXEgMecZ5lMA4Qo3BQEV3mj+DS3hC1dW60ASHP
	+qZh5Wb4ahwP5nTnyBXZpvUE0/sXx9+H64PgM7MvYoDq2CO/JDtDJBxvj1xmGFP2
	yNoamCb3Qq8Uhm8t1H3ierZMEErcW3Xb4ulf5ZmY4MU7W6yrMmSM/vlIDy5PNid9
	5T/zaugOtOouFk0kY1lXFw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UBfMmYrANNww35r4ZZ+TdAwH0xiEFJJE8FqDWohe8da4Srm9GRdcr7yw7tBjQmb7+YaDRF61OjzMcWuBQxBFTsTiRXhUw8baiLEwZoNdbxXUQR5B3KfquYt9cZASiYeRzsnIOGfiZbi43v7c669g2PpWo334BIGeUD07dT8s3o6m/EGezucyJ/Xn6TzSB3kZ/gVxvq0BrPNNyH++WpnQ2XtlPKp+q0GxeRJofq/wJ18dE5vaByFzcWmjwcB/mEfCr9na2cLhNU4rbqSS2bztd+vymHLblJylSdZttbFWIFn6GHCqZjkWyc4R8f50pT+RJt91UIAMeGAxoq+3u7980A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1SXEH5uvAheEBs3OtuKJUngdVEC5n2Eh93Wrk8wXHRs=;
 b=Mi1YqaJviggy6LIv5IYzzeDVJFhIt8WG8PXoX2JV1iLgjIEd4PElAx9Iw9s3IRKAEjeePGMl58TuBpoBwiFuTjeOpIdypoK7MZlZbNuiSwHC3cruycVkPSJ+Y+/AbgZdluZ1vZRP2sQEZUMlXPvR2XT4ER4m4i9NPNXeHoB7P8WRplw3mji+Fnlf7g0lKTYRLGxnovqff74wgfd8TQhB8SSwjc7HDR2XKDZS4OnjA5efGvneYo6gIVp+/SMt9jEXmSsmdL4GSdGuBkR9isewUp8AJtVejpqiiNX3jB0XoMdfK454XeWXlDiF+AnQ6V+LXnMK+FXprT+KILZMp30LEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1SXEH5uvAheEBs3OtuKJUngdVEC5n2Eh93Wrk8wXHRs=;
 b=cIHsyLvE7Aaj2O3s/Ckq9CQZTBNdXy8qr+sG8Ji1NkelMxDmh0Rf+Nv9BZSGPSBAF7smmuE3dWu0lSXQqttNnUwj1vcH5RllJgcnpXTP15+4byO4CAqzRYCYGrix0zxcUzHsKujOhr8ABS3HaJEiTH3rCSjulWtWLqdKAwmWRMU=
Message-ID: <5ee42280-614c-4490-819f-439dfca59d5e@oracle.com>
Date: Mon, 29 Jul 2024 15:24:45 -0700
User-Agent: Mozilla Thunderbird
References: <CAADqWPQe5yjzOtVqsCosDLJhjEK142DkjnKPD25Cpzb1Z8J24A@mail.gmail.com>
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
In-Reply-To: <CAADqWPQe5yjzOtVqsCosDLJhjEK142DkjnKPD25Cpzb1Z8J24A@mail.gmail.com>
X-Forwarded-Message-Id: <CAADqWPQe5yjzOtVqsCosDLJhjEK142DkjnKPD25Cpzb1Z8J24A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR13CA0215.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::10) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|PH7PR10MB7107:EE_
X-MS-Office365-Filtering-Correlation-Id: 2e67d129-cf31-41b1-1241-08dcb01d4129
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?d2VjV0F0VWFiRmdsUVpXelhPUjN0QXZmR3k2SXBjWUYyQVFzMDdJNDdNcG9O?=
 =?utf-8?B?NGJDbmJWRnlVaXBhKytnRUxFZ00zSEtxMVJtd0ZGZkRWMDRUNm52endlaTNY?=
 =?utf-8?B?SlpORFdlcG1Kd1BZc05yQ21lR3VIc0EvWWo4dkgrbDJ6WmlIT3llYVBremY0?=
 =?utf-8?B?RmluNnRUNVhkb01rcmU2MFE4UW9rTTFiRThoOXM2eDdvVFhlOXlRQkJCS3Uv?=
 =?utf-8?B?Ylh6ckYrdDU4KzhoMjZmckQ2eFR6NUJWUVdud2RzeDBRMlZVWTVtMWRpbUFi?=
 =?utf-8?B?RXRBZ2VTK3NCZGtHR3pnb0lkbXRLQWpPQitFcHZZZks0b0xJa2RXNEx3dVhT?=
 =?utf-8?B?MEx4WVN4MU5JVTc2ZVNUUURBK1hnQTRuMEl3K090Z0xhRTZYVFpyUU5sS0M5?=
 =?utf-8?B?a1RPL0pxalkyaFoyZVZOaFY5cjBQeTArTDF2WTEwRlVBWFllVEJYVU5vemtt?=
 =?utf-8?B?U0s3b0RhdjJ5aFJiWkpISE83QmRxT3QyZVkwV0pDMmZwVEtoQUoyVU9LcVJY?=
 =?utf-8?B?a2gxUTRhSTNoWlA1WkJJZmcwS3RYTXZuaytIbjJIVlZ1STlTZGREaGxDb251?=
 =?utf-8?B?UkxhN2F1WWNCVUVSckFUeWl6dUsvdmNhYnozckZ0eTh5VVV1b2pGeHNKU2R3?=
 =?utf-8?B?T3dkTGlEREVQQzhaUUJodFhmYW40cHBEb3hJZFBkeTNERGxjcDU4V3lDRnpL?=
 =?utf-8?B?NC9BZ25GSnJNVi93SWhLSlZZNUJuUjJ2eXM2TWVxMU0zS2pGSHhrbS9WSndO?=
 =?utf-8?B?WDQ5N3JCa1lmNWQwWDhyeDV0QkpMRUtZNHh3M2VkWkRRVlRFQXlnaUJidU9X?=
 =?utf-8?B?SDMxU0g4NVJwekpXWnA1N04vbHRwN1dpVWdGR1A0QmFmMmNNb25HdmgzdUcx?=
 =?utf-8?B?Y3Rlb1BFM3pyNmtPbmVRZWdkcytVQ3VDNjFROEFmS1pLdW16eGVWalVWTnBD?=
 =?utf-8?B?d01sWEdRdjFYVVdJTEVrVmIvZkludVFjWnNtUTZ0Q0Z3SUdVTWZxS0R4Ukt0?=
 =?utf-8?B?TEJWdEN2TFJBQXJIL3krWDlZc2FYc2l1OVhRYWNqM24vL3hZYkpTMnZraERC?=
 =?utf-8?B?VzZpaDlHMWlxakNhb2E4NzVSdlowelF4ejNqNitKaHdTeGRIVml3ei85VTRt?=
 =?utf-8?B?T2Q0R2pRRzl3TTNjajU5Rnh2Y0EwY3htTnV0Zis3Q2xLOCs2WFl6OWtma20z?=
 =?utf-8?B?SmJQeDhnV0tkZkZ3SHNQMVBDSTBtMWd4REZSV1hZRUJ1eHpHT3pQeHNZdmlQ?=
 =?utf-8?B?WC9Sc3gxTStOeTZQVWdkdkJzeVpHWHBIQVdOdWhHY3NXSTMzTmV2NE9Wd2Ix?=
 =?utf-8?B?bjhsR0todjJOVWRjR2dlU29CdWVpdVVVTFZBVmtwRXJ6S1E1aG9ObHVnTk9U?=
 =?utf-8?B?TUV6UGtiWWZMRWdTUTFWYjFDR3h4S3lBRFY5c0FXWFBXVngvUFA1blZnM2lz?=
 =?utf-8?B?eHlNTDV4Y1hBakFUNjI3cERaV1hqRlhTb1JNcE9LOG12eDRYNmJrQWFuQzRX?=
 =?utf-8?B?d2xQU0t3N0pxSjRHRm5tQ3crcTk2ZHFWV3RsMXpNTnU5OUswOXRsVHllcmhn?=
 =?utf-8?B?ei9FM1ljSm1sczVVV3Z3NWZ4bVVSVVgvb1FTaXgrOVBZcUJIcHFLK3pIMDZp?=
 =?utf-8?B?MzdaNnNYZGVWZHhmSU9jZGNhelErSk1icVBCbUF0REYvdXFJQUFMeE1za09l?=
 =?utf-8?B?TlFOd0crMlZZMEp6Q3kyYnRUWm12T0R0UE15MnJzS2V6WmxCSnBTSFhFUzh2?=
 =?utf-8?Q?Elg1GOwCEX8uv8y8PicIjzn5NO3g3V5zYaaizO/?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?MC9SbEpWM2N3RElrSFNpMXZsZ3BVakhudmpqd1lhOVBZY3BaQ3oxbmlKc2Mv?=
 =?utf-8?B?NXhZZ2wzTEZBYi9yM0tsMGxXbkRkWGJ1TTJsOUtGTlljVE9pUEd3eWp2dFNK?=
 =?utf-8?B?ZWxnNG1vbkt5TjBIcVZyN1pteFQ3dzhkd2hBSWZrbGlhUXVDQTQ1Wk5nZWk3?=
 =?utf-8?B?Y1lGUFhXWHd5VGlwV1NnaFlxN0RMQmwrYWh1b1BrdXRKV2NxRXJRbDhydkdn?=
 =?utf-8?B?RGk1NmQ4SHczSFdBd0ZOaDBudGFiaTNwdFJRTXRMb2R2bXFHTklZR0o1bGZh?=
 =?utf-8?B?RDhkVVNLb3VMSFBqY1gyOElsTTVFK0w0ZUhXRll5U3UyQ3MzREFWRzRMUHZB?=
 =?utf-8?B?MFRNd0hYSkk4L1RLSFBSQnRSc3RoSkNEeVFreEpxcGdveTJtenJQSC9qUFA1?=
 =?utf-8?B?Y21BUTZMMDBvai9Jc3RtcmJsdEJ1eTQ0clJ5UzVvaFhFd250cWNzb1duT1Ew?=
 =?utf-8?B?cDNjSk9tMEI0bnpPRGhVR1ZUclREcStaZ05KQkQ3QWpTRE9vQ1ErTXVVcFFU?=
 =?utf-8?B?LzBnSWpXZ0tzc3JWSVlFN2VMeUtONUIvUVJHbERYTVkyQTBBR3hpa1lUaC9n?=
 =?utf-8?B?dWtuY0lvWkRVNmc0aWpnNnBxclNiNmkzbkM4YnNaNDR2WGozOUcyamU3TjMw?=
 =?utf-8?B?dzlkU0t2S015a3puN3hPYXJCQ1JRTDNKM2h4bHU3YXQ0VUc1WXJUajZhNVdo?=
 =?utf-8?B?MjVBcU0vbnVFYmVWdUVOYmY5NlBaK3Y0ZkVrQU04WTdmMm5teC9sUmQ3NmxM?=
 =?utf-8?B?OE0xV01JNGxNNytpamNxc0xMSHBiRytPOHdjUnpNNXllREc4Z1dSejE3UmFy?=
 =?utf-8?B?L2lPV1FiN3BXT3EyaDBvME5kN0J0OW81SUVoOUdIYmo1MG02MDdnRFRwaXhX?=
 =?utf-8?B?RTV1andBYVlKWkU4RmM0TXFpYVdoZHlwczJEeDhYMG9WZGYxeFJhNnUzVmUr?=
 =?utf-8?B?VC93L05VVnVhbTVzVGNZZFJVeFhSckZzcG1aU2t5eXU4ak5MSnBmVU5sT3RL?=
 =?utf-8?B?TzQwbHdjN1RWSG8zYUorYjBNb3ZwV3VSeTV4M29nTUM2d0k0S3Yrd3hpcDN5?=
 =?utf-8?B?SzIyR2paQ1Jlb1JteG1mMnF2a2RrcndCWnE2aDUvbHlTUFByR1NjdmY2L0Nl?=
 =?utf-8?B?bEhKRGZaSm5UTkNmdG00R084MnJzYklSTWFpT04ycFFNRmJXZThaeENlL0Y4?=
 =?utf-8?B?a2lVd0dEK2V0enJLaEFmUUpqVU41YXd5d2htTi9JTEZtZmtmQ2FGdWloYndB?=
 =?utf-8?B?YlI2NTVSL2NVaDZpTENlNkZFaklNRmVFekRnVHlyWnQ2VUt3UVM1RTJTcXV6?=
 =?utf-8?B?VUlYdVh6UVNDcW10RVdOVzFpVWkrajBGT25nMno4T3VuRGFobyt4aTVEd0Nl?=
 =?utf-8?B?Nm9pMGRzeDU3cDFNWWd6b3JEUDZXemd6VmhmMEVJRW04ZHRGVlJua0IrUDNz?=
 =?utf-8?B?NTNSUEkrMkpQaUJxZnF2QTNNRTQ5eCtJRnYwSTFYL3dteG96djVaMFhJcmlS?=
 =?utf-8?B?OWFpNjRoeDFpZisvNnR1bWYvQVJZTisreUU2K01FNVZPMTVXTFI0RlhjSnhR?=
 =?utf-8?B?MHk2d2ZCTzlpR1JhRlpvQ1IvbGRFYXE2VFNuSnNMWDgzcnBDbG85Tmt2MHMz?=
 =?utf-8?B?ZHcza082N0JBUmdzSnJSRkd4WWo3MzYzaGN2SVBEWWVBTzFDL1hZYWllT2M2?=
 =?utf-8?B?OExnZ1N1K0o4aThMMG9ESXVUNElrNlZ2c0drN2ZYSlFNbFNRZ0dYRGV0SWdk?=
 =?utf-8?B?VU83d1NBVTZYeWxFT1NCdTQwTDN0MkNTeU9rT2lVK1Z0dHdEa1oyZi92bDB6?=
 =?utf-8?B?OURNVDB2dG00MmgrSGFnRy94UjVYbCsvNk1SWFpIZ3lrV0F2VUJDWWtkWUN4?=
 =?utf-8?B?QmdYWnBuakdsNW1qZTlueXIvM3BjdkVlSmZPYTQ2bWFOdk9VNDdMTFM1dFVO?=
 =?utf-8?B?bTRKYWlsQzRjVFkvMzViYUg0K3F3ZXFNdnJKN1VhcHVseGZlVUhzMm1pVnhE?=
 =?utf-8?B?V1plUElWa2k3aHNzVW1IbndSYXZpY3lMRXU4eVNtQlpNdHplT05JQmNldlA4?=
 =?utf-8?B?dXNZYzJUelNBSjFLQVRaWlZ5eVIrRzJBT0pWdHpzR3YyQkltOFJtN1BXMXlM?=
 =?utf-8?B?eVljbGFUZXNhSFpoWlJUYXo3bUt3aHgybWx5b0dyYjlNa2xPSzVJQ25BeHM4?=
 =?utf-8?B?Q2c9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	5Kq+L/3f6/LGn4eb57/tJ3xcKUaG3USfCB59NwaH2aQ5DrngH7oQyk8LOvV6kyaFz3cmzigovvnWYfUM4v+RdUy2VmQw8cpNCFRgdBYhWKQ2M3XNIYql1P1CFzqT5545mG35NN2UID490bUc1sq38hfkWHiDHgWZ2Qcgc6YtXEGcxA26Y2vplwlzlGW7IGJkBDL9H2QyZJ61dl8//eKmybg1Fmzfr/zh1z0toXzvJmW+DfwIBC+xpV7juLjD6BdKW6H27z4OLiKVl3a2e3YZShQzhAUrVT6ZLUYx/1L6ZGwStX6NQZR0gkP8uNceoRWZTlkiAqeldFlG7+VBydc1SOwebAxlJHIigwCn0MZIvDIkcTocLgFRqyaehjRF1lGU6UhOok52yJxS1iEhV4AGUOJ7zPWGQqSyzsvst2/FyMPE7qfwSuXs/XyrWxXSCwnX3ktAXN5BlYpmPY4HDM2sCxPcMZtNHpFCeSgF20I4qeLRP4e4ftx4OMlSwFLuvV3LSjtWIpT3idMUWPGejRzSssGXYT+Y8BULiMR762f385Iz8tRJ3PZGwFydj0kM7baJCOLRqKU1F2H61rNpFUWJtqaVAHaR9ZFdvpYBpf4AH2o=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e67d129-cf31-41b1-1241-08dcb01d4129
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2024 22:24:47.6335
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: biIE0wLbVdmlpR7YL68X6EMLts+TeVNjkvA4XZnMjj9Qvb7C0ITDButKpHGDwZirrs6vX3GmQcOdUVrpW/DGBU2f3VsCsN8HqDUjEVLiGzw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR10MB7107
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-29_20,2024-07-26_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 malwarescore=0
 suspectscore=0 mlxscore=0 spamscore=0 adultscore=0 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2407110000 definitions=main-2407290153
X-Proofpoint-GUID: cawx2I4BrWwRyktz61DLemfdPYNItiW8
X-Proofpoint-ORIG-GUID: cawx2I4BrWwRyktz61DLemfdPYNItiW8
Subject: [oss-security] =?UTF-8?Q?Fwd=3A_=5BSecurity-announce=5D_=5BCVE-2024-3219=5D_Pure-P?=
 =?UTF-8?Q?ython_fallback_of_socket=2Esocketpair=28=29_doesn=E2=80=99t_authe?=
 =?UTF-8?Q?nticate_peer_connection?=




-------- Forwarded Message --------
Subject: 	[Security-announce] [CVE-2024-3219] Pure-Python fallback of socket.socketpair() doesn’t authenticate peer connection
Date: 	Mon, 29 Jul 2024 16:54:59 -0500
From: 	Seth Larson <seth@python.org>
Reply-To: 	security-sig@python.org
To: 	security-announce@python.org



There is a MEDIUM severity vulnerability affecting CPython.

The “socket” module provides a pure-Python fallback to the socket.socketpair() function for platforms that don’t support AF_UNIX, such as Windows. This pure-Python implementation uses AF_INET or AF_INET6 to create a local connected pair of sockets. The connection between the two sockets was not verified before passing the two sockets back to the user, which leaves the server socket vulnerable to a connection race from a malicious local peer.

Platforms that support AF_UNIX such as Linux and macOS are not affected by this vulnerability. Versions prior to CPython 3.5 are not affected due to the vulnerable API not being included.

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2024-3219 <https://www.cve.org/CVERecord?id=CVE-2024-3219>
* https://github.com/python/cpython/pull/122134 <https://github.com/python/cpython/pull/122134>
* https://github.com/python/cpython/issues/122133 <https://github.com/python/cpython/issues/122133>
