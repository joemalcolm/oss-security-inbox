X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3948" "Saturday" "19" "February" "2022" "09:47:28" "-0800" "Alan Coopersmith" "alan.coopersmith@oracle.com" nil "74" "[oss-security] Expat 2.4.5 released, includes 5 security fixes" nil nil nil "2" nil nil (number mark "U       alan.coopers Feb 19   74/3948  " thread-indent "\"[oss-security] Expat 2.4.5 released, includes 5 security fixes\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Expat 2.4.5 released, includes 5 security fixes" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32192 invoked by uid 550); 19 Feb 2022 17:47:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32116 invoked from network); 19 Feb 2022 17:47:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 from : subject : to : content-type : content-transfer-encoding :
 mime-version; s=corp-2021-07-09;
 bh=uzWktvoGWuoBBadWFcT95SVQOjYbrzA63fYQtZv4Msk=;
 b=D62VUrN294bWB7OXX4BHaNyc8HtNwspujC5lsPo5oce9vnosRJOmUgWIXSwZypscdxRn
 MlOELCkxQLEegz+byRXUMOPfYGK6ivDdWud5yNCUC9RKlNn2AjAH2Uxrbxa5bQCfh5sW
 dK0nYnWf6skM3p5lSyZaL6bfSSFXDprOOISM2U+/Anu/fN0JW/EaMEC9Ke3d1dsdd+rk
 alkbdx6/YdXIwegsRI0Uitdmyuc7zKsLZAEtncWm3EaYpPsQ8OEx442I8jwFmISfJ2jv
 6BMnkJ3lWOw8OkvOnQWqdY5CQOhWshcNJY0KB+w2BEW7yerzniC9/X/szdT9xnyfLPSj BA== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RINchCMfgxbvcF68kjW1RodJypGXdWKpMvVJ99r12cTTo753tcP3AK4dcqX9ixdatGrz2qHLyxc5egxifzZ5+13fOJGcb8408omdA+VG11QUTHWCZPTV1YQup7ETHGGRi9M2/mXyAZjHURDlV0cRAXXj2+VoSVdPeWzHk7sejKBidI72oSu+gR9yL8T0qtnJcYJWGJ8OPNrW5Ten9LpZ+e6JCylRFR3ZV8jgBbw6mdAvHk5TdkLNxqlrPYIW0sbi+8/Xd5OH1cjhyXN8vIO67JHMIDr05yhtdpTU3P/0TPC0pVOo6vpYuRTQPXpNjIuqUnfXRXUq9R6fuIsJyLQXzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uzWktvoGWuoBBadWFcT95SVQOjYbrzA63fYQtZv4Msk=;
 b=Zfz3mVsUhqRS5M4RcBaMImh8UqmeIplWMmaoS6GRlqHXKCQb+axTprAMwfcW91n2byE8a2PQgv3Npx8grbhVw33A6UC0lV5/mnAND6SFEoGklpo6nVmmEuM2DO3liSJCNoSH2HYqJxg/SeDsxN+psn11DXEwRI6KnoZW+q8Zxxx84vhxi9k8zhv1b+47anZnIZkE53WX8FRCaKR7uNsNaMcLpkReO8Yk7B9hhNpRMDooZIHLR158xQnA2Z/XTlQeHppDnzaFUX0Y730ocH/ZthSo1Ub1angVPPFF2UBbtE/tfA9I/eCv2Z5AhPJMTBVnGFFqX7wSsWFf0A7JVrCZsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uzWktvoGWuoBBadWFcT95SVQOjYbrzA63fYQtZv4Msk=;
 b=LquyclCZwQSCezG9cx0U0yVBB0Un3dymwIiS9EaSEmaHHLz8VfpkjmFkvPrAyWgxt90WNkGwsEXBJgAaJjzfbjy2TZ/XItHTsldXxTnqEqgx8EZ3Ek1/dP6ZwCInTLxYlrcVKbSiJzTZAbxNK56hwxrw4knCHxrqaUFIHNycMgI=
Message-ID: <48dab10c-9a77-cf3c-981d-c72b9345f7c5@oracle.com>
Date: Sat, 19 Feb 2022 09:47:28 -0800
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR11CA0062.namprd11.prod.outlook.com
 (2603:10b6:a03:80::39) To PH0PR10MB5730.namprd10.prod.outlook.com
 (2603:10b6:510:148::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 723a3dd8-a4fe-4056-ffbe-08d9f3cfe6ed
X-MS-TrafficTypeDiagnostic: BYAPR10MB2693:EE_
X-Microsoft-Antispam-PRVS: 
	<BYAPR10MB26936E8951BEEBA471735272E0389@BYAPR10MB2693.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	1DUcUO+bTqRq1NB/opFG26WOnt34Xu9a4e+yv5RoLXN8jP+AOPaNZN7bC7vtj2sVCEho2JE0tm8h5Ira/w511pb4JyK+/LsHYhOGne1MK9Y32xaJjkpLIA2kjLw2RhgA7u6sr19qBj7tL4e1sUYBNVBpqw0ibrdvODpXjKCqeoR5TjchRO4U+0MwBDZagQtiV9JYdrsecAQx6msWgZmcV9e2MEf+7gm7vHd9x1KlqBmTH1EnF8nxs2WnJFq77keLRbovqrUhpsvOCxUqWMmZtUxE1qJQoxWU4IDMP15lAxLuloq1swOuQCvY1yuzJsgpnxv5civ9QGg7gpCz0bCxZm1PdZNm5Qn5bZGGvIVzZa13aDMNoF01P9GEHcLcgYWWUAcW4uPdXUKnOhHpIctktrPsYk+2wRO87vq5iUnFtdM3p/AVvc2PVsdWVDTAL210rcYzl1I9R3eaI9Bz085QqMwpt9Js8MMjGQQKfgsZEAwsEvy6hurQn1XVk2TLw48WpkjMea7hbzVll2vUJXD7XCyrxeSo97XYhzQZpv7GWQKyWNH6atKQa70nOvEubhmINioqB8DMphUB2CO+UxfDh1Akc6xISh4XoUV2fAYYhjU+3gh5+rwP1Su50J5KZfnLPZ+HP3bWxwye6wJxZhqX9b89weMdmjTFCfpkf8dGHTkwL0B7n97WiLVISLnjyLyKX6kdu3PzgqDogYHhZDOdDLJ588MTg5Flr2bq1yltgJ2EZd/LiCymDwyzOh4IuOSv3uylolMtJhjDp1HYmEqLyrt1bexQvRxqhf5gKzHLdi6qrCJ3WYq+otGUdxks0YVthNF7vBupKIhQeOa6YZT9ru9fGbdt+a/+WRvvH2Uh3cc=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB5730.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(83380400001)(8676002)(8936002)(44832011)(66476007)(66556008)(66946007)(2906002)(2616005)(186003)(26005)(36756003)(31686004)(508600001)(6512007)(6506007)(316002)(6916009)(31696002)(86362001)(6486002)(966005)(15650500001)(5660300002)(38100700002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WTJmMHFBSzJMQXg2V2lEc0hwWk1ORFBQTWlPU050azVDcWthZlJEYWJnUW5U?=
 =?utf-8?B?cWlLeEdsS3F3QXoyZXB5dkJHSkowS3kvWmRSU3c2RzhvRFhzbHZJdHlqanRv?=
 =?utf-8?B?TGU4VUkrWlVZbHROZGN6cHp3bHNPRityRlZEa3ZmaHZDVldaVnY2TnljZnA5?=
 =?utf-8?B?M2ZUSGZxYTJZYlN2L0F6U0hNVVRONGVybDRxYUdpMkRobEFJVENnWmRoVVls?=
 =?utf-8?B?RUViYnNSZTR6Yi9nUnFIVklFdXN6YXBFMVJrSGpkTVlTZkhGYmxHNkkzQ1Nl?=
 =?utf-8?B?ZVBaTXRncWkxWVg1dnBSOUVibnNmSXdYWHFmcGlGREtRbWJLU2NZdmdXSUVO?=
 =?utf-8?B?U3lWRWNmMXZxMCtMKzdWRGZHakpPRHNvNDVOUHMvYVhDeG5GRTg5UGlaMkhS?=
 =?utf-8?B?N2h3Mm9NNitndnRPMVRyWWRiMlFsNjh3dEp5OGNHdE5BRzF6UllsMWJqNW1m?=
 =?utf-8?B?OVJMcEdQdmsxV0VWWEdKS2hhcjFCc2FQT29Ic2RqMjVXYnRnTWR2eHkvaUNF?=
 =?utf-8?B?Mm00Tmg5NUdLQVRVUVhKZTVzTi9yZmNGSVh5U0xnMnF5cFpWOHpGM0tVRXV5?=
 =?utf-8?B?SXRjUFZrSUVhZFFjN0VWZzJrMzhvOUgvdUVpS1hYNjIvMTEvcGI5K2NlUHlr?=
 =?utf-8?B?OUhJbUd0OER2YmNMUEdzbHcvT0c3S3A2cVNxbXY0T1E5T1VNcEtFZmJEajdk?=
 =?utf-8?B?UGw4VHR3N1NDZGtMYmN0dEZQQzZUVloydTIzY1NNQmVBeFNPVVZUK0hjYTNQ?=
 =?utf-8?B?WXIxdFJtMUE2VXRsVTV0RkU4Yi9FS2JXa3dnVncvVTVnZDVnM00zLzJmWmoz?=
 =?utf-8?B?eENmUGhMMUFnMVIyMTFHamticE04QW9mb3NwYkNhWHVXbEZxdGoxYU12cC9T?=
 =?utf-8?B?cUJiVXBQU3A0bFQvL01BZkUxMmJ6NWNGZ09zWDhQcXkrVHIvMWVESjVpYy9x?=
 =?utf-8?B?eitTNk4yR0JBL1l6VWtXQm5SeFlRZTNVQ0FZc0w2V1ovaHRQRFdOeU0zUGtu?=
 =?utf-8?B?RWtnTjVkTGtxK2s2Wm1oUnI1UGkwSUgxaDJBWnNnRHo0U2xmcTNTYVJzS0ZG?=
 =?utf-8?B?SWpJd0pjeXQyamtzQTJja1QvMlhCYlhOeC9maTZqZTdvYS9MV2RFTklkU3RU?=
 =?utf-8?B?U0VpWTNYUWlUd3N0RUg1MkhXOFhoWklZcXpRTXB0UHFSajBYM2p1aURZNldt?=
 =?utf-8?B?eGh4ODBxejJYbm5IWmU5MVFVbmtGczk3aUsvZlpuMU9leGtBcUlwZi96cXE5?=
 =?utf-8?B?TkZSSlc2M3hIcEdWZnA3UzZ2dEpXZU5zcTVhWnErb01CYk1nNDV0YzN3d3hk?=
 =?utf-8?B?a0FUaU8zUFViZ09tdnR1RWtNVlMrRHFETUZKalgrcEt3WndIMUxtemFxbUFi?=
 =?utf-8?B?OTBCNU12UTJvQU1xK2NQaGRYd2dibHZGS2RpL1VqeEhma042aXVrNEpmYmFJ?=
 =?utf-8?B?UWlXN2FFdXV1MDV3WXJZNDJabFBVT2lHUFIzK1MzdHJ5ZE1OZGhOdzNMUWhy?=
 =?utf-8?B?eGNjZENaS2lMTk1mR2J6ZWV4UFE2VnQ2bWp5ZjNRZVRRejJncjVaOEViL1FD?=
 =?utf-8?B?dGsrMTA3UHlicWRwUTFjOTM0REYxWWhYODhoc1pEdUlqQzV0ZE83UGlmQ2hE?=
 =?utf-8?B?Q29nQXhjR28vNFZHbmtnMjJOaThMcWloOVg2bmZNQ0Nmb1c0TjFiaWNaVFFH?=
 =?utf-8?B?Zjd3U21ZendjZWtkOWE3Z1I2NGxJdkMzWVU2UjRJWWtPLzF6QndLOGQ3dEo5?=
 =?utf-8?B?Ymxyclcyb0plMUtoUXluNmxXWW11bkxSVGtXZFR5UEVEK1RqcWVLbnJITmpT?=
 =?utf-8?B?R1VEb1NnalpZK0p5SVEydnB5eVNTZFdSOVE1ZUxiOFQ5YmtmalB2MzJpZlJV?=
 =?utf-8?B?TW1HMmdIRnpmVFJ3UnNqMDd4dFFRc3Q3RGZOdTRwYnAxdzdBOHh2V3VtaU5T?=
 =?utf-8?B?QWFlQTlscmJrZkczZmJOSGF4cHgwZmNyZWhKbEN6Y0xJWkNkWWVmZXRCdWJv?=
 =?utf-8?B?UHdUNmxDN3l0eWo5WHEyOFZhaWFneDFwVEtkTDQveE9tQWV1ZGtQNlpUdVVS?=
 =?utf-8?B?SS9wd3Y1RWE5MS9DbllJbXNwZlhuSlhJMFNvM0tyazUxTXR3S2lEakVja0lh?=
 =?utf-8?B?RDNCaWtlM1lSbFh1alRzcjJVRFNsNzdLTG14SU9qdmt1VGhoMEQvMDlOdmpw?=
 =?utf-8?B?SWlRN2lpY29CWURhcktVdFByZnhvOUhwWkJRUVNLaldlbFFzMERtTW1oT1U2?=
 =?utf-8?B?OUlnUXhYMEloSlpTa1c4NmZDdDF3PT0=?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 723a3dd8-a4fe-4056-ffbe-08d9f3cfe6ed
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB5730.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2022 17:47:30.8710
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Qk337NPiukXAvW5Sdi7HJXKo8Mkyi9mbGhS9siutnQ6DJKVszkX8504mW3yQbbZowC/159l0hFuTeQ78qNadRz+tE4hUgJObsRoJEVOCFA8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR10MB2693
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10263 signatures=677614
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 malwarescore=0
 mlxlogscore=999 adultscore=0 bulkscore=0 phishscore=0 suspectscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2201110000 definitions=main-2202190115
X-Proofpoint-ORIG-GUID: X63GOywwNaoWDUoB5rjKflqQBLBMPoO1
X-Proofpoint-GUID: X63GOywwNaoWDUoB5rjKflqQBLBMPoO1
Subject: [oss-security] Expat 2.4.5 released, includes 5 security fixes

 From https://blog.hartwork.org/posts/expat-2-4-5-released/ :

> Expat 2.4.5 released, includes security fixes
> 2022-02-19 01:23
> 
> libexpat is a fast streaming XML parser. Alongside libxml2, Expat is one of the most widely used software libre XML parsers written in C, precisely C99. It is cross-platform and licensed under the MIT license.
> 
> Expat 2.4.5 has been released a few hours ago. This release is about security fixes. There are 5 CVEs involved:
> 
>     CVE-2022-25235
>     CVE-2022-25236
>     CVE-2022-25313
>     CVE-2022-25314
>     CVE-2022-25315
> 
> Regarding impact of vulnerabilities, please note that looking at a vulnerability in isolation may miss part of the picture; e.g. if Expat passes malformed data to the application using Expat and that application isn't prepared for Expat violating their agreed API contract, you may end up with code execution from something that looked close to harmless, in isolation.
> 
> For more details, please check out the change log.
> 
> If you maintain Expat packaging or a bundled copy of Expat or a pinned version of Expat somewhere, please update to 2.4.5. Thank you!
> 
> Sebastian Pipping


 From https://github.com/libexpat/libexpat/blob/R_2_4_5/expat/Changes :

> Release 2.4.5 Fri February 18 2022
>         Security fixes:
>             #562  CVE-2022-25235 -- Passing malformed 2- and 3-byte UTF-8
>                     sequences (e.g. from start tag names) to the XML
>                     processing application on top of Expat can cause
>                     arbitrary damage (e.g. code execution) depending
>                     on how invalid UTF-8 is handled inside the XML
>                     processor; validation was not their job but Expat's.
>                     Exploits with code execution are known to exist.
>             #561  CVE-2022-25236 -- Passing (one or more) namespace separator
>                     characters in "xmlns[:prefix]" attribute values
>                     made Expat send malformed tag names to the XML
>                     processor on top of Expat which can cause
>                     arbitrary damage (e.g. code execution) depending
>                     on such unexpectable cases are handled inside the XML
>                     processor; validation was not their job but Expat's.
>                     Exploits with code execution are known to exist.
>             #558  CVE-2022-25313 -- Fix stack exhaustion in doctype parsing
>                     that could be triggered by e.g. a 2 megabytes
>                     file with a large number of opening braces.
>                     Expected impact is denial of service or potentially
>                     arbitrary code execution.
>             #560  CVE-2022-25314 -- Fix integer overflow in function copyString;
>                     only affects the encoding name parameter at parser creation
>                     time which is often hardcoded (rather than user input),
>                     takes a value in the gigabytes to trigger, and a 64-bit
>                     machine.  Expected impact is denial of service.
>             #559  CVE-2022-25315 -- Fix integer overflow in function storeRawNames;
>                     needs input in the gigabytes and a 64-bit machine.
>                     Expected impact is denial of service or potentially
>                     arbitrary code execution.
> 
>         Other changes:
>        #557 #564  Version info bumped from 9:4:8 to 9:5:8;
>                     see https://verbump.de/ for what these numbers do
> 
>         Special thanks to:
>             Ivan Fratric
>             Samanta Navarro
>                  and
>             Google Project Zero
>             JetBrains

[Versions 2.4.3 & 2.4.4 fixed a number of CVE's as well if people missed those.]

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
