Received: (qmail 15604 invoked by uid 550); 10 Oct 2024 19:53:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15568 invoked from network); 10 Oct 2024 19:53:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2023-11-20; bh=a0girnXg7A/YhLkl
	ss5f+GJEhCb9NfNOnPraQBcS8hI=; b=Cp3NRS+7YydtL8fzbKndlQhN5ZfbFuGq
	aKjgI9CKIfb//qpaFj1ENGnO4ljQKXdZoJa8vrQSgM8ZXHGCvKOMMFybXR8hTOwu
	d6Xe20Bpy9Qn+4kvqlXxvGPuBCm957aO9rfIPfIg6qT2SSbTzZhVjnCPdo4FU+WV
	UiQxkUTheRA5lyhwJEZnpvoqgCdwbShIefY9+zYBpvRAKmCddisN0McHyUSr3Q+6
	FB2znlugBpwLHm2T0zbUuQ6KE6+mHZsJE12XQJqOKzepqNTjf34iSMBy3B5u9jbE
	beIp0oYlKhv/RmZqvN42Ar0z6dXY775/chcUQBDFCMm86nmgZAQKBw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kKM7YWuVzp2sQ1g09CtHvT1stbzJpIu6JwTLQv+YfkrH5GpeOpwQYM5Z0w/6jXRfIfmzZlcvhKpO1DTgW+41fvDtw3/Z8klhb53wed5+ihBFF+Bt3PAFuehl1XY6Dvqh0DUz/6f/0g6KoitqyELYWGBsbMm//oHlj/EArv6u5tNfXpHAm6YhO/kATQ6qmC58LhKfamO4GO5d2ToZ6G6p+t6RrfI5s1qSCzfrdFapCCQjkMsd8jsF9RMP/KDQyT21ItUePl0Hm54E+t9y8fcd2AS+7Q4VmjQLl3bXszEqdEzVhjlVmTqD/kzoCftz7OQgaVX8NMdunqsmaRsvQMlzKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a0girnXg7A/YhLklss5f+GJEhCb9NfNOnPraQBcS8hI=;
 b=kwO1Yy5GAkNiCSf7GH3FbpiTtb/+PXdQsuVn0MpFFnCXFSqjccohMf1ztJ3g5IqZKWRzTn4W8mbehmGZO2rr8i+geI2cG9NMwsqCfcGJd1ylfQ6uaih2X44GmIb75Qlpem6/HbWuEB+vqkZL6YrZMgy5DhT3EbQrPImlANYTprP5rXSaxuT+gMz60xxBfGQJDtYHdAqmGWsRFuve0EWxMIvhjL2uoa7BWPuCpSUplrh8QCsaAR0zq1KaFkE2ycZrOcmvhy6GtGz0IyhqqquPIPOXACxcf0J7OxTiUL5DLpuH4nlDs+MIpmqlwmrMY8AF8+ZnIXw8CUxId7Idib5YnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a0girnXg7A/YhLklss5f+GJEhCb9NfNOnPraQBcS8hI=;
 b=SeDdO4fzMDBQhB7t2Lxb1Ui255c2BVrfpKuF25S7RDNlQMSU/zVGTL/yC7aARQJQJjfozE+OxBil/kLQiVCoX1QsDrpota78hqknlxs8Vh6DfRwGcHBvV8KlaiTmCgR4tjJ4Vs/+PyeXQGat/k09KaUKXEKIhrhdEMdYcPUPQ0k=
Message-ID: <5aca9685-c0ee-4209-b9a5-5e9ab17d7a37@oracle.com>
Date: Thu, 10 Oct 2024 12:52:52 -0700
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
X-ClientProxiedBy: SJ0PR03CA0033.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::8) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|SJ2PR10MB6961:EE_
X-MS-Office365-Filtering-Correlation-Id: 785946c9-0798-4c2a-6e82-08dce965217d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?S0NNaDRQRjdQRkltS0JMYnRRUVgvZFJvUzZWdnFCMFdJVVcvOGxxQzYwZUZa?=
 =?utf-8?B?Y0ZtVlZzTFJGakJVUE9NdFNyNFlaM21DSDJkZnFodVNiR2NtVEx2RlV5Z1F6?=
 =?utf-8?B?eThyTEdibmRFdDV4RXVsbTNoU3ZPL1RNaFhVd3I3NGkzOXFkc2E0QWh1N0I5?=
 =?utf-8?B?T0tkMDhjbUZvQlZrRkpudlJCaENQN1hKdkVXU2xPdzhuek1FbVJxS1lpTVFK?=
 =?utf-8?B?RUd2VENtbVlQaWRnSkUyQVdzQkhGN2gxWmROYnAxTzJYelo0a3g1K05HSS9J?=
 =?utf-8?B?SmNOMDcwbXJLbytLb1dGVUI2dVZKRENKRWFJOWdFVkp5dlNzSzlCSnJIblNs?=
 =?utf-8?B?b2sxQ0tUMUVQaEdVRXNtV09zZlVDSTVhTmJwZmlTQ05tYU5yNmE0blJjWVha?=
 =?utf-8?B?eG5peXJnekNvNjgwU0Y0Z2lFYUM5VDRYSzN5Z2xsWkxVd3dOM0FmZm14SmZB?=
 =?utf-8?B?b2greEdaUXFId1lQNU9sRnZKb1pEL0UreE43R2Z6U2hTTlBPVjhQY1Frd21W?=
 =?utf-8?B?NFk1RC92RmJybEt6YThhZ1pIOEFDbkxTRklidXJ4NVNBQ0NqN2FmSktGYjJr?=
 =?utf-8?B?TkdIeUR5eGdYK0FCa25RRUtsN2tYOG1pZm45R0dENjEwdHNubjNibU12R1Yw?=
 =?utf-8?B?L0FRRWViQjVqNEV3cnR2V0dUVCtTRXp5MXo0YzFpV3Z6WnBsa1dHSUxtZUhC?=
 =?utf-8?B?S0I1SXQ4UXpsYWJUb280V2Qxd04ybEtkWG9TVEZZWU9oZGlFRlhEajN2aFFX?=
 =?utf-8?B?QWJIbWU0Skpod25XWWI2TitjcXU4ckRTMkxJcmVZcDdrcmlqM2tmRHVuMkIz?=
 =?utf-8?B?ZWFXa1YvZU9uWHY5SDJEVVNYeXB0ckFUclc2RThEYm1XVXpnUDRHbHBmOUZ6?=
 =?utf-8?B?cTNqRlEwUC9MeElRQkhMeTR1NExRRHRJN0Q3elhSbGsvOGpvM0lGT1lINXJy?=
 =?utf-8?B?ZGlCeDcydHJ5TmVOTDAyRGFtclJKbHczUW01aFcxL1Y3bnlBbERCSDdza2pt?=
 =?utf-8?B?ejU3cWFteWsweHg3cWhBbEhQMFo4TVArcHBJdzhuNWE4QUlMdWhFd3JmTkV0?=
 =?utf-8?B?YWtmTENublJ1a3l4SDZTczdBYTJrZmVxUmlaYm55WktJM1g2ZWo2OXl0QWFM?=
 =?utf-8?B?QUlBMkdYYTBreXlTNnB0aHJyZU4zakNvU1loeXc5MXlPYlA2d1RFTW9CWXc1?=
 =?utf-8?B?UUdOMGw1RnR6SFlaamZWRDBQMWYzU1ZKOXJoLzdFOWs4ZVFDNVhFQWN2RSt5?=
 =?utf-8?B?dlJlS29mbHBWSjV0amw4WlRPeVZlQnhzWFVrUWJ5N09SR3BqaVZ4S0UvY0Np?=
 =?utf-8?B?cnZnSHZtVlM2Yk1CZmh5RGE2UThIQkluWTRjUTF4V3RNdERYVUVlZG5pRkw3?=
 =?utf-8?B?WEZuWU5lMDRKcGZrLzdsS005RmJ4WVpLaEczT08rd1Q5UlNNZk5tVVR0QThV?=
 =?utf-8?B?OEplL2QrNVNPOGdpNXVnVHdIVTkzcEpqTi92Y0tkNUZhQXJhV0g5VkhuOG9U?=
 =?utf-8?B?SUFqcWlnVkQyb2dpV1MwdHdiWVdtSVczMVhGSitpdFh3VTM0SU0vL0IzSFhI?=
 =?utf-8?B?dXptQ2o3WDRTQWZzdldLTC9GZ3FxN2lIUFViNWd0NkNnN0pkeDgxVEdvZXVh?=
 =?utf-8?Q?RC8OXY3e+4xYRt1F11CE3McoSv89/+zZx0Ajfyit3Zrk=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?VFVrNzd6RHNDUGEzMnpMNTdCc3IydWlpMDE0UTQ3OTRNUkpCUGVrYTJPcDdp?=
 =?utf-8?B?MzVKMDNJSTVYc1lNbXZWczlwYWxXN2VjTDFmYmNIWlJZTURGZjRXckI1aEcv?=
 =?utf-8?B?UHVoTVhKaEJxaHZtSTRVdVgwMlMwOVZzQ2JTbEE4cFMwektncGlFaTg2TXBR?=
 =?utf-8?B?RG5MTXJtMUNPekRxS1B1SEthQTV4ZDJpR3FZeUJEVzNWTkVFNUpFbndGcVNY?=
 =?utf-8?B?RkJNN3NnVFozeFdOa0pQbnA1YVFzdkRBSUZYcTVmcW1LeDI0ZXJhN3ROME94?=
 =?utf-8?B?b3ZYdHJxUFlKK2xqd2J3cGFObkt6NnhLa0s2TFp6Y0RIWTZRUWRvbjl2YWhy?=
 =?utf-8?B?QUR6ZkZMbC95WHQ4M1ZEWVhySUtsT0NHckZ1SEY5YlowV01WZDZOYm1BdCtk?=
 =?utf-8?B?QmEwSUd3Vng0L1BiNktqM2dKbDczUjhKWEdVWkpPM3ZTOFlRM0JITzlZMmNI?=
 =?utf-8?B?VktMemFhSmdTVnVpZlBjNW9qM0dXMWtlMytvZ08rWm5VMU9Ma0hRRjE4Y21T?=
 =?utf-8?B?em9uU0Y1NE5MM0Z0WHVFZFJjT1ozZVBsQzZXQXozV3E1UzF1Qmo3TTlYemZl?=
 =?utf-8?B?MnoxZFBZV3lSVGNPSjlhQXBCc0hoME9GUjlJN0dGZmhYaklYL1lCRVZiOG93?=
 =?utf-8?B?MmJMTmVTVjIzWHRKNkhvZWZ2WUxKSDJvN3RrM014a0ZJZko4cDczY3g1Ukl3?=
 =?utf-8?B?ZEJKYjB0b2tqMkR3Rld5MExTbllmMHV5NDZxSWF3d1ZGWE1BL2tzMnF2WTEy?=
 =?utf-8?B?OUFqYzF5MmY1ZXY0MmtybU8yS3BtLzBtNEJEc1l6SzRyeXlwWGREUnludGJM?=
 =?utf-8?B?RUt3VmlmZTIrQ01VTEdJbTh5WWdTQlBZNjJXeEI4K3phdUUwSGJ2Yng3N2hH?=
 =?utf-8?B?Mlp5czkyVlNzeWx3MmUxUW1nZjFWM01WcTY2M2F6YnJNdm90S0VCTnQ3Qkpk?=
 =?utf-8?B?TlRNR0JXYkNvelUxdFdhaXZFcUtBUWIzN1ByN0lNWDREOUh5ZUdUM01FSHNC?=
 =?utf-8?B?SjlCSXBnZThhSTFGcmRWOExmYXFzamFxbU9xdDNuMEFHNGlqeEFqbUJPZHM2?=
 =?utf-8?B?L3RKVUtNZmRvaWcvNzArcC9VMFRWb3dEVkxWT2gvbktlS3FCeGdPd1FrRkdX?=
 =?utf-8?B?YnNnaXpvUmo1dGIwMTgyNzFWTGYzaWp0T2xPV0ZRWGdRT1FaR0N6R1VxdDZz?=
 =?utf-8?B?SDJFZGkxS2VuMTg1bEZYOGRONTlmNnA3WGNpQkdnN2YvUmw3RnFJV0R4STM5?=
 =?utf-8?B?L2c5eThQd2tkMFZYZk5ES3BUZ0JHRDVkMEVmSFYza3lDRUFPKzZ5dXArLzg0?=
 =?utf-8?B?RGZjWERhalQyVFFCWnhGenRJTXg0SHVmc2FNUFArM2dnbXBmaTBoakRKN043?=
 =?utf-8?B?UWc4ZmpPTUprRzhlMFM0VTZmbXhMc0RDeVdSS3BPY2xHdnJQelVhSnBTRDk3?=
 =?utf-8?B?bDFvdHB1WUZLY1Q1bDZJaHNKUXM1aEl4cms1UWloSjJpOHJyM3E0VUw2TzNl?=
 =?utf-8?B?cjVIczFnMVdsMGxoa1k4MktSSGx2a29Ob2ZpVGJabXhWVDF4bzRSaHQwMEdP?=
 =?utf-8?B?Q1Z1aW1FMld3TGFua21vVVMwalJyRFBKVjZTVXA1TzVqWWltUlR5cmNVMVJZ?=
 =?utf-8?B?cmY3OHg3eU1PWXJjM1o3WEt2SlpVT0NLWVp1L0lNVFRtZ056N1JIckZZaGt2?=
 =?utf-8?B?QkRheFl6MW1aalNxc3pTZFR1OVhQMDJLUjYzWTNCcnZ1RW9WSm9uOGR3Umwy?=
 =?utf-8?B?N2lmRlhmamlvRGZUQllobVBlYTFoSDZPbUdxb0ZEd1UrMWhJS1p2MkNzRmZa?=
 =?utf-8?B?djB5TmdIbUhXM1ZuVnFDVFRuTm9CUlUxeVl0NmpUSnppMEF5V1NEMktHSjc0?=
 =?utf-8?B?TVRXc1lBT0dtWVJZK3JKMkkxcHZJa1lHVEsvZTVHa3pxdGIwdE56SHpvZmZa?=
 =?utf-8?B?M3g3aENFdE5Uc2NXZjJ6ckl1TVlHT1A1UzAwZThCUnh0UWVZNHhBSDJGQzN2?=
 =?utf-8?B?NjVIZ0hSVW52bHY0QjRqUXdXYUMzbUNTTzRXbDdkY0E2L3pScFk4ci9IMXA1?=
 =?utf-8?B?ckRXbHVheXJKVjd3STEwZGJPSXF3a2JTYjVGVlRZT29XOEVOUjZobE5xY201?=
 =?utf-8?B?UndNSXRGRU0rV0ZwZVhBNGdISU5tZFNQNTU3V2s1SjQxekYyZUNVMUh6Y3NX?=
 =?utf-8?B?eVE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	ZE9J4AF5ktiEqG3DTUTLT5ESRkoslJCqUMxiknU3Vwuqow7mcZLOFC2oz99L4U5wKEoThsIJu1FtdJpmiAwRlHtKwUxGqV7rY1sxl3XxSBdG7gYdlEq5+MuZY91M0TQmlgEEok8pSICO9c/LQ3MJ9lEShxwiEQBHtHr+RmKZBpBc1KYYuj2KPiArDpC268nbXhrLwI1dShuNly+9yAHyG73Oyt018Kgo3p4UqdGWZdJxXM3j8SGbJLaBKMmMnHgwbVZEihnhijXAtzcWxeiaQe8AKLKpG2wr8qNs2sxI9MxKL3q8e9Oq/rUrhHSCcRWXD5gKqBUac3C+9kGHrVS65CBpmCAWJGq+tA3d6Vqp0wxgeOSFLOS+2mue/CBo2hri79F3R6hnLkzfK7BJk/a8D6P0HZV0OSNtNLM4Lv5y8OzcOKyc9o1ZW0OEAVGw3uPK3sbHBxadJF1bPEFa+v0fKIIRZjJ6dPdbcA2EzXVtex+0KHvCdtY4v48bFeEL1PtoQnnOFmt86kAq5S0cb1hlUrXmv0CSbIoLs8UQ91wuh2aKNsqBDnnVCUMFIsDZteFNXc2VIPd87dXaGqeUhbe7JsF4a8fOpJ7EQCHRsGyh5vQ=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 785946c9-0798-4c2a-6e82-08dce965217d
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2024 19:52:54.4281
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PPuASuVUVCoQSuhyQGbKNBLMcgbTBiFyd+WWUeSRAB1uPFyGz+2ckRg6oYeisBjYxJMaEWXf3S1rWzvQHKvvv5ygmOSK9QkHTtom9jV3nPw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR10MB6961
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-10_14,2024-10-10_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 adultscore=0
 phishscore=0 mlxscore=0 suspectscore=0 bulkscore=0 spamscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2409260000 definitions=main-2410100130
X-Proofpoint-GUID: psWbuGtnrDT6ZwIZsmqi5CJOuYATTJqr
X-Proofpoint-ORIG-GUID: psWbuGtnrDT6ZwIZsmqi5CJOuYATTJqr
Subject: [oss-security] libarchive 3.7.5 released with security fixes

https://github.com/libarchive/libarchive/releases/tag/v3.7.5 announces
the release on Sept. 13 of libarchive 3.7.5 with these identified security
fixes:

- fix multiple vulnerabilities identified by SAST (#2251, #2256)
- cpio: ignore out-of-range gid/uid/size/ino and harden AFIO parsing (#2258)
- lzop: prevent integer overflow (#2174)
- rar4: protect copy_from_lzss_window_to_unp() (#2172, CVE-2024-20696)
- rar4: fix CVE-2024-26256 (#2269, CVS-2024-26256)
- rar4: fix OOB in delta and audio filter (#2148, #2149)
- rar4: fix out of boundary access with large files (#2179)
- rar4: add boundary checks to rgb filter (#2210)
- rar4: fix OOB access with unicode filenames (#2203)
- rar5: clear 'data ready' cache on window buffer reallocs (#2265)
- rpm: calculate huge header sizes correctly (#2158)
- unzip: unify EOF handling (#2175)
- util: fix out of boundary access in mktemp functions (#2160)
- uu: stop processing if lines are too long (#2168)

It appears Mitre has issued CVE-2024-48957 (#2149) & CVE-2024-48958 (#2148)
for the issues listed above as:
- rar4: fix OOB in delta and audio filter (#2148, #2149)

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
