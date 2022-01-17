X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3986" "Monday" "17" "January" "2022" "11:54:56" "-0800" "Alan Coopersmith" "alan.coopersmith@oracle.com" nil "80" "[oss-security] Expat 2.4.3 released, includes 8 security fixes" nil nil nil "1" nil nil (number mark "U       alan.coopers Jan 17   80/3986  " thread-indent "\"[oss-security] Expat 2.4.3 released, includes 8 security fixes\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Expat 2.4.3 released, includes 8 security fixes" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11651 invoked by uid 550); 17 Jan 2022 19:55:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11610 invoked from network); 17 Jan 2022 19:55:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 to : from : subject : content-type : content-transfer-encoding :
 mime-version; s=corp-2021-07-09;
 bh=nW4rgIyTSRkBcu3akjU2lJeCaphg/GjSKjauKP9iWMw=;
 b=SRrPLVeLl3EpQFqjDQ0mNROeCO0mLdL05i2zfTePJSNedc/2bXP+LxnffLvo+8UdMR1D
 Xh/xzfI49hGONZSagVmA5pnJK33H5MJ46rycjj+9GNQTtYKbNQREEQScuHzU8ec9dPda
 Q+XXCYpFHWx5+qdbb4T1grzrZNYi1ycVEQBXzcXq8iqvrtF04aXder2yEdy9xX7p5xqb
 4LeGxofgB4u0POR0StRZqQybDTBhrJq+JKP4vNLXMO6oQEKi94gC07FFpPLr6lS4Lqh1
 pJr1TUZASLG5vu5N+DJ2MV+PvbzvQn5LooVl4hcOF1QOF3IfBwNBx2mQWcTWZ233T/c3 cg== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fT57lLsZEiIu9V9d/5BTRshrHVPKKo/e0JQT4vEp/aSqYotFtDpAJUPBrBMB4R00wXC2j/UKZ65GEwJ3uyXV3s3iRi+BPCb1eQm3D+G8hPH5Nd4NtoIqeFyMAk3ivvx3O49PkmQwtuarfH7lGcpdYIsOq7Fwsf65jo2kty1hmYHHXpokN7hD9Rkr4QB1UKfWPyNLzMzV2MDUOyxARSRURLDsyio8SDFzMWpJ+o07Pt8HMvAkihnjFfoyVxuRXvOdNuPHP8UnJkIdvhSI5WO9FH9YTCZsvnmTg2IjotJQKOB4qtNZOgjYcQkzDw28jc0Ghgz0L+YYWxzgn/dfghByuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nW4rgIyTSRkBcu3akjU2lJeCaphg/GjSKjauKP9iWMw=;
 b=WAgTILHkUBetkXj1xhMemuFTicKpDkrd7xtt39S8c9vcEfwj9HOPrNMoKIquu9swLeAzyx4GGyftUmhTWVbIkZeh8XDgZhUUwoY69ckarAMYkKk2ZpGn+tOPBxv6JSoee3kHYHkqtKV8KSltKScdCdzClUKUhRt4WpW5dxZ6SnUAR9mN2UDy/50USi6xzf8R2DFJTNpNS/og21E/YBGh8Vqfgkh7bGh+KHH/0njtQgi95IUUQCqZzySHZV8d2NIaDBcQRAV6PyzJ+EuPxC+9vi+t2FLVFmahurc8cu7W2ODUkNCknXMGI1EwXSTU7FEvpG5SngmHw0ksfRTornPVyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nW4rgIyTSRkBcu3akjU2lJeCaphg/GjSKjauKP9iWMw=;
 b=YlecMiAXgzos3sj/PfTrUOLJDPhVpooHyxWWJUMxA6Xhiwb7oGwj6UF44NZaSl9wlh9P6r71xTGbEumYHMUIffjnx5Q7dcXj3tn9zn8tV2MOYj1qGu6zM7TTZIj/xwpf36gr4H20a01gOQjlcj9GXqsq8W4rbZvhqAXND7L37TI=
Message-ID: <921da528-8b36-8cb4-84c0-5fb105357f85@oracle.com>
Date: Mon, 17 Jan 2022 11:54:56 -0800
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SN6PR16CA0068.namprd16.prod.outlook.com
 (2603:10b6:805:ca::45) To SA2PR10MB4458.namprd10.prod.outlook.com
 (2603:10b6:806:f8::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0c266b37-fd1a-409b-9753-08d9d9f33e04
X-MS-TrafficTypeDiagnostic: CY4PR10MB1317:EE_
X-Microsoft-Antispam-PRVS: 
	<CY4PR10MB1317F3B46600B00ED676BC35E0579@CY4PR10MB1317.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	lxGCPMRTeRAH64Nxft4RWLznPlUy8YK5DgynEfYG4cGpLG9MjyAErN7pGnKNGi/Yt4l8Bxg4xM5zWY5hA2EFOpbW9r8pZyT26dxlYMVAtz/HSi7sATCFnFnFiz0YKKm18rsePMhzNgflHi6xfbN7jgZoGQe/AWBqkuD2at+cKk6lEzvvU3uLLlYQVFxZz4GZ18PNO1KZqf4iLKPcr7MxhrFpPh7V7Hj5Y/DJteIiLxdQJXDYc5gu95P4di39/xEJZ0V83YKwJNlAW8Bt2/iN7zWBU5Uaj4vL8hU5A2N2utPObsqiyKAx+T4j//eoMna1EL4YhSS/G1chy6/q99lcYHINwbUy2cmeg1g/D2Phjj7oKuihapzZHHtlrHxxxIy5QsnoEkCNC3vNjiS38ZFSQ5Y2C+OcA5K/+KoBNcHbohsE54FT8HGUxGBb+++eIfEfUhxqVILCn1uBc4yz1ckwxLzA1NGE8WfI1+VzQz52W0z5XI5On6/x7Y3F2AvEzv5FictsOmMug/ygj7OHyD42exTbsqg4IcpMcCh1/IOJCYtwggz+b9Z1rerBuMuozLkB8SxXie+FlIZMCPc/WpRhWLTtZ2q0OCxH+Q5CABO+B+AmMZ6PksKt7L4/8WvmJKS+HrF3pcBVeobckG7oQbhKQZheApiJYuX50OkAM+/5l6J8yae7iQUtpnhjogxq4xww1INzn5+IbtESc+UhPNdnFD53Na7ZT62V4oV96JSrpXuwChOlPPkBxhIQlWdgJMGGGlpxvtfNkBsScn4bwVCG9RvfDi4C0xc1q2Sr+QvRr1RnXbNhDPtJDBQQrchaVTwjG06n019kb0rwxmmEz9I8lsDdn/CVn1QJkg1/dOCmjqE=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA2PR10MB4458.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(508600001)(66556008)(8936002)(316002)(66476007)(6512007)(5660300002)(83380400001)(8676002)(2906002)(966005)(44832011)(38100700002)(6486002)(6916009)(26005)(6666004)(186003)(31696002)(31686004)(86362001)(66946007)(15650500001)(6506007)(2616005)(36756003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SHNmVFoyZWJlbk0wZ1dXQXlWdGpoUXZtSmpXV0FOVTZ3allMVkQ3YlhSbmtM?=
 =?utf-8?B?cDlydnFveEpzVmR5VnQvWVJiZHBsZVJBNnlWSVZScG5HQzV5a2V4Vzc0aThl?=
 =?utf-8?B?akoxUEViWnRsUldJWnd2ZEQ4R3AwcytELzh0WG9tT0J5bndMakRVbE1MUlV2?=
 =?utf-8?B?K0ozMERHbzJ1MW1SNlJUZHVQclQxKzA1VFJZY3ZIWlRIM0dmUGhCclFhb205?=
 =?utf-8?B?Zk5meWhmQU5DMys2dUhNdVRQRyt5V3BIVjB3d3VlekdOd0lUdGtmTzlhcTJt?=
 =?utf-8?B?eUpicFpKVENHTUNUZGszUFNmb1BSeUNlMkpvb1F1U1g3T3NVclM3Z3pQa3RS?=
 =?utf-8?B?cC9wd2MyZG1kOUpQcXhOWDFKQnNPQmZVRTVibDhXWE5ZbDFlT09KaHR4MnVL?=
 =?utf-8?B?YXR6VXhnbXZGOFJiYUxZbFkxRy9JUExvaXl1NkltZGc2clpmcmt2MVZrQVk0?=
 =?utf-8?B?cTZSMkEvQXBDd3pFa1h4VTBvSTBtWU90WG05RUJNQ0tnZmQ4eENXT3diVWpp?=
 =?utf-8?B?VDFWKytlM0V3WkNxNGlqOXRNS20xb1MrSWJZK0NRRGZUaytYZmZSUFppUU1C?=
 =?utf-8?B?NWgwVFkyMDFVSkFpaS9kNmIzd0NXb1dTa2dnZGhZdHgzZEVzWHVkZHhVbGVJ?=
 =?utf-8?B?MHV0YzVwL3lCUGgvSWdzZ0g1QTNJcHlZelB0T2Z6Zk1IMXdqODA2bDdVOVh2?=
 =?utf-8?B?R0RmaWs0VkVRZmxkYWJIR0pkZGNlMTFBSllnR25sNzdaNXUwTmlrVXB6QUtj?=
 =?utf-8?B?Tkp2RXV0ZDVNVWx5N0ljK3M2Q3lFbkxDOEk0Z2RHc2hvdVFKdjJJRHFQZjhp?=
 =?utf-8?B?OU5KYkZ2dnlEbEgvYm9GL2VrblpncmVOMlFTT1VTaHZYSmswTmhORDAzY3Vr?=
 =?utf-8?B?NklxT0cwbi9oay9XcGJaZ3ozSFJtdVJJVHZadVZPeXdtSHZVV0JaWGhtc1pJ?=
 =?utf-8?B?R3pMZlUxaWtXVVU0RDBSR0tGWkQvY2lRMjZpZGx3UVBlcnhEVkJjMS9sOHBF?=
 =?utf-8?B?N3dBcWNDVzN6YUIxaVN2TWJQY0VkVDVRNFpsWXR0QVovZC9VUyt1NitKQnNZ?=
 =?utf-8?B?M1BrVDFtVldGWkZ2anFMZDdSK3JDYXlTYnB4a0J4b2RHcllFR2FCeklyV3Nj?=
 =?utf-8?B?cWhxWmNTZk5LVnRMQ1dqQnRsajlRN2svN0ZCTjdoNGdnSTBWRUc5WVczRnhS?=
 =?utf-8?B?VWgrRE41SlJjRElabG1vWm9lYjJwQUVuUHhWa2V6VkNZRnlGK0RkWUU1ZWhI?=
 =?utf-8?B?SVhKaE5FQlUrMlZ0WWQ1TktOdkdzSmwrWmFmQXAwN2tHeklDa1BjYWswWjcw?=
 =?utf-8?B?TGtTMFEvcXc3eUs1R3l1V0d5Q1JyV3NHV0xWTjVzNDJtVVM0dy92M2lTY0Jm?=
 =?utf-8?B?aVlBdTJzbFJ5NVY4YzBrdGs2QitEbUN5M09MRHk1YkF1NGFHRW9VbVNyRGJT?=
 =?utf-8?B?WThWaTBCOGxKRGtHWjhyZlltVlhlSzdaZ1VvTU1EdWsvS24xYnh1N0hETzNo?=
 =?utf-8?B?OHU3RWljZFVPR2dpWXNBRHdYcE51QW5NZmRuVTZ2RDBBVURUM1J3dUMxcFor?=
 =?utf-8?B?VEp1WHJCajhQcGJ1cWR1TmpwWjZyWHpxNEhLWHVMaFoxQWxIV0p0ZEdqOTV3?=
 =?utf-8?B?Z0FDUGkzNEVwOUpSbjdZbTFlM0FBMDlSZnlIS2JsWnIxNFN5TWFwMUpRS0VM?=
 =?utf-8?B?RFU3T2t3OVh3U1F6d1VTSS83V2t0Q2pYaXhNL3FZNlRYak5OZ3oyUmNMVS9J?=
 =?utf-8?B?N2VaWnI5LzJRYkNRMzBVMjNUbkwxRzRHcFMzZDdlcnpjNVlZVDhSR1FPSjdR?=
 =?utf-8?B?dHljenhvdERvZkZ1VnY2Nkh2UFZaYTFmM1ZUVnFadUNpWUpJUW1rc2JtTmF6?=
 =?utf-8?B?OHVQdzJTR1BLNTZTSlZiR2FDWU1Xc3ViYnFvV21XbTQ3cDc4OVpBSHFRV1By?=
 =?utf-8?B?Nmp3dkp4YjVwTDRKLzYzTi94KzhqYXBVTFFrVlRIRy81WFgyY1hlMmlQeWFJ?=
 =?utf-8?B?R2xkTkozR3ZCOUViUmNXTGx2ZVRlTlJrZ29jTHpZU0xPUTN1RFFmOHIrQ2wr?=
 =?utf-8?B?U2s3Sk01S2hLcGJ4SEd4WWtpMmw2V1c5ZmZkTXRETzNnZ0RmOWg5bC92aXlP?=
 =?utf-8?B?RlRmR2MwUHZCU3dDWmUyZDRjZW5tQWJGRzFYdU9KRy9VOHZVTGs1eWRNcmd4?=
 =?utf-8?B?cXIxcStic0l6SkdFSEJxOUZsb1N1em1LWlBPRnE1S0E4QnFtOE05a1IxcXNz?=
 =?utf-8?B?UHJ4bDJsWGxja0dsdXVvTEVDMFhBPT0=?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c266b37-fd1a-409b-9753-08d9d9f33e04
X-MS-Exchange-CrossTenant-AuthSource: SA2PR10MB4458.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2022 19:54:59.1654
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4TsflbvdSDuNjfR8wmLbg+ZMPgoJd7/ECql6RmNMbUMGq8XWpXso/WLsEdZIjdq+0DxM1YoEIjDn4deLXjIQJpqR29hxOSoEl0XGXpOcen4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR10MB1317
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10230 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 phishscore=0
 mlxlogscore=999 malwarescore=0 bulkscore=0 suspectscore=0 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2201170123
X-Proofpoint-GUID: RMN2IJLaMOUk_Ic3GMsRThgRF4zFA_TZ
X-Proofpoint-ORIG-GUID: RMN2IJLaMOUk_Ic3GMsRThgRF4zFA_TZ
Subject: [oss-security] Expat 2.4.3 released, includes 8 security fixes

 From https://blog.hartwork.org/posts/expat-2-4-3-released/ :

>  2022-01-15 15:58
> 
> libexpat is a fast streaming XML parser. Alongside libxml2, Expat is one of the most widely used software libre XML parsers written in C, precisely C99. It is cross-platform and licensed under the MIT license.
> 
> Expat 2.4.3 has been released earlier today. Besides two minor fixes to the build system, this release is about security fixes. There is a total of 8 CVEs fixed, all related to fixed-size integer math (integer overflow and invalid shifts) near memory allocation. Impact is denial of service, or more.
> 
>     CVE-2021-45960
>     CVE-2021-46143
>     CVE-2022-22822
>     CVE-2022-22823
>     CVE-2022-22824
>     CVE-2022-22825
>     CVE-2022-22826
>     CVE-2022-22827
> 
> For more details, please check out the change log <https://github.com/libexpat/libexpat/blob/R_2_4_3/expat/Changes>.
> 
> If you maintain Expat packaging or a bundled copy of Expat or a pinned version of Expat somewhere, please update to 2.4.3. Thank you!
> 
> Sebastian Pipping

 From https://github.com/libexpat/libexpat/blob/R_2_4_3/expat/Changes :

> Release 2.4.3 Sun January 16 2022
>         Security fixes:
>        #531 #534  CVE-2021-45960 -- Fix issues with left shifts by >=29 places
>                     resulting in
>                       a) realloc acting as free
>                       b) realloc allocating too few bytes
>                       c) undefined behavior
>                     depending on architecture and precise value
>                     for XML documents with >=2^27+1 prefixed attributes
>                     on a single XML tag a la
>                     "<r xmlns:a='[..]' a:a123='[..]' [..] />"
>                     where XML_ParserCreateNS is used to create the parser
>                     (which needs argument "-n" when running xmlwf).
>                     Impact is denial of service, or more.
>        #532 #538  CVE-2021-46143 (ZDI-CAN-16157) -- Fix integer overflow
>                     on variable m_groupSize in function doProlog leading
>                     to realloc acting as free.
>                     Impact is denial of service or more.
>             #539  CVE-2022-22822 to CVE-2022-22827 -- Prevent integer overflows
>                     near memory allocation at multiple places.  Mitre assigned
>                     a dedicated CVE for each involved internal C function:
>                     - CVE-2022-22822 for function addBinding
>                     - CVE-2022-22823 for function build_model
>                     - CVE-2022-22824 for function defineAttribute
>                     - CVE-2022-22825 for function lookup
>                     - CVE-2022-22826 for function nextScaffoldPart
>                     - CVE-2022-22827 for function storeAtts
>                     Impact is denial of service or more.
> 
>         Other changes:
>             #535  CMake: Make call to file(GENERATE [..]) work for CMake <3.19
>             #541  Autotools|CMake: MinGW: Make run.sh(.in) work for Cygwin
>                     and MSYS2 by not going through Wine on these platforms
>        #527 #528  Address compiler warnings
>        #533 #543  Version info bumped from 9:2:8 to 9:3:8;
>                     see https://verbump.de/ for what these numbers do
> 
>         Infrastructure:
>             #536  CI: Check for realistic minimum CMake version
>        #529 #539  CI: Cover compilation with -m32
>             #529  CI: Store coverage reports as artifacts for download
>             #528  CI: Upgrade Clang from 11 to 13
> 
>         Special thanks to:
>             An anonymous whitehat
>             Christopher Degawa
>             J. Peter Mugaas
>             Tyson Smith
>                  and
>             GCC Farm Project
>             Trend Micro Zero Day Initiative

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
