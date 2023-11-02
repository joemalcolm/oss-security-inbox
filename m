Received: (qmail 28238 invoked by uid 550); 2 Nov 2023 18:40:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28204 invoked from network); 2 Nov 2023 18:40:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 to : from : subject : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-03-30;
 bh=zGffjWfUS1QRcrNEXQCEjNep476CYKkAIPAha0F1YG4=;
 b=HKbcg6jzV9SIUd4jaXQePECq+lr7MWfd1obM2cKai4/qk+PW2smTZ0DW0OUOBTPJigpJ
 CPlJCgI3OA68zf9Qf4Brq1ASIbT96Xi8uwRLhkLUY8bOU7Et/8jIP9Q4rwkFWdH5l4+W
 PHs1nR/wXcC27cLlwOOrffSaji2/vXiHOkq+R5nLVJOYr6Qdo5KNHFtkn+bxUpzWDU24
 BqM5t1E49XxKQrVeyMnFlbcTNd2S8MWuaymzEHF942OU9CSUpGezcZ+SpXcse5uoHpKN
 grX7+x+G+12nW0FKwIXjcTSkhQFbhF/46NlKX1L+bw3KqncWjob9oIeaS/0IVCHbd4Br Dw== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BWlreogLjyIfiNa9tACTnv9t9+fHjx3LP0RPN4QMFDcc4sq29cVgfm/1PdPJzjYanHWVPZWFhXEBjlHNGdYDC3tfpbHelgtksKzxnX6P1LLRuiq3SwKJg9y5w71RdqFTCbXs2n5IzPuA+ItH8MfkFt1JdSSYeaE/Yp/7YwfkQqzCj9teiVfpIKxjvFm93nRCeBhD7jwcOFJyMPLbLrNL68zP8e/ona5VjS6fWaDRarB/0Nj3madCEYCX5VHm4t9MQmc5nQlcvAHxc+opK9mZHBtTtqifmRpOdRossS0E/pbm2k1EO4R7fXtMvIUVmDvShYKJrnog60TmQG5D3QJJdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zGffjWfUS1QRcrNEXQCEjNep476CYKkAIPAha0F1YG4=;
 b=hpxgp8PGsM2Jxt0LehWg1tQzF6L1Zc5nWOaGePvIQF/YTz3yWSvqiSCOCGDgJYKkDRNJMIcifMkqbYIUEwXx8usu7jni2Yr51XLFdGgDIq0YYDvPxAuTj4a1doTkBzOc27V4z9hH1OjGFpS5R9zT5uTj6EV4jppkNzl1Yy5pT0ifjjXwfbCceTN4gKjbuj0gZm3tJ0Ex6/fF7DHNKKwo+Z7Szy4P2ERflJ0hSLUqhiM6ROZBQDjjVgi7Z6KXExczU249sRTn2qX+NC8TyvNC+eCV9nG7/FABOplq9pzt93SnCWg3MN7hr+PdYQHqhD5CDRWqfsMrYK/nbnZ5XtFUMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zGffjWfUS1QRcrNEXQCEjNep476CYKkAIPAha0F1YG4=;
 b=FEUXdygAOzbcNES55SgZqPB8wsAojjEpB5Z5R7erXR3hPRW2gZadJqKS1AClrsLQtWBwlyx+m6dxlHP3fXw+8dp6MG27ffSlo/zewOf2us/es0IdJIy3uQXf6PEqW8XOjZ28ESQ+kFsoUCGKlCk+bvGTPocxHF9O9uf60ejAMNo=
Message-ID: <9db1110b-7dbb-4e32-b174-b62672181c8e@oracle.com>
Date: Thu, 2 Nov 2023 11:40:04 -0700
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
X-ClientProxiedBy: PH0PR07CA0043.namprd07.prod.outlook.com
 (2603:10b6:510:e::18) To IA0PR10MB7303.namprd10.prod.outlook.com
 (2603:10b6:208:40d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR10MB7303:EE_|SA1PR10MB6496:EE_
X-MS-Office365-Filtering-Correlation-Id: b09f9191-a3a5-44d9-9129-08dbdbd32326
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	+XxhMn7h5oefbk6iZ5Kra5uLHLw/m+kFIpHeijSOcDoUTV0QmF1BlqwGesVZNLXpueUeDzbUidpw2pAeV0c2OSVYnhCg0MTrDoGX26Hf+zhCFZptwZ/5yggrxMdOfAs3NfxM/t9n2b1Ofgw2+hE3uWJ6l9xeMmc4sZfZ8KkUlKztvaRu/UWEcUlM+d0LSPpuuL//ysJTYKbUpEPPLSFyigM73rR+aTjVaX2xwC9oNQAuRXe9pmVYdCbTjxYpnPQc4yawHSQoZTePcDGpxAB3hyIgIUDVFUlfbP5XSMO+FIBazk67yTqgOgjSW9saR/E9zUDpaf9/M4lqqCB53jxCGlzY2j3D49YuzJiXSY5SYqZNog3/v783crfaVrZkVcabjdzfZNqVN76CMQ0Eva7mMbxpWP3WG7YsU5eDpD/YBJh0+PK/TmPGmgkg1wYVSW7vY830cWXIPUov0rmtZdR4nxugBDfF9uWw+Lg2te4ujjI44QxrR29kVo/ueoalxNYM2AzJJvYco2tBI4X8YwnCwYxuWX47l4FBL0Zr4kZMv28/bUmi4Ej9mVltLNom5iZFoKaQklCfNnAcgK1jnVuj6KKyFx62s1assIEWGMo/Cul5KCw6KUEZvZxR7tjU/Q1fH5S4zVztQUxlBIjAKy2nuwQQCPtRqkZmZbMvleaovietg+YgH6TR30yfv9xOns+x
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR10MB7303.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(366004)(39860400002)(346002)(396003)(136003)(230922051799003)(64100799003)(186009)(451199024)(1800799009)(966005)(6486002)(26005)(83380400001)(38100700002)(66476007)(66556008)(66946007)(5660300002)(6916009)(8936002)(6512007)(8676002)(41300700001)(44832011)(316002)(6666004)(478600001)(2616005)(2906002)(6506007)(31696002)(86362001)(36756003)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ODBzQTBlMW5WdmdRSDllWGxzU1I5MFN4Z2pJRXV1UVpQRjJjWWxFQ0twcWt2?=
 =?utf-8?B?dWQzTWdBald2cFlrOHBNYmJyRXF3V2hzdDJpRENpOGZYVnB1MGQ0VWxjVzl6?=
 =?utf-8?B?ektSSnhDK3hFU1NZaERiZEdKL0dKVHFBOXU1WUI4cHZOdG91SzlTSU1TK2Nn?=
 =?utf-8?B?T1Q4NHd2T1RxSndFekZkMVV2Lzd4ajg1cDExUTNCQzA2cCtFdmlZQ09CU1VS?=
 =?utf-8?B?TmVHZ0JuaHJ0blJ1amx6WTRERU5nU3E0ZmVnR3NZTWNERHBNUi92WU96M3pl?=
 =?utf-8?B?Vk9CMElYREZMRDVVWkFOaXRVNXJ5ZEtyN05mazZ2NkNjeVNnMGhjMGpJTXVy?=
 =?utf-8?B?MVR3SmJOSGc1dFpjT1lyMk5YRFRFTnc5c3pIWWZoWEpsSG01LytXMExnb1U2?=
 =?utf-8?B?c0UySEs5S0hQUXBNTThYUHNZbnVjLzNmV2UrTndqT0I1bmdneGpudzkrdlVY?=
 =?utf-8?B?VFJyZTVWcERQNTRnSTFNbEdzRFR6aHdNeVU3RHEvYS9HZm5DRVEvS1Y1bDZ4?=
 =?utf-8?B?SHJmenhlRFdTYWdBd2I3aWZYSythRGpXYmw1c3gzUWgwTlk2aitCbjZ4Wk1x?=
 =?utf-8?B?aW1qR0lGSlh3VytSWUJHaWFsdXpESWR5dS9LMXVXRWRIN2s5TFlkdGt3WEtN?=
 =?utf-8?B?NTNFY2o2eDlsVlgvMTlJTUFmNnlJV3BnQUNrdko5YnM4SnhvL21oRm41NytU?=
 =?utf-8?B?aXlodGZ1ak1ST1owampYSnlDNTZxUnBSWVlSV0ExdStQR3U4dkxkNGkrdXAr?=
 =?utf-8?B?RkdFdnh5aW5aYTlVZ1dsZ2VkVkhFbC9QeFN5TkhCZnVka2pzdW1oUEFHK2dz?=
 =?utf-8?B?cjFvaTJndFhla29USVYvWlB1ZjlELytsbkdyTXRFdkYwY3FHL3JVTGowNzRX?=
 =?utf-8?B?RUtCUkQ2cEFjdmUrTTRSTmxHK05xZ3RGUnVLM2x3VlZzaE1ESEh6TkpzLzQv?=
 =?utf-8?B?elJObHBPQnFIQjFjWXB1QkV2ckVwOXlvQ1QxZ1dHRnUyT3lWeXhqRzMvd0p6?=
 =?utf-8?B?aWR5ODZtS0hFeHVPc3NBbWVlcEFIMU03WGZwRmxSNkdmcXhXWUczQ2s5N1JH?=
 =?utf-8?B?VHpsejBSbHFiNjh3a2V4RytUYnAvK0hvd2NCYnRTZERlRHA1UWJiUDdiaGJu?=
 =?utf-8?B?UGp6Ym0ybDRYRVo1YUtKbXNWNGdjKzIwbWdCUkV2NCt2ZlEvT1VWdVJZSG1l?=
 =?utf-8?B?QXg1NzM4STZiQjZOdmNMSVY3UHRuQmFHRzZhMzhUWS8raS9jNEpKcVJ0cm9x?=
 =?utf-8?B?bGk1MXRRVmh1eVgvdU5wWEtiM2dJTVNHdzFMbzZncTlJY1ZCQzJhU1VDTHRC?=
 =?utf-8?B?TmVkUWovTUkxdTQ3R3NRWnBZZEpValdTTDQ0T3JFOFBRRzRCd21QRkdwdUxu?=
 =?utf-8?B?OVRISGtTK0hxYnF6TU1FdHQ4WUJSQzJvYm41Ym9oZmxqOURnaGtReVkzSjY5?=
 =?utf-8?B?dTBXTVNaek5vSldiQ3VqRzdrdTZXM1l2Zi9hakJmWDBtYk1oQWQycDdlNWlG?=
 =?utf-8?B?R3JpWnJNUWxMMEp6OXoxdVpEU3MzN09JdSs2ZWI1ZVpnNmV1ajhadWRPRW1m?=
 =?utf-8?B?ejFtT2JHYS91WXJvTlpFYlRJWktyckdNRjNaa3FDTW5WcW5QWjR0VU5GZFd2?=
 =?utf-8?B?dnJxSkQ5YUdvUTMvWG9XWnFkOU1XcG1aaEtFcitYRm9XTitBRGRmRlg5NmEv?=
 =?utf-8?B?R1M1UTh1cTBOZW1nS2s1ME9vdWw3RUZxWkw0YXFkUG5CU1VxeGpJd2pWN2x5?=
 =?utf-8?B?S0Z2NVFnSkZqbnczdzFDTUtmSVFQcTQvT0VPc1hIMTZlMTBMdW9LenFQUk9q?=
 =?utf-8?B?SW9CWDFWSDIzVllkTWNoWEFnTVJWcDc2V1U0MGJYNWwyTFBZRUZ6RmVkKzBZ?=
 =?utf-8?B?NjIva3k4Q2RiRzdxTUw3VGwzL2pXU0pITlVncWs5TGJhcDhSbjNQSmZXbFdD?=
 =?utf-8?B?MXVNWEZPMTRQLytrMUQwZ3JpTlZMKzRwRkc0dTNnZW9WcHhpMjQwcEhuZDU0?=
 =?utf-8?B?bURtNFJzZmE2Z0J6R01xY3B1UysxMUlsa3FENjVPWWVlc3F3T24veWlnNHJN?=
 =?utf-8?B?akVia1dhMVV5d3BtUFpnTU4wei9zanNFOFcramxHY1NOR0c1NWNYVTFYOUxC?=
 =?utf-8?B?eUlib05PVkRsZVl1LzlaazBrS2FxdzdpYklKOHY5QThtRHZ3cGExVUlpNGxu?=
 =?utf-8?B?anc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	9JzPCVjoB72J5w53ktyhebry4M/b//Xa6CFqJK0D+i+OeQOt4xg7/lDCANuvzuhiv9EQn8g2LUVlDzHv3ouOLQQGgGqLOFSRyRZCcE3UBVO9iDMtLoqBKKRSVBe3mKmbZwlZq7rmx56PnfK6lWwqJtSntrM6BPEoFySeDgPLoBKoKPnEMB5IanYnzu3A0GK9vlBh+48Kx9I5mrI3ygoJ+PlgOfYLgAowyHiRWNaFH4FiKH9Ea3CyxUsOWSEWvsgi9szFKb2Admw9IBsbkoGWGd72+C+YqTFq0HNTsQ4bSPKIqB7KMxlun9PoZCnDErLoEOojMT8svI54n6VKkO2LuNlQ27c7CsRIKvOPQao5KvxxhxRIgRJ8QFnr5WxQZMt/0+bFe0u7KPfJKICp1cepzZazp25BoEl77AhDxIJOzvqYwikWzuDFYGKaBv7ISzfUqoMg6vFzD9ab0bBcOVV/IeWDfz4allpT6LA4ML7KzOL95pI+bSYI2t4vOBujRf2O1B9JrQ6gZA4zl7g/3v3ml/IZx8VOaswQi3XulZzl7IFKjwS4KcgR+ldgceOGu6wWIF+j/6D1Gj9dwScWJgYss30+Ld1KT0BTWKCR6+5gejOMvUYN/Ye53ExvD/HRaH807XiB5lg7VMYuaf48Jt1JaKQj8BK4bOwxTzZFdwJp+f6pHvBcZB1hPENbp5BvOHzbaPGiYtJHAw/kXBdpvt7MaMKgR1fi+uE1l3102ob3ixJpKl2eEV5Na1QVXBTnZxlCgP1v4VeyTTql2LUQzIMNjA==
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b09f9191-a3a5-44d9-9129-08dbdbd32326
X-MS-Exchange-CrossTenant-AuthSource: IA0PR10MB7303.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Nov 2023 18:40:07.9205
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xpYswhw7D6hPNSa5XEYdjv7An50hfWowzPPBPFsLJHzUHWgJM1JvykpXcnY5+RJXKqmJTYuPaGTU39AeACBh7EjHFvwUn6SglI0KMxJnBFA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB6496
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-02_08,2023-11-02_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 suspectscore=0
 malwarescore=0 mlxscore=0 mlxlogscore=837 adultscore=0 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310240000 definitions=main-2311020152
X-Proofpoint-ORIG-GUID: OMdROmZAeEInKBaMdir-BPt6Dv5tFmNV
X-Proofpoint-GUID: OMdROmZAeEInKBaMdir-BPt6Dv5tFmNV
Subject: [oss-security] Session File Relative Path Traversal in sudo-rs

[I'm not involved with this project or disclosure, but saw it go by and
  thought it worth mentioning here.]

https://github.com/memorysafety/sudo-rs/security/advisories/GHSA-2r3c-m6v7-9354
discloses CVE-2023-42456 in versions 0.2.0 & older of the Rust rewrite of sudo.

This vulnerability requires two pre-conditions:

1) Your OS allows usernames containing both '.' and '/' characters.

2) Your site allows users to create usernames containing both '.' and '/'
    characters, with no process or manual review that denies such things.

If both are true, when sudo-rs created a filename containing the username,
it failed to escape the characters, letting them be interpreted by the
filesystem as references to higher level directories ('/../..' etc.)

I don't know how many OS'es meet requirement 1, nor how many sites meet
requirement 2, but it appears the sudo-rs security auditors were able to
convince the developers that the numbers were not provably zero for both.

If those numbers are non-zero, then I have to imagine there's also a non-zero
number of other programs with similar bugs when creating files with usernames
in.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
