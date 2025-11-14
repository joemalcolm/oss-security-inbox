Received: (qmail 15923 invoked by uid 550); 14 Nov 2025 18:28:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15893 invoked from network); 14 Nov 2025 18:28:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=eHuRpnyNuSOTzZCG
	Pd0Nu0zY6zHTP0ds3vAXV1v9Ir0=; b=MnLZk76V4a9IMYgrOILt1d+ixDfFywBc
	ABz+Fm5NxuMSKxZVIUPnkiEfhx3oI0GhS/eNG6TtzQDHrSmmPCARIfKf1mXY2cqK
	+2Ams8Bf0ky+noEj1NK0yd5Godto5NU9yfWLs7HNLIlYtdZxWPZBmoMy6anAorwG
	eFoOyxEYWie3kqn2NBvjmAn4ha2gHMK7xfFFp1vHWcTFiTjaZicHPygw0tEVjaEV
	QLgPw3Td8aoe5HuIJjGK3IMPZHHTNBWfj+dewsO9/+L5cbqJu3HEStlI8DlBvdyX
	e4AJo+Bs82U6Vp0+INIBP5mz4EOTCPQ1WhRpUgqsX4VJFYtM0v7koA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H0f6AqyyKyXezIRrfwQdvHUXQLaq1iaQUYNMP7YVuy5LpDL7ie9TVCwXqPJX/Now1RxUF37Fp1iY66iZXC1kwtzAkxNYjqvfgScU9q+Rfg8wk+avviATontf3wcriSKXA5+DNZNaOBHrVF6gG/VOk9NpnXG9Caxnzr0/PjCdp0tmyDhhAsKXHQGNl09uTC4IYq/RqxO3kL1mDRDfHJ+HVX7TUTGM0cXb/cAiGrcgN+RqcF8ZwO2OfoKlnDQy5lkpdtjDMZAX8ChHO7EAdMU2+vf1ssEy1i51geq4mdKSx3ORY0t7hdu4savyXf3sKJveM5yCRmVEtwYuLGYguQMgzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eHuRpnyNuSOTzZCGPd0Nu0zY6zHTP0ds3vAXV1v9Ir0=;
 b=y91Crze8PjiAb23JzDTzt6YUMWBr+nM9yld+e+meoK8JjbQ/8tWkPcIqSpyb1c582KXjdkEQhPjD4Hg4RBw6ON0v0wV5T4e2xiqDgwwBxRr9MfckgB6VAnIST7VLLtXCyLBh0Pgau435KfUocCOccvqv7GP8Ubc9fhB19/Mx/BNZOKj9z8N+p7WBnAXTgAWyIU9uOUa87Nr5+82VvgBra0qZlK2NTnrQmoVDlWInUbDxKP5q679oMQwRXwAF5VvvpkYRiW0/1hn16dXX9/B7p+jiE+Ej444ytwGX/DtEbFy1rOM1wyysHjZCy9b4+4m1/WD+7wYBgQkje3ON5eP9PA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eHuRpnyNuSOTzZCGPd0Nu0zY6zHTP0ds3vAXV1v9Ir0=;
 b=MMvOg1wv0w6rRYjD5y3BuZzOvDAg7rixyPFb6eyfaSXdzbQxarHv+74xTdRAx4mCRKHbrjP0DfWw8EOutYpjVTow+B6DTbPLEsKyni7ejLKhLfL1GX9JUXq9d+YF0Lf8wjZrgtxuuXxUfue1n6Wt9Rp9DBl0Rv4YsKcR7tKrPZc=
Message-ID: <3c4af8c5-d531-4360-a585-8208559d2850@oracle.com>
Date: Fri, 14 Nov 2025 10:27:52 -0800
User-Agent: Mozilla Thunderbird
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
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH7P220CA0123.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:510:327::26) To BL3PR10MB6140.namprd10.prod.outlook.com
 (2603:10b6:208:3bb::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR10MB6140:EE_|DS0PR10MB7343:EE_
X-MS-Office365-Filtering-Correlation-Id: 2610b102-110c-44ad-de6a-08de23ab86e4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?VjRQNVRHRnFBTEZkQlppYmxkOTYyUDE3VWV2QnpIMHdlbjlXaitWNndDWXh0?=
 =?utf-8?B?RjJhVGZLcTBrRUtCQjVtaE42VWVNNzlmZ0lmS2Zya3NGNmtMODZNc1AzbW1k?=
 =?utf-8?B?alZTUkhrVjNLOTl5anhZL2hNOVliS0ZZR05WUHg0MmQ0VHlwMUhERklDa0o3?=
 =?utf-8?B?YnVWQUloRmIwb2F3bGlDK3gweXBDbk5BdUVmV0dEeVZ4YWtLOXRMY2htS2dQ?=
 =?utf-8?B?WUxOTVVIVnVlMkRKZGRma2JpTWQ3NFB4RlhDOEVXakVjK3JCMy82UU9sWlVC?=
 =?utf-8?B?Y0VXUVhncDRSQnlvbUlxb2dZdXVod2RWVzRxVkNWTE45Q2hybXdRcmZWLzRz?=
 =?utf-8?B?UFJTVmEyVDZzOC8ybjRjUTNaRlBCcmZwV2d6QzVwM081MkJpSG80ckEyQWxH?=
 =?utf-8?B?OEpVYWJFRXRVY0dERXhHYUZJRFh6Zk12dk1sdmErUWxZQ21QYmozaktRRWYz?=
 =?utf-8?B?L2laRWR6NXlxYW8rWXlxcTd6eG5VbjIzc1NpZ1ArRDNRY0VHT3N4SnBKMUdW?=
 =?utf-8?B?V1dDSUZsT3IyaS9ud2h6bWllUGtleStkYXFjbldVWjFIaWdkR2UrU2srbkEw?=
 =?utf-8?B?SE5nMnJpeWlyanhQaXRJYnFtN3FkVnBzNHR4L2toMVJvaDJzY05pa2FmL2dQ?=
 =?utf-8?B?NVZmOHVXOStkUnRyQjU5Q2JXdzc3YklQOWlHRGtVdUpaWE1jaVBQbytLU2lP?=
 =?utf-8?B?TVliektXMGV2cmZGdHZmSmNmKzJqNnJEbmEyT1RxVzZWV1kvVnZyNVgyTHlI?=
 =?utf-8?B?NU1ZcmxjNDhLVUtYbjREckFySVNFZXY4b2tWZEVURlNkNk5EUVdYWXJGenBB?=
 =?utf-8?B?MG1sRXU3eHlNM0o1ME1jWGltcVVONVI4cmJzREVCZ2JtLytJQWNIdjdNSlB0?=
 =?utf-8?B?RzMrOXFEVWxIZzVIbkpoT0w1aUxUKzFSeFhzTnVwdE9qT3U3MXJ2UkdQZXh3?=
 =?utf-8?B?K1ZDQ3g1YWdoTTc3T0NqamJnMGErNEhoMXVBQ0Irc2VKRFNvT2x3S0tRV3ZO?=
 =?utf-8?B?NVJoMTRVYnRHaG01ZTR5WGpMQjdVZzdwZjdGZ2V2ODI0Z1NvcWc2d0xzb2dI?=
 =?utf-8?B?a1gzK1Q1dG85NHV4clVsZE5UaE5oVmRTczczMEdnQnNnMFZTWmVoS2dPSTlB?=
 =?utf-8?B?R1FHR2dWUGVzMWdhVjJnUm1rVnhwbzdwZXRZVzYrdFpRVHJkaURvZFMrd1FX?=
 =?utf-8?B?RTR1Sk5YTnRkcHNQSVRCWkxCYVVWeHpsMloxOVVXa2ZVMTI1TGc5K000VUY5?=
 =?utf-8?B?OXA4ajhOUm50S1JiaEVPdVpXQUZVcEN2SzgzUVAwSGs3OGx2OGtBVm8zc08x?=
 =?utf-8?B?a1dUYS9tR2t3VTRmNllMeWl1dndYaVhCS05DUVljL2Q3Tm9UMG9sWTFQQVN4?=
 =?utf-8?B?Nm82OVpqWktJVzN6VCtsWkMxd1dEUHJ3cW56cHk1d1l6dUc5YmpicndHOGhQ?=
 =?utf-8?B?WVhjNkRLcUowcXNGcGdMaW51VjlBSjdvbVAyN1Q1MWlEak44Z0RUMGFPajVi?=
 =?utf-8?B?VFFUaVdtOGF3U3RaVDRxL2ptTEdyMnV5dGxXLzZOK0lWVmZvcTFEeHkrbkdw?=
 =?utf-8?B?ZXdQNERRUzY2TXQ3NWJmWExoaytQU2lUQXhVM0RLRnZuL2lVb0VJQVBXR01n?=
 =?utf-8?B?Vm5KcTFKZ255YnZ4emNLQnMzU01jNzFVQnJDdnhuV091L0l4WFVHZ05EcGxn?=
 =?utf-8?B?QitXMDFIYmEvUnJsQ2trMEhjWm1oSGhrYzdCWUM5c2c3UjVhQ0cxWjJJL3Ur?=
 =?utf-8?B?eWxJdzVmQ2s2aVhNTE1GT3BKVlBKSjUzQ0pKQ0ZFK2g2eTJjSGVVTHJES1Fh?=
 =?utf-8?B?TldHd1k5ZVlVZVpRZTZ4ZjNWaUoyUXU4M0l4Wjd2S1IrVzljZG5CUnhPRkd4?=
 =?utf-8?B?NnZ5UjBlN2J1eFZhWmxUbml6TlQvMldySWh0TlVndGtTTDNObTI3Wmhmd1N4?=
 =?utf-8?Q?NxfE3HHi0rWeZ5g01TGqLwKCFCGUlEW3?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR10MB6140.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?cU5JeEFJNFZ3N05GY0t5dnpZcS80aWtWTlkyRTZ4VWMxY2FWVUgxZk9KMjdr?=
 =?utf-8?B?OGF2QllYTW56SWJuUTVZdTFPYXFsY1cyMGZRSmdocVU5RHRxb0ZYVEJjbjRk?=
 =?utf-8?B?NU1UU3A0YkVIUnVreHE2UUVreEszTXllNFJYaExGYi9CenZ2Z2s0R1N2SXRV?=
 =?utf-8?B?cDNWa1VRZmtUZjgrNVZxNkhhS3c2NG14UHJYYjIwcDI3WllJNDF2aTBxNUo4?=
 =?utf-8?B?akdzdWQvdWZSakFtT0pZV01aVjNDQml4bmJqN2l1WENpMk4zUjhqTW9LRTlP?=
 =?utf-8?B?czZJYUNWbkFnbHdXbm5WMDhNaDJwT25YcisvTGJnVmh6RVhQZDJpM1dndmQw?=
 =?utf-8?B?djJ5UklnWU01RlNCd2Q4R3JEdTJwT2RNamJOQlA2WXBRT3U1V2piSXhsQjlh?=
 =?utf-8?B?SzcyMU5qdEgwV3UzRDVyMnpER3owZzhZalk2NGZBNWlMdjhCMUlxbDFBN0NX?=
 =?utf-8?B?SFlVN3ljZExMam9vUUFtemhjSWhsc0ZMeGNORGZuZmZHNDIxbU1WbUFuUDgx?=
 =?utf-8?B?SXFkTG1QZkNRNFA2dmczSzJxaWZzRkxKVHEzNW8zZHkxT2xFSzU1UXJPMksy?=
 =?utf-8?B?ZjdLRjhnMXRBQXBIbHFwK3RLSk1WTWZ2Ui9aaFk2Mkd3bDBEOEQrSnJMV2No?=
 =?utf-8?B?dGI2cmptekhQVFV3YjhXQXpBclRBSURoUnNpTHpWbWVwMmJEWWR3aDgzWjJU?=
 =?utf-8?B?WDhFTWo4bFYvTUVOR0JsckN4bmYxS2JhUTVYME9NTS9RTVVISUYvRnZDbzM0?=
 =?utf-8?B?b2IxakxOcGcwUENjbjRtNFQ4MXZIZ1UxNjhwVkV2WVZOMi9oQkVhWHNKMzZX?=
 =?utf-8?B?TkdEVEdDS0xRMk16eC9wdVZ6K2FkOWlXL1RobkRuZndLOS9GcXVSYVdjZytO?=
 =?utf-8?B?TE1tQ0g4MUwxMUlvdWpXdnhsWXFLcUdRaStQR2lYbE4zNlNxbUtzRFVKTlg1?=
 =?utf-8?B?STJ2ektyV3lEZlBsQnBleXhnaW9EeSs1SzA2MllXV05WWmN6KzU3WmI3SDdu?=
 =?utf-8?B?NytUM0NBUWNMQ0Ntc2lTK0JYK0MzYWVsbmNaSXRwTE1PRkhCM1JwNEp1T25M?=
 =?utf-8?B?SFlpWGlpbVpZNWROYU92cjRXYUd1dVVSTmZaVDVJVDFML2JMazFhSC8vb2Fz?=
 =?utf-8?B?djZlaFp1aDFmUlNDcUVIQ3RlTkZFRmtROXRVUXF6ZFRzZlJTMW52cExNdTQ2?=
 =?utf-8?B?THd4eWpNQzFqOStnaFNEeGc2WThrT1FOanlKNDI2QjNsMjZkRHp2M01HYlYv?=
 =?utf-8?B?QkZJanJKMExtSUgwRFM2OURsRWE1K1lkSllEdnNQYkxOK3V5NUJaT29PWG5Y?=
 =?utf-8?B?VzB2Wkl2WjhRcjdIVjc2a0NhNkhNRFJUUE53Ky90ZVpzWGZyZnZmUlFNNVNC?=
 =?utf-8?B?TGVSY2ZmdnFFNXduRGRYSkl2cVQ3TGtWMWVCZUtPTGkzT01oeUdpUUNxbm9C?=
 =?utf-8?B?U3J6dDFjTk82MG9BRlZkdDBQNmJxWk5DOUR4bmJxa2pnQ2c2T3huN1lVZUxB?=
 =?utf-8?B?VEVFTlhYT1h6TEhOR1p5OW1hZFhXS0RaSlhRMjdlamNEc1JRTVBtN0dyeWZa?=
 =?utf-8?B?cThhQnhXOUF1bXBZT1NZd1NvSTVTUWZZUFpsZVc4QTdsZHFHT2lCMU9hVmtk?=
 =?utf-8?B?QXhRU1ZlV1dRMDlJb1Vhb2E2R0E4QU5LK2VER3pqYW5VSkhHZG5haFVXeVlo?=
 =?utf-8?B?d2U2OGlpbURFNmcrZE1CRjJmenJFb09MWmNaTlROeFpOaGZPZ3hadDEwMGdK?=
 =?utf-8?B?dWZGQm5HYmVKNk1jNi9ibnJuSVB4OHZod3FKc2oxd3A1MjZQWWxIMmdGS29I?=
 =?utf-8?B?Mk94SWMyZjBwTm02WWNkbllHYmlkd0pRYm9JQWxYZlZjUU5IRW1WQnJSNDRP?=
 =?utf-8?B?ckFkVDNqMklYVFA0VXZ2NWk4akRpNEw4S3l3dXFmd2Jpd3FzU1Q1Zkthb2Vy?=
 =?utf-8?B?UDBsYStDMTBaVVlqTG5YZnZ2UUU3aHlVaExUcDhlT3FoTlJLK3ZDRUkzNkY0?=
 =?utf-8?B?cTZRNGczOUR6TEVJY1JOQXkwQ1V3VmlvRzQ0UHRQQUU5QUhyZk5EbmJOVnhT?=
 =?utf-8?B?K2o0eUZZZlN6VWhCQkh4bGVLRGtIUW0xcjhKd1ZYcS9wdzBtQllEalhuOTBB?=
 =?utf-8?B?cGVlUnBSWEpHR2V4T3E5bWtGc1drNGZsalBwc1AzNUtyS3JaYVNKM2N5bldt?=
 =?utf-8?B?UXc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	GZjN47DZ/4q/G9bdtzf9TBCLJKaqvq77zmcm+YCQcXCsRGznrK7nG/QtbTHBRpih53wKUdW+d7p447NRsf6xzo989VTccPAGoR8fwI+CyW3xxpO3cjW1nBaKlkYwOtFgsXUQ7eILnqNPtso26YVneX3q7Q9NdWAjWomiu3hUJmCruscDMHP5UihkR/7xbtG9vEdJZhHNJ+BoAc2KuN34zk5NjB8NxUk3v36J4Q5HQNFUKRpv2ecziTS5i0UapmoAR7BMit7LFcXtSb5pMI3faZcwVPX80YDrHzHvppSL8eaOKydydBRdUz0f60KAnlzgodzNfHToF7k1ikGfq9BJSs7DWCRsq6Xi9nd+w+vsWEq69g5Viz5MHQwciNNUYqlMRktZ85wWSPN+4NkZx65eNMJDpPe+b8TbVM4ns8X7LzfXot579vr1L+V0xr221O69FbmvKnEMjyX+Vqc2hMTjthaBMOCIa8vJBoRXui08h0QPsbHDEbNfIlyS/JvnftU5l216+14OxOs+0c66VotpBsIqBMl+vvCXI5yL9EBu56lf2/OUO/7hqlFCEG0QmogG+17CGMvx+Df+zBjcdryYxlMQvgNkmoXXSFWRu9OKXiU=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2610b102-110c-44ad-de6a-08de23ab86e4
X-MS-Exchange-CrossTenant-AuthSource: BL3PR10MB6140.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2025 18:27:54.4764
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: m+lH+l1vx4QcYa0SNgp9ehkKS3A8G9TjsFZXgZKtUzW0HTY3Db5pw4q3zQLNR6Zwz4qTFSE5+gw+hUOCg6Os5ggiYIsH8KF0e5qpnyLd2zM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB7343
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_05,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 mlxscore=0 spamscore=0
 phishscore=0 suspectscore=0 adultscore=0 bulkscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2511140149
X-Authority-Analysis: v=2.4 cv=YP6SCBGx c=1 sm=1 tr=0 ts=691774b6 b=1 cx=c_pps
 a=zPCbziy225d3KhSqZt3L1A==:117 a=zPCbziy225d3KhSqZt3L1A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=epTmVMiNAAAA:8 a=yPCof4ZbAAAA:8 a=2hVXRnOZFKmJ6t1SH6cA:9 a=QEXdDO2ut3YA:10
 cc=ntf awl=host:12098
X-Proofpoint-ORIG-GUID: JDlHnVhS0KpI25BlrRlPfO7t9EJ5aVCx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDE3OCBTYWx0ZWRfX4LGJKQVX1GJ5
 LLXaLJtvPsnYy9aW7ALf3D1pxgpBIf4dYbrS8pjhX+2Ny7quhiRFl8P5OdG1Mz6LrqoWoMZtNPy
 mH7eFFkiDVwWXFovAq0UJX9GQE1rDQCszC2WSCap3ZOi+ZKPmiyhs2LKz6cY29tBqyzWoRcovR4
 ggxF/Ke+Ro5a5C98sXZAD4V/VLZni03Gg8GK+U4uLKT36uMBDUuiBOokZerFY3RRD0GTQmf2FS2
 giQ0j2WT8Pm27I2AdzAXXjbz7g6RHgvY/FDP/to+c+WQ4HvBhNc+zSHQ4yuAWE4+AimCs7qIzZp
 oII/QomQ4VT+UebduohWIkFnYtFn2XhDJJBl9B6edgRWmbyLx3P61g9yJxzvGLlPsGXNZ2LSqYu
 Od0Q6gw/T6i18zpqpJH8G8kSOp2jKzIWpbJXxBtigWwh08RCGOQ=
X-Proofpoint-GUID: JDlHnVhS0KpI25BlrRlPfO7t9EJ5aVCx
Subject: [oss-security] PostgreSQL releases fixes for CVE-2025-12817 &
 CVE-2025-12818

https://www.postgresql.org/about/news/postgresql-181-177-1611-1515-1420-and-1323-released-3171/
announces:

> PostgreSQL 18.1, 17.7, 16.11, 15.15, 14.20, and 13.23 Released!
> ---------------------------------------------------------------
> Posted on 2025-11-13 by PostgreSQL Global Development Group
> 
> The PostgreSQL Global Development Group has released an update to all supported
> versions of PostgreSQL, including 18.1, 17.7, 16.11, 15.15, 14.20, and 13.23.
> This release fixes 2 security vulnerabilities and over 50 bugs reported over
> the last several months.
> 
> For the full list of changes, please review the release notes:
> https://www.postgresql.org/docs/release/
> 
> PostgreSQL 13 EOL Notice
> ------------------------
> This is the final release of PostgreSQL 13. PostgreSQL 13 is now end-of-life
> and will no longer receive security and bug fixes. If you are running
> PostgreSQL 13 in a production environment, we suggest that you make plans to
> upgrade to a newer, supported version of PostgreSQL. Please see our versioning
> policy for more information:
> https://www.postgresql.org/support/versioning/
> 
> Security Issues
> ---------------
> CVE-2025-12817: PostgreSQL CREATE STATISTICS does not check for schema CREATE
> privilege <https://www.postgresql.org/support/security/CVE-2025-12817/>
> 
> CVSS v3.1 Base Score: 3.1
> 
> Supported, Vulnerable Versions: 13 - 18.
> 
> Missing authorization in PostgreSQL CREATE STATISTICS command allows a table
> owner to achieve denial of service against other CREATE STATISTICS users by
> creating in any schema. A later CREATE STATISTICS for the same name, from a
> user having the CREATE privilege, would then fail. Versions before PostgreSQL
> 18.1, 17.7, 16.11, 15.15, 14.20, and 13.23 are affected.
> 
> The PostgreSQL project thanks Jelte Fennema-Nio for reporting this problem.
> 
> 
> CVE-2025-12818: PostgreSQL libpq undersizes allocations, via integer wraparound
> <https://www.postgresql.org/support/security/CVE-2025-12818/>
> 
> CVSS v3.1 Base Score: 5.9
> 
> Supported, Vulnerable Versions: 13 - 18.
> 
> Integer wraparound in multiple PostgreSQL libpq client library functions allows
> an application input provider or network peer to cause libpq to undersize an
> allocation and write out-of-bounds by hundreds of megabytes. This results in a
> segmentation fault for the application using libpq. Versions before PostgreSQL
> 18.1, 17.7, 16.11, 15.15, 14.20, and 13.23 are affected.
> 
> The PostgreSQL project thanks Aleksey Solovev (Positive Technologies) for
> reporting this problem.


-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

