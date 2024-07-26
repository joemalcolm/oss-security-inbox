Received: (qmail 7302 invoked by uid 550); 26 Jul 2024 18:57:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7266 invoked from network); 26 Jul 2024 18:57:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	message-id:date:subject:from:to:content-type
	:content-transfer-encoding:mime-version; s=corp-2023-11-20; bh=i
	YJgBLQdY9CHZar4kfbUHPUIxHXvZFtkH2m90F/c76s=; b=WH/V6cegQJR+25tOp
	XRtXqWXdXi2QpMPEWitviJrJT3+8WUHXgA+4Zup7deQO22xLyJOb3lvnq+jxNS9D
	hfTUo78FyzoDfUg5Sax95+gC/T8EcOURBC66tUGGu7C/88dq8mMkXOmYs85UZvR/
	T3qr+KPH3FCMalZvNNcKLMXXNPOd4FtSTGjllw2mr80OObxDRrfGgxwHnNp0+KZb
	LXzjBYfo3sZt47Qe8ef7HV9Dx7/mhcKNHGPdWPieoKzW27el3pySh+1I7uQxtXwi
	yMQ4QTeYC0H1i44eVKJK85JS/cIHX4zQWQGxprTGPytd5EmyL1E82RP4NAgk8V5v
	e4aIw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pVpKrnSo3BazQJckuJPXpKOqKUa5zR2gDJ/ECbDUCIR16u4hIY6GRGUTiOVffG0DolkRaNg4jlFhP6dgSxUClAI+z62YFpOxhe+w45A9yB6DUiL8jzjbqeWvGqmSnwjBrDGqQKGp+ErWRTNW7LDahPGUNGb70SnW809dpKtQHC6gF7CZ+ysoFYipsgpjWT2XnT9m9L/U/GRD92bbifVFkvbzNRY9RFwc2ydlMZTtKNPyGvpzhYdY4ERBnBeXV9xoO2MTCwhs0AGrxKutZVfSQhgJ1upLskq/6K7tLltRjrsgYgSTHNDeW0WFLKA9djmmIYzG/dwrok02aZ95lqHnsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iYJgBLQdY9CHZar4kfbUHPUIxHXvZFtkH2m90F/c76s=;
 b=UALs/ELPrfN59Xf8W1mYL3PcbxoETESY/Ltxi/z+HZSr5m86TjTl9DRn2tp3FVrB5ORDLA1LUWCqySW4B6IG+r1hU5sVqIxOsVNN4VtFMS/oBaHlrYLcJMruQCg+jDirtV4Lw8y5/zSKj5kvwqSGXoykMmR06eplTrMtphaCgEPuUIkYLa1R99ST69V+WNeLV0dp2PkfntxMUGaBcEyFPEg7MUBeIF1za2FzMxAj/dbSQhq7xyEplvzWmH9AokBps2LuE1pFuBwIJuzHO1q+cZXLkTKUAXY6wA0fi5dPEbLw8XwRFqpfPUjaUV38mK5FUeqajlnkGOhbRCqyNyvCPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iYJgBLQdY9CHZar4kfbUHPUIxHXvZFtkH2m90F/c76s=;
 b=aRA+66RDIdVDTxfFaMDlEWtA8LErV0vHKt7QFVPGcJFmyFe6QlHU6EkwTr3ZILMZFAhXIrw2cUF7yASse7wifkoAbx+grfpXky0IYWj0M/8qGB8SINyV67GaHMHZ0JOADzn/ApKd6Ed+HzTpotTWlnuVJlkXG31TwA83+8uPqOI=
Message-ID: <2309f1ae-1898-41f4-a369-c964498e9128@oracle.com>
Date: Fri, 26 Jul 2024 11:57:09 -0700
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
X-ClientProxiedBy: LO2P265CA0451.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:e::31) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|SJ0PR10MB4734:EE_
X-MS-Office365-Filtering-Correlation-Id: a63c2a05-dd3b-47c9-e492-08dcada4c336
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?bnpSYkhrYUZBd3prNklKRDN5WG5WZmVYZklXdEZiSGxQZS8rM3p5WTJXWEV6?=
 =?utf-8?B?Tk9YVzhqWXhjNkhLTEVoSERxeURWdnYwLzFvZjdFTGluTDNOei9HSmtxdnZr?=
 =?utf-8?B?UkFIcGd6SnFKcDIxRi9Bc3NJVURDQVlaZ0JKQ1pMUmh1MS9XakYxdmdiQmsr?=
 =?utf-8?B?VmNTT0Y3RWNSbTM2OUd4U1c2UUEvTFc3Um9aVE5kSGRhdGZuZjBxUFZaNFh1?=
 =?utf-8?B?MGh2OFllMnF4MjQ3RmkyRXJYZUMvWnBMdzRSMU5mZmp3eVFqM3BJNEYrbi9F?=
 =?utf-8?B?TXUwaHJsRC9UZy9XdVRjZ3VsRVE0UWVZeWxPSDUzYjdXVDhWUTZCT2VId2lE?=
 =?utf-8?B?cXhzcXhqUlVOaXRzdmxQZll5NkNEV2REeGR0eUU0YVdKU0ZUUVBDWkZuQWNv?=
 =?utf-8?B?UlAvbjdKNFpyZUFwRHM4aHNiVFNrQ0ZwVHdRQTBUWXF0QllVZ2xVc29GcUcw?=
 =?utf-8?B?ZmNqbjRLeWFHaTVkYjgxNk1MMitGMFFOY3JkY1c4T3lXOWJkcmpzZ0hkMzhK?=
 =?utf-8?B?MDZrZ3N6TEd4V0dYeTFGMFlNdDdhdkUvbEFmUzJkUXArNGNoWHlJcjY5anhL?=
 =?utf-8?B?UmxrUHp2SlNmNkxaY2VTZi84VGRhc0s3ZW5ldDh0RFZKUmhYWVVBOFJIUERQ?=
 =?utf-8?B?WllXRHJ6NnBwNm9CT2VPTFVJRXR3V012bUVueURuZmlPbm5wbFZUb1dITWh2?=
 =?utf-8?B?czBjKzRwNVlCOStzamhEbHgvdk16ZXhEWVFRcG8xWlZ2WkJwa01RU1dSZGFF?=
 =?utf-8?B?U1Y2Z0k4REMwbncxSUpsYU1wMTlObnNDcytZNG1NYlMxM3FOeCtFMDZ1Y1pY?=
 =?utf-8?B?NmhHa2Jsd1RRWmpkVnFlRFBGaDhISGMvZEVVakd0ZnZaMWVmc3Foc2srcHgv?=
 =?utf-8?B?SXhLcWo2NUtOMWorMHFJRmV4emxJbzZJb0toQm9pemltdVl1YVR4SHBnY0tN?=
 =?utf-8?B?THhRQVI5Ulo5eWpIc3E4SDYzN1Z0emZiSzZOQ0RWMHpLQlNJTVlOQ3V1TjND?=
 =?utf-8?B?NXJyOVRvbXAxaG9aQ2JGalFJVkZoYlN3aTR0eStWMEo3bEdTLzJVaUFrQXZV?=
 =?utf-8?B?bTRjZXpwUkNPT2RtU3FWVktqSFppZW9Uc20yUXpac05SV2FHUllvWEN2VThJ?=
 =?utf-8?B?N3pxZFZGWmJHL0RhWk4ySTlkTVUyZ29xMHFtb3liZUgrMmk1Y1hWYXZqYk5T?=
 =?utf-8?B?UExLcUQ4ZE8vS1ZsZFZNR3Q4c3JRY003M0dPN1lTRm9UOGJOeUh3d3h3T2tl?=
 =?utf-8?B?RTdCZE9YRU4xdnpoa0JnUThMYncwa0xsMDBXZE14NUMwbWZqWFJISUJXeG5k?=
 =?utf-8?B?eTlVMVBYN3NELytUTTlZblplYy9GWFNJWWtXb0RDa1lSWm5FTFQ2dmRRT1NV?=
 =?utf-8?B?RHV0cnJvVTdHbVZqT29hNkRxVExHVm5YZG9jN1dTM2llTGRFRmtJSXg5SUNH?=
 =?utf-8?B?emhHZ1l6TGRpOElXdmxtMEg1NFBIaEJ1OTBZUlkxclVURmZPcGtxQ3RSSTFy?=
 =?utf-8?B?TXNBNUFXMXY3enRNNklFSVZNTWVOa3pOeSttQ0VrSWdVNGdjbVlDNkIwNUt6?=
 =?utf-8?B?U0FmSlBCYnh4UGY2MW43WmFKVzhSMmk4T1YwTUJwNWhFUE9mVmd0Qkh4NFJ1?=
 =?utf-8?B?Y2JWVDNXdVlHWnMyWmJ6Q3ByalFwQ1FlKzFTRFlJZFlWL21wa0Z0YzN0ZFRR?=
 =?utf-8?B?MTliMUY1WkJjZ0tROEN4dHk0Q083d3RkcVh5NlE2NENxZWNHREZzalJ5QUti?=
 =?utf-8?Q?Vc63DGOJuCNrLF6quQ=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?UzNxbkdPTTkwaEk0QStoTFhwT2ZYaWdRbHF1Z2xaUmJpTjAydzRqVFNEemNt?=
 =?utf-8?B?RHd1a2RBZFFzWm9hYUlkcUFScEJ4OTMwZGxSb29qdmtHTnVYR1RFM3N3V252?=
 =?utf-8?B?eEtLcG1wbmZacXU5Q01Fdm5TWjlNWWhJRksrU2ZEM0taOHgyaWJBanU4WDBZ?=
 =?utf-8?B?OUg2clZ6dFYxc3hkSklnTy9uWlZXSkdKd2txYWVNZUQ5RkJISURCSjZKMFhI?=
 =?utf-8?B?ZVdldmluKzFrZXpuTFo4MS9HblZDQjcvSFNFUnNVa1RXUy9ZbmhpdXhGcVQw?=
 =?utf-8?B?ODEvVWhnaGN0Z2ZiYncrbGlGdzhmeDBjQXorRXdtTDA3WHZKWUxRbHJ5T2V5?=
 =?utf-8?B?eG96Z3p6bVhyVGw3VEZZSS9KeTltYVRibEV3ZElHVGF0SDZkYyt0U2NCZEZo?=
 =?utf-8?B?NGVVQ3dxSndKRzVQZFJiSmsxaDdSQThqQXBod0N6N0lZMWQzcXJwOElDV1JN?=
 =?utf-8?B?RVdCTlhsNEplU3N1RjgxT2M3N1gxR2ZhelFpVnJzZ3BFVXg4YVlFRWgyTUJv?=
 =?utf-8?B?OGROWWNPUjM0WHFuUVlTT2diNGVrSGpiSUh4bzBrRHNucCs5Um4renlxbHRQ?=
 =?utf-8?B?NnFZVTgwajlOQWRXN1ppWTVRdzRxb1B3NmFrT2JDbjlOd1BTZjYxazIvUUlP?=
 =?utf-8?B?R05YRzNEdXFLUmhpM0ZtMVVaekx2Wm1jSE9jaUZ6bzB4eXFvZjh6ZU8zUUlv?=
 =?utf-8?B?U3RsYTU4UStOcUZSSFRqbkptRkdMcUo1VVhpSVNsTVNBOVc2MVgvWTNtbURq?=
 =?utf-8?B?U3VRbGVnZ2ozbG1SL3pqVWZheHpmazBYZzZST2VUbTFXcTNKdkNndmxvaUIy?=
 =?utf-8?B?b01tVWp5RU1NY1Y1Q0RYOUY5VEFsV3ROdGd3d3RZZ0xSbjVCSVNjR2RsT1ZV?=
 =?utf-8?B?R2Z3RXgxaGVWTU10TTc3NE1mekMzVERBckQxc212RUZSekkvRURGRWlicWRB?=
 =?utf-8?B?V0RkTzNTLzQ0LzlwWGZ1S0dHL1Z3K3pyTXJkLzlhZE1CVTYvZldpS2Q1akdR?=
 =?utf-8?B?emUwWk85KzY5VGVNMm9RRkVKYzF6bjlabE5WQk9YREs5cHkxV1RYNEUrMElV?=
 =?utf-8?B?YzZCUmNOWnZIK0NhTXpyM01MT1YwYWJnZ2tQS3NvRC9Db2RlWHZpOU9XOVNN?=
 =?utf-8?B?UjlHekk3aytUSmdpMzZPOHZYRXowalc0M1BscE9KbGFYQU5HT2w4VmtLdC9I?=
 =?utf-8?B?a25sbHRGZGoxZTNsNWIwT1ZNUG5qZEhCdmJCOHRDMTFLZytzZVZvSkh5d08r?=
 =?utf-8?B?VmsxaXZmS21XcW5CdGhwalBjcFBxZFJVOWIwTUZidlNKb3N6cHFaQ0ZXcVZB?=
 =?utf-8?B?aHY5b2RwcEFQbjJiL1gvcURIeUNqR1YrdUczOGp2R1gvOC9oUjlLeStHNHJ5?=
 =?utf-8?B?dm9MZGszV2d5ZmlwTjFkV1RMVDk0a3FIaHVoZ1VkYUpXQ3cybUZnc3NydWRD?=
 =?utf-8?B?YytxcWkxMzVqdGZYSEZ5eGx6UmNpNk1GNFJEcVJHTWxWaS91VU9uMmtzVEdQ?=
 =?utf-8?B?VXZtWUxvV1lJWWZ0L1cycTEvcGxZMk9SYXpscEVZano4eEIwZHNrdElLKzBX?=
 =?utf-8?B?OVJZZnJuNlVsTVJ0SUgrb082NFhNODc5VkNmNHB6UG9Gdm52b2U5VXJhcGhh?=
 =?utf-8?B?cWIrT2dscU0vS0pCd2krQkxKVEFDdGQyVlg4WTZFWGhyb3Q5a294aWlKL2I4?=
 =?utf-8?B?VTdQMno4YTk2VHpFWURSR01BMGszWlZ6SnpveDFZWWVTeWJhVDNXYWJsUUZw?=
 =?utf-8?B?aWt3emEzWERvdlVFVWtrNmlvQ3F4SzhYUlc0QURHejNjK0dhTWZTd0tVVmpo?=
 =?utf-8?B?VHdoSlFGZHJsbndyR1RzZW5sdGhOVHU2NTlmRTNSSVhkWkg5RmR0aXg0RUor?=
 =?utf-8?B?bXJsRVNNNnRUZGNZZG5ueSsrUFVBOFVoM1VKYkxhd0NoTUJ4WDQ0Yk1MTnpG?=
 =?utf-8?B?dWVuUTJhc3dtcnAweGhrWXN6c1dFMG9teFJnb3hPemJMQ0NOUmZuNm9oclZj?=
 =?utf-8?B?RzNab1E5NDhyRmFUdmVuUDNodm9mdXdKQU8vMDMwMFFKTWVGeFRqTFlHRHZO?=
 =?utf-8?B?cTQ1RUsxdEVwNmFQTjZWM25pdXk4R2lHRkhYcGk1ditRbTdTZHg5QjZ2VHZM?=
 =?utf-8?B?TGh2NUduVmNkU01lRkZVdTVIUSt4bXduNnVxR3ZMRHF5K2I2SDYwSk1menZn?=
 =?utf-8?B?d1E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	+1S6xKqXq6K0Kwlsc31z/Il5Sl374O6M5v8yVAbuUa8VO385fESF1LoM/Plx2TExkdGweb+0qGX5ud/4CNLJbUoKlG4EvPKan8XGm7gBIPWz/GxtJxf+0rN+nt8s9IgIkfjxEaGB5FO42KKDiR2swG3NXqGqT+JGGhHU1mAr2rZjZC7kVJxnOBSkXy39KJgxVjcHzYWVftJ75y+JtRq+m295Aro7XTVBr0zhtKQ5yRbOk0ii5bLlmizjWdAq0BpSjVsFRWYPWKmcyK+ZWaDUgbeQU9nQRDTsZyohQFk/hoPuMH+2A58RBKL3zrBHNY3TG5t4OUOhRXUEzq79I9jzS1+qwiOIY3erwzJ0aCSJFv5jRpveMKOAjmOKucONMf+mym0UIyILDkA5xQ31Os6O9zVmLUqdfL6m+ibYXQkkrA7FUTFL3BVo29mIJDfYnXPLcKm6aegSjKvbVV9oIDnQGwT07ZwL50hGU3FsvdzhfAQ1ExZnhPI8NYBV7HIQHwN2YX4shISCdF/3rXHDm5HVxv9lkU30wN569ILoOKPol4dB8ZUMrMcvcUsP3k7Q6ztOA1zG0OeratH89TJqe3R65gH8G78/Gfb+tlMvoCWu00I=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a63c2a05-dd3b-47c9-e492-08dcada4c336
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jul 2024 18:57:14.3069
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p6itPFikWLtxPp+ga6H0Nlx8LmnxqtKet3WM1h74wcz6uEdKpcao3yD10bujCZdbG47/TmrHF3stlfSSOPFCHkKdXBFpxDiwKU2lGs+k7kQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB4734
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-26_12,2024-07-26_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 bulkscore=0 spamscore=0
 malwarescore=0 suspectscore=0 mlxscore=0 mlxlogscore=999 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2407110000
 definitions=main-2407260128
X-Proofpoint-GUID: va6bf59sFcIZtIZbNZ_vkQ9Pdjw7xQ0A
X-Proofpoint-ORIG-GUID: va6bf59sFcIZtIZbNZ_vkQ9Pdjw7xQ0A
Subject: [oss-security] GStreamer Security Advisory 2024-0003: Orc compiler stack-based
 buffer overflow

https://gstreamer.freedesktop.org/security/sa-2024-0003.html reports:

> Security Advisory 2024-0003 (JVN#02030803, JPCERT#92912620, CVE-2024-40897)
> 
> Summary                 Orc compiler stack-based buffer overflow
> Date                    2024-07-19 12:30
> Affected Versions       orc < 0.4.39
> IDs                     GStreamer-SA-2024-0003
>                         JVN#02030803 / JPCERT#92912620
>                         CVE-2024-40897
>                         
> Details
> -------
> Stack-based buffer overflow in the Orc compiler when formatting error
> messages for certain input files.
> 
> Impact
> ------
> It is possible for a malicious third party to trigger a buffer overflow and
> effect code execution with the same privileges as the orc compiler is called
> with by feeding it with malformed orc source files.
> 
> This only affects developers and CI environments using orcc, not users of
> liborc.
> 
> Solution
> --------
> The Orc 0.4.39 release address the issue. People using older branches of
> Orc should apply the patches and recompile.
> 
> Patches: https://gitlab.freedesktop.org/gstreamer/orc/-/merge_requests/191.patch

The commit message on the fix states:

> vasprintf() is a GNU/BSD extension and would allocate as much memory as required
> on the heap, similar to g_strdup_printf(). It's ridiculous that such a function
> is still not provided as part of standard C.

Note that asprintf() and vasprintf() are part of the POSIX.1-2024 standard
which was officially published last month, so these are no longer
system-specific extensions:

https://pubs.opengroup.org/onlinepubs/9799919799/functions/asprintf.html
https://pubs.opengroup.org/onlinepubs/9799919799/functions/vasprintf.html

though they are not yet part of the C standard itself.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
