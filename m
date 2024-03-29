Received: (qmail 26027 invoked by uid 550); 29 Mar 2024 19:36:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9791 invoked from network); 29 Mar 2024 19:33:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-11-20;
 bh=R9nIISAPTSMlEKquOtVUKJ0+wFa6fkYkjz6Mpe+nX84=;
 b=X/fPfSQEXTa/v7wZHALisoNoa3WRmD1zuBTg/e+Y7Ol0Pl7U1crdU5wHWNpoA1DCDfxf
 p2WpEW8GJOHntRm7XTMTFyDc6eqqsuj3FnVBDFH80TnWXOIlPuDIp4va05ifNo7h8zYD
 BEdI8ydMoiQSpgM7AR51Y4TQ/B4HQYkpifQwLfLMiuSmXB3DbEvO58HrZ8JTdtSVpqkl
 UCtgm3iLa6cDnmF+qsKWx5gcKc8NWjyAhZYgPP/jJi0FyzO9RONBLO2XfSMhD1ZEivEn
 AqkR5LerGezOA0Ehvme+Vmytv3TTAcOC8OEiXpeWrXLHlr1J+rahT89KiaC1/uuilRju +w== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cw1r+5RniuZTcgz30qYk3qll5n4kK/gj+bEB7LNv4q5cI/pEYvNjaAexrnXKrpSrPLpdr/vuL5y8zwE4ckKzOHp+z5FE2FqYs1/o3f5xwczO809F5ZYXzb5F+1JlbQcw6ODbhZRJpx8Yi/841yLMVTzJ8k6nT3JDCYAVUPzUguQ96pHkdG7S2s3t3knoXHWAigHadtT8svWFb0sITd7hUkYJRwBHKmXwNQxEP45bGpcR6xLxdAZqcOTJ+oHYmvnqZ2ZL65xLW95ZQBD3V84+5iOMaosVCeErNb23ZYlUjIAcMqMSCYRIbEqkme/Z7lbhFkXzyYcZ5S7OkQLrDinT0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R9nIISAPTSMlEKquOtVUKJ0+wFa6fkYkjz6Mpe+nX84=;
 b=g4t4glLR64cyo5bA2wbSA11HPf8bqca36X/1LfQvOUb/q9HpTPN15sRwsR0iFhPOTN9FsntxCdvm6J1g2WxDxS9N1r0aalIoVyY/8Tn9GNZta8AslzilOaZlnlryflFU9NW6d7ufc0uW/8a9lmstTnwqql2p6pP5BB5DWeN0XlcoHXyq5vliRPaS/Ue+U6NKTl7Ze/+ZXJNfy/j1VnYgp5Joo6mTWhqQslS1oGUlwc+KbzRnsmmPy7VjU5oNOmyGJvj+qGR3RPDegON4+krItzwhFxy5sFadbBpPZ8xSKdNFO2U/3iLNQPBRFlnJN+6BKfo8l+zKhdeS+9XqdxtFeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R9nIISAPTSMlEKquOtVUKJ0+wFa6fkYkjz6Mpe+nX84=;
 b=wZwdE43AhfKry/tMsITlIxs4jAiNKzd3XHK4IxEiQPb2vgWv5qXcrQjol5kDpVeSh0nTyfgemXiYtAFh1AXG98U0IjH17oYDb9ZN7OlKSHu4gdseScasXi3rARYXWSTihT6UAiTo8aSdq3WwZQfmNtW+Yfwr41OQ6M4KGexka3k=
Message-ID: <16d86f5b-93b7-4c13-8dd4-ffea7d7577fe@oracle.com>
Date: Fri, 29 Mar 2024 20:32:42 +0100
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Ivan Delalande <colona@ycc.fr>,
        Andres Freund <andres@anarazel.de>,
        Andrew Morton <akpm@linux-foundation.org>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <ZgcOVnk5hCVkDUt/@ycc.fr>
Content-Language: en-US
From: Vegard Nossum <vegard.nossum@oracle.com>
Autocrypt: addr=vegard.nossum@oracle.com; keydata=
 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 8A==
In-Reply-To: <ZgcOVnk5hCVkDUt/@ycc.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: LO4P265CA0327.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:390::10) To PH0PR10MB5433.namprd10.prod.outlook.com
 (2603:10b6:510:e0::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR10MB5433:EE_|BN0PR10MB5047:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	gRkrqEGSN9IlhbLTcqAV17hR/sQ5FnLlCalFq44fyOup/TtYhert47BRw1d6M9dXHRVL+1rrFdmvBAqUMQNbsjFAw12vP/IoyFr3BCQ3aAhhXakKFgbr5PneAq/davZSFpo5BNihOyOXuSvMh8FpoHRF4ZlSVRmLukpFhU26qsoKf3rxn8i2Hvc6tTfecWZFz1a0kPSiEF37iyFKtQUnYT5sEnl+IpVXAqZ/rKSk97ZdaElq0GEqtAao/RiiiJSi5WoBjeetf2xu3oJXV4591Piuzq29XrA/s7yhFddMHPubokl0j+2rusGXP9+kfBUoDFoeccD0Ynn37OZ4rtinBSkU/9tZn3hk3UA8lGzEXHejR8z3KCsZ8YcEBz//0fADihRWPUPJeOMVacSsYG3VB6g+RxRe8bgp5jAPH+vHtA82UJOLihqNubMBZKnNgmEoNiGpoYCTag8c6U9G6yS+F5qugRJM+VUPyFrkAqGnq4LZdOHq4EMHmowbrN83wHhmyVkzQI488XY3AVNtwLKwmlRTNymzQuQEE9ZKhh7uR4MSvL6MhwbC4izzpSCEFKVUaGwcmRpJpDL48heuvKIBT/nYJfl1HSeGg+Lb1OJlwFqt4kB1fwYoafCFU53QMSEV
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB5433.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(1800799015)(376005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Q0pkK2tnYkFWSXRIeXFjcmdIZEhVTDNLZnh3Zk5Kc2RZaFlUWlh6QnQwTkJp?=
 =?utf-8?B?RjcwKzk5Njh1RUFwMDEzRDI4eEVkTU12K1E5U0dMZDRJNXc4dzNvaFBCeFhW?=
 =?utf-8?B?SWpOOWVnVlhBUXNkeFF1K09CdGhraGtPRXNBN2NHeFhvVnhvS1BSYzNWdHI5?=
 =?utf-8?B?R2hEVndSRlVRSjZVaG5IeThKQnFBNVpPdTNpL3hqdnJVQnZpeHJBTHNRUFFk?=
 =?utf-8?B?MmdMS0hVZmZ5YytwNXdBVkI0TUFxVjNRTGtpWG5FQkIxNFV3azhtQTg5eXRV?=
 =?utf-8?B?b1dNNXBiMzZQM3M3UGN2K1dldHYwR0dabHJTWER5eW1SUVRHbHVZdmJHcEtB?=
 =?utf-8?B?YzRJNWl6d1RUelZ6TSt3S0dtZVl1RFVYVUNXamZTRDJ0SWFnTUFNcFR3RjZi?=
 =?utf-8?B?Ukt3UG8xSW1iR2pKRU42RWJsSkJmWnVaWmlCUmdHK0owOElxdy9BMUVHeU9X?=
 =?utf-8?B?ZndLbzUvQ2RDRjE5TUQyR0k3V29RU2hXRExNZGRmd29SVTI2OEJxRGo4ZjEx?=
 =?utf-8?B?TXZFZ3VSUWlZUXhuOUo2L3cyU2JNdG0ycktrc3RLWlNIY0FQcSsrdTJPWnNm?=
 =?utf-8?B?TWpGYkt6Y0lZeVM3WlVuKzVEblZpM1k5RUdwb0lIOC9ldkptRjJIRXpKSGxi?=
 =?utf-8?B?eHAwL1hlY0l6UTFOYmpLSDAzbURNWTZhT1pvdTJFRXVLc3Y0ZytkUW0xU2Uz?=
 =?utf-8?B?VDYwemRuWGkreFlsSWVZdFpwaFEyeW13TW1kaCt5cmp1akdhWlNuR2pycVpB?=
 =?utf-8?B?MzZabTlCREZVdzhqZ1pMT3VSbXBBbmh4K2VJZXU4WkZRbVR2Mk5oZUIyVllr?=
 =?utf-8?B?OUlXL0s2U0ZRME4vOEJ1WkhIQ1ZreEJrbVFTRDlRK1VlZnFlZFFoaFlDdVhh?=
 =?utf-8?B?RHREcGVQVXNGR21LNGxodTcra1AwdG54L25PTk5tQ2NJc25ocjVxWGYycC91?=
 =?utf-8?B?WjJLUkNNRnV0Mk00eGJYRlRoY3dxRitqZm1MY2lCdkZrVlNhcyt6bFk5ei9z?=
 =?utf-8?B?WkZxYVc4TUNncE9QaHIwUmRvWHB1TWxvNVdrQXEvVjNWZCtzVTlYUTZwcDgw?=
 =?utf-8?B?aHlWYWhCbXFYNjF5aTlzTDFYRmovKzdzSWsrT3piV0xUazYwNWpTY1l0YSsw?=
 =?utf-8?B?bFhpclRwcGtLLzl1K3lycHNQMFpYVWFsZTBXYkkzVlJKK2xKMjlqUDdoeEk2?=
 =?utf-8?B?QVlndnBBVDc1TXd1WmROMnozTG5OR2Z2Z21LQ1NVUnh4dUtXSmF6eXEwUlFP?=
 =?utf-8?B?djdOSFB6MDYxcXNnVEZNZUlxdldUWUhoT1FHcE8yM1RFZnl0V095aDRraHVW?=
 =?utf-8?B?a24raEJxWWFzbVpYUS92KzNOdnphcHFsakFGbXBiTDU3TjFQT0VWN3h0czI5?=
 =?utf-8?B?ZVZzeGJZWXB5Zlk5SjMzejBBaFFLUVVrd254N0hQTkdEa3Fmc05YMkpQN0Rw?=
 =?utf-8?B?Z1Y4ZEpCcW0velBrdmFyVDZNUkN1cmthY3dJdXFUZzE5T2ZodG11Z1dmSmhx?=
 =?utf-8?B?UStvTEp4aWM0a1ZmZXVkSjFMSm9Nczd3WDdvbUR0RjZqMDBrWnpCR0FwMzBX?=
 =?utf-8?B?UXVTNGxRd0Z1eksySU4yYXBYcE5xTTFzOS9JckFqdjl2SEM5b28vL1VaaHlI?=
 =?utf-8?B?MWpNdTZJZUhXVmRVWUF1WVdzSW93bWVuOVBpNWlnTElYY3NHWmhRZVZQcjBD?=
 =?utf-8?B?azBaNk85VWdab2ptcWM2TjdxdjJub2xWR2k2Yk4venNkc3pKVUtLaEhPNEZW?=
 =?utf-8?B?S3NNSnlEUUxOZWYwTFBSV01LVEVROTlJVVh5Z29LTk1hUDU3NE0vT2xUTUZ4?=
 =?utf-8?B?aThaalU2YUdDbEhDamRjUnRSdU9ibzZCNnJnV3pGMmtMWDlDR1U3YThhZ1h3?=
 =?utf-8?B?YkI1aDIvMm1EN0hnT0pXd2hkMVF5RVA5KzUyekxRalBOVWYxWGZOWjdMWjJn?=
 =?utf-8?B?QVBuYUlxM3RGb0twTG1JRkM5TUxjZ0ZIRkZqZUhuaFU0TXcrRndzd1I1VTBo?=
 =?utf-8?B?NzgvbFJMa2c1T01raFNQQkZLS1JRbGRLV2h6ZXFnVUI4WFdCRCtIcFVkTmpJ?=
 =?utf-8?B?b0FwUTFFdTVOb01mRktFWHhnTDQ2a09zUVBNazFHcm1EWnF6Mnk4VndGNW9D?=
 =?utf-8?B?TW5DWmN1a0lJVFhMZDN1ZGtaTFdiUk5pWXpUQmh3SUprTTVIL05McWE4bDFH?=
 =?utf-8?B?aHc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	fJM4JypIGHLG0R6F7ZeLSkbRNwgdJ2fIfhrMybwinjoGxz4K3Tyy1pYNERZJHasW0e3A/26RdbV6ZDc37t8dj4iGO/dA6FuXXwyIzeRRejgqnW9ZaYdQXBl0Xuygi5c/mCoKA4BzqBKLCJp9rcsLo4Xi6RU0wfFk+lqW3qCdE9vUd/icBu620KeRNiLaPnNSj2HFkX8kWB5BMjw0oRKDqJFWATzG94glnnYhzbtezJUDMiQQYomZ3Oen+yaMTtfVzNy+Qf2W1IGXDvSWbX2aZvjTqqYSkri9r6ET0X33sRAG53X3Af+tIy2YXAxkDm134PV0yi9qtD05CtW5Ev6Z7xii1E1vk6bNK9JEtImSattTYM1vR1lr2LuUE8GYZCWcM4ibyYDw6HTvzI99su0g0PbkxV8qwIEXwEpgb7Wi7tG+QnJ0mY0Iu0NP6KrfoxfEDZJsoVe/E3VUgspAHzsdXsPwbQEkgVyNrxPA6sykBDABLkQATNIqrX+IfQdCG1MO3g0utWFmeSXHrlUFmaUjs4Ux8leJOfO+S+H4+R930gHmHJpe2IF3attW83Orw0uG/KPVipHzqudqWnL3rYtDgqDS/WmNscLoQbdQmwQqy9w=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6dd2279b-7966-482b-6b4e-08dc5027039e
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB5433.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2024 19:32:47.6921
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U3QevWoQ+Z6nefPRBurSLlWH/VEwymi20itp+GFNW7VfW8SPWyKvTn27ritTmLin1zW0o2s1SAqGLQ1ZcbDgZbDUEjAX14yBzUwBtlQy+t0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR10MB5047
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-29_13,2024-03-28_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 phishscore=0
 bulkscore=0 spamscore=0 adultscore=0 mlxscore=0 suspectscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2403210000 definitions=main-2403290174
X-Proofpoint-ORIG-GUID: 8Bun0Wpz1m7jPC4nZp5KGkHUMKfXmakd
X-Proofpoint-GUID: 8Bun0Wpz1m7jPC4nZp5KGkHUMKfXmakd
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh
 server compromise


On 29/03/2024 19:54, Ivan Delalande wrote:
> On Fri, Mar 29, 2024 at 08:51:26AM -0700, Andres Freund wrote:
>> For which the exploit code was then adjusted:
>> https://github.com/tukaani-project/xz/commit/6e636819e8f070330d835fce46289a3ff72a7b89
>>
>> Given the activity over several weeks, the committer is either directly
>> involved or there was some quite severe compromise of their
>> system. Unfortunately the latter looks like the less likely explanation, given
>> they communicated on various lists about the "fixes" mentioned above.
> Knowing this, I hope the recent kernel patch series involving the same
> person to some degree will get extra scrutiny:
> https://lore.kernel.org/lkml/20240320183846.19475-1-lasse.collin@tukaani.org/t/

I *think* this patch series is safe and was just pushed to make more
people upgrade to newer versions faster (you'll notice the BCJ filters
are Co-developed-by: Jia -- not implying that Lasse was acting in bad
faith here).

Of course it still deserves more scrutiny...


Vegard
