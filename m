Received: (qmail 13398 invoked by uid 550); 9 Aug 2022 21:26:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11625 invoked from network); 9 Aug 2022 21:22:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2022-7-12;
 bh=a6hxVqDV5dUU1YADpQuiHsz/TmzZe8JJzFC9HdBPrrQ=;
 b=a5V3/thC7vd3+ZkyX2BNY7OIak273WRK7MChD8XlFswSawkd/WmAn7WjcYs5r9tFDAxn
 Dfbqosw/qonoGppYMk8/mfMz2m2S/Oxfy9vDFCEmODXdK9hnbJBoDmPZAfGKrGlnsUbU
 OzpI5p7JPhEpaB3BayLiFgYYi8X6KehC2d1zzdZCIxHp/9A86Bz3osKjq+tD0mslrmgf
 EcGu1A/rV8IL+AVq935buCfp8R+xhoPINECf+eMSw/TSKasOjeSuJbgQTMLtaxw1t2pd
 LAP+4m08GwT/fgR4GWgeMxUC9jvmTnQ/tdqr/G2/Cl7egRYw4m28gWW0M4pIKNzaA8er 9w== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KEZ3XrYyaCM4I9VjRFDlBfnlovPsyyYV4oYJ9sS95FkIdpX211l4nCZW+XVYrfHLhMMbly/Af6Yk1OKmoMlFo3Loz/Ujk4/fny60FbuYHoQvAchwp+y3OR//Jd/D5x8QoSXQS1FuCSnVxeBcJPm2zeAhJWtLbqfAwtrWo1EFr7oaB9mSkrruBkpDVuEMWuGz6iAMLQ9dmyAy9WVRZY+n28HMP9/X19PCVGDNSLpRBp1OCQIdfOT84ys0n58O3GcWZHKit6sobw8ePGeGixVlaq9BDlZ7YS4za+xyaqoTUaJh2u1Nh8gaOKGr7hFn0gon1SouGdO0prOYHmg52TT/Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a6hxVqDV5dUU1YADpQuiHsz/TmzZe8JJzFC9HdBPrrQ=;
 b=O+1U380/24oM7JDw4F3Y67N5t4tuXrYq73cDOw+k5u9kRlPzZ4VCvnjswIbuVd5WoDQg/6AugPZXi2S8n14TRVHiRP+rhbbgTGlx2T6cJTXX66xph1NHDzRbpCtIjK1S5gh8WydS6oPnQAwxEM0I2Zvlj55ap2R0bmL8wsi7OeNyM7FFdOJiYBLL2iN6Pg644p7e89PUMo9ohxM2ZHpa/TymZbEDgQm5bxsXowIv5BTXWTEJliiTSCMmuf+TBZid1idDUd9+kF0pCqMJS8VlfZeZnyBVDKmMcEON+FuxFAB2Ggrz1lkep88lMOMA7fiPHP/C4Z7NOD5/Y/K5ooNIwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a6hxVqDV5dUU1YADpQuiHsz/TmzZe8JJzFC9HdBPrrQ=;
 b=oxrCx5Vrykcoe2skGQ/7DaMhe6mBCDh0wyLmsNkUA1qhf8n1X2BuXUa/lP3c9BthIk4ghxCvN1/Zsr7AWMggRkgCEiZ1HjBnVxDzDlkyhQRyLZWLry8v+uzkm4lm0b63R7cjAD7MouxjvjhdFwAxmXpbm4MWvhgkCxZG55HttWU=
Message-ID: <715df931-c8b6-4eab-5f98-c9558d63151b@oracle.com>
Date: Tue, 9 Aug 2022 23:22:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <YvKVWuPyQ/YXBT+o@quatroqueijos>
From: Vegard Nossum <vegard.nossum@oracle.com>
In-Reply-To: <YvKVWuPyQ/YXBT+o@quatroqueijos>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PAZP264CA0178.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:236::20) To PH0PR10MB5433.namprd10.prod.outlook.com
 (2603:10b6:510:e0::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 22048056-201d-4103-2b73-08da7a4d48d3
X-MS-TrafficTypeDiagnostic: DM5PR1001MB2380:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	zdSxWsIK0g5E8EF72Z8Ha9tqmoYnywtSeOGE57CsslKHLRGdtfwa3PnnwRW/M1nxkDRGUC9lE8FFfEA0OCAIazfaQomQAX8g9SQx09h9VIS9Seh6ITGtYBNJQ/3a6dnEUfMDACPRIkCkCZHew/tVehSYs6DbOt0RmUppKA182DN+ghQWmQ2gu2A5//9f1GyJCOCk+WnpMXDK4SPmyawFqkJPbpfb4UC1Z357FNUXspBKtpwxNedr9C79UeCb7Whr2WoPBqX+28dtLD5XErmobuSu/hC0RhkfpalkDgdX168XyOCHPtGoJxAa9XVkCKNq3YdzErSGjnhFRz0mehsc7SpnJz9CCiKgBAC/NokE2KyfJvwsRVv/r+BXwuYf1uHqOUO9tOVs4L487xhB/yCHX4duNNErLBW1QIxZg2uW10jBSch+A49WMV+jJRIrX5O1XsdJ5w4kh5vv34SFTXa2oUuM7PJXL2cWN8eDDn/BOcWBiLkUYRJpHLJMFppExp3jRsHZq+UpHgtrvHPwNn7/bZeEHAhxe5ZRDJGkhiSm5afTsXGbaEB01AvW00HCQSaa3DMRWTSg8Zuxxy1F3ryW7sJ+U7kHFuNBQ0VWW3SRBrIJZT8tWqd/Twqg/UzQUkXvS6rlHnpV83VvCr7cLaA8nFOvOgUu0OXswy3Vhm2MbuyuwxUUnWBNlYfuXLidU75Le1jCdDOCcUchbfIlxpuGRPzhEAyW4UbIUfb6HhWPLKADbd50yJMSAr/QvRLdC06Twsi6vINkmMCFkOHqnLP9PXbQT5yG3gCQJqnYCXFFrewZwcFwyYaeQQIH3Q4L9CfvY2tYWKv/oHb1TooFaQZqN0GeFb3r/oG5mef9TzWDyyC7E1aE7mL9TH7GMewqI0Caflr2sMHCv7EKne4WEm8Ya5vGf21Gqo0OwZ5uDIRZKEs=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB5433.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(346002)(366004)(396003)(376002)(39860400002)(136003)(31696002)(52116002)(26005)(31686004)(44832011)(38100700002)(6512007)(38350700002)(6506007)(2616005)(6916009)(8936002)(53546011)(186003)(36756003)(83380400001)(316002)(66556008)(86362001)(2906002)(6666004)(5660300002)(966005)(6486002)(478600001)(66946007)(41300700001)(66476007)(8676002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?eHQvYWdzSGE0OTRKdStteUJhdXBobURRUnQxMXp0b0lOMmlvK25nNHEyZlRJ?=
 =?utf-8?B?N3Mxbmd2RUkxU2dFVkdrU0phVEtJN05jZWRLZmU1VHlsQ2l1b1pJNTM4ZnEz?=
 =?utf-8?B?djF2N1A0V1I5R096TEt5UXNzbkN2NVR1NTZ2NVB2MEdyNkI3UHpyRmJOdjBx?=
 =?utf-8?B?aUVLSlFtMHN5djhvWmhIQ2tEV0RRM3hFOWxRM09MZWVicThUNUZLTjJSSFlp?=
 =?utf-8?B?WndOcDAxa3JBSVBCVURSdm1raUszVmVUYVo2NGFBeWtsUVFtU05wUDFzNDl0?=
 =?utf-8?B?VlIwd3ZQdUNPT3dSSGN3M1lNbk02ZDZGMkdQeDFrRU9EcnhnSWdkYm4rUmwz?=
 =?utf-8?B?c3BhN0tsV0FYTHdRY1phMFJHeHpSR0FITVZiMzkrMlg4K0VOVytGTlpYRUEv?=
 =?utf-8?B?TzNLZUVaR3FpbTd2YjhFdVRnZjhJdXNVVEFzS1hteEE5ZG83OVhTUTJMQ3Zk?=
 =?utf-8?B?S2oxV09aaWQ0cmFKYlBsZUtvZSt6QklFYlUwQTdNNnh4c2N0N3JvenJLanlL?=
 =?utf-8?B?WnI1QUpGcWpDMG1CWG5QN1lvS3ZMdWdmQUtsQ2hNRTVwOFBvQ0c5c2cvdklL?=
 =?utf-8?B?MklIVVhiaXVDdko0dEdXRzFhSm9ZbHYxQzFyWFhTNW5BK3BDOXhJYVV0UDAw?=
 =?utf-8?B?TVlkTEVJQWVzclNnMWJ6QzN2N0lyOXpQc0xNL1RSa2xRRWpsQTJLUk51YVhY?=
 =?utf-8?B?NXZCeXBPZE00RFRPWTNubzgrMnJmdVhuK3JuZERwbmZzb1c4S25HZWJUdjdW?=
 =?utf-8?B?dy9wM083WTRySk8reFp1TlpFNzVXQkFhV24wUHFCeG1GM2k5djgxQXNMdG5P?=
 =?utf-8?B?T3pHczlha0NTK3AwZW5tNkFpUDdQT2twdDR0ZkVrbDhMb1huVElSSFpkeDdt?=
 =?utf-8?B?T0hPdWtEYmZtSUZMT3JUZUVFeWpWQlJqUlpQNEpkVnpJS0VycEVSbUF0b3M0?=
 =?utf-8?B?ZEUxOW9nNVVXMkxaSHpzRXEyRFlBMmVhSHExaWVqOEc4Y1p5V2E2bXRHWVhU?=
 =?utf-8?B?TlUzTzlScmtkaTZVQU5oZUo2SHpEbjlMZTBwU2VzQzNXcGRZcEMxeFMvRDFi?=
 =?utf-8?B?N3BGWDBIRHJzNHRKckhjUkVXdW1oaW1aNFNwWmZNVDlnTU84MTlpMGo5M01L?=
 =?utf-8?B?eTAzOWJuL0hYU3ZocEdzQStobmgvM1lDQkZDcGlJUXBhVExUNXdna01wa2dE?=
 =?utf-8?B?dHRPNVhxVzNGcmZ6VW1DMVhBcUdEYXk1NlFJc240K2llaWg2QndyNC81SzRI?=
 =?utf-8?B?QVlhcWhDTlBXSDZaL2lLN0dhVXZITXdmTEFYVVl0V0hCMEdTam9RbkxCNjhN?=
 =?utf-8?B?Vk9DQVlFRlFsbmRyWWdaR0VxY0hMc0w0VG54U2JyMVRFczdvMTY2b3lTcjFh?=
 =?utf-8?B?aG1ib2NlbVEwSFlMYUsxaEQyTlh0b0dLalhKcGNqdGs5Q1dSKzJ3cGFubjZu?=
 =?utf-8?B?ODlmamxVOXFZZWlEcmk5NGRVYjdZZFVkRWJNVjZYbEtPbEhKQ1YvMUJva1RS?=
 =?utf-8?B?bEJRRFdRQ2pWQUo0K1FUSnIxczcxM3FDTnd6OW9HKzdORjJQRHNiQnJqMGZo?=
 =?utf-8?B?YVR4cGFKSUZKK2RWa2NvT2RpRU1KTU0vejhnMjJHbE1HNHAwR2gzd1FzU1p3?=
 =?utf-8?B?UDluVU02MXpoSExydEc2RytESjFPZ2lnbEFMM1IyeVNVMCt3YUozMW5UazNV?=
 =?utf-8?B?SENuYVZ3cSt4MnQ5NGV1YzZObkRacTUwYlZ4eTk5WTBlc25URU9qdHZJZ1pu?=
 =?utf-8?B?eW8xa1lVcTZ2bHhHc0paNGFlVWpaN3loSVpXb0IzVHZtUjVwazRvMEltYjlY?=
 =?utf-8?B?aU1jSDVPN2t5OGpMTmJ6TXVJVzRYSXBHQ3B6ZzVVc2k2WXVWem8vZk9RdVhF?=
 =?utf-8?B?MlZMcE1ZN2RmaytaR0llUStsSXBibldTM2Vkc0V1Tk1jRis0YVJBcmhzdnJZ?=
 =?utf-8?B?V3pGWno2L1ZZWjU2dHVMOFZLR2h5N2lTNk4vN3diUWdRRHpoWDFObHkzN01G?=
 =?utf-8?B?WnVjaUlua0wrQzVlNzhMMzh5OXVTNDUyTkpmVVk3VHVBNStYdFFKTVdGZ3VB?=
 =?utf-8?B?Yi9wdVdBend1VERLeURQMHRUU2RNMVpURlg2UFVPQTg3YS9iL0x5bjU1QmRS?=
 =?utf-8?B?K3psYnhYcFppUDRFd0VOUmxLdituZ3UwbGtYQnp5V2Q5ZFlYTEo1V01XdTJj?=
 =?utf-8?B?R1E9PQ==?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22048056-201d-4103-2b73-08da7a4d48d3
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB5433.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Aug 2022 21:22:38.1402
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +Iz3hdzpl5esofdUqvzM2eZnU4lRflwV7E3vg2XFrMI4plan8sj/McwLkbSNO1+117wyhaxlJtKC0XrqS1fPsiv7rDuS9X5o0p4FJWiJRsk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1001MB2380
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.883,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-09_05,2022-08-09_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 phishscore=0 adultscore=0
 mlxlogscore=999 mlxscore=0 bulkscore=0 malwarescore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2207270000
 definitions=main-2208090078
X-Proofpoint-GUID: R0JMeYXtWrZ5FKAy78_fdlCpFUkwwm-m
X-Proofpoint-ORIG-GUID: R0JMeYXtWrZ5FKAy78_fdlCpFUkwwm-m
Subject: Re: [oss-security] CVE-2022-2588 - Linux kernel cls_route UAF

On 8/9/22 19:11, Thadeu Lima de Souza Cascardo wrote:
> CVE-2022-2588 - Linux kernel cls_route UAF
> 
> It was discovered that the cls_route filter implementation in the Linux kernel
> would not remove an old filter from the hashtable before freeing it if its
> handle had the value 0.
> 
> Zhenpeng Lin working with Trend Micro's Zero Day Initiative discovered that
> this vulnerability could be exploited for Local Privilege Escalation. This has
> been reported as ZDI-CAN-17440, and assigned CVE-2022-2588.
> 
> This bug has been present since the first Linux commit git, v2.6.12-rc2.
> 
> Exploiting it requires CAP_NET_ADMIN in any user or network namespace.
> 
> It can be mitigated by those users who do not rely on cls_route, by adding
> 'install cls_route /bin/true' to their modprobe.conf or modprobe.d configs,
> in case it's built as a module.
> 
> A PoC that will trigger a WARNING is going to be posted in a week.
> 
> Fixes have been sent to netdev@vger.kernel.org and are at
> https://lore.kernel.org/netdev/20220809170518.164662-1-cascardo@canonical.com/T/#u.

This isn't the first bug where users can use namespaces to load kernel
modules they wouldn't otherwise be able to load, thus increasing attack
surface. I've posted a patch that attempts to mitigate this somewhat
here (it would have prevented the above bug from being exploited for
what is most likely a majority of users):

https://lore.kernel.org/all/20220809185229.28417-1-vegard.nossum@oracle.com/

There is apparently also a parallel discussion about user namespaces and
LSM hooks here that seems relevant:

https://lwn.net/Articles/903580/


Vegard
