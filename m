Received: (qmail 18283 invoked by uid 550); 17 Jan 2023 16:48:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18248 invoked from network); 17 Jan 2023 16:48:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : references : to : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2022-7-12;
 bh=/GYKZnqDS+WzpbvhGrEg3mKVrCRAage05ER4MV42tkM=;
 b=1ALda7CGSLK3S3ODmPGts/H0MACWySub3NWUQnBn6xafgBSELc0lTT3XvWPBJLXYqkrW
 sv52KU5nQgHPcak3Ndhl3ALpgQ2breEC4DYHYM288cd7bKiXea46/RjeTaaqNUvKyc1A
 /0OQ4hrhVLz5F/mAs8P7nTHWpa9plsoFiL22yp30JcTVc94Lsts2A4mjB1jOBzhwJ5Xx
 pfAMx1MvEA13bwx9FuOkGfPWKmN0O8Dbge8lYKPqUMr4qKdZx2BXx2cfZmr9aSkSvzS5
 lCrwM144AN6tec8PK36/Yziyh8SNdTPV9a//QosTlfXB6LizsMcT2F/c4bVdgYo24ONg pg== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kcgpowZcQeIEt9n4qi2bWbl8u+NFjjNAeBRB6xgO7t7xUf3C/6/kXPpYDiTVx+RH4l9brVM5uUW7ntj+2e4zYU1RHad/6u0JXR/VXyqBwQBGjymmC9ku3/GaqIu3l9mLAy62KOKYDalYv3MOCbaULwl71nRS7yhKXJdPv37R/kMs+N2ncp3QZyAok1Y+6j66Qu9mzljBKYYQq8AM8ww1wbRYuej4tcSbe2RdUdu+i07rcSarMEj3gxTmqSOBPTtjyLAp6+uE2NtzavcA+tXwnVxWoiHF9fFivqPOgSARoUeTl2LbDcjemKkmLfOs4RBI+dyAukkkWE4xUqeaGqoGTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/GYKZnqDS+WzpbvhGrEg3mKVrCRAage05ER4MV42tkM=;
 b=RACUTo0W+cwmyPqWoKpa7O+w3btG9JUadvdk/Yo9JCeJi3TsEqQ94dYfn+yN3Nw9XSd2jgFY3KL8zEehm/nHtBcREu63MDcnhVpLIfLE8/oEU/IFPRDIYfO06VxuuiLfxbrjddFLmKpoH9Yu+38GylpoSqRV8vmUEyf2/XIVuBQLMUkng7yWT6sfJgH5EJAsCoTzvipekxvIbVFU/aVqutkgG9Poay/kFAcXEBAygXIC8S/3jN8mkmGU9kKsxzJfsVtu4KsFW2cDRVW1GTAIZpjrm+/O36cbZ157WMDzuldR0AzvMOSgO+IGoPMJMMkSNWIamQhAJnkgSa7dJaRLCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/GYKZnqDS+WzpbvhGrEg3mKVrCRAage05ER4MV42tkM=;
 b=x8nAMkY6Q/Fw1ULyeQEnxQvX6vRdKe4ErxA7bkSCNTgHdC6APFUTEMkkW5pRGcNYKHxw7rMpqIG7yhYsTGxSIPoFd0YmGF/7fVsTlH7+08bJh0KZQEa7uwu6QBnn2xTIs5MKaAMKHTLRWaKnGZ97cJduR8L2X9BIVvqWN8GOAVc=
Message-ID: <7b3fdf01-8189-567d-bf15-ba8478eaba79@oracle.com>
Date: Tue, 17 Jan 2023 08:47:45 -0800
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
References: <20230117164100.GA3834@also.us.oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Alan Coopersmith <alan.coopersmith@oracle.com>
In-Reply-To: <20230117164100.GA3834@also.us.oracle.com>
X-Forwarded-Message-Id: <20230117164100.GA3834@also.us.oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SA1PR05CA0018.namprd05.prod.outlook.com
 (2603:10b6:806:2d2::18) To PH0PR10MB5730.namprd10.prod.outlook.com
 (2603:10b6:510:148::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR10MB5730:EE_|IA1PR10MB7167:EE_
X-MS-Office365-Filtering-Correlation-Id: 963ac924-4a1b-4347-dcae-08daf8aa9088
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	fSGu+cRd2lf0KdFRnRsW4qjARiNuglzMWv31MnfOUh8HHO5djBQtAVzR1Do1hF2JZZclbxADpecp8gxd4TctExWg7Gn35Ve48syXCMUggCR3idm8kroEKuW80V5w+1kv6vCGz037allFOh1lHvzDbo39Q3DYwEAxgt07kDrIaaa1V0wvjzJuckxtZyFmiHGiQJ3EazX+FhhmkBdB7pPaxdlMIawL+lG3HLSdyJkGbWasaBJMXgg1HlhurhQx0j5UK/lC2VDYyd8p2taCkKhS9nYEhow61iXxFLkCpBoLtH45rBmpDU6N+A82otoEVUkPMQpNXYVAesgGcW38JGa6qsIWYhCeEnurubv6XHrQdac8fZtlbNU7rNSCp0Qt+Bz1dZP8tiNmCfCj0XpHjzj8x7AV2UhMTCGbtJvZ7LtbTIjib3I5M0uIf6fSZvumFqKzlV+7Y6l2rIAltdeHGiNc6P/5F2+QEH4yxwH/OfgzbeXzPOP4Z6DmD8lK3ROzm46DKfcRADb7IXdcqaXy9z86VEo62BFoaNPaLPCU233k1fz5aMD4fZ6F5wkMENhzVyR19DiaZOev/KCOsBuAHZu7yqt4WdqKijE3+FKQJA2svOjPDYJ9omD/v07BE5dmNbaAUGMXnwITjYvZXNHXb00GrMO/NNzCtWSu1jGMBav/abx0fb6Sgn7YRvH4dXIWv6ZmMmfK9C0AEsHD6SF9PxcKdowJ/nH0zvtDE1eyZpx3Ub/BauoVnVILvEELpzTWDmlC
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB5730.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(39860400002)(396003)(136003)(346002)(376002)(366004)(451199015)(6666004)(478600001)(6506007)(66556008)(8676002)(66476007)(6486002)(966005)(26005)(186003)(6512007)(83380400001)(66946007)(41300700001)(44832011)(5660300002)(8936002)(2906002)(15650500001)(36756003)(6916009)(2616005)(38100700002)(31686004)(31696002)(316002)(86362001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Y2dqRC9KTkRuZTVwQ1JLUWxxOW5YNEtlTVA4YUlCVXVnY0JrcDU0Y0xSWmp3?=
 =?utf-8?B?akZNblpjU29VZFdNNmpITHdkNWdJbjI4bFlyNnZLbWN4d3g0MWhILzA3SWxV?=
 =?utf-8?B?S3Rjcm1JY2VzZGlCN3BqTGN1VzNBRFJTU3pkY1dPOXJwR2ZLemZmUnJSQmh5?=
 =?utf-8?B?ems0VExOdlIvN2k4ODREdldubDg4Y0Q0R3NhcTJLMytYN2I0UUZtZmgrN09C?=
 =?utf-8?B?L1dqSW1VVEtaNStKbXkwN0FPRlFWRWlxMGNkNFNQSVhkRUkvYit2MmVuMG5R?=
 =?utf-8?B?bEVWNlFOVmJjaTJ4b01oVTFvanNFQjVGdmR0WDlSUjhJUTg5bEM3MUV6b1RJ?=
 =?utf-8?B?OHYzaUs1SEJ5dDJ2NU9MRHV0RE9yM3EwMGMyaHRTdHF2aUtKZW43eUorejRp?=
 =?utf-8?B?RjI1WnkycEkrdHdjVkIzUWNOWkMrZysyVWNqbFlKRTJLWk5taCtSekVBSFhi?=
 =?utf-8?B?OWtORUJyRk9uZHRWSUhkZWdrRkhlTVhLU1FiUWFZb3VOdlN0ZHNoNmxpcUxP?=
 =?utf-8?B?VjU5blFMSmFhdElyQ3dGT1ZDOUtFU1BkRjRNKzdrWmJGdGw3Yk9wZjlDdFBp?=
 =?utf-8?B?MStkR2hkOVMzSENxdWFGUmJqQzV1ZDVHL2lTNFcwS2NMQU5KenZKM1pieWZF?=
 =?utf-8?B?VExUaWFlelpRZzJBYmJkeTJFd0ZwYTdyZ0dJbFlCYWhBMTk2dmVld1VHL251?=
 =?utf-8?B?UDNiaVZvMGNJZHNoMDFlakdhUlNzeERTRmhoNVpTN0tCS2Z4UnVSL0d6Rjd1?=
 =?utf-8?B?TkpSbWJ2TXlMTFllcUlDdjFPUFNDeUtvaU1MVFF6MnhnVVpZTmxCV1E5WHRm?=
 =?utf-8?B?MEY5ZTV6ZEdUcjdWMDNvckFyQm5iSlU2TWFjdjdNclNabENCSlJaOC90RFY5?=
 =?utf-8?B?T1VhcENPQTVsTXRiNTdmQTIxTkR3YjYreU9qZ1hWejBZWHgybnVwK3IzVGxo?=
 =?utf-8?B?QmFKUnV0em5HelhzL053SDE4SFZuWURza1FhaVJoQTJQSkNld3dTQnVneHhX?=
 =?utf-8?B?YUV1NDI0UjFURTBJYmpNdzIxT2xiSlErQUFBbXdGd1dWS2FINWFFREVTY1F5?=
 =?utf-8?B?cVU3bVZiK0hXV09Kc0RsVGRHUDYwdmxkVFN2bjJKWHIvVis3TCtMd0tSYU5i?=
 =?utf-8?B?THhCNXd5MWFQK0k0ME5BQkFmeDNtMUZwUXJWcCt6eVZub25qMDNmclUvWkx2?=
 =?utf-8?B?TTIzdHUvbHdRL01nNmR1WGluR1BrWHRsb1M4SDFTMGxHSE9PNnp2S2c5TWN0?=
 =?utf-8?B?THR2WG9HM1Fqamo1VC8zRngwZ0dFVTlBVG45d3ZsanhmbGljSDlGbTNEUmE1?=
 =?utf-8?B?ZDJFb2dubjRSNmpkWit5MnNyQlBkbEp4TlhxczhObVB5M3JiZ1ZSUG1EdXI1?=
 =?utf-8?B?NTg1dGtOaHJpS1JYQ0xYNTVRQkNyTXUwczNUcTk3TDYrTlBxSlhSblJUUkE0?=
 =?utf-8?B?R1VYbmpZaVM0Y3lvdWFRL05tRmJ3ZlBESzE2aGwwcitQT212bVpnckY2bGZJ?=
 =?utf-8?B?MTZKQTlNWEpEbUZRZ0h2SGIzYjRtNnVIdlJNQ1prcHpLQTJsUWNlN2tJSDdY?=
 =?utf-8?B?czZKcFdiQ0lxREdCbEVjZVcxTHZ1UFl2cnRVMDlmaGtDalRBKzZ4SFZaMTA2?=
 =?utf-8?B?OS8weUF1RFBIeXhHU1RCeENNR1pjaW1Fd0FyYkVsTGRmM2FuNkN0VW5haUJj?=
 =?utf-8?B?cWQ1TE44TzJQK1dtNUowM2hNMmhYUExROHJ4UXNzNEQ4eUhHR0FtakY3dkZZ?=
 =?utf-8?B?cTdjK3VBcUNCVHVESDQzVlY5YzZXUnlXZnhiNW1FRE02cUh1MVhMMkRrbDN0?=
 =?utf-8?B?bzA1aG5OT1g1cWg5NHdoK0s2R1hzS3hpempTMFVyTHpqcDZRWXp5V0Zra1Ja?=
 =?utf-8?B?TXJpR3dVbllxQXBJM2ZwL283RXIvaE5ZYXBCSTZCNm91NXVuVGo2aTRIN2FX?=
 =?utf-8?B?dEt3WGtMZmRjMTdJbjhveTRUNXdQTEx1dXpaSDFrV1NGNU9jTnNXbm96dzR0?=
 =?utf-8?B?V3RabzJNZEIxZ3pmVjJVQUIwZHJ5ZFdQcFcxN09YMmQzZlFZUkF2bjZYMzdl?=
 =?utf-8?B?WXNVQ0JLMDlVMnpUZ3B2K0RiOGJ4S2lqQktGSUM2RVg2anE1MVRvTDJ4V2dC?=
 =?utf-8?B?YnNROXY5MS9TVk5VQnZFTUNGUFpRZlcxQ3B0alVDRVBIK01LbUMxS0lPNC9H?=
 =?utf-8?B?Q0E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	y6qAfbNB/JK2kDxHmbgwGbNn323sw/eQ1OJoybDfXPTzeG+d10zvgqbYSzJe5k3vctaV4vXYpm/hgFQR0360Kdc2gvxFN70yeQxKCpBSVhHZ+EOcCWocuQ9DVQqYI57gQ1nPBkpYNZhI/K9BcV4XwJ1D/5e4JTmUIyf/mO0Jb3NBhZoNkEFvul3fgssecef4JrdH+A3yu1BxhWJK4Kbrb9Tn/SxPqmFX3JhevgPg5TOW+YXQOE+3NVQwATGAOvXp0y7OpQiEu8TCsaJGfvm60FFOwImhZHFQcxXSUejMnDx0Ch8qs6559lBoNqOZzpWP17Iu14pgl75Nw1pjEksr5+cF5O2DFlJlhelnx4J/hYxve+68tnPIl5SU2F7bnFPBIqlhOF+3ipdY7trcyfzWLphkbbui1YY4kn0H2fOU0AVAdPRHX8n/wn+eDXgUkkyyVXJl9WuNPLXqJRHeYqnQaDpdF4y93Lok4IFyw95EzxRrV9ep3lFkVbGWQ/OsC0U0LQU8X8D44inJ4Df2EqBnUsSBBuNjGFvgMib1P9gyyPwKz05JP5XJras1HlHW4N6pU34jFow+gwD23+gqJPvsd4EcKV66Cs+7ZGDN6MNzfBpRNPRVs6/4TS4ilWYcNyS05KvpFbmWXkGeLizZ8+Hvwuf3rxUHtiM1aP19a0ZcykYZSixmmmk7kjq4ykHBJRSEzU9ugid08ozM0hTpQBFKAeBzKvtbJH5TyMJXy6RxV4shf7ffNIipTCE8oJH9OR9VIfZENNilXUV926m9ee+N7Q==
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 963ac924-4a1b-4347-dcae-08daf8aa9088
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB5730.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2023 16:47:48.1082
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8fvZMigXoPgwO6DRfmCTDW9rTAd79VnUjMI8BdH3GBaB2a8loiQiKfbAO7qQaObRlO5XNjrXuhF/YYD8kD72DP2h72Z2ADawmeVA+RytLIo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB7167
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.923,Hydra:6.0.562,FMLib:17.11.122.1
 definitions=2023-01-17_08,2023-01-17_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 mlxlogscore=999 spamscore=0 bulkscore=0 mlxscore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2301170134
X-Proofpoint-ORIG-GUID: WZtRJNF8ZTaBRT2axlbfXL7Ylktb0E3M
X-Proofpoint-GUID: WZtRJNF8ZTaBRT2axlbfXL7Ylktb0E3M
Subject: [oss-security] Fwd: X.Org Security Advisory: Issues handling XPM files in libXpm
 prior to 3.5.15

For the libXpm 3.5.15 release announcement, see:
https://lists.x.org/archives/xorg-announce/2023-January/003313.html


-------- Forwarded Message --------
Subject: X.Org Security Advisory: Issues handling XPM files in libXpm prior to 3.5.15
Date: Tue, 17 Jan 2023 08:41:00 -0800
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: xorg-announce@lists.x.org
CC: xorg@lists.x.org

X.Org Security Advisory:  January 17, 2023

Issues handling XPM files in libXpm prior to 3.5.15
===================================================

Three issues have been found in the libXpm library code to read XPM files
in libXpm 3.5.14 and earlier releases.

1) CVE-2022-46285: Infinite loop on unclosed comments

When reading XPM images from a file with libXpm 3.5.14 or older, if a
comment in the file is not closed (i.e. a C-style comment starts with
"/*" and is missing the closing "*/"), the ParseComment() function will
loop forever calling getc() to try to read the rest of the comment,
failing to notice that it has returned EOF, which may cause a denial of
service to the calling program.

This issue was found by Marco Ivaldi of the Humanativa Group's HN Security team.

The fix is provided in
https://gitlab.freedesktop.org/xorg/lib/libxpm/-/commit/a3a7c6dcc3b629d7650148

2) CVE-2022-44617: Runaway loop on width of 0 and enormous height

When reading XPM images from a file with libXpm 3.5.14 or older, if a
image has a width of 0 and a very large height, the ParsePixels() function
will loop over the entire height calling getc() and ungetc() repeatedly,
or in some circumstances, may loop seemingly forever, which may cause a denial
of service to the calling program when given a small crafted XPM file to parse.

This issue was found by Martin Ettl.

The fix is provided in
https://gitlab.freedesktop.org/xorg/lib/libxpm/-/commit/f80fa6ae47ad4a5beacb28
and
https://gitlab.freedesktop.org/xorg/lib/libxpm/-/commit/c5ab17bcc34914c0b0707d

3) CVE-2022-4883: compression commands depend on $PATH

By default, on all platforms except MinGW, libXpm will detect if a filename
ends in .Z or .gz, and will when reading such a file fork off an uncompress
or gunzip command to read from via a pipe, and when writing such a file will
fork off a compress or gzip command to write to via a pipe.

In libXpm 3.5.14 or older these are run via execlp(), relying on $PATH
to find the commands.  If libXpm is called from a program running with
raised privileges, such as via setuid, then a malicious user could set
$PATH to include programs of their choosing to be run with those privileges.

This issue was found by Alan Coopersmith of the Oracle Solaris team.

The fix is provided in
https://gitlab.freedesktop.org/xorg/lib/libxpm/-/commit/515294bb8023a45ff91669
and
https://gitlab.freedesktop.org/xorg/lib/libxpm/-/commit/8178eb0834d82242e1edbc

libXpm 3.5.15 includes fixes for all three of these issues.  It also adds
a new configure option --disable-open-zfile that makes it easy for people
building libXpm to completely disable the code to fork compression and
uncompression programs if they do not have a need for it in their use case.

X.Org thanks all of those who reported and fixed these issues, and those
who helped with the review and release of this advisory and these fixes.

The X.Org security team would like to take this opportunity to remind X client
authors that current best practices suggest separating code that requires
privileges from the GUI, to reduce the risk of issues like CVE-2022-4883.

-- 
      -Alan Coopersmith-              alan.coopersmith@oracle.com
        X.Org Security Response Team - xorg-security@lists.x.org

