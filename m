Received: (qmail 5431 invoked by uid 550); 20 May 2022 08:16:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3632 invoked from network); 20 May 2022 08:14:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2021-07-09;
 bh=gf2afb+HVVJdWp4YGqgJk2PkjHRaF61+1hSXLxXXBcM=;
 b=yJdFVy/k59NzT/DLRFaWCZbpHsl84S+fxHv6hDeVWUAn4VIqx20V0vRMbU6kMESKSXPY
 0dkBoI1SKR4iD0JNXR8hrR6DHEAAugYA0ewgeTulL0B90QOagRR94F7JUzwr4MpYNTQ5
 xvcFaHc4XPeh3/K5/P6k5/kJL0PWe9qmzf855mE1UeKIsXEmdVhQtUthbH1nfNhqLS5B
 AvQ2x6aQD/CZSuekR2H4P9H/Z3F6BVZ44l/1JoG6VaIG4BETR71xyVpCjlR8q5HwkOqt
 pnPpNhTrH8SYaOZyvapLO4y/r28jNu3QzDanBOK48BY54ZFloCXWEc2VD7UTRG0VtM2l 8g== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QE4cnTmZFu/ajVtYUkHQ8s/I3Hi5A9o78WZ4X83OhQtMNamZ1RFF5CWUVoud0dXEqRvu/Dc6y05GypNdbVZtWpjpm6yJJJ/AxJPFcl9YhLpTgOJv7q/uyQbicdoKescIwH5O6NF9LC+4emFXshV9h3jYugc/xbYYuUCkj2LI5tL0HrKBwmLDjVZJLaMWKlrQVTYe+Hx+SNvwSd8HG8eMoTnW04MbFlr65YASZVgkdRo6J/jNlZmhY9jWZak3SKD0JsOosnSy22Kawuqg9+UDhuELSRuUlekYOfUD3q1U0QUYQO2Udlqtbit/O37+nYSZLh2ymo/d+tTTY7s90tkoig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gf2afb+HVVJdWp4YGqgJk2PkjHRaF61+1hSXLxXXBcM=;
 b=ctdxpxVr2EzhYIgVEWEoM7ofq1z6CL/jcDswFPySZuzIoboBQx4bohdSG/cZdMkkLLK8D3Pu6jN/eCvmYqwnoxx6HyVMYs6HJuM8g7wuby+aP42y+FgWwjOfq//Txb1qqfNc+bhAz595Me6CA8xi8XeAha0GhRtMReA/Vu/7EkUb+X1kdu23cKw38PJt8zYiVujEd/5AAciuxe95zvlPufvlF4Mf8bej9QKTMwJPKiTSwniLiUte4GoChb+86MKawh3psmatefBSjtJTWHTUlEaTz3ld8wBJkxOShHyA6U8LYRSS7Pg/2ShekPKca0cH1yZzoY246Ro3WhMRphbmlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gf2afb+HVVJdWp4YGqgJk2PkjHRaF61+1hSXLxXXBcM=;
 b=AI2X3N+9jIlcam+MamUVCqGO45coZ5Q6QWcrCOmpFVzhUj/woEE6j+oZClK22sWAnmsvXnAq0xMoyN7BDT3BRsS1v5rKmoPuWn62WzuC72MzzE3/1UTFik0Tqw62J9A75QHfdAE0Qc33amgZ+RkbGHMBaI10hW4dHQCK2BFmlEA=
Message-ID: <1be21670-921c-9f0a-d99c-a9f6fd02b9b2@oracle.com>
Date: Fri, 20 May 2022 10:14:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <20220515162740.GA20526@openwall.com> <YoKiGWAX4E/mbGWB@kroah.com>
From: Vegard Nossum <vegard.nossum@oracle.com>
In-Reply-To: <YoKiGWAX4E/mbGWB@kroah.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PR3P193CA0037.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:102:51::12) To PH0PR10MB5433.namprd10.prod.outlook.com
 (2603:10b6:510:e0::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 151af2f7-8c84-4e78-11d9-08da3a38b9d6
X-MS-TrafficTypeDiagnostic: DM5PR10MB1851:EE_
X-Microsoft-Antispam-PRVS: 
	<DM5PR10MB18518CBC907F247BA2CF176297D39@DM5PR10MB1851.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Ca0CAU4M3U02KGhk28ApQLQowS62IATirnodm8hn3szlK92KHO/o/pbBb6aY714WoGVn/6wf1O+0k6RRvTUCLuTCvPFbAeMyoa5LUbl25PiW+SPjun5Jn95jLJwCb2j4EJL63hX9n2V9Sl9eSzWP6gWvPxkF3N/ROGOxmXH9YBzVt3V1ch1nbsCi0e2mUVAYmcbR6soBN06U9z05zdZFUAp5HwWkJQuamhM6clk0JoqjBlnh65BAi1Ogiqq+1+yzLT/hmqef2AfHvh+5FCnfbCwABKDnJ+qK6iHc4DA8rVsN0QLahY5VFpbANDsCxCG9upzv2gXT27MQJ53tkvTio+3vOdXn/pemtyNrHvoOXI7WgDlFUYsrZ81NY1gH6z72SQ7yQvYnm6EgRQ//S75arBW0jBNMKHdRtSuVDeBMT16Xubrm9MbUSWpwBXKWE6/fl8Tzs5Fj8vBtRm7j92tluzoR75KrYWgL++MLnrudijr3cvzjftegdugjcEDmugYzSw//nXtQZkSTCO/pGmWTh2UQLZjQ6w78tn3Pl362plhkRru/FzgWPBHDfQFD0fztT9XnFrQobOuKSb9rIyr7SPQPjusm3xUXDQhz0QiFqATzHVP93LBSu/ZZL6O33NjR3m89Z6s0XUUHEQOC28W+Eo6wFBTPPSDAEYvQPGvxCXD+m3EAjxKws8J/hmmo+K9YNqxb+9+24wRGgUMkWFzOHp9Hpe1CcCwoUui95zXdMYsEush5OSEOAwN/rL6kMMWXHn6cmOTydNWsgr3Umjxl0g==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB5433.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(8676002)(31696002)(2906002)(15650500001)(508600001)(66946007)(83380400001)(8936002)(86362001)(6512007)(26005)(5660300002)(66556008)(66476007)(6506007)(53546011)(44832011)(52116002)(6666004)(316002)(6916009)(2616005)(36756003)(31686004)(38350700002)(38100700002)(186003)(6486002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MFZMSitscHZyNVBQa3RIVC9ZMW03UDNnWTlDNHJEbVk2Sm1LbVp3VkxWaUNI?=
 =?utf-8?B?Z1VvcGRXMU5MRnpySjhhSllUVEU1dUVBc2lXOXJqSEpCekFabjREN3l6c2hh?=
 =?utf-8?B?MFgvMFV5TEJITmQ4WWJRekJLdU00am5ta1hZcDRmY0hsOUFxcDNudkc2NEt1?=
 =?utf-8?B?cUFGaVMyOTVqNGFaQjk1NGkzNDFqMlhwMHptODA1L1NTNmFKNjdOS1VYZ2lC?=
 =?utf-8?B?bkVDbHlJM1hWcjBDbnA0UHFtcEg4UHJsdkRtbXVYM0ZrNlNpMHh5S1RGMkhk?=
 =?utf-8?B?bzdWNjVaeXpDRU9YbVR5anByQmhtUzZ6bnFiNjBxYUQ0VUNBc0Vubzh1TURI?=
 =?utf-8?B?QkNNellLMXdTL1ZZUHdNYXlGRVRHRW1jMzAzVUdiOHFQc1dnM21RZkZqVHla?=
 =?utf-8?B?d25aZ0p0L3lwUStFUTlZWDYwQUJ4cFVhaHFZSWlIUXg3VGZ3K0dybzB6R0lX?=
 =?utf-8?B?ZHFLSVVDNWgzZ0l2RCtsQ3htVFRYRmN5b090TkNmU0xrQ1FFc0xrRmsvL0Ix?=
 =?utf-8?B?ckF1WHIrVjNPS1Nzcyt2Uy9MZjE2dXNpdmRlTnQzYkxQdWY5VFBnaWt1M3d6?=
 =?utf-8?B?UUFGdjNHSm9qaHQxRE1uTitrTVEvd21pVnJDbEZ4S0F4dlRxeXh4R1ltSjd6?=
 =?utf-8?B?T3NLdSsxZjNpZ3VOaUJLM3dPeFRmYU94NGhVTGl1bnZmbmhEOG14K3gyQ3Fl?=
 =?utf-8?B?RTRxVHpaWm9rWlJLQ2R5bGtJZ3RYeGRCdC9PeHBTbnFubHJId083VnZqdHBr?=
 =?utf-8?B?S3p2ZStUSWJJTHR5SE5IdkZCdU00c1J5d3R6WWVEOVA1dGU4eXBaRjczR1FJ?=
 =?utf-8?B?c3daVldRTDIveTVpVFBGT0dmVENvcHk4Nk85VUw3bXRJdUpteFk2SXBiSjZP?=
 =?utf-8?B?azdqTFpSZUw5RjVZeUlacUdqblBtTmNZR3lwOXRUZjZtTVdyL2VITVZyWTMv?=
 =?utf-8?B?bHZmQTVUOXpiSHJ5a3kwV2JpMkc3d0hyVkRvVmFrQ21jZEFpSW9FcFVwMTQw?=
 =?utf-8?B?OURaRnV2Um8vZ3hmb2E0bE85Vm95YjE5R2ZBM2ZuMWhyN3NBNEpleTk3M2N3?=
 =?utf-8?B?dHp3S2dxTUliQmdrVEE2dmplWkdKdTJEaTRsNlU4N1lFbXJjMkd1M2JudUNU?=
 =?utf-8?B?aDMwbjVUV3NSM241WUZJM1JIYjBiZ3NSeVZ3clNRbjdxZldQd3ZjM3hGWmpF?=
 =?utf-8?B?RHAvWk4vckxCaW9XK21oRDBHUWxPbFBDU1lXN2dXL3JFSER3S0h1bnM1TEFX?=
 =?utf-8?B?cXhIbkJ2N0ptY0Fnci9TNkt6ZzhIUzkvVXc3WE5BUzl0TXN3Snl6SHRnbm5T?=
 =?utf-8?B?Zmhlb2VDRFFuVSsyWUZQYnFsZ0xqVncvMklMRDN3NkVDQzdya1k1WlB6YjNL?=
 =?utf-8?B?ekZIZnN6aUdCYWc1YWloQlp3anRJQWsvVlRHMEc1TU9HM054WDNhdFBIZzBa?=
 =?utf-8?B?LzIvWU1JakNNRk9SbW9XZGtFMEJyVkxXN21Ua29aaVFOZ2RyOENUc3hpSkZT?=
 =?utf-8?B?Tkg2T0E4WnVmQnh2NEtvWlJiOU1aVm5zUzRoRTArYzNidzYwWVY2NWJUdTc1?=
 =?utf-8?B?RzFKYi9lZXZ5K1BvVFJ0aGNKUUtGVEZpSyttYzVwdkNLQkNybGVjRVRMRDIw?=
 =?utf-8?B?ZmJRaEV0SWtRRSs2eWVIRDZzZXhVNXBQdy9JT245K2dqZUNodW1GYjdXQXRM?=
 =?utf-8?B?ZHhISWdVSnFlR1hoY0FoOEhTN25sdWZoTklyTUZuKy9jUXNHdjZXMGdKbDZw?=
 =?utf-8?B?YU11Z2Ixa2tLby8wc0gxN3JPY1IzRElHTU1sY0pPT04wWVREalNwbTA4bDdC?=
 =?utf-8?B?K3dSOHlHM2dnZ0xuNGVMNDZnanNzSmtJalEvUFlZMVFDNVAxTlZzMTJDdGhN?=
 =?utf-8?B?UTFaOTRRQ3ROcGt4T3NCYnZubWJXY2lGc1lXMGZYM1gxeUx6M0F4UXlLSXlu?=
 =?utf-8?B?Rlo3ZkF5TlNzQmNRWjA5eHFlbDhYVElySWRKYTRhdE8xelA4TGJTNHRVRThr?=
 =?utf-8?B?WFdhOXRxRTRmWjZoS2lTZThpZTgrZFQxd2hGUVo3QUdNU1l1NE1JVUxQMkJo?=
 =?utf-8?B?WCsxVjZZdHlCbEU2VHRZbEIwajdMZGNtTjRXdVJYTUpTaDJqUVMzR0JJWGJZ?=
 =?utf-8?B?RlNCVUR3TGFkcTBkUmxxNXJHT3R6eFA2bTlRTGpFYVA3VXpOM01yYW1EQTFY?=
 =?utf-8?B?aXJlcnhxRGV4THM4Z1lqRTVJWjgwYy9laTNNRHRrN0NjRExqMmMxRWxlTHRt?=
 =?utf-8?B?dkYwMUpHOE5EL0JScVRrenphZU9zc1U2YlVERlU4eTI3aFdQd2wzcFhqazBS?=
 =?utf-8?B?RVA2NkFJbWlLdndLZnMzNGIvVnk0WUFDWXhLZkFibmpvRnczTkx5OHp1djVv?=
 =?utf-8?Q?IcceWKdIRl5ntFQY=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 151af2f7-8c84-4e78-11d9-08da3a38b9d6
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB5433.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2022 08:14:15.6435
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kBEkgccOPZZo1fkzL/ZtSCI8THVkLR09JOvKpY9MYmKxXd4D+SzRXKsCRyphHHdKc+1i9YLBAbleQsE3zB2tQE3kwpxPLkbNiAOOpUzywU8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR10MB1851
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.486,18.0.874
 definitions=2022-05-20_02:2022-05-19,2022-05-20 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 mlxlogscore=902 spamscore=0
 bulkscore=0 malwarescore=0 adultscore=0 suspectscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2202240000
 definitions=main-2205200058
X-Proofpoint-GUID: ZfjaldDPPgLXY2jIcpXG4UcT1nWwWWBU
X-Proofpoint-ORIG-GUID: ZfjaldDPPgLXY2jIcpXG4UcT1nWwWWBU
Subject: Re: [oss-security] linux-distros list policy and Linux kernel


On 5/16/22 21:12, Greg KH wrote:
> On Sun, May 15, 2022 at 06:27:40PM +0200, Solar Designer wrote:
>> 1. Adjust linux-distros policy to allow "embargoes" on publicly 
>> fixed Linux kernel issues.  (Only for Linux kernel, not for other 
>> projects.)

[...]

> So if you all could just modify the rules to be something like, 
> "embargos are not broken when changes are posted in public, or 
> accepted into public trees, unless the changes or discussions around 
> them turn out to disclose the security related issue."
> 
> That would allow us to still get changes merged into Linus's tree, 
> and the stable trees, and the distro trees before the oss-security 
> announcement goes out to the world.

As a distribution, our preference is to see sources/patches and binaries
released simultaneously by both upstream and distributions. This way,
the window of exploitation for attackers combing through git history
and/or changelogs is as small as possible. If the patch first appears in
git or on a public mailing list before distros have had a chance to
prepare, build, and test a new release then attackers who closely
monitor these have an advantage over our users.

However, barring that option, our preference would be to adjust the
linux-distros list policy as proposed (option 1/Greg KH's proposal).

> I think we can all agree that this is our overall goal anyway, to 
> make software more secure and keep user's systems safe.  Disclosing 
> problems before the fixes even have the ability to make it to a 
> user's systems goes directly against that goal.

Absolutely agree on this -- we just have slightly different ideas of
what the best way to keep users safe is.

> I wouldn't like to see this happen as I think the distros get a lot 
> of value out of the current situation.

Absolutely, there is no doubt that our users are more secure with the
advance notice that the linux-distros list has provided us with so far.

In any case, I really think we should take this opportunity to iron out
a process that both upstream and distros are happy with and that is also
less confusing for people who want to report security issues, as that
itself has been a problem for a long time (3 mailing lists, different
embargo periods, ...).

I'll respond a bit later with a slightly more detailed option that also
includes potential modifications to the in-kernel documentation as
displayed on kernel.org.


Vegard
