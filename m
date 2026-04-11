Received: (qmail 30433 invoked by uid 550); 11 Apr 2026 01:50:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30370 invoked from network); 11 Apr 2026 01:50:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=1wtwYfl9BM00QAUR8U8LX3colxdAG07Lq7RGdyu9j/w=; b=
	gZIRuYiXH7hFzoTzob4VPn9UmWywAoNJ7G8ydM9u7aLRFW48txnJnV8WpNUF45Aa
	qJu+gJ9sx5mdwqWLY+RYeY/9H28g67hPyTrPspSJ+/Z/tvo068DRYAPQ9GtN5PJ5
	Mvx92kEOoQ5ehOjtS7u9/mie1p/uqL7voC9FcmGqirZ2m5U4gCV6oeSeDRHj08am
	ntvGrU4sy/KIJW7UWRq7YxGI29i7eaNW6VmgALEQhfZlOVtV9ii4u48YJUTZhefi
	vCoL5t5/CNAyi1ttli8t0blOXf0cGBfF4ZuN6j5/KTKTS/BLBNo0eC7B5qs3EFN8
	8d1HdSyO46c/ZThON1O65Q==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u2usIAHIvOlxQw9QyxF/tWrbPqUDov0j/dKkNNwp6ctS63Mmf9tFBfDGreonrBNjzRV2UUeJT/SjQtOJ83UQEgKlQ01fnNgVEDR4QeRAFrHxuw2NenanB2c9U9lx0wjTCbRGM1yeLd6OAqdhRnndtn4k/0GIIvV5stsU3bCPST+xPOCa2OB55gmlFWaNMW6zBp2AfNByTBoOgGo9Dy9JkhSnKHDcvaN9kv9+QuFguminyW3GNJtPMyhDsckFJaQiUSpHikH180PIEuT0XENCQ1d7ZluFvOQ2SK9XLegKzFk/EkexAAI6rEVP2jx579bOTxRzL5FyNNgMhytIj2Ly7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1wtwYfl9BM00QAUR8U8LX3colxdAG07Lq7RGdyu9j/w=;
 b=ccKQVa+qc+fwc3/CQm+RHzXlC3vDhB0RXEJycIdRsRR6Iwlqn1SCmn8ymJvcMroorotboFXP1IAFeC37Nn2LFRiQHCVE1A7/fxJr1vx5OcCGG4EdoAkPSTmkzJLMmUYIV4kpcideQ6nDect5Q1kQnLotukQCiKEydtrm8vYrQTELecmw1iaLaJxbZx2PBphwtZcMXoX0iYyT7KZUUCnnw4ohsy1RJb2fe7BXLTjJPRVKtlbLHdgvOXB/SnQyeydRcUS9cJqG6jhS/7x3jUG6N3BJ9MvxL8HZg9d17vpuBCSOfQQ99VLM6+0svUquD6UDac7TzrjbRTz242BiPMDb9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1wtwYfl9BM00QAUR8U8LX3colxdAG07Lq7RGdyu9j/w=;
 b=Vr+lK24eYU41gy1nEKrGsCj+Go/E15zcMmivB77kfFUODhvtFygfNeDZuuHwF99WG0yAGsXh08KjMvlnJlBSQeZUq1kVS4WwGN3DE0itt5hj9D7o9kr45Qnfg0tL/meW/g+fDl5IAFca94sqCPTumqtEW6dVTNnRjoxzwTt/kmU=
Message-ID: <5b71cca0-984c-4b20-9d2a-2f2b3dc4bb50@oracle.com>
Date: Fri, 10 Apr 2026 18:50:35 -0700
User-Agent: Mozilla Thunderbird
References: <CAADqWPRHme2rEOw=2rWvU+qhN65=kUDaK+575AtAt-2eiPe5kA@mail.gmail.com>
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <CAADqWPRHme2rEOw=2rWvU+qhN65=kUDaK+575AtAt-2eiPe5kA@mail.gmail.com>
X-Forwarded-Message-Id: <CAADqWPRHme2rEOw=2rWvU+qhN65=kUDaK+575AtAt-2eiPe5kA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH7P221CA0066.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:510:328::29) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|SA1PR10MB7683:EE_
X-MS-Office365-Filtering-Correlation-Id: 7b2d4367-80a9-4ae9-5783-08de976cbafd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|4022899009|366016|1800799024|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	gjkjrA4hH+KhDg1C6ZuVaZaPFfTNPHV4DjHBGjzSYKHi0AeZG/3G4RHWOIvYaiUvZAstqYPPhbDDl6XTmHQlgvLg1KbyLKwviQbnGWzRIdbGfPwjW5TiP+W0z2VAe6hLTopcgZRKaXwj5gTyI+VgbNthBc4aYU+C5TzLngQIASN50SR45Oi5pMNTuKaeyyBfXJTe3dMzus1X98bjMdDeQEke1o7wiiKXMsmZd6Q4A/oh6pk7QhfL5yY0wG4bp1cUiCHpD09pdHCWgGPMS6NxtveebU54Hn8R8v7xg+0cJQBnLFUcLDtZgmXLhT17536WM/O7n6x9vAjS4uIatsY+B6hjOYrHqtmHZJM8EV/xDdFgxa292jrPKyse0RIYZrcy+ZW/s4dYVM58SuEA1LyAHah+fwmxvO1rgHBUbdkjkDw88rSylvIi/aJkUsGFvXlbWoOYTf3loU5G/SaEiiQub+49N+cNf+dtonrKYmF19Wb+VCVUqMiGPtP8zsByU1vH6hMkt/gwmHCXIgnN90Pbe0CHjZ65bTyJgrJ/ESMdI4skRTBWuUqd6vVFfKi11wIviOeZNQAFI4CEteBK4ukU5ZTNl9T7LlnpFpT1xRFCMpIg5hgL0DuCVXoww445KS0VgFoeVPT0QerpmhJXAuJfEQn+mU9QieoXMrFQRuKodAiPRF28yV0GKeWUjvba945e83Mdqjx0ZMtoIenmtjYefVuBMW7S59hxWp92TJFFi5RbxDGyVypcDF64pYTmPa2g
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(4022899009)(366016)(1800799024)(18002099003)(22082099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?SHFnWCtvSVl4RFhCenkyRXFONzFlVDNuUjF3NU1sMFUvY2kwTWkrTFIwcDlv?=
 =?utf-8?B?anUwVU1QZlFScXYwK1NuNFk0eHVxc0ZiaFBDRGNqZ0MrNEJ3NVJJOG1BUTZM?=
 =?utf-8?B?eEdsb1c2MUluL2RydHhvbStmY0ZIUXFTQitpd2I4V3EzdmRUSTQ3RzhWdWNW?=
 =?utf-8?B?YmRhV0VwTjJnaFk4M1NRbitLYWFpTXh0Q3ZMVVFvemI1TFkvWHIya2VmV3NI?=
 =?utf-8?B?czNsbUpUWllpY0tvVGpBL3B3Zm9YK0l3T0orVlpWWWtMWFNlVGpFbi85M3JV?=
 =?utf-8?B?UCtZczRGdEU2UVc5U3dtWmNzUXZzNHpFa3JRWUZBb1JtMHl1UFlxbnprelI4?=
 =?utf-8?B?RkRGZCtqMmd0c3czanh1Y1ZKUlZVcHluMXdRUE90OVBjUWJ1K0dPOEZyTFgv?=
 =?utf-8?B?Q24wTVpmcGxrcE9vczdVcndndE5FcXlpVTdwMUZzcFV0MTUwdjM0aVd0NlZ4?=
 =?utf-8?B?ekd5KzlKK0wveDZ5OXY1dEdMY1VZSWs2c05vVWdHaEZCYkhHUjBRWmRLV21v?=
 =?utf-8?B?dkp0Q1M1SHVZdzFLUHI5akZGM3ZTU3FKUDFqVk1uQ2VyMGxkdjNVMU1tb3JM?=
 =?utf-8?B?NmtaaGtvenl4TVJ4REFaZC9WN09CREMzdm5WVjhFVmU0RERzYW8yODlNOXhz?=
 =?utf-8?B?NGYxSE1NdGkzNXFSKzRrNzUreWdmU3d4c3BHOC9yNm1yUXFOeXRuZVdIbFpW?=
 =?utf-8?B?WHVCdzRBS2FvUXN5ZThCM2t0VzdzU0pUV1MvRFhaUXZ0RS83UzNlb3YwbkxX?=
 =?utf-8?B?UDg4TE1qMk9Zd3RLQnNkREdKS05ZQmc1MWc3bFZ4WjBRT2grZlpyb09lMEFs?=
 =?utf-8?B?eTl2eVlXMUlnMDBZVGY1azVGc05NZlZjVnFQdjFRNVRabHB4MlgwQVk5NytS?=
 =?utf-8?B?UG8vd1FVU05zMTVSM2cxM0hqR2lDKzVuZ0pVa3NxZVZaWC83bUc4QlJpV2k5?=
 =?utf-8?B?eFRHWXdiVjNGZ2FkSXJuMnYxNXJNUDJDazFOUXJmbmhBUHg2MldYb1JmdHNX?=
 =?utf-8?B?RDRGbnVnVjI0VFZwbVpWbjhpdmlKNDZZTEZ0QnBpNExCcGU4dkNFS1hVWUFW?=
 =?utf-8?B?cG1OK0NaZmxvZE9yVHQrdDFacm9lL2FHT2pEODBuZUhCZG52VmhUS1BHNFda?=
 =?utf-8?B?cGVzZzFYRFdHSndhM0dMcHJ3K1pHbUpobkdyTUtzNFpoSHFybEErLzl0bDBj?=
 =?utf-8?B?amdmNTRKK3dBM3cxMnhQT0pDbWNCSnlkbDhpZUlBLzE4RmZ3allyODA1cC9B?=
 =?utf-8?B?TzNiK2FkVHZtamhseHV3Z3lLTCtWSm9oaEVxNk5rUmRQMGI2S0daWkpPcHN6?=
 =?utf-8?B?YVc0cEpxeWlrTm5ndStlRlpYeEpBRjh5dDAveWVFUHBYRDg3OURpQTFmb0pX?=
 =?utf-8?B?TVpGR1FpNlE2clBoMW1CZnJWY2x4TFJubnNEQUIwc0xXeWlsUTRHZXpuOHY5?=
 =?utf-8?B?MHJuM1ZxMlFlOVptVk1kaWxRRUI5dytxeTVwbXZxNkVia1dZMDRuckFDL3Js?=
 =?utf-8?B?NHlreW5KR0ZDNnMySXhobTNRS1Bjb2lDSjhsYWdOME0rWDdlTzNYb0hiZHE3?=
 =?utf-8?B?OXIzN2c5MEwyZHliR1VOQVg3c01xYktuNXJPVmFuVjJnZjkrNDZkTjk3N2RU?=
 =?utf-8?B?NUJwcjFWTkptbUZQMmt6cTVqYWRkM0tDRUZHVmFlMXdiSktoK0hhcUdURHJ1?=
 =?utf-8?B?ZjBYQlkwQ0hXNjYvaXNGb0xFdncwOGoxVUtwdkpBN0xWWGN2S3VwNzlyY3Fz?=
 =?utf-8?B?Ty9vSzlnQWdMN2V6L2tvN21vZjJrYWpRdFlEWmxaWXNhSFgzVWcydUViOUtW?=
 =?utf-8?B?WFUweTF4MXZUZjdEVkVJTzV6OHg0UHc1ajNCUXM5VHg4SEVlVXJzemttY3FU?=
 =?utf-8?B?VEdPS3NTUi90ZUJUUkUxK1IwdEhqRWJlWVE4Z0EwblBxWmlyb0szdVJCUzJ1?=
 =?utf-8?B?STJWMWhFbTVJWkVHdkwvUXg4T1c0N2RnUExtZFo0MjZQRTdPL05xamJUYldm?=
 =?utf-8?B?cklMMFFCOFVpUXgvSk1EYitsdkVxRTlKN3ZpRzlkOEt5MWNaRTNnTXlhU01C?=
 =?utf-8?B?dUIyQjdxcThZSE1OaE9LS2hBTFpPbHY2blEyMEN5L0ppZFh6N2FIa3NRdUhw?=
 =?utf-8?B?b3h4cUZ4MFJQN1NhUkZ2ekJCZ0lKVitieERKQXpKdy9NNThXYmJDY3NWNms3?=
 =?utf-8?B?ZTd1SHY5NW84M0x4d1RYdHJjaWxEVy9LN2tqOHhXRWh4RUNyRU5RZElWZjA0?=
 =?utf-8?B?K0ZhdkhPOG5WcVFsVzJIRFdMQloxVzFySitoSGJZWEVKNk9RN0Q2WElSUmE5?=
 =?utf-8?B?cnNBWkg5V3oyUzFtRlpmUFE0UDBCcTdicmpDeFUrR1d3QUt4aERxWXNkdlZT?=
 =?utf-8?Q?O3cOYoAQB8RZfwbo=3D?=
X-Exchange-RoutingPolicyChecked:
	hRhw7v+tJm726rbBcdYJFJBLCaXmkeM18+m4Pt/JlJ0YKJ96NLVs33aC6jIXlFGjtc88tQeshHanjjWG9832d9WUqt4VEW20LNS/FtsvFfGMEgrWixDOHEbIFQGeWcxVdl4hlS9jueNZmqUoepquDc0k+kRfltVb56DQ5pHkH1K/UQQ2NY3pSR8+yRpZ6EbJVnPe35CRIR9FeFS8dwtNdsgFqN0DGDL1yOHVyliuKtbNLcoWDTKkq0bYUEsrWYoCakChbDwygDmnnct/vt/ppJhJHfzoqCSEMJXHLkZew5pw1dIuFrMmPD/kluvY8rqb1DPISyE3SLjSe8KFk+h6GA==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	LeolsnKbNltBVpoWhuSJXu9P3SLkbc/zBMS6ds42bUUB6xfeK9o8vIwJlha6mV9ZCL3GLCOPxF3PK2rPf5alRCEeksm5nTCiXtaHeop9/qx9fZhuKiP/XHvm70rkXsoHMOpSW6l/lWhKccf4XydW1jClZVDSezOD8O3UDR2i+LUKSnO9ye9ewpyWw3i5Dq+C8vMHDzG4rdSLe9yzr4iPSwjz1Ok7Gha9W0JcPPj3mAPnEuFmYVaUpQEfuS+GoM6Cfv82eOAE3pz71lKNtS3mo+4IQlyIDcuV/2JQt3uE/W99Z1J5zjFJcUDexsAHFMLZn/k0XsrZ6emoAwCRaDhSIad3nSQhe084jD3DjMAiIhr256fjEgGlyLr3iuGYtSsd+i2fCSVijj6vYlhImOcwVbodNJz/Ef/3DUB4a+JZ0UXpDDJarlsx2aRNvz+SH+XNHrFbR1mWCZXKJsjNmTg+ZWWIkH2afnTEG2PBH3E7lMrz0Wnm1ZBJggvVwaTfC/RafDbTxgEKvXXhUtJkea8BD1FChkuPRqykdVjfteo/kZv3RVSlkCnJls4ACMU70eahogQmTyPdL11bHVznFs+aJAsMgAUX4KyZVaDnm7YAvAM=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b2d4367-80a9-4ae9-5783-08de976cbafd
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2026 01:50:38.5094
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t7X83XgntygYFniUo7Xo/dYPN3XlNUCIrG1p+2Q7A/cSYydBjzHKL1bussyJ/nVJRW2qmFBPKaLUNfmY12qWBifh+BTp6RNHvqsoQly3fiM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB7683
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-10_07,2026-04-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 phishscore=0 mlxscore=0
 adultscore=0 mlxlogscore=999 bulkscore=0 spamscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2604010000
 definitions=main-2604110013
X-Proofpoint-GUID: DkKxVK8j_Wvlac1swHgd_xnaQLhWI0ZF
X-Proofpoint-ORIG-GUID: DkKxVK8j_Wvlac1swHgd_xnaQLhWI0ZF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDExMDAxMyBTYWx0ZWRfX0hdcDXOi6R9h
 H0Ag+ZDgbesT+M15v4ctJDTSDBcdocxQ0iGHlRsG6u+v0/ryugj8q9YFJDVHKQdI8FxVYJ8FtYl
 6zZ374S8O6qD4sc1gCs7ArttbjUUBzAEDhYLpCVaNj3VTUKBXNhv6PnB3h+PBGiqa7PUWdPQ7TH
 ybzl839g9l2/Tn41MIFvfZef7QpeJK4fvfremtgwJ1bI+LMCTFY7U6RJq2l21Nj3QhveYNJLHE7
 xuN9oo6126t2pH0jFiTL8wy4ychjxLjO+C5yAWuhq4YyS0Zut4iqLtY9FLT8qdPeCO54OJf+ZFp
 WVSsKmkMBXTVPzmWJgn7AqhiMoQq7qf2srBMbH1oEV/7Rm4LAkvvX5lAakCnBq25zuE3uXBI6Vy
 KY2Bez7sMQB3uFjR2iqpffDcALWRypCGk6gIBZzmcAS4SBkjZ20splKSjzbhVksDEGAwrsymWEj
 qSNFCY4wmf9JMLr4tetgrOejpUz1ncDVzSoLuAkc=
X-Authority-Analysis: v=2.4 cv=DLS/JSNb c=1 sm=1 tr=0 ts=69d9a8f3 b=1 cx=c_pps
 a=zPCbziy225d3KhSqZt3L1A==:117 a=zPCbziy225d3KhSqZt3L1A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=7Gl3-_t3PgB9XO-mQDs3:22 a=8r2qhXULAAAA:8
 a=NEAV23lmAAAA:8 a=8AHkEIZyAAAA:8 a=_emA39UAcdMotNMjBAsA:9 a=QEXdDO2ut3YA:10
 a=8gvLZcY7Nlvl4CGD_6nf:22 cc=ntf awl=host:12291
Subject: [oss-security] CPython [CVE-2026-3446] Base64 decoding stops at first
 padded quad by default




-------- Forwarded Message --------
Subject: 	[Security-announce]Title: [CVE-2026-3446] Base64 decoding stops at 
first padded quad by default
Date: 	Fri, 10 Apr 2026 18:19:00 +0000
From: 	Seth Larson <seth@python.org>
Reply-To: 	security-sig@python.org
To: 	security-announce@python.org



There is a MEDIUM severity vulnerability affecting {project}.

When calling base64.b64decode() or related functions the decoding process would 
stop after encountering the first padded quad regardless of whether there was 
more information to be processed. This can lead to data being accepted which may 
be processed differently by other implementations. Use "strict=True" to enable 
stricter processing of base64 data.

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2026-34460
* https://github.com/python/cpython/pull/145267

_______________________________________________
Security-announce mailing list -- security-announce@python.org
To unsubscribe send an email to security-announce-leave@python.org
https://mail.python.org/mailman3//lists/security-announce.python.org
