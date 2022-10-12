Received: (qmail 16041 invoked by uid 550); 12 Oct 2022 19:22:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16020 invoked from network); 12 Oct 2022 19:22:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2022-7-12;
 bh=juonqYjl2o6mpT5zXpz48e1JXyN5jzUly64UMfLTK5A=;
 b=qBrd6szenEiFIFdBB4iOZ3YWZVChHIeHCTlWR98fQcB5ItVZnW4lRgGvdDhJPte0YiLQ
 CMO0iuto3iGoyyuLTdMEHfkdVoiffpypR3sWXtYakcrUjC5vqM7IyOH0BQTGx4TlHGeG
 vraMBn5ZXiRTtlOZAHRTm3JLBYHmaLF1iOpv6KxGWu0wi8RBY1njswOGtWNSitc1E5kA
 LhTj/d60zP51nKhDN4GSZKUM2OSaA9nZvCgHE9E2iPXlNRqrLO81IR3Qo+Jiwaw3YpBI
 NgUYOac9VduB1EYGRiD0PeZUoA+6eumqYQmw7b9ncQNXcHUWbfQIfwPOYlMwFmogdTSg Iw== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=grajtA1ePCmJD1bCRdCU8bor0ffychKxFVjfdrMbCr6v1ATvUKkjIcj83Vi4M/EcC05L7SCPsw2xNNxiLAyOPtOHVS3ZwP5xszWwfuPK5XVKB1euPE4amsu49bczMxbsK2knIlo7PPkLriN8FocZ3spwyqKGJfunO/f8iHFQQmeKct2qYmCXuYQXI7a+ZupBOUFExyqE4qsSOd5ukrirqwibIo6kSPVMoZAjrF0mGtQPJkFzAYJXdJfBdYKpGN+hHhx7RoxXTA2xUK5paktI+iTLFuWcO3DiSYCvgt6nU2zXZH0PuRbIN0ydwE//Jy63gKQphnUie8PrkLhFhObS7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=juonqYjl2o6mpT5zXpz48e1JXyN5jzUly64UMfLTK5A=;
 b=AT25JtQR38vLE3kGNNP4dmmmyyPhja4F2Ydvqauh944wrexcZB0oJIFKRWVYzVwwqt7pRaEgSMuHKMqhrdvlMaLuEvR8B34CVcA+e683DXSU+K0p0wCgVWQK2tWPRFejNH/fKtaMmawn/B8OZxBVVCNAnGxgg4HlCcdXuDC8KvOOCdBAbHOTcO0MKTC9wpCvBWdIwjHdA6H7WeMrUkHNVf9bN1b1YfFwFNHRIcO2HVkNfmfFIS+sQUUsw0otefiLKwapOkFrxXl3hwtXuzNwDVKNoiEzD2/zHgSZCERn5dy9i7agnZvmliIvRFsUTr5+uZznUXx1AolPyfkt+BIPag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=juonqYjl2o6mpT5zXpz48e1JXyN5jzUly64UMfLTK5A=;
 b=FlwnFygddLI60Gfskg/BITMeOCy46BU3ONqLsfA3LKqH8BLDQNRg+8I7KVYe3ucuAZSOpomhkI7/ge1uDNUfkEkNiY91lu6HbxOLiIyVYv+B5WYEjhR34FQ9INL9N1yQ9tz+MFltTadgCX4zaoCMkZILtMaPDxH3rVbN6yw+kxQ=
Message-ID: <2658c645-b4f7-1a39-2742-927e937be657@oracle.com>
Date: Wed, 12 Oct 2022 12:21:40 -0700
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: oss-security@lists.openwall.com, Brian Demers <bdemers@apache.org>
References: <CAH9eYVo6DNN9awE8txmY_U2aYposhy7pon689n0L6h5yROpqPg@mail.gmail.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
In-Reply-To: <CAH9eYVo6DNN9awE8txmY_U2aYposhy7pon689n0L6h5yROpqPg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR05CA0103.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::44) To PH0PR10MB5730.namprd10.prod.outlook.com
 (2603:10b6:510:148::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR10MB5730:EE_|BLAPR10MB4881:EE_
X-MS-Office365-Filtering-Correlation-Id: 938d3eec-5628-4339-b1dc-08daac86fef9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	9r+HvFe5PxaoQVbQshLTz66gwlFbDc+D1jJWYUCsnvt4wdRQiVifdeXZw+vD09gekHc+6jgUborHzrQ+N66CramZX9DJBXM1zbJKbVtL9cT2/CPZ3UPzR5HVsJkXWDjb37DHAywYtTrIZTO0KvQKqEGzswLD1xxuj+E0nJuKWH6JjHK+dMK0KuzsqCDHEadEx0UuX4AamHXUWFqdhELrwMYP1z/EzkWcWQbveTTXzFzesKRoG9nzpTuuEs3XE4O15UKa4ANMIXnGLr3uQDtKjmpbRxYC78u770SvUnu3Rd72wpfEHsUGPv0wrof23+wuuL8O00g/xlIntGTJY9J1/k4giV4DYYG8VdSNDPaiH0Lzqtc6RUYuQ/AangCJtkNOHsGwso7IpWXQx/VmvxS6BLE36gxnKmrkibWU/4WvP350f7hGmwIMBnLRfdZi0I7uFdW+C00tzuzx6+7ZF+T1b/7oZuCZimiNqfvHuZkEmaEHc34ZQWMWF4ymPlOSiMNg4m9ZziGxaanp7iAol1u25jcOoyWybYThsum+pnYbyPylR2R9Nk4krD34MTpkt58Py2Vu5lAmPKXOvkliBvQwyJmQRnA1MotsMSrgQmMw9FoYmapXoWhAqX+FYhoniiVptKShGuRtj+ciK5O1GiT6IIsY9WAA5iMjwTUOASp6MecSRSu1UjjM7anI0n3B+/pvGci5kR00NGlXXv/OC1g8LMfuy4AkK2JDo07Jy7NF8Pgi5ily8IOtw/yE2fU/AHntqkE6la5Gh08Na4c6VH761UkkvHY0AG4FOz2IDwZcCLrZkrd1d4jwaDo0ClYAFiF61hfsuZDezyuG+ouWh/3R0CEfLvpDGbjsog2ftJOgLkk=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB5730.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(396003)(39860400002)(376002)(346002)(366004)(136003)(451199015)(316002)(6916009)(4744005)(2906002)(15650500001)(8936002)(66946007)(8676002)(66556008)(66476007)(5660300002)(44832011)(41300700001)(53546011)(83380400001)(26005)(6512007)(186003)(6506007)(2616005)(478600001)(6486002)(966005)(31686004)(31696002)(38100700002)(86362001)(36756003)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?eDV6VGZMRHI2d0QxL2tqKzRnYWUvWUNkZGg5ZE5PT3U5Rk1DdWtuejM2cDc4?=
 =?utf-8?B?TGRSdEVnN2dBOVJoRngzTUs0MDBpenRJaWRDb0MrNTlvQlV1YVFtcjNmaVZ2?=
 =?utf-8?B?d01RS1JQdkdpM0J2SDR4L2JCQWYyOGhuUHdwcnI5ZmZuMkxFSFYveVhZdHI0?=
 =?utf-8?B?Z3U2aG5JWGtYTm14NjNxcFVOOTJYbFhmZnVmUDhKV1F4SkRMRnVTRWFaVWFu?=
 =?utf-8?B?MVVwaXViVHhobDNJY1UvS3pDZVMxZVdoVE5sbGo1bkJHZEJ0V3MxM29ib1Er?=
 =?utf-8?B?QmJDVFZzZWxqRzlIOTZIOHBxMjZmT3pWdW5hYVIrODhDVXNyWXpKZ29vTHA1?=
 =?utf-8?B?b2RyMlQ4UFlmY211anhtM2loRnZtb0NCSHhqamMzVmprV2E5MFNlY1pXMEpN?=
 =?utf-8?B?M1IyK2pxYzBETWhGYmV0dHExY0paT20rOWxxN05mc2NxSmpxYlZZU1I4VUVO?=
 =?utf-8?B?MTFvTDNtZDFnbW8vbjNjUkpFQVNRTzRWYUMvSklscUZpS0ZIWTQvRC8xZmRW?=
 =?utf-8?B?UjYzVjRJTEczVWpFQm44Umo4dFYrdVRKOEg4SFFweTY5ZU5JZjhZY2duZW1n?=
 =?utf-8?B?RGpJTW1SWVR1QzZiY3pkeGNpQ1hhdEFaL0swdjN1NVpVQ2czdUxlQVFpZVV5?=
 =?utf-8?B?cXdMZTQyT3drNjBkOUlDWG5odm9IdUQrT0FFRlVlcWpkcDlVdWI2SmNETytY?=
 =?utf-8?B?Nk9saUpzNnFvd3RrN1A3T1FXYW9hdmNUSFVLSy9kWkZmbXd1UG5WMmh2L1Bj?=
 =?utf-8?B?QnRoakg3UWtGM1R3MlpaRGhGTTBoYU5lWmFDTUZxT1ROalVtVXFwS0llTjRW?=
 =?utf-8?B?b2VYSzgya3MxR3llV29mb0lPV1o0eDZMUWhvRVJCMStLVEZRV1lHMElDM1FG?=
 =?utf-8?B?Y1BLcFo0eGhMSjJ4SHZYZjNFYzRBK3doV1dPU3RVNzdKY2JIUWEvUkhqSGt0?=
 =?utf-8?B?RUkwcnltRWplU2RVNVVUM3hWUTJZNSt3WVpxd2tGc0plKzZGZ2VYdEJjYW5Y?=
 =?utf-8?B?V1c4YmlXYmNOdEtSM0FtckdEUFhJSXBOZTNQUGdCcFJzeXMvdmZ3RXBVZTZ4?=
 =?utf-8?B?N2VKaG5RTEpNYXVCYnh3NytWTFBjaW5yeSt4UGxDUHBkd20zcTFZZmM3V0FT?=
 =?utf-8?B?Q3lDL1o5SThtc3JJT1MwTHlTSG9qcFBNTE9YNnRidDBUOTdFcUlJS1krMU5U?=
 =?utf-8?B?blNFSExvOEtSd01pTDFSdFRTaHd0UUw3dVpEc2I4WEw4MmltVEdsVTJreDYr?=
 =?utf-8?B?TGI0aDBZdWg0c1pFakJTMlk4NWtoaHYzNnhCSUFNNU5GRGVXUiswSDVmUW1j?=
 =?utf-8?B?QkZMSENsaGxaYjVvNDJEeDRVMW9kb0ljamp2blRNYkY0MEV3YnJJb3dKNGhV?=
 =?utf-8?B?NlpPcHNwNmZMWEliOVJXK0tCbDMzM0c2WWdMaEJTOHZ2a2ZOMXVFbEFZakp3?=
 =?utf-8?B?ZEFUZFdKNHc3a1NTOUxLVzBneXh3dUVubGw0bHRyTFgwRUpUaWRzeUpBdmYx?=
 =?utf-8?B?NE1meEZrMWRRMWZyM2lLZW9EOHRveHNyRWthMVlXekZnY2s4SWcrY09MeFBY?=
 =?utf-8?B?WHpUZG5GUHZZbzFYVjZSZkVRRjIzSXZWYXVoUjFMb3VEQ3FNRG55MWZTSDA4?=
 =?utf-8?B?SDhPZE1lRVlyVVJmM0NnWi95TEZUU3ovVXNnd1ltNGJtRkp0QldaN1lGS3hl?=
 =?utf-8?B?d2wvQmMvSkV4SHpjQU5iK3RERVFrV1B6SnpIeGlKY3pXOWEveDFia0cvb0ly?=
 =?utf-8?B?cEFpN2N2ZUdRdVNPM2Y0MHB1NDA2Sk5Yam5kUzFhY1lIWlN6U0VNTW12Q0ZM?=
 =?utf-8?B?YW8zS2NCQ0ZsQ1k0VUdjREFmNzMwUnowMkpUZzNuY1F1Vllwa1RDQWJDREhM?=
 =?utf-8?B?Q3NBT0Z2WDFQMXVEcmcwbEx4TlhwM0lRZlpkR2VXYkMrbEhXQVFPWXp0NUxM?=
 =?utf-8?B?djRNNnZDS2lYcmRDd3ArWURKNnNsNjZaTnZtMkZFMzNrdkpjY2QyeVU1N084?=
 =?utf-8?B?OHZ5NlJPTEM3OEVoaG10NTNZUkVEbEw5dDB5ZGIwQURHRjlMOXBVc29kY1BW?=
 =?utf-8?B?SFQrbkx5a1M4TU5VaHJUMTRNM2o4TW5uNzI0VjlhUWxVVWNKZWVpODVRenl2?=
 =?utf-8?B?YWx3Q0RjTDJtVE5XZytFclp3UmYvYjdCY0p5ajlDNnVyQ0Q0ZkQ3cWdKVEVq?=
 =?utf-8?B?Nnc9PQ==?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 938d3eec-5628-4339-b1dc-08daac86fef9
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB5730.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Oct 2022 19:21:43.3311
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3lVRpMnChwf/dkBAhmiDAcTUYIBr8tlPQTlEBQ0j/3kNOV39+n67ZRCrnEewWAwbuUE5vsgja1s+GR+w+JGV0bQ0FkDtshicGAWnSfiCSbI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR10MB4881
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-10-12_09,2022-10-12_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 suspectscore=0
 phishscore=0 mlxscore=0 malwarescore=0 spamscore=0 mlxlogscore=999
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2210120124
X-Proofpoint-ORIG-GUID: O-_i7alQw4ZbzofOQlVZyHV-IJJcGSTW
X-Proofpoint-GUID: O-_i7alQw4ZbzofOQlVZyHV-IJJcGSTW
Subject: Re: [oss-security] CVE-2022-40664: Apache Shiro: Authentication
 Bypass Vulnerability in Shiro when forwarding or including via
 RequestDispatcher

On 10/11/22 19:52, Brian Demers wrote:
> Description:
> 
> Apache Shiro before 1.10.0, Authentication Bypass Vulnerability in
> Shiro when forwarding or including via RequestDispatcher.
> 
> Credit:
> 
> Apache Shiro would like to thank Y4tacker for reporting this issue

Thanks for informing oss-security of these issues, but good security
announcements have a little more detail, like what actions users or
distributors need to take (upgrade to a new version?  what version?)
and information on where to find more details, like a bug id in your
bug tracker.  If you look at the announcements from other Apache
projects, you'll see they often include those.

Some good examples:
https://www.openwall.com/lists/oss-security/2021/12/18/2
https://www.openwall.com/lists/oss-security/2022/01/05/4
https://www.openwall.com/lists/oss-security/2022/01/06/2

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
