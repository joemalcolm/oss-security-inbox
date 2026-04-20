Received: (qmail 18353 invoked by uid 550); 20 Apr 2026 18:50:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18274 invoked from network); 20 Apr 2026 18:50:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=qZ5qQuuDpVFU8OS/UjAOxjehuoRWBEn95bk0mCUI8qM=; b=
	JW3+ibtFSzqC3W2mlc5MVcgbLtcS4rt3+nGeFlDS+Sp0TNok6jdEhTfoHQqMUyH2
	MuDHUF+VXEgQgQv0bn7SEdWdSDogbxrpgkyMlQxPo4UYiKBUDVUobJO7R6jmQv4e
	x5d9fTAwinnRFtKctI/PC+IeTk5GuhN5BCSBV987CGQAE/Mto//2LYNRj5ccJcEt
	F3beDbKkir7mcFVGRDg6bG9sjxSHqvUK3zvNyTID8lCbu8cpPzhxm6ZrwXRPMACe
	DfdwM+4llyGjkFM6rvAbTfYeGPda3wQvtDgfjtaWPUud8LAxb1O7/X0VS5GfdtNb
	l7QXVVLKL4KHJYo+VcE0DA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hSEL5gUYFLBbBghSVzjSEmFmVkkusGfDwyreUcDehyTfu0bVviPH8beAA9KHewNVRwAQ6WrP0tAr0wN2lpX7rm8xAxdiIsTY7LfOENtyujvsrWNauEwjtrGbZrPJ43HUoYKI75xS5uzsdJ73oduj65jj7ECNWkW0xkhmFeTsLH8e49+HD6DZBrhpgRV2ATBcsy/DlPvsEPxWrNYC3pDXtceykb1mPwJXh2p6GI4lGyhDl7m/kpINoKe7jn8jvBgobOe5aW+GsinRl4IU2hBlJKMkT56bDxl8LYbnRQJ57pDUcFgtZXjlL7m0tEUdFOMRjeXgGeu/8Zur0GQgiPp69w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qZ5qQuuDpVFU8OS/UjAOxjehuoRWBEn95bk0mCUI8qM=;
 b=HPq/ekdkBD2YJGbaiPM3Qnalv0d5k8mLq8I1xv7wdbSGbUkb59sczhgHhYTqBzOj4Q1layLu6X9f/aZxJs44jUopmRPNglS8cCuytREnZtJ17XvgowecpACXgZ/+zfb+hbmseNkzDS17D8lxOkyg+TBLyym9UGIwFrD0jDR9vfH0NRpBN5chc2mWPN9CXTi21Cuxvtc0bB/NKhcJRCwrXmuWXbziOWVAfTdfvzIEjd9fyJuP4SSo5GTmot0kjlESUdxscl79t3rlI3BP1y1dNTEhVL+k+cE/8y17AU1dGKOF3jr+OMBnSTBrN2m2wdd/OLW6LcqzB/Qm0U7DLWLsaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qZ5qQuuDpVFU8OS/UjAOxjehuoRWBEn95bk0mCUI8qM=;
 b=NisOwmPeKobP7ZHfAgcyepHe6gEHp5Efcfuh16YUSwnn+RZCTZ5y4N2EKV7Zs3OGT0QlZxewyxJpEepPqfMKEvyz0qifdqSxjy8b0awvv3CWGyeZplsMryPT/e9mHeORUUW/dJ3CeZNdD/MiQIgQXCOerl//7hZEvn2oALFdA+0=
Message-ID: <a54bb1f5-61ad-4083-a1eb-c1a501143b7c@oracle.com>
Date: Mon, 20 Apr 2026 11:49:55 -0700
User-Agent: Mozilla Thunderbird
References: <CAADqWPRTJqedtJW1A6Qi5UZYEOVfftJqbmGbLz+wnE_u-1x9tg@mail.gmail.com>
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <CAADqWPRTJqedtJW1A6Qi5UZYEOVfftJqbmGbLz+wnE_u-1x9tg@mail.gmail.com>
X-Forwarded-Message-Id: <CAADqWPRTJqedtJW1A6Qi5UZYEOVfftJqbmGbLz+wnE_u-1x9tg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH7P220CA0162.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:510:33b::31) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|SA1PR10MB997712:EE_
X-MS-Office365-Filtering-Correlation-Id: fdd1b019-838c-48d8-a3ce-08de9f0d9e4f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|4022899009|366016|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	5DUE3ZwUaMNa6H/m12Aa/ubzZuxx3sfl0pt6uG26jy0+acRL3NQ+ptLAWlVVMKrMYSFR9LgwjlhTRR5wBeaxcBWN1Drzx+rr0EMzpwKiAYgIBNrxsZsHCqoksbewi02aijghLc4jr7vmc4sPAyOCMdpAR6BDBnk6TEw2fp11zPw2KzSzotGV+cIvtqScCOQhz8K1QlkpTnmiHURtWoc8iemJPlerTtoX5pnj7DU1UHUWzaGMWD4/TC1+hvwnizrlKgmK+nZd5VJaxSooFpaGxgW6BgWkMooZfFiCb6nyfp1Xq1WHWlantfXFpM6/ItjVHNNqZWuFYqldPcimAOCuIirKxBbSmYv0RLNEvEDV8hjPatpj5XleLklXp4Ks37/TvrET/nU/B0fw7ypcRqqbao3W3npuFFUfrhxZ3CoOX54z0SbYGAZBk8pD7/SCjXLWYbXHoOF3GJzl1v96je04UIZss4lKgrVCj9iWKABdpfHS5BWR9AYpcfMm+wTotrzu4EupU45eDbpZz4+qTu+wvoAPSAdn7cdyYqtcJvCxKoQ+BYwCyUecV4Ass821Yre6b127rKnv8ChFUcHVkJsSlPe3d95bSLp4VYb7vPyK9W/53NhdUG1cyXCE5bOFnaheSEUs6+d3RWLkWA/ZzODUE3XW9h+UJuF+3EM8w0NS4TmTtq3TpK7LUFVtPpDP9xhyBzSMkpUNxk1KJnFDa4MVzEY3xFUiLErcFWMTntSzcTa3yxfwU28HhfdVSrwVVvk7
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(4022899009)(366016)(22082099003)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?dUszNGg2NW85bFVnQ3BvQVp2ckdMVk01WlNYTkJ6MW1Xbk9rZ002SDJqT0pH?=
 =?utf-8?B?OEpseSs0SExaNWwzMFJkVVkzazA5OGQ1Ukp3ZUEvTGh1M2FlbFp4cHZEWUhW?=
 =?utf-8?B?U3Nicm1IWUZMc0VPWUZnS0Z3VzQwNGw2RjJ6UXh5VXhDZ1I0RmIxTTZyZk0r?=
 =?utf-8?B?ZXRFeFBaTFU2TU9VVTNtT3FVdUZCNXVLeTRRSVhhVE14UC9KKzVOa2dqWkNt?=
 =?utf-8?B?L3EvaUF6akpyQnlRL21jRnE3dDVMOW11UlR3WGVWOFBINi9HWlFrbEdlMUNv?=
 =?utf-8?B?KzdTM1BIUGs1RWZuREtScHgzMUtqZ3RyeGxqc2EvNTA5bDZXb0p5ZThWbXFw?=
 =?utf-8?B?MTRLclU3dm5aSndzSitrNzJYVUlNc0RDTW1BeDNNTHg5VW5yckNQcWVPU2M5?=
 =?utf-8?B?c0JjMFVWQkVRWEN6MEtvaFBIdlloTktJQTg3YmljNm40TG94MmF1NVBHZ1VP?=
 =?utf-8?B?c0R6S08yUFg4UHVBNXBVVXhBRCtQbHpkRHMxakJIWDd1WmR2OEI5dXhVcFor?=
 =?utf-8?B?UWNsSnhacjNvS2ltVTAvM25qWkI0R3FLSkwvVDdtQitCL3Q3ZXc2YmVqbGRm?=
 =?utf-8?B?L3IzK2lodHNJNFdSZ2Vrc2dtd1ZhSGxyR0ZJeXJucXAxYTg0L3BTbHFZVjcx?=
 =?utf-8?B?UDNFWXFrU0dhOGhiRWI4MU5yK0dBMUNGS3Y0N0hyUjJMWlcvblBXZGZzSzFG?=
 =?utf-8?B?WXA4dU9lKy9XUzNIbkZXdHIwYzRGYm41SEtJaTIvY1hlbDNtZHduRjhBZzNr?=
 =?utf-8?B?Q0h3RjV5eE01b1BXQk5Fb1JTVzNTbWxRcUx6VDlEcC9mUWFQYmVsWXNZdUF2?=
 =?utf-8?B?UHNrK3VDeGpoWTBpcFFZZ28rUEV2c2ZyVmZ4R1FMWEtrN0FnUys3NTB0MkpO?=
 =?utf-8?B?WDQrYzZQbXErV09vUlE2bVY1V3VxdE1PSHF3WnovRW42c1lZUTFRSGRGY2lD?=
 =?utf-8?B?djZveHIxdHRSdzMwNUFFSHhoclpid0tCL0ZxSCtTTmpMa25TdjZYdHBRaXh3?=
 =?utf-8?B?b0ZuK3BDTlFHNzFrcWk3ZmlHdXFORlFUSFQxdkI5NitFcjlUK3N6NEs0VGly?=
 =?utf-8?B?SjgxczJ4STFIY2xHcm4zRHk2NnljeURDMHlyblkydUR4Z0ZaTFR4R0RKNzUy?=
 =?utf-8?B?Z2w1NVIxeFBrdWlXaTFPQi9kWkc4MVNvNjJTK25LOTdEZXA5bGJHeU0yWC9q?=
 =?utf-8?B?cXVuT1F4SktZZSt4eTdhSm9Xa0phekt2Q0JwcWFGa211VDlhMEdrVDJRVGRV?=
 =?utf-8?B?MkJOYkVGM05FWHpkTVlaZmhuVzdpdFlUd3pIbklSb2RqNitUYUl5WUQzK2ln?=
 =?utf-8?B?SEJaNXh4dURLNlJSeG9TRkxYMGx1RDRqMk16MERwRGtLd09kUXAvNDgyTVRN?=
 =?utf-8?B?azJFMkNGVVIrMFlRdytUdnVvUWRYdUtoTC9CMkRRcVh2clBLNmZMbHpzN2RT?=
 =?utf-8?B?RW9rWkhZTTQ4VVU4cU10aG9iUlh1aW1qNnoxRHQvaGtiSGhha2NCMnc4UVJs?=
 =?utf-8?B?bUprdkk3eUJuSDNPQUwzK0lRK3puRnhvaUxaNkNnVCtydWkralZ1TVNxSFdG?=
 =?utf-8?B?R3ZUSzM3c2xPdVR1WU5JUnNaMmh4OE9qRGdZejJPY1VmZ21RYUwzUUphTThn?=
 =?utf-8?B?S2o1akl2c2RISk9ON29YYUZmS0tRTEovRXhGWCtOekcrcnJ3TEx0a0dKU3Yy?=
 =?utf-8?B?NWJEVnJFWDU5MVpCTmhhNEpNZFUxcGZuUklCV1pTVWl2dEVXU3JqamN6SkJ5?=
 =?utf-8?B?NllQSVpxc0d2Q3I1aXlXNXpEOXpOaGptTDc5ejBIbXN1ZGIrR3dSVTlTUG5v?=
 =?utf-8?B?WGl0S0gxVUNvajZkSkZKcXo1MU5hRVRmODBIcEpaNjdGZldFRGxzNFV2MlFv?=
 =?utf-8?B?T3hVVitPT1VqOTU3ZmZIOVR2WmJabUdNREkvejljbUJxOU4xR0FoQ0JJNnRX?=
 =?utf-8?B?ZkFzNTJsR1BKZ1FDYnF5eFhjdGprTG5OclVzanBlZFFiZkFpZElJby9qaXQ4?=
 =?utf-8?B?MFZVNmZIZHN3YlF6bnpIN1FLU1BNQnorS25VeVlxNUlseTkzT2RLRFJDL3hw?=
 =?utf-8?B?RmpCRkZ3RXdEd01tRjZQc2o3bS9qOS9CMi8rSE5RMXYwcG9DVzlMOStVZmU4?=
 =?utf-8?B?bHBpUU1MNkhtNE9JVVdMR1dtaFB3WUd6VFEyRGF5QWl6YjdHTWs1R2xIaExO?=
 =?utf-8?B?S01vOUkvc28vK2VVUi9BNzBIS2dRQ1VOdnh6aXJxZGVQZGR1NkNXQmtWYjFx?=
 =?utf-8?B?eWhadDZJVjZleGkrQ2pObW5tWlBPbFk5cTdQa0Q0ZXpOSHlpM1FkVTZUZFl6?=
 =?utf-8?B?Z1lleUhhTlhDZkNtRWdydDltbUhwWUdKa3lSL2Fkeks3Z3FkbHFjbUd1NW5j?=
 =?utf-8?Q?CiTgqMYxb7V7Gh7w=3D?=
X-Exchange-RoutingPolicyChecked:
	HOcR50cKLO4tkoKptj5enuSSqBiywSmIsMzrOSx+/GUQkWpYxdTDXbabcKQ9pBEc/rUmwGoTwfUEm0Lf7tW068Q9TBFVVpSUhbBYOtp3sKHc8wVopoqeeIkQ9Fm7sENaH9U/FkpW5kIN0U1OSa433dvAeURMMSfykGhALOR6o3JwuUmAfi822wDPvD0uaU+J2vyn0bcdFbpVIZyCkX90fKRTqN50+Fg9KHCJ02Bl246SH0BvjKwqgtkjUQ/5VfL1Mft/wyhaMbOmcOPr7P/If/ZSNXLGXwJYax9+U5f9Gum7Ogtm3u9S1EBaTuqJrnUmsHb4E3gs0axQUaou4qb3NQ==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	wp56i1SW+HnM41LCMSxBoys/kZC5oPR08ftR4ZcdXgKyYdwpKz/jqRyMJR6Eg9he4QO/WhszngjTCmhYQPAjgnYqhoqsW7w7p42d2OVyJQhAriRs2cjQBobhih1Ix/flxejRHh5gBnaNdTCA25DBUg9krpKYZ1iSvGb+lQ9pcflJCR7iqMJCJaej5A00HF8al6hiQGzyKYoE9M+L+UJnAv26rfBfeU41GF6DlROCbr13s2lpREnpxKDDUMKquKfx5Pw2lC1Yo3X95haAGmrFhZEUcu9chsQ4+L7rhn2hsYF7BdLYPV/LA1bDAsprVhX9qoSTGZpTP9WsDQggL+QtgHGTEQug7M6E7VmIUdB4Gzy+SisfMSvP0m29kEKbbXDyfUlH0RaFzQX6iqj1upQpgqTUolnXShr2E4I/q6ZbD9oEzAVOOwkxaTT7A5S10ZKoGovF3Juwnlor0SzGT+sWpUAkeFF0GnJELTPGv4wTZY8K1NEuGXuJtJdjF6H/YsyrcOxbMPeoQnb+IWhX1SBwyPHK0jfl8jULD4dLUMhtBK2qXOXmfQpr3YzcL7PTdce+YMegU5luTllNMn0L3LVtO7iueKdqHtAovVF7PdVryts=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fdd1b019-838c-48d8-a3ce-08de9f0d9e4f
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2026 18:49:57.4803
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UTuOYM0JYw9z7s1tDuVhnTxFw/+Fea4Zs4xiHezQC6tJFE5WzqkyD4AlmlkC2ar8Srp8bhfdd9yN7fm2rGYTypEXWB4bkhjD43iIdzn97qQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB997712
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-20_03,2026-04-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 spamscore=0 mlxscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0
 adultscore=0 mlxlogscore=999 suspectscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.19.0-2604070000 definitions=main-2604200182
X-Authority-Analysis: v=2.4 cv=U46iy+ru c=1 sm=1 tr=0 ts=69e67558 cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=3I1J8UUJPc9JN9BFgKH3:22 a=8r2qhXULAAAA:8
 a=NEAV23lmAAAA:8 a=8AHkEIZyAAAA:8 a=GvQvSb2e5d0-4sTuDWQA:9 a=QEXdDO2ut3YA:10
 a=8gvLZcY7Nlvl4CGD_6nf:22
X-Proofpoint-ORIG-GUID: NMuqeIoRgKwBBqOWlic3vMe_hSHdsdFU
X-Proofpoint-GUID: NMuqeIoRgKwBBqOWlic3vMe_hSHdsdFU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIwMDE4MiBTYWx0ZWRfXyeokbLSquZuY
 vFL5UKCTUN5U13rc5l6jf9qJyGwieiOoXbCqeFG3PMCP81BCRqQGLSZkSxKsP9K3/4U+audcTrd
 Y1gIdZsNQ/cJ8HxKXfaVUlrc9o5P+ISTdvq+McxKEl43CsgQsS3dqVsCE0UKyBdXJMCsQOPJy2Q
 NzY+5XOi0w+T0ALRTpfcfI9GwFER5svl6z71cMlAXSZ9eHaHerWanjui0V1n9eTsVgeJL16hMmB
 +PcHyLNHbfOLgSrbOuXhY+xBCZDI9jrk45sXbNrTnhYBjx9OQHy/k5ypfYyN/+o27ZjpPoaxZF4
 CCxzErjqJu8veneFFdzckl+qh03vw948HJBUk59eDJ5BwZZTQucC4CgWZCdRp5DvN89aPtmliuv
 V7MWNQuEE8pCAcW2WgKJZ+9V5r4A9q9X+c1d8EBcFBKaEEvUEhD4wSdDn12avWe8AMeyrxu+PqB
 mG0jQhn+mZ9+9tEgujw==
Subject: [oss-security] Fwd: [CVE-2026-3219] pip doesn't reject concatenated
 ZIP and tar archives




-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-3219] pip doesn't reject concatenated ZIP 
and tar archives
Date: 	Mon, 20 Apr 2026 15:02:13 +0000
From: 	Seth Larson <seth@python.org>
Reply-To: 	security-sig@python.org
To: 	security-announce@python.org



There is a MEDIUM severity vulnerability affecting pip.

pip handles concatenated tar and ZIP files as ZIP files regardless of filename 
or whether a file is both a tar and ZIP file. This behavior could result in 
confusing installation behavior, such as installing "incorrect" files according 
to the filename of the archive. New behavior only proceeds with installation if 
the file identifies uniquely as a ZIP or tar archive, not as both.

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2026-3219
* https://github.com/pypa/pip/pull/13870

_______________________________________________
Security-announce mailing list -- security-announce@python.org
To unsubscribe send an email to security-announce-leave@python.org
https://mail.python.org/mailman3//lists/security-announce.python.org
