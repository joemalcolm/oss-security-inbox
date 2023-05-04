Received: (qmail 26247 invoked by uid 550); 4 May 2023 18:06:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26229 invoked from network); 4 May 2023 18:06:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-03-30;
 bh=5nEi2N8qQKT7KGTo3OMnWu8Tl3mWCOtZpeSAQs4xBws=;
 b=XfYibtqMtGfiWfvIXq3/a89ZxhxiLKVvcbDY9Zqs1EtmKgg3nruYJP8hNuHDmH47E+9i
 10tCMOlHyN6+hDdAWINyleE1ksiEsezDaB+qnsU+P0om0WHQWV9HO8pc9z5o5Am6ju+1
 0PwNpe8fOraxboT+LB5ZxVWsXvi+yIHG4uFcPxgAZCoEVsiHleBL9xsl+7uq7QRn+knP
 0PvxX94KY+yrkSw/hVQXHDJl6G3StMZcn5PwrpuXhGYQGGjvY9tZNCK6OkuyvAy8vHk5
 nXt/Lk4RWyVGrK0IJ3D/fqgP6IXaKJiFrwXpmEqia+Pg0I+IOpfmUsncgu9QrH6Ws2I7 mg== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=au+EryjENZQ6HCQYdwquauXFxv64Rakxg+Q/jmENLp5jsz9C0n9Bc5NSoJhc98ne5hzaW/+I3EOkxFuDi0S+LbKv/79kux2Ui+uA2w69IPEoppv3UAp15j+jIf5uzyboMkRbeoJsk4a1sF2hcY0WXTP3S6Jsx7S98k51mBocghG5osG6GNpaddvTTvO5QH5q1THmGnU/vIYNQio3un2xTFaM8eR9j8W/PSN7DSs88XUYAY/Pig19JnRicqTkjHWaACyDYqOrLcZ2HNlbI6YisoeYLw7InfMg2dlrQqnXq1WBSz89cVAmu3VYnOLsTmFlxb8wvbyexnYoyeijy47iJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5nEi2N8qQKT7KGTo3OMnWu8Tl3mWCOtZpeSAQs4xBws=;
 b=hfXHjtfRn6rEDU9Piy8YKY94HLoNwWje9sVizMigFyRScs+W4oM+X3QfBRQo1RIFE8E1zMnC+J96dZ/U7av7kbdM2Q9qmUUovtuUsbvEvbBfQGtOwDVMBWLL+7iv/m4oOXf4fYPx9LiIVHxWdzz7k3lxJUcy57Jo+/wR43LZWSGqlq35nBy62Nhw4zO0SewK0fFV+9+xCqI9lorJncI/gfiQ9BFfMARYVKYejdlkjrCa9Hb/Q2mmb1IdJ5OWFiCDJIPSoXVl6PxH8aqIr8JjwKZOtr2S1hXMpt8ys2hoXYTkC3cb+iQfFOUEKGOhQ4SDk90vz66MvBO0ebZCsLioMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5nEi2N8qQKT7KGTo3OMnWu8Tl3mWCOtZpeSAQs4xBws=;
 b=DciTpGWxkFJTPE9s0qqesW7a7ftBvMvQ51GvWbHlnnrLQTFu6YhnpBDOI7YdRzH6Cp83SpD/LHF5Z1JnmtgdblYmtKChXCeh8o4YpfQgCM2EB+ntV4fH/mx2WV+KyCqEFm1/+bIeGp8GeaE1ZYo5mV8OpNfgm2Uz8HVw/CjkwPY=
Message-ID: <407acc1c-dc56-d223-7ca9-d8d57532d145@oracle.com>
Date: Thu, 4 May 2023 11:06:01 -0700
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: oss-security@lists.openwall.com, Sam Bull <9m199i@sambull.org>
References: <20230418154630.eoheygqyom3c7ovw@stig.io>
 <20230429100407.3yqdy2vtzokv3t5l@stig.io>
 <6d30fdfb-ad9a-2839-9ad1-93ff478a8459@thirddimension.net>
 <30B5E64A-3EEE-4676-979C-A5A39373F46B@dwheeler.com>
 <66e0470c0fcead1656316f51e560586d9411afe3.camel@sambull.org>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
In-Reply-To: <66e0470c0fcead1656316f51e560586d9411afe3.camel@sambull.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DM6PR04CA0001.namprd04.prod.outlook.com
 (2603:10b6:5:334::6) To IA0PR10MB7303.namprd10.prod.outlook.com
 (2603:10b6:208:40d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR10MB7303:EE_|BN0PR10MB4885:EE_
X-MS-Office365-Filtering-Correlation-Id: 1f986b8e-3133-4271-f5f7-08db4cca3e20
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	2vtKa3n6YuERhxYj3L/enQSsAOBQgrMtzEMK+NugShtHWdbpQzmgkzSa7pRcYdK70oe0o9e6W6UZXi1UFzxstmg9+GbNJS8rIYQVrNmq90dOC2dVauGU2jea5oC+5zpOXeiMGxgyc7oPI9gjfwNW+J+wsdunO+vXxBL6GeAxVehr3Ty5n9rJhtFB9U28ag54mIXBAhYrZvy984/oEco6OfzI26fG/TM4QAFZTomKFFG0t294c2sHbGqaGDS6VhWBzYchL/S5B9ps5S9YmLdab5Ze2C/7trv+ewE9PdD0IFrD5lFJ0PKN+40VUAChc8ZmCFHmibNOVtgtoTCM9+jGhY95mfC6OvSwqQnx8DRApyxZWHJeSql0Yf2yMN01CDXAh7nYiWBfovtib+UXszLquN6271xuEV1VpA+lHOXm3O/xMEOUQP8hRx2fdOk9dBRgjSHzuR4dqnbMPVZRGcOpyPrjSRbaRCIIKnVgXRX2/DK+hnmraCzO6zDdd7HJUXnOhpspZEe7aYP+5qnjxFy3I0FpNKumLIsmsmkaI+tcv8oQwgHqcVmZiL4CMA4M78E4KroCGV7cSTCQCTW9ZdieausaRdpGH3t4wRNtXdS3gzj9VXCC+7OEKzrnVA7krPAusklMvEp/OtyDZb7FdLPZ5Qaw4fuvVsiIl1Ze2Aco+QccyMOa+7wr+n814VOZGXDP
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR10MB7303.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(376002)(136003)(346002)(396003)(39860400002)(366004)(451199021)(44832011)(8936002)(8676002)(966005)(6666004)(36756003)(86362001)(316002)(6486002)(6916009)(31696002)(41300700001)(66556008)(66476007)(66946007)(5660300002)(38100700002)(478600001)(31686004)(83380400001)(2906002)(2616005)(6512007)(26005)(15650500001)(53546011)(6506007)(186003)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?N0h3MXppaXBlcFlOejhzc1FaYmJIbFFjMXd4MU8zQjBJSTJIVmJ5MEp3cUtR?=
 =?utf-8?B?VTdLNUV1cmtBd3hXc3dvWlNQZHVYTnFiUi83aklicVBTQzVWaFp0M0VXbE1v?=
 =?utf-8?B?c3g4NGJjUzY5R0h2bStIY0QwcEJHMWRQNXFWdXM1SXlwVU15UmtsOWtMVUZ5?=
 =?utf-8?B?Ukh3RFp3aDRhK1E1a3ROcm1yeGEvU3VVQ1czT3dGNUg4U0xxeVZqdndBTk0r?=
 =?utf-8?B?THJoSU9kaVhXOXBReFlNNWN5cUFwVTZickpCdnhteThZR3lVY0lXanlMaTJy?=
 =?utf-8?B?V2paSmZ4OUVOdTBDTjREdnE1bmdlY0QwMVNxN1h4eVpSRm8yVzg5bjU2ZFor?=
 =?utf-8?B?Y2N5NUhKa0xCY1IxVTNaUzJDWEdOQUtxVVRGdnh1QjRNRkxrZFBpa2l5L2V4?=
 =?utf-8?B?MVNJbm5CSXBZMTk2czN1ZWhCNEVvWmdOU1dFVjJObUprMzhYZlFESFZibVR3?=
 =?utf-8?B?NFIvR21hbGdGdC80QmxLaElRYnVraG56MFVDYmZnU1ozYTJNZVA2ZW51YnZq?=
 =?utf-8?B?YW1lTW1vak05V1pFVXZ4SFB5TVc2ZEUwZitaM0s2b1BRaytCRnhLMkthdElS?=
 =?utf-8?B?bU5uS2NNQVF6WTlNblFrWHpuN3ozalptNUtFZGhXbjlOK2VNSDczWHRDRHBF?=
 =?utf-8?B?UC9TRFVyY013cXZGK3dKcU14MWtFelJJb1FYNGV4blV2T3ZSTzFpbG5ZbWVT?=
 =?utf-8?B?dnoxUmNZQlk5RW1kZlZ3N0xwdW1pcThlNlB4V3dMaHhjSnJOL2l0MGFSbWh0?=
 =?utf-8?B?NGI4dWJwNk93R1h2aEpkMklmOG4xU2ZzZlFMZkkrcTd3dVgzYk9CdE1Sbzl1?=
 =?utf-8?B?d0ZTV3lxM0ZuRWFhaHV5WEtwUm5jRmszZFhRbUtCc1pjZkcwY09ndlpIbWZP?=
 =?utf-8?B?Y05yYmlYc3BWdmxZd2RZbzJiUTI4RGphYVJXM2R2TCtwbVp4YjlESHZTTWhF?=
 =?utf-8?B?TG1xSDBiWWFUYjNaZjl6dThJU0RWM2JKZkdOTFhqSGNPY1JaTjZ3S3U4dGw5?=
 =?utf-8?B?N2hreHBFL2YzeXYwbWFQY3kyc1N4eVBOOVYveC9FeXdDdHUra0FKNUhKb0tn?=
 =?utf-8?B?ZEdqTFUrZ080bVBieXkrQ0M4TzBRNDQrb2licDVFbDkwS1M5RkxNOGdTOENE?=
 =?utf-8?B?MjFndEhFWGgxVkdQSWl3cS8vZzNhZGJ5UkJVaC9PMzd4R2xmQ2N4M2kwZmlj?=
 =?utf-8?B?eVAyRkx6QUJzQnhwd3AyKzVDUkdSSFMvOU9DdHpkNkFyN0YrdDdWb0RSY1JU?=
 =?utf-8?B?VkhjRjBrTU9UV0N1RGV5OFY4d1VlYkY1cXRBNjN2Q1pTL0J2blJld2dVOGxU?=
 =?utf-8?B?MUdWN1BycE0yUDlnSmpJcHo0WmRNdWRzMGxnaldDbFBUdUY0TmY3aFdsYmtx?=
 =?utf-8?B?bkxMYnR0Rkg1NDBpemtYZ1FueU40S3JTa3l3ZGQyYTBxYnZMVDRvdUxxRG9J?=
 =?utf-8?B?ZFdMN2ZLUmZRVFFTVmRRTFVjc29WZkF5cnQ4eEt1bTMwVFR1OEN4Tzc0QWQ4?=
 =?utf-8?B?N2V1VHU4WW9FNjZSWkhmbWhYa2RHWjAwR3M1Q29XcHlrWGZiMi92VnovUzZV?=
 =?utf-8?B?enlmRzQzYUVtY2VKWTNqVXVsTXc4amZRTkNIR2JTL0pzYjBWSHlqOG55cVJ3?=
 =?utf-8?B?eHFpVThTMjluVmRaLzB0VHMyRnUrSWhyTzdCTFA5QUZhRkJKaFBLZ3habGJH?=
 =?utf-8?B?WWN3akI1SDJsUy82VXQvOElHM1N4R2oycll0ZUt3RjhybGh5aUw0NmMrNmNJ?=
 =?utf-8?B?a1dGRzY4UkZPL0JVSmxvQWRxanNvVk5UaDF5alF6OEdHdk1mRlhDV0RNMG8r?=
 =?utf-8?B?dkRTUlN1bFVJaDBxc2VyQk1SVW93bXptZmZNeVA4OElRQ2JaZGpCY05IY0U1?=
 =?utf-8?B?aWFoU0lhZHNucUJwVnlXQ1NXU2RxZURWWmNhSkJoaktmMzlpREVmcnVEb2NG?=
 =?utf-8?B?cXdVU3NkUnhPVDhkTUkwYnNZRVZGZEtlRDRMU0xvT0lyWkVFZ1F1WHBRc1Ju?=
 =?utf-8?B?dzgzMThMZW9sTk1JdWxheS9lL01ickZpQ2JUdCtIRzRxOGc4N1VMeGs1Nk5o?=
 =?utf-8?B?b3U4K3ZEV1gxaEgrTGM0ZXZ6cVltbjZUK2RWek1ucGdWQXhGYkV2WnRaQ3dv?=
 =?utf-8?B?WVc4VVlLeVN0bVFVc0Z0dHBDZHF6L2lkbDJKbHorRDNpTmlsdUd0REQyWGNZ?=
 =?utf-8?B?ZEE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	Y5LG3RU2d6LkZhlLTLfulqC80vJZwvTzVjQkBYyA15McWKTa5HulXJQwNaGE/UXsYo11alAUkbOutJ2kxX6165LOVyT5+ixkvsuVKE1z4yCVcoZqhCSSiAf740h5Vuk9WIwdEiwxVJfJy/AuRAMiQY5ak4gpdwthJZKkjZwdxPwOKL0b0uBVvGUzv7qgqjRHcFAy6Hfonl47dIJ3Vd8PVRRpHsvd2F+AGLUVgxiaI5388eKwMPq9BrzIKiZCfCtv5KPfJFFk7Z+jgJw/zxfAwS/nMcx3OLnvekVFko6RaMW1bPcfxJjeNJ7wrRTnOHTWLRWddvpFLf6qg/HzsNnauwxiJJkH48yxtYcjK4Uv2aPg5AyMOqX87o8QkvuCdP0ZnKqH3ERUOmdkzitngsJUiwSiis73TUa/F9uZl1qsppg5+QnNqGqwL94Ht14lATiqg5PumwuqL7VpWMB8lU8aMhORlUBGn6iNeDMcpt8FyV5XrYZpSy5/0ZvhBWI2IqNTIzuqaXUSqlNrVPKlK5tQLxAGhV/qJzD8VqTzKFjkQD0OFb+bfnHRH1difh4+dc4NYw+W86gLjTu39woaMoReYF6Tg1EaE2rJ42wbQheh0+zP9n4SQx3PAzK3lGjThkzKXCjzVeVK4ZXZZaLNzr+60tr3w62j5eq7UT0VL8IpoBnIigvVbR/pfxLoxhiz1ZQy3cSJ5y1sSytDsHn9U8rcWL7IHvQHFeCHr9RR8foPqeNry9QiqNd5o9dJszNqDokBks3xPccbzT6Wd7Lx0M7fxWuNU43aSe7xB4tTYyJXnzk=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f986b8e-3133-4271-f5f7-08db4cca3e20
X-MS-Exchange-CrossTenant-AuthSource: IA0PR10MB7303.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 May 2023 18:06:11.4062
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 45Y71utoB0PWL2HZtJrYyTDh/EzuNrfG2GTqakNrM3H6O2q3ird+WvTpqRfWGxin/dJRCQtSVS08vEtTzOGW2hFb6eY1QjROOiN0h5wmyRk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR10MB4885
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-04_12,2023-05-04_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 mlxlogscore=999
 phishscore=0 bulkscore=0 suspectscore=0 mlxscore=0 spamscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2305040146
X-Proofpoint-GUID: 2cHNUhsUUmw-2TF3iDm7YNxZivgIzng1
X-Proofpoint-ORIG-GUID: 2cHNUhsUUmw-2TF3iDm7YNxZivgIzng1
Subject: Re: [oss-security] Perl's HTTP::Tiny has insecure TLS cert default,
 affecting CPAN.pm and other modules

On 5/4/23 10:15, Sam Bull wrote:
> On Wed, 2023-05-03 at 15:54 -0400, David A. Wheeler wrote:
>>> On May 3, 2023, at 3:15 PM, Reid Sutherland <reid@thirddimension.net> wrote:
>>> Who actually decides when something receives a CVE?
>>
>> There's a process for assigning CVEs. Anyone who wants to be able to assign CVEs - that
>> is, to become a CVE Numbering Authority (CNA) - has to follow various processes.
>>
>>>   This can be used to defame projects and products as in this case.
>>
>> Identifying a vulnerability does not defame a project.
> 
> But, reporting a CVE where there is no vulnerability wastes a lot of time for the project
> maintainers, as we had last year with this CVE:
> https://github.com/aio-libs/aiohttp/issues/6801
> 
> As far as we could tell, it seems a random user reported a DoS vulnerability to Github
> (maybe?) and got a CVE assigned, with no reproducer or any evidence of a vulnerability,
> and just a link to an issue which was never considered a security issue by anybody. None
> of us involved with the project were notified of the report either, we learnt about the
> CVE from other users asking us about it.
> 
> It took months to get that satisfactorily revoked and stop getting users asking us about
> it (apparently there's no standardised way to tell if CVEs are revoked, so seems DB
> maintainers have to remove them on a case-by-case basis, making the process much longer).
> So, something somewhere is not fully working in the process.
The CVE process is designed with a primary goal of simply providing a unique id
for each claimed vulnerability - it's intended to not have much deeper meaning
than creating a UUID.   There is no requirement that the claimed vulnerability
be well described, proven, accepted, fixed, or anything else beyond not being a
duplicate of an existing CVE entry.

Unfortunately, many CVE consumers assume a far greater level of meaning to CVEs
than the CVE project intends by them.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

