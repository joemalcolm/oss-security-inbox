Received: (qmail 19472 invoked by uid 550); 9 Aug 2022 01:32:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18430 invoked from network); 9 Aug 2022 01:32:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : references : cc : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2022-7-12;
 bh=yeAXIbu9HXOct1TablpW9ChfN9D0Fgp1MlDcjPPFWUU=;
 b=v1+CXXshAE6EASUmEDa+pBtYC2TP5N039fJOSKA7M22oZe84NFsTZ4i1AKS0F24zlz6f
 kpQpZYpFwHL4gKENesJ6PYRrX5nZxPkSIzokcDAxX7IEB0O7FRPfmNnBafFxO9fwK4jB
 HGHGmHqpD+wn2RkKc0qkPT8iJh+jv5wK4WFhLz4CkzrRHuUV0Zxaon0FQDN4us8mZjjH
 Zin2gBIN5rft/33wK6djmrc3z/xd3/0BgLgGvIZSfEzeID6J5yGEy0/9q+nvKyWLnicC
 +AVlGKcyszDl4jzItMZix6/Nuo0OZOndoVCHCkB8wwQb0pX9iwQRlsz+29ALNZBlOxlz rw== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SlcNJ02KVrag0XUSOXO+hL0bHX0k2QT6zQ5EExjl1b9Apj/8/WU8Qn1ZLKbjxrt4V4ztmouyzNH0I6J/kDKQ5EcRF9baIJn4QCKP6471igd9+lPYKmlOHwBF2tGsluyu8A9tH8icTWaPCd8+GKDq3oOsuBcHol4+jcx5i1owVxFbKaQuMFBrocczCz9Y+YJtKL91DS8/+sve3dJZEYI6nujen+RolESJm8sq2KkZU+SmRKpifGo5GsBtj/cMancTaznAbz2ipYeppKImbkwW7ViUkqr4x55pOJXgqJa38xTZZd+uFQ4H6Css71P35tqH5LLnR+VxA3A+OId6BHgDbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yeAXIbu9HXOct1TablpW9ChfN9D0Fgp1MlDcjPPFWUU=;
 b=H6f1rCQ+d9WS38FfnBqk9cbx/xg6+GmQC+NkAebJSlgbKFwuoBo0XXDg7AqetdeI/sNPq8irDUCjTEItWVuuXuKtcp3Q2YmYJXEBYKwX2QhDAf2+zoSyAFQdMkVJRovoARc152KKgwwdf65TFxx3GDHayN1ixntxHl2sidQGg4IueRI5YtlVnLcanmmEp5BMKDjnuCsJRI/U941UOmffrxgWHviobV+umOyInSHoDwlxbE6wKUHS9w9xR7UmI96eipIMupfjIUf4ZdVFt4Mo43HDvOvKxLqvb0FGJ3clmBE6kflOCR0G2rhL/vae25E/uRgQSXIjwHmxLJ2/5+ldyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yeAXIbu9HXOct1TablpW9ChfN9D0Fgp1MlDcjPPFWUU=;
 b=oAatMWS5t9maPYPmRXmKp0EfadLsBphIuqXF9TWeLHcdkz+ecYVxasIzZGQKFvu38AeSriwbiivuq18WxlZ8BaxJujJe9nkuucE0XdybLFixvD5PNeBWW4N1dhXGOP22gSvtcH6l+2ZTc/m4pgtkSTvVAh9VafU2Eo9qq7JgDnU=
Message-ID: <8b6d2928-c1f8-76f9-6ddd-24a8d6605069@oracle.com>
Date: Mon, 8 Aug 2022 18:31:59 -0700
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <08ae1f90-9b28-df97-068f-243e04f91c47@vulndisco.cc>
Cc: Evgeny Legerov <admin@vulndisco.cc>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
In-Reply-To: <08ae1f90-9b28-df97-068f-243e04f91c47@vulndisco.cc>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0169.namprd05.prod.outlook.com
 (2603:10b6:a03:339::24) To PH0PR10MB5730.namprd10.prod.outlook.com
 (2603:10b6:510:148::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6e7363c2-00c3-4332-0eda-08da79a6f5ab
X-MS-TrafficTypeDiagnostic: BYAPR10MB3686:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Kw/W+PjrBkP96HaWH7Ss7+qpqNLNPsd60v0p6sKSfYiWLy6wzMzBTjELwPD2l47+9uylk/x0UfUlBoEs5+Cu57h7RaiNznxtsaWBOcPucJ3hHT+HD/WTLEIC0Y3ZnrZHdvQWX3l3bZ8qS1Z87Y2c83YuPgPzjdZQj3r58T6ih0pcsTswM9H/jPRY4TwPiTi5XziVtJFZpnA3AWnr9lhtShIXx0BU9GPKfHqiNnaiyawuG2qBuynz9B/2iNHgDVr0x62EA1/XrLnfe4SpjWElQME0e9N0/1vopYy6GJnSqbC4MS4gWffmF4R0rPcVI3msZ/LSO9OoW2hs1FIA4aLft5OS7KrfJTRP/RmJOxAk3PqkH7SVaPZQJISXANf9cPe4n6O0asseG3EwSZGcMNsGeAN7FXhuaRadeUqQeOmLKDMetPnlvi62rqIZAoSYf55nURnZjZ3yp/4w5GjebZH3+/xEGP+F15bT/ic9TJ70/UsseNjKC0kW0gADg5dNJhGKUhYaX8hly817fW6mLt+olo67aKkFScXkpFLFn/CpX35f3r5v8oWmyNi78ihSQwhKmPneZcBj09aGJesuqboy2S4ViDlSane0zfGo4e/xIJFT5DEadf8SgUbAtsl7boq63KZjZDH6wJ0/idKjQlgya3InxzVwXeS1Ps6XAxvydhK6RTHWct0yH4iK5F1O5mc9YNeiI1fKKFgybMzB0kEWVKJyxe8QaC1Wp5tAE1D7Cs+zS5BgO22Kq3LRBlmf5Smwm67OKapwQX9txqo6ZW2h+oKkFUyDUBfh6AbaMbdCDp393Lig5u5KNzwG6jyNgTwgTefVPqKEwEjW3It2vQ35yPe89Jz/2qcxozmk8xG5q8v3E9G3X7NlvTvFiECN1VOiFfgTaOTm3aAz7lQ5psQu4A==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB5730.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(136003)(366004)(346002)(39860400002)(376002)(396003)(83380400001)(53546011)(41300700001)(6506007)(8676002)(6486002)(66946007)(4326008)(66476007)(6666004)(66556008)(316002)(2616005)(186003)(6916009)(6512007)(26005)(86362001)(2906002)(36756003)(38100700002)(966005)(8936002)(478600001)(31696002)(31686004)(44832011)(5660300002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WWFZeDBCViszWDhuMzJFQzVMcDlPOWpwcVhXeGRjZmdTQkZlMjZuWVBwQmdh?=
 =?utf-8?B?dnZJQXdmM2hqUGdjTEcreGtvVVhBZ1JFQkVOVGt0T2tjRjNjQ0VIMGQ4UHp2?=
 =?utf-8?B?M1c2N1VISzZaVnFvZXNxTFUybnpxNi9QYWdWSm9QNWNTMXJQUEVtUlQvSjg0?=
 =?utf-8?B?UDNia1JodmloZG9Rd0RwV2I1VmpnL2ZUNUJNcGs2UDZjMmtLQXRKMDh4Ymd3?=
 =?utf-8?B?RVVZL0FoTHJVNGNtVTZUa2hwMUVsOWEvSFQxQkdQZ1dZeGZDNTFuSzdOenJ6?=
 =?utf-8?B?SlN2TkQxT1FFT04zMXhvOVBPeEVPbUoyOFNPUnlOTVVVNVdUdURwVzFYZG4y?=
 =?utf-8?B?K2Y3a0xBUlp5SmZIaXpKMjBKWGFHdkQweFB2RlN3c1FFa3FYR0VsQU8xekM3?=
 =?utf-8?B?a1BpcXY5RXJJSGI4cjJWUU1aL3hnUFpFcTFKMlUySHBiTEMzT2JvRW1jVGpR?=
 =?utf-8?B?RVFjOTJTWGFJQUFnR0FsVEQxOElrdjZmSjR1OEhnVzltTGNtVXRaNGZ5TFF0?=
 =?utf-8?B?bVRObjNtMWhkeHQvbEJOenpDVTEzOTJPRXA1RW1NZ2hDYmtDSlBUQ0ovcVZm?=
 =?utf-8?B?bVRPdlFCV2JmOTR4UUJuWjBEaVNRYXJLVS9qbUtyb2JrejJCK0lEa0hDVXVx?=
 =?utf-8?B?cXRLVUw3R1lKQlorVnd0clhPdnM5ZUJhOStmSUwzSmdiZk8zM1ZpcytOdXdr?=
 =?utf-8?B?NVFraFJtSWdheHppZmhyYWp2bHBLRFJaaXNoTVRHa1IrUUFPZ3hpRk5ndWZq?=
 =?utf-8?B?YlFidWlLTFMySHQ1UkVQQkRiL2lOS0lMSmcvY3FyeVh6WW9PMmpZSVdrYUdN?=
 =?utf-8?B?NHNGUlVZcUg0K3hxbEw0MDA3Mno2K0F2THo1cGVqemNtNWh0emZnQkQwVDJO?=
 =?utf-8?B?ZVJrOGdqbkRhelczTmZrdThSTEpITXQ4ZWhJWUJyb1VDd3g3SWFyKzd1ZmNl?=
 =?utf-8?B?TCtGT1BDbzZ1Y3kxdWxCS1lDaFMvOC9PNUxUYnJnU1BKYndsL3E4RUxRN3RD?=
 =?utf-8?B?NUgwUVZxdDFza1hnRGd5M1A0SlY2K2NseDRIOW9HWjBLR0wvb2NXWTFkSndi?=
 =?utf-8?B?a1BlaEFTNVBsNExpUll0UU9tZUdVcVdZOWk4VU9yaDg0UlY5bGRDZ255YWdG?=
 =?utf-8?B?RGtkS3FnNDlVVnlKYjhzWE50WTYwSE1UT1JCdHdZREltTmpXeXlRK09JM1VR?=
 =?utf-8?B?djcxc3dxMG9HNURmaFQwME1pdVUyQ1hIdXJHeiszdGFnTkxubDU4L1dEUVZa?=
 =?utf-8?B?SUEwTEQ1MVZ6L3Rxa1pMWEg1eWpzYjBjSnJaN0pubzVkTUFYS3ZPaUUzNlhq?=
 =?utf-8?B?UlJOLzVOc1VpdUxtNXpaRGZ5NUt2WmxndkFzSUNKVjltWG8xWEtqTDlmanNR?=
 =?utf-8?B?cFpuYUMyR214VXIydlQ0Z211UWdmY2tQWTAzNEREcDdyL1ZCUlF4LzVCMEww?=
 =?utf-8?B?dXM5NS9SVXlRZnRQdXNETkd0RVIvM1lWTzd2R3NpZGlQTEJtL05CUUpZa2tz?=
 =?utf-8?B?OVdLODByUkJjTTVjY3ZHZ3ZlUDYzcTdUeUhQOEp5YzFFRjZSOWpWTS9PMmlG?=
 =?utf-8?B?dlF6MlhlNmplWmxGRmlYZzZjNTBoY1lOeTN5dG56OW9JdzIyczNKbXVnU2hm?=
 =?utf-8?B?SXAwUG43R1NrdlRIK3hCaHd4TkJEZHBpMGNVNUQ5S2JPYU5aU2ZuV3NQWDNO?=
 =?utf-8?B?Tk91alZVUnNEWnNIM3dqOVRmcU1pbDZWUFBiSEN5YkQvU1Z0dFAvUUFaOHZn?=
 =?utf-8?B?NHI5bzIyOXZaNm4xUTU2cGVack9hMi8zZExqSk1zbHhUYk5yamhLS21aaEs2?=
 =?utf-8?B?WDcyYWhnNktNZ1FZTFNVNlFENVl1bEV6djgxS2ZjYjlWUE1nWTFrRVp0MkE5?=
 =?utf-8?B?amZtT1hEYVh3Q25vS2NqMkNzMzB5bGhyL3poZUxZS3pjRmJBOUtrNUpwbkRs?=
 =?utf-8?B?aEM4OWUySThXemlXVU5qcXdnN1M0N0s1L0YxTzcvcFJVQzJoYk1Ic24rUkN6?=
 =?utf-8?B?cDRYWnQ3aWxlZy9XbnNSR3ZFY1VoZ0NIZFgxSzlmUmxrYXBSNVA2ZHdOdy80?=
 =?utf-8?B?TVBKVVgwMFJ2T09JV2dPdnYvVlE4S0lFYkRaRThzMXN0N2p6V1VRMDhHbW5i?=
 =?utf-8?B?VE5MdDJtL2tIamhqWlBGdDZRTTBlaUlrUm1xbWREWDkyV1RLNm4vaE9LTUFw?=
 =?utf-8?B?dkE9PQ==?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e7363c2-00c3-4332-0eda-08da79a6f5ab
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB5730.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Aug 2022 01:32:02.0599
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k/h0p87qAx2p4PksKt5+Is4m7T9qdxdkcfifrNeEn8uWdeL69j6b8+YZuetPBzoiwH8g14Ef8T4MLcZYXLDOLbWVND0eaZvAsrhrQ5A6sxA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR10MB3686
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.883,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-08_14,2022-08-08_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 malwarescore=0
 mlxlogscore=999 suspectscore=0 phishscore=0 mlxscore=0 adultscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2206140000 definitions=main-2208090006
X-Proofpoint-GUID: Ix_uSe1NG8iL2qa_cTBsmsnBs5owFVyU
X-Proofpoint-ORIG-GUID: Ix_uSe1NG8iL2qa_cTBsmsnBs5owFVyU
Subject: Re: [oss-security] zlib buffer overflow

On 8/5/22 13:53, Evgeny Legerov wrote:
> Heap overflow has been fixed in zlib - 
> https://www.cve.org/CVERecord?id=CVE-2022-37434

Expanding this for the benefit of list members and the archives:

The CVE description is:

    zlib through 1.2.12 has a heap-based buffer over-read or buffer overflow
    in inflate in inflate.c via a large gzip header extra field.

    NOTE: only applications that call inflateGetHeader are affected. Some
    common applications bundle the affected zlib source code but may be unable
    to call inflateGetHeader (e.g., see the nodejs/node reference).

where the nodejs reference is to:

https://github.com/nodejs/node/blob/75b68c6e4db515f76df73af476eccf382bbcb00a/deps/zlib/inflate.c#L762-L764

The reproducer is posted at https://github.com/ivd38/zlib_overflow and
notes the issue was found by Evgeny Legerov of @intevydis - who is
presumably our original poster here.

The initial fix upstream was:

     If the extra field was larger than the space the user provided with
     inflateGetHeader(), and if multiple calls of inflate() delivered
     the extra header data, then there could be a buffer overflow of the
     provided space. This commit assures that provided space is not
     exceeded.

from https://github.com/madler/zlib/commit/eff308af425b67093bab25f80f1ae950166bece1

*but* the curl developers found that crashed in their testing, as reported
in comments on the above commit and https://github.com/curl/curl/issues/9271
so a followup fix upstream today made sure not to dereference state->head
until *after* the check for it not being NULL:

https://github.com/madler/zlib/commit/1eb7682f845ac9e9bf9ae35bbfb3bad5dacbd91d

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
