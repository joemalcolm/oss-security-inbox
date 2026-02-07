Received: (qmail 23910 invoked by uid 550); 7 Feb 2026 17:50:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23830 invoked from network); 7 Feb 2026 17:50:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=J+SIAnNWlTSwEe3K
	D0SXmdFUU59g6vxKRqxTiXucyHQ=; b=rOPxx8HrlSMGgtCVp+YHxNHLQEyPv9Bp
	CnXAu1WjdLNvcxF+VxCAE7CzrmqdvPmP7l4ru6ExAh15QOTFyu4+Smm7h0/oZBoK
	/qpuXUQMIN5rL0d/RgIXKWRg7X+kuUMTs7UDWn3mYw6zfxilvGUYIwlLpb5U6SKL
	SjAvRrGbc2V7Ns47iJkd9vmN9lZhsUD01FZwP2Zl1CV0TO5KP9FxfYIbbh+7P43Q
	Oqj1+K0DsEq1vqgBDBCM1kNCOiFdtaY5UFCLR4vNCNhh1/rRYPQIZHTDkDHnC4/W
	rwV5KDSiWAR1KNjq33dwNA5WQ3N6JoS2YkU+uyWQp+Mg8ekB7YuxoA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iTVX/nSUSZSZ/qN9yc3wVPHW83QQnZ7/JP5DC2pnLN/ftswF93ag0ed8HdBfq+PMDcFoNXmARiCBjyAKBrrjTZemFq3FsoIBgRuCmp4FXa68Uf5MViwafW7dQLk6E70Gq+cuG8oWSSLnGamPPs9M/NamCOsVVvURk5+dRXcJCH8Va4bVY7PCzgeQGqr9HJnz4k3qvMhUKds3ISSctyDH8M/dUt08GsICgQpW2NIP+aHAKcRvq4SBh3j95/edy8LXSEOLgjsrKDTkDXGnGxosB4mNk9v2Iv+VG41d+f8gmqdJJtkqyCNCtUUqNcfNg6d7HQMEbWmdB1/UP62eRr+aDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J+SIAnNWlTSwEe3KD0SXmdFUU59g6vxKRqxTiXucyHQ=;
 b=JjGbuXe0kP9Ng1arhsHMbsWOxlolIJBUmTEzf+eaxQRi6DNWftPexH2IZI7/ZvjyUKyhFUPzk2BYOfkEEScEOsZHiqqeZVqrcPhkRB1m1bR8mIs4FkN+7GU9178bKRwdjfAGwO4MO4Vjj6G9XyyFFLAOD7Wg4RtPvD1gxLPUcK/Ur8GeMFKyzEbnir2XEaN7F6ceYi3Ue5rbsjGweix9q018IKAM2UyCXO7xM0OX7C07zQKeMzl98ibypFJadnMQux+rpULlDHpjJUnyQ4vkIIE7YmIgXG87Q+r08D5iCcmwzh/25jL3IjpL0VoVw/nVhkUNecDMFZIT+RyE9qcQUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J+SIAnNWlTSwEe3KD0SXmdFUU59g6vxKRqxTiXucyHQ=;
 b=J8QMM5VTXX6FILvGLCU77qts3Cr//ztJfhciESZ28PL2NkQ/qJQ+hj1rSYJ8/2ln3vgVeIUEEbbWXnBl9s6bG49T4ksAhn/b5CI2r/BU5sS1KXNaAxWHCHflmU7xSaJWuQWAWGrgRa84t4qD6SHwHYPcU655gHHxok5Cp5RYmR8=
Message-ID: <b01d7e7c-c7a2-44b7-96df-051073e18bfe@oracle.com>
Date: Sat, 7 Feb 2026 09:49:53 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH3PEPF000040AD.namprd05.prod.outlook.com
 (2603:10b6:518:1::58) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|IA0PR10MB6769:EE_
X-MS-Office365-Filtering-Correlation-Id: afb5c8ef-f80b-4049-7deb-08de66714d85
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?OFJOUk5ydElQeHg4WFJvc3BBTjBKWVhaVlBET2dhZmczUWE1d2o5WFNCWi9P?=
 =?utf-8?B?ZjJTTVlYMklqMlhXTGVoaUQ5eE1DQ2tZWWQ4aGZIWTYwVlNibjlTSU9NcGlm?=
 =?utf-8?B?NDRrd1Y2eDlwYWozeUZlMkJ4K01wR0t3b1h1WjFodE4xWFh4OXJIOTFmZ0JT?=
 =?utf-8?B?Wm9yaWJ0ZGdCV3VtNm5OWG9mM2RXWjlRNDlFWTEyTnlVVEdvUm1oZ2luVHF1?=
 =?utf-8?B?TUNYR1haTWE4U1ZEZ0NVL1dwZ2NrRzVYNEtaV0pENFBMKzZOYXIrLytmckdK?=
 =?utf-8?B?ZUJ2by81QThrRkEyWUdZaHlDZXdHYlVjL3pHblphdEQyRFhNRkEwTGsyb3kr?=
 =?utf-8?B?WlZaT2FHdlEremFZMUhkMXkxVndNYUJsV1NqWXRJUW4rQTh2cnc1UzBZVGpj?=
 =?utf-8?B?ZGoydHJDbTFmOTlMWkNJalN1REd3K1E5UEZoS3d1Y1RLUUJmS1pWYVF4QkVz?=
 =?utf-8?B?MXJvU3JtMElGcWN6OTJrRE9FZDBzUmRhTFBHVEJSN1BkcmpQRisvQzlJYU9M?=
 =?utf-8?B?bkRNYmovRUtndm9jN1RsRkZwVWw3NGQ1ckNITlBDcytNdDQ5RjRNakErTFha?=
 =?utf-8?B?aUJ5ZHVCVXM1bXZiTThUamw1dS9Xa2VLYXRzOXZJQkgwaUg4alpkN005NGVY?=
 =?utf-8?B?bVNaWWJrbVhpYXFUZGVzejl2YUQ5cGR1R3NMQ2xPWWgwckpGVG53SnY4UTB4?=
 =?utf-8?B?bGJKWGVhY1pXcXNWZFFwYlk0VFNmWlM5bnhhOHFhRVFuY0t3SzRwb1RHVDlC?=
 =?utf-8?B?cUR1V01wOGVTTEcwMWU4OEtVclVRMFN0eC83cENZSW1WdW05S1NvaW1GckFF?=
 =?utf-8?B?RWNmZnVwZEV2enFmMmFReHJXY3V3RDd6S1dMTzF4RWFNcS9Va2tONzEzTDRT?=
 =?utf-8?B?Qm9aTmY2S2NLa1NIMWJQUklrRjNYbnc3a1Uxa1dtRDBiVHhXaHJ2MGozMFI4?=
 =?utf-8?B?SlcyY2hpNms4YzA0MlVZNC9ZUkk0QWJjeURHRFd0M09QeHlTWFBXWDRxYXYy?=
 =?utf-8?B?Mmg2WVduOFcrT3pYeXp0SUVnK09adHcyZm1kSEEvRVk3L21iQy9ZVzc2L3ZQ?=
 =?utf-8?B?elk2a1ZiZG9lckJPajdCWTdTYTVWWjYvaWpsTjc1QlhBb0Y5VmIvZklEZC8w?=
 =?utf-8?B?Zi9rMFdIak44VGtUQU03bDhJVmVEL2ZmVUwvNGFoOEhnaUpOQ0NTUmNNSUxM?=
 =?utf-8?B?RVg2MnBuOXAxMTlxeDFTR1VYSFRsQzFXVzhWUzBnMmN4cXBjQlZJOS91YnJ1?=
 =?utf-8?B?azI5MGZCK2RsQnNvQWtxWkUweXk5K0VMVFZ4NVdxUU9hL1hpS0ZjZ2ZQNEM4?=
 =?utf-8?B?RVVxaVY4ZzlRdUxZcmsvekJpM3hCZDN0MER5UnN5aFVIeWNtSks3cUFRTUpF?=
 =?utf-8?B?TGJiVWxHMk9Qd0o1VmtPZ3RKMkU2ZUJ6YUpxbURrOFFJVktETTlVMWVZdG4v?=
 =?utf-8?B?M2JkSmdSc1RNd2FueVhlbUVWdUM1NjRyV2R6SkdDaStaRlc5bm9xaEMwWlVP?=
 =?utf-8?B?VlVmR3cvVGFjSThKaTA2ZFpteGMyTDg5ZU56Q0NnVmdtaEpRaml1Wm5VYkRQ?=
 =?utf-8?B?UVJSTEtmUUVNSm44Um80RzhOOVpJSHI3UFNtMDE1cE5Ic25yWGUyQ0RLODc3?=
 =?utf-8?B?SXdHQ3VMeTQrUFlqdjRVZzVBZWVpMFFmSlJ0OVNhUzJ6QmZuWFVnQ3RLa2w2?=
 =?utf-8?B?L2Mxc25lSklJVS9zVHJoM1QyOVM4QWdyR3dYOEhraG9VZ1hvSWFVNURLY3E4?=
 =?utf-8?B?L2ppdTNna3pmVlJIclM5Rk0wUUdTcm9Ha0J4ZUVjcHlEaTE3K1Ywb3pieFJt?=
 =?utf-8?B?MGVLS00xR0owK2VCaWZFeWNzeXZITjFHTUJlZ1NBQnQwckpZOVlKZmUwNTh3?=
 =?utf-8?B?VmNrYVpIaldNV3VuZzNxUVRQcUQ4dVdiR1BvbU5UN3hMbk9vVFBENWV2MTQ2?=
 =?utf-8?B?UkRKNThCaTFIM3R5aFVDSnRMc2hpbkdVZzBlTUNDb296TTBUenBEbDh0bnp4?=
 =?utf-8?B?a2NlMkNYWlU3VmhocnJ2MGhYUytiVnNlOEtpYitSWDNkRW5IQ09xMHlhMElO?=
 =?utf-8?Q?RRSln1?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?d2RCbGpjczEzNVdtZGN2YlVya0sySnZ6Q0lnb2grL2RGV3p3bit0U3NJK1ZI?=
 =?utf-8?B?QytyN2VORkcrcW9iN203OGJzRGJwYlVRSWo4cHJpa0RxNjczY0ZYQnRlL0gz?=
 =?utf-8?B?ZXZORU93cS9HMTNsc01jbGtUdG1FSTArbmIxNnlnT2g4TzZMVE16dktyZktT?=
 =?utf-8?B?Nk9nYzFQVU9QTGdDMk85OWFsWVVWcXlCV1dOdGJpUndmM0c3Um9sU0xweTZQ?=
 =?utf-8?B?R09sU1pvTE94K29wcE9uaFE2aUZRT0NVRFlZd085dDVjTW5HTWtKSm9rRlZx?=
 =?utf-8?B?TzFRQmJhOVlkUXJIZU9GU0kxTTA3Tm5iS05sUHB5K3lUckN0Ykd2WTlaOWlX?=
 =?utf-8?B?cmN0TEpYcXQ2TmVwNHZNWitHV3IvVzY1R25HSU5BOEpHd0w3eDl6azMzNUIx?=
 =?utf-8?B?Ri96RGJOM1cxNWhHMlROWTc3TXR6TW04OU90M0F6NXhPbjlTVExXbG85VGxy?=
 =?utf-8?B?aDRnMTJuZjZrdnBTMEV1M2c1cGUyRTU2L3RqUjI5aU5pMC9OSXBsb1ljWVBq?=
 =?utf-8?B?OGdQVnczT2tBbkxKaC9QRE9CRGdHTWpNRTVPVkNIVldoOVJnQ1lSODdXWHUx?=
 =?utf-8?B?Ry92Q1I4aldwNlNGT2pxVEViT0ZmVmJRbnA5bHpiYTN5K2VPQjloVHBiRHJX?=
 =?utf-8?B?czZ5VGZEclo4eVUwRkR4MzAzTk4xTzYyS0p6a3dWVHh2bkZXaisrWDhrZVJs?=
 =?utf-8?B?ZXRHTGh0YitOTDUxYnhVc2NFQUdka295S1dMd1dvWjBQWWNtQXJFMG8vQlc5?=
 =?utf-8?B?cGFuZy81azJFam1kYm0zNXlSMmdXdmJJenhPMldML0x5VFFrT0ZMOUpwc2h2?=
 =?utf-8?B?ZEw0V0ZoZHp6MlhFQUt3enFuL3YwZTlTbTU3MDVzUXZ3NXB0ZmkxYUZMSUZF?=
 =?utf-8?B?QTRNRFZCcGVheENjdVZwRWZleW1BTnJZbFJvdTZud2V4UEFMMlNwRDQ4dG5G?=
 =?utf-8?B?TC9yYVlHeXNZU3hkR1cxMjBjUk5xZDVDQzlCcDAvUWpXVHNvQURPMWtEb3NV?=
 =?utf-8?B?MVY5dEw0SFdQbmhLaFVGb1VCZ3NVMEV5S2ZXSWRocElJM1pRd2hKTWtQeFZH?=
 =?utf-8?B?MEhpTDZEQkRCN2p0LysyRkkzcUc0NE9GUEJ6ckl5a1ZseVgwTDRoQUp1Q0tq?=
 =?utf-8?B?L0NhL01oaUhEZ3RhbEJzdXNEcTNtNU4xRVJVNEFmODRmaFllZlplN0RmUDBi?=
 =?utf-8?B?U2p1eVBXZjBjYlhXOGRQMHN3WkVFcmRIMmhvRHJnUVo4OXB2NStHS2lwMVcv?=
 =?utf-8?B?Qy90ZHc5eFJwWjRGQmlwSnBiOWVZdDMyd2xVeUsydFhXdkFkS1FYSnFqMHR1?=
 =?utf-8?B?cVJmS1RObmRZdVBkM1F1NnZxWlZ2a3ZIY2hvczRDNm9KUy9vMTRwa1hUY3FM?=
 =?utf-8?B?SDFpQ2FKTnB6U0tDZXdueWxJRHVwSUk0VlJUN3NBd1R4WXBjSGx6eGdjUmF6?=
 =?utf-8?B?UktsN3hSZDBPQWRabFZVRWtraGhzWG5ZV2JEajhtQ0dnWlNtMm5YK2RxOEJU?=
 =?utf-8?B?cW1rbTJyVkEvK2s5dUh4OE5DWXBYeGhpbDI0UnNlZll2eEgvblphM2p3WmlU?=
 =?utf-8?B?dm1qTmc5ZUZLTTJ4VCtUeWMxTVVIZlV0M2RHeGJsS1BXanRsVEV2YnB6ZFlz?=
 =?utf-8?B?MnY1QVlqYXFkeml0Kzk4WWpsekppRVI5SW5WRytNU1FzaTN6dG1vQTYyQUEr?=
 =?utf-8?B?OXJYaEVTeis1TjEwSkRsZ0FoaGwrQ1J5clhqRG1wQ3I0c3YrYUN5ek1yQ0xN?=
 =?utf-8?B?TzB0TFpSUmpGMWZIR2Y5VXhkVmZYYmJWcmZUSENxUkJ1UWJkWDFrQTQ2Zkxw?=
 =?utf-8?B?TTI4S0pNNHhtaXZ6NGZ4MXNJRUNXeVNEQTl3TGwxZzU1Y3p5aTdoUDdyaEdu?=
 =?utf-8?B?ZVZ0ZnlBS0ZmUnFRWWFaOWdQUDlTZVJuTWZBMVRkMUwxeld1ZW9YbUlxajlP?=
 =?utf-8?B?TUVJS1k1MG9vbExsbkoxeDVZTXd6SG9XS3NUc2xtK2tVZVU1Snd6a1p5eEJQ?=
 =?utf-8?B?aHIvVk9uZy9wT0tsaE9EZGVOakF2OUV0OXY4KytlL0o0T2k5ajYxMGk2SWdj?=
 =?utf-8?B?eG5ZdlU3aDd6VzM3aEt4OERGQ2Rsell0d3dDY3lvZk5Xa3ltL1BreHFsem5k?=
 =?utf-8?B?YUNDdVh3QWtDN05TRlBTNmlKcGF2Mk1peXh6U0hwdWtreS8wUFJQZ0F4OGU5?=
 =?utf-8?B?TitwTE1QTFRrQm9ROHNld2hxam5KNkFoUlNsMVYwOGpEbUlwaVVQajF4MVJn?=
 =?utf-8?B?N1UwVUpZaUU2TFZ5WllXSS94NFBUTG9haForTVRVUkUyMm1HVjlyYUptWVNi?=
 =?utf-8?B?Rll2QitRaWs3L0poNXVaZzgwNEJzUzNKRlVaNlVpb0Ryd1VUcVdPTHc1RjVD?=
 =?utf-8?Q?HpXmdVMAWwf2BpuA=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	sF832P/TRJne8eDAOErrPWzSQ4mp/SeE5IwLzayKC4aUOVyzPA2SiiJo0pT1Ty44AznIh43oQNALKw3s+As3TxSBGM3sDwCz3Pgx4D1UoUv3hEoBUSZaVdUW21cZJBaj+uEN4Gbv9y2EiGuD/K5klK288lPMCLwKbYGC22SktLax8VBcPAoTMjrnxQNybqWVOpbplXBqrfEh8XU32yqiyaBuWiMosCdd9CVShWjTYZ+RiwAZRbNZDTrXATakXg/UrJpsrVRbVFWtEjGOR+Y7B2BOISORePcFFXBSdzRx2BxKK04b3SsLFJZdBTepP7c458Jake+eWNSll2yo4HhrdOeW5WHZKHiK+HEULhrGJw5M7ThJvsIdDYxVfylF5A3RKaJZPBuepq56eCZTUF1lo1bK0YwQA00CGgY9o/+2l2x2fD4BL9NxJ+R1PumXb5v+dqtWvUq1jeKdOWBJasKNGrfma6E1rQGlpUAnSVa2RuRRxLsWAyhQ+pzpIPKX9tCzsehGbyyM/rFdHXag4COmm9EdcsaK6fRuw+ZSytTW0HILhXYDgizSDyKFA2DxGgRdhcE4iUpqOMNZE4xOXiCEhHn0toREQRAWxtdL24RJeYw=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: afb5c8ef-f80b-4049-7deb-08de66714d85
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2026 17:49:55.3256
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wUwyKUQBRzqF4SGi4MeOWPpiSfJNS80/6VX6Ngfm4xLYglNNqsf0zaCNG/xzgGRED6G4c3ddoGJQ3uO9t2MGDcBR8BlIAt8gGzOLp6vzf7g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR10MB6769
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 mlxlogscore=999 mlxscore=0
 spamscore=0 bulkscore=0 adultscore=0 malwarescore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2601150000
 definitions=main-2602070146
X-Authority-Analysis: v=2.4 cv=Adi83nXG c=1 sm=1 tr=0 ts=69877b46 cx=c_pps
 a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=1XWaLZrsAAAA:8
 a=W0HYcSKoAAAA:8 a=plf8rDjJAAAA:8 a=NEAV23lmAAAA:8 a=5koYp49t61H1sKpx8PUA:9
 a=QEXdDO2ut3YA:10 a=ppclIlqPgZou8qzj2Vqa:22 a=JWTSs7K9Rhv-lrTctFka:22
X-Proofpoint-ORIG-GUID: jIXL_UGZIriX5KF7o-rb71M2yxixou-1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA3MDE0NiBTYWx0ZWRfX/F1e466aoIqH
 9cUbILJ0sn4s30BO0OGEOQZFTR/HG6ChytMz50Kge+DH0huwytC6cHN6SvQH78y09g1cJuyi37v
 cbfMGh+oxDDCEOW6HM9g6uJRNA0RdYw6yMM6U7TOUgzwxIMT1vU+wp9VuKhH/bCJTamjgiXeVGH
 8mM92DX4YnjP+H/1su5nCDzEo5laey+5bpBQWcItpvhqWy7bzAYmZUIgwfiT4YMYmBzZP8nMGz7
 sSiQFGnsa/C9T6qFihgSS6GIunSCqGGVuFm6P615+eOHQ2/zY4zYlgOP7B42A7ZJ6tvCMBZvT8E
 vWhCUi6UQfUa5/mbYSE4irbjQGaSLk1bBmD5uUI4dJscaA8VGIu+xrGTSh0OFJ39/XghWgo2oEA
 /pJU2P9wKsG0/vKLYWMI36hBC26EMJTr2p9G3CSuOv540JxrGgUDNS7j/SY8HZqyZPjWHsI1bdO
 36Y9CqpHA39q/3XsLlA==
X-Proofpoint-GUID: jIXL_UGZIriX5KF7o-rb71M2yxixou-1
Subject: [oss-security] Go 1.25.7 and Go 1.24.13 are released with 2 CVE fixes

https://groups.google.com/g/golang-announce/c/K09ubi9FQFk announces:

> Hello gophers,
> 
> We have just released Go versions 1.25.7 and 1.24.13, minor point releases.
> 
> These releases include 2 security fixes following the security policy:
> 
>     cmd/cgo: remove user-content from doc strings in cgo ASTs
> 
>     A discrepancy between how Go and C/C++ comments
>     were parsed allowed for code smuggling into the
>     resulting cgo binary.
> 
>     To prevent this behavior, the cgo compiler
>     will no longer parse user-provided doc
>     comments.
> 
>     Thank you to RyotaK (https://ryotak.net) of
>     GMO Flatt Security Inc. for reporting this issue.
> 
>     This is CVE-2025-61732 and https://go.dev/issue/76697.
> 
>     crypto/tls: unexpected session resumption when using Config.GetConfigForClient
> 
>     Config.GetConfigForClient is documented to use the original Config's session
>     ticket keys unless explicitly overridden. This can cause unexpected behavior if
>     the returned Config modifies authentication parameters, like ClientCAs: a
>     connection initially established with the parent (or a sibling) Config can be
>     resumed, bypassing the modified authentication requirements.
> 
>     If ClientAuth is VerifyClientCertIfGiven or RequireAndVerifyClientCert (on the
>     server) or InsecureSkipVerify is false (on the client), crypto/tls now checks
>     that the root of the previously-verified chain is still in ClientCAs/RootCAs
>     when resuming a connection.
> 
>     Go 1.26 Release Candidate 2, Go 1.25.6, and Go 1.24.12 had fixed a similar issue
>     related to session ticket keys being implicitly shared by Config.Clone. Since
>     this fix is broader, the Config.Clone behavior change has been reverted.
> 
>     Note that VerifyPeerCertificate still behaves as documented: it does not apply
>     to resumed connections. Applications that use Config.GetConfigForClient or
>     Config.Clone and do not wish to blindly resume connections established with the
>     original Config must use VerifyConnection instead (or SetSessionTicketKeys or
>     SessionTicketsDisabled).
> 
>     Thanks to Coia Prant (github.com/rbqvq) for reporting this issue.
> 
>     This updates CVE-2025-68121 and Go issue https://go.dev/issue/77217.
> 
> View the release notes for more information:
> https://go.dev/doc/devel/release#go1.25.7
> 
> You can download binary and source distributions from the Go website:
> https://go.dev/dl/
> 
> To compile from source using a Git clone, update to the release with
> git checkout go1.25.7 and build as usual.
> 
> Thanks to everyone who contributed to the releases.
> 
> Cheers,
> Michael and Dmitri for the Go team

