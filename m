Received: (qmail 19924 invoked by uid 550); 5 Dec 2025 18:53:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19874 invoked from network); 5 Dec 2025 18:53:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=KrXvj/jl43WELvm4
	2iDwGT82/IGDGiqzxSbFP6lR3LI=; b=UTpKX1Y8wPprYPXFV0d1z9W5hSllIRsZ
	RQxbo4XmTsX0I+rzdV/+U9iPwUvAzlS9HGC3VAY4xxRoEDY1jqmfRXnArbl43lIF
	RDssa1TVTHKdL41jfpHjQzn44UAW8UuIFCMpUPSkvehALick3QotJSkurKVM8rLz
	gg2P8Hh7pC8+T6eiczS6eOj06dEwM4wwKyqos88FSWLIKeiEuJvkEyGkclWRA5hi
	s57iHYnfLmZrjZw2eWHyBwBVVCTfhvEkfyeUb+FhKT3381A/nMM/+6anK7zl72hS
	yv+ipJe0uhwfsaKdHnH3EgIBrQB9lGODS84XYZUeDKt4YlUJuct5Vg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CQzX04rMWwIsPizSIu8rqIOMqHN21bHG5puQ4SkoG6Oi5uqjYAsdApfNJIw4Wi0q5JP2GgxIbwQ477zTEswUwmJMQXksb8Fh6Zq1GezPFwScKilyvMAXF/N69cptH9g7HvAK0U9+5eSOMnkKDiupJHWWQgwcEQVXrZ7AP7J0oKXjBO0AMSiFWthQUAaYAMmBr+oUyrmpfvuN29abth/Ai3nrwCsQ7NSh7UY6rJqaYqPUB0c1+Rk+N3IKYsDcMVOIWO5vXylfBwuViR1WAcG75uE6P4bI//dP5NIz9yGvoa/1klL/ADuZRNm24ggVHu07ifwyQ4ewpJAYeZkk3bOgkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KrXvj/jl43WELvm42iDwGT82/IGDGiqzxSbFP6lR3LI=;
 b=o/ZgWicvT8WzCnFTI4rf/y9JzXvqHm+iVsyy4zCdav25INHPzbB/PGpmlIHqRTlaEzTtSK+SnSXHKoePSKPWKw5Mam3ofclSghW2I7kGxzZ8Z7I/vbRUniLEeXZrtTrb7EiHQCNN4DX7h3pJe1Ckp+F58GjUxsXrKDixFsYUCah+le0y9TEgWxRRWkqah0dDbJIBi6I8w6Ux3dTAaLEd6EfUCO6xbXgNZa3wCc1lv1bXJnzvxWsThFuS6iBqBrR0m7FhCsdouEbimFo84wanIpK37fddGtJc71rWb3PweK/YkP9z9DYJhnnc7mPkpa8irfQjAEwhT/4xKmzkMRLMNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KrXvj/jl43WELvm42iDwGT82/IGDGiqzxSbFP6lR3LI=;
 b=E5wESsa4n+FAE9ICHhE7inRY2uL9ftfyqJnNbEs8bAZx2t5u3bpMZu1TyfvTh2eY56YcDPSgGEURTuChc4SrQON/xwRw2wZzTphx1WcqVg2o4AbE6upj01c5lsC7N1pUl0U/MhtJUsbaKIYliJBmmAucuMzwCydyjEnFoI/f9K0=
Message-ID: <fe6ae308-dd2d-441a-8afa-3d9742274aa1@oracle.com>
Date: Fri, 5 Dec 2025 10:52:54 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH7PR13CA0016.namprd13.prod.outlook.com
 (2603:10b6:510:174::9) To BN8PR10MB3396.namprd10.prod.outlook.com
 (2603:10b6:408:c5::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR10MB3396:EE_|BY5PR10MB4353:EE_
X-MS-Office365-Filtering-Correlation-Id: 906f8f67-5448-4d98-c5c0-08de342f80ca
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?NnBmWnhQcFJYNXZ3V25TVjRIRGJic2paSnNUdnkwdVVia2ZvdklnRzBBYytZ?=
 =?utf-8?B?NzJKZHpUS21YQWgvVjZtanJLV2dwZUR0VFlJQkorU2ZlVHJsU2JTVWplTGNq?=
 =?utf-8?B?TVMzQkdoeWdWd2NMY0toWmsyaFNBeDlPS3lGcXR6SFlxNE1KTnBGajRKSysr?=
 =?utf-8?B?eFZNVXNlazFZZjlPa1RVVHNWMmcyVDk4ZHh3ajRDZ1RlbmlNUUdLNFU5NHEw?=
 =?utf-8?B?akNadXhrdFc3S1ZKMHhGWmsvRmt6L3l3dzFwdnhnWjBuSEhROVVvTTVuMmRL?=
 =?utf-8?B?U1ROWnkxdUJXZG5yaGZpSmRSa2YwYzdyTmR3YUFSZERiNnovMkw4aWxGK3p4?=
 =?utf-8?B?NjFJUmd1aWZrM1pHU1lHeUt6a2tmekhTOFpGK1orZEI2RG1adGxnRm1ZZVY0?=
 =?utf-8?B?cC81OEZ4NGJqeklLS1k4M1dxeVJlMENWT01QQ25zYWF0clhoNHJ1cEZGVVc0?=
 =?utf-8?B?ajJCeDNqanBSQ1ZOK0srL01ERXFmdDJhSjRFMlhUM2RMMVRmandTeWNHMzh3?=
 =?utf-8?B?UjBCT0NOM0hjSHVIeWRiNmlUMUY3STFkN0huQ00yUzFWZ1ZmVnRJUDN1UGtD?=
 =?utf-8?B?cXhPNzJhemJTZXNlUFFBNDBvQW0xUjA4S1BRZ0JlMG92K1F1VExoRkJPL1V0?=
 =?utf-8?B?ODBzY0RuOHc3V3RVYXBuLzNzMmVLN2Q3cUFma01qTm5MUEh1dkNhOGlqRzlG?=
 =?utf-8?B?dUZCYlQ4Y2tGdzFxQzJHbWR6djhNd3JtNkdnM0tsY1diVytNbHdOcUlhYkw2?=
 =?utf-8?B?M00xNG5sakh5YzJoMFpWUHRtQWUxeU02N092Z0xIYld1VU1GSHRQcnVsUUpK?=
 =?utf-8?B?QnlFWlFmRDRMUXg2azZ2UERGTENlZkxZR012NFNrQW0vSlhxa2d4RDEybWRq?=
 =?utf-8?B?WEIrRS80TjIrVVE5NlNYWGFJd2pJSzBKcHNpQVJXa0pWMno3WHRLN3N5aTRr?=
 =?utf-8?B?TEVZaW1tYnpqaUtXOTV0VGN6WHBlSFM3Y2kxd29JQ1g2R0hOakpZK0YwMVJ3?=
 =?utf-8?B?TXRObDkzcDlzLzhnOFhTQ1FLem9ITndmM0dNd0V6M0JJZjVSVDBCZWtsbW1U?=
 =?utf-8?B?SVZjaXM5Zm9xbERVSkhidEFxbklFMldpcnA3L0tNS21tajZDbThPQi9jUlV6?=
 =?utf-8?B?SnUyb0lFazk0dzhjaS93bUZDaWNwWm1IMHJyVmpzeXhKQ2tOR2pxSGFVc25B?=
 =?utf-8?B?SDFLOGRkR3hxN3hKQWZwZ242azlCaWQyNXduZ1VObFpHUGdhbUZvaTQ5SGxU?=
 =?utf-8?B?bE15K0F1U0YyTkhlQjlEU1hXRUs3aGNubmN5OUNPdWlyS2tzS1JqZ3BGbW1K?=
 =?utf-8?B?dTlTQTRIL2hHeUtVOFFrRDNqcFNoUVVBZjM5R2ZWOVpSLzlXZzVCbjBjMk5i?=
 =?utf-8?B?bW9UeFhqc2lhTUwvZ3lvWFIxbjZtVzlXYTdla0t0a1J3V2tjWkdMTTBjeDUr?=
 =?utf-8?B?cE80NGpiekFpcnBkZzdRUHVLRWtTZzFYV004SXFiaHJlMS9zNCtjZzU5V250?=
 =?utf-8?B?UlVLVGlEeGVPQnlGanVHYzI4Zlo2Yk15bDd2dEJ1T05ycFp5cDFEZWh2SE1q?=
 =?utf-8?B?OFpQOGppM203cC8ySFhCT0EveGRnWkFCbld1TUNWSTZlVThtL0ptZWZ1bCtX?=
 =?utf-8?B?V0FwZ2paaVJrMWpkVmkyUW16aTlBdTNzTDFQOWw5eklXUDluc2s3amRkRU5U?=
 =?utf-8?B?WmQxcFdUbFJYcFpCTlFXRkh4QWFtNllZQWJiRUtyZENKZTJlWEVtczErc0ht?=
 =?utf-8?B?cktFdms1a2NkRWJqTXdTaXRxQ3hteFpMRmEwQStKQ2pvMEhIL0JHa0M2Q00x?=
 =?utf-8?B?VlIrbHdQVGtlc085S083Y3NFYUFDU0ZCeERsTUJPMXQ0OVgzZndnQkdLQWRo?=
 =?utf-8?B?S1R1VE50bk5RbTUzbFpGbTdOUEh2MVZXVUJrS0loS3lVYnJIOVBqV1FIK0xq?=
 =?utf-8?B?alUzU01SaUw5dENZTTNWdWhRMnQ2S2cxZCt3bmZMeEV5L2w1blJEcURGendW?=
 =?utf-8?B?dXp5Rm9BSDd3PT0=?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR10MB3396.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?eHlRdDFVQ1NJV3Iwc290eUxWcWlzRFlzMHFQS0FhT1JWOG9aVnhHbFVJTkQr?=
 =?utf-8?B?MDFNcHJTcTZEai9IMjR0NTdwbENlNUcxaU43a1VVbitkMlRBWWViTUJiNlJj?=
 =?utf-8?B?VEt1L3dxbS9WZnoyWG4wcVNZc2FZZzNzbmUyUG5vNHR0My9KSjk5U0JUUGVw?=
 =?utf-8?B?d0hGQURvbEZUekIvMGNTcU5NYjBkYi9QTXp2RlRESWIxSnJ3d2lBQ1BtUWR2?=
 =?utf-8?B?cmdNL2JLaEdvdlB4Y09EVHk4ZGVtL0UveDU3NUFheEY1aS9KTW9pdER4dEtD?=
 =?utf-8?B?Rm9lNW5BVU9WUTVreFoyeGZHK1RycWxlbVFXL2hkaktIS0lVUFIvY0dWcUp3?=
 =?utf-8?B?YUlsVUZmdEZnVGFVeThqMzVTMVhnNDArL3NpaXdHS2xuSjQ0Mlgxc2E1UVdv?=
 =?utf-8?B?U1A0TjRJN25iUkR3K3FWM1ZhQW5MNTNwUXBnN3YyNHRTY0NRdDJocUE1dVVw?=
 =?utf-8?B?R0tEK09SdmJHQjdOVVhUUUNYbGRTLzlrdHdQbHRySkRia3h0cThnNjd6QWZZ?=
 =?utf-8?B?dGdhYTUvZDMwbGRSQnlONStvOEs4eDdjZnA1anZjZ1NWcHBQZEJKNG1oRDdo?=
 =?utf-8?B?bDJNMWRpMXRDUFFKcjF1WlJyUHRSdCtzRkZLOEZoZFZxTU1udjJiK0RHNENp?=
 =?utf-8?B?VStxcXFhTVhKVUxhR2hEMy9WR2FZOXE1VEFlejBwaXZBUEZ2OG9kaGdFWERB?=
 =?utf-8?B?VXN1cFNZVnJjZzExYjBVcStqZHBMY25jZGdqcFpyaXhZeE9URXp5eEVlZzJY?=
 =?utf-8?B?aTRVY2xVeldoajJrMXBxR1NuTnlKL1hKNVhvbTBUR1g3d0V6TDVKTFNXWWZE?=
 =?utf-8?B?NjlidFhGNDA0OFAvMU9ZSnpDUDJ5QmM1SHZ2UDlhNjMyZlhVNVV4K1hZU1BH?=
 =?utf-8?B?NFhTV2pWeTJaQnNBOFcyUDVURlh0TTMrakJ3M1lGTUtNamY2cWNTa08rUjlH?=
 =?utf-8?B?NUhxNnVzcWt1dThoa29NbTFwY2YrV3RYUTBqekIwVGJvVXVKRlo1eFBnZHls?=
 =?utf-8?B?ZGxrMzhLaXZ0Zkk1OGJwRXMvNWVoK0NJd3Y5MGpNQW5kRDBtRmw5WFRON3Fq?=
 =?utf-8?B?MlNsWkFTVmZYZTBFK3BCODhMem52SlA4V3pzUzZpc2Q5UkJXbDM3aWJESzdG?=
 =?utf-8?B?VGtxYnlZM3FXRWVTQXlzNkpObjV5S1RUVTg3OHlDajB5Y1F6NGU1bVQ4ZWsv?=
 =?utf-8?B?bFQ3YnFRcE9VeTdSY1JMZnlrRXpHaEJyaVdQZFg5OTFOYis1c1NLRVNuYmF6?=
 =?utf-8?B?T1FnR0FNZm5oT0Yvb1NZN0pCOXdKTENWR01sYlorNEpHUnJPRE9KZjdCMjVx?=
 =?utf-8?B?eVFBdytIUFBrSWhsaVRGTnZkVnk0L0gvdDdieWRDcjJpRHVLaXBYR3hZcEFt?=
 =?utf-8?B?OHdRZmY5d0R1blBoZ2k4NGlmS0NOTDlmRlY5c08zM2xuL0NHVVpxOTFraUNB?=
 =?utf-8?B?bXdsRG5hbmQ1YXlhUmpCRDNtTGRKaGNJcnQvc3o2UWxnQmt2RjRKdUx0NkVp?=
 =?utf-8?B?OUxwUTZ4VG84S0pNV2xzQ1FiYkJqVldkeUtHVitNNm1sbDdrb0NWRmpJQTN5?=
 =?utf-8?B?RTN6MjNpMHBqTXlBbUJiVm1pZTA5V1QwMDF0T2E3eGtFUmkyU3YvMklqNVAv?=
 =?utf-8?B?L0cwb0NqeFloQkFtdnlqa09HRGtFdGNNcXJDTjB6RDBiSUVBNStNVjlMTURK?=
 =?utf-8?B?V014VENSN1ljbUpuRGlXMkRRN05ER1dsd0Jvamw4dEc3OFRqMXVPeXpNazV6?=
 =?utf-8?B?cUpiRzN3dTNldDVRNjQ0L0lOanlkNjd2TVJqUVpNaGRvY2ZWN2lwTGZkRWVX?=
 =?utf-8?B?S0FuLy9LVlVZUy80bm4xRDl5Tnd3VWJ1blNXNEZ2RzBpY05CVDVYTTdtRlRE?=
 =?utf-8?B?bjA4YmNUVzBKUFhNME5lOUtuNWpsckdNS1J2RnB0KzdOSjhCYlJJejFaaFVi?=
 =?utf-8?B?YTlKYUhEZWE5bkdlMUVSaHB5d21PL3hjNzJlbmp3VlBONDRvUUVvTktua0hZ?=
 =?utf-8?B?WWJvZFBlbnJGNnJpSStjNkZVUDRGTjF3Q3dNb2s4V3lJdENVdlhPRlNJWjU0?=
 =?utf-8?B?U2ZyRitYMmtJUkFkWGZZUjA1VVpudkdkSDBuWlNXN0tFU0pBMUwxdTJIK2Fx?=
 =?utf-8?B?REMvTWVGTklxSGpFTHV6d2RkTUF6d1ZXUXh6V3ExcWRaMnJEcFVvRzFnejkr?=
 =?utf-8?B?VXc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	/kroHlf8Sq6gwslAsdPjy/YoPJx1nxLWvtvQExZ6MvPvhIezvdX7CP/qcRbyHnVbxTyPK57Ug+RuBZ9En6e9ZeRMGhoDcr3NwY0Js8fqRtpk1efP5o8bMWOg2KsVBz4RJGl8tg5WpdhTGi5VGH4PCttIPW2PquH0DqIn9zIDKd9SA8M71I1kqLuprrjqqAmMkwyelnh8b+v3qf84aZvXAXYY2+hqZnFFnZQbZD4wUFFRejqzVXVU509IwD3+PpRGJ3YAzKyK7i1ay00ovTaYwWpY9mlvSqN5OEzw+9t42HuoelIdpqvHTRcZHpyOTExs3QkwbSXF1MqAmLQybULBCGQ99OzURujP6RocMb1YUqNtYHZEqaUOCMOx3n4Ip/07cLAiIPS9h7KNMdB5B3NTAWy+hnqKL2FAq3nleA7cHk9dKJJ3oIWnkrg9vJTRRfZj6r1H+p02aCz4wP6peLyPqU8JHgSwrGcEsqpH12928oFCLepYfeMXuaIAk4Sy0JxiecIoIzv5vhDH6boQGP287b0wpWIpik0NARyieTMEzmUIwj5SzXdRxDmAmqheHMed+yRJeaq/QgV3FwzjVsXc4prsXrg+WkzOb9FmThKQi1o=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 906f8f67-5448-4d98-c5c0-08de342f80ca
X-MS-Exchange-CrossTenant-AuthSource: BN8PR10MB3396.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2025 18:52:56.3135
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wJNJXuwG9nK1bbzYYnm7rhJQKWoinlKUk9Ia6Vcruz4IecnTF7pz6tEOthg3mMK2gH/kIb/BW1B39XFrcV96Co9QNpVIWaRNI8sPmvl6vpE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR10MB4353
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_06,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 malwarescore=0 mlxscore=0
 bulkscore=0 suspectscore=0 phishscore=0 spamscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2512050139
X-Proofpoint-ORIG-GUID: 4h2yfAIgQAbifk5_uGe00HKQqoVjw63h
X-Proofpoint-GUID: 4h2yfAIgQAbifk5_uGe00HKQqoVjw63h
X-Authority-Analysis: v=2.4 cv=Zofg6t7G c=1 sm=1 tr=0 ts=69332a0c cx=c_pps
 a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=NEAV23lmAAAA:8 a=9Fnvavxanrq1kt4M2N8A:9 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDE0MCBTYWx0ZWRfX+JJgICtp0s2Q
 2w7k72ozpomdYG6RMZ2845W/natmEcW3WKHyyttsE3uMs/BTT94fYho9J9U+opCiJpRCHvzN5UZ
 Xry9UGeZtnML/2HeEATvQZchaL+arDlTmpFyC4IEMrm16U+KSgWcBWGUWNYEyYMALVl3LrRC6eL
 ghDlHnLF+UuvglJAUbRGra7O5fnI7l/k9MGwm9pwVd5I+UDNQA5q1gWXNRR750NpWSV2ZJFqwZI
 L5pwCInMnKgjNwZMjg0C89Cx/mtz2cvsyKYOy1wFxqwVemIXC1aB3veDrnFM3W4jyuZKa1mBKFR
 jskyRVEx+TFD5O0ojEutpabas+go34HJEYrUFscQ6NFhABv2JsmdPpCsEHDiAMTeEtwTyD8GzJe
 riLLYslhRu53wAtuN0uz2Lw62ahmpA==
Subject: [oss-security] CVE-2025-66418 & CVE-2025-66471 fixed in urllib3 2.6.0

https://github.com/urllib3/urllib3/security/advisories/GHSA-gm62-xv2j-4w53
discloses:

> Unbounded number of links in the decompression chain
> ====================================================
> 
> illia-v published GHSA-gm62-xv2j-4w53 Dec 5, 2025
> 
> Package: urllib3 (pip)
> Affected versions: >=1.24,<2.6.0
> Patched versions: 2.6.0
> 
> Description
> ===========
> 
> Impact
> ------
> 
> urllib3 supports chained HTTP encoding algorithms for response content
> according to RFC 9110 (e.g., Content-Encoding: gzip, zstd).
> 
> However, the number of links in the decompression chain was unbounded
> allowing a malicious server to insert a virtually unlimited number of
> compression steps leading to high CPU usage and massive memory
> allocation for the decompressed data.
> 
> Affected usages
> ---------------
> 
> Applications and libraries using urllib3 version 2.5.0 and earlier for
> HTTP requests to untrusted sources unless they disable content
> decoding explicitly.
> 
> Remediation
> -----------
> 
> Upgrade to at least urllib3 v2.6.0 in which the library limits the
> number of links to 5.
> 
> If upgrading is not immediately possible, use preload_content=False
> and ensure that resp.headers["content-encoding"] contains a safe
> number of encodings before reading the response content.
> 
> Severity:  High  8.9 / 10
> CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:N/VC:N/VI:N/VA:H/SC:N/SI:N/SA:H
> CVE ID: CVE-2025-66418
> Weaknesses: Weakness CWE-770
> 
> Credits
> -------
>     @illia-v illia-v Reporter
>     @sethmlarson sethmlarson Remediation reviewer
>     @pquentin pquentin Remediation reviewer


https://github.com/urllib3/urllib3/security/advisories/GHSA-2xpw-w6gg-jr37
advises:

> Streaming API improperly handles highly compressed data
> =======================================================
> 
> illia-v published GHSA-2xpw-w6gg-jr37 Dec 5, 2025
> 
> Package: urllib3 (pip)
> Affected versions: >=1.0,<2.6.0
> Patched versions: 2.6.0
> 
> Description
> ===========
> 
> Impact
> ------
> 
> urllib3's streaming API is designed for the efficient handling of
> large HTTP responses by reading the content in chunks, rather than
> loading the entire response body into memory at once.
> 
> When streaming a compressed response, urllib3 can perform decoding or
> decompression based on the HTTP Content-Encoding header (e.g., gzip,
> deflate, br, or zstd). The library must read compressed data from the
> network and decompress it until the requested chunk size is met. Any
> resulting decompressed data that exceeds the requested amount is held
> in an internal buffer for the next read operation.
> 
> The decompression logic could cause urllib3 to fully decode a small
> amount of highly compressed data in a single operation. This can
> result in excessive resource consumption (high CPU usage and massive
> memory allocation for the decompressed data; CWE-409) on the client
> side, even if the application only requested a small chunk of data.
> 
> Affected usages
> ---------------
> 
> Applications and libraries using urllib3 version 2.5.0 and earlier to
> stream large compressed responses or content from untrusted sources.
> 
> stream(), read(amt=256), read1(amt=256), read_chunked(amt=256),
> readinto(b) are examples of urllib3.HTTPResponse method calls using
> the affected logic unless decoding is disabled explicitly.
> 
> Remediation
> -----------
> 
> Upgrade to at least urllib3 v2.6.0 in which the library avoids
> decompressing data that exceeds the requested amount.
> 
> If your environment contains a package facilitating the Brotli
> encoding, upgrade to at least Brotli 1.2.0 or brotlicffi 1.2.0.0
> too. These versions are enforced by the urllib3[brotli] extra in the
> patched versions of urllib3.
> 
> Credits
> -------
> 
> The issue was reported by @Cycloctane.
> 
> Supplemental information was provided by @stamparm during a security
> audit performed by 7ASecurity and facilitated by OSTIF.
> 
> Severity: High 8.9 / 10
> CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:N/VC:N/VI:N/VA:H/SC:N/SI:N/SA:H
> CVE ID: CVE-2025-66471
> Weaknesses: Weakness CWE-409
> 
> Credits
> -------
> 
>     @illia-v illia-v Coordinator
>     @pquentin pquentin Remediation reviewer
>     @sethmlarson sethmlarson Analyst
>     @Cycloctane Cycloctane Finder
>     @stamparm stamparm Finder
