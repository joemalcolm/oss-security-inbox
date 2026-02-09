Received: (qmail 7783 invoked by uid 550); 9 Feb 2026 23:32:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7704 invoked from network); 9 Feb 2026 23:32:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=qVlsMuy/N5P4/sL5
	dFpjgogZFLW/RyEhw3Lop/AzrZE=; b=X8Zm8S3CXYF30DovyvTIKamTCjHJv7nz
	x7rIAOuzMgvX4ySCiEdyS6eTKALssK/EaPAM3dDAiynY683Vo3MIEsHZw+ZaIf5K
	H6zdkXMNJr4czrMCVYywc7hBqszNJ0lsSWiHjVINmuHclJZKfrtvpqLDarPreFbS
	qccYlI7jXc+FGFZNDKMkXitufc/LUQ4MN+/E+dM4FNxZgtO+wjvG26C3l3vI0hLt
	mHpAWpWaKCH755mOblsSi0Hi5LUbSTXimzP9IZnogz/VtjKn90koJy6ezhoCuXx+
	lZJfDknxoafKTj3R5JJugxKRaQMZnXs9gOd0sAkJtvCbLWqeb80/ug==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OUIZ4ZRvpP6fs7T59Xw5zteSkj8QccvMlN1icKY6Sr0Efea69VXGh4FzF5q9qRSW9d06HMzmnCkYnLPw56D4TaimAOvmDbdj/bXtRR5YwGHcN/fb05O5aLkEJxQEtEo/YnUA7nrEqY+yJ2Fet96TG5lbgYMENjaJjEqZxptarYGlwsDgqDObc6UoAuwtgDRyMtypfNzpkFf/4jOOer6jP5xTwuBxdXQhZPJ/tcF7OwnlJK6bBhWdZ29ihKemrd2LVvK4YLAcOFyu7Ab2rAx0/JI3B990f18z23gx15la4PRwVLJW1EcSmEjtGhDaSpYso0RTgCCKjH5UKxr+SXAjAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qVlsMuy/N5P4/sL5dFpjgogZFLW/RyEhw3Lop/AzrZE=;
 b=l1p3xGy22ZkecQMvrU1ATuRjK12KY1ZeF6Au7IUPvqdoHGVwu+NdR+wZoM018AKjb0WhtgnvS7RzDeJelHDoivXa1WCnCnRY3sWXB4Y5Nq428daWN7BPJQeuMCPL0//C71oGA7F5MKOcnA5zHIVAHjN55jxZFOL2BYzd9PGEchAOLYqMz9/qrPsBspxU6TK/wyrCq1nDfXAna/xutzzXVnwYJZOSEBQtxaTWzxkcU+V8wE73B+p4cCb3NVdE76MYbepkeivkfIRz5XZE+vrdlcVxbQu4z3CpVSaNzn6iOEsLnFRlc4ZwYLxviqDoBSgDSJTh17b8p41Z7atVEwEQsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qVlsMuy/N5P4/sL5dFpjgogZFLW/RyEhw3Lop/AzrZE=;
 b=s83ChjxYLOo/9EGk0c3/Wy8QvSdpW02jJOdwA1IwwO7g/LNMyhbWURZK4iozNJDD/F/3yMwyGoFR95C66KySHYFkRWWh/xhY3vSAytElw6WjJCfIHmkZ6hrp+MCE1HHbo3rdikMmctlWvp/uKILHzh5AM3aKOEgs0Zo5/X02l7U=
Message-ID: <c398efaa-3ff9-4eb7-bdf5-b417753a6a73@oracle.com>
Date: Mon, 9 Feb 2026 15:31:46 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PH3PEPF0000409A.namprd05.prod.outlook.com
 (2603:10b6:518:1::46) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|BN0PR10MB4934:EE_
X-MS-Office365-Filtering-Correlation-Id: bcc478db-23a5-469d-dd31-08de68336562
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?WUkrZEQ2OEJCaDgzZmJMaVJNZHVjaGx6ZTg0OGpxUEVSanhEVUdiRWRyYWZJ?=
 =?utf-8?B?bVRlSTBWWGl4eUxwYlE5T0xmdDJ3WW1FbFJHNFNpa3lHdEdjeDhyVUN5eGhB?=
 =?utf-8?B?aStZTUdHdjRaRVNuUnhoRmZUOEFBYUJKK3BpZlNyMUpoOEJDRWxGbDBOOFRF?=
 =?utf-8?B?cXdrYUVZVGxLZWFIcks5dVczUXBRcXhPcmVEU0kwY2c0d3lJVnVtcnhlTS8r?=
 =?utf-8?B?bitFWU8xTkRwSFhGeE80eHZLUW9hYUU1cVpwZTZEdFRaQUVqNUdFUEtCN0ZV?=
 =?utf-8?B?bVZRTDlrWEhtaEh2WkxjUGVUOUgxeVRNVnErZ1NueWY5Tzl1SlNSRkIzNkVB?=
 =?utf-8?B?cURwZmwvaW1CckloNk95QXU1M0h4cldGY2ZvcERuZUJNSkpjNnJ3b05wVnow?=
 =?utf-8?B?Tkt4NjJ5YjNhY0JBUW9ncUlCWFBvaU13S0RWKzQ3STcwVW5lNEZYYUp6cHRh?=
 =?utf-8?B?UmdNV3J6WkFaRkFIc3ptRVZEaEVEN0NXMEMwaTRJM240ZWR0N1piTFJtZzE4?=
 =?utf-8?B?ZjV1STBTQ2RXV2RDcUh5akxrb2ZlcElnM1NDNTBBVVE5R0Q1SmdZdHRqU1Fw?=
 =?utf-8?B?SmhUTDBvMmVaeUxkaEtNT1ZhdGEwV3pqeEpCM1ZBZnh3Ty9OTGlkY1A1Nkh6?=
 =?utf-8?B?eDFXRng3U2llNmRmTFI5M3dPSS9TVWpRbVRoM3hsdmN1SGZtT01TNWFLZ0Np?=
 =?utf-8?B?ZjlHb2c2RzlmTXV5dGcyUFpKY2RLeW8yWTNSQ3E4UzJ4N01oaDFiZTZBOHVs?=
 =?utf-8?B?a0VBMitvWFpTM3lxU3ZYT3FmWlVydjlleUJ5LzhoMjZRK2V2cDdtTmdHbUdx?=
 =?utf-8?B?NkJjN3JsTzdsbWwrSWpKVXI1Y1NGZlhhRGVqV0x2eXQvaUg2cHdPRDA2Tk8w?=
 =?utf-8?B?NFRmdWN3SUFkMXE5ZVFzM0JoM1FZU2x4Y3BBVExNTy9PeW9vb0hsL3N3MHhj?=
 =?utf-8?B?a2VpQVFsQjR4bmtBZERVK3A5R29aMmd1a1NPNFVZMGxwaE5lZ2xrY2tGcG9B?=
 =?utf-8?B?VjllYjgyNXNWbmY1bjFaTzA5WHBzeXlxeGJXRUJsQ05rN0lLeGJvYWFKYXM3?=
 =?utf-8?B?ai9Ba0pkaHc3RVk2MmF5Mm16RzY1SnkzSlRzcERMR1REZHM0TkJyNWd3WXRB?=
 =?utf-8?B?NGFiNnMyb2dYenFVZ0EvZmhJMUpFMnJNQzlxMk44T0J6TEJEODZqYlhURGFT?=
 =?utf-8?B?MTllMVhTSjg3Mlc3b1QyYm1QdlV1Y1B6NEdUOXg5TlhlWkZ1NGhBUi9IekVk?=
 =?utf-8?B?YnFRUkZqVDRjcG1XTFJwSUFRbDlQdnJJaGR3Y3M1U2hYRWhaWkoxQVN2NlBu?=
 =?utf-8?B?SVdHVGU5dGF2N0craVhuNUVqMkxJdzN4MFFNc08xay9TWmpGdDd1MitYeTk4?=
 =?utf-8?B?RGd1ei9JY1JhOXljRUdFVnJDeDZKS3hjTmhudVpOTXBiVDljR29FeFpKTHMv?=
 =?utf-8?B?Q0tLNldETWxTa3hlc2dWK0hWcVZ0S3ptMEo5VEFveXRwSGR1SnNpZzdsc01W?=
 =?utf-8?B?Z055UXYwZ0tzak1OeVZVUGQrOGZXM3c5K24zRk53R0hjZjAzazd4SXEyZnEw?=
 =?utf-8?B?bjZpVXFOUXZuZnBGekdkSEtxS2F6bS9NcnJ0WGZzSENXSFA2djdxUWlka3RT?=
 =?utf-8?B?Wm42YVRrNEJGa3h2YnByYkt3SzB3NlNSbE1WUWh5Sk9UUzJRMzdweEhNRXVa?=
 =?utf-8?B?SWlJQUxMSllsLzNpNnNKMFk1M0NmVXFJZU9tejcycDR3WkYrR3BqSWJXMUsv?=
 =?utf-8?B?N0RJUzJiaWh3dmRlOEcrSTRVZ2hiaVFuZHlLbzFHV1ZyZDU3YXlmUTNwMFZi?=
 =?utf-8?B?RzJTVU50NkZuZTBmWURPS2RqWmFTN3pqNzRJNlhZaGFINGZkd2gxSHA1VStj?=
 =?utf-8?B?a05xQkxDMk95UW9MeVdiMm9memhGZWQ4azE5eHZKelZ4OXVMRHhaVEF2NGxx?=
 =?utf-8?B?bjQ3ZHcrVS8yeVZQQ0hrT2xLTW5WV25SWWRvcWk3WHBwZG1LWmtyL1k2UFE5?=
 =?utf-8?B?WWlqMW00Z09kQ1l2WWNqMlN2dU1QT1d0YXFVNlAxbU5wYTNad2pSMjhiRk5P?=
 =?utf-8?Q?Vy6uXb?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?NWxZSUllUk1YOXM4RzV3Q2pQcURqMWx0UGpCdFlXNldEVXVpbXdTNHFMRCtV?=
 =?utf-8?B?eERiNXhwdnBXSWNvK0pIUjZJWWNpQ1IxUHNnN09nc3B1eUdnWUR0UFRwR2N0?=
 =?utf-8?B?UE5SOFdPUXh2OUtaeGswaUJjKzdqYndRQ2tTcy91NUJ0aDZDSjRNTVRrMVNQ?=
 =?utf-8?B?c2g4MXFhZkE3R3hzbzNib2hQMXlvK3RTTWNFeFo4bmQ5WVNVcXhHcUplNGtr?=
 =?utf-8?B?OXI1cnp2WVdpd2dyZThuZUtOZmYzTEdscS9kUEQ2R1lPa1YwTUxzNjdKQ0h3?=
 =?utf-8?B?VURTd0RsWm1tc1Qvem5ZS2JST3k1SFdzY3pWREFYVm9Ca1FOUWtqN3BtSGJX?=
 =?utf-8?B?VzA2TFBCb05Fbk1aajlKZEVXdHloMWFldyt4OSswU2xUc1Q0Mk53eERuQy9s?=
 =?utf-8?B?WTlvTkRyOFdQb1kzUnZad0lEUjdjVUcvT3ZUUW8wenRDVFF5TE8xUEJHclB3?=
 =?utf-8?B?WUJSd1FINDRwc0lWTE10UXAzOU8yaWwrclZvbmxUWWsvd09PZGsvMHZhMjhP?=
 =?utf-8?B?K2R4OHdYeTlDYm44emJjaVRXWDNKY0VzWktwdk1LUTdkS2NEMWJDWXBoTlhK?=
 =?utf-8?B?b1JidjJkT0M3bENSTk4xdHF2SFdyenJyOWt4MVdWQklvOS80SitIQ2V4QW5E?=
 =?utf-8?B?NXgxcVMrL1lFdzVtYUR3azNVWEhhUnhuZGx2NkhvcEZuWUZaTFRFNTU4clB5?=
 =?utf-8?B?bEMwYzRlOTQrTVhJdDVMc2N6dE02RHdsN0tTa2hwclNXYTUvVUhGRUl4cXZ4?=
 =?utf-8?B?bjRUUkREOFMra0Y5NUxxVzJnbWNBNm8vTTJlWExvSU5mOS9LRng0Ukc0dkFD?=
 =?utf-8?B?K21aY1FvVkEzRThLSmR1ZkRSVXhUbUlqb3ZSZXFPcGlMUkZOZjRRWjV1K1p0?=
 =?utf-8?B?ZFhBdkpyWitFcGk5NVZOTnVpNHYzT3ZvRE8vWUJvTE9DYUkrckNVMUNXT0Vy?=
 =?utf-8?B?NEhvbFVYelltdVVISXVoRjVkRGxvSU9tTzIxMlpzb2RhazNpVzdEbThKT0Uz?=
 =?utf-8?B?NUZuQkR5SEJNSnIzVXFkTVdjYUwvcC9nR3hzZ1JDZEJ6MjZ4RWtBdm52WHhu?=
 =?utf-8?B?WUhoSDU5Y3lyeW5KWlFwOUtMeVpqR3o0a2NUb1RaN09mdzB2YndTcGpvTlI3?=
 =?utf-8?B?aXg3bEl6TUJ0QWdxWXhVTjladjUyR0hjNDVYUUxZc0NKTVdYWW80cnFSM3BB?=
 =?utf-8?B?bEdINGd3Z1JRdTNYbTgvMjM0Tjl5WElxajVwWTM1WW1rbUlnQ1NRTDVwaFVs?=
 =?utf-8?B?bjJYTVZnOGE2OWx2ZzdNVW5aWkhUbHFNcXB6dkhRaGNYL3paMjh1d0xoSEJF?=
 =?utf-8?B?Q1UrL05IRlI3OFpwaFA5dDNsRjNDazNGd250UnhKSkl3aDdlSFZNb0g4K2pF?=
 =?utf-8?B?ZjVhd3ZYZFFzNkpXLzRuMllYenQra2xRU3NQS0V4blgyQ3Z5TERKSzBlVkRL?=
 =?utf-8?B?dHg2QlQ5YXNoSmUwVWE2T3Awc1lXb0MxZVBaL0dDREdtT0xtSHI5aDNLRDkz?=
 =?utf-8?B?YTlCVkpvd2dkeDdvS2ltakxUVm96a0srUGxMS0NZQzBhcGJzUmlZYndEanpr?=
 =?utf-8?B?RGJ6QXQ5SzdBTlBtR1dPYm5KblREYVVYckxRdVR3NzhCOFA0RkxPZEFiTjNs?=
 =?utf-8?B?TDVyY2tLSG0zY2hWeEZWSzhySVdmRGYzY1pDQTJxZk4vdU5qa0NxMGtoaUNU?=
 =?utf-8?B?RG1QRk5KQkxHUUhJZW82Mml3b0hRcDBnTWZacUpoeG83N3hUTlhldzZlOXBF?=
 =?utf-8?B?ZjhrRHNNbU5RblgwWGtSdlhJWjhQalVOWXExcWpmYXFWWU9NV0Uvem8xem93?=
 =?utf-8?B?clpKRE1QQi9vbHhyV3FycGFQOEY1V1FKOVlUWTI3VVlIcHJibFZ3RDg5ajVl?=
 =?utf-8?B?T2h5TzBHa1FPbkxWajJ5dnZZVVQ4bHZhWXA5aTlobDNpY2ozZEk2NjJlMUlE?=
 =?utf-8?B?SjY1SU5tQUovTzVSVkhEM21QZFRGbnlqWDMyczFKcEVoc2Y5ZWdDK3RIV2Uz?=
 =?utf-8?B?eEpmYlZ1dkl5aG83RW9zUElBcjZ6cmhSelNlajZZR3ZGbHNJZDkzNEZtZXZT?=
 =?utf-8?B?ZWNvUGVwM2dmZU1zVWRqenZ6eFEwVHBvVFcrajBIK3hoa3pwNGt5WlYvRE5X?=
 =?utf-8?B?UWVSREtGbEtNeWMvTGpPajFCbnA0eWdkc1IxWEFoMDlpd0lxenptQlNpV2xH?=
 =?utf-8?B?TTdDQm43cFZId1E0M0FLNjBQbG42R3JhbW1ZNi9GTW0yNlNGeUhWVXVKUlkw?=
 =?utf-8?B?Rkk2VVVCTmZrVGVEQ0p5dHJJOUl6R3Ixb3RRbjNQL2lVcVVmWnJjZ1Y3N2JD?=
 =?utf-8?B?ejRlTS9BcHRjRENyUUpIbHJJbTN0bFBsMlhYTXI3a2VBWGlIamk0eExOc2dS?=
 =?utf-8?Q?yJtzECryeTxXyhWU=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	Lb1CG/ttLs9ApFtsPINjx/uoX0KQynGMCtbKbpSC5NBr+XcBb/whBvxjbJirM2GvhdcLGWXPibKj7XBrNPlM4mKhhhh34PD+oN3mw8p9e6/tS5LwpwNXHhsONnE6+VlCpFVwzHZbxDGVVre9o9kKIZuAtw5MLcxJ4kxBu1JK8UomEx6ojXWXcrEmIEhrifwwUf5FpUGd+i6cBCdBKDhj78ym+w33G+PabDSNnXse0AxSnxAjFM7e6teW92Z6X+ZX/WZOKiEenlY/Fclzbh6taswwDSWb33/Diq7BKwX8pmCVzyldxvPw7n967XJhm9SvD0g1lgp4RNZqEbxuqg2frpXe4STLEK9Y/ftbinJqCas2GxneT5xjOmKtuEOTB/jW0FM2yNcaZvbBJs+dXntDrTnGCzQ7Ud1z+Hn2M3DdXSVoVPBu2YuvMV/ntkq3OO4khpTI9/xYN+RLMd3tqtJ2xl0Fd4CzA4qiVAKPJCIX/tzsPbo3K2C/JcIzUlcWzhQFSgu5Z93+/LqSTGSWF9+Al1Gt1/gMYxftNaGIhWXUjJ5GjxseOn7nMHR9s0fFPK7dQcPfBFtZpIcL+/+y1QV0qiycxMVyO/kjytP/LyvE158=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bcc478db-23a5-469d-dd31-08de68336562
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2026 23:31:48.8869
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NpyXbi+Jmn5fnEvCC2l+cgRxePyCF3j9tmVQp+QNf9Mt+sHsJa/SLqgi3i3Dsj5MPw0sgsjiQpHeajcx8MkT+8AJ0FRKbPbjXmoxVlypcoE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR10MB4934
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-09_01,2026-02-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 phishscore=0
 mlxlogscore=535 mlxscore=0 adultscore=0 bulkscore=0 malwarescore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2601150000 definitions=main-2602090199
X-Authority-Analysis: v=2.4 cv=YbOwJgRf c=1 sm=1 tr=0 ts=698a6e69 b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=nT8O84BRAAAA:8
 a=NEAV23lmAAAA:8 a=O8gRcj0eNRdNN0G2e6IA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=53tLj0NyNHrDU-DD7SnT:22 cc=ntf awl=host:13697
X-Proofpoint-ORIG-GUID: ApouLnzAOl6GUiMfw34hZB9DKp2ieLi1
X-Proofpoint-GUID: ApouLnzAOl6GUiMfw34hZB9DKp2ieLi1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDE5OSBTYWx0ZWRfX51ueFfavRC0N
 TtH2e0ObQTfxM/69n+NY2gt8VRNyivHiG5ML47Fljh0qocp/X+IeJ+jWtfqkkEjJJdh9TRMAlM2
 YLLIALg5ps9aB4YUfL8NIo3byjsm8XVfTkAHO9V3ZqZ7e/ItWpCTONizvetjB8cZyV1c/1DLwN4
 QBe/VcgxagHF+i0p6uYriFP41PGfBIvDMTZ58h/h7BmTV+QUwkd5epCimpiW9/cRDX19ZqXIT/R
 HLjsy4gcirwlqeRUspfgS80jMk+H2/wXT06QBaApniWstGHCSo8R+WYKgzjILcpPimQGc1YxLFM
 fYlZDNjIBCtGVySMutvd2cPNSpP5O+q4+IkrEbFh7KrUE/1fNvGC2gm4U2Lg56GQHEaP7MEBndM
 o6PGRFwWDzNYsE53GI3WDKUbBRQQQdHk05Wf48x+WJNsFwRiFPkejeKrUzu60R1zxjKyA86UAVf
 bV214nzsb4HkwcdSXphCoDMCIFr2YT1TVcIAsH/w=
Subject: [oss-security] FreeRDP fixes 12 CVEs in 3.22.0 release

https://www.freerdp.com/2026/01/28/3_22_0-release announced:
 > FreeRDP 3.22.0 has just been released and uploaded to
 >
 > https://pub.freerdp.com/releases/
 >
 > Major bugfix release:
 >
 >   * Complete overhaul of SDL client
 >   * Introduction of new WINPR_ATTR_NODISCARD macro wrapping compiler or
 >      C language version specific [[nodiscard]] attributes
 >   * Addition of WINPR_ATTR_NODISCARD to (some) public API functions so
 >     usage errors are producing warnings now
 >   * Add some more stringify functions for logging
 >   * We’ve received CVE reports, check
 >      https://github.com/FreeRDP/FreeRDP/security/advisories for more details!
 >       - @Keryer reported an issue affecting client and proxy:
 >             CVE-2026-23948
 >       - @ehdgks0627 did some more fuzzying and found quite a number of client
 >         side bugs.
 >             CVE-2026-24682
 >             CVE-2026-24683
 >             CVE-2026-24676
 >             CVE-2026-24677
 >             CVE-2026-24678
 >             CVE-2026-24684
 >             CVE-2026-24679
 >             CVE-2026-24681
 >             CVE-2026-24675
 >             CVE-2026-24491
 >             CVE-2026-24680

More details on each of these are available at:

- CVE-2026-23948 NULL Pointer Dereference in `rdp_write_logon_info_v2()`
   https://github.com/FreeRDP/FreeRDP/security/advisories/GHSA-6f3c-qvqq-2px5

- CVE-2026-24682 Heap-buffer-overflow in audio_formats_free
   https://github.com/FreeRDP/FreeRDP/security/advisories/GHSA-vcw2-pqgw-mx6g

- CVE-2026-24683 Heap-use-after-free in ainput_send_input_event
   https://github.com/FreeRDP/FreeRDP/security/advisories/GHSA-45pf-68pj-fg8q

- CVE-2026-24676 Heap-use-after-free in audio_format_compatible
   https://github.com/FreeRDP/FreeRDP/security/advisories/GHSA-qh5p-frq4-pgxj

- CVE-2026-24677 Heap-buffer-overflow in ecam_encoder_compress_h264
   https://github.com/FreeRDP/FreeRDP/security/advisories/GHSA-xw37-j744-f8v7

- CVE-2026-24678 Heap-use-after-free in cam_v4l_stream_capture_thread
   https://github.com/FreeRDP/FreeRDP/security/advisories/GHSA-6gvg-29wx-6v7h

- CVE-2026-24684 Heap-use-after-free in play_thread
   https://github.com/FreeRDP/FreeRDP/security/advisories/GHSA-vcgv-xgjp-h83q

- CVE-2026-24679 Heap-buffer-overflow in urb_select_interface
   https://github.com/FreeRDP/FreeRDP/security/advisories/GHSA-2jp4-67x6-gv7x

- CVE-2026-24681 Heap-use-after-free in urb_bulk_transfer_cb
   https://github.com/FreeRDP/FreeRDP/security/advisories/GHSA-ccvv-hg2w-6x9j

- CVE-2026-24675 Heap-use-after-free in urb_select_interface
   https://github.com/FreeRDP/FreeRDP/security/advisories/GHSA-x9jr-99h2-g7mj

- CVE-2026-24491 Heap-use-after-free in video_timer
   https://github.com/FreeRDP/FreeRDP/security/advisories/GHSA-4x6j-w49r-869g

- CVE-2026-24680 Heap-use-after-free in update_pointer_new(SDL)
   https://github.com/FreeRDP/FreeRDP/security/advisories/GHSA-j893-9wg8-33rc
