Received: (qmail 19482 invoked by uid 550); 17 Jun 2024 16:31:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19461 invoked from network); 17 Jun 2024 16:31:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-type:message-id:date:subject:references:from:to
	:in-reply-to:mime-version; s=corp-2023-11-20; bh=rEr9tGPwR8tyGEw
	lSU/kB4TfIu+NUYWEe7SaV3RKLNg=; b=PlYU/3JxuqzI6IyMycqRtlWbOA+QKaY
	9NPXbc6A7Yx4CiO+D/VcKOjzht9fWkmEPmJOrROuahHXQ8H/C5SO+ookq1EWqFHX
	NFdt75cL+TPQE9XcaUpuQGd1i9SHVvndkcSK0FEXnx0P8K2j11D6qbG/LMn7zYfD
	+u3vOFHj8sUlPcnUL39jUpCtsBhV2Fv2HsEjq0GYQlvGWGg308bhM/jYB8yaVvXJ
	F01ol5/eN98aM/AX0LUbGyiVbO6BKtzbkcj/I3wtvmoQXLhn1MGezUI1OsJQ+CkC
	hJnDFB//ja/ZeOWa2n4ldzPRbQ8Za99sD09fCAmw1EIPo9oqNoiPBXg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mNhvveRFAheMZ6i9MnA5AiweuaejqDnTARFi8JBjMmCe2PIvIRBLHyA3KO51cEfYfOn5pGfYW7wq4a0DZlVOnnk1ltEsXJQMIyRKRasEjON02kFL7n3aeup7Lv3EeEDNbZRxXTq202VSHvUEjdwtQQR0m3P7ARSWk6Jx78Gc+l/vnA2dnBgJzrArGs38OSh43wrUnDdtQPToCNRYRsMKHvlnTuRRhNwu9z10sp1mhqwmFPrmIWDm+SrFLZBgVKuVuz3+OgvVtKOxyKfzjmVUqhvcMQ44VCpNU/wosMkT1zZfoxeg1NVZV/ziIudKTESVmDGIzoRuNQhf7Zl5T7HLyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rEr9tGPwR8tyGEwlSU/kB4TfIu+NUYWEe7SaV3RKLNg=;
 b=ML9jJJTkC6+O/l+UkYzDjk/JhJXPmkGnYO2zwZ3YudtRcgkyMIS4L4zpASjpDO+yau2VXkuWIYBqZvHm/kjs7VHHjpXeQMigtLvpIasgR1EG0xKI4qln5uCHgndeSOfZtwtbrt70IEJPzNorJpkSStPQE1oej2yJ55d5Bl3MJtj5WQmiLRr1VAOFN/CNzrtdjdYI2qU6h32Jjm1PcIgKhemhOJFo4SJVRI4mgCKXxQAdr3ei+UVL645LW5TmWuhbJ1MGwzoYzUO1aoAEX8warUfAFk1wUBdtp5WQ3lz9uWPk7gKWwKyXDiTQBvOpreuCqLjHlrRDyVLYyOdWdqE5sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rEr9tGPwR8tyGEwlSU/kB4TfIu+NUYWEe7SaV3RKLNg=;
 b=JvMIWn8bBX2sosWo6zFn8UQzl3g9rw/jTJaP+MBrfXjTc2OZbN38qbBa/euIFaYlFYdx4jUusnIEzy7com/0yVIyjZTrCTMfxPfdlVR10/eY1Q6YtcWwvb8L6+e7ssDgGoLbnEt9i0gaAMduKUMczSozbmib1rIMGIzY+Ye9JaA=
Content-Type: multipart/mixed; boundary="------------PmtMgnuZFfYp0HHuQcOJe5e4"
Message-ID: <4bd69014-37f2-46fc-98f2-7ade8d1bc3a8@oracle.com>
Date: Mon, 17 Jun 2024 09:31:05 -0700
User-Agent: Mozilla Thunderbird
References: <CAADqWPS_BXCTHOQYc_afkuUUN_-Q73F103yjirB-m9C2wDUu1g@mail.gmail.com>
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
In-Reply-To: <CAADqWPS_BXCTHOQYc_afkuUUN_-Q73F103yjirB-m9C2wDUu1g@mail.gmail.com>
X-Forwarded-Message-Id: <CAADqWPS_BXCTHOQYc_afkuUUN_-Q73F103yjirB-m9C2wDUu1g@mail.gmail.com>
X-ClientProxiedBy: BYAPR06CA0005.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::18) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|PH0PR10MB4550:EE_
X-MS-Office365-Filtering-Correlation-Id: 875dcfc2-e699-47e6-625b-08dc8eeae3a2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|1800799021|366013|376011;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?amZIUFdvWWk4clVnbVd5a2M1aVFRdmhTVGFuR0pLK01JQm9ONFlSdFFDK3dp?=
 =?utf-8?B?SWZHUlpKdHFJK0NZbkZ1TEhQOWpBb1MvT2NSQXRjOTAwLzc2Y3d3NHNZL3ZT?=
 =?utf-8?B?NktNQjV0eTRSVkZqYnNUajl5aDU3V3NXcXozQndtYWlMUTF6SmcwclZWMEFy?=
 =?utf-8?B?bk4vSzFsYkVORmI2VUtueXdWK2JXQnJ2OE96bE80T0J2WCtSYURXQzkrRGFH?=
 =?utf-8?B?Q0Q0enBzajV3TXQvL1E4eUwyZW1qYkJSVWJYeVcrbGNOdUhGcDV3bHBuS3lJ?=
 =?utf-8?B?TEN1MmNyU0xjakk0c0FQcjJGN3RyYjdXcXpuV1MyK2VOU25qM2RUZmdFVFhB?=
 =?utf-8?B?MldRNG01QTFxVUVvUlRscWpQT1FEcE8yT0taZnNKQ3pUWHM1emxPM0xuOW03?=
 =?utf-8?B?T1lINXlKV25JRE1Wb0JtbW1hYzJvazc2MFlNTHlMNDZCelErcGVwemxuRXcy?=
 =?utf-8?B?VzlLQ29HczRWeUlhcEpkL3VneWZZWS90U1V5aEJnWnBGMTJIN1dSZ1BweW1R?=
 =?utf-8?B?TlI3SGJEV0dSRGlzaGloQUJsSW0rclVab0ZLR0NlVjYzSnQ2Qjh3VmorRUxR?=
 =?utf-8?B?eWhBbmNhVnlwUzlRMlZpY0tsSFlpbjdPQVF1cFVkaENVbWRuTjhKMnEraG9j?=
 =?utf-8?B?MlFrR0Z4VlA2b0xjRFlTa1lTaUppcXg4ZkZmRXRUUnM4aGFRQVhTSTlKU2xB?=
 =?utf-8?B?YUIvcnkxS1dkdEFQQ2trYmxScnVZRWYxY09zUCtkVFR1TTVvdDh5UFRVb0VG?=
 =?utf-8?B?RVZxOHdwUklkcm5OWjJwdGJzbDIySkVwN0Fvd1JGV1pkVDNuWURzUVRnZVRy?=
 =?utf-8?B?L2NGVjh6QTNpNkhGVXJSZEJaRm9teVluNzhyQ0I1UVQxVXVCZkxvU2hyN2VN?=
 =?utf-8?B?anV5anRmeVJsUXpkc0ZPSzNtbG00UXIvYjI5YXY2RUQ3blVKTFBRa2Q4UHhT?=
 =?utf-8?B?RVJDaXorMWVzRVpGOXFlMk1BOGFoUU02MmRDSm1RMXdHRWFKUkdVVWFOTVFs?=
 =?utf-8?B?eGsrL095MWJnUi94OFg0RHFOODg1azNTT3pDWThTUTZkWldwdGF3OFpIRHM0?=
 =?utf-8?B?M005UGF1MXR6WFIxUlpvWnlzN1pRYmozeDIxaWJqZnpVM2hjK0gveDR0bVVK?=
 =?utf-8?B?SUhsYVN0S05SUE0wLzJ5eEVsWDIrZXl5WjdNaCtvWUlIbG9ra3lyejBDbjFM?=
 =?utf-8?B?eEUzL0lUSytwaW9pN0luak5ZeHdTZExaQllEZE9XS3V1Wm81aGxLS3h2elV2?=
 =?utf-8?B?blZyeVNTWVl6S1BYWHc2Z0FMNFMwWHduVGhwWEdWamtkekhXdWRwS3ZMR1E4?=
 =?utf-8?B?Rmxyc1N0eEkzNlhzQ2VuTVgvejMrU3NoNWE5YmtiWDZiWmhmejlITXVKeFgw?=
 =?utf-8?B?R29iL2FDM2dLL083WXJxUGxxZHR5ZDRrSm1sWW1wbkpUZ1VuSzBsaDJkSkdQ?=
 =?utf-8?B?VUZPS3JkUVdFVjZySkhNYnBJK0FjMlNCRU00RXdyMlNQM0p0Umg0eXNZK2JN?=
 =?utf-8?B?YzNVZWY1TjJsNWU5ZXdwWDhiMnVBTzJXaGQvR0RkM0o0Y0Fxc1FmWERRNFV5?=
 =?utf-8?B?RHJqRGJWeW9wRVhDclpKZHppNTU5RC9mTkQ1YStxSDNTeWQwb3hPV1ZNU2Iy?=
 =?utf-8?B?RCtEajQyQy92dklzdHo1Rzd3UXVBWmFmT3JySWYwdkVjNHU5alNwU2o4NGNX?=
 =?utf-8?B?UTdGd2puOWtGbDZLWC9hd1NIMmNPMllvVjhpOVlqN24zb0RrY21hOEV3PT0=?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(1800799021)(366013)(376011);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZnAxTGs5Y2E2WE9jNDFRMVFVYVk3UWZlY1ZLMzc3ZGNYOU9ERCt2anExZS9Z?=
 =?utf-8?B?V1pobUU0b2lmOTBHUkpsem1idnRhWkZlejFmNXBKZXZKdWV1OGVqbzVaZnBR?=
 =?utf-8?B?VnlZOXBuWlBmUFVNTW9DRTJUeXFxQjVrNGZwN0dJQmVSOHlFOGFmTU9Dak5Y?=
 =?utf-8?B?b1ZkU29RTS9GNVExYUEvWkUzbXBVYStVcUtoYkl6SWNhdHZlNk9VRHZ4UzZm?=
 =?utf-8?B?OTRqaDJVUU9PY3BMQTE4YjJDd1pMTFZrVkwxYlBKVEFSVDZ6aTNYUGNHMmcy?=
 =?utf-8?B?dDdaSlQ1OUVRSjNyQ0wvdmd6ZzFRK2pNV0Z1NFEvQ3J4WUZTYkN0ZzlWaWpt?=
 =?utf-8?B?SWhUS2cxa3VBVzYvb2RhTTZ2SVBzUFRqVEUxaHRHQTQvL2hNUVNGUmMvUW9R?=
 =?utf-8?B?ZU14UGFHelBmT0t4cEM1U05HanFaUithZi9ZVjI5WWpFRnNEeHdzcEIyYnhz?=
 =?utf-8?B?dHc5K2dqZGsxb2xvT0g0b0FDdWd4ZXdMbGh4dHR2N3pzUmJmSGJtTDArWTl2?=
 =?utf-8?B?eFpoWW8xcHR2Wkh2QllNejJUdUxWeGsveUVrSk9QZndyM1Q5Uk5rZmNjRmtB?=
 =?utf-8?B?SkVVQ2tqdHJYbFJJMy9DbnoxaVNiSGZvcUNRYk0vcjdsQm9UbGhwb1VQRVhk?=
 =?utf-8?B?N2k3RE9jMzd3aGRXSHd6TThsT1lDUzlGMzNveldPZzQzWlZuSGxvVnZzaE96?=
 =?utf-8?B?SE9hUTZJQzlDd0FJUmtVYVp1WGVUUVg4bjdQTCtaRGpEazB4SWJxcXNucXYz?=
 =?utf-8?B?engzNlNvd2N1NkhseUl3emZwMzBPUGhtOGRueElNZGdyZDBUVU9YQm1yU2w2?=
 =?utf-8?B?dis4Kzg2Vlp3MlBmN0o0VHdET3JUMjNXcFZqUEgrOVc0bU9nYitzUmtXazVO?=
 =?utf-8?B?WnJaRjNLazRsdjRmanErRk5CdTkwL1dqaExMM3ZBcUZHdXhKeUdRZXRVR3dy?=
 =?utf-8?B?blBEMTY4MmxiUEVabllNcDRpVmJhT3g0bW5yNHdJUVVaUU40amlYckdCOUFa?=
 =?utf-8?B?MWZsbkpCYjJSenNpaE50OHV0K2tqWlVlaTR6NFM4YzVsUWE5d25jYUprZTNw?=
 =?utf-8?B?c3BOMmFnSTVEUmpwdkdHVy9YZ0pjQS9JN3MyaFFYODQwM3ZGWm9MbEl0UHQ5?=
 =?utf-8?B?WnA0bWxXZW14NWdFTWVVNHoyVzdBTFl0K21VQjV1RWFtdTJwTnIwRDlpalJU?=
 =?utf-8?B?TXV1M0lzcXB6OFNHL1BabnJNZk5rUXV5QU9iZUphZ0JnWmpZUDJJOU85cURW?=
 =?utf-8?B?SzUzOUIxSkRpMkduOTJhb3NlZjRUbEZ2aXNFb2c2V2x3eW5vQWFUOUU0RmtS?=
 =?utf-8?B?NmlrVEN5MzdBU09uS1BaeE9uU1lKQzU5VkFtV1RiK3Z2WmJNZ20xNWhYTnh3?=
 =?utf-8?B?bkM5MUVjbUpRK1NXYTBBdm5pWENTWjUwdUxHellodGJzS05uZVFiWEU2Vk1s?=
 =?utf-8?B?WDZPSCt1cTZsSjRqSVhlMlhTdU5WRUFpME5WMjhqQjBMMVFVcytzRU4zWUhK?=
 =?utf-8?B?OHNjeFp2SzUwWE8way8zdVFGOGo2YWE4dHZ0K0EvSEVXZCtIMXJWMXVaQmhz?=
 =?utf-8?B?U25kOEYxNmk5L09XR1hDWjZRMEFzNGl6UURaWjRzS01SREw3T2gwOG9QcDhz?=
 =?utf-8?B?U3p2RHhGR3d2R3BxektXakpLU21kS1F4dnNDMU1wS01XYk5OeTFpa3BFMVIr?=
 =?utf-8?B?MlU3WnUyN2JwRXJ2OGUzcGFCOU93elhyY3FGRi9mUFptclUwbE8rNDIyU2xk?=
 =?utf-8?B?WUU0NEdKQ1VBN3VaQWdTZlNTejl2OW13T0wrejJOVzQrZllHYW43clVENVQ5?=
 =?utf-8?B?SndUZ2tVYmZXcG5Mdm83Vk5wNVJEV1RkWHZiZ0FUZVVvcFl1aVZERXRKY2Vv?=
 =?utf-8?B?ZlJ3cTZYa1NYajJOb2UxTU15YnkxcHlCTnpHb3BYSUlIRXRhVmRDSTFmU2JC?=
 =?utf-8?B?K1ZYUDlnYk5iMDhndUNxM3ZaZWpOY0ZuOHA4YjJLcFNnUit1RDdnMTIvVDd6?=
 =?utf-8?B?ek1nUlBFZFQ3UGJCak9hb1BPQXgzLzhjYndQTTJCSFZTamxKVmxNdDQrNFdY?=
 =?utf-8?B?WVZJZ1RWOXNEcHAxZUpWV0hVNWJwYTYvbjFBblhiVldaVUlXelYyUDV4TExt?=
 =?utf-8?B?TncvYUxxeDJoaE4wMEdHTFdpdTRFRTcxVXhyemNTTGNyMGhrT1Q0UkpaY1hz?=
 =?utf-8?B?Smc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	cA6wa+O5Xq/qcawNshhSWnemu5k/673P6ZoIOtKurSPfxs5JlMClAiVnWOTMY2Y0KMjvqNC0vwPEY2MxT4URA8KYkGPYPaeB1STddNisx0zglEYwM/4QhIUY9Di/lrmDhg1I0d7cb7VO3oCs2Ljxp6Sue4LO3FyX6QYrvR81+yCbj2bfrVzCIXSW6I2pAZ2hdraUkSudQGC5eldFeQR6Yg3JFLYkuXPt0Hk0Wd95A6nC/th7mflhUjHT4c5KQOdCFakDAlaSjbC8D7F8eq7agZNIrHtpFwVeIYH9KeeMuepFgxYbQ5pD6Cd9/nWl9jPHO3JCvyZ+IydEwbHK9XcQ054ogMAJf4JCy4y5S2zs0+B/SIOMChmuoKMPr5Sk9j9Mqb8R/Su0vRTfXYVb+UNEEzrDmoqQHHmP9MZDHaB7+rOPv+U0padTGWronr+f+W010eeP8wUVf+d26NguQsD18ub4lOEiPTaPUvFy0m4QKenQawNvSon8Zae2S0fXir2py5XIPNp4eM0VP4MH56L9i9kKpAbgesISmt6wWZ9DwxIxADWd5uQPKdCOX7EvU4tRKDNzynGRjipYb12TwV1cU0mhpO6Yo+EeJZR1MMo9wNE=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 875dcfc2-e699-47e6-625b-08dc8eeae3a2
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2024 16:31:07.3549
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bXYg+C0bdtKw20pHUJAD/DItWqti/e4nfIBDFXXdgqko34FbiTc3ztSRl84SgeaQ+4h402af6VBjIUBp4opCvB9VMduH89b4jd6CoMA0jQo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB4550
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-17_14,2024-06-17_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 suspectscore=0
 malwarescore=0 mlxlogscore=999 phishscore=0 bulkscore=0 adultscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2405010000 definitions=main-2406170128
X-Proofpoint-GUID: BgrAlRRx5NC7HoXwmbPZPuT78cyoKSNi
X-Proofpoint-ORIG-GUID: BgrAlRRx5NC7HoXwmbPZPuT78cyoKSNi
Subject: [oss-security] Fwd: [Security-announce][CVE-2024-0397] Memory race condition in
 ssl.SSLContext certificate store methods

--------------PmtMgnuZFfYp0HHuQcOJe5e4
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit




-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2024-0397] Memory race condition in 
ssl.SSLContext certificate store methods
Date: 	Mon, 17 Jun 2024 09:02:21 -0500
From: 	Seth Larson <seth@python.org>
Reply-To: 	security-sig@python.org
To: 	security-announce@python.org



A defect was discovered in the Python “ssl” module where there is a memory race 
condition with the ssl.SSLContext methods “cert_store_stats()” and 
“get_ca_certs()”. The race condition can be triggered if the methods are called 
at the same time as certificates are loaded into the SSLContext, such as during 
the TLS handshake with a certificate directory configured. This issue is fixed 
in CPython 3.10.14, 3.11.9, 3.12.3, and 3.13.0a5.

Severity: Low

References

   * https://github.com/python/cpython/issues/114572
   * https://github.com/python/cpython/pull/114573



--------------PmtMgnuZFfYp0HHuQcOJe5e4
Content-Type: text/plain; charset=UTF-8; name="Attached Message Part"
Content-Disposition: attachment; filename="Attached Message Part"
Content-Transfer-Encoding: base64

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KU2VjdXJpdHktYW5ub3VuY2UgbWFpbGluZyBsaXN0IC0tIHNlY3VyaXR5
LWFubm91bmNlQHB5dGhvbi5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBzZWN1cml0eS1hbm5vdW5jZS1sZWF2ZUBweXRob24ub3JnCmh0
dHBzOi8vbWFpbC5weXRob24ub3JnL21haWxtYW4zL2xpc3RzL3NlY3VyaXR5
LWFubm91bmNlLnB5dGhvbi5vcmcvCk1lbWJlciBhZGRyZXNzOiBhbGFuLmNv
b3BlcnNtaXRoQG9yYWNsZS5jb20KCg==

--------------PmtMgnuZFfYp0HHuQcOJe5e4--
