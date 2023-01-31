Received: (qmail 1600 invoked by uid 550); 31 Jan 2023 17:42:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1531 invoked from network); 31 Jan 2023 17:42:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2022-7-12;
 bh=uZhlxgpz647OMTvSaFwQPSoVwTD1S+PxjCS4A2pm+7g=;
 b=INIzxFm+tE4Ahrgpb3T7M0e5KJZSsmDjzmnWACb/0f0t4hd14YYBh2shGEgBDTIpbvmv
 Uiewx76VdRAFWcmyoBMEr3RW+F2kCDdQGLLC1nzwn1GNE68ldp+kQ7K759iTVGZC7lmh
 LdRvvejd8GNn4HaJqt355JOF2qKioW6FvxbG++TOkoJDJENFqtn2AbLII+uUq9LzfmuM
 bfGXp6jOtoErO1yXdl5w5WB1cKw6peaJ74/jhsF177eGDRD0reR/uO6wZ4nCkVSFThCX
 pzn7A5SBOVQ48vOd44W/D+TxeK/tENzQxYSzJPICsSVqxj0fHVl4hOlfIy/0gP7/sxyn 0g== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JQrL6yBQsmqDXS4QJv1kAClPvXWPC3KeNnObh7ezrNQjEbcMKJ4HtWQN+VatofEj8wXbQrmZIMC/5gkZHjDf8JObvd9feNsuiMCaVGOfbXh48uAqM60G2pUWBnyiFqNpzj04sFypbZQDOH05H2x+OCmQblEvMFinI4g8Pv9ntodlx8ywBZGYW+vxz0YotQZrEsieQYKdbnLDKshDlhVOB0z332MeI53Hhy7sfU9vbnlyILXMpgqD6PjpLMHvgfVTgCZBSIECs1Ndh91ebyRxN8a/tZzhWOXo/XDLEsmOB/Ctt3bgdenb28Pb3uvTeOTsO4UfcLyFj5sEhAtIfa/+Rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uZhlxgpz647OMTvSaFwQPSoVwTD1S+PxjCS4A2pm+7g=;
 b=RiMLkNFcanyoXpm4jRh3UY2sYyNbYB9vnumQ6tiKOwAKw584IHaVryvQmxLCWBC0mDPUoicCEdrX9IR02l6o19QnKM0mqT4g7VRunhMUbVUl/kcbkoypmTS3H5NAQEd3wB4Qy3TY8FZxbgjhPsko+YAWheH+QOwfupuo65GvJxhxo/5JGbEPy3FMTwaLu6IFXgxvCcECnc65CysU58A2tyqvQ6ohpItwWjxvSW9RPjP8iNuJ57iXEUHccVjx9tjWKnAdO807WSW1bLmMZnUNvJtVP0/R7cscoDLxnwgnsDzHU1FrqYBKLm9UKbd656kF85HvxMw/10GKytNZM/0Yvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uZhlxgpz647OMTvSaFwQPSoVwTD1S+PxjCS4A2pm+7g=;
 b=OCZUYMLQ3kNwfa3bWaAAsJDelnvXm20fMhFB4pEzwmGawlLC7OyDkN5YbWfwhdEoaCK+t5QzGWKgSxlNW1yqPUOs0798H5ZdmAilpjs0WqdZyMiEil3sDi7JHSu7MNvl4T9K4GShxVUrfkBfy1JmhmhMfAtVVCwDf63jbC8SF0A=
Message-ID: <27c1d618-c6b1-e9bc-af65-1a4579f18fa1@oracle.com>
Date: Tue, 31 Jan 2023 09:42:14 -0800
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: oss-security@lists.openwall.com, Eric Covener <covener@apache.org>
References: <0e9067f8-3ab3-0d40-2a28-9bfaa46f4d8f@apache.org>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
In-Reply-To: <0e9067f8-3ab3-0d40-2a28-9bfaa46f4d8f@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DS7PR03CA0074.namprd03.prod.outlook.com
 (2603:10b6:5:3bb::19) To PH0PR10MB5730.namprd10.prod.outlook.com
 (2603:10b6:510:148::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR10MB5730:EE_|BLAPR10MB5300:EE_
X-MS-Office365-Filtering-Correlation-Id: 11848527-3f0f-4a9e-fb86-08db03b27f95
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	KK3k6JxgDnLDH7sl9Wkn+nlY10/+9cpxzs2yBEQbl/OLYk5tnaXkJosXQ1gAMoIPfCcBQ7SGTt8GpDR8BP8C1ThSDMt31lolXxE5uEGe3qFIdoBAW5KGAKaAxyrwAT7r5vsV8pT5W6EdwtHqFr7aF4pSXIP+ZLhi3LFZF6KBElFkL7e+ebA3jMYU8bCh+OQVNpNUzANV4jPckSN9On3Whr9FiNnJkyTKd8xNKtH0lUhO21WBXj0IjGL/EduY6U789tiTa9UXpzxz2DnPY5mh6NNsS7eg60jtWSIqV6RdQqegpmbvakE3sDZvWP435rXoRmlCdcrWkC6OSy1c6/0G0X415tHaN2s3KZaU9cCZSNC9RxXfsCAUNQezavUHtSgTuV5tUK3RbGQWO2mi03pT8XwIGrkgzWVQAwsz2JAzsFD+LIPkL3C/4EJbMQ75KIVRArVtl5zEXY6Yg1+x5O6lmmmt+ktP9f2WSbTHVMi/hwuHyFC4dh024hiVzlap2l+zrPd0zH57KRSZ3Wt8tnt2qiblqJKMiFcXbQOMnisGMHv8BpNpV9Kd0LVGys/guqU8KDR2lPf2O3aO/erOD56yBVeSNgmtYaRsW/4qU5p5fWuYWiHjiEGyM1/psVwqXRNDCpgxFQjfObUzw07jy7enJrdaNLVobxC62MVYixoYJgidU1o1oMEdmY0k/pnUMXqAYddeUQdYind2zCIyLoGdvkY0utMgC/g8kAveU5OIpVg6O8E1EvF3GK4aGJEkiIHfCRlahjFC3s6iRd8wElgVM0Ga9KkZ2GfDArL00d1yrlE=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB5730.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(136003)(396003)(39860400002)(376002)(366004)(346002)(451199018)(38100700002)(31696002)(36756003)(86362001)(316002)(53546011)(6506007)(6666004)(26005)(186003)(6512007)(2616005)(966005)(478600001)(31686004)(6486002)(44832011)(4744005)(8936002)(41300700001)(5660300002)(2906002)(8676002)(83380400001)(66476007)(66556008)(6916009)(66946007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RkdwTk04RUN3Z0lwVjlNcEluRnpCSnNIWUdidnI3WlBZeSs1NzcvMTgvSVE3?=
 =?utf-8?B?emRJblFRS3cxaFRZb2xTblArbkZjWUFlbHhGWm5iME85SjVibmdXZStCL0Fj?=
 =?utf-8?B?d25aVU9PcHRVaEpicEhLdCtUeXFndGdlU0lQOXRMQXIxMXVySks4a00wNjdt?=
 =?utf-8?B?SmV6aDlCMTZldEJkODZCbWRjZVpFKzBEMFRJcHpFK2FKUkxiZnRLU2lyb0xI?=
 =?utf-8?B?U2VVa3J2SFcvbWQ2RUE2QjhDQ2ZUbWtnT0l4YzJvRVNEOTBpTS9XQmp3Y1VU?=
 =?utf-8?B?VmNxOHlCL21ZNFJwYTVOSnRSYTBxQ2Z5eGZUbVVlbVA1K0FQSjNucC9nWkc3?=
 =?utf-8?B?SWFZQWhTdEp2QTkvZm9idDRoV1ZMR1hTcHROWGNtUng2cis2NXRqbEx6dUhm?=
 =?utf-8?B?UklGbHp1amtxRGU5am0rVWZXa3gxR2VkbUUrZXRXNlVEdWE3M2IzRUk2STdx?=
 =?utf-8?B?MTZyd2owRDB1MzRNT3FJeTZpUWRuOER4NjdQQnd2N3VwUWwrSkFaTXNtK2hS?=
 =?utf-8?B?ckRCSlI4V29yUnVTbEtWMEp5WHIrcTlDWkVLWFVXbVFHenpSY2VlaG5RU1Jo?=
 =?utf-8?B?NW1ETEJUb1QrTklXYXEwRWZnQ0NMV2lDVlhQRlZyRmpxb3NOOEFUWVQ3ekxl?=
 =?utf-8?B?dUZKQjBtWVhOMm0vOU1XUlZKd3ltSVF1Z2xxMjFLZlFJT2JCbGxQL1FUSE4v?=
 =?utf-8?B?NWMrb1NVVnJ1V0xYSEo5TjVySm9IOG93a2g3NFJGanlnRUFyeVVFYmxua2tN?=
 =?utf-8?B?dWZSKy9tUjZaUGFmR2tWczdqM0xXTmpXc2pURlF3T2pJKzJJdkhzQWI0RGlW?=
 =?utf-8?B?MEFrOXJHNjZ4aFBMSkdjZnZZZXpsUmJvaUhSODBRQ1NSRlZSTGxIeisxeWVG?=
 =?utf-8?B?YmZ4YXVpUHh5UXY5Y01lZ2c1RWdwT0JSK2YyTnBjR29RcGc3cjVRdUJoSGtn?=
 =?utf-8?B?bUdZRWVYQmJEZWt2OGZ0QjFGNTI2S09uZ0xzUzR6UkZLUE5tWnptMFJqeE9G?=
 =?utf-8?B?cC9SRENlbXFxeVFwVFU5V0o3eDViOGRKYllLbjhEMlFNdnhjNnVLNzBFUlFX?=
 =?utf-8?B?TE54SVhFNThTRnUzUjhQRi8zRVY5Qm5SRml3OHU4Ym1PbEplNEpNWk9WQWJT?=
 =?utf-8?B?SEpBTlZxNXV4enBMOUJsTmIxWlVYcEl6WUF5L2M4VDhpY2VyYmFRK0JRWll1?=
 =?utf-8?B?VG51U01MOXlhYVJ1Y1VCWEF3S3ZzYkNhVFNnNW1WN1c2OVk1ZkpDWWNIaGhM?=
 =?utf-8?B?Yjg4eVNDcHVsWTMrY1o5N2ZTLzRuSFU0T2hEQmdxTHgwb3Q5VkI4QU94VjMy?=
 =?utf-8?B?NE16SDdiMjMxWTZCcHF5Tnppc0xPazNaT1NaUloxK1h1aGZHc2thYllKL2FX?=
 =?utf-8?B?c0ZzNUdQcXpidElYaDJaNkEwaEgrYkZpU0lSOFd5bG5XY3FLc3UzT29TZmpJ?=
 =?utf-8?B?dlZIZXNBaTdIeU90eDJ4MVZYb2tYMkhYSXlzazhGSk5LditTWlJCT2d4alVN?=
 =?utf-8?B?dThWTDEyTzc4dklSOGo5a20xbGgvT3dXNUgyUndET2tNTFZtVG13azN5aDhO?=
 =?utf-8?B?TVl1RnprVUdoQ1phS0RPVGlFSEswL2kxYXltUG03bXJLZW5uNE01ZlhZVGJx?=
 =?utf-8?B?SGVXWXU0S3FmMkdEK2dMdU82a0h2VHVmU05lSWczeVJMaUJYdkc3cE9McGZG?=
 =?utf-8?B?TWtnOFpHb0tEbjNISDhVY3N4WHJnRHYzc0tQUzdJTExBRkpIWWJJMGlPbXUy?=
 =?utf-8?B?clNDcW1sSFBsNWxURXVHS3RkbXFBeks3eTBPWVBOQVdXUll6SUxNRWpZWC9m?=
 =?utf-8?B?c3pQRVB1cmdzQzBsUG8zOUFVbEJGS0d6dTBCMnpxUHdRckNISkNuOFZtNk45?=
 =?utf-8?B?YzhqYzZnTDZpS2xheWlzd1NoQjdHdUpTWUl0SW5EdEdJMUgydG45NEpnbW5J?=
 =?utf-8?B?Z0FUQzljTFh6UGg5T2JNSG9PZXpVK3JYUGZZMFZyKzZJQ0VZR1g1ckcxNEh3?=
 =?utf-8?B?VGFDSU5NYlFjTWM0OHV1QlZlc2tFUDVtSW9RdlVvYUhoQWw5dkR0bVNJNU52?=
 =?utf-8?B?aStCSmVybUlDdlVEK3R5blZscEtxVkhuTG1tV3pVR2pPZjkxOHYyWitUVkRo?=
 =?utf-8?B?bUc5MURwdE1GUlRvRTN2U0dDMkJsMXFRbjhmZDBieGRBUGZ5UHF6dHFTSlRp?=
 =?utf-8?B?ZWc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	re5HxCBOXIZa/gVDbY8b6ufDiDo5ewBHSNyijjs91JTam7OKOl9vupOnoic8Rm5KMCvYfDMYAgrI5aMS4UfjL3WZolWJ83Rg/EZy0QYmFt5Fc+AGHRc8dE93VtiEWgtefIVuhQNtDcozIsI/QgqOjAr3piwAUu7WSfzrDs9JuoEblmD+7ZFR4QTCZVTAIuRCVVv9Ts7NqNlX4q0rufU/WmlxuYXM23dxdqF0kWfrKBvtoGj7KXZsPprJziOuqnskzQiycg6JJwN3+Ao7eMT4+lglZEPcjpiGzyCzCWjBQM4U0DsxkfAFc5ZVMAoKE5o3o0RBmCf8YAonYqkSY60V8X78cjA0nn/yROyjSv8Oo7EFOEpkjfvFt5YEYxB0i9oSepDy2Spk5+7xucLZeQsb1i0sPmcsN1Wg8SndRB3mXWro8CLsAVIPAiXuYhlh3yROhjeUHCb8RZTZAEMtGhbnzXS6Ntro/7TSGOVNlzBmUifn2o1LpcbHX3bDe6hAmvjX/OhgTKvtU5GgBq+mgKB8enlgCgGaARPbyIWvAyJvAbyRdoAm0Z5PLNu0D3ExqEtdmchGlBcDn75PuZMH/UBGWf+apC1LrCzw36pQ/sSFrE31RXpjgJ7CAVg/1QR5WTLGgci6ZskuYkaPrK1Pg+HHK0GwpGL0UwpEzjVev9SxhrvwLtEjEzJqrHaWKLs2A/QVA3/8FlQgFmQ8x9tFmJiMAxdhpiYQvVfoZqKjtdDXKdD8urAue9BQwfrUIXAZBo3JhZv268+FueDiK2no3hicIVBLqnTy6ebzaBOTEIqNK24=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 11848527-3f0f-4a9e-fb86-08db03b27f95
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB5730.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2023 17:42:18.4841
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Mmy98MgzY9Bz3E8YeJOAakkGsIHJhd7iRZoev9+fTFq7Sp4PX3fPMNYEs2ecsqG5lehJqyqTn/OzX23Azg9iMNp/FbNz6fL7r74CQw0o5RM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR10MB5300
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.122.1
 definitions=2023-01-31_08,2023-01-31_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 adultscore=0
 suspectscore=0 mlxscore=0 spamscore=0 phishscore=0 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2301310156
X-Proofpoint-GUID: lblLXqYi-En7OAmbK-KD1qvuCpRZZT48
X-Proofpoint-ORIG-GUID: lblLXqYi-En7OAmbK-KD1qvuCpRZZT48
Subject: Re: [oss-security] CVE-2022-24963: Apache Portable Runtime (APR):
 out-of-bound writes in the apr_encode family of functions

On 1/31/23 07:12, Eric Covener wrote:
> Severity: moderate
> 
> Description:
> 
> Integer Overflow or Wraparound vulnerability in apr_encode functions of Apache Portable Runtime (APR) allows an attacker to write beyond bounds of a buffer.
> This issue affects Apache Portable Runtime (APR) version 1.7.0.
> 
> Credit:
> 
> Ronald Crane (Zippenhop LLC) (finder)
> 
> References:
> 
> https://apr.apache.org/
> https://www.cve.org/CVERecord?id=CVE-2022-24963

And what's the fix?  Is there a patch to apply or new version to upgrade to?

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

