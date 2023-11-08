Received: (qmail 15525 invoked by uid 550); 8 Nov 2023 17:58:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9244 invoked from network); 8 Nov 2023 17:52:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-03-30;
 bh=fLIQLhQd+KMvqZol1j9NECJwt303psNRAD11eBHjW88=;
 b=w5jdiixj6tWAh/QzaJGrPQj2fuv7gNsgtLeGbgqX96rlS/1OUrmdbA+gmeonPaaP3E77
 9evYoJi09WAfbzCxBYAAarYgpC9Fvi4Nu9rAIKHemRAJkFnqFtEJuRwf3lFEzAvFzKsA
 f7Oc/WzK4IlxANHEPh/zGFRpkw+fZuIwu77Rioq1U3/OgRCoJ3YGMEfdjAA0aQ6GBQpf
 u/zQmQM8UfrW1KThVLasja3v094aGoGwZ0FTrKrRcBeierFP6nGS2QcnpCHdEYcd5dv8
 JS6hAw51dqd1MGMklhCmGq5vb/ET3LMf1QX25OUz2p93swtvBbiFrRF6Bp0yedy0LjHy 8w== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=feN3Y/5MH9FFm0ur/qLGsvOWXzWo6MRevuCWs9ktBOUa1X2JNfQxWajRgehgJt9tMw6b5NL3IipOlu2OSH/8dzyMInOwZPEGf+QUDEvHZAfrmuXH8MlliX2FpibWej8oYxRUkKDOuvxAsZ5BYbgizJCgS3U6pjDuCqsyCZmYj+xRCdT3LPEVIJI+toeV4o8bcVLsECQMSR/ICOVcv7zVG6nYSeHx/Un6VulYwbt16hUIbHK5JlxOGwhQXkLUJWC+8wr5O9DSjHEBPD6o3YCVd6A3Wyy+AWKGTl1/4CT4WXEHYjzbFVHw70zlBfTcngzNvllJz3ENIe0MRPZwlwuH5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fLIQLhQd+KMvqZol1j9NECJwt303psNRAD11eBHjW88=;
 b=TG21apt8CkZ2vTx8E2MEWKXJnTJoPz5N/r1MQGsyv3cOPp1PGkbskPk3+hnXbQfnBpul0OF0K5IPSRVh20OJK6K5YRjXEbiDp0XsZlyc9hRrsVYeRNx/GMnmPEix5TFo3qGu2ATsi7V7ylfuRCMigaLURy2qBL0tdvgq3zpdAfOtlx5MdTY4mTrAw8k8iTyHDjMI2WiYRMYoDK6caflrZcAZyMrY+DBaK7bAFHJOqZXNhE+ktD4qzMePcb+butiedm0gDqENRQ3yAevA4Z0bJKRrHnzmjUAxtFLJswTfGg1dAonM2BTUqpPyH/mCkN8dZDGeNRFUt0UUboTvSYo1hA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fLIQLhQd+KMvqZol1j9NECJwt303psNRAD11eBHjW88=;
 b=xjgjHWOotoV0ozNlAxfbUHgE8C3FOHgHyb0tAHUhJHlqa/079D0Fw6AcZ4sM+aexOtYGFoyWrnLSJNMyPGDgOXBflEjlrdnm2v0XtGgZJkjbrL8/fkR5TVyVYg0QebHxTuK7u1tEb2Wx+KKjrqG1UA23SqZCuJNxiw+jd4f9MjQ=
Message-ID: <720a3438-0411-4f13-8531-7e6bcac83e77@oracle.com>
Date: Wed, 8 Nov 2023 18:52:03 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <c01c1617-641d-4ec2-847f-2e85ea4676f7@notcve.org>
From: Vegard Nossum <vegard.nossum@oracle.com>
Autocrypt: addr=vegard.nossum@oracle.com; keydata=
 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 8A==
In-Reply-To: <c01c1617-641d-4ec2-847f-2e85ea4676f7@notcve.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PR3P193CA0043.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:102:51::18) To PH0PR10MB5433.namprd10.prod.outlook.com
 (2603:10b6:510:e0::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR10MB5433:EE_|BN0PR10MB5078:EE_
X-MS-Office365-Filtering-Correlation-Id: 07729ac2-6afd-438f-42b2-08dbe0836ce0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	1HwWcmEghW//HbUSgy3hK3qOJ5AHQq611gTRJLA2HKQe8sO7mZeFlPprzFd/soIr/+NmXd54zIvDQfHJpehBl11hdfRW/yBQKjJ9vkb7I7dQ9wJbjq5K1bAzHE1SKg6Rd8KYnRXVy4rQMVgDoH/DJz97pnqq2xXewgwrJKtMSBcScYmjERVhsI9rKqOK7XfUi5XX0HKExC1szFipJ7IRsRhSPlmtl3wWGdBx/RBXn38jZpb6uyF3AGLnNGWjkbe+A7IYbX8OGrDcs05FZaDuJfLv7rl4UxznQMSCdFSDbQP8QCks47OpTVRIzui0TWr69FtvGQylaCGoX8wN06iL7g+rlKbectZExc66GJQ8qEXa3MJS6G7uH5scq5mCvSB86OuUPakfNOmqyR+6Fww50TaFzh2RoXyNJp3p/O5QYNkQ0o6c5JU6gZkrBfPPHRQpNsjZ9w2aRhxj6wS3FovkCJVnBY+GoKB9qarEtqmlcnrqyBXXFNXtvjVxqpZh2s6B8v3E0h+DDYVEsZZVHJMOzm9glOj/Vz7svbm/sM6glaaFpRrFRqkK/R8oMVPhveUDLRBTfwCJCK2DMI9qMO4JUyjMd4QbCF71CoY05tyMmCS+9frAtMeQEtJ0oQu12Hpa
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB5433.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(396003)(136003)(39860400002)(346002)(376002)(230922051799003)(1800799009)(186009)(451199024)(64100799003)(31686004)(6916009)(83380400001)(8676002)(41300700001)(53546011)(8936002)(36756003)(31696002)(86362001)(2906002)(4744005)(15650500001)(44832011)(38100700002)(6506007)(6666004)(478600001)(316002)(5660300002)(66556008)(66476007)(66946007)(2616005)(26005)(6486002)(6512007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Ujd5UWpQa1FUUERxSGhvUXpzUHJJVVE4LzBqVXlJSm1oT0RDVkw1cmZwUERq?=
 =?utf-8?B?RTFydEVLQ3pGeHhuVlUwK1hxd0p3TDJuZFhGK0FJQTEvbWZZMlo3Y0w1V2Za?=
 =?utf-8?B?YVVYMmhvU0hPSXkzM3VMbk1DRllvRGtxcEU1TEJid3pFbkVEL0pTcW54YmJt?=
 =?utf-8?B?WS92YVk5WG1uUGQ5TjBKbTN1cE9Xa1ljanFSVjE4cm05UzBicTYvQ1FRTlVP?=
 =?utf-8?B?UFRmTWhCNUNodS9DQWtPMStlb3VmanpkUkM2QThXZHoyVXhXeE00TnZLdlhu?=
 =?utf-8?B?djFxTXpuZFVOaXFKMEdnbGpQS3EveWV6ZkFCREMyZkVORVNka1Z5M21jbCtr?=
 =?utf-8?B?a1laU1FzZ1I1U0YxamplRS9OUnExdFFibzZFQ0EyelBpVmtWZVRPNmhwb042?=
 =?utf-8?B?RVVLY3RhdTI2a0NQc05qRW9DeHFDMVdHMjMva0ZyTFZ1VzIra1Q3VXFsQitU?=
 =?utf-8?B?b3Y0T0VkbUdsMHBXTVBLL1NmV1VLOXJLa3RWQ0NSMGRXMHNsVTFVbjZ6cXZZ?=
 =?utf-8?B?dFhqYStLSk1oTU9LWXZuYy9tZnhQZ3JQbytMbm9MN1gzZlFBbUllMUxWTXor?=
 =?utf-8?B?ZHVyTHovTVpsMFE0WXhaeVRvT01jNUkxRE54c1lNYis3NDZackpTekpPc0s0?=
 =?utf-8?B?Z0ZwYzh3V0FWZS9CdVp2TWc2VTg2RGdFMVliQzJUNjM3ZVZLYmtHTFlLUFNR?=
 =?utf-8?B?NjczcUlzMGFlSHlqV2FZS0VnVStmWThqcGJJU05mVmhzbWhLRi9kS3FrWFI0?=
 =?utf-8?B?cWpuSTM2Wkp4bkJQcjI1czJzSjdvY0hvY0tMUC9MVEdYUXh4OURkc1Vsd250?=
 =?utf-8?B?L2hJRGVvZjlMMi9yd0hSS0txZ0JkTlBDYVdWWWVTMjhzeFFQdmF4MmlCK0ZL?=
 =?utf-8?B?cVlhWUpXK1UwN0cya1JnTkxvVG1wenErd1FvaldRTU5UMGdBMmU3bzJ4WEpx?=
 =?utf-8?B?VWFJN01vTENEYW0vVjFScXdJS3Npcm9Od3d6UENCcm5iSklHMUxEeVUwdDEv?=
 =?utf-8?B?aVBIRFNtcHJpejVKL2hCcStwSUJNLzNZWVpLS0diUFdVYWoxTlBuMzl4c0dq?=
 =?utf-8?B?R1hNVWFRMStBM2p6TnhUYmh1Yzh4Q0dRZ1ZQWC9saDI1Z2UySHhLM2dHcVM2?=
 =?utf-8?B?NDF5M1ZyYllqSEhRUERjZE56UjMwUER0RWx6M3VmZlBseDJza3hYckxCZ1RM?=
 =?utf-8?B?ZE1WYTFOam1RQlV3ZFNLY0dQblozZitndlJBUjArYlROWVFQYS9rd0VKdGhZ?=
 =?utf-8?B?VzJWTjdaNW1XUkthYlhBWCtWVE9NVEcrU3VGYmNsMENINHdRQkVFaWFoRWsx?=
 =?utf-8?B?clQxVDFEQVVjQitDbHcxNWVpWk5EaFJ0SU5uMmk1QzJDOUlZRXlXQVA4VW5K?=
 =?utf-8?B?Nk9JcU5BTGpOaHQ0N3Nvc2FONm5hNGV1Q25zVUNVRHRFbkFhdFJkTkt5QWho?=
 =?utf-8?B?TUw2WEJnL0lySXNoajErUmswSmd0YVN3cnhpZXUrQjNhOTBMb1hSZ1l0cDhR?=
 =?utf-8?B?T0RWY0ZxR0krK0VvZ0FGMnJOL2xTT2RpcDRkTG9CakhvUFU3ZWRNYXdJVnRu?=
 =?utf-8?B?eDIzQkxHVlRTSmRlL2tRemxJakROc3R3MTcxT0I4em5pTnZCNVFqaEtjUld5?=
 =?utf-8?B?U0x1SGxkL0R4bk9ZRy9CcGF0SU12cXRFSkZsRjBrWWU1UXo2MWFyZDA3dzdt?=
 =?utf-8?B?K0JSVnVETXRVQmYvTUp1T2ZCQURhcytvY1A1eXVqcHYrWUFUTTl4UkpHdHh3?=
 =?utf-8?B?MHRGVm9aTDF5NlJmaGdNV0s0ZE5tL2hDWHJ4UHR4aktITU5kdGRzMnBNNTlN?=
 =?utf-8?B?Tms1eEltRmxYZlhNVHRRZGVHUzdLMTBUU203Y3B3ODd1QlBGTmlGaFl3b2o4?=
 =?utf-8?B?aG5vSmVPQXlnYlNLUE5uK1FUcmJmdmN0YmFGMVVXcDcxdDNGNXZmQWR0bTRE?=
 =?utf-8?B?d2dMTXdWQmxwc0JSMGkvSzB1ejlTWUh2YUJFL08vZGJYZTJrVVVzblRuNE9K?=
 =?utf-8?B?ZzNnMGxoUU95WVppUlYxT0dKVGhLYjcxNmNkYzFJeEQwVHdjNnNFSlc4NEk3?=
 =?utf-8?B?ODZqR0IrNmtFV2dvYWJUeTdjVUd0WG9td2VUeXVmOFlXS2xaLzFHZlIrZGQ1?=
 =?utf-8?Q?oxwr+ufyN73t0z5PlH0sXY9KJ?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	YQxalAMpmEuOdCparE4TYafyhamYXsC4vlvcPyvqdc4DlIP2feJYPog8ivVM6yK7lwTXukWi0C114fAed41mqMXzr1NByL+mEHIWHqAyh85KtFtWYLWrwl2JlV4gOSIOkytlAadpBFpTPtJ6Qn27lA7TRaIUnuHaXFMEnVzYaLYY1rWPuEOj197yC34Er4B62SNFBtEmOfv8lGSZGs+HZ+5KXSOsgzJZ2rSLTuU2EljznMgbtF4T7wvuCRwQP92+JGa2yfjoNgzmImvLVgffWySL8qA6WU1ax+YcmWSewUC1HxjcKJ5QT+ihzDZ1NOMRrLNz5RkmPE9QW4/nMazqiDpqOcpgAnVO6b2eNFeaDyuLfNGcupCyrimJmTzdFDjaJKAVOG7iIY9y6ADcXxKahL/t4D8v/nHnHcMEMzPwKbyn2uPFxdDGlWhClPgq6mQZEOxpGFNQk7iNPdMcK6huXxB3t1fMcYqYkz57Z4IHuDQpfSxaxktuO/CLIyxiPcLR7nOUeTqRA0IiuwO58Uxlb5fdnThx7Pm1oya7xhe7tCeVEqALUJYcAmY0BIe7+qpbazMpRT0vhv3gA+SwWZyXSKhHvkHW1DkPnN7V4sHEcKiRABXFykg1mnqXnYgN4XjkeyspyZKShQ8UEsqpTUf5Xmzj/EJmRuQpPCcSz3HC70tGLIstSTXgEp6QJwdVllHO8Pqkook4xT6j/HVU+YBwN0tjd72j9XfXym4jmWjGo0yHI+ZEPknzn9ji88rYAdo1cUaIub9RooxVgJxldlvNNg==
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07729ac2-6afd-438f-42b2-08dbe0836ce0
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB5433.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2023 17:52:07.6559
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W5fFfCNmav0MKRs+NCjtlv4qQwEKjFE33BhC1JgN2jcGJv5Y7Pdt8eiEEZtoQ7PgQQTogI7rJW70yZdjvIHbjMQ7ZivDXzan8iBJWNd8RaY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR10MB5078
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-08_06,2023-11-08_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 mlxlogscore=999 mlxscore=0
 adultscore=0 phishscore=0 suspectscore=0 spamscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2311060000
 definitions=main-2311080147
X-Proofpoint-ORIG-GUID: Jg1R8BsG55g6Nq192ewyN7GfxH73jfO0
X-Proofpoint-GUID: Jg1R8BsG55g6Nq192ewyN7GfxH73jfO0
Subject: Re: [oss-security] !CVE: A new platform to track security issues not
 acknowledged by vendors


On 08/11/2023 14:22, !CVE Team wrote:
> ==============
> What is a !CVE
> ==============
> 
>     - A common place for !vulnerabilities (read not vulnerabilities)
> 
>     - Security issues not covered by the traditional CVE.
> 
>     - An identifier following common naming starting with an exclamation
>       mark(!) Example: !CVE-2023-0001

I am not a lawyer, but I'd assume you would run into some issues with
the naming of all this -- wasn't that the exact issue that somebody else
ran into when they tried to assign identifiers to bugs that MITRE
wouldn't acknowledge? Here's what they said back then:

<https://cve.mitre.org/news/archives/2021/news.html#April022021_Message_to_DWF_from_the_CVE_Board>

I somehow doubt the presence of the ! makes much of a difference.


Vegard
