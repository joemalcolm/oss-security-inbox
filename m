X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1125" "Wednesday" "17" "March" "2021" "18:36:29" "+0300" "Evgenii Shatokhin" "eshatokhin@virtuozzo.com" nil "37" "Re: [oss-security] CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil "3" nil nil (number mark "U       eshatokhin@v Mar 17   37/1125  " thread-indent "\"Re: [oss-security] CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9776 invoked by uid 550); 17 Mar 2021 15:45:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5808 invoked from network); 17 Mar 2021 15:36:44 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YGXva3r59Vq2oKFykQ8shwRCwgJIjX9STyKdO7WMpBQsqG0RgU0jocZvtnnkLpr1KIBflyslgpIjgA2rwamHjc1ChZcyyZLJbKz6hmNYmugd6NTNrxphgag1MdsYpOArHltBZltulvhWnqHFnp3EbfRkOLkkvFmhqDLICBiNdsOYq/Wb/l8P5wsYZssYvfNE02K5UQ723TXESy62fyqgUy2npq3z7CQt+JprHPEr+sm2f1hT9q7ngoUbiJ6cvd3VjCz8OOSi+Wo+asrCRxeumEmX8Zk7PudlG6XsZKSRm0EHg/TsAU/fpoEg8O2k3UymJkhpD3tRTgIMSNKtF6CA3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jRI8oaLR2It2+c4QrHaClzBwMCsJnhyZVwvzxaJjNgs=;
 b=mLHaIWjr74CIhqP4ozTaD3nh1UhuZrPBldANtFyRPyDcqpbGlx7ZMUdrOOsS2YlXkluxNe3fOfCTafvuDIgcOKnARslpezEIAY2MoepHWrQ4mGK/vDNDrHtDF8L8P6x0lZZyK7Yd0vWUozqHTOiDqbsP0XM7ywq+Hj8APnwpCmNBUAL5mcOSnm2QV99zPQxUDNrKZ7d16LwNaacc4ZqouHjeOKLSL2SkfBoFbTw/Tn50tqYpvVne1jvs7Pe4Ow9M+pkuj2KtkyBb6IovXOnMaMtkNAi2wXxtOWBEDDnYJ3S7/xbvJ2V/Yrz+Kar2wc2qvdLv3wa2DrOzSTfBICPAJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=virtuozzo.com; dmarc=pass action=none
 header.from=virtuozzo.com; dkim=pass header.d=virtuozzo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=virtuozzo.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jRI8oaLR2It2+c4QrHaClzBwMCsJnhyZVwvzxaJjNgs=;
 b=Int6tQVn/ltcYA4RdrH6a5GFfVZRmeFulkQvMWEmQ64C12fTXmqntWzGXEDCov8SEaMKunEFcKq3Jq/flwwWLZcuxd7MHeOq3VR3m3Y1KQeugKrBVNy/454X8v7iN7s5kmRMrjejMakqFGRTmJ7Qd1NBs9tUlrFJBnktd1SwM48=
Authentication-Results: lists.openwall.com; dkim=none (message not signed)
 header.d=none;lists.openwall.com; dmarc=none action=none
 header.from=virtuozzo.com;
To: Greg KH <greg@kroah.com>
References: <CAKx+4-qgvO4_R8fTqwxKLqwud42wUkG3V2POGeXE6C6Bv+zrxg@mail.gmail.com>
 <YFIdcSI6NvjeqFKp@kroah.com>
Cc: oss-security@lists.openwall.com
From: Evgenii Shatokhin <eshatokhin@virtuozzo.com>
Message-ID: <ab4fb69d-bbc1-0ee7-d3b9-58871ea096d8@virtuozzo.com>
Date: Wed, 17 Mar 2021 18:36:29 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
In-Reply-To: <YFIdcSI6NvjeqFKp@kroah.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Originating-IP: [85.249.47.245]
X-ClientProxiedBy: AM0PR04CA0102.eurprd04.prod.outlook.com
 (2603:10a6:208:be::43) To DB8PR08MB5019.eurprd08.prod.outlook.com
 (2603:10a6:10:e0::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 76770cdb-5e8a-4cc0-4430-08d8e95a6fe6
X-MS-TrafficTypeDiagnostic: DB9PR08MB6588:
X-Microsoft-Antispam-PRVS: 
	<DB9PR08MB65880043956786C2D427872DD96A9@DB9PR08MB6588.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:873;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	aosK3Hr0ZKyrHzSynwRh+ZwSKwn+5mde+iNzMJDv3I4zKvyZbY5N9/vtoltvYVppEFIHS3BKRlMu+KWJzYvSyBebyjDJjmNhbGyG1iLiJK7teb4zaNhZo3DLJekL7+1xMIDu2PMBLqQbAafPQmfeRw+9JJXvRk1wmXMJKPdvQqY7kItafb50nvPWowPRZfP8ll7x4jSpYJpmuBHsVhThACOs9yuUYYM/dh3hBWx3GrGRfUfrGhEw4/6Y7ELDmTxbiPQ/L/o/V8tiYCM56ABnaAWa+kVNrLZAwHk8xwTnppOn3xucoTH3BSsKNUBY/ImbyGAf/hRarNZ7cWFV43oXFG+AA7YqwFQSMslNy4Rs7G582KuRYAibz/RXHryWt4AcH38onSEvUgxzXlptnDTl/oTjtPhLcHppd5NOkjkWFWVYiM1ngpJ4G0RUcNr2mvMBLUa/y9x73aqe9g8Fxh6jOgzCGvN1SK7p0zyOHOZdEzpeLFdQXUexJuhjUrukFy2fiUrPKFWb7/QZ+1lLF28XmWuw6fNUBSPCZ+lUb1dHftpi8SXeCoq5Lstqd/9ccUKx0zKBS15VunPf3QUSLJJHTl/vTc77Pe4SeFfS4E8i0G4P2yniakjVvnTMC5QC6cvKrpuT/73Rm4ncMqzv9QPbjQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR08MB5019.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(39850400004)(136003)(346002)(396003)(376002)(86362001)(5660300002)(52116002)(316002)(2616005)(8676002)(31686004)(478600001)(66946007)(8936002)(4326008)(31696002)(6916009)(6486002)(53546011)(186003)(16526019)(36756003)(26005)(16576012)(66476007)(66556008)(956004)(2906002)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?cVNtdkJiUHhUMkhrTFRPZE5IUXhBR25GeVptdG5qTFpoNnhqdEJZS0diNW9i?=
 =?utf-8?B?RHoveDhSejJUQTJuaE8vNkhSSWQyNHZENnZMZEw2aW1LQmhQeVE2UUR4cnF4?=
 =?utf-8?B?TktsMEZxb29iTlkyTWZ6VjBNcytuaHloMWNGeUN1cVd6MEdyY0Z5a0pJUzFy?=
 =?utf-8?B?akppZTl3VUhBeUlkTXJCdExXNHFSSlpaME9GY0xPbEdJK21TVk1KS2ZVWXR3?=
 =?utf-8?B?OFVWVy9VREtjUlZvQmVoY2VBaVd1LzdSZXVCS0V6NGJLMGR3azM1THRLNlIv?=
 =?utf-8?B?djE0UW04OUVBOHpqUFMyVVdKRjlXNTV1N3BKZ014NjFZbmQ0MWZ2ajk4a3g3?=
 =?utf-8?B?NlNiUng2S3l6Q0hQT2hVajh5Q1RoeHhnMTNhbnFGMXRMaUFFYnlRaVNUaEZB?=
 =?utf-8?B?TkQyamhJN1M2bWppamNzZlRENW9hN04reG1UNTI4alphRmYzclJzQkVVYmJt?=
 =?utf-8?B?VEFLZUxLajhINlhGVnIzYUJ5Nk5FUmNwMWZqclFJcUpuS2tQOFdyck5MVTFL?=
 =?utf-8?B?VUdPbitUSGQyZGEzUzhBaEhmK1lpblZpMVRDUzJJc1V1d3lIQkY1TUt4T3pQ?=
 =?utf-8?B?bEFLWkIvR1Mzc2hnUnF5Q0hGcjhzY3JMUFFNWWUwMjdYUkU5MkZFdTd3SWdq?=
 =?utf-8?B?WktteS9iUVFVdmNBR2M1dlQ3Vkt4Um1KaTFPaW91YXpJcWNlSjlJQXBSQzNl?=
 =?utf-8?B?c3ZmRjIxc2dYMDc1Zms0WmJnWkNOT0RRZXlJMjhvY0h6S29IcG5LMllOd0Vx?=
 =?utf-8?B?L0xEaVV3QThaeUQzR0ZiSE9aVXhnMGFOUXNKTkNCbUJyTWRLN3JwWnJCdXlP?=
 =?utf-8?B?K3hnRER4QkIrZ0FNazhpSGJxQ1ZYeXRjOTJ5RUVjV01QL1YrQWlkMitwSGE3?=
 =?utf-8?B?K3RxaTlWS3h5STlYTTQ5SSttT2JYTHJ5YkhhMkJHeXpYSGN3eHExWVVrWlZa?=
 =?utf-8?B?eWowdmpITm5GWWdwRi9SbFBNbXZrdndoTU8zaURkQUFhc1BlUm8ydnlsaWpY?=
 =?utf-8?B?cEVuK3RwdXo5L013V1FTUTV6QnR3TERZTzE0czdpMU5LMElmZGJ6Rys2NlNv?=
 =?utf-8?B?RFlEQklTTW4rUUlrSzNhV2I1a1V5M2d5YzllSVk5S1FScVZ1YjN6SmMvWXI4?=
 =?utf-8?B?bXErMGxQTGRhMnA5WlJ4ZVRiZklWcFo2YWtqbHdNNm5YT3YxV1Z2d3gyVjZt?=
 =?utf-8?B?SktEcldneEFMZlExckIwQlMyeDVwUHJXNFcvN3dUY3k1TmM3Q1F5T3FaZzEy?=
 =?utf-8?B?Y20zcmpqd3ZZb2dOcVpSK2lpNUpZQ3kvT0JpT3dsL09pQndDVUJuV0VMSG1N?=
 =?utf-8?B?YUVKLytSNjUvRUE4cmdQUEp2amQvTHJqOVg4OFlqYTRaNGlpMGlMUTE1Ukty?=
 =?utf-8?B?c25veHpldm9RZTI0bXZOcWJiSEl2RlovVDZMUUpZRWNxaytDVjB6RVlJR203?=
 =?utf-8?B?SVlEZEFBVVJWRFN5dE1NQ0RHdVFYQUlWU05lOG9hNHNrWWpYbnV2Q0Fza1VY?=
 =?utf-8?B?dVdhMEZxaTVrSWFpaVJRbVFENEFvNnd2eFk3Y1hRRXZFdzgyc1pmVHVwbXhn?=
 =?utf-8?B?OEJ4Nyt1eGM1QWxEUmRqSnBjdXN3Vi9jVVpjb1BBaFUvTDdsa2FXUnRQY1J3?=
 =?utf-8?B?Y3ZDUjZSZmpZQzQ2VlVpZWxPd1FqRE1Xbi9Iand5eW1YbWlpU2pqaWNOWEtn?=
 =?utf-8?B?S1hCWUQwa0t6NDJNUXdwdGNwSmlzUUpoR2hFSUY4KzFvZkZrdnBiaHh3U0Rz?=
 =?utf-8?Q?TmhqdeLEvGQCMcgjmmGa8Xon7Teh/RJb/b/6rZw?=
X-OriginatorOrg: virtuozzo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76770cdb-5e8a-4cc0-4430-08d8e95a6fe6
X-MS-Exchange-CrossTenant-AuthSource: DB8PR08MB5019.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2021 15:36:30.7844
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 0bc7f26d-0264-416e-a6fc-8352af79c58f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kJlbEX2SC6hAKePm06uRKAKkwLoObu5wbHHcy0mjTae/OMGOUxx/+9ckJbAQsCe191S1JJvPPDnmfs8iIZ4uCNFiXR7TJUzygdUEACu68Ts=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6588
Subject: Re: [oss-security] CVE-2021-20219 Linux kernel: improper
 synchronization in flush_to_ldisc() can lead to DoS

On 17.03.2021 18:17, Greg KH wrote:
> On Wed, Mar 17, 2021 at 07:45:59PM +0530, Rohit Keshri wrote:
>> Hello Team,
>>
>> A denial of service vulnerability was found in n_tty_receive_char_special
>> in drivers/tty/n_tty.c of the Linux kernel.  In this flaw a local attacker
>> with a normal user privilege could delay the loop (due to a changing
>> ldata->read_head, and a missing sanity check) and cause a threat to the
>> system availability.
>>
>> 'CVE-2021-20219' was assigned by Red Hat.
>>
>> Acknowledgements: Evgenii Shatokhin (Virtuozzo Research LLC)
> 
> Really?  Not the tools or people that reported this issue and fixed it
> in the community back in 2018?

The description is misleading, unfortunately.

RedHat backported that original fix (commit 3d63b7e4ae0d "n_tty: Fix 
stall at n_tty_receive_char_special().") long ago.

I just found that their backport was incomplete: one hunk of the patch 
was lost. This lead to the problem I reported: the reproducer program 
caused n_tty_receive_char() to loop forever. As a result, other 
processes could hang too.

Regards,
Evgenii

> 
> {sigh}
> 
> greg k-h
> .
> 

