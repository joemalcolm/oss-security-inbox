X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3589" "Tuesday" "14" "December" "2021" "08:37:18" "-0800" "Alan Coopersmith" "alan.coopersmith@oracle.com" nil "102" "Re: [oss-security] Fwd: X.Org Security Advisory: December 14, 2021" nil nil nil "12" nil nil (number mark "U       alan.coopers Dec 14  102/3589  " thread-indent "\"Re: [oss-security] Fwd: X.Org Security Advisory: December 14, 2021\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Fwd: X.Org Security Advisory: December 14, 2021" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5471 invoked by uid 550); 14 Dec 2021 16:37:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5447 invoked from network); 14 Dec 2021 16:37:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=subject : to :
 references : cc : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2021-07-09;
 bh=6I+CpsBq764yjoujA/itIV3rhxrtC/twNGqEimLBNIA=;
 b=iVNzo/heXeB8caeeofJ19GD1HGf199SsM9v4vnjjb6vRP6+O+6DDRBQy0dlp2nGGlo20
 vgoYheUSYUQzeuHimGZJdAvVBguH1gA4+YAyafCw3w612FHHZvnZhHyxw+J0g3iMNUMD
 QdYRgRFBsygr+b+1x83EDv7M2LM/dQFNOS/TyXrAUkOtm54I2dWi8eTsODrX/VenjRx0
 27HItL28455+vUDaUEMBAw026gOpvbASPGoF0iS19e5yp5Uh6mF45gtf4WtxVXYA1Yc5
 iLf5Ay/UrRKfGWXa2Lnra/rMwtvMr8klkUe5CEHQtaUIfU4zAbF+EzNoFcBNonbuwpTy ig== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LYb28RiMrL7sIrfst0MB53SRfmG6enYNrhsQCF+ekE/s5kg6B49RjHNN4KjilRIy9hQJjA/DGTQ73hfHnilRsU9tz3aMGpm9hMgrTO5kFH2loCTKfZCsHpAvX9hvbmcvzB5HslLHevmMKA+l/gwMs93PfIrJnB03rOmoiZUnRaIVdvfGXwi3ALguHwLIbtELdjUEaat29KAIPeYYb+3AL+Zu2hOx0+6UdpdoI4SEzy7wxlidoJzii0nW3JSwgJCiJVvM8kBW5Ubum2ADWDlL7viOI6QUkmvy/5oI6nAiUylq+bAbQ2/FubUw7OgFIM60D0LhjIwUeUQB9cE/HKECHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6I+CpsBq764yjoujA/itIV3rhxrtC/twNGqEimLBNIA=;
 b=N3tCy8s8URgWnprai751pXoLxAqvxFxFDRGzd6vb3LVvDnys0qc/FzPUCguFYH+KodwwxUesCDppGLOhTd0HPzLR9VuBrCK1CwX2P8KlO/czhzNb6xuzQkKIgA7fiROcNGuw1hbjeThLPtBrw/OkTDXUxjrnY0JPsJjbaGjtc0jzE0IK6meAU1AWiXAp4LqE41kmOzPY2TQOyssiHurISJ7VO2GPUG89HrW1ISz8BOT/AnIV3R4YVq69Jiv22qM8s2wvJjSZn8b5fFq7vanV7sAA7zM6q7ZDCQn/1huLSbYWCl+sDCg2ug9+/oLDjS+66Wmwa8anvi+tuPsjAC20Dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6I+CpsBq764yjoujA/itIV3rhxrtC/twNGqEimLBNIA=;
 b=uzmmnCZd3bcHbHvB+45zFV1InS8gFeYyhT4n83LH8gb6NGOvkWjVtUGgJWgwyqG1RsEtw9G2o2vmHGXBUz1Vhqltb+3sdEajjD+yO8jFcenDyEZLgIF6UNHySeVrCwUoYc6+yUI1BsQy4DOg+aKvEus9apjVkz9rrrqYWKiBZbI=
To: oss-security@lists.openwall.com, Povilas Kanapickas <povilas@radix.lt>
References: <f53b79cf-081d-b109-59bf-7fcf6412e822@radix.lt>
 <06bd0517-a955-881f-553b-c49b7a7a4ed2@radix.lt>
Cc: "X.Org Security Team" <xorg-security@lists.x.org>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Message-ID: <d7da9abe-5635-5062-bc9d-ef9038f2d678@oracle.com>
Date: Tue, 14 Dec 2021 08:37:18 -0800
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <06bd0517-a955-881f-553b-c49b7a7a4ed2@radix.lt>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SA0PR11CA0019.namprd11.prod.outlook.com
 (2603:10b6:806:d3::24) To SJ0PR10MB4464.namprd10.prod.outlook.com
 (2603:10b6:a03:2d0::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6a48f15d-ffec-439b-4dd8-08d9bf200073
X-MS-TrafficTypeDiagnostic: BYAPR10MB2566:EE_
X-Microsoft-Antispam-PRVS: 
	<BYAPR10MB25669B361E8201018C62FFEBE0759@BYAPR10MB2566.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1303;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	vj+UkL7KOhV4/Ychd/QncLG3vLmm/djgfsGraEO0jpK+EufGK93MI6BlYgYQivRskumtSdAJsvnkilooYEJPujFumw8WIdbkAKgf4F5oSulP6XszArcaZj2VQmyI1M+B+P6n5iQwPsqX2BpEYARmt6SwjabWnCsE6D7rgSy5vpVMnOl/NKEDOWnvCSYnREK4BILLDJZyBEqt/yeqLli8tS/2ZWxOhD5QVBT/KsATCctQMuvLngkCV5fFkU/awnnLGa/sdid3YSDcMtho+SuG3AV9NnxRbio2FxXV/aX7OZpV0+IuKRdDzJN71whzo2kFm522liBpJj2Vx3qpmgs5H0B4U98asIXDarZCY6Dr2tOlwflLO5Te1hYsDA96f1H+nxhiow9HK4MSM3GvXKjAedJmc9lMC0UzXPE+fmsidUohTk0c38yNTD4RCv0MnC3jldp6IhdIbRp08ET4A/GuA1ifPIo55gsENYc+J//iyDhfNc7fNKHfaDwxuyJp+w+h1sQHIw0WxOW0vuIl2QP4RxLCv7R2mvMBaU0OPRlIYHylKDndwpXPsHxFbN3gQ1NT4YjLGz+gGKO2519wSaGBUjsfaP3aWasVi7XrQjmogw97i64zvqERQW+DnMlDNPGO3gMLtl292Gk2KMMin3tHntUZB438EpqKoDQit3sE/m8feaukwTFbR3O+5+PwkM00o++5l+A/1Xo5EjpeXTWueIgNqQbMuwghiWA1OQF0LGmq/cfSTRBg4+Vibo+Q+/g8MnDWoHWtbkIc5bj0+Cx3v0is7ezMdDXwW/3oMPBTh0JySyz0IM9OHsSMIUN7yMk0
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR10MB4464.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(6512007)(26005)(508600001)(66946007)(66476007)(66556008)(83380400001)(6486002)(2616005)(38100700002)(53546011)(6506007)(4326008)(44832011)(8936002)(5660300002)(8676002)(6916009)(31686004)(36756003)(86362001)(966005)(2906002)(31696002)(6666004)(316002)(186003)(15650500001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ckMwN2ZLU0hLQXZ0bkZHNGszbisyemh2RWpzazVGamZIRjk4Z2MrMUN0dU9s?=
 =?utf-8?B?QTlpekNKTFc1NmJucGw4R01qbXp0ZVppWGpoVGQzMWdYc0JQeEs0MTQzL0Y2?=
 =?utf-8?B?OXljVmxtT1JWdGI3RXlYQTB5bm9yVmJjYUNkb2d0dk1IbFhHS3lrUDIrK09U?=
 =?utf-8?B?VDhxdHRVY0Q0T1V6Y25JV0RvcS9VcU1qRUVHNzlqMHFKU2VQWUZTR0ZlNUYy?=
 =?utf-8?B?dVB0eFdBK0d3VTBZRkpWYWxsK2J2Mnk3R28vY0p0Ujg0cFpqY2xaS3BJeVBn?=
 =?utf-8?B?cGpBcTNBZGpVN2wyY0FZQy9TNXVLL3lOa2pMUnZNWk9yTlhOVXhTdFFEcFBF?=
 =?utf-8?B?UjV3MEIzRWlCbnJYTmFSUkVSZXE5dzN6bXdTUzB2Z2RrcVlCcnVwOVJJaHJp?=
 =?utf-8?B?TlRyQmJKKzBUeTJvQlUvNGpqb0tpeXMxYlBKZC9YVE1FYkpzd3QxemlNRHdh?=
 =?utf-8?B?MjZEVUc4SGxRZkxDT1N5eElWbzk3VEJ2RG15emVoMnowallqZkJIbVFSc0tT?=
 =?utf-8?B?ZXlMUzcvaU03ejAyaHVoK3gzeE5lNzNDdlNGNmU1dFhKbnNQYkN6YUpIWi9R?=
 =?utf-8?B?ZDQxZWovUHhNZkNHSHFidGtyMlN6MXBKYWlkZlU3ZGRtUGg5aGNFOEtFaVRN?=
 =?utf-8?B?eDFGUjNYUmJUQ3Fqd0VoVXJ4ekVpTDkrSjdodjNvcGkzaEpia3hxamZSSnk1?=
 =?utf-8?B?eGw3WlYrTkJnUDE0UG1YVWtuR3JiWmgxSjVXckU0V3dGTUNYYjBOMFJSMmhK?=
 =?utf-8?B?dDNOTnUxRmFGWXlBcEJ1c2ZXSFlvY0tUaFhJYWx6Mm02aEtBZE1oVi83d2x1?=
 =?utf-8?B?QURUMXdTRmhhNUJRdnZOL0ZSek5RaFQzRHBvYWppVlloR3dEU1lsbmdPUlMv?=
 =?utf-8?B?WCs3Ym9sdWdPTUJqckQ5bHE1cGd6OVB6THAzTmpia1B3TWVlU0N6YnppTEl4?=
 =?utf-8?B?SVdrVjI0YkJ2eW1PWDhoWk9oZFlSQTJCL2xWakkxaTAwQzF0ckV2ZE9RU0pD?=
 =?utf-8?B?V05UWnh3Y21rRkg1OXhPMlU2Y0d4WmlmOVhCT3BJRTlsZWdhMklOU09UYWtl?=
 =?utf-8?B?SHRmeFNCdDF1Zzh0OVpxVUY1OGNNempMOVZ5SjQ0TzNWVlVUeDdwUHZHeHZj?=
 =?utf-8?B?M3c3U3BDbnAweE91UGdXcTFOVkNFb3RrL2RQWW1HNzBQWGQrcTBVR2ZMKyt1?=
 =?utf-8?B?TEdPMjlpTWRITUVOZWlaTmlucE0vYzNreTZFc24rM0NWQVJSRk5BMmxnQWxS?=
 =?utf-8?B?VEtIcG9NNlZ5OGxsUnliM09OOEM3R25GQjdLWGhQeWNES0JLb2lxQU1FWXJY?=
 =?utf-8?B?cUszZEFzcWRwNlZKb1BYQXNad1pUNG05SUZtNnZUclBFMHpmMXNXMi9HaXAy?=
 =?utf-8?B?a2tZWHJZVTFKRG9UQmVPRVRjdmxWTTczNWNjalZVZDk3RExPQmVaeDV3aGZE?=
 =?utf-8?B?aVlmOW9URnNsOGFIWkhqM2FrZEYrV2lUMGhqd0tNM3FkMVk3S1RwK20vS25I?=
 =?utf-8?B?MHhhdHY5eGNzUjdsaEd6TDNoRjlMYUJNQ1ZSN0cyVmVEeU50ajRRWDBVMStH?=
 =?utf-8?B?Y2RPMHEvVTU3bm5uQm0xL3c2TjB1VFdjSDJrYkc4Yk16Tzg0c2NYUGVoNVZ0?=
 =?utf-8?B?VVYxcU5YbUx3M21tbjhMekQyZ2tuMjBzME5qMGdLSXFmdVp6WnV5bFFMeEov?=
 =?utf-8?B?ZmFENnJSVEtqZ08xYzhvOVUvNW5sYzIxU0h0UjZJT3ZaclZhUGVDU09icXdK?=
 =?utf-8?B?MThlSmZsbWFkTGxTYjJub0kyMThqd0ZhREdaUFlZMmZJWUpkT0JaaDZoUUZh?=
 =?utf-8?B?N2kvK1hxV2VZazErZEtFVDJINHJqRzluOFYzM1ErKzZSWDF1LzBxampuQ1pk?=
 =?utf-8?B?MEtseUo0OG5UeWFMdXAwbkQxL3pQcEtlWUU3MlZTTkxCUXdyYmFIbEU3VTBZ?=
 =?utf-8?B?R0dEeTArTDV1RlBkczJYSGNDcHJUM3lVN2h3bytzYzB6dmJHcEdHRnZseDh2?=
 =?utf-8?B?bU1LRGs5bkY4Wkh0Zmhpa2s3VjRrL3dzWGVla1MvQ0hmeDdhdHNuTTBvQzFu?=
 =?utf-8?B?UTg3UkEvQXdUb2sreFIwQjVTY3NFS3NxZEhKcko0aG1DMW1WclJ0NWxtZmRr?=
 =?utf-8?B?MXFieTkzS3BsM3E4SzdPVkdHakh6eVI4NGlLR0RFVGRGdXFMTjlha2gxY0lL?=
 =?utf-8?B?Z1N3VXlBSTYyL3U0QmtTbzk0YTQ0RkpPUWZ2TjUzNzRwWjdpTHpiRGFuTFBZ?=
 =?utf-8?Q?ffJeYbaj+nJgzHHQvWqAGvbjb6xeQVax/3lf+jiAmA=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a48f15d-ffec-439b-4dd8-08d9bf200073
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR10MB4464.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Dec 2021 16:37:21.9394
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K6z7rScj9PK3qHWRh2HEa1k4473RUOVPHDY8oj7UBthfkv0uvxufCEPOwvHR/G3dFvRUythE9mQfIwrf1VJ3yFvAtRU9MN4sgRXlCLYUDB4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR10MB2566
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10198 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 bulkscore=0 spamscore=0
 mlxlogscore=999 suspectscore=0 adultscore=0 malwarescore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2110150000
 definitions=main-2112140092
X-Proofpoint-ORIG-GUID: 2v197d-ck5GJLak2sdcfRqhPFu597C1O
X-Proofpoint-GUID: 2v197d-ck5GJLak2sdcfRqhPFu597C1O
Subject: Re: [oss-security] Fwd: X.Org Security Advisory: December 14, 2021

The fixes are also provided for XWayland users in the XWayland 21.1.4 release:
https://lists.x.org/archives/xorg-announce/2021-December/003123.html

	-Alan Coopersmith-              alan.coopersmith@oracle.com
	  X.Org Security Response Team - xorg-security@lists.x.org

On 12/14/21 5:14 AM, Povilas Kanapickas wrote:
> 
> -------- Forwarded Message --------
> Subject: X.Org Security Advisory: December 14, 2021
> Date: Tue, 14 Dec 2021 15:11:35 +0200
> From: Povilas Kanapickas <povilas@radix.lt>
> To: xorg-announce@lists.x.org
> CC: xorg-devel@lists.x.org <xorg-devel@lists.x.org>, xorg@lists.x.org
> 
> X.Org Security Advisory: December 14, 2021
> 
> Multiple input validation failures in X server extensions
> =========================================================
> 
> All of the following issues can lead to local privileges elevation on
> systems where the X server is running privileged and remote code
> execution for ssh X forwarding sessions.
> 
> * CVE-2021-4008/ZDI-CAN-14192 SProcRenderCompositeGlyphs out-of-bounds
> access
> 
> The handler for the CompositeGlyphs request of the Render extension does
> not properly validate the request length leading to out of bounds memory
> write.
> 
> * CVE-2021-4009/ZDI-CAN 14950 SProcXFixesCreatePointerBarrier
> out-of-bounds access
> 
> The handler for the CreatePointerBarrier request of the XFixes extension
> does not properly validate the request length leading to out of bounds
> memory write.
> 
> * CVE-2021-4010/ZDI-CAN-14951 SProcScreenSaverSuspend out-of-bounds access
> 
> The handler for the Suspend request of the Screen Saver extension does
> not properly validate the request length leading to out of bounds memory
> write.
> 
> * CVE-2021-4011/ZDI-CAN-14952 SwapCreateRegister out-of-bounds access
> 
> The handlers for the RecordCreateContext and RecordRegisterClients
> requests of the Record extension do not properly validate the request
> length leading to out of bounds memory write.
> 
> Patches
> -------
> 
> Patches for this issues have been commited to the xorg server git
> repository (https://gitlab.freedesktop.org/xorg/xserver). xorg-server
> 21.1.2 will be released shortly and will include these patches.
> 
> commit ebce7e2d80e7c80e1dda60f2f0bc886f1106ba60
> 
>      render: Fix out of bounds access in SProcRenderCompositeGlyphs()
> 
>      ZDI-CAN-14192, CVE-2021-4008
> 
>      This vulnerability was discovered and the fix was suggested by:
>      Jan-Niklas Sohn working with Trend Micro Zero Day Initiative
> 
> commit b5196750099ae6ae582e1f46bd0a6dad29550e02
> 
>      xfixes: Fix out of bounds access in *ProcXFixesCreatePointerBarrier()
> 
>      ZDI-CAN-14950, CVE-2021-4009
> 
>      This vulnerability was discovered and the fix was suggested by:
>      Jan-Niklas Sohn working with Trend Micro Zero Day Initiative
> 
> commit 6c4c53010772e3cb4cb8acd54950c8eec9c00d21
> 
>      Xext: Fix out of bounds access in SProcScreenSaverSuspend()
> 
>      ZDI-CAN-14951, CVE-2021-4010
> 
>      This vulnerability was discovered and the fix was suggested by:
>      Jan-Niklas Sohn working with Trend Micro Zero Day Initiative
> 
> commit e56f61c79fc3cee26d83cda0f84ae56d5979f768
> 
>      record: Fix out of bounds access in SwapCreateRegister()
> 
>      ZDI-CAN-14952, CVE-2021-4011
> 
>      This vulnerability was discovered and the fix was suggested by:
>      Jan-Niklas Sohn working with Trend Micro Zero Day Initiative
> 
> Thanks
> ======
> 
> This vulnerability was discovered by Jan-Niklas Sohn working with
> Trend Micro Zero Day Initiative.
> 
> --
> Povilas Kanapickas
> 
