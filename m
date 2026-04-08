Received: (qmail 15983 invoked by uid 550); 8 Apr 2026 00:50:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15911 invoked from network); 8 Apr 2026 00:50:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=7qRFbnAW9Y3mtGbG
	a3sri8Qa0L7TW7t7KvrmDto1WD0=; b=SCcU7d62l81xkUYVF0dVgJcVOH/qeEeZ
	kbCrQpL9XeM/2KLI8M94tmFWexAmTvViiUiriW5w8L8yJq09jNLYJSlX9R6dzAyU
	7lz4qV+fVz06EsV9xPe5z2XMu8LpB11FjScBf2+gsF3qRFciifb5ovk2oXyc4pwI
	xCL83FT6GuqHmrRuQ3oLE4QSuCU8BmdxM+tv6s+bctn5NDEtDaYog6K78jENe7TZ
	YRe1UldUg2785wwpo0TNU7QUJThPnwb4FKyM9YVcT+qnXiSP4L5zwShT/7jDjar6
	wJx/rGALE0M1GahKKkRqp0BYszUMxQ5ZxDaJWWvP0yivs4bYyHR8oA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j+WFNKQpTqd6q52Nv08rnCzKY30aT3hBf4d/9f8Ove8iJ2945b1HE98f4Bx3g0yINhJmGfOWC54cBbsV4V8rvrmd7RaDwG073nnJqPKkB3Z+EqLuJvCStPTRoyYVC7vSeG/nwCN1BFopBG8kdrTJrXGH19eqrISpW4WpvS3pIknbdkmgn0iXZ+Ordlh4LiQFc4o2lUV/mQPNpZxZmx2Fd7aEm6NBT72hwR4p83yPvGIduz6R3kcy5OhPECmg5kCYzf94DVZNAP1ALwgqJoO7JHP8RXz6j79obdCfsyEj858fNvCnji1w5wITW/F3HryqAvu/NIF4TmEDy57DAwEchg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7qRFbnAW9Y3mtGbGa3sri8Qa0L7TW7t7KvrmDto1WD0=;
 b=PSxwxTdV1RSrPy1tMQQtNCUosl8DCBDnuVWht3sLWq/wAJkyHWCVYBhxGW4zceqPp60ReXhaxO4WObfGRknf3Hvsl65wW9M8OwPVEIvf1vCtgm8/S37YiN8aVgpwSsYcwcUnoE2d/NAN5Fvg1RDzTbPhKXbyR2ZHzsV09jxaUapT2bFTEwtyi887pZBaD7GAgIWVYciAd6yUVPYUISKmuX23+euvXE8RXzMkKKhr47A/HkT0jkIF7W0jE+TU52c2GdiA5y6WxK534EzWC2EJMTJea9Amf9Md3+dNe6zuzkCeKR/XulBD8TuybEQmMidy4VvGi9jJgKnQrPN0PSk6Iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7qRFbnAW9Y3mtGbGa3sri8Qa0L7TW7t7KvrmDto1WD0=;
 b=xRW3wnZ5nwPfe2RwYJ6Xv/rGiGoTOg57cveXEVEsvJYfcML77G+MpHC17ZWWTvixjIuKmdvag6j574CeyZvKpMnCNnD2FXUJqRh5eGYbaoTlONtC2oa4NGcqJqdK8pPO6F5x3go7xYS5ArA5t6XNKOXr+scTSG79cmfue4PkK9A=
Message-ID: <c7faf33c-7843-4569-89fc-279484c526dc@oracle.com>
Date: Tue, 7 Apr 2026 17:50:12 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR02CA0017.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::30) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|SA2PR10MB4650:EE_
X-MS-Office365-Filtering-Correlation-Id: 12d476ba-28fd-40c2-42a3-08de9508cb9c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|366016|1800799024|13003099007|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	7nfYfRzODyQ5ctIEHlqaGFdQVugw05Kw4IiIXhv2AyiMEC/otJJggQM9eSgA/QoXzowWe5335qaiHTRwWDnUQzy3K/qKwEufflL9y4rUvKc3X2M7oIdb2kvT9JDBrgbz6S21x+ZMm3rwyjvc107DCkyg6D5SooBw+bTxe2SWa8sVIH/m1lBqS2trEkeaOfkmw1YANvxIqjXLnBePt8Te5VxFuFA9E0ZfcGaUacC7npVqKmk/P86iMMNFWc6pR0y/OoIQ1r/c3y6w4vVSy/z9BqBKok17Afd+n/FE08/Olz3A30Vy/jifmY4ib5sgulBzUO/XPcn8pthGU3N+jX+UgUG1CA66VVkhMjo/sZlzbcmaOQNeXPj4GZ6VV94NztfQpkEzsyhH9hG0hzoTMppBNG+myeyp5QnBTBRlVQKczhnyCCZaKkKqJFGH+lqipcYtD3nVbBpklZrxjajE1INlE6WF3fzXO0C/TjN85TjJU0A9JowtBkBJ5gEqiNbHXXJDr6Jl399RTfvzf5QR8c8N99AEJOPI/qtqH7zjgFPW4GDp+P00TG6AKA5K2i5+htwLFDOkm8JsBTDm/zFm+K7j3wgsOkeTRy2zCVbfT8GJ+Jk7njKqfXKG8n2gK8zOdX9Et++qMUnYrD1ILj7+pXydMbzqru2Z2L0spgil/1yb2FDJ9mJ83MADrZcRuM5v+KpY
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(13003099007)(56012099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?anFMK2orWkJ3MVBWdFJxZlEycGNyS1FITVB6R1hrN2VoTURBZVV4aFJUdWlI?=
 =?utf-8?B?YVNVV0xMZGxmelRhR3NaTjZMUWlrN0dIazY2MStxdldncjhHbGtTNzdiMTNh?=
 =?utf-8?B?MWp5THc4Qmp3b2NPcHJmMC9nYm9ESnJYNkxnakxUWEQwckNJZHh4TzRjYmI4?=
 =?utf-8?B?QUxtdEVhR0xMWUplaVN6V2xhYTFhT2l0ampoM3M2cExzZHpockdaNjMwV04y?=
 =?utf-8?B?N2RteUFWTjExcDNJazRwQUdVenp4YkMvQ243TWFTOEhYVEo1RGFDTFRBcUx4?=
 =?utf-8?B?N1VqdkhVKy9uVHl5dUtNQmg3N1gyeDRRL1VDZFphZlhaUktoTjZxWEZLWkVm?=
 =?utf-8?B?T3BsdjVjbG85bTY3RXphNnkxeFNtOElJSFUvR09rV2JiT2tFRmVENFJkSExs?=
 =?utf-8?B?TCtzOFdJTkhSekdmYWxKOU8wVHZWc2ZIdGpUT0t0YkdQa0E4MFYxQWZFSy9x?=
 =?utf-8?B?THlMRWd4bjdxeDNJODIvTVdpVUdZRURBR095MEx6Ris1eDNzdjVDVWNGWXRV?=
 =?utf-8?B?RldSejkrRDUrRnVlZzhJN3ROdXZ0SlN1RGRuZFZ5QmV5ejN3NEJpajlPblkw?=
 =?utf-8?B?bE5BUnZtZUNINDJiMCs3QXphV1dxZGNGZmVtYS85VVZPQzllVjZCNENEc0NY?=
 =?utf-8?B?VzZPdmJydDFYN2ExZ0Zsa0dZMFhhZzBVRGVtWVdhV0VzWW5Pa2xqNHFQUXVh?=
 =?utf-8?B?eCtKLzR5TUpHdThrYmdQdFU5dHpBWGtxbnBmVEprOU5VZlpRcWZUWGUrL0dW?=
 =?utf-8?B?azJQZE9IZFNvblZRSm13aTlmU0FMR1BwRW5KZTQySjh3L3lJWE5LdGZzdkp0?=
 =?utf-8?B?S1dSUGkyMnNhdS9oL1ZIUFVYc2lxZ1I1TjNudzVRenkwV0hqVE5GSDVwK2ZP?=
 =?utf-8?B?RElDMEhDSXEzTkozdzNtWU9WeVpBYTA2QTlXQVAwQnZDbnB2OS9BZzF0UEEw?=
 =?utf-8?B?Syt1eS9FWk5ac2JyN3orOVhHOHAwMFBJdnRPOUZlbWpveGFMMDNLbG1YN3lM?=
 =?utf-8?B?MDltSFRQNnJCTTlWd0xSNDZoT0ZocTFUdUhtdno5cHlhSWpNWTNVZU54bk1K?=
 =?utf-8?B?Sm1TVXNXbnJCNmh4bHlUcEtSYTE4VUoyOUJ2c0x0SzNXczhYVU1TN1JHUWpv?=
 =?utf-8?B?TVhlZ3NkMDFNWHBWRkhDSkVlc3h2czFiS0x3eFlscTNvdTFaU1dyaHZtZHd2?=
 =?utf-8?B?RUxqM2lLNDFEbGRmTk1tZW45M3BpNGpsLzNMMzhwQXFTMFcyNHN3MmNUNWdZ?=
 =?utf-8?B?ZmhUZUdWbUk1TU1qZ0xLZGFhTjZxckF6RDVNKy9yTGk3QzZvaE1kWVpRK1lv?=
 =?utf-8?B?YlNnVXdiWHdvMW9HTzBlZDh2ZUpLbysyR3J6NGJ1NkFwQjMxUDY0dkowSDVs?=
 =?utf-8?B?cHVFbVc3cUhqeDRIOWZlTnNYRFI4MXBVdXQvd3ZidmE4ZUsrVkdzRmNaRHVp?=
 =?utf-8?B?RkUzMnl0R00rb29kTjkwVTBUVmpYcEUvQ1BhNWUrTEtCazNJMHhWbG5Xd0kz?=
 =?utf-8?B?aVZhZlVrd2UvV1BXbTlZMzhkelRtVFY5am9ycStnRGY3TWt4QVVFSGpDeXRH?=
 =?utf-8?B?QkxheTZBNTMyWC96UWZOOHlTYTVud09zT1BqVGIxMFAxb3hna1VMTFg4akVr?=
 =?utf-8?B?TEx4aW01UG9ESTR0QjhvMCtYamlkTFNUNFNqWUxNWDdIMlYrVmFON3dVdHBG?=
 =?utf-8?B?S1I0U3N5bnRjU0tSU0dQZUpOZXcxQjNwbnNXTHJnZnZ1N3YwSE9EZ1NyR0Zu?=
 =?utf-8?B?b00zVms2NU80TXZ4VkplOXdDY01GZnZySVlHdW9wTUlUVW5FZk54cEI5QVJ2?=
 =?utf-8?B?U0x1bHRETllQUkZSQUtORm02TnV3NjBVNGF5R3FVR2Z1TVlxSzkwY3VrWFcy?=
 =?utf-8?B?SEZBbUpsWDE3UHllbURMRnAwNjNDdVRqeFA2K1NRYzRIZTBRRDdZZDBacXdM?=
 =?utf-8?B?L2hlMmhZaGY3ZFRqL2cvUm9TMTFIOWtENFpCL3BhbVpHVEI2TzBqMkI2Y3J2?=
 =?utf-8?B?UUZEWG9rdDFiMjIyYWZsWEdyVjhSWVF1Mld2WVBMZ3JOaG4zZzZmb3FhT3ZJ?=
 =?utf-8?B?ZWFyd1NBVWFFWlhyUm12ZnZHVlNXdEZPU01iQ2lza3NhVlhzblV1b28veVk3?=
 =?utf-8?B?VDByYkt4NHdCNWdXQUc3bVNheE01azZYb3d1TVVidkowTWlpak1mLytCenEx?=
 =?utf-8?B?T1ZuYmVrR1o2ZHh5V3lxZ01XWnI5WlNKZlFxYnNMQzQydnRyNHBabG1BaGVH?=
 =?utf-8?B?RCtSUm9lUlRpNGk4R0lVZnNoSUZMUkxWRWdGWkNNN29DUmNTSGlsWXB0S2RI?=
 =?utf-8?B?eExhcFNhWFlXQ1graFdkWFBoRnhGT2JEU1E4NE9tVG9LR3VPNDlrRjloRkU3?=
 =?utf-8?Q?+Sj4VzjXWJGrEDrQ=3D?=
X-Exchange-RoutingPolicyChecked:
	C+bdPpzC0Trulq8TmRwUacPdnZ+jMkqJ7gxnj2zKpPgkfexxkFImabf6yTSbrGhr5+4e+HeH9DHBb2GdcvgS9HDk+YFKhb42NXqwqBEcNqCyVGTYNtu2rKpC734kAoPDRzULCOyB8ENoxaoIFKd7reWKlxixguiYguuNedS2av68wMWqWN/Pre+BL8PJh4YOCLwio3xJrlSxmAVxggoqeQ3uyPSYJZe6tz6zJ4DuY4pmMC8plxI7Mt+Go1bb5gHJui1anRLSTaN5ZNW/Qr/fxesKlusebC9ifEfpjOsrx6+G7xTU52+QH8oY/Sg70HMvYkdjmBJA7D9rGYAn08kiKQ==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	diW5mjpJ9ffwO0I0OTs9rjuUreu/Ko5MXRAXASMLW9S+myEyWRG7qaNcSJSPvUmpto/lZWZVI5NTqgsRl2LddRk/hM9KkrPHhNiYlrZz9k6EGLvmAYVnOeLe58/NBZW8cnsC+WUVJzbPRgmNJ94c0SDZ0S2ntLZVRMvn4wz18qru8a2hoZiAUMdvjIwECD8xgMxBPl5OZD3+tbMeLLgDw08XPcwlGC1dZzOTH4WDC3Bl/+28BiPEgJf5p2pW9wgT067bA5hKCY5KsIOYeQM8wRg2lE37bT0QK757IuywiOquTIjEoz9i330vzQCagU7azVJObLots9QpJF0zzNaIJQZ8SKf9w9IScbls4Fpv8dnbZ0DHlBQPmo5o2CMKrRWuPp9aHQP7na9H9gOGkxDQj28qA/MVxE5PmWKL9zhiEojv/g8wQeW6vBAzet0VE8cE5PwtFYxpepqPWk7Irjq5eOBFi9GeS+KVOSFZ9nk2aycyCwhvA7WCgHqBtdJP/57ORdOj4VjviQE/7/uUnv6xuCdKXbDm2x13+Q/al7HbcT8Qkl96piOEjeiRXd13iuOiOhiuT+HXRbiF1OYt7S3fCE3rtsQjK6tFvVsemmfGjhI=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12d476ba-28fd-40c2-42a3-08de9508cb9c
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2026 00:50:14.3337
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F9pwzw8sOZrlGFgQKzhMGG5h9CoC3QFXl7bvIjcnk6rfKvVW+VfHjP3GkkagOMVY6pe+nxVOk13HqsCNYTfIlQk5ochJetznIQ8gzHB4imk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR10MB4650
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-07_05,2026-04-07_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 bulkscore=0 adultscore=0
 phishscore=0 mlxlogscore=999 suspectscore=0 malwarescore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2604010000
 definitions=main-2604080005
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDA4MDAwNSBTYWx0ZWRfX4nES5AxJRYns
 Uh13CQD/7+ptSYNGYikW1c7Ea2IA5vBoInDU5mqqljXnVo+eGMCHeXpTP/IVkefd5qWyYJ9hsek
 sWHeL7p5xZxZBvkWxUTYiE+kErjW85fErbxspogK0LXc4sLlBmmXhneyacG0xJs2A/6DUXmxscF
 wtqyOd62oiy+dp4vSYJik6D3mldw1xX80ivqlOFEPaY+4V84dJfHqzBpWwAaD2RcM1C3kXG/Xty
 stoL3kltHKXtYjEdOtTAP7/b8ti7HyM13SrdRhwpc7gSmCHtVtjPNaxPof5HlNSZbOwx4EsKPpI
 BnoGc5qb4YyIzmBlwQoezyFG/k4NwJHEz7hK2UvlFjc//sFg81FZou81Oy3HYpsyxnGBVp5DE9n
 JGCElK+FPCmPrASkddzXvjYIjip9TDvS56jxhCtPRLQuc1+Qkki5iYrfFMPcp1KdRJWUvTxX5Xw
 iHPS2YYhaFshjQcxDOlnVm8qVdq8UAEaQcpapkBI=
X-Proofpoint-ORIG-GUID: lbs_1bTBY87r72Vgm565zoHgHDW9nHTI
X-Proofpoint-GUID: lbs_1bTBY87r72Vgm565zoHgHDW9nHTI
X-Authority-Analysis: v=2.4 cv=KO1qylFo c=1 sm=1 tr=0 ts=69d5a64b b=1 cx=c_pps
 a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=BqU2WV_vvsyTyxaotp0D:22 a=wCOU_7NAAAAA:8
 a=iJyNl1xbAAAA:8 a=NEAV23lmAAAA:8 a=yPCof4ZbAAAA:8 a=abCTXPrndlpGa0SPslwA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=wEZQ-ZSoeDkG0_GO8E7X:22 cc=ntf
 awl=host:12292
Subject: [oss-security] Multiple CVEs disclosed in CUPS

https://heyitsas.im/posts/cups/ discloses:

> 1. CVE-2026-34980: Shared PostScript queue lets anonymous Print-Job requests
>         reach lp code execution over the network
> 
> 2. CVE-2026-34990: Local print admin token disclosure using temporary printers
> 
> At a high level, in the first vulnerability, the attacker:
> 
>  1. Submits a malicious print job to a shared PostScript queue,
>  2. Gets CUPS to treat attacker-controlled text as a trusted queue config by
>     abusing a parsing bug, and
>  3. Gets code execution as the CUPS service user, lp (vim in the PoC)
> 
> And in the second vulnerability, the attacker:
> 
>  1. Uses any* unprivileged local user to set up a localhost listener,
>  2. Creates a local printer object in CUPS, pointing it at the listener above,
>  3. Gets CUPS to authenticate to it and captures the auth token,
>  4. Creates another queue pointing at file:///... for the target rootful write,
>  5. Uses the token to race against CUPS validation logic’s cleanup of the
>     dangerous queue, and
>  6. Writes what they want into the target file:///... (/etc/sudoers.d/... in
>     the PoC)
> 
> * any unprivileged local user that can bind on some TCP port and reach the
>   local CUPS listener.
> 
> Are you affected? + Mitigation
> 
> The unauth’d RCE as lp (CVE-2026-34980) requires the CUPS server to be
> reachable over the network and expose a shared PostScript queue (these are
> legacy, but still used). This would be a deliberate config choice – realistic
> for, say, networked printing servers in your corporate environment, but not
> for your desktop (unless you for some reason set it up to be a remote printing
> server).
> 
> The LPE to root file (over)write (CVE-2026-34990), on the other hand, works
> on the stock CUPS config.
> 
> For both issues, the harm can be limited by a security module that confines
> CUPS (e.g., SELinux, AppArmor, etc.). So, if you run CUPS under a sane
> security policy (default on some distributions), the impact of both
> vulnerabilities is much less severe – e.g., no rootful file writes outside 
> the paths CUPS is constrained to touch.
> 
> As of 4/5/2026, there are public commits with fixes to both issues but no
> fixed release (latest being 2.4.16). So, your best mitigations are:
> 
>  * Do not expose CUPS over the network with a shared PostScript queue – or at all
>  * If you must use a shared queue, require auth for job submissions to that queue
>  * Make sure your CUPS runs under a reasonable AppArmor/SELinux/etc. policy,
>    so that the impact is minimized even if you are targeted

Further details, including about how the bugs were found and the PoC can be
found in the blog post at https://heyitsas.im/posts/cups/ and the article at
https://www.theregister.com/2026/04/06/ai_agents_cups_server_rce/

The CUPS maintainers have published advisories for the above at:

  CVE-2026-34980:
    https://github.com/OpenPrinting/cups/security/advisories/GHSA-4852-v58g-6cwf

  CVE-2026-34990:
    https://github.com/OpenPrinting/cups/security/advisories/GHSA-c54j-2vqw-wpwp

Additionally, in the past week they've also published advisories for:

  CVE-2026-27447: Authorization bypass via case-insensitive group-member lookup
    https://github.com/OpenPrinting/cups/security/advisories/GHSA-v987-m8hp-phj9

  CVE-2026-34978: Path traversal in RSS notify-recipient-uri enables file write
    outside CacheDir/rss (and clobbering of job.cache)
    https://github.com/OpenPrinting/cups/security/advisories/GHSA-f53q-7mxp-9gcr

  CVE-2026-34979: Heap overflow in `get_options()`
    https://github.com/OpenPrinting/cups/security/advisories/GHSA-6qxf-7jx6-86fh

  CVE-2026-39314: Integer underflow in `_ppdCreateFromIPP` causes root cupsd
    crash via negative `job-password-supported`
    https://github.com/OpenPrinting/cups/security/advisories/GHSA-pp8w-2g52-7vj7

  CVE-2026-39316: Use-after-free in `cupsdDeleteTemporaryPrinters` via dangling
    subscription pointer
    https://github.com/OpenPrinting/cups/security/advisories/GHSA-pjv5-prqp-46rg

  <no CVE>: Out-of-bounds heap read in cupsdSetPrinterAttr marker-types parsing
    https://github.com/OpenPrinting/cups/security/advisories/GHSA-qfp8-9frx-5j48

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

