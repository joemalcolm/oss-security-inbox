Received: (qmail 21545 invoked by uid 550); 10 Feb 2026 22:12:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20461 invoked from network); 10 Feb 2026 22:12:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=MAKyybeRNk7pYzm5724BrJe5794mYmbIUD97sMa1V74=; b=
	p5MkjVbseRS/an/sBQpRpIVVj39zERyPlr34cpHqCUPpA3f3eKxuz7j+8PobF7B+
	c0JlTjxlElLRKCsjQz6vGJiEER5EyEMbUOoeSxr6fAM7qjgjznQh+OnFbYlO3Wjm
	2NfZ4gUOWlwQAUBEqDwp4C6EweBR7DaTxYovDi3zUdBOE8T7Am6F6wPQG9kLvuJM
	hCl9LbKFe3mStWoap7WPiFfHRYEYm3jxudpGbybTd6iGollvrsNhyvyOTsVHJjlg
	G2wljdZIMXOl1Y1OcLrDYdWfY2NwvKAJwQvGRE1trfLsbXN7cLnhGML8VQ2LtG5y
	djDKk2X8mNJnrz2haTbdOQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aWp0cGFYKn+OwoRDQVwgHh/IfIwT3Q2+3vDanRdzn5MxrtuO3z4Xlz/SiAJpBVeh5LI+IrRR9U+0QBPgLLqOMSr89eUuqAf28yI92AgktvHA+KR+bpZkvRfVUTAki1ovjMnY/rAC5iKl9V8hENZJxO1Yi1DVYd9YBPwJp37Bs4W36WQhX3CM+k+u9KdJwo4t1d+Kn3GdXTOwZF76fLC3QP2E9BNj8ccmhwvOYHNSZ2dVsKMBHTzxo6o3xxsSoPjl8Sz76jivMaoSHOucKHbWw5nPwLUiUDMGfj3Zu97M/+xQu0xDwPOGNcFmJ4IcErhHHPln37b2UHXo+huIi5ktmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MAKyybeRNk7pYzm5724BrJe5794mYmbIUD97sMa1V74=;
 b=jMb5dtxFSrhB5pc7B5NTHSpwhkQbSi+CzDnT9SV7uqPwWC/TdzmwGT7nXvoRof57C5/Z/0GDsPVlWyYgMc/Jw0sW+vGdEeHM6LrB3YaCFxiHdo7O1WyOGEbdraYyevWNkv6z+Dp20btFJf1dK28chpIxbpQkvvMdCBB6we3q5OfTd9hSPgUeyAMqsHwb5km3Mh9vg87MGNFi8e15VXfNWa2h823AIQE3i6P3CgEFdCutAjPLGRecRHxKpevEGYECrygcM4JzOrmH/Xx0QhdRy5eEgfSR9mW4cvW0+f+C4XOIc+nSUskE22XSl5jNCFngOzvXEeQIRy17nMj6G0PCvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MAKyybeRNk7pYzm5724BrJe5794mYmbIUD97sMa1V74=;
 b=eRzy0z5F2RzX26nrFnt1LzEad4rfFYeRUWZpQxLz7EwTkKnvhrnz5b4JKlEjUyTzcVPb+f/LXpC681ai/whC18sDWO53OrznLRfVh6fcfWmKAN6K/JSTwBxLM2Ll0eJeeFisvKdUnNvFQnj851/nYDzwpgOZtF6CF7/7bmyfxCE=
Message-ID: <063fc5f4-63ce-4ddb-9dc4-ce7e612a9417@oracle.com>
Date: Tue, 10 Feb 2026 14:11:51 -0800
User-Agent: Mozilla Thunderbird
References: <CABj5TKRM38y-E00=NKje0NBVD-OeB=ueyGB8vmZG2APB3kUcRQ@mail.gmail.com>
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <CABj5TKRM38y-E00=NKje0NBVD-OeB=ueyGB8vmZG2APB3kUcRQ@mail.gmail.com>
X-Forwarded-Message-Id: <CABj5TKRM38y-E00=NKje0NBVD-OeB=ueyGB8vmZG2APB3kUcRQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH7P220CA0077.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:510:32c::12) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|MW4PR10MB6346:EE_
X-MS-Office365-Filtering-Correlation-Id: 773bdd7f-b29c-463d-1abe-08de68f165a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|4022899009|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?b2Y5aXBxUUJPcytEaTRTQ3VOM0s4TnpsRXFER1JHVnhIRDRwRjcwbVF0eHpL?=
 =?utf-8?B?NUdqRTZ4NENSL0ZQT0RyTGdoRWFuRlBMdXUyRGhMNk5KOXprMmIxNFlYQUNM?=
 =?utf-8?B?dW0wWkUxWS9wOUdDNkU0ak9lQ04ydjk1T2xsZmdqNG55NStCTVFudjZ1SUtG?=
 =?utf-8?B?MVdRYUNhQitFbFhlMjFROE9PdC82bXhxeUdLM2JkTmxPcHpIUDYxblNqSHZ5?=
 =?utf-8?B?czNTeU9RWXgwY0pmamk5SGVZclBsUi9SckxqSjh2allEUncxUEpTY3JNa2NW?=
 =?utf-8?B?VmdLWXNKcEVGWVRMK2d5SjB5U2xseXdqNERGRnVDb3FuKzdQODR0cFl0Qmtr?=
 =?utf-8?B?bUNmK05qenQrTjQ1bWhhUXdzWVdxQjNqNjlMTHNVVk90SGNZWmtkUnh2M0Jx?=
 =?utf-8?B?SnRNODAzNTkwNEttUlBUS0dXTUt0WXRjdXBpLzNoTVpZRXptQ3QxQXVUN2V2?=
 =?utf-8?B?Qm1LZDR2UWRlSmIySWNaazd6cnM2WTNvNXJ3SXVadXlLc2lzeTkwMjVxNnRZ?=
 =?utf-8?B?Z25ONi9RbklzRW1uTGtUeGp4cjNjUWI3Unp0MEtVT3lxM3VtNlFvNkRMTk83?=
 =?utf-8?B?OFpvaU1CbDJ4TW1NWGdLT1U2WWpmc09ualRMOFh1ckM2YXJRTytzdW5UQ0R5?=
 =?utf-8?B?R3Bkc2Z6MWcrcnlnWTZtdDJ2SW4zT1lWd25ESjU4MEhvT2tIejJQSVFkUDkx?=
 =?utf-8?B?dHNoYnBwS1BreGNDZ00yQTNQZlVRUE0xWW9SNTd5ZDhYMVhxQ2RkQW8weGxa?=
 =?utf-8?B?R3dkdDZBVzY1eG9yRGNzZkxBemlmdk9UdUpZRm5hdllBMFUwZjhSdExQaGJG?=
 =?utf-8?B?Ym5UemlRZDdlVFR0YkYzSDZmT05hdUlOVDI4R3R3Vk0zWjRxS0VHTU1NU2N3?=
 =?utf-8?B?cmRBeUZ5LzRHR1E5OXVwRmtiS2hLUHVuOFVTbnp4cHBCQUtwcjhJYkoyZ3hC?=
 =?utf-8?B?Z3UrZzgxM0tEQjFLcG5YaGdvLzVCRk51WStHWFBBSU5hVCs2Rk5VZXdQZ0J6?=
 =?utf-8?B?WjBDQ0NNN3kxUjh6NUJUNW5XN1M4Nm1lNHJYNjJQOWI4SnFuS0orL296SjFJ?=
 =?utf-8?B?cEZlcEhkTXBGK2F4WjA0a1Y3SEhRZDd1bGYwK1cvU1RmOUM3QXpJeDljL3JO?=
 =?utf-8?B?cldHbmx5NzJzdTB5V0lWTHZFZ1UxemtSVHZtcWZ2dWF0YklXTGRZdFRWbnNE?=
 =?utf-8?B?YzdDWEZwRDM4bGk4dXdwRHFPeXlqL3Fsc2tiTXZGNytDTkRUakhWU1h3ZFkv?=
 =?utf-8?B?ZlhBMlBtdGZZMllFUEVVWlBFZXpOdUduM0YrY1ozeFprMHZOVmxJRXdWMVJB?=
 =?utf-8?B?WUp6K21oSFQ3MXMzMmhReXRoSWNhTFpiUTg3OXQ3MTVFV05tN1UrdXlNYVJo?=
 =?utf-8?B?a1BtWHEyYUtZUFo1Wm9yQ2tIVnNKRk5DaUJOVGl0aXdOb0o3UkpSSmZCMG5R?=
 =?utf-8?B?VmRmMzAyUUU1MjdOY21rUFg4aXRCdXFraTFUbVlSd09Kd1hXUFdmN0VTaXEr?=
 =?utf-8?B?cGx3eERVdGJHeHNiVkYzZFhEUGJHQWRBaTk1V3lQREJ3MFNFb3h4YWJiWjdo?=
 =?utf-8?B?dG13djU1S1VxVEtPQVFpd0YwYzhSMzhXRWphbVRTSk9GeTgrSzBrcGZTcGZa?=
 =?utf-8?B?VWNyMi9mMEpJbzN3SFZjVHJxaEpiOUFNaWxCL2YwWVc4eTBTTUY4TWYvaTVH?=
 =?utf-8?B?T1ZENEFaMHM2ZUlGYkhLQm5vN3V5Vml2M0RRa1lCdEQ3eTlPdGIrKytnN09K?=
 =?utf-8?B?S0dGZ2NWdWZhUUdWb0xBdUZiY2h6RUtOMjZLbmZpTWJ0QTdTN1NNcktxNnhw?=
 =?utf-8?B?WitIanhqMElHTkZLMVc1V3JlSytkMitPOGNLaWFpUWh5R3d3UEliMmpnYzcr?=
 =?utf-8?B?WkpsNTZTT0ZxVjRFN1lWUlhiZmQ5OEVSaUw1dnc3NTJ3dTB1Nmc2aHp2ajB0?=
 =?utf-8?B?SmhRdjlUeXZyVWl6SlNrRGVDbTlCUG9qU1BhUnBxTXg1azJXUTd4a0NtaVEy?=
 =?utf-8?B?M3JWa0dQTDhUKzlpM28rYURzWnhXa0dKRmxvOGxjdDRTdWJEank3WW9XVjJo?=
 =?utf-8?Q?INIP9J?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(4022899009)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?OVdSOFZ4cUtSbElFN255SFRQOER6TEhRNVYwdVlPYVZrYnZGYTZkTXlwZzZ6?=
 =?utf-8?B?ZDJ6Mm5kdEVPRm5HVkRRbUtqTDg3SW1iOGJIRG9OaFRtbytvSFNnWk9QUjk3?=
 =?utf-8?B?WU15VHAzUTYwTDBRYXp2cVhhelVobEFmN1doWXQvQmhxeGJKOUU0YTc5bzZ6?=
 =?utf-8?B?Z2lhSVlnNXVzK1ZOWnNHQWJCY084ejV1VVI5SUVXVUhwZzE5WWdPOTlaS3dl?=
 =?utf-8?B?a2pONUc1RDN2b2tnTUt6T3FHQTZtNVZCT0NyaUx0UHFwT2NNR2hEQU0vYkNp?=
 =?utf-8?B?aDA0ZlQwR0VuRTMvTVVJdFRLZC93MzBsN2NPU1k3YjlnNWZmSUJReXZWVXQ4?=
 =?utf-8?B?ZUl1Qi96SXJyMVN3dWFhcTZZdVA2cVlZNVRHSUliWGRYck8ra3RVTHR2cmVi?=
 =?utf-8?B?QWZXTWVoclZlNWJBaGF3bGxlM1ErS0JuWmdUK3ZWZGpwc2lSbHRhZEZ5WUxl?=
 =?utf-8?B?b3RpTjNnR1V4bmtkcWZSakE0RkhLRUpqSUcrSGU1R3hROEpibnNvbkJsNUlk?=
 =?utf-8?B?QzVOVFJ0bTE0R1NmZ1BnYU1GRmRla3R0RTRpaVZKUW5OMXY5RXpmOW5DamZt?=
 =?utf-8?B?YlUvMGhVaVVLc3lQQTZPRksxOUovUUdOSWFZYXM5Ynl1WmJCVXdETkwvNTZK?=
 =?utf-8?B?S1NpeUFGWk15b3NSTnhBTU9KNTEzblp3RE5WYlRnMUxLU1U1M2YwamVTbElr?=
 =?utf-8?B?M21EWE95WGFMMXhwbTVxbksvSzRESU8vakRpanRhS2VDYmQ0a1hWVW9JWU8r?=
 =?utf-8?B?V0t1eXEyRWlNcWpaS1VGeGZybGpiQ29JVkkwL2hQUjFLcjNPOVZCOVBTQ0hC?=
 =?utf-8?B?clRZQmtIRWFtMmR6VHFoSjl1cjJhVVNrV0NYZjQ0UkZZSERIcWY1NFVqc1Er?=
 =?utf-8?B?RUNZbHo1NWlBV2RadldnOWNIV2R2YUNGVTRrSkUyVnM2RTNLU0xYU20vWkZM?=
 =?utf-8?B?c25CTldaNW9TMTdFNXZKTUtBMXIzMnI5aTBuaG1nay92MXAyTjduMFRGZjZF?=
 =?utf-8?B?T2RyL2hFdzUxc3crRi9OOVlpMk9mL2h4TS9FbXM5cjRYL0xJaFdDVTNuYjc1?=
 =?utf-8?B?QWR5a1BRaGVwSUxDREozREZJYXU3aVo5QTR0NVZKS2k3Y2ZDU3ZBUXlFWHgr?=
 =?utf-8?B?S2I0a3dzRmtpemVTc0F6c2QvdmlQYUFEYWx6YW1UdGxRV0hXbWpKeGprYVBM?=
 =?utf-8?B?bkRBNTczcGljcGdRTlpWWk5RdXhtdE5DZGN0RUxXdGpTL0NDdXphY2Ixc2ZC?=
 =?utf-8?B?eGs3R2dYaFdaemhBMDFuRUhCRzR0amNwZFNucU11d21yem9DaWdxYUVpK0pa?=
 =?utf-8?B?VkJzK3FuTjB2VmpVTno2TjZkTy80Y3gzTnpxQytPaHhqd3FjMUtZVGhzTFZu?=
 =?utf-8?B?Qy9mV3NOUFhPWGZpSk1mS0RoeVdVSXFtTFBxUFhGKzRqQ0pweXdVQVJuTTQr?=
 =?utf-8?B?NC9oMHBIOUxwOU1xdXl0VkdKSmxjcDZvSGFoMU1JTE5vOXFnc2YzTTI5TmhM?=
 =?utf-8?B?ZHEwVDZPZU0rY2tsbWVJV01lSUZaUGVibFdxVXZIZjJZYXA2VUJERENtcFNp?=
 =?utf-8?B?STdVNGN1TE1aNTkxWmd5dDZCc21GNVNGMnlQTjZ2cGJzVmErNUF2MUszVDhu?=
 =?utf-8?B?RjJxNDFjUHVjNTF0bTJFL1VxSldtNm1Ccy94eDVsbG9tNENxV1pxUFlRQnZL?=
 =?utf-8?B?Smlrb0I0L1lpeG5hYlp4Rm9tZGVoNWREeG1CcTlDN3pMOVpjUkZUbjRVbGJM?=
 =?utf-8?B?bUpXakp3YVMyaDYxRVpITjEwdndVMG5JcEFJMmhmcGZMa0ZYcVZ3T0d1dnhD?=
 =?utf-8?B?NEc1TWErd0l3UklrK0o2bFpoa0FjZFl3L2dkL1g1VGFZbTFPWlZNUG9KQjI2?=
 =?utf-8?B?UFZ4UUVVSDVGd2tzeXF6RE1Jb0d0clFtVVNVaTZ1NTRaakRkOHNuWVczb1Q1?=
 =?utf-8?B?SUdzb0xzM0VWT1U5MGNpUmgwWHFlZGQ4ZUZUMDdGL0FLaU1pNVBHK3hHTXFi?=
 =?utf-8?B?K2dJVExiMmhVamI0UXhjVEloL1prR1prbmpiRmM0ZmYwaTE3UWx2dExWNTdu?=
 =?utf-8?B?aThOajlZazh3MVVRZ3RKdm5HZjJKeHhxZDQxVUZQVWY1Zk9wVHNTc2FDUGMz?=
 =?utf-8?B?aW5KQkwvOFAwN1hjL3RXZjI0VkF2RVRURkp6NmhvN1ZwZzVUQmphL0FVRHE1?=
 =?utf-8?B?RitCaFE3Y2VQMWViWDM3Q1ZBZXMrcWM4ZGkybmJmbkFhT3IxK3FuMDk2ekI3?=
 =?utf-8?B?VTRXUFVJSHFqS3JhR1pZcC9VVlNBVkdWbGlYRFhlR3NvQi9Jb2l2SmllOXoz?=
 =?utf-8?B?T0hqdEtVNVFRenl4S1Z3NHlEcmV1cXNRQ0xYUlg4Yk5EbWwrTWc2dG9zS1Nj?=
 =?utf-8?Q?lMagrIHKkYgCXyE4=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	utWjvJeGywo0WE6rUu4KcLDn7FVgpfFy23wjaA411bfvdC1nRlgT+fc+Fb41UftsLsTItBkn2OfTGzHzXBzfuxCk1KsW20XN+fc5ekKApCo/oraItld3P0RjXDC82DKjPA8EB/EMkeKfTQH9ywfJaetLLGngjdCdcHRSRzA9h3D3XpKeZ6AoewDmQPWDN+eqLOm5rl+hDLY5K5njyKwPxUYQSjAFepbqktrXS6DFwaiaaSIyRV5X04jTP9K22Mk409xdLk41/ekbt3XsWxa5P9R35ouODKE3ftv8PrzrL5KN8+TVqIS4JLg66kWCyrLbelgfDF3bS5EAqkZhHfkyWnVIMNyc7qif31igVaIiUDqxnKmcYdMQ67OGu0zYRRbgGJnNZEcLa6yGn6IAwNqk65IpNkkXJr2w9USPUKd361KvdDBouitvEcvVssPCMjeRlGBSQE4cF6v0LcMiBbZyG90k4/CIC0CGkUswtpcWyi+yfKLRqXWJvRV5rHzDA/V+0ZjugDkJsHB8ec7ihMIJksZpMCqC0DHATe9mKr8LkelFDSVfXv1BNYtYopNE/aPi3DSbsfXVFMnKIVK1whO4MSIbgi/6zDCARDyPmcCPbFg=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 773bdd7f-b29c-463d-1abe-08de68f165a1
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2026 22:11:53.7019
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xuf8tw7VYQH1mPjNHg+BXTVqKFyJfpJRoTVC5drDPsJt8jLifcUZCW9fvVXmnLbJhwAEXp9Ge8hoj4G0ywqZ3NC7PtohRBORWEmwckgtLwU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR10MB6346
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_03,2026-02-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 adultscore=0
 mlxlogscore=977 malwarescore=0 phishscore=0 suspectscore=0 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2601150000 definitions=main-2602100183
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDE4NCBTYWx0ZWRfX+7Fu35bXSrV4
 1A5H4JB/wFlZQWVb6BV8GUGWSaA59KAkM4kwy0QM3b7hWMlbTY2nMwzmi+S/py/EmaAPPXH2F/Z
 wcl/PNlKFJnKsPnX+d+YyZJ6byA/izNhgK44D3b+iPMDgr41Z7dpWXMbqUFX8CSkuzIp6umGlK+
 gaHlqY+oruSoJlj3HWXawuxeZkqr1w/YOmHQdTlyZ3SLV/m+Fv9MDhrTg46SKA2kmWMjTWHtzXN
 B+OMyOWiNm8uczt1OLMevvgz578pv/KmBLjnBjXOKrV4HZ3SlqNhpn+6/xz4FlVwUb6v3DZgiQT
 nan/lqvr1CrYDh++4QfUtyl+XWwO7Vc1FAuSsC37g1KU+TP43eLW/Mbyg8wq3e43sbe9o8/P1Qz
 ck7E+xQlxf/zDOdb2jC8e9VgwUoXrDCw+i8x41eKQu+lJdav23SKilJ1RbdP+DDtsAEnj6PrlHn
 w8BaMYUi+59DDpZsTZw==
X-Proofpoint-GUID: HicYZfFosOlN8MKTBFe07fsBqVbgnNxs
X-Authority-Analysis: v=2.4 cv=Mehhep/f c=1 sm=1 tr=0 ts=698bad2f cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=fPrS5t4AAAAA:8
 a=8AHkEIZyAAAA:8 a=pGLkceISAAAA:8 a=yPCof4ZbAAAA:8 a=WNHBVa2s_7yY4EDeodcA:9
 a=QEXdDO2ut3YA:10 a=gggMYKadlkGBjojrQUob:22
X-Proofpoint-ORIG-GUID: HicYZfFosOlN8MKTBFe07fsBqVbgnNxs
Subject: [oss-security] PyCA cryptography 46.0.5 released with fix for
 CVE-2026-26007




-------- Forwarded Message --------
Subject: [Python-announce] PyCA cryptography 46.0.5 released
Date: Tue, 10 Feb 2026 13:33:26 -0600
From: Paul Kehrer via Python-announce-list <python-announce-list@python.org>
Reply-To: python-list@python.org
To: cryptography-dev@python.org, python-announce-list@python.org
CC: Paul Kehrer <paul.l.kehrer@gmail.com>

PyCA cryptography 46.0.0 has been released to PyPI. cryptography includes
both high level recipes and low level interfaces to common
cryptographic algorithms
such as symmetric ciphers, asymmetric algorithms, message digests, X.509,
key derivation functions, and much more. We support Python 3.8+, and PyPy3
3.11.

Changelog (https://cryptography.io/en/latest/changelog/#v46-0-5)
* An attacker could create a malicious public key that reveals portions of
your private key when using certain uncommon elliptic curves (binary
curves). This version now includes additional security checks to prevent
this attack. This issue only affects binary elliptic curves, which are
rarely used in real-world applications. Credit to **XlabAI Team of Tencent
Xuanwu Lab and Atuin Automated Vulnerability Discovery Engine** for
reporting the issue. **CVE-2026-26007**
* Support for SECT binary elliptic curves is deprecated and will be removed
in the next release.

-Paul Kehrer (reaperhulk)
_______________________________________________
Python-announce-list mailing list -- python-announce-list@python.org
To unsubscribe send an email to python-announce-list-leave@python.org
https://mail.python.org/mailman3//lists/python-announce-list.python.org
Member address: alan.coopersmith@oracle.com
