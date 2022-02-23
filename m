X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["955" "Wednesday" "23" "February" "2022" "11:52:13" "-0800" "Alan Coopersmith" "alan.coopersmith@oracle.com" nil "35" "[oss-security] Fwd: Cyrus-SASL 2.1.28 released [fixes CVE-2022-24407 & CVE-2019-19906]" nil nil nil "2" nil nil (number mark "U       alan.coopers Feb 23   35/955   " thread-indent "\"[oss-security] Fwd: Cyrus-SASL 2.1.28 released [fixes CVE-2022-24407 & CVE-2019-19906]\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Fwd: Cyrus-SASL 2.1.28 released [fixes CVE-2022-24407 & CVE-2019-19906]" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30349 invoked by uid 550); 23 Feb 2022 19:52:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30326 invoked from network); 23 Feb 2022 19:52:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : from : content-type : content-transfer-encoding :
 mime-version; s=corp-2021-07-09;
 bh=oNcP6GxoTj2e4WJAiLBBOggLjEHw0tfh4zBmozOcVGg=;
 b=GO8+AgWGhiTeZWpgnBSLX/FvPuZKSlrVtHnOBCoi44q1K1a4X0cQeHpdpXOXs9dJ2lUf
 SDUkNsmkokoD6+7HqQEtdOq0ZC2Wv1ZVi+YuR0wKHneVpEWCzJxJeGxeWB/bbzweATyD
 gLOBsRUGQD4UyZQ+11j6vcUVLuq1DYqGjNytI8A3k7LfU1H1opyabvu4G5JroAqZkRSX
 feXnsNffQGCZd1tVAAhXWLGwIBPrLK9FQz5YYtiMjnlAVg61qv1/oTnjaJ2csBVS+QTK
 JJmbsV2Y2aLn66JR9OQUGPJZNsXWivDNfMiibR/ltyie1JQnz7eptgnqYqGZZSjCHymW nQ== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cpFcoekq0zwfXqCpr3pwVllKDFSJ1Yli7vGI5Q+lek3z4kkz598eAhbtseXmDzIPo7u/KQxlBReZW3DJWp/SNZvvd3nWq+MsVj7VE4b5KaSMMfflSD8lYO/q6Pmcv1gK8HTgYn/z2U5/pAyaASObm60zQ/SYvgQyvA55bWpRixriLzkx6xp2SYtCdcCz7FLoLIxRJnuxYL6z+b+Go+PE330r9OYhKuYE4MIyt0LmwNtftSxIQCnDvDmXgeCCHS8UcjdRew/BvO5k/9bQFljRs7OR5i7QJGgocLUFuGl0xvRj+YOq1tAOJJ51rv25c6c1SXGeNDhEXPHwCnMa2Es1Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oNcP6GxoTj2e4WJAiLBBOggLjEHw0tfh4zBmozOcVGg=;
 b=GTexW8vsioxgQd5ZTYfm1OFgT/GV0iFLFxpef3S33UI8Bj5xALbxL5cuJuuq0xZKrmVoY2O4YrqEdSMmmIfrmVrBDmQ1a5t+w5x3LS8egGzwpIiYjQTTHutJZtV2lysa5WEdpNsZcGY8MUqWsw8jCGGzzBaGZijxhPht/4tbFIa04cvzUBW5XWqY94ukJpXlpVA8nwAL/axLzRaU7SZqXt5+d4hyDxpmSmDkqkF0aTJ5yVVJA6rFrovvM7bJeuqk3bk1InC9ATbmFJvZ4subXzyvs9TkjS2bf7JFMhpdCsJ5u/iPO4ZviuzM3kLrHT85k2uGbmV1YcTv+2+fnM9noA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oNcP6GxoTj2e4WJAiLBBOggLjEHw0tfh4zBmozOcVGg=;
 b=LlpmsjeogwZwKtIunOUkkDZEoCjeVkOO/koMKDxpno7+Iznpt/Nu69/wbeOgXKLLZltPcLKFYj2HEcGdu/KcRynHvA7z9vGVSigp7G9knKT1UgWooqUUgmSVtSy2Mq85tN8sxLat8clCXQvOn3cl+EqKJCafwcJLroegcpaVm5Q=
Message-ID: <5b01b17d-0c06-2bbb-0a05-59eacab2b905@oracle.com>
Date: Wed, 23 Feb 2022 11:52:13 -0800
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0064.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::9) To PH0PR10MB5730.namprd10.prod.outlook.com
 (2603:10b6:510:148::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2c906bbc-dd9b-4b7e-039b-08d9f705fdaa
X-MS-TrafficTypeDiagnostic: BN6PR10MB1906:EE_
X-Microsoft-Antispam-PRVS: 
	<BN6PR10MB190618AADD49C7468BCC879CE03C9@BN6PR10MB1906.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	DjOAWt5QZkIrLlofJO/azF4F9v3e1uWT+fuJlO0Rj8Jp3aTWEoPpeALjhKM5/6uHYJprWSMZyrkRsEp4Z/luE1hlNmCnpXM+g7V3SRAtjmTEa+8mG/wTd/5KIsEBE9rguxgiRnwj/5+UvWSP5WPYe8coCsJ4fbD0o5LYQDZwhCIQikPBCk7KYQfXvlgK1FjD2o2BRFuHjd8pfMC6T+K+6tYvC7ZMrlMImyUw0ndxUXK8CE4o2KAgSFRMkty7wdy8c6i5lJrH3L3pX6N1nYc9adIuQnLZPXmefyOuzb3p0zDRgjNIqajMJ9tk4KqwdZXuM0q5v3Oa0FAOG/h5A7kbzTaYwIkWkpoCaS1fxiNWoo8mPSt2TodSxxNG5YHTtZzzr7awZaEjMyO8XMPD1hbpYRZ0LorwtoiA5Dsb/No0oqvw11rgz9CudgMcEZgUnmIeW1JbXzsZ2YhVbnpAEGB4kYVRl9rpW/N2FSnpFa3Srzy+dN2Qh5pnjeETjMths99EisJl1+GngYUSUWIryvJ5EgxaShsxAmecFvjVf9dkJ3e23WDNk7KuSAM2gnJ8xne+Rr3CCfK4Qe7/JHfbE8zuAKfCmEyvSwkvf0b4tHNNaKNdOxIBVRMPsSF8iUpnpsK4jUhYQ0bRiYApl7xYmAD4PhXSPZj7Vwc/1hZIl1adWYIjUES+lynIOvzAl+9skzjOu3TgC1QkD6Q85p/71cVcsJ07BRhZTXJkUPPZs4QxcyAZEFN5fAH7QFF45lmPjS1hcmtcxswMPAMumP4n8ez/dxmeFICJKUGulRZ4ul27k93+pdgAWTWszDUj9BGq/lkixd7dPHr7u+q9oXGz3P0T/pnjo4ECWfLn8eod5Sra4OA=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB5730.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(66476007)(36756003)(508600001)(8676002)(6512007)(2616005)(6506007)(44832011)(186003)(8936002)(31696002)(2906002)(26005)(66556008)(66946007)(38100700002)(6486002)(4744005)(5660300002)(31686004)(86362001)(83380400001)(316002)(6916009)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?L2dHNTZQNkpUL0d6QkVRUjU4bEZCYS93dnY5QWYwWjRpYmJmMmNsWjBRM1Q2?=
 =?utf-8?B?Tm15d2htVnJrOFNsSTU0VGdZWndUbXdqSnFHaGNkL3pwdHY2bll6eEJ5MDBV?=
 =?utf-8?B?bkxqMmNNWjhwaldTMnFabUxyTEkxNDlueHMvN0p6VzR4WlA4ZEp6aG9YOHRx?=
 =?utf-8?B?d21mdk5EYXhUTlFpNW5JYTZ3WVZrWHRTS1E3ZFBnU0w2OTlROG1yaERuUU5V?=
 =?utf-8?B?a1JhNEZrRnVPYjVaQWFUSVZYcWZWaVoyanFkUnFSU3NpQ3RxY2NFWU5MUi9l?=
 =?utf-8?B?V0tkZDNSTnZtdCszQTlWa3VpVEpobFBmS1FsSnk4eFVBNTVueG5Vdm5JT0Uy?=
 =?utf-8?B?aS9mdWM0ajZSS1pLcmpvTkxZOGJhS0E5SnhUZk1ZS0x0bVlsV3lxbHJyNExa?=
 =?utf-8?B?Rlpwb2tqNVpJRGdHanVLa1FIQ2lyMWE5RHg1bWd0L2d3Y29QZG82WU9RbXox?=
 =?utf-8?B?TjltUGE4dVNWcHFRcElGQ2F6VnowemhCMEpPMS93Y2txNE9NUzEyamJRN3Ry?=
 =?utf-8?B?aGM0a3FhQUVRVkJXQ1M2WHhSbndUTkJzamNkNFRIM0tWajZ4UlZUQXJlUXdh?=
 =?utf-8?B?bUpmcm05VkdENDFQMW0wT3NPblVjU253MDJMcHdtTk12aHNHcFhyTVFPZElm?=
 =?utf-8?B?M0s1c0tyeGMyTmNqNXd0R01laFhRb0l1bHBqdkt3d0xsd0RRK1lXRjJtd3JM?=
 =?utf-8?B?R0o5eE1mSmhUWWgrZWFNSXc2ZEJPTWJ0NGtYQmxIODNtZDFadEF2ZTNSeXli?=
 =?utf-8?B?ZS81NWRxelpidDhrMVlaYVczZ1BsM2NETlp4SWRkSTRmczBoMC92SnFwSVdw?=
 =?utf-8?B?NXRIcUtKS1VwL1kvSGVwZ09YSDdqQmxyZFpkT0MrSUQ2dUxzamoyZXpIeXlD?=
 =?utf-8?B?dGhLeHZUMmJWbWRBWnhaYnFPcjhTcVJOR21PWDMzeEZPSEk3WlV4QzZzZjIv?=
 =?utf-8?B?c2llbCtZcEZyN1owUC95YlBIdjVqZy96QUYzd3doNjdQUzJFWFFBcWRMQUF0?=
 =?utf-8?B?WFhqMkRPTytVN3o4WTF5VExxcWEwSHpWbytHbnhpWGpWR0wrNE03OW9sZ1Fm?=
 =?utf-8?B?NnhlL1dLc3N1bVRnaGtsdlh1MDA4VTVXSktDNkxma1R2REkzREJvOTRqeXJm?=
 =?utf-8?B?MXUzRWcza0xzU2twN0xuaXhEeVB5ajFLbmNEM2NMTDAyZk1IVXU3UzFYSXdq?=
 =?utf-8?B?UnVzVmV6S3FRVXNsdGhMb09tS0xNVmJwcklvSFRFdnBLUDVDMVZIdjJIVWdG?=
 =?utf-8?B?TW1MRUlSaGZwdTUrZGFrOThNZWJ0cXppUlNudWVJUS84MmNIVHhQbnZ3WnJV?=
 =?utf-8?B?RkNyN0FLdHRGMFJjVGM3a3BYeW9tUVNZczhhQ29sbVJmMUhtQldVWnBQZGZJ?=
 =?utf-8?B?NCtDY3R4aTdDN2t3MFczdEpmbTJJSGVYeFFJU2NQRk5VS3NjME52T0w3TXNH?=
 =?utf-8?B?K0dibjE2Qy9DSFhDY0tYQVhIWm56bVM1TlFoWDNVaExmNmtoSXV2WUVadVRI?=
 =?utf-8?B?Q2JWVGFvRmlTZTlPMGR5VzZKRFZGcnJFR3RFWkhFYzRRN0dmVCtWNHV0VGt0?=
 =?utf-8?B?bFRPQnBJWlo1NE9DY0dmVHV0RkM1bnhhUW1PMTRPdXhUaElYUWtvRmFsY09U?=
 =?utf-8?B?eWIxMGlQS1VaRVZ3WnBDZWpYZFErWXZmeVIvN016b1E0eWFsU2VSbFdUTlY3?=
 =?utf-8?B?ZU50dVhUSUJ6NXpZTTFFb05DTjhxN3Fta2hRRUQ4bnh3NnFHQVA2Mnp4U1Bw?=
 =?utf-8?B?aFpXeWFYOVd5ZWlwUEc5WHlKY2xLZ0lWSEpIejQvc243QjBFb2lvYjlDRDE2?=
 =?utf-8?B?djNzN1FKMGFPRitGZG5RTWlCMUVuSlJIazRla2JPUHdwOHJreEkxa041YkJq?=
 =?utf-8?B?UnR0Vi9KTEtsWnlFemJjejJGS28rZEQ1SnY5WURRdUpGOEtsVU9YdFVyd3pS?=
 =?utf-8?B?M1NhTHRVQlFRTEhXdjdqWUtyQWRvQlMyS1VRZzJXUlJoOTVldnlFaGwwYkxK?=
 =?utf-8?B?VDFyYTQ2SlJiQ1Q2YW0xc0dnbTlQazI5WWRTL2JSV3hnKzF3Sm5oaFdXb2lS?=
 =?utf-8?B?Y3RCdDJDTUdKUE05aWRRZlkzT3dkbFRzRFAzdTFjZHBYRE42Ly9Xek5zS3dY?=
 =?utf-8?B?eFR0dGg1dlg2NEc0ODN3TExGS2pWMzd3OEZsRTQvQkZPVFl4U3lGTTF4bTJ1?=
 =?utf-8?B?eCtwaWNsYW9tMGZOa0dqTitSR1c4TE91WFB6enB5TWhCWlJSamNDeldxTlgz?=
 =?utf-8?B?WUtUSzVINzJidFJlYnZFeXRRMTZRPT0=?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c906bbc-dd9b-4b7e-039b-08d9f705fdaa
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB5730.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2022 19:52:15.3716
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G/FE1OPWz8qRJEA1FO+FnkFaPE3xYkpEnM89Ge12394PlT+WXs0oAN/bC4crH86S7l2Cobw/KetZ/vi3i6yGzBBxOh3gNTi4rZUWQ+3kx7I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR10MB1906
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10267 signatures=681306
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 bulkscore=0 spamscore=0
 mlxscore=0 adultscore=0 mlxlogscore=999 suspectscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2201110000
 definitions=main-2202230112
X-Proofpoint-GUID: Q39_g3vQDpfZmegL9J0ktiSlwNG0IIgj
X-Proofpoint-ORIG-GUID: Q39_g3vQDpfZmegL9J0ktiSlwNG0IIgj
Subject: [oss-security] Fwd: Cyrus-SASL 2.1.28 released [fixes CVE-2022-24407 &
 CVE-2019-19906]




-------- Forwarded Message --------
Subject: Cyrus-SASL 2.1.28 released
Date: Tue, 22 Feb 2022 10:11:53 -0800
From: Quanah Gibson-Mount <quanah@fast-mail.org>
To: announce@cyrus.topicbox.com

The Cyrus team is proud to announce the immediate availability of the new version of Cyrus-SASL: 2.1.28

Among other things, this release fixes two CVEs:

lib/common.c:
CVE-2019-19906 Fix off by one error (Issue#587)

plugins/sql.c:
CVE-2022-24407 Escape password for SQL insert/update commands.

Of course, please check the release notes for the full list of changes.

Release notes:

<https://www.cyrusimap.org/sasl/sasl/release-notes/2.1/index.html#new-in-2-1-28>

Download URLs:

<https://github.com/cyrusimap/cyrus-sasl/releases/download/cyrus-sasl-2.1.28/cyrus-sasl-2.1.28.tar.gz>
<https://github.com/cyrusimap/cyrus-sasl/releases/download/cyrus-sasl-2.1.28/cyrus-sasl-2.1.28.tar.gz.sig>

On behalf of the Cyrus team,

Kind regards,

Quanah Gibson-Mount
