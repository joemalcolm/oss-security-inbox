Received: (qmail 9341 invoked by uid 550); 24 Mar 2026 21:53:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9294 invoked from network); 24 Mar 2026 21:53:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=aC8Yi8tL1l7cOEsqhtPZHkGdCQYu1+Yfz3oHdhjIpSQ=; b=
	B5nCP10sKq/WyfxN1KdBejWcnZXUqyOGN8LlFxKP/lnRllmV4G9Qr5/HB6B2RyoM
	JSMQrrYvX0G3/LkqqnIliVWB3V6myK8b0GiiMVpwzMrWJEWapjooI25LSMiRuL4k
	dPxBjHfEQmxDN//mBdwpAZP/0kwb6siXC266dD+4pbp8A8QT7mJapKiYy+WlOP7t
	xz/1Uf//wGWYBot5ispyIQctdhiA7Rc+KhAJYnMx9gIxGCwB+S3BXJNcrq0eRlSs
	WO/gEFfGxx9IwoNFWcoZ6J/MHkYhCZEqRVvRHsgchEsclgO3u0200fpIZ4grNLYk
	Vjd3L6sYdr4Ajv9HOyq3Ig==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MDGEbriToZXekkE+tkmJy3tH+ckb/7PCiu3OLuRENxDNkaT0CBQwfoD4PJM/vunNmPKFe9RllcuycxEw2fxiSM32+5j+kLDwPcknwXKgrsMFwAsRzgCq++suEvABqsaUxWQqyr/L0h+pDmDNCSScCmo5TiqjDvpm7881mtsarSV9MrYEK8SeHoCcDCIgJkMQ+zZQoNsvidnLJ/TyjDgK+tRKue0pkP3kBSdCkSoPT7oDDbqxc9hdobw0n/79HK7B6qS6gPVbLDFT4xDZ5oRF61oSssQEIYcUDNhG4Q3SnwmqYpiPy53iPy/VafTuzmlH3wbfEkhM9y3/9bveHnBuNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aC8Yi8tL1l7cOEsqhtPZHkGdCQYu1+Yfz3oHdhjIpSQ=;
 b=RDurQe+Xc1AjBcF9F6pRNShRwFijR6c+OZB9bqT0lXl6T0AbrFcudrn+99ZKRI/mb3GrjHMAqz3hyDjhOptnD6HOZLb8DrJ38XcuTbBdgtZ12uzkhOO1j1qX7d4QpDcgxCWKOOHltIE+BKeePTHiUz5NP7ciTFk0PtoiuVrB83LTZ3HRVwwhRATE/NbWNQU6dYCDVlPCH1rePjDk6BV/cCOPXD7LFhbCwkKxcvGdd1ETLEdPd58mLQWULObuWisZATF7qIM48+Q7pjRSdT/2GdLsizYImRxpKZGqywnWhyw4aHm9SopYKImG1gjWLUnpzPc/EUYYIRri8zZNSOUebQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aC8Yi8tL1l7cOEsqhtPZHkGdCQYu1+Yfz3oHdhjIpSQ=;
 b=iK/uaETU96B0N32Ww42wIqXkLpnDOli0/5An9wJYKw6LVMs3NMyMmv5HJy0PgyzzEvXR6Msn5qpoYjvpClt31vVVa4CMDm0xUXgA640Uv3/EAoZCfGV6omlw+XAUI+WwhBfoKBDXdccVmdAJ5tRPTtNe/Uevu3XHGK5fIkIMCWQ=
Message-ID: <15ab167a-f15b-4747-bb40-5427c3b48402@oracle.com>
Date: Tue, 24 Mar 2026 14:53:39 -0700
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <8163893e-6611-4189-baac-bce24d03640d@oracle.com>
 <CAPgc6UDfFN0mzSdaweqbqVGrrCcDH8wkEiEKhAVm+o1cqk2+nw@mail.gmail.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <CAPgc6UDfFN0mzSdaweqbqVGrrCcDH8wkEiEKhAVm+o1cqk2+nw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH5PR03CA0007.namprd03.prod.outlook.com
 (2603:10b6:610:1f1::25) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|DM6PR10MB4265:EE_
X-MS-Office365-Filtering-Correlation-Id: db5eac55-9035-4c26-b474-08de89efcf86
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|366016|376014|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	7wgKCxxAXxirIF9CdiHatoqxIaz3zY3THL3Lgu+J/SisyaNN6PQhH1mEB66CkajHU3Jbktl5zmGm1PeHv54HMBvhQgJs064aNICUWKNPbY4w9KztraHPAH1S/TkAWUX2yv3XGGuBbgtutFiqz9omTSHDoYg9I2F1SksTOa6I42GBtFGUAcmLWPxU/FdNQ3jIrGv6BRf4C2QqUcj8j4oKyxs6KdCz0whOJDOSqKrE49NoYAzE53csYAa71J6OpF1jns+26nzZBSXMF8GkRIHAt9tvfdLcu3gIOxj+yd6k3gmXGw3BlH+++fU8kPC7MxXCXcX05Vyg4/TSy18xGF+g4Ah0LepOuJJKQdbcPqb5W1TNtzCNJd5HI4UbsfaR8ZUBDr339AOZdZAwba51xR1QlXqLrXdpQwEkWQZqcoE8n/wVtOBNNAj2daCzCEbsnqESSegfPFeX9RZgl+3SOjUyXeHal1/H82WWKG/y0eqLQ91PTTXHdMEljk66TGhnFZomuXOKKcnGyK+MPO2lp5AlD4LHuFi5UlsmyitxRSfuVKiTZ7ItgcZF95BLG1clpBqCdghQA/2KYJ974RtKyfkt1RCx9L2nUCkMlTE4TgrJY1XyH6I0uUPJAzLqA+s9pS5EZa9EO8KXvz19iifwbl+oCJNMQ2TXwaDZ/YEXQiPAhv5MvlarJF/ah1YI5qAAjwjOBbaf51QrXY82BX/Sb1759zI/uNs/7R1k9GCm4ePM5Zpy234cfyaE1x+2Dycq7NbQ
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(56012099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?MSt6cndMUkxuK0NuSkhpVDVJb0tjclZITS9mdm5VRXh0czl6QTRSMlcyUTl1?=
 =?utf-8?B?cUJUQmd1aHM1WnZPKzViVTNXU0JJWkdXc2Rlbnh4aUxPRmhRU0tHQkJOMWtE?=
 =?utf-8?B?RjJTK1VMbjdoSE5jeUVDTnVDRmRHQW1mVFJHM3FSemcyUUtCSVBTK3lLY0VS?=
 =?utf-8?B?ZTBJSGxscWZOczF2M2ZoN1ZtMXlvK1hTM0VWNjEzVlBFS2svYzg2SHdGZ3Rx?=
 =?utf-8?B?aitZNDkrZkJ3OXNhdnFBa2pIMHczcldCRUV5MFZQN09RcXBJWHVZVmlzb3NY?=
 =?utf-8?B?Y3BvdTZ3NndRZkRoejRmZ0NEdXhFa280d1BJMGtaazA1S1pPU0lFdmNNQ3I3?=
 =?utf-8?B?TjdYTWF1eDBkNnZxLzgrNjRPN2FTR0pZa0VML3JOY1hLdkxBRjJUUzZrVjFv?=
 =?utf-8?B?RmFQcy9ZRFY5TkUzSzhWNk9iVXB3QUI4ZGxDWXMrYmkzaE5HVFNpTVRaM2Zi?=
 =?utf-8?B?SjlJSlNTa05mQVVLUjE5WFppcW1qTnZ5SjJUUFFBK1d1WkF3VzNBZE9LMDkw?=
 =?utf-8?B?OHJDb0M3b2QzRVZma2NtSkl0UmFEMW5weE1sKy8vL2d4bmZrMUs4NVVURDVs?=
 =?utf-8?B?WUVOQVF3c0R3eWFCTnAwcVdMaElYa2s4NSt2ZENuY054WFNRZ3ZvZjFwMGxS?=
 =?utf-8?B?NG5zc28xSURPT0RLVEErdE1TbWp2d09CNlFHWVB5SHVnbTA1ckFNVGdGYzlJ?=
 =?utf-8?B?NXQ5QTlncVlhdy9VOXZXY1FneHVYV2dhOWJJRnFpRWI4UlFyRnB3VXY1ZGxq?=
 =?utf-8?B?dVh3QVh1cVArRDNkRWt0djB2ZGlxU2NOTVNWYUJ0bHRKREQxcUJUNFFoUTZ0?=
 =?utf-8?B?RDJNRWQ0VE8vRUVJa2tpTGJsVEIwUkpCcFNDV0FscEc2TFJHdHBSaTNIbTk0?=
 =?utf-8?B?UEpFa0Vxc3VjZ1Q4LzV2TlZQSGJKWENGblNwYTJ1QnpzVlE1cE5kZVhmMTI0?=
 =?utf-8?B?aVBnVFNzbTB0MWtYYTZ6aUx1SG05V01iWWxSUTl3RXZGMXlMRVpyQ292WE44?=
 =?utf-8?B?dzErWUNmQ3Zkd2tMVlRYT0N1RncweVdUbFdxSXdPZHJLZWRCNkNoTUdqWFE3?=
 =?utf-8?B?WDNzbU5FaFYwVjY0cGdNVG9MaVFQS0gzd080MGd4RGxmVTRaSS9JaTVoU0oy?=
 =?utf-8?B?UnlQMjJ4dWNvQ0hiWUVmUUVDVjlOb0RpWkN3THk3MkxNV0NPNXQ5cGdqN3pu?=
 =?utf-8?B?WGVKRFRBZEpZcU5oVEt2eW5QVHRQdnd0ZU5DZHZSdkxhZ0VKYUt0dTJlaFht?=
 =?utf-8?B?dGYyWjVmRWxIc2VjbVdFU3l6dHlSRm5tbFd5VklnOGRTajFmWnJUWUk5YmFD?=
 =?utf-8?B?bVRhQXFWOExFcVA0cFB0Q05JRFNVR056VkFrQU9OMVFFcE5JZU1Razg4RUdx?=
 =?utf-8?B?WUJnNXB1bS9oczl6WEtsWjZwKytYVjJaL1h4b041Znl0SkpDNGJoZFBwZStQ?=
 =?utf-8?B?S2tzUldSc3hYLzVlMW91cDB4SFE0S3hsKzZMWlpWME1wdks3UXQ2bG1SOTJQ?=
 =?utf-8?B?Nk1oeC80QUQyRWRJQW8zOWh1aDVveFllQUdlQ25PaE1UZXV6cTZGUFlhekx3?=
 =?utf-8?B?NnEvbFZsMVNqNXQ4VXQwUGt1VHExeEtOU2NtUDRQZ0NwaTlLbjIvN00wWHdv?=
 =?utf-8?B?R1QyaTlraTRCb2pOVjlrcjlhWnJKbmNtSEVsbFZmS20zY1QyMkdMZG9pTzRk?=
 =?utf-8?B?eDJhb3ZuaHdzbS8yeUtndVQ3WlRZYXY5RXg0akJKc3Nodm41OUdGcTJtcDBO?=
 =?utf-8?B?Mlg4Zm5Fd05lMERmVVNVSVU5TUZSc0o5SUlreHVNK0pUSFlXRmVLU0t3Z0xa?=
 =?utf-8?B?TU9aSVM1TW9vZzJvMERGUzlQZUxIOXgvMDJMb1htMW5BSHRlbkN1OFMvdlAx?=
 =?utf-8?B?SEJCK0t3VGhOemEweG9GbGxWZnpuUnFzUEw3UzhvSXRacFpGeWdadWRiZTht?=
 =?utf-8?B?L0dvQWhHdjlzOGRYMHVjd0Z2TjZINWlJQnI2dE10MW1QOWcwdERHN0xmSTlr?=
 =?utf-8?B?eW9keEFlaGtlL2lMZUNYUS95T0hJQTJVcHFSTXNFZ010eWJCYUpWbGpwSG12?=
 =?utf-8?B?MVRPalI4dzMrK1ZvZm5LTnJIQ2tiUFdWcytNUXozdENCVnE4Rjk3TWxscHlo?=
 =?utf-8?B?L3RYQUx4RWlPVEpCN0dTTU5BVFU4bWN3UVBOTlAzQ0YvYkM1T29qNVRGYmc0?=
 =?utf-8?B?WTF4bkNCYWpHQzJ0djUwOE1MSGgrbEtaZFRDTXVLNHlPMDNscTlwSzFJbGFo?=
 =?utf-8?B?VnJTZHhoM242K3VoNUZsYzFPNUlmUll6clB5b2dwWFEzdVAveUFab0NTVTla?=
 =?utf-8?B?U0tqZk5DT24ybk1naGgxbDg2MERHbFJZeDVBTGpDbU1vSnFCdTVBcTJlNTJo?=
 =?utf-8?Q?PIpZCF1UaQ/enfms=3D?=
X-Exchange-RoutingPolicyChecked:
	sQb8RK5MGMSIiVWI4KGVWqf2GbN0OTXemWbf3oaB1mht/90m51vvJZoxigkqK4rr88gVICUGoMqh2z9FtKj3UwDFKKFuc5LrO2g1CruhNG6TpKeitoRNNZ8JgAvtknAf+xpve7vtkZlsxQUp2ohyH551XfOUGQniLzc2+6ZEOAEuvBxG308vVKAZQPbJXuQ4/mxA5jeH20vGPhmG5nzYNFODHcVc8U+f7D4Ils0cMbiHQ7fPu7bcoGHZoS0ERPRbBfwjf1R9x01ayUaywLpORY/hBgwMZ7FiKNKIJhxB0zEkUvW336b/uJWweso6dVassgJH0DV36LiLrDvJJnZokg==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	EpvKg1GRX5LO5aU/VfWV2PzGLQl0Kpnn2IOauUWJm7L1PP+T3YmVAU9FobZD8+vqk8vVG58DN7U8OpWLslxRYWJTiW37EgWP5DBy/UZuvTFmrrBxgHLqI6FfEDzpc7DxvyI9CQ4t/blHrcV2BSZjGsit4rYR3krHAuRI6rS5iLZ0HxN7SCkMB5dtMeM4pqgJusH6FQLLqz0aq4Qxrdi0AQWlK639VIz0W6tpGsiu0HRrB1ysDJoJf+Rq1+tEwLFHyxDKQFVviDdnSDxdZVVCmf0OtUwWxn5Rj6ng8Bvi7BJqlUTbJMa2/S4eBCjVpUIkPdD8QjhAwHdeyVeYI7a+DSjsOayG6zPFRv7MHAA7ez+GBeD0UX10x308JMH892Q78Ft3Sp26BRJTajfWesYhMSKvSwAqsKLytlCqvFQu3TeTMhmBTw0jCikao2yfuwQQTbom5qJJqPoQL9hcU3+f3C28el3Wh4dGO8um9F+c7brFWcDna574It9ksdhryPDR9dOPDPoc3SEL9/EDGnYCQzQDowr4Za/U/og0cK6ps4citA2FfQ7xqfQiyJ93+4kyIoXjWJRx39vr1S3zvQjWHBFmXXESbuis+rxIX7pZRAQ=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db5eac55-9035-4c26-b474-08de89efcf86
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2026 21:53:40.6735
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YhOCnz1/sm0qf32mWj7PvqnSeWtXZJ5V9PmUTPUHLEJSFxEuJfyi/0gAYLTCtdN+VI4ykRMNh8HwA0ENsGh0u2hUC7uHHVu4yvsXJmBCUHI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR10MB4265
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-24_03,2026-03-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 malwarescore=0 mlxscore=0
 adultscore=0 suspectscore=0 phishscore=0 mlxlogscore=999 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2603050001
 definitions=main-2603240169
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzI0MDE2OCBTYWx0ZWRfX/BR6D83K/oTl
 WlUvoexT7YHRc319z/SKjABagi4hLYjdHLrFKfOm0KGIEqEfGMd4To2jJrslArSI6FiYQzJ3XbN
 UQ2EvWcS5ZnoVXqGY+cg7JrCo+ZeuHxZS9E2buNs/2z7RgwomM2CszD11ycl9ZbvGCPQ6SZLgZS
 0O99i/g4NZQ3NFyfAQY30Vy/YxEEV3Dq/9WHyTksrxqijJkT6nQB5C6YLgXNs37EdopZVrrsReV
 I01x+kjaSHxB1nF4zbMKNGjaXsEiKn1K4Hfd6OpPG7rlRYdZFJKjOzpfMG4WzgBB4WH7HABJeIa
 ucjXtdvPccZrxp2c7x4YPSexVSZDKGhO+wMHT+wLsN7ei9ydlYfQ8ko+Lh1WenMrfG0ailPITCY
 5t2yF+NShaZKQ6uXptKR6nvkZ7FhL4CEdLWpSL5LuT+WALGTi9pj3PvN1W8HtRhbMthIfsS++PG
 8VW0rwb+3AzRQ55oQaow/i2Jv72p8ZgtOIQoGg+k=
X-Proofpoint-GUID: _lt9t_niBu9loWSPZ5Y5V8k9KPSjkSWa
X-Authority-Analysis: v=2.4 cv=GrtPO01C c=1 sm=1 tr=0 ts=69c307e9 b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=7Gl3-_t3PgB9XO-mQDs3:22 a=NEAV23lmAAAA:8
 a=yPCof4ZbAAAA:8 a=GS1tNk7JlKt3QqmE8NsA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 cc=ntf awl=host:13824
X-Proofpoint-ORIG-GUID: _lt9t_niBu9loWSPZ5Y5V8k9KPSjkSWa
Subject: [oss-security] litellm pypi packages compromised, infostealer added

On 3/23/26 07:31, Jeremy Utiera wrote:
> Of note, this attack is still on-going and the extent of Trivy's
> compromise seems to be growing.

And it appears they were able to leverage the Trivy compromise to
compromise other packages as well.

https://github.com/BerriAI/litellm/issues/24512 and
https://github.com/BerriAI/litellm/issues/24518
report that litellm PyPI packages v1.82.7 + v1.82.8 were compromised:

    The litellm==1.82.8 wheel package on PyPI contains a malicious .pth file
    (litellm_init.pth, 34,628 bytes) that automatically executes a credential-
    stealing script every time the Python interpreter starts — no import litellm
    required.

    Anyone who installed litellm==1.82.8 via pip has had all environment
    variables, SSH keys, cloud credentials, and other secrets collected
    and sent to an attacker-controlled server.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
