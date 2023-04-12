Received: (qmail 5619 invoked by uid 550); 12 Apr 2023 16:56:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5598 invoked from network); 12 Apr 2023 16:56:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 to : from : subject : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-03-30;
 bh=wPK63NVKWPHavJeuN/ol7ab6CG9o6A2O5s/lnJ+I4JQ=;
 b=d32DrOg7B5vEAnzb6eJPxltAt0o2RL8RlxijWS/JpB1kIngJ19Uxh96tXbqD4AamYq3M
 Scsi63KYy/VNcLnNnRAawGevgXN62ATsceYD9P7xzXOupeGpSEl+fEt3GHqr8q2t2rgd
 c4ShVQU5gIliBqyNifehlGoel8w4nxvuHXOBs69BBveWl0iQhvHI7tFiiLclJiezhvNx
 sUlg9NkrUvDILA1nMHPMMQfe+FrSZw8U1MGVcOZAs10sLv2Jw4sgqPN7d/bROSE6g2jB
 Nvp2cSJ37PBeBzILERMsbpEj7bmrhzZeJ+kWlqAldVTtaU53MUzdBMRCMUbyoJqQyyIe Ww== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dc26oysejuWpdQnxoCqQM7DMLemEYPp8FuWZWq8pcml+fe0SJJ9AqSexhQWg5vyUwkxKhkxVTYXMIRWtMB4Srb73gTwP9ddjtQWEoCFLkbUleNx6fbgcuRzk8vTPY1CZPOMsSqBm8L5YSgOkEb+HaE15H/crMi1n/AtZvjnjHixMd5MHEYEQxV8HFkDC3u4WpScNwr5PEZMSw+PAU1PzgLN1q14P8WREMgRDA0Mm6rcqOxNN1COJd8+MFFLmMZ/J48nbkPK3r5KxBBWov2mTPXymfwk/C9nymZVA4mddHn7Fba8gmC0HmsiVEpuRyrcY4qJMKmQcNJRKMsFDkaAONg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wPK63NVKWPHavJeuN/ol7ab6CG9o6A2O5s/lnJ+I4JQ=;
 b=fP2D5t1CzvZyDFF6SQfYKY5kkV9vTr2wyh0dGLW6/YFUffswxdz203lMV1toTcbHtGnWts2duKf2p8zvIKU6TxtzKTjTq0yC62I+26kCBDqX/mUJlA2ThD91HSSs/X9mROR7JT8WPVDKNVsuEIlSulox4H5xRLqcHhD3PaYh1tdUaRKw5eH2tGxeCOOzhJsWayDEiZqdgmW/xFH6OA5rMmagv3vGHZcdYo740UroiLCksfYR04EZv+BAu3CnvzTQtkfo3XjRJ9sambJb9dUlGVs4cm1D91KK5rh/bf/zz95tiYbj0gOaTqK6/dAJE+HDUvCMxhX4teu72tHH5DC68Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wPK63NVKWPHavJeuN/ol7ab6CG9o6A2O5s/lnJ+I4JQ=;
 b=i2ASt/edmczqX54Wl/bTPZvIWnkra8A6PUhQjuN6pJ3anyRRtuVOrtLXHC8XRxl5C5hTBNeMwWnbDOIeuuS+7zQg77Yz4E/J1KjG68atK7RUnAEXNKG8Z3W/e/O2icndXXhQqoLtBOelMPSMmEtTWOT1nQPUTKdP2AySYIqRGEM=
Message-ID: <03df23f7-96c4-f1d1-32ea-86b2881cabe8@oracle.com>
Date: Wed, 12 Apr 2023 09:55:44 -0700
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DS7PR05CA0089.namprd05.prod.outlook.com (2603:10b6:8:56::6)
 To IA0PR10MB7303.namprd10.prod.outlook.com (2603:10b6:208:40d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR10MB7303:EE_|SA1PR10MB6640:EE_
X-MS-Office365-Filtering-Correlation-Id: 300c060a-3156-4871-f9d3-08db3b76c32a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	5R8j/CPJRti5+HbyuT5+turGJb33nV1d4MMkm14zHzhdd+SnjLA+w6Lv1wJ3iQ6aez/YvuYbd1uebg1Ra909VwjBK+JevXzdSftQTTVnj+xJtZbVHAlhAo8JmNOZ1OjkJzuDgth6NgKlMlGOzK1iP2umHaGRh8sVAHoYWLrMQz+kXYQULZhc6VwqBGe73C7bxYWYiE05Gq9asWqr+PHrceQMjHy29X8Shwxa0H/wqdScUyNWVN+BoVFr/juW6V1nyqQwRWSNbI1j+GHVZieAht1zePYE/P8VffDKXbvaEEsmySPGZ1el+GJGkkRDZjWgaPKpCVyW4MspjzmiYnxX2/uiz2TN/QVyHosPcQNLv6fHhLFO/g+fJkSUxVFd/nE2K62wWGn7tAXudL+f96FT7yj78UEG4sL/bYYsDYdw2XravJqsRlmbTOG+gs4zu3fC+CyWEidfdQNH8z3DrsEQCqs8uDe0vnZcOnkxbf9xE4TGJrzPrcAwWCZi58I9M54xIxbnhB0AU08HtaQOVWoVF5S7ORrOqr6G69L+fS2rkyRq7bJUauleOkn4BzrgB0yz/vaNxNkf3kJxBYwWpTlbSjrVgg/16lADV5mG42EHRbQhhzLR/aYw7JIEHQiBFj5SSCyPomSklt2Z7LLQQXoSXhVIXu2Zi22P7RK/11HsDok=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR10MB7303.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(136003)(376002)(396003)(346002)(39860400002)(366004)(451199021)(31686004)(31696002)(36756003)(38100700002)(5660300002)(2906002)(6916009)(86362001)(8936002)(8676002)(316002)(44832011)(66556008)(66476007)(66946007)(41300700001)(966005)(83380400001)(2616005)(26005)(186003)(6512007)(6506007)(6486002)(478600001)(6666004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?a0VwVVVGQzZnTFgwVmNNbjJISVJtQldtU093b0o3cHYvaSs3OTZQOTlDZ3dr?=
 =?utf-8?B?R28vNEJsU2J4WTBCOWFVTHBYVUM5TkdnUjVvL3FiQlRTMWpVb3BVaWtZMEdN?=
 =?utf-8?B?MnBFdjJCYTJ3Z0lkVFlJV0pNbE95K2VQZGZJT0JTTTk3TWp5NEEwM2dWeVdR?=
 =?utf-8?B?S3dOdTJmV0lYVGlJUFZYWC9pVElaR0xEOWx1UzFhZzJEcDh2OHNnNTdTK3dS?=
 =?utf-8?B?SlQvODdLVElTaVVGOGlXVys1VkhiSmM2cHlBMWl3NlRXSGs5bEJkY1ZwTUhz?=
 =?utf-8?B?TjdDbjhjVUJqSktLak1RMGxLWGJObFR1MDVqaFAvZkU0aVVRdlhyS2p2a1Vr?=
 =?utf-8?B?L0YwRENISUM2cyt2QkE5OU1rSmp5NEZOYldDdkVXd0ozcU9KbGF4VXlYVlph?=
 =?utf-8?B?UkR5NHE4TnhSZU9IK21maXhWYU4xRUZqdXdZWjdLaHJ6elZCcjRzVnlTQVIx?=
 =?utf-8?B?bXpGaEJyejJkTTdTMkhLYUZWZEsvb3RxUGd1VE9HNnZFR0RVZjNrYUF1cVJ1?=
 =?utf-8?B?d2xUNDFHWnlFK0kxV1hzRlFOVVdBeDM1eTBZU1pISmR5dTRxckpKUVNObHRD?=
 =?utf-8?B?N3pvUlhyUVdwbjlrOVdVWDBiTUtkN1c1czQ3OVBXUm81azRXdSsrbnZxR0Q3?=
 =?utf-8?B?dnB3d2hZYUtQZ3dVbndnY1B3N09aYVFaRFZndTFBWUV6UmFKZFZpTE9ST09q?=
 =?utf-8?B?dWNQTE40UHcrT0w1b3pta0hnRk02S2UvbDhsQlgyNWJjakFHeWNUT3hFcjdy?=
 =?utf-8?B?S3pFNHlOTFBrbDlKMWgxMTAyWDZCT0hBSzhXNS9LOEF3czdmNXJrTklINjcz?=
 =?utf-8?B?ZmtYdDBCYzNmeDVHM3VhRHJrTFVNd2tmRnRnZ2lwMkJwZ2NhQ2tGVmxjWEU1?=
 =?utf-8?B?QVNVa1luL1lwYmtDdTBxTW1lRmtOUnErU2tSd3MwWG0wTk9Ka0ZjMFJOM0Fk?=
 =?utf-8?B?M2pHc1JITW1tT2RsNzJ6eDRqUnpqRGdjSjlKckIyVUtWUW82cDFYWDIrTkdq?=
 =?utf-8?B?dWFWVHNwMUpFaDlWdDRsRDJtOXF6d3R6UHg0ZFRYd1ZVM0ZwY0RiT0dtcEQx?=
 =?utf-8?B?QnFORnc1eW9PalpXR3VDS0NGbHJCVi9UL0ludThQa083VU1JY0c1cUhVTFAy?=
 =?utf-8?B?djZSWUtLS0FlangrMjRKdHBGQTU4YnU3S3hnc283NjBRajBUNU5aR1p1akRF?=
 =?utf-8?B?bzlBTkJuTndOTlRHdTNEbXh0d3dkd1BHMTBhZXBwdHRKMFdmNzljU2JJS0Rq?=
 =?utf-8?B?ZjM1b0RVZkhJVmtDTkhsL21XenBBVHNNbmxId0FqSnhzcktJTEorYUpTMzEz?=
 =?utf-8?B?eW05S3d5VS9FT3pTMWszK1RaMmNYcWk0dUJGL3B6L2RBdk4rNE5EdXZIVWpK?=
 =?utf-8?B?MDRXRkNaNDh4bUVqU3luVXpJTDJ1QkM3SG9kWExjVHRiTlNIZzd5d0VUYm0y?=
 =?utf-8?B?eG9CZnJXMkFneU5ER0NDd2tFQmVLTGJ4RnlsZFdGMjk4QjFpWHhyTWtHYXp6?=
 =?utf-8?B?VGZSMlpkaGNFaEVlaHFldjFpaHhIWFhhK00wTlJsRXE3SE5GdUkvdWpGMUN0?=
 =?utf-8?B?b0hjNFhpWVE5N0xaMGx1THpyWWJLN2F6dC9Qb1FUQTJZSzBib1ZaRldreVdM?=
 =?utf-8?B?YWNGUkZmVDU3YnBweEpqdnVKS2pTcFExYzE4VERFaDVpZFR6dzB6cEloRU1q?=
 =?utf-8?B?TnFxajQyY0I1K0ZhOFhkZEhDczlYV0RlaXErWFp6WDFkcllub2tGc2N6WlJv?=
 =?utf-8?B?WFZ6WTlES2w2a2JCUlQ3Nm1VMFAydmpId2dNdFdUNUhKSjZWT3ZsZGFIbkIw?=
 =?utf-8?B?OHVXbk5RdDQvTjZ6N0lURDB2bWREVm4rV2dHM214ZVN0YjhHMEtFVXhwd0Qx?=
 =?utf-8?B?V2hRK1FiemVVS2kzUWptU3dDbjNHZlo1aVpjTTZtOFdGTFhtNmUySk1aMTlX?=
 =?utf-8?B?dnRtbFJrSzRBajcxYkREMkp1ZFczeXhSTEp4d0FJdVZUTlRjY0tJY3RYMHpY?=
 =?utf-8?B?WC9MRi9aQVFpZmgvUFhhbmhpdGRndGZ0bE8rTXpvWDFxaWc2ZWp3NVFYY2ZG?=
 =?utf-8?B?N3ZnVWIyZk5kUXUzandaZENOSE5uTkl5NTVUa1dFczJWVUVVeTRGQmQrcW9Y?=
 =?utf-8?B?OEJZb1RXVUYzRG1ZS0FEbndyajdDQlloekFWRzdHd2wrcnpOTlJtYU1ycmRJ?=
 =?utf-8?B?SEE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	EEeWfAEwdKIEI7fX9aZPxp+QuXCg4dNuuypJdVfUo8trF/9i/O5MBMgy1oUlNFlrJilaslCL8YjL5vgJ+P12XzjWqEoXp1cgQ6hNyc2bFLE//+VoMSy6sl9NdC9rw/Hepf/qzmIs30YY2IOQwByb1ybySLeWLu/6qBXonH8xxV63n3NIsC0B8qxH4uQroSsaxK4OVjDxKAZCQZ3dMDOS5r5PLD1Qf8mfwjqEa3Em3Azr/ER5zrbiWdfyzawe4pqeErVb8OWQeYF2UzruTGn4CA9GzeUOyRLBjITlyBCLnbuwZ7imqyzYatNGKcP1Z5Y21+Dz7qUEYxXlC2t00kCOP0A3U1NNtxugtfcXwwSFSOV1D7QIKIdRxl6hWTSKOCpicpyax4L3bNspE6JQmo4H4iqR9XMNJyw5hj7r6yiv1A0d5/bzJ3w6D7GjB/BXpbRJzqWe7jKEvDbu6ydy9ooZaufSutcI3JenLGo7dHFKHTKX1f2BmNaaOoo/a9fYAolCVUlE+/XDiK6+PCeIGy5gfR71ewu7MAPdcwewlaEtXSC/gsg2G4pqdKmI6+d5ljLeg+52TZG7wXAUCz2fPxRc4MiPq/nnEE1iSHkFUEEY4vb5xfMPJFhl+Oj3mF+4OPxQAtP5O8rxfj6ocfxXpKTu4kZyvZEjSPbYoz3qx8E5nEn7oXeAK7v7kvTzaAUPIUvABsg3wYrFFB4dgpTG17gELPm9YnTIaOD/zlZk6bTBZCA2sAvLHfGQWiJ06hvj2iPxx7MYzxv7uwKChFbspn2qIg==
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 300c060a-3156-4871-f9d3-08db3b76c32a
X-MS-Exchange-CrossTenant-AuthSource: IA0PR10MB7303.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2023 16:55:47.1485
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ya3qIXjQyyUzEb4BQWam8h74H/0yKbYDIaYyk4k/grjxHDvQhj/4g6td6AIW+JZUww3CJvgLgg33MAnunPpayQwbqFFFbkjm/a+I9j26Dks=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB6640
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-12_08,2023-04-12_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 mlxlogscore=999
 phishscore=0 mlxscore=0 malwarescore=0 suspectscore=0 bulkscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304120147
X-Proofpoint-GUID: VjtDlqcLSTs4P3yxhY_vcHkAEQriWJ-G
X-Proofpoint-ORIG-GUID: VjtDlqcLSTs4P3yxhY_vcHkAEQriWJ-G
Subject: [oss-security] Ghostscript CVE-2023-28879: "Shell in the Ghost"

I haven't seen mail to the list about this yet, so FYI for those who haven't
seen it via other channels.

https://artifex.com/news/critical-security-vulnerability-fixed-in-ghostscript
says:

> Artifex is pleased to announce that our team of developers have
> successfully addressed and fixed a critical security vulnerability in
> Artifex Ghostscript, version 10.01.0. A CVE (Common Vulnerabilities
> and Exposures) identifier has been assigned to the issue,
> https://nvd.nist.gov/vuln/detail/CVE-2023-28879.
> 
> On March 23, 2023, a security researcher, Hadrien Perrineau, reported
> the buffer overflow and exploit, on March 24 Artifex fixed the overflow
> and removed other related code reducing the attack surface. Fixes were
> published here:
> 
> https://git.ghostscript.com/?p=ghostpdl.git;h=37ed5022cecd584de868933b5b60da2e995b3179
> 
> https://git.ghostscript.com/?p=ghostpdl.git;h=37ed5022cecd584de868933b5b60da2e995b3179
> 
> A release, Ghostscript and GhostPDL 10.01.1, was published on March 27.
> An email alert was sent out to all Artifex customers on March 27
> notifying them of the bug and the fix. Artifex worked with customers to
> integrate the solution into their products as quickly as possible.
> On April 7 the bug was made public.
> 
> Users of Ghostscript are urged to update their software to the latest
> version immediately. By doing so, they will be able to mitigate the risk
> associated with this vulnerability and ensure the security and integrity
> of their systems.

A report from those who found the bug, including their POC, was published
yesterday:

https://offsec.almond.consulting/ghostscript-cve-2023-28879.html

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
