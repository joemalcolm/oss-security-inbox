X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4213" "Tuesday" "23" "March" "2021" "10:13:48" "-0700" "Alan Coopersmith" "alan.coopersmith@oracle.com" nil "103" "Re: [oss-security] Multiple memory leaks fixed in Privoxy 3.0.29 stable" nil nil nil "3" nil nil (number mark "U       alan.coopers Mar 23  103/4213  " thread-indent "\"Re: [oss-security] Multiple memory leaks fixed in Privoxy 3.0.29 stable\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Multiple memory leaks fixed in Privoxy 3.0.29 stable" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3816 invoked by uid 550); 23 Mar 2021 17:14:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3798 invoked from network); 23 Mar 2021 17:14:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=subject : to :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2020-01-29;
 bh=nc3NNwDpQClMpEybMhWhj9hfQentIWB63P9DZvnbVbY=;
 b=sRY6EkiGG4AZ6hmG5icWceDp29HXAGyy+RgT8Qyo27UC7hBFMoatMjKOGwkS8cIZYcd9
 FMYI2gCL4JDZtFhhshULL+rmfAY7NWxEIO+HSAM8jfkgWZUO5Zjqwz5nq51i7aQUnNdD
 UWmEdf6FtF6I1e1OE5yEkvYH9Ejx4+4V2d6N6oa3dklV1+PcgfDRTzYczb1nHs9tAA+g
 TlxP2uMwQak5J/9szohcYBd4S1uzaHXxQOdjv0JdC/nTkjlbRYagTMWsFT/LNqPS/224
 8ePKJEVt+DGST2Uy+k57EjOPlR4QSMFeM1w39JrO1LAzjAq7hsP+02BX95HUp5LSFGGE MQ== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BCJowf9XWp+Dqv6xlxSZddweD0LtqCfIq3FovD4jAPaCZdCxc5OPqIKZ5Kw+2ReTDyy0dhxwB2JYMjMNrXZyCqMKvmke10t1ldbaGc9k1T4+PS1V94fFC+tL4EkmWnO/X9AxJv9cLD8dC2nU922AO+kRFbL2QjAqijxon7CgEHf4qpDSqC8uTZlXgza9zhwi5NtaRtdQgBbfs40DMnwlqlc9ijLzHnqagWJFUsmyG65P103bUghg3dmtBdLRizELgtnD5xgQfH+/lqluNQbl/w1Sf4mukb+wDuTNzV0CpYfrv3OpE/myhlhL+Uj7KjbWZMD+Qm+UO8Q69aGEYYoH5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nc3NNwDpQClMpEybMhWhj9hfQentIWB63P9DZvnbVbY=;
 b=DBuZ1y4B+aYnprKrm/zQC76uB7GL5C3oH5u/xcExkHqwWooW7AVUKEdlCExdX+nE6gefznSwhJiu6nDURcJkncHrVo6NqK0S9T+Dwu/XnD3Vm7xK9VyzaOsFy16WoJvrIa/eagcf+gbGohkcv2PdDs34uresaYPhCpUOtXdbyRRS6E2cnubXAAWtY8Iw3iqkVr9fwqfB8zkRNWIywGKuQIjyHqHgTD3bWclEHHi6U7w81gbsQ4Syj/+7UTJtPG7f7W9NzZLvqn6Y4MTzGJiBR6Ak7C/tlbjxagmS3zVLXyWnkN5vON6MRG3JXg19Hviptl/DpScaaQP2gqDioRjuWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nc3NNwDpQClMpEybMhWhj9hfQentIWB63P9DZvnbVbY=;
 b=A3Vh/dIkNTZRMwno3ZUsqWl2ASGkcsJD1DmMGRTCFaTgntViHAfIsqvwp7S1/mn7OTMEv4cE3krwKCa5LxDY1mlDaAn9Zx2O2D9ZLoGorcLecJwTQTR8I37I3nxu/FmEqnB6umwvCbHJEMzrVhiw1LUukSw5D+lEnEjt6Bgm4Mk=
Authentication-Results: lists.openwall.com; dkim=none (message not signed)
 header.d=none;lists.openwall.com; dmarc=none action=none
 header.from=oracle.com;
To: oss-security@lists.openwall.com
References: <20201129165312.64bd840f@fabiankeil.de>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Message-ID: <ae651bbb-c98f-9cb8-5392-5f47b254264a@oracle.com>
Date: Tue, 23 Mar 2021 10:13:48 -0700
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
In-Reply-To: <20201129165312.64bd840f@fabiankeil.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Originating-IP: [138.3.200.47]
X-ClientProxiedBy: BY5PR04CA0024.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::34) To DM5PR1001MB2412.namprd10.prod.outlook.com
 (2603:10b6:4:2f::35)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b6d27032-681e-44cf-9d95-08d8ee1f0739
X-MS-TrafficTypeDiagnostic: DS7PR10MB5152:
X-Microsoft-Antispam-PRVS: 
	<DS7PR10MB5152A131FE600E8D036B17BFE0649@DS7PR10MB5152.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1169;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	svbn+cqS1Je1MOw7C2nE35XHNEKz+6HrdoWHyfU3WoBrfp0+JhcB9pBm/8btekTXLnGlSBnw+Oy0s/6L7RDpWr8+TSOjdnucFX43+OGsrkgeNPh57EZUQlXm6ar5m4YliWupUYQ5J/maq8W4g9rIFwrZWmu26NwX2idivSVGNoHZz5ycDrDZaZFbXzwi/sxmKvaCLxmiXpv0+9iYO7p8qZ3jN34g+uhbeALetjN2wIjs0lE2HfS2J4RYGB6PTbJ275jhX1S8FVNbtcJZtIb2fOHHIA0M1hfREvwH31dBlXBgYsZTlGiCsL0P/GbnWr+P8G3eamlC28StAzw2qBdSQKDwCqn5qa5mocQJOgy090TWUJkDWHWxzB3bQ25xzAiqyAYC7Qsv1Lqg3CnPPMpX38E74e4A/xEO1Xc6jnLWyMasaYZVwjNVbmGUBQTpCLT9hLMHtDE5RBDQEw5jw3cKbcLj93o11zAmtk8Sgnw2QM7UpPuoeg23Iia5Hy/THwz3iNDN9MOeehpMJ+1rylzuZiH2o6BHlo+j0olJ2K3mrmj50Id94q1FD3n4TSGlh1D1LlBgoTHBTmOChcjJjMRIYPhkMrJeR95IA2VbDcifjIR+MKylKi8R1eBgnccP+BdyY9X+95KWEeO29vC5WbVGP1DyjHLFMkdIG3jImyv9+jxRxhPAp2BOz0yfdrF+v+mkh9GCd4V/WRMxVP/8rOQCoQ7nFSQwZ1PhsoFwP4JlNTA17WMyvJW3lIw1Eq1Sx+OqI4aNYApTWDCaAtm0vMZAH1XBr+2Zup6k8SYcNj3zpKeqCcPolqaT+mZNwjGoa+aHPBfGe6aKj0jn1fNjZf8NDC9LGtsuozLzpoytoiuyfUxotq7cq7Z4ij1oFeGhWRFHs2CcJjo5doLuHH2PfBZSnQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR1001MB2412.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(136003)(396003)(346002)(376002)(366004)(39860400002)(36756003)(31696002)(44832011)(6916009)(2906002)(8676002)(86362001)(53546011)(66946007)(8936002)(5660300002)(31686004)(6486002)(15650500001)(66556008)(66476007)(186003)(966005)(16526019)(478600001)(16576012)(66574015)(316002)(26005)(956004)(83380400001)(38100700001)(2616005)(2004002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?bUZoWmdJL2N3ODFzOEZNV2tiMzZQR3dOdW5VZXozcmJiUFJlaFVhc09uVlRW?=
 =?utf-8?B?NG8rcUJxbzRDTER3djVNQjE1WC9PR2RNTWhPTUovTE9Ma1ZsanhkemQzR3Rh?=
 =?utf-8?B?MThteHVWd3o1MDM3V2VYQzUydDRocElxblBFcFNEbTNBYlJVb0pLaGlEOHRS?=
 =?utf-8?B?aDFFREdmUG9CS0Y1NnE1WXpKZS9sWkUzRXFGTmVrWWcwd28vU01LWGJ0a2d3?=
 =?utf-8?B?NXNJZ25RWGNnZzNtOHFaOG1qNnNQKzFHKzdMTklpNHdCMnNKRjBlWEpsZW9z?=
 =?utf-8?B?L0VqeU9yZ3JONS9JRjE0cUZNcXVkSWdUZ2QrMGRoKzVtY0ZFZk5ZdXR6UXRu?=
 =?utf-8?B?azVUWlpsM3BvY2ZSWVRnN3VHREF6TmtqMERYM095Z3ViMXdHcjN2UVlSRDdy?=
 =?utf-8?B?UEorM0hpTUdTemhGaUlSbWdrTWgvRmZwS3hOZHdXMkc5dmM2Wk5uWW1YNUZo?=
 =?utf-8?B?SCtmS3d5bHMycmVlTXRoMW9tRHRwTHRrYWh5cUYzWWg5WnFEcjVEYUpaMGxS?=
 =?utf-8?B?ZlNXU3NjVVdTMGMwNVdhZWNQdHVFMkVpcXpoWTlEc0Y4YzBTQjJtekJiRVBn?=
 =?utf-8?B?L05xMHlMcXU1blZuUTBaMFRucWdLWlRCaFZBN2ZoR1E5NWovQmZIdnN3R3VS?=
 =?utf-8?B?a2FLcjRNdVdad1hHb2pSSzFMejNWZktpcGI4N1MvSHh2VnFmR0xXWXplS3NI?=
 =?utf-8?B?M2dreWRhdW9DWFJZQ0NTekR6aG5Pd0hPQ1c0UVFRTVZpQ2JsZXdYb2t0aUE3?=
 =?utf-8?B?eVJqVjl5TlJUSktpdmZWYll5cXZTWUlGM1daSlhiZkMwVGVtYmw1cCtEa0NM?=
 =?utf-8?B?UUtRb3UyVnpoYTJKUG9mUkVzdmZCQURYVUFwYnFmdEJOY1MzMzBGT09YVElo?=
 =?utf-8?B?V29HM0VIbjlPNWptck45M1NPc3FoeHlnNTczZDhUaHJBejhkMXNublpTUUhu?=
 =?utf-8?B?bWo2VkhWNytuVGFoNjR6WHozSGZYangrTWpKWG1FMzdaSzRjL0hJeVg2TjhW?=
 =?utf-8?B?WkdYU0tLRkVpdFM5bU82QnB1NGx5WCt2cWxITXdJWDlUNlJyY2pDb2lVeVZW?=
 =?utf-8?B?MGZTbll3bkszdEg3Q3R0amtFa2RZeE1GYit4b1NrQUM4UEkyWlcweTIxbG1k?=
 =?utf-8?B?OGN3dlV2QitZN1hSeVZpVlk2OSt6blpva05obnFtT2dpSThyb1dwc0FzUEJI?=
 =?utf-8?B?WlE0WGtmNlo3NndQZmt2L1czc1lOREc1bVZrcnBhcWJqbHVGQU04TUZuOTJp?=
 =?utf-8?B?VVRHNkZHcU9CcUF3NjJnQXBleksvcXkwaC9mZEhuRXRKL0lkYi8vQjdKTndW?=
 =?utf-8?B?ZWhncGJJQ2E3SHlrVDFVZTR0bCtHUGRGMFdkZ1d1RFBSKzRkTTFYRTlqN3I0?=
 =?utf-8?B?RXRFVEdZQkdlRHVBbkVObEUyYks5enFjQVJwOHh4VjdsOWJMSDVVYlhjZWJC?=
 =?utf-8?B?U1RYQ0VISnlyTUttRXpYRFcwS0orUlZMSUtkY01CNzNhL1ozcE5OV3huTHVU?=
 =?utf-8?B?VUE3bDRRUkFJTmxPZEVscmtPeDVmOG1WTHFIWTZrcG9nT1B4N0dtUzZ3V0ZJ?=
 =?utf-8?B?QXRScnl3MlhoS0RsWjBRZlR6Y3ZZSWMzNkVhUXEwMFVmWW9yMHpaSGNvcjlR?=
 =?utf-8?B?d1Yza2M4YnFEeTE2blp0Wmk0aFZOTVV2MVFNZUUydGpBZ0R2dHFwWG9lR3hx?=
 =?utf-8?B?QWcyZXZpYURrU0FrYTZ0RjJUa3FJQUd3S1lMcWVmVGxkMWNFZXNObSswNkdj?=
 =?utf-8?Q?hf31OGubIk2D43R2vnIltODLMItB6SHbljKmi5c?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6d27032-681e-44cf-9d95-08d8ee1f0739
X-MS-Exchange-CrossTenant-AuthSource: DM5PR1001MB2412.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Mar 2021 17:13:51.3503
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9kx/JcBuAIKoE0Ac6dxxe9JnI7LUCFJh8XMIezs8HfncaoXzZBU+5O3t5Df8WNKV1OlXPGdCa4BeKQk7q+7HIR/npF8Wn2z33/f0KpWblDk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR10MB5152
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9932 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 mlxlogscore=999
 malwarescore=0 phishscore=0 bulkscore=0 mlxscore=0 suspectscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2103230126
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9932 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 malwarescore=0 mlxscore=0
 priorityscore=1501 bulkscore=0 impostorscore=0 lowpriorityscore=0
 phishscore=0 mlxlogscore=999 suspectscore=0 clxscore=1034 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103230126
Subject: Re: [oss-security] Multiple memory leaks fixed in Privoxy 3.0.29
 stable

It looks like Red Hat has assigned CVE ids for these issues now, but
not yet told Mitre to publish them:

CVE-2020-35502 privoxy: memory leaks when a response is buffered
https://bugzilla.redhat.com/show_bug.cgi?id=1928749

CVE-2021-20209 privoxy: memory leak in the show-status CGI handler when no
action files are configured
https://bugzilla.redhat.com/show_bug.cgi?id=1928726

CVE-2021-20210 privoxy: memory leak in the show-status CGI handler when no
filter files are configured
https://bugzilla.redhat.com/show_bug.cgi?id=1928729

CVE-2021-20211 privoxy: memory leak when client tags are active
https://bugzilla.redhat.com/show_bug.cgi?id=1928733

CVE-2021-20212 privoxy: memory leak if multiple filters are executed and the
last one is skipped due to a pcre error
https://bugzilla.redhat.com/show_bug.cgi?id=1928736

CVE-2021-20213 privoxy: dereference of a NULL-pointer that could result in a
crash if accept-intercepted-requests was enabled
https://bugzilla.redhat.com/show_bug.cgi?id=1928740

CVE-2021-20214 privoxy: memory leak in the client-tags CGI handler when
client tags are configured
https://bugzilla.redhat.com/show_bug.cgi?id=1928743

CVE-2021-20215 privoxy: memory leaks in the show-status CGI handler when
memory allocations fail
https://bugzilla.redhat.com/show_bug.cgi?id=1928747

	-Alan Coopersmith-               alan.coopersmith@oracle.com
	 Oracle Solaris Engineering - https://blogs.oracle.com/alanc



On 11/29/20 7:53 AM, Fabian Keil wrote:
>                 Announcing Privoxy 3.0.29 stable
> --------------------------------------------------------------------
> 
> Privoxy 3.0.29 stable fixes a couple of memory leaks and introduces
> https inspection which allows to filter encrypted requests and
> responses.
> 
> --------------------------------------------------------------------
> ChangeLog for Privoxy 3.0.29
> --------------------------------------------------------------------
> 
> - Security/Reliability:
>    - Fixed memory leaks when a response is buffered and the buffer
>      limit is reached or Privoxy is running out of memory.
>      Commits bbd53f1010b and 4490d451f9b. OVE-20201118-0001.
>      Sponsored by: Robert Klemme
>    - Fixed a memory leak in the show-status CGI handler when
>      no action files are configured. Commit c62254a686.
>      OVE-20201118-0002.
>      Sponsored by: Robert Klemme
>    - Fixed a memory leak in the show-status CGI handler when
>      no filter files are configured. Commit 1b1370f7a8a.
>      OVE-20201118-0003.
>      Sponsored by: Robert Klemme
>    - Fixes a memory leak when client tags are active.
>      Commit 245e1cf32. OVE-20201118-0004.
>      Sponsored by: Robert Klemme
>    - Fixed a memory leak if multiple filters are executed
>      and the last one is skipped due to a pcre error.
>      Commit 5cfb7bc8fe. OVE-20201118-0005.
>    - Prevent an unlikely dereference of a NULL-pointer that
>      could result in a crash if accept-intercepted-requests
>      was enabled, Privoxy failed to get the request destination
>      from the Host header and a memory allocation failed.
>      Commit 7530132349. CID 267165. OVE-20201118-0006.
>    - Fixed memory leaks in the client-tags CGI handler when
>      client tags are configured and memory allocations fail.
>      Commit cf5640eb2a. CID 267168. OVE-20201118-0007.
>    - Fixed memory leaks in the show-status CGI handler when memory
>      allocations fail. Commit 064eac5fd0 and commit fdee85c0bf3.
>      CID 305233. OVE-20201118-0008.
> 
> - General improvements:
> [...]
> 
> -----------------------------------------------------------------
> About Privoxy:
> -----------------------------------------------------------------
> 
> Privoxy is a non-caching web proxy with advanced filtering capabilities for
> enhancing privacy, modifying web page data and HTTP headers, controlling
> access, and removing ads and other obnoxious Internet junk. Privoxy has a
> flexible configuration and can be customized to suit individual needs and
> tastes. It has application for both stand-alone systems and multi-user
> networks.
> 
> Privoxy is Free Software and licensed under the GNU GPLv2.
> 
> [...]
> 
> Home Page:
>     https://www.privoxy.org/
> 

