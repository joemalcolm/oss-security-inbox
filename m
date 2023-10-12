Received: (qmail 5989 invoked by uid 550); 12 Oct 2023 19:50:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32132 invoked from network); 12 Oct 2023 19:43:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-03-30;
 bh=SCvFG/DNUt/N86c+vmps+JzX7FR2dNFC6YR3XwiCU2Q=;
 b=a9ukUHaOljNyYd6lWAkvUJNNaFQ+hMUDmy0qO6ROejF5qVaMRy3CUHWwr5nkK7p952nc
 drX04UHOmhtI87fpS5b5aPWzXBIfrSmYIN0I+pLWA3dMUXVP6m7a6HYZ22aNdWPQOoEB
 mtlZkPUnosafL8RNHpByCxJX+tbUntJHdCgR0xZ08ewC94Emmdim3lp1A4/KTrDtFCTB
 12+zlLabcst62TNVfo2iK0YgmHim6rsLm0MGGJ0SEvM4tyIDGUM6yJV1oI+E99VTO8ua
 BAlpfhuFUy5Tt2ZA04q2V1nqfj4lWqgq69eWfD5/FnJ2gLTw2NH2PLExSOX4jDfIsKC2 Qw== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FKhvppKnOWS1Cb+jzvRv1AWn4GEruRWy0S3ke+MSvUo0s4CDGJMIiZJAVIsmg0VlI9maK4cTDXOEAvvu18Wuheky8sd0vzI+imKNsgwdr/jcELDDp8WOGLWAYAN97NOsvrUsgTF8++J6SnuGQ4l9NNINV084ko657SxWhkyuB2aeFi191OD4snoORv335oGcuHH91Ylqun760OHvKJ8P//gOeA0LMjjiAuQjjhrn7bc9DEy/4rtMvNrFXES6wUd2GIdPfYpTEhNEHahYF8Q5w1kg6iBpTB9VkCSR1M2nhfhDdz4kWFmXsnQxCIKPM1v09nrTOfeZsriCTbZ0WQ+H1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SCvFG/DNUt/N86c+vmps+JzX7FR2dNFC6YR3XwiCU2Q=;
 b=AqYoIf8RvksO8eaZ8YBshNR3K5YsV8HQiNWN3TVwGoyYo5PkKl2rI/uejZPdYKp9Hwbl4f2LpwHMfOwcM6ZjLidsNjhrE/FLtPbqXZ+GqnN1s0WVmVathlNxa1uilrDorGCp/FVYXWC+0j6R2huNnm0DI62g7F0d9ehxyvTAQbMk2K+MLdvPE+4wL7B9vSYFEA8RAW55qkvKLgSeZWhBopphgc1uR2j5mS+V6+LJN48vc+cB1DMooTKYaz51q1UTEUXxQQSQLB+vN5bF+qlZSymVdZvVORlgHsjaUtv0DncqvHGIow9hrW9ZeR/ABwTflbtI6CEnUgNXQNYNFATuvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SCvFG/DNUt/N86c+vmps+JzX7FR2dNFC6YR3XwiCU2Q=;
 b=s+EKE1zkXOo9QT3X+ImPqJygrnqLyqoXvLIc5aYNb8bR/wUzd4APgG+Q7LESBxf6XgYK9vUSdr7Pz9ueMgop+zgc5CGOxt+ajPVaYrawIKRKpTZGAofkelgOaVUU0THAs1jDXHkciJQAk1oG/Fv5U57BHGDBm4rXl6tMrU5zp/w=
Message-ID: <a1749667-3d73-4fdf-805c-5fedbf5d2745@oracle.com>
Date: Thu, 12 Oct 2023 21:43:09 +0200
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <20231001130223.GA6586@openwall.com>
 <20231011135927.GA31034@openwall.com>
From: Vegard Nossum <vegard.nossum@oracle.com>
Autocrypt: addr=vegard.nossum@oracle.com; keydata=
 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 8A==
In-Reply-To: <20231011135927.GA31034@openwall.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PAYP264CA0034.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:11f::21) To PH0PR10MB5433.namprd10.prod.outlook.com
 (2603:10b6:510:e0::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR10MB5433:EE_|CO1PR10MB4772:EE_
X-MS-Office365-Filtering-Correlation-Id: 5c8cfac8-2910-4713-ed95-08dbcb5b78ca
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	WVLcEmTYLgyPN/DO9FUDIDwRm5yra4/VfDPwih8Ll3htlFUB/pT8lqI8h+3tg5sUxIRCw2DrIs9Sj+rY1gOjzPtcCYsoSZoyePDkjfZS5848NlVReLHtpsnWv7OH7/HZCbQfpxaVo+kaLL08PFq0SMvj9tP9avPN7QEQ7oH0qGC2G6GK1E1pd/9EOeAowRloBZH5Q2baBpMSVYJogt6I9RLP2ZfSEhRev5PVHs+qdH5sURu1woxWRDEaR/E/IDgqdaYybeYZ56HVD+L6mzaQxtWlUTEyRATQxEwwltXw+8e2DBKRWzxYrLkPUUh5ciJeV7va7YvetToNFgyejy2Rxqz13bX1VNpEePPyT8tXyCXyKtFC/AP3JkgXgRLXxBE5VjOZhdlOrA/Gxi2nclVXJFIsaCYK925X+W1GaCr+v5mLWDP3AyFHT0iGZjW9E0JIp7YYebf2yJOR/rCw7nR6QLZh1j/jVH0IB8K6ys5yDAnEB54yF+G6QLwo4pCJNuwg9gv1m+ynmfFLnTlPlwLoNWRR+uBGN7nRYtKTL3zdlIKkuuJQw/eORoumeE35yG567vNtTikQYf9Do5MHJ1KFsjRsx7XBicMNuIDkDuS2Ppf52HNqIofjZIk7MSayUp4040E5Yd2VlH+qiQMeo1dvCw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB5433.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(376002)(366004)(396003)(346002)(39860400002)(230922051799003)(186009)(451199024)(1800799009)(64100799003)(66556008)(66946007)(66476007)(2616005)(316002)(6916009)(53546011)(6506007)(66899024)(6666004)(38100700002)(6486002)(2906002)(8676002)(8936002)(5660300002)(15650500001)(478600001)(31696002)(44832011)(86362001)(31686004)(41300700001)(6512007)(36756003)(83380400001)(26005)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dmhmbHZyVzhCN3cyU01NUWdNZ2R1ekVHdG9VYjVlUWJJOVZvSTR5Y3hyK25B?=
 =?utf-8?B?R2IvUkVhWmxxRHNmUXVNZjZndU5zQ1NaczIxZHZacDVYem1GUkNsMEhkTm9Q?=
 =?utf-8?B?dktEK1JLem56VHJXYU9xb1NvMkVHU1Q0VjQzdjFEcktkOU9xTnB3ek5KN0RK?=
 =?utf-8?B?WlNzNm80d2poU1FDT3M4dVJHd1Y5M2pzTXpSMjU4VTFoMnJIQ00rRVFTd0dU?=
 =?utf-8?B?NkUwNXNaS1RzdmVXWTJXR1QxQit5YUFPNVFyY1QyT0FaciswTng5RXN6YVg3?=
 =?utf-8?B?OWw3MFhheW1DRC94VGVxb2NzZ1FQK1FLcUVIOWd0a29KS3RJdDdaeGp4Q1lR?=
 =?utf-8?B?YktrK1I1YlNkNGVZTTB4QjdPQUVyTGJpNmMzTzJBSFNNWkd2Q1RXekg2MDR2?=
 =?utf-8?B?aG1EMjRCd0RnTVN1cjJyL0l1UXRpaHpyK3NhNmZDaXNjQlNFYjg5VGRDQnlB?=
 =?utf-8?B?UDVySVVjMnZpN1Vyb295bFUrZE0vRGwxYVQzYSs4NEw2WFNXRHJLTmg1OFM0?=
 =?utf-8?B?dUxoWlM1V1JsbWNXb1Q1NnhEbzI3RmNYOEhiTVNLSUFmdW9TdTdJb1FjMlNK?=
 =?utf-8?B?UG5pTDNjRXRUQThFN1pQTllaV0dvWkJHYzVKbWh0STU1cWlIRndxM0V6VHVn?=
 =?utf-8?B?NGtpNUhsQ2laYlNYemZjcVRpdW1jd213N3RoYmg5alRNc0x3NnkyNkNQa2VJ?=
 =?utf-8?B?NktGeE5WQ25yY3BObWJBVmxzTW9ObmRDRG9PalNTOG0xem8vNlRIalFvSzR2?=
 =?utf-8?B?TlJROFFXYkMxbnBiQ3lSVlljUDZTVkpVdWRmbEdHS2RiRVdxUnBjNlJpd0lH?=
 =?utf-8?B?Z05rcWc2eDEzTXk4RmxGc2U5QlJXaXhKREY2T0V1aHgrak5McHpwYU9xUFpx?=
 =?utf-8?B?L05UODVqZHpCNy81Y3NzV1Fjc1NsdStuNEtHaDhIeC9UblB6eDJyL0J2T1Rh?=
 =?utf-8?B?YXhGejJVaDcwS2xPc3FBdFIzMEc0dzFubmlwQ1hPRGNKM1ZzWWx1UHBWVE41?=
 =?utf-8?B?S3dJMFMvYjBhNHUzUUZBU0VCaTc1N3lMVmVqVSsrTXlqRzYzMm0xcXhZZ1VO?=
 =?utf-8?B?azlNYTVuTyt4eW5WaDFoc3BWaFlVNG9PZzQwRFQ4aUJYNGM4VlZjS0dydVdx?=
 =?utf-8?B?UmFMY2RqcmdHZEF1YWt0M3ROS2pHZnU4QTRpaUlBQm94eVk1MlptYzJpNm9U?=
 =?utf-8?B?VVd1OHVVNVBGbko0dWpldVZJNjdFMDlvdVl6bHkrTFZFdzh0UVBRMjQvbGI1?=
 =?utf-8?B?ZUdsZERVd3phbkcrR3FtWGV1WlJ0QUE3MWRTSWEyRGNOdVNqOW9sNXNVdVV5?=
 =?utf-8?B?b0NXVGloL2o3L0R6aWdraWp5VldCZHA1MU5PQTNla3ljcExEaHhJZDJlY3Ev?=
 =?utf-8?B?eTRzUktaYzB1NXdEc242cHFYdVQwSGhna25FQUhaYVp6THNzc3ZtYlg0TUhC?=
 =?utf-8?B?WE1uWWN6UWo5cjJSbHFzRTZyTU5lT002Ui96U3dXWkdkQWZQQjZWa0Y4NG8z?=
 =?utf-8?B?Ni9jcW0xOXZ1K0hTNWMvdVNVbWhiMHJQS3czbXRTYVlMQnljdlgzQVRtblhK?=
 =?utf-8?B?YXhvLzlpVDBkRVl1bFRvS3JueXlUeHc4KzNrU09iUUNxU1dYMXpWUzg1ckxa?=
 =?utf-8?B?bjBzWW1ZTmMzaDZuanliVTJ5NVhQSnRvYUVoNVZpMHEzbnd5cno1Qk1OUkhO?=
 =?utf-8?B?TjU4TXI1ZzZpTVhkZmhlOGR2amlOYWxNM1hUcmVaNFN6NTY1dWZvdlJOZXB1?=
 =?utf-8?B?M0VXZnBrd1VJYmtQVWVYOXBPenczQW1xUWcyYWlnZVlKdjE0aGcwUFBnRVRZ?=
 =?utf-8?B?RkpZRGZhRTVyNnVrbGVTWnlJaGlpV0tFbkpZWkl3MzdFR1RMeTBVVFdheVlO?=
 =?utf-8?B?VzcrZ05iN0orR2J6K1JqSFRoWkd4VGczdXkzclk4bk5uTXNhUzdzay94c2ZH?=
 =?utf-8?B?aEpKcUthQ0xyUXFmdVpLUkNtYWhPTStyL0FITGRjemFESHpMVGxvdmhqVGpM?=
 =?utf-8?B?dTdPYklodkp1N0NnN3d1Tnp0cHlHRG5OQ1c3OGR4ejhGRDArM1dFT2FIWWw0?=
 =?utf-8?B?QmNpdC8yNjQveW9EZ29rMjhxUTNMc3Nib2Y0QzlJSm93dnZGY3JBOGk2enJx?=
 =?utf-8?Q?2/6d0w0KkhnEYJ/d9tKEIAiKn?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	yE5aWxvkoTlnnDroY1xcGF9oSzXmPsmCWmkQ9YaOlyXl0CLUeFX34xtQToTwZYEWxmvCokbny2Bj4bLEzEdcYGDn0z7sssF870DovHD6U53hwHKvJA44FCTVWotbnhzZ8OwDjUpb+88KWTszVO71LDFOW9QhS7UimCBQ21oLfS0eQbz6zL26XOTJQEuyYtkFPLSpJ8UHnnugUC1ycB8kIlmXCl/CeCQVRD9LLCn3Q0yZLFoxYm1BV97SltadLsMnGqhb5Drz6jrFjZZGZ5ugXaowX/O0dZD5SJXSGL8Shx6Wp2DAIuGahajuU3cVlPtKErN/DkEh6g7/miuKehS9igRCvabe9HF0KZDFf+lzOm02jAey8xo6Cjep/JQK5LFQOLIXnP8RYtWUpI7tHm3AedEnL/zWR9hlUCI0bYGhCb3sOrb0a5MOEL0Ea6PmcjRIudtK+jRoztkN2BWUEVRcP6hWphla0GPXjqZFtJIEHaBQr66Ttr9no1MSJ+RfKrtlPfj0wD0hzMWRC91iY2hABviMEPLLf5tZ8ajHZde8dXIDkiAzV2Vw4CzXPPcbXYiQ/BH/z5MbnFnhiNkdh45qftQ+w9UAu5HaGsPX3JLKlU6bb4xnm96qgH2+/9kYmBhZ1HXwI9bV89f/YecnAd+i/cjf2c4H60/88vfg+jkdL0iLcSOg9DMHxp87B6IlKoHX8cTt+VbBMCzRLp7uEEIeRqGBbGTOKTI6Il/cGCpI3Ig8a48X6uDjtK9MioMuUnHcA7qfHynETra/1YcLjCawHg==
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c8cfac8-2910-4713-ed95-08dbcb5b78ca
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB5433.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Oct 2023 19:43:13.4685
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sd+Q6NJBrD4YmMANEOcF+VDSwenUev/ekM5yZDxJvATajXIE1iUDzRIMQ0gCLOa6xjwOAbSeCJaixvr/w8yNTi12sSEm+yDmKEOVtcERmCo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR10MB4772
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-12_11,2023-10-12_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=940 suspectscore=0
 phishscore=0 adultscore=0 bulkscore=0 malwarescore=0 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310120165
X-Proofpoint-GUID: Xe0VrpyHffU-l-8otPNGmnKdYZk27n9n
X-Proofpoint-ORIG-GUID: Xe0VrpyHffU-l-8otPNGmnKdYZk27n9n
Subject: Re: [oss-security] linux-distros list membership application - CIQ
 Rocky Linux Security Team


On 11/10/2023 15:59, Solar Designer wrote:
> I'd appreciate others in here (especially "someone already on the
> private list, or at least someone else who has been active on
> oss-security for years but is not affiliated") helping review the
> application below.  Normally, I'd just accept an application like this
> based on it fitting the criteria (per my review) and lack of objections,
> however for my own application it would be best to hear from others.

[...]

> On Sun, Oct 01, 2023 at 03:02:23PM +0200, Solar Designer wrote:
>>> Have someone already on the private list, or at least someone else who has been active on oss-security for years but is not affiliated with your distro nor your organization, vouch for at least one of the people requesting membership on behalf of your distro (then that one vouched-for person will be able to vouch for others on your team, in case you'd like multiple people subscribed)
>>
>> I suppose someone in here can vouch for me.  Please do - ideally, if you
>> also have something else to say on this application in the same message,
>> not to spam list members with messages solely to meet this formality.
>>
>> I may then get additional CIQ and/or Rocky Linux people subscribed,
>> effectively vouching for them, after making sure they understand and
>> accept the list policy.

Hi,

As a current distros member, I see no problem with this whatsoever and I
appreciate the transparency.

Thanks,


Vegard
