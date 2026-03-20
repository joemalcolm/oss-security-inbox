Received: (qmail 1024 invoked by uid 550); 20 Mar 2026 23:11:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32683 invoked from network); 20 Mar 2026 23:11:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=IPCDHMvcw2q/vy9H
	VoNdXdYQAFAAHLKE9p+HyjTubE8=; b=KiFc7M/Zvqy8Hxeds0YafMcgblZLqz5P
	9m/f5zSjA+7VhsbUSUUPgw+uzDIs0xrHt+ikMT2ExFpW6I7YQIo5eN0fWsO4tOg9
	MCq2MVV/uDyXRkESeReHh0uzH6OuZEvaFc+P/TE0hSMG64m0UvSvVn9u6LjOxxkL
	FYaBSeZBlSYyPJcQd27wy+A0Rg0yMrUCv8+yJHGVa3JmO1s8xlFrxwl900E1qgk8
	4MRH+LbyvoRiVEUIEfeuHBJqbo8WvhudCTxt5w9/pICOo95Lnzrz1X8A4tgVyvOh
	em3kYebWcPv3rrmHsGfRJJr4OAhNJbB/ryTEFbZ5cHvW7Slx/EyfoA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZllOhqro5XNEwPiZ6XUqEhWYnQeKAaN0m9tJ5C7KL6ZctdG+2Kmr81XBpx1t5sctIr2Ktg34AkZpQejy+YAXrzOG7v/0Xn4rd+qeeZ5omlo+dkzcCZdLBnmVNMm2TX5xKLz2chqsoO50pvIirtYBjw2IA1c266aM/sx0jjTTS7I5yVRPKd74+gNoE0c6mzGHJnEodzUWoebvng39TiMsrcL4wNivmrN3cmuGo1CPFzdfhSTY0Y7bPI/AkYd+whv8BWSkeCrpHG7EmBFc4hb4yLwMZnN6FTEc+4YXcGzRs9+Ez4OZt2DY82C6WdJd++CAlHWstGX3RbFhDpsA2FXWRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IPCDHMvcw2q/vy9HVoNdXdYQAFAAHLKE9p+HyjTubE8=;
 b=tGJ+ZBMPodPPPhcJ3HWYZ/GTtdT+nzvhcAVUCl3+2Bqc6oQttvcDsqWTAAoDgYP6wGpRRDcy7Njn2NYad4R+PtQnn5v8aPeSMRYJYMLW8uDGBm6UdHAftgj0YMyQHXK05n1+6ESjywVzLau+aBEmEaK5r8CD9ZuX7IQRKB8gKEv6eA/8/8dKuG6P8lxbOo9kmbVRmeHpCR4cjrBQ0LqPEtoHp6VFfiEXJQFnNq756ZRsJVZapQ3OaOnhqL7Bkfnm+pCZ1Bs4RiLJL5dvy7bnZxB/tjKIecQafz0fn6vPhBdvWnG7jBWb+gxxl/EFYkh9Yw0OMTYF4hCeqYrP4KontQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IPCDHMvcw2q/vy9HVoNdXdYQAFAAHLKE9p+HyjTubE8=;
 b=puMh44VHG9HMU68GZnxA0Mzc7pmZTX8cw53feMas8TiFZkFx5S4EOZu8P0zLwdZXjvssiVa61sFEymqjMiiMvm/9xT9JBnhGferoP80dxn5f3VK7DI0IFT1F646HK8FTblqxfnFrAcvGDkth/vaYFEfahTEcMgaDFFh+wc8xJmU=
Message-ID: <6db25e1f-792b-4655-871b-82812dc0fd6f@oracle.com>
Date: Fri, 20 Mar 2026 16:11:32 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH8PR21CA0014.namprd21.prod.outlook.com
 (2603:10b6:510:2ce::28) To IA1PR10MB6736.namprd10.prod.outlook.com
 (2603:10b6:208:42c::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR10MB6736:EE_|PH7PR10MB7695:EE_
X-MS-Office365-Filtering-Correlation-Id: 2b1fad69-cd51-47a6-dfe6-08de86d607dd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|366016|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	zgJjUsMrwzuhtmprjHQet/kMR8Zc0zeFW0JsErqFX62TDnDFGy/prdm5ha1VazKYKASzZH/DkhjVOUbfpRVD/h7dIh1cD+5kkrCdsQ2fF5/ODnLWAHj0RLWfIDP33Zf2ABdSNazGx0vPnGxRNYHRHvR22nnWBQmOV+ipAlj7jyv+jLNHxrACtiZ72I248AcSZW4whJ9Rcy6+x6e+U7xC2vtuXC2FDsBVAkmB9t+vSZOUVe4eGPh8wpy9mSUIpJB0iLOgHUVct4qNuh+RFH+eq5U3Urogmj/iq2hIh4+YubcHDDm5v4/gtdLfbEJ58ptsFG5iiENaLrzX8WO+7ZcVqKUuCXSOKvETP+kDX7Pk99K3YZlQxQkc3V4d+kwV5BgVwZZxowna8zHlNx3QECIlnLbqNcNhPbRBBaZDm6RQNnd0Jm4JTfIZ2AGJyqMBZeKPSNaUKnPDjKwKxH5ttY7X2PGN7GzpmUfRoq+FCX7bjeJwBsfI+yqu6tb4of1XKyG4e0iWrsbBUFnqC8HbfaWEGFk5y4QR/dvN/JnchRjJrA54vM+nsvbjpQNNxy71A7/wa4xUqmsvhtiLcUanUcL5AUGogf+E55StmARwLypfcbfJen6Wy2pndFsJ1OfHuZQ8sd3L84gTDopSLE/Xa70TP/s90a9jJOO8cNiL5d81wrSZdB421HXBENWhYWA3UJCs
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA1PR10MB6736.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(56012099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?YUVIemEySE4xZnUrZkF3aS9GT3BIaDk1QzlhNHYxV0RuQ2dLNm1uZXRnYnQ0?=
 =?utf-8?B?S2M0RjBZa0wrT0w5NXhoQm5ES2VEejNyOFVSTFFRbldTcjh6NXRhNU00VTUy?=
 =?utf-8?B?OTVlcElBSUttaTVFYVVOcEp3Zjg0SWZZMVRURWR5c0hFUjFmOFlrbUxUd05K?=
 =?utf-8?B?SGcxYitLRHpsQTh0elltaGNYemMvTDRuZ2tkVDB5M3hNdDJHcEIrL1ZYeEY2?=
 =?utf-8?B?c0ZrK25ETkgxSy9OL01NNGYwUUJJMmY3cDZFUTFnak1DTG94UGlHa2pvNDhn?=
 =?utf-8?B?eHZVSWl2SW1lZTE5QzZpeUVlQkwxNHQ5UnBjcnFEZW5iL00va2ZwNElCL0pN?=
 =?utf-8?B?bG1zSFRGUXdpZXl3bmtoMjNPSnlocURZMWpEd20zclZPcGtsaytrVnVxZlll?=
 =?utf-8?B?STNxVHh1N2s1QW5HOS9zWGRLQXV4N0JocnVmOWsrdmZrY1plNkJoTHNFVDNa?=
 =?utf-8?B?NXRaZW9aaVFVcGU0eGNJN3BnRU8yWE12cUdoQ3pQMkRmaGlwQjRnbS9ta0hR?=
 =?utf-8?B?MUZVczdoTm44ZVB1VzJvYmNkc1VvemNyYkpyOTA2YkV3WDd5TmFBU0UzMUc0?=
 =?utf-8?B?S3NTVlkvd2RKSEJnK2ZYVUROTmd5S2RpbHRJdzVSMTBkaFUwemhpQVUxY2tI?=
 =?utf-8?B?SHhGWGtwNkhTbVNTOVhOMzl6eEZGNStzZEVtajhxRXlrRDZ1akxaQXdFKzlN?=
 =?utf-8?B?ckZIM3RnMFRlV00yMmhJM1BZRE9Hd3FDOFREQXJTdmI5cUs3d3J3MllMdmJ5?=
 =?utf-8?B?M2Fsd3Fva0xZc1czaWxsMEc5a0pRVzJmMjk1Rk1rRmw5NGdKVmZ5cG5aVVBU?=
 =?utf-8?B?U2lZeGFFZUo3bXc0bEVkN1ZuMVBCMUVzU2xVaWFBTnUvbi9ST3QreXMyRmZ2?=
 =?utf-8?B?RkRDRTFJcjVLUWgrUTBFQ2tkZEE2Nk5ScnByR3lVeEc2eU5XdVRWYjhZNHFw?=
 =?utf-8?B?SE5CTnZXRGVRN1lRVWhVME92c3B6UStSVW9JUmg5K0RWS3lvZXU4Vm1zN3F6?=
 =?utf-8?B?NjF2NEU0YW8rZUNUYlRqQjZONnI1dWdJQjU1cHNpL3dYVVhzSU5UT291VnJ4?=
 =?utf-8?B?NkQ4azJxUnltZVVuQk1HZWZlM1NXVURQRzl1MUNCTmNkeUI0Ni9XQkhlWnU1?=
 =?utf-8?B?QkRVbjZaZ2p6MHQxSG9CRVBLajRSbUcrQzJuc1RqY1JyY2g3NmZhMlRWdGRM?=
 =?utf-8?B?ZmxDeUtzeHdQNUhUa0JRMXBTdXpjWWxmOG9paENCcklNSEF4eWhDSzN2RXdQ?=
 =?utf-8?B?bjhrMTRNYW1uQzdNdFdTQlRkN2htbkVmNmNDTk4vcGtmTWx6ZDF2ai8zSVZy?=
 =?utf-8?B?WmlBRUloTDZFTWlpdjRJUU9QVG02eWxCaE9kU2kzWWhFOWJ6eVN1TmZxRUlV?=
 =?utf-8?B?b1NqQzUrQ25JZnZBdlgzWFloQUJxNm5DWjl5eGkwRG4rcHVTUkJOWHZJK1du?=
 =?utf-8?B?cVMyWXN2Z3R6NmVMbis5WGhmcytrajI2Nm1IN0ZPT2NaUEFNZFZaU0pwdXVz?=
 =?utf-8?B?dDlDRjBDcTlkYzRpeUhldUJ2ckZDT200ejJKMVlpRDAwZ1liL3VMUnE3VmJF?=
 =?utf-8?B?c25aS0xIcVhybDFZRkN0YWRYUEhoT1V2MHRRK2MwekdvTE54cHNLUm85a01U?=
 =?utf-8?B?cnNhUWpKU2lyY0RDbDNTOFdYMmdwelF3ZVFJdS9CdGszZDRIT01KUEthNDFr?=
 =?utf-8?B?cDNQYmJWLzVReGZUT1ZiSkJmYS9IWDgvRDhpdkpPZ2RGUGpNZG5xTzVRMHhX?=
 =?utf-8?B?VGUwdHU3QlQ2bXpMQjRTVGQ5WGtsWHZBcEcvMStVYlg0U25GbHFtUk9JKzU0?=
 =?utf-8?B?L1RiNDRzVkcxcUFWNFhwUisyL0J0dHlueWlNa2p6V0hmRGVhT1RZdzYya2c1?=
 =?utf-8?B?L3RxWG9yRlF4NityTVl2R1lkYlVIYW0xU1R5WlZtZEN5UVVUSXJuWFhTOXVy?=
 =?utf-8?B?Q3hHbU04eE91SEVEUjNhVDJtMHBwaklPdXdTSXI3aXE4enh3R3ByTjBIZktp?=
 =?utf-8?B?YXlZTVFEaVdITXFMdStEYW5rM00zWmwzWHk1eEdwWmZJbjQvak5VT1IrWk1j?=
 =?utf-8?B?Ylc3eU9OamU5VW42U0dmZjlJZzVRRFVvMkNqelB6ZWh6Z1BWVm1ZdHdxT0Fi?=
 =?utf-8?B?Qm9ZWitPT29PKy9uUXB6V28yb3QzaFRuUUJOTWFuQzhBWUpNL29Yc3UvN2JC?=
 =?utf-8?B?YWQwaVhpNUlGTVBpUnJJRktWbGx6QW1KYkhuUWpMcXU0OFR3dW9hVHNFWThh?=
 =?utf-8?B?N3IwdXhXSjVzemR1QW9JaHMwUVFVdUNTMEJQNGJZUGl6Z3o5ZnM1cjRyRHdH?=
 =?utf-8?B?eGxFTEtRY2pTNEIwNDBZdWoycE9Yc2VSbGlaRnpmbnMzNDhsblFLREdFMjhS?=
 =?utf-8?Q?OLDQqr0IvoEYCuCM=3D?=
X-Exchange-RoutingPolicyChecked:
	I5Qtu+FAHOlwXoUAEmBmf764lq0rzdmfT6wOwu+mfE6k5Kc2eN1kXNBVkkOjQ0vJcd6jdz88KtuqpUEhzVTcyjBXzgd92Yev+eb1BWMjVeNy2K/eaz3VfJRbVz850SoNgurxzbg3PiXTAKvf+E53pvpk6J5PjQAnO2tCBQHmpnBaLnGlvv5whTHtQjbg/f53C8yOW8U1d/9PX8YjAnJzvQJBO84ta8FGSacbVqnWDOg32HAXSLrXwBAtlFyOfb7oZ1vlOfx/frqw8q6Fgj5gE7jEf7dyn8QAIM7X1+XzMJbh3HVa4cM7BJJD4JVW8xjRzRk/TBf73tawmM45b6qftA==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	fymZiYQx2jYQPQm1CsWCeyHlcGFgosFnLbEAkW4MWnsoeM4JTD+naRgY3FJyQ45YH/LOhsrmwIgHwtDh3F0euYM9+Bdt5xD82/QswIMxDJD8mpsEdEFPLb6pqoqDh0+LWL5I3yPaiOfCjhXZYkvos7J6z9nqSd42w0O7CQexY0q/JQKrm1vDJA64+zp2qlEgQUIxnqp93RQgQI3OWAwYf7MsXq91Fq9POsUvkCGNjrnjJy0TFg+lBEiMjUFehHOWF6c/ZvbnkhWT42lZGF6k+hUsU741dK0gDFTCsWBPKHQv46tvc//4/tykqTAL3Dwo0q3D5Csh3bnvIoc+RWH8MZB9JEDfIsrcioXdlNfeKhGiPytN4Rh9ZSx7355IJ1/nCAfiTg9w7dHdUKB2rKP3/66mYkzu8QLXPlrlB9/XFaOC/LOkfDe7UxdJ6Z34vOxo34Toj7xhyfZlad4ssXZNUAh9ov+gRT9uQTW1LIg4XVmbO9w4VmtwzA9BMKgcxfOtV0Y/ImH9aWcbT3ztTFD8OaM79h6D79ZKsgCnOj6PvKx3z/zVM9wLSF7raQqIuKtGKdD8ht9aPiniauVSdm5rdGFknKoaIwJv26ra1yCu1bs=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b1fad69-cd51-47a6-dfe6-08de86d607dd
X-MS-Exchange-CrossTenant-AuthSource: IA1PR10MB6736.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2026 23:11:35.4246
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YGm1te0Llqu2e6si5TR+Cu2l7YIfa39rsbtPSYLCH7rbPZ6tobFXkYxoV/ChR55DXe5CTueqht1EIn48xfyhVHTBXt6osulMjqWiGZAZNlk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR10MB7695
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-20_04,2026-03-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 phishscore=0 spamscore=0
 adultscore=0 malwarescore=0 mlxlogscore=999 suspectscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2603050001
 definitions=main-2603200190
X-Authority-Analysis: v=2.4 cv=LKFrgZW9 c=1 sm=1 tr=0 ts=69bdd42c b=1 cx=c_pps
 a=zPCbziy225d3KhSqZt3L1A==:117 a=zPCbziy225d3KhSqZt3L1A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=EIcjfB9IiI4px24ztqRk:22 a=CYFBeAHEAAAA:8
 a=NEAV23lmAAAA:8 a=yPCof4ZbAAAA:8 a=5Bg79CDHRChW8M933CoA:9 a=QEXdDO2ut3YA:10
 a=z8uuIhmeh12plYLLdjDd:22 cc=ntf awl=host:12272
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIwMDE5MCBTYWx0ZWRfX3o/CLQMFhiJ0
 cqz6rCB1IzNG/+XvqVTNIV2nHOhg+dkXxYEV6ecV/+YzD0YC+lnZLIkF9QObwp1RuGQuJ3Oub0d
 uGSiSjgv+b9C5L7Ou0P8d5v1peNPvmJCewZjJKO5kT93+Cl1xKuBSxUaunaeBIgVY3KMASqz+VH
 Ad/Q0RWjFIxptNwRornBPL9FNq5Gz3iFbMURjmMiGsOC6Cp+BI4yyRzav2uVi//LnrqHEnb3DMw
 CSZB8WwoePcqyhQWKl4aF+PuwnMPUH+zKw6063W7IGoehXhWo86eIDy+qED6zeEDMqpK6uggQbh
 ICCz1T2VwbJnCaF/s32O7YVxKd+KFb43zgDonK+CMjL0nzgqqM/sV5+hLFqirVpGCS4ZzKmcDIH
 C6scUwkc00LIEU1b2Gci4xSjdyJ3wjl1mB5NkKwuoEgoTQVjiAQAoOm+yZ1Dji6+Yzr2BrgKFVQ
 QblOH80r0p8Fw+lJyFrdkPXmFLsLw/6F739GaMEg=
X-Proofpoint-GUID: cCKMPsr9biP-qYMyK6fj069WvC-JefWO
X-Proofpoint-ORIG-GUID: cCKMPsr9biP-qYMyK6fj069WvC-JefWO
Subject: [oss-security] pyOpenSSL 26.0.0 released with two CVE fixes

https://www.pyopenssl.org/en/latest/changelog.html lists among the changes
in pyOpenSSL 26.0.0:

> * Properly raise an error if a DTLS cookie callback returned a cookie longer
>   than DTLS1_COOKIE_LENGTH bytes. Previously this would result in a
>   buffer-overflow. Credit to dark_haxor for reporting the issue.
>   CVE-2026-27459
> 
> * Context.set_tlsext_servername_callback now handles exceptions raised in
>   the callback by calling sys.excepthook and returning a fatal TLS alert.
>   Previously, exceptions were silently swallowed and the handshake would
>   proceed as if the callback had succeeded.
>   Credit to Leury Castillo for reporting this issue.
>   CVE-2026-27448

These are also listed at:

https://github.com/pyca/pyopenssl/security/advisories/GHSA-5pwr-322w-8jr4
https://github.com/pyca/pyopenssl/security/advisories/GHSA-vp96-hxj8-p424

but with not much more detail provided.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

