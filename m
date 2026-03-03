Received: (qmail 23898 invoked by uid 550); 3 Mar 2026 22:24:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23851 invoked from network); 3 Mar 2026 22:24:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=mbmN23w+9ua5T44R+6qNhRs9ssP9hu5SHxM/XRclerA=; b=
	VrSyF4o1rruMBq0B2QX3domFNnk2URDHlMQS9whKLw/9UhLhT4tw978DN1+dSmxA
	ildl4zKbB6+cV4YEmRVp27lyOSS+vbiVrIhU3HUgfeTMdgHYBJ5Rh2Kx1N7qzxyD
	avG4Q9HXQ4SngoY/MnsYoVyMDrAaccBq5W5/mXr+iR9BEBIGnQzxcJFURkWpcZbl
	hljw7S71+8T/WehTC9GwcLTgtbHvj52exbzpTjDWOucdeA9lsxRC9b1iq4vqSnmr
	fdO3VlH1t7JMeQC2QqpsqZT4Tqf2v7Dr+pIs+8VqL3zE4xtzd6HyezazeQ2YsT4l
	tTmBVXqcwq8VCSddwWPkPw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wvDadZ+yTs/hLjiOzljwz8/8UzprEJhCWJ1zCvMkR0pxj553Pd7wiv71SlYB5X1G2SgRTvX8dY7EJfqRN2mEngq0gUZyNBgz7Ln62KjbmlZO/Ig9v/HiFfginhMJTrtxkxJsZN3cXCi9n3DpDdhtmO17bAHqABk7BO9hWN3aQr0K1CpVIXWnRq07rm1HL7WeUfUX/qBIXcTbPOX6SDRKMTF4O0MPzoObPUKWFmxNDPfDnWSiDCskUO3FuPVBkBXQHQBTiytb24Bx2AAMnNYkUALVj5iGHR0+xHYEk0U8auwtBUS7PE77Up/VM/QLks9CoRPUzuXwvPe2ILgPi/mr2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mbmN23w+9ua5T44R+6qNhRs9ssP9hu5SHxM/XRclerA=;
 b=hrq3cUUnL2J5OuTWvlC6HDoSe2NOchvF69D7/lhiBmYn2ibqLIqJt9Pt5VLVdOqkDC1nLkHhdjkWechuxaN6WSzQZjKRV0rW44nDN49SA1ZA+oihJh3DmMn36J8OGfrc2XMfH0uwEa0SdA9MSyc7mdRArZkior9pjpLRdSQQ85MmUDECvlsq4uj4/MFVmqAtk+Gb+XJrxxl+MivqpKJvBTWsHoKl1Bk1IaA/kdbHIqF+vNUIK0hjy+FzpXCO2aAMS5c4v6MiBBqURSXiHCmeyXoRfB88ircV1F3b+e70mKTBHwSWLH7fAKb/DNMo5nv9q/ZljLUBK+zcaSujMza7MQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mbmN23w+9ua5T44R+6qNhRs9ssP9hu5SHxM/XRclerA=;
 b=gcRfKBpd1Chs0w+XSpvo8pm7J+gQtxJsx+hhomTuTD/k+dgkmPjYQpL0hgLezShXE6CnQQ5VKy1EAR+cZEd62Bl+9wd4YGRfHjJKS4o8Vd/yau9/eo6Ddh5ccQKdlwRe3Ca8vqYmqIwZDLzL20vCotPNKhv3RU+rmdaYx0n7gVw=
Message-ID: <f5c89672-d78a-459e-889f-6f53464493cb@oracle.com>
Date: Tue, 3 Mar 2026 14:21:43 -0800
User-Agent: Mozilla Thunderbird
References: <20260301.214648.1207832999592654103.wl@gnu.org>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <20260301.214648.1207832999592654103.wl@gnu.org>
X-Forwarded-Message-Id: <20260301.214648.1207832999592654103.wl@gnu.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY3PR03CA0004.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::9) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|CY5PR10MB6263:EE_
X-MS-Office365-Filtering-Correlation-Id: c7c18621-cc09-4b11-035e-08de79734197
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info:
	mQwdAH7w5DgXndcepqAVq1y4skaRchXTYPEz2menCEuN/jiwMEF4GMjAsDEmOQTeH8/qMu8FISIa/ZuyjqLfdtA+tmuZbuL1ES3VeTZBikcpYeG/uRUXEdwo4/SuZck8UGC5sY0H1MkKV7WYMAMxh7pV7K8flCSJK6gbkRwjWPA8YyY7Q2quAddL+a750sosou63LreEPugN7zYMVqMGblLCrdek/2mVM5sVSlDe+MVFaaCdYOAX2B8zmcFno/GBFdjsxsZrc0OtRiimH4UHyAwuajfbJCRssVR1XGEKUP/TcuJ1t6C+syaAjt9XVz738m9FFtb2UWIDC1sk6V4106pRi4HubrRnYuXkto7GXP3WGglLS4ubr18h5TwOw+qZAbIsdtF1kTQEKV699wIy4Z6LtrFzjoerb0dM6Izbr2GmhyYLjSdhJkjWC3930y8WVFZf1/K7JVTVMY2zWYakVpEO8cn4m5+Vxy6hPKdYeAFSrt7s+pVrq5BtZ967CZ5zDGdo72E9FvlULUtjrHb9oxcL06wDnmkrpY9oivUMbh/FIA/moA0AimVHFqMdCNd6FhIPsKV4PL5aEHBqZ2d3kprpbPWDp8C8fh4GkI3wzuCbj48/p9hnyg18Qzb2dntpS3qIUdF9Grfc2OJLNqOkLCPJ3+Pfeo/cp/twr2OEm4GbfNYGuIhC1UcetOC76Dzt
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?aGVXMmQwYU1FN2FLcm5zdk9XVmcrcDNCdTFRZk4wYXhOS0UyZlhLWFNGWGwx?=
 =?utf-8?B?bUlqTDlzK2NtRVV2dnNZOHpDaG55OEZlYisvc0JveUc4cHliSFNQSDcycWgy?=
 =?utf-8?B?b1Y3OUxqSjlwRWtTdmRHbjBuT013eG5FUXdVRmdteEFsN3dNKzlXUG9oTngy?=
 =?utf-8?B?dk9QSkZhL1BESjVXd1p2M0xCbjdERFd6RGIxZkpXZi92KzE4Vzh6SlU0UXR6?=
 =?utf-8?B?dTdxZmV4N3pPV0IySXI5MUl0S3RncUtFY29VQ0FZcmgxQ2FENVoydzhzT0Vk?=
 =?utf-8?B?VFFxWjdpUmlNRlhhdWZ3cjlFc1Q5blRQY1JwcVZUS2M5eEFBKzJ6b0FkaE5M?=
 =?utf-8?B?WkY4RmtaTncwQmVVdDlac2ZZdDJpUlQ5ODFLczFsemtYY09RMzdSUmN5VExC?=
 =?utf-8?B?V3dlVHdkd2FmZlZNSkw1ZDBueVhPSmpZU3Z2dGxEQWdqTWxiUGRsOGlPMWxh?=
 =?utf-8?B?dTAydzVEL0lEY1BYM3ZEWStINjJFd3pCN0pvRTVrV2grdXlGcTBCZ1dJWlVi?=
 =?utf-8?B?OUF4eDdONU9EdXZIcGlmYTBLekVqc2VjOTY5NEU3dVViL3FranhWNWpuTkpL?=
 =?utf-8?B?U0lFcmdNWm9samFJWmQyZTgvK2ZjcHBxV2ptWTdGOFo1TTMva2szWTBqaWxZ?=
 =?utf-8?B?NXVqZmgzU0NxOGpGd2lSSFV3UUh4dU8zVFNUdFpDa29uaVQ4ZkVPZGVWWVZa?=
 =?utf-8?B?cGRoRzJESjVKclp6bVA2azhkU2pNU1N5b3F5elcxSGhDTVhMbmhsSVpRU3hM?=
 =?utf-8?B?dTMwRE52Rnk1eEhhWlJKVGNoVnlhQVlCNU45dk01emJNZ28yUnhKeFRuck9n?=
 =?utf-8?B?V1NYZmVKRGRUd0VnSjFMR0lrdGU3aEt6WTJSekZlWnppdnFXcEFoS0RhaG1y?=
 =?utf-8?B?RS96MUZ2aEhsZ1pJcWlzSHRIRnBJbmVLVjkwM3JORnZOUmsxTEd4TzBHd2t6?=
 =?utf-8?B?N09vUG1qcHEvNUxBaDk3QVkyMnorWU8ybjVkelRNVDNwUTlNMUZweDhFQk1V?=
 =?utf-8?B?TUJPMS9NMWhkOTJxSlhpeWRzRDA4WE1Gejg5MjB3UWNObm9kQ2I0Qm1XQzg0?=
 =?utf-8?B?WWNWTHFUZUIxNlpoQmFDQ1Q0YnorMWY5V09zeUhJSVluaWxLaklteGduOG4v?=
 =?utf-8?B?ZlkzNUl0V0s3S3ZYN1EzSzRZVWJrUzhEWThncUtrRHNXSDhFVHl0OXRSUjlY?=
 =?utf-8?B?WDgrWUpDMzN2UG5BaW9DY2Urekt5UXJ4cEZObWFlQlhGV0tObElXOWxkSWZk?=
 =?utf-8?B?OTJ2Y2ZjN0hQNkNGd3VzK3UxS0FnaXh4Y2FyZ2l5ZkR0eDFOS1F3VDJQcHVX?=
 =?utf-8?B?UHprQjJoVUpHUTRnVjF2Y1BtakpvaHJ2SWwzK0dXUFJxQzFxeUNQeStESmo1?=
 =?utf-8?B?OENEc3hUS3R1YnFXdnp2dWF2RWZaTEg0VndYNDZtTXFJd0VoTnVzbktISThQ?=
 =?utf-8?B?V09Dc2VxODMzMnRPM25LWkpnODNiWTNxU2h5c2VKZ2dBbEdKOVBVUk9jSVps?=
 =?utf-8?B?ZU9FVmprV2lObXRyby9JOG9aczlaY1BTUHg5V0dUTU81bHJyVE8yS3JZZ016?=
 =?utf-8?B?Q0g4YzAzK2U4UGlRZnhoTi9SMXBBSW9FL29Ob1kxSzFFNlYrOUR0dzY1VGdM?=
 =?utf-8?B?VEJqVEtCdlU5K1VxRGJNaWNNdEVta3UvWmFSRm1GMytNaVB2b0JrdEd4M2pm?=
 =?utf-8?B?K0Z3N1FzVHYxUE5WNW1WeXBSSzN5TUV0VWhPNlV5MTEwTk94bDY0aGR3OW51?=
 =?utf-8?B?WUxpOVIxbHc2NUdIbjR5NWU5RmFncWhkM3RiQWViUGg4dHg1c3NwMXBMNDM4?=
 =?utf-8?B?WSsyZVhJRDRHZmt3VUZSNk1SUVhONnRmVDJXcnpGcWJva09neDZRQjJnekRV?=
 =?utf-8?B?RHI1TFg5MTlVTmNFZXkwTlM4am1OS3hzREVWQ09pVnRBejFLRnRJYkRSZVVW?=
 =?utf-8?B?cU1MQ05ENW15RVVaN0lKcWdkN0pBKzRYc2o0eHVzK2RheUMyak9UYVNPU2Zq?=
 =?utf-8?B?VElQbWk3c2N4UmN4bVp3Unh4eXhyYWQ5RlBST0hHdDArdGlJdEF6Tmd0ZG02?=
 =?utf-8?B?bmM3cGxuMnhqKzFHc3FjNlhhYlYzTU5IWVIxUFUxQXRWT0c2bithNERXTGtk?=
 =?utf-8?B?aCs0bVdMQ3hzdjhvWjVTU2VNWG51NFROQXRmY2Z2dkwvUW0xNENSTllpcXVT?=
 =?utf-8?B?aGRoSWxGVnhNNlhXRFZCbTN3NUV3eEllVzRzQnZ3TmVRQ3NJVmJEbFVudVNp?=
 =?utf-8?B?YlM2dGo2VEk3M1pNWllUOVFWSW1oSE9GNUFjUFFNaUdPOWQrTDhqeU5YZklR?=
 =?utf-8?B?Z05kcVFTTFBtck56SUpxKzIySjc3NmtXS0U1THNSTHRHTFlUZDloWVphd0R0?=
 =?utf-8?Q?6izV/tNujNs6nwq4=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	m52ASfLLvx0hV3XoQ2PaId08ftjtj8R8noQyXtyeAkdMmxZATLkxx6l+Bo1C8aC6QvdzJL1vxSG8iX+Vk4OuNyqCuRGmwADeD3BdTnFm2ok1lh90rVaGXNi0KyBRE1o9td0pByYJ/ZUIBVjc9DGCvnRKI9mIyXtC7EF6VCv+LJMZc+KrVHiL5xdq/e5oLijxA9ghDEUj7vFPW9EMTUpX3LWZyvnQm/XJ5Rs8emCe4QcM7ZyJl1Sgx/sTqiaicQ9VnlRK1RPykg+mKUcRIW558tPK9B7aR6Mu9gin12ONkGilejl6JS7W6528TufJsc2IC3LP/dMCA2cjpYiR4B3TWxPjGyBmZPlUAa2xQswYb9wDkIQcg6dm2FmW6TYXJrBNBEPyJqsHb2ebyLjNWQHJRnbxR4BPoI5G91q37sWVrP4meVyb+QpQ0DwX8A2ehNb/TV3+vuOBt+zRwx/H+lwQBDNsipyXPH78QcX5BxkkHLhp3MrM+sNl9msX7kNDukeojFQaikbZGCKDAwkiJshNF4mPxNW9kEiGPlJthMIyMyrs47V5plowPWnBv9m9CJoL+IwmU3Yxc553SkRCyTKwsZiQ4l1vey/BuaQ8JAMCc0Y=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7c18621-cc09-4b11-035e-08de79734197
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2026 22:21:46.4582
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6BbF9d2ZTSAeAejTxyAbQ2XwGticFy1L2RSQVsf9sL6WnmDGzJfq23eUFkIqMTUxzp2BKAMw5YfJHBrwYDkQVME5Jt6UcWEGjXJaOg8iKgI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR10MB6263
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-03_03,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 phishscore=0 suspectscore=0
 spamscore=0 malwarescore=0 bulkscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2602130000
 definitions=main-2603030183
X-Proofpoint-ORIG-GUID: KohVO1SAnYcgPo8Y_gGOs-pTt2MPVuyf
X-Authority-Analysis: v=2.4 cv=Q57fIo2a c=1 sm=1 tr=0 ts=69a75f8a cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=EIcjfB9IiI4px24ztqRk:22 a=p0WdMEafAAAA:8
 a=FP58Ms26AAAA:8 a=69wJf7TsAAAA:8 a=mDV3o1hIAAAA:8 a=5SMXx1T4AAAA:8
 a=Oidc2k2UYM3VawlLmp0A:9 a=QEXdDO2ut3YA:10 a=Fg1AiH1G6rFz08G2ETeA:22
 a=EEcaLA7969R8ZOA5S7FC:22
X-Proofpoint-GUID: KohVO1SAnYcgPo8Y_gGOs-pTt2MPVuyf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDE4NCBTYWx0ZWRfX1YdjM/JkL/8l
 YRDBNjulQtwL06FjZABR+4cDMGvQQ1Pc6dkFdf7w3wDXFiTNIjtRhXWsdWpUzLOAizZKHFbhjah
 nduKaYwHhiB91bjmpgvibJwSi6b2pDvq3TGtKVP9msua+/g0PyIop3T+Ttn70ODKf7+B++eGhB0
 RXuKC4VJ63ajbC3uO+TmB4ghUgulvMb+ZOqSjrt+3jxdItVfEkogdUnYgdjzl9AbytoWpg4dd9r
 goNl/1IZfLXeSCgjgcJo/+iPfY76tfWNFz/iG9NUdrQwAa0vnNzyRQHDsIRtLR1gLuvFNnuamka
 2OwkxPfNW9TNC2F7RJY9fkETsuMqhCtMEdGotPEBcwr1uarJSBPON9jusCCcekoPgZuNUfCO61Z
 r8Hzpdfms3U69sfmYOOQkS1gVLQe4cpaLA3LJWFYtef8+FmNhwu/QtTyL318Stttf6ie9MXMKsh
 OzunZp22xXFEbebVxAQ==
Subject: [oss-security] Announcing FreeType 2.14.2, fixes CVE-2026-23865

While the announcement below says "A bunch of potential security problems have
been found.  All users should update." the Meta CNA has issued CVE-2026-23865,
stating:

> Description: 
> 
> An integer overflow in the tt_var_load_item_variation_store function of the
> Freetype library in versions 2.13.2 and 2.13.3 may allow for an out of bounds
> read operation when parsing HVAR/VVAR/MVAR tables in OpenType variable fonts.
> This issue is fixed in version 2.14.2.
> 
> Affected Version Information:
> 
>     FreeType (FreeType)
>         Default Status: affected
>         affected from 2.13.2 through 2.13.3
>         affected from 2.14.0 through 2.14.1
> 
> References:
> 
>     https://gitlab.com/freetype/freetype/-/commit/fc85a255849229c024c8e65f536fe1875d84841c
>     https://sourceforge.net/projects/freetype/files/freetype2/2.14.2/


-------- Forwarded Message --------
Subject: Announcing FreeType 2.14.2
Date: Sun, 1 Mar 2026 20:46:54 +0000
From: Werner LEMBERG <wl@gnu.org>
To: freetype-announce@nongnu.org, freetype@nongnu.org, freetype-devel@nongnu.org


FreeType 2.14.2 has been released.

It is available from

     https://savannah.nongnu.org/download/freetype/

or

     https://sourceforge.net/projects/freetype/files/

The latter site also holds older versions of the FreeType library.

See below for the relevant snippet from the CHANGES file.

Enjoy!


    Werner


PS: Downloads from  savannah.nongnu.org  will redirect to your nearest
     mirror site.   Files on  mirrors may  be subject to  a replication
     delay   of   up   to   24   hours.   In   case   of  problems  use
     https://download-mirror.savannah.gnu.org/releases/


----------------------------------------------------------------------


https://www.freetype.org


FreeType 2  is a software  font engine that  is designed to  be small,
efficient,  highly   customizable,  and  portable   while  capable  of
producing high-quality output (glyph images) of most vector and bitmap
font formats.

Note that  FreeType 2 is  a font service  and doesn't provide  APIs to
perform higher-level features, like text layout or graphics processing
(e.g.,  colored  text  rendering,  'hollowing',  etc.).   However,  it
greatly simplifies these tasks by providing a simple, easy to use, and
uniform interface to access the content of font files.

FreeType  2  is  released  under  two open-source  licenses:  our  own
BSD-like FreeType  License and the  GPL.  It can  thus be used  by any
kind of projects, be they proprietary or not.


----------------------------------------------------------------------


You  can use  a  `.sig` file  to verify  that  the corresponding  file
(without the  `.sig` suffix)  is intact.  First,  be sure  to download
both  the `.sig`  file and  the  corresponding archive.   Then, run  a
command like this:

   gpg --verify freetype-2.14.2.tar.gz.sig

If that command fails because you  don't have the required public key,
execute

   gpg --keyserver pgp.mit.edu --recv-keys BE6C3AAC63AD8E3F

to import it, then rerun the `gpg --verify` command.

SHA1 file checksums:

ad090dafb29135d08665eba400a1b1b66edd7313  freetype-2.14.2.tar.gz
28200b8f8df5a524f476bdacb20f05da1c33280c  freetype-2.14.2.tar.xz
cde32902a8bffed4c855570bc86a2584fa373ff8  ft2142.zip
dac409e7009221f14b9367d4581d54a895bfe624  ft2demos-2.14.2.tar.gz
cccaa9ec2e4327901fafd6e830885dc9131d9c2d  ft2demos-2.14.2.tar.xz
c04d9c5ef4d929185c01d5f63162a4656578fd14  ftdmo2142.zipA bunch of potential security problems have been found.  All users
     should update.
aca81e3c7bb5793b957c2d4ff61e58ad726b00a5  freetype-doc-2.14.2.tar.gz
adf5448cb668073545ba87b23cff21a08b56d3de  freetype-doc-2.14.2.tar.xz
4eeadfe25683500562a31f38920a24867e178f52  ftdoc2142.zip

SHA256 file checksums:

752c2671f85c54a84b7f0dd2b5cd26b6b741117033886ffbc5ac89a68464b848  freetype-2.14.2.tar.gz
4b62dcab4c920a1a860369933221814362e699e26f55792516d671e6ff55b5e1  freetype-2.14.2.tar.xz
ad3aed6fa521148de639aceb6ac7db25554c68ee122f086232dd33a327175eb1  ft2142.zip
fd63fabb75302b71a33f97dbf14e658309985569ed0eaac6355dd8862db65ff2  ft2demos-2.14.2.tar.gz
ae9ed4b095e73a3fbdb90363c138ea62ac4b0f55aa4bb345b9b2458783f9284f  ft2demos-2.14.2.tar.xz
94f7ecdd05720bde3f15feae9bbf1e885640e97c06efc75c4badaaa6691a0b06  ftdmo2142.zip
5bf511f318256991d3fbe056f0a3fdb191c601c93f079edc7a4ee746e91ec1de  freetype-doc-2.14.2.tar.gz
0514edfd6a7b480f753aa48789d7112038a218b0b06afdca320c4bcbc2f66e6b  freetype-doc-2.14.2.tar.xz
d43d0ce570c8204299d35982b8eb66660d9bb945dbfbd1a00194f30c1225301d  ftdoc2142.zip


CHANGES BETWEEN 2.14.1 and 2.14.2 (2026-Mar-01)

   I. IMPORTANT CHANGES

   - Several  changes  related  to  LCD  filtering  are implemented  to
     achieve better performance and encourage sound practices.

     . Instead of  blanket LCD filtering over the entire bitmap,  it is
       now applied only to non-zero spans using direct rendering.  This
       speeds up the ClearType-like rendering by more than 40% at sizes
       above 32 ppem.

     . Setting the filter weights with FT_Face_Properties  is no longer
       supported.  The default and light filters  are optimized to work
       with any face.

     . The legacy libXft LCD filter algorithm is no longer provided.


   II. IMPORTANT BUG FIXES

   - A bunch of potential security problems have been found.  All users
     should update.

   - The italic angle in `PS_FontInfo`  is now stored  as a fixed-point
     value  in degrees  for  all  Type 1 fonts  and  their derivatives,
     consistent  with  CFF  fonts  and  common  practices.  The  broken
     underline position and thickness values are fixed for CFF fonts.


   III. MISCELLANEOUS

   - The `x` field in the `FT_Span` structure is now unsigned.

   - Demo  program  `ftgrid` got  an  option  `-m`  to select  a  start
     character to display.

   - Similarly, demo program  `ftmulti` got an option `-m`  to select a
     text string for rendering.

   - Option  `-d` in  the demo  program `ttdebug`  is now  called `-a`,
     expecting  a  comma-separated  list  of  axis  values.   The  user
     interface is also slightly improved.

   - The `ftinspect` demo program can now be compiled with Qt6, too.

