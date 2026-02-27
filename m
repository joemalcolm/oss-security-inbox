Received: (qmail 25811 invoked by uid 550); 27 Feb 2026 18:38:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25773 invoked from network); 27 Feb 2026 18:38:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=CyIQr08Em+J7GJQJ
	J3fDRzzV7lMRHOIxm93D8cLsBoY=; b=lyNllbEqVCPplyF+nkyeCRDFXiKD7Chd
	H0TV8XP6U5NE5HmCdmAGnhOYKGPK0pgd/Hr9KS77+L5u4thCC3atSNGBRqhJqMki
	OLbaCo5UegsENxUPonOaXRUUL0AmUO8nTRCQ/+y6mANyqb9vZOimNhEwfHWSo+WE
	4MptJahM487bCnFYEhyYMuGnW2Lz40Xz8rM5vnLdzzrs2BxY7/Px4GksfRDT0XWC
	kHNAJJtboPZMa85vWUHikdRwhmtQ62Ji5VYieAkZ2m8zSM5dsulXO/MdW2kmFn+q
	giDHB1FeGxK7i8UCwxoLChaWYGK38rl61oUzSpKAD6hXYaPmiSkWHw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UQHsNykeHOb2phKz8vFl/TB6azRU6PAaqHRIW3P6f095DNgnZmf34RoESNHkKr6fAQFTXAdUTz4etyzj/2mvZIgsEy+lzTWXtcCXjhfet6lhPWRg7QcSNkprU4cM0DquKPuWFOEyAgQYwuKi4omNmlRKJpDMBZMgmuz6yDl12Pn61WifXRQ9u05xDldP4iEw8YXdlKKuGyHazMZttyax18b08R11NxS4RtTxzkads5yv1oqyI6cN2tlEf5V3pxO+54DJ35B1CwvAC6+d1KqVfNfmSwe3a4l9arNVniG4WDeaF4MkOqpjRyZe3rxd2JmktZmWz2pUXuiZwtD8r/qk5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CyIQr08Em+J7GJQJJ3fDRzzV7lMRHOIxm93D8cLsBoY=;
 b=cdJOpBc3tkWHCVaIYMWmS2mK6UlUBrGOkkWTq3TrFgGWQv9YkoPlMd1g/A3rBlcyK4sWfSK9NolTZKKn7Adx/dLt21hg7s7yaHR53eSdaTFqf9P98oz3hsTib1NwiI/jm8ekC1crLmsx55YRH4TgCxju9lOhjGcoywDEV2waJc6NYXB9sZEF5YjP/ay200qMcbJT9GIKr2FaHT6awLhDugtrRTz+4tb30kS+ZFjjA9Yi3IHlRGty+eGbDsa6Wso+We/dSwcj024L54yodipwmDHnHTmCFrvBHWb4ZNrB5bUPDRK5H9RyKXbUQbCeIUVb1KpnsWlaIYLClpYTRWks8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CyIQr08Em+J7GJQJJ3fDRzzV7lMRHOIxm93D8cLsBoY=;
 b=ckQWSSkViTSQsorJlQMcuV5iXrjaV/sGfZTr+J7fiGOFNi2uguCHbvwrrXn3EbHomt2unf19rQuQzwQT1u317OKRdSCYf7Do1L0SmRok6sSqqH+fmGlGXAzzivdVUOx75LvqBsdsWe1K0Em/a9wy/IwskhA+xSP/Q4Is9pBivpw=
Message-ID: <a671aebf-fc45-4d06-a1dd-5ed6664aaa3c@oracle.com>
Date: Fri, 27 Feb 2026 10:38:40 -0800
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PH7PR17CA0060.namprd17.prod.outlook.com
 (2603:10b6:510:325::24) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|CH4PR10MB8225:EE_
X-MS-Office365-Filtering-Correlation-Id: b3caf2f2-09ec-40b2-40a0-08de762f6e88
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|13003099007;
X-Microsoft-Antispam-Message-Info:
	afYzDB/SAE5/AoNfsgqPJlI23Sea84n+QMfNECJHpfR1lwVtyslPhn/LVuzGOFA6buvb17F9MGezBNgRAGmc/zFnkpeinxWqZMR/VERzrixnEwaDKv+oF7lFtj1KgAV6hA8SSUYkZ2pdUTeUPHKCAr/sNu9DbibsBfjNPCT/2YAhw6yrwa4BMSccMZbAbM022s0dOd2DZt+yqTRpKBgLAz165UcpWrRa9hfHrOmWTKl6+RTA6KbsyO0Cg6tpU7Pno6/z292bdv+mUlsVmgB77b7ivHDfTq/lpyoXn7cYEHILgEEQiOppWVhdW35W6Yji/ve5kuomZWBW3mR4EHTBMlDhv0WqaaAf+JvsI3hECdyyhXEI82f4Pq1VTCOCwnEVMONufisy8CePd/T5Oe388N4A+CoJO2dLCZC19/yJXlU7mhp02pm0Kyenn80L8LERdZteicweZSuWRElVWPh7BAOJpULI0gx7ciIso94gwy3MmQuuwXpLfMpODKtDbGOoWAVd+CAbrdsc2qAqtfjMAnhrL/DG9PLOhyihlQq38Te8Vb/VtkVpDcLNzA5vQ4EPNSljTM5NS608daQcoeLqT+zl/707yK0ViWsP9unVTGUw+u3nbErHrEOMZfuySMeNnn2fRxVx2LLnlOh+F3WB11I0OSiSqPHO8XCUrmK5cruMbLtgCz3fb9U1B8dVWNBd
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(13003099007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Wm13dmhCZnBUL3Jyb3UydlNjVFh0YUdVNVA2NTNGNzI1Z2JBSHZ2NVl0U0Ji?=
 =?utf-8?B?OUltM1hJcmprMHFTYm94Y0p2THNYMFVaUFd2QWZmS1RFajhmbllQYVV3MkEz?=
 =?utf-8?B?NldFZFFBcjNwcFE2K2Fxb3ZwSkd0QTFEWUh1NjZHdjRQM2c4KzVDQkhEcGVY?=
 =?utf-8?B?cjF6S2tRUDZiL0pmdTRBb3RWSlRIYXdTdE9qYkdubTBnRzFZVWhnSTVLUFJV?=
 =?utf-8?B?UGpzcnkwK0w0dXhRN2MwV2xtY3lGaUZmSXp1c0hsRlNjMjFvU0paaGRsQmhJ?=
 =?utf-8?B?VTl0NlRlUXBRTkxMajR6L1l1RXU1dDA2T3QycXBTbmIzakp4dWpwekh2RFdC?=
 =?utf-8?B?WEV6ckhBL0hTRGwwYU1YclhQdzA2QkxOLy9UNWNaNVdYcDlkZmd1Y1BmYU5w?=
 =?utf-8?B?eHh6Um13U3pJcXMrVllDYnB4RmQ2eXZFUkR5TXh1eGpyVzltbVBKNVg3VHlx?=
 =?utf-8?B?cm1FVDFXb01vZzVISDBlTEtNNVZvUDRENjh3SXZtRDNGYjJ4SThXS3NDYzhF?=
 =?utf-8?B?Z0NodXNlSFYwSURDNmk4cmRicTFuUGZCUTQ1VDRJUHdDVUlMbXRYSVRpbGs2?=
 =?utf-8?B?NHhXR0lZY2RRbU5UNHRBVTg1WUVFMDdSaFJJVTZuaTZJMjJGVjlDM3FURGl5?=
 =?utf-8?B?cWNvK0hBN3FSTzNWa0dQUm1saFJMSmttUHNyeFZEalg1RTZOTmZ5K292ZjYr?=
 =?utf-8?B?amlyK3dNMDJIMWQ1MWdnUjZVd3V6M0pZeVBUckFIeFNqOVc4RUY3bnF0SWRT?=
 =?utf-8?B?UitTejNSNitLQWdRZ0FBNno1UUpVajVMNms4TmNzOWcwNkpvS3h5QmhELzZv?=
 =?utf-8?B?R0svQmFtZURtS2ZlY0UyRlczZlhFZEJvM1pRTXpwY2pab09SYkdWN3ZrUE5p?=
 =?utf-8?B?Z3FyS0FKNnJQcHpLaFlGQURSckFRcGZSUGJmUTBlSFFBbVgzZDFBdCtLcnpP?=
 =?utf-8?B?WStJd1R2emJLY1ViYVRzZ01ObFFVeC9pYjRHckZVMWJqVkl5TjZxdlBqdWFC?=
 =?utf-8?B?Tk9JK2VOUnlTaTYzSGdHOXQxU3lrQStjZi9RTXRqTkVJUWFqRkpGZTlQbmdq?=
 =?utf-8?B?dkQzV0ZyS29XbmxpaVFOS3JOOFB5OE1UcWFLL24rQUZLajVTZGxEK1NCSWhL?=
 =?utf-8?B?aTJ3YXQzVjNHSjZ6NFFMMnlMMmJDODBhVkp4NkkrTS96aGg2a05iSUpmbk1P?=
 =?utf-8?B?WVhKbmp3U3pSV2luM2EyM09oMUVLVTBPWmZ0WXI1RTl1MzZtUmFOM2xyTXk2?=
 =?utf-8?B?VnFNdlpUclB5RkVJWjIxNUdMSnlsR3dnRVhvNUlodDkzL1JHcUVDQ1c4OXlU?=
 =?utf-8?B?VzZqeHJ3T2k0Y3B2K2hrSzhVaWJpSW1TWmFheXI0dGRSTm1PZ0lKYlhFWDQ2?=
 =?utf-8?B?UFVsemtmbUJYbUhOeFpaZDlqdWJuU2trL0l6SWVKN3RKVW1JbGpIMElCK0NG?=
 =?utf-8?B?NnRuSWYzVDNvZkJBenI1TmVPUlVXZUQyNUo5SzM2eW1EMzE4UFN6MFpSby8z?=
 =?utf-8?B?N2lJZkd5a0d5clFHdE9xejVURVN0endUd3ZKM2pRWWlnOUxTNEFjSjNtK2RH?=
 =?utf-8?B?bFpDSWppL2NaRGxOY1BUZktYdVBnUHcwYXJMNGdleDR0aDF2ejkzS2xZQ3V2?=
 =?utf-8?B?Qkl5VFdCQWxyV0ptOUFtNzFFQlpOUHIvb2QyNUE3cllBSlZxeVJEdFNpOFpD?=
 =?utf-8?B?Y0dZdTJFK0FjalRvRVRLeWk3VG5OT0VNVzRRV0hEeHJSZUhkU3Q1a2c2VnN4?=
 =?utf-8?B?V1JoL1o4dHRqTFZDZ2o3L0NBbGpFQVkwcmgwNUxMOCtYQkVGdGJvakpKUlpM?=
 =?utf-8?B?eW1JdEZjQk1nVlBmeWtlSjNTcUFrRlpxUVJsVWdMOFVEN3dobUxHczRNNEZk?=
 =?utf-8?B?MFdndVFuYTg2Vzh6cE9XT3NtdkRPa1N4QjhiMmtKb3UyNHV2Uk5ncjV3K1la?=
 =?utf-8?B?REpUZ3B2aHNHTGlxQVNKdmk1SlE5TFZ4czd5WmZkOVlJNDRJT0VldFRQeXly?=
 =?utf-8?B?M25DTzlOM3NBdWxhcWcwRFZ4YlpPUEdXYk5OL2RVNHZaYkg0c21MLzBkRHhZ?=
 =?utf-8?B?NXBKQ0F3ZmozeVRhQS80UGZPMzV6eDhNWmhlaHBzL1RXZXIwODJCY1VTVDlk?=
 =?utf-8?B?eWptU3hLUTlsMzE2N3RpbG0xeENxM1RLT2dFcVhNR2JTaWRSd0pmdi84SU54?=
 =?utf-8?B?VXIrcnlMcG1ROHFZcTVFU0ROVzVndjdicEZRaEJ3V2pwWWlaZWZvUFVCLzBQ?=
 =?utf-8?B?eWxHNWZEZ2ZPTXRsUTVTYWhxeGhkUWVmaEFFWlNrdTRmOTVLWFRXU3Z0Zzhv?=
 =?utf-8?B?UFB1RGNUay9BNWFMZEEreldBdHpkYktDRXpQSnRCOXhhWi9YZDgxTk1kVm5x?=
 =?utf-8?Q?f+u6BcmoiV+KlYxA=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	t29GMB3v7cxWce45P7DkMy5BGC87Sl4fXVd7A3AHQ+KOrjGsDMBjNPPea6gWJLdSw6AsTX3FWnZWO01Wgtz9NUClTUfidQB9iCMXPLw6dsLR6V1AxSM6IcCp9g9iEkDiaNUPIXU3zzips+kJDc6fLBlUXqiBUGeOSigVZ6kJYzvQ0GXMIZ+eFNg2M6XwqovZrWe9OOCaOZdMo18C73hKXq+e2hoR9k8LcaVuVD/9iYuRSckXxJYgnApZ2nhT48L9YcKshJrMUhHR7DCqLspCPdKzDsx/aIw1u6ABcwI0dwwcub26Vd0a9yFHNsN8oBC9zX2WuOBy8ypQcjdjbfJAoy3+uR7tmeSv8/KkXa0R9COoyu3WMKAt6E5Derx0r5wNfHeO22JbYvck6q+Ezt2t0iPSMowkCPJ/F6wKA/vOUViGAdYH6NCA6cbekJruDJ1BfULiKn2xtU23Dcd8mg0Ktp7VfkrVI6xs3S5pNGW8WepIQOTa05vdwxKFFRtqPc+55svRmZiTX3Zhklz3fYZAQGtZf5G1VzoPrctpLss5PMOm4XX6Zst0GwcSTNwWb2DqkhATKJpr0xKC9KTWSRw2vgk6arLdKwwFWS6zB7ZgAj0=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b3caf2f2-09ec-40b2-40a0-08de762f6e88
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2026 18:38:42.5271
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZLwYVEgBctCdq/Y1lysZvzU4I5ZmpYCX87qnoBX9DqzWhvUp44iUiYKtRETXqsl5VeMYBpR74tyHdm47sv6Bi348D42kSfAp/shaLSf3Bl4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH4PR10MB8225
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_03,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 mlxscore=0 suspectscore=0
 spamscore=0 bulkscore=0 adultscore=0 malwarescore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2602130000
 definitions=main-2602270164
X-Authority-Analysis: v=2.4 cv=O5U0fR9W c=1 sm=1 tr=0 ts=69a1e4b6 b=1 cx=c_pps
 a=zPCbziy225d3KhSqZt3L1A==:117 a=zPCbziy225d3KhSqZt3L1A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=ZOzjf2MOAAAA:8
 a=uVn2tjYAAAAA:8 a=NEAV23lmAAAA:8 a=yPCof4ZbAAAA:8 a=d7xrbTLhAAAA:8
 a=fK3q6N33Aqr6ePN5LqIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=1Mhi-5-LkjG4w5oc0yAU:22 a=i9ajM16GGMt3q4i3idVD:22 a=FCLHMh_1kHsesC3CXfL3:22
 cc=ntf awl=host:12261
X-Proofpoint-GUID: RUBmrN1Q53A30TqatHklE8rSG-1Vdab2
X-Proofpoint-ORIG-GUID: RUBmrN1Q53A30TqatHklE8rSG-1Vdab2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDE2NCBTYWx0ZWRfX5kRP/mMMKU43
 Me2Tw+7SZp7ri5Xn3b1hA+rGTTjNjDg2C4gW9L1TxDSV1AxmW58wUnNFcDzRg7/6E1ZBAX3kz3H
 +RHwx9hQX39j3H4y6egqJYLFdM/nmmdhM+NT/BqAk56awBs2yeyMR4dyf6309mUasar+JKOCrJU
 1yGLWIsTjZ+ekz0Sy5vEZwy9FvxsO1zproaZiuIBLp90yIRzr+aCCR1EJlc32igkGFmFrapqdiD
 cUu7GRGjKRLlUVtXEX7ufh1NcbMjvwn/h7NylRly/AAXPG/Vu7YES2tJUJywxfEXgWx3AFU8r9M
 icHaVbAkzL2UNs5xIVdmOmrZaZssUHTtDSJlopdh0oKMc8MmV7kMXKgF785/o3Ol26vevEcHXYq
 iJBphQcQYOT4xeFdGID/Wb0dvOzwe43dB7NxXdfIVPpMjdQEYr4rIk/VsNToapWo1s1zwKUmhTw
 66npDIlu+Q4xyOqZAWgt0623k8nUMupL6s0QKt0I=
Subject: [oss-security] OSEC-2026-01 in the OCaml runtime: Buffer Over-Read in
 OCaml Marshal Deserialization

https://sympa.inria.fr/sympa/arc/ocsf-ocaml-security-announcements/2026-02/msg00000.html 
announces:
> From: Hannes Mehnert <hannes@mehnert.org>
> To: ocsf-ocaml-security-announcements@inria.fr
> Subject: [ocsf-ocaml-security-announcements] OSEC-2026-01 in the OCaml runtime: Buffer Over-Read in OCaml Marshal Deserialization
> Date: Tue, 17 Feb 2026 15:16:54 +0100
> 
> Dear everyone,
> 
> it is my pleasure to announce the first security announcement of this year,
> and the first on this mailing list.
> 
> It should any moment now also appear at https://osv.dev/list?q=OSEC-2026-01
> 
> Human link: https://github.com/ocaml/security-advisories/tree/main/advisories/2026/OSEC-2026-01.md
> 
> 
> ```
> id: OSEC-2026-01
> modified: "2026-02-17T13:30:00Z"
> published: "2026-01-24T13:30:00Z"
> aliases: [ GHSA-j26j-m5xr-g23c GHSA-m34r-cgq7-jhfm ]
> severity: "CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:H/I:L/A:N"
> severity_score: "6.8"
> affected: "ocaml" {< "4.14.3" | (>= "5" & < "5.4.1")}
> events: [
> [
> git "https://github.com/ocaml/ocaml"; [
> [fixed "b0a2614684a52acded784ec213f14ddfe085d146"]
> ]
> ]
> [
> git "https://github.com/ocaml/ocaml"; [
> [fixed "e3919fef436f89271bc30bbe8592851f7289fb68"]
> ]
> ]
> ]
> references: [
> [report "https://github.com/ocaml/security-advisories/security/advisories/GHSA-j26j-m5xr-g23c";]
> ]
> credits: [
> [reporter "Justin Timperio"]
> [remediation_developer "Nicolás Ojeda Bär"]
> [remediation_developer "Xavier Leroy"]
> [remediation_developer "Gabriel Scherer"]
> [remediation_reviewer "Xavier Leroy"]
> [remediation_reviewer "Olivier Nicole"]
> [remediation_verifier "Mindy Preston"]
> [remediation_verifier "Edwin Török"]
> [coordinator "Hannes Mehnert"]
> ]
> cwe: [ CWE-126 CWE-502 CWE-754 ]
> ```
> 
> # Buffer Over-Read in OCaml Marshal Deserialization
> 
> ## Summary
> 
> A critical buffer over-read vulnerability in OCaml's Marshal deserialization
> (runtime/intern.c) enables remote code execution through a multi-phase attack
> chain. The vulnerability stems from missing bounds validation in the
> readblock() function, which performs unbounded memcpy() operations using
> attacker-controlled lengths from malicious Marshal data.
> 
> Please note that Marshal is not type safe, and you have to be careful if you
> use the deserialization on untrusted input (due to type confusion, and remote
> code execution by design - you can use Marshal for code).
> 
> Affected functions: `Marshal.from_channel`, `Marshal.from_bytes`,
> `Marshal.from_string`, `Stdlib.input_value`, `Pervasives.input_value`
> when reading data from an untrusted source.
> 
> ## Vulnerability Attack Vector
> 
> Corrupted or malicious marshaled data that causes undefined behaviour in the
> runtime system when unmarshaled.
> `input_value` should either fail cleanly or produce a well-formed OCaml object,
> without corrupting the runtime system.
> 
> Consequently, this excludes:
> 
> * well-formed marshaled data that produces an OCaml object that is not of the
>   type expected by the OCaml code and causes the Ocaml code to crash or misbehave
> 
> * misuses of the OCaml runtime system by the program performing input_value,
>   such as setting `Debugger.function_placeholder` to the wrong function.
> 
> The former issue may be addressed at some point by validating the unmarshaled
> OCaml value against the expected type, using the functions from module `Obj`
> and some kind of run-time type description.
> 
> The latter issue is a bug in the program that unmarshals the data.
> 
> ## Fix
> 
> ### OCaml runtime
> 
> The OCaml runtime has been hardened with additional bounds checks. An exception
> is raised on bad input.
> 
> ### Third party libraries
> 
> Third party libraries that want to harden their custom Marshal deserialization
> code can follow the example fix for bigarrays from the standard library.
> There are new macros in `custom.h` called `Wsize_custom_data` and
> `Bsize_custom_data` that return the size in words or bytes of the allocated
> custom destination block. The deserializer needs to ensure it only writes data
> within those bounds.
> 
> This only needs to be done if the library defines a custom type in a C binding,
> and `struct custom_operations`'s `deserialize` field is not set to `NULL` or
> `custom_deserialize_default`, and `struct custom_operations`'s `fixed_length`
> field is set to `NULL` or `custom_fixed_length_default`
> 
> Since `Marshal.from*` and `input_value` remain unsafe to use, the fix for the
> OCaml runtime is released, and we wouldn't attempt to coordinate updating all
> deserialization functions in the ecosystem.
> 
> ## Timeline
> 
> - Nov 4th 2025: Discovery Date: Discovered first in OxCaml
> - Nov 5th 2025: First Disclosure Date (Jane Street Team): Emailed top
>   maintainers, no response.
> - Nov 9th 2025: Second Disclosure Date (OCaml Team): Submitted to OCaml/ocaml
>   GitHub Repo as a Security Advisory.
> - Nov 11th 2025: Emailed OCaml Security Mail List: Submitted to OCaml over
>   email, responded asking for details.
> - Nov 11th 2025: Third Disclosure (OCaml Security Response Team): Submitted
>   to ocaml/security-advisories GitHub Repo as a Security Advisory.
> - Dec 16th 2025: Initial patch is developed
> - Dec 17th 2025: Fuzz testing found further issues
> - Dec 24th 2025: Final patch for OCaml is developed
> - Dec 25th 2025: Fuzz testing couldn't find any further issues
> - Jan 2nd 2026: Patch got reviewed by OCaml maintainers
> - Jan 4th 2026: Benchmarking of the patch with good results
> - Jan 6th 2026: Reporter got contacted to confirm
> - Jan 25th 2026: Further related issues discovered by fuzzing
> - Feb 17th 2026: fixed OCaml releases are published, security advisory is
>   published

A followup note in
https://sympa.inria.fr/sympa/arc/ocsf-ocaml-security-announcements/2026-02/msg00001.html
notes that the "published" date in the JSON was incorrect and should be
2026-02-17.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

