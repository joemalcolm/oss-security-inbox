Received: (qmail 32472 invoked by uid 550); 15 Apr 2026 23:06:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32439 invoked from network); 15 Apr 2026 23:06:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=JexfDSJKwLr4u2+AdC+aLksOs8qogIW5yvbIUu3tJ3E=; b=
	MMHGUCkkNX2pbBUlhtR3wEKZfeuuITXRYsMk12biYUwLe6R728qm4UZaYkaO3RNO
	8aMgen+nxXhbe2s7o5MBLw2uaolnDKSpl7I5O7GjIIiKD8rjRBX03S1sFsN1LGBV
	Rr4PTm4FYQRkL5ZIh9HEaO3pcig21UxMAGFGICiA+GaTKjOio2E/+Slo6r21aVJe
	bifUK2Drku9vfa/6xtdpjdr3kvhmispRCg/bmo16+zIL/BZehwpD+UcolmWIS5Bz
	upaor+z4JPUF/KHgboiaccmFnOWvp3Ib3V4gwsVK54Eosj+GjYtjlugE75ZBXXVy
	plVbtKy8XOCAPKajo9xFbQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GE06pdS4N8Un85NDRhQA7L0aJUaK3DpxSeleNzGUQzSyoU+qR1GMVaQ9lL3WyJCuZcseFVZcXHN+pJ6vxw9LwN7WdTtdlQUa4rAsU4I14IjZ3RS4NhiEJRF4KAnttqtX95JpA+n6xYApWtov7r9pNuKVn3BFgyxYJ7bs/PU9U7NA8WUyLoEtB9oeYm/dWsEWQKKvjaor8FeueowFhReIr/K2yACru8iKuNGOvjgmk/CLV3wpTvqtzWAe0GxbSG89TH/C9gTj1J/HYZURxdl1zuqYbFxwczoWOyxuLzshvEC+ARkE1ga+bRgenX9iH4jzxwFV0shzak7h2CaYaKnU4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JexfDSJKwLr4u2+AdC+aLksOs8qogIW5yvbIUu3tJ3E=;
 b=Oevxq/0qArwlf3Zm5O/9nmsqL+IQmjblVjyahKz3dRakUFL4mYDrAIStik2cVUYBgX+Qi8dpFW6pDck/HTTQaC5l/3V7PE6BDuFBQuhh3Vus9RHpmxfjHGQQ57LxZ0RP+Y3ZB8Je4sWrpkcfPTbS7S5K1mxbMs/VtOeV46z2QRZNzVq7lENGec/OxECWr4vYPo57SfBh0qGa4TZo2Hl7IPhp4vEjaOAnchyTOR3F0ESnNMELWTCnJm1ICB5UJafY1HHNmDEBjcir9i6eyvzPTdilrBYKcuwuMlXJUrFldEwy71l+TuvHd5ReCCeaWwUN05yenPmxXD6WxcKj+STiaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JexfDSJKwLr4u2+AdC+aLksOs8qogIW5yvbIUu3tJ3E=;
 b=v3wO9OJ+XF6EA2gpvUm/JzwaGPBfqMw+uWetZpHvmpTi1i616XKq6exWIX0HdnPjpLesPm9FItUAAwbdtlZbMkOAG4LDFoXmeCe5OfX5vWk2pJdFvcV5s9cVK9zXosNvR1fIjr4iK8nVfFxkxd6KSEwgqpoD2+v05HIme+lse4c=
Message-ID: <816f93ea-e2c3-44cc-b5be-e985d42d2e15@oracle.com>
Date: Wed, 15 Apr 2026 16:05:48 -0700
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Olivier Fourdan <ofourdan@redhat.com>
References: <658f8792-251f-43e8-af1f-415b78872be3@redhat.com>
 <CAP=2yyQ2EghfuepLsAopsRpgH8eQLUg5G_JRM=ScMR2NVcjYhw@mail.gmail.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <CAP=2yyQ2EghfuepLsAopsRpgH8eQLUg5G_JRM=ScMR2NVcjYhw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0011.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::16) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|IA3PR10MB8708:EE_
X-MS-Office365-Filtering-Correlation-Id: c0ece276-3450-4e98-dde2-08de9b43893d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|376014|1800799024|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	tNanYKpUzBlnQgKqV+L9NXPvIaLfLs9D42DM4QkYfuaiqw8YeXQnDvrpYy6f23EDxMvYyDeJvvyLhKFwci8QSnV9b1qE94eZI8B2oEg38MRlYVzqIICD5tdtsU3wSUzeDR9AlR57tX7Jtm7fvs88XQMUZfdtSCVfJmwLrIOVSKUzncswwPIyDYkklpaEKmpKfzPZkR5NMf/ONBatNNUcCvI4jbvcEKKYNMU3aurdH6B1a6d6CzxhxZtoYoENaMYXMfqhmZDMPRiSSkDR+bTAG49UNrxsDAE/TYcA2DiDD+SFU6Npt7IAKEsPxvxkq58sC17QO405NvGkOFVPCdPssISWharc/2XCnwO9X+eLGEVEhjZxz27WgoiwshYQpzwFj7rpynyWKaI7bvF3f8AzlXJAOqL9DEqPwvmYceDXorWeHlCIrO/4KPjfopKOUNDrONe6qkJWZRS7N69VsIhunavnwmr6wAsNPHfof5PTzwpRMxzwqIMbtx/aMBrgwJy45JwRMoumqwZawwu+cTgAMdgu94ISKuH3AxFr5OLy1r8g4UxDbQRlMd0eKjmBHL5xiY8l8IWCVYiPHMp2pOj9PShp6Tia9nIgzUzd3DGOdgzDesVgmZz8a1rqUVzCSTn8l5C+ZspBldr0iOcuHvtnCM7PY1+veQo56sHteR2YtQkQzLU4zb38h1qXsd0OgFTu
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?WW1Eb2hiZENPdTZDSXIzYS9BMWRBRWxVQnB1djJZMElCUzAybTdxckc2cHJP?=
 =?utf-8?B?cmRJalJIbkJPM0x3R3BTSEJiR3ZobnpjVGlXc3M3c1g4emkvRCtpQ1JWQjZw?=
 =?utf-8?B?bHR0MzBRdXgrSlRjOWxLRHFtQUlMQXFUTG5Ib210ZW1sYTdFRmprYmowTDRJ?=
 =?utf-8?B?WUh3WjBpRjBoNldxN1ZNTElVNmZXMjF5NVFrWW5qSnRuTUVMN0NOUzRZUEtX?=
 =?utf-8?B?ZkZqd3ZQcERTYTNndW43VFJsS1U4SVN0S1FmQWprVkdMQitranVETFRwQW9U?=
 =?utf-8?B?ZVo2UVFGbmVjYmRRZWM5eHJYaTRxcG9EVDhUSTJHQU5BTXFLWWQ1SUY5cHhE?=
 =?utf-8?B?SW85QXJneHExRVZyVG03bThPSU1BVVc2Y292ZjdZQUlQNzlBV1RTaHErUVpW?=
 =?utf-8?B?eUNxU3A5VW1ETFE0K20rRWNZYWhSU3hOYXE5eWpSRk1iWjIrcUs4eVJwVGhZ?=
 =?utf-8?B?MU80Mm5ybjluSU03SENpUmt2ZFltSE1oZmh0VTYyNG9FaytVUFBqeENBdTBZ?=
 =?utf-8?B?Nmw1MThDMEsvbDZ3ZEJyRnU4L3lESGw0SGI3OTF4VVNDZUV1SXpWdXNqZnV3?=
 =?utf-8?B?bitCNTZiaG5INnBZejk0aUllMFZTSEpra3llWTN3SDZlYml4MnVwUTYySTFC?=
 =?utf-8?B?RjNScUNEeldsMU16SktOb3BnZzQ3LzlWR2FKckdXSWVVN2lPbVFQeEhWcCty?=
 =?utf-8?B?aElCWG53WC93L2gxQm03RjZ2SzZ1Q2U5aUp3Z3NKQ1l1K0kvWFl2VGRJQmw0?=
 =?utf-8?B?ZkpOTTlXV3lmV21lVjRBR3dTUXZCd3R4azNwUjJ0QXM3N2VRL0VhYk9RVWhO?=
 =?utf-8?B?Wm1IS2dWQU5KSDZ3N08vRXIzNG53ZU5MeThPUWJZYnhuR2U2SmN4SVEvbkdn?=
 =?utf-8?B?ZERzV0VTVU81cDVMVzlNZE9lVU82Lzk1SVVvTkVnclhLOFN4Tml3VEZjTXI5?=
 =?utf-8?B?WkhIY1krUGtOcXhXdEVWV0tad2l4TFFadVlseXhYaE9OM0xZenFQMGlJQ04x?=
 =?utf-8?B?ZUV4ajBGRTE0STlSZUV6WDE5a1pvVjFKVnFkaTBhR2JKQXFLbnFWTjBtTGdN?=
 =?utf-8?B?cTA3Q2ErMDA0YWVFUXhRSHhjNHBSaWwyUnJhdUpXZjJmRExFUDFmZHo3ZzJt?=
 =?utf-8?B?QVdzaFdGbWdRbHdhdm4xaGN6dmc5WTErVEI4a21iVTZyZ3VJOGhYckpEMTJY?=
 =?utf-8?B?K1ZNUktvRCtaNmpEUDdQTEVCdEExckN2ZTUxRzlXL0NRamVQTUN4eEZkN2lD?=
 =?utf-8?B?K081M1ErZlI3QUgxMm03dks5SE5UOGg4WFVhK1VLQ1R2cU42N0Uzdi9zZ2xP?=
 =?utf-8?B?ekdzRVY0d2h3NG1iSGRBbmYrR0paUWNiSHRIRHdUM3l4cCtyUFhzdnRkSEd6?=
 =?utf-8?B?RDlhOStiQ1M3bnFGazFCbDVQS3FtQ2dlWHA5eXVkRkpkaHRmQTNWeGhzUXpG?=
 =?utf-8?B?bm53UU9yVC85YjU0MzdPbnh4THRtYjc2TFBVVEdEcnQ1Wm8xbVMva1JNZHpL?=
 =?utf-8?B?cHo1YmtjZzRyckFNczg4ODR4Q291Q2lKRTBKZDJDOFVYTWVKdXJiQ00zN2lH?=
 =?utf-8?B?Ulh6ejl4ZWkwL2ZUSUxURFVRVGZmelNMc0pZRytGN3lMcUl1N1ZnM252VDJN?=
 =?utf-8?B?aGRuWmR2SVhCVXNMR0JyRGpBaytFZjJnQit5T01kWERiRVlEZ1dnNGJYaUdM?=
 =?utf-8?B?MitZY2VlRTV6amN5MG00a2Q2Zm12dVBCZnFkNSsrTjR1bkgrZEFkVENNd21t?=
 =?utf-8?B?Q2lwZVhFOVlMNzhCWEhpRTB3ZnlZaHJGWGI4Z0lOOVFrdVJKWlNNblYxWWVG?=
 =?utf-8?B?cEtqK1N3VVNscW5uVmhDdjZXNlJHeUFKcFp5dGZiWThtV2JKd3F2bytzU25Z?=
 =?utf-8?B?TDQ4WDNsMUlHKzlTYW9saTNvejh1K1ZJMm5zSUhQYzR1QXdIbVNHenVSY0FK?=
 =?utf-8?B?dTUzalkvWlZFbm9QRmRzMDVUTkdxUkJOcWFmZ0NtUjRocVh1SGJxS29FeDNw?=
 =?utf-8?B?a2Zmei8reHdSRTVqOGV2QXhkUExLTWF6QUtmMGJzVzhBU1JQMlloMHZVakdw?=
 =?utf-8?B?RVNON3BaeUJDZmZhT2JWL1RlN2ExRXpvdDB6Nzlqb28wWjJsRCs3S1VWYTBW?=
 =?utf-8?B?cURvSnBUczBaMUx0YnpMbDJrbjd5dFNCSDYzRFJQNHAyUWxhK29JWHFTdTdH?=
 =?utf-8?B?SmdRZitMRm1sSmN3ZkNqc1pUbmdJSERjakFxb3BmTDdmRmdHNXRNb2dsRjQy?=
 =?utf-8?B?akNoTlNtQlpyanh3T2MvNHZ1dEY5YkxPSi85djB3NW1NSmZEYmRWVjJhdXRR?=
 =?utf-8?B?UTkyZGE0RnNWRUlQVFZhYkxveFFQay9RV1dDQ2FJRGtIcGhLOUlFblJ4Rjdj?=
 =?utf-8?Q?KTG2cQgObxbudjbM=3D?=
X-Exchange-RoutingPolicyChecked:
	BpS4d+1qTu7W01rmK5OgVUq9du11Xm+fuL+tsOC2cTqc7dR1g8ArDVx8FjJdcChKZCmkNS9qIrK9D+YnGqjo7f58Z1laMrGnT6M9SR+j+LaltV3M0NW1DUtZmLb73T+OplAUw27KptR0/zp0WA1COOZP7Kl5ip3ffKlsRmQxqeU9cWdl3RpXaced32y1TBp5N7X7xYU1/Ojcho+0klUmeFV8Vun4ckjz4bz8G+SrkdB0kd6C8/0vjpNYMJfWQejs8mirp488vuIYmhfj00GxCwhDYgC/DpBvJqtyEIhG+0Ck2S3rrZ8PM6APsg45lcuZOknIXFkXdWfWfctKCcqV8w==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	aJUdozleoXGZ5IQEwPuN+OzgxckXtvTGwJz5gNKFA8ji2X4mRWz62XlprTROzJmlCyP1JsBjNFmMmF82Obe1R+TCcetdEWctooj88FzhWXv9GWOKQQk/RJTdGYeJiCAh2F+o8XKj4GcylgmbDMXe0cgbWjQewwG4Gt7Sd4QAD2WjUhPFE8RC3lhenfNlwGAO4jW3Ep5hW+ZTWp7tLSvngCUJ+KLfIVktLnvSos6rIBk7tKWMFaaHXUuOyONwq+Bndsfh0XkNDioAgVQPhgmiTVGznlA9RymToLFxlg43d0HZLeNZcRGEaODi7dZF2mfWY8Z289NWyiaFbRGJGYAoVwi1autR/28Ectb8IPQMk4Fc+Xc/BRvXXESFQ3qDs6nXu80IfiQlMSYWYKf3wesvumlnBL9mXZTY1k+iet2g11xYw7ieyr9PkJpQ0d/OqfC7S7lwtUY3Tpp2teXvS8yV5z717IUr+uZkl3lSVmwpVzcMaTMok3TbnO5dBy5BETfdb9QmwgVaXiRx1OTrcCYj5fcUnlWFZyL/ov4xjL+rt+6kdRZ40OvELltnslKJQBRQjThck+DUEr7yFefmbBQuOJgOU3NfEMDA/oi89F/9nBg=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c0ece276-3450-4e98-dde2-08de9b43893d
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 23:05:50.3041
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BV1laLBSvCKP7F1uZfNp1ypdFz062w7KvlhRc5B88ARRdylCPDXUhB74eamQW6J9/lNc7hvsRTorYkiGqmI+a6b20PifF1jtKdaGc9bV1YQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR10MB8708
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-15_01,2026-04-13_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 phishscore=0 mlxlogscore=999 bulkscore=0 spamscore=0
 malwarescore=0 suspectscore=0 mlxscore=0 adultscore=0 classifier=spam
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2604070000
 definitions=main-2604150216
X-Proofpoint-ORIG-GUID: hNfNus-5n8xi8w2Pi-6c6zM0pXPPy8vq
X-Proofpoint-GUID: hNfNus-5n8xi8w2Pi-6c6zM0pXPPy8vq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDE1MDIxNiBTYWx0ZWRfXzZTf4y6PVN6i
 piSrGfWhqPTYpofSgyndt6f7FgzQjANcdxqxKK63eyMHPWk0FxxjQET45mh8Hw81IdEhDoyVTIn
 ro1R6jiKxZXmrk0Zeg3/VWXFxMu1VjWQXHYHX1HK3fpCNSxPXZoBjNVVexpxLuyUfutOJobjueV
 KqtTTtfAl2zd0bww/F5xy2zoWLMSb71Bki0RkzUyxFVJIgHbkZdSfUt8aF9OqXPhui8SnpPxheQ
 I4o1XYOFL7ZxYbcwUeu6MTvGw0s+/eRl2UR11vzUN9ZjY150UjnXsqr9J92l9FTWvhA6vTzRNOP
 wT8ALGhQH1hT40GOL5cYCKLTc98+yJiWKCCoB25ZbAhhajsw4CZpg62syStadcEeBRmE+iL737J
 UPaFNYTyUJCEClBvJNDjiuANKP7ZY3XduQ8XYCohNZMxF3bep/m/P6dFdnvQbC8yabweYBFi1pa
 29Lr96D9VTo3qlDCUX2Tf9Z0I8Xr5rXFjrAQdlmM=
X-Authority-Analysis: v=2.4 cv=Co+PtH4D c=1 sm=1 tr=0 ts=69e019d2 b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117 a=e1sVV491RgrpLwSTMOnk8w==:17 a=aR16PxjQAAAA:8
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=GoEa3M9JfhUA:10 a=sWKEhP36mHoA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=jiCTI4zE5U7BLdzWsZGv:22 a=x4eqshVgHu-cdnggieHk:22
 a=e5mUnYsNAAAA:8 a=yPCof4ZbAAAA:8 a=alFwHzT0yWNFxpvwSKcA:9 a=QEXdDO2ut3YA:10
 a=zbFvvTOBjyH4ze5LlUjX:22 a=Vxmtnl_E_bksehYqCbjh:22 cc=ntf awl=host:13825
Subject: Re: [oss-security] Fwd: X.Org Security Advisory: multiple security
 issues X.Org X server and Xwayland

On 4/14/26 06:47, Olivier Fourdan wrote:
> ======================================================================
> X.Org Security Advisory: April 14, 2026
> 
> Issues in X.Org X server prior to 21.1.22 and Xwayland prior to 24.1.10
> ======================================================================
> 
> Multiple issues have been found in the X server and Xwayland implementations
> published by X.Org for which we are releasing security fixes for in
> xorg-server-21.1.22 and xwayland-24.1.10.

Note that the releases include additional fixes that don't have CVEs assigned,
including hardening changes & fixing issues found by gcc's -fanalyzer, and
adds a SECURITY.md file covering X.Org's security reporting & announcement
processes, and the security model we use to evaluate reported issues,
so those concerned about security are recommended to adopt the entire
release, not just apply the patches for the CVEs.

https://gitlab.freedesktop.org/xorg/xserver/-/commits/xwayland-24.1
https://gitlab.freedesktop.org/xorg/xserver/-/commits/server-21.1-branch

-- 
      -Alan Coopersmith-              alan.coopersmith@oracle.com
        X.Org Security Response Team - xorg-security@lists.x.org

