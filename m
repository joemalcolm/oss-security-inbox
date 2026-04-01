Received: (qmail 7425 invoked by uid 550); 1 Apr 2026 21:42:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7321 invoked from network); 1 Apr 2026 21:42:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=unmoPugzyI+UGLq9n0MaWgZ62+jXxZeAp/Fy98V/A3I=; b=
	RmWT+DGHKjff98bQ2rs2DJTz0UjylZPSz7f16HRasVv/rBKmo8ENz9LtLVg2eW3/
	SQwrRg73cNSzAk1YZfAozZddCBD/J28QohBOw/qjF6sq/6jIowa7szuPBK3DvVJ+
	8TP0chGs5cg91AMQRdMWGyNko1oKUgUjqR1vt0ZLPzAGuG7oQY2T72tipq/BCcYr
	PcJwADtByaxEhlzePu9nwLYBzdDSrjFkKhzuQB+lGpgPxJpi5IVHpiPbwWeQryQE
	pSoJJBImxmT4fLJ6wk5A78ZrBnnrYlMLMgui0WMjMoA/lsRzQyvKB9w31UQy7F7R
	vBMluDGTRiyGQh7PZ4wxGQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iolW5LKzuIpGwvCp37jQZmTUiBh9y2cLezaksDeS29p1A7ewPgwuE5dYfwsloJIK9IA6zc+aHdTjfaxN9WcH1URmfkUIsohlE2UnEQmRaTIdwGnuvA5mWz9tXyZQlIFIXm6s5E5IHaKCCePjJKt8Jh4eNR2Fm6+B9QFb4wxgCbgd5MCzzwzhVDLO7bGHCzkQzy45nVYbvOxSmLLKq+7mJ0wcNZi8V5BQ7rUwCfKFRCTPF8OeLH2Qhe2mUVFsrM5ww6ko33f4EgTruD/fukDGfGazHHJYkbrG8+GSEl/4CLR99hokkudFjgfPO0gJnKHikU5V1xUoawgISlhv2c6Wbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=unmoPugzyI+UGLq9n0MaWgZ62+jXxZeAp/Fy98V/A3I=;
 b=ND/tCND4xd5S5VbZASzW0bHDg7uQ6Jd+ewoNbUbQTcL7f+vh2FfNfnjhkNr3JEhkltAqWyN6xElCctuRdnMuXaiopFO7KDa6+Zu7DHitsmrwEgbV9X4yxO04d/8RKtIshCr0y6zL2zoxFDxTe8ddTiq8JWL9kjkXO1mc1E7cE9R8n6UuV338y7BIesuO46+H5oTpSJ+RrT7ghEZzY94N3Epa3Tk+gclmqprFEhyGAsJRi6x7N0CETHNbPrLSy1HTRUS2x28AuPtKCX7V/9GDyFbdWkOPDFJy4UyBf3dcs9rslhWvNa562avU6QCfz+uWegLhkWXJLH1M/rhGR6bDzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=unmoPugzyI+UGLq9n0MaWgZ62+jXxZeAp/Fy98V/A3I=;
 b=vIKfQSaeQvPzAfOeDDg7jsn43Anin5TBb2Qr5KriOEqrP/zti+R67XpWs59FT9RdSWqEWLw1A1LGfuX3NImnks6LF2Bx7xp81EJ8vRsuTiG35XPEMes22fkNmt5n+1pH2wFG0JQZJZtInrSCGbYmunBVdExaSM7GOZ/5AtyPaHc=
Message-ID: <51acbcba-4fa8-487f-9f7f-1fe576e18f76@oracle.com>
Date: Wed, 1 Apr 2026 14:41:47 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
References: <a33f28d4-7f32-436a-8387-0958ba0311b6@python.org>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <a33f28d4-7f32-436a-8387-0958ba0311b6@python.org>
X-Forwarded-Message-Id: <a33f28d4-7f32-436a-8387-0958ba0311b6@python.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH0PR07CA0028.namprd07.prod.outlook.com
 (2603:10b6:610:32::33) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|CH4PR10MB8193:EE_
X-MS-Office365-Filtering-Correlation-Id: 5e40d164-69a7-409d-7036-08de90377a6b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|4022899009|366016|376014|1800799024|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	iXsjE3FzH/8Mx0VNCE5yGIptdpbY0/MQGJAvNw74BNxtNTjk49ki/bOmDZ3e/Gsuzrc/nFT0TLicqkrcW1O5fXSQFgPiZ7rwhN28bYLEgJH9QAfNftJrXUlKC9e18XPNxqoAFYRep0SBeD1ABMRoDRUkPM/dDdt9GhQbGM4raO+68WCB1yOT9KblvjttbPiBi9GiriA9g6zlCw4AEk81VAfuY+S5r/TFjJ0g7DS7XHWYqusdLxH7a1XLuY/M9mZvfIRwZv+t1rhcNN72k4Khn4xda9HHrEilSZvEPpIlOvgtfmgZnWWcURFM94SUOwT0ZmFmrz9i1d40r/64EeKgXxI6aD6Nu4+TofpBNf71kMxyNJyuORNbnm8tsClr/LQAh2aUdw9Td4e/Qkt3flX0ytemQQ8iS4jwPQwOtuvnWNc4QttBzUHXTxpDdDLnR6HeC+lpC8hXIxV8Vfiv/Tvw78uK8fOkaPf6ZGYYJxLDe100SQgQV3+vFzq39YKU0oHDJZPAZvp2cz0ymTCedwu5HZwl0VKt/IZ7AI41bf+2D/2oDDMSMCe+DOw1uc6etUndL++vXcivqfbgrrDE0ZfftcFJBgcp+g4HZ4KZFD36IR6y1KAG6UH+oKB9hKqz4PJITv+XXySbfFbIhscPxbuBoNo68xHIs8lKgdkPwqIkRt9f27NmwPTbb374e0ER6F7uavbETk8B7V9wHVvxh5tnpP8DsZyfYj3p0znpdNbn1coOif7YQtUg97HX06btxHU+
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(4022899009)(366016)(376014)(1800799024)(22082099003)(56012099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Q1hncGkyeUxpWllwSHUyVSt0UThsQ0pxYWE3NTFNc2hCNEtaVGJybzlUdGlQ?=
 =?utf-8?B?SnVDRTVyMnh2V3A2UFI1d1Uzd3V1T2g0OHhLUGd0MzBoei9OaS9Hd1pxMTU2?=
 =?utf-8?B?aUh0Q2RZQXlCVktHVGtEdXJMK3c0akZnSmtSdUFMTnNKcWFXYm9pOGtwVjRL?=
 =?utf-8?B?dytPRzFLZWlPc1kyN2w0V3VJWnZuZUI2eFJNRWZtc3V5K1V6MEVOZ1ZSUllz?=
 =?utf-8?B?VkpUVmo2Z2M2L1NDVUI2NisvZDNqMTFpUUZhb01SRkk0Ly9abndkOUErUDRN?=
 =?utf-8?B?NkpXUFZIWkZEdWt5UWR0cDY5b0w2Tk1HeFAxc1RFQlhKRWE0eXU0TEw4OVVI?=
 =?utf-8?B?Unp3RWdTQXZDRVQwL2tYT2sveDROMTZEWGlOSzlsTHBaRllaYzdEY2J2dEJ4?=
 =?utf-8?B?MlA1TmhUOXhSWGxLdnNDSUxpTmdtaXJKOEtRRFVteHpyeFIyQ2NQV1VsaXNS?=
 =?utf-8?B?ZmNBb1EvZDB0VS9rUDlud0ZueEFYK1R6OFJSQ3ZsNjJVckdKMDV6WndjVWE2?=
 =?utf-8?B?UXZ3b0VMTjcyejlucXkvSnFkQWFPYk5DSURxdlRDbDk2MWNacnU0N2lDWERn?=
 =?utf-8?B?dC9yRnN6R3lIOVhFcjRuL1JXeSt0aW1oLzByaWwzYnMzNHhPOG16K1A1RVZK?=
 =?utf-8?B?VjUzTVBEMkVsbGE0aFlqUEdOS2E3R01pdGE5ZENUSHNINjdMdW55Zk1NQmxk?=
 =?utf-8?B?S0JUNFNLbWVhQUZZaUx3U3QrSjRjQ2Y0U21kNHlYSXNZTEM0eWR0TXIraEZW?=
 =?utf-8?B?VVlKRjVSN2hLYmEyYVU2SFZJZ0xCTXgvZEJ6OHdSVm0ySFgvZGpBWnNaVWlB?=
 =?utf-8?B?NjhNMTFDTDZXUlF1UjFKWFAzaWNDaFgzd2g3OVJ4eXQ5b3NjRStMQzdXNWU0?=
 =?utf-8?B?RGN6T1g2ZVJ5WUZHemZDUEJ3cE8zeGdneU9oRVFPZE5za2VaeCsrUU1MVGd4?=
 =?utf-8?B?eGdHVFpiNG1pR0pxd24vbE1kWUlFWDdta3BJdWJsYUFRYlFXT1FIZ0E5RFdS?=
 =?utf-8?B?RlZyaWY5UXE2VFNXY0RPUi9NVmRhWG56VzVQMk5ScFR3dnNUQlA0WVptMEdI?=
 =?utf-8?B?dU5UWE5QT3FYblBReWN1S0ZkNGs3WWV3QTBkM1hsVkFJM1NPTjJhY0p1TnJk?=
 =?utf-8?B?dTEzb1pUZFJyZHBKcGZrQlIwVHNpOU4wTUhRUWpkTDNvOVoxSVN4a0ZxQUlD?=
 =?utf-8?B?V1QvVGNGbStNclRERjB2OXZYQjE2eTRLSml4TCtvaTBYMVBSU1ZUbTg2UDVs?=
 =?utf-8?B?TlNtTG5yUmxZblAwb2NicmdtdkxBWnVReC9zSHRJN3FLbG9ZVXd6Ty90NCtp?=
 =?utf-8?B?TjNXRzBSVmxOb3pLdjhPK2FsS3Q2NG0xMG1hbHNiMjIya0lJN2FXV0p3ZDBa?=
 =?utf-8?B?RXRIWGh5a1pQNnVoaXRHcFpEOUd5dnU3cHRSbmNXdmdNY2hjeWRnVGZWNlJp?=
 =?utf-8?B?L09nV0l4TG03VmxPZEhhUkFrNnpLdk91Y1ZTbGxGWTg0NUhsbGpiclEyRmFy?=
 =?utf-8?B?cUtiK3F5OU5yWnY5a1NXdmxwclFDc1VjVHdlSVpiOFoySzd4QmpKL0NwdDlr?=
 =?utf-8?B?Wlp5dTd1N0lLWEg5UnM2alBRZ3FoRWNLZGNJTjZ6T2p4Wk5kcVhzVEVhZEEw?=
 =?utf-8?B?czdyaWwyVjNtQm10V0d4WHJ1N3FPODBTdEhIRm52dXg5SkFpdFMzQ2xqQkhh?=
 =?utf-8?B?YmMxTkxVem9XZjlPRFAwMm5TSnZrcGVrUW9PRkluZGxuaThEblhES0JldGUr?=
 =?utf-8?B?RW5wd0hGWVFBbkI4Z2tBdTIvMzFnVThrVHZORW5iNVhkbnR0Q0g3RVBWU25h?=
 =?utf-8?B?VDdEUXg3RlFJUEpwZ1hNK2dqYnEwaTRGcUsycWFXMHY0eWhwOTNXdUJMNk1U?=
 =?utf-8?B?N0hucVlQb1FwSVFTQjVMdW9Ra2cwUVhabjZRWGNuUnRLaGJmdTNVaVpzYko5?=
 =?utf-8?B?K2diNkJHcEMvUkp4ODM3bWxQZ0dBTW5QTkZyTHhlTGlLZWJXTEE4YjU2UzBn?=
 =?utf-8?B?NTlDYUp4cUU0bDlFOW5hdDM1NkhwcFRkTkVLblFHOFErMEhJZ1BYWlNJV0ZC?=
 =?utf-8?B?em5hZTFlT0czYVZJTFBmSlFJcmI2YnpkTVFTN3FqTURhZnFWanpMSUxFODFC?=
 =?utf-8?B?K0NHTlBiNXJnNUJRaWhKNWtlOERuT2Zpc2k0TEdibVc4N1ZlK1FlNEFEZFVw?=
 =?utf-8?B?VDNNaGpQRVk4RzBJUzVWWUQ3R0pDdTFuMWFkMlBkVy9uZ3EwSkovRHJQc2Jr?=
 =?utf-8?B?aEJ4MDlGbDZXNDUxMUU2dUFTUXRWVFRnTEN4K1ZWa1hHVlhUQ0RnYWVucUY0?=
 =?utf-8?B?bEVFRXZEbk9UazdFaGRRb0g4UFRyVDVxMk9ZSTltdHd4cnBoYUNUODNqVEJn?=
 =?utf-8?Q?v51SGxW05MQRjgjk=3D?=
X-Exchange-RoutingPolicyChecked:
	L3uwjPUPD/cj2iJcSpnJhT9H7a3ukItOBMsuaxkYJ2DVtBS7czqNh1g0xopXLaLoLVXBY56fcLCn4XUaL2hBwgRNt1otusCcq+Tpr1FPBJICR5it3g+XJNtmWlpoN3qfka2OsTGPAaySnvyC7ZmESGZW/YuJi6Iarr7wLBj0ik57XKF/T37PAGag17/q6wesgJqhcAaI52HRFaYWIdQrVCGp+I5Wvm36CBG8VdI/CDpIcAFJB6m+weRiAmQ5P7rhY1GeQsUke0sVF7sfcQHlAiZ0fNcuYPFRJP7tm28doZnRJljD93Gdyj1IRZYAG1AA5yH8LQfl/tWks1gUZh8Lgw==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	CDjWZRc7HVvNYJOucQQDPn7RedQC6hi1kk0SYsc4gB0rPSlkvGcE3iEOQ2mT2JnAYycgWKDMbHKmvfWJy2gMJE4c5xGcheICBMZ7sAbp1XaYb7m/PbDK8Xg6FzbtZbz9GHYxzTvPHxSeSC8e1jSHhm6ln2uvGMbIJqxjQ5OIXTM5peg1ip73Tz4ZAQWMh9UTvvp27OFOSWzcWLk0xQFYOkjRNI4py1P3ezMCX9Imb2pSfZggw6bH6ZpQNmWokr00ugDAaHcsW8vEzcjp2sPHELkyAsr2y6zGl/HAXBO9rzNLA2+kkpAoNUEwOG7CpSY/nRfHvvLk8Ye9qBcjQ48GpKQHjJmcCe6PcHYLgROvZAr87JPEVKe54Sf4at9UpDVbhiiPhyH8yEhCoPRdBajyxYmpOWxMZvX/z7aamSZqagzUlTabLSE2TIelxtD3cBdzsIsS6wboua0iaWlm7NeMOABCfmwC5U7UCtEk0A72Yv6s7dzhETu/joq1XdthrwJjj0cyLtc6z1/qcwxN9XGftcvgTOWllAsZuLjr2kLGWDffLm15xRjNap/fPmhaWTC5O6CWiVMW2BlS/wQ8CAdOCXF7pSD/PYJfs4s7sMsFwho=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e40d164-69a7-409d-7036-08de90377a6b
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2026 21:41:48.5812
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Cu5BqHv7fJtXR4xQLnQFPemyc7eqdPrQg6Cu3zahdiDM4cVMhQjPymat1kr0sq/cq8o3i5VGdzzBpMXxaq9hLnNfNWY7Vgybl5ItJPkYHT4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH4PR10MB8193
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-01_04,2026-04-01_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 bulkscore=0 spamscore=0
 malwarescore=0 mlxlogscore=999 phishscore=0 suspectscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2603050001
 definitions=main-2604010204
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDAxMDIwNCBTYWx0ZWRfXzFHAN5/gbsgy
 LDzRQF4ViCJUhBvLX/mtfDWvXoa8JJqQ0mAtZYXLBqxo0r1zZiM8lV5qWO/9a5TsVKceUl20i20
 EjclIcmfoHXaNduq/kE7jFxJr3tR7dXc3kWmcnuqjdngt8nJHJyqG6iDcJ+Si0Mu3I5uvw0PDT6
 z9RsmhAoCGgm02oRTPpiA7PNLEG6OjOfTwkYnefMGdp+U0rhVWyq+F3DyJZkGmem18rMlUiGxsX
 LlGzrf17Ejx7pQZiqzrKXser2gX/WU7P9ZTtDxGn1IBTnesyq7swoAvkn5lEIHfR6+6OqtuMIx8
 Gl9Xq3SPRr9QqYItVgXUsRAX+DXZXQMWzdvintVLie4oXDQ8SENv3TSGFWew14fMy3vz+yjiiIC
 Ywsz7pO3EcZ9FGmn3gZx5BSaq2Yo958WVsAEpfwgjg+Nyi3PffatST8WvxcezEwP9TLhpTXyf+Y
 P6YbQYoxg9Cq3Wwx63Q==
X-Proofpoint-ORIG-GUID: wVYYToqegxoE6p3LRHKVqeZVJ19rEFKm
X-Authority-Analysis: v=2.4 cv=BvOQAIX5 c=1 sm=1 tr=0 ts=69cd9120 b=1 cx=c_pps
 a=WeWmnZmh0fydH62SvGsd2A==:117 a=WeWmnZmh0fydH62SvGsd2A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=o5oIOnhZENCTenyL_yNV:22 a=8r2qhXULAAAA:8
 a=NEAV23lmAAAA:8 a=8AHkEIZyAAAA:8 a=gknxtsFpXMNhknGllnAA:9 a=QEXdDO2ut3YA:10
 a=8gvLZcY7Nlvl4CGD_6nf:22
X-Proofpoint-GUID: wVYYToqegxoE6p3LRHKVqeZVJ19rEFKm
Subject: [oss-security][CVE-2026-5271] Python install manager script aliases
 search path hijack




-------- Forwarded Message --------
Subject: [Security-announce][CVE-2026-5271] Python install manager script 
aliases search path hijack
Date: Wed, 1 Apr 2026 18:07:40 +0100
From: Steve Dower <steve.dower@python.org>
Reply-To: security-sig@python.org
To: security-announce@python.org

There is a MEDIUM severity vulnerability affecting the Python install manager.

Script alias entrypoints (e.g. pip.exe) generated by version 26.0 of the Python 
install manager were very likely to have an empty search path, leading to 
modules in the current working directory being able to override the intended 
module and execute code as the user.

Version 26.1 is fixed. Versions prior to 26.0 are not impacted.

After installing the updated version, run "py install --refresh" to regenerate 
existing aliases.

Please see the linked CVE ID for the latest information on
affected versions:

* https://www.cve.org/CVERecord?id=CVE-2026-5271
* https://github.com/python/pymanager/pull/301
_______________________________________________
Security-announce mailing list -- security-announce@python.org
To unsubscribe send an email to security-announce-leave@python.org
https://mail.python.org/mailman3//lists/security-announce.python.org

