Received: (qmail 28419 invoked by uid 550); 26 Mar 2025 23:57:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28386 invoked from network); 26 Mar 2025 23:57:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2023-11-20; bh=1uubKZ5JfyusoVkFZ1xLwlYvtYITOGZpdO/pOgSVTAk=; b=
	PH8np9duseG6TGbS8BfYzXsNprEY50TxBdG7m32M7DGmliuUHuIMMstIe92EBPb/
	lfNeHziGQCGcWzICk7Nb7R886qwO/j2OePZKgS/kiwmQkOFS9Wh3nRW90/08Ct5F
	La6Vql93qQ41hgR4jMbkOA5PG/RQC7e3vrVFrAXI5BhJ9dZ+fDW0qJbpsnx3Gdb6
	2LYJqkWq3YdXJv68Cj5rUKhqjVpzPJff3zda0Xrp4JxjrJcZVSEHXnZxGAghdsoI
	79Bl8ZvHkH/9XuKuKpV21GIUY6uVmrb0knxtn2WsZIrTZtXDy5IfNI90KStSp4EF
	UR0NWzsMIQ8/GrBxuVOwZQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WWpb9BVglWE6F/+GF+3ok2fQG0eHq+wBybhhxBUT0aKzgS0mWTjyCCwjOtvq1PxI21XjslfpjukkwFoh5ifKCdzqKqlHX/2G3phud2xRs1IctABr4kMiSWEwKYOolJv59ERcRRr20pbdyctNuKuiRfdrnEKRRQx5xWyS8m3bUYRDPNxsHOcd1wjCmaTmgyVn/M1/TCnlxfT5cvz/npHSwxkD02BI5rSwfHMec2IBmbDEvjpfQIhBMK5qzLOh/3NzoCuEpd4EBTpBrSdtZVK9KBGC4V0aXskA4nzxkVntcoPX+5mZ3uMjPboKeLJyOrHC++gtwuPiUebkeKSpSh1raA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1uubKZ5JfyusoVkFZ1xLwlYvtYITOGZpdO/pOgSVTAk=;
 b=eNHVOae1GFvZG0LHH4UHzGF8o8u0Uvd9XiEakyEum4rjosUmfAlOWPjGc14YLgCZ1siMWOsuMIRGQZ/B5N8sVotjEKMsaNOOE/RDz9cKdqCkh6IL0LtmG/7RdbqovNO1zGqMOhFaNey0okgCbljHOMuHRuQrhqJcKuSNWzD1ivVtXHrQAlEZ++Yehvht2TU7G1q2wdDaIz5iDjDC8nb8VDrE6SkVn2L3+PU8dnOWxf2/oS5xwdOsEr/PwPtOkRdM0zezDxEpOhDB0KceglcDNqIiqEYi+S2KT+qYfdQ/UCcPoJMA+cz6uSl809D+HF84qmOSFezN4vggvcDOZv2/jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1uubKZ5JfyusoVkFZ1xLwlYvtYITOGZpdO/pOgSVTAk=;
 b=k/c6HTxXU/SlUn6jPDRX9fn/GcVvitepcdJedPJ3CnFWei336eXvTls80zvwMdjhdURI5UEjMbN+ZTsIG/kHVzPNM2L+GRZsw+CbRsefHEUr7ONQHFNbWpNoAg6G1QcJ6zyxgkhohv6bYp/jw4H5NHh+02kAvSz0JBK4oiy9wAY=
Message-ID: <d33e63e7-0b29-44b6-ba50-e53f1958d2f7@oracle.com>
Date: Wed, 26 Mar 2025 16:56:59 -0700
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <20250326230703.GA7131@openwall.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
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
In-Reply-To: <20250326230703.GA7131@openwall.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0004.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::9) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|SA1PR10MB7754:EE_
X-MS-Office365-Filtering-Correlation-Id: bef2133b-486d-424e-7088-08dd6cc1e6e5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?Q3RReEUyd0VwZi80UVh6dDNoblpBbHdZS21GbGFETHk1bjVFYURVM0RiUU1l?=
 =?utf-8?B?L2JmUzZwNnlFWFRscVVoSUlGTlVDQ0FsYm9rNzdmTWcrY2hIUHYwcm9YVzJj?=
 =?utf-8?B?aVJ4VUMwYUZnNFI2NGFlN011WDlkZnJPUHFqcHlzbzVkbDFNRlR0T1MwSUFK?=
 =?utf-8?B?S09LSnhsUHAvS2tkZkR1NGZxczZYOGpmT3dHMHJyblZpOTd1ZFoxYW1aVjFU?=
 =?utf-8?B?dENTV3lwRFFURXVoVXd5ZUl4U3FnelI2MmExZE1HR2xtWC9NekNLckFjWTA0?=
 =?utf-8?B?MUVOcExKQnhMYzg0bGhPY3dHNFVKZXFYMWlIcURVVnJrdHIvRkliN0p4WXhJ?=
 =?utf-8?B?NUJXT0FzbklEMlZpcEc2c0s4MitoSi8zU1J5dlc0ajdlb1FIdUtZUUNsdGVG?=
 =?utf-8?B?bkpvdHdvSjBiT1c1bHU4R0xRTnhDaUFuNFRqNE4xVWhMU0hXS2lqbCtlZXhx?=
 =?utf-8?B?OUZhVHdxTDFXRlF0VW1yNC91dnNwMEJxb1JDUG4rM2JhVlhhYndreDRHM05I?=
 =?utf-8?B?ajVLVktKejZRaGVHTWtWZ2RLUUQ1YjdqUE9DcWFIc1NBWEJKNkZkOUNlNitB?=
 =?utf-8?B?OHkvK1dmRDNWblVKVFR6T3N3WjBaeFNQdnA3UHgwbFhjdCtyQVpaMjRYcVZT?=
 =?utf-8?B?ZWpGcVArU3JuaFVzT050L2U3eWRVelBPSEdNOEE4ZUduRDBwZW1yTS9RZy9z?=
 =?utf-8?B?SU1OU2IrRjBBODBNOFlVenpTME0rdjNVcUlUcHhEZGRXZ2RhUTlNZHB3UmRs?=
 =?utf-8?B?QlIxaCtVRjBnbi9XODJhUDAwMEpzK2EvbjdJanlqYVJWY2dYdmxHK2tjN0JC?=
 =?utf-8?B?M1dmNHMyRjRYTC9JTzBTYmJLeUxleHNzS1dINHZ5VUVLRTU2N3VkU0pGQyt4?=
 =?utf-8?B?dGdGVnRtaVRXZEk4RUtuM3V1SXJSV0kxUEZqdjNFL2tVT0dIdjlTQW5XVEtI?=
 =?utf-8?B?MDMrZU12VFdqWnJ0dGYwZ1VERE1NeHlTUUZOZ0h2WTBpUEllYXNVZ1pqaG9a?=
 =?utf-8?B?VVBaenpVY2hhL2drMWxqTytPQzluOGZFNHgxN1Y1Rmg4M0h2bmJFYWNyY3ZY?=
 =?utf-8?B?T0hHbnRGNHZGcy9qdHpocEloNkFqRnkzL1VrWnppU3BYZHQxWXZsTUpIbkdI?=
 =?utf-8?B?VUdxR0IrWU5qK3ozdnErQTlxemdCVDdDdGNacFVldVdrdERiZlFoY1k2WG5H?=
 =?utf-8?B?OWlZU0RnZWNGSHVEWWlvblNqUFpGalJnQkRSTmx6REE3emNZODlPMFpQTzVk?=
 =?utf-8?B?cWkrekhEZVJvM0pKNHpaTG5MOGNibC9kRFRrbld4RlZnNnlsSSsxTjl4bE1O?=
 =?utf-8?B?TUErNkZXODdQdmd2ZXZFbUdjSHpKekJUNVBmVm93NnA3YlJRSUI4Z1A4eXBO?=
 =?utf-8?B?UVN1eVNKQmpudUJaRXlnTm45Y1FjTDJzamovSFdDRUlrdmtvMUxhT3diamJk?=
 =?utf-8?B?NjZlK29reW01b0pyb205alBDZmt4OUt5aGgyM2xoOUVnZytrbm0yOWhlMzdJ?=
 =?utf-8?B?UWpjdGM4d21lWHp2QnlqRjY2WGpWaVhxZ3RtVURIQmFmMzltZWdsOXFHUUVF?=
 =?utf-8?B?Rld0MnNVSlFOZ2xWU2hiZXFmdC95SVRxNGFvMjhXZjNhc1VWUHFmRkd0amZB?=
 =?utf-8?B?cS9DbGtCTS9YeHN3YVdCV2dHV2FBc0dtQjE0ZEt5NEVTVmhuNHZ2SUFyOUVH?=
 =?utf-8?B?QnJJbU0rTld5QVVSVGJHRy9ET0J4RHBpckc4NTNyRm9TNHBSZjVXNDlPRnlM?=
 =?utf-8?B?SXJZVlNzMEgvb1A3aVNIQXpUZk13NkRSVllSU1JkM3k4OXNMV1pnOFBGQ0Yx?=
 =?utf-8?B?aEZXUXA0U0VET3V5MmZzUT09?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?R0NENUJLNWRWdWdXbjA4eFdjdnY2bkxiWEVsaDFEdWhwVkpsNGV0dTFTVFRU?=
 =?utf-8?B?YnlQeHcySHBteWtFcDVVTHMrTlIzc0ZaWFZZbEttbld0MDRKV296TzBQdlNL?=
 =?utf-8?B?YU1VMFFGdGdpVEZaSm9KSUZnN3h3Y3YvSFB3UkhVOXZBRTQzUW5HN001RlBx?=
 =?utf-8?B?SWJIalh0L1BQZDg3eXVhTUNXRG1Na2o4aHROelM3S0tKdkhkUzQ4SVA2OVJv?=
 =?utf-8?B?Z3JEUVBzZmh0VS9vTEJjc1I4MDN5OGlpMlRMZ3VPS0ZKWlRub2tieXJTQ2du?=
 =?utf-8?B?aGdSRXBSaFUvRDJwbHhYWm9NQVgyZ1dNb0ZYTExXdVJUemNMR2JxdUVYVnFj?=
 =?utf-8?B?NVJqbzNJSVlGaHJqUmh4V0FDVzdMbEJ1OEMyTHJYNE90cmt6Mkg5cHUvdHRK?=
 =?utf-8?B?OSt6SytKeFZpMlVJUG41ajJMblMwbGxCd2g2VDZEdGRSN1pnbUxJdWRyVlZG?=
 =?utf-8?B?MENrR1l1S1VuaVpsOWwvM3EvTFNoWVNhTnRQUlhLOFMzZEJJaFpuWExTZy9m?=
 =?utf-8?B?cHhNRm9CTnF6Vlp6U3JPc3VkcTZMRDBYNFM1VDRvQnhNTmdGL1lWSkxrRFRV?=
 =?utf-8?B?d0orVUxCTGNYdnNscEJvVHdyZU5BRlRQcnRvMzhHajdqZmxRNWhxWGNiSVJ1?=
 =?utf-8?B?TGdjZWxDTzFvV25DQkdQU2VKVW5Rc3NibTZ1S3RWZ1hYNllPSmVWR3JZVUZ4?=
 =?utf-8?B?UFNwL1E2K2dUK0dTZzdzZFVndmJGNDFwN1hHMS9KSW5Lamp4M1AraG1mbWx5?=
 =?utf-8?B?U0NWcklJUElncUFBNTRtQUpBMmZJQndRZDlRMG5WVDRzVXZXZ0JmbDI0UnBj?=
 =?utf-8?B?ZDFhQ2ZyQ3Zqa1phcVl1WThmVHdVVUFvWmduQ0o3UXZidklNLy83K3E2ZTR6?=
 =?utf-8?B?VjNwMjFKSVRrZmhGM0VJa2p5MHpReTZNQVROOEliNDFUSkZXczNlRjhrbk9s?=
 =?utf-8?B?eGVCaGw5YkdyUExTNytQSGJ6YmhKakJwRWNBWnVqWFNud0I5SkRWRHVEaDN0?=
 =?utf-8?B?TGxzeXNDSVo4SkUwdFRtekpFbzRDSW5hU1RzSSswclI0dFloT3dYdFdDKzcy?=
 =?utf-8?B?VlhFZ2dLL0F0YzNtZ2pLamVjVWd2d2FPMGJ1N1F2NC8zdDRhc2NUNWE5ejFP?=
 =?utf-8?B?dndvQUJTRWgzYmxreHRxdEQwRERCREFFN0VFZW0yaWJtSm9yVVBOL1o2U1N1?=
 =?utf-8?B?cGJYcGRVc1pDYW9lZmxlVGNxMUNScm5aQlBqKy9FN291RlJOUEZZTVpiOGl1?=
 =?utf-8?B?d05xWVVIaWZzL3BySm44RDdXbHpzeVRtN2lFc0RkNHJpVm52MWp3MTRLZGFM?=
 =?utf-8?B?dmVmQ0ZHcDFPTlF0L3RBTWFCUi9zOVBJTG9yd01GNE0zOHdhckczV0I3SUZZ?=
 =?utf-8?B?Z1J5MFJVa0FSS0pHTmhjMktWY2N6WHJIYkl4SDJZU3N6SkpTcnkwcUZmcm9F?=
 =?utf-8?B?MnlVL29xR3VEcVhNdlo2Ym5SbmNXT01xbHM5ZGRwaE1Xd1RjZk56Qkk5U2x4?=
 =?utf-8?B?azl0bktMWEliSkVVaVJocUtNOGpvMmw5KzVvdUg4cVJYbFdNMXZjazdXVUMz?=
 =?utf-8?B?NFJHSitzN1pWUXJZTUVwK1JMMjNaMllSYmtETTNqR01JUTNYd2FHZVJmR2Z2?=
 =?utf-8?B?bThyM0lzWW5YbXlTMHEzbXZvVWZxeW5HQU8xVWJqTVhqbEJYKytiV3RUajE4?=
 =?utf-8?B?TG9mbWJjamI4dlJlamhMd3U3emhOTjFPTmNkSHZaODBHSXovZDROd2tXUElP?=
 =?utf-8?B?RXJESksxV2djV1JiY21OREN4NlM2anYwSk5uemZDY3B6MGpWZW92ODJ6dUxX?=
 =?utf-8?B?MnVIQkhQTG1uMnNLcmZleXEzYWpEdVpCWkdZUjlaRHUrSUFHOTR2bVFZTFkx?=
 =?utf-8?B?UHRuaFZuUGl6Mk1RcFAyTVhScmNaTUk2dnRKYWNwQzlXWEcyWFlxeVBlNkpD?=
 =?utf-8?B?MkdaV3F0MlJOUzE5ZkRVWWRxQ20rcWhzd3l1L2VyUDNSWThHN1dmcXFWc09E?=
 =?utf-8?B?UlBMZjA2ZUVQUzVCckgxcXYzOUxVSnp0NDFKZm1nMTR2aUdZcWtCWXpXWWh0?=
 =?utf-8?B?YjlDc3o5dHQxZTJLSjY3Uk9obHBFN3p6ZCtNN1pITXdMMll4VEx3U0ZzUUs3?=
 =?utf-8?B?LzJ5c29YTTNpL2E0TUtJelFIQ1FvbjAvblg1OEJ2K0I0SlRUeXhzVTVWd3hi?=
 =?utf-8?B?ZFE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	6WfD2Fa6C9RuEHyTVKeS1LYnOqC5nZlBnWBm1qjBCN4RPL8V7U2SIFkSXwb8KgEmupnF5/FBNJ4s+2sponGuQGtFl2QSy8Bwd0WZQp6FNbLu9/YW9wps0I3+XyDtIiXKeI33+qD/++xcWsz8VnbAm42+TdtackZYu1GJynYB3wtFOaf4fUNVQhLFsOJa6I+hj8d+Kl4D2hLF3BciD6ztQtF1hEMCCy7wBB4wxOqw7UHfp4cyS2sK6IaDxd7FKOxj818haB/f87r9F/uz8GTEInEA8uI8OUSykLk41rnCs3VV4KLwe5XFlmKbSFNsV0l0Mi3W2Q+02xlEqtm3LktZGZ+Li3JBIu/V+axWyfRZ44a2AYVlV59kFMvccrW4C9riNY9RbeR+DjLPWXRWeQ0hAs0mGato1q9etmtUAsod5VWAUJ0FFNAamx/3laZS/T+bah+dkoCmoSZsmC92G5Dx8KnE+IH+HqNrUiTtusOZQ2OdfL7TpUuSXudaNjDHlQi2eHOvY8ARvw/1Kweeovh+s4Hw6JBGUDMPMO0V1crEMQeZTRTcd/+wsvF+YaT1Hz0WnL5RhYawhnLDUjC4+Ccb3gxeaoGgVHFulIATCgVQ+ss=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bef2133b-486d-424e-7088-08dd6cc1e6e5
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2025 23:57:02.0872
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4eVveLiFOkNAXMB1hz3xiw0R3bf12EcJnv87EZApseLRu9r9JGqjUK7fF82tL2jzZC08AYdNLGBoHfSqjwUFcjYOTYCPVHnko2rmNxnrGt0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB7754
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-26_09,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 spamscore=0 adultscore=0
 mlxlogscore=827 mlxscore=0 phishscore=0 suspectscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2502280000
 definitions=main-2503260149
X-Proofpoint-GUID: WiUHwJtb3uWIWDL-3HozrTNWpfoFlYMC
X-Proofpoint-ORIG-GUID: WiUHwJtb3uWIWDL-3HozrTNWpfoFlYMC
Subject: Re: [oss-security] atop: Heap corruption

On 3/26/25 16:07, Solar Designer wrote:
> Hi,
> 
> This (or rather an earlier vague warning) made it to various tech news
> sites today:
> 
> https://rachelbythebay.com/w/2025/03/26/atop/

CVE-2025-31160 appears to have been issued by Mitre to track this:

https://www.cve.org/CVERecord?id=CVE-2025-31160

but only listing the above blog and the ycombinator threads for details.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
