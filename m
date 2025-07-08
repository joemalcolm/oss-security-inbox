Received: (qmail 3697 invoked by uid 550); 8 Jul 2025 21:33:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3615 invoked from network); 8 Jul 2025 21:33:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=Po7i4ep2I0c2lbNu
	oj2N++QgYHUzFJGUnE/bT67VOa8=; b=Vm+TLoFYV7QRB27+QnOm4GaORZlVnTwy
	U8eufpmomG4YcLFBFVBua2TniDAvXdBbxdBcYTwQW93UU5c0hO1YlOetaoEyH7Gn
	aT6YCb+VDu81jNHttxSYfTNNdsrcyu4Kh/Yd6HjZ0LlvYQERM2A/MFeDNXSVTlM1
	3pyFwBApWsH/RQj37y4gwCQnjTb9SnywksSNCEGslErt4dtK1DaVsVQyZeA/2cxX
	DCKhkG+5cn3kepnC+ZItuqBzLMlU6IA+NvaqDh6CLAlNUcc+7Wg4D+GEeLxdMjfM
	wC6xoS4gib08ZW1dQyaC9W5j9itdFx1mDP6kKxtxzj8OwC1V7kM27g==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wTsV1xeE4GvtUHFCNsa8P6wT0bBCwXA8AJs2u5BJv/exlw+jo+lGGX/x5kzeKu30PRkWF8vJ9RZr0tZ6xoPp5SWBFoIA0N5yTChIWRHg7chz4BsR5lM5Ux0IuDz+Uf/kzBwTAzugRcFl1TOUIgB1wnCscXbNIGnOEdHFXcUASZe4N+WwNAULPk0XjybA3ZNAJzLS3QFp+0ubXJspcPaBXFnFT+YipI39AvdvD0bdjIgt4sYrnRaoxN1x80B/mYMHh3mds6xRGM5vVyhVhwUB2rQk33P02j4Zu1kqLt5URqFMN9c6jz/6ryXTSEHwo7X5ABbIMFbzSDJ4Hn4CTP1iuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Po7i4ep2I0c2lbNuoj2N++QgYHUzFJGUnE/bT67VOa8=;
 b=O1sN5ih9DmwUjFADifYJq3hy+RmPQ5mmDiaieNy0Z1PoHx7SXeMxRw8e2jDmQR0FpUUG7utvVSFGgTlGe4c2QIg4LCpv2TyIJnbDrvlb27AGnQi3J4ug+hEnJ3RaCXN1mLU1WoN6cHiPS6uhAGLbTclm0IzhbekCeHN7RdJp6PtXMtmKS6THwqamfDurvhYhPBr4pfaxXvjvRsF7kaTbP4CajlE5pDGi+WnM4PMCIAMm+BsF1cIGK1U6f0ZAdMT9daeKTCD/VVwUkYSchPRBmCMhR4b/lQfJrk+h4XEQGEt5rU0O01G+jT8+uEJL+1y1vWQ2YW8vRs5VTwhvaLzwDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Po7i4ep2I0c2lbNuoj2N++QgYHUzFJGUnE/bT67VOa8=;
 b=YmZrm/v0PKpaTMyucmNilLJ5Jhm+IJAyMsCB3cJV752jKFYon7w0Oif++JT9zeS3w2Hw10n7J4K+LZLAwh+7xVa02kDm6ohCi3A/fKcAUT8HaSMOSgaVMM/fTJFerUq7cYKXLmpgdMSfOTiENk3yXoB9PQXbhYh9/FORjfPfSkQ=
Message-ID: <829a1cae-f61d-4cb8-b57d-1560e3861100@oracle.com>
Date: Tue, 8 Jul 2025 14:33:12 -0700
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
X-ClientProxiedBy: PH8PR07CA0016.namprd07.prod.outlook.com
 (2603:10b6:510:2cd::24) To BL3PR10MB6140.namprd10.prod.outlook.com
 (2603:10b6:208:3bb::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR10MB6140:EE_|DM4PR10MB7527:EE_
X-MS-Office365-Filtering-Correlation-Id: e4c360dc-a614-45a6-502e-08ddbe670b9a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?OG0yN3lxTzVtN0JpZWxZTzhTeVFsajBRZHkrZlVXTmJINHVxOVFPVjBFRjZn?=
 =?utf-8?B?SStjcHpFN0NhblA4Y2MzSll3c0VYQmRGdC9ZV09PRFpDcGFYQ1Mrb05EeTdM?=
 =?utf-8?B?WkwvTFZ0aU1wRkdTWmI0ZmtrSnNXaFVkS3BvYm1Vc2plVzdYakUxOC9rREpU?=
 =?utf-8?B?Q214aTdlK3Vob3FGUlExVWg5NXpZTkpvVTRYUUlpdlNxUzJNaTI1UzVCYmY1?=
 =?utf-8?B?VjNvalhsS01zNUhWKzlkcFNoZ2djcEgzUnZrZXJrTmFWMzhWM0w1UzhmdWlF?=
 =?utf-8?B?aytSWUhDZzh6K2ZPNjI5SjY3cjRnZXY5cXpVeGp6N0JMS1ZBZDBFdE1NclBN?=
 =?utf-8?B?ME13L3RTZy9iR0czekk5SW5kTFVZNWhDTEJtYWhuNzVjSDhvaXVTNmZIdCsr?=
 =?utf-8?B?VFFYRGxMZnp3cnFoN01kSjNoUWhXN1dUWUFzRXMxM1diMnNLTU1QallGZXgw?=
 =?utf-8?B?MHVaM1hnMTJ4R2tCTnErbmsrWU1tVDlOOGdLWXJSYVZ3WVBjR2RQSlp5TUFH?=
 =?utf-8?B?cFUwL3czQk5aZVY4QTdZL25CS3dTVk15S09qTDFVSTVtUWgxS2xORDV3NFZo?=
 =?utf-8?B?WlRzTGhMU0VSQ2RaZmFzZENReWtCS2E4dXZRejJ4MS9jK3Q1ZW1SeWQ4NmlF?=
 =?utf-8?B?bXAvNGFkMVpxeHo3cnNhV01pQUxDdXIyRU1qdlNweTBpbVQwNnlmK1hRK1cv?=
 =?utf-8?B?OWlWSDRTQkFuRTNyQVRrZUtsWWhoNzd3aWl0d1NRNjdFU3ZNdldlcFZDM2Zy?=
 =?utf-8?B?UlZ1Mk5kRjN2dzNBdHE1OVBzbFVaNFAwTEFRdStFYnpVT1hZRjRJNVpMd2xv?=
 =?utf-8?B?VU5rVzZFWlJBSG9ScDZBZU1NWjF2YkVtL0g0S0d4TjB1akdwbndZa1FDNnU1?=
 =?utf-8?B?dkI3R2RnTVZmdXpYcFhSTVBTUFVsYlpBMjUzbEREbVNzbXZXVjR4R1hSZmZH?=
 =?utf-8?B?VW1HVWc1bUpVMUd4dUtCSWw2ZEJPazBGTXNZMUNyaDNPYkRjQ01OdFkrOGha?=
 =?utf-8?B?SUR4alpaOTRIckhpeGI5NlZLQlNUeUVHZGd1M08zSC9xNi9kcWdCczZ0cXRv?=
 =?utf-8?B?Yk9JdTk1RTVZZmRZT01tSkNNSXQ1Tk9NOFFxUDFCRStrNUlKL21xaHA2WEo0?=
 =?utf-8?B?TEc2NHVHZ1pSczYwTFBUL0Vuc3hEemkzT0lHd243am05aVZxSWN0WlVORUZR?=
 =?utf-8?B?eHlWMkFPb3d4aVVGWEZJK3kzYWY2Tk11dlo4MWlZTk5DNG5BVmY0LzZIcTds?=
 =?utf-8?B?U01RSEU0ZDQ0MStLS3VSSS81a2tCUU5YS0FqN2h5bXlFYmVYNUtIeERWbFlU?=
 =?utf-8?B?S2xFZE1RRXhNcEZsWnd5SnZiNzE3OEZ6WE5yQXZiUGlDK2ljVjRJUzNjbEFw?=
 =?utf-8?B?NDNiUWNoeU4veVM2bDBOczlLTG5CUjlDQ0RJVW1ZM0xwbDZCSDB5SHh6TXVv?=
 =?utf-8?B?RVQrNDJiRmFzeGhEMTlvUnA0dG5RaUhVYzBZUG5KaitmbHdSOEIyT3QrNzVR?=
 =?utf-8?B?QWs1ZnBpQXlRSEZQZU1MNTA3bUlqSlllSHpDN1N5Q2NaNlBVR1VRcTUxSE5C?=
 =?utf-8?B?eFlZakZzam1sZ05EbU94dXJNWmxLT1BFbkVORCtRUjluT0NKY3JOUVlsTStu?=
 =?utf-8?B?YmNLbG84R3pFTzlyTUtEMVlDOHFEblJDMXBmNTFNM1o0RWJnbjFOQWI5SUJY?=
 =?utf-8?B?VXVuaWx1UmJIbXpOM1luSmVXTnd1N2Q2Y21pTVFxZUdmNXlYWDYyTm9IMDZn?=
 =?utf-8?B?R0lCbTdiTGN6RlIvOXZCWXZDbEhIOWErbU03emQ5WGdFQmFZMlJjeGs0azgw?=
 =?utf-8?B?ejVRNmhZQlE1RE4yRFBhQ1pRZS83aXFjVUVVUnFqZlBVeXoyM0hySGtEcmZi?=
 =?utf-8?Q?MGzt48VBckgyU?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR10MB6140.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?NjIwbkNKaEtkYk5qVElnY2JnRk5qeXRmbzNIUU9Mdkd6UDM2RldMbWpIQ01N?=
 =?utf-8?B?cDY5Z1ZGTGZYRFMwaSt6Ulc5d3ZyYXZsOHhwUHBmazA5R05OaERuRjFEVDBa?=
 =?utf-8?B?VktQVEk2ZjAyMWJQejBqcUZEVitjdk1pSzd4QjlNUDZSaEZTL2paV1djY0pK?=
 =?utf-8?B?YUcySFNSU2RXN1ZnTTF6Ty9BTHgyZ3A3WXBMNTM3R0N6cU5LbHdMdWVmazVJ?=
 =?utf-8?B?b1czOWhETW5hVWRncGc2Y01EZFJjUGpZVnRxa2pwRExiZHgwK1dDb3kreUtC?=
 =?utf-8?B?ZHF1UmEwUWdsTkxrbE1zY0xQZWlqZ1A5K1FxRFRTYzI3YStSb3ZURDhDU05Z?=
 =?utf-8?B?cFZiNk5ibDhWK0VhWVFLYnRoY0NBVGd4Tnl3M2lrS3doWVV5VFh4akVnSFFS?=
 =?utf-8?B?ZFBlVkZBeTZkdUltaUgra1A1Z2xhRTZSaVNYdEFLUytENk1uYndyYWgrTXJa?=
 =?utf-8?B?b3Z4WUJEcWVjRzhZM1dKQnYrODdHQUx3QXRzUnI3dmZieDVVUy9GWEJVZ0Z0?=
 =?utf-8?B?YXM1Tk9ja0xqMDk1ci80SlJDYUFJZXovd1lMRkFmcGt4UDBSbG1haFR1SFRq?=
 =?utf-8?B?SnM4WjN1dHFrVWdMWEN4Z29NaEtvaGtPNUdrNHhxaURuaEJJVlNIYlUyVys5?=
 =?utf-8?B?WndnVDE4MjBySGYwSGdhYnRSQXZQZjduMGZvaEYxclRUS2c0V2Q1MUN0ejlJ?=
 =?utf-8?B?NzJJMjVOZllibEZVTkJwaEJSek1ON0NDQ0c2TGNqdVpuYTA5Y2tlU0szaW9h?=
 =?utf-8?B?WFYwTGdkV2Y3cDZnOXN5R1ZGR3B4Mm5NSVVnelFrdWV4MUU1Y1RWNGpNZjZN?=
 =?utf-8?B?VE56OEhiSFZXOVdHanVsdWZNeDVSby92SVBHcnp2dE1FbHRQMEdoM2Q5Qks5?=
 =?utf-8?B?Z3lXN284UE1mV0hkZTcraVRaU2V6R0Nyek5UbTRCYVFWVTVxdDQ3QndzbkRU?=
 =?utf-8?B?WStlQjF5TDc0YzRuQURBQ2JnVVoyT2lhS2FWM3lOZEUwalNtaW00cVhwd0xC?=
 =?utf-8?B?dUJEVFZ5ZThMQ3NpckhCZFg3Y1ZyVUovUmczK3I2MHJqUUVEaDVCcENBNlNB?=
 =?utf-8?B?d3hXRmpsVlV5Y3BzekVoMGlSY2ZpMWw3WXdjbTFLZHovS2RuWW9wK2RnSU1G?=
 =?utf-8?B?WHBWZ2o0WkVUN2lEdVdZLy9wR3NWdlI1QXRrQk1jUWExcnM2NkJtZUxRcGpr?=
 =?utf-8?B?MW5LQnEvSDAzenB5dGRhcHVMcllJeEgybEJKSXNwYnlxOThQUFRZWnhqT2tv?=
 =?utf-8?B?ZWVQNVlTVFZSbUdpNEg0S0xzZGVaSEdBWlpSR3cvSzFhajFjNEcrUVJqVG5k?=
 =?utf-8?B?RSt5Yit0bThWVFpseUF3QTQrbXp2d0RuWU93MUg3dERRL1E5RThRUmhYNHAw?=
 =?utf-8?B?ZkxtejVJZGxXYktUN2lkOGZ5Mk1aeE5TRUN1aWlSR0o3bThoa2sxbEd1Q1JJ?=
 =?utf-8?B?M21sN3NCRUEzRmVPblZnNUVFbGlYTTFsT2NJaXlGR0ZvVWlUMW55ckdFNXhw?=
 =?utf-8?B?QnJkN0hIWUF3aUZRTXVYSE92ZDUzQXJOVGZoZlF0VnRpVmhBUVJHYnhZNVow?=
 =?utf-8?B?d0IrRU5tQzFqTGdERllvYk1qMlYyeUNwbEQ0ZFZJRlRUbEFZaWhUVXhMdGNl?=
 =?utf-8?B?blkwMUVvMTNSTmpFMzg1UDh4dmpwbnBuRUdxUC8yY0pEKzBnRW5FVVQvdXNL?=
 =?utf-8?B?aDN3c3VtOVpUTExyUTk1V3F6ME0waUpjNlRab0hvbFVHWWRVaDFMaVBKQXNP?=
 =?utf-8?B?VmdhaTNqNzZoK3oySkpWUC93RkMwU01CcW5UUzhkZm41NytCRVZzMEdMbFJ3?=
 =?utf-8?B?cU5yWDRNNVZPUGdKVFB6YzBXWXc3NFQrc1A0aVF3R1V6L280UGFCVlpUeEZ5?=
 =?utf-8?B?THk5RUhydlVKMXRSa2pJREU0NlZzY2U5VHNGdVF4SmxkTGVLVFJVUTJzeWIw?=
 =?utf-8?B?Q25HaDEwcnk5SENOczNWK09XekdqWXpMbUZpcE5MYVJFV1dmRDNPbENuSitm?=
 =?utf-8?B?WW9DRjFGb1pLOEw0N1dhWFdIVFpGQnVhSHVDdmlkaDdqMDlrZ3NVWExEaDk1?=
 =?utf-8?B?UWsvejZYdXh5VXAyVkphdVZZOFhRM05CUE9JL0hxTENseFRya2JqdHE1NEpm?=
 =?utf-8?B?UnY5cXlvM1dFd281VzZxbS9jUzRCZ0dlQ0FOYnMwRTBSaFI0RUFPYlF5NGRz?=
 =?utf-8?B?SEE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	n8ZOKfJo9JsjxmsDOqbbCa9pJsJZWjJ146SXnDGKU8AUBeXe2pm6prO5hF5YfSrYJIN3Tq2i4ajI3bbHJm0ioOddpfs9v4DWGfpoQd1xge4xNsP1fuic+5XGYk+b6m/mZEzcK4bG5TcwOuhkJozVrLg55J3DwnG974YFjmSLbm0J5BloCwZHDhbe6vOU+U4XDF7VGpBiObQkkplvrPfSW+6Ar5ttdnOiq9kptXK3XS2+YTsaF4xozgkITOZHOPGgBYXv59Xmr33BPRQzxq2r+72dISi5hYMkR2MHFGq6HiE27vB4Hie9AGJs0aTu4nSDfrTAIIXcv5TZi7UtKSzQp05ObpagXyd8l5PbsN3VLnLHV/5TSvwk9ThKeuqwntfg1jCfGlA11s9vt9yX2PO/jwFZP0Cxfaq28fNbasO9aQISkORoXePcg12fXVWqmd6Fn7oZpwzMDowfufVM9Y10cG0eZ8HJ8WuNCr1+Dlse6eGvLENz4beRSmudh7x+idOIDnehXpclZfStiaWHaqF6CsZnv364UU0mbLwbgZwQju6iTt+OHmmDk1CdWt0uKIpNdlVg+E1sguxM0gGlIp8iky8nWMLyiSsd+1Cb+mbrOhY=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4c360dc-a614-45a6-502e-08ddbe670b9a
X-MS-Exchange-CrossTenant-AuthSource: BL3PR10MB6140.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2025 21:33:14.4246
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7y06wkOz4bsCB/3sBHi6CcH3rvpYpp4MTzBeYn5nFHq2KpZrcbjuklfJ9Elw466g5+LEcEk3Rm7oCUBXaMCQR2nOVRnXpoxvenbCE6+vD/Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR10MB7527
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-08_06,2025-07-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 adultscore=0 suspectscore=0
 mlxlogscore=999 phishscore=0 malwarescore=0 mlxscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2505160000
 definitions=main-2507080184
X-Proofpoint-GUID: SiUaES8e-vCgwZB4Onu2oQgVlGf8Bc9a
X-Proofpoint-ORIG-GUID: SiUaES8e-vCgwZB4Onu2oQgVlGf8Bc9a
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA4MDE4NCBTYWx0ZWRfX6cNwp2eathgU rZqqcqF0GENcqpccBvvsN+PIjY+oyPUh0tmKjMjUnvv1/XTYNwFjsLj8iy+ldYUQCv+j1IoGYOy fSayvW1Uper4nDaM/+2KfVEdO4bmQRqnDJzP+MyuW2JrBBGs5/O8VjiRvok78gnx+9ViY6aC9Rh
 32g4PtlWsjsdclHgjMDpYTL3/9QvZsSC06F2x/M/pUbANd5rEF4Ib6Ao1yQqCQ3t9qCud5c8UiQ XxFaYn9F+TBdlrbIGHHwfifo1MRUhzK2Cu2OLaYMoWf6D7zlxr/kM/M6FlXLedsttzJVQp7wXBc tUNctAqIviBAuQ4ZSvtPN7gavf8Q+u8i60Us6p2jjOP9ZJng/s9HzWQZqcyeARDQ5+pAYKP1I5o
 hrnw894L4455T6IgDS3/+AO3MkDeUg8as7BGtPa9ho9NLNuOgiXR6cwo6f6FERwNg+m3j651
X-Authority-Analysis: v=2.4 cv=SuGQ6OO0 c=1 sm=1 tr=0 ts=686d8ea8 cx=c_pps a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=GoEa3M9JfhUA:10 a=1XWaLZrsAAAA:8 a=W0HYcSKoAAAA:8 a=plf8rDjJAAAA:8 a=yPCof4ZbAAAA:8 a=efJYtgZ0k72-oc9gdRcA:9 a=QEXdDO2ut3YA:10 a=ppclIlqPgZou8qzj2Vqa:22
 a=JWTSs7K9Rhv-lrTctFka:22
Subject: [oss-security] Go 1.24.5 & 1.23.11 fix CVE-2025-4674

https://groups.google.com/g/golang-announce/c/gTNJnDXmn34 announces:

> Hello gophers,
> 
> We have just released Go versions 1.24.5 and 1.23.11, minor point releases.
> 
> These minor releases include 1 security fixes following the security policy:
> 
>     cmd/go: unexpected command execution in untrusted VCS repositories
> 
>     Various uses of the Go toolchain in untrusted VCS repositories can result in
>     unexpected code execution. When using the Go toolchain in directories fetched
>     using various VCS tools (such as directly cloning Git or Mercurial repositories)
>     can cause the toolchain to execute unexpected commands, if said directory
>     contains multiple VCS configuration metadata (such as a '.hg' directory in a Git
>     repository). This is due to how the Go toolchain attempts to resolve which VCS
>     is being used in order to embed build information in binaries and determine
>     module versions.
> 
>     The toolchain will now abort attempting to resolve which VCS is being used if it
>     detects multiple VCS configuration metadata in a module directory or nested VCS
>     configuration metadata (such as a '.git' directoy in a parent directory and a
>     '.hg' directory in a child directory). This will not prevent the toolchain from
>     building modules, but will result in binaries omitting VCS related build
>     information.
> 
>     If this behavior is expected by the user, the old behavior can be re-enabled by
>     setting GODEBUG=allowmultiplevcs=1. This should only be done in trusted
>     repositories.
> 
>     Thanks to RyotaK (https://ryotak.net) of GMO Flatt Security Inc for reporting
>     this issue.
> 
>     This is CVE-2025-4674 and https://go.dev/issue/74380.
> 
> View the release notes for more information:
> https://go.dev/doc/devel/release#go1.24.5
> 
> You can download binary and source distributions from the Go website:
> https://go.dev/dl/
> 
> To compile from source using a Git clone, update to the release with
> git checkout go1.24.5 and build as usual.
> 
> Thanks to everyone who contributed to the releases.
> 
> Cheers,
> Carlos and David for the Go team


-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

