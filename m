X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2471" "Monday" "4" "October" "2021" "09:17:26" "-0700" "Alan Coopersmith" "alan.coopersmith@oracle.com" nil "52" "Re: [oss-security] 3 new CVE's in vim" nil nil nil "10" nil nil (number mark "U       alan.coopers Oct  4   52/2471  " thread-indent "\"Re: [oss-security] 3 new CVE's in vim\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] 3 new CVE's in vim" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5486 invoked by uid 550); 4 Oct 2021 16:18:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5468 invoked from network); 4 Oct 2021 16:18:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=subject : to :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2021-07-09;
 bh=HrbPLtVG0BsY96EXWkh3cIKSMgGwsdClc/YK0BCa+MU=;
 b=G5AUA1briSnD8Nn4+xo9weaPg6wblIeuh/ZCkDRPPyw/JNg+oPEqCBSEGUPnGXqQ0sXf
 mSF9sT7x5wlNStR1vHD7Dp1evwLtGdG/7GsXZjski30r8GOYNuhEJodBmESLq/W38UAt
 fMiIwVTi3+3zZJc/x8/izb/+MYuwQkx7rjyNodMNYyukZYVNlgQkQ3V2D/9n5BcRHcwU
 HE/tYsKzkfjYvX/0FzHSbSaxlOfN4OWopYsvrQjepFgGjLXKjdwocp5ihcoI55JTcMlZ
 RNAbiUvGY55iMRk+OMkNubp+2QAr+Oh2oucsXhv2h0N3vfDhfHgpgms9Q/cmEHnAsW8R IQ== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nqi/pEHX2YC7f7BkR9k6vaGvvnmA5CC8pLMrFPqnwD73+x8TFF50SkEDNNgY2ZVj6Q1t0TVngf0MadRcoUoIDsxChEg5VG8x+OxdIoj7+JZcQ50lQILgQp2LmXwJNu2/qnYz/oCuyGvSUYZimzsBIvWKyxOEoHEBLYnkPOXHGaObbWW9eacqvIH46wskf0vlnTLoRMC2X5bz5/plPlbF/39GJ04MWj64SgHsLdPfx+toL0xV+bWAebtHxFxZDrZWkOpoZ5z7TcCH+yoYtVxU1hf4rHNpOwefrt7ExUtiGxZgIlSReniJeqoyCleOUTVyAgRGfP+bVBZrjIJFbMz+lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HrbPLtVG0BsY96EXWkh3cIKSMgGwsdClc/YK0BCa+MU=;
 b=doSOKx8i/Wum3HNJP3JQjF2VkGLelJNngbBXRVpOqFJ5tNGs/g2UTe22NtBNtdzrx1D+v2RTyQxMbcF4dsSzR8Jm0DXSzZXj+ezUXEJ6WZKHuWjYxHhyIXAS4mVT7N0959d7bs1W6cH3fYfVqW0/98vs4n7sz5355J2xpl42yjeVcV9rr8ZdHLM4HYec+MaUh8I+ce6SKxDE/t6d13GC/ljLd81uURX9k+z634s7lQPOLAOPYL++px3LwnaVFv/euOk6hbkfp4OaU2DTOPUVzTwKuSUyus3trFyCQUrJ3Lq9+EpXserbvUtDHDs/jU6/DZbYFiayPmIx93gzy7/sZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HrbPLtVG0BsY96EXWkh3cIKSMgGwsdClc/YK0BCa+MU=;
 b=fNh5+I15VtDNQGi7zF0ZfEAlPM8Kq/sC1k6My53z3FyRH+qf3rVIDbYKqPouPk8HJSPI2lbrfswFnPuVdg104Qtjoe1YoNU+M7IvdKY9OHRWhHToySJgqpm1QFwOrwMVbEViEU86KEklkmogAXQVm6TNE/5U6c8ZUWQl6Km2xhA=
Authentication-Results: lists.openwall.com; dkim=none (message not signed)
 header.d=none;lists.openwall.com; dmarc=none action=none
 header.from=oracle.com;
To: oss-security@lists.openwall.com
References: <51bbd9bf-fa31-a1ac-a667-7b4b9b425623@oracle.com>
 <102a76f4-b371-8c54-7dcd-78010b428849@oracle.com>
 <CAFRnB2XvL8zOW9oW6sAMuDcCRfp3d7MFbS6GVTskNghY4U4P9Q@mail.gmail.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Message-ID: <ebd36c0a-458e-c7ca-d3dd-42298abee061@oracle.com>
Date: Mon, 4 Oct 2021 09:17:26 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <CAFRnB2XvL8zOW9oW6sAMuDcCRfp3d7MFbS6GVTskNghY4U4P9Q@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY3PR03CA0015.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::20) To SJ0PR10MB4464.namprd10.prod.outlook.com
 (2603:10b6:a03:2d0::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6bf93deb-8e60-4704-0c8a-08d9875275b5
X-MS-TrafficTypeDiagnostic: BYAPR10MB2966:
X-Microsoft-Antispam-PRVS: 
	<BYAPR10MB296659337316DD8764517BB5E0AE9@BYAPR10MB2966.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	iDENYp8ZxDkLi02V/yEgi6jZC+Js+v3D68+f+7EDeduukXe7jBwtV/ZOm/j287nxFN0dM92uAINUnudwa6TPfCq0ZPYXsJyHQMHw7Wv8Oqtn7s9XJm4/FqAC+dRt4U//EW1SubMEH0ezYhFuJ+5Tdr7QreDHfTUucfHtegc6eFM83eGVghT1RSfQm+8J+Y4D1NyDJe+1hCAorJaxi77gVTj4pcKsLharzQRhDIAYBEm1ygiiLxY3dxMOshv66tX3GdXMYokcDm/IC986w/UuaPcYOuSfadcbaadm/4Aqyc2G1qCX+E80xR63qBfuA3JzL/+nMD8zvThRUh/BpU9CkcCrAIP+bbT5deNNrpFOKDz3eqhuKrQszaLYPiq7scLJFQHQsIXPyrauCRpptLx0gsjBPHeaD+JTHtnvBG6vH9Sze+c/uyhPWHqXlqpcQTaG9BPcB8HzYiDu6Qv/jGeKvSVfgS3F0qBF83/zxgSsU4O47wCWZFSeZPwvJXSgErZelC3SIzf3t8NGOFMowfY3oDwPGC47OR0tkLX6ttMuD2+L68ne+ngIMw7vcyFFeyuafrwoNRRdq/I1YEH1J/9Q5pSlcHPndFfZCUIUGjh2oGPUUPrPF1Iuoxn474Z0nbHEWrVfEz5mYbdVqXbA/9kBKss6blZojYBT7IDIxyslVFUAKKemGq82kxIUIf+U3UynX+6o0TroHGq/eqmVIBOLTjsSbE9tuMAyqEBowrtv9qVzs4PcuN4niJKNQ90xc5avTxkYRYADqboCEwPv3q7Jy0+nQUyYu4kI3H0ka4wlIDRQi/v9+bF+1mUxy/g2bIJFs2g+9prmXs+BpgfsuzI+WXjiUokYmFlvlxqqHCCnvRQ=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR10MB4464.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(44832011)(16576012)(8676002)(956004)(2906002)(316002)(5660300002)(15650500001)(2616005)(8936002)(36756003)(6486002)(6916009)(26005)(31696002)(66476007)(38100700002)(83380400001)(66556008)(53546011)(966005)(86362001)(31686004)(186003)(508600001)(66946007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WTJIMGZIODcrK0VEVnhoeEpqZ0RkL2dIN2Myc0J4d1RWUU9qVTNYcEhOYlNF?=
 =?utf-8?B?VHE1aXBidjAyYTFqRkdQTmx5UWJrN3ovSzFIVktlSkJLLzYrR1JTbllIMWVs?=
 =?utf-8?B?dXp0b242aVBTK25CU3dPeUhRSFQycERKeHhEZzJ5WnFVT0pTeU9BWjgwYWhu?=
 =?utf-8?B?SE5abkNWZEh5T3pXWWxXU2QvK3Y0cE1nSmdJNzA4WG14U0JyVjNudkRUUmZO?=
 =?utf-8?B?UGhrc0FGL05WM3ErYjJqbGo2L3FyeC9tcXJ6Zk1rcG1oTEFDdGtrbnA1NGwy?=
 =?utf-8?B?ZGgyclBublVXNnh4VXFtd0pwZW9lTWlZdFk3NHc2UUwzak01emlqZWxaRlJt?=
 =?utf-8?B?c1k1Qi9RSzk2MUtxaXlrZHhZdzB4UHlLcjFUL3ZpQ1RRY0Q3U0JmKzkxZ1Ns?=
 =?utf-8?B?Nk81clNkUTNBSnY0WDQvZ3Y3TTFsbEhReWdEQXo4VnNFb3lDRGtBYnlIdE01?=
 =?utf-8?B?ejBtNW5UZHMyNWJzRmNFMEpMT2dXU25oMDcvdTBXbWVnZ3pYRlk4ZlpBQkd1?=
 =?utf-8?B?RUFuQW1NVk5CN2JQWko4ajZMT1J3ODFkZE5qSVV1d1hRU2psREZZbmNaS2Qw?=
 =?utf-8?B?eGY2Y3FlM0Q5bm0yaVdrTVZSbEZBVG9DanVwWlFDbTRmWUowaGJEQTZqMCtm?=
 =?utf-8?B?QmRhK2pLZVkxcUN2T3BINHVrVDVGcHNhbjA2anl0VVZxOSt0TFJkODRNT1pq?=
 =?utf-8?B?TkYvdzI0YW42Q3lPZ3ZpT3NBU0hxYVNjanY3RzVYdkRwUHk2cGdWTTZ0Vkow?=
 =?utf-8?B?L0liZTJoYWMrb3ZNcUFWTmxlSmZsV1ZqbzM0czZ2QXA4eCt4a2NGYy82dXZL?=
 =?utf-8?B?THk1anIzZ0JOZkZFcUIwTGpjcVY3QlhvV2ZTSzdXK2Q5L092R1ZMV3cyVXhX?=
 =?utf-8?B?ZFNJV09qUTU0UWJOWkJuUUIzZno1VjZPdXZNMCtxNUpZQ0Mxcm5oODA0eTdx?=
 =?utf-8?B?TGhvWlBIbW1BL096RG9VQ2NlYnhORUdwTzMxT2NHbklPQnI1blF2VnRCbmo0?=
 =?utf-8?B?Y25kOFFldzlhT3BpL0NoRUdEVWNaTU1lM1QyRldXaFdxelBGWkw1TlJFYXN0?=
 =?utf-8?B?K1dwSWRWdSsrZUt6TjRFZ3NpeWVoV2ZIcWRFSXRiK2Q5eFB0ZEFLZjY5TUgr?=
 =?utf-8?B?OVZyb1lPTkVyS3dQUm05NmlHU0dWTWF1QkVvZHk4Zk1lSk1aeUxuMGFTL1BC?=
 =?utf-8?B?MXNaVEg0YWlCNFBGdEdNYTRGUFZwaDhVUnFPYWxQTitlQlNSbG1XejlucVJB?=
 =?utf-8?B?NS96VW5vUUpUTDhzcmJmalk0alo0bEtyeUFWNy9NZ3dTRGlyd2Y4bkh4aWZ3?=
 =?utf-8?B?Sk8zMUxUdlEvQ2dXTDd3R1RXRklQdEk5cGJmcHdhVHNSSGd0MzZtREpHSUww?=
 =?utf-8?B?K2k1ODFoUnBLSWxZaHJyektYOU0vZzYwRldKSVZwQ3Zld1lFdi9lUVVQMlR0?=
 =?utf-8?B?SlpWN2V0Wmpqbks5dEw0WGl1T3pVWDVRNGNLWlpkbmV1OGhnSjh2Q2tWMmxI?=
 =?utf-8?B?VFBtek9vVnNSSHpYYWpOa3hMYTJGN0QyaHltQnRPZmszblA3d1ZXTSt5c1Mv?=
 =?utf-8?B?SlIvdXpiTE5mQ0dIR3UrdDBDenJSSVBJNkY5N01vUHFqWnRiWWk3dlk1L1pO?=
 =?utf-8?B?eDhEWlRubHpwQWtvWEFBMTh5cm52cXhhSjRFVTlrdzFxTlozd3Y3cEJYeXRB?=
 =?utf-8?B?YW0zamc1Yk9GMFphWXJpR0oyR1dhM2V3a09BNTRNTXhLYXBvT2NoeW51NVhQ?=
 =?utf-8?Q?/muMLj31xWvOwHvhb5M5iT6e7v7NRq0AszGdc9I?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bf93deb-8e60-4704-0c8a-08d9875275b5
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR10MB4464.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2021 16:17:28.2937
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XrQUSUjtQsAXw2gYbYqPiuz5ncLa+NmTvNOXltti9Ax63W2o+fmwkbhbNdVSvU4LV7MwsvKSOBkFO7xF3d+pzmMPPU/nqeoxBnnhXBxhHWs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR10MB2966
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10127 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 adultscore=0
 phishscore=0 malwarescore=0 bulkscore=0 mlxlogscore=999 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109230001 definitions=main-2110040111
X-Proofpoint-GUID: CYz49hkoG94Na_zrGh7v5ZPA7rB514oe
X-Proofpoint-ORIG-GUID: CYz49hkoG94Na_zrGh7v5ZPA7rB514oe
Subject: Re: [oss-security] 3 new CVE's in vim

Those incentives for reporting bugs as security vulnerabilities
haven't changed.  But previously maintainers had more incentive
to push back on claiming a bug was a security vulnerability - its
often more work for them to put out an advisory/new release than
just checking in a non-security fix.  Certainly I know as one of
the X.Org security team we'd not list things as security bugs if
they didn't let an attacker do something outside the bounds of
expected operation - for example, the X11 protocol already lets
a client terminate the connection of another client, so a bug
letting you do that is just a bug, not a vulnerability.

	-alan-

On 10/4/2021 9:04 AM, Alex Gaynor wrote:
> It seems a bit like huntr.dev makes an incentive, that has always
> existed, explicit: There are rewards for getting CVEs issued. Folks
> put them on their resumes, include them in audit reports they do, etc.
> At least they're paying for fixes as well!
> 
> Alex
> 
> On Mon, Oct 4, 2021 at 11:50 AM Alan Coopersmith
> <alan.coopersmith@oracle.com> wrote:
>>
>> On 9/30/2021 7:39 PM, Alan Coopersmith wrote:
>>> I haven't seen these make it to the list yet, but three CVE's were
>>> recently assigned for bugs in vim.  [I personally don't see how
>>> there's a security boundary crossed in normal vim usage here, but
>>> could see issues if someone had configured vim to run with raised
>>> privileges for editing system/application configuration files or
>>> similar.]
>>
>> I do note all three of these were submitted via huntr.dev, which offers
>> bounties for both reporting & fixing security bugs.  As a maintainer of
>> an upstream open source project which is struggling with finding people
>> to fix reported security bugs [1], I do appreciate the additional
>> incentive to provide fixes here.  But as a maintainer of a distro, I see
>> a mismatch with the incentives here, as you get bounties for accepting
>> everything as a security bug and not pushing back, and flooding the
>> distros with CVE's - even if your distro policy isn't to handle every
>> CVE that applies, security auditors will often make your users query
>> about every CVE that they think applies, costing your time to respond.
>>
>> [1] https://indico.freedesktop.org/event/1/contributions/28/
>> https://www.youtube.com/watch?v=IU3NeVvDSp0
>>
>> --
>>         -Alan Coopersmith-               alan.coopersmith@oracle.com
>>          Oracle Solaris Engineering - https://blogs.oracle.com/alanc
> 
> 
> 
