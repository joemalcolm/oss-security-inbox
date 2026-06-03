Received: (qmail 32020 invoked by uid 550); 3 Jun 2026 00:53:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 31977 invoked from network); 3 Jun 2026 00:53:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=J7w3WNeoWr+h7c0Um8i9jT+Fnmp/IuYejVewIHW3iwI=; b=
	h0s0QdLLQ1cXhdOMtnTBoqmuLk2dY/pPwP9kSGE/c56y9zunyH+bFEoKd1FWof88
	2H0WH9ktTAg+bgqBV5vX6yUnjwWrYt2XLetuAzvuhXskgL1lFhw8pKhXxdg0QMpF
	aCnhbvtILTRu0tRHhoP+iQASrU/1FPmsfxfbTQeKscqm0jvFe/9RlT3cj5ai9lXk
	swvOHoZz1Yl933hjDZTI6kSIvMdm+K9iA1NcpEnBBOeqd2ReXBpR/KXl0WGuVkvr
	EYKW0WS5tl4h7cZhFnB7zPLq3v9Ak+iH9exut9JP1i6bHjlS7GgsowQE8r+jd1LD
	AY1gs/1T6S1jTxh2muvPFw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SKgq9NiVgdkoiXe9OYJ9VJynccepWG2XdUwNTaRMtsIHJTapcWMD49L6YPLIeqD0/LEw0bLYcbrfXIx6/D7/907hl6WRWO1SnZXnIgBw8wOFWzh2ush/5FHE1T+U8eruILXK1KnIdLjLIw9fXG0dPMpAyDNvXEZELXQcRweW6FyLbCv8T16V+kZot1LjAFd6t7sRwd4mHffP9ULivHx4SVCp2Ss1CxRfPMKulrcJNP6sV4ama9Gh5Mt7oZ0XOtiiW2w++6m5f9ArA9W9FsVl5lzZ6qv2xC1feXb0haXBVQSGU/bPLreSPbUP4Pm259V77g+mO8rK7O+62OZmkK4fZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J7w3WNeoWr+h7c0Um8i9jT+Fnmp/IuYejVewIHW3iwI=;
 b=GpV9tAvvTNrw/VE7qKcY0goZSABBc4SKpclnSoJ339g++JCmzGamyxywFghmfmQnlMBWqKW0gVgbN12enyEN6p1rduyH5DjlZ7IuyVmOqkiQjxKspHwmkzms4IzOfeDESob9aNKu+NLrjwtmq4rGYuAar/RhQVqUHMOCM0V3qpbsobVtdv2JrgATrakTX+EqsMvHYD1HdYLQwWvW4033970Or4cii/zABEX1kH2LMfIatpG0sKVFovrfMNGVASwPn4XxvWK7W5AJQq7NVFDxA2til5oYqujJIvCasku2DZ8fDYRpx+io76IShZKY6pEYekg6hVLeagXaVSwRtGTRbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J7w3WNeoWr+h7c0Um8i9jT+Fnmp/IuYejVewIHW3iwI=;
 b=fiR/V/AXpN9dP5F/t44CWPEiOHsE1TWX3/1oE3PWVYnQNh59bvCxPVIaPpTmxIQc10K1V1XfwhZcFkQrKL+lWJ//85JOiWUI0hsIPMINTGsKjMajYUT+v3zXKJ0M/3CVmn9i0gBZyEdso7g/sorNTkuMgvohERzTutr7jOsKT18=
Message-ID: <225905f1-c362-4ff9-9143-63b97fa9e3c7@oracle.com>
Date: Tue, 2 Jun 2026 17:52:56 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
References: <BY3PR09MB8833EF36AACF81744D6571F9D6122@BY3PR09MB8833.namprd09.prod.outlook.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <BY3PR09MB8833EF36AACF81744D6571F9D6122@BY3PR09MB8833.namprd09.prod.outlook.com>
X-Forwarded-Message-Id: <BY3PR09MB8833EF36AACF81744D6571F9D6122@BY3PR09MB8833.namprd09.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR05CA0197.namprd05.prod.outlook.com
 (2603:10b6:a03:330::22) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|SJ0PR10MB5646:EE_
X-MS-Office365-Filtering-Correlation-Id: 61251355-3a91-471f-6d84-08dec10a746c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|1800799024|376014|18002099003|6133799003|3023799007|56012099006|22082099003;
X-Microsoft-Antispam-Message-Info:
	9BsNojt8ht5N8p1OG1dQtBsXbx+OyQdqQbVzR4fkpzMPS4EI+LP7ddA5hApYaU0WUPgjcCkqckJTnKDRKjUoUDhfD2WKROqwjvnFgz1BTExjBgYpdkj0XmTUGiWeZ/j09BW+Q4j5rnfveu5rW4YWaoLdCrYfToVVa4TruVO5Agd8NrWXMPMX34JqcSmm5dF+tJgaDPK3ke61S1pHdC+xa28JJvX0K4YLnBqHxwewPg/sFZLYCcDsTRWDwyBKwd/UP2+NlYIj6Q09KYdKU/hnpvizsgcaJBtJo95uWn6wrkUzwnt6p6aDkfBTI4BkraHonK4xUioOCNwkShXkca0d8atsudcIVIXuFZivxZxJVX2Et2bo9wxrN/CQ2nmdtNIfMCd05/5SoXVQ/VXILAtc2zgWSQNjYSvjsuI6Bhn36NcvwwMCE+RJatDpTiP9oms8Tye80Q2wOjo2YEEY6oPGCgikiCTH1jrw4o2aPU+tC8zu9mtJq8x1khu47lWsZv9oz+d5Ew9CVi4jN0mkwvEgieSCjJ0aGfE54FkNjFV17f+5y5RasB8J1pE1D9eIbaSr859EzW/7SE7/t5VdDNg3mY+0dx76hp33uX8nEYYow7oUBlajuF6x9AiFzyrhS6M9oh4SEIuyjOnIHMI0gLdUSJXvDATzGtpqzX9Sk66RXV4iH94AWZ2A7Ik6KK5uhwXQfCG9wMr0zkZOlbHdiBDPhA==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(6133799003)(3023799007)(56012099006)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Q3ZQVnNxbGh5UmRoVnNobXFSTjN6WFFJVGg1eVJFVUdrUlU2TTI3SmdqRzFT?=
 =?utf-8?B?VzFPc0thNDdFR3FJK3BIclBWUFE0OU84RzdnWWNoV3JFaXloeS9uYnJtSGZp?=
 =?utf-8?B?V0ZwcTZBcUJrazl6RVFydTBxbXVXMDROYlcwd2pnbzVyMTc2V2E5OFpUWnF1?=
 =?utf-8?B?TzFuVXBsSkhzUEVTYjRwU0c1QzgxSzZSejkwSFJsWGlFbWFRbEhJUlNxQzdk?=
 =?utf-8?B?S1M2dnM5alRMRTNYNFB6c1ZaL0p6cmZLb2RGV3o3YkdWTUdTMFNRZ3ZEb28r?=
 =?utf-8?B?c2IwSlM1QWVUTldYSkgzSEppV0kvY3ZBYnFBNVhQdzI0ZFErdkZHelBJUmhn?=
 =?utf-8?B?eDBTc0poWEs1MytRVkpJbmF3MWlTbUVRdWNnUFoxWitYSjE3Y0ZnTVdYUzJE?=
 =?utf-8?B?MW5saHM2d1FrVUdNK3o4T3M5czhFU2pUc0dsTCtKVlc3OVZ5aDV4UEFoUFk2?=
 =?utf-8?B?Z1F3NVhmQTZ1WWJwUnJ3by9LL21oWXU3bHVKbUVIN2tsdEV0ZTBLd0xSNGF4?=
 =?utf-8?B?aUNrR1F5cVhmMlNTb2h2VUdnVUxLTUxGMUhjKy8yaGc4RWZScW0zU0FvRHpQ?=
 =?utf-8?B?UnBVUmZGYUFJcHczQms0ZTM4ZnAyeTJnVU5SbU1qeXUrbUI0RlJNQzVxR1dR?=
 =?utf-8?B?V2IwSlU4SEs1V2lSNkhoUFlBOGdmaTE1WGluQWcxNm1BZ05reFFUOGliOFNV?=
 =?utf-8?B?M2FsWW9SYUptRVZ5WC9BNllSNzRmUUxYVGMyZ2Mxc0V0cG5oNXdXejV1a1ND?=
 =?utf-8?B?aktIZ25LTkFyazlxY1FCNHFoM2VycURuMlhxelNrSC9JL2RmZ1ZXUXVHSnE4?=
 =?utf-8?B?WEZFY25yK2tIMFJQakFWZDBLVEhUMno5YXdUbU1QMnNZUmo1RERibWhEc2hJ?=
 =?utf-8?B?a3VGSVR0ejlmTGx2T2FZTUFQZWlIYVVLS2dSb1U0SnN6alBxeHJpWU9QVms4?=
 =?utf-8?B?djhTYlJZWE1UMzRRdERkZXAwd3hYNEMzcmVEZitpUHkxdzUrMWFXbTBaSUdL?=
 =?utf-8?B?VVRzdENqVTV1bkNMeThhb0xZclRIQndQMFZraUtTb1UyTmlqc2FyUVlLanQx?=
 =?utf-8?B?VktnWEZjamhzajMzcCtWWXpWTlE5cGpvbjhUbjNjbndlL2E2WEg1RnRWckpZ?=
 =?utf-8?B?WGlsb3d1RGY4czNGZ2pHbFo2K0kxVnkwUWNtQVppS21jOGNkSFlJRHZRRlBs?=
 =?utf-8?B?bmtBak1pN3J3SmtGRXFIemNVSitpbHpsUFpXU3FVRnpaMXpYMjBvVnN2Vi8z?=
 =?utf-8?B?UmpuU3JFSEFEN3VueExGNmpTdDNxekNvMGgxYlhHWVM0dnhkTUtJcFBSblQ3?=
 =?utf-8?B?WVhHbTNNT2Rja0ZmaHFDL3hlZWJaVGxSN05WbFNkQWxGK25HaUlPZ1dydzNy?=
 =?utf-8?B?dE95dU9kSlJ6TWluclRsVUpSdVBGeWxoOXo0K2FjaXNZVTZNUC81QXNOYStr?=
 =?utf-8?B?UUdmYTJwa2Y5VWtUbHRYeVlCdW5QRi80MlpmWk5vRmFtVk1nMWFrZFRzd1No?=
 =?utf-8?B?UEF3VUJTVEhBbUVaMGdOdWN2M2hKY01SRHQ5YU1tYTNCTzEwY2U4blNFMExs?=
 =?utf-8?B?emQ3ZGxCZk5hcWxCVlV2ZU5uMmErdTJaWWZtNXpRNWJQMExPTjZJM2RWODNB?=
 =?utf-8?B?blo1YmhyZHpRVkYvS2ZadElXeUlDR3NvQTQ0RWJpZ3k5eWJYNitneS96MDFY?=
 =?utf-8?B?UGpLVXlDUXM3Z25MRUJSdTdnNXRJc0Y2L3NtVXQyMzFvRk5TMHJ0MWlLYmhu?=
 =?utf-8?B?TzFSV1I1NEpHMWhEb0hUbzExTCtuMnYvVjc5aks0ZWFyWkl4bTBrVmZ0bnk3?=
 =?utf-8?B?YjFObDBuRmUzKzhEdmlPWVI1d3kwRFprSDMwK2ZyM0NwZm5kMHROMVcyS0Zq?=
 =?utf-8?B?bTJGOVYwWkRZNityRVl2NDFJN3YvQUxJLzExZ3dJTm4rOGZKbTJ3R096R0du?=
 =?utf-8?B?OUQ0Z216aUdHTEtuVkMvQW9OTFl6UlpZRWQzMU9Gb1JLckhnZ0JqU0lCUHY4?=
 =?utf-8?B?RlBlNmlpK1Q0dzJUSnZLMDhmbHh3NzdDcGhnNlo4TjhNSjlvOGdLSWIxb3Vk?=
 =?utf-8?B?aTFrdFVZaTA5TWVPSWEvWjZ0T0J5c2pHY0xWQWhIaDR4dmU3ZG1XTnExOEFU?=
 =?utf-8?B?UUMzb3VIcHVaZWlwVTBIUlRYSnVTcERlb0tNWGx6QXU3Nnh3UkQveWgyRnV1?=
 =?utf-8?B?VGNPeFROREVLZm5hczgySlJwQkpwRTRvM2pOM3ljU1I3ZjRMajFIZXNwamJQ?=
 =?utf-8?B?cXJyWE1qeVhnMWhyRGVPVEcxVGx4MlVDeWpNN0RLT2xyRlhuRGRFVnpwMWtV?=
 =?utf-8?B?cUY3L0JINzhOR3JIOEpQcXlHa1kvTVRpdlIvSVdzdVlRRmlXejR3YmN1TStn?=
 =?utf-8?Q?2Vw6Ad0aIeE/Q7xU=3D?=
X-Exchange-RoutingPolicyChecked:
	KygMR32ei2fgvwA9K/OVG2KlaOao9UbDP8/ynMQNrGddxKr2onWdYLMR6GcIPCJg+9mh+W1j0D2ck6KwzkrpiIu7qAuI8jKrHnY1sn7P7W+oOp/IN0rjEnvwcnNo7wMUROmTZTP3X1RgYljOL5K7CnN/OOpbw7prdGetX118h4x5x6GvGui9vwH7vES3s8S2iLvjZfGQzd+Hh+3cIEhdD0wrxdlmeTc82pFNhxOj2QaCKYVzkw/prdMG3JT7LPcJV+XbSuQDLASCtM16SiBJPXXVWnVNL6//poMFgMEdKUvKarIsceXbALxhZ1YLeRiSchIigo8kWuejkJI13JiYKw==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	TdhKZ+KCgu/hM45wJD8YSaHidIcZ68tflSSyfQEOsatonT1kJYNznuoZAam0afIVpZUh1s4RDEpmANc094gWyn6CvuBTQ60Y2VTxq/u9vHlYoOCY+T6isDnVVqOYpYT5H2wSt6oxW+uAZNvUlHBTDaCA0QAqk3OoK9j787ffhCgU1f/CWBUI7ktqiV/ZBsrVLkpa2vekW+v0jGHKbU+a1B/NVbtbS9p4+cfaGf3tH1d7mMrp3YdYtNfLwyaomAeuwc1KMdOnOyQwHs1e2mv3Zt2hz1jl6yjzDzkFv9PKJMTldEH/x6FaSwh0S65kT3YOZeHhzknt6aiFASguByX43mZQfSSxgo5xQW8H+WGk3CuAZQf5XHEc0q6n9h9sFq+DOX5Y/iz4IH08HSk3eTBBNCwgQN90v0wlrc4YMKodTBOOZnqCVKHM/Cs5uNffaxv0UwTC6vBfmV3O31oYdnXKRcbHq2uO+VNs87siN7BCKbkjsD12eyYtNm/bBYpW+6upbSAJthJ5d7aKafS3wwEAisKzpUZT7NrnjPWFGqwFQGbNO+SYwO+ysN0AQS2QAxyXlb8DESkabgdxtvbNTdqftIJLpMuqTiNZECSvKw7QnVg=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61251355-3a91-471f-6d84-08dec10a746c
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2026 00:52:58.2137
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tzUgJMZno9K8W8oiuZpsabH+G2P76VWBrMcxoWiz/z4vPgVDSQeNNDJvirztza3dLUhVMhTrBTVoUbQgDC7d9oWPkXrHK8Us/OHNEz2dMAE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB5646
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-03_01,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 adultscore=0 suspectscore=0 phishscore=0 malwarescore=0 bulkscore=0
 spamscore=0 mlxlogscore=999 lowpriorityscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.19.0-2605130000 definitions=main-2606030005
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAzMDAwNSBTYWx0ZWRfXyDGYoQ2IqMEs
 7hiza6RJ8R1I/Ae57QPp3CNPBumpUAF1BnNMVevhcCYGtgtP1u2JtYWvuhRZFsn+NURk7fsPL8V
 PJcNLrDzi9h7jyTJhYjQyhLCiDcKAukbEGqzQG+/TfWrRN5P1H2aV9zot2ULPN2a9MR/MT18zmR
 t+TS+UYmF29zTg+BifE36CQz6XDw5q5gR9jySZaQoviGOA3kHsovDBZ9/5Z6jvwrGr6r1306BpX
 HkclsFMg3Lkzzd23EdnRsi0A11o75JppOYnOcFXzW9iybXMsIePcPU1y3mtX0L8GNHgCx4rDw4b
 35/Yf2TzlPlINI+UahRfhPKTCtwLj1/jGC395EXgbdrLn9Xsf583sBzc+0/daQMc+2Zw40vpxWx
 xECrPlaq5Z9gWzSG7/RjgKCZ7rTil6AERN8tvPeDoYlqlNbqXuQ7pJqiBR0NP7oa+ThQ0Xf9KmD
 Sco0n+mNHTojP4hLJLQ==
X-Proofpoint-GUID: KZJgpIrBz0LuRv36cCWOaCwbYSKdxPKF
X-Proofpoint-ORIG-GUID: KZJgpIrBz0LuRv36cCWOaCwbYSKdxPKF
X-Authority-Analysis: v=2.4 cv=Po+jqQM3 c=1 sm=1 tr=0 ts=6a1f7aee b=1 cx=c_pps
 a=WeWmnZmh0fydH62SvGsd2A==:117 a=WeWmnZmh0fydH62SvGsd2A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=FelO9ux0wxsA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=BqU2WV_vvsyTyxaotp0D:22 a=mDV3o1hIAAAA:8
 a=kwgijFvF3jYr6AWKgsMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
Subject: [oss-security] Fwd: FreeIPMI 1.6.18 Released with security fixes

The below notes the new release fixes "exploitable buffer overflows in [...]
ipmi-oem commands".

I don't see a CVE issued for it yet, as CVE-2026-33554 covered a different
set of subcommands fixed in the previous 1.6.17 release.

-------- Forwarded Message --------
Subject: 	FreeIPMI 1.6.18 Released
Date: 	Tue, 2 Jun 2026 17:42:47 +0000
From: 	Chu, Al <chu11@llnl.gov>
To: 	info-gnu@gnu.org <info-gnu@gnu.org>



FreeIPMI 1.6.18 has been released. It can be downloaded at:

http://www.gnu.org/software/freeipmi/download.html

What is IPMI?

The Intelligent Platform Management Interface (IPMI) specification
defines a set of interfaces for platform management.  It is
implemented by a large number of hardware manufacturers to support
system management on motherboards. The features of IPMI that most
users will be interested in are sensor monitoring (i.e. CPU
temperatures, fan speeds), remote power control, and serial-over-LAN
(SOL).

What is FreeIPMI?

FreeIPMI provides in-band and out-of-band IPMI software based on the
IPMI v1.5/2.0 specification.  FreeIPMI provides tools and libraries
for users to access and read IPMI sensor readings, system event log
(SEL) entries, serial-over-LAN (SOL), remote power control functions,
field replaceable unit (FRU) device information, and more.  More
information about FreeIPMI can be found at the FreeIPMI webpage at:

http://www.gnu.org/software/freeipmi/index.html

Release 1.6.18 Changes
---------------------
o Support new "altbridging" workaround in ipmi-sensors.
o Fix exploitable buffer overflows in the following ipmi-oem commands:
    - ipmi-oem dell get-active-directory-config
    - ipmi-oem fujitsu get-sel-entry-long-text

--
Al Chu
Livermore Computing
Lawrence Livermore National Laboratory
