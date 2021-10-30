X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1925" "Friday" "29" "October" "2021" "17:37:37" "-0700" "Alan Coopersmith" "alan.coopersmith@oracle.com" nil "39" "[oss-security] CVE website transition from cve.mitre.org to cve.org" nil nil nil "10" nil nil (number mark "U       alan.coopers Oct 29   39/1925  " thread-indent "\"[oss-security] CVE website transition from cve.mitre.org to cve.org\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE website transition from cve.mitre.org to cve.org" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3185 invoked by uid 550); 30 Oct 2021 00:37:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3149 invoked from network); 30 Oct 2021 00:37:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=to : from : subject :
 message-id : date : content-type : content-transfer-encoding :
 mime-version; s=corp-2021-07-09;
 bh=deEMIMms9EHOj/c2Qg6t2k/WNW4LlRYY3Mu/ZWbES6g=;
 b=vnRXUzk6+WU4UbfdLLfBhjdPV/M3wefu28M0NacrD5SsumcBd7LvY56hltG4H3xYqGbx
 wdqdRom1lUhroY8KbmwwNUmObTw4NmF7Afz6zxLhgJ+5/OILHxyxWgp6+XxvpZVZBYIz
 H93oYX8yX6RiHqOZ/jkF/2s9aYJDRETyZlO+0IoxbGBKE+c3UhIpexyWdue02Q/8sQ4K
 gAvgsOLqNIgN8G8n327cyh9mw8WxS/12BRVyMUKM5iYVbM6gGdrEA/+OzKH9lwYp62RM
 JTb34lI6BS69IEWBLQDY22kM4jJmKeLBoHQWV8kGwJ3MRNq8Y9QoPiyrZxYzO3kXgZoj gg== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A0z4Y1Qn1ykP5j/1EM1+RNioti3JGuc/xK5ZVQXle97Qq8sfHnCHAjnp4aEyRQmyxZxkEJKf68kQ+JK/BAKHgBDQQWsNc/Bc0kk4hRMzXD+d0/+KEQBVRp7AUVAt5h83TK/P5dQSAwrDpDYATQUE9eWI7xuJEGEL4/FMVVJuOTwX4S/zAYnzBprvGkpmt8Ah94Ukqf6/OLleFOr2Z1XhZT2eSQaRrej+bXXX78Tyax9oGSZf7gNwflLHMBDzfywhm2mECSJSMQTytKshYsVhITRqr2xq+1kvPqLvm5lytUmpheTKmNdbQSUPpb4MVpTQWac3YL9Bc4u4N8soVuqqrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=deEMIMms9EHOj/c2Qg6t2k/WNW4LlRYY3Mu/ZWbES6g=;
 b=ibidZ8tNA4l4hhvVOuVT+nS8wXq4akSU8lNVdkiNlZXzb4e2ya5tlFQ0f7ZoFmP4qvFyEh9os6Mppn/JI/fkN5s9CCu/K0qRF6XU/KV7YT0EvANO8Ye2mXkV3y1xWHw1kLPeMCJQ5Mzicc1HKCWzrFXJqQcXLdV7GCC9eTZSVJ9dNMOkFdT/SEBtdivvd/pMe6fvmH552k23StA+85WWZ1+GG3U7B/wFigYiNW+TiZ0suVb2a6+Z8hDwFz2NCXWZKX0oxx/UR9ZA8gqO8su6NzvxiqQG9oTJzHzpD3fpSLvOw1UI3GSMOuL9SLW+H60jq5QTAi6xtmmdg4wlrStn+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=deEMIMms9EHOj/c2Qg6t2k/WNW4LlRYY3Mu/ZWbES6g=;
 b=wa5dqnYVLxa2t8bYWtLKAuZfh6dWvRX9u08JWl1nZ4HYz8oTsE53DYlogcWNcH1+0hPhllYCEEg1WoTrCyW0wuVuBnX4pAYFnV/MOJ4q4Va4haB9MPy/HBbjG2sb91NhRAzg0ngBplpmkGgxy+cwFbhmEZXKEx7HLanQ2Muv41g=
Authentication-Results: lists.openwall.com; dkim=none (message not signed)
 header.d=none;lists.openwall.com; dmarc=none action=none
 header.from=oracle.com;
To: oss-security@lists.openwall.com
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Message-ID: <62710acf-0fbb-3d20-26f1-85ce01d2bae0@oracle.com>
Date: Fri, 29 Oct 2021 17:37:37 -0700
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SN6PR2101CA0013.namprd21.prod.outlook.com
 (2603:10b6:805:106::23) To SJ0PR10MB4464.namprd10.prod.outlook.com
 (2603:10b6:a03:2d0::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a55d0a03-00e5-4914-26d2-08d99b3d7acb
X-MS-TrafficTypeDiagnostic: BYAPR10MB3048:
X-Microsoft-Antispam-PRVS: 
	<BYAPR10MB3048BEF80F6D02324800134FE0889@BYAPR10MB3048.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	9jK/b4383/l9thKbYV0tXkV+YLMHP0k3lgOLkLL2TT3VOmBSwIm7TdwBoiDApx+Nofa+5jOa+5b+TgcmfpMBF7q7fF3wfPlMYoX2bSiqJ/K+J0NoYN2T7DRft1yS7Z3Sn7zyUw3kT9k2/HrCj9iNzzym6d2TX14GuyYqIConHE4NW7L+Jf6SFRioAFa1g6z8H5gsydih6puxxU9BXFpOe/xmmii+yxYWYspee67SbAzOWIDOD/4PTmX7LXjq/nnf+l5DGZDuhoLk7EihYIOYFPlWcakZ2SnxZvOaj75KGvA91gLo+Lhm4V3B8EPspwmRaEXMrRwSpelydcPPL7irjUFWIL9KrFUG/95J5XuGa/gjZkiTrFaOsAvb0eeZWvKndmYA/Tu9XRakHb3jUK3GTuKs/sv9aVslVQYC9Yz9P0OvZv6IaKc+Hthc2sWftMSsmUh3ZhPH17D0c/P8uvHXRI9m2DoPqecQLuDJ/7vLfbpRxFE3Sk40GmTkPSlF4mHaaQdzYgcM/B85NtX7KlqMTXJtyUdL8hPVCg+e1Fe7TblfScUSX9AI307cMxGRsv4AFlPznBIPG5+7EMtK85Bs8iAub+NF7KHXJ/Iy/HLp+9VlOm/iotPy4ZWcf0+N7Zvp+efhSPHIFE9v1FavHrkP6oZgxQTdQQv6vLVTAKRQrjs6M5fzK7nxzZ0QA+tBJMrEgbAtdQPiel3HhUsZQVOd6LQ0CF5gtTFJktrkThi1JUc3Xup1FTaD5KUdnHgNb6/zD85De7bMihDoUDhevKf1RVFJgs7Z1tpQXUT9l8sOgSNbfB3GX4sGxAweb+dk+36my6jRHLZmeQxrBXQUoQO2QLLI7SITH2K691Vqxzi3Px0nv6txgbU7VeZKncRpsMeo
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR10MB4464.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(966005)(6666004)(6486002)(66556008)(5660300002)(31686004)(508600001)(16576012)(31696002)(2906002)(83380400001)(6916009)(8936002)(38100700002)(316002)(26005)(66946007)(15974865002)(66476007)(2616005)(86362001)(956004)(186003)(8676002)(44832011)(36756003)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UEd5S1k2UTduMWVGMzhnUitpUksxUlpMWm1DUkEzcmNEeHhiTFRCZGJDS2pv?=
 =?utf-8?B?cHJrRW5MWFF2OGNFczdBVFg0dXJ2SWFGL0gyNURGNHVCM2lNU2V2bTQ4aXlG?=
 =?utf-8?B?M1F3MTBlenIwd0JMYXhFOHV6aEI5V09WNDhBZmtUcm1OMERpZTBuK1NiZCt1?=
 =?utf-8?B?K093OTBhRkpMWDhUVTJlWXBDdFNqU0NLOUNwNmdaMUpJUWRYZTAxWkNrUjQz?=
 =?utf-8?B?bVBvOHI3R2wxOWFNZjJ1eXJ4cHJnMEVoSmxOTzRjNUlyY0Y2c0wyUGxRQUhz?=
 =?utf-8?B?OGFwN28vZjA4Q0swNjZvUkh0SnJGQXU3OU0rc0g4MXlxY29VZjRBUTRrcExI?=
 =?utf-8?B?QVFnYk5BcDFlalg3Q1ZGMURSRnEvbFpRazZFTGQ2OW9LWlJYbDJtYVV3RVVG?=
 =?utf-8?B?MXM1UG85YitmdVNiK0JHb0c4cWZzQTJsNlcrdE9CMThQaW12WFQ4UEowMVVh?=
 =?utf-8?B?eXRwYlAySWVlV0JiemxCVC9obVZkQWdaNlg4MEpVUGNJWmRIWGFWQ2VaNUhF?=
 =?utf-8?B?eVEvcGh1MEZaMitqUnJEaHZZbkRXR0U1bGVBNGJISEUvTTd6RitHNTBBenMv?=
 =?utf-8?B?dGRCTXhVSEw0Zm9pMUZ1WlEvcWRDNHIyRWZwSnRpVktmdm9Pd1c1c3B1cVdx?=
 =?utf-8?B?UGdlTHhFcENmMUpvRXRZRDN0aTloMVVqb3BMNDZKa29PTldSMGtUQ0lKL3Rk?=
 =?utf-8?B?eURjdjVSdFdTN0FvWjkvVmpKWnA0Q2pjT090V2dqaytTRFRYa0xwWFVIaUZS?=
 =?utf-8?B?YnJuTjRGbWVoYVdlc3BHK2kvWktWaWU0VlpRTTlNTmVSenEwQ2xscXB5eEps?=
 =?utf-8?B?c0JOUEJELyt1NUplNXlOelNFeUU0L3dUdlUwWUlvZXNEdlF3R29wbEU2ZldY?=
 =?utf-8?B?WTFKNnBVRkczVXZZa29GMlEzY1lKME4wRjQxZHdkYXdIL2dGYTdFR0pSWlhq?=
 =?utf-8?B?VXdjcGs3b3hnQldKSmtlejFZL2FhRE5RN0kyd2N2bU51c3JTWHdRWVMrV3lq?=
 =?utf-8?B?aSttZmExZEdhdk5KUmRBUmVEMVJHcVczaG5IeXNVbnB6S290TERWOHNRRVBM?=
 =?utf-8?B?Y01hOEllM0JxNFJUR09MeVdXZXk0SGhUQVQ4WjJjb0dqK0xnd2c5WDN6MkNi?=
 =?utf-8?B?alpEdVZ1UmNOVU1hRVZIWTIzMXBoVmErVWplTEhRZCt6WjI3djFwbWQ4Qy9Y?=
 =?utf-8?B?aXBFTEFJcFBCellSMWdJcDZmMHNtMEprOExvSEMzWk95ZTZud0NaVWk2cndr?=
 =?utf-8?B?OStQWTNwZ3N4Qy9uVVFyV2R5UVB3WjNFZkRvb05pR1pXbjVtN0h3eHhKSnZm?=
 =?utf-8?B?cHNYdy9keUVTZjYxbkVEeTZhSEdzVDgyenAzT1Y3WGFxSnBockhkVTFCWVE4?=
 =?utf-8?B?aGFGY3Bka2dTS2ttYmxmUktvZ2dYWXlzU29lczYzUnBGdHVYMzg3UW9GNFdl?=
 =?utf-8?B?TmVOT1VzNDF3WTF5aGduNGI5VllWY3prVnA4cjBkWEVVNFdjWkVuc1BST0NH?=
 =?utf-8?B?am5EelI5RmNSRU1nc1Y5TXJQM2dvWTVpMzlBMG1lS2dTNy9rdytZVWVaUHhL?=
 =?utf-8?B?SnZwYVVIYjNGT0x5bHI3TGZJNlhnaDY5ZHRCa1JNSERUS2V4a1VNUkMrc3hX?=
 =?utf-8?B?OCtjTDM5MkxSbnRRMVpCdU1rWWxweEpyVHdMaFV2WHAzbmF6K3o3Yms3dGJO?=
 =?utf-8?B?bzhsVnY1K0swMFdqRDNyMWpZYlZjZTVaYm1palRSUVc0RDhLVHNTSFFnRmxD?=
 =?utf-8?B?SGZNZTN6SkM2RDJzdWI5TEVUMnZqTUxHNk16ZDNTWXlRaTdnR0JNSWpzTnRR?=
 =?utf-8?B?QmR1aXVPeVZuaVg2RHVWdjBBT013TWFmUGdqYUZab3RoVW1BR3B0SGt2THJV?=
 =?utf-8?B?TUQrV053YkpkVGV6dHJTNXNOWVZyRFNqaE12N0VIZWMrN2Z0UzM3SXBTZTFM?=
 =?utf-8?B?b1hmakZPcFFGd1FrejdsbHhWMEQ4eHNzcGxrOVZsZHBGNzdHalA4UXVyWTN0?=
 =?utf-8?B?SERDWWQvbUdFUVFQNmN6eTI3YmdnQlFlbitLVTRBdzJIMHdNM1dDS2wwYlFL?=
 =?utf-8?B?eTQ0REc4TkR4OGhSeTdSOHpiWWxQZ1o5NTNIc1UwUzJQZHArTGpNMVp2RW9q?=
 =?utf-8?B?K3B1VDBmZG9DaC9EZXBVK1JXR0Y5K0Y1S1cveTdlNUl3L1ltZEs4SnFEUGVy?=
 =?utf-8?B?dDhIa3lSbW1iTERsYXB5cDZGMk15SExyVXhIOW80RktOQzlJV0tZRkJVdUtv?=
 =?utf-8?B?VlE4dmRRNS8xeTBLejFya2pha1N3PT0=?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a55d0a03-00e5-4914-26d2-08d99b3d7acb
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR10MB4464.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2021 00:37:40.6563
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6xr5apEFEpMxVqXxXEpGZ+vMnLkUQ068aBPZjWDE9SHAi5WpDOrB1wXMF1bIbtnxiadx9BVuQHt4RLTPbo3gV7FTaEMBA+tLPNfrPelvrfc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR10MB3048
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10152 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 mlxlogscore=999
 bulkscore=0 phishscore=0 mlxscore=0 spamscore=0 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2110300001
X-Proofpoint-GUID: t7SnGfMovBQV09iaUMB_FTH7hf1k_8Fb
X-Proofpoint-ORIG-GUID: t7SnGfMovBQV09iaUMB_FTH7hf1k_8Fb
Subject: [oss-security] CVE website transition from cve.mitre.org to cve.org

FYI for those who aren't subscribed to the CVE newsletter or blog and
don't follow https://twitter.com/CVEannounce/ - they've sent out this
announcement in this month's newsletter:

 > Introducing the all-new CVE Program website at its new “CVE.ORG” web address:
 > WWW.CVE.ORG. The new website includes many new features and is optimized for
 > users.
 >
 > This is the first step in transitioning from the old CVE.MITRE.ORG website.
 > The phased quarterly transition process began today and will last for up to
 > one year. During the quarterly transition, new releases of this website will
 > occur every quarter, and the new CVE.ORG website will operate concurrently
 > with the CVE.MITRE.ORG website. Upon completion of the phased transition,
 > the CVE.MITRE.ORG website will be archived and retired.
 >
 > Items moved to this new site will no longer be maintained on the old the
 > website; for example, news, blogs, podcasts, and the list of CVE Numbering
 > Authorities (CNAs). Examples of major items that will temporarily remain on
 > the old CVE.MITRE.ORG site until later in the transition include the CVE List
 > keyword search and the individual CVE List download files. CVE Records will be
 > published on both sites during the transition.

The full article can be read at:
https://www.cve.org/Media/News/item/news/2021/09/29/Welcome-to-the-New-CVE

Most important for members of this mailing list are:

https://www.cve.org/ResourcesSupport/ReportRequest
  - documentation of the process to request assignment or updating of a CVE id

https://www.cve.org/PartnerInformation/ListofPartners
  - list of CNAs to request a CVE assignment or update from.

https://cveform.mitre.org/ appears to still be the form to request those from
Mitre if another CNA is not more appropriate.

-- 
	-Alan Coopersmith-               alan.coopersmith@oracle.com
	 Oracle Solaris Engineering - https://blogs.oracle.com/alanc
