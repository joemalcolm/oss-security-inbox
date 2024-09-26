Received: (qmail 32434 invoked by uid 550); 26 Sep 2024 22:43:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32381 invoked from network); 26 Sep 2024 22:43:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	message-id:date:subject:to:cc:references:from:in-reply-to
	:content-type:content-transfer-encoding:mime-version; s=
	corp-2023-11-20; bh=HPb/M4wKq+TLyr/AHagiY9VvuLYUXeKyfld4me63Chw=; b=
	KL8xnx684OZh25sueBke1Rzy74GP9wYiqQuGooJVpS+JYybGQwPkS9a4TsrEPbw8
	dJXk/2pAFJFe/OAPJ970N4NRQ3NmJzUovH4yrKzBhvb5WwwUrFhBxn2iz+z52m1o
	2p/Db5bRxX+ZeZIjQ6UMsxM+kkbAVtylFRj6wXs8EoguEZGas/ynpn98QqNX807s
	4vvdi11E9284As3BJLSM8rSAUnzSEicw3bMYpvH+18dKDlT1oB1s+2IwrUN97zSN
	+Meg7OttR+K2Kpbg+J3H0Nhkfc01To/wlCcIe8pzR6IhBY0LyyYxcmlXRhzvhP3D
	k4SDRZYPwNFTHCYp3vPNzw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fNNKr601AVawRAmiuLH6UxrPGWSo0KzFT39iybXkdn96RAjH500LD5bvxYrQtEtmPjhteN7iP3wvspUWirztk1WvHRsd4g0EF4eZvxShNf9MtG7XXzW/Iz1lsSCHDD8CkL4IY1xS2Uj8bclQBh32MsWgXhvxfCbHL7RJYmXZrcx953Bu+9FIk2GR41cgp/fZ4woXkMC78LYEvWq4x7x1oahSBYGxVts81achO6u9KxqkHMbTyDYCT5rVJ2VUyO2Si944J7UJz2S8n+M8MVndCwlCEfBchDF7VURAK7ZZt+CQbLeBKgOenBpKqOcMP/dX4VB8v5YmwVhActAe/lzqTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HPb/M4wKq+TLyr/AHagiY9VvuLYUXeKyfld4me63Chw=;
 b=blJE5EyBIl2ls9875lKIWl7rOUUvzKAp0KjmjUon1XSgaw/HqJb5E0KdvPqK6VMgUzEktiB4J3SN+hyRPwReu9mRvm/TgNggjl/VpKkxpVsvUCHwY9Fiu7P5wpzWqTQDU1itmw++w0/X+pdb6M9nVF7qt8TUn9h8J9R0OwE/19FW1pNTq1uLBfzGecB66vy5nHLQa2UHWDCnqlxvlP4QRwEUN0uDlw+yX9PB+f9Xm1uZhLl1JJRCivFHajUGkELe/vCBvJP/rRfjZdtapGtIj19d/DoR7xVPVbW7HagY5RLw1LP2hmQe0Q+pVUaGqskZQnjUElYdr7Z4AJxyEP/OUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HPb/M4wKq+TLyr/AHagiY9VvuLYUXeKyfld4me63Chw=;
 b=zXxOCZLn710AE3lggy04TLsLfmNmgH8rVN6+GqpP7VzfKCtcFzNUeJkiu6i/4KhYhThEj1rd5OoK/skymiAzj6tjtFgm8aJVSUpWV+4/T8m4M+t8Lk5m/rSHhyqYwkEEr3lQhw0ui2sZ/BaF4EiWu9ufEYgDS0xwONWPeBlf6vI=
Message-ID: <5bf73ba2-d643-40a0-9397-65a2e56dd436@oracle.com>
Date: Thu, 26 Sep 2024 15:43:23 -0700
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Solar Designer <solar@openwall.com>
Cc: Simone Margaritelli <evilsocket@gmail.com>
References: <20240926221125.GA10895@openwall.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
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
In-Reply-To: <20240926221125.GA10895@openwall.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0368.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::13) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|DM4PR10MB5989:EE_
X-MS-Office365-Filtering-Correlation-Id: 49858ee0-05ec-4bee-8203-08dcde7ca2ae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?M21CWjc5bUJqVXI5VVBUNVFQaGRqQkdHRjZ0d1pvK1dhbkhrSkpUMXpiTWRP?=
 =?utf-8?B?T0lkNllWTmpOaS9KOVg3THQ2bHRLVDR1c3RpbWxiODJMaEVUdXYxWmowbkpo?=
 =?utf-8?B?WU5IWkRHcGxjMmxWN0laSkxZMXB6aHNGa2xOc3QwVzhTZFlZdGlCR1NCYkZO?=
 =?utf-8?B?ZnBpbXJqU1NBQUg4WHJFWWRpVGJ5ZUZCekxOZWQrUi9icnJjeWZTcDZNTTdG?=
 =?utf-8?B?SlJHR01Mb0s5bkRDNStiZjJDc2FNVlpUSVVvVGtoU2owc0VVNEFCck9odUlO?=
 =?utf-8?B?UGg5SUVPbHVxZUdDMklrUEl3S1pmNUlqNk45SVBrTE5LMm1LSDNDZm1CZ3Vu?=
 =?utf-8?B?WWJKZjRkMkczeFpodUtEUEJrZGUwSFFQVG9ITFRYMnZoemcxZVJwSmdZcWIr?=
 =?utf-8?B?LzVOUStTR1BOYVZFYjM3OU5kV0pNN0FwL1ZzT25ocktzZW00Rm0wQTUzemFX?=
 =?utf-8?B?NWw5Z3JFRmlDeEdlL0c2NE9RNmFDZmpXTjhGemtuQ1NtZHhMNVliQTgrWGtZ?=
 =?utf-8?B?Y0tJM1FjalkwTCtWS21GSWNyYy9iajlsOWJCZHhIR1Vja0lpcFU4alpjSnM5?=
 =?utf-8?B?ZHRWMkxDS0xWcXlaK01qMUNOeHZ6V0ZZeERvS1VJRWJWWGszNmNMeWdRWEZD?=
 =?utf-8?B?eXd5VWM2SmxHSHkvVm5HUGk5SGo5NHJ6V1FxeVRzeFc4SUk0Tmc1S1lodUZK?=
 =?utf-8?B?S2dvNXpUaCtQTUlWcDhpamh1SWlpK0FWR1pzQjc2UlB4Y25XNHEveTZiRTlC?=
 =?utf-8?B?dSt4OHoxRXFqTDh2QlJ4T1E2OWFxN0VoeUoxRU40SWZ2UXhoQ0haN3ZpWjNM?=
 =?utf-8?B?TXZTWXl6RTBmMzIwSDJRZjFaSFJvOVRENXpqUDdoZ3JxNW04SVpLdWVjNllj?=
 =?utf-8?B?QUEwSG93ZEFpNXlXTkFQZ0ZVcFErQ0Jzb0tRQ3hMYkpwWFJEZkpRVUtTL2Vw?=
 =?utf-8?B?RGVDVnFwMUNCTU1ISENTSnRFYU5oaEJHbVBMRUZwZDI1eC9jYkpMT0MwZHJT?=
 =?utf-8?B?ZGJGY3JyREFEV3crRUpRS3d5cjM5VSttRStnTUFURjBQVytZZG1MN0hyYjlm?=
 =?utf-8?B?RVUrL0xYMDdUYlVTa0Q4cnBqOVJVS3dUcFl4Tnl6RmZtTnA2Y1I1VklqTXFG?=
 =?utf-8?B?Ull0SU5ReXErdHI0Qm5KMmVseW1Dc0lLWnI5UkpQQ1NxWGlyNVAxdGhGcVZU?=
 =?utf-8?B?eEE4OE0rbWFWQkF4bkR1dExkYlNKN3Fxc0RsT1h1Q2t4aXNvMWRwRDlGV2Vw?=
 =?utf-8?B?cTlyckdabE5TVjBWdzVqQ3JkMlFzNk13Q3Y2c0JKSVdyenVES0syUmI4Nkkx?=
 =?utf-8?B?UkNrRUlWMzJPVFlyTzJVSTZZb0twQWRuZFJYZkpLQjFqSnkwM3pJeGh6R2hX?=
 =?utf-8?B?RlNrV2NmNjM0bERUUENVVkNVSkhQR2kyUTRNRUhtZFNsSk8yTC8xYXpZNW5H?=
 =?utf-8?B?cW41K01wU2lRNE5lb2oyV3V5RXlXUWtpbDFmUDRhUGpOQUhqeVNTYXNrb1l1?=
 =?utf-8?B?MDI0eWR6MmlNN3pYZDNNcUNLUTkvV3BNL0h4d1RTYTgrWW1CeVRHaTNFTkxs?=
 =?utf-8?B?VnhyRlBLOXVGMWowcE8ybzBIYXU4M2xURmhFWGZ6UTlwWlloVk9jK3dOZXdO?=
 =?utf-8?B?L0xQcUZobUNYcVRzKzhaQ0QvUU5FUWR4aVVOWHh4MEJZL3V5Q2xJRzhKME5O?=
 =?utf-8?B?NERUYkhSZElKMGQyLzRFbnIvTGJUdDFsQmVKRDBuK1JVNnAxckxmWmQwclJi?=
 =?utf-8?Q?0U1B1peAE9dplBUewc=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?TXpweUVjOFRmQkRlLzlXb2ZNb0U2SWtUNGZOSHlDYVk5RXJodFVFUEhabzlh?=
 =?utf-8?B?all2SHJaK012dk81dnFGeUhwSVF3a3pobkQrL2YvSGtRbFI3dGJxMzlwYXZz?=
 =?utf-8?B?S3RFLzVpZS9nUUhXeDUrbjJMNGZ2WXBJdHNGRGJsTXJDcjhvVVVKb3hGdzM1?=
 =?utf-8?B?MGpxUnRCSnRHcFRmaUtBN01xbm5NUjlDM1N6dDZlUjFhRVo3eURnM0MySGZS?=
 =?utf-8?B?elp5dkFvdGNta0ZOUElwU3R5TXpVbGtUQ21KNU1xaFVhMHZUQmdPOUt4aFgw?=
 =?utf-8?B?Y3luOWkwdUwrNVpCSzVBN01kVWphVDgvVGxBYm5zaDBTcFZDUlhZdGZDTjFG?=
 =?utf-8?B?K1VBMUVoK2o2Z0drMEZrTDM4VklQTlF1NUN5eEFScW5YMnRRUEp6OUhESzEy?=
 =?utf-8?B?RUNsVFd6blVxRTNNSng0OVowamRhWndnb1lkVXhIWnQ5cUxsMDJvQUNKV1M0?=
 =?utf-8?B?c0dCMjNpT2NTVyt4UG5NMHBGaDc5M2x3bmhtSUhrRnVoQTVsWmkwSk5TS0dB?=
 =?utf-8?B?Z1dmY0EycDVpQlpTMmcrUG5Oc05Hb01qbTBQbGhvOGNXRFpwUUNaaUtXckZY?=
 =?utf-8?B?andBMzBEZWxwT0NqTkNtcEFmcUk5VDBTTjRoUWpoNnk3bi9VV25wUGJUbVdJ?=
 =?utf-8?B?cXRtT0p2SW9IS3dDNnFVUUV1NWJzaUdFd1YzRGtVTjZzUWg0MjluTXVYMmFt?=
 =?utf-8?B?WkdOTFY1Mm4zQ1pqclZJK1hNQ0pCR2U0ZWszQzk4TytRTkgxcnMrMlZPTmMr?=
 =?utf-8?B?aTBMbDlTS0wwOGZQcVVKQW93WURwaUR6MGdnK0ZLZTlaTDhPd1dreUJyL3U3?=
 =?utf-8?B?Wjc4UnUybDNqK0tXMG1IVW5zMjR1N2VWNHpBcDkzUWFBT0dJY0ZlTVl2Tjlq?=
 =?utf-8?B?eTB2TlRhT2cwK3JxSXRNdUlPUlhVdEhxaWFtTDZvc3RPM2YxTkU2WXVTSzk1?=
 =?utf-8?B?ajZJZDNVM1BFZmlEOUpPN2hEdkFVem1YWkVGZytEYjNTSWN5d1ZLeFBsbXd5?=
 =?utf-8?B?V1BuZW45a0NGWjk0ZUxqcWVEZEtFUWhtSnNJY0R2bExCNWw4d0U4NGdvN25q?=
 =?utf-8?B?MVJjT0N5bUtkc3FScHVkMEZXZmJQbUZKRXRob1dUa05CNEE5bHJBK1VHSFBl?=
 =?utf-8?B?aDZzSWRINldnRXVpQzl6U3VpMFk2aFdEV3NLa1JGY21XMUk0TktMUDF5SVNy?=
 =?utf-8?B?dTFqdTZGVlhIMVRkR1JTdFU1eFNlNUNYQjh0b240MFpObHBaMlI0L3FVb3lN?=
 =?utf-8?B?QklNQ2NCRHhFRS80R3pESVJzVGg4cUtPdTRnSEdoSHM2MTJQMWthYk9rMGpE?=
 =?utf-8?B?M1F3RG91Z3lFQVUybTdKdjllRkpSY0dZdWt5RmduVysvZWRubGVtWmxKY1NZ?=
 =?utf-8?B?K3V2U3R4d0N3Vk5mbFJGOTBVYmd2bkFXZlU2UE1tZnRyUDM0N0lKNEM5bkN0?=
 =?utf-8?B?bS9JL3RWZlVJMWNzUTZkVWd3Zy9PcHFaMHRTVHZVNllkb0lqVEEvclhZYk9G?=
 =?utf-8?B?MTgrajJIbnh3ZkZ3U29yODNQc0N0eVROdXcrK0R3SFJCbUVXS090VWdwSTBD?=
 =?utf-8?B?RUZJMk1iMlR4MUFlcjZ3c3U4R3pWVVRJa1p6M25QTUJZdEVUYXZObG5qVVBt?=
 =?utf-8?B?MXg2b0NwNlhsRlVUUFcxYTZEM0VoYVRwcDFQeDBnaWhsd1RTYzltbWhDRlow?=
 =?utf-8?B?L29qU21sd01wWGZmbUk3VHFzQ2RzQ0J6UVFrc0xvcEZ3NG1weUhJL0h2WHNN?=
 =?utf-8?B?ZE1sL3VvWDFDRWVLajM1bjZTcnBGVGRNTyt5eHZ0ZUc2anNqdStvNjhKR3hR?=
 =?utf-8?B?dng4SlhlcCtzTkFSWUt0d3c5b1BHNW5BOHRPRWFaQUhpK1ZwK0dVY3Fwcmlz?=
 =?utf-8?B?NlZ2WUp6b0plOHdoQnU1YmhVSEhoanhLdTQ3RnIzVEdPNjRONnJxU0trM1Nv?=
 =?utf-8?B?SURYMmxtSGZDOWFxa2hTUWNtQWV1bVJ6SitkZ3o1OWR6S0hnQ1MwenRVLy85?=
 =?utf-8?B?bnAyR29KUDFqY2hSY1lsalZIMmFJM0oyMWNlMHpSVHFkRlNxT1BnRmZzV28w?=
 =?utf-8?B?a1NyMWRsL0RCWDhhMXF5YXRwc1ZsazJEaFZFQkV4Zzl5Qng0ZjYvb245bVlM?=
 =?utf-8?B?OHJaQTZSQnJsVWE4OHF3bllxRHErckJBRktXYzVTWWhyVlFxaXdaSEF1YkE5?=
 =?utf-8?B?eXc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	DIF8klEYHyG5IyoCKuxSLCGJk4UX14MNjGNsMVg1XoGZmYrf32IUq2rpoDXhT/Y1pn5mnh7p4fmgU/5zagyEtod1nIRE5HMS82Eb1LEbdILzGPM1pX441dli+JFq3+iMIoDMpBH9njolakteOXhMsqU4Tun2ZsFFc+3fvftETXqdcmmOiWvEcB2RiK3nEDEsb7hdPYCYNfVxjUUyBI5Z4L6HD9g+CccHYLMl+4GpiIX+fd1tEB4cNUhAompw5K4rhy1nnW8ff5c4WAngoyA4QbhRg1LULDbHH2GWm9EV062bgfhJHrQuQTT2RqR8kvWNCxB+Dn3QtkNU7H1QxATDCPjaOnS7k67MI0g0MZkTTMLRE9HY8FHPgn1fCR2dPBZhMt2jruKaGgn1L+xxNtIYb+TmphR1HQ5if6bsTb04VBv8ZRnbLU5ySA7NXrSa3/ZSh3ZJVJ7rH9YmgAPx/gVrDFgSyins7Bw7T9+fzDc1Aw746q08VQ96NTTqb15jKSJpeBrhfXsDSCng7RnqgAqTQIk5B3O6S4nyj5Ur5orBfST/PmVjUc5+VR+8upXOtX2LInU3TCQ1MrcBudtlrWxAmPU7UsBsszTBWPPIxGCZTMg=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 49858ee0-05ec-4bee-8203-08dcde7ca2ae
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2024 22:43:26.8978
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Sm1U+v95vm42CIfGMuFpODnhNInKJX7e/41NlacyvqqQD4ExfyWy8L3OyYddscl4sZqn2YWlf5PVFKfHcRup67oWvAZQpS0pTllPDloEwxc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR10MB5989
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-26_06,2024-09-26_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 phishscore=0 spamscore=0
 bulkscore=0 suspectscore=0 malwarescore=0 mlxscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2408220000
 definitions=main-2409260158
X-Proofpoint-ORIG-GUID: -AcXCfA1FeZI9MYEYr0y7PORAhlgUf5N
X-Proofpoint-GUID: -AcXCfA1FeZI9MYEYr0y7PORAhlgUf5N
Subject: Re: [oss-security] CUPS printing system vulnerabilities

On 9/26/24 15:11, Solar Designer wrote:
> A lot of drama around the disclosure of those issues was going on for
> maybe a month now, with public tweets about the disclosure process and
> the issues affecting many distros but excluding detail on the issues
> (not even CUPS was specifically mentioned until very recently).  Per
> those tweets, the issues were communicated to some distro vendors via
> CERT/CC VINCE and a vendor planned to bring them to the distros list on
> September 30 with public disclosure on October 6.  Unfortunately, the
> information leaked prematurely and thus Simone decided on full public
> disclosure today at 20:00 UTC pre-announcing it only 2 hours in advance.

Once it was learned that the information was leaked, the vendors suggested
ending the embargo today, and both evilsocket & OpenPrinting agreed to it,
with the coordinated end at 20:00 UTC.

OpenPrinting has started publishing fixes as well now:

CVE-2024-47175: https://github.com/OpenPrinting/libppd/commit/d681747ebf
CVE-2024-47076: https://github.com/OpenPrinting/libcupsfilters/commit/95576ec3

and a temporary workaround for CVE-2024-47176 in:
https://github.com/OpenPrinting/cups-browsed/commit/1debe6b140c

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
