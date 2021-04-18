X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["896" "Sunday" "18" "April" "2021" "10:29:56" "-0700" "Alan Coopersmith" "alan.coopersmith@oracle.com" nil "19" "Re: [oss-security] xscreensaver package caps gets raw socket" nil nil nil "4" nil nil (number mark "U       alan.coopers Apr 18   19/896   " thread-indent "\"Re: [oss-security] xscreensaver package caps gets raw socket\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] xscreensaver package caps gets raw socket" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11829 invoked by uid 550); 18 Apr 2021 17:30:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11808 invoked from network); 18 Apr 2021 17:30:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=subject : to :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2020-01-29;
 bh=Bluj2EpBy3qTevHOlxKxO8FhzqkORmzzutaoTC+6ryQ=;
 b=XFLZBLXMB+B+tg4A23ZSxX78y0TP84CIOr1FYoKkH895qnkbVmsZr+PQIgS1QZCLrNAE
 kWCOnp/Q7Vs5vj+IZI80PCESbdrCOr/d+5Iu33oox8XNag4xZ/Q4w5L9CViU6r2t0Qmt
 /gOqVabVOBtT7HASw5mXXBN73F0HaiDtlZtfov/w06KMd6igMlEovBeELcSAwsm5JD1i
 TzfNa2HjbX7ACB3Vs3QPt0pcbZM02t/InPi7cwvWrYSXJg1+4ddd32syCveyKeUHAPjr
 vnqgmMd15C709NX16a3UZmviOyZOPZT1Vo3mwdcAQSmz/kQoMk4VYKI5PaURhK82kJYg uw== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UPIrjBntO2bPhXVKSwSasL4ozHApNCSWbCkCe+JaW/bZd/9qqw5NP29oxag9rgEe3EcR7ZBtB+Ka8qLPy9q/Qg818hvYbC/0JBnXTgE8FN7DyNx2MCwF66B6iUJPxwumkCv3ESVC4vzk74vvaxODAU8pAQgVQKNsHKWCAU+2Jukg83Ub1tcl4qUtHhLLD2XUoFxFDSitqF7ccidHhXaronyYhuMmB/Vbzc3HFnWeNmgOQn4mJRJHYStl7Cbrt9EHVEmhuJc74XrQvppH23qKcSpiJesS9d7O5ax+IE8EAg3lNyZeM7FoF7s2Wvd+iFvNL6rTfJM0hXBEoPHanodWDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Bluj2EpBy3qTevHOlxKxO8FhzqkORmzzutaoTC+6ryQ=;
 b=b3ZDxfWUk8TNTKRy0dxAYJb87nKgisJ/jL26a0Jbqyrrp3vD/m0BFnKXqrlkNEiXSiyOI7eTWZcJjjCqXDaHp8OQD74Bhnm7DPkPb1J2WT6ff+5EhQ7NROddnQ+q5ez8g6/+ubVb7RC88WxCmE5O0NaPD2vuu8JRK+x0Wp+qXKmHpQ906w9owGA7/QmckFJclQYuxRvYkIDOpOVQYzZc3I7DeZvK65tfWPAF5GrmzqlngLo1VmtFDXwhKAfVX+6oDlQ+bD8GKP8iOOr9H0m6AQ9egQUm0maegi95V+mDm7HumA1CZhnR6XmsYsoUCpSwJV0k5yrAAWeOj3xPfxVZKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Bluj2EpBy3qTevHOlxKxO8FhzqkORmzzutaoTC+6ryQ=;
 b=ZfKvjZpD4JLc1iyFPcJu+O/FkDsDZDkDJW4NMU6vWuB7fgLH219zK2Egwy7XQQbraBxlRo3ZPdphF7XVtpg6aUd6t8mM3u0tzNmh+tW4ifUz/7jAvL6p1SqtX+j7V+a15lAs/jF7G06Dv70nHrQcawUGOeUZGJlWiKI1RWog1FU=
Authentication-Results: lists.openwall.com; dkim=none (message not signed)
 header.d=none;lists.openwall.com; dmarc=none action=none
 header.from=oracle.com;
To: oss-security@lists.openwall.com
References: <20210417143105.GB3276@thinkstation>
 <35f3ef89-12b5-5bbd-2ddb-88a9128dd849@disroot.org>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Message-ID: <bc3a6689-bbcd-612f-e9f8-e94543cf39fa@oracle.com>
Date: Sun, 18 Apr 2021 10:29:56 -0700
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
In-Reply-To: <35f3ef89-12b5-5bbd-2ddb-88a9128dd849@disroot.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Originating-IP: [138.3.200.47]
X-ClientProxiedBy: SN1PR12CA0098.namprd12.prod.outlook.com
 (2603:10b6:802:21::33) To DM5PR1001MB2412.namprd10.prod.outlook.com
 (2603:10b6:4:2f::35)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e740cda1-824a-4a79-3ed7-08d9028f96f3
X-MS-TrafficTypeDiagnostic: DM6PR10MB3369:
X-Microsoft-Antispam-PRVS: 
	<DM6PR10MB33692267D7BDD5B5B4B16641E04A9@DM6PR10MB3369.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	UrxpDPEKh7VT/OFlc9FSsFJaGCNvc0F6fDKtLzCh9m/47zWFvg9QMSVGA3I64ysFVzua7zhcCU688MKo6rmT790jw9BgsM6wjFyiRQVleBDoXdYnH8IwspX/0WynHkN0fTZgx5h9fQDSOn/y2P5CYaI/aACRdBSmJTBr53Soi8SJePC9U4MuJAYYCK+/KKwKLv3JyM9BR9akW1ehh104kmpYjA+8GmAuNGInt+pJpnixTtHRaUWGmfSuy1dYJ+HzYIOLyCE9jHkJHQIL3b4qelJBcjuGl/MmzGVJ2d42VKqMuxF4D5WZrGuWSolXDsir3nRg/h0Qse6XqrfKyy+wupuA5V3lupeB0gyc7yJzEf1FXFrDmALWtWbKkTNm+P8e4fE4XPj1HEUcTJepyF6Jx8R25g7C/qrBuGaiSmKI9fEnJfuOWa7G6h1trPwjzfD+6gtu2y4etyCsJBT0cW4HfZX2ekNQyj9VP32pns2DDLZFcfEecKMZj8c23Knw0diF9wt867j1Q1J0pt3vbT1459cdGWC6+8+uWjJkQWyoxancaVZ2W5oAg5ZURY9ao0WReXFZdEffb3lvfJ6gyVwXYzJUqs6xcGmDlyK/xUnpG+/FQCE9kwAbxHvBANdIUoajz2RcLBK6WVcZ6fA5/bb0vYFlCEkjFCdyTbtoPL2m3Xi1HtAiJEijrGXE6NkfSaMKJ+Mj9iQinng7Hhwso9KPvDC1FP9PbpwdnM9SO284O4WaML1/3+sVf6boAUGip9Vt0L3ecTHWaKYwaRZzbS+jLw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR1001MB2412.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(396003)(136003)(366004)(376002)(39860400002)(346002)(4744005)(6486002)(66476007)(478600001)(66556008)(66946007)(5660300002)(8676002)(26005)(16526019)(186003)(966005)(53546011)(6916009)(36756003)(31696002)(8936002)(316002)(956004)(2616005)(2906002)(31686004)(86362001)(16576012)(38100700002)(44832011)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?aEU1WHN0MWlJMFNZdCtORGo0eWQ3SlpVbjFQYnVyZ0dVVFJZczhHT0NHVkF5?=
 =?utf-8?B?QU5UYXNHZldEejB5ZFJXYm1YaERrbnpWUlczM3E5eW4xWFdBSSttQUhzSWN2?=
 =?utf-8?B?MWx1UmhLU3RyaGI2WW81cHNRZitLS2gxME5oMlViOHRpckt3RzREMWZNTDlV?=
 =?utf-8?B?d3V3N25QNUNHUmtqaFpMamUwZ0RLa1RER0l2b1ltM1NPMEQrNkxEQzVOWWdi?=
 =?utf-8?B?MjlrUXRwa09JcW9UK1JpbDJJd1RIU0pIcFpuNmhBdzdoZWVDa2NOMmpJVlN1?=
 =?utf-8?B?MHRZK2tYTlcwR0Q4dlVqc1NTSjNNc1JNNjBpeWd4anByOTNjenR5dUd2RGNp?=
 =?utf-8?B?aTFkVUlYWS94WkY1ZE5FRnBxV1NVZ3ltSnhkdi9CaEREcEcwTlgyeEhwT2pF?=
 =?utf-8?B?U085c0dmTTF1bnRNSzg4YlZQK1lSU09WejBIN3B4SFI2OVp6Rlp5UUliZmRG?=
 =?utf-8?B?Tk0yV20rYlZDUWJZK3RyWlhxcEpDcytmTUd3NG1paGN6OERNL3pRU3EybnYr?=
 =?utf-8?B?R3RSMDhXMFRkejY5Y3R5OGYyR3hkYitDNytZbDlqQTFZYnVyVkxVOVNiVmZW?=
 =?utf-8?B?d3M0OVJUQm4yeGdGTHFHd0VhaDZCRUtySGpiNS9RakhOR3pUVEVWck1NeUs5?=
 =?utf-8?B?NE9LZG5ibkt4bFRFQ2o3eklEbTNGNUZOL24xSThHWlRTMW83L2NNQnd1ZDZJ?=
 =?utf-8?B?NUZLb1FmZzYxSmp2RUNFZmVwYTVFNjUxSUx2Y2psZW01VEtDNHFnR1FhcHZi?=
 =?utf-8?B?QU1obkN2V0F6b1ZvZTJXZVA0WjhhaExKZkw5ZEN1dWdMZ1p2LzQzVWZIdjhs?=
 =?utf-8?B?WlpXTEdicVBWSmtXczNrNnJsMnhzcmN5RTFINWNDWmpaaUlpMGY1Zi8yQ09w?=
 =?utf-8?B?RlRud3gzYkVnQ1lGaTJyS0RhbVpvdzgyT2dHcklJcVhRd2kveHZ6MitnS0Z1?=
 =?utf-8?B?RnFTb0VkWCtlNkFRZVJ1ME9GQkFndXFOcEM0N2tMUGNzVkk5NmpJY1Bxd0V6?=
 =?utf-8?B?WDRPL2hnNUhWdTV4NVQ5NmFvcHgycUFTb2xVY2p2NHltUkhZMlU1Q3RrK3BY?=
 =?utf-8?B?WDVVd3JHS3pLaXNnb09nQ3A1dXhmWVZacUJCUTlkN0VhZU9uZDluSXdkNHdw?=
 =?utf-8?B?dVBnRVhqZ1dNUFpFaG1RWEJJSUl1NVFzdllhRTZHZnN6bE9URjM3dEtiL3Ri?=
 =?utf-8?B?RlZkSjlRSGowNEJBKy9MWlhLYUVUUlhubjRqNHpqdk9Jdk9zaFhDb1duZnJJ?=
 =?utf-8?B?MHluaWVCWG5jM1M5YkVNVy9wWGxtT1RyTkVrem5kV1NFQ1o5eXM4cFZQN0cz?=
 =?utf-8?B?NkxDSGhoRWI5c0djcjA1bVdtbjBrcUFJNFFsY2JQcWxoR1RKVjJOVi9OTGJo?=
 =?utf-8?B?NnVMSGtLL2dqZkt2SGhsRTVEaGdCL3cxN256UVcyblBiN2xCd2syNVcxWlBT?=
 =?utf-8?B?eDZJRDhmVHFySzJiOHJuYXc0TGpzM2ZLaGNzbmNyeDZZNmxuTUpLM1gxdFJH?=
 =?utf-8?B?aU9nY2N0TmRyY0JoOVkydnBIV2l2NEplMXkwY0ZSZHovS1hOQ0xqRDFwejRt?=
 =?utf-8?B?L0tGaFNNTk8rZWVTSU5QTDlIMUF1ZktXUm10bS90OXpHTnNoN2dSSDByQ0JO?=
 =?utf-8?B?Y3gxR3daRmw1MkpMNCtTK1JZL0cwWXJDOHJWY3RNVUxkV0dkN0lENU1VL0Rz?=
 =?utf-8?B?WmxBMDNKbVZOTm03c0tsVWZEL1NyS0dSVGtnbFUrcFVXUEc3SzRhNXJjc2po?=
 =?utf-8?Q?BCpKxS0HcABUHTWVVEPcwtRWM/BLAjqXYLiooiX?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e740cda1-824a-4a79-3ed7-08d9028f96f3
X-MS-Exchange-CrossTenant-AuthSource: DM5PR1001MB2412.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2021 17:29:58.7375
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wSsoE/ZOwzHzwJmlE8nDfMIdnLYxOhfFekD3SmoTdB0Jb1FnE+QGB5YDummPQYU+v68zHsu+roPHtnQOaJv/LGmzzzxrJvmXGjcxz0j5Leo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR10MB3369
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9958 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 bulkscore=0 malwarescore=0
 suspectscore=0 phishscore=0 spamscore=0 mlxlogscore=999 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104060000
 definitions=main-2104180124
X-Proofpoint-ORIG-GUID: SdBD23coRVmg2Pzt_Mh9jronGodSSWMm
X-Proofpoint-GUID: SdBD23coRVmg2Pzt_Mh9jronGodSSWMm
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9958 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 mlxscore=0 adultscore=0
 impostorscore=0 spamscore=0 malwarescore=0 clxscore=1034
 lowpriorityscore=0 priorityscore=1501 suspectscore=0 mlxlogscore=999
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104060000 definitions=main-2104180124
Subject: Re: [oss-security] xscreensaver package caps gets raw socket

On 4/17/21 5:51 PM, Érico Nogueira wrote:
> Using `secure_getenv` in some of these cases would probably work as well as 
> checking `getauxval(AT_SECURE)`, especially because it seems (from my quick 
> search over at <https://man.bsd.lv>) that both are Linux specific anyway.

Solaris also has secure_getenv since the 11.3.10 release.  It uses the
issetugid() call that's been available since Solaris 9 (2002) and which
is also available in FreeBSD & OpenBSD:

https://man.openbsd.org/issetugid.2
https://www.freebsd.org/cgi/man.cgi?query=issetugid&sektion=2
https://docs.oracle.com/cd/E88353_01/html/E37841/issetugid-2.html

Though Nico Williams warns not all implementations work the same way:
https://gist.github.com/nicowilliams/4daf74a3a0c86848d3cbd9d0cdb5e26e

-- 
	-Alan Coopersmith-               alan.coopersmith@oracle.com
	 Oracle Solaris Engineering - https://blogs.oracle.com/alanc
