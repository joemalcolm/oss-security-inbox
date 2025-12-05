Received: (qmail 19609 invoked by uid 550); 5 Dec 2025 18:41:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19525 invoked from network); 5 Dec 2025 18:41:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=kUPJn/fJ9uN+NAAV
	5l5CY1y3e7+4Yw44JjxIiChZGh0=; b=El4rtt+s/3fZWpReFsAW3WtCML5gQnnk
	RwplPcmkb0ifpfs9g+ofLh3s8KwEPuLnvCBMuG+ueVI/kkwAXfhhtDUySdeLSe8f
	ZvI8tkJDJgN1lWE5DhnyM6r6mTHhULAK3QL+FDT+OGvmFOYDipR5W4EFY6/BzsAm
	Br/8eBIr2Yy04PCMwjApnmGglOQAMfo/ZkzkXn6tLW4aaDOfNcwKX69KtRSOLhiw
	vJNc+l3qxmpFZmcDrwVY/vQw9eaKNFoKPS8h3irkjnlpizEZ76WsPhPi96zSFwlp
	8/tLfnRfMzSz/4MrdN+FyGtxrkeGkUr4x2xL7WRZj6Epxw1mt7NDKA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gn2Hw361qMdnUt9fe2yYx8HAT7t6D/up517Q4v/DQMVcsJa+97Um/naKLHW9oeJL8kyLYursDUgciUSwet41zyem0+kjKFPrIkwdEBMVk95P2aHuzzCFLE3HLH+MnjKoSNpPBzr3O3JdeYeuH5VLN9riqx+y94Sr8XXB5VFsgjXOOjoJ69+nulhQSa1G7HlRAnST4VJ9kWjQkrH9PsEl4SE4I2bqp0KRhZS4A2psq8wOwYLla2NoTEUCacc92INn2L8Fp1NPXC9CfaOLbCpDsTx79kfoXfukVI+DKUYmUjDJ3dLY/v7V3PN/biJsqm7VCRAuD3e39OzNMXtRQYc4Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kUPJn/fJ9uN+NAAV5l5CY1y3e7+4Yw44JjxIiChZGh0=;
 b=IvsoPbbec44j1ucmkU1BbCUS412OzTjA/uPylYKPYpSrr1nzP4N34UItClIDH5g2PpZGlAWuMNlMmcWGeMrimK++N6ku915V72EZ+xbXp5AEGVKUADdcBlOzfVBhTtz2C03tZ5FGNOx3SM7tY1hlUg39Tx+hYYfOd87T1kz4gOhvqu5iKz2k9aei21j9++8B2w4pNnEbC8sPzOMCxhdmJQz9nS9xeLhsqWQi4Q9kGnq+B1pimLkVgsiU4ArPVDV9tU8QLoYh4OJZWOXEm4WhmC/iZqT5KCrlSQPUDw2z4mL6bWwgrGtcflykDYnRdgP/isN86Wkz/+ENu7xK/JPodQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kUPJn/fJ9uN+NAAV5l5CY1y3e7+4Yw44JjxIiChZGh0=;
 b=OhJlIDcGf6Mx9IoZsiXlmfNXsZ/1sT5WMsh1uzjSJFRdDPrDbWfDcecUxQs3Zuc23x1TVcoOCWEMDV6vwtWWG/gyq8gcdDD+JEgvrPnrweAhjwRE+xisv7JE6EAbLM65gaBZfbT3Xq3Dtt1Z9vQVC3tWxqMeyQ8GtkgXySMVFaw=
Message-ID: <cdd4c453-1c85-4592-aa40-75f72586705f@oracle.com>
Date: Fri, 5 Dec 2025 10:40:56 -0800
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BN9P223CA0027.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:408:10b::32) To BN8PR10MB3396.namprd10.prod.outlook.com
 (2603:10b6:408:c5::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR10MB3396:EE_|CH3PR10MB7714:EE_
X-MS-Office365-Filtering-Correlation-Id: 52af3041-a30a-4b53-da60-08de342dd528
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?WGdYS21QaGNmWFErbzEzYkNNRG1hNVFRcDZGN1UrZWhPVHp2ZzY2ZS9waS9r?=
 =?utf-8?B?Y290OXByTDlxSm5OWS90TlFIdWlXNC9RV2pSb2pTc1lucWQyM09CNmpqMjNS?=
 =?utf-8?B?Y0t3c1M0OCtQQ1o1ZFVQOU9PVDdIYVRVZzNneTMzc0FYTlVkVjNUYXRxT0ox?=
 =?utf-8?B?OUFKS3VPUTdZbHk1TzZpQ3BNN1pBQ2dFSUZ5TW52VlIxalZpVTdrZUk2QzdI?=
 =?utf-8?B?T2wwdnpWN01STlV5QkdIMTZKejJPYXg5N2xDdXY1TWIvT2hRVXVLT25QWHcr?=
 =?utf-8?B?aSszdGwzc0NnNjRhNzY1OEMwRWFzS1M1QzBUbCszdXl2ZHllWVBTRVFpSjFz?=
 =?utf-8?B?NHN2VzAydkovSmRqdVJWKzJoNk9NbGVBVG9ZSFE2eFpxa2NYdHA5OVkza3hY?=
 =?utf-8?B?bEpscEtGQjJ3d0FDUm15T2FWY0xRUGpIWVIzUGVhMTltakpvZ25MRkd3WGJ1?=
 =?utf-8?B?RzlkNUZzMTcwbS81Sk1RY1N2bjE0c2pvaXdqZXBKeHRYb3NObXR5bnp1eEVT?=
 =?utf-8?B?V2hQMStWb2RVWnZOdS9QbW4rcHNWYWdKSU1GaSs2ZGpIV2pxZk0rbUNSM0Vw?=
 =?utf-8?B?ZU51dEE5VU1uVWJpbWpsWWMxTnp4bDhiZWo5RnpMcjUrM2REUFJmUXh3V21I?=
 =?utf-8?B?a0FaSDNELzFRdmFkNCtlY08wV1VPTjNtdTc5ZFA5bk1FM1dkTVYvZlBOL3Jy?=
 =?utf-8?B?VStKdEpBY1l4b0QvREczTlVGTlNMR210bm4wWXBpRkpXbmJpdzdCeXpnQUtw?=
 =?utf-8?B?QmR5SUlRTWM5SWFQZld6OFo4RUtzM3FXSUs3NjNvekMzUGdEcUF6WVc4WmFV?=
 =?utf-8?B?c2dRZDNNbmdESlNSN1dSakEzWHVrNGdabkc3dng2cDBkUzJjNStJQVkyTGpV?=
 =?utf-8?B?YXZzVk1WZjVKbjA5UlEyMHVkK3BPR2pxZm4vQ2ZoaHpkMmZDVlJJTkQ2aUNs?=
 =?utf-8?B?dzNDZEo4Zk5zSHVHNFhKQUYvRWppcm9pVzdaZGpEMG9JRjhqV1k1a2JhNnRC?=
 =?utf-8?B?bWlnY2lTYVJTcVNNWW9DOGcvenJ2WmFWaFhvWUNLa1BDa21WOE1rNzdxSGRU?=
 =?utf-8?B?eDk0VC96TXNIRm1XOUt2SDFmUTB2Mzd0SXhveXJIcVB1M1ZYdVFPNDFwalVS?=
 =?utf-8?B?dW0zTFhsbWtYQmZuMXlrM3BqdUw1VVU3NlNRRmtkaStKN25oTEZ4ZVk3NUpR?=
 =?utf-8?B?ZEhiK1FWUUVmTVVJMmY1eHFIU2t3NTBMMithRWVVUnRDb0JKRVpPdUVHQ0tE?=
 =?utf-8?B?VDAxd0hiMjRzOG5YOUxPQlpFczV5RlR0UVlubXZlSzRjbzJXNHQ5enoybmlw?=
 =?utf-8?B?SEhoQkdiMzYxVitMdEJ3bHBQWmVVYytvVWVGemR4Z25QWkYyWmU0SDB1Z1Bw?=
 =?utf-8?B?MHFoK3l6Mi9FWmd0TmprL0ZVeTlLbWlkSDVHQVNYNWJFa1hzVmFrVG5WZU5B?=
 =?utf-8?B?akxNR3YrUmYrTUI4TC9wRXMrVWY5V1FIRjBzNDhEMVcrd2MrMlBYOHJsWnZv?=
 =?utf-8?B?RHExUUNiRVZMcWZWd29STHRnMjZOWTJFaTFWQnRsQkt5OEZjVGVLdWcvM3lZ?=
 =?utf-8?B?TmFXZWJkYjBJUkNGVjRyejlCQWUrNndtZmRQWXl5aThyV0lldTU2VzdFK3R5?=
 =?utf-8?B?S1h1aE45V1U0Sm5uRGtvYjhwZzM4eVhxVjRTWlpuSWxFRkRTaVI3U2JMWHlU?=
 =?utf-8?B?a1JlZkxFTGRTRjFxQVZqM0UyU0tRenl4MHcraUMrbzVCOUp3WjBOVkp3ekZS?=
 =?utf-8?B?Vm0xRjhJMWhHdUh0UkxRNVRvWGhGblh5TXB1a0ZMeUcrUS9Hd0lGcFV1Qmpq?=
 =?utf-8?B?N1A4WmY2WGR4cDQzNkZlZWlwaFRCUnhpZ1g2NjdhVnFXVmJHVHlOeGthcjFt?=
 =?utf-8?B?Ujd5MWNVS1hlaUNFL0ZLOWlzUXlxVXpBc3F1L28vSDdtMHc9PQ==?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR10MB3396.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?SWQ3Ym9ET3JqejgzTHZGREJLMi90NGtnZUZud0h1TCtwdFVxR21CbEZPd1VH?=
 =?utf-8?B?RFU5ZEljNFZKYmRZUEhQSlF1MXFZNVR6WnU0NzN6RUF1dG9aTlpMOTY3ME9O?=
 =?utf-8?B?RHdBbjFoNEpJOFBSdWhXM3ZUOGJ3N2g0QWhwc0x2cnlTTTlvd1paOXZTa3pB?=
 =?utf-8?B?OFkyQm8rMERsOXpRWFpJNTgzbkxZdzk5blE4NjRKWDlsUWptc3piU1RWVmFE?=
 =?utf-8?B?a1l5cE5BZUwyTXRLTmNqbUdWaG9qVXdVNXBmRFFwK1JPNmtyaUxEbzhlUWNO?=
 =?utf-8?B?RTlBczZ5T084Vlh2TmsyZXNMeGU3TVVpdTJvNHhhdmRzMC81VmVWdFBtdFoz?=
 =?utf-8?B?cnpJNWRCaFdDZmM0bXJKaGZiTlNqS2NicFRYdGhWRTMrR3pQRjlQbzZqdmls?=
 =?utf-8?B?SmZYV1pnaERURVgxZElsWU1OL25hU3ZELzk3ZmNPbXF0dGFENEV2bWhmdmU2?=
 =?utf-8?B?RklpbDZlMnVoVnVyVTl5dUpRYWIyeDNESHJFVDhiemN1N2w3eER5cTMwa1Zh?=
 =?utf-8?B?UnVoMnlnYVpkUVl0RG5hUWtvbm42eFRNUmo3RUhvWjBoUVNiV3R4eHNEdi9Z?=
 =?utf-8?B?OXhPT1dXTE43RGpPZjBrWGRaWkpRTVBuZGdrajNJTjQrRERwN2kxZzlrSXdH?=
 =?utf-8?B?RUJWdTR2Z2hFZldaNVVGVWN4N1lEZGpFOVNPTDVla0RhQW9yOWN3WFFpWTVw?=
 =?utf-8?B?S3JBWTU3MnI4SDhNeEFkL2xyaW1CbU9IK09aQndXdld1eU9aNzl3YlNyc05V?=
 =?utf-8?B?ajdXd2RHVkZLMVUrWFA4RzJDcW1qcjBabGZEVW9zdGhCMEJxVDg0cE1hSGlo?=
 =?utf-8?B?bmMyeUNONzFRQk9PRkNvdC9yS0c4Q0U5UkpTSjBKUEU1ZWhMZmZwMVVEaVhG?=
 =?utf-8?B?M3BJRUpKVGU1U3VMY2pwcUplQVEwREM0WVVuWkk4ODJZNUY3V3dFaEZyc0Qz?=
 =?utf-8?B?dEFGZ3pkV3V6U2l0K1h0ell4b1VZNjNDS2JGTXBiZkFhNDlOMG50cGlQdTAv?=
 =?utf-8?B?N3R1UFVJdXJITGhGSWhsQkM2M2hFU0dZSGJIZS9WY3RCbHE2b2F3NlJPS2c0?=
 =?utf-8?B?QVBwTlBaV2JwZGJxZGhLN2ovNmtEOUY4eG43Vm9kRFFSVWpueUNoOGR5WU9I?=
 =?utf-8?B?SUpCTXVkV1FYZWp3QjNaNWdWS1FrS3NFK3R0NnlsekIwZHdlcFRoY0dmNlk0?=
 =?utf-8?B?cWVFRW5jN0Y4RUJNVFVpWDVuNU9tQXU4VkM0aittMnZFN1JUbk41aHlEYWpM?=
 =?utf-8?B?Q2hRSkRpazJXelgxN1RxZjA3ZDlYNkNiam5rTFE3eHhQMU1NYi9heTRDbFlK?=
 =?utf-8?B?TTZtdWIyZkk4cGxVaUdyc1JnYkpyRnlFNldIZUttNzFhSnpWa1hnVWRNMXBZ?=
 =?utf-8?B?dDZyaDU4Skk2ZWo1RUFVRXV1amdRVVc4TDdERUV2cFFPVlAzNm1henhUa3VV?=
 =?utf-8?B?V2owZ29aKzE0Q1BYZ0ttK25xUDVIdE5UNnZDaGsrYmVuNzZHdDJ6UEFGOXZ4?=
 =?utf-8?B?d2JhOUtKUzU5bXNoaXA5cEdDaFBUbWRDeEpDRVdMUFV0Q1NqeUlkZjVVMHZx?=
 =?utf-8?B?dHRuL2gzZUNySDNkYUpRM2p4ZUpXUTVZYTVBcmRPZGRXUlhsSnFHRHVsNjND?=
 =?utf-8?B?WTdsSFpDLzR4Z1NDa2pIdElqNjVDYTlvNVloU1pKNnRBMmdtaGUrb3g3L3My?=
 =?utf-8?B?dTQ5RmVmWStNM0U1MDlIVmdqbFplUm1MWDlXZXNuYjIrN3RiWllBT3RRSFlC?=
 =?utf-8?B?TmRTQmJCSWR6aTh1MGREdDRnOWhkUXRhUE5hQVpObFFnNkEvblRTalNFTlB2?=
 =?utf-8?B?a2gzaE1DT3RVdWNXU1IxWHUrb1grNjJHcm5CSlFHSDF0ditkRUF6RW5Idjc3?=
 =?utf-8?B?bHNCWkVoQW5iU0U4Wis1TGlnYlJYeFlwTGJxUUtFNVg4cTZwNDltb2l4WUEz?=
 =?utf-8?B?dDNOWUJRYlllcS9YNWpuUG1IUGh4aDlZREhRZEdQdXo3ejNQME56cm44STVr?=
 =?utf-8?B?RVM4L0JheFBTNmx3MXJEN2l5SnY4Z3g5OUF1TzMwMGkwM256SUd3WXFaUE5D?=
 =?utf-8?B?UEd1WnYyQUIrdTA0aDQxMWZDR1NSdlFoREdxYVR4WUh3b09keCtHWDZrQTlZ?=
 =?utf-8?B?aGVGQ2xiZlRHc09KbHg0N2FYbHVrR2djNUsxT3VXSXp2WVVSZ2ZXOGdMcnYr?=
 =?utf-8?B?M1E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	YhJFUSGjFw4gQFvdj10RSUK/Kl6NwiMhwM9F2HlsAOUz2AboZavo1iy15Q/xzOuNqr4LdZbOhUy94AVJhMFuIAeNFEnJWTUqbsON2r/sAm1LDhMiY83E9X/+n0g5oCddRftKFAp5ADrrFugeEngfQgGUgnILe/Mx6oobZgkI1UlfDrrZENw+kWzBuTlHS4kpiijwdmfuy6gifY2uNqilvZ25bqhrsReF0KpOycA2+Vi2TF/03ozWLVT9Jv6UbAS2pfxNS9yWJfFzoNulYN70Ca4yiBDVAVHLIspv6Ru41gs23nTJmQiqD88xKlqgWv28nV+FRbzw7uzYBb7Fz9PUq2qwbWy+HSKagVEEMcuI9b/ridZ5MXqp2oyK6SA9dxeHDq0/LOjJ7Gp3/6HqdLYsn6bmXVjcfptHfQZei0ezvEoJ5vYkha1zHGbYhHPtFELDSqPqgvWB2yjYcVT8NRbBh/EdSS2sYEsSx5vxsLSk30Dl4a+Hlc2uHtpN3DIJJLhaQn6menfXHzhf2QTwbiS7yywpG5wO2pTxt1QAeE0ejheaHPeJHIh+mKUBYOUm/ftzSGEEmsQw9u1rx9sfMBXQ/+m+nOvHLU/5HNTJ+usSvlM=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52af3041-a30a-4b53-da60-08de342dd528
X-MS-Exchange-CrossTenant-AuthSource: BN8PR10MB3396.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2025 18:40:58.8672
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DJ97kobr1hxifzmbEWQ70fHhrIi1Blb9pVKl25wv/RcJGnpi2ONn2BjyBB3LNOfHH6SxS1lHduEqwz8aFTDIZq6i+uhFF3L8mIDXY0zGcXQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR10MB7714
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_06,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 bulkscore=0 adultscore=0
 mlxscore=0 suspectscore=0 phishscore=0 mlxlogscore=999 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2512050138
X-Proofpoint-ORIG-GUID: 5WXKZA1zQuSuK2tyQxvmdp3mH2_IBfVX
X-Proofpoint-GUID: 5WXKZA1zQuSuK2tyQxvmdp3mH2_IBfVX
X-Authority-Analysis: v=2.4 cv=Zofg6t7G c=1 sm=1 tr=0 ts=6933273e b=1 cx=c_pps
 a=WeWmnZmh0fydH62SvGsd2A==:117 a=WeWmnZmh0fydH62SvGsd2A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=1XWaLZrsAAAA:8 a=plf8rDjJAAAA:8 a=yPCof4ZbAAAA:8 a=A1X0JdhQAAAA:8
 a=TaDSHJuP9sIjzyydZC8A:9 a=QEXdDO2ut3YA:10 a=JWTSs7K9Rhv-lrTctFka:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDEzOCBTYWx0ZWRfX5m8Pc3lNTzyv
 ZMXLvui9WZmqZTPl4PmZlbyItcJ2fhDRja+ht9aPBVtWx0uYaZ7d5NGnjj8CpBpaK1zJYshnsZv
 bpeXtWOyjpRmN8hsNxxvk1XG9E8od7Qu4nONkSDNPefImDCd1zwqyjeiEJXjqdhHIeSZttY3SCG
 Hc2POsMjgRISoBuh8+GhRM50Qp3o5M5uhzQwWc4gdz2+rPu5y1iIlZE1i8me/h4GO5fTz6bL3fO
 /O41lRyS8TAADhFSecK7OHO1GF2MV8qQgJx3gspk8iUhvBWDbWbiAg6Uvnr3EVpqNKcFWfBxelL
 aWrzmTfkvQ18llB5hRO2oRq4CeOvdSo+87aHq2LGK5rpowOiqBIsuDvaG8O2uJaCqHki2nRtxYl
 siTj4PtddefLRRYeH7mTExSqYQ49Pw==
Subject: [oss-security] Go 1.25.5 and Go 1.24.11 are released - fix
 CVE-2025-61729 & CVE-2025-61727

https://groups.google.com/g/golang-announce/c/8FJoBkPddm4 announces:

> Hello gophers,
> 
> We have just released Go versions 1.25.5 and 1.24.11, minor point releases.
> 
> These releases include 2 security fixes following the security policy:
> 
>     crypto/x509: excessive resource consumption in printing error string for host certificate validation
> 
>     Within HostnameError.Error(), when constructing an error string, there is no limit to the number of hosts that will be printed out.
>     Furthermore, the error string is constructed by repeated string concatenation, leading to quadratic runtime.
> 
>     Therefore, a certificate provided by a malicious actor can result in excessive resource consumption.
>     HostnameError.Error() now limits the number of hosts and utilizes strings.Builder when constructing an error string.
> 
>     Thanks to Philippe Antoine (Catena cyber) for reporting this issue.
> 
>     This is CVE-2025-61729 and Go issue https://go.dev/issue/76445.
> 
>     crypto/x509: excluded subdomain constraint does not restrict wildcard SANs
> 
>     An excluded subdomain constraint in a certificate chain does not restrict the
>     usage of wildcard SANs in the leaf certificate. For example a constraint that
>     excludes the subdomain test.example.com does not prevent a leaf certificate from
>     claiming the SAN *.example.com.
> 
>     This is CVE-2025-61727 and Go issue https://go.dev/issue/76442.
> 
> View the release notes for more information:
> https://go.dev/doc/devel/release#go1.25.5
> 
> You can download binary and source distributions from the Go website:
> https://go.dev/dl/
> 
> To compile from source using a Git clone, update to the release with
> git checkout go1.25.5 and build as usual.
> 
> Thanks to everyone who contributed to the releases.
> 
> Cheers,
> Dmitri and Cherry for the Go team


-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

