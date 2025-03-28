Received: (qmail 27766 invoked by uid 550); 28 Mar 2025 18:04:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27736 invoked from network); 28 Mar 2025 18:04:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2023-11-20; bh=1h7mfYv+mZk851q9Y6KN569hdKjqI5fGKVyfVS60ILs=; b=
	j10xJ8nIKt/vhHL3kJuvpFY28xocmnn/knBJek1G/bQQvplZ77i2nGwdy/2X/unH
	n426MHdqpWRwtizohQWp0LyqyiXt2CGIp+NapxpxvY0NBFvJkud1EvD1enLqkGyX
	wg9qPVShhl0ZBlsG6YlitHjuojuKqF9o1LcZ1r94rdMvcpaobtztwGm/j5Z3P6wo
	SUtrxmWxxJjyD25abu2ZM2ufFOKvURrdKTqkXqBEtOiK88JsCydmfAcmgd4w1zo5
	ff6qs5pN8AeBhgTfebpH53n5tAJU9K3mx7PS7auJt0PrIue90hS5+UvfbLCSajth
	gpJ/ciiPvirHssTMy2YbpQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sSwLLRz9Hiy7Xb7rZ4R5CS1HeEtSKBgthONqHXg8bo79sf6k/RVBf5+8sobS2odmf+jiO/G8WenlCsmTmJpiLmdRbCKs1XF0IMfKahGMG6DjwhdKBIcKVkKjEH6oHm88qaRPSZkhjEX0DuWpRs3gpS6AQ47bGsSpSS8hgG+nwvtil6gMMvHMkv+XiINTewPQh+UZB7Kk2jagYUurQ/Z2gRcMVysTSEovrV10osxA39byY5SlCvfPDwcevj/+w3lUmsMFB/GvbMtL5kEotOyyVk/JRT6N5jmeIIhkMaENFFPMtEC9vPPwqfqY3olE+QRX7dT2SjA2HfJm7MKf6sAO5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1h7mfYv+mZk851q9Y6KN569hdKjqI5fGKVyfVS60ILs=;
 b=bD/w0ZA09NJN2QQTU4CmiOYGQXmqht9AC7SJaOA6NAbV3d+nL4bToJko/ZK3ALz3t72pHOuKBMBU3/Ylu/mQTfxtcvFAJfjznECcczkYXToMHq3k9aIuxfGI950lwJe3CSDHS4pHE3/XiNomFXeYwpq8gcgKjNufjK4pTF/Xfh47s1MMXz6F5JtFom2uAwkuETVd1ASvj79UnX7bIJMFo3J15UNAbPGkz/dNSkglsyZLJMJjxDZRff/4hSrsoeU8aRYSQxaBgSduwIau9HxaEnKvSib+OdyBF6pvc0tlVwzySbIN4EEos/JCVKAbPTqG6HbWKIAVFmHFfBjJ9609UQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1h7mfYv+mZk851q9Y6KN569hdKjqI5fGKVyfVS60ILs=;
 b=N6UMEQv3Q/OOFplSQfTGX8viaCTKZY90JVoCRTeqLhfJRzLa1jQaENz+osoePs+10ebfWU9ZaDspHUaft9mL1BZuchwpAcBCdFVBj2c2ZjUPCzqLaluygc4EI5UfrCsUjjkw/Kp1HZuxtBNKP6aYwBXgAGXzC+snrWh3DzcCR+E=
Message-ID: <fcc718ed-ddae-4bdc-868e-9f897bbc98d6@oracle.com>
Date: Fri, 28 Mar 2025 11:03:45 -0700
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
References: <20250326230703.GA7131@openwall.com>
 <d33e63e7-0b29-44b6-ba50-e53f1958d2f7@oracle.com>
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
In-Reply-To: <d33e63e7-0b29-44b6-ba50-e53f1958d2f7@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR07CA0001.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::14) To BN0PR10MB4997.namprd10.prod.outlook.com
 (2603:10b6:408:12b::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN0PR10MB4997:EE_|DS0PR10MB8126:EE_
X-MS-Office365-Filtering-Correlation-Id: 7cbe2ac6-6f70-4416-1cec-08dd6e22e314
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?bnFlQjQzSlYxTUJJY1lxa2pyOHRqVGY1clgwOW5TaFFHZ3cvdEYrSW9IM3Fa?=
 =?utf-8?B?VW0yNHRwemxxVjVNcDRKc1V5SlVTUUwzZnNGWVc0QU00aHE0UVA2OEthZDY1?=
 =?utf-8?B?SEt0aXU3d2cwa0ZhY1N0M0VTbHNCc2ZrYWhjZmVudDE4K2g3VmowdE9OL0Jk?=
 =?utf-8?B?bmE5a2c0WGhVS3p1emRyK25PTkc1azZjUnFJdUxOMWdVdEV3YmlVTjVTTERT?=
 =?utf-8?B?NjNVYk16RDBRckdKbUNnSXZnTDkxK1pETnMzeHZHaUpKMmlLQmdxMy9mNFlR?=
 =?utf-8?B?eDhGY3RFTTVybmRoSE10bWo5Y2lGUk4vb1dYSS9oYUZtY3krMzI2VUx3NWlY?=
 =?utf-8?B?VCtqUGlXVk5uVnZmNWsrWEVOelBMY1JtNTltQkFuUlNQcC9TM1BYZm5UdEpE?=
 =?utf-8?B?V2wwRlpSMC90NXpkcHA4Tzl5YW5FcFBZbHRHOEVxcTdaUkZWc3hQei9WNG8x?=
 =?utf-8?B?cDVKbHdxWkJwbkxJM2N0WmxaRFZjSmVlUzQ2anoyTUlZNnM0UWZRWWdhRFpB?=
 =?utf-8?B?b0Z4VzZvQVZFR2JHdDA3anZRa1IzWTRic3lpVUJXU3VHVUVvcVVyWlhMNkt3?=
 =?utf-8?B?RXVISFhuVnUwV2ZWMW9pbzVTVzVOTjBoTWpZOERwbTIyMXNuTjN3RU5LdWpk?=
 =?utf-8?B?OWxYT04yMkVuQ1RHd0ZHWUswbWFXbHR0SjVHaEx1by9qdTQ3clJYTnFZaW5Y?=
 =?utf-8?B?L1NMOTl4RHUrMDJONW1GcHoyeVBGMm1TWFFvcGVBTXNHTnowNmxoWDhnQXFD?=
 =?utf-8?B?cmVMK2hLN0lOMFlXOHNxaGc5ZE0yNFBzeFBxZE5hZEJkbUVHRGFsYjEwdEx2?=
 =?utf-8?B?NnNkbm11dFpGc1RMaVlMa3oxdmVTdVc1ZHRsakFhdDlqRTZXcTZwd0pXdFVn?=
 =?utf-8?B?SkZEL1ZKK1pwR0c3alZBeUFTWnA2em1xOS9pN2M5RzNMVVEyYmlIYVBoeE1s?=
 =?utf-8?B?Q1VJZUdOMVNFTExTSUhMaCtybDlaVXBDYnpqL0VROFF2akMxNWFVL1RWZ3hh?=
 =?utf-8?B?Ty9BVDd3MzVnUDR6eWhkdTB2UzRnWjFScjVBLzJwUS95UlFtR0o1WVFSbjJz?=
 =?utf-8?B?TDRGN28xRytQZWNjaHQ0MjVwSngrRVBDTUcwdWZUT2JLbVRjSlUwT0c1VkZF?=
 =?utf-8?B?UzFRSjlUOTF2ZmY4Z0VZU2NvNTVmSWxxOGlwTVMyeE1MYW5Yc05YcnFUZG1E?=
 =?utf-8?B?RCtzdkdlbFcxOXN6YmJGQXFpbUdUVXU1Rm41U0djRVVoWS9uMGR4Vi9PWklS?=
 =?utf-8?B?eDYycE9RaEpSbTFtaU9ZWlA1TjhIWnhOdUZZdWhGakNaSllqaHVDbTIvVVhs?=
 =?utf-8?B?cXpVUnlxdTR4S2EyYjQzUXhKVkNYT3paYVh0OEYxM1gyTWZ1ZkNvTkFLUmN4?=
 =?utf-8?B?Wi83TDBMcStLWTdEUkVIbzNaVDY3eUp4WVNueUhvc0lQS0piS2dzNzBKZ0pk?=
 =?utf-8?B?VXBnaVBIVHJ4SngvcXJLNWExdVphRm84NDEwL3dHaUJPY1VOWU1pSXgzVEhU?=
 =?utf-8?B?ekhXSnRxZ0NxSk11NitETTlOaXhaYkQxNE5lT2VNc1lGOVJBZWVqTXZkYTNz?=
 =?utf-8?B?ZHF3UmdpWC93UXVLc1JXMFlhZC9lN2JiVUE0WFRidmZRSDRidXBuRXhPbWhK?=
 =?utf-8?B?QlZHcnVuN0ZuSDcyR3FUTk1Nb0draTF3MDJsUFJXR29jUElGVWtlRjN4NStj?=
 =?utf-8?B?cjdvMEQwZzVQMHRPZ3VCNmhPQjVGNVZoK0N2dzQrcjZseFdGZUhCVVhzQzZh?=
 =?utf-8?B?cTY2OUdTK0p3SjdnRld0MXNPNGdHR1VhbVZBZkNLb0dmeG9DTURkZ0x3RXNa?=
 =?utf-8?B?WHlXZGpZdDYzM013QlAvVVhKQlJLN0thSk9vSUxBdzY5VXN6M2picU1pTjhw?=
 =?utf-8?B?UzV3dFA5Sjc4Vmd2eFFON2FnbkYwRUp3c0JmVXBxZnpJK2c9PQ==?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN0PR10MB4997.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?WW14dm43TnF4RlRxM0JxbGZ5TXMxMjJ6cGk0VXYybEFnYkN4cHFrd0UyajQ1?=
 =?utf-8?B?RnZVSzdMNjJUODMxUW1YRzQ3Rldxc0pUQ2M4VlBTN0U2YndiQk1xa0tlRTJQ?=
 =?utf-8?B?TXA0RFV3Nk9TYlhvYXZTN0F2REVTODJjTUpQK2F1a1cxV2M2WE9tcFpxbGVq?=
 =?utf-8?B?VEpDc0ltTVdaa0xLOTF4bnV6S09OdzE1ZWljVWxETXpMUGJid25DQ3gvQlFx?=
 =?utf-8?B?UDAvY2RCc1BTbCswR2VnNFZFNmsvVlZNeXFNQmJZT0xYSm5tQzNOd3ZobzFN?=
 =?utf-8?B?SXFTZStZaG1raHE3dVczdzRoaXpwQVRzRTYyWDJleWNxcVEvSVFTM21VYzF3?=
 =?utf-8?B?dUt6NTlqTDJFR2VncEVWaCt4TlZvQlptZ3pxeWVhUjNpb3FpakxhbGRoUTFV?=
 =?utf-8?B?UDIvdHB4VVc1NERiV0hxQzZpWTJpU01JcC8vNmI1UXlSckVzY3ZpbURYVk9I?=
 =?utf-8?B?U1hrMFVrS2JiNjJyYlRyN29SMGRDSitHMVN5SFRwTXphNDdnYndYZnM4WjlQ?=
 =?utf-8?B?WUJsN0d1aDFhd05vSGtyYXRERktCOFUyRjRnNnZQbVdST0NwNEVGVW1hM25j?=
 =?utf-8?B?OTFuWFJrRjNNbUF0eElFQlUwQkhMTVd5Tm1xVmFyYlJacmgraHhRamQwZ3Bu?=
 =?utf-8?B?Q05JOTRyZHY5SFM1bXJCeVVreWtxZ3pWUGRaMy94b1JNbnFXQVFLZzNzNitG?=
 =?utf-8?B?TVdBVUpUVndaZ25EbjJUYzZpSDZPeisyTUZ1QVFCck1hK1RYVi91OFB2VnFq?=
 =?utf-8?B?S1RVZkpSNkl5SmlxN3R4bk82MDNSNjdIdW92RXdzRU1TSG5TSFJOeGIvbFk5?=
 =?utf-8?B?UXZOcXZwNHpldkI3Q3hCTDgvcDZEeW5kQ29tR3oyYk1LZ1F0WnVaTDYzRSti?=
 =?utf-8?B?UGt4N01lZkk4RUR4K3lmN2xwdVFvQXhwbDhIUEhiVmU3L3FvVk00dGxGUURP?=
 =?utf-8?B?bDRuUVM2YnlHcE5WRllNdmVJQXV0REI3eHl6a29LS3N5Y2YyK2xyaFdzajJw?=
 =?utf-8?B?NURZL3ZFazcvSlRCc055OXBobkYxamdnVDhzcGVra1pZVEloNVZtRjVGUTdF?=
 =?utf-8?B?eUlndzl2clFhU1pXWmNveURjYnNiZFFnQmpMTzN2RUN6amNhbnhtS3NxZ2g3?=
 =?utf-8?B?V3QzZm9IdHZIM24wYkRlNkR2WFdSZ3RYNkhNTnJEL3FnQUpQQXhueTFEVFNq?=
 =?utf-8?B?WFpxMGtXVmtia1VBMG5Gb3lsQlZ6b0xQckVFYTRzbExBV0JESXVCcGNGY08r?=
 =?utf-8?B?VjQ5TXFNNmdhUVV6MkZjU1dhandJdlA0S3NxU3V1b05FOWt3RWkwTkRmQTJ1?=
 =?utf-8?B?U3hvVGs2NDBlZExqRkEzbTRybFk2OGFtTEVKWVBWZ0Ztb2VvWElOaUpRR0Zy?=
 =?utf-8?B?aXF5R2xoblowaVg3Mm1JWjNhM3VoOFJwMzJpdDBkekxxQUZ5bWN1QjgyZjBK?=
 =?utf-8?B?cGc3M21tL1VKcTFVOEpxNGlWdUJpL0xEdUlRTUZwQXBqeFRPT1lNc09XaXpJ?=
 =?utf-8?B?RlFNMGtSeE5RZE1lMHp1RTZZaFhqK0d3RjdsTXUxamNuSVV1Y1dJNkpnaVN4?=
 =?utf-8?B?MENrNEhLcXVtVzEwOGdzV3ZXaDlFayt1SGRtKzRieW54eW1ucWV2WjNGNHR5?=
 =?utf-8?B?dzBRSm1qdjlieWZMTDQvOGU1U1NRR21SZDhSQjd3YnN4MUJhMUJwOEM3djlk?=
 =?utf-8?B?cC9mT0UwSXZXUDNramVJaVVENUNEOWdtRXpocXNPaTJYWW9MN0ZkTEg1dm9H?=
 =?utf-8?B?Q0JiekpZL3laU2pVTUt4UmJvK2twQkRHWGo4QW5VQzdscmdRcEtyWmJvZVJw?=
 =?utf-8?B?Wkd0QkJ1dnZwN0c5L0hoMFh4NitwbW9rejYzTzB4NEVmVFp6NUNTUW5hRUdq?=
 =?utf-8?B?OU16NFYreTROcnMwQVV2WDdmbmIvYzZUUmZ0LzNUNlJuclFFV2JMckxVTmZp?=
 =?utf-8?B?WEw5ZE5SNWtZblIxcEswSXRseTFoK0ViSXlrK0FncXpmR3U1L3JuWVlVeURK?=
 =?utf-8?B?MWdvVGN4TmRWaHV1bjJVbUdiR0x6cHI1SDlSQ2xySVRLbldrU0xzbnpZR2Vl?=
 =?utf-8?B?dlFaazFqbE5VdnlIdTlhTkVrZldaS0RvZlBobzBNdmpVL3lnQmF1NzJVNlN6?=
 =?utf-8?B?WGJMaHNOa0h2UWlxUlJEWjZWd3pMSnpNQ0pwNmJqUlI4NUFPcTlRZHRsUExt?=
 =?utf-8?B?akE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	KLw3K9X4egwRPg2TLbYtqappC/VcvkveiUgUl8I4TPxNeEuRbIAAlb8t+nhdeoy7uEQ/w+gcX9OxZK1a3ItydNtPLVDsWhzL1K/w7ODR0V7r9/fWxQa6PjnoHn0V3Z+UbRW6EOu4BEAQHs8dI4I8usAjPNZ/Nf3//5/jBnFChy9hHbed3LpN7rih1//VL1gk4Oyt9bGf0SXd+6ahugERZzJMstm+gxRHwlEWNzX1EoqsXan5CwLQ9oeDk6YdjMa/iEIalNcClemXojulwgOm3WG/HOUh1PWxFEOV1xh3c/g5TBn9IRceEa0DJs6q7sAuAkuoLZvqAhB/j1Xcb/YparWMNqNHHjmvo5Mx6sTV0QES1i4xY2w/RtDMFnpx4WSvKo6/k+QIBxyv0lvwmsj6wy3RMxPB8MXX2u9Zkzzv9YZaAAqGHdKZoU9jpUZqPfU2VkoZ/MTXKHykjF/RYpMDra2odtwfBFVMX5Ou6cvLGorB68DOVYRCsveus03um00HVDAa+5VD/mLEmHXuRIXKsPffgsJ8ewI+Q8Lg/jkmoeR2dF71VGkZrFlI0+xXnq4J/x8IjCuyyiZuhbJsJhH9pVeGK/mKRJ03rFIewi7GhLI=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cbe2ac6-6f70-4416-1cec-08dd6e22e314
X-MS-Exchange-CrossTenant-AuthSource: BN0PR10MB4997.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2025 18:03:47.6654
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IsJUcy0+T7yRq4sId4mzGVWjfKgZIJBBtqv/dl17OyhYLJDTKX9AsWkAKBeaObL92ctckYZ+DpntSN2pXOflydz0KqsV06/hCQqQMo7UIJ0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB8126
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-28_09,2025-03-27_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 spamscore=0 adultscore=0
 mlxlogscore=999 mlxscore=0 phishscore=0 suspectscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2502280000
 definitions=main-2503280124
X-Proofpoint-GUID: ufkGR0JIXWGPTx9bbeiXdqsfsxMLkIYA
X-Proofpoint-ORIG-GUID: ufkGR0JIXWGPTx9bbeiXdqsfsxMLkIYA
Subject: Re: [oss-security] atop: Heap corruption

Upstream now has a bug for tracking this as well:

https://github.com/Atoptool/atop/issues/334

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
