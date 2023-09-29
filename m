Received: (qmail 3347 invoked by uid 550); 29 Sep 2023 20:19:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11297 invoked from network); 29 Sep 2023 19:57:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=juniper.net; h=message-id : date :
 to : references : from : subject : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS1017;
 bh=/xtTf5P+LNCDpMlLVq95kHolJMv8VAZyjotkOlWmFCY=;
 b=uhME66ACsyhoU5HOpXJLCQk/wNn0sxU379mg0fTH6oMQvWOexmugRI8IS3kpl06BL3af
 +XNrvOYmZBb9HOXF7KmZAc7fHCxKjBEoUHEDSSCLdm9IPzhSvU/c1LPzgU46BxTQAfS9
 jzpywZoZ6iTjXbIMl2DmxXMFPdhI9TJyZ1VjTawOQgY/jcCHBR0N8bjq+vdxUe4iRsaa
 Bsr/F+gg7sLW/Y1UOqDM3QLTA4FJzA8/xImD1F7ufGZxBQ7266IzLBFxT+zWt2c6N4NX
 rzzXfR+Mkk3KDvf194l8q6Vvsm+H2KYmKa6MuON4C8efWECU9K0Jv+jndFm/T8rvTeDq ow== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e+Fg1pIks7ux811KHT/unuWVthH/MsWrCkImlGQVJfHLpjCcXy7+NxYyPuJ9dEcgHdXFPgJV15a7rlz0nMgF4W+gQV7iklH9AFlJqHxa37gH34mszmF8oQC0CE2lMHgkj3aqYW/pZwsL8sRdyDYbVRT4qSP+W88OmQN8imoPBol5oXn89yswTBfR4TNa6E4pXxsqLHgs72aAjDw6CzfnhRYwo6bB8wGEET5sjRLOI6hILYyCECf6bLWEfVSQpuzLQhzOUPlkKUQ0BFGg2fV6nGgiegc8iV6pOG0shQgmw84XiNLO3Iw8FX84GaMd+0TAI+oemkkfMb7nmhn4UR4amA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/xtTf5P+LNCDpMlLVq95kHolJMv8VAZyjotkOlWmFCY=;
 b=CoDQjl9wBhnhfMN1MHfT2tqvHAgjjMNidA8lKzIhjeTR70h4GNiRo/iPvXY1Oufpb5ngFkT/sLzdYRERS8HcE7v6T/1Ogy+FXZ+yJIRckXjTCqW+mnJd0b/8I190rwgYvGudtTeLcT8iYjRMahw7AyeHQUHFmWrdbsXqFjGUbpZ+RBAvfUgSF1qSTyD1eQu+58TCXbPldtLjyUyVGjmOC6IYXwCucMXK/PS6GQblAAzaWa08JOh+NddVPewjrSonK40OU6I/j/t/8iJpRMnBzz9D22VYSiUFwdssKhFdXwVd8bWHt+EgHuldysHM3Mwu3EZjaN9IyAk2410SYBtq2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=juniper.net; dmarc=pass action=none header.from=juniper.net;
 dkim=pass header.d=juniper.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=juniper.net;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/xtTf5P+LNCDpMlLVq95kHolJMv8VAZyjotkOlWmFCY=;
 b=DWXfgHyRvGndyDh4h1hbO54ahAQlelIOrBxIS4Sh+wtp6P4LK3bm86YYp/EsYiT/t/8i3lpIzm+oBtUC4yO9TOrFBq0eBS5Fc1DeNjSAMjeQWkbEpTkLMAX/cZr96k2eDp1h0H3Er7JK6HhE4UprqKjFefYYFoxy2wwwFw2H2AE=
Message-ID: <7f60d2e7-59ca-13cd-9da1-473bd70dd5bb@juniper.net>
Date: Fri, 29 Sep 2023 12:57:37 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.15.1
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <bd99e07a-8d8c-4652-9089-7c0fc2e86409@oracle.com>
 <ZRXlPoozp5n+cWv1@itl-email>
 <22398fb96f04bf431b3ed0e4778e1cfcd64046ea.camel@orlitzky.com>
From: Travis Finkenauer <tmfink@juniper.net>
In-Reply-To: <22398fb96f04bf431b3ed0e4778e1cfcd64046ea.camel@orlitzky.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ2PR07CA0004.namprd07.prod.outlook.com
 (2603:10b6:a03:505::10) To BYAPR05MB6470.namprd05.prod.outlook.com
 (2603:10b6:a03:e7::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR05MB6470:EE_|SJ2PR05MB9683:EE_
X-MS-Office365-Filtering-Correlation-Id: 7f7e5f9c-7fd5-487d-f5d7-08dbc126558e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	a337T81HayPCa7td7q8DYERnxumsmTD/7MzOBPuH0Qv3VT0IT94ZNN5CJZvtBan8nEkGqdfkSQa6RJj2MW2g7PeLewtd81tgqpAqOcg4WUJnSC73Ck2rjLXjup3dtkprWaQi13B4u6ZhT1J+ngEMCSz/JSV4xUg2dyLK3TNn6HMow+7qOmvGzkXiTMTCzJNnxtYal1axTcsOxpcSc8kNxlYkPH+U1gy7FE5iQuthXuMNlyLK4LeY3m8Ybiy+CwdnTqDuyt/d+GqZGBDc1kZxdndCLXagNKnB0QdyuUAsp5BaLYDSG5YjpzGCP86NMiLQkXd4CpiJjqR8FDjf1jYhNG3KJKDWsKj6gAC1tt5CHmjr9o6ueyEZEBbFfihrWW4hy5Vl3Ro9OP4IK1J6U3Ml1qiV1DVnLkCcSpeoo/xpO9bYBbbnkFhzyC+1KcezLdYoEHnRo6gzwTwZPhw9NMmMEXDNG0kHmVvy/iwQaVHIbAcj/WpFXmbTmArf6ZLb2VrwWCTEvZ4s3NPh3SrT0sBHKUr5opcOOL2wMfATDndkWCZMyGqzQcpbj+MOlxp184bb57uqSwLGma/+mJbZ01peX89l89d3WAIbtti3xQISYyBe17KgoSDLsinpo8QvAk66giD+LmFXVUl90Om5HkTR0TgkwcdprbhejsmK/tUV74jDhvw83t/MW6+mHwuva8QC
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR05MB6470.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(39860400002)(136003)(346002)(376002)(396003)(230922051799003)(1800799009)(451199024)(186009)(64100799003)(66899024)(6512007)(6486002)(6506007)(53546011)(26005)(2616005)(15650500001)(86362001)(38100700002)(36756003)(5660300002)(8676002)(8936002)(2906002)(316002)(31696002)(41300700001)(66476007)(66946007)(66556008)(6916009)(966005)(478600001)(31686004)(83380400001)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RGdsVCs2Z0crNWdEOUpRNXFyYmhub0JmcXFDOTFGQmwwc3hRRjZoYVFyRHpG?=
 =?utf-8?B?Q21uNlRLdm5GbnNKby9qUXpCa1lOUzQrMkNGaG5lajhLM1ErT1dxbCtWMSsw?=
 =?utf-8?B?THpOMkNCenQwRmxMVWFqU3QrWHJxb3Noai9ZR0ZKaG1ndXRmVUR1OGgwdE9W?=
 =?utf-8?B?bGxkME83VlNKU2JYLzRIeDUzUVcwaXNjc3R6RklnWG9VaDdPdXN4UWUyYm5x?=
 =?utf-8?B?UWp3QnlhUGd5dEtKbE9uT0lYZkpLek0zcHk2SG82N1FJSFlQbGVjQTRoVW1m?=
 =?utf-8?B?STFmVkxRYmorK0RxWDV6YVlMMGI2a0RjVlZPSW1MZG9LY2lwSkpacnJuZUlX?=
 =?utf-8?B?L3RKVGt6R1E2T0NzWDVxQWFvS2pweFZIRW5IQnhkYTZzTk5oUUtoamQrR1Ju?=
 =?utf-8?B?UFQwdk9uWDFUZFpZK2xMdGtnd3ByUXdQcFVMb3doRzRkUnp1c2h6Q3RRUkJa?=
 =?utf-8?B?VW8rVmVLQnFJcnZ6OVE4cUxsa1N6ZDBtazRwaW5ObU5qQUFDYlpYK0FZWXVR?=
 =?utf-8?B?dWx2ekx5RnpzbkZoTkF4R0FsOHpmZmRNQmxIa1Zyd1ViUVVkdzZ2Y1k4MlJp?=
 =?utf-8?B?NVJhd0ZxWmQ4YnA3REpyS0puMjlVaWkvbjVuRUcrYUNsc0lGRXNMOHo1SUtM?=
 =?utf-8?B?UlB1RG40dnBMVUwzTE8wUzAzbFdWdXVKMnpVS3I3SzZHZjR2SG9VYnJmcmRz?=
 =?utf-8?B?QVNOVVlUK3JoYk4zQ1lUQWRCVVlRaUZSb2FFektGSEw5a0RRbi9wRWY1QlIr?=
 =?utf-8?B?MDVZT0RHeGJpY3JZbitHVkZIRXh1RGxUQnBYQ0xIWG81T3A1aVFXbWRJeXFr?=
 =?utf-8?B?eGY2THg0aWNKak95blBYZmc4YlRaS0JqdmhYZHQ0MnRDVE1nb2ZaMmd4SXc2?=
 =?utf-8?B?VWRuWVh4Ymh5N2ZDUDJwSm5HaHU2WEM4M0ZkZHdTNVV4MW5rNmxsVm1YRCt2?=
 =?utf-8?B?Sk9OYmNaRlJCeWhyNjBMMlhLUXkxUUt5ZytPYkFmdHpVMlNMbnI1Ymt2eity?=
 =?utf-8?B?MlQreDRJY2RtbXQxUDAyQlovZTNRTlBlbm03RlBVb2ZMTzFISzdrMkNmRUxj?=
 =?utf-8?B?RkMvbkZldUxjUDQ3RXdFdUtRVXgzeDVaUWU1WkErTGxYN0FZQVFhVjNSRUpn?=
 =?utf-8?B?cFNHQTY5cVlGbERZaHMzK3ZUTHQ3MXpxMzYwNXN2dVBNWmIvZHVnMHNreG9P?=
 =?utf-8?B?RVNWank1ZkRkRzZRdUNUTlhFVjR0bGY2Qmd5MUZFNUUzT1dCd0poR2Y2QzNa?=
 =?utf-8?B?QmdzUjlwR1l4S0VvS1l6QndURGx1NEZ5Ukd0VzFlVHd2Y1FMVmdQZk5YbVdw?=
 =?utf-8?B?RUlJQW1JbVJobWljR2Nvb1A0QjNmbm94WUF1VGxTVFBLMmRkczBJOUFBeEdo?=
 =?utf-8?B?cW52MHRZdlpKR3piUVBNSlY4eTg1clhoam5La0FOcnZwQ0dZeVFtMDFhTW5P?=
 =?utf-8?B?Vkx2S2ZjMjlqU0taNExsQ01jK09tT2RVMjVVTkVWYkpSL0NMbUNQMmErbjhT?=
 =?utf-8?B?M0N3OGJVdGIxeGFMR1lKdE9aNklub0dzTTNNNEI1U1J3VkR6UkRxNXUvN29K?=
 =?utf-8?B?ZnpOc3NsSVk3UEV2SWRIQVRic1huZ0d3Mk5SVW80bHVlYnRqZE04UDJ1OUw3?=
 =?utf-8?B?OHVacUhCVEkrWXlWS0cwR201Q3hQa0M0OHlQOU1wS1FRZ0FyVnozMUdNMEVE?=
 =?utf-8?B?U08ycEpacGRmNi9meHFVeEhZYzh2Z0kzb09yODRnYzlGM3FySzNOdDhPZitH?=
 =?utf-8?B?ZGljL1Q5TW1NV3lpSElqcVJzQjd2b0t3WHlLWUJLalVKdjN4SFdtdVZHcEdo?=
 =?utf-8?B?SjVmN1gzY3VSanh0LzNmSFBGNCtFRmF0VWs0WGlZR1NrNnlUb09NT2lqbHIz?=
 =?utf-8?B?Y0dqMzkxN0hlQlNvK3FlUjFtaGFhZ01HbnN5cFV5RDFyK2FWQ1NvSi9nRTVY?=
 =?utf-8?B?d0V2bHZicEkrUFB5SVd6aEo1U0dKc1RheXNLOUhBSVE1UEk5MWFQNGwwYVJx?=
 =?utf-8?B?N09YY2MyUVZxUzRnTDloNUpkQ09KVFkxUjliYUVOanpGcFliWEg1Y0VMTjdo?=
 =?utf-8?B?MGUwV0NvQnJwdmcvMTFNeGhPSFY3L05Bby9GWUxMSFFYRFp0NmNnbkdZTEZC?=
 =?utf-8?Q?RzeLyoL+80/t2a/k3SZ/NfD52?=
X-OriginatorOrg: juniper.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f7e5f9c-7fd5-487d-f5d7-08dbc126558e
X-MS-Exchange-CrossTenant-AuthSource: BYAPR05MB6470.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2023 19:57:39.2677
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: bea78b3c-4cdb-4130-854a-1d193232e5f4
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XFmoXC2WY3Q8nOapAX2x1Z/1N6LVqSgiOpTPZrwFXEzNRRv9/DnwguF9B3amx9Au22h0EdqJDbkwYlozZsxy4Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR05MB9683
X-Proofpoint-GUID: HflsYdKX4bhuKG5qgruWRe1pnoOlvAgP
X-Proofpoint-ORIG-GUID: HflsYdKX4bhuKG5qgruWRe1pnoOlvAgP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-29_18,2023-09-28_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_spam_notspam policy=outbound_spam score=0 clxscore=1034
 bulkscore=0 suspectscore=0 adultscore=0 priorityscore=1501 mlxlogscore=775
 spamscore=0 malwarescore=0 impostorscore=0 lowpriorityscore=0 phishscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2309290171
Subject: Re: [oss-security] CVE-2023-5217: Heap buffer overflow in vp8
 encoding in libvpx

On 9/29/23 6:16 AM, Michael Orlitzky wrote:
> How long will it take for rust to quit changing the language,
> standardize itself, and enforce some notion of API/ABI stability? The
> thing we've already had with C and C++ for decades? As a result of the
> language's instability (and their attempt to hide it with a "package
> manager"), every rust package wants to install a gigabyte of bundled
> dependencies that are all pinned to old versions.

As of the 1.0 stable release of Rust in 2015, the language and standard library
API are stable. Code you write for Rust stable 1.0 should compile with the
latest stable Rust compiler (currently 1.72.1). Backwards-incompatible changes
are made when required to fix a soundness bug, which is very infrequent. When
such changes are made, a tool "crater" is used survey the impact of the change
on the package ecosystem.

https://github.com/rust-lang/crater

In order to allow opt-in breaking changes, a Rust "crate" (package) can specify
an "edition" (similar to a C++ standard) which may have some breaking changes
(and new features). Each crate specifies its edition independently. Your crate
which uses the 2021 edition can depend on another crate which uses the 2015
edition.

Having a stable ABI has pros and cons. You are correct that Rust does not have
a stable ABI by default (although you can you can opt into the C ABI per-type
and per-function). A stable ABI is convenient because it lets you link to
libraries compiled with different versions of a compiler. However, a stable ABI
has performance implications. You are locked into that ABI even if you realize
some decisions don't make sense in the future.

By making no promises of a stable ABI, the Rust compiler can use optimizations
that would otherwise not be possible. For example, since the 1.0 release, the
Rust compiler reorders struct fields and uses "niche optimizations" to pack
enum variants into unused bits.

Also, I will note that the C++ standard does not promise ABI stability.
However, in practice, C++ ABI does not change often since some C++ committee
vendors have just been very quick to veto changes to the C++ standard that
would necessitate an ABI break. This means certain bugs can't be fixed and
optimizations can't be taken by C++.

To quote the blog post "The Day The Standard Library Died":
"But like everything, stability has a cost, and the entire C++ ecosystem is paying it."

https://cor3ntin.github.io/posts/abi/

> Software engineering is a fractal. Memory safety inside a language is
> obviously desirable, but not if other design choices force everyone to
> go back to bundled libraries and static linking. The state of rust is
> that it's fun to write, but awful to use. If you want me to switch from
> C to another language, then projects written in that language can't be
> a nightmare to distribute and maintain.

I agree that it would be nice if Rust had a better story around dynamic
linking. If your "product" is a single executable, then statically linking all
of your Rust dependencies may not be a big deal. However, if you are
distributing many binaries (such as in an OS image), then you would be
building and packaging some libraries multiple times.

There are workarounds like putting all of your Rust code in a single dynamic
library, but that's obviously not ideal or always feasible. You can also avoid
the Rust build tool "cargo" and directly compile dependencies to shared
libraries with "rustc", but it's not easy to compile Rust code without "cargo".

> The situation is identical to how, ten years ago, we were going to
> rewrite everything in Haskell. Haskell has the same pro/con list as
> rust. But they never figured it out either. Every new release broke a
> ton of code, and so version constraints became so tight that you
> couldn't install more than a few programs at once without bundling. The
> resulting treadmill was never-ending. Once "this is cool!" wore off,
> everyone was left with "this is a waste of time."

I would say that Rust does not have the same pro/con list as Haskell since
Haskell does not have the same C-like performance as Rust and Haskell is
probably much more difficult to learn for most people.

As mentioned above, Rust releases are backwards-compatible.

I'm not that familiar with Haskell, but in Rust when you
specify a dependency "foo" version "1.2.3", you are not pinning directly to
version "1.2.3". You are actually saying "I depend on 'foo' whose semantic
version is compatible with 1.2.3". That means the dependency resolver may
resolve "1.2.99" (patch fix) or "1.99.0" (minor version bump). Hence, you
don't need to manually update your dependencies every time a new version is
published.
