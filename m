Received: (qmail 15421 invoked by uid 550); 5 Dec 2025 17:52:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14310 invoked from network); 5 Dec 2025 17:52:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=ZzWSW0tThg8DMWHJR+Slph/EIiQD20m4LQXPn06wH1A=; b=
	Zw57Fm9BDdkyJU47BhYfb3O4Rj7FIkXMTyeMrE8Wn9QyXgQyJnb782CdxzD38cxY
	dSPDy9noJHjDAhOmvddlq1Z2gR1eTGmk7rINZ4Ezdl8Te2HzmeFi73reST16PUwO
	yld1pHQylnbPzSuOA0EdlKRyZtiPeWMkNb618z1WU//Qr/0KajHNdvpvS6RnKX3k
	izcdjyrpG/Re5LattAEPN/B+iBQMFIwcEq/p3NjBvhT5bn7e3bTaArOiDAXWqu4V
	IK0uSVIa4NfF1mgrX4zc3jGIFcXzv06UXB3FdXDDzybif3dJrST0CXoc8EKOzczL
	AjTVcZrC6PfajuminRgTaw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R2WsTu9jWGhrbBjB/qlxE+pokquN9gJZddOEyhgZI5EdQOjsBXIb7LOvTlRhKudsamZzF8OoDAQJjqN4Buqdy4/B6NSQSHH5fuT6Zc3+rN1lFw7a31YrRjNyi7pGui0giH45NyCABRyRLrNJeRIV0kKwc7Va1vAIiNUvAKYy5max4r+RCtjKm19HGFlT2zhyZ/l/NDjUvkRMMnW8czxPF5R2TEvcFUmRasb3SMm0s2uPeMxDYV3O4EFkLL8HDn4upF8swy4ixQfrJOvZkeZskGo5rXSoTM+Gdy1QygEQt8a2a4uoRCkj9TYOnUDJOXZ8AaEUqPWbSMU38d+fL2Woeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZzWSW0tThg8DMWHJR+Slph/EIiQD20m4LQXPn06wH1A=;
 b=ri+UDqE2WeeZhFeYYSbdBw8p3E57inlH/SkkFDfuvzHwhabasOH+Zwo3BIfvr9Ctaof8ZWZAynvZrz4k4B2iOQ5zq5w5OizpmyJ4VA+izU0eBgabQ+7QMO4oaY2MfH7TUvsif0iYCBEBQrwbISJJ2zKXUI5WPL8MKXesxgLB7iIsVWqcx3qNnxSo9bwI3vSxtgCmfWQare1YnVs7JjQR6og3JxSKsa2aSOandKqR9dtXms3K8JZNmjRgp/804uF+N23ROV7lzJbt/5z9FSCrehJoZALxpvtaEFc5vfI+fo+lSbBlOqSW6y5ip9aHymEa0knyPri5Gc4ace97OI1fIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZzWSW0tThg8DMWHJR+Slph/EIiQD20m4LQXPn06wH1A=;
 b=pFoIvMKQrQCqqSceDvnVUotcbfIRjg9Pwfcb1Is5v1VpQjS7GJw4kaHHOuB4Oe7Z24qhauz8oOZtN8CLWgVtt9J8UBjQwtkboBB5DrH/G9eL9LApo26CH5Yswi2q1nBXr06uP9DNyT0iHIyLio3Mo3sBlQlCE8SsgLnacduz4Ic=
Message-ID: <9bc47084-a77c-482a-82f9-5240d7e264d2@oracle.com>
Date: Fri, 5 Dec 2025 09:51:57 -0800
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <a4bab4d9-bbcb-4f59-9aa7-7a9cf3fdec74@oracle.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <a4bab4d9-bbcb-4f59-9aa7-7a9cf3fdec74@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR13CA0090.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::35) To BN8PR10MB3396.namprd10.prod.outlook.com
 (2603:10b6:408:c5::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR10MB3396:EE_|CO1PR10MB4548:EE_
X-MS-Office365-Filtering-Correlation-Id: b47efbd7-bf85-41d2-4924-08de3426fcd3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?WlBjQ2NKejFtSlBFaFora2dJV0FoS0twbkR0YkZneGZHbHdpMk1XWElkb1d0?=
 =?utf-8?B?WFpuVDhFUTY1Nkt4LzYwMmNLVU9lYXNaNHhmNjRjZjhyemI0NVpZbm15T2ov?=
 =?utf-8?B?aFBVRjFZclVQVy9hV0J6R0dQQjR2VWY2NHpJSGh6ditMMklzbmZCZ294K3ps?=
 =?utf-8?B?TnZnM2p4ZjZsUkxtTUhXU28wYzZ0ZXZPd3RqWnIzamJCdXB6K1JmMjJPNC9K?=
 =?utf-8?B?ZjJpWm5qQS8yWXluQS9YT0E0ei9SWnhISEdVT3pSU05XaUFvaDI5WjBHb3lG?=
 =?utf-8?B?bEIwQzc3NUhTNmk1L1MrR3ZZd0trL0FPWms4S2NYM2MrblI3cnNJYzBmNTJz?=
 =?utf-8?B?dllvTHo3aGhGbVlwTSs0cFBvUlhJMGxSbGFrNXNGdGgzY1ZLNkE1QmFkNkky?=
 =?utf-8?B?VGVVaThDUXNTcDVaSTNoWk5xdGhkKzZqVjJGZHlrYUhadVpXNmhTNUdKcFFS?=
 =?utf-8?B?Z1pCcUtoUDhjYmNxMlhMTFdTWWwrOUQzMkNUNTNnQ1ZwWTluQU1SV05kdVAw?=
 =?utf-8?B?R0FVRWlMMGkyWWs1bmYwbzFXTmZVTnRudjl3bS8zUUVKUGZCY3ZWaXNLTzIy?=
 =?utf-8?B?U1dGQTExdUJheFR2MGlOeFVEbElKZlY1SnRYRzBNZTBDQy9TVGZlZDdhd25M?=
 =?utf-8?B?cDFHYlc0L1RHaENhT2laeGFKTmQrUURFZGt1blQrQUVGRGpuWmtMeVZxY1pK?=
 =?utf-8?B?WTVKenJNSUl6dzdseWIwa1VuRFJqcHdNcGRNV2hLbCtuMHZrazErS3ZBRVhI?=
 =?utf-8?B?bnJIcUZKbnFTQXhicVhRSkg3VGxHUWkrUjdaUTVRWElTc1RWYjJhcDdHckVh?=
 =?utf-8?B?TktRbWxkQjl5VzFNbnpXNDRvK0xmMFRVOE85R1BIbWlhQzVJcDd4RTFuU2ox?=
 =?utf-8?B?ZHF1SFlZU01nZjZVbldpNFptSERqR1k1UVk2ZkV0NDJVSndFSGNMMk83WlR5?=
 =?utf-8?B?YTRSenJGdGc3VmJUU1I5cGdiR3JyNjVEMzNyU3phemswOUMvb0tnMW5MMEZs?=
 =?utf-8?B?S2QyL0xPZTU1bHJDczlOZldUdFZoeWM2VVdkdWJYYU1hUk9TRmRGNkp1ZnBx?=
 =?utf-8?B?MkhtK0tnYkdXaDlEVklWRWlUVmk2bjUydTdTQS9EQmNuU243clZKN2xybXo3?=
 =?utf-8?B?bUd6Z1AyZDFtYXZNSUYxS2lOa01tRDJNU3ZhMjFRek81UzRmZFJMUmtYY0VM?=
 =?utf-8?B?dVlrOE9kL2NyNTNiRXNuRmxEMkkyejE0QjhEeE5PeHdnVEsvUVF0SHRkaGVq?=
 =?utf-8?B?djdwREc4bWtWT0NPU296d2xrR2tueFg5MVI5NU9uNVZUMTVUUVYrS0tPcVBr?=
 =?utf-8?B?VytNTllmamUydUsvTnZEOHgrVG5pZFVIcllQZnduZkZVRVVxMVQwZ29TTWRz?=
 =?utf-8?B?dG9wcThFdk5tdkdRTVVOQU05Yk13aEJZeVJnN0VOakVTUndTMjhKSjZldVMv?=
 =?utf-8?B?b0puQ3c2OUJsNElRM2xDRUZLMGZmeEVqaWFXUE9PWUU4cHBEWVZGQzc1TnNq?=
 =?utf-8?B?UDlFYUVYRGdNNk5DU2hsLytEMVhia2lwaUQ0M05ZVDhEb2dkbDdMOHRFWklN?=
 =?utf-8?B?STVtSHlRMlZibjdnK0xXUFZVZmJ1Y1VVZVc3SWh5MGZLNXhoVDliU1lpbDVF?=
 =?utf-8?B?M0pDTGdnRFJmM2MyRVorVmlPNmNwenlXNFE4Q3RlRnRUeFZwSklWYmRkME0x?=
 =?utf-8?B?bi9LYlR0VTAzdU51VmdET1BUZXhjUE1KTW9Id1NxMXVWTGxvUW1Ba3EwMXlP?=
 =?utf-8?B?UlpBY2VyYi9RQUI5TnBTTHFhTlEvRk1kdm5mUzZKRHJJY0hIaWRRS1hjL1cv?=
 =?utf-8?B?ZS9qK21TTWNPVHBLUkxlRU1aa01qUFZmRW5rTUZGamJGMk5WMCtpMURlcm1a?=
 =?utf-8?B?ZDRvT3ZONzlkN1hHVGk0MndJbnFLWXhjR3g4VHhPQmh1ZHdKLzJ3cDcwTmYz?=
 =?utf-8?B?RFUvRSs3STh2UFNaNHh0TFJNdW9RWU1GREJRcWtBWE1CRUllR0F6V256dFBS?=
 =?utf-8?B?dFIxa3NmS1dnPT0=?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR10MB3396.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?YXc2RnVhcWdhZGFaSmd1Szc3bVE5L3pacjhNTVVWQzNTQ3diWitRZEthQ1Z0?=
 =?utf-8?B?Q01rcmJzbHE2OTY2OUd6b2orVVpOeWxaTlp3M3JzY0xmdEhIN2RTZjhUQ1Z3?=
 =?utf-8?B?V3VoejlMVVNzcnpVSkVWOW5JMXZFeFk4SjR3NGRqcE9nb3hHZnRUN3J1RVdM?=
 =?utf-8?B?S2lGL1pEZlo1RFRYQlcrTHROMlkvQmVEZW96ZDVHS0YwZFgraGtZdWlSWXBr?=
 =?utf-8?B?UUZUV1R3N1ZxR2hKVzBjNkttUDM0bGxMWUZBUnkvWnZtSGVEVldncFI1QU1z?=
 =?utf-8?B?YkR2Qk9jZ1NHWWdsa082Ri92MWxyTGJiSzREaDAzWmhKaXNkSmpyY2JXMkdQ?=
 =?utf-8?B?ZTlwOWVlcHhjMjFXTmExZHZ6OXhUSVl0a2tLSzk0TXVxcHN3bnBEakdURmQv?=
 =?utf-8?B?NVdOcnZJc3BYemh0eGFKUnhYK2pheSs1dlZ2UzNHL0U5OG5QYnQzdzFjMlJR?=
 =?utf-8?B?aWt6V204RDdIU1N2KzZjUUxyaFFCSzVZMlV5VTFoZEEzNE1nVXVrUWxwWHlk?=
 =?utf-8?B?YkRPSkNkL2MyWWthTmVUUFRpQUxYT0doenZYMlhFaGdvQ3FnOUR4MW53MVlm?=
 =?utf-8?B?dWR2MkwxMzk2MzNUbDZCcHZaS1pxRUtXZTU5L2s1YTJhMDEzaUJmRXVScC9t?=
 =?utf-8?B?YWRYRVlYSU51U2xaQ2oyenQ5Yzl5NldXZVpyaFg3SVZURjNOM3E1eU9jZjFh?=
 =?utf-8?B?T3FSTExnM1R6TnJIY09aVDg4RkVIRG02ek1FRTVqYXZTWHpPSFBFbXBaOVY1?=
 =?utf-8?B?QkNuYjdMY3RkK0Y1Y1FaNUlTckJBZEVxVUxSYlgyaGxHTUxoR0lKY3lDK2lM?=
 =?utf-8?B?ZVVEMzF0YWF5MVhNVi9UZmNTazhZdWZWTTZTTVlKM281VDdJSktKYTZ5cDFu?=
 =?utf-8?B?NDlsU1VDTllCK0JMQVZhd1RhQlgzeFJLL0RxaTR2V1lUOWREWUxXeGV6WlUx?=
 =?utf-8?B?c0JPTW9FZFZGTGM5R2FRc2hvaTRneVFCQnphbGZpSGhNRFA1VG9sejN1d0FO?=
 =?utf-8?B?a0dRclR3STJ2Zzc4dTlCN21YaTlGMmVZMTdaRjk4WlhxK2lOTC9CNTk0bm9n?=
 =?utf-8?B?UElHV3pOdVFzOWdaQzJ1YTI0c3JETVR2V1BnY0RQaGNtSlJCTjIxWHUzRk11?=
 =?utf-8?B?UXVFclBNaHFIbHhoSndNNlZqWGtnWktydEZJTzZjRnd4ekN4T2hCb21qa2xx?=
 =?utf-8?B?WTNJbGFVOHJMNkhGNys3RjRiclhKN2ZTV1ozTEN2UGtKeFZmdU50eFBZeGRT?=
 =?utf-8?B?SXUxSzdTUXQrOUcvNGVLYUY3cXY4cUhPelY4Q0ErMmhITFVrSXQyZFM5M1pC?=
 =?utf-8?B?TEJHRlNaOGQxdktCM1B4ZSt5R3RCV1F6V3JmRXFYcGFrZkRucVRXbVlIeWxM?=
 =?utf-8?B?UzR6SWFGNEZGSWxBQWUwM3NZNWxkbVBzOUlwRkdZZ0U1aGgzOUNuMkV1TXg5?=
 =?utf-8?B?YzRLVG9FZTI0cDVJOWpwZk1VT3dzLytoVVpZc0lWTFh5aExHd01oRjgzQkhU?=
 =?utf-8?B?eFdaUldCbU1XYlV1bFFpc2pMVGFja1NZdVFOK1lGUmNFa01PakpoNGo1NkRP?=
 =?utf-8?B?UjUyMnd3M3BheG91ZllOUGlBS1pFb0d5RnBjVjV5clEyS3hCMTAyeEg2STVS?=
 =?utf-8?B?Y0hUdmV1b1ErRG1vMWdOVDRrTnJkSnRkVXh1THBFNEVrdUZoaTN3VEM1MzN5?=
 =?utf-8?B?Y2pnZGQ0T2dXdGdKYS9aa1NSODJJZzd1U05HZElEOTdmTVAyS25aS0hsZWNQ?=
 =?utf-8?B?aWlZdGtoUEpoQW1tK3pYelM0YkIxcFE2V2xvMkdOdFc2UmRBWW9iNFB3STlO?=
 =?utf-8?B?dHNsczZPWjVRWUZGcE5jYTNvNGZFbnluVUV1MDlwVW9EcnQvaXBLOHJLZzlk?=
 =?utf-8?B?K0VDUzQvQ2djRTl6aUhPc0x2Q3BHRDZaUmc0OENqL3RSVHRwU3dwVVVZM05u?=
 =?utf-8?B?b0NTTWczaWZiaStvNzA2K2FzN2NvekU2T1BVT1M2VUdoWDd2MjF0bHluUCtE?=
 =?utf-8?B?SkJWQ2FkTkxDRloybENmdndnazZwMVZqaE1NQUJsemkyU3o0YmtlRC9hQlBn?=
 =?utf-8?B?d2RBaUlvRWtPSEs2d1Brc2xjVEt6cWRpdnVHdEVKV0hOOEYyMGFya1I0c3Fy?=
 =?utf-8?B?MHlqRVl4USs1UFhZMTFaa1J0SDJ0RzZrYTZKZldCa0JMcE5UakJzYjJJZjhj?=
 =?utf-8?B?Znc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	bFP+B4TQKPt7i/tPFODfUmamxCdgwmP97tGJ19Z3eD6xAs4F/LMVM1gW40sYdjh9Tl/4INaPxgsWqGh1RW+u/JQadpQpL7k0vms+FDZk5XOoab0m3pLh+sr15Asg4QjyJtMSzZiV/19T881xN9zZ7Qg1A40KGbBDZaFOA62OvH73qlGGC1p8bJeSoh2U6CpvVkUdH99Mo0tnns+4mjMSZd3ndGWVLWiM76nhgyz7oNBW/23aneVPTiqclft+K+jbHKfyXM/mwohusgEDQOgKDjJTpRLevU/npzPL5VPqIOmd5+7H2PZUGXptGcHi0JfYmP8tf9KVyLXqbY5Iwu2ddenxoFII8BJupmu+RE7Ts0SU0xTBvnHBOPf+yU+eNGstfDiglPU+zsVScdIjHKObgUk/5WjCWXEpRkKqcqzTuYIhv1Eh19bIzmW1ZxYNBqHC1NV8m+nxQkxELx9MMq8KZDlCYVcB9AEIOqTFSt9yvo9jFuMInkgK98i/a6YNdyUavwWbm52pPg5Q3K5cpTMSRT7Smz01MPtXi0HzP6+b/tsNigeAadbh1eFqpDys5teBkuIzA61z71CZ8L47ueYsHeGMkmkntTxecTx5UpqTUlE=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b47efbd7-bf85-41d2-4924-08de3426fcd3
X-MS-Exchange-CrossTenant-AuthSource: BN8PR10MB3396.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2025 17:51:59.0435
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T44cqQTtlsbVD8zAHR544GFEu03roYyVJCY7V20MSpdKqMXBCVSxprpG41kW3bEpcKMRBHfc8HJUK1FxZVsXsJyTBv9XRIQ6ZQ6s2BiBCoI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR10MB4548
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_06,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 malwarescore=0
 suspectscore=0 spamscore=0 phishscore=0 mlxlogscore=999 mlxscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2510240000 definitions=main-2512050131
X-Proofpoint-GUID: 4EMPPMo6BNpsDI0E_TNjC6469vHtye1o
X-Authority-Analysis: v=2.4 cv=AaW83nXG c=1 sm=1 tr=0 ts=69331bc2 b=1 cx=c_pps
 a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=NEAV23lmAAAA:8 a=yPCof4ZbAAAA:8 a=QmPwz_qhpn2sB8aVDKsA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 cc=ntf awl=host:12099
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDEzMiBTYWx0ZWRfX0f9YifQMSHgI
 KAe3gRD5wqka+fG3aXSDCXktwznOpR+HiGUtSxLUCLT8P3dQBcqQu+ICHyelme3QVcpcvhYDQ5g
 ToquZkGQXwlcnaEcZjkVpyESykL4qQVGN8CqOmGjpPYR4JcYeYcJ3VQI8Vwfqmp6qkWXF3w7iwM
 FJbkpdcUUWBF7UwNgWZzQwvVwSb7j9PCj8fkzuGZBnLVupHLhSWBxntAc4vp0vzB49f5nI08IPH
 ndhca0F/7GnYIR60rN/0DT4E6oL4JcuuRSp3/0maltWZTjljeRPM7RSjhTnu+Z/wpUnTeTU6XY1
 RwHn5yUEkqf1khpGSVAKc2jiTYCFmmqxAZyu00JOYhI9N93U1yIq8nvhPiAj3kB3gLKGymow5x/
 F9grmpGwH4tRttCHgUX+Nv5saLQnbdRZIx7cZCbqV84DdoRuHuA=
X-Proofpoint-ORIG-GUID: 4EMPPMo6BNpsDI0E_TNjC6469vHtye1o
Subject: [oss-security] CVE-2025-66566 fixed in lz4-java 1.10.1

https://github.com/yawkat/lz4-java/security/advisories/GHSA-cmp6-m4wj-q63q
discloses:

> Java-based decompressor implementations can leak information from
> uninitialized output buffer
> 
> yawkat published GHSA-cmp6-m4wj-q63q Dec 5, 2025
> 
> Package                              Affected versions  Patched versions
> -------                              -----------------  ----------------
> at.yawk.lz4:lz4-java (Maven)             <= 1.10.0           1.10.1
> net.jpountz.lz4:lz4 (Maven)              <= 1.8.1            None
> org.lz4:lz4-java (Maven)                 <= 1.8.1            None
> org.lz4:lz4-pure-java (Maven)            <= 1.8.1            None
> 
> Description
> ===========
> 
> Summary
> -------
> Insufficient clearing of the output buffer in Java-based decompressor
> implementations in lz4-java 1.10.0 and earlier allows remote attackers
> to read previous buffer contents via crafted compressed input. In
> applications where the output buffer is reused without being cleared,
> this may lead to disclosure of sensitive data.
> 
> JNI-based implementations are not affected.
> 
> 
> Details
> -------
> 
> During the decompression process, the lz4 algorithm may have to repeat
> data that was previously decompressed in the same input frame. In the
> Java implementation, this is implemented by copy operations within the
> output buffer.
> 
> With a crafted input, an attacker may induce the Java implementation
> to copy from a region in the output buffer that does not contain
> decompressed data yet. If that region contains sensitive information
> because the output buffer was not cleared prior to decompression, that
> data will then be copied to the decompressed output.
> 
>  - LZ4Factory.nativeInstance().safeDecompressor() is not affected.
> 
>  - LZ4Factory.nativeInstance().fastDecompressor() is affected because
>    it actually uses safeInstance() since 1.8.1. In 1.8.0 and earlier
>    versions, this implementation is instead vulnerable to the more
>    severe CVE‐2025‐12183, so downgrading is not a solution.
> 
>  - Both decompressors of LZ4Factory.safeInstance(),
>    LZ4Factory.unsafeInstance() and LZ4Factory.fastestJavaInstance()
>    are affected.
> 
>  - LZ4Factory.fastestInstance() uses the nativeInstance or
>    fastestJavaInstance depending on platform.
>    LZ4Factory.fastestInstance().fastDecompressor() is always affected,
>    while LZ4Factory.fastestInstance().safeDecompressor() is affected
>    only when JNI cannot be used (e.g. on unsupported platforms).
> 
> Independent of this vulnerability, it is recommended that users
> migrate from fastDecompressor to safeDecompressor, as the latter is
> more performant (despite the name).
> 
> The impact of this vulnerability depends on how user code interacts
> with the decompression API. Users that allocate a new destination
> buffer each time, or use only zeroed buffers, are not impacted. When
> the buffer is reused, however, the confidentiality impact can be
> severe. This vulnerability is marked as VC:H out of caution.
> 
> Mitigation
> ----------
> lz4-java 1.10.1 fixes this issue without requiring changes in user code.
> 
> If you cannot upgrade to 1.10.1, you can mitigate this vulnerability
> by zeroing the output buffer before passing it to the decompression
> function.
> 
> Relation to CVE‐2025‐12183
> --------------------------
> This CVE is a different attack than CVE‐2025‐12183, affecting
> different implementations with different impact. This new
> vulnerability was discovered by CodeIntelligence during research that
> followed up on CVE‐2025‐12183. Users are recommended to upgrade to
> 1.10.1 to fix both vulnerabilities.
> 
> Severity: High 8.2 / 10
> CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:N/VC:H/VI:N/VA:N/SC:N/SI:N/SA:N
> CVE ID: CVE-2025-66566
> Weaknesses: Weakness CWE-201
> Credits: @simonresch (Reporter)

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
