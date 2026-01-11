Received: (qmail 5755 invoked by uid 550); 11 Jan 2026 01:54:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5710 invoked from network); 11 Jan 2026 01:54:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=9e+5p89eBGyCuleK
	BxYonThLN36gG31lp+yKT8ZqWYQ=; b=RjQOKaoqG0s2sDvqMPH6yDM2Y7Id9NGQ
	tMimyMB9UCx7x4Z5Eo1iTEOwiXhJayKK5cda7cRzNVCW6VKZYAus+GJhfsCLwUR8
	8g6QYNEQ2ru8BdrAA/CjR+TIGihiNSPC1c0vtd5+M4YIRgmWMWtp9+6b/ROdCQhj
	2Abl65b/ZsXX8Ja2sXsYvmrcT5FPeh5Q8JhVSCzazr0mAQ96QPnHTh4VdQk2Dz8g
	tp1GrWQvKFB0ExWvs5QO26C0jRZa96YzEx+sB5UXNo8/O5d+b1B+tCFHtjk62zB5
	n57CGe9YHuQjf27XFA65DyCPfixbz3NVvQquNZHg+P32jwm77DF1jQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fl7MsFWBhvVD1MXSQsJGbCpvOlcucZovuvtXGRMsaPx73zebv3LXsfAQvB/ws4jZ65lCDHvnNnQ3JfNCH13wyOAEuxIHxoiFMTWiyVhQop5gXExPKilCzF07d+GZeUaoF0xLdu/ao0m73Cv6XhpBpygG70p7wSKg6+T+xKIto0oXEMCyxAjuf08AL6jp5OFVJ9zPRzawP6sIAOHzoPFyDh1zTd5f93Pppqk7ktX2/QcRPmbny2+c4XndqouMPTT8Yozrt9pMkSD2/nUrIVFiStGwpsC9Nm6kqxIfShobR0N6oiuXVrNgESiRrByVWa4rleuehByJ0L9aQLTbw4rJ3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9e+5p89eBGyCuleKBxYonThLN36gG31lp+yKT8ZqWYQ=;
 b=ogvNzTGsqYSQmT5poaabnodIMPkec3rKc8Ldi+T+w5c3olGDLosaoxDmbLAn6uzT572l2Wr2dKwNNsPTePknskEmTvkRCTD7OUU7gjg3K5sjksNUlzVMSKJWMm0GohMcqZFsLNnNVTPvSkHMgc6RHx4Dtf8CGtE7H9hPUPxXXdHBByXtQkd+fz6bvHPP2ngMa3uxhMKitqCNzY4MENWvlG7FPFdguZBdmajg/goKkGTE1Xlp4NSMO5WDJdTk2lpTE1JaiMuS8dRiXIDOyANM1SBYP43GtIm69vxXc1eYY63xAW4cZN3ps3VKM497sRt1T5Ng7pDZE84s+OtiP2Ku+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9e+5p89eBGyCuleKBxYonThLN36gG31lp+yKT8ZqWYQ=;
 b=IWV3GGcQZ81S/0vQ/WDhJSc/MaYQvLXHg9Y3bF6HDnedaeqrAgT9y5XuOXyYPv+7l9Ow7FTun8Fhds6GMhokS39argK5sMCr4bSypIkgaUlpxQqFoNu8eNhdS6o+ZCDqNpRhfYf/caSPWVKFsjHjw2FnCUUh72aj5cXsQEK7Bco=
Message-ID: <f6825a3e-06ba-4672-afc1-171c7ae48d9d@oracle.com>
Date: Sat, 10 Jan 2026 17:54:38 -0800
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MN0P221CA0001.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:208:52a::7) To BN8PR10MB3396.namprd10.prod.outlook.com
 (2603:10b6:408:c5::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR10MB3396:EE_|SJ5PPFCBE2A5DAD:EE_
X-MS-Office365-Filtering-Correlation-Id: e7e7e14d-fe7a-4ab4-840d-08de50b461fe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|13003099007;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?eng4cXhMMnJhN2VSQmRzUFcvZFY2dk05U3pWQXQrM3lmclNlaS9MOWNuamF0?=
 =?utf-8?B?Nmw3Z1lBMWplVmhvTzl3cnV5YVVLVVlEOEJOWnV6TVljS2NGYWVKenFHK3Nt?=
 =?utf-8?B?eVlwVjdES1k5UklFdHVKK3puK3VTbEkvVE9WMDhXa2NWYlZDUVFQMy9ydEhy?=
 =?utf-8?B?ZnNCWG5IYUp3YVVEdWc2RGZybGpBYnNCTXF4Z0IyYTByT2ZoeWZrVUdlM2hR?=
 =?utf-8?B?VnRRejVZMDlRd2FRRjlYUE5kSllQczVPVWxCdXRiOVJ1aXQ2c1pZQUQzOGNo?=
 =?utf-8?B?TUxnMldQQVRkampBbFdMZXh6V2hOWXpJWjdrYW5PbHRUeEFkZFUwZ0RtVUhD?=
 =?utf-8?B?djRROUhDZlk4WUxud0E0YTFUSjBBSVduZVJ6ejRlVXdjbEpNQjFxekhGTjBj?=
 =?utf-8?B?K2ltUUoySGNuR3k5N1lQOWVDc1RGWHEwekdzekxhZDhKRGFzSksyNFp1VUpJ?=
 =?utf-8?B?U29wdlNDU1NWekdVQ3Z2cjlLdFZYVHpZU1FSVjEwdG13dHpBUXVrZWpPNzh5?=
 =?utf-8?B?SW10UjNIQ0c1elJNVTNKa1RiS2RmY0JnTjFJYmhmV003ckVQWlRRRGwvUmg5?=
 =?utf-8?B?WUxZWVZVMkF0ZE5LRllqNTlwbVQzNTVHOVFsRVJFRWJKNi80cUdmMkgxSHlZ?=
 =?utf-8?B?V1NIRXBtZ2lpdk5kbmd1cTJtSk92NS8wVklrTWVQZTZuUEZnWG9YTk9LVWZw?=
 =?utf-8?B?b3dQcU8xQk0vdXpFVXg5Qk9TRWZuUm5ZY1dpK0dtMU1zZ0ZmbTdienhvdGJi?=
 =?utf-8?B?emxyOStWM0lGYkxXOFpRZmNKaG9MaVBkdDNydzNXSWRWTVJzNldGUjRvU3l1?=
 =?utf-8?B?ZzRvK0N2akZuQVB5QUhwY0dkbTFGc051ZmNsSjZZU01qQUZaQ0NSMVVSTkxI?=
 =?utf-8?B?RFcxWmdhM0dLMUxsa1dKcTNGVnFuU3k0TEZ1YXBUN0lMTEQzcFZjVmFyQXJn?=
 =?utf-8?B?SytuL0hDRmhUV2pWN2xEQjFvSGtJSkZVUDRuZGJncnhGMlVvNCtFRis3MEJX?=
 =?utf-8?B?K1lqcWRLMjQ0NlcvNlJaWWFSOWg2dC92ZTdxNk5Ucys1OFZCZG5LVHU2bVRP?=
 =?utf-8?B?aWttSytqNk82WVFVNUxkNTNsd2JUTmtaNjhucXptRVhsSC9taVlYZHJ3b2w5?=
 =?utf-8?B?VzRIRmFuemxHZkkwYU50akVycmhndjY1YjJIdVNzOEV3M3BkblRVUU1YTFhT?=
 =?utf-8?B?aTFYL1d1cjlYQWxLa25mWkZEcFZ2T0V3amxENGtja3dKNytVNmlvQWRTa1Zq?=
 =?utf-8?B?SiszRUswY0RLd3k1a0lvUDM1L2cyeDVMSkhTTFIvT0g4aFRxRy9sYjZqeHN2?=
 =?utf-8?B?Y2hFZnRvaXJpMmg0Wm1KRWl4QTkxdjVrd2E5ZEx3aHZUSE1pc1JYWU93RFE0?=
 =?utf-8?B?TUEyRWZFczVnMXEzY1N5dmFWUUkxaVAvZjcwOHpSYTZzWmV2cDR5cEdWNGV2?=
 =?utf-8?B?UHlRb3pLc1Rud3AwY2VOZ1dPeC8wV0JDM3RLZnQwbDY3bWlyTllEN3hPd3pa?=
 =?utf-8?B?TGUwcHlOZDhyWThTMm9nN2FXSzB5Tzdac25JbWpTVnludW9GUXVVY1RORDlq?=
 =?utf-8?B?dzJ1QzRMblZ4emJ5NnMwZ1pvdnJzdnZJdzNyWkR4eVpUSllBNTljOUlXaGtn?=
 =?utf-8?B?NHdESUtzM3B2NTk5bFdueCsyL05URkZQTEU1RkpHVkVzbmllUExZTTYyOWtJ?=
 =?utf-8?B?NFhpc3B0STJSUmRwNW5TL2c1eERZZmlaNVAyQ2hpUEpFRzBKRGoxd1ZIVWdw?=
 =?utf-8?B?R1N2NkhHZ05HVVpnY2xEYmJubmxNRjNvVmpKMlFTdzNBS3c3c3dITUd4UklY?=
 =?utf-8?B?UklQUnpnczJ4QVI3ZEp6TytGeVZPK0QwSUs3U0ZIbG9FN0FnZ28vd2tYcnIy?=
 =?utf-8?B?QXkwUEJwZE1JT3V0LzBRNWNKTWwwd093QkUvNEE3SXhWOTNvcytrdG4wRnpB?=
 =?utf-8?B?VzU5OUpYeFlMU2tCTVFocEh5SVBwSjBQK1IremxRL3EyQTZrUkptNnZRbjNk?=
 =?utf-8?B?dUZocEdSblZ3PT0=?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR10MB3396.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(13003099007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?WVMzb3Q0VnJrbEFqNEsyai9GZTl2VldGN245SFZ6UWduVDcrbTZweUJWaDVH?=
 =?utf-8?B?ZExYZmVSTVNWc2hyMEFCdDNXRE5LWUJOWnBLaEliVGVrbEEraVVTOGt1RlRT?=
 =?utf-8?B?ek9odWU2Q3BjS3V1TnIzRG9WOWMxRDQyZDYzSlkzVjJ4SVk2Z3dzaFVhVm1O?=
 =?utf-8?B?WjBSbmJaUEpCc3NOM1VMOHE1V2FxM3UvZ0ZnaFN2RXp1RWZGOFZab3JzeHZi?=
 =?utf-8?B?c01lUG5iT0lJQWpXRGZRZGp6UWtBUjhtRFJ2RUgyQjFDSHBzVWllK3NkeEJt?=
 =?utf-8?B?S2ZvYmdFZGJOblk1cFphd0gxTGlCVnFyRy9jaElsNTV2RXJXOG1rYlN6Vytv?=
 =?utf-8?B?RXZzVlF6SHVvWmlSa1FzTEZKeHVYZWJ6ZTlSQTBaT3RocVN4Q1ZQTmp4SU5w?=
 =?utf-8?B?SnRwZG9EN2NzVjNIYkkvRkJ6ajFuQU12TjNFbFhMT3lWaDdVU1NnM1pYbjVh?=
 =?utf-8?B?RmY1d2U1ODJHY2NjeE9UemJpcjVHQndjdWxEZTh1VFNYczVmT3VncGNtblJW?=
 =?utf-8?B?aHkvcDlnYVlTaldZeE5qZnRSb2ZJYys0SEZZRHFEbVRVTUVkVDAvZEV3MnNo?=
 =?utf-8?B?UGtJdmtLZ1Fwa1p3QjJBUTJSTnYvdjdqY2s4aXh3SXJic1AxMFV0dFpHNWJr?=
 =?utf-8?B?RHRacEt1cXFXMEdhQTVBY2tvWXZLK1pJOXJ2UWJXeFBnQ3laeE4zazBhMTBn?=
 =?utf-8?B?cWlFWThXeXF0UmdPaEh1VGFvSWZoeGJ6VndkQ1hPeHZiM3ZqaUhIWFl4Smo2?=
 =?utf-8?B?MmxKN0lxdVNoNWRKU3FQYjVmVEtubUpUNVRYRVF1M2JTcHUvM2FaaTlzMWJQ?=
 =?utf-8?B?TElhM2UzUTB5VFR2cVpKbmdpY0VRVFRhTmFlNFVCYzhkT1Y0QnJPWUdDTDV6?=
 =?utf-8?B?Tys3SDJjQUxjcnNhZm9oYkZNaVNBQkxFSXFNRFNHTHZzYjZROXllNzBrV2VY?=
 =?utf-8?B?R082ZVU3L2c0SnpXQjMzaU90cDVFamhENm1aSzhTblVtdENuWHl1OVo4Lytx?=
 =?utf-8?B?Q0JqYndKbjJtWDNqZndPN3krTitVYVNWWDZpNTJkcjlxMjJHbjVLamdqcjBw?=
 =?utf-8?B?Um50eEZhY1I4UFdJWWtvZHNCV2JPMjZuR0I3NDdCSGlmM044MDZnNFBEVG4w?=
 =?utf-8?B?eHA0aGV3K2RreTJRWlJyc0lpbWFlY1dmSDJYQjlzSVV2SUJ3ZHczVTlZdFpI?=
 =?utf-8?B?MjU0SnlZeXh4WW5ncmo1QlZQM0NiZ1BmcEtFWENtWVJXVGlkb2ZwampiRlA4?=
 =?utf-8?B?MWNza2ZMVVlZTEdEZFczcElaYjEzK1ZKSUhsTTM0WU4yOVkvQXJPOWpHYjdN?=
 =?utf-8?B?TkNWNHp5OE1vbTdGdXgwSHVyVEhsM3BHS0IveDRDV3hzaHJINm9HblZGYUhK?=
 =?utf-8?B?VHJYL3crdkFMbjlCL3N4dUgzd295WWNLTlExMjBQUEJPU0RMaG83cGo1emdy?=
 =?utf-8?B?NnZwQzhwRWpGSXArMHFjWGVCMXYrMnp4VjhJMEpxNERLMlNyM0dmSFhQR09R?=
 =?utf-8?B?c2FVb1Q1K3d0M2tKQ1NvRllaTW5WejBZMHZpakJybWdyTWxBYW43dzVIb056?=
 =?utf-8?B?K2lNREFhMHFaZmt1Ny9sVzFLQWwwQXZ1YllSM1V5WFovSm1jS0YrbCtzR21V?=
 =?utf-8?B?RVd4akFkWnZ0SmQzT0xzOU5RRmdWV2k1M2h2eVY4ZGlQQzdrMkZrRld1UTR6?=
 =?utf-8?B?Yms0di8veEE2eXNUSEFITUlNeFE1Smg1QmJBb1R6R2o3S0U3b21XeWFGYk9C?=
 =?utf-8?B?ajNRZ3RIaXNyZ2daUG41Wmp1Y0JreHloSWtsdThjRTMzOHRxcVVRKzEzc3p3?=
 =?utf-8?B?c1JnaTR2TVFsajdQWUpNc0JBYTh0TktzQlV5WFlUZU1QejRLNnBLRTNTc3pJ?=
 =?utf-8?B?a01zTzUweGo5Z29XMFJmeDdVN1BaTGRFT0tRRkFseVdTVllCcExFYmFMOG41?=
 =?utf-8?B?c0JhaHdUWEJsOE95L0NPTDJWUXcrYXRoMFFvaFY2SjNIS2RlTlVqcHlHc2RB?=
 =?utf-8?B?WDlnangyMGZFMG5jb2Y1YS9MaVBGYTVTWjJYS2MxYjJnOC9CUG1oTzV3bTFL?=
 =?utf-8?B?aGkzYmpjVzBBayszV2VDeXp1Z2lQa01NN2lBRkN4RHZFOHRZenhJMktDckc0?=
 =?utf-8?B?YWp1ZEllZ2tTcURaZ2Rib3MyQ0o5WCtka1VZOWVsMUllM1lCaGFXZ1NRWkZQ?=
 =?utf-8?B?aXAxSTVWVlV1MUIwZ1FGK3JaYy84YTZXWitrUFhrMGx0NnU5QTNSNmtqNWxC?=
 =?utf-8?B?Z2d6cTFKdkVGYWFtTjdCRmZBeVQrRG9Gd0RDaEtnTmpOV3dMRHdwSUFhVDJ2?=
 =?utf-8?B?OGdRNldVSk9QalQycVJCTFM1eTJ0YkFuRVZZYm5LNUZGYTVMZ2JFRThIWUtp?=
 =?utf-8?Q?LcIcaN+AcUxWZo9Q=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	vNlp3zRAAJuZK78RduDqYGLKH+OhxkrrGsf9c70/nzPmyhk4XLjY0/fHnJQSwPFITqt1ZRAR7cd/uWsmo9fbMlL441xK5QBR2OMgWyaKbmohkc3S/0RDy8mID6Aw92rYG0IyZ5hkzOqvJOFObI6TiKnvpM2X011ChBX+/gMn2ExVKSXfGgwLwHfRaY3krw022qulOQTvkL2/5oHh+doPPj8eS+4FoUMk1xs9Sb7/sz8/njJKnTWWyyA+B9WaDI5KDWEpRSGhsYZqhYve+EV3PrfbrrktMAXSlMvv+isrjEGqw+dx/gyUzyxMaDY7Bi4oX7yqZiIhcx65f8Dza6aMob54Caf6GImLgOPEbPWASOEpE+8phKknRZ2AESglYVixFbVwelPEF1uJM88dk4YpOUFsDtLbYb/hqafJ/TtIaVU2ayxoInzDtnd9xYEdI+F0TvHZ9iAnVoFN8PyBm3k1fHRC4UW88bKRq4mtAnJpNgpuKlWjX3UCMnDi3nbsS7p4RfE0ka4jUs+KuwjW35oeuL6DEqmpKXjj3rpt0snCTDaP3KUp7FX/IT1CNuualRbglxS1X+5v6z1jaHECRojJ8T6nE0PYwpjXEWmEK/thKJU=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e7e7e14d-fe7a-4ab4-840d-08de50b461fe
X-MS-Exchange-CrossTenant-AuthSource: BN8PR10MB3396.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jan 2026 01:54:40.3064
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NlkR5NJa+eVE5IVHv3Y/vfagUcq+iWB3U7lO/JwH+QRreFKHWW0oDquIVVcRjIsj+sf/6gdsZJf/+XOTX+/kG4ryTh66SXi8ddqsm9r/M9s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFCBE2A5DAD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-11_01,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 suspectscore=0
 mlxscore=0 adultscore=0 phishscore=0 malwarescore=0 bulkscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2512120000 definitions=main-2601110015
X-Proofpoint-ORIG-GUID: Vl6R5tz9XZQjiMVwIS4jV6uoOT-VCOOp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTExMDAxNCBTYWx0ZWRfXwXdbR4W8NvKA
 RAEjKsqCyXU5O900/K1AWqtafTfDu49V1S5VSVqL4z41BfcsUo/ttQaqkkv3ev+7ul+kvzybmul
 j//v76tJQkX/z0C7AHoqi1VhBVWpN04uMZp+IXsq1Aj7rTzrta4tdgCCURegif3c+b4khVeAT9+
 iH9Ajo+MtXtWQIVvg1hnNBxE5OjYR4phQ4dC2ORe2gZ8ihPncnOHof8zOVshhquH6zBFuuDa0+k
 +eWYSXNlexRhtKC1Ar5xq6BpeGRkAAdVlF7/DRLKSthG7o01JbUvB6MzAKzYIPcZBPYDE0JIszA
 EpxurKR/ml5ugI4URiOkd1lEoZ5/O4Y2A2Rx3rjF9VK84FKPLkzPNtkzMDvlPZ6BI7SdxuTs7aS
 ZZrbQSKFGuHPqe+RNlENqS/G2AttCSKjVN/euw2satMTREmcDjcCpr9NkarDYy/DAf1re5GC/rl
 btZcSTnWH0xFjc1szVw==
X-Authority-Analysis: v=2.4 cv=J9KnLQnS c=1 sm=1 tr=0 ts=696302e5 cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=NEAV23lmAAAA:8 a=pGLkceISAAAA:8 a=Kkm8_YgmlilQVAZT1wYA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: Vl6R5tz9XZQjiMVwIS4jV6uoOT-VCOOp
Subject: [oss-security] Null Pointer Dereference in HarfBuzz

https://github.com/harfbuzz/harfbuzz/security/advisories/GHSA-xvjr-f2r9-c7ww
advises:

> HarfBuzz Null Pointer Dereference Vulnerability Report
> ======================================================
> 
> Summary
> -------
> Affected Version:       HarfBuzz 12.3.0 (earlier versions may also be affected)
> CWE:                    CWE-476 (NULL Pointer Dereference)
> Impact:                 DoS (Denial of Service)
> Vulnerable Function:    OT::SubtableUnicodesCache::create()
> Vulnerable File:        src/hb-ot-cmap-table.hh:1672-1673
> 
> 1. Background
> 
> This vulnerability occurs in the SubtableUnicodesCache::create function
> executed by hb_subset_preprocess. This function generates accelerator data
> for the cmap table to improve font subsetting performance.
> 
> HarfBuzz uses failing-alloc.c to simulate memory allocation failures in
> fuzzing environments. This file overrides the hb_malloc_impl function to
> return NULL with a probability of 1/16:
> 
> void* hb_malloc_impl (size_t size)
> {
>   return (fastrand () % 16) ? malloc (size) : NULL;
> }
> 
> 2. Vulnerability Description and Impact
> 
> Description
> -----------
> 
> A null pointer dereference vulnerability exists in the
> SubtableUnicodesCache::create function located in
> src/hb-ot-cmap-table.hh:1672-1673. The function fails to check if
> hb_malloc returns NULL before using placement new to construct an
> object at the returned pointer address.
> 
> When hb_malloc fails to allocate memory (which can occur in low-memory
> conditions or when using custom allocators that simulate allocation
> failures), it returns NULL. The code then attempts to call the
> constructor on this null pointer using placement new syntax, resulting
> in undefined behavior and a Segmentation Fault.
> 
> Impact
> ------
> DoS can be triggered.
> 
> 3. Scenario
> 
> The function prototype is as follows:
> 
> // src/hb-ot-cmap-table.hh:1669-1675
> static SubtableUnicodesCache* create (hb_blob_ptr_t<cmap> source_table)
> {
>   SubtableUnicodesCache* cache =
>       (SubtableUnicodesCache*) hb_malloc (sizeof(SubtableUnicodesCache));
>   new (cache) SubtableUnicodesCache (source_table);
>   return cache;
> }
> 
> The vulnerable part is:
> 
> SubtableUnicodesCache* cache =
>     (SubtableUnicodesCache*) hb_malloc (sizeof(SubtableUnicodesCache));
> new (cache) SubtableUnicodesCache (source_table);
> 
> The types of each operand are:
> 
> hb-ot-cmap-table.hh:
> 
> static SubtableUnicodesCache* create (hb_blob_ptr_t<cmap> source_table)
> 
> hb.hh:
> 
> void* hb_malloc (size_t size);
> 
> Although all operands are pointer types, there is no null check for the return
> value of hb_malloc, causing placement new to be executed on a null pointer.
> 
> 4. How to Reproduce

[see https://github.com/harfbuzz/harfbuzz/security/advisories/GHSA-xvjr-f2r9-c7ww
  for PoC code & instructions]

> 5. Result
> 
> Segmentation Fault occurs.
> Crash Output
> 
> AddressSanitizer:DEADLYSIGNAL
> =================================================================
> ==25681==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 (pc 0x59ca4a8f5616 bp 0x7ffea8bd7890 sp 0x7ffea8bd7870 T0)
> ==25681==The signal is caused by a WRITE memory access.
> ==25681==Hint: address points to the zero page.
>     #0 0x59ca4a8f5616 in OT::SubtableUnicodesCache::SubtableUnicodesCache(hb_blob_ptr_t<OT::cmap>) /home/wjddn0623/Knights_Frontier/fuzzing/harfbuzz/fuzzbuild/../src/hb-ot-cmap-table.hh:1692:9
>     #1 0x59ca4a8f5616 in OT::SubtableUnicodesCache::create(hb_blob_ptr_t<OT::cmap>) /home/wjddn0623/Knights_Frontier/fuzzing/harfbuzz/fuzzbuild/../src/hb-ot-cmap-table.hh:1673:17
>     #2 0x59ca4a8f3eee in OT::cmap::create_filled_cache(hb_blob_ptr_t<OT::cmap>) /home/wjddn0623/Knights_Frontier/fuzzing/harfbuzz/fuzzbuild/../src/hb-ot-cmap-table.hh:1765:36
>     #3 0x59ca4a857f6b in _attach_accelerator_data(hb_subset_plan_t*, hb_face_t*) /home/wjddn0623/Knights_Frontier/fuzzing/harfbuzz/fuzzbuild/../src/hb-subset.cc:322:23
>     #4 0x59ca4a857f6b in hb_subset_plan_execute_or_fail /home/wjddn0623/Knights_Frontier/fuzzing/harfbuzz/fuzzbuild/../src/hb-subset.cc:447:5
>     #5 0x59ca4a853c87 in hb_subset_or_fail /home/wjddn0623/Knights_Frontier/fuzzing/harfbuzz/fuzzbuild/../src/hb-subset.cc:359:24
>     #6 0x59ca4a84e051 in hb_subset_preprocess /home/wjddn0623/Knights_Frontier/fuzzing/harfbuzz/fuzzbuild/../src/hb-subset-input.cc:776:27
>     #7 0x59ca4a2cc51c in test_pipeline(unsigned char const*, unsigned long, char const*) /home/wjddn0623/Knights_Frontier/fuzzing/harfbuzz/fuzzbuild/../test/fuzzing/repro.cc:126:25
>     #8 0x59ca4a2cc51c in main /home/wjddn0623/Knights_Frontier/fuzzing/harfbuzz/fuzzbuild/../test/fuzzing/repro.cc:379:16
>     #9 0x73592862a1c9 in __libc_start_call_main csu/../sysdeps/nptl/libc_start_call_main.h:58:16
>     #10 0x73592862a28a in __libc_start_main csu/../csu/libc-start.c:360:3
>     #11 0x59ca4a1eff44 in _start (/home/wjddn0623/Knights_Frontier/fuzzing/harfbuzz/fuzzbuild/test/fuzzing/repro+0x7f6f44) (BuildId: c0ff5896dd1a71d20ba3d34e75d13dd1ee110590)
> 
> AddressSanitizer can not provide additional info.
> SUMMARY: AddressSanitizer: SEGV /home/wjddn0623/Knights_Frontier/fuzzing/harfbuzz/fuzzbuild/../src/hb-ot-cmap-table.hh:1692:9 in OT::SubtableUnicodesCache::SubtableUnicodesCache(hb_blob_ptr_t<OT::cmap>)
> ==25681==ABORTING
> 
> Analysis
> 
>     Error Type: SEGV (Segmentation Violation)
>     Access Address: 0x000000000000 (null pointer)
>     Access Type: WRITE (write access)
>     Occurrence Location: hb-ot-cmap-table.hh:1692 (inside constructor)
>     Root Cause Location: hb-ot-cmap-table.hh:1673 (missing null check)


[see https://github.com/harfbuzz/harfbuzz/security/advisories/GHSA-xvjr-f2r9-c7ww
  for screenshots]

> Credit
> ------
> HSPACE Knights Frontier
> 
> Reporter : JungWoo Park(with contributions from WooJin Won, HyunYeong Yoo)
> 
> JungWooJJING(@JungWooJJING) JungWoo Park of SSA Lab
> Github : JungWooJJING
> e-mail : [cuby5577@gmail.com]
> 
> wonwoojin
> Github : @woozhin
> e-mail : [woonwoojin5@gmail.com]
> 
> yhy
> Github : @ttuurrnn
> e-mail : [dbgusdud5493@gmail.com]
> 
> 
> Severity: Moderate 5.3 / 10
> CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:L
> CVE ID: CVE-2026-22693


The fix is listed as:
https://github.com/harfbuzz/harfbuzz/commit/1265ff8d990284f04d8768f35b0e20ae5f60daae
which was merged yesterday, weeks after the 12.3.0 release, despite the CVE record
claiming "This issue has been patched in version 12.3.0."
