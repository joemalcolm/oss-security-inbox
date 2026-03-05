Received: (qmail 16221 invoked by uid 550); 5 Mar 2026 16:34:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16202 invoked from network); 5 Mar 2026 16:34:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=tATNMUdWE4xFEvFqos4BRH6lLveLOvJ965Vd2AcEtAw=; b=
	CobQt1aKf73Mzwdj6UkyC0FpoC1z6juYSLEaScOcvBfl1zczu/M8Q+7nGpdF74c2
	pyP3BHOmuajKJMZ8LJwVwZSSw8fZR1QdN8/oEbXmPhOy9mDhE/Q7qDLrtuOpBQ56
	kHyISdGHN4x/pObi9F0yND95KIfitFpipD2vUiMtyW0VpMOo+6fnYjf6+5DBHeaA
	/Uk5YTPp5p2+AB/6ibtI4IDj5mUK1M38lsDQVzc9Qf/iU8i2AzB4dWblXoeY59YK
	ZISqNXNOTMLYUKRTsc5bsm1Dbk7qAf/GfnpeugSNOJGxsjAXhqBFVZu8TBRphI1G
	5mQKAk7v9LXCjJvicpJ2GQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j+Oe39WKTjDzqOOO2fyvsBoE7IJkeoSCk5FVsMqcUA2H4GRjlSeL48Iq0nM8gscbc+L3ZxWGmAQQpe0MVgr5PT5S7g4AVcFm9WwgWoK8stfiFAqey6Hdf9TQlZd65E1lr3iDrWd8HbxXMuoDHx7nHIqUwMvvuz6T8MBGoouo9s42jsrAbbsvlE57XPViS8WgvhqGK9kOUEOiWZty+Eb//lWuVvSnUg3ZJON8qaGoYbjY/IVTsUWZ5N6EDBa+I9HCoPWhG72cYVp4dkoMD+kh6BATDSDeiuBMQCFWPKfwNvHwPbj2g7rjE8QQa1zfY2E9JbHTkUD2RPps8aL/sE5Dpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tATNMUdWE4xFEvFqos4BRH6lLveLOvJ965Vd2AcEtAw=;
 b=wp3JEK7oV8NBT3DuSU+1MjRzRiLJRHL3qQ8NYeJAv7V3siJoRHJRxi2t5mo1S31x8i7R6btSBCZxeU/BXNTRW2+9kO1DLvzMKCBMPuZa1xTZ1zWPum5d8hgALZyYCpMMHB2DyljH7oSl7iTvt6R7vhboFYgugBJI89+lsd2sR8eZECHI2iLZVWocVpjqvqkycU1Ta+fJ/Rm3UYjt4D5rjjoRof9bFrUbDF42d+q9fMHHdKlnAkq9tQ+jKki0io8xFb+VNjhFztTRU5x5k43+iwEwNOmAk1EHkjWaBp323LX5Nis2VqwqRr3ntwtGlOcX6dvVtFbAnHtAewm6ZmnrXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tATNMUdWE4xFEvFqos4BRH6lLveLOvJ965Vd2AcEtAw=;
 b=KMe0ZJxiUpg/uOFz2zDnzYnuneVGwbS2dbKO3V5yYSlWibImTM30aGYu1+GL8Po7GsIuz3dGpqu9ZCg8S5NNd6EW+QiJFNxDKuGKb4iJhzh4wePiDqqfYS/2ZTVMuiauwXql76gZvqbNdeuPe4VZfr/qs1qrMMeWZTwXn7kn2m0=
Message-ID: <bb431f15-e168-4ea1-b7fb-51b6ac368250@oracle.com>
Date: Thu, 5 Mar 2026 08:34:25 -0800
User-Agent: Mozilla Thunderbird
References: <CAADqWPQazovWTFL=EvF1t=fFQ1g1rX8egrDFwfEB6WJAidCyAQ@mail.gmail.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <CAADqWPQazovWTFL=EvF1t=fFQ1g1rX8egrDFwfEB6WJAidCyAQ@mail.gmail.com>
X-Forwarded-Message-Id: <CAADqWPQazovWTFL=EvF1t=fFQ1g1rX8egrDFwfEB6WJAidCyAQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MN0PR03CA0015.namprd03.prod.outlook.com
 (2603:10b6:208:52f::17) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|SA6PR10MB8061:EE_
X-MS-Office365-Filtering-Correlation-Id: 528557b1-4d69-4242-639c-08de7ad511d5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	RUfx5GTe6Uutrys31UAZgxQTUw2Cf58ENMqDMB0hjEEIRR8XPZg/rZQ1zOmNB76b1QX9J6Uj+yOf8gEyjzoSGfdN1W1jtJ2fYBYt8pYv8vYQNYNeJ/JTz4FgD3MTS2CljWgtylluFCSOiSWGphuC5OCR1LAFJ/lpLALznjynJA+fjie/1y077fPp0gatTbMqWLQIIIIjsJ/bRSno4Yvo5RKGKx49t7tjEFyDuZlZdBc3vSr3hOSSJShKOzstrtw6sQObudeCYjouswmomvLvuzW4m2FHOz0QV86jjpcZ2V84+Vff8kUlOJiFh4AGkX6te7BJHG5KTuhfF23NeJaIb0eepjSKvVK9L9/RaY254tNQ7AVmcEI3CyMbuPIneS9Pl9g5NrFc3zxSFMVWU6oMJScwjNrHHgGWS8lD6x961vYOdiQ6dh7ITUAWrZ4rVqlyAaL+dxIoW6Y7tJlCczKT4IvH1zUXVYN7oe5t9WIT3RxhZctAU7OTHyuIawXgaGumN+MkdQOCzA8HneDg2Y8BCulWoJ2HocRi1rx6qdB1zof4h8SvoW7kUXVJ5YCn9zwXF6RtPIoBOmaFaeJzuAsau2nss1l6lLdQr9Fjf5c5ByohUCaUxQphfBg+ym04edcihZ/QT/AIFFCvJn3FGTTe2BCNpT3eALpO/yBGjrISKIFznhpACe3Phvd20M1HbuPPShEFr/LpD3L29dkNcCdXyw8YPg7qKxzx0DjWVlHS7Bs+dD08cuFDKm62LNLpM+W5
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?K05uSUdDdDUyQk5zSU9XeDI5UFZmMjA3RFdITkN0UVB0bEc3L3RnQVBwS3VO?=
 =?utf-8?B?cFdaQ1BOdU11VjRXWW01TkViZitmTUZtRStsQ2FIQXkwOXNkdXBDR1VmUk1t?=
 =?utf-8?B?UWtJbm0zWVlXd3NieFhRdTZzYmp0b2RJSXJ3MSsycnRDWTRjNkhzWjhXcjIy?=
 =?utf-8?B?MjhOclgrZ3lXVm9CZkNvVk1NT3ZiRTlJc2NwOUkva2ZmS1dWK1RvUTcwWjJJ?=
 =?utf-8?B?YXIyRWVNcGVnUU52bURZekE1VEhCeVpGTFZRcDVIMm9yVUc2Rm5xVEhMczVm?=
 =?utf-8?B?dXZQMmJrYTlvbHNISlp3dEVkbUErMDNMbGNYVlZPYUZLeFRta1dyWHBlSHNs?=
 =?utf-8?B?YmlMMXNvNWVuUll6dncxcCtmV2l3TmsrcU12WnVLNnBsbnBuLytzcjUyQnBC?=
 =?utf-8?B?NW0yNEdSK240SXVTYi9uU21Mbi8wbUpDNExvWTBlV2J2ZDNKWVNHSmxYUHpQ?=
 =?utf-8?B?akFWbGxLQ0VYcExaS3FnYlE4TDFrdm0rclQwcEJKTS9jelJDaGgwMDZvM2VM?=
 =?utf-8?B?UzF4d09LYk5sNHJrWG5HR3JDUUxTU1dJQ0NDR3dVbnIvZjVsNTNsUzJyZWpk?=
 =?utf-8?B?eE1ucnpUampVWXMyOFNzc01MaVZzL0JZSVg3REtJWWRwdnJEV1lGakt0MjZS?=
 =?utf-8?B?ZjAyTmltbm1pTkkzeklNamFoQXRWbWsreXlrSkUvVytobEhqT1l3Rkx4WGNP?=
 =?utf-8?B?RWlnbnZpZitDWFhBV05EN0Faeit1cjVJK1JpaWtkdm54WGZ6VUZhYjY1T1Br?=
 =?utf-8?B?aFdkNldVRzFTa2lWL1hPK09kU1FNc1dTdGxTZ0NUTnQwNmdJOGIwMHltSkNt?=
 =?utf-8?B?aVNCejhxdGx1dTVJczlNUUhkaS9BRVM3eWpiOFkxTjhkbG50c1hvREdxSFF1?=
 =?utf-8?B?TVZrWnFIQ0FyWTR2Z1lHdlEyUTFhMDZ6V1M4b3FDQ0NiaEFDNkFxMjV3Qjho?=
 =?utf-8?B?bGJBazNGQmhteFEySkdzdTZXUUljMitpSEVscWNyWkFPVEZnc1REY0lKbGxZ?=
 =?utf-8?B?QUJ5aEpSY3ZmeGExVWFhSXBwdlI2Y1pRRnphS2NtcVFHWHpFRzN3WEg0eThk?=
 =?utf-8?B?NVNyc1l4c21pbDJYT1BRRlNWMXhMbXhLbnRwYUp0RzZkV1VJK0VlVzM1L3h2?=
 =?utf-8?B?YzJ4U2dlWmUxNS83TSsyYWhTbzkxQytVckM0WXlNa3dMdTNSSG0vMkJaVFFU?=
 =?utf-8?B?d2FCcVNaKytGVkFRMDZRSURwUmNiUHVRV1J4RGR0QkVCNnk1bTBlV0R3VWd5?=
 =?utf-8?B?N3VMNGpFZFhSU0gzVWZaSDFMdEdHNzIwekI2anhmNGJqR0F4WUhPS1BZSktz?=
 =?utf-8?B?Yk5SbzhvZFV2cHdYSVQzSEpaakFTcDU3R3ZUZkZtTm45S2htZitDR1VFM2hm?=
 =?utf-8?B?ekVWMXBFK2dZUzdTV0QwTG5SU3dqTFlXVllDbkdyeGtEMzRnWlNEbG00ZGI3?=
 =?utf-8?B?akFtRkJRVUVIQklEdGM0T2RIa290NWl4RmFNN3dhVWM2VEErTGRuRmdtN2hv?=
 =?utf-8?B?VzhrYjAwU2NPSHNDeHAzVm5kQ2p3OTVBVWhRMTcyUHkzbzVwK0tlNVJnMG5a?=
 =?utf-8?B?QkhHRTRkVWtqZUFNa212L2tCbVdJa2xQUTFlaTVxcklJYkFERGh4ak5ETzBE?=
 =?utf-8?B?cTc1akQ2WERCWHE3SkJCbDNTd2Z1cmMxT3VFVGpTbDZaRnRxdkYyRFpvWjMz?=
 =?utf-8?B?UUFveS9DWjVUQlk3TFVtcEZrNyt5b2JpbFRsMUhtaERsZ1UrcnpOUnpOWE1q?=
 =?utf-8?B?OFBWd3o4djNsTHk0VHN2cmczeGY0d1lSSXlZTURCMnlZR0ZyQjlmRTFpSUs0?=
 =?utf-8?B?Zk1BZXZkT1dNMVJPS2hYcytkQlZUR1Eyd2paMGZhUTlOU0lzdEFrTTVYRjVp?=
 =?utf-8?B?RDhsT2F2eVliZEdvWGVYTU1KaGNDbGtnUm5kRzVTcWdsQVNUdTBTT1U4WkZm?=
 =?utf-8?B?ZVYwdnkySFBkaXlCV0dpcmV5a011YjZiTlM3dkplTlpEck02R1FjL0Z1cjdo?=
 =?utf-8?B?aXAwTUZEMnVDODIvcWkrWEEybkt5U2FmQ2VsS0FuZ25XQTV5Ym9jZW5DanJ4?=
 =?utf-8?B?SlRyWXk5UVBOSEZqdGdhNjIraXhrUmdXZmRIQUJYL0w3TVlpOWpMSXpRNWtp?=
 =?utf-8?B?Q0plcFRjczhraitPQ3RQZVNHVjdoMVRLRjFHS25OUmduU1pFSzFoZW1VSkxF?=
 =?utf-8?B?NGsrdTRXVHVqOCs5dzhhRCsrajNWRVZvek54ZXBDZjZTSTFoRnV2c0thZ0xP?=
 =?utf-8?B?eGROU3c2STlCVlhhbUcwZndyNGNxUUIrMXFybnRHb2ZwUGpTOFc0ZlMyL29H?=
 =?utf-8?B?a05oZzZQalkyS0QzZlpHRlJmUndZdklEaHp0M2JaRHFsVXlpdnBqWHhKQUVo?=
 =?utf-8?Q?Z9eMQYaA0XxCij90=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	HmqOVhxKHjfQN/j42hAqxXJAY2nq4bd/2751ugIrCPfeF2qRZz0LDeUcJSkW/mq5H1NQDHDXnEiQI+KssH3SWyxsa0F/ij0zzPuHudsHuJjEKKP0JRGbAm7Ttl5ACN9D/fBUKX2mK//MsiXllRs0qhXoL8eMoSt1dZ6JhhMtyGBYNDTq4EXUT/JtXuQhoXPUJ5k6c0iEskkkpsyKZTUDSKY0a8SbWOhYaB0vKDRuV56YIAgMeGWWXrdnXMny8zwz80omQX+L349JwPLOGJQKP30ZFYR2NrmMZdzBHf7MHJD2f96adhXLA2of1IXGXymd/zzc4lj2BIBZ0t6aWeH6ftTR2/x5QNKQqVxy5EjPluthLhLLTSgSnKlgd7LF60vjbo4aoi2uMFAGCdcJih5/TYqFZMh2vl0Qh3dY2W+/5Ku3UlHZGsiK0fZZ8pP9YOulFzIHXH72ytY3DimU+Dp3Zdi9kjKT0KardncQIxzrQJLGSfB2qHxCWD7eOIlcZEHmjBmuMabu9Kw1QBeNqX1RVfJCOPxwfaqZUatlNuWS4qlarw+OuZum+g1nKcVLfizcii0aEjyS6iaI3YKdQmSLE/dhBWegb/f7OEzcb4S9eJ0=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 528557b1-4d69-4242-639c-08de7ad511d5
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2026 16:34:28.0644
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9EPy+9M3Md10gtyZdkjTwQz1gYn/sAJkJCLQI1oZgO2aLfWcZWG7ChOCr8csLbFWeuT69fZqPXXFC/HBDw03NxWRiXGETzupc3mQLlBgDhs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA6PR10MB8061
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_04,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 malwarescore=0 phishscore=0
 spamscore=0 mlxscore=0 mlxlogscore=999 suspectscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2602130000
 definitions=main-2603050134
X-Proofpoint-GUID: sHkkd53yUzRFOH-O6o8AeJHpR7Oo169Y
X-Proofpoint-ORIG-GUID: sHkkd53yUzRFOH-O6o8AeJHpR7Oo169Y
X-Authority-Analysis: v=2.4 cv=aYpsXBot c=1 sm=1 tr=0 ts=69a9b098 b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=3I1J8UUJPc9JN9BFgKH3:22 a=8r2qhXULAAAA:8
 a=NEAV23lmAAAA:8 a=8AHkEIZyAAAA:8 a=uBF9ElAg4qJNHSHTYGgA:9 a=QEXdDO2ut3YA:10
 a=ZXulRonScM0A:10 a=8gvLZcY7Nlvl4CGD_6nf:22 cc=ntf awl=host:13812
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDEzMyBTYWx0ZWRfX2BfHaqF0+JYQ
 8WNsF0wa0fk+5G1UZO/5iSHCPtGvMvESkhwdez6TlM1poWu1Gt9fY3UfXVp8dBLrv6PxUm2JMk8
 6/cFgr8urfBOBxCEvH9NNHxqaCYo6FHEnWdAxtGuCDxrhruHRA3MMWuhDieKUeIaPCMQKQkiSvT
 lLDaMTVJptv5QHsaMLdc3dGLUVErWO52Gp57jKrkmYRnhI7EAvLZ/7e38kvQQL8IbpO47TYDdf4
 B2sNoNWG+64x41RABVg6s97tn1O6wrL/4VelIE+hcIsCMmtjZNgfLlxzlw27Symoch5CMFZjGQO
 qmLURxfmtCmwLK+uyVDm57G0S493bOVIva3c+iW6VsnHX4CgwaUOY77voSySBWS5PJyyXwXpTkC
 iFLTQXUMQdPtcmIsHvQseEQ5QOpgBKtgGf2Iqf0heYl/PmDCGCq9Y+GJ7pZI3MNhz2KBxzZerrr
 HayWVKIgyJcI3NDXKU9dfMPRnu+pilQZBm5F5Zdg=
Subject: [oss-security] Fwd: [CVE-2026-2297] SourcelessFileLoader does not use
 io.open_code()




-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-2297] SourcelessFileLoader does not use io.open_code()
Date: 	Wed, 4 Mar 2026 22:42:49 +0000
From: 	Seth Larson <seth@python.org>
Reply-To: 	security-sig@python.org
To: 	security-announce@python.org



There is a MEDIUM severity vulnerability affecting CPython.

The import hook in CPython that handles legacy *.pyc files (SourcelessFileLoader) is incorrectly handled in FileLoader (a base class) and so does not use io.open_code() to read the .pyc files. sys.audit handlers for this audit event therefore do not fire.

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2026-2297

* https://github.com/python/cpython/pull/145507

