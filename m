X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["567" "Wednesday" "30" "March" "2022" "13:15:15" "-0700" "Alan Coopersmith" "alan.coopersmith@oracle.com" nil "14" nil "^Date:" nil nil "3" nil nil (number mark "        alan.coopers Mar 30   14/567   " thread-indent "\"Re: [oss-security] SpringShell and recent OpenJDK updates\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] SpringShell and recent OpenJDK updates" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30178 invoked by uid 550); 30 Mar 2022 20:15:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30146 invoked from network); 30 Mar 2022 20:15:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2021-07-09;
 bh=LviOWEbMDk87JhERXYS+eSmhJPPE1IgZIY3ht1uwuNA=;
 b=z+qaLw2+l7lnLmjDOH2bFgRN2YMtfxmPF8GcE0PGbQ2hxHLyDaS6KvU8fG2bqV7PDey6
 opV+0mGEA/WeRhw8WASv+nJJOoRwhgzIqCw3BbJLOQ5h0a//HJoL4KDO5MIsPk3+uiRC
 OIoXVxXwpfh+Kf1EeG2rr2RSD0UYhdvrYBRxLnns4mcAtJ8p42ul0ZZkE0RSkesL9anr
 FolPtxmflK9Jy0SlQyv47xdutA6QWIXKNcSP6Fd+dWc6l4jue/cipykAGAZ8CSMA/Lbi
 a1CbkFHxcTNjR7Z3iNcB1wbl4A0H8JFAeCNGeA+IndFKT1gwuoHmb/oVqRwi2Eq8OGbB kw== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ffGOSXf98TUOZy6IJMlCpGUmCaaum/S7puUAWn4+cg3yCASmDtjlZBPSfT5yhuTWLrTVxW8Qx/LR3z2kryebW2w1M8GFZtVtHw3g5gWbJ6A21R1ECq0naEx3vrkjNyvcwl0Qib8F1CCnf+gg0bHSHQ8LNnF7wAGM8Bojpt9mOZBBJiG5JIkHN/l9FMCgFEjrGrvfRgAHbTFzTRSAvQaiJKCUn1XsJP8KVQpMEQVGGTzVjegn6MNSceY6FLnQyGZ66AAxZueCGH3Ugr/BeKSSO7h4L3EaRMm35b8f/E6VIR9i2O8qdPx8lA0Y/qcXqKeJuzDwGVHBAhet6KQnaZoK3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LviOWEbMDk87JhERXYS+eSmhJPPE1IgZIY3ht1uwuNA=;
 b=S0R6InItTWXHFQvDPncRDq/f3V4OhItlxmYyyDKJq2pHyJ6YC5kCaZaOzsD/0DdfXKyB9xnGAqIrkJIipkik9o9EKHgFKoFP1KfmBkXao4wvZdyrU9vLVKU+gLMoVaZRToiOxEf+GQcPb6xiJKsee0eq4mdt61a5ZDtlp62d1PAoaPtNaj0VGScUpRXiIAmqlqQ+5txMkAlHX9WDUS6a3pJnhA20mll9p/SVy4JS7NmL9rSAhvP4QNzy474c2tniP3uYI+vbWP/sSuMTkD3/kGkXMN/u6SIZz6pQzJkY8f+s9OZfEFmkj3O0pOJdi9mX8KlE6mq+t07C50QFtxsVdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LviOWEbMDk87JhERXYS+eSmhJPPE1IgZIY3ht1uwuNA=;
 b=MP/4E3ZX0DXxhbvZGItuQzS5piwrESZPR+yJPEmgHYHCg2forOtYa+1IZ1fsmqjuYiBXrxwRfAP/L1yFGTgdEQKMA405IxXj2/VATqt8ThlhAUUEau3vJ2brrjwsovW+IAM40IbLVUjPaX7cwDJJmjqvL17bot6JE07SnT6i8s0=
Message-ID: <c06880b3-9447-3e3c-2c63-fd2efcfc5e4e@oracle.com>
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Content-Language: en-US
References: <CAH8yC8ngu__9q3C-pDGEAOnM=ZvuXt0m2V=BmJHH_bVa4CE1eQ@mail.gmail.com>
In-Reply-To: <CAH8yC8ngu__9q3C-pDGEAOnM=ZvuXt0m2V=BmJHH_bVa4CE1eQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0233.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::28) To PH0PR10MB5730.namprd10.prod.outlook.com
 (2603:10b6:510:148::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 38af0fdd-538d-4aa2-9498-08da128a0242
X-MS-TrafficTypeDiagnostic: DM6PR10MB3722:EE_
X-Microsoft-Antispam-PRVS: 
	<DM6PR10MB3722E7981BBBE350B3A1FD6EE01F9@DM6PR10MB3722.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	E2cEEkMj46g+rbGHOzKnoy2LcQAVdKsEl7Mz4AvyZvyf8iunP6xY7brdO1JtBcz7qYhpTzT4FtwX0lDbMSHMT28u/TJFRF+dlaUxoK8zGrVZyQXuPFP0+Q0nxdY71RVBzGpNCnmwzMvWcRRgIumuJqGSKn3GOshKJlUudmYR5kjSxfWZj2ImzxUkKNkb50l07JmKm04KgVt5tw/nHfvJJeIevCR6c6F8BT6mdgK3RODR0jurfumFZ6X2YwuoJtqP+7Z7H6diSd+RW08sjwzUA5EIDbdaYruogeo8ujHyn3uoSLEPV/Bputni2bVDiUMmLEgWLefwD8EcHGJQrOlbFbWUemTsV4ZmBHg4x4kWvMiwNU5IhL+G7nGR4NlNaGfP51sgjFjxdB8KDOC1UIFqY9bVQ25NE2qMJQ03gS0dZuoz+5Z1kjYDTd5UgSwDeoH3IzM17wrtqqIbJHX+QwueekUu8ftdhXhsxh7BWByc/a7vXPnofxV4OmN0PEsZjlCWwjpga2hE0pENyakx6qqliHDsQmvLWe5IX6Alc+e9pf1FN2IpgK7vAeRVlMPROyoBIIhSxh2Q2bEd4y7PEiE3adHM2N3Pvx3MaGqfQwwD+gaiC473oLM6SCz+fzwJCyT7acly3cbb/7lF4bsm0Trh3Smsjy9MSfM0mN5ShCPZG/uL0FI0NUfh8qybmfNpFEU9BritUdeQK75dKzxi/9zwfklNwEwOmKAGFvC8SiA8KqhkO3ZnOa3sDmbAW6iikpfYNhWYlpEKzFjno2MEROYWGGOT+wERzdHJWkxPYURRKlptPiEHwNwJ8G6XE0jgM78d
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB5730.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(508600001)(6506007)(966005)(186003)(38100700002)(2616005)(6512007)(53546011)(6486002)(31686004)(31696002)(36756003)(26005)(6666004)(4744005)(15650500001)(5660300002)(316002)(86362001)(6916009)(8676002)(8936002)(83380400001)(44832011)(2906002)(66556008)(66946007)(66476007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?a3g0VE9JWmRGYzBKaStoMS9pZUE0eDhKNys0ZTVnZ2pEZkRsTmtzK2Vmekp4?=
 =?utf-8?B?TmZoT3g1NmdjZ1dWNElvbFo4MVg0TUlORnRBckw0ek9nWHBFTEg2NU8yQndZ?=
 =?utf-8?B?MG9BUFRTZGpJSVJSZ2ZnaDVNcTdJdDhRWlFDNjJES1Q1cEJZWE1jbDFOV0dy?=
 =?utf-8?B?Nld6cE9RTytxaXM5NDM1cXlNMXJRWkx6RGtxWTl5NGY5Zlg0a1RwQk1wbkhv?=
 =?utf-8?B?b08zTCsrcU40V2JGYVh2Ti91SFNPTDhreExyc3Qrdk9SL2VqU3cxS29ZWTIx?=
 =?utf-8?B?bWxXTDBTVGpkM0hGcWViQy84MS9wR2JsRXlnYnl2d1RUdnA1VVFwMjJETmZ1?=
 =?utf-8?B?U1dPZGxWbUVYeC8vem9FS2pYdEJ4QjB1eVpGbEcvMzNybUJtOHB0MjZMcXJT?=
 =?utf-8?B?eHVjK0p4NmRKRE1RQkJSM3ByNTNNWm00V3FPazAwd0trSWVMOEYybmNQdS96?=
 =?utf-8?B?ZkhRVm9kVFpSemJlZVlrK2lFdWtJbFMzMWNjQVB0S0VUYWdSMk0rLy9wcWpq?=
 =?utf-8?B?WEVYN3FLYzEvMUNWQzA2UG1HQ0pSR1BnalJwdldzR2c5alRUYjY3ZXIyYWdW?=
 =?utf-8?B?V2p6Zkp1RXVlUjduRUZkcS85L0l2T0tsR2QzV3B4QVJBTTZHUUtQMVdsM1lt?=
 =?utf-8?B?MStuYkszaUVmN2tEY25qWHRQRDcva3hMMUtaNUV3anV6dzJsd3BaVkZRT2FP?=
 =?utf-8?B?RmtaSGlwMjVGYlZwTTFUUE5OaE4rcVlFdmw4eTNYYnV1WEozV3FlZGNKR2Q2?=
 =?utf-8?B?L0E1YVVmRVQvSjRWc1lQUHNoWktVNTI4cXFHcXBON0lSdVNFb0VWejc0OHF1?=
 =?utf-8?B?ei9ZdTZmd2x3dGI2c1FoNlByQytLUWhaZ3RqSjRKeGV1ckg4QjV2R2VWaXBO?=
 =?utf-8?B?UFF5SktxajdtbGJpR1hBRjZtRlF0U21oOU93R3JjZFovdW5YcmZKeklSY2R3?=
 =?utf-8?B?MHlCZXdBbHhFWC9nM1BTNHFtLzdYQWtNTVQ5WFFqMmNLWG54dXNwRHArN2dT?=
 =?utf-8?B?TitCVmV5bzEvTm83ZG40NTZLUHU1cGxJZGxxbHZKU1Y2ZWNLRm5QbUptdWEw?=
 =?utf-8?B?anA0Zk13SERBNkh3aWRkUFU0bHBiTzlzNENkR0RmODJxUUFyYmp1VDA0UzNH?=
 =?utf-8?B?bmx5cVJMeVFKT3NaOE9qTjRGR3VaOHVGYzgyVE9zakozZTdrY0Y1REFNM243?=
 =?utf-8?B?MVhiZUNuQkxpeU14R2I0YXZ1R2RGL0VCM2RuQ0lTTVIvMUl4L0s0dnM3Q054?=
 =?utf-8?B?WkI1NzgxNFVIM1R2dHRZK2JCcWl0VFdHQlVnbzhFMzRhanRMeWxmWXdZVkhX?=
 =?utf-8?B?cHNFU3FxbzJ4YVlqZFB2VDBFdW1RWnlkMFI3b0FpT055WnF2c3U4UWo3Z3B2?=
 =?utf-8?B?S3RZbG5TRTJZVElwdldvYlUwNlkrZ3RrVmtxVkFPRmFSMlpFK2duQzdVWitz?=
 =?utf-8?B?YnRqbFpPaUl2R3NWVVhkV3FNOS9nRlNrZDR2WnY5OXA4MlBMeE83Znhyc2Rj?=
 =?utf-8?B?SjM4SmRqbjNHNHArVWRzZ0xtME9tQVZSZU1SN3hUb3NucXNaaXJmMEpyRGNT?=
 =?utf-8?B?dFJLZDV3c1VhMTVLUE9EcGd4MlA1Zmp4bzM5bENPYllsRFhYOWt0Q2RFanY5?=
 =?utf-8?B?TzNoK3MrQk1kZCt0L3lTem5LWE1mRzZQWG1LbG93L1FhTnFKdU15U0hFVUZo?=
 =?utf-8?B?SWI5NnRuRDhOUHJGRjFtS3BQeFdoazFFSEZ0c1ozV0lBMXRKaU8vZ3plSHln?=
 =?utf-8?B?YnJlK2N5SEcvY0h1OGJQcDkveldYT1AvbHNaT3NnRGV0YUdpZy82VHNTZDdB?=
 =?utf-8?B?SjkrWUFubFh5T1NEVUYwbWhJdTMybWlRMktwcStNODl6WmFMMm9zc0FXaFIw?=
 =?utf-8?B?d0NhRzhDd3ZVK2lTSWhIeW4rREFkaURtaDBCQk5KNUM3WC94dW1INU1nS042?=
 =?utf-8?B?bUVXS1VIeTIvS252WGh2eGRTc3ZmampBcVA4ZEQ4eGZEUkplZGEzQXlDM3ds?=
 =?utf-8?B?MDNmdFdWTTh0MUdVYiszZ0JHY1NZdjRSQ3UwRTNjR3lUejNZMjJMVU1JSzhC?=
 =?utf-8?B?T1BQOURra2pXNFJPTDV1OTZTYTI4YjNuT2FYa3hLYnB5QlhSMEcva0V6aHYz?=
 =?utf-8?B?TGVhQk05bkNzODAva0JCWHVkZmUvQS94ZDlLMHBWWkdvaUQ5YzYxanhKSUk0?=
 =?utf-8?B?Yng0Q0preDNuMVpSVityWlM5aVU3ckNjNjEvRDU1NW5WOStrbFIvaDBqVUpn?=
 =?utf-8?B?VXY3WkdUNFJMUnE1K0JVWVhJVExJeExrVHV1ZTNINVo5VXdIeEJWWk85Tm1P?=
 =?utf-8?B?N2MwaGxHa1A3Qm1iUWwvUEpyb0liL3RPeGlhT2Ewa1BsWnpoRGZ1cnJHSG9v?=
 =?utf-8?Q?mR4+g8X5WbdwITss=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38af0fdd-538d-4aa2-9498-08da128a0242
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB5730.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2022 20:15:18.0769
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wA549qVKTOOhjPCZG4wqDpR1wM/FNmaBvLB34eE/EyePaeUjQqUo74DC0LkDTnl+/FtxRZeqLIMJRcVgiFH+0pIXnYQu7PT69x5x2nQh36w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR10MB3722
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10302 signatures=695566
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 malwarescore=0 spamscore=0
 phishscore=0 adultscore=0 mlxlogscore=999 suspectscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2202240000
 definitions=main-2203300098
X-Proofpoint-ORIG-GUID: Qn2q0iD-MGrmY8m-NeBByhPNpjGtTqP7
X-Proofpoint-GUID: Qn2q0iD-MGrmY8m-NeBByhPNpjGtTqP7
Date: Wed, 30 Mar 2022 13:15:15 -0700
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] SpringShell and recent OpenJDK updates
To: oss-security@lists.openwall.com, Jeffrey Walton <noloader@gmail.com>

On 3/30/22 11:31, Jeffrey Walton wrote:
> Hi Everyone,
> 
> I saw Ubuntu patched OpenJDK 11 recently. [1] Was that due to SpringShell? [2]

The Spring Framework is separate from OpenJDK.  (Perhaps you were thinking of
the Swing framework, which is part of OpenJDK?)

The latest I've seen on SpringShell suggests it was dropped without warning
as a zero-day: https://bugalert.org/content/notices/2022-03-30-spring.html

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
