Received: (qmail 18252 invoked by uid 550); 3 Oct 2025 18:55:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18195 invoked from network); 3 Oct 2025 18:55:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=w8RJIKXpl0QS5i8r
	GPQj64Y+LOL3Kri6AhCjA2IpOg4=; b=QDvJ/V7+wSn4iM8WJPaiHnHM0Bazx1H9
	YQwjTrf+SDfzWAgU5bIhyPYvphp/Lqc2weYpvuo7WSM6La0IEYo8B1btm+QgaQMK
	LqmRwJni2EGqxQU8CV17QE0xsCnD64P0ndip6ph4nPd5JOIGPNvfDvUVh956Xwt/
	gN1FwPHbWyI8qaacyh5keQsXgsRXkSBaQmrEZPID6xWiWKcoE9IEC/BpZt63BkIH
	7w0Jpv05UFNsdbwg+vyxwY0xBWQwr3ecq3uDH82jNpN0ZFQMzomz5M73qRW7oTjR
	kMJwqGveKin5/MgcVuQ9lEA9p97ZV0welMNW46Fgt8qwP2sLDe3v+A==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ngTDPbhTt2ViVnT4XXFQkyXvivT4eheDZcWJXDRuW3FqwexEXydClts94QFjjE/TfEwXz4EAuay65K+Tp4kmj/Z04mqO5sFFAf+7FN6yjOnpsLia5P01bwhHZaId8HWALEQAu2hRVST0i2P9Sd2BoTWqGOg+/JC4Do94HHZXRTiDZxgIbnpN6TSOjJnDm3PmVjf+F107JTHiVkW6x1O1E4lpjQxLNumNFk2f9lq7001NDu3yVuX8M7CirVg+PHGA4ScLfqgb0aJcduh1NF3+Ab4osiGygNrcuNCVrtAoGRtYMb6oln4tkigkCktV2W4JQn2Xq3nGa60HOUuQ32USKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w8RJIKXpl0QS5i8rGPQj64Y+LOL3Kri6AhCjA2IpOg4=;
 b=h4XsWMc5R709lpxkoa5xMWtIzqaHY5i0ZvllhTsBx6o1Id95TQ4hZ3kHIDpOQE++SYJZKloJd2ZIQfl9IwDMWtTHeo9uNohEeO/T8yoV76S5oxrBDBLtF4q8SqQmVyPB5Ap0QDbDMYiycbm9gYL+D/vxeWT8TcpxSSGoNyeoj3xBfxQQAwoYzreUlphKIM7kgh3PbCcLT+xVBEViMDPo55Y/FpMWzaAwxcjsV7qbSE62oB81T956GEkTdChVrPmfKUJkXWNv4XgU2F3ewYLkblIuZz6Mu0fSopSWYM3a1V3r9y2ZAneuKs089QFq3LZp4/8JqCu6IVMpYDKfiRS99g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w8RJIKXpl0QS5i8rGPQj64Y+LOL3Kri6AhCjA2IpOg4=;
 b=O0JlNQ+xUzaEDnJ0x1uzr22l5xJcAb6Yd4zyEooPBlBsCqWZ0o/oBZwvJ9wjWIo+Q+C2/4hejMz9tZp1mV5T735fDN12jRj8DxXr/ma7S3jSwr6i7Wu4b5YpiKhzArMRd2plRPzZ++5KAMG+bU9I8XT0Qy6Ak2KrBbqhgCrvyHc=
Message-ID: <634fd1de-79fd-4968-947d-5eff85f59b9d@oracle.com>
Date: Fri, 3 Oct 2025 11:55:05 -0700
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
X-ClientProxiedBy: PH0PR07CA0005.namprd07.prod.outlook.com
 (2603:10b6:510:5::10) To BL3PR10MB6140.namprd10.prod.outlook.com
 (2603:10b6:208:3bb::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR10MB6140:EE_|CH4PR10MB8146:EE_
X-MS-Office365-Filtering-Correlation-Id: 8578abd5-a999-41af-f16d-08de02ae5fee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|13003099007;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?L25iZ0ZPZ0V3UDU3eVl4YVUrYjhSd0JkZlBLeGlkblgzUjBoUkMvckx2enRK?=
 =?utf-8?B?NEEyVCsvaDBOSmhXelRoSlZXKzJhS2ozaGIraDEzTVhHRWZqbHdoVk1nUk9P?=
 =?utf-8?B?Tk1XYjZGcGM5TU56OFl5TndNWGw4Q2VaSFBwdGE4OWJiZ1AwSFlvdSt6dVJt?=
 =?utf-8?B?c1pRMCtkaTNlWDVHbEQ5QUxWdDVGdDd6dnBBZXhvQ1Y2S1FLcUV4UW9IK3Ex?=
 =?utf-8?B?NTFaWjVMTy9RUlpSeEN4VmlScVlzMTRZUDBnUUw5ZFRMREVvdW9SOVZFV3Mx?=
 =?utf-8?B?cVVJeFRyeVVPWTRkdHNUbEUyYW4zWE4vbHkzeHNDNGliRWh5L3NQUmFSVmVo?=
 =?utf-8?B?MVJvRVdCWUlrOU03UVRnNzErb2NCNDJwMktzZVpLQmdmbkV0ZW5UOHFWK1Ev?=
 =?utf-8?B?Q2FTNXF0dVJsKzlXcEN6VlNBbUtFekF1cm1YaU5HbDBoekRaQVZnSTFudHIx?=
 =?utf-8?B?OXlkeG9QalVlL0l6OUs1cHlaZzlSZGx6R1ZGSlBkMmhBa0t3UXVHS01iT3dU?=
 =?utf-8?B?YkVBS3JFRUMyN1dSN3k5Sy9pdXVLQ0tRTUl2NndRQWRzTFVwbEEyYSt3NktP?=
 =?utf-8?B?aVQvZ3IxZ1FTOW9pWUVPeHYrajM5MEVLblI1UWl2OUtza2ZNZGY1SXJBYjRK?=
 =?utf-8?B?RCtJN0c5VU55OERxVkdNS00rTURtSmlhY1BQMjFoWXozYWlIVGsvV2hGM2Zl?=
 =?utf-8?B?Q3BLRVMxTDIxdnIyZDRXVkdwYlljOGxCbkRhb2l6bitWSVF5YjJsK1ZtOGhO?=
 =?utf-8?B?TmtaZm4rZDV1aUY0Z2Q2QU1xOTdqMWprUHlmeWt1djR2ZHkvVjZyQXVWKzh2?=
 =?utf-8?B?MFlpT0FtZzhxTndBWm1icWYwTHBWMHdMNnhLU1M0WkJNRmJhajV4NGlFV0tG?=
 =?utf-8?B?b3htaE1LMWthWjNteDFNY0Y5MmxhQWl4VThqSlR3SWtlaWdsYmVEM3lIczZp?=
 =?utf-8?B?blQ3c3VMOTR5T0U3WWQrdkEzRXo0cHRJY3NTTlU4MG9uUmVLYXphNjFrcjZQ?=
 =?utf-8?B?bkdUbXJUWmtkSHM5VkpDRVRHKytYZUQycUQyMTUvczNoQUZ2YWRwMVN5M3hD?=
 =?utf-8?B?b2pjRitmbWtBZUNFZm10TGNVTGpISTcvR1BITDJiZWFQNS8zdGR4M0NmT0tv?=
 =?utf-8?B?QVRCVlRrbUJ2cHp0TE1rckVSdmtYWlR2WUlKaGZpeWcrSXc5WWhtQzBUdGdT?=
 =?utf-8?B?UXduZnpXeWdQMUtwSnpoV0V5dmtiOC9mVk1EOTBHVUY3eXl5Um1sRGhzeDRx?=
 =?utf-8?B?WXpQL05oSFA0eCtPRXg4cXQwcW5HWVNRcVVNdHN2c0hiZkk0NzZVN1lFbHhS?=
 =?utf-8?B?cmpWem5qWnN6emdKRDNia2oyTWRvT0YwVHNFSzd4YjNtU2V3ZUlCTWs1VFVX?=
 =?utf-8?B?eFNOZllFMDNWN3VHUmlkK0dxbGJSVEN2NEhDS0ZNV1ZaajBOT3A0NHVva1Nk?=
 =?utf-8?B?aG44ZXJrSXJuQlRId1JEQ1VyWWpZdDRaR1ZEM1pIOURTU0NSbGtOQ296aXkz?=
 =?utf-8?B?S2s4L1FsaG1yVER1OC9ublgxTjNhZlJxWk5oZjNMQmVVNjNFcU1Qem4ydmlK?=
 =?utf-8?B?UmJhUW0ySFhVVjBtd2FMZUtMaFkyc1RGN2VicjVNMklPbG5jcUFwalZiUXdx?=
 =?utf-8?B?cGZzRk5KR0xjOHdobzJJZkx5cThSaVA5SVNRcXE3d0l4dXlDV0RadUFRRTR2?=
 =?utf-8?B?dGZPcTJFaDVaWEg0RlF3WVF5VVV6WFU1VjRSamtzcXUxS3pUeGdpZWt4MzVr?=
 =?utf-8?B?d1JDQnZDZGg2eDBuUkFkbS9BSW5DVHdWekxmU2FjRFQ1bzJBN0l4VDlhYXV3?=
 =?utf-8?B?aXFUdWVvNVFKRERPZmxCLzZlSEFTWjlkMkRRS3hFTDRQTDJQYWQ4YVNaRUg4?=
 =?utf-8?B?NkU0YkZRTWZiU1Rickc5ZHR6K2JWeTArcVJzdzdYUmN5MlE9PQ==?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR10MB6140.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(13003099007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?VitEeFNQNTJaSC9VYkxGOStsUDFrNlF2cUt5WHRCeUxVbDYvK1V2WDBhQS9N?=
 =?utf-8?B?enVkb2NmRkpUS3VQMmFZSlc4RHpTZkhqUHBNNG9nSDR4akkvc1YrOWVmaFpy?=
 =?utf-8?B?amNWYVpPdG1jb25OZmxDSkhlZm9pbE1QYzdUR2RkcU11eXRvbVdWSGFDcnlw?=
 =?utf-8?B?ZTZVOFN0QklYR2FhVXB4aU9SZ2V3cmNVRmNWVElaU2loZ3FHRUdIVUJ2cHRt?=
 =?utf-8?B?bU1ES29IOCtWT3VKUjljRGlmT3gxYzd0RzlVdUR4N3ArazB5d2RJd2dBUk1P?=
 =?utf-8?B?clczdjYrbmd2aFdlQk11b0g0Sy9TYk9QOTFWZXcxSzhyMFY3VTAvT3hCbHJI?=
 =?utf-8?B?eGh5Sy9ENStwdVE4QzJZdFB2QWExTllWelc3VnI2U0NzeTQvZnhLZGFXTVpP?=
 =?utf-8?B?TmNRQXVjVmR5M0c5WmpPWnhVdmUvelJiUlpFWUx6OXlWMU91U3BuQTBvRlZq?=
 =?utf-8?B?bWFzdzhIOUExNVBBQkhqTENlamhBbEcxYkJqSFBKQ3c2cVg2Y1ArQVBucWRu?=
 =?utf-8?B?WUZrMTJCK0g1TkltMVB5R1IyZEdyTnRlcTh3ZnhNV0NWVVJjd2VDbFY2SGhh?=
 =?utf-8?B?VlFoUnBoTWlHVENPVGo1NUsxelZZc0FJNzgwcTgrVk9EcktLYU00dUJLUjBs?=
 =?utf-8?B?a215UnRORTYyd21NWWoxLzgvNTlCYnVCY2c4ak9lV1FNQXVHREkxMGV6bmU3?=
 =?utf-8?B?dDdNZ0ljTHVZeC9EdnhJUzE3ZUxmOStEUTFOM2djMkt3bzVjTWpZUlZqRUd2?=
 =?utf-8?B?M1lYdzQ3ZjI2SGJRUnlNQjBtKzBDd2FmR1hVWEhDWHJJc1lqVjBaOUNGR1lQ?=
 =?utf-8?B?OFBHUFNZRFdoQU1IUGhoak5lZWZRVm9JSG1pN3ZPSzE3OUlmb3FvS2o1cWRP?=
 =?utf-8?B?NnVubGVyeEhPWVF3SUVYZ0lrNzhKWVcyeXNsY1o1cCt0cFZaYTNwRkpVOHBV?=
 =?utf-8?B?MktvRXMvSVNJVlNGUmlMZWRNV2U5TGNKRWxZVHhQSzFrNG5NWXg2SmhlK0tx?=
 =?utf-8?B?azZoczc2eUV3Zm5IejkxczMzL0Z6c3ptVzBQSithVmNaQk4vUVRnbjF5U1ZD?=
 =?utf-8?B?KzJpM29pNVZDM2tSeXFEQnVNSW9TZmF4eGF1TkVuNmNkZkZlMG56ZnU5Qzg1?=
 =?utf-8?B?SzZRZDY1b1B4anF4WTBGaWRJN0hpODMrVXZ5WWczdnZpK0JwcjVoN3FJVjF5?=
 =?utf-8?B?dlQycFdGc09vTGtjaTVLZlV2TkFlVG5EUkpBb1U0YVlHYzhDUnh1WC9wbmRl?=
 =?utf-8?B?bS82RmZKa3dRbzBZVjRuT01iTlowQmtpS2dpbnJVbDduMkc1RVVEeS9Wc0hR?=
 =?utf-8?B?TWJyNXQ0akROVXZSSUREcnZvdXBUS2M3TEREV0xISUgzV3VKaE5jRWJzakFQ?=
 =?utf-8?B?d0xRTkR2M0M4UC9XN2p3T2Q4dFVmL0o0akVWejB2aFhIZU1qYk5oUFp0ejQ1?=
 =?utf-8?B?Rm5JdHBoMlV1V01OY3FjbGNZeXJvSytaL2ZzbnpYaHFYNzZBR2kwT3ErdlJG?=
 =?utf-8?B?OFJEMHVJTU9NZnc3aWhwM0FTVC8yNnNhMnRjbXpzUzBXbXNwYjl0d2FyQmFZ?=
 =?utf-8?B?bXVIQjNJVkQ1NW90STV2MHF3bHBRYjJHRjYyTjZlL0g4a2gwejZuSzRtU2NR?=
 =?utf-8?B?eE5sQnZOR3I3VGloVjdmeWVRMWFlK29oS1dXckRENm9wQmJ5MDBJbEFBbzVG?=
 =?utf-8?B?QXlteThzK29UNUxTYjMvMHJTQnFiV0pEc2RLVGxTTDNlcitQOGxmZFprR2hP?=
 =?utf-8?B?TytFa2hndVd4S0tvWll3ZFFabFZERnZ5T0lzMXpTZ09ieEl2MzE1T01vVFNG?=
 =?utf-8?B?cHByc1NYY0gvWnRFc1BNNndLc3JuNnlibnRtUW50QW9wZm5NWHNXOXNmZWNv?=
 =?utf-8?B?NllEVlZaZ3EvcWNPeE1JYjNmUHVSQkVwYjN3bVlXbTFhcm1jL2luenJySElL?=
 =?utf-8?B?S0xPcEphZzFHR0ZmRDJPenlDeThQUVRGNDRwZ3JXQ0dRc3Zhc25CSG9CVFVx?=
 =?utf-8?B?RDcrb1RVd1hQMk1nbFNRalBuMXlmc0RtNm9vZ01KbFNsSWh2Z0NFV3I5RG45?=
 =?utf-8?B?YTJycXl0bHNQOVIrY3grbDd1YzRGV09Ccm9EQjJSaHRlbkVPT2pZM1ZXV0hj?=
 =?utf-8?B?NFlnNzI5QlF6VHZJSnZsZVZWN3hWZFgwUnloM253OElYUTROUTdTTUx6MElv?=
 =?utf-8?B?emc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	M6c1u2XLvt0yOdBh0QmvebGRPnuzzaJTMrLV7K6IV26/LyLa1khCtjs0m8qC2UvnYBLz+YM9eSIl8+ehwH92g1Yz0hkzOTazD/6Wa0M8E1qf390o4bk4cX10Qc90FRgBFgLvq0JyPgBz1pJPDj8s934XTFbZqvlCXEvAkr1b8ETdj1vYSJzaehaT8a9nE9IGPxlJ/G1wUNmVkVNm0wxzL1rT6G+R0wnxV/wsz48qifKOQkhIhYqa+xTufLsNIiYrMCf0brnIZS/QGoP/Y5sZCba7MuPnREr5eDu7eVutkuZ7giznS5mFxh8HsU2ug9MAtHRaM0RhJwjh4nsskz43BkHDGczcgOwv6rN8V0YbzOhIVhOLg581XyrT8R3Kz8ReaP+ZLYJfiexqZxO2sIbaF1eeShm65VJ8UrwVdedZJbk2Rj0fSq/So220DQHH1pG/Uavg5NVN5G5W2mtHzhVT6uyZ0mWrGvmRCHa/aSutW6vnDjb9VgmGo5WkSsWPZ5mNZeAkQyqXegTsmfu5H8gXfmcKAWCDC71RwrCYSMNAoWyeUl5vg4stsT1og1Knxb7B4nP/zWBUdWFrZ2EJUwryWGrrUklvEkTavKF6r6w17Kw=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8578abd5-a999-41af-f16d-08de02ae5fee
X-MS-Exchange-CrossTenant-AuthSource: BL3PR10MB6140.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2025 18:55:09.1832
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Xg/ySS9CFwpHaeMPSfBLOC8H/rI3QrQciMUcHoOCgqZEwISqJ3DMgnYFU822YluINB5TkGVq/o8oHpDkvbtO9kIvcmPyaz0HlOoWFOXy0g8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH4PR10MB8146
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-03_06,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 phishscore=0 mlxscore=0
 bulkscore=0 spamscore=0 adultscore=0 mlxlogscore=999 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2509150000
 definitions=main-2510030156
X-Proofpoint-GUID: i_ZKIY5T78YMb7dMBB8L3EEbUtLoogPj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDAzMDE0NCBTYWx0ZWRfX+CjM7xhIA5HM
 GfAwijfqjSyfFs83I6Sa0JbZ4t4AxXClUFZlReOArjX2L35PsbmMCwzKqagKQeloYzQXymEl3R4
 reYf7xOVoIV/viUbFy6xXIGdkefx9RqM3Fb7dx0Y/NrA63lcSHFHXG2/JI59jwGBKIyZUE9A6Dh
 6I3E4N3tZv+V922IRHSU2NXcnpXIg0y2xKlgFGFKijsyrEX0TrnhPb/SKP885DH0Z2zb8o44TXM
 EausCMjqzjX+P6UniATjPC4NDpzB1KIcckP264hjJ7S7HRFVi+o0fgSrWhsmvnYF0yac7DbypDe
 BlQCw83Q0+qkq7j0nz6Q+r2Gmad43E3un0IbcDemtjpZlR0DnYliGYvwNLMFIlzu4O0gbsFHbRE
 BfdhFnxcEO0DXjuEHQxX5EY8qcFuWQ==
X-Proofpoint-ORIG-GUID: i_ZKIY5T78YMb7dMBB8L3EEbUtLoogPj
X-Authority-Analysis: v=2.4 cv=KrJAGGWN c=1 sm=1 tr=0 ts=68e01c11 cx=c_pps
 a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=x6icFKpwvdMA:10 a=GoEa3M9JfhUA:10 a=CjAF6meyAAAA:8 a=FP58Ms26AAAA:8
 a=p0WdMEafAAAA:8 a=GqZI9gvVAAAA:8 a=csFLvpjhCIOeua0ib1sA:9 a=QEXdDO2ut3YA:10
 a=Gqfd2_Va_JDKK0W-8EAY:22 a=poXaRoVlC6wW9_mwW8W4:22 a=cLTQeHM41iufidK-p70C:22
 a=Z5ABNNGmrOfJ6cZ5bIyy:22 a=bWyr8ysk75zN3GCy5bjg:22
Subject: [oss-security] fetchmail-SA-2025-01: SMTP AUTH denial of service

https://www.fetchmail.info/fetchmail-SA-2025-01.txt reports:

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

fetchmail-SA-2025-01: SMTP AUTH denial of service

Topics:		fetchmail SMTP client can crash when authenticating

Author:		Matthias Andree
Version:	1.0
Announced:	2025-10-03
Type:		failure to validate network input in certain configurations
Impact:		fetchmail tries to read from address 1 and can crash
Severity:	moderate

URL:		https://www.fetchmail.info/fetchmail-SA-2025-01.txt
Project URL:	https://www.fetchmail.info/
CVE Name:	pending, requested via MITRE as CNA-LR

Affects:	- fetchmail releases up to and including 6.5.5
		- fetchmail 7.0.0 pre-releases

Not affected:	- fetchmail 6.5 releases 6.5.6 and newer

Introduced in:	2002-03-09 fetchmail release 5.9.9 added SMTP AUTH

Corrected in:	2025-10-03 Git commit 4c3cebfa4e659fb778ca2cae0ccb3f69201609a8
		2025-10-03 fetchmail release 6.5.6


1. Background
=============

fetchmail is a software package to retrieve mail from remote POP3, IMAP,
ETRN or ODMR servers and forward it to local SMTP, LMTP servers or
message delivery agents.

fetchmail defaults to using the SMTP server on "localhost"
and to not attempting to authenticate, unless configured otherwise.

fetchmail also supports a "daemon" mode, where it runs over extended time
and periodically polls the upstream servers.  This can detach fetchmail
from the controlling terminal into the background, or - with a "nodetach" setting
- - keep attached to the controlling terminal, which also eases use by
service supervisors.


2. Problem description and Impact
=================================

fetchmail's SMTP client, when configured to authenticate [1], is susceptible
to a protocol violation where, when a trusted but malicious or malfunctioning
SMTP server responds to an authentication request with a "334" code but without a
following blank on the line, it will attempt to start reading from memory
address 0x1 to parse the server's SASL challenge. This address is constant and not
under the attacker's control. This event will usually cause a crash of fetchmail.
   If fetchmail in this situation was running in daemon mode, this mode is also
terminated by the crash.

[1] This requires the esmtpname and esmtppassword options to be configured in
the configuration file and the plugout and mda options to be inactive.

As a word of warning, this vulnerability has eluded several static code analyzers.


3. Solutions
============

General recommendation: if running fetchmail in the background or in daemon
mode, ensure that the daemon is supervised and crashes are reported so that
action can be taken about the malfunctioning SMTP server, or on fetchmail's end
to replace local delivery by different server or other means.


3a. Install fetchmail 6.5.6 or newer.

The fetchmail source code is available from
<https://sourceforge.net/projects/fetchmail/files/> and
<https://gitlab.com/fetchmail/fetchmail/-/releases>

The Git-based source code repository is currently published via
https://gitlab.com/fetchmail/fetchmail/-/tree/legacy_6x (primary)
https://sourceforge.net/p/fetchmail/git/ci/legacy_6x/tree/ (copy)


3b. Apply the smtp.c patch from the URL below and rebuild fetchmail:
<https://gitlab.com/fetchmail/fetchmail/-/commit/4c3cebfa4e659fb778ca2cae0ccb3f69201609a8>


A. Copyright, License and Non-Warranty
======================================

(C) Copyright 2025 by Matthias Andree, <matthias.andree@gmx.de>.
Some rights reserved.

This file is licensed under CC BY-ND 4.0. To view a copy of this license,
visit <http://creativecommons.org/licenses/by-nd/4.0/>

THIS WORK IS PROVIDED FREE OF CHARGE AND WITHOUT ANY WARRANTIES.
Use the information herein at your own risk.

END of fetchmail-SA-2025-01
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE3EplW9mTzUhx+oIQ5BKxVu/zhVoFAmjfuj8ACgkQ5BKxVu/z
hVoXfRAApBdTub7EDpczbGlHfuqM96xFFRXHahETtL3sPSTNf+EB5CpBH+t5wV2M
zeYcdbYLgf0X/nT8+ua2lyP8c5YW5OOntINa49HOwYhTnIf/Msju4NS9RExigOxM
xpUAFNO8Mci79q7NWxrNJkOZIy5OfM1cTxXfECbibWjg2MsbZj7BaJu3EdkEmpOp
bzKBbL87Fv3dfYYvrRgBeJo7jvl9PqqNgY+WtBSC4lkHKstA0QaEYvkZDzQW4pwC
ZUQASWpDHEQTU5VSaKNXEMy3g9nqmLtMBx66VH8Gzv/dh73x5rouiExKQIjKBMxD
LUkibZ2iQOQR2gETd/QwtY98W5KGCW5pjVdIV2SJsoPOte0OEaMI5aersREmI52O
R++3dmOeKbT/DW6SGCvY8xGKXqCfQfQy66XY3/ZXBpE7xJITGEzjiYqOv7Tt5L8E
3VKCRC/MVbkrPF8Hnh9It75OdxO6v1gG/GNBOStiHVU6cOhPQmwykhTug4UjfOzZ
0n6c5DNk7Lz3m1AjWHIGgO7v0rHWibH5rw3ksBQi0X3OSv4xqrSTHsQz0WV+l3KS
q98e0GtG5g/aKQL1EWp+/VNXjrhm3I+Wg+haR3zJ/PcTdxEfpaXW4RUTsK2MAxvm
1HPZuyhLFpgsptFGvPbJONUnah/OWttaPCfrM5neP9wZzPHLnjs=
=Su9H
-----END PGP SIGNATURE-----

