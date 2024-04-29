Received: (qmail 23831 invoked by uid 550); 29 Apr 2024 14:00:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26263 invoked from network); 29 Apr 2024 09:46:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : references : from : cc : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-11-20;
 bh=pyYTwt3CgcFGWmcwIWbV5zqcKwIGCAEm3HaU0x12tTs=;
 b=K5XVYxbTETvGHLmu8MwJ78uQLv6A7+Ml5iTS+1h55rSwWy9uc0u/6yyh8QJM2A4okvsm
 JRJaDoQ8eouL2XPtt89rn6HtGlC1qDr2MiiM06TwrqmYFsLe7WPUo4+Qu6ye+rWPBhkf
 O60yHgRQk1o7WCyNwmpsxT9ykHJamkdoExOJ0JkwJbDesNNHQgaj5lys4h67q6PCfg/2
 hN56LNfAlfO5NPobRTsKl5VI91Ga291ylx9tU5mxm95KYd2got5fXW/G+gu6PeQy/LQA
 TZnKj6/+q3qzvlmRzXB1mbbDp/ruhwelOfcSctUu5WAX77bYaezDCCjZxeUJtyJNZ6v2 AA== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HbQ3hP30EZoASSpD/9c+e4BbNY0Wj9fboEAD5FdT6X8TVSlh3YJ30o+BJnr+gqFT74ouLcPYN6Qt3KQFiJjluOaHlYnS0Uk0cUJyjw1VJDZUKmpe3gDPPahSRQAiVQrmye3iXtOj57yVWtZPyX06ijWX7b3h3VLKqFueeZulX0I1rj0WYCTDgDohfFkkvYY+GzL/Xgq/4fwNImwgQrNKNakkRo1wd8CCG9K0Cdc5uyvOZODQxeY+xHY2q+VabVnHPUGsfMOA9qI7/JnUp/4foZFxD+xqoVgQqpTbFu9AOD2YxBsrXfQCu/crG4Hh0QSmUUV3sWXSi9dft5377Hxvcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pyYTwt3CgcFGWmcwIWbV5zqcKwIGCAEm3HaU0x12tTs=;
 b=XSPdcs0M7uLUOGm+IaGK2iCB8yG3Bh708PAzVOW6SkcPro7a/bgLm1ussJ5pBTE7fbEdgUEb5mwYznxPXhA5BUcgWpcBalLEVCM3snTrk3B/bvJLqyYdYq0lvEEPEkOeSY+ix/aWbG23NLSsVRibXDMTtE/6kI6OTLWwjs5g+vNdcCim+TYiwUkFWHaFi6hKYPzgGH29jr/L/09NGkEJLOm0dlbuqIKWvc/H9VsrEvWWhXsOG7QZuDrtQaSXS2GCvguDmhn14DahW/8+ibHzjnQt3BRVVMURrIt3Th/7IEugZuqIOkf0LPgIpcgBveh8fUYfD4UonwNq+69LjjJ4oQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pyYTwt3CgcFGWmcwIWbV5zqcKwIGCAEm3HaU0x12tTs=;
 b=D23xeEpZiEuAj7Fyp/2lCZeBeZgOMkGHMF6M61NUV8Xzssy+ozZXVv77DunhNAOVZEnWmdfeUf5CCcnUxa+qQ2H/Wnb1l3qyS+MlnIBECHOyMPA+o8NO0ii+1STqqkmjifrlACk6WV65o6mz497oR6gzUkqOnlNnym3kF3zwA4E=
Message-ID: <a0e871ca-468e-4239-89cd-61b35f935c2b@oracle.com>
Date: Mon, 29 Apr 2024 11:46:21 +0200
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <20240427234834.c0219029-fe37-49ef-a563-4d24eea118c2@korelogic.com>
Content-Language: en-US
From: Vegard Nossum <vegard.nossum@oracle.com>
Autocrypt: addr=vegard.nossum@oracle.com; keydata=
 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 8A==
Cc: Hank Leininger <hlein@korelogic.com>, Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <20240427234834.c0219029-fe37-49ef-a563-4d24eea118c2@korelogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PR3P189CA0031.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:102:53::6) To PH0PR10MB5433.namprd10.prod.outlook.com
 (2603:10b6:510:e0::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR10MB5433:EE_|CYYPR10MB7569:EE_
X-MS-Office365-Filtering-Correlation-Id: 0544e4f3-73c2-4ad0-bd63-08dc68313d05
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?b0ovS25GdzAzaUtpakdtU3ZWcEk4TTFsMCtvaC9hbkk2RjVjS1p3OVp6eks1?=
 =?utf-8?B?c0FlVHdybml3SHNVRk43SDlHUzBhMS96MWNQbE9sbFBjNzdESWtLME9kUENW?=
 =?utf-8?B?TnJ0RUJSZFozZHJTOE9HTGJXcVF4QzVuQW93V3VaUjB0U29sM296T0dPemR2?=
 =?utf-8?B?emRCa2pjbFFUQVd5STdlUXF3NUhpTzdwNFpUcUR1UTFwenh1VjFaY1NDTS9Y?=
 =?utf-8?B?VWhIRHFGMUpYTVpZckRSVjRkRktjS3JJRWE2YzRRODVIQVJhMzZtUjZpOFpi?=
 =?utf-8?B?blJ5MmVOajRxKzMyS1RTNjVwQi8yQTg5cFBGM2FmL0dSWm0vellYcmpycXc2?=
 =?utf-8?B?WksrNnU0NUxuQ0pqQzRGRmFtdUxmaW1UV3NVWHRHTUdxMVZ0WHJKeStuT3FJ?=
 =?utf-8?B?NGdKZEVIRzdJQU9RT1pmQno1UzhTek5HK3BWUVd4dHZXNmlValN2U3YvWUg5?=
 =?utf-8?B?RW5XaVM2Q3RIVTVJZXJ0TUwvTm5sNEk0SVBiUjNJb0lBK0lwUzdEcVNyZXZx?=
 =?utf-8?B?RUc5VWw3WjNaWTlMbVQ0RFk2MFhpdklaVzZFbkprYXJva2ZFdXI5M3hSSjBh?=
 =?utf-8?B?VzRaVE4zWHg3cmt3RXIzbWtNSG5uNUd6QlVOUyttbVFxSmxtU0g5Um9DWXBQ?=
 =?utf-8?B?UUZSYlAyWVNTbEV2dVNUVmE5eFdMQzNrSVR0Sk5zdjZGU1o2c2NreFdDUXVG?=
 =?utf-8?B?NU5kWVRWcVdoKzAyUDFKMzZlTWYrcnVVS3JiNDFpNVJiYmgwRVcrREplREZH?=
 =?utf-8?B?ckdaVlhUbTY2UnRIa1ZUdkZOYURVK0Q1S1J4a2ltRkI3SWtOZVAzTjZSZmY3?=
 =?utf-8?B?Vy84dU9JQUU5dVZaTFhQaUdRUDdEVmhaeGFOQVJOQkgzYndlMnl3TnlFSm9G?=
 =?utf-8?B?KzJqZ0ZmMHY3SnJvbG5talZ2YkZOL1FpdUw4cEF1bzlybi93ajVabGFjUHdk?=
 =?utf-8?B?VjlXN0lFZytoVGQwWVgxVDREVUhTWGNvUTRPWjBBN0doUFZjYUs0R2Jjb3Vq?=
 =?utf-8?B?SGRLOFBoTUgwWDh6bzVNdVR0NDcxYThLZTdIRGcveGNXUFlkclFZYkoyMkZo?=
 =?utf-8?B?SDYrdGFtenY5cGJHRnVpNjNCZ1NqTzRXTWdFdFl4NTRyRER0R2tETGFNN3NN?=
 =?utf-8?B?djVMRU1ZeEdyNjUvYTUvWm82M0h6cjlnNU9HUEdpMTIzTFE5Ukl1NGZvTkNy?=
 =?utf-8?B?ck9xN016RUR3NXRuenFkeU0xZXNZYXVqcGM5MXNzcC91YlV4dm9SVzUydW1K?=
 =?utf-8?B?ZlJLMVhUMlpnRlJwUkdxOXJFR0htNjlHQWVyUWZLTzJ4MjV6bGFjamF5cnVV?=
 =?utf-8?B?RUhjNVNFT0pmaS93QXhGbnJCQWRXU2FaS3V2dEFIZmozbzc4Q0lqOHlXTXVV?=
 =?utf-8?B?QXMyTEZFWm1ZQ2tKQ2RnQTFQNm1seVlMYkZ2UFpmN1pKbEdjMVlkRHNpbEtP?=
 =?utf-8?B?SWJzTzg0WmhrREhLT3JYMGp2WDRqeC9yUmdhSG50UG03V2s0Nmo1RUpzZHlE?=
 =?utf-8?B?TkREQWpYaWUzS0w4Z0dxQ2RWdjRlRzU3TnJ0MHVEcDVycXFBN1lHT2RYZGdE?=
 =?utf-8?B?b3JGbFdabXhORHdRclRZU1pEZ1hqeDdFNEFGNEtjRFc2R0FSRFd3bHZEZXlp?=
 =?utf-8?B?dDFIUGxnekV0Nzd6V0NFejZRNkY3L24wVmp2RDU2VUgwUVZUMGRvcDJYQmdB?=
 =?utf-8?B?eFNHUjBoc0psK0k2amJpcS9Mc0gzR0M5d3k2ZXhBY3hjV2ZWWnZybVlRPT0=?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB5433.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(376005)(366007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?M2FmbXI0TXNaQktwRmhoS2pzQVNmblJZSnA1S3VDdHY0djlqclAraVZHdHFN?=
 =?utf-8?B?Rks5VnZQYTgrK1RYYlN6WjJ4dGNTa29vQU03M3hzSHBNTGVXZUdjdjIxR0g4?=
 =?utf-8?B?TjFPNHJpWWN0RlFITVhIYU9BNmlqUnlrcHpTM2p6MGhEVkFEWkZxdytzeWFt?=
 =?utf-8?B?SWhqU2NteFNhVjVQWHl0WEtmZkhMY0o0Mml5NzZqUU03aWJSWGJZM1lpdVVS?=
 =?utf-8?B?dDFKancwMC9iS1ErMWxlYklKV3Bpbm1ITTFJYmloRzRFN0VIUlNuSXdodTls?=
 =?utf-8?B?MjJyaW4zbk1KUXVKREN5Z3l1RTFTK2tGZFhjRFM3V3ZBNjNWWFBWNXRaNFh4?=
 =?utf-8?B?VitJZFo0cDgvZjN6T0NRNjYzUXd5REQ3SU1LUGNuMU1mbHNJNC9RMk5xV1lv?=
 =?utf-8?B?cnNUdWRCSHpyT0RGemM4cDBhUkFUbHJHZHdhemZzdEt4czZ2aXZQaDJEdWpk?=
 =?utf-8?B?blB6UjRZcTZjMHRON0sydWd4MitsNEJITkJMMWg1cWV3a0pvbmdsNGhjcHVh?=
 =?utf-8?B?YlpaM3dmTldFeVZ6WVYwMzVBb013N0xSV3o1Y0hZcGZyczVIZkphYXZkS2FD?=
 =?utf-8?B?U1pRSEJweU5XM2pWMlNRa0Y4emtqUm1oNXduNUNSU016UnhsQ0dDN0o3dWsw?=
 =?utf-8?B?VUFpZ1hJSkVDbWRvRmU2UERzUmNHNUNnYmdXVFhwa1hBbVZuaUkvSWdUSVB2?=
 =?utf-8?B?R1gvSUtXTTZ6QUlabE1mbElZb2hiSzdXTVVWL2dzSWJWTDFVNnpsVndDQ01H?=
 =?utf-8?B?MTBCMC9oWithUHpRVFNPNjg2bEdwZjdJdGFiMVUrYkZQREduM3VqVCs0QmRz?=
 =?utf-8?B?WGJTakdsNDBxbSt0RnBkSU9TTjB4T1pvcU45NC9HRnFBVGdDVEFSR1B6TFhW?=
 =?utf-8?B?VWpoa3hEN0hnbklrbkRzZXN4RHM2djduOE1TTGNpck9uVTdWY2RqTjRYSEIz?=
 =?utf-8?B?Q3dDM0NJaDFCTml4bmhZL2ZLYWk4VExCZHdHQlpwOEYremJrUEw0UlVtaHFV?=
 =?utf-8?B?Ty9LN05NY2FkVDFCV3g1cWVEaVBiOVdBTTVaZFo0U0F5L0trWWdRamtwQnl4?=
 =?utf-8?B?dzVmRmRxdGkvVDFBdG90S2RwcE9ZdncwUXVndmZNbENtT3ZMdnYxY2FzUUZX?=
 =?utf-8?B?RzdrMzVvTjJPV1d1SFRVMEFSQVZPclJSU2hOelhlTFhsQnlzMDVubWFMcWUz?=
 =?utf-8?B?R3JvMDZKYTg4QXdwYUtpRVV5Q3ZOZnUwKzg2V1dYdFBkajE3RHg4SVJ1SkRz?=
 =?utf-8?B?b3NUQ0NNWkp5NHdPSWhvTTNKNTNPL0ZWdGtJRndkRjFZM1B3RDZSSFp6a3ZQ?=
 =?utf-8?B?NGE3OUhiUHBxMVdUaEpNNjJiNlgzYk16VmovSjZwY3EvblJzbmxvc2VyK09Y?=
 =?utf-8?B?YVgrR1VnT2pNRWxFMUpaVStMSHN0blpxQThhY0VxbEtlSGZOazBNWjZZUDZP?=
 =?utf-8?B?eFZTNWlRaW9MZHcvMXFMbGQ0aklSRWR1MzRma1RmZE83RTh2cmpmSjBLakVU?=
 =?utf-8?B?RVhJWU9DUWx6Zk1UU1hOTmZ2WHVxbmlhRHBCSUZVVU9lajBXNGdzMUVmMVk4?=
 =?utf-8?B?YkJ6OEVUazRiRXh0Ym1hazZyOGdBelh5MGFtQ1g2QlZPQ0ZIc3pEV3RoYjZw?=
 =?utf-8?B?YTZzRWZLUE5ueld3MGxMMXljWFBMaExvZVVkbzBjLzI0ZG9vLzNsRXJaQ0dC?=
 =?utf-8?B?MW5KZTgycC9sV1J3QXJtaHovSDQ0M0dRTnVOdmtON1RlNUpZRml0eG9QZDhK?=
 =?utf-8?B?L1pxbDNDa1FtWC9jazhwSldQcDYraFpleVh6RGl1STB1STl4ZDUzL1VyTk55?=
 =?utf-8?B?b1A1NXVDZE13NjFBUWduQ1RqblV4YnNBcnBNUklyb2xNTUk5Z2YycmJRZW5P?=
 =?utf-8?B?SmNiWkxCZmVob010cHZ2Um9hTXVOYUtBbkVyNWJ4Rkk5ZFlEL0Fuc1dvS21s?=
 =?utf-8?B?TFZvcW93WmRicWtGL0lDQnhaQWZOaEFyV1lBQWhPNkdTRjQwc0NWdzJiZUhz?=
 =?utf-8?B?S3FPVXVnV3lXUGZWaUcySnhDem9Td2xhMk1lS0JrTk9yNXR1L0N6SVFic2Y0?=
 =?utf-8?B?VU1ub2h5QnhsVzJJZXBOOXBrdHg3dW0ydmwrdFV4VW14azF4Rk44STArQUNJ?=
 =?utf-8?B?c1poOWR2U3B4WHVwZ1lCOFV1Ty9MS1llaXE2ZkF1R2JJWHY2bndJcTlIeHk4?=
 =?utf-8?B?ZWc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	N+xlYOvSGw0gKXNAhRlRIHmZpb+NCiCL3AFSQQWHi5ms27UP3Dj4vTG1yyn/4eT9X1VNyq51+bE5Dl9q3f/yujzpeHiq0KGiW0iwDaI7ISC8tFKI/k7+2Rjd+HRvfkAxy0WTRBvnsdsLlt1+O2nvBs6/nQNGyeHLnGDB/zY5rAgNveEzjY9uzdap2UQKnd9JORDVhdYmevs5F1/OZF7ofCqWjpTUZDbqALMaogkV2+C3VmQLcbwLz0gMRZWeY1lGrRluCO6noOULZus/4294WVEPz9hSWcgXuPE8UXIZUiu2jQENtMO9VYgsSNcSYfcCdqjLY6D2qJ3cKF9tdeP+a6hf3dbGPABh3vQ3Z0mvEnPbmqBRw2szIMRQybte5JX+TJfs1PeZ6dgnmGVfFHs75qNj9hjvf9rHnuTx9YJ/uiGyYlb8YPFryTVyaYIgG068/oBhYCyDRi+8AnnmE5WhzKX8ZPk9QNvnPFzXafDThRqGxyt7RGPApe488oTxRm3jUFNXHyaqSfZTv2u0mH3nulk6S3+JiH9HuAi5xNkEdxj8LYzuz4f5G40hesFLhin+oTfOx4tVCpsGs4wxNcyA4a65LfThp1cPruIhkeS8xBY=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0544e4f3-73c2-4ad0-bd63-08dc68313d05
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB5433.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2024 09:46:26.8861
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bxj/Ca5Phkc57v4vJ5WjdQZdfNn2hQrcKOOIgGOUbn4bgastB/L+bHZKihgUheKk6HNjNpKeKMiwUPD2Hl0LRzgWM5vEJWc+cvlAueVeb1Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR10MB7569
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-04-29_07,2024-04-26_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 malwarescore=0
 adultscore=0 mlxscore=0 suspectscore=0 phishscore=0 spamscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2404010000 definitions=main-2404290061
X-Proofpoint-GUID: hhuZVUHQneg8Z8vkfJ7w6RykfllHLyoy
X-Proofpoint-ORIG-GUID: hhuZVUHQneg8Z8vkfJ7w6RykfllHLyoy
Subject: Re: [oss-security] Update on the distro-backdoor-scanner effort


On 28/04/2024 08:34, Hank Leininger wrote:
> On 2024-04-27, Jacob Bachmeyer wrote:
>>> - Check for irregular contents in .pc files, inspired by Vegard 
>>> Nossum's oss-security post
> 
>> Much easier:  look for pkg-config descriptions containing text
>> other than a variable definition.  The pkg-config tool itself
>> should probably enforce "cleanliness" on this matter and refuse to
>> process files containing other text.  (It also should complain
>> about and reject an *-uninstalled.pc file found in the system
>> directories, which was another logic error exploited in that sample
>> backdoor.)
> 
> Really, doing this seems a more robust approach anyway, because
> allowing only known-good > rejecting known-bad. I was mostly driven
> by "hang on, how many of the things Nossum's example does are
> actually used by real files?" and the answer from my initial sample
> size was zero, so it'd be trivial to extend that check to every .pc
> file shipped by every current distro's packages.
> 
> I think Sam looked into existing pkg-config verifiers and found they
> do not complain about things we thought they should complain about
> (this could just mean we misunderstand their purpose). A strict
> lint-checker for such files would be better than just checking for
> specific suspicious patterns. But, I don't yet know how strict a
> format we could insist on (would it turn out 10% of files in fact
> break what we initially think are reasonable rules?). Even still, I
> think you could embed badness in legit variables, although I haven't
> dug in enough to know that for sure.

Hi,

Masquerading a shell command as a pkg-config variable definition is
trivial (but probably still detectable) since you can just do:

foobar=/usr echo hi

which AFAIK is a valid pkg-config variable definition but also a valid
shell command.

Also remember that in my particular example I reused the same file but
it would also be trivial to use a different file in the $(...) expansion
so that the payload actually lives somewhere else. The payload doesn't
even have to be a shell script, it could also be a small ELF binary or
something where you wouldn't necessarily be able to tell at a glance
that it does something malicious.

So probably the real thing to look for would be $(...) in pkg-config
files -- Hank, you mentioned in the GitHub issue that you did fine this
in one file; out of curiosity, could you share it?

I tried this on my system and didn't find anything:

$ grep -R '\$(' /usr/share/pkgconfig /usr/lib/x86_64-linux-gnu/pkgconfig

It's also worth asking if there are other ways to encode that $() that
bypasses the very simple '\$(' pattern -- e.g. something like "$\(" or
maybe an expansion of a variable that itself contains the $ character:

$ cat test.pc
foo=\$

Name: test
Version: 0
Description:
Cflags: ${foo}(echo hi)

$ PKG_CONFIG_PATH=. pkg-config --cflags test
$(echo hi)

There are also other ways to achieve the same effect.

I should also add that I found out-of-bounds memory accesses in both the
original pkg-config and pkgconf (used on Debian and RedHat derivatives,
respectively, AFAIK) when using long variable names -- it doesn't look
exploitable to me but I've submitted some patches for both packages just
in case.

Thanks,


Vegard
