Received: (qmail 29913 invoked by uid 550); 21 Jun 2023 17:20:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29852 invoked from network); 21 Jun 2023 17:20:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-03-30;
 bh=8K2+T0sKEYj7dA+hTjO7uuTIxVXV2oRKBSecDHsti6M=;
 b=WKSX9uQZAgGSk7PiTjcbo+LR8POxBCTEE4PJbJhM3SSWZ8ZcMPmXbedAF4SvoX7/yFhz
 E3u5GU3efR+5s5SkMxjAyQ7bQvEfhpqaBE2KM42jdpGIseHWuKvVApfY8kHQvc9YH1FT
 +qOdZHHlPgnJGn5i5G23rLf4anRofeZp1MyjatZ0GMCi+RGU5tAWbwcVzI5/8KjU3RYN
 uD3LRrsHzwuL/vV4tCZiR6ms4DJ/6IO/T1gacaPTISz+iJBpd/kJ9+7rbqk7ND0YN6cF
 o1c5PHoQQmCbVy+P7HZk6f5Pf5Tz+kbVZJQo/pXWqWMJQSrDk5WBzkegzvz9wGmABeT7 1Q== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jRCYe3FkdFsKBF1zbuyIK5tOa2VqRbfTGip/hGhD8ryaUqmL1WxB/Zb6aqrtu8gt/BPKY727fMerHMeiUKCIwvhH3+e3X2zo1gjbcvR1NCa9OXavvLsiWAfjSzjPFT5PYOo8mcQY8iEPvuwcG3+THDPFC4zuPcfuyqEjKBO0qavhCueCfqfKDjSz5qp8KBKL8RLkVKfiCxadSjmj4AKI911ofaYiU5ZUBIa0bUtOIjy4TUtnT6aUReKC25pxHP5vngSe9RKqbWyooGPI+6pv9Heza93jZE/HHnjb0NeTuSFCKGQ55E371h87XJ8Y9nWLP/VlHtDuuA95eWR8mftE4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8K2+T0sKEYj7dA+hTjO7uuTIxVXV2oRKBSecDHsti6M=;
 b=fc/ydUW0SqJs+OVl9YrPl0Ef1SYFfVjJ9iLODBgqAp6AQ5xSh0eY34mUo6q7cLw398V8TJmchgKt5JfP5vVUsE9kiZoD7Ky3z9yia55p3if0RYWO1gTSMWcJdYHYS0w+MBak606tKojSgyfDPT6ZCNlJ/BXx2eMLN5JifjkBOSRvfL1iDDTxkycYlIuANLvtcyu1NYOHE3+BCh4xzXt1VNIRXDJnoNAVP+jvAE5ZVwPvQkBnRsI9QYGqJWr3F04RMYMIxZamnJ1NPobM9dZfcbrf0QWUjG7WgNqhxV/Re+7u59129fpIFljr4NXRHuNGnBnC6XYEz3CYOf/Q57orPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8K2+T0sKEYj7dA+hTjO7uuTIxVXV2oRKBSecDHsti6M=;
 b=D7zLbiMW8pt22ZssnM7d2OqkUy51jDlgNuAzc7bmAQ9KGbBrdYE0lk6ew0VatPB2Eu04jyOlYlEkEv+7xhEDSXnoR7bswrTOpvubT30oHh3BxzX2rAy41lj+Av2IVWwa+d9MbFOtCch0ipLiprlwsgg3uMjI+3j5z4hEX7K3Z+U=
Message-ID: <201c4d4e-a734-4642-f0b3-74ee7d0d87c5@oracle.com>
Date: Wed, 21 Jun 2023 10:19:58 -0700
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <a37bfa30-f7d2-ae37-5af4-e3674af29a7a@oracle.com>
 <CAH8yC8noq14ANkUfn9VVD0ESLey1uv_2yZCV6DX4vgmE4FUatg@mail.gmail.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
In-Reply-To: <CAH8yC8noq14ANkUfn9VVD0ESLey1uv_2yZCV6DX4vgmE4FUatg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DM6PR13CA0062.namprd13.prod.outlook.com
 (2603:10b6:5:134::39) To IA0PR10MB7303.namprd10.prod.outlook.com
 (2603:10b6:208:40d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR10MB7303:EE_|PH8PR10MB6576:EE_
X-MS-Office365-Filtering-Correlation-Id: 15231b55-38a1-4530-f415-08db727bbf60
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	WuYO72Ov7/F5sL2M+WMQNcRYPBlHzWBca/T2MTVbkfAJrABcApTZXVVVo8AdM0gr9K/RO+HRjSunxLcCftKuOrMj5n+76VJkRIXD1Lme7UqGlgNHF/TXLK7OzIxiAccp82SeSHUkNaLpnzu9SUB7jmzB2Tr5ARIvQ714rj8a3vtBHGlGZvF7lHUt6sw9KnA+LI18ZlJOtvcRwK+4UYRcCToKEQ2op3pK7kfvcD37Xn1kL85Sx8/WYqX/2+shLX1nW/zD3Ldbpyn6bPakiUA5zMac/bZz4OkdL0amX55zFWsoroNrNRwg9JkisyLN0K2Efp6b/DrCaQj8Kv7kTnWlWWuDkOv/vwIiYmGJ0Xo6oc8TsWLhQx0rhkMFzUCLD4udYtxl5CjU8qe5EXxSr6m0Q+LOm3Mx6lfTo3t6RYRkt75cOKQvtFuncrJmAvQPYEyhtVT6wx+oPrCjc5tWwP9pZ8E2ixsUUtV9bRupky8tFQvmLE/+u0en69KFubbjWR6by9O1/eNjkwz8V6r7pUcEJzzUrWqnG16foQqPCLsdcd2IQsLQ6aILk7i3Rq0i4IdoWx8cheyoisNzIh7wFj0j3rExTfOQ9vzNF7sprv3j8cFUKAAkItoXK2ABbvRnEY35+T0ylhYZo0ptHxK1A72l8KLR5vaH4JpcxEo3Eq/stz8=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR10MB7303.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(39860400002)(376002)(136003)(396003)(346002)(366004)(451199021)(6666004)(2906002)(83380400001)(186003)(15650500001)(2616005)(6512007)(66556008)(6916009)(66476007)(66946007)(316002)(26005)(44832011)(478600001)(8936002)(53546011)(6506007)(5660300002)(41300700001)(8676002)(966005)(6486002)(38100700002)(36756003)(31696002)(86362001)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?K3NOL2Y4UDVmMHdQOEVwU1R5b0hDcG9rMUFDWGw5L3Rzc2R3dW4wMGgwMUN0?=
 =?utf-8?B?cG8xMnVZN2JwTmNBQmdMMDRVdU9mRnRxRWF0SG1Ua2cyNDluenluQmlxbU5M?=
 =?utf-8?B?eEVQOGZZNUtLcXd3MzFXT2tnSFd0OU1yUDd2Z3owVkZCRVg2RWwyejBTRmFq?=
 =?utf-8?B?R1YxZHlsVzN3clF1eHBMdjE5MGUwVkdqbEhDa3BGeThHajFCZVFyeWN1Y1l6?=
 =?utf-8?B?bDZWUVZieFVoOUlHWXZZNGdzbkt4Q2lxWlp2YW53UUJ3aWZIekI3ZWdHcERv?=
 =?utf-8?B?ZVVlTFdIUlRiUmlrRTNUM1l0V3YrWnU2WUN0ek53N0E5MWdvOUJza1B2REF5?=
 =?utf-8?B?WXpoZFRSMnFyL29jdlYyUTUrUHdUeCtsS1hjZitPSVNIc1BmZC92K0VDWDBJ?=
 =?utf-8?B?a2dkSUUzdktoMTF0cDBtWmtQcHJKYlEwNlBBdEVVeWpZaGJ2ZjFGaGxvVkRm?=
 =?utf-8?B?bUIxTGhtMzI3ajhKV0crRGVVWGFlNHd3VGI3NEhTNGZjOTJGQ2pzZ3o5UmVP?=
 =?utf-8?B?eU5TeTZ4a2x4NEZOa0lhdmRZNzQwUlZwV2hOQVlPdHc2RkoyL1F3K3EvTTlP?=
 =?utf-8?B?bEU1S2Z2U0MxaGRpd016SkZ1VmFvSDloKzlxcitUcHlhSGZEekxnUkIyWEdo?=
 =?utf-8?B?b25qSStlY1dDMEFiMUhqNFpaRlJtdGgvbjVKTjZiNmNKRUl3OEQzWVp5U2xr?=
 =?utf-8?B?MmpqVVBGaE9MeUVnZkVLeVBTNW9UbThFSFNScnhOOGxqbDUxTitBK1JHaVBr?=
 =?utf-8?B?ZmJIWERuUjNEckI3a0hIZk01Z2VsOHYzKzdiU2pLWW1OeGU1cTZSbW1yQkJV?=
 =?utf-8?B?UmZYc2Z2NEhBZHdDd25DU3M5V0NCZ1prN1JLN2JXZFNPZGdwcjl0d1pwWmpw?=
 =?utf-8?B?aFJWOVUwMEVNZXNNZUxXNGJZTEFpR2Q0YVc3VS93ZnFWRExpbldhd1IxWFpr?=
 =?utf-8?B?c3JaTTBhS0ZOaUpmOGJyMC9yM3BOd3pZS1A4WDZvb1YxVFNlWnBBbzdSeWlv?=
 =?utf-8?B?cWVFTWd3VVJ6NEZHM1daQlFJak9sZG1QR1ZmbDRJcndQbUVEVW0rVHpMay9H?=
 =?utf-8?B?SUkyU1pDN0FLTVR6aEJVaXBDRWFteTJyRXQvbEtERHJBSU92RjMvbHh5VU5l?=
 =?utf-8?B?L0pCZjZqNlVMMnBDSVlDZHZSUkY2b0wvd3crK1ZUbzNzeUI1ekRWYzFlejBO?=
 =?utf-8?B?K0FlbEV6a0pFNE1VRzVTV0Q0VE1MZ29aY1NqSEFkQTNTN1VnQTZzUXRGend6?=
 =?utf-8?B?THVsVU4xMUJtaTJqR2kxSU5Ibko1eXpaWkk5bkVvRUlZRFowVVRMMHNUVVZD?=
 =?utf-8?B?cDcrakNwU1lxek9HUDF4Znd1SG5kdVJENm1sUU80akxXK3h2NDVrZUtrL3BU?=
 =?utf-8?B?My9aV1I4NFlOMTJILzJDdTFzWmFJa0hwMWY3QlpYUm9yNW1zVldJdnAxamZ6?=
 =?utf-8?B?RmZMN1pnN0FOcEx4SGNYWnBUUzZHbTczQjZ4WU4vSm5ObVFUMFgxcGwveWJ2?=
 =?utf-8?B?Y1IwZXhrYmh5Tk0vNjAyUS9CR05CWGJFM3UrVTYwR252RmRUMXRvbzRZWms2?=
 =?utf-8?B?L0hZeG05WVdNa2w5Q01DNXViajlleXNQMmhJU3R0eHMrTTZ6bm5jRkdxbGh0?=
 =?utf-8?B?RTgxMHRPVm5VSldNeVBVOWthemVmSWpCaDBtSXdLVlVZRmlrRG1LK29Jd2FS?=
 =?utf-8?B?U1l1VU8rbkNoMVZEZEZmRXRwOGdjaFdNVlMxNzVJZ2JtNlJocVdobE8wNStS?=
 =?utf-8?B?YWdWSThWdHlBbzQ4T0RFV1ZjKzlINjB6QldGeG9zYVJydHVtYlJjYUtTNHBI?=
 =?utf-8?B?elM2ZUttR2Z6MHRXOC9NQlFHT1QwaWVHaWRmTFloRVY3dUFkZHRmUXJEMUp4?=
 =?utf-8?B?QVJZejhBYTZJamZ6Q2tXckxsOVF1eDZMVW41c1lweUQrSUt2NjdMSTA5bkx3?=
 =?utf-8?B?T3NKcjNFVnJXVE1jaGtUTXJIbzJJUGJDUHRYcFdPYlE4ZU5BUURsS1g3ZS8z?=
 =?utf-8?B?cDF4TmlVQ1FGVVFGT1RNTFNRLzVxOCtaNy9ITGVheHR6ajhhM09LYi8raDBv?=
 =?utf-8?B?TGpheWVhTXkyNmMxQVVyQWJGSWZVeHNDNjQrcXJaK3JYcXhwajJuYUZONGQx?=
 =?utf-8?B?YUc2clgrQndwNDUwSitFVTlwd0p6TWw3YUFqSDQxUWZtUVlpVTUvYkVEUjA5?=
 =?utf-8?B?VWc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	+r7UAccZYf4kE15+OUoBgkq5AGrXKGDkmoOTO0RVLC65OoDs//pcsSiJ5XiKsBh0YiNPl5M5b+ePnwZXfrzW9Koe2NfERsJEhp0AJldImO6zEqRemkSuPQBHv2T0xWyRx5SEzi2evbvwIqohk4ezngQka2Ek9wGI6VhP+RIopLCR/Km/wjlROdCA7WhnsBaWoYMmHHJ33iGuCuuxAive+sTzDPwnhUb6ieWsSrpNXH79EQg205wZ59Dvpsfa81FBf9bFd4KHA/ux71Na43A6KwgeK1IKe0KtS+WD07cTfgwtKWc0JYUWANLa9YwyeBZ4SAKPCrdluPozfKxAFz5RtxNafPNtBmRvD/iKYbP8orWBC8Q/V3kdKsFdU0bwsoWr1pUTfVDzv3HIZiL2nMLV63Lk9RjcM/an1VDwgw+V6Gzep3RQzkS5jciPVyufEkZ8Ndcxhnam0Hhu/JPdUJBSWb66A6odBjlgDP4lYyYI7JIxDtO0p22H+dZqS+uvhqmo83O6Du4vLSwVG7Cacps10IwhsIWsLdU3ZIdbDZEuyXRz1PKeoK8njH7E8Nji3GaYpQkFUEPyb1DaV3QfBKynQA3xcrfDs3udhpkzZFMm7KdT7QgEchCYejvMouv6c2xQi+DmF+5vBLUdIr5zF/hY66aDOEudCCFqNOp4oTZ50FGfG+WpzIqVZGjVwhfuV5/IHgDD5h7eW4moDJ+b57a3hLO0o9quslV83VETrBTuW+dc43NS9qdMQxB00xiXEUV7/dySIMa803pnuTDwel8laQ==
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15231b55-38a1-4530-f415-08db727bbf60
X-MS-Exchange-CrossTenant-AuthSource: IA0PR10MB7303.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jun 2023 17:20:02.1835
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZfsjBCBJTz/YDM+HACdKHAiAvwtvzjcmYfXKZcCZYk0HOAC5GQkP7okvNUuTZAE94VrYG603cDDofmDqD7UKTWBowDQ0bD2moCGMihKHkXE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR10MB6576
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-06-21_10,2023-06-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 adultscore=0
 spamscore=0 bulkscore=0 malwarescore=0 phishscore=0 mlxscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2305260000 definitions=main-2306210146
X-Proofpoint-GUID: znwCuVGsa-v0Q3-6AtSoMgpXAcTOjgL8
X-Proofpoint-ORIG-GUID: znwCuVGsa-v0Q3-6AtSoMgpXAcTOjgL8
Subject: Re: [oss-security] CVE-2023-31975: memory leak in yasm

On 6/20/23 23:45, Jeffrey Walton wrote:
> On Tue, Jun 20, 2023 at 6:49 PM Alan Coopersmith
> <alan.coopersmith@oracle.com> wrote:
>>
>> https://nvd.nist.gov/vuln/detail/CVE-2023-31975 is freaking out scanners
>> since it claims this bug has a CVSS of 9.8.
>>
>>   From what I see at https://github.com/yasm/yasm/issues/210 though, I can't
>> see any CVSS higher than 0.0 being relevant here and think the CVE should
>> be withdrawn.  Am I missing something here?  All I see is 2 objects of
>> 16 bytes each not being freed in the fraction of a second before the
>> command exits and automatically frees the memory - in a command the user
>> deliberately chooses to run, which runs as themselves with no raised
>> privileges, on an input file they provide, and which exits after processing
>> the file and doesn't hang around keeping that memory allocated - not a bit
>> of security risk at all there.  (Yes, it's a small bug and is good to fix,
>> but not to raise security alarms for.)
> 
> Memory leaks on exit are par for the course in GNU software per
> https://www.gnu.org/prep/standards/standards.html#Memory-Usage .
> 
> Nothing to see here, just move on.

This isn't a GNU program, but that doesn't matter here.  My argument
is still that this CVE should be revoked, and that this class of bug
shouldn't have CVEs issued.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

