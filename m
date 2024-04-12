Received: (qmail 24274 invoked by uid 550); 12 Apr 2024 19:05:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24235 invoked from network); 12 Apr 2024 19:05:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 from : to : subject : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-11-20;
 bh=RYwpIrY2gC3qFd6I+885BgLWtgStm6Qn7BiHLdmrtwU=;
 b=oQb8OawTAtJebgsu/MGXnL5b+1n5gtxb3I4II+M9Rw8HJ5og1nP6Mu5xhv3bCAUsq/JP
 zZgpWHHIgIa2PS2+4MbGVjMavGQoH5agC0g19fMZW9yRqQGX7eWgufgDDBp94GJHyc6T
 X0BBg8fTC3SMBHly9b2uH4IYmP1BxkA4p+sCY2IGjwaawGV5IMImLw8C1FNgOuFHqmE9
 9bgSrwoMXTpDjJ17KRE8RfVP00EVWxocwiUPOuwrnq0D515PTfOTczbemLLArEXEe5QR
 LOEF5rZ5BVX+3O3T6O2wAjfL/sAukCLYTAdZB6D8QBNuKHYSxmTdDLw/omtvq/cxSjWU wA== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NwGKcpCvM70XdYVAx1QqTD7+tZ3HNHuoaKYWx1qiHH2kg1PCg70IjzHtiiVz2ovVhxdzjKxuohjN6f6OsutLEc1c+JoIqWlOeILvT46XUtpSMmiInYZnZLA1SbeVD+6NW7x58ycYBPoOg74DQQs67RVOMprOyClq92S7tAFnq/r8OAC0cyn9VWGc6NXCn85ZKS00iM+MbZYfO1Qn7ejMNjAlciEzDjEZzSnquhLd9xMwhPU+XfgkkgVm1zzehOAyxCI3U+lUnr2rcwIEdnxOJX1QhMmw698UYLUzZM051HUtrMLN+VuN4zHE/gPYbWFVWIWhJigGH9ekh5kEQGiH0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RYwpIrY2gC3qFd6I+885BgLWtgStm6Qn7BiHLdmrtwU=;
 b=XQjSrvCZMdik9JSeHLJbCSNfqQOQnPBaN82VnNUGEaLDXjBoiFlZuEhoeGQM5oDDJGwTkwu1ThfCSeXPpClUbI1toXHIsVJH465Ew9QMptek6tm57CD4Q0YvoBrj9lZKCgLazUnZEnW0UHfa4hxoGaPvrMNpzSoy6yt4bs1YJf97l7joZuRE+E/6eKShboxALVPmK65GoS72gy34IEDAE+YLiVL/eOzcCZgCfbcnCnRyqeH/IZD2Al7k0Dd7elKg1NZjXFmSpJYZVhvG4hl5ogWkQYoFstfxnxADxdmpsdYSdASjoEvbDaRX5hERmLJxA6iy74SZ0gGO4mRdcwe0mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RYwpIrY2gC3qFd6I+885BgLWtgStm6Qn7BiHLdmrtwU=;
 b=z/IjppktHZwApYQGjzpiWwsWrVIsmYfiPqvLH8ugUluEbKzNLpAFnzqoIR1m/vxOpb57SMXAFWzQLNTmNx0XIFTo1atTI84yK6pq8bsvFv5g1NGMfxL0Yvs+2MzBwNTGZIMY+yEPCqto0Vm/edcBW9aID5aEPQwwQmXXkIdJSd4=
Message-ID: <133f77d7-213f-4bcd-bd12-c9889734e442@oracle.com>
Date: Fri, 12 Apr 2024 12:04:54 -0700
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
X-ClientProxiedBy: SJ0PR03CA0198.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::23) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|BY5PR10MB4228:EE_
X-MS-Office365-Filtering-Correlation-Id: 90a9ef85-2b63-4c8a-d831-08dc5b23719b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	iiV3BprxLBbeX8rTxxYYsR0ochD4SfxC4CfvAeTYn4aF44/sOHmJQ4Hvnqv36dTyCKu+ohbgNv/4FozuHTdHZRdDAc4JgGZrUZBlMWblW0bXbXkHM3vwSuDP6AC4KTNPtDELR7CXMbbMmBqnYrHJ2qTQx5JRpoI54DHJPn6Hsm7VNMJvBpbwDJhMdHlBsU8Zb6RjmYMDo0XG/1jtNNLgDWBv9jEPgijoEkMDJu5iVv1enFDqcI7RTaiRK4Jlg+0D/jK3Oiti4bs6JO24v3tsU7EUyjMA76Vg5knsCZrGJJzLhmuEEz1P7JTwmgUeM2EOMcBESfHp+/0YRdFqrsQdXy+AYeMeeUvUaIHUUQ5uW6e290bUdptMiwXoXZ8wqZzsM0PSEsvBoS7O6gl5Qy8DiUcmNUUZLNZwjmhTQeD26ApzEyW2E2yLBe68xi6yIFV1JKVUluudU2GEfPIwS+Idqn7qLGoViAdmQob1mSsyxo4w4c+SFa6VDDf/lb8GMTzH6Jqg+7dxgeyNekYLpI4q0itySfqVoj9EYb2Cnu9h9io4BWkzF7k1fpa9Nd621Oq+YxGwJuLb/FMcAU+yCM4/rDAf+MtZ5mcisWFyJHQeI5IaFpb7DXKCPrLyXy2z+MyZ
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(366007)(1800799015);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RHhoS2xKbTRxbHZyOEI1Tmg1K2MyZzlGTVJhU21oS1hQREpKQTVqekV4aTFJ?=
 =?utf-8?B?Q1VhSXpqUWZvdGJ4aFoxUE5rRllkVjROSmNEeERZdUZ4ZlYvYkZzR1RMOTdm?=
 =?utf-8?B?dUd1RXRDalBzZVV1Ris3Q2t6eG52WWJNeUpKVU04RnhZeXBzcHFnTjB5bjBp?=
 =?utf-8?B?Zlgra0xRdkpPTTFRSXNjMFgzWFF2QzFkZ0dNVkRZeFAwanE2WWRKVDZMRHdK?=
 =?utf-8?B?MXBLSk15bjJWWUlzUk9CQy8yVHF4cWxNRklPTnBFVTVLQ3lCVmd4SzdtajdY?=
 =?utf-8?B?OFpmb2pJNjdDWkRISHF5ZWVHYzRNZ0xqY21DVCtLVDhITUJDOUZoVkVzRjNr?=
 =?utf-8?B?aVpZVmU3Tms1WjNRbUdYeHdhQm16WTNhelRVSWJzdW1LakZwK25KMjBpTTQr?=
 =?utf-8?B?UklXODFnWGxLN044d0hrMHhURkdGODFrYnhUUzloTUZERHA4eTY1Z1BpZkhV?=
 =?utf-8?B?TWhjRW1ncDBha3ZCMVRIRjYxcjlKRmoyOFFVRUhrcVpuUzIxL09Qbmk3YnAx?=
 =?utf-8?B?V3VUTm80Z09CTHk5OGpoZjFiRG5TZnFjZmdWZElTSDdBdVJNZ2RmeXBtbzZ3?=
 =?utf-8?B?S2lObzBsWVRIb0p4OWZwRFFlU1AzWTRnT1VCc2cxZkd4MUh6TFdqSUxpTWNm?=
 =?utf-8?B?TGxod2VTLzhwZlEzR21XcEwvMTlGdzB3bTZLNkRYNjl4OWs2cUgrZXUwOEZ5?=
 =?utf-8?B?amdBWjdmQkIxbkE5MUhxSmYwa09BMU16SG5EdWlXNVVJZVVGclVsSFB3WnVN?=
 =?utf-8?B?T2wzenhsWHpnRDhQSzJqd3FPMFFnckMwdjJjYWRueDRYUXVKK052M1pkOXhY?=
 =?utf-8?B?aVRqaWlMVjBhL004VE12MGYyWFFUeDBaUFU1MmR0K1hFMGlhK25LMFJaVU94?=
 =?utf-8?B?ZmhSRmxQbFN6OE53eUFpMDNZWmdGS2RvRzcySXQrSXN0ckxjdmkrUklrcjVL?=
 =?utf-8?B?WFUzcENMNmJWQzJ4b00xYVoweHcveEc2em1XWVQwUGNYS1lwbUtUZmJ0WGZv?=
 =?utf-8?B?SW9uNDQ3QTYrMW9ybVJkNkdLQ3BWbi83ajU5cG9GcklkR2lxbXgwV3FjKzAr?=
 =?utf-8?B?ZUlTdkpzNFZMMS9RVDhMUk9zQ0hCRklSMnVjRW12akNOY0NiQ3pYeWFmWHdi?=
 =?utf-8?B?T0JaTFRJcGZSWVhKOHhSYWRtK2l4b2JaTjdpUWZNNmVBZXpiTWFmVjlTSm5N?=
 =?utf-8?B?RmVaSVh1MjRkNW80WktMQlR2U3VvTWdqaGpnaWNxMFNQY01Meng2MEc0ZG1B?=
 =?utf-8?B?VVBaZGZEb1E1Z3A0eW85V0VkU2FBN013bkk4eVMxUmw4eVFMbXhoUmlrckZF?=
 =?utf-8?B?SjY5N2tuTEVNVm0rT01EaGVVcTF5MTVsUHdxL0l1cHdicjJXaldlT0VPR0xR?=
 =?utf-8?B?eTZnd21XN3Nqd1dlWlE4cXRzYWhMZjJ6QkR5T2p3WWRnQk9jb3ZKaFBEQ3hy?=
 =?utf-8?B?Z3ErS2Zhby9XS1NDekQxZmpWSkZCTWhKbFJGTXF0U0l3di9jTlU1bU9WcFBJ?=
 =?utf-8?B?ZWhLU2xEWnluWERIdFROTzl2eWM2dWE4TzMzT2gzZEYreGkxS3cvVy9BY0NK?=
 =?utf-8?B?QjN0YnljWWoxdWN2U3NxVjY4S3dVempaZVVQaTIyMVFUcE1Sb1l5MzJqY0Nu?=
 =?utf-8?B?VGlMVmlWcCtHWjZsaUdqS0FLN1lvT3JrcnJmYndCVzliWGxBRUd3OTM3TE1s?=
 =?utf-8?B?OHEwWWs0cUtObFhxQlN6ZG55ZVloNkErRzRWSWhSc3JDVVo3UEcwM2FpWmxH?=
 =?utf-8?B?ZFZUWGEvc2R0dis4VHA4TW1FT1BSSC8yZy9rTEZiaXJjMUxUZ2xBRTNlcXRM?=
 =?utf-8?B?TVQzeVBNdkN2V1R5SFR3RDQzcElVWXpSbkhSZXdFa2NPVDJMcWNvUENocnUr?=
 =?utf-8?B?bjVTUk1JSzYwZS9BaUpPRXVzZ2QvNjUxditFT0E5WWhBT2xqeGZid2hwZ1A5?=
 =?utf-8?B?aXZpUDdCUXFuRGtONTFWL2l6eVdrNDJJNkFVMVhwZEkrenB3Ni9zU1R4YUx4?=
 =?utf-8?B?SHVkRDdQWGZIR045eWl6eTdzR1NtcW9GUk16RW51NERiQ0RBcVJZZ3lGMzhq?=
 =?utf-8?B?Q25VZUpzanQ0S09Vc3ZNUFA5ckVJOW90UTNVeW8vbEE0dGl5MEI4UEQ0Y0ZV?=
 =?utf-8?B?WjB0VFYweHIxbWs3YW1Kd1oxQ1V2RThyNEJGak1LTTd3TWprRG4vQlpoSVV4?=
 =?utf-8?B?VWc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	JJIpT1CtD0uo8VKjJf6JEje+642GEeDjjeXtY1P8z80q6HTTwbEdhlHqvTn1AzgbKuKIBJPk+IPHARC9d6Glbk5giUy0NUtVfCxE2LDeB842tU3auDELZb2vSg7KWrdFJ24Ab8uakOCE4tiAwyDqy+ePiYOTw1wz/vbITUpopubPNRHgwKcB5/4QOXbDZQPE3eNt2UJHns85VpVEs745SYOxdxWA1MZcuTkmu9pux/nZJMactfNESFxaWIuGZE7+D548wqQqyCPz9gzo8/yAyz1ICDXEpwraYa5hciLBrA1Ny9jNcaBJisKAcIqUfQqcTrj1B8cs5Qqq/uinlsnOBK6NP4AKyVH/j6gUvccqWoScUFgcyZZdvTsZ1tHxwgl+Ds7CjkAIewQDSnXCIkLstJS7w7W9bKmDiZEhBTUwnPXPfYNZsYlORwVEsD95t7UUR/k0AO5VD6Xr+wTj5Hrwv/L2gCAp3L5wP15qVWAgwkuF/hHgiiaqulxTa+5TNv4uRvmXLalJrY8H1LocSS43uDeZ3gy0jiDlYlsllIGFdSmP69F6dMvD6uxoq3u1mr8ELtCoPg+VU7En0611UyCsJxSgbTzO0HKn8Voa7B78+9s=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90a9ef85-2b63-4c8a-d831-08dc5b23719b
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2024 19:04:56.9049
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6+T3L/WJWCMUpE+IHIq7K8HclF0OvTfKrY7Pna7yI/NmQfJNZWet0zvgjnPOO8zRmuXU7hHs10S73itWS+gbmSvwcMLtJKCmGAmRATtcNus=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR10MB4228
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-12_15,2024-04-09_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 mlxscore=0 mlxlogscore=999
 bulkscore=0 suspectscore=0 adultscore=0 spamscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2404010000
 definitions=main-2404120139
X-Proofpoint-ORIG-GUID: ebfBl7l9JpbCBJEdDWT-FVQ93-zQJ_b3
X-Proofpoint-GUID: ebfBl7l9JpbCBJEdDWT-FVQ93-zQJ_b3
Subject: [oss-security] PHP security releases 8.1.28, 8.2.18, & 8.3.6

https://news-web.php.net/php.announce/424 (dated April 11) states:
> The PHP development team announces the immediate availability of PHP 8.3.6.
> This is a security release that addresses CVE-2024-1874,
> CVE-2024-2756, CVE-2024-3096, and CVE-2024-2757.
> 
> All PHP 8.3 users are encouraged to upgrade to this version.

https://news-web.php.net/php.announce/423 (dated April 11) states:
> The PHP development team announces the immediate availability of PHP
> 8.2.18. This is a security release that addresses CVE-2024-1874,
> CVE-2024-2756 and CVE-2024-3096.
> 
> All PHP 8.2 users are advised to upgrade to this version.

https://news-web.php.net/php.announce/425 (dated April 12) states:
> The PHP development team announces the immediate availability of PHP
> 8.1.28. This is a security release that addresses CVE-2024-1874,
> CVE-2024-2756, and CVE-2024-3096.
> 
> All PHP 8.1 users are encouraged to upgrade to this version.

https://www.php.net/ChangeLog-8.php gives these descriptions of the CVE fixes:
> Fixed bug GHSA-pc52-254m-w9w7 (Command injection via array-ish $command parameter of proc_open). (CVE-2024-1874)
> Fixed bug GHSA-wpj3-hf5j-x4v4 (__Host-/__Secure- cookie bypass due to partial CVE-2022-31629 fix). (CVE-2024-2756)
> Fixed bug GHSA-h746-cjrr-wfmr (password_verify can erroneously return true, opening ATO risk). (CVE-2024-3096)
> Fixed bug GHSA-fjp9-9hwx-59fq (mb_encode_mimeheader runs endlessly for some inputs). (CVE-2024-2757)

Note that CVE-2024-2757 is only fixed in 8.3.6, while the other three
are fixed in all three releases.

https://github.com/php/php-src/security/advisories/GHSA-pc52-254m-w9w7
(CVE-2024-1874) reports:
> Due to the improper handling of command line arguments on Windows,
> maliciously crafted arguments can inject arbitrary commands even if
> the bypass_shell option is enabled.
> 
> Details
> --------
> proc_open executes external commands passed via its arguments. The documentation
> of this function states the following:
> 
>     As of PHP 7.4.0, the command may be passed as an array of command parameters.
>     In this case, the process will be opened directly (without going through a
>     shell) and PHP will take care of any necessary argument escaping. 
>     
>     bypass_shell (windows only): bypass cmd.exe shell when set to true
> 
> However, when executing .bat or .cmd files, CreateProcess implicitly spawns
> cmd.exe, resulting in command line arguments being parsed in cmd.exe despite
> the documentation explicitly stating it doesn't spawn the shell.
> 
> While proc_open tries to escape the arguments, command prompts will not
> recognize \ as the escape character. So, the following command line argument
> will spawn calc.exe:
> 
>     test.bat "\"&calc.exe"

https://github.com/php/php-src/security/advisories/GHSA-wpj3-hf5j-x4v4
(CVE-2024-2756) reports:
> Summary
> -------
> Due to an incomplete fix to CVE-2022-31629, network and same-site attackers
> can set a standard insecure cookie in the victim's browser which is treated
> as a __Host- or __Secure- cookie by PHP applications.
> 
> Details
> -------
> The vulnerability is identical to one previously described in
> https://bugs.php.net/bug.php?id=81727. Unfortunatly, since CVE-2022-31629 got
> only partially fixed in PHP >8.1.11, cookies starting with _[Host- are parsed
> by PHP applications as __Host-. 

https://github.com/php/php-src/security/advisories/GHSA-h746-cjrr-wfmr
(CVE-2024-3096) reports:
> Summary
> -------
> If a password stored with password_hash starts with a null byte (\x00),
> testing a blank string as the password via password_verify will incorrectly
> return true.
> 
> If a user were able to create a password with a leading null byte (unlikely,
> but syntactically valid), an attacker could trivially compromise the victim's
> account by attempting to sign in with a blank string.

https://github.com/php/php-src/security/advisories/GHSA-fjp9-9hwx-59fq
(CVE-2024-2757) reports:
> Summary
> -------
> Certain inputs provided to mb_encode_mimeheader trigger an endless loop.
> 
> Details
> -------
> A discernible pattern has not yet been identified, but a specific string
> consistently reproduces the issue.
> 
> PoC
> ---
> In PHP 8.3.3, execute:
> 
>     <?php
>     mb_internal_encoding('UTF-8');
>     mb_encode_mimeheader(",9868949,9868978,9869015,9689100,9869121,9869615,9870690,9867116,98558119861183. ", "utf-8", "B");
> 
> The mb_encode_mimeheader function seems to enter an infinite loop and fails to return.
> 
> Impact
> ------
> Given that this function is integral to numerous email processing routines,
> including those handling potentially untrusted user inputs, this vulnerability
> could be exploited for denial-of-service attacks. For instance, CakePHP 5
> relies on this function to encode email subjects.
> https://github.com/cakephp/cakephp/blob/5.x/src/Mailer/Message.php#L815



-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
