Received: (qmail 15568 invoked by uid 550); 22 May 2026 16:44:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15523 invoked from network); 22 May 2026 16:44:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=UcC/ijdqVqAJPFXY5AHG1zg0qtJecS70SF7ADjFwQJo=; b=
	hXjMlerBUUwXfQfDx1ww1YojD4PWciXvRMdxB+64sBQPs8FFk14HTc3kN5cthHCh
	2DHik/IB8DYXZKTWJ990TKgLJWwvAKtd0zJtt7x79jc3yn9lV/3VzwvLbJdah1V7
	xMvnmJJAUGDHgSk3vY2PdV83m4onoIeo3xP8SxlyroPnAqKnetvd0a3dmzADl652
	m1KGyOX1AEvbkHDDX3FCqt9/OCWLk57y8HjLQXIxCg9gB00mmywV3KWUKP1/v7P2
	nOE8Ol0jVY5wPEDIoeBWxlEVTgZOS/NLM6nC/sniRkXGQkZIN4Mh1GPRMd+TAeHN
	0BNhfx9GJv6ZsWeO/bfdTw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JTXZoHoNnRByQ0y6nnxa3DHJ/nyODW7B67TeBk0qeS4pnQeyfmIkZVXVWZc3MJj8CR8+1pdz2OM45czD1pZwPME4yJhmHYJD8Oqnx+Svh40knBiTD9u3H7Bw1a0HoZfcknet6ncsKcTDOyaizqCguJxETE0M95Z6iCiqHCcGc/KShlUT1lE3rMmPRu7oam4dN/u5fU9T6RsF5xtq5tzqDBwlxYkSJYj2pC622nmnY71nUXfB1yDtQtjKyO0Kw/AHn3F3t5M4yE8Aqq0Xz8xUHcxGGeS/q5EB5M3WWScmJwmLiAVzD2ubpu4aG03YJD7OLjqjEuNnYQerMR8I4QB5WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UcC/ijdqVqAJPFXY5AHG1zg0qtJecS70SF7ADjFwQJo=;
 b=hv8qkdX5J5nSPD/mVL5xFMDMlctPVhHz/bokdYINpMd1kUCRRsEc6MaR/QZWs4w6mbzlou96tZ64/C4Ze0/wY6dxfHHrhJiVK3z5upuDVStSEN7Bv3SW6DpyDw83ZkFVVinUsQezmWNEidOJy5k9wT0TCiUGZNCNjPX8nohSt1flov1XCdSEwJ1M2SxnnUm64GAiFlXw+4UYPc2mRl34nIZ7vyKK0L/yB5c5zcQjZEqQJr2umKB9DLxgZ7fGqx9REpG4ps8BYJ0XCzZ8Ju8OyyTYvumVon0A6pLrglhRV9IDVqeD3+wDt7H2mVL9EaqXVyvZUXiqNl8U/Xjaq5Rzrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UcC/ijdqVqAJPFXY5AHG1zg0qtJecS70SF7ADjFwQJo=;
 b=QIPQ7tNMaYeKKWUjcvhXaoP8doNFPJDFDk7vAFCi2++G+xFBJ7IAMvZppd+yV+qbKrS/7Yr07FLYsr6V059cs3oTIfiSKivHYbBYnZORHIMUqh5wbgVMPwqgeMVEa/uCDgyMSrad/i6OaLBAue7E02z4YC/dtrT09wx6R/P1zSI=
Message-ID: <769810cc-91ac-44c5-ac38-1273b14ae6f8@oracle.com>
Date: Fri, 22 May 2026 09:43:34 -0700
User-Agent: Mozilla Thunderbird
References: <8d2d8d40-b3ff-4bbd-83fa-ed2d5641f87cn@googlegroups.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <8d2d8d40-b3ff-4bbd-83fa-ed2d5641f87cn@googlegroups.com>
X-Forwarded-Message-Id: <8d2d8d40-b3ff-4bbd-83fa-ed2d5641f87cn@googlegroups.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH7P220CA0040.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:510:32b::24) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|BL3PR10MB6236:EE_
X-MS-Office365-Filtering-Correlation-Id: c514c114-4434-4f99-520f-08deb8214516
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|376014|1800799024|6133799003|3023799007|5023799004|18002099003|56012099003|22082099003|13003099007;
X-Microsoft-Antispam-Message-Info:
	niv65qfFTNCZQW8m/ogTBlZhp/JttVt9KgUsXSeHWlaWE3VsUu9QnTkgl7RgUCzaf86fu3PXDpQAEVd8HsHZ/YyeI6mVI7wGJoflNhRQnJdlGe8tKOogc8G5fa86A2Zjz/qKAQeUAJLiGal+CAtivpibiwHhA7p3PHB9OxmseL9Z8FW9FVgjIHOybgfgf0HFs4Y46xdfij0y0mWG0bwZQHazkL+lQSnSxP2ocNLGp3Tw6xNuag3VkvDMEMaeVy1kDfM/rj5qp2G7yzCx9aTdsvqzP0/H4REnjpTnxSmM6wVhB9RNdQWdGIJVWw+mvcv3/8amkuDsn0OVIwAe4IpF1cJWffP14c2yuamKpcrf277GklXq8R7K97V8o/f45aJ42d5NW/bsh0nCQjysCxkjmO+ySqFIBobwrp1ntms+OprUMt2n5IXvvN06KgUoQDGzah3MEnrxREZBcSpbfggDltHI1XyGPbmnzmlVVkC92T74kGuZhuC5eGLcVClIa794rtqJI75//+8kNIzV86IwfskTQ73k+t9j892kijCGrBq/7PHZau32GnoYfmFIfC+2P15643L5vMVLDLNpyQfDOjPp/MvRG1CHqCYyRjhQMbhxuuyoZ5DOaGy9/NXnfGhHrw2Sa02fufymEd5FUl+m2Q==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(6133799003)(3023799007)(5023799004)(18002099003)(56012099003)(22082099003)(13003099007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?SjlWekpuaTV6L0laSHNCRTNQN2M2T082d3dEcWg2ZE5zRmc3YUZ2SEUyNWdH?=
 =?utf-8?B?QWRxMXcrNUJrYjVUTFkwU2ZiU0hScXdHSlZFN1RHdXFOdDUvN0RqazZneTlr?=
 =?utf-8?B?a282TDdIWm4yVDYwQkNJYUNlODJpQmNIVTVJMjRpSXFZckFmcUttL2N5ZGlm?=
 =?utf-8?B?THB5aXI4cXRpYUZ1M1N6aVNFbUtBUERHTTNFclFheTM3OWpPaUdZaWZmbFZY?=
 =?utf-8?B?WHFINlFVSUI5ZkVHcDFpY2UxZjhiS0pSK2QvelFETEc1Nkg1VStXbGhMN2xv?=
 =?utf-8?B?K2VZaEJNK2YzSTFBYlVCUko5TWFuaTZRdnl0TXQ5U3g1bWMwV2taeUNmaW5D?=
 =?utf-8?B?MHdvRkloM3NtaXZ1TjJ3NXJpUlFTalFDOXN3Rk40L1YxQUFqTVdPVzhSUWwy?=
 =?utf-8?B?YktoWXIwYVdpQjYvMndaYlFkYnllZFhBaEN6T3ZmZjBRQkNxUlhJVlowNitR?=
 =?utf-8?B?RHNRK0NFb05TSzJScE1zVDFWbGhUMkJvZXNzMEczWkU2TWF3d0pIRkYzU3dx?=
 =?utf-8?B?ZEphc3J5MEpQV3ZGUHZGSkxxMkVvb0pnRTN0a3RrREpKVDRzZUJObU5GTFYr?=
 =?utf-8?B?N2J4Y2p6b1ZwaVIzZExBM1YxZCtOazE4bUhmRitCVCsxaEZ1K01GcW5rVXVI?=
 =?utf-8?B?eW9SZEw1TENESmNYSklyQXduWDRFVThSdVZCRjZXaUV1ZU5tdHlVbnBtVWls?=
 =?utf-8?B?L0VOR1UvRGpqbkt2OE91TnpuOWtFbUZVTllkZ2F3NGEvclBYdG5ESllPSFNS?=
 =?utf-8?B?VDQ4VzlYUUZhY1ZkOE1HRy84R1N3WVJRckM3MDAza0lYSEJDQk9kSUI3UGQ1?=
 =?utf-8?B?NS9FNGFvL29ZY0xHNzN3WTNWQVBMZ0g4VFVvZzdzRTBpRTVrdVFwVHdVSVg1?=
 =?utf-8?B?d29QNzhqV0FaMjg4dWZ3NjJYRlhsYkE5V0p2eXV4ZDRwS1B0ZW5xMGJmT2xm?=
 =?utf-8?B?M0V4NkRwUUdBKzQ2a1hLQi9La2p3OXo2d2JYRGlrMWFtZStpbGdSOFV2bkFQ?=
 =?utf-8?B?NVBTNC9Lci9YQ3RpazE4YWpqY0FKNTNoNTI4SXhTaUVLMlk1eEMyUENraCt4?=
 =?utf-8?B?YURtTGV0bW0rOWg1SlRod01mSEZWQ1B6UzR6Zm4zZVZDVTkvZDlTR2FkbC9K?=
 =?utf-8?B?cHRmMFQrdjVRa0FHV0NrWThNMUVFcStKR1k2MktNZHZhNnNJMjJWczJyck1C?=
 =?utf-8?B?bEdqM0liTWk4c0tlNVRWOWtGL0VPRkR1WGFWdWw4ekRwUE43YXI3V25Db0pK?=
 =?utf-8?B?dzRPdEZHcGZkUnc3ejZJNFl2aVNSQ1ZPZnh1cTRpMDVrZWx1OW8rRUxmRS9y?=
 =?utf-8?B?T1lNRUhsSlk5RzBLZm9CKzdaemczYW1TSnpHaVhhc1p0Z24xZmJ4dTh3V3Rv?=
 =?utf-8?B?blZ1RVFlektNQThlUFJuVmNQQUFlNjdCYzJJQkl3akNwQVNCUk1GVkxzclhn?=
 =?utf-8?B?UGRaQ09MNVZtb0RTdkFKalQxOStpUFc4WG5tZG03anM4cXQ5aFlsTVVuODNY?=
 =?utf-8?B?RHFtUS8xc0FkYUVISlUvSHNkWUdXazR0aldTK3J5YitvaXBqU0xvaXQzNkY4?=
 =?utf-8?B?RnpOV29mVkpmR29BR0NiRkRabmUrSjIrYnNWTjJMRmFMSGFCMFdkaWJPTTB6?=
 =?utf-8?B?Wk1ZcFBaR1VISUliY1JmaXJHRURHeDlkN2l0SkNrU25HRlFuZXpTQmcvOVdG?=
 =?utf-8?B?dnJPUTNWY1B3THRKK2JQczR3eHNicTdYQktIdVdKZk5nUFEwNDJ6c0tObzN4?=
 =?utf-8?B?aVlhblpVMi92S1ZlWjBybTZWUUxncmhYby80VWdqZEt3dUc1bXVjR1BnRzRZ?=
 =?utf-8?B?eG9jbUYwWFZTOGFtWjc1SSszNThKbGhtYjVha2ZiY0NmL2VVVThyeWk2QU95?=
 =?utf-8?B?azhvS21GQmp4WnZQNisvQnBIM2p2ME1mYUcra2N1ZGtIYzF1MWFyRG5FR3ZM?=
 =?utf-8?B?dC9iTmExZjlIMG05VlBCSG10RitQVDRuR0ZMKzhQMlhtM3hBZEloOE5iVTBY?=
 =?utf-8?B?QVhEcVFqOVZOUzVUR0N5d1RxdUNpbWtjQ1hyVHZrMXRGcFFZcjhHeHhmUU5o?=
 =?utf-8?B?eC93ckxzRU9UVDdCOVlFdDBjek8xNDhucFdSRTBLeFVvQlcxSlNRQkNlMjFG?=
 =?utf-8?B?SytYZDNWd1JXdGNRaEhOc05LeFQxM3diVWlZSjluaHcxaUdnRHJTTUdELzVE?=
 =?utf-8?B?b0FNNFFKUU96bjQrdzVSWmI4c1lRaVpNbFNzaWNkNkE1Y2QrMis0K1IxREtm?=
 =?utf-8?B?bEFPbEVOZ3psb2ZPaFMzc1h5TVBpVURweWdHczhMMzFoRlZ6STZGU0hZZm5L?=
 =?utf-8?B?ODNwZXJNR0FzV21tQVZsTGtlWWRYT3N3RUpNekVQbytIaklGWVVWVm1ubVJn?=
 =?utf-8?Q?oYJTGqoyfZg11OOw=3D?=
X-Exchange-RoutingPolicyChecked:
	cVxzyyOUEEROTEAuXCjZX3FPUv3ReJsZx5ciY4W5/wVK68UZZvSTKlav8fDywXbp7RMxRv7l3+ic/5I3GS14BD3BFhPyjuSb+C1cpnK3V33CA3WYalNLDxWcG5kK1Er+/d97Fma05DOQZ8NZQ1DGrzjRdq0SPyqJbIRJ4LURYZ4K/KAhXsAi06DZbvU1PSaxe+Te7crupL/DmhYmRuFwvQ31uAAHicwF1dNr/bgfEOOBOW5zE1w/3+gDjeAGHUEwqPPFLA5UNqeXm4zHHVTkZFWd2zE4WCMc5P2iidXU7DTbc9GEgSsFHuzNuojg9l3ve5uTAEV2qoPhUL3hFQNC2A==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	y7kLDHJiAkff64AHiui9X7ryeZc2n8leXY/SBetOAVcc65bkx5OFfRxTwD4KwkoTL9mXh0uvZFyj9h5upZoqKhEJdHhbc4UgM7hCrbgisklV3eL3aZs7BV0HWgy9SKWWv/bfDARQiOmKiDLARPxSsE2W1P1kIOAxEWx+eob2IjyB6S1DuFSAXSxO5VhWguCdCi/Jk7FefCl3SNwy1ifNk1WOnzjnCDkylHcWoqIQpUIQUfZP/4D47SSwKfBJpU4tgeEDKawUka4VFvF884WXILmI3rp+CBjSHxdtNBIINwHcmfX4QpJPMuJ5MkRycw9K8qUv63tWTe2+rxp5Qf76TL9alj3A8P6LYT01c4zc7KUS54qCC1ck9gxe4XplFvsWIMOKyMSRBKZmjAy1BQJicJrjx7FMeYg5PbcOPEPE/rcOnB6bC0/z8Lt+TnBZNAQf9P0hcQrUL6NE70Y4HBdRI9quinmalyBt4NmGuiB0iwR0roGuY2/7XOqw+wbBlBzrjf1h3xlElngXo4mMzrLaVD8c5wCmkPvk0y9aaKMfGohzgJPhdiiCmOJiYA8GaMcDe1ykvYbpMjSpUWDHlOlAHX1rRjPEoKHJEnZ54TpaHXc=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c514c114-4434-4f99-520f-08deb8214516
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2026 16:43:36.7544
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zLSHiJxZqmM15g8DekAkZkrwGK3HHWp6VXl74W4Nx1Z3TKTlcHLktVeIprq2FBJsUi+LHsbh0OpPe0Xqm6LkwzHjHauNny256ZZTsV/h4n8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR10MB6236
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-22_04,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 spamscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0
 mlxscore=0 mlxlogscore=999 malwarescore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2605130000 definitions=main-2605220166
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIyMDE2NyBTYWx0ZWRfX6f9i92mVmJK/
 CQ3n39+jPsOlNXN/dAMDi3+xZTZnzekW6xsnV2xlSh2uFzwndL+8E9iNTsZxyPMYSRitoAM3N/h
 kLoue+X8U9g19uYaSY91z8iI/5uKG0WQMEEWStjxW8BvtuDXMwMb7Ff7VATHIRONH0ez++wOXEv
 y3i27QBEDPRg99cbZCHxI3OLpx0PblLXeCrioTe1ElbbE68ZDYFNJaFrZujNK/1TYBHQFBwMi86
 qL9GoJBJykT8rp6vGI39h/O3FkxSkZZIfuh5vLAkc8vhhBiMwbWE6cLuVh/mVPbL7iOd0Y6dQG7
 3r3IVFlDozQIi16j6jWWoLib+N2RaL4GDp8JSbVhnQurQt31zsINRnMxIbw8yr21cfFqW4wHLvn
 f20lAY6FHK7Ky4rM09g38porVX+xIG/FXyq0NUkXMKJz+AZt17mhiAWaFXP0cgyz2gDGzkPpEeT
 djtXb2HiYoFLBT3Lh3lP6qG2H0+w4A871in5bMFk=
X-Proofpoint-GUID: Si2XaKCFQqVpPiEuJTVYZhn6nMCQM9ga
X-Proofpoint-ORIG-GUID: Si2XaKCFQqVpPiEuJTVYZhn6nMCQM9ga
X-Authority-Analysis: v=2.4 cv=TLN1jVla c=1 sm=1 tr=0 ts=6a1087d0 b=1 cx=c_pps
 a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17 a=pM9yUfARAAAA:8
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=x0eKOSpe3m1H3M0S9YoZ:22 a=plf8rDjJAAAA:8
 a=7GPU_rULAAAA:20 a=4RBUngkUAAAA:8 a=HU1OPnRnAAAA:8 a=UyzD3OnuFunnGBoHSHwA:9
 a=QEXdDO2ut3YA:10 a=YH-7kEGJnRg4CV3apUU-:22 a=JWTSs7K9Rhv-lrTctFka:22
 a=_sbA2Q-Kp09kWB8D3iXc:22 a=vQ5cN67eHy2kcvnFvKcb:22 a=5yU3S35YU4bGjq-dph-N:22
 a=Bho9c0fBagfJEIQBS7DQ:22 cc=ntf awl=host:12301
Subject: [oss-security] Vulnerabilities in golang.org/x/crypto




-------- Forwarded Message --------
Subject: 	[security] Vulnerabilities in golang.org/x/crypto
Date: 	Thu, 21 May 2026 17:56:27 -0700 (PDT)
From: 	Neal Patel <neal@golang.org>
To: 	golang-announce <golang-announce@googlegroups.com>



Ahoy gophers,

We have tagged version v0.52.0 of golang.org/x/crypto in
order to address the following security issues:

ssh/agent: pathological inputs can lead to client panic

For certain crafted inputs, a `ed25519.PrivateKey` was
created by casting malformed wire bytes, leading to a
panic when used.

Thanks to NCC Group Cryptography Services, sponsored by Teleport for reporting this issue.

This is CVE-2026-46598 and Go issue https://go.dev/issue/79596.


ssh: byte arithmetic causes underflow and panic

An incorrectly placed cast from bytes to int
allowed for server-side panic in the AES-GCM
packet decoder for well-crafted inputs.

Thanks to Maciej Kawka for reporting this issue.

This is CVE-2026-46597 and Go issue https://go.dev/issue/79561.


ssh: bypass of certificate restrictions

When an SSH server authentication callback returned
PartialSuccessError with non-nil Permissions, those
permissions were silently discarded, potentially
dropping certificate restrictions such as force-command
after a second factor succeeded. Returning non-nil
Permissions with PartialSuccessError now results in a
connection error.

Thanks to NCC Group Cryptography Services, sponsored by Teleport for reporting this issue.

This is CVE-2026-39828 and Go issue https://go.dev/issue/79562.


ssh: server panic during CheckHostKey/Authenticate

SSH servers which use CertChecker as a public key
callback without setting IsUserAuthority or
IsHostAuthority could be caused to panic by a
client presenting a certificate. CertChecker now
returns an error instead of panicking when these
callbacks are nil.

Thanks to NCC Group Cryptography Services, sponsored by Teleport for reporting this issue.

This is CVE-2026-39835 and Go issue https://go.dev/issue/79563.


ssh/agent: key constraints not enforced

The in-memory keyring returned by NewKeyring() silently
accepted keys with the ConfirmBeforeUse constraint but
never enforced it. The key would sign without any
confirmation prompt, with no indication to the caller
that the constraint was not in effect. NewKeyring()
now returns an error when unsupported constraints are
requested.

Thanks to NCC Group Cryptography Services, sponsored by Teleport for reporting this issue.

This is CVE-2026-39833 and Go issue https://go.dev/issue/79436.


ssh/agent: agent constraints dropped when forwarding keys

When adding a key to a remote agent constraint extensions
such as restrict-destination-v00@openssh.com were not
serialized in the request. Destination restrictions were
silently stripped when forwarding keys, allowing unrestricted
use of the key on the remote host. The client now serializes
all constraint extensions. Additionally, the in-memory keyring
returned by NewKeyring() now rejects keys with unsupported
constraint extensions instead of silently ignoring them.

Thanks to NCC Group Cryptography Services, sponsored by Teleport for reporting this issue.

This is CVE-2026-39832 and Go issue https://go.dev/issue/79435.


ssh: memory leak when rejecting channels can lead to DoS

An authenticated SSH client that repeatedly opened channels which
were rejected by the server caused unbounded memory growth, eventually
crashing the server process and affecting all connected users. Rejected
channels are now properly removed from the connection's internal state
and released for garbage collection.

Thanks to Ziyan Zhou for reporting this issue.

This is CVE-2026-39827 and Go issue https://go.dev/issue/35127.


ssh: client can cause server deadlock on unexpected responses

A malicious SSH peer could send unsolicited global request
responses to fill an internal buffer, blocking the connection's
read loop. The blocked goroutine could not be released by calling
Close(), resulting in a resource leak per connection. Unsolicited
global responses are now discarded.

Thanks to NCC Group Cryptography Services, sponsored by Teleport for reporting this issue.

This is CVE-2026-39830 and Go issue https://go.dev/issue/79564.


ssh: pathological RSA/DSA parameters may cause DoS

The RSA and DSA public key parsers did not enforce size
limits on key parameters. A crafted public key with an
excessively large modulus or DSA parameter could cause
several minutes of CPU consumption during signature
verification. This could be triggered by unauthenticated
clients during public key authentication. RSA moduli are
now limited to 8192 bits, and DSA parameters are validated
per FIPS 186-2.

Thanks to NCC Group Cryptography Services, sponsored by Teleport for reporting this issue.

This is CVE-2026-39829 and Go issue https://go.dev/issue/79565.


ssh: bypass of FIDO/U2F security keys physical interaction

The Verify() method for FIDO/U2F security key types
(sk-ecdsa-sha2-nistp256@openssh.com, sk-ssh-ed25519@openssh.com)
did not check the User Presence flag. Signatures generated
without physical touch were accepted, allowing unattended use of
a hardware security key. To restore the previous behavior, return
a "no-touch-required" extension in Permissions.Extensions from
PublicKeyCallback.

Thanks to NCC Group Cryptography Services, sponsored by Teleport for reporting this issue.

This is CVE-2026-39831 and Go issue https://go.dev/issue/79566.


ssh: infinite loop on large channel writes

When writing data larger than 4GB in a single Write
call on an SSH channel, an integer overflow in the
internal payload size calculation caused the write
loop to spin indefinitely, sending empty packets
without making progress. The size comparison now
uses int64 to prevent truncation.

Thanks to NCC Group Cryptography Services, sponsored by Teleport for reporting this issue.

This is CVE-2026-39834 and Go issue https://go.dev/issue/79567.


ssh/knownhosts: auth bypass via unenforced @revoked status

Previously, a revoked `SignatureKey` belonging to a CA
was not correctly checked for revocation. Now, both the
`key` and `key.SignatureKey` are checked for @revoked.

This is CVE-2026-42508 and Go issue https://go.dev/issue/79568.


ssh: VerifiedPublicKeyCallback permissions skip enforcement

Previously, CVE-2024-45337 fixed an authorization bypass
for misused ssh server configurations; if any other type
of callback is passed other than public key, then the
source-address validation would be skipped.

This is CVE-2026-46595 and Go issue https://go.dev/issue/79570.


Cheers,
Go Security Team

-- 
You received this message because you are subscribed to the Google Groups "golang-announce" group.
To view this discussion visit
https://groups.google.com/d/msgid/golang-announce/8d2d8d40-b3ff-4bbd-83fa-ed2d5641f87cn%40googlegroups.com
