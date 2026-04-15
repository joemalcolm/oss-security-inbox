Received: (qmail 30506 invoked by uid 550); 15 Apr 2026 15:43:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30482 invoked from network); 15 Apr 2026 15:43:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=eH2MU1tV+dvrnRasE76NF5nipIRtnCMMhZW6a8PNFK0=; b=
	nIAGCTQZmpCAAOszv5ZrTolX7I8O5KR48lFKwZTiYXuI34G6oK9MYgaubMQt8YIh
	LgOQyUAGS5Q/tugP0BDX3x93rtQ3YcRjLNbqW/qtkUsif8szI67VZTFo5MearemG
	AYor5KBO+4Eblq+AsV0KL56RYd9B2d6fz2GjSQThvaXCeplONxtHns6bpCOAq8sR
	akvXNYo6u61dXhL6wYazXCx7nDIsmJ9ihPRD9YGRryH+qlyrKBz6Ay51zJS53P4S
	IZ77g0vBtWAHmBkzKTkLxpDtzx4KPaAbnp5AVvM6MDMf+jwY7SX5wbiv7/n9dvJg
	Rttlba4NlrP5k2GeVv//ww==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=szWstfPYpCBlul3T1570OGY0X4FN2ye2bfBDGkoYIkSSeh02qVKVasNPthTRgyFOjf+sPefmF1flMVL+BOym7rk4ESMOMzWWb+sbcj9Xa/WIb34NNKyuVDp4EBTYNrXDqwW0ifNl0daV679GiTBAy2xo/UMlkJ03iN0ymzut44Vd7biDCvphxnJvHuikHM7gpKjBR6A9GQ6lkzW8r0zBbFRc4+uARXioysPWs3wps0Ipwn3sdYxKgyqbqO0FYhhQw/pYHsF3El+KmCUiP8GdPmKamXowLLCmZd3mM6J8alRlL8xR5oOx4VklApTw9Z+KpHWkRwA4/yiUApq6RaYjUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eH2MU1tV+dvrnRasE76NF5nipIRtnCMMhZW6a8PNFK0=;
 b=bgBm1qA5Idt3QW6kAYQynkL0pJ0ZUL25XtMkfJK4r01iT18Pv4FLeIzPhq1VoLAl1RM7jXpWfW7RKpg3LSMzyLBcFndFiqqyZOGJUynh8ZfFrM+BT4PD6nr6k/9HnU0hNCuTk19b/OCB02X5FpNKirsAXoO0nunuxjE0ncKC0r4++OpNI5f2E24fhfIAX2nTu6w/FkpKHXCjyl4A+9hRfnZWeONw2t8IVLYYfSdFrbdJ9MsHCz0Wj0RzHFi39wwQT4uBMy+a8QRkq1jIilgmI7lk6Gz2voCkOeiadfTVocRKmwMo3BKdJa8/Is7X2bghB7AWxHJ0KXXXnPGGjHCQnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eH2MU1tV+dvrnRasE76NF5nipIRtnCMMhZW6a8PNFK0=;
 b=jJZeH88TlAEU3hrM3bF2WcTLP2dcDwEG6JEAMmu/Ar3MiJfoe5x+9XtdDAetlN8EHlGb6guZ+0yaG+DF4nFUri0eJ8mvkAaibjKqFwCgHE6gtVp8bwjlW1hGh+70gCDc5EHx205gyUCfvAWVMRSt+akfiYms0kfgYPNjq2rVxv8=
Message-ID: <99091b8b-ce66-4bba-ae8c-196e0b5bbd56@oracle.com>
Date: Wed, 15 Apr 2026 08:43:29 -0700
User-Agent: Mozilla Thunderbird
References: <CAADqWPToJz6g9WkYihiHBTBmfFGS8qW_o_SgZB0ODZr3zNtH0w@mail.gmail.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <CAADqWPToJz6g9WkYihiHBTBmfFGS8qW_o_SgZB0ODZr3zNtH0w@mail.gmail.com>
X-Forwarded-Message-Id: <CAADqWPToJz6g9WkYihiHBTBmfFGS8qW_o_SgZB0ODZr3zNtH0w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH8PR22CA0008.namprd22.prod.outlook.com
 (2603:10b6:510:2d1::20) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|PH8PR10MB6316:EE_
X-MS-Office365-Filtering-Correlation-Id: 5ef8be0a-99d1-4fba-e0f2-08de9b05bf12
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|366016|376014|4022899009|13003099007|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	X23VFmRKh3x68Z6P0UDCjaToVyvg1ycQPjmnJoHQI2bKXs1NThBhEBpmxjqL5KRARZEWbilLlcp9U6oojwVq+oOjm1rZfSzuH6plsmQ0zsPYkbckkyUMkOEPu816qXaGu/rYnSSa0fiwHiHmaSYs8fGYvE/GV7hyh5R4fZ7sjapBUfiRcbTIH9uEBWV42pGjSjEjnP0kbw+Z5htD8zVLLgHEMOahqGt3U60YgwKg0+sfN8ocH+RmkZscs7S7nc3vrZepMYc9NGf9v4XXSqJjlfrUeTPdhmNDP8Um7a7DjYLzz96zlg+w3VlzFwscEPF0z2W1dFZUF13eH5fdVqiqG9Ziuys0GdV/L3+9vEne7AoWG3Pbjeo/WZuDQr4jvX8SIeYTSBhLU/Jsm9pi/aFk9nBN8nfMAk50vfCeICv1NK+NOxbCv6Xss4UODcxSjnZ0O433lOeuQknrOngMmrKMhqyYTd6rXrhH+V2BLhnds9/zVJAUZ7JEIDDEv/Shk0WALoDFujiy+WPVyMNbqRL2X5kW8LrINdnhf+PT1flnm1rVHAJ8sj4nXgB8MihiLjUng/mIxP3wvPTyE83+QdE9ccFYiSWjpZMZMu86Pe0zy1PEqixpLenUdsdZk0P1V6c0oYsLuqOl7vvJ6DnG1+VnicsH7A8z9lDi+/QrsUH3VZWTl2403cHhrJbV45lDuDl4Kfz7/fpXbMDt6YcX7ybMC2l1H7aL+187I3rzedqASqyTqC7GqdiWUssDQc1EkyFg
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(4022899009)(13003099007)(22082099003)(56012099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?eHBDUGpTdDJIcTFQU0JMT2ovd1FHTG1hM1pnS2phVGs0TXhIdGgyY01qT2pt?=
 =?utf-8?B?RGhTR2RzUExNczVrZ3VLZmt6RnFpR01LTnJicnkrQTd4THpmLzlPWHNLRGVh?=
 =?utf-8?B?RGtzSWtIcnNTUklTdS83ZDdSY2hXYitSc1k1WkVSUnVkNDE0dWhUZ2dPSEdE?=
 =?utf-8?B?TkNBSG1ubElKeU1nWW5wbDZjd205aHRWTXF2QTVFeGpRM29Rai9oOGRhc1FF?=
 =?utf-8?B?NUdKeTdxN2pKSVdIRDUwYm5YaUlQQnEwMy9jdlY4ZTRjaTZoOVZzdUxwZ1E5?=
 =?utf-8?B?QWRybEZUU0hTTWppZmxHMk01UTdBNmg5ekp1bDRTYWdDOWpLMlNGbVUrUHpC?=
 =?utf-8?B?VXZ3UGVwQnE1V1ZrblhZSlpZNit0Lzdna1hvWmVmb3V5dlFRdW1OTkl3dzBP?=
 =?utf-8?B?NUhnUlN5K3NyNkNTODZQbWQzcjFGY1ZuZ2RMQ1JDVktMMXBwMDJmLysvUnRH?=
 =?utf-8?B?ZWt4QTFiVEdYd3N0TnlHL3JkUUFWNDk2OThVWWlrcy8zeFM5N2tYb05NMFcv?=
 =?utf-8?B?c0ErcW1BSGJYcG15MmNlY05wTVRxRmR6c1UzeVM1b2JZZThLTGxxa21XMU9E?=
 =?utf-8?B?SkEzZmk0eWJCMUE4eURVUi8yZldrdHFXbmJiZHNPQnlzTnZGbFMxYXVlWldP?=
 =?utf-8?B?dnRwQ0xwTzQxRWtPWlNvU2t3ZXl5cDlQSndtUHl1T0Q0SHltTGVUNUhkV1ZR?=
 =?utf-8?B?TGo0YUlxSE4raXZpOXN6Y3N2OTFKY0NpSmFQSGtqK09zODlVWFVlUGl0SmZ3?=
 =?utf-8?B?SUEwNktGSEJYeG8zV3U5aEF5ajFjeEF3U3JRcDgrUE1PK3pOUnUrZFlEWE5h?=
 =?utf-8?B?dnRWZGxPMTlyOURIQklTVXNVN01NODNZQklJSi9HcjJmTTRYc0tlbFpoNmEw?=
 =?utf-8?B?RDJBYVVhc1grdDJqT0ExWFhsUkkxOE0wSHpDWFF3VTA5Z3AwdUFucG1VeXBy?=
 =?utf-8?B?bG9heE5UWTlCRk1JblBBV2dPVVM5d2RlNVR4SFpSWTYxanRIbzcrRGhKaFpz?=
 =?utf-8?B?TDBzM0s0Sy9BOWlEQjlNWTBEMTB3bkkwOGJHMHM0bEZUYVNsdXJXUmJhaDFR?=
 =?utf-8?B?YmwxVFQ0SlcxOXVHNVlxR1Nka0xtaVBlVnZ5MW5KQUpVdHRzZ2hVYWFzalRw?=
 =?utf-8?B?T1JPNG42bmg0K3NNRjZqNXFrcVExZy9qQXJQcnNOcnNUVnBKa1FuRUVHdlV6?=
 =?utf-8?B?UkJ2ajZNNTU2Y2h0aUdsMllETlJBaVdVM2pqb0pvNFVzazc3bFhzMHdRR0hP?=
 =?utf-8?B?bUo5YXl0V01La1Z6ajBtN3lHYkx3bWM5S0E1dXhvLzIzNHgwSW5FeWRhN3Zi?=
 =?utf-8?B?V2VPNEZDc2FPWTFIUnB6cWEyc1N5NFlIQ2pCTzMxcmhqWmdDQnNlRStOeGpG?=
 =?utf-8?B?NU9ROTY4S2h0cGdyVjZMblBZUXh6c3BpcDU5Y2ZoajhQNzl5TU5zQ3Z5QXhK?=
 =?utf-8?B?R2NRcEdSVFVZZVpPVWhQQ0k0UE9sc01YNkVVOCtwd3NiRGJtQ2RCQVpvVWtS?=
 =?utf-8?B?UTVBWnRwcWJaMURCYWI1UFpySTgyR2xqUTZvbDFlOVFyMFVuaVRSN2VCaFpD?=
 =?utf-8?B?citXNzlBU0lWaytsdXNVSWVMbVUrOGFwQXF0aGRkVFFISmJiejB3SEV1WEdh?=
 =?utf-8?B?ci9FbjZqOXQ5eHFCdXhoSXpwbW9zUEY3YUU1YTV4OC9kUW5PaTNreVpuWmdI?=
 =?utf-8?B?N0pEdnZ3YjhwT3hpWWMvdllOR0NpcGczd1lTZ3hESHQ5ZmRGTzM2ZUo1NmZ1?=
 =?utf-8?B?SzZZS1gzR1VqMy82d0doQ2MzVEdPQmU2a1c0S0tvTE5XQUErdHIybjNTTERS?=
 =?utf-8?B?NFNyc29RLytXS2dFRGVqKzZUbTgxVlBqZU8yRmdyT09BLy9PbFFGb1luQnhO?=
 =?utf-8?B?VW1BZ1RmdkpJWDUyMXZmdi9sa25aajNvckZXMFFLaDFVQlFiYTFIWmhoSnB4?=
 =?utf-8?B?dEx6MWRFSWJLL3NEUFZ4TitYblNTYUtYblp1Y0pxbloyN0N6UUt6cHYvbk1S?=
 =?utf-8?B?OWlGTzgweklITTlpZDZ2R0F3VzNrdUJpc01MZUgyUWFQOTA3RnhjQ2R4VzQv?=
 =?utf-8?B?MXpaOGpNbkFML2t4ZkluNnhnTlNrUXJzVWRXV2FrK3dCMEVyeDZFcHNZc09N?=
 =?utf-8?B?S0hjUjZUT2wrbTJodXZLY1JSQi8wMVZ1RnNLbzFDQWM1eVA0M0hwcEhaZXlO?=
 =?utf-8?B?MkdIMDN5MFlNZ0pqVzdPTzZ5Q2J6VzE4RjlreW9YSC8rWXFhMWMyWElEUGwr?=
 =?utf-8?B?c1V4L1pJUnZxVUQ5TWVLY1ZCRnNPNUpFYjRHVWIvMElEcTRreXVYWnA1U25D?=
 =?utf-8?B?ZmdMU1RBZFFpWnBaRUNkRUpQdi9janQzZXV5N29zZ1ZCUGVWUUN4RXh3OFBV?=
 =?utf-8?Q?bYBNzL4X3R+YKDio=3D?=
X-Exchange-RoutingPolicyChecked:
	E1s0sUOGLgpBpqpFCj26jhT6Bx3NE0Z95XUMFjkI0zu98By+5/cX0WhU9at8yiqePN5HjtcOLW4EXjFtH8vzUd8MVu4gGPnXlFPdi3HBIoW6+y3wNgAYvmg1+LN6EQspEZKKMB99Yfuf/Hah4JXPcKDnq0twglNIC3a0z6kG3/mioWr/AsyqcAxuE2bCjd1E3K0VcFcRQljEVCrWkMGm8v6T+hjCy2hwVrMQCLUdzkRJ01LnsPTIuW+COrvrKqALzskXTsM6MdTMgU6eI1MF2uLxOsrdo1+7UpHfF5dgHpAv+gzROVUReNznZ4oyZHU10M1HwOOjYZ0N56djrnA1AQ==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	mu0Ha7SlafXyWCnLP4UVEaLgUdjJxNj7ADv7zGo2ZMwedQhzk9p7+TcIhLCxQEKV8l5zaIQSMrrk38h43LdrU8OCNxwNRGoOKJGDnqcvZLPnTaCYrxu5le+pQfZznouymIFNX4GK4pnTJi/S8RbhUzqi0RC9Kq78ScnoTDczFOwCGHoVfeKJPeVC+exjzlHxd5sPpQnrtzbt/c2/kjz0pEX76K/rXj+FrFwx2/3KmO9iwTkfnmGo0Ak86FkGouqH8evUxJe2c4zTVBTHJ7NbDr+xcotqola9yQuPbht5u8aV9oACcjiT0g+E+5bqMUJPeF2OCAneIl0SWMr1rahVVIxJnigXpMdejta4sRROWqdUojTNgz4/iodGRMzVSNpJueUmLuofv8uaruLMJMjv5NNVxcNi65OS3ytirS8cRF5KdkAvWO8DKq6wpGGg7BdnXqhh6z1D77JL9aUONMc/Dth97gqPNf+uxOAHKm2/kJ8kFCbkVwSqxooK8e4yCbddd5byIozKfL/x4G+yQCuGp2OOrB2IcnSkDYAxeWvAUCLiqEfZYCDqIq3zlZUZFCXG+zYfkNDSHymSKU95Y0aJ+TCUcR3c0lEpkjSk/Ifv+Sk=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ef8be0a-99d1-4fba-e0f2-08de9b05bf12
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 15:43:31.8418
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AnBQANvnDE4NVl9fTQQ23d8aEBlhDSSmSQIkVkZU2hEhJH1fk5T/lwQtdUz9kjgRC7cBfhi6y9NaDXwoPIG4XE3bFdBHc/AzlA6Xh5tuslE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR10MB6316
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-15_01,2026-04-13_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 lowpriorityscore=0 mlxscore=0 mlxlogscore=999 spamscore=0 adultscore=0
 suspectscore=0 bulkscore=0 phishscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2604070000 definitions=main-2604150145
X-Proofpoint-ORIG-GUID: LMBga9Kerfov1KACzxWRYSkCCpqooa8j
X-Proofpoint-GUID: LMBga9Kerfov1KACzxWRYSkCCpqooa8j
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDE1MDE0NSBTYWx0ZWRfX0297A4AzK3I/
 Jqa+50jnhaNypboV63NwjS0O2tcO1t+c4S17E754YkJNHVYnAJ9fpawYTgjVherezImOuvAdHD8
 pD2N1P0UihAhnpVwRQzDHUl85thV7xR3bD1WFB2UaMgn5MNIrSr4HOprUOn19iWtdMwQbQgtpHj
 R9hbeCCaqVwlUQJ8cgQwktcHe/QQSo2NlmuUK6+kC+iPtf7MVBAMHppt9DFLnOnKWsYzZzsjOSe
 aTGI9NHc5eFuXOtBYROafQLhL7sXXiPKdNA3gv/VruhGZWHNxfWMpoSPhUWxnP0bT+qSKtufEQx
 T9m2BGw3fuTFEuQCZaiuyfSMPrF1mV/zz1DIPdfSNy9mbcZUE+UJbqaPxOe8t1+SqEPiXzb7+aG
 jOjj+CuM/VOSxf7JR+i5tQ0MzlZ0xy9f8tFNbaszGws/G4eXjo3RBPGJs1jA2v3JPazq8fnedSn
 vP9Uf3yDUYXLYH+AOww==
X-Authority-Analysis: v=2.4 cv=Co+PtH4D c=1 sm=1 tr=0 ts=69dfb228 cx=c_pps
 a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=x4eqshVgHu-cdnggieHk:22 a=8r2qhXULAAAA:8
 a=NEAV23lmAAAA:8 a=8AHkEIZyAAAA:8 a=VOEZE-n60ZhGYY7J5XgA:9 a=QEXdDO2ut3YA:10
 a=8gvLZcY7Nlvl4CGD_6nf:22
Subject: [oss-security][CVE-2026-5713] CPython: Out-of-bounds read/write
 during remote debugging when connecting to malicious target

https://www.cve.org/CVERecord?id=CVE-2026-5713 provides additional details
on the affected versions:

> The "profiling.sampling" module (Python 3.15+) and "asyncio
> introspection capabilities" (3.14+, "python -m asyncio ps" and "python
> -m asyncio pstree") features could be used to read and write addresses
> in a privileged process if that process connected to a malicious or
> "infected" Python process via the remote debugging feature. This
> vulnerability requires persistently and repeatedly connecting to the
> process to be exploited, even after the connecting process crashes
> with high likelihood due to ASLR.

------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-5713] Out-of-bounds read/write during 
remote debugging when connecting to malicious target
Date: 	Tue, 14 Apr 2026 15:13:09 +0000
From: 	Seth Larson <seth@python.org>
Reply-To: 	security-sig@python.org
To: 	security-announce@python.org



There is a MEDIUM severity vulnerability affecting CPython.

The Python remote debugging feature could be used to read and write addresses in 
a privileged process if that process connected to a malicious or "infected" 
Python process via the remote debugging feature. This vulnerability requires 
persistently and repeatedly connecting to the process to be exploited, even 
after the connecting process crashes with high likelihood due to ASLR.

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2026-5713
* https://github.com/python/cpython/pull/148187

_______________________________________________
Security-announce mailing list -- security-announce@python.org
To unsubscribe send an email to security-announce-leave@python.org
https://mail.python.org/mailman3//lists/security-announce.python.org
