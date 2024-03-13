Received: (qmail 14032 invoked by uid 550); 13 Mar 2024 13:45:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32190 invoked from network); 13 Mar 2024 13:37:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-11-20;
 bh=gQVuF9Dm7jlt/ppZMX2AM9L/O7HbIFxIiPZsEzyUPjA=;
 b=WD8nqctMnw+cGdVtwpLSBNEH5VKQXvOP1snQBLfTGqDRmPCkaAItWJPxIJlpOsxq1wuq
 4hoI1VM4eWeS8FXyWe+Nyj24Sv5Gx1Lb7wkSGB9JzW5UwUhyZ12oSL2IEAVZpCS3EYVI
 CiCwDyteyLoHacD28HFbELLcNzqXkjedSwQ33NKMn9siQ8pOM892scxVpyy1ENJ9BhJG
 AfZXJ5rRemCdjfJb1qOnFgnV1zlbqHoogBmRq5QDWawv8Pbykwbu4soxGfkHuXBqIljw
 Q5bPd3swCqRhatGYAikzQ8EpyuJkgKXRxWQKwUVmJ9Pc9rmFMmnJoYsWZXbOVSAsBnk9 JQ== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZYohVfu7iIWrWv8xOfEvk1hmLJwvAK9QblulKktosIPaLsRgZYFjF1dWxC3Ovb6aIDAK0sbj9q7k92ZYT/JQXxRM8D5QadPA8vonvbAbymkMUW/RzGCMWNgrVNZNwJgnKyg6XsBR7ToxhmBCFkkCvqU40U0tunuNE9FC4i/WI5Tf/NaVqEAV+jvPkdzKnSqsrlW2aYOcXy4mm3ZbA99dgwvF4bvwdX7WmMRcWU2abFM1/IEinbvRV0XsfHPEN8blwS/epfXDZVQrSbs5291kkwT5/NN1zkPa1rXQem0eitb1+UOaSw0XKv8YRxrPuUQ0c7EmocaKszx1UcOu/0YjZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gQVuF9Dm7jlt/ppZMX2AM9L/O7HbIFxIiPZsEzyUPjA=;
 b=lHlBes/SkJipzwh9MdFD0NSCfjrQRRVwd4elHW6ztG08hGbY5RmUbRRpP4rvosH2KGjqQyKGHnfCIDXfz65t85YOhXJe/O3yBnykQSNQY5rXuCUfSCWleRIZU5vpCjEKbqAaP9IkDalJuL1WihB11IBvI48iP06NOr56n/htC0S4cf2kuBIBbJedd/8PKo92mm2aFT9I8oEixidFohD0IiHznoolMC0D+Try5S4GHV4qO5BJpOlodqlB2nRluN8AVNd88K5b5s08hSJIs431/USKCwX0FZlauqgRo/EeDJJLlAvv0gSCHM0UiuNu7lMf8ijuHRwru3+zK16u86jWDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gQVuF9Dm7jlt/ppZMX2AM9L/O7HbIFxIiPZsEzyUPjA=;
 b=MVaGo1IMi2mN/eVw8FovnOGZ5+CaOGB858VpmikZjnX+0kgkvQZMvmtrhBwE+6HfPAcc2hcX88Dc2wC2m3zHlp2Y5Ic5D9wjz/e27xoNc9SetdVyunMdQLR3iF9YE6SIhMAbBlpIXBq9oVvjmzqao7soctTY6TokWaWenwthL+M=
Message-ID: <d364afab-4a59-4888-a9c1-b7e125bf0878@oracle.com>
Date: Wed, 13 Mar 2024 14:41:27 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <7e78b8d8-860c-47f5-bbec-a967c277d539@oracle.com>
From: Vegard Nossum <vegard.nossum@oracle.com>
Autocrypt: addr=vegard.nossum@oracle.com; keydata=
 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 8A==
In-Reply-To: <7e78b8d8-860c-47f5-bbec-a967c277d539@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PR1P264CA0019.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:19f::6) To PH0PR10MB5433.namprd10.prod.outlook.com
 (2603:10b6:510:e0::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR10MB5433:EE_|SJ0PR10MB5857:EE_
X-MS-Office365-Filtering-Correlation-Id: 3106804e-67fe-4c41-fe6c-08dc43634aa7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	kYUs5bIhrvs+/04vDfIySQE9xB3r08KoaY5/OVg+ko2qVwoqsCejv3Hhjb8bjc9EigaLRAals986wSxu114cECkYuSKOeFauAD4m7LvQ50Zb8gjhXG4rTxuMTSBhcTmUOKqzPwNfTqGaXysBtO/JcZApUF0YDbrAzV58eJkNHbvMdrbR0nD0dAoG1JvahgJnx1VZKxf/OumqF2SSo7gRR+NaSO81Bd7vp3UaW9Xm22xfDNp7y8bGt1Htm9DFck3jjNBPeOTVC+iIZsMTECl3+X1J1SjCRjIaJVbXlAlG9nVd9pwQEHphXt05NU505doaTkH/rwq+QhDNPZcCoXf6fo2heq407+N3YAHjmPG4QoW8f9pGGyTK9QPM/onZqzYoB3IUv5PiReNGTnX4rswjM0zLRpURh8eXQU7vy1ARvCH/H1bZuA7/YwzZJAcHKM1kIw5dqU8P4pK2IIK1s8aNYtnB/CSWpNClN0FmF9s5fK8BTYyEQDOMDE1gqcPr6jiyTcU+lbXlYChZ2/334zK/YK2GafRsB6JXHcGAdhdi/9vJv9Jx33DeePzdkDxAYZ5T3ZMbbr/u24lft0ZIkmk/twDxQpMXfYfew/DwMr2n4kI=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB5433.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MWdsWVpwSEtsWkVQMUJtT0ZSR0VMbnhuYlBhQ3VJYUVBNklNMUpYNGx2aUhh?=
 =?utf-8?B?MWUxaUdzamlQeWtRY0UySGU5OTFpc3ZyaDB5RHptQUpFa25EcnI5L2kvcVZQ?=
 =?utf-8?B?VUZPUGVsbU5icXRFWU40ZElTVmh3ZFpGMkE3czZUT2JUczZOdnQ1MDhWMHNC?=
 =?utf-8?B?ZDJtb3k1SGdsNVFhbEJPcjhqL3c1bDBRZEdORzhaaTZ4VUw1NDlBMm0rR3Nx?=
 =?utf-8?B?dzZSbGtmdEE4aHVmZWpRTGpUVjVjVm45VFM2V0p0RENRdGY3ZmhkK0t3MFU1?=
 =?utf-8?B?VlM5Z2R1cEN5WXRJdVJ2Y28rbmR6M0UvbjdDRVFFVzdWV21Mb2wrUjYzOHhx?=
 =?utf-8?B?Wjh1RTFDRlEyUnJqNDlNQlRZQWxXcGJyWlYxa2xrSXNIcmFYV3VicXNhbVQ1?=
 =?utf-8?B?YWNEc2xSMlJ4eFRQNTdNNjZrYzRIL3RLSHFtaG1WZDhWVU1tR01WNUVEcVQx?=
 =?utf-8?B?V0VodUEzeFk5QXpxNHVoOWxFUjlZeGtRVmhhenVkc1F2QkxjMzdOWkdwcTdo?=
 =?utf-8?B?by9wWHVRZ1RCVnRBS2FOMk5NN2NRQjh6bTBralpieGlOQXJURE1XUEpDcUNM?=
 =?utf-8?B?VnVYc1FWRlQyZWdLZzhsYXB6d0pyaE5KMWJJTEg0MlQ2TmphY1YrL3N2VWNT?=
 =?utf-8?B?ckZhbEZsRjhoVnJnRmJ6N3pORm1vdmdTdmo2UmRpK0wwRzcrUFdGL0dLaDNt?=
 =?utf-8?B?Mkl4VXpBVmxxWG4zeFRWaTQ4aUR5S0NqRlhYeExKODEyM0JUQ3RKZUNoREhi?=
 =?utf-8?B?RWhhNlZMV3FOQ1IzYUtuTXUxMDBKdDNGZ0tPeGlWU0ZVQ01zWHhhUHpZK3lz?=
 =?utf-8?B?dENFdUdnbWltQU9rWEh4a2ROOVNzR3U5V2JGdGswL1pEelUwYUUzZElNWnBn?=
 =?utf-8?B?cUZJRzFLcHRiR0VtMytjZ1hVUFo5V0o5UDhoQXRGc0EzU0VqWmt4NG9mZjh3?=
 =?utf-8?B?ZnBtNW12RGZpeUs5R002RE8vSWVhYXEvN0lRUVh5UFVORTlseWZlYzJtZk1D?=
 =?utf-8?B?TG14Q1BSdGtFM3JiZzVQUGVTM0hoQWkyVVRzN1I1dy9rOW1ReVdsSkFUUnRp?=
 =?utf-8?B?QWcxZDgxZG1kOFd1eVRQc1Q0V2FmeG1VcTNFMUplamt6QkFFOWJzS0RNMVp3?=
 =?utf-8?B?aldVSnZnbHhBUWhFVHZpQVVHRDdNdy9JM1VxMXFnUzZQMmI3bFJIYnNmdjhP?=
 =?utf-8?B?L2ZGM095bkVTbTFPYWZ4WkcwU01GTVdCUEY1YitDVmlGZGJMczFCWTRIamF5?=
 =?utf-8?B?TXVkdGVzMWkwb3UvV25jazVOOURQVmtqZ1VGbVFSMis0TWVTbTY0bW5FZWlo?=
 =?utf-8?B?clN2ejB0K0RwYkZJR3h2dHhLUHlOYjRoNTNQNno3SUZRRmJ3aU96Zkg5Umpp?=
 =?utf-8?B?a0dPbVpMbUNEc3R2T25wUFljUytEc1dzc2JLR2hTbEFVSnZwWW0vVFJRNmpw?=
 =?utf-8?B?ak54VlJNaXRNTWJJcVVCNTFxaDRWRm91WmlqQ0lYanlUY21NeDgxTW4xS2lz?=
 =?utf-8?B?dyt0SXpPSUMvbXBrdVBvN2o5alpHZlRhSlM4U2pkVU50UWNqTzFwWUdQM0da?=
 =?utf-8?B?SG0zVk1jVDJZLzFONHNhT2pYNitXYmd1dnlxTHQ3Si9Vd2NHK2UwajhsK2N3?=
 =?utf-8?B?YTZ3WjV3aE1xRzJuVHpwLzVGNVFiMFNrdDBGS3J2OVF5dmpOUUYwZE1yUGd2?=
 =?utf-8?B?b012YURQTUN0RWptRzRjUFVxWXk4dHFEQmcydEs0VzQ5RlVUeVF3VTZzNmlO?=
 =?utf-8?B?Z0R2d1lsVzNlamxUYWdGaS9KQ3c3RmNQOGJMdGxwejBQWmROUnE0R3ZvOEtz?=
 =?utf-8?B?Y3o3UDFpaVYrR3hHSzJXUVlmbnh4VHZhMVFKY1ZIeU8yVFdEcHBMTTF5TjFI?=
 =?utf-8?B?VUo1dEJZMUxQa3AyMFVtTmoraU84YWJJQ3Q5TmxSaG5mdzg1bGZQek15QTA2?=
 =?utf-8?B?TlpCYWl3RytHTzJuVXpIRHZYaG1pVWV0SEN3dWIwNXYwVC9kY0pUKzc4UzJI?=
 =?utf-8?B?NktkVEN5RitaZ0hOV29waE9WTFo0ZDhDM2VKeGFxaTZiSTM1Tmk3TFFMemhI?=
 =?utf-8?B?d2toUHVyRG5xOVozL2RZcTJFOEpKSUVLY2E5V3RYWmp5cnVDVVhhZ0d5NlVz?=
 =?utf-8?B?WDNLVTBLQWtTK2YzVEdnZysvWXRudE82NDZBbmVGb3VGSjFoWnM2STlvVTZr?=
 =?utf-8?B?Zmc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	SXW/iMDHKetEX/ZInFgRCrsEI2apdlR0Q5HetGoXqUecHj1eL5f248lAF6kA+Rar3UOHsaRfQy/cfHEDRUYiLJdlS+oU3Qw5JsXCmjReJwdrHePMUZQV+TfmED66JgEvs8FP400scf0JrwK1DC/ezOHNSJrq1lUeHqUmqT441Grv0djHbUiqfHzc+RaAjeAVWw0dkSX2HZTTE8mHlAEekEH59vM7Q4TV8Kjo0zIjfzA5XYTykm/+/A2dNPiMMZ5bu3V5T7ouPo1wGMDHYFTAsJVs4XRPkLiR5NDW4Q4PHaZhyZsf7x5lL8vbw+alYfZo/gn6eLzScuJImX9lqiSSBsNZVvy/nsQEizIRTdUmUqxt34t0EQ+czFCcq6QQT0TTjL47v/TJfWWs6Mah7BC+SKxV2OzBoaP2d6UUxo+AfXEuljy0lgXM25BIwGkkADKao8qJDVVWBeasO2UQI82ytjJhcsaNXTGXKp18ei9IR/l6v41ylLBglbxk+bi1lZRB0fE2mts5YA7IUoqBNmSkPS2uIwtlesCpwJj4x3WA4CZqpnHk+TIPh4CXD2bFby0XOjkW/0tCySiOidrWZwGwrbPbtBeDRKyaX+UQAjfH2xo=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3106804e-67fe-4c41-fe6c-08dc43634aa7
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB5433.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2024 13:41:31.5935
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hc88du1Yf5xy1z+olVwqplcjxYZ9Xn7kjn62hvbFDGPTbY56qGJQZ5u4qiTyiuUTs1nvWDxnHU7EMchiCXW96FvIIMe8PvcVkhYxRm7v6Tc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB5857
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-13_08,2024-03-12_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 suspectscore=0
 malwarescore=0 spamscore=0 mlxscore=0 adultscore=0 mlxlogscore=999
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311290000 definitions=main-2403130102
X-Proofpoint-ORIG-GUID: HD5lIl5N3PDV8AR5JJilNzbsiWDWe0lt
X-Proofpoint-GUID: HD5lIl5N3PDV8AR5JJilNzbsiWDWe0lt
Subject: Re: [oss-security] CVEs issued by the Linux kernel CNA


On 21/02/2024 00:30, Alan Coopersmith wrote:
> As recently announced [1], kernel.org is now a CNA for the Linux kernel, 
> and
> today issued its first 8 CVEs, as seen in the archives of their mailing 
> list
> at https://lore.kernel.org/linux-cve-announce/ .
> 
> Their documentation [2] warns that we should expect a "seemingly large 
> number
> of CVEs that are issued by the Linux kernel team".
> 
> Since there's already an archived mailing list covering the CVE 
> assignments,
> I don't think it makes sense to mirror that large amount of traffic 
> here, but
> to only bring to oss-security those that are especially interesting or 
> useful
> to discuss further.  What do others think?
> 
> [1] http://www.kroah.com/log/blog/2024/02/13/linux-is-a-cna/
> [2] https://docs.kernel.org/process/cve.html

Related to this, I've submitted an RFC patch for a document (aimed at
distributions) describing how to assess kernel patches for security
impact and indirectly proposing a way to reduce the workload:

https://lore.kernel.org/all/20240311150054.2945210-2-vegard.nossum@oracle.com/

I wanted to share the link here as 1) some distributions may not have
seen the original posting, and 2) it may be of some general interest to
others on here.

If you have feedback, please reply to the linked thread.

Thanks,


Vegard
