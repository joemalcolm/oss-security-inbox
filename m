Received: (qmail 17823 invoked by uid 550); 14 Apr 2022 23:22:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17803 invoked from network); 14 Apr 2022 23:22:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 to : from : subject : content-type : content-transfer-encoding :
 mime-version; s=corp-2021-07-09;
 bh=OCRRnNZk+SDht+OPgRL4rbFVQtpLC2j2EoZ2r1jef8A=;
 b=iv1Xs8fC2h3lfnGZDvZ4AU3DNUwnOvNL0URtP+SNUMSkezpLGCakFhBBYdtH4hxRZxyX
 zSG8zAiBCle7deDkwPkyPvH+2CN9fnr3GvntSP1WI6pfZs/L4qFDet5dJHrq8iMSQo3y
 WszCxfVm5hddBChfKfQLkUjJGsngRgab3HbU2SIK+WGN0qHsueybSE7MJSpW3Tb4fAeJ
 XF/ANNvr406x/sPWbnD0hiUSe/vhAR2eKIJVqFFK7blMpJSizzrjzxhvm2fN0J4+srrJ
 M0BhunJ3WNM/m4eRQxD0Y+G5ahintJ8YOYhhRuv2tdv3CMXFahhSidbUghwwEQ9bykQy Pg== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kmjZzhaSFRLOk5ar7Di4kqfibLUHm8o6XLYRtvU5CIDUN1zcRTWwImfz7GpJCfWdqG5557XzCHf1nK87C2WC42nsCz+FqsuDYtnIn0DL2xxuzUdB3RvHdzgrJaqWLOgSezaQKkLFLfRl8yO3VvjQLfDyH0oU34yaOrAUoG8x2w0lxR02RkVjywKeTVUa2NwCpoBncwI4NFkHXprjCnEeFau6E5n34l8qJzWLYqIXwYNLnBovrJHM93c2oC3fjpYwGfFZ3mpylZkDkxxeov4rUhRcZLjBLzsremKGV60U3X3kDz2vyFDq6Z9+03Tno0PioFkRCX/ga0JN9u1xTPbrqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OCRRnNZk+SDht+OPgRL4rbFVQtpLC2j2EoZ2r1jef8A=;
 b=Ec9fZomAEZHmY4VRC32cG8qToEGw7sRC00u29hjki1SDgOhQ/ex2AFXSAQQ1TYRePG52GTsKZjchhHaZJEEWC3ZdugevOH241n02QgAe3cO7c/gl+IbM3/bT7dqFWzFW8NBRSVAiD5nf/FdsO0f5gZ5VfEiOzVy/icHHWcD5CwG/m1/aTKLcqYrAfXiLIkXHqNoGZMF0xaRcPFUtyHBYT+gQ296H2uTFrzYUqp+0HS7BCQGJdhcaNRqqgC5fGuZuHRxmcdC78C9xK3eFR3SHsPrAxFrQ2Lu7PVsynqF0fg6fLCeIE7SORLNNiArYUjdhAGPAoZBVwX+zMTnkj8ps5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OCRRnNZk+SDht+OPgRL4rbFVQtpLC2j2EoZ2r1jef8A=;
 b=v2pHMLwp1+eZFPINKCS8dscigbQxlSlcH0IvdHuCV5nravkCGk0vAA1hzuZToNHrjxdzjbrTOotKug/u5lWotmhhNK8enRDAmAK74pam1nuRtIVyIIct8tZXw1bhI8yy353xbci5lkn2YiyWxBVEbkZgTZs5deA+kQ3gkQya4lw=
Message-ID: <3b4692b8-1f75-259a-0608-8511e076a461@oracle.com>
Date: Thu, 14 Apr 2022 16:21:52 -0700
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DS7PR03CA0279.namprd03.prod.outlook.com
 (2603:10b6:5:3ad::14) To SA1PR10MB5733.namprd10.prod.outlook.com
 (2603:10b6:806:231::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fa8063ac-043b-4c41-b11c-08da1e6d9074
X-MS-TrafficTypeDiagnostic: BN6PR10MB1330:EE_
X-Microsoft-Antispam-PRVS: 
	<BN6PR10MB1330FB1C4D8C2F4D0C7F272BE0EF9@BN6PR10MB1330.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	0s0AQrNTxq2Y0lB0RvfD5u3+bboHfcMXGoWKV26TUOLszA4Zl1toZsmE9PgkSmaQHcfdICJLkq1v8jh1HH2jKg0LmLL1spzVvUwCIsQc0vq4RfFzt6SgZHO7nabv8Q85UxQiM9K64KZdi8/tUquXB7eSBg7dWFFcyb3meyfn4HSPwrDAIVeYY1zfm5QMsZlJJndqNeNTq5vS99Ec1l6N7PdsMEGEeQBlNRZSWD4HEyxxlu2HGQpNIbWHgoOInrs4b7w3gu8+AesscseEaFJy95mvlmtYPdzKeCQeuhRvo8ZCK/rbANab0siwl7DIzWGmVgL93lEASOnblrJm58oEScY4TM0YBDY6SbdD4xHx3a0Ws/0n2kIaDFvbTYWSBAK4k8DHTnRfzyhhdoPoRfS+Baz+WHbdVVyi5C3rqMTg4DsPCxkFk47Qnt1aFvJnMzSGeoo3ofcEn137GUDTtXrMED2Mh8yNRjfsnRd77/2J3pTFj3aZNZzmP3FAcRrk2KCh5Z0vpHvTuaGCgeLPrk/f/117cvGn9sk0BtXblBJoxf/EbxsOSZLRpmM49X6SJ4ZJFNywcIzXY//j/RBw4yGpYIMgfIdMD9PtidNToAAKd4EfIuIIp1KA+tNzawBHmusBxg4fNCPasbDF/TsXNv8whPzM8Y/4JPgyPby04Yg5Zlucbq4kwAs1Pnxx4q08blvzLASP9htuzkvX0eF9QMVnd1hF22wIVLvDi2gBmMudXQvKxMkgLTJcqHy406QwZhqBV2iaFmGcMJrvhj4mIqdicopQuhmSvuIcP/2NeBmgE0Bh8/HRIhNT5HW3LkcjUmzu+BpjoZUXIbhisFnFrHvj43AxE40W9ud60sPPWkrO+QfRGts4OcV7LlBj2AXHRZkZkJHbOlsaPjGe5DOUpniDPhqnxUNqFBm2mlAVFlh96g0=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR10MB5733.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(6506007)(6666004)(8676002)(26005)(19273905006)(2906002)(316002)(2616005)(44832011)(186003)(53546011)(6512007)(36756003)(6486002)(966005)(508600001)(83380400001)(31686004)(5660300002)(38100700002)(8936002)(31696002)(86362001)(66946007)(66476007)(66556008)(6916009)(562404015)(43740500002)(45980500001)(563064011);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YVlTNnVFYkVoUHZicU5sWllyQm56UXFhVnpWaXNSVGQvcGFrcHdYc2tCT2Jh?=
 =?utf-8?B?Z01tdnRjUlF4ZHozZTJXT0tmUU9UR2VnTkp6VE12TFZDSDR1NVp6c2dMNUpC?=
 =?utf-8?B?Ync3aDJmZXhMRUQvNTEwajVVTC9zR29xeVA0L3V6U0lTdm1JejRvVjhLRnBT?=
 =?utf-8?B?NGFCay9wY0dkMytheG50YVg1ZERreEdDZXhac2paSVRadnRzUldOOThnaTRS?=
 =?utf-8?B?V2xaLzJOUlcvVXNJd0p1MlpDbGs1SnBmUnRyOEFuWjM4VmZHd2JXeDR5RWhZ?=
 =?utf-8?B?STE2eXBxUWdDdnFrLzhOVmcrRFkraE5EZm1VVHhvbERzVjlidHBqdnhma3dJ?=
 =?utf-8?B?Mlc4eU9ldVFlRUpuSkxGb1hwNUt6QU9LdFdaZmVQUk9VSWE2WDkyYmNCQ3g2?=
 =?utf-8?B?bmdJL1BqS0d0NW11ckVtQXFlZ0RHd2c4N0hRUk5ORThUM215Yi93MVpWNXNW?=
 =?utf-8?B?SEUxKzJMK25MSHpyb2NnbVkreFlVY1Y5T2dXRUNwdENvaVRMdGNVWlEwdDNQ?=
 =?utf-8?B?aGx5UTFuR1MzUEswcE4vOGw2K2FOVDREeitkV0F5MjFKcWJkV1pyT2g0a2h6?=
 =?utf-8?B?bzdId3F0eUlQOHZPRzNCMjFOYkp3Rys1NmUwbDJMVTRySXByTElBQjF4Mmow?=
 =?utf-8?B?cGN4ZTNvUmhubDUySTJhWmYvZjN6UldUOEYzYzZ2VnZORmRnQ2tTZXlhRTF1?=
 =?utf-8?B?RFRYd3NXSThSbk1Nb1lJSGQ0WGRxWmdvVWQrK04zSUNDNkVzZ1Qrdk1KV2xq?=
 =?utf-8?B?K3huYTRZblY3RTQrK0ZBaXZuTHZCYXAvN05sWHBya3piR1k5Z2hyVk8ydGRQ?=
 =?utf-8?B?REVZZjN4bzFlcGhBTVlqcmhWNy9SbTB4Yld0QkdLS3FnQ25TamZvWUo1Sm1j?=
 =?utf-8?B?cEtlK0w5a0F5YTFWQVlhYjBaWXpGaG5saWU4ejRYRHdpRjhsUkFpUFBEcXdo?=
 =?utf-8?B?bVEwekZKVmlORmp3U0pCeFB2d0NEMFVqTFArTW94Q0F6M1BmaVg0S3RhTmR3?=
 =?utf-8?B?a3g0bVBDVStDM2JDRjl2d2Q3NnNzNHRrVmoyWldFc1dacEYvekpVdVZyOUYz?=
 =?utf-8?B?YkJoVkJJQ2MxRXlwNi9OZGs2SzZTVldGUjJ1aHhEcHBlSXdPVXVUM3FmS0lG?=
 =?utf-8?B?RW9XR3ExaXpXTnQ0V3JjcStua3pVWittWWpOS3EzeHJFQUdyVm1XWmtiTTZs?=
 =?utf-8?B?VUwxMzhMZnNQcC9xN3JadEhRQlJlTmgvUGhSUlJoaVYzWHFZOEZJOWhZVHoy?=
 =?utf-8?B?b2tOeVYzMW9iVTEvaU9KZEdNejhENkxwd09mMEVWMk0yRHl3Uko3NEo1RXY5?=
 =?utf-8?B?cmlQdVBuSzkwWkhUSmJPRG03NWtlN2pnSUFaR0kvYXZiZ3VvR2ZuWXVtN0pr?=
 =?utf-8?B?cmlKS3lPeGlZL2xwYVljMnlZeXVyNVBzYWNsaitLZ1JFRnBVZ3d1MFh0d2Nz?=
 =?utf-8?B?d3BoMk43OGVvUXBJUDlObXhjTDJvd21BNE1tU2V3Ti9EZkhIRmYrNkpmb0pm?=
 =?utf-8?B?MWllZ2F4TjRML2xLMTA1N0V2UU5WRldrN2ZOdG5RNGZudEVxV1ZnUVRmQVdq?=
 =?utf-8?B?TFp2RHlOOGVQZWxiRDhGaXJ1Qm1PNHRGNVNjZHI0RlcxRUNzbys4emF5SEEz?=
 =?utf-8?B?VHFtSkZLcmg4cndVUm9SUitTZWxsWU4ySHoyRmNUSkJBbEhWeFdUUEhHbzc2?=
 =?utf-8?B?MWxzNUFadzgwRXhUN0RSRlVrR1d3L0ZhcDdQSlBqM0piVVJTVWdOR1ovSlRO?=
 =?utf-8?B?bEt1K3Q3UmNrdU8yK2RwMFhPTHRtTWwrWjlYSHc0V1poakRKbjJpaUpqME53?=
 =?utf-8?B?b0IwUkQ2TEFmWFlyUXBWM1d2Y2dlbTI0eUNmYW1aUzZPaFJhay9xRW5JWm53?=
 =?utf-8?B?NnJQNkloN0thZUdxdGo4WHA1YXduV1BuUSt3OEZpS1BYRWdjdElVYlUrL05m?=
 =?utf-8?B?LzF0elNaWWZJcmtVNGNIelVsaEQyRXAvUHRoWVU3YW5RZDJVM1B0aXYxS2ZS?=
 =?utf-8?B?UVlqQXFWMitsQStkc0dHTVVBT3BRRUF5WTNVOFdVUTNIalJNOHNTamZJb1RX?=
 =?utf-8?B?ajZIOWdiYjA2c3FHZXpUdVM5Vk9pOE11eERmVndyN0t1cGdSYk91Zm5TMklM?=
 =?utf-8?B?blFaOGhKUkd5UnhGanJ0bkY1N1lqR2Y4YzV6SGRNM0c1RktvS243bjNYUk5n?=
 =?utf-8?B?V3puSGYxUnRKNnFVWDNyUFpJVnJJMmxzMit6eEJ2KzBQYU5iVlErWENsYzJR?=
 =?utf-8?B?WE4wQ2d2UGNmVnZ4Q1V1WTFDVnZmdFJOYWNEZVd6ckNCTXM3MERaelBmdEZn?=
 =?utf-8?B?b21rajlyRzZPT0tyOVVrc3puR2NaNzJqM3IxbFBpM0F3djhBY3M3MmpGQVFL?=
 =?utf-8?Q?lBt7dV+wSD0z+QPU=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa8063ac-043b-4c41-b11c-08da1e6d9074
X-MS-Exchange-CrossTenant-AuthSource: SA1PR10MB5733.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2022 23:21:55.1900
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mfw1OMlT36/l1lWjUuCHx6CkDtAO7iwWC+23rXDAPWk175+WPMBC7w2YG1jg8P5vPA4ozXXrsna0WlZNzRGTaKm+SoFqCUC35EcHCNaFyLs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR10MB1330
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.486,18.0.858
 definitions=2022-04-14_07:2022-04-14,2022-04-14 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 adultscore=0 mlxscore=0
 bulkscore=0 phishscore=0 spamscore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2202240000
 definitions=main-2204140122
X-Proofpoint-GUID: YuIdhrR4IVJDiVNGm7Bq8U45H7x379tu
X-Proofpoint-ORIG-GUID: YuIdhrR4IVJDiVNGm7Bq8U45H7x379tu
Subject: [oss-security] mutt 2.2.3 released - fixes CVE-2022-1328

https://marc.info/?l=mutt-users&m=164979464612885&w=2 says:

> From: "Kevin J. McCarthy" <kevin () 8t8 ! us>
> Date: Tue, 12 Apr 2022 20:16:44 +0000
> To: mutt-users
> Subject: mutt 2.2.3 released
> 
> Hello Mutt Users,
> 
> I've just released version 2.2.3.  Instructions for downloading are 
> available at <http://www.mutt.org/download.html>, or the tarball can be 
> directly downloaded from <http://ftp.mutt.org/pub/mutt/>.  Please take 
> the time to verify the signature file against my public key[1].
> 
> This is a bug-fix release, addressing CVE-2022-1328: a buffer overread 
> in the uuencoded decoder routine.  For more details please see GitLab 
> ticket 404: <https://gitlab.com/muttmua/mutt/-/issues/404>.  The commit 
> fixing this issue is at 
> <https://gitlab.com/muttmua/mutt/-/commit/e5ed080c00e59701ca62ef9b2a6d2612ebf765a5>
> 
> Also fixed were a possible integer overflow issue in the general iconv 
> and rfc2047-conversion iconv functions.  These are not believed to be 
> exploitable.
> 
> A huge thank you to Tavis Ormandy for reporting these issues, suggesting 
> a patch for the iconv issue, helping test, and providing constructive 
> feedback.  Hurray for the white-hats!
> 
> -Kevin
> 
> [1]
> My public key is available at:
>    - my personal website: https://www.8t8.us/configs/80316BDA.asc.pubkey
>    - the mutt website: http://www.mutt.org/keys/kevin.key
>    - The keys.openpgp.org network
>      https://keys.openpgp.org/vks/v1/by-fingerprint/8975A9B33AA37910385C5308ADEF768480316BDA

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
