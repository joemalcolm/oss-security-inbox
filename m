Received: (qmail 32659 invoked by uid 550); 8 Jan 2026 16:32:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32625 invoked from network); 8 Jan 2026 16:32:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=QPbGt9Ex1XRGtI+XQCxNDjmMDaXeKtLoF7rUpqFQ9L8=; b=
	WiLtu70nGA9TMAolPrdqOeQDF6ZiMdFB8JnuyrCohC4KAhR4rnq+J95aBLZH5LLR
	5HVcNJEQQSzhtbDfNxARZF5BXi3x4J9+1q/BHmRjebXUyaWRvAggoM8G8OfQ9O3d
	YGAJwQp2dxPaK1t83+DwTemSYXQV9DE8QkwzWkE3x8gaVkIklCR4a3bdaoNbfNoH
	Xp38mKzr2oP9j7kjLb74MMlNl8vstXhCSoqUeU5H9fFk6s+j+Mdefo+J2DE2g/Ar
	49XAI+AVeXihsDGASuWo5QrqB18N1kfOIz0gfXnofX8njgjsQ6XOVnsSrxJnN054
	2Gh3D1tZRhmTVl6927uiDQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jLBnLTdNRgw33xIVn8Ue/v9L1jTi+cA7jQ9Jyr0RHb4cj2u7x/kxgI3yW6gDKPLuW374dlwh5gN1EoejSQ0jwlrHd115L3XX6DbxzqTHMEOGOqoa3r7hozMbz+mt2h+gzPy+05yamOBeBeLMaYvKiT8H5jFxqlQ2xhfwFOyMayKjEIAau6Gi/Ymb+VyRiVRpDdJts+BfJsVUcoqDOm8a+gN0s8lVjUIncgBa0iYi8leTsDaVat74Zjs9559AVtTN7zbV5dWhPWT0wpcSz4koN0DtwWYd6m2XMGumfrnZUbAWA0d0kz6dRsnHDSNpq8RQu55JxFe3/UZJgCGVFpuXyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QPbGt9Ex1XRGtI+XQCxNDjmMDaXeKtLoF7rUpqFQ9L8=;
 b=PONVx50sV1p7FPgiJjoyCp/JV4kZ2ctvYtVTPguU+X8tfgEnSf9ts8GTB0YNVk8Jw5G4hJlNCUOWxm+g8FddByC3g2Mqn8cyDZfp/viyTIIpfjmTGJJDPH4IOW+ENxkZyLkQJ00lortpbbL9Db/JNhiErta5DHPSlat/aKhcgBNlKmUvyy4is8i3fo1HzaBzcOmUtvmTPTII/G491VwP+oqrRiAit6eLkUCEwFbnk5Aths4Uhg7NED/TioBqku1CKW+CiAXJKayXskl57UTbkQMwaJD1GkkebQPpuANKzsF1AU/kWAAXKVrUdvLAS6TBRI8dpfxIKPwjLEN7NtvWlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QPbGt9Ex1XRGtI+XQCxNDjmMDaXeKtLoF7rUpqFQ9L8=;
 b=rEGt7yAlSrnCfI2QcCxgSB7kbkUlTB7IbeuCYX6nI4cSgMZzl4fY3I3ITsrPTeygnKr8eTEvQdkuXzriXQerDbbghMSXkoJplCUHeHfsAyo2GP0tQEWrMY8ILTIWMLkISnuQzPv4U8os07GBnRnACpFW/31gtrDaBYbtqZ80tC0=
Message-ID: <f3097800-0bc6-4a07-b5bc-ab28676a4635@oracle.com>
Date: Thu, 8 Jan 2026 08:32:23 -0800
User-Agent: Mozilla Thunderbird
References: <87ldi8nrkk.fsf@josefsson.org>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <87ldi8nrkk.fsf@josefsson.org>
X-Forwarded-Message-Id: <87ldi8nrkk.fsf@josefsson.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MN2PR15CA0042.namprd15.prod.outlook.com
 (2603:10b6:208:237::11) To BN8PR10MB3396.namprd10.prod.outlook.com
 (2603:10b6:408:c5::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR10MB3396:EE_|PH0PR10MB4757:EE_
X-MS-Office365-Filtering-Correlation-Id: e7a2e195-5542-49dd-8c36-08de4ed38173
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?VzFlWkpaUGlwNEhvZ1E0ZlYvTnVtZDdYTzVVRjZ1REFlNGoxMUJUczRtemlh?=
 =?utf-8?B?ZDQ0b0hSOE4vNTZaWVBLZVBPSVBOR0RaMUJQZGIySDlIMEI4YXZhc0dzR0h0?=
 =?utf-8?B?Vzc4QXRqMWdrZXlhZ21paTZxT1dqTmVnaUcrYkdoaHh3cGtMQUxMUHk3NDlO?=
 =?utf-8?B?MEN5a3dSR3dnNkNlSGo5ak1obGZKVnFtNTdUcmo4ZWVXRkhPbkdTQ2o1bi9w?=
 =?utf-8?B?bWxYalNwS3N0Q2cydlM0UTNCTUxtQmN3eHROTnA2ZkYxL1NmWGo5L2hZVmJJ?=
 =?utf-8?B?eDVIOWdGbnM4MHMwRktpRG9rYjE3L3RtS3lTQWVHUHp2d2duU0lNSmVwMjg5?=
 =?utf-8?B?QVlNa3lweWtUbXhtemtkTXcvaEswYXpPMmtacS9XeWRBQXV5WUdmVjJ1cEky?=
 =?utf-8?B?YnRKYWMzNk9La2laNlFBd3E4UGNMYW14TmVjSGxyZEg0bnpKRFFsWDVFMGJi?=
 =?utf-8?B?Y1B6Q3hSL3lQQzNqQitaSUNzUEtRWHhKTC83SHVsU2dVWHhXZ3hqcE1HRlQx?=
 =?utf-8?B?aGxsZUZjU3h0NE5EVDBBYUJtR1J2RWlGMFlFT0dJUGhtY0ZUZVk0SWc4bEFl?=
 =?utf-8?B?OGpqeDdaR0NNK2FLaDJnS0xSUmRTYmg3NGowQy9iU3A2eXhteE96elV0WjJP?=
 =?utf-8?B?S08rN2QxMUhQZC9xRnpleUhzbnczYmZaM0FXcS9zQit4OGh4TWJ4bkxSdWtS?=
 =?utf-8?B?VTlrdk5BZ3MzN2ZBUGtzbEhkd2M4ZGtXdmJDNTl5V1E0bmNaeE1hOTU4TXNT?=
 =?utf-8?B?akV5NU5lSUNmY0RseUYyYnhocWVwVjZMb0hJM29kWTJUM0NZM0NSRC8yMUxE?=
 =?utf-8?B?cE5WWm1aOVZCRXpScEhqZzFucWpKQWZTN0V3c0d3YjlGVFlPZWZsVWxTV0RR?=
 =?utf-8?B?TFB6VER6SXNPRnpvUWdlN2FMZ0I4YzJqMjZlNmdYY2ZFWnVRODNzeThEUHRs?=
 =?utf-8?B?R3ppZHQyWjdqdlZkeHQyRmd6cGU1OVM2Vk1YTGg5RWVFSUtzdjNWeGNsejZQ?=
 =?utf-8?B?WFBsU21iamRlZ1RmZGttdXAxaytpWGlJYVRkSzRWVExXNlJIRG45THhWb0tH?=
 =?utf-8?B?bkZ0U2dyVGo3NS9nRmhUUDYxekNMOEdLRkNESWttUmxlVWlYK1Z4YS9pRE5X?=
 =?utf-8?B?WEhRTktFS00vbmtjZlJ5REZrc0tBQWtZNU42MVo2V29PaEhsZHUyV091THB4?=
 =?utf-8?B?SFZRV0REcFpYUUgxdHB6N0w3WVpjd3FXYTFLViswNko4RmppTnZ1ZFZTdTdr?=
 =?utf-8?B?SXEzRVN4bnRSbm1Wc0srQ3c4VjVTK2U1ODY2emlZZ1p6WGpOaUx2Q2xkbk9a?=
 =?utf-8?B?SkRmOGxTYXdKU0NhSHoxUXNZc1E0S3JzakpPM2tnbjZ3WjR1dkhPeFpQSlh4?=
 =?utf-8?B?YnpPVXhPcVlnTXBPdGhuRlNveDhCOE43V3ZtRUJ4NUZzTGtuYXdyL0g5Y3F4?=
 =?utf-8?B?NDBXQzB2djIvaTBpWk9DUFN3d0piaWZVUjlCRGFnOUo3QzRtMXBhZHpYL2py?=
 =?utf-8?B?MGV2UjZRYkJHWGRUbnJXUjNSZyt1Q3VFL0F6RDkzVGVrQWgvVDZ4b0NUSnE4?=
 =?utf-8?B?VVA5dXpHSkRhSFVkMngzMy9KUHZreXlvYlhsSXVxYUI4MHltWVZ5NEUzVGNZ?=
 =?utf-8?B?TW5hT3ZGRnVGYWd6N0VlaEtBajJpTXBhSWdrb2NLZWoyOWswcWM0cldxcmlH?=
 =?utf-8?B?ZzU0ZFZCUVljYmtuOTdGS0RZbVVnTUhVa3dWeVhwVnY3Vlp2VTdTamJnTCtG?=
 =?utf-8?B?Z2hSdUJPU0h2a09NR0UzcGZ6cUR0dTdMKzN0WWtnZm81ZTd2ZmR1NFl2YkFL?=
 =?utf-8?B?RFROVTU2a0F2STRVcXlxVHZMcEMyRzZHSDRpZ0IvbGRoczhzd083bHczWU1w?=
 =?utf-8?B?WVdjN0pjSmdKTGhtSjM0R1hFS2lNd2Vhc3dxNXpGbHB4d0E9PQ==?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR10MB3396.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?RUdUeTZTQWVOM2hpYjNNS1NYN3RYek0vTzMwTU5HMlhLTFcxWWdWWEE0V3p1?=
 =?utf-8?B?Nm91ZTduV2c3bXkvUGs1ekdiWHhNS1JKdjJHT0FDbjFVNHRKQXd2Q21jNWV0?=
 =?utf-8?B?K3AvdVJPOFpIOEcxcTZxdTFOdGxxQkFZUmN5dThObHE0dVNyQXFSQVVBOFlE?=
 =?utf-8?B?OE14WW42ODEwSkdDRDJYR01McTB4dUpUNHBra3M3MVJhLzl0VXJqMjdieVZj?=
 =?utf-8?B?V3hWcnZlc0JYazN2Y1g0VTZhK3pDdHI5cDFQdW9pWkg5N3Z4WTFoOFpoN2ph?=
 =?utf-8?B?U2l4VmFNWFRDQzEyTnFMYm45YWpKUHppcWh5SkJGcWJSbUcydDFtNExkVFVq?=
 =?utf-8?B?NGNrOXFWN1paV0d2VTdhTDFKUjBwbVhxY2RMajhLbkZnNFovbkQ2eWxZakFs?=
 =?utf-8?B?aHNkN0hiRjJYQ1NvemIyTEl2cXNJa0kwaGdLZUJFM3p2bTJMT1l4ZzQvRmpE?=
 =?utf-8?B?U0l1WVJGT3VRTUVlZUZOOTVxenpid2c3Zk5qRFNudkkxVHZnbTBRNDBmUzk1?=
 =?utf-8?B?dzNKWXZ1ZDlTTnZRV0V6U2Nma3VibFZ0NnZ3czcxM3Exd0UxRGg1ejUySEti?=
 =?utf-8?B?bEw3VVJtQVRVeTJkWGUyWmhJSDIrMWNwTDREcExzb0YxOGNIMWZDSC80bmc1?=
 =?utf-8?B?WE9lM0Z2RTRzeC9xTFB5OThwaXlLWHpFbzFZK1RJeWdVeW5Oei9RQ0ZmaWth?=
 =?utf-8?B?SnJYRTE1UG5GT1hjTkxQR0FNL0xnSjM4MTY5OFg2c0tpVlRCY1ZYanM1Q3V0?=
 =?utf-8?B?bzU3cEVzcGhOYmh0c09RRitDM0Q2ZHk4bjdwNmxrZEIreWpyVUNNUnpiYVRI?=
 =?utf-8?B?UkptL3JLVloxYVlveWVOZG9TQ3FsbjJuUTRGVlFUSkNIeGluRHZRNlhSSUtm?=
 =?utf-8?B?WEJhcXpZRU9DYzhtWk5xemdnT21YN0ZzbHZlOURmL1ZnczFhRi9sV29xQ3BN?=
 =?utf-8?B?WnI1VkVYZ3JXM3lhODBnZ0N6b1BybG1pS2FkZWZ0TzBEWlp3cUlzMVc3bXBq?=
 =?utf-8?B?WEZ3UEltR2RXVW9PNDNjc3BLU0JNZlNHejBueThYU2hoYVBZSzg5R0s4WEMw?=
 =?utf-8?B?VXZLMHcxQlpvbUg5MjhOUUVHYWl5SkM4aVRycERpYm81QUpMaStYMzdJbytm?=
 =?utf-8?B?UVVPSEVvTWFUQ2Z5TXozOFhqcFQwelJWbFRSMUJkeU5mQ0hQMlFRK0hJOEJi?=
 =?utf-8?B?bmRVckM4S0R5Z0F6WEZZZ2ErdGJubGkxZDR5WG9yN2V1dS9aNVEzWEJpRGFu?=
 =?utf-8?B?bTZJbjVMMG9IaVNOdER5MDRMTUVZMXl3eStHYjRGVUpQVXg2RzVrYkd2K0Ra?=
 =?utf-8?B?dHlicGNkdDhBU3FndmxyV1d5MEpkZHhYMGF5WVh1clhxeDJydno5VjBWOTNP?=
 =?utf-8?B?YTNFMjhaOTVYWjVQTlhDQWxNalFBc2ZSMnN1Wmw0dGYxSVVKNE1HV1FxK3lJ?=
 =?utf-8?B?bWQrSlRKcGlDQ3B4a3RoZTMvd2RwOWNnNGl2Ui9pMklpSXNrNmRZZ0NabHR6?=
 =?utf-8?B?TGhTcnRydTcvY1pjZFo0WThGM1F6T0w3YXVjNDRkOWNxUGZxa3NFcEZ4OVow?=
 =?utf-8?B?UDlSLzUwczlURWVQRU5GcXFkYkM5NU56c2N3WHNvV1Y2OU01Mmxmd1JRa0JQ?=
 =?utf-8?B?aU5yMHZsdmkvcFhqUGZPUG50aTBmeWVscGFBTU1HMFNxK2pvK0tCc3FIRmJh?=
 =?utf-8?B?Rjk2QlRKWVdaODZBK0ZUenJLNUpwZm5NSTAwSEpCWjhnNFJDcUtpcHhlMTFT?=
 =?utf-8?B?ZHBZdXVKK3BOeXZEMU9TNVZPMVlRcHo1Nk9pdlQ1QkN1WDVaa3Q5WVl0N05O?=
 =?utf-8?B?ZzJoK0pQUS9oMHAwY0F2Mjk2RnNvYUNTaTFqSWI5YnFYV3o2alhIM0hSSllY?=
 =?utf-8?B?RUhHSWlNZUdrNEN2L21oSDNwM290N0dhU29scmt1U1l1dEhyWTdBT1R3S1dm?=
 =?utf-8?B?bWtDV0RYaDZSUzdLY0VsK2UwT1FHUEV4aklNaDhmNTVacVQzMnZacElKbXpP?=
 =?utf-8?B?a1JhSDE5WTM5MlZmTnc1Q3VwZXlnK20valVTR0ZrQ1N1cWtCRjB0WDNWaFJa?=
 =?utf-8?B?Ri9Cd2hBdUpXT09aenNPZk5GN0krcGF1MU9Vc29Ia2E2Rlo0eVBQeUdleWli?=
 =?utf-8?B?WXNJamprWFViMVpZMnRWNnkxalEvYjVDT3lOTlNETStlb2dPa1dNSWVuUG9C?=
 =?utf-8?B?MmRMVFN0WVFnUDhVV0pLL2hEZlJVODlrelAyTnp1ZElHZldhenVDczhPU2I4?=
 =?utf-8?B?RFBjS3dmMHFnWHRmUVF1bzJIY1ZhbTlSeHhaWk1ObzUyanRvVkFQWXlNbk4x?=
 =?utf-8?B?aWNmbFlXRzkxRWZQYnk1emo0RWhIVkJJbitUa3VQVmdidFVuMEFMZDBrcW55?=
 =?utf-8?Q?0tVvNGywnP3bUZdc=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	FpmWrBLxuYwreDkxC3pXX7c6A1GfIPOsusy/RoAKrAyn5AEvbMtKq+saH20BtOl1QWhqBdK8kpVk9o73PXL+OMXY4imzEIz8B6xV1tOeYQ7loDjQy72GWHIMVQR3LYrOWu6UxNsbuoFR3chRzuAIKytOLxb9+t0OTu89/ejJi286V58r/Myjp5H1guzYTi2OyTTUeiK5E7giWHza1X+HxDx9/fy5MoLxiy7/E5VV5q55fQ/2mbVbYsiM/l7s4c8iX8BUudTiWJr+NF0eRLbJSAS16bxElhLcYNs/7ScEQy5dhGWvcisJYgrxGJJQGSOvDHEU2sjBwOfvcg9YxarrQp7PNjoujhwyG55RqK7pIlJNLjAkT5GnuIqf9FWkoWcZs84DyM1xh8pm2jNfKfhrdtJ6svXzcFcTfCiAL8avKbAuxr26MHoRHiw52a6D3oSR3VQBN1SfHvC3TCCfAhQlvCKoUyam8VZIqQ8Aao/F1Yo8oCIA6Yp4JGbtRTr2kowor2CVa/vteElUk3M/Ln9WzKSQfdVLK4Z/6nSkqLjGtKK0wCvmVb2zFF5XCdnbf1/QQ78XtDQSxZDH9/6RXFf3TFIYDozI6k6/cEZCSsFTNd4=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e7a2e195-5542-49dd-8c36-08de4ed38173
X-MS-Exchange-CrossTenant-AuthSource: BN8PR10MB3396.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2026 16:32:25.1612
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cPkJqK/XKAqRt+xo3LCGQSXboQHBvhNdRPoeNpcl85jxYpQZaiPA9pnwFkvrmFabFLAiejAcnCgTge0PM0mlo0o7ZQKO+VLdVMWvmV7PkZI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB4757
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_03,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 bulkscore=0
 suspectscore=0 malwarescore=0 adultscore=0 mlxscore=0 phishscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2512120000 definitions=main-2601080121
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDEyMSBTYWx0ZWRfX3pvaq/N77dqE
 4S/GM9G/k/ZkZiAFuYh0f7T197m++qb+OJxuJwIaqccp05s667f8h5+Lsb0Lp2RSFAAb+LbMD5t
 ow2Tv8WZvsGg9CQ1sB8SKBg1qUYOabXtxZjBC5+cGFJn2dhLxjF4I9MvKjCWLNZ5aAs4hqrfvgC
 WxnzU2e/k1PCV69179dUROzsg+erBQRtfVrtA8YoO+GbZxQ5Ez3Z+IZkQ8Vx57esg2PzW3rmmnr
 aFvIL5lTqIuYBDTXvnvxLfv6/fq6qpzjJxL3CZbzgCv6az/dT3HcCw6tbZeKEl5L8r1cTyC83Bs
 FMsAgj9+yQ1Ftgprhq8ioMJN/p6P/x46gOVy30/UnQ1Ylyl1EBcPK8CESiAZEb/KL/apVJdhuWA
 oQsMPWCvwEv8uf4Cxcg2Bh2v1rwXFAAkSSbkaGQRMPKR2ih7tx/FvaGqZ7SNznDMd6VjAgJfBQj
 j4E61DoXw4IJ7aIXxM8he48PUrpuXnmu0XuM9q+w=
X-Authority-Analysis: v=2.4 cv=fe+gCkQF c=1 sm=1 tr=0 ts=695fdc1d b=1 cx=c_pps
 a=zPCbziy225d3KhSqZt3L1A==:117 a=zPCbziy225d3KhSqZt3L1A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=mDV3o1hIAAAA:8 a=QxaIKMp8AAAA:8 a=SXzkmgPmAAAA:8 a=H2kMXXDjAAAA:8
 a=HDtKZSuMPDlluNIFhqAA:9 a=QEXdDO2ut3YA:10 a=mS29aGKeresA:10
 a=YahNFzp3zykA:10 a=8sczrizIEqYA:10 a=dADq5_T5xLflyX6sNnnI:22
 a=EWLf6cg6Bh5aS0AxDgDu:22 a=UQGQp_6C1EM-8DAw1ZOj:22 cc=ntf awl=host:12109
X-Proofpoint-ORIG-GUID: O-qvhPL7OEVduf0pQuHSKN60rUbncsQN
X-Proofpoint-GUID: O-qvhPL7OEVduf0pQuHSKN60rUbncsQN
Subject: [oss-security] Fwd: libtasn1-4.21.0 released [stable] - fixes
 CVE-2025-13151

CVE-2025-13151 is described in the CVE database as:

   Stack-based buffer overflow in libtasn1 version: v4.20.0.
   The function fails to validate the size of input data resulting
   in a buffer overflow in asn1_expend_octet_string.


-------- Forwarded Message --------
Subject: libtasn1-4.21.0 released [stable]
Date: Thu, 08 Jan 2026 14:48:27 +0100
From: Simon Josefsson via Announcements and Requests for Help from the GNU project and the Free Software Foundation <info-gnu@gnu.org>
Reply-To: Simon Josefsson <simon@josefsson.org>
To: info-gnu@gnu.org
CC: help-libtasn1@gnu.org

This is to announce libtasn1-4.21.0, a stable release.

GNU Libtasn1 is a standalone library written in C for manipulating
ASN.1 objects including DER/BER encoding/decoding.  GNU Libtasn1 is
used by GnuTLS to handle X.509 structures.

There have been 34 commits by 5 people in the 49 weeks since 4.20.0.

See the NEWS below for a brief summary.

Thanks to everyone who has contributed!
The following people contributed changes to this release:

   Andrew Hamilton (1)
   Daiki Ueno (4)
   Masatake YAMATO (1)
   Simon Josefsson (27)
   Vijay Sarvepalli (1)

Happy Hacking,
/Simon [on behalf of the libtasn1 maintainers]
==================================================================

Here is the GNU libtasn1 home page:
     https://www.gnu.org/software/libtasn1/

Here are the compressed sources and a GPG detached signature:
   https://ftp.gnu.org/gnu/libtasn1/libtasn1-4.21.0.tar.gz
   https://ftp.gnu.org/gnu/libtasn1/libtasn1-4.21.0.tar.gz.sig

Here is minimal source-only "git archive" sources:
   https://ftp.gnu.org/gnu/libtasn1/libtasn1-v4.21.0-src.tar.gz
   https://ftp.gnu.org/gnu/libtasn1/libtasn1-v4.21.0-src.tar.gz.sig

Here are Sigsum Proofs:
   https://ftp.gnu.org/gnu/libtasn1/libtasn1-4.21.0.tar.gz.proof
   https://ftp.gnu.org/gnu/libtasn1/libtasn1-v4.21.0-src.tar.gz.proof

Use a mirror for higher download bandwidth:
   https://www.gnu.org/order/ftp.html

Here are the SHA256 and SHA3-256 checksums:

   SHA256 (libtasn1-4.21.0.tar.gz) = HYpESiI8xUZCQHdzRuEl3lHY5qvwuLrHQqyEYJFn3Ic=
   SHA3-256 (libtasn1-4.21.0.tar.gz) = XtNk+w/VLnMrJZlT3CZQy/Mgwm/cmWTdX6ZBb49ETwk=

   SHA256 (libtasn1-v4.21.0-src.tar.gz) = BvfQ93s42ztrF6PVTVkIdOXlib6oCBMpqKOs++w9/iE=
   SHA3-256 (libtasn1-v4.21.0-src.tar.gz) = l6gEY3JXjHxWYVIPk8F8H6P6qWWdUbVmZPvGRewQnsU=

Verify the base64 SHA256 checksum with cksum -a sha256 --check
from coreutils-9.2 or OpenBSD's cksum since 2007.

Verify the base64 SHA3-256 checksum with cksum -a sha3 --check
from coreutils-9.8.

Use a .sig file to verify that the corresponding file (without the
.sig suffix) is intact.  First, be sure to download both the .sig file
and the corresponding tarball.  Then, run a command like this:

   gpg --verify libtasn1-4.21.0.tar.gz.sig

The signature should match the fingerprint of the following key:

   pub   ed25519 2019-03-20 [SC]
         B1D2 BD13 75BE CB78 4CF4  F8C4 D73C F638 C53C 06BE
   uid   Simon Josefsson <simon@josefsson.org>

If that command fails because you don't have the required public key,
or that public key has expired, try the following commands to retrieve
or refresh it, and then rerun the 'gpg --verify' command.

   gpg --locate-external-key simon@josefsson.org

   gpg --recv-keys 51722B08FE4745A2

   wget -q -O- 'https://savannah.gnu.org/project/release-gpgkeys.php?group=libtasn1&download=1' | gpg --import -

As a last resort to find the key, you can try the official GNU
keyring:

   wget -q https://ftp.gnu.org/gnu/gnu-keyring.gpg
   gpg --keyring gnu-keyring.gpg --verify libtasn1-4.21.0.tar.gz.sig

Use the .proof files to verify the Sigsum proof.  These files are like
signatures but with extra transparency: you can cryptographically verify
that every signature is logged in a public append-only log, so you can
say with confidence what signatures exists.  This makes hidden releases
no longer deniable for the same public key.

Releases are Sigsum-signed with the following public key:

   cat <<EOF > libtasn1-sigsum-key.pub
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILzCFcHHrKzVSPDDarZPYqn89H5TPaxwcORgRg+4DagE
EOF

Run a command like this to verify downloaded artifacts:

   sigsum-verify -k libtasn1-sigsum-key.pub -P sigsum-generic-2025-1 \
         libtasn1-4.21.0.tar.gz.proof < libtasn1-4.21.0.tar.gz

You may learn more about Sigsum concepts and find instructions how to
download the tools here: https://www.sigsum.org/getting-started/

This release is based on the libtasn1 git repository, available as

   git clone https://codeberg.org/libtasn1/libtasn1.git

with commit 83f96d790a8107889e7c570294d49227b2db9d61 tagged as v4.21.0.

For a summary of changes and contributors, see:

   https://codeberg.org/libtasn1/libtasn1/commits/tag/v4.21.0

or run this command from a git-cloned libtasn1 directory:

   git shortlog v4.20.0..v4.21.0

This release was bootstrapped with the following tools:
   Gnulib 2026-01-01 e93789db7e86c51d6cb9683ea508e676a55cdefa
   Autoconf 2.72
   Automake 1.17
   Libtoolize 2.4.7
   Make 4.4.1
   Makeinfo 7.1.1
   Bison 3.8.2
   Help2man 1.49.2
   Gtkdocize 1.34.0
   Tar 1.35
   Gzip 1.13
   Guix ac92638bcec817cbbf94201eab0b342553987d42

NEWS.md

# Noteworthy changes in release 4.21.0 (2026-01-08) [stable]
- Undocumented asn1Decoding --debug flag removed, thanks to Andrew Hamilton.
- Code coverage for src/ went from 35% to 82%, thanks to Andrew Hamilton.
- Fix of ASN.1 typo in manual, thanks to Masatake YAMATO.
- NEWS renamed to NEWS.md and uses markdown syntax.
- Update gnulib files and various build/maintenance fixes.
- Fix for vulnerability CVE-2025-13151 Stack-based buffer overflow


