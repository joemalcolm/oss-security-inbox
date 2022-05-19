Received: (qmail 30319 invoked by uid 550); 19 May 2022 19:52:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30292 invoked from network); 19 May 2022 19:52:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2021-07-09;
 bh=V36kSoRE46mzYxujNbD4vFnnmYY1vhJ0yQdA3cV87m8=;
 b=FVOoyw7taKv3RhZF7VWWvUgDTjcnzRzU/kyNB/cj+c6G6XK7CvYjfPdgeAGZ3rrh2NT1
 g/BhFpiBP8K082tYl6/kOG2zN/VQ0BVpiKj6XBYpFmYRmBxxCR/wH3kvecQhZZjFEson
 pVb1g0tUWkTIxwa3loxTN5OANxigtkKuTCIL4QfwRRNeI5Tk6vMvN3ZLgtHokjHdF524
 futpQg2ut1pQuoomJwaJqA9CM6AbkRNzu2voQCI5skURYSgcNUJE+o80M1tseMw74Yuv
 QEjZL9DEhrM3x7SOGWjhbNfbkuD9gkAUpatpVOELFPakU02an3RKnQ/9lc98xyhPB9Aw fw== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dCduPRB8W68TbJa+sYamshp8Lg41YyGIn2ha8B+Xx6Oe5eX8b6JuSfGxhfKMPd2Q155GddeyPu/vfttdH2c+jlkxB/o5z2tiPcv6WZ1pZKuWTJuHJg/0sG5BQODSkmhhE8rW72U8fuh1V7faLoMSRGvYq1GEkxzxMFLYElWRLJtSlW9XF8SfhFvcIOQqKQMoAI7H/8d72GwA7JkYwRIGjOL+ozwB0aQRQucOlTR+FCfSyCgbiwDxhio9Gsl3tvTgm9uZRrkCSHqIFhUMGF++gQMYTsMws9x4vOdeWbVxW9omtA9YOvPpMAMiXlvzGJCmz/iscyAwUKCC7JCMo8dDbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V36kSoRE46mzYxujNbD4vFnnmYY1vhJ0yQdA3cV87m8=;
 b=AV8HjDxKBbzm14Irj9d83RSyH5zxW51hoFgzYDwL4NJ2DI2eI3VaVaLUXZElhTAozRfIYbXzJ1aCY7e5MH0LdxoJg2FUkivEtaX+l/XzzE5tKEd3otL+zAYaMi/75yhc1WF9KU8sEVqt7BeHSrqhvwP+7JCYdr+3RplmzmVMkSRHYq2U5QWIq+oP2CQIokLKLX0iDqHMje6AsacppGraldYEdOZCa1pLIBtGhKoxGpQ+8DGR/OCADv8C6LLcVN0QaXVKtzDphetSnbCeAv0JTRCrx6cZHyGZL6U8vPXwHl9+vuNvn95+IebQ10y/vqYTfzTY+p+5kLjtKAdr0/IeDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V36kSoRE46mzYxujNbD4vFnnmYY1vhJ0yQdA3cV87m8=;
 b=RbQdaRwVBoPgGgJuB6PlEieb8pakl2jVLXzizULfjgKrpbRrITFkL3EKd6K/iLZqovF9cCWMXwbxTRxEzXG+cX7gis0i/9F5//oG6XcRidO8x8qJOtE9jNy9ckCfP8MDXdBhnFFDPSfSD47ioGCX3K3IxjNQaGVpJdHiwmLhgDo=
Message-ID: <f350341e-31aa-895b-c092-f62fb18835c5@oracle.com>
Date: Thu, 19 May 2022 12:52:38 -0700
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: oss-security@lists.openwall.com, Dan Carpenter <dan.carpenter@oracle.com>
References: <20220519124125.GT29930@kadam>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
In-Reply-To: <20220519124125.GT29930@kadam>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DM6PR06CA0071.namprd06.prod.outlook.com
 (2603:10b6:5:54::48) To PH0PR10MB5730.namprd10.prod.outlook.com
 (2603:10b6:510:148::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6f1ac4b6-3403-4e6e-2582-08da39d122a2
X-MS-TrafficTypeDiagnostic: CH2PR10MB3990:EE_
X-Microsoft-Antispam-PRVS: 
	<CH2PR10MB3990E2E9DD37AC7948DC1FBFE0D09@CH2PR10MB3990.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	T4uy7lobDiIMWKi12vJo8IRloUmC+4NiH/mb6tSqh+EoZJvFryldXLBXNASku3gcJBe7Srjcwfrv4I/fDLMvbp4CqG7V4zH1+gG1cf1s9cnJ2Gn8lBk93YaUirEjsHOpgl74AwIbgGUasFwiqOvTVcBJJ4oK/CnAhvo6aunhyrT/sTE5HFvXLg5ktCC0srRVgmkVJiOHyPVyYx6WNEgrtUpmM+9YIATBOTchtYUnugR5kWEXjI9bqwfHoAoLxHHcxfkp5fDdTB/g9YSw3DqohxCKR30h0XBludBPM7cVXsCmzxwzg32bJ2k1wkjuX10LQc46Y+U2P9cDqjzRo7Yj4tdBGNAnxHv2BNiqh/qCy7l5VyR0/uBxQgyCpyIxFqbQa54926G78jIreg2kCbx3VtqPw/6gQo5P+BZwKsfMdxvC1vQnnJ4mDQBC/2N+hBJg3T/P2kgXv9TiHEIkJpBPzSe4yvrWe3s5hIrqEEnW0foO+SKhwfxS+niJhh57Rm+HmV2spfuyydQxzCUAbeh+1v2XmY1MVLMkiak4aigFgbXlJw6M69/ynnW56IQljaSNF3lTlU7GLCPzTv4MW2e4SzDFve/d8Gza4PzPGj9CehsF4WqKQOkpu4ERRJgqzEKrB3fauL2Pl9mDGsW+uGSLot7tFwVgeSOKBhkBTmNR9POH3enupdWyOsrLr6R6XtZ9VnTZyGP4Zyx8OvAByIQb+Fn+Byy2pmmDL8iK5lxuffUgKBEjUWtrXcaK2mJo72UG0gnL2G3bki9O5GaM9GvtB1xkBS5fYI05CvjdUOZkvk32PkdT15uoUODimwZVLPmJ
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB5730.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(44832011)(15650500001)(5660300002)(508600001)(8936002)(38100700002)(966005)(6636002)(37006003)(316002)(31696002)(86362001)(6486002)(6862004)(66476007)(66556008)(66946007)(8676002)(6506007)(83380400001)(53546011)(2616005)(186003)(6512007)(26005)(2906002)(6666004)(31686004)(36756003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ck0veWJzcnJYbUJWMVJCOGt6TGV5cFNsS0UvdEQ2TmNsbDlwYVZYWjZHTzFs?=
 =?utf-8?B?ejZmajNVVmg2eTBhYVhHdXlpSkZrb3BWVFlub3kwK3ZZYnA1QW05MkF0L2dE?=
 =?utf-8?B?WVdmU3k4YTVlNm5FWlUyNnhyeWFjWmplUjk1TVI1SHQwTThCLy9MZW5Dc3RG?=
 =?utf-8?B?WmF5QlM1L1grQm5FdHpMcE51VUc5UHA3aDRrYzZjakpqa0srVXU0WWxqWlFP?=
 =?utf-8?B?aUFpSGsxdDA4MnZ5OEFISDRrS1ppWUxtdE9JOWpDOU5JSDdZQTdzM1F0R08r?=
 =?utf-8?B?d3BzaXVWSW8xL3lQUFZBNWJmWG01Ry9JcjkyOC9ZNlN2cmNFa3U4M25QS0V5?=
 =?utf-8?B?S0EzZmZDTUkvUDFpZ1V1Z0greVZxNStLZyt2QnE0bjc1WTlKVW9hdTVOaEhC?=
 =?utf-8?B?azNOK1EySnFQWGhVbXJIUXNMZ3VhVTVqa1N4NDlNWDcxZ2phS1pqUkFOSzQx?=
 =?utf-8?B?ZkRLNkNOVGpBcnVxRkttNS9lVGJwVVU1RGFoZHVNV3Z1UWt0NHdFbVJOTitZ?=
 =?utf-8?B?VWxWNHdHdmJYS2wyd3o5NkZxaTh0NDdZNUJjc3htS2ZuRXRZZU83dFRMQzc4?=
 =?utf-8?B?eEE4VmNWQ2dCVmt4TmVSWFNjZGpLcU02Y0xaWnRlV0Nib3dHRkN3Z25aYlRk?=
 =?utf-8?B?U2huQ2xFbGViNCtIb1FVbWZHQ1RFSmJUeWZtNk45NHRUV1F2ZTlLUGtCWFlB?=
 =?utf-8?B?aXkyS2pFSkd5UGdma0hSRGJlK2h4T016YzlsTFl3Yi8ydVZ0cHl6R2pzWERX?=
 =?utf-8?B?MHVyZkFBM3J6V1NJdnc1T1c4SWpaOGpkalRJaUFROVJ4SWNpLzB3RVN6V2l3?=
 =?utf-8?B?eXNCeEhrMkVYVENQWFdpUGFXUFVBd3hFeHF3VjJGS1pEaytaQVRlVVdYcVVw?=
 =?utf-8?B?blE2bDh0aHlZaUZhQTFGWk9KSDFRTGhmOXoyR3ByaDQwWDhqamw4VldNQ29p?=
 =?utf-8?B?dXhySDhzZ0lTR0JJS09HSnhDbzl5UjRLQU1Xc1VZQjVsTWduMjIyK01UdkVk?=
 =?utf-8?B?QWpmTFgvcHZYQlBORzZVbXJCbGJSZjhlR0x4di9KSGdjZXV4ZVBRQmtBa1A0?=
 =?utf-8?B?QytXcFBXK2s3amhSb1M5WTBJNTBWd1d3K3NnTS81R3NkbHVrTGFOQkZSRTJm?=
 =?utf-8?B?aVlTL3VvcUJvdC9qRFJPVEpSa1REUHR0S1h0QkdrWmEyWlc2MElBRENDQ3B2?=
 =?utf-8?B?VG42RmRPUkt5UnYvOTZrOVBQUmZSMjRyV3BYeSt6N0JObHN2Z2J6Zi9zQWZJ?=
 =?utf-8?B?Q3dmeWdIUUNiQThIR0NCbVoxVGo0blNTTnF2Ty96dlA4RlZsazlLanhLaVdu?=
 =?utf-8?B?TC8rSzlBem9vMjVUK1hkL01tcmVUK2cvK05jQmh2dFFCcm5wemxKVDVWa05h?=
 =?utf-8?B?d3NLbjh4bit1WEFwUithLzlDOGowcUtQR3A3T1hsOFFNcVNIVXJ2ak9EK1ov?=
 =?utf-8?B?cWw5bUk0ZGVIcGFQNWhEdTBpYUoxYnBsS2k5ZDAxcUdTdWp2N21MLy9iajFl?=
 =?utf-8?B?VnFYeXVTV1hHZGxpSlpDTzNnNFd4TXQ0QlkvbVppOGtDUUtldlRsRFYyWlBW?=
 =?utf-8?B?Y0srMHNwV01ydUpxZ0V5R0NOeHVwc1BabVcwNTl5YUpaVFhINDZuRGJOUHpn?=
 =?utf-8?B?VTJFcTJPdzNmMWk4VnZUWlRqeXpxalpnTVpKUDQxRm9mTVMwMzA3YjZKd3lJ?=
 =?utf-8?B?SzhtNWJOaE5KMXEwVmZEcEMyUk9uZ1V2eFhxMUt5VVVNZG1MSGtXYVpuTjB0?=
 =?utf-8?B?OXF2aWxKZW9XQlJtdWkxbkZHeVNCZFpLZWlTalFpNXFuUkNuclk0TjNESHFu?=
 =?utf-8?B?c1VYWjJ2SldPcHlWckZoaUhXZVFiUTVJL0ZtdDYzZHMxN0k2WHFLa2xkV211?=
 =?utf-8?B?bzZFckp0SzFIdUlHdUJQRC9xSERVOGowaE5BcHM0YnhZSS9BLzJwamJDMSt3?=
 =?utf-8?B?dktOY3VLenlzZWJxR09JYmZEUFczekdJeWRtOGl2Q3hyMVl5Ym0vWlhVdzhp?=
 =?utf-8?B?SmR2T2VvN3BmazNBakJLNWU5WGozSG1DWlJ0WmwzajZtYVNqUzZIYTBiakM1?=
 =?utf-8?B?b0YvekdEK1lOcnJ1dVFZTWpreFN1SU52MU1HYXpCU0RxT1dyMkttWDlZZFI3?=
 =?utf-8?B?UFdjd0tlVVhhMUxua0ljaC8vN2V6Qk1hZkVSdWZPNndEZnlTSXd3KzltUXdt?=
 =?utf-8?B?bFdZbGloK3ZBbWc0NVFpelhKK3VmWElkS2p3ZE81c01IVnhFT3V2NWtxOFE2?=
 =?utf-8?B?WFRqa0NqTFpPOU9IZ1JsVUpXVUtVSGR4dlFyOUljYjhiUUdzS1ZHd0FwMmE0?=
 =?utf-8?B?QXdsR1EvKzM4Ty9KMG9sYWtoeGMxSUVmMk0vNHVsdkJFODEzVmZTS3hmZTZt?=
 =?utf-8?Q?fKBtYJWSG27L6xCQ=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f1ac4b6-3403-4e6e-2582-08da39d122a2
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB5730.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2022 19:52:42.0532
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9bzkr6a+8G3/w7HNEtRKADe8XSL0g2OaloKpGhk58zKsqayFE1soJoe4qMSQMM9DEkhL4s1zxlhD4Vaqoz3sJWv6afZA6aXnn/Vquw/Rjus=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR10MB3990
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.486,18.0.874
 definitions=2022-05-19_06:2022-05-19,2022-05-19 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 malwarescore=0
 suspectscore=0 mlxlogscore=999 adultscore=0 phishscore=0 spamscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2205190109
X-Proofpoint-GUID: 89wm3QVX91-lGJ5Y4VKQkUVBjCgXNwHv
X-Proofpoint-ORIG-GUID: 89wm3QVX91-lGJ5Y4VKQkUVBjCgXNwHv
Subject: Re: [oss-security] linux-distros list policy and Linux kernel

On 5/19/22 05:41, Dan Carpenter wrote:
> I don't know how to distributions do embargos and I don't want to be a
> part of that discussion.  If I started disclosing bugs then I would be
> a part of a discussion I'm trying to avoid.
> 
> I'm pretty sure a lot of employers have policy about disclosing
> vulnerabilities.  I've never disclosed a vulnerability so I don't know
> Oracle's policy.  Possibly sending an email to oss-security could get
> me fired???

If you wanted to be in that position, you could take steps to be able to
do so without getting fired.  Oracle sanctions my participation in the
X.Org Security Team, including my disclosure of security fixes in X.Org's
open source projects to public forums including oss-security following X.Org's
security disclosure process. But I've also got over a decade of experience as
the Security Lead for Oracle Solaris and know exactly where the line is between
what I should and should not say on such forums, and have worked closely with
the Oracle people who decide what should be said on security disclosures.
You can also see other Oracle folks here like John Haxby who know what they're
doing here.

But if, as you say, you don't want to be involved in that and learn all the
rules involved, that's not going to help you, and you should avoid disclosing
vulnerabilities yourself.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
