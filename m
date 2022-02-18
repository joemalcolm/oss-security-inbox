X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["271" "Friday" "18" "February" "2022" "15:19:30" "-0800" "Alan Coopersmith" "alan.coopersmith@oracle.com" nil "6" "Re: [oss-security] CVE-2021-4115: polkit: file descriptor leak allows an unprivileged user to cause a crash." nil nil nil "2" nil nil (number mark "U       alan.coopers Feb 18    6/271   " thread-indent "\"Re: [oss-security] CVE-2021-4115: polkit: file descriptor leak allows an unprivileged user to cause a crash.\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-4115: polkit: file descriptor leak allows an unprivileged user to cause a crash." nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1099 invoked by uid 550); 18 Feb 2022 23:19:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1081 invoked from network); 18 Feb 2022 23:19:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : from : to : cc : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2021-07-09;
 bh=WKL4Zg9ygw3VrtBLIq3pgPVu8mM8ga9WaSVSgguMGf8=;
 b=SaJYqwg9Yzmz6BDndDPyAreTRe7UpN+BxXCMm4QttFlO1NBNv77DdLw1z65TtszxBHhI
 4HGV+81Kj2RhHCvzrFWjnlRBhDn0997vOa9Xi/rFFn6i0hDc/+qq1GejQ5+taBFdD/2h
 1M333CQWG1vmbPMi/+5zlWNrWrJbtnj4pxOidtasNFRBoAppcYp5QEweg8g8zNbtLIs6
 DLb6bPNNDWX5349KqMKhRNXKvC0R+BUFlSwVuTZ4UZ2sJSMEyFFxGFcj6lx7qUk2jc6i
 YnYHm4VqjvkSWDm2cWlrXXZ9YSC99LnUgpHNf9H0K8AfHtlC5zWZmY36UoyQ8TIJ7p3E VQ== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z3WZ8yUqBJSCv+8/SjMsQiDLgCebSH9fqURTgkUPY7xYEIAPV/Lr0F/L+NHo7wCx+ZbIySezInhzeFj/o6n1CSSjK5rcvkXkfe5lA8szrqtMH+9Ix/nuoq8zqk6P7NkF2nQx4YhfHX8Jg0hBGoQctzWVEMHmEExNir63N7NDjvagB12NpMyySdvQLGJQlzevkSDQ2zraZU8hzo8lDu0K3tKUBeLm4F6ziMTc06jcX72B8yd++vd+MtpGxvyK0RfsPCgKeM0dN8B8j2UXaE2u32H0BpzItEF8xr/cWOlt6iCRwl4rYj9HTDxa042v9pN3l8MWPrdAXK9Ff8u8aF79zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WKL4Zg9ygw3VrtBLIq3pgPVu8mM8ga9WaSVSgguMGf8=;
 b=VtSGTnipU5BTqOJaud4uSY9OoMc6aHCQB9Rnv6sI8o316qmkE32JR4RQCkM4LXTKT/LGzpCOxhTeqHqps8P2nDD3rId6B4m6P+mmrMsM8IS0cYyEuT4AE4YYmJTxFrk/tJyS43d2DnLzg+4ayoEcf3ygzmP9rgZfP7izgQaDfwYQGuesTyqoEhPP63W1jeJFq2l5Vp+4NgJ+OYVaIh+mEz/sci1xY//uTzCtE8Kef+zgALCQu+tJ/KWqbSxR8TCt2OlSfVO4OpoYVn93HiHp/afXBqAy4+Dcz+QU/Kk5jrTnKs371uwRSic65rgd98bSDgRUkPdtvicZ/ekyKiNSQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WKL4Zg9ygw3VrtBLIq3pgPVu8mM8ga9WaSVSgguMGf8=;
 b=XDACA0bxjJ3/5QSzO1Uq1HisNiXJ4/lGGyMVlb3uMeAngCoUdKKPuV4q6k/VnX65fzonT5RA5fudC7yPIkIynK94fP30P0P9BFW4M7/JoHDeXjWkuA2DkCbpFxTARCg9vaWT6Lt2nGeJjAJXdGcRYffz6fvRprvoMDOj3Msi1ao=
Message-ID: <c0913700-a0e4-6323-2131-8a7ca3beab7c@oracle.com>
Date: Fri, 18 Feb 2022 15:19:30 -0800
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com, Devon Thompson <devthomp@redhat.com>
Cc: jrybar@redhat.com, gsuckevi@redhat.com
References: <d4660f03-ed92-97e1-98b3-dee46248bea6@redhat.com>
 <cb935607-d53a-5043-ddae-54c200e6734b@redhat.com>
 <aaadb779-50ab-2204-7927-bb8f93fd6b46@oracle.com>
In-Reply-To: <aaadb779-50ab-2204-7927-bb8f93fd6b46@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SA0PR11CA0025.namprd11.prod.outlook.com
 (2603:10b6:806:d3::30) To PH0PR10MB5730.namprd10.prod.outlook.com
 (2603:10b6:510:148::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 32f93cf5-ba10-45f3-2b3c-08d9f3351f53
X-MS-TrafficTypeDiagnostic: BN6PR10MB1553:EE_
X-Microsoft-Antispam-PRVS: 
	<BN6PR10MB1553B73C83236124369920D5E0379@BN6PR10MB1553.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	6G66t49hCOwdheeuoeVJbe/GFbw2HZ28Il6sA8wosg4HRd2BoA8bmYBv2487HRK7jRK6uXVfBs2Rc2abMRwsTmonODLovU6t7+yo7iX5QBul8rJ9ulbpo08pGFFH5IC6oMoHPjNceCgJIzVUhmo1LC9ooftuoXWYKpkLNY2VgSsl6g9beDmC7CRqe+eYDKQ8rYKtUKy1NwUqImmKGLU0KZyI3KKs8a91jQPLZ73ZtDDSgAA/6MuoXsSEaf3wxIBFS9xWfu3hOZkOfDpcSvDB8QpSOQ7I2wa1oiPVdKYPDlqBq3JuJFAx5/TNSzlYSkflSSeX/uD6wV0ARA/SROjzgyxTEc2TEeD0i4Wcsg7VEqoV5/eTdkI9EK4w1CC/RSEr+5bc8VS8UG60zwcn2WI1jtobVLPWC2dkgMGM1t2fnSF/xhBDFhg3tL67rZEtILo3FB7/vmoFTbedit5BU+GtBLvj+MD/Vmxj+xCUAo4uYNUfIOm8Ez6lSYDpNkkS32imbyLndzEc2hVaEas9RPFwRtjVr6uO7IuIToEY8lcVKBjk6LdwYTmJ4gspUCaXc1BKP/MaVXz089lfzbwSyi5jEMC7r6ymUECKwt0w4gnvPqXV3CP70DFWhYrkwx7NbN5LE3l9QFZb6KKCmALMbrUrDn+L6Gf2+y6kq48g5DKMgoxEGAeC7w5c4zS4x9LxzzToMdhs2FV0nSxG43Aez7oPSGoTpK7NyXj+0SNz1g/C4Ifxy1faSmdkvQpb6R7/wjd0SoRI7/gP5dzgjunmL5MIrenHJ3LFXiNYrjuPMPLlbfZe1vlpz+fNyb1v4vMxnE0l
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB5730.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(83380400001)(186003)(26005)(66946007)(8676002)(38100700002)(4326008)(316002)(36756003)(66556008)(66476007)(31686004)(5660300002)(31696002)(86362001)(15650500001)(44832011)(558084003)(6512007)(2906002)(6916009)(966005)(2616005)(6486002)(6506007)(8936002)(508600001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ME5aUk5oWTFpWVdGWXVxZUNtRUVCV1JnMVlUMFA2eVFkOGt1L1RWT0VFaTJC?=
 =?utf-8?B?QVV4SEFTSHZkMVpuQXM5bEMxalIzbzh4ekxzenZJL2dSTVVYZ1hTY0JiUVIr?=
 =?utf-8?B?c3ZFOEFoZGtEWnBnZWkzQzVxbnVoQzJPYTNxNjBiZml3YXVqbmR2KzMreTBn?=
 =?utf-8?B?ZW9jbGF5dlUybkFWY3lHbjljaG5QbHFMZDJ4YjdSZVp6RTZRNnRhSmpyMjR2?=
 =?utf-8?B?K0MvbDVka2ZoaUhFN0NhU3dzR2V2YWNwalBtNTNqczhkYk43K0JSTHF3OFZa?=
 =?utf-8?B?WWljU0dtWGpMYnNVWTVIVjI0bldqMHdSN3NWNHM4Ui9XTU93NUY5emt6M3E2?=
 =?utf-8?B?RkhYd2VPbVR6aTJ6blFBVFNMTXBxTHhKK0NzdFlUVlBDMkJWTWpDWEJDVXJL?=
 =?utf-8?B?UzVWckIzOEdERklaOFU1UUdEaVJ0ejB4OXBnek5qRzU0clFmSzB0WXFDdEVM?=
 =?utf-8?B?WUVDdVJMRVJGU0gwRkorTWM0SlJJYlRPSTAvUmdTR1J4OXZEUytvbjlQb3lV?=
 =?utf-8?B?YWx3RmVxREVhNnlVemdGOVMyNmw2aVJpUHFxb0U0dWJFc0l4Wis3cWJpNWo1?=
 =?utf-8?B?NDN5a2VCUmZsMEo0c3JOaGJ2YXJTdFo4NDZ6MUVYQ2tGK1djUG9vLzg1cWJo?=
 =?utf-8?B?VHBoMXA1a3EwZ3Q3dXpiSkhUSTZ3Mmh4WG5xanBIN0V0aWpxY2E1dU9PN25C?=
 =?utf-8?B?d2FmbWY3bmpCVzllNEVJL0hUM0dwUk95SUJKOGtQK0QxRW4rZUlQdGdLYVox?=
 =?utf-8?B?UHU1QjRlMk44dXN0clQxeTRzanRKbmNTRGk4ZUluYURPdTV0aFpibG01SUs2?=
 =?utf-8?B?cE82alY0cDlmeG9KMno2NXF0UWZxaXJqNGM1ZWVDY3dFeXRQT0R2N2N5VllP?=
 =?utf-8?B?SnlKM3cxaFlDeS9UdFVXZGdvd3VVcXlicnRrUnFTclo3YUpEKy90bmdzZzl0?=
 =?utf-8?B?bjBqUElvaUlpMEs4N3dmN0VaemFHaS9jMDkrSEpDclMvbWVKOVZ3V0padG84?=
 =?utf-8?B?Q2pRRW1HRkhGdWF5VFdvU1JaWU04ZlJVcjNlU1BPUEN4aHVBR0o2Qjg0SkEv?=
 =?utf-8?B?aHZtUGU1bEtOZDcxc1E2QmFsZ0pwU242aDBpbVN0eHV0d01RcW5oV0I0NWo5?=
 =?utf-8?B?RXpaY2JGaXZQaFB6eDN2M3VGM2NiYUI4OXMzVGk0amZMMW8wVW1sOVZKNWM0?=
 =?utf-8?B?RlBUcGFtdmtVOStwWTdEcVkzWWVZM0xIVFB6dmIvNW1CU2Ewd1N4bHRYSXR0?=
 =?utf-8?B?OExtQ0w5RUVqWFRLR21vY1Z3bzF6Tkg0UWhZMWNRODA4QjBDOGdrR0R2QUc1?=
 =?utf-8?B?d1RRaUlDem9LQXNkSjB3T1JWV0gzYzZLR254NE9meWRnU2Zic3ZjQ1FSNXBv?=
 =?utf-8?B?NFVlOWV0ay93NzF6aUo3b2FqeDF2d1JYNEl3TmRPY1EwSGs1SGRsS2tianhR?=
 =?utf-8?B?V0dNa24wcFZlenZrMkRycHdiRXdVQ1g2cEI4bVhuVVZzcHlaWGRXUSs0dXVG?=
 =?utf-8?B?WnNVV0QzRFZCYjF3TG5ob29pMWJPZTJINFkrR3pnTjJCOXB1Q2hvdHVQUnAy?=
 =?utf-8?B?VlVxbUpvcW5mN0gxdzFrQ0dReC9hMEVzYVdVWHl5dUxSaXlyWk5FcndreGQy?=
 =?utf-8?B?dHV0SFBESGh4NFZQN3JnaURTWEVETUV1bVBYSlBBN0JnUXpMaU5IMWJtcUVx?=
 =?utf-8?B?cGhWSWhLbFRsTmNSMHVkYmJQSmdWbmFuVE4wTUNYZzJJTENXbnYzbVErZTVw?=
 =?utf-8?B?Y3BwMk4wUFZDclNRdmQwSlRJMEpJVzZLK29zT2dCV2xNOGhKSGJ3cDBwcU1T?=
 =?utf-8?B?K1Jjb0R1a3VDSDhWV1V6RVNOVWZ6TDdqWHlKUXFjNXk2czUrdmJMM093eVdU?=
 =?utf-8?B?UXNQdXZlRU84a3ZLR1NvSUIvZ1kxY3ZJOGphaldUT3gwcU5kWWRqcm5OaFc5?=
 =?utf-8?B?QU5OdDdqV2tPMjNIS0xFQmpxai9sN3JTa24xQnpCclpZOVhuQkJiWCttL2pv?=
 =?utf-8?B?Zmh3bXRnbVBDblpaeVpoT0RKUFgvYXpVbVFVY2MyaTNmUXR6V2plaUJac29w?=
 =?utf-8?B?TkplRVgxR0JYajlQV0lkLzlOWFN4dmpsUUdESnAxK0N5ekJTeVdkM1VoV3Nx?=
 =?utf-8?B?YTNoUXhmdktDRitRSDdaWXhuSHJOWURRVnZqTFBUNmRTdEc1cVZIaitpZDZD?=
 =?utf-8?B?R3hFNFozaXR0MkhFaGRzZnVoT2VPV1ZUejRzU1UwMFZ3VE5SUVBUKzBuWUpV?=
 =?utf-8?B?UENtcENiT051ODg2T0pHdE0waDhRPT0=?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32f93cf5-ba10-45f3-2b3c-08d9f3351f53
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB5730.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Feb 2022 23:19:33.6183
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QBBT2csBVllFGRd++/T6hL7S4xeSsDo7TbMCNkA/pgc54OX6hD2k1vDDqNCRMHuaS/8XFZiKDCp33ITp6EJaUYLRpGgrjzQsDHrpydpohC4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR10MB1553
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10262 signatures=677614
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 phishscore=0 adultscore=0
 mlxlogscore=924 mlxscore=0 suspectscore=0 spamscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2201110000
 definitions=main-2202180143
X-Proofpoint-ORIG-GUID: ayNugLlwYwcVYn6o0FdPlg72XtuGp68j
X-Proofpoint-GUID: ayNugLlwYwcVYn6o0FdPlg72XtuGp68j
Subject: Re: [oss-security] CVE-2021-4115: polkit: file descriptor leak allows
 an unprivileged user to cause a crash.

The bug filed by the Github Security Lab was made public today:
https://gitlab.freedesktop.org/polkit/polkit/-/issues/141

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
