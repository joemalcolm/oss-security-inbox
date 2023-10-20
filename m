Received: (qmail 24518 invoked by uid 550); 20 Oct 2023 17:39:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24488 invoked from network); 20 Oct 2023 17:39:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : references : to : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-03-30;
 bh=xrceK7yoLE94cBFnUZwf2eMd3uMnBVWac9mCRw4NR2s=;
 b=xHYuscyvrWhk3HuQvPpZdHG5Tjv5WOv3g4Tn1uqzaYmG7XbaO1w91HHxYsIeOr4ujDr+
 JIFM7U6obgnCp6hLez+9H+6GkDFg0oSgOdQMjaeh79Rg5cr9hJ62koNwbGMiEa5vLySX
 c4xG5USoeGOr6+cE5YmpYpkYs+U6IeoBtEp8W47Zgqxvo2ciCaxLeFsnC/KF0kAqOb4k
 Vds44MB0lulWcIe2vNJxYdwiClgJ/58xAvZGAuVx6GrweGFtZJYxAEnHAmVl5KEkyPd1
 wA/BFbqyJ5z7DFh//Aj/LpzpJZC7fOM8rrbLiP1UgnU7ZweRBAOVhK3GmNUWDm7CdsaR kw== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YNjl7utNyg1BJHg4Nuyi/KySmrMjnACB+MxEM3XxfXiawnBiwoQqVLJuqTl2HDn7o15CK+NfTgfyzQcdVftX/I+pwQApXUq1PiTQgsq2kQz7sL5vzzX5lRXv864QGh/sH5r/GC8KvOT82SddYjyxnggMdfCvleYvwPJigQ25A4lhQd05jx9xWCmKHyXcN9/3VNEjT9dFnesSP4F2RybQnOAagjS2H1YLmhXNYQWhduF/iq8SxF2HOy7cMgzNu/uCi7f/WHu0Nqmz+uzRa8nee1LlXwkYjA52VBlxsmIshaCf00lEwPxrM5JjN7U2nrKvJ9n9+IwbGBx1pb81Zc7gQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xrceK7yoLE94cBFnUZwf2eMd3uMnBVWac9mCRw4NR2s=;
 b=SxYaZmBtt+Pwk6808ieB+lJrYV2i+daYEnG/0+XzzR/tP4J1eOXQ0hd2fWKpnjm0h9lHOZF5JUK6+xAt6+PsivJE1qZDQeGhqAhXgcLjPb+sJxSURswKO0Ejs3Bf9YYCNYjH9EVtMHWVd5T5tLtVo0LmSldys0pmxrVpqOBtBWgGXUgDaWtgiUaZavrDcvKBmERzzhXroC3Ed33BW0S2uQgSQrDwZFBc4ud0gXRs3oUYCt4vr2H4+EfCsak5jYA00ueeZg/N5vESUTVeruhlVE1as2KqbyK5IWjrPcvu/GyMgM9ypaCQdP50rUL5oLsInVEVf21KzrDj2yWrJIaboQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xrceK7yoLE94cBFnUZwf2eMd3uMnBVWac9mCRw4NR2s=;
 b=br0/NfTESwL1sMv+7xt1XGt8hQVrDZ6TfolK2g+3uSenrxglxnRRBCd2stR4T6/2CctoA+/p9fbae53AluNBJMFzLEsrua5b5tNO9xNbFM0c0t8I2htYbvw96hXEWEWg+kKN5r1pkoyBp/79zKJaxA0WrG/r+zLKO+gdiMwMJzs=
Message-ID: <700225b5-c214-4f34-bf09-1c25703957b5@oracle.com>
Date: Fri, 20 Oct 2023 10:39:01 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
References: <51049a59-5e4b-4def-895f-97b9c2b92b24@oracle.com>
 <f6d49f57-22d4-48d4-9142-497f9c89ba8d@oracle.com>
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
In-Reply-To: <f6d49f57-22d4-48d4-9142-497f9c89ba8d@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BL0PR02CA0089.namprd02.prod.outlook.com
 (2603:10b6:208:51::30) To IA0PR10MB7303.namprd10.prod.outlook.com
 (2603:10b6:208:40d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR10MB7303:EE_|BN0PR10MB5079:EE_
X-MS-Office365-Filtering-Correlation-Id: cbe9677a-63a4-453a-f052-08dbd1937463
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	wSxZ5VXxT51xluCdXDFeGtDYRTgt8YE/KU+Oo6MFOwwrQ0aON9XhM9sCLtu+3jlUJpcwZuoV5UzbIKBgWknrIR5mcOywU8PysBG+jJx7/MIILMFoFmrhV8/IlghKIMfEMSSeun2oYZHffWy8eYdvQ5JWUbQn+fSEZPSfmd+/8c/DevZsU6LGz8GR1S9Xvwevpx4izxPegR2qU0on5w0dRmPF0LeeLCL9CxKM5MjByOn8QcIl1KwiVa/byygkcz1+0aT73PFBkxYg4QI3Y/mPehLx39hRyLk9p7C8bwfTWASoF1A1ZkCGAsBkycXvSf2Zq9VCVjub5B3FeAT4QHsEEIVoyfv/InJ+Khjn02hJK0ClQOzcuBGbvn43oVyVCJKfObf6/DcU6aQ9wXyUQWuelat1TgKAlbCwSxUqFkeXZ2HvbAN6lCeyqUQD5fMDECK6YMrwamXpNpCeJNLJHQY5OJXfkOUWDKVR9pg7i1NrPNziRCPlRznqrbtu4D8TWBtbZh+pUNKJKdRL6dg6Ms+dOfeZ5KrLcmePCgMGmsjiyUahZEz3tCatDCnflmxhyF0EgkegJDcN0Guaqijgj/6es9rlYnc+G1gcDGkszE/M97hEYD/J9ucixvwGAnlbxEkVSI2pSjqvy54+gA8P8Ki4ufkY1K2q8MLzTt0R3DZ+I9s=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR10MB7303.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(346002)(376002)(136003)(39860400002)(396003)(230922051799003)(451199024)(64100799003)(1800799009)(186009)(15650500001)(2906002)(4744005)(6486002)(966005)(478600001)(5660300002)(41300700001)(44832011)(8676002)(8936002)(316002)(6916009)(66476007)(66556008)(66946007)(83380400001)(31686004)(36756003)(86362001)(31696002)(38100700002)(53546011)(2616005)(26005)(6512007)(6506007)(6666004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cm14QWF2NWlhcDk5ZTVSMjRnam53UjhwTXRqSmRNMy9xa0VscTB1bjZRTzJr?=
 =?utf-8?B?ZHRBVmZaTkJXWWNYRHRJcWNNKzVORS9PMGRZR3A0WUR1VnBxbzZjYzdXNDZt?=
 =?utf-8?B?TWdJRU1CSithWktZVUdIRFFldGFPRUk2R2RvK0t6UGs1VVU1VXBaZVhyYVNp?=
 =?utf-8?B?c3hUWk52RlBhU3VYcDYya09CRzI0QVR3NStjRlRxSmo0Nm1PcldhT0Y3MFh6?=
 =?utf-8?B?UXdIOUswRzJRekVuSTN5VS83eVlKOTNBa0tZdko3aDVoTVFIbnNPNVFVTW93?=
 =?utf-8?B?Q3l0SnJnYkxlWXI3TlNGaWhwTExNWk9ORjRxMVVhOHlsYnFQTmNudE5Ub3ht?=
 =?utf-8?B?MXJTL1pITTViWjdqV0h4cC9rQVFDNWk3ZG1NS21rQy9UaUdxQ2FWbDVETDVy?=
 =?utf-8?B?bWFSekpFcG96ZHlsZTlSQUJaSWQzSi9PVjBwWisxQ25TWFVPN21Qd1plUHpU?=
 =?utf-8?B?eU51U051bVIxTk90TTJsK0w2TVY3Q0FPdjhteXRwdGNnbW1oNG0veFNuSkZo?=
 =?utf-8?B?N3JhWVZ1Y0ZLKzFkR0F4V3RLQmtOTWMwTWNvbG9Vd2hLQW0wbUtYZTRDREpY?=
 =?utf-8?B?dFdEWnZWa005NUtmZ2JtVm1lU3F6QVZJMHRVUVpSR0Fja0FXTzN4V2loOFR6?=
 =?utf-8?B?aDNJVTJQbzlNcnUwYldESTZqb0xCZHRwYU1aZUJnM0pOQmFuSmxSQllKWkJs?=
 =?utf-8?B?cXhQamJzZTBvZTB2MTNzTFkzalkwZHloUWkyUjRyQUdSa3p5UlhZMHNVMGpE?=
 =?utf-8?B?UVlZUStCajU5RGVuYVY5cFJ0ZUZETVEvMi9hRUhxekJpeGtkTFZsMVIya3I5?=
 =?utf-8?B?eTFCR1hwZEVENS9BeUdRMmRpRmFrNXNaWVpWY0hTeWhZaGZuanpqQXhmeE85?=
 =?utf-8?B?OG9oa3p4eHgzalhaVUphaEtBWERYTVVOZU80SVJyckNoQVQ5dVZ6eGtvVHhk?=
 =?utf-8?B?QjVoT3J0WTUzT1RoUktCUDdNYUIvU2dPQjFrN1hLZmlzaFMvb2NGSncyMGVK?=
 =?utf-8?B?d2Fsclc0ZVdxNkJSWnhnSWc4S214N3NRRDA3cWRVd1J3QVdTblcwRjBIVXhX?=
 =?utf-8?B?K0pzSGpwelkzTWpiVXlkdEk3U09vUnJBQkFFR01GVkJ6ejF4ZjVWNmc0QTZv?=
 =?utf-8?B?dlVMU3Q2bWJmakFSbXF3Zk1OZGdxWFc3UEpxb0JNZk1HVGp2ZHdyTi9oY09O?=
 =?utf-8?B?K0N3TTVJb0NXakIyTUJPWFdRRVI4ZFNUUEJqT01IY3FUT3FRcmtmOFcxRGNM?=
 =?utf-8?B?YUFVbVNRdGZQMDgvTlNwL0l5U3UrdEJGVEk2RlJPRUNNNW45dGcraG51d0Fn?=
 =?utf-8?B?Yk9LUUhqbE5oNzhrRGRQZWxpRUwzcGFSSkVwUmhwREVIRHdqUkdjYXZCY1E2?=
 =?utf-8?B?THlWdkplQytsNC9Tc29OektUUHI1Sm1zZnVKdnV3M3Y2MngrbzVUajE1WlNU?=
 =?utf-8?B?dmltZVgvSWJqYVMxWENSaldLSVFzbWhqSnZIbmJJeWh5WGlSOEZzOWEzcHNE?=
 =?utf-8?B?akxqZEhLZEFyU3dGT2pKc2Yvam0yMHVTemU0SU1NWmVLSXBSaG13OXoxNWp5?=
 =?utf-8?B?bGxiZ2hjeGpxRE16eDdEdmN0Sk1Bc0dsYjNWbVhQZ1J4YW5oQWVJQzljV3di?=
 =?utf-8?B?VC9Rb2lmYSsyZGlURWI1VkplbWMyVlpmWkt5WHZzbEwvSDl5UnpBK0VKMW5D?=
 =?utf-8?B?VHRRd1VLOG1kVjgwVmc2cWozcW1mYjZTKzhobVNYeEFZK2tFd2I2YVVSTzlw?=
 =?utf-8?B?dmNKTldKQW9kNkFVdTBGYW1JS1d6Y1RnMEU3VmxGYTcrUURHZkZVWWZuM05r?=
 =?utf-8?B?SGFXelZCSXJVSkkxNVk4bEViTTFpS20vOG5UdjZYeUI2UUt6K3EvenB5cmp3?=
 =?utf-8?B?UUlJbDA1ZGxvQk9LQWRRV0JXU3FSYjZFMG5WZGxNeHNBczlKb0RRZ0RTTU0y?=
 =?utf-8?B?NmJtTU41dFhPd083eGFZU1VXRk44R09Mb3hIblpOWHllZ0djejJGTHNHZEIr?=
 =?utf-8?B?Z1FQQ0I3YktUV3pCTWxWbkkvUGlFaHZoZVZSRkdzMjF3eGc1a3k1YjJaTkJS?=
 =?utf-8?B?MDVxa0VhVkFLUzNUSHMrU1lORHFUazd2S0pCU0daWXJhRWI3TG5NRm0xMmNY?=
 =?utf-8?B?SFg1MXZQMm5BVzNSRW0wTjVCNFR2eld0d3NNQjJnRHM1UGlHdnFEeDJEWkZX?=
 =?utf-8?B?cUE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	nblluqVI8g5SmHrA2Uosfk8eDFh/erZYZXVqx1kHPH6HyePioT+6MIi0wP3c5VNu8SWpr1YbwFvhI+6GOek5rT0YtTEfBNBEN2tk0Ua5oLF673KDC2A1YL6Ju0vcPBn5+I+3tKZGGIO3QQHLyBhxHZWjE+YMxfZyZv4GpAjIDhFoEaXcNMp1GxFfebhmRwUcRKM0Kt4WzXQPFq5NLbD2lHmHh4S4MG0StMDbC1CqdyaPhhNN2oqjWnZS3GH6DNQZOEhZlmZjM4P+MLm8u6ehm8dI9nkKC19LwMZ5Z3aat+1plXP8qDb5GxZDKWqcrWORaZU2Gq31uHD34BGYyTo4lWnsDaxm5K4TRYwWBPEL90AmNsJmxhVeK9azRG3Tqwb7qLSS8mWVqRkLo3d7dW/GdIA4E/8fbNdcrvU2v9N07dPt2/59TGvpH3A+MXgAtdONbfy3GQiCNyrV1n96fOUs1U17tVV/K0IsDp7SN3Siok+48QyR8APIusNq3R6DwEDP+uwgb8QCYID9l46IcgqM2HdUqEbAKRd/ol5Zi/hEUQbpCGYQZjE/TRCcKKzg8XJvjxhQ8Duz8Y4oYvZb33XNCmhpeSFe3/8jOBS0zjH4vc2D6gErgt/rumSM7L2rMZRog33IMgJ5pUMqTc5El7uBrNDMYQkFwpGhKk5vfIvzFHVm6YflBhtwv2qDcQ7Xq175jmcuDmY2NohbeuyjvoqL/KbgSUsUzMHvSXdxpZxASM3kD0NOzhiSpcUxzXsAUS5XZvd2J8N1zFE1DwpXm6ShQg==
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cbe9677a-63a4-453a-f052-08dbd1937463
X-MS-Exchange-CrossTenant-AuthSource: IA0PR10MB7303.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2023 17:39:04.7155
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w/1bokJsoUDLZddzowzK/e2heMWkS24jqeYFLlIw+l+W2F7v7MMkVSjmIWWx34N/5XJRZD8dlhUiiy2YtcWCZRO1LOQa7pkfXWc78U+ALiI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR10MB5079
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-20_10,2023-10-19_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 suspectscore=0
 mlxlogscore=999 adultscore=0 phishscore=0 bulkscore=0 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310170001 definitions=main-2310200149
X-Proofpoint-ORIG-GUID: 9R_SLxtQu6MVdVimBkHtmCEfVxmo0thy
X-Proofpoint-GUID: 9R_SLxtQu6MVdVimBkHtmCEfVxmo0thy
Subject: Re: [oss-security] CVE-2023-44487: HTTP/2 Rapid Reset attack against
 many implementations

On 10/18/23 16:10, Alan Coopersmith wrote:
> On 10/10/23 11:40, Alan Coopersmith wrote:
>> Information I've found so far on open source implementations (most via the
>> current listings in the CVE) include:
> 
> Some more updates since last week:
> 
>> - Apache httpd:
>>    https://chaos.social/@icing/111210915918780532
> 
> The discussion in https://github.com/apache/httpd-site/pull/10 makes the
> situation a little murkier.

https://github.com/icing/blog/blob/main/h2-rapid-reset.md clears that up
and explains why Apache issued a fix under a different CVE id for the
problem identified in that discussion, as we saw on this list yesterday.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

