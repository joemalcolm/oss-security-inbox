Received: (qmail 21967 invoked by uid 550); 14 Oct 2023 00:12:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21934 invoked from network); 14 Oct 2023 00:12:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : from : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-03-30;
 bh=81XRwcuyk7h0bta8rZjjBcGvFjEJ6hwzmzEbxSlgVTw=;
 b=SA5odRkucQwoxA1XXE7nhtFf/momrBwVvAwxEGMYvJWykn1XP8I/knYjgxVXVVo3RfnY
 G54/i7bpxKfowpBKnCum2xcozXqI8izQPnkR6X5Xxd5qtfVj3MJJ36TnjgakSpWJMA9s
 XLAcxXFdCAowyrLz/LOjrMfetZo3xRg96BhHf79EOxAVx/AM1AC4+z6WBK8YqT3D+QUG
 A0MK9NrMiq11HgyFMRbbtjhcufq+pLWS7NPgKPRv/yrCBDqyMhEzSKZwfye2zIP/RH/r
 Bl9S0V7wEVMXS8zmQj1OdXfBAzd+O6kbAehNjPtwZ3zanvH+q0PexhY42EsSVtmE3qOz hA== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KjU4qfSxPSWjRe7EG2pKMSRy/I5eSHjkO5jlwHmV+ukQotrVlim1ZhQvQKXDFwSwB4KPG4fbpOrGpG6lhkQtRJcH4nrnIc7l/M0FvM0V0t0EzGjB9tw7dSaNjc1GJT0xbCimIA6LO9eF5pYpY3TBhwgfFBu7hXxJMxNvMYnI+g4azY2FtMJOTUgCqU/isCmoZpExGQadaL9CJfP3fvCMtoXKpsN4LD3NqTIwj2FmeOXbqAou11Z9eX3X8pKHfh9NE/bs+87iCEwX5/SCqQkcmg/HZq4fxO8QEDhjrIdhLS9ih1yh9Jo+z0GZQJS7qyUJnR8cwu2bYbmaY5f8Cm2yIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=81XRwcuyk7h0bta8rZjjBcGvFjEJ6hwzmzEbxSlgVTw=;
 b=nmDcu4tGhlmDJ2nM39EvnNaqB5+KJECGjcVnfyKfj1/Bk9mPRU1MlHh+AHnFUmjUyFbDZ1wLlBO3If1zGVVNTuazUE4arciUNlMrf+bB9Uhsvp1+OBD40Jciv2yiKAZFCGjieQiildomtFDu2ac6ZM1bNpQ7gypm7CYG524YublwGBJq0zFPL0uyngME1QxQ6TfshHGfru6dUidZ/tyEyKG3A6Kic5cz46tnXCUfv88sypvPqcUBikquOZfYHyEOJNqqIXd7uSxjxUlYfPjvLTD4DglPyqVN0tgt1hCeP/SlqgHO8k2ZhAHB8ldpHucIG5YEtKeLO9Aax9aThyqpxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=81XRwcuyk7h0bta8rZjjBcGvFjEJ6hwzmzEbxSlgVTw=;
 b=YPpl1+NA8cDdo7N2ss4KPC7KDCMRmonSaDgTTPoxSEDuYeQMY01feUWnTBNUXHd8tywROJ1cjN7vkLvt8h5Dy+Xd9zP3LJkST3AiKZ0naVz24l+UBofs14W2iMTRLHe4ZQYugi3mNo5f9DMPTiV5qdNU+vi2vOabArvI4gIEgxo=
Message-ID: <f7fe3602-156f-4d7a-94f9-bc66bd61cd1b@oracle.com>
Date: Fri, 13 Oct 2023 17:11:55 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
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
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BL1PR13CA0012.namprd13.prod.outlook.com
 (2603:10b6:208:256::17) To IA0PR10MB7303.namprd10.prod.outlook.com
 (2603:10b6:208:40d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR10MB7303:EE_|DS7PR10MB5053:EE_
X-MS-Office365-Filtering-Correlation-Id: 241603fd-0d46-4ecd-e3e5-08dbcc4a2eb5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	gS04bPdPzFRG91/lQA0xpKwAyQJbxmo7gVxgpuOQsoKuXDYsUdENawERWa43XvYjO+owI661UEMX8iFOsOEQ5Fgf4rK/+S/DMtohOBaDnSakNXqXsgK+WgiWrVWXEae//lhO82tvCXc64rYy4vhrJZlNk/y6W7jfBp1t5PKZvM9oCwpxpIZOT81fPiLTM1/wNRGvPG6NpwCwJI2WaIy99u+rzFmLGNjP5u13oKoNZ8WdbRCHD1//4NoBSmG/6QmmbsCtKBXcI01g1k0ZvtQIsTCIhMiCg8N3wlNNCrpBpcDRNKSARiNvjCYfnkXA0Ll4/IsIVQ5Fz/sifldonnsEPAkCGoi+X5cs4kaq+QlMJnKmeN7xi1YxyvobJVu1Egg/eKWTb2Fs3V0Az47uoPBjw4jAdKBvpq8VJWpWdTt6g5ppYJNvu0qi4UWArk7FDCo5jeC9Tx7UyT1a1JOpNQejRKMD90jMfdnx4IIghkVIZOYtQRKF8mmbJjUGffJ9i1tNy+iy218nsk1SJBd3wh1Em2byTMnVUGUiF7kMIHsfwx0/Mmcyu6NnMkj9fUBk4mXzf5/mDvaIuuf8XuorA0B5hwQ5xYpsNvuWFeldt5MEO5uTc41+GW0dN+e/gmsv1BNSCgM12KhGehbwbW+F9JqY6Q==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR10MB7303.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(136003)(376002)(39860400002)(396003)(366004)(230922051799003)(451199024)(64100799003)(1800799009)(186009)(2616005)(44832011)(5660300002)(31686004)(8936002)(8676002)(26005)(6512007)(36756003)(38100700002)(6506007)(83380400001)(6666004)(966005)(6486002)(316002)(66556008)(66946007)(66476007)(6916009)(86362001)(41300700001)(31696002)(478600001)(15650500001)(2906002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?U1UrWFlhT0F3eXVFeFZnMENiRm5pU0lTbFprWitnRDZoaTZHUFl5WGdHd3Y2?=
 =?utf-8?B?VXVTZndpQnZ4WWMvY3ViTytlMHcyUHhJRmQvOENUcTFRUjZwRFpWMFN5cGh2?=
 =?utf-8?B?cXJrRFNidEhnSjBCMTRqVGlEcUxoT1did09HZEM2TSthOEk5amd2aWFYdUh2?=
 =?utf-8?B?Qkprbk5yUFMzVTZJZjN1NC9VemRjcmlGT1pBTVd2cmtQZnA3NVVwbTUvUWNL?=
 =?utf-8?B?dFFmY2FnSERMN3F5ZUJ1U3JvRGUxVThTcWQ2MWdsbkZwZ05rVjVyTFZJWXZU?=
 =?utf-8?B?KzNVSW1Bb3ZiQmFHVE1PRVQzblYvNTNBNW1VUTJvbkh5SHBwdE5pOW9YMzk1?=
 =?utf-8?B?OUhvRXFiSXhsRnBIcXFlUGlkVlFHaXFHL2hzZHRkMTcwU1FUQnRCc2tZeFBx?=
 =?utf-8?B?dFVRRkJ0STFNTlNQamg4NlVlZjdRNUV4ZlJOVUFBc1JEQ1dvQkxWcTNGODFz?=
 =?utf-8?B?QU5DNlBTREN4VkNjSDluSWdrV2VmV0RpSEhlT1A1VzdUdzlCbzMzMjVqL1Za?=
 =?utf-8?B?ZkZVcWZRWjIvZE5oSXdsdS9FVnc5Q3FNR2lhS0t1MjNQdDNwcFgwejNPYXBP?=
 =?utf-8?B?VTg5SzFVd1d3SU9RdVVreDdtZ0w2TDRYeGpsa1hobW5tU0hhMFVmZ2FHVmJo?=
 =?utf-8?B?UUttTUJIdzQvdUNKQjh6dHRjek5QbDRlaStSVVpnNkw5ZGxsSnFYSUJ4dC9J?=
 =?utf-8?B?MlpuY0lCRkYzcW5EL210N2ZlNmpveDZwWThkNnF1dEc1L21UTzUvNVJKaEZi?=
 =?utf-8?B?VmhTSm9VcTg2Q3llZzBFMFRPRFMzRE5QSlpMNzVvb01HZWpXbDFqRm5YaDlQ?=
 =?utf-8?B?a3ZLNlI0LzIyTHIzNXdjcWl2WmpZcHNVMjh0QW9oMDFXQU5yVFVkUGtIQ2Zz?=
 =?utf-8?B?dC9HNDRzbjJsL3FGZ3laeVJ3eklMMmI4bkZCdHN1bXNWWVM3RmswSkc1bitF?=
 =?utf-8?B?cDFXQUo1a1VRU21qRWhoUXQ1d25EbEpCY0Z4cFdtazN5V2xEdkFFNU85VGE5?=
 =?utf-8?B?VkFZcWhPdXkxQnRueXJKbXJXUUNjbVQ0ejFrSi9sbVI0ZlRYY2NWVktGenNt?=
 =?utf-8?B?RmIzMDZodjR1dHVvZ3dRdnNWajJkTytESU9OaVgvZHd4UzF0VlJ4MFcrSFZR?=
 =?utf-8?B?ZE10QWxTbStUdTZ4YUdKT1ltT2pSWG5qTHpySmtnSFd5TlVxdXduTWtLb05a?=
 =?utf-8?B?RWt2a3lDaml0Q21tUTdjN1FrcnkvT0F4aHIzZ01lR1RzU2gzbTNYdW0vQnhs?=
 =?utf-8?B?R3pMQTdESmlnSzRnVGRQb1hLN09wU0E2aEtJN2l5R0VOMmxPV3Q4Tml1dy9l?=
 =?utf-8?B?V20rTHBORCt6cmdkSGZCTlZNc1R6VFg0VVJ2MFB1V244bGhYOGJGa2VjRVk5?=
 =?utf-8?B?TkVVOU1YRTV6U01OSENnTUpLVEhiQXhDdzdYTTFoc3RDa2hNaHlZZzd5T3ow?=
 =?utf-8?B?S2lMeXBnelFCT1djV2NFZlhEdmtXU2ROZHZCdVJUb2swUTZjL1prVlhnejFP?=
 =?utf-8?B?T2o4bEY1bUdpdVhoOGd2TlgzZGw4ZXRVYWkySzRlY3RjL01rcjBOaWFEZXFy?=
 =?utf-8?B?Q0lQS0twbjBmcit4RlV5bE1hYjNndXRBa2RNREY2d2VzamJzQ2JFSE9JcnJ0?=
 =?utf-8?B?K2F6U3ArNmhJZktLam93K2FyMDZjWklVRlAreFl4OE0wVGNyU2ZmcmFMRVRl?=
 =?utf-8?B?RmdnUmFDbzE5R2xOUDREZ1ZWbTVuRFNwQ3hWZFQ3VC9DUmlUSDdrb1Z3WFhp?=
 =?utf-8?B?YUNyY2xOSW5VUnlkNU5nZVZsQTdTUzRUUEF2bnBuZVJzWHF4N3FVbzdjdnB3?=
 =?utf-8?B?MXBvUWpmaU1BTlZsRUVVaTFaV0pXL1pRYkN5WEtVc0czOC8zQ3REYUM0b1Ft?=
 =?utf-8?B?MWJUZ0NQMW9ON3FRM0Jyb2lkM3hvSnhZOVI4RW94OG9ZbytuSzNscWV6dlgy?=
 =?utf-8?B?YkNHQ3hURUgrZTJOTlhYc1gvMFphRWpmRTEyTWo5YTVqdVFOd3o0UkV4SFcy?=
 =?utf-8?B?VDZtNi8rQ2JOUVU2azFSaUFLWktMTk5TRjJLT2w3QjEvaUtNSlk0dWFZNG42?=
 =?utf-8?B?T2QxdGp5eC90UkpHZHowQk90bTZqbWsrR1VGTzJvVWl3UnBzWW9DTEh5WnZZ?=
 =?utf-8?B?NnF5eW1BK2ZYdVF5bnNNSEthcGtGS0FzeHVjcklZL0J4QUhBRVA1RXYwczhC?=
 =?utf-8?B?QVE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	bXaEucuY+OvoL6oekrFaLWY9ND9ZLpmdia3Thi8HRjwP3IFr7rRxmWyxJqRHJQJPuvvCp4Q8G1o0v2IlI8KssA+o+vNYbGvNtJ9hSQVp95WkH3omMnGjT0PdR59VC0fNtsa0k0Yz1OfHpJ1Fmis3A8P6KObidru4kaZtPsaGW+4xLLobdEg1nprOV+/3nKhhB4Ep9SNtnuQx/QUMRU2C1ZiOHU4vU8O1jZsgN48pisrPXu3TrPSWpwEgmjAcqxy7pwkn4vT+DDotXjqZkzUMnniUSu8BHi/H++P2neeAY36O4/vGcUpnr+EaJY3EwWksSpWmA6dBqrBNL3Uog0snY28rNNiqJ/g3BWmlroY6Z3HjXCH7xcfUqUpzqcktpB/jXNvIEGQyqQiTwH81fmg+ZiKZz6o76Os/uAU6nZUI2tF/1L/XkfNypLl4na8ZvIIuVZtXTUUnXJ/C5iM1E1M8z8y48/kYCawh+MRPKATxlUbZu6Fv/oC5M2SaEcuxzlsfXYK7Gr5nLYhKJgzvz88quF+liWKu1SMK9mJQ6pSSPbie5dApzXSkwkq4j8y/LQzBca+xO/2pH5Qiakrilar5zl+yLNONhNuXk3kQFseqxYcMZpdTqQ9C66AUsAZHKKTLtjRxmnT+xPR1oGyBAOpEKBsmlhrJj6e/NY5lkcyMqN+EHYzfATIvkY+BpiGAd2fTYqMaff8ZYvXoLcmhZh0M/SbFcnHhiIL9EYbwdbksNF+e+q3gZ9KE8jOB280RM5vGu0XmcGYCWgiH+rrunHFlqQ==
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 241603fd-0d46-4ecd-e3e5-08dbcc4a2eb5
X-MS-Exchange-CrossTenant-AuthSource: IA0PR10MB7303.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2023 00:11:58.7212
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bx4Vsb+nSDp0EKD83TNGOHoSZQ8I1ZTfCFsvE4PzQqwqCHsmXRP4mu5UBGnaUV9/p1coTumeHU1UJotUlNfQ7DZE2pLOiavGBJM4BSVAHWk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR10MB5053
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-13_12,2023-10-12_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 adultscore=0
 suspectscore=0 phishscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310130211
X-Proofpoint-ORIG-GUID: 8zPOPTzSjbvhvkCxBMOzEtE-x-Ckrk7t
X-Proofpoint-GUID: 8zPOPTzSjbvhvkCxBMOzEtE-x-Ckrk7t
Subject: [oss-security] Samba 4.19.1, 4.18.8 and 4.17.12 Security Releases are available for
 Download

Forwarding from https://lists.samba.org/archive/samba-announce/2023/000651.html

> Release Announcements
> ---------------------
> 
> This is a security release in order to address the following defects:
> 
> 
> o CVE-2023-3961:  Unsanitized pipe names allow SMB clients to connect as 
> root to
>                    existing unix domain sockets on the file system.
> https://www.samba.org/samba/security/CVE-2023-3961.html
> 
> o CVE-2023-4091:  SMB client can truncate files to 0 bytes by opening 
> files with
>                    OVERWRITE disposition when using the acl_xattr Samba VFS
>                    module with the smb.conf setting
>                    "acl_xattr:ignore system acls = yes"
> https://www.samba.org/samba/security/CVE-2023-4091.html
> 
> o CVE-2023-4154:  An RODC and a user with the GET_CHANGES right can view all
>                    attributes, including secrets and passwords. 
> Additionally,
>                    the access check fails open on error conditions.
> https://www.samba.org/samba/security/CVE-2023-4154.html
> 
> o CVE-2023-42669: Calls to the rpcecho server on the AD DC can request 
> that the
>                    server block for a user-defined amount of time, denying
>                    service.
> https://www.samba.org/samba/security/CVE-2023-42669.html
> 
> o CVE-2023-42670: Samba can be made to start multiple incompatible RPC
>                    listeners, disrupting service on the AD DC.
> https://www.samba.org/samba/security/CVE-2023-42670.html
> 
> 
> Changes
> -------
> 
> o  Jeremy Allison <jra at samba.org>
>     * BUG 15422: CVE-2023-3961.
> 
> o  Andrew Bartlett <abartlet at samba.org>
>     * BUG 15424: CVE-2023-4154.
>     * BUG 15473: CVE-2023-42670.
>     * BUG 15474: CVE-2023-42669.
> 
> o  Ralph Boehme <slow at samba.org>
>     * BUG 15439: CVE-2023-4091.
> 
> 
> #######################################
> Reporting bugs & Development Discussion
> #######################################
> 
> Please discuss this release on the samba-technical mailing list or by
> joining the #samba-technical:matrix.org matrix room, or
> #samba-technical IRC channel on irc.libera.chat.
> 
> If you do report problems then please try to send high quality
> feedback. If you don't provide vital information to help us track down
> the problem then you will probably be ignored.  All bug reports should
> be filed under the Samba 4.1 and newer product in the project's Bugzilla
> database (https://bugzilla.samba.org/).
> 
> 
> ======================================================================
> == Our Code, Our Bugs, Our Responsibility.
> == The Samba Team
> ======================================================================
> 
> 
> 
> ================
> Download Details
> ================
> 
> The uncompressed tarballs and patch files have been signed
> using GnuPG (ID AA99442FB680B620).  The source code can be downloaded
> from:
> 
>          https://download.samba.org/pub/samba/stable/
> 
> The release notes are available online at:
> 
>          https://www.samba.org/samba/history/samba-4.19.1.html
>          https://www.samba.org/samba/history/samba-4.18.8.html
>          https://www.samba.org/samba/history/samba-4.17.12.html
> 
> Our Code, Our Bugs, Our Responsibility.
> (https://bugzilla.samba.org/)
> 
>                          --Enjoy
>                          The Samba Team
