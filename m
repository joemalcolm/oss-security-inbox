X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1154" "Friday" "18" "February" "2022" "11:19:27" "-0800" "Alan Coopersmith" "alan.coopersmith@oracle.com" nil "26" "Re: [oss-security] CVE-2021-4115: polkit: file descriptor leak allows an unprivileged user to cause a crash." nil nil nil "2" nil nil (number mark "U       alan.coopers Feb 18   26/1154  " thread-indent "\"Re: [oss-security] CVE-2021-4115: polkit: file descriptor leak allows an unprivileged user to cause a crash.\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-4115: polkit: file descriptor leak allows an unprivileged user to cause a crash." nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19832 invoked by uid 550); 18 Feb 2022 19:19:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19814 invoked from network); 18 Feb 2022 19:19:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2021-07-09;
 bh=G7jhHcwLEt035Cg+A4EtZNtZG7hlncT2tMooEOeH5ks=;
 b=GHEUD995rvLHLmjV4NfderIKimmzYieaZx5cNXKrxrf35fpp/QZSNuiMG8/cxZXAJCH6
 iq6kH4R/x8WsOGmd9D8CEN9Uyxr43Q3D8x8TZswwXlNc81SsA2Nwvyj2OEvYl4Yn240S
 Y64WjziobldsINY+Elis02rChmOZ31IWcznRarGbjEIgBgubpL7w+4lzKQ0UmNWAk+uO
 zd3GLxwazTXWulK/3CcPOyTzFD+fYBdd3LnPBVDS5RWUBnJ+QMa4YySjgjRYwX+eZTeR
 Gc67Ypc2sGdCuiHFNgKFhOD3bxyH8bKwAJs63pHVKZdXvHoZ+04ELGFEQZ9lbpQ/gesW 0A== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n+mjweXMgk1hmZuU+kWCDvQE4kKDoG5w+h4V7v5vzUDLcVGO1L+k00WZIgaiO1Uu7L5ypH62XfN4qsjqKnJl4/WWKhui6wFlg3X5rIjlSflmL08/EByo1Zi4ePr+aLNqFnfIpIrEOBnJc2Jh8A75mRVNcbgA0eV5FkjmmRmzk6SU54/4f54p3Ry7z/9D0s1kdCjjwA/Kx1AWbQjIERvWe1ERKtjWnfqKl1gVWJ6NOZ9ci4/vOOshsL7SbIeJyQMgXdhdZLDTu+ootlO+bLDPJyESPFAHXn/XcVCYSqC+O9VO9N6XBP73WrT9eMV6DiTQ2KsKbWMdhm9RXJxwdPTixw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G7jhHcwLEt035Cg+A4EtZNtZG7hlncT2tMooEOeH5ks=;
 b=ORO/Ic967IpghWmtVgELYLpTg1bwvfAJL50dN5lLP04fULRGkR5Yf9BsN7PGTO/UeRNYwUXRyjTbKwyxMnEtH2uQriF9zjnGqvdfjji+U8jH6W+GG1jiD5K9Ck+IyulR9aY3LKaOf4atd8M2pxefN1qLE6XK0T6nSd2VJu7qN4RKXqRsXhYvcT/ynK6sLlZWRH1WE0QY55dSkGs8F0JD7fFQSJxW4UM9MGcbU+ZPGNO6DQ2Etn9rmb2DOa7IA50OVF8zu8We+jmCxz/bmntFdeSgaQxl45puggBTn748n9LnfOlZBNJ6UA5UQi4ejSeR6ayKfMvw2eq7xm01H4Zo/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G7jhHcwLEt035Cg+A4EtZNtZG7hlncT2tMooEOeH5ks=;
 b=K0elglIBAbqFFI2MoyrBQbPOGZpOgW/QuiRH6h85GV5Zb+7hJPHjF/L/wAAAKEycefSF5XGRm/f7nS/yaEitPu5jGY21sE8t7TM5Jtq/9GMW+/hYDFWjlGOmLWW8HT++H7piawjZZM+Nvb49ECGRuP8ypbfUNCXaWSFjwrAaRUg=
Message-ID: <aaadb779-50ab-2204-7927-bb8f93fd6b46@oracle.com>
Date: Fri, 18 Feb 2022 11:19:27 -0800
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Content-Language: en-US
To: oss-security@lists.openwall.com, Devon Thompson <devthomp@redhat.com>
Cc: jrybar@redhat.com, gsuckevi@redhat.com
References: <d4660f03-ed92-97e1-98b3-dee46248bea6@redhat.com>
 <cb935607-d53a-5043-ddae-54c200e6734b@redhat.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
In-Reply-To: <cb935607-d53a-5043-ddae-54c200e6734b@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SA0PR11CA0040.namprd11.prod.outlook.com
 (2603:10b6:806:d0::15) To PH0PR10MB5730.namprd10.prod.outlook.com
 (2603:10b6:510:148::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8de469c1-ce38-4c2a-71ba-08d9f31396d3
X-MS-TrafficTypeDiagnostic: BN8PR10MB4098:EE_
X-Microsoft-Antispam-PRVS: 
	<BN8PR10MB409808E924406482CC6EF28CE0379@BN8PR10MB4098.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1468;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	tcCVFKr3jHFQA7irus7caOv/TNtxy9OBHQZkhmCDKoTLYoaNDtDkXttr7E/Zjd7ape3UpTOwLTsBuNndLMBUmKpj9nCm8P/SMDMoVLrYGPjH4NMkGJyi65y31xb8fFBas9BJrSqvOWZb2Sn0cM2NAE0Vf6QytYSV4yyFbeM8PFpm3iTrVWWi2iqdt6caath+QqBggzJNDEM6ySDE4kv+y89Joxv1Fl54lAMF3cQYjEiIcEVzT19wn0Iexqf8UeUqYXAfd9pyg+T0N3bPgBw8fUP7CNP+ZpU5Dow2GLycBUrnd6WRZ5TgYAaiGMW3nNrT4npvaBqesfewE1zhE14JkGQZWCW8X/OPeU3RcbiYirXj8MZiY77xc1ivhGcPt3AXPJZLmU+mTbg5OAtU+N8PMHEtJIHEj8t7sXEaXRZPDAL0kAr1Na1rai+X6uq4k/fFvCCiHVVbGOrX/97gpj9fqsqW0S+cimDI6qTRpU4sbFTKCHZz1OpqqfA8+JR5vasBxBs+v/QAxwcrmxE81LkjVpYOXaLchV85Tz4Eup3XCsbfoPKoSWqWWCHN4jMj2OfO48x0HbLbpbIL9IIeMU+AyboWQ5G9nsekOTxHbTzS+tTR1EE/Mx5Hkqbf1HozRFHc2GxQfeFXIKXqQ0MAO4Cn78JwLD5DYUVoByOjIKQKzsBLbJstyJFzsmyJcVd2jFcldUOjevQcSKil85eZnrE97pe2dNYoAEF+WQobH0q7uCqwxMksr/fg+dY5UZnN+dY2jqd4MTH6cdyII0jk0J03Gyl7J7G/TZW8+2nz4im2Xc4ZnTWqZ+Ufzz4Q45MGvwmdWV5Ky2FwvCdh2+tu0RDfZFyjghnCQ3mFAM6OxpxfBb8=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB5730.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(6486002)(38100700002)(966005)(2906002)(508600001)(6916009)(44832011)(2616005)(6506007)(86362001)(316002)(66476007)(66556008)(6666004)(66946007)(31696002)(8676002)(4326008)(8936002)(53546011)(6512007)(5660300002)(83380400001)(186003)(26005)(36756003)(31686004)(15650500001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?V3g5VUZBaVRRSlhtdzhJWFAxRXE5WkM2Q0pEMkhndy9Ld1hoelgwQVdHYmJI?=
 =?utf-8?B?SlJyUDdDUkJ3amdiMGpVUmxhUHBiSnBLcWpsejBPUDF2SHJTZUlGbUtqUXVl?=
 =?utf-8?B?YkdrVndXMy9MMGRmaVJUbHd2b3J2WnluRlI4WDNmZ3p2QXNqWVBBMis3RCsy?=
 =?utf-8?B?V1FMTVk0NWJMN0VHc29zWTdVSlYwQ3JxUmxodTZGOWJITEFHZDdLaXVHbmds?=
 =?utf-8?B?WUJVOS9GYURkYk9nQTRLZjBpUnRmS2tXQkIzNmRucGxhTnN4eWY3cllkWmpu?=
 =?utf-8?B?TkRONmcwOHdHVCtpbG9aZUhYU0ZsNTFKb0lGNDRMVWFRYlo4MndsN3VTVUxL?=
 =?utf-8?B?U0JjMDFKRnllNytCb01mWHpGT1hnSytNTEJyUTJIZU16QkFreDdjYWVXZWw4?=
 =?utf-8?B?cVNwcE1OTVhiUHI2VGpBQ21DOWlqUDZnVnpxRDVTaTBrbVZxVHlOUEZEZk9N?=
 =?utf-8?B?bTB5VEd4cU1SQTdnd01mNENtUTI0L1lTUER0WWdFeTZOdzkwYVdVcmROUkwx?=
 =?utf-8?B?bWlPQk9NOFdBU2lQbWgyWkV2ZXBLNmY5S01iMktwMkFWRUtSYVFWaXloVmJz?=
 =?utf-8?B?bDYxd3dzUlhjNjhkMmRvbkpvTjlkT2NoOVFiRi9XeEJHODJOUm8xLy8vUDhq?=
 =?utf-8?B?L01iUXR1cVlQQlBZSnFDK2VhbnpEOFpETjAwY096RHBUQnU2ZmFwcmJONENk?=
 =?utf-8?B?ak5MQzRFM1JvemRRS2xIRDhNaHVTWWhwRlVvbnFYWVVtQzFWTVRzUXM1NDZE?=
 =?utf-8?B?aTdQY0hxYjR1T3JxWWhmWDNxdC9mT1Nia3hMQVNQcEh3ci82UnFvSmg1a0lk?=
 =?utf-8?B?K1p2KzkxUXo0ZzFsRkY1ZFhzdWZCK1U4a2F0NUYzV3hXdU1oWTBXakovb2xa?=
 =?utf-8?B?REhLS0tCcDNmak1sVjRvS2ZoV005V0cyMVArRGpsL0llUUJKNzRxdy9Hd3NG?=
 =?utf-8?B?RHhZckhzeHJZZUpWZHJzRGZQK0pud0llcmtyd1ViWC9Obkk0bXh3Um95am9S?=
 =?utf-8?B?M0g0NTZHczBTOVh5MGlKeE5vVGRnVVpLRG9pWm5IMk1xMnNPZ2FSRVZ4eW51?=
 =?utf-8?B?UDIxLzV3Wjl0NUhReDNGcHVrd2J5OUxTSk8vdUovSkVWNWRmWG8rMm5VK29M?=
 =?utf-8?B?K0pzWkg2a3JGbkF4azBpZ1JHbEFRTmZ2YWcyb1MxNXpyR1F5UXlnMFhPQkdV?=
 =?utf-8?B?Y1NXN3ByV1FLdm9tYmIvZVR1bHp5dWkydWtrZmZ1ODRvZW5ZZ1lFQXE5MEdm?=
 =?utf-8?B?bk9EQy92TER4VDluRWx0bjZ0WlMzSHI3UlNLbmgvejhxYkgwaGdpOE5lcXgr?=
 =?utf-8?B?UkI1RzdFOVk2TmR1MExxcmc2KzJjeFJIdHhFM0N0alQ3TGJUTjg2dEZCZXJ3?=
 =?utf-8?B?b0lzMGtJZG5uTHRxNzVlT1hJRDgyWGt6T3dnK2hRaU5kY0ZKRzJKRTlBb3cr?=
 =?utf-8?B?dlY0L1hDU000RmpvNmZIOFhHeHdXTlROUGoraTgrcUlvOGlUK3crTHVyT3VG?=
 =?utf-8?B?dkpDRC9DMlhZZGtDNFkyYjBmWCt6UW41ZDNidVR1Y2R5NFFzQ1lldkFLLzhO?=
 =?utf-8?B?TU5BVTlDMkZ2SzBoRjJYQyt6NzNtQjFPekdhR0tPc0tNNzBXRUNidWYxZmZ3?=
 =?utf-8?B?K1BtOXY0RUlqNE4zZU12eFFpd0hsTStvdkJZSWJ2QXFGTVhmZE9sSTRpM0VE?=
 =?utf-8?B?RHZvVk1ia1l2YStDSGNFWEppNmhHbmNkQ3lOamJZTnUydjYxbXJKZWxVZGJE?=
 =?utf-8?B?cGdmQ0Z0WXJFc2dZeEVNcUlJSGg5VllJcnp1MjRtd3o5V0wyNHZQNHpXTjRy?=
 =?utf-8?B?NWtDUWk4aXRtMnNkYTVDWDBidGtNVlF6TFpsT2JCN0FUTElibnZ6OGpxVVA2?=
 =?utf-8?B?NHZKYlhIUGpGMmFhUmdDV1lSd3p3MXA3V1lSSVNwUXViM1Fxc2cwdHRCMkNL?=
 =?utf-8?B?Y0lBTHR0Um1QaW5uSmZBeXJrNnZBeUsxb3JiMzNSR0lpSThJcjkwTW93alpT?=
 =?utf-8?B?aW1idWUvWWl3N2txWkc0bEEvdXdPcVUvZjMzWWdaTEFPTVh0M1hLVzN1Q0dW?=
 =?utf-8?B?aW16ZG9XdElFNHRQbEhad2dMU3ZZSUpWdjNRZElsVXc3MGxpak5HYXBML2dC?=
 =?utf-8?B?T0JmdW9rN2N2N2Y4UkoxSG1CaThDNDgxTGVZdnhQem13QUp2MXBpdXh0TC9T?=
 =?utf-8?B?NVBrd3FPM0htdElLbURlUmdBbzRUT1RqYlhrc256bmJUZjQ0YW56VG5pYzFJ?=
 =?utf-8?B?OVAxNDU5RkVTYVNBOENoQit6am5BPT0=?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8de469c1-ce38-4c2a-71ba-08d9f31396d3
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB5730.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Feb 2022 19:19:31.2567
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wdo6XX+7dySGgkD7Xe8ogSa+7foIPdwRLP4L/ACVCNV80w51XscdX0XiK05iPshuQds11fZR4ysrPOk1e7NlKruDVeF1Ih7qLXGCT2ebEao=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR10MB4098
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10262 signatures=677614
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 phishscore=0 adultscore=0
 mlxlogscore=999 mlxscore=0 suspectscore=0 spamscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2201110000
 definitions=main-2202180118
X-Proofpoint-ORIG-GUID: KLXnCexoNFMzAcv07fB8W69AaYT1721J
X-Proofpoint-GUID: KLXnCexoNFMzAcv07fB8W69AaYT1721J
Subject: Re: [oss-security] CVE-2021-4115: polkit: file descriptor leak allows
 an unprivileged user to cause a crash.

On 2/17/22 13:35, Devon Thompson wrote:
> Description:
> There is an error handing flaw in polkit which can allow an unprivileged user to 
> cause polkit to crash.
> The crash happens due to process file descriptor exhaustion.
> NOTE: Polkit process outage duration is tied to the failing process being reaped 
> and a new one being spawned.

A more detailed description has been posted at
https://securitylab.github.com/advisories/GHSL-2021-077-polkit/

> References:
> https://access.redhat.com/security/cve/cve-2021-4115
> https://bugzilla.redhat.com/show_bug.cgi?id=2054127
> https://pkgs.devel.redhat.com/cgit/rpms/polkit/commit/?h=rhel-8.6.0&id=a71b0b5bb6624858a16bfbc1e721757b243709c6 

That last hostname does not resolve (perhaps it's internal to Red Hat?).

I'm surprised these are all Red Hat URL's - was this not reported & fixed
upstream?  I see a query asking about that at
https://gitlab.freedesktop.org/polkit/polkit/-/issues/170 but no response,
and no commit or merge request yet there.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
