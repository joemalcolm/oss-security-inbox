Received: (qmail 32464 invoked by uid 550); 28 May 2026 18:01:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32413 invoked from network); 28 May 2026 18:01:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=DY/3ojazouOplQr3
	mf4Upp2ZrdlxaN0hndMwhCtolAw=; b=hHRMPZO8g4PujTZYePYYsgC4iKS0mjNS
	UIkpGClgJ6yfV/oA0OEekriJv2dbu+lz5+0MojYyBc/l4K0wBpkQnQwUOKGDULU/
	yU7WY3mo9xpNnKCB7FXshjDamAI8Omot2GP3gVD7toAyElHuk28wzbQX4tOrarvb
	lMOrbHfKsdx/bMEnfbXYYScytQ8aEAU47SUHw32vOY2ANkCCHwHy+zOEBRTNPBlS
	8qIRvx3idqUQm7C2Gie91On2vAO/MXfKp57nMBIaQkSaVP8+Daxv/2VhTbg9zHEk
	S95MRmPwxNT9V0PBcCmAIJkE2VDo2StbSGx3OkvcfORnCUKmbYY5dA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MPjr4rO96n9WwOxcXz8Mct5tJsSIJhQP6dy8FY5a9UtUily2T5jAOJ91PenmJzpykSGqMVT2sJ8hraURUw5kyvhznXqwByntsqTgjiOS4Dtt7DqM7P2fbSZrcEmNz+iZFRCqGlEbkABmB3ZPTdOc31BifvxsH5esZl5YewyP3k2HVJLpbvFLCqVvKARvswVtGVIUX5YFd4cjaQbCXN9ezpkP2uFeozWrcC1sejgUWxH3b3vh7E1K7grgkZcEqh9VZXjxM4x9DPKxUOmAnxO0rjpGvPOQ+1inT9eyh51RnK36mbK/PRTb3IsKCI9EV8v6c1UiyrVQfilCPjYiKB1sEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DY/3ojazouOplQr3mf4Upp2ZrdlxaN0hndMwhCtolAw=;
 b=W2JRcNHj69S86JLj2ayEp10GbXavIX6Je/6xEbvuJlJBk/Qncl5j18HaoE4jy9p5PhduhMi8QmcvpxBvtj4jJfPW/fDQIr0UpUgs5tGCxlmJUspyS/styWhbUcbMMHBSv4e2aQUiJoAcQCoLHCPJZamn/tbJQryUx0EGSy81xwotirmPdJzFi8heZ+oCQV6elXP8ruYAcP1+Ml/m5TeO0iuUB/Hl+CHbnHl5VPRwNH9XaB4eGx6dcqUE6DYHuJctgp0XwqZzJ4XavgJHzMK6g+L1YFaCGiYHWh4DIwb32+Owrw2NFFSc68CL3PUJ2MBBhuj5yQtDKgDqDC/XWCNC1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DY/3ojazouOplQr3mf4Upp2ZrdlxaN0hndMwhCtolAw=;
 b=dL/5rbADh3WyycceEp5XCzuHCzv3Vtnpec0QrTSN2JerIFZvitXjrgImvhnqivEwh9qCge9n4Ph2G/C8lI9dKvTX9ac4q+phbqYvYdsnD59kNo67sWH0qB6Db/Y9SnG2222u7OpJdkljbsBRnNIGlZDvSVqbzyOiZGt8nGc7ZUk=
Message-ID: <65fd6c60-4aee-42e0-ad18-e66c187d7a9e@oracle.com>
Date: Thu, 28 May 2026 11:00:49 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR03CA0136.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::21) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|CH4PR10MB8003:EE_
X-MS-Office365-Filtering-Correlation-Id: 59beb853-f4bc-4ab3-d2da-08debce30e6c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|366016|5023799004|56012099006|18002099003|6133799003|3023799007;
X-Microsoft-Antispam-Message-Info:
	iV4y7iqDy14+dUCfzqQ1YzkOjN5A0BPcAboQAffyWv0dAaDw5gBqpJof6FTzZBAI8pXL/VSqGv8ELPLZAaM3TGUYYGfUxDLCBv7WghVQjjwUbROxty1cna5F29ktLU0/KFzQt8vOaEg0geKhSLYDBuDRqCH67so6NVmazv/TdcfpaokD5gmOngigMu9IexST6gFGVGhAiW6W1fRc5tb+U3MyrJbVQ7E2AXHwT6tDclXYnS09i/UjNB+YPyr6NvfGYgOkjL1WB4kvK/cqNFuC6pe/EpxSv4aplwNA/ObRuiGVECZOHDG92aZ2W66fro/En3bemuMkRZVvZEZ84Cp8Fg2hVhGzCcX6cu+0hJ01ChvkTTOd4o50o7tjny6gsCRJ+et91a0+kA+q7zLuNcmtlkp2y9/JQDqkprla8YUTUxGXEV1h2zPeamw2X2yThiUGqNxZaJ4bv7q2uukAB55lC1nz7TGl0HXX6aPUJIoRsHOO8neujqP0o6Lun96NeqJWUoGWCDW+plmPv/dLiWdCsdis5RilU8zWfKkf4edr2HUmoeHKQvE8ONLtbb2Q3Q9xGcYoCufuzLjfbJBBlo9QevXhFzyfGT6ZT38daSCPGGteLg9yBIgsEz+fPHOKkk0aesJ2Rj8gyFMc8m1nFz7tej3u7risA5kBqwG4Fxf2EWFTfHlBMu3BWvzFykZtmevgvSdSjkfU+xQn3t/hh5oDOA==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(5023799004)(56012099006)(18002099003)(6133799003)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Nncrek9iYzF6Tll3MzJlWE9DTUdCM04zbU9hVERtdkVRSzNhYzBRUHM2UWto?=
 =?utf-8?B?NTgya2dGbndqQ09EWE9QbUt6ZWM4OTBRZmhnT25GRWdvM3RXL2dGbk9zVVIx?=
 =?utf-8?B?ZTNESEw3S01ZZUMrVUVTdGh1VlRMYVBPbGJROUVsNWNjeWpoR09IL3gzQ1NS?=
 =?utf-8?B?TVhFTjJXZmZ5bTJZWU4zcTN1U1BOQ0l2YVlqMDd3UEVGWkppamZYNHhzVUZU?=
 =?utf-8?B?WXIxcFFqalQ5Q1dZaEhSQlVHZHFNMm85Q0sxRDFURE0zWURqdStwSnlmNmxy?=
 =?utf-8?B?N2NSdTFKZm9wNktyRkVxYzViaEhaWDFrdmhvaGkwRzlBajhyemlEZ2F6dnhi?=
 =?utf-8?B?elVab3NyNTJ2dEc4Ukd3Umk3YmVGazJadnp3LzB2UkJwSmRWTkZmWlY4b1Fl?=
 =?utf-8?B?MlRqdDVhY1RzV3lrMkxrSjRUbVZhTGtYbHFtWlJuMFlhN0lSNkZIS0JvdkNx?=
 =?utf-8?B?WEplNlZ3QkhOc2V0MmpDeEJXNDZOUm14bjJ5eVNiRWVFdkFIM3FDdXRpUlVQ?=
 =?utf-8?B?THFrRzhxd0x4V3RxVDhBN3AyWGtwRWRhei9wZlZzamlJbCt1SnBMZEo2clBC?=
 =?utf-8?B?VWVFVmNydnQ3bTJHVHdWNlZzR3RKY3FSTWIzR3dlT0diZ0hPcnUwWTluSlNw?=
 =?utf-8?B?VHN6cGZxS3daYlo2UU53cHJ1SFJEMW5hT0RheUc5MUNWK0lsWjkwVDFyb0ZS?=
 =?utf-8?B?SmVuUDRJdUNWcUlhc1NRNTJNMHNIMXFQbEZvZi93aVQ2NEtaRDhFN1RkWmxB?=
 =?utf-8?B?V2wwZjBQeTM2UXNkTitHdGE3K1Jjbjd6NXNTSHpReVY5bStVZmdBZG5PZ0Jt?=
 =?utf-8?B?ODNHcFRORVFFZnJidWZWSUVHSjBPVTVwVzRxQndPa0czT1ZnT2dxc3pGTmpv?=
 =?utf-8?B?bnZUOVlWRkp2dDBsVjdlTDlYNmRCdC90ejU1dHlhV0lMNnQ5SXhpd1d2cDlm?=
 =?utf-8?B?K0VTakRvUzhjVDVpRUtEK2dUYWlSSElFSHBkV1RReFh3YUtoNEFLQmRqZXJE?=
 =?utf-8?B?YmNBTVRJRnRMMUthS2ZRNzVyS1VnY0wxUjhzRDNDSGsvd3lKaXdBN3RzZTF2?=
 =?utf-8?B?ZWgzUngvTnJ2Y2IwVnI3L3FUZ0YvWGdLaVMwNTZYZVdzRHZCWEhZbGtQNGFy?=
 =?utf-8?B?ckxzSjNMdmFRaWtqellpL1g1TDhDS1NCVWY1NW0xNGc1M3o5bE5NNXpvalc4?=
 =?utf-8?B?aExxRmNhSm9KbmczL2tYVWpiR0RTNkFDSzBHMEFmYmRkOFg4YTZJN0tEVWhw?=
 =?utf-8?B?MWJmRmxZZ2ExQ295ZXY3QUI2blp5bENLV0IvRjdKdzRaZnBleEJOQW0xcDk1?=
 =?utf-8?B?VDd2Y3ZOYjE1aE93MzNqeEhqNU5aUHdvUnUyT09HZ091Kzdab05xdTlyWERr?=
 =?utf-8?B?UkhNOHluSkVDQklpOEZQZEsvZ3hLQ1hFVHFveUI1Mkd4WE9CQU81djJtcU1V?=
 =?utf-8?B?V0lFM3VQQ3Y0L0JTTktEa0ViM0IrUTgvTGhkUHpNQnZKVnhPWlhoZkZLNi9X?=
 =?utf-8?B?d1hVcWthUDU3U1ZGQ3VRNVlaOVA1Q3Q5MWsyNzZBQiszdXYrQStTVnZLUFJB?=
 =?utf-8?B?ZFZmRjJhK0FzcmdOQ0pVNWN3MVJyUkc4a3oySXVaejVzUFhySXp5SVZzL2hm?=
 =?utf-8?B?TjAwdm1hUzhmd0NYUEs1d21IbWJrS21iUEd1bXFLK2g0UGUrZ0M5ck4xbVJw?=
 =?utf-8?B?TVdRUnRkRS9iV0hHWGNPVm0wNXJ3bG5keHBycmVSbmYzamdBajhlSjdYeW5B?=
 =?utf-8?B?SjVZdkhCdEVHT2IyM1oxSDcyNWN3WFdJRHlMVkIyU2g4YjVBcWcwUWU0TFoy?=
 =?utf-8?B?b3lEY3BCdjJxaXVVZ0hwK0FhQ3JoSSsyTnpSOFJlN01NOTZIaGdXYkEzTnEr?=
 =?utf-8?B?Zm5zNkt3NzlwQ2tBa2RtQXlncnZMMVpQTTBudU1KRHJvazVFL2JocE1zQnlS?=
 =?utf-8?B?R0F1Rmw1ZHQ1QkxtdGtIV1pRd1ZkYVNjY2kzbFpIS1Yzbng5QjkyZXpma1li?=
 =?utf-8?B?ZUVJNkhDSFFucUFNRS9wWitibWwxUmJ3a096b3RBdzRKTllzOFFwbmcwVExx?=
 =?utf-8?B?QWczNkU4eVVwbzVoU0pmZm5TdXhMZWw4OS9qQm5xRmY1WGIvQzFEdkpyWEJl?=
 =?utf-8?B?QmMwMVNwN2lCaG1FZ3FQOUg4WFRhenlNRWhNTU1OMXlpRzlpWkNRcWJLRHRo?=
 =?utf-8?B?L3RxNHlGdFdRTm9pVkRLSm0wOU5JM2lBL1lCV3ZNdktHcEdSeUxnMFJHL3Ft?=
 =?utf-8?B?aFBCVWpuSVpQbWhFTTVua3k1ZktwTmZ1SEswZStlWEFuc25aNkd1c1ErZVJM?=
 =?utf-8?B?MTBqbnpCc0FpMk5mWGdrU3NmaGVETjBXMStTUnBwR3ZpQmt6ZWRQNXlVQlFM?=
 =?utf-8?Q?rAEWWVbBISgMJOYc=3D?=
X-Exchange-RoutingPolicyChecked:
	U3I8Af5tQN2L4PNNwPZOrHA+r9RXGKD3OVt2+7RLB7MWSwUDF3V4G84YQw53PL/HoT9Yyfs0SN1md1n6FPZGou8EnLNjwH1pJNZXlrcrj4dG9K5t4WGPgOoS0EpBEFBeR8sLc6spH4lENF2aSfdsdFmMloqg99rm6IYntP7WaGtqPtG7mjSAiqWzIQUQEnPkPTczTNxkq0GuKRACTNgfNWL9L+9oj6sEgeZpAyCQnnjPoLzWTniuG7hG/z6EJvzwu9JZ/dJQ/ILe76/64WXCdB97+J8+Ra2MRS31vz5Od8u06lk+RKfOUJYVQ4Xyh2qKkXeRsVOyX5gSkF8ztl4VKg==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	jc4Wdzy9Cw3SXKfisSdbCgdj+brUtJlvJ5BVwY40l6TG8xxfja6W7zCBFOPyRfy/OzjZ0Xd7VI/jKdujqfaDTBmm0zBNTqUtzuiDg9+xCnRbihdSsOt5xjuqJ4jkLClsHFM3pM00Ph/6jwI6PmntPiI/77O2iyYagoVf+Vx4F+JABQSg0nvIYK6Oo2iNzkgqOP0qoOeu3Xy//vqYgle2XLNV9DVH9Wg7HzXbbp3/uoRGS5TFymzO85DO8wRly8vnEA2qugpkxqONKtErqhNMzyz7OoDPvTUp2AigrSD8umequ/ExYTBr29u+HD5rd9i2OEniGhtkB2Q7Esd/CiDiJ/GsDVBymYPSKbEAqazCfO2Kfy3jdkEO0rz38udH1hNeUo0T1jbojKFLNPjkwTp1m3aTIpxwgR84u1VpHy9Wy1xdNBg0u3vfTPLtFdZiGrSzOpM51iyzjnrDWcvib/tSMoYuc15tpBHE+HCVewTOLS/I02+5tFnxrwD7i9XwiqWDv0x/dunDTXBA946FzCEvQODKEFg0BmhOvJ8YJoNqTlbYtjb+p4pMiPQo9YG5hI21uyB1PxMql5CGYVRYcrs1qN/otqnUixVwF8DmvoEwddg=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59beb853-f4bc-4ab3-d2da-08debce30e6c
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2026 18:00:52.1136
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Hu3LfpXhU/tegYyDH8uLzONqyZKd4KlYDFA2nxnzE8dKDZGOfrBYhV7Yn7YkksPAyvAD1LMKIQNrmNhppFPaUlHGJmUJBRd0xQDb3EIZDEE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH4PR10MB8003
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-05-28_05,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 spamscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0 mlxscore=0
 phishscore=0 mlxlogscore=999 suspectscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.19.0-2605130000 definitions=main-2605280181
X-Proofpoint-GUID: PdnE5G8E-u-Xd4c1ddhhX0Zws27U9s9y
X-Proofpoint-ORIG-GUID: PdnE5G8E-u-Xd4c1ddhhX0Zws27U9s9y
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI4MDE4MSBTYWx0ZWRfX7xvCwH88+6ih
 phV4hr2wwnFk+eAHGh2Y33ZjuNUf3m3K7C/EJdGj82BAhjktFUofZB2c5eP7KyV7eROXBWgEtww
 /fbjbUL+gWuz7hudiziQzevqiLFRg1pBZMrVSXdVygXKc32+EhuEdbhcC7FaSZFb175ZdDBuFYo
 OuLexQZ2NSrXTb7+sKmu1NAYyDPPpd8r+c3ioYNbBNOsOxoLQkBOTIPPGdb/hjTlbxnfcVV10mn
 PbwylsNakwSr78ESz2iSW806nyzRLIoCxlZdE3lTGatkyix+tg7ZoEPRMMABuvKWmbU+jTgy7iO
 qixljKMMBCiRfautWpF7n2zLgiX0siMdAEa1GJdwQWI6T5Vs/ZdmsHiihacmigvs21f2JseX5Y1
 vXTRi/2xVOXEGwq36czBOYLe9t+bciASdt1iVoG+n46brJ69NgPLonUzCvR2NcMT16ZIuDdTd9b
 R5zc/hR1QgEr5UDVai9W/ME7TMstDL0cUU/xr53M=
X-Authority-Analysis: v=2.4 cv=OaioyBTY c=1 sm=1 tr=0 ts=6a1882d8 b=1 cx=c_pps
 a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=RD47p0oAkeU5bO7t-o6f:22 a=NEAV23lmAAAA:8
 a=yPCof4ZbAAAA:8 a=PTOB6kbnAAAA:8 a=HMs2y7yR-RerMr7THY8A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=5yU3S35YU4bGjq-dph-N:22 a=Bho9c0fBagfJEIQBS7DQ:22 cc=ntf
 awl=host:12303
Subject: [oss-security] Various memory access violations in 7-Zip

GitHub's Security Lab has published two advisories about memory access
violations in 7-Zip, which were fixed in 7-Zip 26.01.

I've omittted code analysis & proof-of-concept code chunks in the below,
see the provided URL's to view those with much better formatting than
plain-text email allows.

https://securitylab.github.com/advisories/GHSL-2026-115_GHSL-2026-122_7-zip/
says:
> May 22, 2026
> GHSL-2026-115–GHSL-2026-122: Various memory access violations in 7-Zip
> 
> Author: Jaroslav Lobačevski
> 
> Coordinated Disclosure Timeline
> 
>     2026-04-21: The report was delivered through sourceforge private issues.
>     2026-04-27: v26.01 with fixes was released.
> 
> Summary
> -------
> The 7-Zip project, version 26.00, contains various memory access violations,
> out-of-bounds (OOB) read issues, uninitialized memory vulnerabilities, integer
> overflow flaws in various archive formats (e.g., 7z, SquashFS, UDF, UEFI, WIM,
> and Ar), and path traversal in sample app, which could potentially lead to
> compromising system integrity or accessing sensitive data.
> 
> Project: 7-Zip
> Tested Version: v26.00
> 
> Issue 1: SquashFS Fragment Offset Overflow (GHSL-2026-116)
> ==========================================================
> 
> Heap memory disclosure via SquashFS fragment offset integer overflow on 32-bit
> builds.
> 
> 32-bit integer overflow in the SquashFS ReadBlock function allows an
> attacker-controlled node.Offset value to bypass the fragment bounds
> check, causing memcpy to read heap memory preceding the cache buffer
> into the extracted file. The vulnerability is exploitable only on
> 32-bit builds of 7-Zip where size_t is 32 bits, allowing the addition
> offsetInBlock + blockSize to wrap modulo 2³². On 64-bit builds the
> addition is promoted to 64 bits and the check correctly rejects the
> input.
> 
> [...]
> 
> Impact
> ------
> This issue may lead to information disclosure (heap memory preceding
> _cachedBlock written into extracted file) on 32-bit builds.
> 
>   - The SquashFS handler is registered for .squashfs and .sfs files and is
>     enabled in stock 7z.dll.
>   - 32-bit builds of 7-Zip are shipped on the official 7-zip.org downloads page.
>   - The vulnerability triggers during extraction — the attacker recovers heap
>     contents by reading the extracted file.
>   - The attacker controls the read offset via node.Offset and the read size
>     via FileSize (up to _h.BlockSize, max 8 MiB).
>   - Heap memory preceding _cachedBlock (up to BlockSize bytes) is written into
>     the extracted file — an in-band information disclosure primitive.
>   - On 64-bit builds, the bug is latent (bounds check is correct due to 64-bit
>     promotion).
> 
> CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:N/A:N — 6.5 (Medium)
> 
> Scored for 32-bit builds where the disclosure is real.
> 
> Affected versions: The SquashFS fragment ReadBlock with offsetInBlock has been
> present since 7-Zip 9.18. All 32-bit builds from 9.18 through 26.00 are affected.
> 64-bit builds are not affected.
> 
> CWEs
> -----
>     CWE-190: “Integer Overflow or Wraparound”
>     CWE-125: “Out-of-bounds Read”
> 
> 
> Issue 2: UEFI Capsule uninitialized heap memory disclosure (GHSL-2026-117)
> ==========================================================================
> 
> Uninitialized heap memory disclosure in 7-Zip UEFI capsule handler via
> truncated archive.
> 
> An uninitialized memory disclosure vulnerability exists in the UEFI
> capsule (.scap) parser in 7-Zip. The OpenCapsule function allocates a
> heap buffer of attacker-declared CapsuleImageSize (up to 1 GiB)
> without zero-initialization, then reads the file contents into it with
> ReadStream_FALSE whose return value is silently discarded. If the file
> is truncated, the unread tail of the buffer retains uninitialized heap
> memory, which is then exposed as extracted file content via GetStream.
> 
> [...]
> 
> Impact
> -------
> This issue may lead to information disclosure (uninitialized heap memory
> written to extracted files).
> 
>   - The UEFI capsule handler is registered for .scap files with signature-based
>     detection (NArcInfoFlags::kFindSignature) and is enabled in stock 7z.dll.
>   - The vulnerability triggers on extraction (GetStream is called when the user
>     extracts a file from the archive).
>   - Usual operation — the user just opens and extracts a malicious .scap file.
>   - Up to ~1 GiB of uninitialized heap memory is written to disk as extracted
>     file content. In a long-running 7-Zip GUI session (warm heap), this can
>     include fragments of previously processed archives, file paths, decompressed
>     content, or passwords from encrypted archive sessions.
>   - On Windows, even a cold (freshly launched) process leaks non-zero heap
>     metadata. On Linux the cold leak contains zeros, the “warm” process leaks
>     the non-zero heap. The GUI is the primary concern because it is long-running.
> 
> CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:N/A:N — 6.5 (Medium)
> 
> Affected versions: The unchecked ReadStream_FALSE has been present since
> 7-Zip 9.21. All versions from 9.21 through 26.00 are affected.
> 
> CWEs
> ----
>     CWE-908: “Use of Uninitialized Resource”
> 
> 
> Issue 3: UDF Field OOB Read (GHSL-2026-118)
> ===========================================
> Up-to-3-byte heap OOB read in UDF File Identifier padding loop.
> 
> The UDF disc image parser’s CFileId::Parse function reads up to 3
> bytes past the end of the heap-allocated directory buffer in the
> alignment-padding scan loop. The bounds check processed <= size is
> performed after the OOB reads, not before.
> 
> [...]
> 
> Impact
> ------
> This issue may lead to information disclosure (1-bit oracle per OOB byte
> via open/fail behavior).
> 
>   - The UDF handler is registered for .iso, .udf and auto-detected by signature.
>   - Triggers during Open() — listing or extracting a crafted UDF image.
>   - OOB read of up to 3 bytes per FID parse.
> 
> CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:L/I:N/A:N — 3.1 (Low)
> 
> Affected versions: The UDF handler has been present since 7-Zip 9.11.
> All versions through 26.00 are affected.
> 
> CWEs
> -----
>     CWE-125: “Out-of-bounds Read”
> 
> 
> Issue 4: WIM SecurityId OOB read (GHSL-2026-119)
> ================================================
> Off-by-one heap out-of-bounds read in 7-Zip WIM security descriptor handler.
> 
> An off-by-one heap out-of-bounds read exists in the WIM (Windows Imaging)
> archive handler in 7-Zip. The CHandler::GetSecurity function validates a
> securityId against SecurOffsets.Size() but then accesses
> SecurOffsets[securityId + 1], reading 4 bytes past the end of the heap
> allocation when securityId equals the maximum allowed value. The OOB
> is triggered on viewing (double-click or File -> Open) a crafted WIM
> in the 7-Zip File Manager GUI.
> 
> [...]
> 
> Impact
> ------
> This issue may lead to limited information disclosure (OOB bytes used
> arithmetically but not surfaced to attacker).
> 
>   - The WIM handler is registered for .wim, .swm, .esd, .ppkg files and is
>     enabled in stock 7z.dll.
>   - GetSecurity is called when any frontend queries kpidNtSecure via
>     IArchiveGetRawProps::GetRawProp.
>   - The file manager’s ListView calls GetRawProp(kpidNtSecure) for every item
>     during listing — the OOB triggers immediately upon opening the WIM, with
>     no extraction or user interaction.
>   - CLI: The console tool triggers the OOB when listing with technical info
>     (7zz l -slt).
>   - The attacker controls securityId via the SecurityId field at offset +0xC
>     of any directory entry in the WIM metadata.
>   - The OOB value is used arithmetically (len = OOB_value - offs) to compute
>     a metadata buffer slice length. If the garbage len fails the subsequent
>     bounds check, the function returns S_OK with no data.
> 
> CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:L — 3.5 (Low)
> 
> Affected versions: The WIM security descriptor support (GetSecurity with
> SecurOffsets) was introduced in 7-Zip 9.34. The off-by-one has been present
> since introduction. All versions from 9.34 through 26.00 are affected.
> 
> CWEs
> ----
>     CWE-125: “Out-of-bounds Read”
> 
> 
> Issue 5: SquashFS BlockToNode uninitialized heap read (GHSL-2026-120)
> =====================================================================
> 
> Uninitialized heap read via sparse _blockToNode index in SquashFS handler.
> 
> The SquashFS handler’s OpenDir function indexes the _blockToNode array
> using attacker-controlled blockIndex values. The array is allocated
> with ClearAndReserve(GetNumBlocks() + 1) but only partially populated
> during inode parsing — when few inodes span many metadata blocks, most
> slots remain uninitialized. Reading these uninitialized UInt32 values
> provides attacker-influenced bounds to FindInSorted, which then
> performs an unbounded heap read via _nodesPos[mid]. If the OOB-read
> value coincidentally matches unpackPos, the returned nodeIndex chains
> into a wild-pointer read of _nodes[nodeIndex] — though this
> amplification is heap-layout-dependent and not reliably triggerable.
> 
> Impact
> ------
> This issue may lead to information disclosure (heap content leakage
> via chained OOB reads) and denial of service (crash from wild-pointer
> dereference). The SquashFS handler is enabled in stock 7z.dll and
> triggers during Open() before any user interaction beyond opening the
> file.
> 
>   - The attacker controls RootInode in the superblock and the metadata
>     block layout.
>   - Uninitialized heap values feed into indexed reads, creating an
>     attacker-influenced OOB read chain.
>   - No write primitive.
> 
> CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:L/I:N/A:L — 4.2 (Medium)
> 
> AC:H because exploiting the uninitialized values for controlled reads
> requires heap layout manipulation.
> 
> Affected versions: The _blockToNode optimization has been present since
> 7-Zip 9.18. All versions through 26.00 are affected.
> 
> CWEs
> ----
>     CWE-908: “Use of Uninitialized Resource”
>     CWE-125: “Out-of-bounds Read”
> 
> Issue 6: UEFI DEPEX OOB Read (GHSL-2026-121)
> ============================================
> 
> Off-by-one out-of-bounds read in 7-Zip UEFI dependency expression parser.
> 
> An off-by-one out-of-bounds read exists in the UEFI firmware image
> parser in 7-Zip. The ParseDepedencyExpression function uses > instead
> of >= when validating an attacker-controlled opcode byte against the
> bounds of a static array of const char * pointers. When command == 10,
> the function reads one pointer past the end of the 10-element
> kExpressionCommands array, then dereferences that pointer as a C
> string, causing either a crash or a leak of adjacent .rodata content
> into archive metadata.
> 
> 
> Impact
> ------
> This issue may lead to denial of service (crash from dereferencing an invalid
> pointer) or minor information disclosure (adjacent .rdata string leaked into
> archive metadata).
> 
>   - Static array OOB read: kExpressionCommands[10] reads 8 bytes (one pointer
>     slot) past the end of a 10-element static .rdata array. Because adjacent
>     .rdata is always readable (same PE section), this does not typically crash.
>     On the tested build, the adjacent bytes form a valid pointer to another
>     string literal, so strlen + memcpy succeed silently.
>   - No meaningful information disclosure: The content at the dereferenced OOB
>     pointer is a static string from the binary’s own .rdata — identical to what
>     anyone can extract with a hex editor. No user secrets, no heap data, no
>     ASLR base address is leaked.
>   - Linker-dependent crash: If a different build places non-pointer data
>     adjacent to kExpressionCommands, the strlen dereference would fault with
>     ACCESS_VIOLATION (DoS). This is linker-layout dependent, not deterministic
>     across builds.
> 
> CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:L — 3.5 (Low)
> 
> Affected versions: The off-by-one has been present since 7-Zip 9.21, the first
> version to include the UEFI handler. All versions through 26.00 are affected.
> 
> CWEs
> ----
>     CWE-125: “Out-of-bounds Read”
> 
> 
> Issue 7: Ar SYMDEF OOB Read (GHSL-2026-122)
> ===========================================
> Heap out-of-bounds read in 7-Zip Ar handler BSD SYMDEF parser.
> 
> A 4-byte heap out-of-bounds read exists in the Unix ar archive parser
> in 7-Zip. When parsing a BSD-style __.SYMDEF symbol table, the
> ParseLibSymbols function reads a 32-bit namesSize field via Get32 at a
> position that can equal the buffer size, reading 4 bytes past the end
> of the heap allocation. This reads uninitialized heap data under the
> default allocator.
> 
> Impact
> ------
> This issue may lead to limited information disclosure (OOB bytes used in
> bounds check but not surfaced to output).
> 
>   - The Ar handler is registered for .a, .ar, .lib, and .deb file extensions.
>     The handler IS enabled in stock 7z.dll.
>   - ParseLibSymbols is called from Open at line 627, triggered whenever the
>     first or second archive member is named __.SYMDEF or __.SYMDEF SORTED.
>   - The vulnerability triggers during IInArchive::Open(), before any extraction.
>   - Limited information disclosure: The OOB bytes are stored in namesSize
>     (local variable) but are only used in the subsequent bounds check at line
>     478, which always fails (causing continue). The leaked bytes do not flow
>     into any output stream visible to the attacker.
> 
> CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:L — 3.5 (Low)
> 
> Affected versions: The SYMDEF parsing was introduced in 7-Zip 9.34.
> The off-by-4 OOB has been present in all versions from 9.34 through 26.00.
> 
> CWEs
> ----
>     CWE-125: “Out-of-bounds Read”
> 
> 
> Issue 8: Missing path validation in extraction loop (GHSL-2026-115)
> ===================================================================
> Path traversal in 7zDec SDK sample extractor allows arbitrary file write.
> 
> The 7zDec standalone LZMA SDK sample extractor (C/Util/7z/7zMain.c) does not
> validate archive entry paths for directory traversal sequences (..), absolute
> paths, or other unsafe path components when extracting in x (full paths) mode.
> An attacker-controlled 7z archive can write files to arbitrary locations on
> the filesystem, enabling code execution via overwriting startup scripts, SSH
> keys, or system configuration files.
> 
> Impact
> ------
> It is a sample extractor which may be used as example. This issue may lead to
> arbitrary file write and remote code execution (overwrite shell rc files, cron
> jobs, SSH keys). 7zDec is built from the LZMA SDK and is a working binary that
> users invoke on untrusted archives. The attack requires only delivering a
> crafted 7z archive — no special privileges, no race conditions.
> 
> CWEs
> -----
>     CWE-22: “Improper Limitation of a Pathname to a Restricted Directory (‘Path Traversal’)”
> 
> 
> CVE
> ---
>     GHSL-2026-115: Sample app
>     GHSL-2026-116: CVE-2026-48092
>     GHSL-2026-117: CVE-2026-48101
>     GHSL-2026-118: CVE-2026-48102
>     GHSL-2026-119: CVE-2026-48103
>     GHSL-2026-120: CVE-2026-48104
>     GHSL-2026-121: CVE-2026-48111
>     GHSL-2026-122: CVE-2026-48112
> 
> Credit
> ------
> These issues were discovered and reported by GHSL team member
> @JarLob (Jaroslav Lobačevski).
> 
> Contact
> -------
> You can contact the GHSL team at securitylab@github.com, please include a
> reference to GHSL-2026-115, GHSL-2026-116, GHSL-2026-117, GHSL-2026-118,
> GHSL-2026-119, GHSL-2026-120, GHSL-2026-121, or GHSL-2026-122 in any
> communication regarding these issues.

https://securitylab.github.com/advisories/GHSL-2026-140_7-Zip/ says:
> May 22, 2026
> GHSL-2026-140: Heap Buffer Write Overflow in 7-Zip
> 
> Author: Jaroslav Lobačevski
> 
> Coordinated Disclosure Timeline
> 
>     2026-04-24: The report was delivered as a sourceforge private issue.
>     2026-04-27: v26.01 with a fix was released.
> 
> Summary
> -------
> A heap buffer overflow vulnerability (GHSL-2026-140) exists in 7-Zip version
> 26.00, caused by an under-allocation in the NTFS compressed stream buffer
> (GetCuSize shift UB), potentially allowing attackers to exploit this issue
> for arbitrary code execution or application crashes.
> 
> Project: 7-Zip
> Tested Version: v26.00
> 
> Details
> -------
> Heap buffer overflow via NTFS compressed stream buffer under-allocation
> (GetCuSize shift UB) (GHSL-2026-140)
> 
> A heap buffer overflow vulnerability exists in the NTFS archive
> handler in 7-Zip that can lead to code execution via vtable
> hijack. The CInStream::GetCuSize() function computes the NTFS
> compression-unit buffer size using a 32-bit shift (UInt32)1 <<
> (BlockSizeLog + CompressionUnit). When an attacker-crafted NTFS image
> sets ClusterSizeLog >= 28 (accepted by the parser) and a compressed
> data attribute with CompressionUnit == 4, the shift exponent reaches
> 32 — undefined behavior in C++. On both x86 and x64, the UB causes
> _inBuf to be allocated as 1 byte. The subsequent ReadStream_FALSE
> writes 256 MB of attacker-controlled data into this 1-byte buffer.
> 
> [...]
> 
> Impact
> 
>     Heap buffer overflow leading to vtable hijack (potential code execution) —
> 256 MB written into a 1-byte heap buffer. ReadStream_FALSE calls stream->Read()
> in a loop (64 KB per iteration via kBlockSize). Debugger analysis on a release
> /O1 build (identical codegen to official binary) shows the stream object
> (CInStream) is allocated only 304 bytes (0x130) after _inBuf on the heap.
> The first Read() iteration writes 64 KB of attacker-controlled data starting
> at _inBuf, overwriting the stream object’s vtable pointer after just 304 bytes.
> The second Read() iteration dispatches through the corrupted vtable — a classic
> vtable hijack. The attacker controls the written data (NTFS cluster content
> from the crafted image), so they control the overwritten vtable pointer.
> 
>   - Both x86 and x64 builds are affected. On x64, the overflow is reached on
>     any system where the 8 GB _outBuf allocation succeeds (common on modern
>     systems with >= 16 GB RAM).
>   - On Windows, ReadFile fails if it detects an unmapped or guard page in the
>     destination range before copying the controlled bytes. Attackers may need
>     Heap Feng Shui to place _inBuf so the overwrite reaches adjacent objects
>     without immediately faulting.
>   - The NTFS handler is enabled in stock 7z.dll and is registered for .ntfs
>     and .img extensions. However, 7-Zip uses signature-based fallback detection:
>     when the format matching the file extension fails to open, all remaining
>     handlers are tried in signature-priority order. Because the NTFS handler
>     matches on the "NTFS    " signature at byte offset 3 (REGISTER_ARC_I in
>     NtfsHandler.cpp:2889), a crafted NTFS image with any file extension —
>     including .7z, .zip, .rar, or no extension at all — will be opened by the
>     NTFS handler after the extension-matched handler rejects it. This means the
>     attack surface is not limited to files with NTFS-associated extensions.
>   - Triggers during extraction/testing of a compressed file from the crafted
>     image.
>   - No user interaction beyond opening the crafted image.
> 
> CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H — 8.8 (High)
> 
> Affected versions: The GetCuSize() computation has been present since NTFS
> compressed stream support was introduced. All versions through 26.00 are affected.
> 
> CWEs
> ----
>     CWE-787: “Out-of-bounds Write”
>     CWE-190: “Integer Overflow or Wraparound”
> 
> 
> CVE
> ---
>     CVE-2026-48095
> 
> Credit
> ------
> This issue was discovered and reported by GHSL team member
> @JarLob (Jaroslav Lobačevski).
> 
> Contact
> -------
> You can contact the GHSL team at securitylab@github.com, please include a
> reference to GHSL-2026-140 in any communication regarding this issue.


-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

