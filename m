Received: (qmail 31866 invoked by uid 550); 2 May 2023 22:09:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31829 invoked from network); 2 May 2023 22:09:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : references : to : cc : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-03-30;
 bh=QFoT+/WrWc3iM3tkPohQlRcmDZGmQD8fo0z6TjUC3y4=;
 b=x31qMU88JOAl6jmhLqkO2Anbfr46e7LwlWndrmnOxkFSQz6LgRL80GMvkg4fmYQv+UHg
 g7kRTdKR14Z8Ods66uqW9RwuqkhA2/H0LiVQCdKNj/5tyvYz2sezLgxseGcUt4WUrV+F
 1y88m/3oY+bTD7fz0uLqvmjnPBew8fi7MKhCYvrpuSd83U1DL0BvnUWjuSCX/pSrSPIM
 les8wFdAxJrtUFPNJV3tVUdIw51HZExLeQPYmQV2aGmtOEyrxvKpw4SeO/f2z0I2CBld
 DnWEekNSKff6gaa7k5YiQhmWwVZwAjpk0MxqyLrUwEoqAudsBj3aZAHUnI4BJO46HuNi yg== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m5h00s9I5IABp21o9nsWa50miXTIP9VY9+hhKfys6gnRZhVovtSMewzvuStl9EuKyyCEIfKqDIMDwCOfZctLlUg7UDYqvdjZ/PE6Y5xj0golsvcNsRT37cvnD96xMRncr6Bl24hiTeMWE8TluJxJDdg21SP1YX84Nx/D64NRvIb/KjJMcwuqopIMAyKsSpBbdbeLLX0SR4PszlKuJu6n6d+0dpirf6X9wRy5hOgU5we2laI+okoK70edwgklt6X2PBagF+Ie0jvp8mpP80UUfQgPL6ls/KMSSzHfafHRUMFvtHB1LIHMfqftP0+Cn5g0l68jDoUNxw2LFEkiR4WLpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QFoT+/WrWc3iM3tkPohQlRcmDZGmQD8fo0z6TjUC3y4=;
 b=YceCvyeCx8i2o5M4tmO2dDNXHGD6xavTAXRtRQ9BOtJrF9QZSzvKy5Ktus49RMAw9H4w+FiYwl0+SG6Q9iwODDbiuFQfVUwppT0uZZoZX77GWsFMY2vawsqcoSMcirfXoEa19DgsEYd4xaWSVttXnzDE0wyXxs9nvLIGFS2pw2+E/sUbTX4LXkwE8WYK78S9GCxYjiPc1BBHRxm63QqS4qhAeWl9PtUcs6N66aELhFYz2dcMpZ7EjjdZ5vXyuMg0okNdKvm61a97lXv8I87qMZJJV6Ij8AdORpesePIK6MVg0l9EIqaFOVuAB9h3PJ7ftJsVyI+BOY3IZufb9/oHAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QFoT+/WrWc3iM3tkPohQlRcmDZGmQD8fo0z6TjUC3y4=;
 b=u529nYMVdHUtE2KpxaAVVO5PR5qs9Gy5vyyQzR3/aWOnZOcouyIqEQn3sTuUkpH06EJAKDPEmDz1nvE84l4awW57rKfhv1MlnxL8tZ5PbWeQ9wN2srVxUJi+XsB7IezhMC/XxLwNJlNH2566rEKhXdZ9FFbVxSOW2XEzhTvIz+4=
Message-ID: <ecfc25d3-9c2f-a3a1-91a8-693577e33e18@oracle.com>
Date: Tue, 2 May 2023 15:09:32 -0700
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
References: <1ea25603-171c-062e-bc02-bcdfc3acd01a@oracle.com>
To: oss-security@lists.openwall.com
Cc: "X.Org Security Team" <xorg-security@lists.x.org>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
In-Reply-To: <1ea25603-171c-062e-bc02-bcdfc3acd01a@oracle.com>
X-Forwarded-Message-Id: <1ea25603-171c-062e-bc02-bcdfc3acd01a@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DM6PR02CA0145.namprd02.prod.outlook.com
 (2603:10b6:5:332::12) To IA0PR10MB7303.namprd10.prod.outlook.com
 (2603:10b6:208:40d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR10MB7303:EE_|CO1PR10MB4755:EE_
X-MS-Office365-Filtering-Correlation-Id: 553b4d41-ec4c-4a82-f909-08db4b59ea32
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	7NPmJhcSk5RlSMFxPmN2jQ71SdG2fA7cE909iCjpvK2Chpp5KXf95FTtNt3wpij/JFXTBKyj8xhXPdmDo9+Rj6IjPlzgqNsXxXZRF40lH6wpYpq3bh6udSAxVLPPR6CCy0CQW5riQ29GBlJDnlrgTTwq75exEv0JBusY+cJbKsTTU8JsS5qPqhdXOoZjhk/V7yGF0T9UuWsF9261vmmMYAzF+rVFGpdQkf8tMYuEY58a9a1n1OoXxHeIxbEh65yOJDimlrREPVT9mtv00kr9/1ew/E9LcL76Er3RMZVs+1T+jrOUY94tjacRY/71bXjBUrNCctQVHsYjKiLHLyAwUrEstolEmwq9OL0nSNOXe1rZfNQAq+VEJ3W/lDPsoU9A6O+r9TbqoZLkurotHZaW385NDdW8ejLTS+LKntgA72T+jkwXEzwZuVHXCGcp0NvdVkrJ/v0Cb6X7Wn+XS9W3YY8TIG6UGiVqOVqQm5bbxSElVO+sTni2ihMdjAiir4Bg6udZQLz7T8e2NapTKTCFqnNsxrkGHnSKX9Wl+5FB2l7GDD7p2j41h47iw25/bx+/3Hh5EOQhrDzKpfl43zQZdGbJKWxAGlWzJSjKFvyVL6thyC3s58w1iIh8bJM8eBWDkt23A09qhS1lDW3heD/2bg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR10MB7303.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(396003)(376002)(39860400002)(346002)(366004)(136003)(451199021)(86362001)(8936002)(5660300002)(8676002)(38100700002)(4326008)(41300700001)(66476007)(66556008)(66946007)(316002)(31696002)(44832011)(6916009)(2906002)(966005)(186003)(6512007)(6506007)(26005)(6486002)(6666004)(66574015)(83380400001)(36756003)(2616005)(31686004)(478600001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WDBFbFpCRTJ3c3Q1dUJkc3hOWXVjUlRKZ3RIclF5S2k3TWZkTU1SaURTTmZD?=
 =?utf-8?B?V0dpcUJyMTZLeHNacm12dTRqOG01cnJxNDI5TkdIU0EyOXVjZlp0YlVKYlNl?=
 =?utf-8?B?ZGZNSk1wQm0zRDc4MG50MHprM3hqSkFldUU3aUtuVTBmT1Jpby9sTitWWm5E?=
 =?utf-8?B?ZXg3cWdRV21xQjI0WDZFcTVLZVVaTTRMNUxjVWo2enhDdFZhb2dyekNWdnVD?=
 =?utf-8?B?dWxXWXZHTUxxdVUvVjQ3SHhsL0E1RzBWQ001MkNCQmh2NDZjR21aZnZhMlJZ?=
 =?utf-8?B?S1RkdytycksrekZHN2h5MVVLSWk4TmNnQ04vWkVXZVNPa0QvSEFaZTU1UVQx?=
 =?utf-8?B?Q3JHYlRUTGpiVUlMZjBlT0dtTmlkV1Z2OEZGa1BvaG1GbUlaMnEwZ05DcEZn?=
 =?utf-8?B?MmVRMVRYeFBWUE5xU0hqLzdBd2d2M0NVVG9hTUlXM0lxTzNDdlBOMDlHaHU3?=
 =?utf-8?B?S3FOUFU1SmVFSlhma3h3YmNZajF1d2I5NjVBV2tMaFhtNXovN09tMEREYjZS?=
 =?utf-8?B?UjFjcGZPc203aVlBL3Y5YVRJYVFUYkNRaFhmZlBRQ0ZGVnNMczJSYkh1YTRt?=
 =?utf-8?B?ZXJvTm5YNloySnp6QTdiWHFFc282SGYrSlZ0STNoL01FaFBTL1E5RTAwVFgz?=
 =?utf-8?B?eUNkNXA3akV4Sjc3Zk9IR0ZXWFhRTld0RnlyMUsrYmt6UENsdmUxK3MvbGw0?=
 =?utf-8?B?V1BuaHQrM044a3ZhZERqVGF4MWVxUURNVzZmTlVJRjJSTnc1Sm5nNm1vMkJZ?=
 =?utf-8?B?OTA0bVVqTnNTMWdsVjZRVWtjeVNPSGVGdnRyN3VhelJYNEMzQ1VpUVJFeG90?=
 =?utf-8?B?dEFPSm41dUYxOWJSczBsbXVRQ0UvcnlRalM5OVVxK0FadDMrSnEvWGpRS2Fu?=
 =?utf-8?B?TXdERitySnF0ZWFoMkluVTdCaVJ0dExYdm1lS25PWGM1NWR6VzNsMHV6dE9O?=
 =?utf-8?B?Vk9XWTZSUDV6VUxpeFZ4SjZ2R3IrM2V1akZSRW5LVHNaWSsrK1lRVGU5MCts?=
 =?utf-8?B?VlR3dXlDZm81b1lVVlBXR3F3djB0aHdvTWd1NjVzbGdVQkFCd2M4aVBiNGtw?=
 =?utf-8?B?NUZVZTNVZGpWTW1teThHdnJxMnJibTQvTkgzSjZFWTZmZmdHMXg3ZzRQYjA5?=
 =?utf-8?B?T1p4dDZweUVLT2dWTFFKMStydmZpdDMxZEJuYzNueForZHV5Tm5hVFNpbXo1?=
 =?utf-8?B?Mm1GVWNzcE9jT1VVd3ZvT0RYbVRyRitPUzhjaXJjV3N0eHJ4N1JWQ1pyUDh5?=
 =?utf-8?B?MjlkaVg1REovTFlyb0F5bk9XcllFTzNjNGE5Rm83QzlGK1Z0cktUTDR0M2Yx?=
 =?utf-8?B?b3lSNFpBOXdkWTVvSFdkcitNTFViZURVWHIvUkJIdU1XK1VtbTRSbmtjeHly?=
 =?utf-8?B?NXl5dFlQQ0ZOajJ4dTVMYWh6VHVJVTRSTTZtZG5JdVJ5RTBjc25Ba1k4YzN1?=
 =?utf-8?B?bldLN25XZjg4RFdRUGdOdnNjS3lhTnI5dFNVUU8vM0d0SXNYbXVvM1VyNTZF?=
 =?utf-8?B?N3o0OUQzTzBBdnhpQTRkenI3cDNHaStwRDlJdnBEODc5QzVwWVQ3VmJxQjVv?=
 =?utf-8?B?ZC9mNjJpMTh1QzA5V3k0a2hONXc0L1NVc2dTdmxrbWxlZ0NCUkI2RXpFOWph?=
 =?utf-8?B?cG9UR3RpdmppenNTVzRlU0JHM05nRzVZMXBhb1pBRkx2TU5HekJVbVpLN2FJ?=
 =?utf-8?B?LzB2U1Z3d1cxK3grWHVqRmRCbnF3L0w3all4RHRYREg0c2FIQkY2bHJkN2xp?=
 =?utf-8?B?UWZmMTZNK2FoV3pLVGdrUHgzb3VsWWlaa0hydU9Ib2lPUjBGSHBOcXg1MGhv?=
 =?utf-8?B?SUMyWTlOcHIvL0V5T2RTSUQrQjNiMXRGZXM5STZNVStCbC9FSy8vZEUyR1ds?=
 =?utf-8?B?WWgwTzdJbDR2SEJXV1MvaU0zRzEwdHYzSktVZ2xkNWJSOEc4ZysyRXE1cnps?=
 =?utf-8?B?ZnNjbzN2eWU5SkE4OVIzb1J1MEUyOE56SXk2MHZFS0l2dU1Kb1RGUFRBNVMv?=
 =?utf-8?B?eDRHaWoyUjllQkRRd1JNVEtJbGh2dnB4NGZLd21hKzZXU09icnRlMHY3b0M4?=
 =?utf-8?B?ZmlqSVFUeWQzcXYzMmNlZkQ1KzBlb1ZKZnlYRWZIdGoxcVdnOE04Wkh4MWFL?=
 =?utf-8?B?dGoyTkNlMWQrVFlwK0tRYzJXeVZaMXlTd3kvY1Nwcm42U2FVWXl3Uk9HVnB2?=
 =?utf-8?B?ZkE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	mGJ9luAUboUuvOdbjCn1YimBLg7/9Vevc5+AUZABRLicIsQMhDZJ3j0smhbPM+CnN/31ch5kzq5A8/htSl/tE66AxZqwBq3nvIquYQaReJoHNcNjtbKPMcQT5wzCur+z1cBn/gmFfaFuNAucva1MrF5W19cwauNliDw0X6gNuF8uv+ZbegymVyt1SGWHjhCB0c0iq4B3eqAHgnpB7JVFJ6sVeUyksk2pCNblLMFpEXxKQ5WwMTrx3VrW6p7HspiqTrsqSCnhwCZ8qj5ftykKYdQauDoYv3gO/nANg5BJk93LL1UXlPca4Qopr5nhujaU2m9WCzL8+M36yw+GRWrXK4XRujOU2QaLGsQ9oZZopnCkzTLKusgwHqjawbjnNhQ1MFWjkgtGqeX+qV1KQL9TZwLdD8DM3QwYg2lLjG/4JnMMjhi/IyK/jDMK9Aqh7x9RaGdXm1MYn4cIqJEWa/CGbIvKvV14CGSop5t258MnCtH4f8ZQTdpjxGzRv+KcyGWoRJvF7z61lCtF/T9l6PLRexMlN+Rhynnyv3dr3+e5tDIZlFIViLCaT801jHevHuOJ2WMUBtRjM5R5W9OyoK9wPD5gl19pbwtDAiQQ25fnpU1dP26H6+KbiDoumXcq1keSsaYfXFDcK2X5jikipQG1p6vtNiL6zLrnG5bREYwF4O3hnZf7LO2agSYZfQH8/E3wgDsSKGJJzgC4H6sOJx7TUCeuZqkiTHOR826RyXxvcf4JenKlCzxLllbMw23c0n0D0gMi2J+Y+hKYsX6pouuvMYZT6Vh0ASGbphSBShlt/1E=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 553b4d41-ec4c-4a82-f909-08db4b59ea32
X-MS-Exchange-CrossTenant-AuthSource: IA0PR10MB7303.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 May 2023 22:09:36.0451
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aoU/N/7kF64rOv0Nhn3yWc+8eutVMuzjKzwBtW+bh7VsJOh7nPO5ik6G23i+rMK9gIG+w4Mn7sqyVcPiEUqj7s7SAgiKrVsTY7qJO/rBmaI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR10MB4755
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-02_12,2023-04-27_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 malwarescore=0 adultscore=0
 suspectscore=0 mlxlogscore=999 phishscore=0 mlxscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2303200000
 definitions=main-2305020190
X-Proofpoint-GUID: z32ijPchdSac40TpDCHuBnQfwsRpfiN7
X-Proofpoint-ORIG-GUID: z32ijPchdSac40TpDCHuBnQfwsRpfiN7
Subject: [oss-security] Fwd: Retired X.Org Packages

The following is *not* a notification of a known vulnerability such as
this list typically gets.

Instead it's a warning that if there's unknown vulnerabilities lurking in
this code (a not unlikely event given much of it dates to the late 80's
or early 90's, predating much of what the community has learned about
software insecurity), that the upstream response is likely to be "Well,
that's another reason to stop shipping it, as we previously suggested."

This especially applies to things no one remembers the inner workings of and
which operate in risky network positions, such as the X Firewall Proxy (xfwp)
or the Xrx browser plugin.

     -Alan Coopersmith-              alan.coopersmith@oracle.com
       X.Org Security Response Team - xorg-security@lists.x.org

-------- Forwarded Message --------
Subject: Retired X.Org Packages
Date: Tue, 2 May 2023 14:59:28 -0700
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: distributions@lists.linux.dev, distributions@lists.freedesktop.org
CC: X.Org Development <xorg-devel@lists.x.org>

We've gotten a few queries at X.Org lately that suggest we've not been as
effective as we'd wanted at communicating the status of some of our packages,
so I've made the following list to try to help with that.

We have retired the following X.Org packages in past years - their gitlab repos
are archived, blocking any further bug filing or git commits, so any distros
continuing to ship them are doing so at their own risk, with no support from
upstream - you are their upstream now:

app/lbxproxy & lib/liblbxutil:
  Support for the required LBX extension to X11 was disabled by default
  in xorg-server 1.1 (May 2006) and removed in 1.2 (January 2007).

app/luit:
  X.Org stopped maintaining our fork and encourages use of
  Thomas Dickey's from http://invisible-island.net/luit/ instead.

app/proxymngr, app/xfindproxy, app/xfwp
  X.Org has deprecated the X11 Proxy Management Protocol and related tools,
  in favor of using SSH's X11 tunneling instead.

app/xdbedizzy:
  This was a simple demo of the Double Buffer Extension (DBE),
  not a useful program.

app/xrx:
  Most browsers ended support for the old Netscape Plugin API (NPAPI)
  several years ago.  Even before that, using a browser plugin for remote
  display of an embedded X11 application never really caught on.

app/xsetmode:
  Replaced by: xinput --set-mode "device name" ABSOLUTE
  https://gitlab.freedesktop.org/xorg/app/xsetmode/-/blob/master/README

app/xsetpointer:
  Doesn't work with xorg-server 1.4 (Sept. 2007) and later
  https://gitlab.freedesktop.org/xorg/app/xsetpointer/-/blob/master/README

app/xtrap & lib/libXTrap:
  This was a proposed extension for X11R5, replaced by the XTEST & RECORD
  extensions in X11R6 (released in 1994). The server side was removed in
  xorg-server 1.6 (Feb. 2009).

driver/xf86-input-*:
  Almost all of these are retired now - the only ones from X.Org that are
  still supported are:
  For Linux: xf86-input-libinput & xf86-input-evdev
  For non-Linux: xf86-input-keyboard & xf86-input-mouse
  For all platforms: xf86-input-elographics, xf86-input-joystick,
     xf86-input-synaptics, xf86-input-vmmouse, & xf86-input-void
  (This doesn't include those from other upstreams, such as xf86-input-wacom.)

driver/xf86-video-glide:
  This was a driver for 3Dfx Voodoo 1 & 2 boards from the late 1990's,
  using the Glide API.

font/bitstream-speedo: Support for the Speedo font format was disabled by
  default in X11R6.8 (Sept. 2004), and removed in libXfont 1.4.0 (Feb. 2009)

lib/liboldX:
  This provided backwards compatibility for apps from X Version 10, which
  was the version of the X Window System from November 1985, replaced by
  X11 in September 1987.  35 years seems like more than long enough to port
  applications to using libX11 instead.

lib/libXevie:
  The server side of XEvIE was removed in xorg-server 1.6 (Feb. 2009).
  GNOME's at-spi2-core used libXevie starting in August 2003, but that
  code was disabled by default in 2015 for the 2.20.0 release, and then
  removed altogether in the 2.26.0 release in 2017.

lib/libXfontcache:
  The server side of the FontCache extension was disabled by default in
  X11R6.8.0 (Sep. 2004) and was removed in xorg-server 1.6 (Feb. 2009).

lib/libxkbui:
  The only known consumer of this library was the xorgcfg utility, which
  was disabled by default in xorg-server 1.4 (Sep. 2007) and removed in
  xorg-server 1.6 (Feb. 2009).

lib/libXxf86misc:
  The server side of the XFree86-Misc extension was removed in
  xorg-server 1.6 (Feb. 2009).


(This not a complete list - you can find more listed under
  https://gitlab.freedesktop.org/groups/xorg/-/archived or marked Obsolete in
  https://gitlab.freedesktop.org/xorg/doc/xorg-docs/-/blob/master/MAINTAINERS
  I've just listed those which still show up with a fair number of entries
  on https://repology.org/ as still being in distros.)


We have also announced that we plan to retire the following packages soon
and while their gitlab repos are not yet archived, we expect they will be
archived in the future, and encourage distros that still ship them to
consider retiring them on your side as well:

lib/libdmx:
  The Xdmx server was removed from the xorg-server sources in
  xorg-server 21 (released Oct. 2021), so this is only useful
  for communicating with Xdmx from the 1.20 and older releases.

lib/libXp:
  The Xprt server was removed from the xorg-server sources in
  xorg-server 1.6 (Feb. 2009), and the separate Xprt repo has
  been unmaintained since 2009.
  https://lists.x.org/archives/xorg-announce/2022-September/003212.html

app/xditview:
  While X.Org hasn't deprecated this yet, you may still be better off
  using the gxditview fork that's part of the GNU groff package instead.

-- 
     -Alan Coopersmith-              alan.coopersmith@oracle.com
       X.Org Security Response Team - xorg-security@lists.x.org

