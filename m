Received: (qmail 17876 invoked by uid 550); 11 Jul 2025 23:01:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17854 invoked from network); 11 Jul 2025 23:01:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=K54YW7/0df1z06L6
	+i3HqiPadhR2/z7lwQy/4D5nd3Q=; b=LkMmJ7HBOZmIHba7rJDVm2tVi2+pUAzI
	L6yVnlip3aIPjGg6E3LHgvaz8fl/6aB4MiC+I1JEmgSv1P/0poaTGdOC33jgq5Dn
	WxyP78XRzKhCTP+rjXiL4pDE+HSbgzQ6G9MIgsjaspkTm62CGFrEX4hh+6exFQ8C
	+d79IkzBX8jbYsiaStu43n5tBpICsCc13aLCv+3mkkXuGuwSi+79yilr3Y6C0+Ct
	MW5yThNMFIMlXgBiM86b1YqSkCnX7HOCymHAOeaS3IZsTiDOoi67HV9HiIwVS02W
	lR8Qx6zBUnpNReVEVFhRXdXW3ZiMlmsa3YrT06ZRJkvSengCxh3MzA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kbu2BLvjmrtSDV2efYGvI3GEskxmDJRDXI38ANAb76Pwf0rnXZ65PUyfWBVQWNow+yvz1alkTVioV/BKI3ZAZjGMjHWkOpa2QBpjEG2yDSAUsAij/9T8+dxm5PYlHr891EoVaHxet6e+zdGUlkMd0ekBihPJNwNv88Tpw7yMbri3K1EP0y9UmjuptpkfzjoBA/5JCeUPV4F4GLsTAl7eTwSZA+njgMK6iJXNBYDpIVB61fUdEPN9qcnfxsqNIL8czX88lmCDxVcNO7wcE11R7adLpgD8Y9a2aJqMfyYbNUEq7Bvxp4CuseVaL/OaVS3fR4DCredG4BLsZTO9rj7j9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K54YW7/0df1z06L6+i3HqiPadhR2/z7lwQy/4D5nd3Q=;
 b=YaPd8mA4FJYFTSP9z3PVwH03GPZPXrBzJDvnkyIAAyY7UkjJFhqLzGd27wc3EzOwtKloLypvjI02cIUD0DnVSPDH0vb8ITuVjVK0z9WfjHMMnayYtfzWVa30Sa+wtcr16XnsNGVBXEabQrXaDtGDclVSDOYgFTfgd5pmWsxuuTlyyf+f74aKtNINGIWvG+TyhsrxZ0ZAx4ARw30+mEFL7RlYePrjuEMqEAfr/13teMBEpmwNCNwP9Mue3qYWenagPpRmrgD7tlD7PL2j463Y33tXvhEJ+9e3VuXVdkgdmVwgwjyxKOLOQnQxIvwJZQ9RhLbN4lWOw4F9FpYIoJ9J0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K54YW7/0df1z06L6+i3HqiPadhR2/z7lwQy/4D5nd3Q=;
 b=Hjne3kqzVOZMQPPJG1zjvrhgnUvnM0UU4AZK/mLV0Eor78lAINko/W8aHqzBByom8EFWoBv+ePDWcPESPkge/woSE3P2Lp1LGKtBr2TjtBpXeuG7NO4jAhIWyG2x73P9jzUEIay07eOX8hGCSAyfpI+X7A79rfTFADwLv1+cB9k=
Message-ID: <698574a2-82b8-4769-aef7-2569e2f6621b@oracle.com>
Date: Fri, 11 Jul 2025 16:01:16 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
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
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY3PR05CA0034.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::9) To BL3PR10MB6140.namprd10.prod.outlook.com
 (2603:10b6:208:3bb::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR10MB6140:EE_|BN0PR10MB4823:EE_
X-MS-Office365-Filtering-Correlation-Id: 487d2442-6cdd-4636-32d1-08ddc0ced84f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|13003099007;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?TzgvM3F3MTFlRlJ3SitKbEVJV09LSkhuUWtzcTF0MXBQdGFSUm5ESCtnUUl5?=
 =?utf-8?B?UWtKQ2ZkRGpjcmo2OVIxcWVXSE9tR0VzVjYxRHFrbnV1Nm5VLzQ0aU1XVUFy?=
 =?utf-8?B?SEcyb0srRFlLdXcwSkJidnJVUVB2UnYrMjhKcXJ1OVZYUnJpVklRVWRIMWEy?=
 =?utf-8?B?cDM4ZSthRDd0aFc2emdnNFBvTmpHZzRndVVock8rbFNVQnoyZ0xUOUhWQUg5?=
 =?utf-8?B?RUFsc3V1bUZkaXVuamFwcHJCOVpDMWpzSWdQTXZ3YTZYQ2xZWkJpcGJXY1dv?=
 =?utf-8?B?ZTlySm1GTDIrQzNlK3BMUFN2RVR3akV3d3ZWbGJhdDBtdkkrVWNjMnVXYVcy?=
 =?utf-8?B?b21CK0U5NFcwZ3JsMVoxaGx0SEpTdFVUYTlvZ0tVRzRlREdFVGIrbkIwVUFz?=
 =?utf-8?B?aW5yVGN1OHhvdVdwUzRSVStaU1ZBZHNPVkxGZEZ4Y1Y0WXFiM1NRZkJybFll?=
 =?utf-8?B?MGR3SDJFMXpubFhhR1JjYVJKZmMvVlJOamxrNXRieVFESUtod1VUV0J5VWUz?=
 =?utf-8?B?aDhSUENGazV1SFBRSitiODBMNUFwVEV4RVFTN01NOUl0UUZ6S1N3ckI4L0ZE?=
 =?utf-8?B?ZDFWVUFmMHNuM0N2ZHNXRGRsc0dOZ0NRS21zZFZydkdRSFlvR1NSYUZEWkpH?=
 =?utf-8?B?ZktOZ1ZkcDZwaWg0a3dHR3JGak5hWXZFbTBzak9IMTBRaG5jcHUrUUI0REFo?=
 =?utf-8?B?dkdWTzBSb2J6NTNiQzZyc3psemhldnVISWR5VENRRkdDTTA5eEhGZHZYQlJ4?=
 =?utf-8?B?ZnQvUTJvYk1mbFlYbnIyUXV0UXVQV3hxVmVkUVgvWkQ5aDhER096Sm1yTFNY?=
 =?utf-8?B?Sm9jNFpKTHBlcTYrekFrMEFvZjJyeDFqNDRrK25CUHdFZW5GZnJrZ2NxSlZl?=
 =?utf-8?B?WGxiMkl6ODYyWkdVM0ZHMzE3YWJvZlI4bmxiaXU3UlRTU2M5WStTWUthNGx1?=
 =?utf-8?B?ajZOVm9xN1NKcVMzNHlrQkIrdENpNFl1d1NCTjRscnZxSDJKcWllQThndmlz?=
 =?utf-8?B?a3lVQ3l3Y3JvT1JvL2NKbEhCU1NJRWhSTzgzYmhhV1VxTCs5SzdrVnREV3Fp?=
 =?utf-8?B?RlNIYTBCeFlTRTZla1VKNFRNRitsVVY4ZU5xK2V2bVN5Q3paR0R2RHBKMzhU?=
 =?utf-8?B?TmRXeEZPOTM1cUJ4YmgwakVWMzBqcE5zNVNaM2drV1htaG9PTDVQOGtnL2Ji?=
 =?utf-8?B?MWJraW4xY1loS0lEc1hBKzV6RDJPVXl3Z3poUHJGdzFhM2ZQZS9WRjY4WjJm?=
 =?utf-8?B?WHhuNHZ0WVNrenVnT0tMdmxrWHFrdStzQWRRZHFQbkxtNkQwT01HbmNRZi94?=
 =?utf-8?B?ZStRVWpnVjM5R21EbGlzK0FFQjdEL1hPekFzbjJGOGpmcUVXSVdGT1hvOGNj?=
 =?utf-8?B?US80MzF5bzJFT1RsREhYbzRMOEVRbEw0VlhJcWhmL3dnUDBXY2s2Y0VZR0Jo?=
 =?utf-8?B?Tlo5RXBPSWQrUzcwVVRJTFJEakhNWUxlWFBoWTNoU1JGYVhXZnNIcTZobHRU?=
 =?utf-8?B?NkRrV1h0TEpXRDZNY053cXhITzJKU0xVelo1akNWM3VET3R0bmpnajdrdTJi?=
 =?utf-8?B?SjNNdjlDTE10L2NSR2QrRnJnTjZ0ZnE2TG5SSkxmejhZQ3dCcHNTM285L0U1?=
 =?utf-8?B?ZXhxZW9yK1krT2tmZzhLNG4vSVNQamk3OHdUMEFsTDEzUGFGMFh6WkJaWlZJ?=
 =?utf-8?B?bGRITXlJS2lMcS9nbXdSWjdJNk1ScUlyY29GL05PR1NYMWRUWGFYazZ4a2pu?=
 =?utf-8?B?U1VoSU5xNkwrOERhQTJxODZKVHhKQlBJUE9RMXdaZXZpWjdzU2htVk0rQjAw?=
 =?utf-8?Q?KWjmCbgKCLh3N84YZgzXx+BhAMIwejIyi1glg=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR10MB6140.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(13003099007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?dDFHZDN1V1Y4TFd1Qncwbm5XdU8xanI4cjVlTi9hYWJJbkRyZjhDUUhjQ0NM?=
 =?utf-8?B?aHRFbCtwTzFvMzNNdkEvV1pzeHR6eng1UUh4VTk3R3VIY1haQ2JBY0tYbUwy?=
 =?utf-8?B?VFN4Y1VrUXhWNXhPS2tPNmtoV0UxVzExRU1rczFldWVOYUptYjFQOWt2UGZm?=
 =?utf-8?B?eHY4N1VkZlk3RG8xQTBPY2EwL0t4SjZxWlZQTFYxcm1yeW9xQmJkZ20vSWdR?=
 =?utf-8?B?eENxNU5VMys5aTc5anFhUk1vaUV0MjBxRWVGVHp5dHF5VTZMOUp2ZEw1WXJs?=
 =?utf-8?B?dUkzaDhsMmwvcTRkeGQybno1Mi9ycXBiV2djUjZOZzdESHUzZkdXb05jQkVl?=
 =?utf-8?B?b2hlZTM4cUhWM2ZJRXhDbnFCQzhNQmpOOVJMMWUvaWtkOWJ6L1BpRmlKdWpX?=
 =?utf-8?B?em0ycUlSTnVXekZuM0F5UGJjcWtGb05DRVpUUmV6ZTROQU1STEtsSTVKMzBP?=
 =?utf-8?B?SGZ0M04xeFZQbk51MU9aTkVuQTQzaGxkcFEzYWp6OWRKNDVLYU4vdG1TSlN5?=
 =?utf-8?B?eFVZaUliVlFML3lSN1QzWkVpUWkxcTB2VlZUbE82Z0JLOEd2YStxRFpSajJ6?=
 =?utf-8?B?Z2Y3Vzh4b3VWUlpQSU9hOEltcUhETVFWblordjRoZ1I5TUN3SlA3c29GYjVu?=
 =?utf-8?B?dmZYS2pmZHQySmh6YkFrSEF5UkNWVjJhOXc0QUJkQzRJakp5MXU2TjdpT2F4?=
 =?utf-8?B?aC8xUmpmdDllbTVkM2N6RUpJdEI4R1FhUXdDQlZiZXVaZnEvVStLUVl4RHVR?=
 =?utf-8?B?VlYrVDU1RXVJbUVzNzM3YlV1WDMwbENkc3FtcUFEWjJMSG1OZENSQ3Jabmox?=
 =?utf-8?B?bDZBcGZIUUNRc1lvWUJ1SzlRbDlOMEphNEpPZlluSERHSnJ6Umw0TW1OeXE5?=
 =?utf-8?B?VGF1MVhSWXhaQ1FUd0J4K0FTeWcrbTdFOFYydzR5N2pmUFZFRkRFZWtqcWRp?=
 =?utf-8?B?UmhuZ3VNa3lMOFRIL1BtNmxlUGQ0UW1wbEJ2aXhkYyttK21aMWIyeWV1akw1?=
 =?utf-8?B?WnUzdkpPM3RKcmV6S3RTRkY2c2x3bVdwMlNUcUtLbUg2UnBJaXJjRkRGbWEx?=
 =?utf-8?B?Z0l4VE1RMTlNMHRrbGFhUDVSRzd4UVJkMk5IRVcySllzcmpMSllsWnZMcjJx?=
 =?utf-8?B?MU9PMXVlUERySmJOb0k3QVBpV0R5aUl0MDZzRDBIbm00dkF1QnZDaUwrOTFk?=
 =?utf-8?B?bTF6VVNMdVdINDFGSXhHRDUzMnF3Z1FEdTVpaE1KRnJCZ3NiTi9uMEYvblh2?=
 =?utf-8?B?eGFaT28wWUlwMmRIaGg5eWhRWkFkcFc5bFhaTXQyVEdsU0hLLytvd0Q4YWpU?=
 =?utf-8?B?b2MrOTJ3RGw1MnMrVld3ZmtzbHlyYys1VE1vTlZ6VEhxYjk5ZWtLZGRQejkz?=
 =?utf-8?B?WWV2NVkvcnRROHdDeDhpTjVSSFZZNEFFcGpISGJOSC9HOHBJeTFqQktIZmJV?=
 =?utf-8?B?RzlsRmhHc3lybjJEZmNwbVZUdmFiZDFNQ3k5OGY0OWRUTHpsY3E0NUlVNVRq?=
 =?utf-8?B?R1I2ZWIrNUxQTnpab3FyVmtUSEhYZHYydnpQQm5QcDVwVXZ3aFZzb0JDNkcr?=
 =?utf-8?B?Sjh2Ynplc2VoSlVranI4Y1RuM0d6NE5BN216OVY1aEl2a1oxbkRBbG1wdHh3?=
 =?utf-8?B?VmM5R1pYSGZEKzNSTkV4eGJzU2M4UW5qd1IxZ3c5bEdSQ1RrLzBMWFF2OHR1?=
 =?utf-8?B?SW8rekdhZXpUWHNzSTdNSld3NW00U0tmbVllN1BaakpHTU92YnRPNitTSjlk?=
 =?utf-8?B?QUppeW5SVUpaTWtnU3JjK1cwUTl5Q3FEekdIaUtBZVNHd0QxcEhGVGVzc0s3?=
 =?utf-8?B?YThpc2lweTlYaFprMEo3bHhqdkl2RTRZSVN3SFZkNW5VV0dqUWJadHI5NFFX?=
 =?utf-8?B?cHVic2xEbXpGZ3VhMTg3S2JZc1g0Q05CVlNqOFVCYmpJeFMwZWFhTTg5ajBY?=
 =?utf-8?B?WnRGTUd3dVlxY1htR1J5Z01iNis4elAvZ09qTWxEV2l1MWhSeTVqR0NIUGZX?=
 =?utf-8?B?VDhTWktCOU8rblBlMmZoWVljL2thdGNJR2ZBRTZJUlVOM1c5TzJZVzBiampE?=
 =?utf-8?B?SGpZZFlkSDRqd0pqSlpWNkRwanFNOTVSZVlHM0UxcXZBcjZHSFZDK1g1ZUZr?=
 =?utf-8?B?NXAvbXFiTyt0ZkRYVy9BVUE4TDlXcEJrL1ZYc3FjL2NXNWt6SG9rNEFqMmpJ?=
 =?utf-8?B?RFE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	jvO06+06DVaUs6LYKfLf/TMXqwfkY16QiB1oehDbYtHiMsHK2iS1Gqc6r9Z682Tyya1tr21BDxFmqrKoamPGlLElBpeAB3zsM7BUFnvTmBgC0HWeDpmecl9qHfGvbXEZuASsVb/T0Ra8Ay6rYLRJ/SF93FxXEAarOWotv8AwhhQCMXAHi89sA25XUh+QD3Zoq1eFLeeRtOVWvrdSlGPErSaE4LLzc62dAYLmAqKSJHttWoIwzLkr9JpbMkMHzbMyGsSw5YLizZzI4oeIMwWjErvynESZM/cQ4jJ4IdHrrMVXmvXlMXODSo15VrmgUK9HXpFtfs8JSYj8uPzby7fzeK4TWMOPt+SL1XiBkIPPeu7b8YfF47YHDp+Y4xusLB7GmTEXGo/hPdig+19GfgXsB1dcDA49uAAinKkayNsI3dA/9v1vL/Ce79xY64Us7fPv7e8/9hMBdFvDJvWFAd5FI+Xj0oTcpQ6Q1pODzZTg1sNa1teUfAXouWCL59EHQkMGmXYycCLXCrx2aW06IL+ceV6tEeew9i+RMI8n9FOWdrzrHDFS38NV0SbAYQdjIgmJFKUW3u5RUv26qlSA2S1JzbtdmSJNmA0tWi4H+WSJ7nE=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 487d2442-6cdd-4636-32d1-08ddc0ced84f
X-MS-Exchange-CrossTenant-AuthSource: BL3PR10MB6140.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2025 23:01:18.2706
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9RhjfxSXWoT16PPKh8oIrc1k/eEWQIJyr89FDPumNNrI/WsKxvsNoOVaQiuIIrQZxoLPdFCvQIm6TcecSoht95CQaDHKfWqSFF6xl+hHyhY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR10MB4823
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-11_07,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 bulkscore=0 malwarescore=0
 mlxlogscore=999 spamscore=0 phishscore=0 mlxscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2505160000
 definitions=main-2507110174
X-Authority-Analysis: v=2.4 cv=ANhOBtK4 c=1 sm=1 tr=0 ts=687197c2 cx=c_pps a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=GoEa3M9JfhUA:10 a=NEAV23lmAAAA:8 a=e5mUnYsNAAAA:8 a=yPCof4ZbAAAA:8 a=bR0R7wzGE1FtpUVPlYwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-ORIG-GUID: E-Ytn_ydQ761C32Vz7evpSq8UUOpFOGA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzExMDE3NSBTYWx0ZWRfX7S46UL+I+klr GCKuC56N5N4QjeUBrBVqst7n7SrSsWPYJrY+igtJMaleEv4oQnfGfzwJX1eelP8yWOpoyZavlEK U5jWNlIvNqAmvOEyLSMi6BcUz978ryjmAVsTmnAmBLsrw5zsRumxT6PcRNoNMDruINp7ERcZfvP
 5Xd2MYkQ5+G9TtTqepI962Asv2bOC12SbxXEJQG2H+Q4JSf0IPUc/qeFWbSfmP2XL7C3zTRrOmv Z1pqBqvOXvK0BRXIYSzyN3KUUtrkyRaFFpSWWA6FP2/hnwBC5X4HvVOi2ApitNEReiNTbmlpxGy x3vxfzOPPisE18QFxmmbDr4FmALIMy5MGlgHTBjp1DOaANF/Qc6ZinaTaJOD52oGPd0dHSBrgco
 YeZd6CXx1z0NtMF/fMgUi5sxRiLTzRohiXRGTgeqQWbUOWmbExm1+T2XdpCh+gx21L7QAAqu
X-Proofpoint-GUID: E-Ytn_ydQ761C32Vz7evpSq8UUOpFOGA
Subject: [oss-security] GHSL-2025-054: Use After Free (UAF) in Poppler -
 CVE-2025-52886

https://securitylab.github.com/advisories/GHSL-2025-054_poppler/ advises:

> July 1, 2025
> GHSL-2025-054: Use After Free (UAF) in Poppler - CVE-2025-52886
> Author Kevin Backhouse
> 
> Coordinated Disclosure Timeline
> 
>     2025-04-03: Reported as a private issue:
>         https://gitlab.freedesktop.org/poppler/poppler/-/issues/1581
>     2025-06-02: Fixed by limiting the maximum number of annots:
>         https://gitlab.freedesktop.org/poppler/poppler/-/merge_requests/1828
>     2025-06-03: Issue made publicly visible:
>         https://gitlab.freedesktop.org/poppler/poppler/-/issues/1581
>     2025-06-03: Poppler 25.06.0 released:
>         https://gitlab.freedesktop.org/poppler/poppler/-/tree/poppler-25.06.0?ref_type=tags
> 
> Summary
> 
> poppler uses std::atomic_int for reference counting. Because it is only 32 bits,
> it is possible to overflow the reference count and trigger a use-after-free.
> 
> 
> Project
> 
> poppler
> 
> 
> Tested Version
> 
> 25.02.0
> 
> 
> Details
> 
> Use-after-free due to reference count integer overflow (GHSL-2025-054)
> 
> poppler uses the type std::atomic_int for reference counting in four locations:
> 
>     Annot.h
>     Array.h
>     Dict.h
>     Stream.h
> 
> Because std::atomic_int is only 32 bits, it’s possible to overflow one of these
> reference counts, which can lead to a use-after-free memory corruption
> vulnerability.
> 
> We have included a proof of concept which triggers an integer overflow on the
> reference count in Annot.h. The poc file is only 3.1KB in size, but contains a
> stream which decompresses to an array of annotations of size 0x1000000. That
> array is referenced by 0x100 pages, which causes the reference count on the
> annotation to be incremented 0x100000000 times, so it wraps around to zero and
> the annotation is deleted. Run the poc like this:
> 
>     pdftohtml GHSL-2025-054_poppler_refcount.pdf
> 
> 
> Impact
> 
> It’s possible that this use-after-free bug could be exploited to achieve code
> execution in poppler. However, in our testing it took 12 hours to trigger the
> use-after-free, so in practice the risk of exploitation is low.
> 
> 
> CWEs
> 
>     CWE-190: “Integer Overflow or Wraparound”
>     CWE-416: “Use After Free”
>     CWE-911: “Improper Update of Reference Count”
> 
> 
> CVE
> 
>     CVE-2025-52886
> 
> 
> Credit
> 
> This issue was discovered and reported by GHSL team member @kevinbackhouse
> (Kevin Backhouse).
> 
> 
> Contact
> 
> You can contact the GHSL team at securitylab@github.com, please include a
> reference to GHSL-2025-054 in any communication regarding this issue.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

