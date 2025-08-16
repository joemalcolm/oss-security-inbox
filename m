Received: (qmail 17424 invoked by uid 550); 16 Aug 2025 17:30:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16358 invoked from network); 16 Aug 2025 17:30:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=SUPlVsoIiDmVDxX8afeK2h+2aVoDjR06JcOcb8voQEw=; b=
	ItavNEloeYZY2kMNzvhmesGSwokKmxgHAkpVa2rLE8HrnwNhGzdHJGachbzog4fp
	iaaCbutqmkT+mtz0j3cvxOxaAShOdh84O0iGgXRfArJ+0XZjDWk6N0R55VptBjEC
	8Evt/t5CzKpBYgnUguD3MYuU4DmHoMdI6yees6nr6O+anvKDcebWkP8fauYarmUp
	asfvBzqwCo5gsnM5Uaz0Xh8N1MY5/7wm1feEYv+FKq8llSKdDwCaus+eOoWJO471
	zw9PEClreVeL4ptxLvxvOuxLOQmevdxK9H0fwAVpxNUhYBVhMutiFXsqQoVW5pfg
	T88P6ZtScQtXKwJNyDmGJA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=px9j2x2KmlD80RIqoZShGG3R5t2gatMi7b5aLamxCRPgz+TfSlBEnodWf+ntTigHbWN56YjhXX/6TuLbOXIBDj4o+v+z6drCyA1V6H4VQ2cI4M80TIKNAGsbhKu+Cd7ciXoCCEbevbG1tYMHXf296uSA8E6qqkvkEYq8pvsyZ4o/XNeTWgKwo+604Ix021lXTI5E4Irp46yXoZ70HJXbm5SwzXNK/hHonfmW34U4da07jwZXKCrbYaUE4czHmv0NfFCLwf0yW20WOkVhQyX8sLrT1ewpo4fFSf39Tui3PqpWOGpwOhyErB5cC3wRMtxaX1Bz6LqHeRZH31QfXergtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SUPlVsoIiDmVDxX8afeK2h+2aVoDjR06JcOcb8voQEw=;
 b=PpePFhNn0c7byc3ryCB2lMZWJ+bS+r75S+XaZ7c9oprZa5y5ItJ9bNHSY/Qta1r/QHIxoTJRO2jdiSTs4M3kb6opwMViCRf5aQegLl/Zjfy9mn9z9058pJb7AjTcslOe25rRgw6vtQY8JspOk9+46aLLthwJ9qDjL3ocea4CjRBi3DyYenEeciygFrySyfhm34qPjwAg9iP6N3zZJfbIiRThOj8o+7vVRD5H5x/SYR8pbiHC2W5JMNayjccLIwvq53X7LVHi8xRWnEZ9tQNWFEGAqwaOhoqFSoIB4SgArKhV9Z7pDOAXjETGfPqh45LGRktzJ69i68vW9R++hxrhzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SUPlVsoIiDmVDxX8afeK2h+2aVoDjR06JcOcb8voQEw=;
 b=wZ3UMVH1V4DOOpVm8b4uCpUvE43zo1hP3GM086eHfL0xbRg+Bf2Y41BdCfUZ4adjA+VK1G7OugCGwr2eLmaMIOTtgLkPIgIAlTxlY9TMnUdUJupvQJ61KJUJeuumJ+L80viH5D6wAjxyK9SEkAnJEjF3AhwxLhK69wfaX9rQ9S0=
Message-ID: <2dd5cf69-44a8-44f0-8fd9-8a3e654a8d45@oracle.com>
Date: Sat, 16 Aug 2025 10:29:50 -0700
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <9d746b4d-0fcb-45b9-8c43-16247cf79dec@oracle.com>
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
In-Reply-To: <9d746b4d-0fcb-45b9-8c43-16247cf79dec@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PH8P221CA0040.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:510:346::17) To DM4PR10MB6159.namprd10.prod.outlook.com
 (2603:10b6:8:ba::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR10MB6159:EE_|DS0PR10MB7091:EE_
X-MS-Office365-Filtering-Correlation-Id: d19bb162-615f-4246-e073-08dddcea8263
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?VDAxVXRPV1daQWRkRXR3OG12SEx1N2NwVEwyWUNwQ1FYZzZmVDZjbDBqTVFV?=
 =?utf-8?B?Y3M4bVdrUmF0OXBXc2NPcVA4ak9wYno2WHZCTDMwSlU2ekN4N3hBR3ZMa1FX?=
 =?utf-8?B?d3JDNHNVdFp3azk0Zy83YkJoMXF1TWIrakgzVlU1UDh4d2c2U3psNmlETjRz?=
 =?utf-8?B?VitmYUVIdDcwOW9TcGhPR21Wb3QyMCs4cHRNa2t2SEdYaFRjSmdhVWQ1NEFw?=
 =?utf-8?B?LzAvUXN2TXBteGhxTVUxY1p6dGo3aStYdjhRSU0zZDFVeFJlK3ZHU3NtRVJn?=
 =?utf-8?B?M0xZUG9HNUkyallSYVAzWXpYYmlTOHNBT0p0UEpsdm5OMDNSUG9MeFFLSzNr?=
 =?utf-8?B?V1VRYmI4cDRDdlgrYUhocm1aZnJqNzNxVlplL2dGcnZLWDd2SFdJZVliL0Jm?=
 =?utf-8?B?YzVpbXYxQ3VhcVljcE1tLzhhdG9TRFVaNisrQzB6djltTVBGSDF2Y1pyTUEz?=
 =?utf-8?B?YS8vVkFqTlVqTDYzN3R3WjdrNzIrZU8rajBrRnduY3BpaG9HdUFTRkoxWWM0?=
 =?utf-8?B?Y09wRm01ajgvbE9pNUZMWG04TnF1SDJJaTNJTExZZ1VJMGhDSForU3ZWRzlo?=
 =?utf-8?B?WDZzQ2ZXM3htZjlpM2hGWSt2TWhITXJOck9MVWhiWXJJT2lNa0Y4VjA5ekJY?=
 =?utf-8?B?QnQranhvYlYwYy9PMDdJbGd0ZWxoTlpEdXkxR3lrNnhCYkxkUjFHU2IrUWov?=
 =?utf-8?B?a0Y4MkorckpTc2p1ZlFQcGV5M0ZFWmxSWWhsVEFHNkZETzlhWGZvdkdFNzhF?=
 =?utf-8?B?bG5ha0V5dzBsNmMrS01DcTIrRFAvb21VNDFGbHZQZFpvT29kK2RCZEtzWnVm?=
 =?utf-8?B?V0YyM01YZDhvNjg5SVZoV1ZXTi9NNlBKb1RMZTdnMFNkSjVaRkZwaG9vSHds?=
 =?utf-8?B?YUd1VHZncHB0Uld5amVwb0YzRXFnOVAwUUhOWlRXSVZmT1E1THN1UjVGaHZa?=
 =?utf-8?B?MkFnSDFqK2l6Yy96V1Z4cGI0TkVrUDd2UU84VEd2QnVVTG52MWdRWGpKdE5N?=
 =?utf-8?B?UGFlQTJYenFUajdHekQ5cll1NENDSFdDMVEvMkJSNjJOZzlWQ1ZreTJCQ1k5?=
 =?utf-8?B?N1o1UFVrOGRnd2wzRmhoWWFFTFVhdjJadEltVGxkL3granM1TG5LVExVOXhR?=
 =?utf-8?B?R1RSL2hwSFpYUWZCR0sxM0I5czJpb1UvQXdlaE9UTHo1Tm92NEN0dzl0NzJJ?=
 =?utf-8?B?ejRmVVhWeU1zMTdmUnBkVnhveXVnUm1UUHlwWHdnNDBHSm9uRTNWc29rNVpa?=
 =?utf-8?B?YjEwZ2xlb2hkakkyNTRJcmtIQ3RHS1JiYzh0MklBbWlOWmlWNHgvbVUyZDRJ?=
 =?utf-8?B?aysxU0dLcDZycXRlYTBrUmlkdDZKOHZDNmJZR2p1S3g4QThTWDE2RTVxTnAy?=
 =?utf-8?B?Wk5Vb2x5emMwdVdoR2VrOGNuOURkbzA5akJUa28zSnpRNzdXU2RzTXdPa0Fl?=
 =?utf-8?B?c0tYK1JmUko0SkpLenc1azhXN1FPKzhHSm5Jbmc1enZ6SVFUdlFrbDM5OU42?=
 =?utf-8?B?dVNUOW92WTFUVHJjUUpXcTZwcmh2ZUlYVGlITzdQalVET1VDWGFvb0ZpRlBT?=
 =?utf-8?B?bHBwUWhWSlF0VEhzTmZQWmFqTmhtUXk4blFZd0xVTElxZkNLcHNhNmlWTGhZ?=
 =?utf-8?B?cVpIOUFraUpTZDFvK2I3bFdNZmIrZ1JReXV6QzhUSFNzc00rQ3N1YkRJMjZN?=
 =?utf-8?B?dEF1VnptMnZEWkoyY3lwdjJ0NFdOY3BZUVJENERwRDBISU9jZkRpRHFST2lZ?=
 =?utf-8?B?eE5ieTVkTm82c0VVK2tSdmNmTFk0UGNMYUJVQ1NhVkFDa1BaY1Ayd1ZlMXBh?=
 =?utf-8?B?bXZrblZUVlFURlVEc1dUVFhqVmgzL3dic0RZRTFqVnJaTDFVY2VLNkR2VzNT?=
 =?utf-8?Q?p0bUuGqESFx7h?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM4PR10MB6159.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?cUxSWVlkZGtDeXVMYnptS0NhSURZOGlZT2pjVUZvYzFHcCtsYU1zMFlNTUtO?=
 =?utf-8?B?eXhvVVhTL3pTbmpkaWxCd1dHeTdoOGQveFlkdHlGTm5jSERzMzVySlYzZmhh?=
 =?utf-8?B?QUVCQjdZcHhZRXZsdnh1d0ZhTGdJSFBvY0F5N3NPODJJL3FSOUdkaXVPME5m?=
 =?utf-8?B?MEZiYk1uRmpub05YWFIwcHM5dXNqZHZZUDNHM3JrMUZnTzlzZzA3K3M2SFQ1?=
 =?utf-8?B?U3ZTS1lKQW05Y3NINmpxeUJpa0JGZEdkOFFhenIvUjd4ZWphRjBqalR3N3VL?=
 =?utf-8?B?STRISG1wUDJJdDRQRWI5Q3UrcUh4V05yYTZOYy94OXlPYTU0NXljeHVhNHI3?=
 =?utf-8?B?Q01MK0hxMGdkanhENHQ5UGZzSEpSa3pIRzhWSk1XREl6eS9EYnp2akthSEJV?=
 =?utf-8?B?UlZZU056L0czMU1lTjFSSFRUeXhxcnBlOWk0QlpxdlJ3Qk1qR0FUeFJibXhO?=
 =?utf-8?B?bjlpbk5MWXZnZUwveTh0dDdpNWZCVE41dzhSZzBaTDMxS3FQcHA3ejZLSmJx?=
 =?utf-8?B?SFpPcDJnTjFvZVJ4aGIwRG93NklPWDNvYUdHTzNGa3huRjVjQlNVT3BXbFFX?=
 =?utf-8?B?SkxrOTNlSW9CbGhyYWtQaUpmS2RFZU5aZHc1Rys0ZWF1OC9JNkdBaVJwZkpU?=
 =?utf-8?B?bDJYdDZRM3JDWTZiY1pjeDRSeE9IU1o1V1FVR0o1U3dKWGFxVE4rQUZwblIy?=
 =?utf-8?B?eGNOWXYvWUpZd1B6UVloVVBVZkVLbUx6eGVmV2pCUnpPT2Y4L05peis2Vncr?=
 =?utf-8?B?YjIvbUUrRXZMVmZ3c3RDYnpvT3RZWkZoWVM1MSt6aFEyRmdnNlF3RTV5dGJy?=
 =?utf-8?B?RHFxUWUrMVFQcFgzWFN6TGdDZFp4U2RJakJicU9IMnJaQUpvWUowTGU4TTE5?=
 =?utf-8?B?SkVIUGtoTXNCVGJDV0g5V29zbE52UlEwMnpRMHRodFFZNlVObVZzcW1PeWF4?=
 =?utf-8?B?cy9ndkxDd21xQXN2cmdTTVlOV2l2ejJ5WGd3alpRWldLRXlGNjRNRlJpOE1T?=
 =?utf-8?B?T2FaUE5valBhaXR3R1BOSGp1N25NeXAwWXkwQWdnZGdiSFIrRXBqS2tmZUE0?=
 =?utf-8?B?TzRaUWJ1cU1HcHlUVHhCUnIvWVpkSWFJMzBGaTN0WDFvY3p2TDV6NHlSM09F?=
 =?utf-8?B?YkN3TlIyNG1hZUhSV01vNG1QOVpNekR0RWN2WmdzS2NKZzFYVjBwWURFNStp?=
 =?utf-8?B?YlF5NFRWciswSEtmSEkzWHAxTVl2WTBoYjgrSWk5NWNUQTBQOWdwQlk5Q202?=
 =?utf-8?B?aUwwSWdyYjFuSHA3OFBjV0hoTnl4K1htUDJjVGw0SzFqUVoybmhyOFFLOWhC?=
 =?utf-8?B?d2k0Vi9qaVkxNmNyazhtemZYdTNoQllqTWZaSFpvTjFKMUdyRVYwM2c0YjR5?=
 =?utf-8?B?UWZadnB5aUxjZFBwSkJxTlhTSGs0Y1ZQbDZKVk1WSklDcVhEOWcvbUVRbTho?=
 =?utf-8?B?QzlRNkVSclg1ZUNPRExObVZtNkRYYTU4OUJrOEYzSnBaVDBLY2pHLzJ6bzdh?=
 =?utf-8?B?MGgxeGNVMUJJZlBzUEpOL21wOGtHMnhiTUdpMHJ2V2ZLM29mdFVKaFRrNmNB?=
 =?utf-8?B?NStPS1U1K1p6N2ptVzZJdmkvM0xVMURqR2FXYWhjaHZxMTBLbWt3UklKVFZk?=
 =?utf-8?B?NmR1b09tZ2g5dSt1WkNqS0QxYXZCSzlUTDUwcG40Vmkyc05xWWlJaXBvSGxW?=
 =?utf-8?B?MzE0Y3NnbjBFVU9oSDIybVZRNVl1K3BGQUhudDZnaTduWFNtayswNnVVcHA1?=
 =?utf-8?B?c2ptTlhSbkp1K3VGRzJxdHY4clZaRXN2Qk94K2xseHY2SGlXNDRsL21ndTA5?=
 =?utf-8?B?dGhyQ0RWbGRGVkowV041djVWK2lJZm8xVS9wWTdwU0dNbkl3TlhBN2xtSXRq?=
 =?utf-8?B?S2VFVE8rQjRQZ1lrQ0thTGVXQXBwMXo0eG1iN1ZuaG9JMmdCRU4zUm9OT0xP?=
 =?utf-8?B?YzFhV2FTd2phS2VwcENDMWlXMXNycTNKeElOU3kxUVJHT1VMQlpFTDV2eVBk?=
 =?utf-8?B?OWF6UWEwa29xT05uZktjMVhOUlBXVFNCQjYvOWVuZk1PZVIyVm5ycHQ3aW80?=
 =?utf-8?B?d0JadmxoOVNldUNWU0dlSVF4djlZMncrRTJ0UEtkRG45aytIbkFqWUQwRE55?=
 =?utf-8?B?ejN1OUpNcktJQUlYZ1o5MS95elBydWZlTllEY0JJQ05tVHJseEhEa0pZanJR?=
 =?utf-8?B?T3c9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	ZFJJdCGf/rI0spMRyoXdzn63OWBGzpKqcsGnt+mtfMoUM5Ov9xRNVVkQMf57m5UQT43jzOYKiTumdSYqrS7hF7cfIKoEDaKM28l6VqXN4qSrtvt1Ck9+laIcOqV+oYEoZtdMK4YR8sJa6gVvgKLB5OYmyMWUnnKTYFbEe2n+TfDxTrwWAoVzzM3fNBMixnKtJfWXzcUQdku04/yiLaY76rxHIVb35AghNupc+C9uGBV5xA2TZ7KH2vvuRK0c0ckCtPCHghCm0Px8exAojdZmttXWDphxJDYlRSrg//F8LQ1RfXkQfJXJLdCyFo9fmYnTdlp6e6xWIlCjXawYiTbqH9fyqPQipebcigsAk1Y8mtw3ff2fAkdzqo0d+Vfaf9XnGwFGWJLjZQUm0FQYncqOEoqNa9EOvMtdWZ+J8GQI9HsqmTpmEDBJBbv4zmRvHzZZDIObHEaVmDLc3z8xipKdQBkywPlaip0KufvsqPJdBR1gDs/O81mqEoPAzvncXR1uGdZCtIfYx9jYhzXr1mmsLtiGizndxttwgJPYG4K6gmnZixIUjwN9OUvtjKgnV7hISaMCn7hr98xM67u5VNw1T0SKh076ymbxqMHaW7dZcNY=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d19bb162-615f-4246-e073-08dddcea8263
X-MS-Exchange-CrossTenant-AuthSource: DM4PR10MB6159.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2025 17:29:52.5926
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2v3u/ZZ377NcX1vxYwtOb+7bT+8oOfsyDG8rwABWhqiNoISNUXSmnoWxPBbulOa4pCRN32RkuLd3/EJjz3y7oJgRx7gNhiJjSRNWmdDRfpg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB7091
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-16_05,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 suspectscore=0 mlxscore=0
 malwarescore=0 phishscore=0 spamscore=0 bulkscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2507300000
 definitions=main-2508160178
X-Proofpoint-GUID: 7MXK4KN78U7IUNaSEw-mIXyjRsrLmOzC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDE3NyBTYWx0ZWRfX7YRPAzvHXCjv
 OMliqi6lt/LxvLMyeHmuZKuj0H7AnU78vPZcRKfemiQeY98NWT9rnWqtQmyLbsAroDJoJGhAfiX
 B476UiDRqA5ub8COlz55yb8m9p9wKcehirTQi49Vrf+wZH3aUKOLN1yK+vREZrBbCh/JWvCpmQX
 s7FnhJjNivTRwFhCzv0XXP6PAGatCH8QuIDgH+9/mc6e4QYI9wCS4X3GA+fmjPk8FSf1HmmXhov
 LYfa86e3XiSMpPa0P+tY04sgzp6hZsOXT/+0SRMhx1HZytkzsj2x5LQSxNiwaC1GwbmoHs3Qceq
 eBN0Aao2UW2GWkvNpyve6Fk0fLvaAJfGp0lQj9YwSqrHt+1C86VnsljIf+lgTosEq2tfOopHVCk
 NKx085vwJJpQOi3aKRnw7XNnInksoVsTEoydDVvVDhgyAsx+jHHVc1i81hXg9gxRsnzYa8Ba
X-Proofpoint-ORIG-GUID: 7MXK4KN78U7IUNaSEw-mIXyjRsrLmOzC
X-Authority-Analysis: v=2.4 cv=HKzDFptv c=1 sm=1 tr=0 ts=68a0c013 b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=GoEa3M9JfhUA:10 a=TWq6ZYQzAAAA:8 a=XkRKQH6RAAAA:8
 a=NEAV23lmAAAA:8 a=stBCMgrmAAAA:8 a=SCo1hh1FAAAA:8 a=Y8zkqK7kAAAA:8
 a=dWzvGBGkAAAA:8 a=yPCof4ZbAAAA:8 a=O6bRID8T-AML05ERFRUA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=cG48V0dvvs0A:10 a=jJ6x59X-CV0A:10
 a=ELI009spOhp4_qEUuRHw:22 a=1gUyE30hU_ULiMxJiLUW:22 a=pCA89cNIfupLJwoYPjsp:22
 a=nwb-CePKZZm3gL-ai9HY:22 a=PMfRXvGH5xpD9em-gAiF:22 a=AweIAo1qYmKaIFPb-eXN:22
 cc=ntf awl=host:13600
Subject: Re: [oss-security] HTTP/2 implementations are vulnerable to
 "MadeYouReset" DoS attack through HTTP/2 control frames

On 8/13/25 11:27, Alan Coopersmith wrote:
> https://kb.cert.org/vuls/id/767506 was published today:
> 
>> HTTP/2 implementations are vulnerable to "MadeYouReset" DoS attack
>>  through HTTP/2 control frames
>> Vulnerability Note VU#767506
>> Original Release Date: 2025-08-13 | Last Revised: 2025-08-13
>>
>> Overview
>> --------
>> A vulnerability has been discovered within many HTTP/2 implementations
>> allowing for denial of service (DoS) attacks through HTTP/2 control frames.
>> This vulnerability is colloquially known as "MadeYouReset" and is tracked
>> as CVE-2025-8671. Some vendors have assigned a specific CVE to their
>> products to describe the vulnerability, such as CVE-2025-48989, which is
>> used to identify Apache Tomcat products affected by the vulnerability.

OSS implementations that have responded (whether affected or not) include:

- Apache Tomcat - CVE-2025-48989
   https://www.openwall.com/lists/oss-security/2025/08/13/2

- h2o - CVE-2025-8671
   https://github.com/h2o/h2o/security/advisories/GHSA-mrjm-qq9m-9mjq

- hyper.rs h2 - CVE-2025-8671
   https://seanmonstar.com/blog/hyper-http2-didnt-madeyoureset/

- ISC BIND - CVE-2025-8671
   https://gitlab.isc.org/isc-projects/bind9/-/issues/5325

- lighttpd - CVE-2025-8671
   https://www.lighttpd.net/2025/8/13/1.4.80/

- Netty - CVE-2025-55163
   https://github.com/netty/netty/security/advisories/GHSA-prj3-ccx8-p6x4

- Varnish - CVE-2025-8671
   https://varnish-cache.org/security/VSV00017.html

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
