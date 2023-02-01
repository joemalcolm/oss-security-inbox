Received: (qmail 19661 invoked by uid 550); 1 Feb 2023 23:04:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19632 invoked from network); 1 Feb 2023 23:04:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : from : to : references : cc : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2022-7-12;
 bh=p9FDLhAdr7cg8U6K3bFyVc9MJpKxvTfyDa6BzKM/pLQ=;
 b=R8te/oSHTypNz1hG1LoKYcQW/pMqDyvk+50FV1q+cPKk3DV64+NovQ5ctDHcBzdoBoNJ
 POostlk5GafNBxgAlPku1w7NxiI3wvByyCFjffPsGS+o/SZjqA9BYHfBchxrgEOR7uFc
 w7Z+pUZv5p7Zd88DDIVPOCbCypz7O5+cXKleAnLPRkypAnSWM/BCBWTCEDRwDZK8IvzM
 SK5uFxWpKobsVM7HBoiRKcYs8g1ssv7lI10bFI0+rRoAn4uwtCH2CFUtz7YlVvAIUqHv
 g1oKlx0eyTkQBZTStGkdiga0XN7li6yeY4MzK7mSweut+ayy/jm569KdQyjnVN5hpb9E AA== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j88c1mgKD7FKt9S6O2nirdwzeZG7bYoYw9ioKDP/sY6V8CKDpv491orefhVCbZThWKpocwNCGSa5JvsmMi0StdsXvLBPV5jrO1naPmZTtpj2DW3bjXsFSCekRO6U255xwZXwZ0Dh+AkMrtSWZA5S0ywu+reBPQGlRYPRumZhY4vGyesuTHcJT94NruPrlSlPHUWQHUgtnIyRbWU+RaTwUo/36ajncMypyi5gJAUT3Gqla4ZsqXWgBbAm8mcmBQVJaiCe9t8iA91zVa/gbdBhah3QMIrfjmniCtCr6DrrsCC3VJqdr/n2p3h+EfqpPw7CVJbL6P2HS66mLGVdE0zODQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p9FDLhAdr7cg8U6K3bFyVc9MJpKxvTfyDa6BzKM/pLQ=;
 b=gMMqxLL69S6VacxDV5vtNXS+JHhB9DosDuYLI9B9FAWQd0YRKL2Nzm6cLbZx+axi19SVI2wCBrRBfpZhwSxOgtL+ge/SP9oBUMNl7JV+NlosSxrGip1xhTOckP4dh9C+7oQGlk9a/EmZbKBazA3wAwJH1uTGyRbJo1ix/TRok8DeYZS538WpiIeX3QT0toKyfme20CXEGTD/DjEbhbDo7ewqBGtrEhO62dmmT39mXBsDOjaUBF+ROpZl9a+M59gE5NNOTbGPwLRI1GFZpgk4YXlyJ8/ROtjQ6Bq/xl3C7b8M9iAIkk99LMfd9n+Dy9yfYb0TEvABsdfb/fllyUQc4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p9FDLhAdr7cg8U6K3bFyVc9MJpKxvTfyDa6BzKM/pLQ=;
 b=xMyVYcRKP4m+dCmM1K9fHCyj4ArA+o0N1Vmv7fpYNS4S1bYDPETjEnmlbKmVYbymABOJaNBMttBf8edQs00LDnZJCZ08CX1SupYdGqYlkWDa29AtkwhaFdaoIjn2qMEYadf4Zg+Hs7lentfBA1XZPwll6cVGqSJs8oRplGxDamg=
Message-ID: <c06293a7-27cc-908c-df04-e15fb982f83a@oracle.com>
Date: Wed, 1 Feb 2023 15:03:50 -0800
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
References: <20230117164100.GA3834@also.us.oracle.com>
 <7b3fdf01-8189-567d-bf15-ba8478eaba79@oracle.com>
Cc: "X.Org Security Team" <xorg-security@lists.x.org>
In-Reply-To: <7b3fdf01-8189-567d-bf15-ba8478eaba79@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR05CA0109.namprd05.prod.outlook.com
 (2603:10b6:a03:334::24) To PH0PR10MB5730.namprd10.prod.outlook.com
 (2603:10b6:510:148::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR10MB5730:EE_|PH7PR10MB6482:EE_
X-MS-Office365-Filtering-Correlation-Id: 71f30f16-71b8-4068-22ad-08db04a896ed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	b4W+RzXcIJ9JGvsST1ylN5wFf5/WjzEqbMaK8kgjmE1g8L3oqfxjwjCCB3aKWHQPmVCxhUMCWAIBR7lemfj3Oi8DDoExBGJ9E4JR+KvYe+nHXRL03FeCQDYbgSDE9+gnl4y4bTMar1BDyZfWGBaFn1UEVhcSmHurC9SG4Y/9kr/wYjJ4msMfQC0OkC8irDYfIHav11tJJmLxL0eSSgLJkTs5VHvyGBIvPHV55RVxKmUiwcKCy9tKRmHl4W63b2iIfmqbtH7Noh36d+4RCp0J0exDxhsYwXu8gxdZuERuRd6PH959gYQru9cTVkKNfWT+RvN0a5WwoYVgrWPcc/yHPCrK2ckSW1cRDgCf0Pm85W0uVgsiyDBbmY07HFWVD4xk/8SFg5S4z7J9UcZ75VteIrY0JrJufHyJ2tzUuiuHzM8K+F0Vd2NCUB9BStmCQGj+CBkiz0YotcfcNqEtjc8ahtRncc+JlQ1tzWDBtKIl+CcnTel7kfYWxbH4pmEvnGSnigYa+0oWcHwR9G78cr7/5CQhvDkYmOBc36+Epp928D6ubOUoxcySXFbV9R/mvKv/8RAcogW8tCT9TTDO/3Jgx8gDfrcPU6sNyez+7B8jigw2ZhEeOgTxh2zHqKS0VHQ9QxLM2ncaRIY61/aruxxTtiRgUKouhdzMqE/2Ldq30ZF/LVerFNeqwoLndAa19wytrUuokb+td7HF6VXJUkTfqNtV7q9X+PqjcFZAk+U+R0zeD37SIlG7uFgX+QtKVg/rlgtMX3aKZPyDDYwF99m483oiohO3YKTvc/Frh56nE0Y=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB5730.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(396003)(136003)(376002)(366004)(39860400002)(346002)(451199018)(478600001)(31686004)(966005)(6486002)(53546011)(6506007)(2616005)(6512007)(186003)(26005)(83380400001)(316002)(66946007)(41300700001)(66556008)(38100700002)(66476007)(6916009)(8676002)(5660300002)(2906002)(4326008)(36756003)(44832011)(15650500001)(86362001)(31696002)(8936002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VEpZbWZIVDFlT3N1dVJqemE1a1NDUjEwVzRCU3k4LzJRMzAvNzVLZkJqL0x0?=
 =?utf-8?B?TFVxK0RpRU44aDYrYU9pcVZHQlB6em0zSVVqUGdUUGZmODJncStoYkZzdFZW?=
 =?utf-8?B?Q01DS3R2SzV3TmFPMmNGeDBWaG82MmlFYU03SjlWSCttbWF6SkRSR2crS3BV?=
 =?utf-8?B?R0tMclhzblNJdHM4bVhCYWRjTTF4MG1NOWU0QVRrNExoMkRwQVY1TXNzdjZR?=
 =?utf-8?B?Sks1bHRaSUFZbDVLRE1uTVVaS3ltZEN5NVJ5ek5VNWJ5SFAva1diWCtZT1pN?=
 =?utf-8?B?YlVhSGR3TzcvL1pxWkRSNDRZMUhFMENjWjVLeGlkVC8vQXpmdUs1OUgyVVhI?=
 =?utf-8?B?dmlUZXlySWl2Z2lQVHh4Z1hPcmo1YUt0MGdkM1hsU0hjYW1mM1BmOTlMODNO?=
 =?utf-8?B?SDd1Y1l6b2JNTzY1aXNXamsxak1wWTFQZmhrZXJYK28wVmtEd2RGaXBMZHRq?=
 =?utf-8?B?aUwwZHJzcHBMWHd4SGFJTUxwL09ROFl4bEY5SHZwV21kaE5ZYVc3UTRWRmFP?=
 =?utf-8?B?Mkh1aitCN0pEYjBrQnA0NnhQSSsxbjhQeVpBTXdMeVU0UU5KdGlSYmQ4WWo2?=
 =?utf-8?B?WGd4Tmo1bWtpM2JwdEROclg2M1h4ZmtSM0t1clVSMlFJbXhBWXF6VlVFN1Zj?=
 =?utf-8?B?YWVtUmtOK3dKRFhvNkliQkFjS1FhM2VsdHFYbmFjYzJWWllWN252STVIK05N?=
 =?utf-8?B?cnZhSk9MUlU2aTBsTkEzSDlJSll0RmdUenNQSk1RSVRjM1FBZFVELzVaTGd4?=
 =?utf-8?B?d2ZtSlRVVk1iYVRBNGlDWXc0Qmt5dHRDViszYmlZcUF6dm8vV2V4UkFJbVB0?=
 =?utf-8?B?NmY2RlR2K3pLRWlQVXFPNllCaWRiMVR0aWsxZERPS2JCcVR0RU0wcVFkN2Rt?=
 =?utf-8?B?dFBxK3RnRDFIVk5uM0N3U053OCtLaXF1dEkxemFQQzVEOGRsRXlFSHlWMGx0?=
 =?utf-8?B?NktIeVhBb3o2eDEvRlhoTGloemEzRTRzdUJjTUJjQyt5VGtBVll6bjh4K2R5?=
 =?utf-8?B?SEFDRFcxS0ZGclE5SHkyZlJ4TnJVTGt4NVJ1UlllSVR3K2tJMHI1L1ZrQlVU?=
 =?utf-8?B?UHFiZlBiOU42OWoxR3pkMEswMkg5Ulc3dEdrakMxVWxJREJnS0NvcjVYR0Z0?=
 =?utf-8?B?dkJMZmwwd2cxMzcxamRleDcxVkw1VG5xVHRPZkxJUE5MY3VGYTgvdGN6MjBB?=
 =?utf-8?B?Q0ZyQ3lRb2ZzZy9tUjlGSVByTXpYMW04VytOZm41TlF0WFN5N1E1SVFPZE5z?=
 =?utf-8?B?N25XYyt0L3k2TGxhYzE1WlhqVzJCZ3hxWldJWVBBRUltQnBlbFhpRXpzT3cv?=
 =?utf-8?B?R2dhdk5mMmJSYXNPYjZEWFR6ajc0em9WanpPVWtmTXN1V3dSbVNKUU5GRi9r?=
 =?utf-8?B?NGVzRTRBaUs0Tjl4bmw5bmZyOXd5QjlEajhSSGJ4SFM3NkhZS1pkcWdKSkRM?=
 =?utf-8?B?L25UQ3k0TndqNXZucG9JTHM5c0dVZkpjcHQ0eWcrY28wTnN5OFNwK1RCQmt3?=
 =?utf-8?B?bWZ3emtSM1BTc0RncThwdFpZSE1lTjBMWWxQa3gyZGZtRXNIMkM3T2N0MURU?=
 =?utf-8?B?OHcyNG1rVUhKN0ZUdmtKbkJkczI5YUk1bm80VWoyaHptaWpzaVl6eWR5RVJ2?=
 =?utf-8?B?QzRKVFpoTkZBVFhLNkRvbTVGblNBYU8rSlkxQk03V0JtZ3VzNnU5RWR3WGFQ?=
 =?utf-8?B?RURITmkwS0xmOVNORmRadXQyd1JOb2JRSnFNUm4zY0Z3Rzh0UFFXVlJzMVRy?=
 =?utf-8?B?UnhSOUpMOHgwZXNsbEQvRFVpZWFVeC9teUM3TVVXWmp2WFZMWk9PNDIzV2ZE?=
 =?utf-8?B?SSsvNms2Y2ZLaVpHUFJYeUtxTUNOelFqd0dpWEJtemNGWXFjODRsR0NBbjNY?=
 =?utf-8?B?czFDbHF5bUV5OHZVZkZSeWdxTlJKazh6aDhTRi9qeGNCbkxiTWdtK3hxMjYv?=
 =?utf-8?B?UXBDMDZQbzZYVjJjdExnZTBDaHR6dnBEQ21USE9mK2hUVEVyYzdnT2dBUGlR?=
 =?utf-8?B?QVV0Uzl6NHhjTlBoK3lqRFJOTExvSzd0L3ZhVWZPK1M2RGhRenRCcVN3VjdC?=
 =?utf-8?B?OFBQckg2THVHWmVHNVhlZWFNak5nQXY5Y3Zla1A5TWQxdWcwRUdNbkV2T3pP?=
 =?utf-8?B?djFINUl2a3F5elA1Q0VoWGtCN2FaUjE3V0p1dHVJOEptK1crVXkwMjVGaWUy?=
 =?utf-8?B?dnc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	F9fmqgElTqd9caizyIrfQvPU6HnKoK3wxwlTV8zYeIi9PSq+GfYCJ621DiDc2NGwxIE2D0Et/+5mWm1VLhKXGU0KoR9u2fVMlGtEV8Vouxj72SJl9UJMpOECO/4dXuNmxU90/8J4R4haT83djpbeslQzELKKfGwV27l5mfQEXVapYAJTb1pyZZsoZ419TKM5dWPbUC4a3/yQ01t53TE8H7GD+RCCBL3TcEGqeWpLfljGLjRSBruBVlp3TmQqg6voqO+kb8j8RqNFx8zZLbvJREhL+gdcV1Zo5c10mKhxjKE7LFT/4CZ6T74VrCuOAv9HrMxVc430wwtCfYWKZkk73LEchxIVyAfHg2mv5+IAUWQLu95Pm3aG6lmoel3fyQ9Jc4UJIZ8BD7D5z9lPyyykKmAixXsLRtuPKdR17Di38BE6ZpfkFDir4N65jbwNtk2OIkPDnPBV96KW57aTSmJMP9gMja0PD7bjKlL73+gZPDPNQMM6UIi0PH1lloV2AEXIi01Yxk10RLjqCSodS0+Hs2jdnLsMlPvuUJA5f5x04EFo5OoZLFLrZduvLgWd4QR8iO1RZ2pqV/Bzkh87Fxqz8WeMk/vgGpcJERgs+kVo3XxwITcMg8ODlm2wFhOf47BFoGHcdLF45HzLMdOcqgiEQpTr/DhdkHl97z/7TqQ/VcppD8G6HCt2vmB2I2Md9MpkwuZxS7t2dIVG2AieMOZFRsqEY+chXeC8ix6oFbWlS68jyTbf3vnj1rZ8n/5509uPIjDSaAkpsDriYDuNNdW14r7cLUYq8Zik01O7ylWu0lE=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71f30f16-71b8-4068-22ad-08db04a896ed
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB5730.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Feb 2023 23:03:53.7447
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LNNEHYicjPj08EPyrtKbSlVYZH1shdSi8kQXX3VbKrxrNEvsIOXjUA01RrjkEF99n7hJTg1uU47yeSiZw1HnC0w00f6JOpPMQ3t365w0qZw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR10MB6482
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.122.1
 definitions=2023-02-01_04,2023-01-31_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 adultscore=0
 suspectscore=0 mlxscore=0 spamscore=0 phishscore=0 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2302010194
X-Proofpoint-ORIG-GUID: sCaGk9wy5JNf7LbGg_j5STnbq8gSlgGk
X-Proofpoint-GUID: sCaGk9wy5JNf7LbGg_j5STnbq8gSlgGk
Subject: Re: [oss-security] Fwd: X.Org Security Advisory: Issues handling XPM
 files in libXpm prior to 3.5.15

While it was not our intention to drop zero-day bugs on our fellow
open source project, I have been unable to find any way to communicate
with the maintainers of the OpenMotif project - the bug tracker and
forums linked on their website are defunct, and mail has gone unanswered.

Distros & others packaging the OpenMotif library (or the older commercial
Motif library) may wish to compare our changes to the files under the
src directory in libXpm with the corresponding files with an "Xpm" prefix
on the file name in the OpenMotif lib/Xm directory.  For example:
https://gitlab.freedesktop.org/xorg/lib/libxpm/-/blob/master/src/parse.c
vs.
https://sourceforge.net/p/motif/code/ci/master/tree/lib/Xm/Xpmparse.c

I apologize for not considering this before releasing the X.Org advisory.
I'd helped remove that code from the Solaris 11 libXm and replace it with
calls to libXpm after the round of libXpm CVE's in 2004, so we wouldn't
have to fix every XPM CVE twice, and forgot that other platforms may not
have done so.

      -Alan Coopersmith-              alan.coopersmith@oracle.com
        X.Org Security Response Team - xorg-security@lists.x.org


On 1/17/23 08:47, Alan Coopersmith wrote:
> For the libXpm 3.5.15 release announcement, see:
> https://lists.x.org/archives/xorg-announce/2023-January/003313.html
> 
> 
> -------- Forwarded Message --------
> Subject: X.Org Security Advisory: Issues handling XPM files in libXpm prior to 
> 3.5.15
> Date: Tue, 17 Jan 2023 08:41:00 -0800
> From: Alan Coopersmith <alan.coopersmith@oracle.com>
> To: xorg-announce@lists.x.org
> CC: xorg@lists.x.org
> 
> X.Org Security Advisory:  January 17, 2023
> 
> Issues handling XPM files in libXpm prior to 3.5.15
> ===================================================
> 
> Three issues have been found in the libXpm library code to read XPM files
> in libXpm 3.5.14 and earlier releases.
> 
> 1) CVE-2022-46285: Infinite loop on unclosed comments
> 
> When reading XPM images from a file with libXpm 3.5.14 or older, if a
> comment in the file is not closed (i.e. a C-style comment starts with
> "/*" and is missing the closing "*/"), the ParseComment() function will
> loop forever calling getc() to try to read the rest of the comment,
> failing to notice that it has returned EOF, which may cause a denial of
> service to the calling program.
> 
> This issue was found by Marco Ivaldi of the Humanativa Group's HN Security team.
> 
> The fix is provided in
> https://gitlab.freedesktop.org/xorg/lib/libxpm/-/commit/a3a7c6dcc3b629d7650148
> 
> 2) CVE-2022-44617: Runaway loop on width of 0 and enormous height
> 
> When reading XPM images from a file with libXpm 3.5.14 or older, if a
> image has a width of 0 and a very large height, the ParsePixels() function
> will loop over the entire height calling getc() and ungetc() repeatedly,
> or in some circumstances, may loop seemingly forever, which may cause a denial
> of service to the calling program when given a small crafted XPM file to parse.
> 
> This issue was found by Martin Ettl.
> 
> The fix is provided in
> https://gitlab.freedesktop.org/xorg/lib/libxpm/-/commit/f80fa6ae47ad4a5beacb28
> and
> https://gitlab.freedesktop.org/xorg/lib/libxpm/-/commit/c5ab17bcc34914c0b0707d
> 
> 3) CVE-2022-4883: compression commands depend on $PATH
> 
> By default, on all platforms except MinGW, libXpm will detect if a filename
> ends in .Z or .gz, and will when reading such a file fork off an uncompress
> or gunzip command to read from via a pipe, and when writing such a file will
> fork off a compress or gzip command to write to via a pipe.
> 
> In libXpm 3.5.14 or older these are run via execlp(), relying on $PATH
> to find the commands.  If libXpm is called from a program running with
> raised privileges, such as via setuid, then a malicious user could set
> $PATH to include programs of their choosing to be run with those privileges.
> 
> This issue was found by Alan Coopersmith of the Oracle Solaris team.
> 
> The fix is provided in
> https://gitlab.freedesktop.org/xorg/lib/libxpm/-/commit/515294bb8023a45ff91669
> and
> https://gitlab.freedesktop.org/xorg/lib/libxpm/-/commit/8178eb0834d82242e1edbc
> 
> libXpm 3.5.15 includes fixes for all three of these issues.  It also adds
> a new configure option --disable-open-zfile that makes it easy for people
> building libXpm to completely disable the code to fork compression and
> uncompression programs if they do not have a need for it in their use case.
> 
> X.Org thanks all of those who reported and fixed these issues, and those
> who helped with the review and release of this advisory and these fixes.
> 
> The X.Org security team would like to take this opportunity to remind X client
> authors that current best practices suggest separating code that requires
> privileges from the GUI, to reduce the risk of issues like CVE-2022-4883.
> 

