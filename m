Received: (qmail 3860 invoked by uid 550); 30 Mar 2026 19:49:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3826 invoked from network); 30 Mar 2026 19:49:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=zFvEt+ZWPxTyuTsS
	Wk2Zi3mb1jvj4947KQfmvgDX5ec=; b=T3/QLrRrwI1TiKVenBuRRzeVhsTXScz+
	ZsMHZgGSavZbdzXO2zMAEFsU2r6XeZIlkcXtItQtBBFTIx8jqLUIKlqyR+d8TvYT
	3d1R8zZAeYNCVRqu5B43X61N0pJlrO3e6ieg5chSvNBolfe8aFURufeibqHCy01v
	ayXM3+MR1MYoXowELWxXgRL4vRECGdDe8HENwIyVJWMP6S1nZS0Wgujqqbv8CjXf
	rMN1ZABNdRW5E8HpNV/W6opDiZCUq+guFkujjVqnDWvngRtOteKdz3lC5AtD8IZw
	rkxH9PLHtOVwqaV4V9Mw5tYjhrfdXWOtMh1XrHfhSTZO5IbRwUWjdg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XBoigWRAXjwdDRG0UoHheSsW623sAOiE0JWhdN6BdnIcVENA5cHUgOh0kovxoQaGZd6Eu646tZwe2En1TxnnI58dHpaxpdePs6GNNDa0DTbYxaegk3fXiXK/jBVto71XjQ89zp9ZDz++pgWg9nS1X1ffuAIYz3h1BNtNpENJZHX4GJjqwKUyZq8TOaMi0TkZeC43B4wa9NEdhqFwbvSyuW42/D653x5rGr7d2oaAORH3vUCvJUQdaUAJ9OVuLoTrVdMyOe03xfbf0IAJiMNlVAKqknFoPm5Hda2YEkimKfSltVfR3aEiYXj+CNF3vI1x5SyYz/m2Fxwd/UxRM0kCag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zFvEt+ZWPxTyuTsSWk2Zi3mb1jvj4947KQfmvgDX5ec=;
 b=LDt0UP3/o3UNsFHR3B9wAu47W8hz0BmSU1z9pRoUn9FFkTfR+rXmfxHxsO1KwvA+/dNn9YKPsWz+r/Qmj+e0y8JsLhhkNq4S6kd8nurthWVmBlaZYAUF3ov4OIjL9lE2lJNwc1S6IHjXJ4xtF672tG64Q7WV/bthryof3V/KbsAUzwiB78+4t3aWRcdABUkmFGc7NbENd7Yd67u+FfzqP6oomMKLpHzQXgDpp+0OpoSyyUd0BFdjmETG2ZRYzeECXi/EbhwU36lL9rAkDAtNHUUUfFOOkORSfiSDAKT3DmuYeLgJCxbUG9Ypvvi+++xY0SHL0O6EKPap6eoWftzRHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zFvEt+ZWPxTyuTsSWk2Zi3mb1jvj4947KQfmvgDX5ec=;
 b=t+XTTkeNvnAkYHAQ6MavQ62/BRkOeM/VRvzhdKRHthxX5kOJbVObzWGcasub/3LO0tqeRBHhtNz97aIUXJ7UHewUuE4UlY13ooWW8/nSOgbd4ubwPwhg1wjdkDXCSP3abwh0Ff6k8q9rfD0/hguQZZp6PQK4lq0SYeffaaBfhDU=
Message-ID: <7d37dead-2a5c-4c26-b0c9-145b1cbba02d@oracle.com>
Date: Mon, 30 Mar 2026 12:48:51 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0092.namprd03.prod.outlook.com
 (2603:10b6:a03:333::7) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|PH0PR10MB5659:EE_
X-MS-Office365-Filtering-Correlation-Id: 3bee36ad-a215-4631-7798-08de8e955f72
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|366016|1800799024|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	TYayN5Gc/Rx2SDdUt/C4pQmjEyiO7jkAH4LCBsiCGVBFnME9n/zLajXyOaJRs21V4bcTLeigX6BQ9IV5cWJUOEHlueUXhKGkasNw6bf185Gv1dAdYiJlsdnz6ho8sGy0wdmxMn8xUgWJVNBaIHRivinPNINkkX2jZGdky3ljBHGxo/SsI/CSI6Cm+hSorr7wa2hhsiw8cPYqBmr2QARHHDRj1nag8YzHccV77hjiypevJ5YTzpvFtzR2W5YOFKmrmBF7XKV9pKVu4XcsFgm43pSD2566EJeSxgd3e2+ysrEjKZpl6PD7mvB//LeR30T3+TPMsnqDEc+ntTrgr+a8715OuVGhqwZGASmDDNu8FaWwCPlw2ilemR3P9l/a9kZYMuzzWoIeJZFSWnNqEScnbZrXQF216ijUm4P/HVHtgr3TxeRIYkZPHzX7aES0D4lEsvK4KsWqG+k9qJwC2a2B2z+Qqxr3yAVIhfLHLDqsugwp0xTLt54bfSHnwjIsyVsKQPgUKnE/JqKT2kpkYH5mdLVj+eEKFEBgh4wnxBwWhhCuslhfpJfVlnKlx8Xc5sEIks0eZAmqf2ltwnIzyIMHUfPG0RnxcnJnc/Voew6XWYglmrxfX3TY/jzandoQurL28VJ1rnoMk2s3g1G/vOPpVFSJC/vj3IX9X5ex7F8xN1bPEctbbheyM6Dvakpc0YZqLR25Ry0AB9cT4IjPnPs5kUyaLh4pnXhnQU3Ln0CBTGw=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(56012099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?WkMvT3IrSk9SWGlzN3Q0ekxrZHJiZWlpb2I0ZS9ERm52SG9PeE9qSndEcmt0?=
 =?utf-8?B?TXFrQ1lIV0MyVzhsMk5LeE03OCtFSmsxYkxHZVF4ZU1LZ1dWWXdmaTNWaDN1?=
 =?utf-8?B?MitTTW1vSkhHRTdUVVJZR0dRcjRlSStNSjhYK2hLYXhuM1JSWWtVYjVpRWFs?=
 =?utf-8?B?em50OEg5dTRJWjRlNjVpRW1Ub3ZFWGhBQUh3ck1oYkY0dmM3Tkh2WjE2a001?=
 =?utf-8?B?Vm9leS9sYmVWUTVUNGQwQzIrL3ZGWUpBZGtJR3NSQnRZWUowb2Q2Z3dQYk1m?=
 =?utf-8?B?ZVJqUnJqVDRwNklYRWpiTXdpZ0IyZkN6eUtUbXdhb0VyZk45Ylh5OWprRTVl?=
 =?utf-8?B?dmp4Mjd2WHJlL2N0TXBPK2FLbWc5b1VablU0MEdQZUNJSzhDd3U5S0NyYkd0?=
 =?utf-8?B?UzRWYmFvblpuOEZYbi9wY056TWNUU3lDTzFzN0wzR0sydUwzOFJ4dTkzdkdp?=
 =?utf-8?B?R1l2SUEyZ3BSWTNsd2FrZVNVc0RwT3piWVRJQVhuQkZoS0RmVlpBUDdkQ0tU?=
 =?utf-8?B?ZzEwWFdpME82cWlGTjU2SzJGWm1RTC9wWXd0cTZRT3VDQ2oxcmtOV09sVVh0?=
 =?utf-8?B?RHBHMytrdURPTU9aMmlZTFBoTVQwMEluRFFla0w5MlBsNTNkWFloNlZEZWJO?=
 =?utf-8?B?OWFZSWFoZ24zMVlaVFc0YU1tUEpnMG53UWJybzlBakdrZGFUZitDdklsM3VP?=
 =?utf-8?B?V04yaVhpUUlyZEpNRVVVSlFjTW13SHlaa0UxdkFuMWsvM0ZITGpERzNOalBv?=
 =?utf-8?B?Y0M4RVhSUmhBZ2xQUHppeFI3cjJmSUFwdjhDSUlQWmt2RjkwanhUcDR6SW5M?=
 =?utf-8?B?TDZvOUFTcXU4U2t6MU1WYThvMWVNTGJQcFhCTE9uREJCeUltNm1uSXZoNXIw?=
 =?utf-8?B?dEc5S29vTDl4dWF3V0VUNUlCOUdPcFU0bGFvZCswUVJjOUR1UkJaT1ova1pC?=
 =?utf-8?B?YldscEJpcUJSYVNFVXNtWXI5OHNrR0tQYTZzcHZPSU03aVdhaDdaSitHZ3dj?=
 =?utf-8?B?Vm9VTEV3TkRiNXVGSWFUSFZ6K0RYVS9qdGdIK0V0bW1qMEFJWlJCem1oNHVN?=
 =?utf-8?B?Y2gyNEhQN0NkbVdsaFNaUDBxZXFnOFN3ejFyQzNlZ0tSdkYvbVpqaTllU2ZE?=
 =?utf-8?B?TG5uUCswVmlQTVFuK2tod2tBbTFRazU2c2RiY0hJcEJzeGg1NUNPTEtDRWpT?=
 =?utf-8?B?VXN2eEdyRWRFVFQzMlZueUg5MmtQRVpXOHQ5MWNNTGRFWW1yNzNQWndCNHl2?=
 =?utf-8?B?Z2ZCNGZwUjBjZE5LdHpiY1g5d29LVFcrZUJlaThRNklFcUFlUjB5amVKOGUw?=
 =?utf-8?B?SkpYWi9RR3lXbTRzVXV3Ny9HOEVqMXRjWWdmR0s4cXprVE9ER2JucWNRdGNn?=
 =?utf-8?B?dG16US9hU2JtUmxlLzRlTXEvL3JFSzMxVTNtdGgrYTl4aUR3elRCaThwMi9H?=
 =?utf-8?B?cXhnK0llbjNxc1l6VG9ZR2RSa0llcHF1Y1gxWWJJdG5lZUxRS0xQVDdUR2tk?=
 =?utf-8?B?SlI2S1p4ZjZNczd0b1M2a1hTa2s4SENBb1NtRE8rQUlzTzg4OW9PUENzY0tH?=
 =?utf-8?B?Mzl3Rm13SE83SE01RXZCN3ZyUDgwbUI2OXg2V0xsT1p3V3lxSk5QNFhxVnc2?=
 =?utf-8?B?cmRvTW50ZE10dndKZUtMdVhBME5iS1pSNUlwcTV1RXFtVHpoZk1YdGJsQmky?=
 =?utf-8?B?VXBpMFZaNzN1L09WMkRNN051TURISTBEK25RRzdOb2NyOTdXbkQxNjBhcUJ2?=
 =?utf-8?B?ZkJQbHc2VFZjVmoyRnJnWUJhUWdOUEI0czgzaUl5VzRvZkRrNlRrTnJ3OEVV?=
 =?utf-8?B?cERKR2dvTk5DeUdiQzhXYXVSYmd0dUxwUm5UanF6Y2thMWthT21QdFJTQUU2?=
 =?utf-8?B?MnkraGR3RDdYaVFtNFdwM1B4ZHc2dzNySW1oNzNZanZxNWRWWEw5U2NZUUpO?=
 =?utf-8?B?d2ZKTGc0dWV2cUVlSmFUZEYwczM1bnFNL3pWVmlJVStRTGw0eXlqTjJ6dURO?=
 =?utf-8?B?QWtTZGsybHVTZWZhZmVtVXNFUkcvc0VxdnhFN1RZcWtaSUxNd2cvSUNpbm01?=
 =?utf-8?B?MUhLWXZhU0FKS2cvbnVBUzYvWUdHZEtWaUNGbjNLczgwSjZ2UlVWK1RWWFFw?=
 =?utf-8?B?bmYwbktLTncyZUVCVmtKdHM2UTJyZThKL0ZLN2hXN3d2U2Ixd3dlNkc0SGxh?=
 =?utf-8?B?MDJTSThGYjJjeno0cWkyalJoTWU1ZW9weGdlS2dxZEJ3NU5yRkVTTlEwWkNL?=
 =?utf-8?B?NEg3V2w1V1lQT3JUTWRGU0xUT3Bta2hZT1hvRFc0bjJ2QmphYTNvSnQ3b3JK?=
 =?utf-8?B?cFhBMEo2UnFwL3RHWi9RQmllc1lKVUtkZ1N0blJDeU1nUnpuK1FDY3ZCa0Zw?=
 =?utf-8?Q?XNWejIl68jXIR2Cw=3D?=
X-Exchange-RoutingPolicyChecked:
	m27ukTCT3nYcSChVQ1U/ju5G8QL36PDHqDBkkIoHNg8aTt9tnWeat3A5YvlL+GvCwLI6pAsT28mMIF+pFNDZq2hVIZ4aspyMymE634MXT5i3CpCyyyPPJjf/T/Xx+/1UtppPE5bVT7ZWQMrNd/unF8Is/4ivXZ0shXfFFIwvbxgtsc4x/Svt4YTOpVSU2c2CJV4VIK5sOy3NAph34UEfTZJ2miBlxUDmbMr+B2JrO7L2VnWNx5KMsI0Ug1QYyba2N3jQEuYvJECxCgZaR3GBNPC4PSvwLZ11JZaVLsgNFvUBnX8SqnhQI8v3rMXeywOJNigwcR53kHPongO9FFylgQ==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	9c9TOvVQ6xOJioB37OZC1HFM3aDGWIQqa+HMxe3AuKRV2RsOV10DTSKdFt7OA0bvoS51SrsJ+nOyudQmFozO06ARsuN1j9dyP+XrDWC3BTicrrnAIMZQQr8uNZYsva9XDyv0YmF2cqGlWwFAq2zYXgnUCtGj/Gy8eZMGmPysTMeTEAx8P4tMQOH0yqZO7QV+KEa8sEEk5GMPur/33l4oS2yT74f+KY24EdJbRSOcaQNpbeyLmsGphbrEiuwwmOz/yYhGFu3Yl/I9JB6VtOqtJpayVTJg8NtHeOp2OR9DLesVZXpe6bou+4NyRpJwU+76MjT8HEpN2VzbwH+XS7LnN9DgERYkwGg94VfBIl1Ji1b5yyiEWQrbtWSU7abNbAe+kI0NPFQhQ8IqGRe22dH7ErHTLpskc5EcChlCLXbFFE138txXtCaElyviHTFHbXke/eN9YGxe85Oc2ZzVUSu/RpTrPGwo4vaeox+8N6/CIaaRjXEUng1yAa/OJV9wmnYHrHHQkLsOXpehUtpWBaZswkAxarMzpwvo2r2jzqlHIBq7FMbke19llnexNUV3hnkr2fLvVWstcj8//j9An/E8zDIG8OLtVRfvYgKb6uh6N4Y=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3bee36ad-a215-4631-7798-08de8e955f72
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2026 19:48:53.8344
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DJT7Qtqi0x+MkfQOv4yFLuES3EU8FINRAK8WLwB70Ld/6dQXHAWGsF6NJSMjTcIUPAJKTNLfDrG0NH7HHdWsxgVEaiVwqMsSjwRYM0d3eGw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB5659
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-30_01,2026-03-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 mlxlogscore=947 mlxscore=0
 phishscore=0 adultscore=0 malwarescore=0 suspectscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2603050001
 definitions=main-2603300166
X-Authority-Analysis: v=2.4 cv=T7WBjvKQ c=1 sm=1 tr=0 ts=69cad3aa b=1 cx=c_pps
 a=zPCbziy225d3KhSqZt3L1A==:117 a=zPCbziy225d3KhSqZt3L1A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=7Gl3-_t3PgB9XO-mQDs3:22 a=NEAV23lmAAAA:8
 a=A1X0JdhQAAAA:8 a=n6JMSTpOKoIlXGw91a4A:9 a=QEXdDO2ut3YA:10 cc=ntf
 awl=host:12275
X-Proofpoint-ORIG-GUID: kvGMz05HaUdF95mf7K6d2yGCYFoWlzOF
X-Proofpoint-GUID: kvGMz05HaUdF95mf7K6d2yGCYFoWlzOF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzMwMDE2NiBTYWx0ZWRfXwGA912R76bD2
 843zxgcE3mgyAzJI1Car9d9Zep1zMeJMtGqYZg0vOb76QiLnEaGv3UyIcfT0QrPJ17VCmdA20ra
 epdKW4gIKOo8G2fxvRzf8/efL5ODxFRfkrTW5F4sMAXCl78oE4vQLY5gVcrQXYdpkfpOHf2yvJL
 Tm5bOCbYpWYICsYsYbYitC5/bnVJg2wpGSW7jqwU7RnV4hWyBa9rh5DDWWjsbanXIP9kSbGy7rN
 LNHF26yDEaTH3R0AVW2s6ghnxLYt5jguYMU60qh1L+mPqn91/G31TKiRDC5UW6e3zR/r5syrDE2
 6YFBj0b8NkPLSa4+c7aFPWF0S1hrAx57Apa4xP565TZaTON/xL/pmAxSkiApwxTr5+NRVv8GejW
 Vk5QfGmbLJoPOXvF+Kw2izqaMMkkyozGuRVZMXDHIsArIexMcTOzkAuGqbMA5pt3zS1fgxaMtxy
 ll9XgStSU+zQ15Nck/9F/yEOCzQ+nDbN2hkINXrA=
Subject: [oss-security] pyca/cryptography: CVE-2026-34073: X.509: bypass of
 name constraints on wildcard SANs with matching peer names

https://github.com/pyca/cryptography/security/advisories/GHSA-m959-cc7f-wv43
advises:
> Package:                cryptography (pip)
> Affected versions:      <= 46.0.5
> Patched versions:       >= 46.0.6
> Severity:               Low
> CVE ID:                 CVE-2026-34073
> Weaknesses:             CWE-295
> 
> Summary
> -------
> In versions of cryptography prior to 46.0.5, DNS name constraints were
> only validated against SANs within child certificates, and not the
> "peer name" presented during each validation. Consequently,
> cryptography would allow a peer named bar.example.com to validate
> against a wildcard leaf certificate for *.example.com, even if the
> leaf's parent certificate (or upwards) contained an excluded subtree
> constraint for bar.example.com.
> 
> This behavior resulted from a gap between RFC 5280 (which defines Name
> Constraint semantics) and RFC 9525 (which defines service identity
> semantics): put together, neither states definitively whether Name
> Constraints should be applied to peer names. To close this gap,
> cryptography now conservatively rejects any validation where the peer
> name would be rejected by a name constraint if it were a SAN instead.
> 
> In practice, exploitation of this bypass requires an uncommon X.509
> topology, one that the Web PKI avoids because it exhibits these kinds
> of problems. Consequently, we consider this a medium-to-low impact
> severity.
> 
> See CVE-2025-61727 for a similar bypass in Go's crypto/x509.
> 
> Remediation
> -----------
> Users should upgrade to 46.0.6 or newer.
> 
> Attribution
> -----------
> Reporter: 1seal (https://github.com/1seal)
