Received: (qmail 19817 invoked by uid 550); 12 Feb 2026 01:23:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19757 invoked from network); 12 Feb 2026 01:23:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=vBDC7lB37NejLhmL
	RVRKifs9x3jqjjYh61rk81gQMog=; b=Jpyw2sOcwMyfZSTz7A/AXo34peCSbb3c
	QY2oA1Ahf4Q0pzT+eKyWutQtkJG2o4Ce4xQ3Cw/ma7vbVw6S0Tnh4hzHUEprWQPN
	7aLFuCIV+qXVLjcyIYYj/uKSyAMm54KD99pZgFK1XKvqpqMwuiva42QTfYxTFRPj
	7ZZT1Osic4+VMPhRC7BhMBtdCPOd2tHdMJLas2aDJXU8k0lUtKrQXtDBWIonhgGd
	MLDjAHx/SpLkchyheZRvdKdSsmMPuzcJjqJUIibRmx23ToPByZHf9RKMILV+03j8
	N4Kv4JuEcLDw6XAJsscWTi6h/zo2KCs4JGKWmU8jsxztcpgx+s+4xw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fllFPg1hE8wttLTff1sBCBZ6vNMsB4HFWabAwgBxKlltiTUJxSmQkPKvLzCSzHnF9HxcrTW6ebH3cE/GzfaXNSn8SXLNqLPKVp9RNI3hRPmJt9INE7CR5puiSxZwo84oH5uY1PopdNxg3CJWaMmubmbFzeDmho5igTpAli7keeme+wcd/Qfmh38TjK/fMsGCGBd8mmkwnJw8hr+8NfbXPf7BYIowTYf13ErhIjiAUyiiUCgYD5zJMulQeW/kUlx1rtdedI13v4weljH3wBe+PdeqIPt8bvaWC3bzm+eqlMc62YBeIGY6B1fxQ79Emoz2QDwcLDPIXptk0qLlN5YI+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vBDC7lB37NejLhmLRVRKifs9x3jqjjYh61rk81gQMog=;
 b=YvG7HNFjsyLfqXLbj8yYrZmSKMUWR3GHA3UOVapw1ahQuPa9IdwMaXPh811sSt5dwT4HB8KQb/Ekci0WgsJrIMi4JqC6kkV5RsRqNQvWW+Xwh7XQJbUu/VxA1AUL0Ak2GzxOmNeu5+aKtQnyiarMvDGmH/TkeOcP1dpDWg4k7IPwynNwQVa2vbKX9BgvmwmUkVzH+la8/ToScBYyg18x7KsXTECaSm3Mhv0/fD0yVIkS6TN5LL89ssFF9oYI2+TUih5FDAmZrl0j4XbEK+FNN8rvn1Axhj+Hp7cGsFPYBz41CsKq7KTAMSWB5NgprixwFPzCdzinkDi7Un1YZfpbtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vBDC7lB37NejLhmLRVRKifs9x3jqjjYh61rk81gQMog=;
 b=aLRbAnC8apjfx6SN+PazpfVXZ4bBpGgPTzVpcIjrbYR1qhVRUlfltVhgh1DEHBYRPZYYiEt3aMKo3i4DCScw4d1eJHQ62FOLJJxECf6A6brUPV2mz3ds5RRpOSe6Ug7dXq58SIK8szFZlrNKgyQLi1yk/JOoHZMVJ0FQJR+VDVw=
Message-ID: <8da43128-d5ca-454b-a6ad-ded5a9a93518@oracle.com>
Date: Wed, 11 Feb 2026 17:22:48 -0800
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH0PR07CA0080.namprd07.prod.outlook.com
 (2603:10b6:510:f::25) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|BLAPR10MB5156:EE_
X-MS-Office365-Filtering-Correlation-Id: 92135c73-2aa9-449c-ed9b-08de69d53da8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?VGtDMXZRVWMzdkIrS3FVbTFVOHNjUjhkbmNtQUxnaVBRdjA3cGJVUFQ2UTRr?=
 =?utf-8?B?ZU9sU2w3T1dxV2hvRkU3Zm0rSHNFYXJuVTZHemFSVndLbHdFcWdZd0cxaks3?=
 =?utf-8?B?MSs4VUZKVFZZS2YrWFNjcHByK21ZTTNHdU9kZlRNanN4b0RJVkJlNUFETWdR?=
 =?utf-8?B?UUo4S09adEp0UVpnTlhEdGRncEwyUEVEN2FOdjJuc2dFSmpKTDZFL2NYcjA1?=
 =?utf-8?B?NStmcUY5Rk11VDJCTzdrVjgzOXd4L0NqSWtRVU9kUXZWWHpyb2pEaEVuMzE5?=
 =?utf-8?B?T0twcFNnNjNZUjVXcTV4Nms0R2VHWHlXdkVjSklFMXYrbHRkaHNxVHdtUVZ3?=
 =?utf-8?B?SzRWVkQyMy92L3drcG5ZTFh0c1BDT0lYcUxjQ3Q4WXFReW5HVXV3Rzh2Qzg1?=
 =?utf-8?B?ZWFhODUyV1pLVUtPQmtiYzBVdFFWdU9peUc1VitnMStXSWpOb1ZOM0wzRytU?=
 =?utf-8?B?TVBsSVR5dWh1dkk0SjRhTHFFVTN5UkZYclc5OW90N2UrVE42OENpemdQeUlm?=
 =?utf-8?B?M3pBRlVDRmRSQkVEdVRBaWZDR3NId2VLc1BPdWNiZy84bFZWZzFzSm95Q1hW?=
 =?utf-8?B?aTlzSjBjQ1BxNVZ5UHVGb3BjU1h2ajBIQ210QmxMUHFxYzExZCtVWjdBTlZx?=
 =?utf-8?B?NlJOclhjT3gxK0QveWh1NTQvelUxY3ZGOGxuZVE3V0M1UHlYamE4ZWJUZktB?=
 =?utf-8?B?Nm9vNlNzUi9YcFgzd3F5S3ZLTEdoMnRTS3FQU0kvZUtxZ2lWdUtuejRIQmcx?=
 =?utf-8?B?WUt5SzZNWDJaVE1aM2JyQ1d1OC9LSkQ2N3k2K0YvY3I0a0ZXRkx2S2JBYXd2?=
 =?utf-8?B?OG9EL3BqaG13Nm1leXJJdE53M0M1L1NJV1BtWEZSOWYyR0tNRGlhUzQvZHRO?=
 =?utf-8?B?Rmk3dzAxTTZITEV0SWlUdzBvbVNQWStYSktmMlArTTJxbkZTbHdKTTVjeEhK?=
 =?utf-8?B?bXdpOGM3N3gxbnpRWU95MEc0bUdJOFY3T1VONi9YUnpGekdwQmZ2SnQ4SzNK?=
 =?utf-8?B?ODFtTEFZSEVRcXJFaEVEK3B0OEdTeTBzbmFPTW9wYWxDaWNqZWc5b1l2Snp3?=
 =?utf-8?B?NWsrL21LUW1RMHpIUFd5NUk4d0htc29OUG04bWc0S0Q4NTJjODByTXM3UUJh?=
 =?utf-8?B?STFSdGVrRUxtbFFuVFZXbzRMZFpOMExOeDlqQjhoRXJiSXZPemF0WS9la2d0?=
 =?utf-8?B?TTJ1b1B6eHFaRDBHTm94Zmp3NllvREYwZVFBTkh1aGhZcXkyS3JhQXoyL1A5?=
 =?utf-8?B?OHlUMU5iVE03R25aVU1NdnFSb2xPNzM4OEordis5eXIrVGlma2Zva3U5VHJv?=
 =?utf-8?B?OWFrUTYzUklqR3RaSWNURytDQ0NqNkQzVmxkdkR1SlBHSkVTcFAwYkdaZ2o4?=
 =?utf-8?B?dVU5MjY0cEUxKzRGRUowWC80K2VIK1N4b09YYzI2QWZqVXhtTjM0aUJxWldD?=
 =?utf-8?B?bkU5SUR0UEtYcCszQmc4aSt2VDN0TTFJV3ppTW1tL1Y1T1lzZHJ3bS9aNHhK?=
 =?utf-8?B?amxTaWE2bnEyUkF4SmRDMmhSZ3dHa0tEQzJXTENqSEhrbTdaaS9hRUxwVHhO?=
 =?utf-8?B?YVA0dFZpMzFUNnhWWnpQODY5cmVDdmpibjU5ZkxiSlF6MjJYMFMzT1RBeVo4?=
 =?utf-8?B?KzhvUGFMSDRpZTFjbzY2UlRubFF2UmVWNVJJZzZ4RDczcjBpWlNyRTZEYXZJ?=
 =?utf-8?B?WjBzOEduV1hRcDRDZUdKb3Vna2lndkxlcTRsZFg0RGRiZ21TVEhnVnlkZTQ4?=
 =?utf-8?B?SGVQNUpPSlVrbS9TdlZjRUIyMUliOWFlcml1ZlhXTEVmaFREZXNxaDVDZ0hx?=
 =?utf-8?B?UkYwdmVOdnpkRTU5TWdGdjk2M25MajZOREEzb0dyQ1RGQXpsbXNhb1ZKVnhy?=
 =?utf-8?B?Qm50Rld6bXp5MGJzaS9GVnNodTJUVTNJMS9jbzN3NXNvdWpwWklsR3ovSEQ4?=
 =?utf-8?B?YldFYXRYRWkydWlaZUhXMWhUMUlIS0FtVXlOVmVLQ2hqVmUrdHhqd3BiM25u?=
 =?utf-8?B?SDA2dmxSSGVRTkRKN2EwWlJibW9ZOFljelVvS1hoRUdUalNiOW1ZanJIVlNv?=
 =?utf-8?Q?mZj6Ai?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?bjYxVFNFNmtnNTRqZ09BNVhhWGxwZi9PM1VMbHhRVTNUdERkdEIvQ2hrNDBE?=
 =?utf-8?B?MVo1bnRDck5mQ01vakVIazZ5TldWc2FDWVRuQ0RZdkhsZDExVEwyTVRxUWpt?=
 =?utf-8?B?TlF0MHdMSWd4VFJUdy9yTmdCei81QVFtMDhVR1pEOXJBZkJUbWs5bG01Yys3?=
 =?utf-8?B?NG50ZzdaV3RJR3BtaGY3WTdJVDU3cnBMbzdYWHU2Skd6YVJHWDlDTWNXQ2hP?=
 =?utf-8?B?TzRUeHJ4ZW9RdjViNHRpT0pvVC9meWc3SjYrS2UxRDlhOFhhRDZkUmE2Wk40?=
 =?utf-8?B?QnMyTG9uZGpIMUt2d1FuUCswTk5Cb2JCbnF6OUNmRUxYSHRaQWxDSVpqQm5I?=
 =?utf-8?B?ZCtudi9LekxBUVYyVFdHcmlNcFNJNmJnZFY4MUl2UHVrTWIwbU5aeEN4U1Mz?=
 =?utf-8?B?ZFByQVFCL0k0UEZoTnBqMU0yUHFsT0NCM0xuMDRWSk5WSDFIU1MxaU85UDhE?=
 =?utf-8?B?eWxUdVFYWWlsVEZFdVY2QlI0WEJ6US9oZ2ZqK2EwMThlaEYvZkdsZjdrMXJh?=
 =?utf-8?B?Y0FjOHhMVmQ1NURrclhJNURQQm1Ta29IdUFMMTNPSlBCTW1NOGtPbVJ3LzNL?=
 =?utf-8?B?R3g0dXRacW1wd2RLQjhNSmg2elZ4elBMaExHUmJ0NW92YTRtWldFUzVONm1I?=
 =?utf-8?B?Sml0MmZRdmVCaHJhSnREeHdMSXcxV3lwZEJIZVNjejl2ZGE0ems1ZHA5WmRR?=
 =?utf-8?B?RTlpaVl2MzJjN1FDSDEvS0c5RDIxak5aZ1M0Z0wyVzBzL3VqVHZMai9pS3Fl?=
 =?utf-8?B?R3VTc0hhekxUQkxQQTBTTlh2Q1NVcmg0dWRQbnV0NnYwcnBRdURoN1h3bXBx?=
 =?utf-8?B?d3cwcFpBL0pCaWV2R0JPYVNtUG40SlhhWCtJcDltWnBEbjJJc2ZxNlFsbzNM?=
 =?utf-8?B?VVFkcDdwS3pqc2FpeDJsMHdRZzlDbkJ5blU1Z09sT0NRWVkvUWlkMENDZWZP?=
 =?utf-8?B?d2pLQWVUSURoNXhxMFJZWGNpSk94NytTeGU3Q0xwN29VRElTcG1NYk9CMG5K?=
 =?utf-8?B?eVh2alM1akNwZEtvTVdibkhmbThWeGhUZDU4RmhPNTZ2UmdVbjAvTmpLakFC?=
 =?utf-8?B?cW1RTlRtS3l2K0dmdVFFTXkxYWlVY3I2eGZSa2NRS1dZNTd6Z3QrQTJwblRX?=
 =?utf-8?B?R1RFcFFGdTFzb3QvYm95ZnJZdDFHRzBsSTJpVkVZbVVpUjI3SzZoQmZaVGxM?=
 =?utf-8?B?eUlUbDZ6V2Zka1kxL1NtSVhNekowaDQ4b2tDaHA5aVZsN2g5dnpPVjAvWEtQ?=
 =?utf-8?B?eEdjaWRPN3RBWngwWFk5Ulk1YWhXSXZtUFJwdmVFTEpTNmNpT2lQZGJXZXZZ?=
 =?utf-8?B?QkxROVhZT1d2VkdNSHNaM3NuaFkxMk9tMDVLL0MyVnFLeXdvYkxwUW1iYktN?=
 =?utf-8?B?dkV0eVl3Q3FmTmpMQkhTb2g2cXQrcHJFcjdhRHFXb1l3aVRoc09xamRzdjNo?=
 =?utf-8?B?VWs1UzJ1M0pQQ3BFTitEdElOQkM2RjU0TFNKOWFXWGFoTzlwVWcwMWQ5VHBh?=
 =?utf-8?B?eVNrRXVvWkFndTBrMzVkZnd2WkY4VWJDaEhqK0piRWhTK0NZUUprMnRXenZR?=
 =?utf-8?B?U0djRGFlNWVjU01POUora0NURGJTTWhKVkdPQlJDZ1BOOU8vVWtENEZnenha?=
 =?utf-8?B?eHFHN2ZDR0NYRUg0ODBYTzNCQzVUK0xBY0Fxd3Y1RWxGOCtsTE9aN1g3R0Ru?=
 =?utf-8?B?alFwUEl5azBQU1IvOXJDQnpYRHU0RDgrOWY3aXZDRzlIdFUwU1dCY0t6TkQv?=
 =?utf-8?B?dkQrNkJTMktraDRtNDUwSncrUktPVjVmeDVyOU0yV3lWbWdNUDVueFE0a3JH?=
 =?utf-8?B?dituVTVKSlFJU2pibXpzNkZMaVUrOHFSKzcrZWh6ZW9va3RUeHVhUDdjRjFz?=
 =?utf-8?B?NnN5WXg1cHVwbWxEcmFmK2llZzdYUkEwbE9NSTNtdW9yVWZHWjRkazAzbC9v?=
 =?utf-8?B?K09CQTNicy9MaEE5SmF1V2VkaDNnZ1BVb1cxZTF3SFJLQjZkVlNSZ0tEMmhZ?=
 =?utf-8?B?MkpnQVBuU0tvRncrR3poOGVQdmFMWXdMV3RjMk12dTJVU05kN3gxNHRpMUtQ?=
 =?utf-8?B?dmpjVVluOVVLTDZLOWs5SEFORTl4bEc5Ym4xYnJEaUhEeHlrcVJIb3BDd3RK?=
 =?utf-8?B?WDRDUHQ3TkZrUWloTVRaSFlPYXVPcTFDU2l0RHNLbWdNVnJpZUM1cEpucmJU?=
 =?utf-8?B?N01EbTJjc2Y2a1hVbFdYOVI2QlBFSno4TzAwTWZZa2NENjd6VjRIOGJ6aXlZ?=
 =?utf-8?B?UzZxNG9BSGpLNTlwSSsyd2JWblZ6TXZqMFRqZ3lGTWltYVdoa3NUSUJxd2w4?=
 =?utf-8?B?bSsweGpxS2dpc0xjR21ZNXRVS3Ixek1sNDM2QjNWeGYwMW1vdERpMXNxTEVC?=
 =?utf-8?Q?13fHtSsrv7qa2Y6w=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	nY2efp7Gajdn+Qdjpzhz/Va9An89mCkTq2+Jxy3f9Dv1Cif4vQAdd9Ox2M/iZ1639SBLo8vB1nFtPXtrVvDwQkO3SrslpwEzHgDFNbg5d9t0LIwwRDSBMa5FQhKcQokdltMYDGAup5s8o2qBcUHqVdotmVhdxqgOD6OS8YgHqMR7iM5zfS235OA7jwUrLdEZfqBaEktTyF7tuNmc2SIbfOSCVl4lEiATI9E0DCP/Ryg//6uFLREK9Z7iDSm0I3mFzBfR5gs58XE1ZV0yQjjV07eUEBH+1y14Eq47DJ2Ur+VRpHulh72YbI/IjGlF1cgNZgWkR0j9ou+7DFzJnLb3pcyoEvwJYzV5n7YL0lI76SjDIdI9IKJwz7WUrCeKVbCx5k2bvk5u+3LHShHlHsdrYMNsXsZ7hT+ioeysF6/lirBFSr0xVAiZ6c8wJC/OUPSK/Zphf6ZUvvImIG5dWihBwFfhFFuJxk/vPg2ntU3e+PA8sA2H69VwDxowkscRXkP4+j0zj7FpAJ/rq6p1rZbW3iOwSETV88P0/7uMOJ68nj5J+OMCh3V5UQ+rYacmHU5vATrMk3Df7hhjg6LztwwOT3xP1PRvNn1J0vPXa7iuof0=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92135c73-2aa9-449c-ed9b-08de69d53da8
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2026 01:22:51.8425
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Fs8p3KxXBbv3aM232pZ/Fj9kAxd+xqWK6tny4KxZDz8BeZaJ9Xggx70NmVD4gIo9APB6XMjVCkSvqEkBn8dm3mXS5mBCCSwLdErMt6fUqzg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR10MB5156
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_01,2026-02-11_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 suspectscore=0
 bulkscore=0 malwarescore=0 adultscore=0 phishscore=0 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2601150000 definitions=main-2602120006
X-Proofpoint-GUID: V8lmN85Wuxpm9cZWgfWcAZ7Nvbtr681a
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDAwNiBTYWx0ZWRfX4f9PPYdoonyv
 5jYnT0MenB9r0uaV2Ol2xNPV2lJ5xAH1PoWKcGvHADsxCqzmE1EUojJTG/bDz3x8pry7FWkg7Zn
 SLgs7Nr6HHt/mdixr9RxPmmO0S/9nhBgBHkfAI3AONaPFxmqZ5AV1WUrEIWm4sAjolRXdcaiab2
 wd3cZYCFFaglG5Ck04N9/9qTibEcz5GsFtQnom0V7SqJKNiIXps98yLzce5C0oJIqVeCliB1Uk9
 xMB15eb6m/QmTRAYplSF2KI6QMsxfOJvECr0M/ElKFsR3CA4xe//xUyD3tSDIswtoko3uMclEBV
 Bw/lLLt0HjSnfpF8pcjYn+Qn5uZD/0AV/zF5XYFDmWQztSa8Sj1Rysn4ZUqx3sPESAET2tEFG50
 rGFv+LNcGiptROGOYnew5sw7okr1/KNjawaRSkTdWYtUNhy6N1AqrBeRzEjNYjr3kVR0pH5GPAI
 DfQGw3UbhulN/qOXt/jGdx6ZobanrpcY7x3KRkBI=
X-Proofpoint-ORIG-GUID: V8lmN85Wuxpm9cZWgfWcAZ7Nvbtr681a
X-Authority-Analysis: v=2.4 cv=Y6f1cxeN c=1 sm=1 tr=0 ts=698d2b70 b=1 cx=c_pps
 a=zPCbziy225d3KhSqZt3L1A==:117 a=zPCbziy225d3KhSqZt3L1A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=UXIAUNObAAAA:8
 a=NEAV23lmAAAA:8 a=yPCof4ZbAAAA:8 a=lmG-QoGAQzCW2KomvDYA:9 a=QEXdDO2ut3YA:10
 a=a1s67YnXd6TbAZZNj1wK:22 cc=ntf awl=host:12148
Subject: [oss-security] Pillow 12.1.1 released with fix for CVE-2026-25990

https://pillow.readthedocs.io/en/stable/releasenotes/12.1.1.html announces
the release of Pillow 12.1.1 on 2026-02-11 with these changes:
> Security
> --------
> CVE-2026-25990: Fix OOB write with invalid tile extents
> 
> Check that tile extents do not use negative x or y offsets when decoding or
> encoding, and raise an error if they do, rather than allowing an OOB write.
> 
> An out-of-bounds write may be triggered when opening a specially crafted
> PSD image. This only affects Pillow >= 10.3.0. Reported by Yarden Porat.
> 
> Other changes
> -------------
> Patch libavif for svt-av1 4.0 compatibility
> 
> A patch has been added to depends/install_libavif.sh, to allow libavif 1.3.0
> to be compatible with the recently released svt-av1 4.0.0.

[At the time of this writing the cached copy on readthedocs has the wrong
  CVE id, but https://github.com/python-pillow/Pillow/pull/9430/changes
  corrects it in the source document.]

https://github.com/python-pillow/Pillow/security/advisories/GHSA-cfh3-3jmp-rvhc
adds that a workaround is available:
> Image.open() has a formats parameter that can be used to prevent PSD images
> from being opened.

https://github.com/python-pillow/Pillow/pull/9427 has the source changes for
the fix.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

