Received: (qmail 7961 invoked by uid 550); 21 Feb 2025 17:55:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7934 invoked from network); 21 Feb 2025 17:55:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2023-11-20; bh=7nAZKLmQQlHSK7Gv
	t0wMxB1twiIIuMo7nLaQBMyOE58=; b=jBu1wv1MWqVMySMTbk5/7CffCnR8+03d
	WfiUaW82aIrCEKtrN0gu8m6eBIOrzVZXTyDMz8zEDMLe6rMtcDMnVhjGsNCWoHP2
	+8WUHqhIupko4qSjBi+ZQzQj2OxbUA5bFjYG95/rXxzKbFLl8yGpQv66AYUm+fgW
	LS3iXSZKAbCa8jtS3lB27/OdmOYTcSJc60bfhBt6ts8blBtEr5jIFkE56RdGb8nI
	ySRoLwBH9zEeUzMfML1cKS8FxlhXZTvcz3QlhObSVCG5Bh3NNe3jgaIoDh+hQL1h
	r411HwTXjwYjydvZyl9gZQPsODHmxcdAHZDvC+tYRWiQXXew8cgGBA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZuzRmJOuVtlBFYtDw9Tnz+MgSjH6nxMh6/7i/4h1CWvb9GkSZeV7IPLuxFLipUtaRMZ7+VyBh2LXapCuJvwfG5zncogQ8W7fj6C6Q10t32VbA0Zk2UtT331TE8i7yv0mF3s3J1vD3xz90l0RaDfpoSSavcPsY5nA2eu7NZlBZ6iXYEZ01HuYjN+g5sR7qTWi8eXat0cMOOtMs3vXdpR+MxmuGbevAx/1y3aHH8jAvzwDFWGTXVzDAYhPFjXeAY/CtFIQXxQQjPSNmndbfwzZ7T/fMf5x1lvkeGsd0h4Hs5f23fWbOWa6bvSmeEGatZQt4ywR5D+WuTEsQhllwqDHug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7nAZKLmQQlHSK7Gvt0wMxB1twiIIuMo7nLaQBMyOE58=;
 b=EPralSeALCemZZP1x1c1/47cWE2welU85HLUUMmeQAt0dj5LJSlTms8ww15zPUjr0RascqJOB7c1zDkkCdw0sRWas4n1/cTIqIDo9sHgD2M//NGHsl0mDiSamsqpfuvTLbORYKYQzIIcymph2T6q+5Nf4o3wffOwah8gOyjG7M/Ydutf500Oz2646IiYz1gP6wT1Dic3gZmUW4mCt8fbXWInyX8WDcp9cyHhfVzBjDOEH1Gmc2RS04DdZ+kjrBIuZ0Ia3Vloz2yu8n1Mfuus2MU2K/xm+cL8HbuSe0qekkotKTNpySasDSoA7OzoPe5rpOH5TH0Vu1DftD7wus3m5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7nAZKLmQQlHSK7Gvt0wMxB1twiIIuMo7nLaQBMyOE58=;
 b=S1FrWCKVQTGW1HMVOZ9tM7OkHckGy+/Dy/ECyjs5bRqANpSY0TGzBNhseuF9+IDsqIJ7qH88COPSJG3GLK9LkT9Llr5t1eG3+VNsHglLDUTQqg9/fytcg0zI9vWYuzlNGR2R+gPWeB0A2VSfqTDDg1a9cVTkhsdez8oHwmaYP+o=
Message-ID: <edeee8b3-9add-499c-820a-38ac2fd535f3@oracle.com>
Date: Fri, 21 Feb 2025 09:54:48 -0800
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
X-ClientProxiedBy: BL1PR13CA0360.namprd13.prod.outlook.com
 (2603:10b6:208:2c6::35) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|DS0PR10MB6272:EE_
X-MS-Office365-Filtering-Correlation-Id: 8406aa94-5687-44d5-618a-08dd52a0d56c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?S3pOVzZUSnhmWWt6RTdzd1kwYUNib1pVTWlVLzRHSFc5SHpUbEt3aVBKQzNQ?=
 =?utf-8?B?QWQ1L2dhbE1vQktEVXVtajYrVVJoZTg0RjI3djVQWmdtdzFHTCs0c0hnM0JF?=
 =?utf-8?B?M3hxOU9yTFNwdjZJSXhLL2NPbG50aUY3UkJRWlBYOW83aFg0bWE2M0VOY3Bp?=
 =?utf-8?B?b2lxbGptZEgrUWRIL1JlZFR4YXAzSW90cmlVSjR6VEIxSHZnM3BiRjN1UmYy?=
 =?utf-8?B?NXk2bzZsYjN3RmRaV215RFVUd2hXSU0vSUYwdTA2T0ZTcmx2YWU2NXVqbUVq?=
 =?utf-8?B?VUIxZ2d1QWRQUGZhV1dyVVpvcldMSUdHSk56c2VGaTZ0NlZFQmF0L2tVRE1O?=
 =?utf-8?B?aDE4V2krbENIVXc4MjN1d1ZXcFJTVGZoNVJSR1RtdmdmbFZxYStNYzBRaDBS?=
 =?utf-8?B?dkZ5QzMyNXhtNmwrVW5FL242ZDk4ZG1ielFqazdZRnM0R04rZ3JCZDBqd2ZU?=
 =?utf-8?B?Y0NQV2RoeDc3SW1VSG5jMFJMRUNWRWxLQUhlRkdoWW5EM08wMFlTTHlLSU5B?=
 =?utf-8?B?M1JWZEZiTFVNdXdHZWorU05wZm93aG1IUkVlZSsvcCtEeCtJMUNoM3dVQjdE?=
 =?utf-8?B?c3VTWGxGeCs5Nm1VOGlDcS9mQnhaYWFNeXo5a2FwcHZ0c2g4cFU2VXVobmNp?=
 =?utf-8?B?clBMWHpPU0dFQlRPTXBJUWFFSnFQQWJGRVVNVnBvUHN0M2J4QzZkVWJaZS9x?=
 =?utf-8?B?MEs3aWRleDRnSEk5LzZNTXBMS0lmbHB2WkxwRzZkY3V6Z3BRa1RxemJBM0VX?=
 =?utf-8?B?MmlzZzJZMGZyWXQ0Y1RYVnprSUhqb0p4aE9oWnBtSWthczkyRExNMDBPdTUw?=
 =?utf-8?B?OWErazdNbGFZalBDR3BWMGZWL2d1azE4S1lxZ3RvT08xMHc4MnFuSFA3MGtj?=
 =?utf-8?B?MjFHYXZTUnRCdGh3NDROVnhjZHNDcFVNY2xQTWZSQ01wM0xhTEhoNzNLMmlK?=
 =?utf-8?B?eGRRSnR3QmtXd3lNMGFUVDRxc05TQ295bWFlejhiWjkwNzBWVkxDQzU1K3py?=
 =?utf-8?B?TVdPd2M3ZGcrMGZXTzRTODVNZUF0M3VDSWpHcjdrck9nT2xoM25za3N6ZUo1?=
 =?utf-8?B?UzNRZjBpWFpLS25wNHExNjhycEJWR2xuMmpCckRxVHZMVjNvdFZJeWtIa2Iz?=
 =?utf-8?B?MnhqTWo5OUN0YWIrQzY4Y2R2SDJZMUkxZzhsdlcwVmlRcnk1S0VwYzFJemZ2?=
 =?utf-8?B?WnU2OFkyRTA0c1BMZlJDZTlUeVU0UFd5QTAxOGxvVXhPTWE4Sk00RkNvQy81?=
 =?utf-8?B?Wld0UWNCWXNHNVJ4MmlNcXZQM3lvbkhKempDVWJIdGhmS1pXU3dLNXlJSmdw?=
 =?utf-8?B?UXlrSWdHbjVaSzc5MDA4SlVzK3dmMlR5M1REUjFJRGhVNzRvcUhKT2QwUHBp?=
 =?utf-8?B?ZkVSeWhPNm9SOUdZYTdwbGNxNGpSUkh4eThCczdhb0JuMzkwN1BTOVlVclNj?=
 =?utf-8?B?N1pMd05UVlVkc2xVZ01ZYngrUlV4VytmZ09GUXFYZTlyaEoyZldFQitYUTFu?=
 =?utf-8?B?OWtLNzQxWFdrOFo5bUZ5RkVubTRENEVpTHhsNmpIZ0wvb3BDaFVwallaQmNJ?=
 =?utf-8?B?OVBleDV1eDRML29CZVNjelhPNGpuN25aQS9ZdDBQZzhpdjdranNyblU1U25R?=
 =?utf-8?B?NjBwT3dKblJIMXM3TDJReTlncHFObmY1YThyZS9hVit4dDNFcjhjMmdKaGdV?=
 =?utf-8?B?SHRNREZLaXVjSG96Z0lpZnJMQXY2OWJDM1dIbDJMWDBaUlFyVVpmbk11T0Z0?=
 =?utf-8?B?dy85ZFVBbjBFNFJJUlJlem0zaHJTZE1TSnZTUlJ4STNWKytNajZrY3JRbGlu?=
 =?utf-8?B?SGtGc3YxTU1qQklPRVVnUT09?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Q3ZEbnFCT2pKR3lHWHUvR3ZYZkx5VjFUTnFPT2pKUGc1b3Foa004RmcrZU9D?=
 =?utf-8?B?NTEvd3BCMit3eGYyaFVEKzhOWEVJZU9nc3NBakFqM2MvUEFsVjArZE9jcG82?=
 =?utf-8?B?ZUVTUzVESmV3cEZRb05QcENUYmRqdm5lSlJMdWhEU2xjcktiVGRGSWVsNWgy?=
 =?utf-8?B?YU1iV1Y5QkpnazFDWHVIS0hqSnp4SGpGUE5iZ2lxaXRTQkcrL0xxWld1MkJo?=
 =?utf-8?B?dnord0J2UnUwcktkT1FhNXJRMDVoU2VhTGxLTmFIc1lqUnJZNHgvRmRLRHcz?=
 =?utf-8?B?NVpEbGllZ2djWEwvSlkrUU42ZHBac1J0aCtzSVNMU3RmRUJGdVlFdzFHY3NW?=
 =?utf-8?B?aUZaSFJMSkpMbjNadE9WditzNWV3a1BRZmdIWGViRDZ0eFBkNVpmSEtYMzlE?=
 =?utf-8?B?dmxNL2Uzay9sUnRrako1QzFVUXhzTFVUQlhNMVlHNTR6ZCtuU2haVW0zeFo1?=
 =?utf-8?B?aWJiNFNvUGE3dUdTcmxwL3IxWFdCSUg1MDJWRjcrOFhZNGdCTjIwZ2Z3UmEx?=
 =?utf-8?B?anROd0R0RkNMQlNaWHJjN0plNmdxVTFzQ2NNWVRJcFUwV3hqekJJSG50VW1O?=
 =?utf-8?B?VCtEbmZCMFdZV21WOUxETm0wMm9WUld5Y2xzL0t0VFhOUXcwV3E5ajhZVExY?=
 =?utf-8?B?RlUwTlErMmFNS1VITjdMSXlMVVV3TjhLRG5iNFo5My9xRDdFZzlDeUNqKzZ3?=
 =?utf-8?B?T0JMZWxRV01Jck9GaXRkQVBib2phOW1pQ0M4R0VobkdWTmFNNnowQk5qN1RK?=
 =?utf-8?B?VmVHSXdVdWFMc0tleUhnWGRxcDloaUhOaGU4cjJpbGV3NU9OeWNvL1Q3NllU?=
 =?utf-8?B?TWo5MVpsbE0wYVpaaE14RE5hOEUrWkxVMStWQXIvSEtYTDNleFV4WHI2bGRK?=
 =?utf-8?B?ZmtIbWhMc0tySCtHZURkQ1dnYkF1U3FsdjFkdTRGb3UrRFZaYU96Sm9jYXo3?=
 =?utf-8?B?TTRFM3ptYzNJeVNzNUdZcVJQMFA2N29pTU5TeGxFQ2VGVFpLMjN6Umh2ckt1?=
 =?utf-8?B?MFlYSGp6eUVoUU9KbHlEUUxjVDE0cUY2QlRWamttMGxzd1ZCc1BCd1RiVytn?=
 =?utf-8?B?K3ovclRRNGRLOXd0YW0zL0w2bHdObGR4N2ZYeTFkdS83eEZhV0d3NGN4cmRX?=
 =?utf-8?B?Q1JxLzl5SUZ0RHl3Yk93VmNVL0RKRHlGUUJPRmRjTkRGZi94T2VqalBFMDVw?=
 =?utf-8?B?a3RjQXlOVVFVSEc1by9WcEFYTlhMY0FROHdtcndpTEU1WFZaSEpRRnJ2Y1JI?=
 =?utf-8?B?bEh6VWh3MDVZNWxETUJMcFR5aHNaQVo0OVp4bSt5ejdEaEJ5Z1ltZDI5RWc2?=
 =?utf-8?B?YjY1TVIxejZRWDl3NUYvaktwa3BPYnF0bFV5MnR4emVNdTg4YU5jSjRpVWdE?=
 =?utf-8?B?ZklKTUJhR3pXRnN3OThXYURmVkJ2SmNJOWl5M0xqekU1My96UUY5OG4wZ3Ru?=
 =?utf-8?B?elYwVVdWM2oxblFrbkZ3UGlUVUpEckI4Rzh0VmlvVW1vOHdzVzhRdjVBdS9L?=
 =?utf-8?B?RWd6SmRZT2xyR0lBdE5hUmdhbkMyNVg4S0dyRlJjWCtsQ21WZncrcGtHUTFT?=
 =?utf-8?B?VklMQWZrdFRZVDQzMlVBazA2d1pTTm1CQWcxWDVLV2xYVllLcUNORlk3YnZa?=
 =?utf-8?B?UE55Wk51WVc1Q0txSFNNNU92QjNoMlNnNytKUHpmVDlrK2NUeFREOFg3bVFG?=
 =?utf-8?B?QzUrMGY4U0JRaHVtZnl4d2tGSGxUN2Y5L2JhQnpEL0JiZWRld3pCMXg4MkU1?=
 =?utf-8?B?aCtpV3dURThUZ1I4MWFvd3EvUGhrOEYyV0RUVjhndFRtZGNlazJzZXFITmJQ?=
 =?utf-8?B?Y3RZNWRwVEtjTEFaWWU0MnBGWUNkWFVBNGd2RSthTWhOd0N4cHhuYzZDK1Zu?=
 =?utf-8?B?ZGQvWDZhSzlrWkNSRWNIUGdXaEo1REVjN3daTGNxRnpIZEVhWUhUVU1WWGtv?=
 =?utf-8?B?d0o4di92aEl4YWVYM2VaMVhMSjFmVVMyRFBOZVBjK00xYmptODRPZDQ4K25t?=
 =?utf-8?B?dTduSGlqQkYyZVNERjNhVWh3Z3VLeHBYbnk0WUhSSUtBMGJ5RWJRSWFyWXQ1?=
 =?utf-8?B?Vkc1TGhYVkk4dUdoclEwV2NyK0w1SVVCL2srNk5mZEx5eXE1eXhWUy9ZVERa?=
 =?utf-8?B?YXdOZ1N5VkM2WndiK3hJMEszVHV3VDlBUHhlWDk0bFFPb1A3MEQwSTVrRVhI?=
 =?utf-8?B?NWc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	V4lRFaprSWhB41ceGnD4IG832zFg/R2HQ0e5x0QwDGU+K+RuliWvK1pcyRaQSsJ9TVKJ7SXbF7xe2BUUYaTUTKU7GaIuKBfN/dbS6GmkMSFXO4PRtUeuyfQDl7uShvLjMa5V23FGh/i9gmbYZ1dMAzcigRBwn6IsUIu+cJGdW+8kKwgAbTQodZXmbmCiiLF7krPpyG14PP25km0AsWJKwAn4x7bL9LFzbkHFDhcQ+Mz1avOedVEpsKgnKZO0vGmQH5IliQG0XiWb+6vgIrErTEL8xT2gGIqORZGMXDkvX8vxcJYYg4ZuuXLnXzVjAMqxEiG+3RLdoL67PHTqz3kGBAZoZjcjBCFfNjZlIHU9wSrJhWC64owa/7Zua4b++kQcez3As01Bup4+tEBTAE1ZoIo9pFdrZG4HgzP7Ne4Rh3LVwkudjQqAWucfQPn7A+opCuldOZJ05EgOfADoMJxQA3N9IqFEKKAgwWbznPSZ94rdD16RG3jKLxGbRPo7YJzXUF+IWsRMeH4P5qQfxz1qEYjGHp9AqXUqF1lo7Nk4bBZjwml8ZoJ+fKuq4Fuw4Qb+R5ruCFRk7Q0e5GUUUa7WXPhvYd1JsAAWsgiSiIl7gu0=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8406aa94-5687-44d5-618a-08dd52a0d56c
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2025 17:54:48.6825
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W5L0O2EeF6aVEC0F1A8T4Fgn/FkriOqpNVvfJEdlrvHVwdIaBezJL+aKk5ud2khg34D4rwdNdZUq93DlwTEfpmiR9Nw/+vle8HxT1F2p1zc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB6272
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-21_05,2025-02-20_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 adultscore=0 bulkscore=0
 mlxscore=0 spamscore=0 mlxlogscore=999 phishscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2502100000
 definitions=main-2502210124
X-Proofpoint-ORIG-GUID: YeJW2mKjQC4oTfemnMaL0JLw7CMmMJVF
X-Proofpoint-GUID: YeJW2mKjQC4oTfemnMaL0JLw7CMmMJVF
Subject: [oss-security] OpenH264 Decoding Functions Heap Overflow
 Vulnerability

https://github.com/cisco/openh264/security/advisories/GHSA-m99q-5j7x-7m9x reports:

> Description
> -----------
> A vulnerability in the decoding functions of OpenH264 codec library could
> allow a remote, unauthenticated attacker to trigger a heap overflow.
> 
> This vulnerability is due to a race condition between a Sequence Parameter
> Set (SPS) memory allocation and a subsequent non Instantaneous Decoder
> Refresh (non-IDR) Network Abstraction Layer (NAL) unit memory usage.
> An attacker could exploit this vulnerability by crafting a malicious
> bitstream and tricking a victim user into processing an arbitrary video
> containing the malicious bistream. An exploit could allow the attacker to
> cause an unexpected crash in the victim's user decoding client and, possibly,
> perform arbitrary commands on the victim's host by abusing the heap overflow.
> 
> Conditions
> ----------
> This vulnerability affects OpenH264 2.5.0 and earlier releases.
> 
> Both Scalable Video Coding (SVC) mode and Advanced Video Coding (AVC) mode
> are affected by this vulnerability
> 
> Fixed Software
> --------------
> OpenH264 software releases 2.6.0 and later contained the fix for this
> vulnerability.
> 
> For more information
> --------------------
> 
> If you have any questions or comments about this advisory:
> 
>   - Open an issue in https://github.com/cisco/openh264
>   - Email Cisco Open Source Security (oss-security@cisco.com) and
>     Cisco PSIRT (psirt@cisco.com)
> 
> Credits:
> 
>     Research: Octavian Guzu and Andrew Calvano of Meta
>     Fix ideation: Philipp Hancke and Shyam Sadhwani of Meta
>     Fix implementation: Benzheng Zhang (@BenzhengZhang)
>     Release engineering: Benzheng Zhang (@BenzhengZhang)


-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

