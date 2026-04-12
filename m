Received: (qmail 20433 invoked by uid 550); 12 Apr 2026 20:15:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20399 invoked from network); 12 Apr 2026 20:15:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=5xlydGCFA0CGoKzW
	uTR6EzjcsvQLVk3YpT4MykRLrGU=; b=LLIaWyLrlpgGbzd2nhDZKc8mJCzTVmzO
	Q1o2TmEs9pnVuAU9qXFckUZS32vVe1f8px1VIDPkEvH133Hae5IlE/BeMnUTdLN0
	UfhC4Ih8fcx4pDl5qvSrF2ucMhrhFLDl2v/fN75aphHgy0q7tQgFbGVdnmzvUuMs
	E8tLLpjIdrZXeLyMOQ764WzJWeD37daosVSnuXNh44nOOtOg0W1sGOsOSMzI7yaU
	TmTTrb0jO0dlXUL2AmI9N15pwGFBXyeUdGQDzI+dqTM/wsK8+TA/zn3ciHfohQ1T
	PS/AOsCJJ38SuoS148+g7fL/h+RBk23shaAILLL4WeMZy4OYwSQXkQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oz20RbQdL3SKnTI5uShLmma54ajMmXjdVGepH1YEpo/Ri81kPiSuICTC5Yr+2dbOba64rWoXzWJMVE+Vcv+uUuC3Narl3o+zNOxaL7KDBWA2aETS8pBvw5PwGO2DxlfehJMrf2Lz5bzMRB+KUnlI4fnXT42xjLKUJslp/+tldjdVWCgwHAAM7dpmVBMRGZfntcPjr/gpmcb1+GAcEhJmzt0rlYzqMjnKVsRpF/l6M21VQVkL3Z/UDzubaUCeG5Y9AigsBNY+Hcz5lX2wTlDQribpZkhcd1yoEVVhp9WjTOC2OUjzPxM6xD7VJCMZOoRVkbqcf1DnWfxgSGtFihxEjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5xlydGCFA0CGoKzWuTR6EzjcsvQLVk3YpT4MykRLrGU=;
 b=BjieqzrMAAjpd1QiC2NwjRZZ7aPSaIQwnVaZMLEuqRFIJTQmhurQ7jV6oh5QWIbSQGaRtcpHrmMucZf0MXH1SlEJQuwErcdp5qwxGv1uwK7nCNS4/41WVQTREQXG7OVpTvLk+emcFYou1H4jWGtMMYOrxXaqNv6ZppSRny1ijHx4Rd2g4m9mPaRI1b2MCqyVIGPyPXnE2IwP9WdpYVj7ffC2XVDWElxCvLsaY+vLgryOj+olCJuPc7Dv8VKS5ZO4/6RLbVwPVRd6qjjRgRv/O8gtnXO5xI7KUL11hKsuzzRvZTgf9kd1wKmu4U/frCfm413Uy0BP95C9l+jHM/nbqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5xlydGCFA0CGoKzWuTR6EzjcsvQLVk3YpT4MykRLrGU=;
 b=MYx+1PHvpjBlro07cFmW5WTJG+zS9N7dvL5PRZMuyERWdlDkMC07MpitbqM4cA94xSBPSNhal3/UlNTd/6aHarnfU3BMQR49oVI39/igokz8hs/p9YC8U4qp6/p6SWCLnxqwsB/5LsBeziIWiwV+VHfCTU6WsIwX2f9fLH7/Bww=
Message-ID: <6579b4c2-c2d2-4059-8d89-fada89a9534d@oracle.com>
Date: Sun, 12 Apr 2026 13:15:17 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR02CA0036.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::49) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|CY8PR10MB6684:EE_
X-MS-Office365-Filtering-Correlation-Id: 89ab29e8-97ac-4dae-4f34-08de98d037c9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|376014|1800799024|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	+eDeBW9CcwyN/+AWv7H7SwskzShlDpLaOk96SsTgKCAvzXT6vyUTJRFmdLD6GJMIqq1kNxQbP+bXkIY8pE4vNrH1ulKJJbxBlAOINbgzrgLPqzydE5C2aCjtKG3bIXwR+/vO5JhWr6CfuXcVrHKLmlUK0rO+Kh06bkTObFHh3AciSAl8B/QuUz1NgzvPBMBe0bAtU/pT+cY56OPh2dqiUsbdgdF2Yq20aC8ET3SIoek4Dyv14D70HP8gJomsGvt28ZDVCoiMCK5YguFQLIUBQuOtB3ZV9dxgbulGy0sbIT4QTvZ1w9/WP6prc/K4RK3111Lazckm+YRqKpkOStAQUpMJPAC4LOLoj3EEpLzWTgF5BlkSE3aqoqJXEEWSIeZU7dDW9+bAHWRu8wNh3y6L9e8eC4DvpXCPEAzD9nBft3/kD3HK9TD7KTyfljGvWmouPybfwmUcZanugx1YgyQw2dCkMXgEYji6u5P680UjPqISHO12pB9jweBFfr/F4QNTYDneIBuoEPEL+ZcRTj2SXeQJmFGk+HCv/jR5t/YeWzoA7ajm6WJkpmcbWURCJ3WBUt0ZFZEiRHpnpxdxGHnodHEmgaOvy858UlbI9MVg/G89z914MLkwbgd66ELIZPVZXIDGJEc1t9uFSf8y14m3NOvZAU/cFbcmgtZYGTaO98K7Fe3Zl0V2AWf3Hccd65EA
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?dnY1UFFkK3ZCNHErWEZaUnVxMW5nanJIRno3L1FKSEhLdldlU25VUWxjcHRH?=
 =?utf-8?B?ZEFNQ1NhZEZqUkFJTVR5OXhIUmdKZ05zQTZUZ0hnWGtiSlRFLy8xYi84bXVR?=
 =?utf-8?B?WWk4K1U3SVNibGUxTW84VUtEbWlhZlYzSnVnR0IzSkdHM3I0bXlzK28zbGRW?=
 =?utf-8?B?YUpOampUMXJHaXFRZ2dVQ3FUM1lhOFRjMWxlL1pFOXdQb3V0QkxNVjQrSlJh?=
 =?utf-8?B?Q2ViRUpoT09ybXBMUTcvMVVtSU9RWllEZkc1cDE1aXdqK0pXcURNWEJJZGVj?=
 =?utf-8?B?UkQySzhtTGJYdmV1WC9TRW5JbTJjdG0zTGRmRTNwUzdwbkRyaEIyVzRNVjBp?=
 =?utf-8?B?WDc3WkI2ODFrUXAxU0REY0pMd2Q5RlNlVmdxcC9WN3R6NmVyYkJDRWVOa0cr?=
 =?utf-8?B?K1MzZHErSnpuY0RXT1RuV3I1ZnV0OHlTRFlSWE9LWVRseU9WNExhRWlaTDVk?=
 =?utf-8?B?ZzR1djBoWWJXSS9NaHFWb2FGOXU5dEFXQmVMczk0d2NWQjJOSG5NaWo0Ly90?=
 =?utf-8?B?aGNrTEtaWFJaUTZ1alhZanRudzhWVGRPdmNiRlltRFhUaHVNYjhUV1Y3dk5U?=
 =?utf-8?B?Tmc5MW1GdzBIbFFReGhhaVRJQ1JvZXFna05ReHdMRnRuUHhNdGlOZ0hNdzlq?=
 =?utf-8?B?eEMwblhoTTd4RGNwN05WVmhlVGFiaTQ2am1maVRTZEhzOS82dGNsb1dZQ0RH?=
 =?utf-8?B?QnA5ZFdYck13L0M5eTVYTzJ6R29CRmYvMVRHZGNCRVVrK1FBZFhsdGk1TENu?=
 =?utf-8?B?VUJwVks3dDBpK2V0L0g2b3lPbk5KV2dobGFxQ0tuMjVFZ0N4NkJkZUhsa2hP?=
 =?utf-8?B?aVpvUWZwc2xrZTlJUno1V2M3d1dqRGRmM0pzcnpPNlJQcU5rcStYWmJLTGFy?=
 =?utf-8?B?TkFGeHRoTkdmK0FUQUw5RGFuWjh1NTEvQUpGd0YrYUlaVUY0dy9CbG1KVldy?=
 =?utf-8?B?RHZ6RStlZFBWZ3pLdkNGblhRN3V6cWRpTFFlQi9yNTlVM2x5K0Z2dVZWVW1u?=
 =?utf-8?B?MHBEUnEzdHo5VGhtRThkUEZCcUhIRkZOR3BuSHRyRnEvUXlSbGhKZ2MzSktR?=
 =?utf-8?B?aUoyY24xZVR3OFBXK3lTcEZ2S1BodlJsRUIyOE8rZEpiUnpCTW5FNmF1aUlW?=
 =?utf-8?B?NmlOSzdRM3JUSWF0bzZDRHVnV3dPT3BNNmxTUWd2bWk3d1RlcjRMKzUwTkZt?=
 =?utf-8?B?YjNFSUd4dWtSUTBaRzVwbUNYQjJLcysvY1lpWWwyQXR0ZGtnTzBKSDJQbkJK?=
 =?utf-8?B?b0hGc2NNaUR5RVQydmtMc0FIVXJKODc5NUdYNmFkd0pPd28yYkJuZ1FPTkdl?=
 =?utf-8?B?Qy94RUNzOFJHZ05xNzBaYUdaZzZEbmFSMWNlTlBKZHZHY3ZhTFZteWVZcDJG?=
 =?utf-8?B?N2lrRkkzZ0hHZlAvaWkvRVdOWHIzNi9QWi9vZkNpTEUrYmppVWlVSXR6NEdo?=
 =?utf-8?B?SWdhOHYwanRwQVpRbWEwYXpUYWkxNWtGUTVxZjN2dTh0Z1k1c2pNL0R0Ym1q?=
 =?utf-8?B?a0l4NUl4eWFGbDI1UElxTUdlMC8zNzQ2SFAwYnE1WlY3K0kzcjJ3TFRBVjFs?=
 =?utf-8?B?MEc1OVhCVVpBei9PVjJWWjE1NURDRktRUlpuVm5Lb3hpQTdXMzFjUGNvUVVp?=
 =?utf-8?B?QmhCOFA2OXQrU0E1OHpqTzRFZ3pEb1I0M0hDWU9uMWcxMldvR21ZSktET3VL?=
 =?utf-8?B?VlRkZUo4MkhCTER5THFVUjF1dnBwMTY4eHA1dHhJVEIxeUtEZ1lGK1h6Y0JE?=
 =?utf-8?B?OFQvbitpZHVzNHdETVlCaTlFUm4vZVVLTFA5VlVKT09raC9jamVJYStzdmx4?=
 =?utf-8?B?di9MaXVoakdFVGttU2ZHeXc2MkxyMXVMY2FXUWZnL2tHdXk2blgrNUlJV3pv?=
 =?utf-8?B?TGM3QVBiNzBSV1M3Z1BWMnlvbm5DaHB0MEYxUklGeGw4ZHcycUxDZDdaRWJK?=
 =?utf-8?B?aDdHWElZc0FUNGZyV29qWDF2Q01oZnluMGtzamtldnAwNFNhbVNBZXdWYVl3?=
 =?utf-8?B?Rm5MbERhb2laT3pUY212YVJBdUpwVzhpMGppZVM0VkN6S3hvSHFBMm8zbllJ?=
 =?utf-8?B?N0Z1TUlackV5V2x5Q0Vzdk1hMW9jOVdGNko0QTVYdFlpL1NJWHlKTUhRbkVF?=
 =?utf-8?B?QVRzL241b2YvSmMwM2dzZkppUFJ6RE1KcVVxNUVjblk0NlFmVzJ1ZER5MUVv?=
 =?utf-8?B?OGNEbExlV2l4ZHA5MlVaUFNxYURMUUh4M2tTRjdKZTMyeGpXa2NsVjg1UU5o?=
 =?utf-8?B?OHRpSnF0SnVVUVdLR0xPUGRuTk5EQllXR0dKNXFiaEdrRWNRRW9zUVlhd0RJ?=
 =?utf-8?B?V1dCYmpKcElncnVxMzFBcWJtOUg5d1pWZDVvbktQSUw3eTJYY1JCL3A0cEFW?=
 =?utf-8?Q?yNz/YcdXYswcNIcw=3D?=
X-Exchange-RoutingPolicyChecked:
	IEut9luYFS40o+3i+XcGma2e8FSkfRVwcYATf7QhaesMGNp+I/MC9FBjDfrEWXE+OLZLNRnvd5euSwE3F5F1eOR4Q90JlQjCWDSDrN6rwwvn1CXl3K5RLtLep76elstmHEo04ZDRQznpCbsls87npUkZGaKCRawVp291aPWX1b5fwoMX9qVET606wQyBiZTHijM92TKJhikjwLSKgwFeS7zCyUUT6bLMiWEGRSou/qHh3/lO0rIbcNXgaPuSC02PV10mOXC/pNN1keRPr87ofZB9gcmAv+hfkUIyg1tGRklHPw+HgleSMzx1RX4afYuKUoRN5RY6URbtwZ49RpNjmg==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	fmH/EL+WyUEByhHEGkfCQ2d49nuL+sLsSQCQHaaDzJQfM3nrrms3ZdkqzAAzRSshCfez8ntxIHKIc+LiJ/UgRDwIkCITZap8wus+xqEOse1fmOLIb7l2LW05B54ojkwuS/bA81gyuAEgAtEYBiTuNvv3hYy+nE4ZWcYcFYxSlIl5Cfs2EQ+mfR4WHgXdhkb3OGCfResXYI3IrTigOFqMjNHHQXneY3+dQ2h4G0BxcE/iRoYbAKf5lZsv48OZkPLqZFlco4HGkj5OnqpbZyqKVb4QHvbKI9XFHEZRXElaMvx8nMtI/hXGtWtMqWoUvXTr/4Jscf1OoPyUeCty9T1RYvxm8MLTjil8FIP7UZvRP6H7GMKPUOlH4/6DMQ5wd70hM+7Yos+r98EWc2JX1mClJdqfvqfpV0H6UhIDrGccQyJHCLH3A4qu7fUWK1CHYdXq71aaLPArvlkBnkFx5Akuy28BPK+lNn+2eKDoTZQljqRDg37DrC4zPSI38Gq8Qyq15tjMTZKOGp8BVH1lrnRN9vN7nEjidCGG8JX5disSYV7Yfngy+W50+okKoRMYU2k8X7TkasD2BrqLBGmSokp4CmA6lu5wDLUeJtKxcBzLBPc=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89ab29e8-97ac-4dae-4f34-08de98d037c9
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2026 20:15:19.1596
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EAJC439C/vEYWphgB2deAt4nweR50ntHcgANDwuKgmSI6G/7hHNZYXtYiXclWfPC/vOjoEfGl6I8kQEwImhF4IHBrosV7mpqwCywMIE5bqs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR10MB6684
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-12_05,2026-04-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxscore=0 phishscore=0 adultscore=0 suspectscore=0 malwarescore=0
 mlxlogscore=999 lowpriorityscore=0 spamscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.19.0-2604010000 definitions=main-2604120199
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDEyMDE5OSBTYWx0ZWRfX9nVyb5OjV6aQ
 gUPi5IE60mHjSYRc1GPaC668lGQD9bc1Lt0b4Q3ZHVmPiHoI6EfLd1j5NeGwA66VRJzPQ1YxNpd
 6quwY6CWJ1/WQjSyMeLAm9CwSZIM8x0Us42UAJ77cic8FzZSaEvQcaR+ZOMjhyVPisnXsyGe6g4
 CatkHhUZDxqJoNdfxVoOOrAhOroMuS+7TcmHJzoOT1R4A2EAAEdmC24GOw0YRCKexIWJhyobXuh
 r/TT+W0/jW1qpge+HjS+1CSG0dG5eKxARhhozZRc0U9ozPB8zSFsYuYa0NUwbUUqa1LZn4sdPAM
 /BR2KDEPBxZbVQcJw65BBPO76KQxZGNWFufvLDZVBJ8NHG22nnud+6Ne78eJwUcou8I4De/Upyn
 H78mi3lyQPURJSoryEaD0uE+RT/XgTzIxhMxr+hnabqleF3KKrSKewoYU3DAlMJC9YLdxOg+aUK
 PQL7ZBS+ih6pb1YKEZW5+Avgik2QXI/JXT/FTxC8=
X-Proofpoint-GUID: cQYWk6IxPoPfhEu71Cc2ULDUsr1IRBxd
X-Proofpoint-ORIG-GUID: cQYWk6IxPoPfhEu71Cc2ULDUsr1IRBxd
X-Authority-Analysis: v=2.4 cv=BaroFLt2 c=1 sm=1 tr=0 ts=69dbfd5a b=1 cx=c_pps
 a=zPCbziy225d3KhSqZt3L1A==:117 a=zPCbziy225d3KhSqZt3L1A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=o5oIOnhZENCTenyL_yNV:22 a=olERLTO0AAAA:8
 a=NEAV23lmAAAA:8 a=n5scvwHGAAAA:20 a=P8HezuBQAAAA:20 a=w_RK3wwaP6nLbbGfQE8A:9
 a=QEXdDO2ut3YA:10 a=K8UROZK7xOqmqaIXdL2B:22 a=bA3UWDv6hWIuX7UZL3qL:22 cc=ntf
 awl=host:12291
Subject: [oss-security] Security Audit of Hex, the Erlang package manager

https://hex.pm/blog/security-audit announces the completion of a
security audit & penetration testing of Hex, the Erlang package manager,
funded by the OpenSSF and overseen by the Erlang Ecosystem Foundation.

This work was done by two independent security firms, Paraxial.io and
zentrust partners GmbH, who each produced their own reports:
  - https://hex.pm/reports/2026/paraxial.pdf
  - https://hex.pm/reports/2026/zentrust.pdf

The announcement reports:

> What was found
> --------------
> 
> Across both audits, a number of issues were identified, ranging from high
> severity vulnerabilities to low-severity hardening gaps.
> 
> Examples include:
> 
>  * Unsafe deserialization in hex_core that could lead to RCE under certain
>    conditions
>  * A denial of service condition during package uploads
>  * Weaknesses in authentication flows and API key handling
>  * Gaps in CI/CD hardening (GitHub Actions)
>  * Missing or incomplete security controls in some areas
> 
> Importantly, the audits focused on realistic attack scenarios such as:
> 
>  * cross-account package tampering
>  * bypassing integrity checks
>  * injection in public-facing features
>  * CI/CD compromise
> 
> What we fixed
> -------------
> 
> Most findings have been remediated during the engagement and confirmed in
> re-tests.
> 
> Highlights:
> 
>  * Fixed unsafe deserialization in hex_core (CVE-2026-21619)
>  * Fixed API key privilege escalation (CVE-2026-21621)
>  * Fixed password reset issues (CVE-2026-21622)
>  * Fixed XSS in OAuth device flow (CVE-2026-21618)
>  * Fixed denial of service in package upload (CVE-2026-23940)
>  * Removed sensitive credentials from repositories
>  * Hardened authentication flows (including "sudo mode" for sensitive actions)
>  * Disabled legacy TLS versions
>  * Improved CSP and other browser security controls
> 
> Re-tests by both firms confirmed that the majority of vulnerabilities were
> successfully remediated.
> 
> Several remaining items are either:
> 
>  * accepted risks with clear rationale (for example UX trade-offs or staged
>    migrations), or
>  * dependent on ecosystem-wide changes (for example client updates)
> 
> What we decided not to change (yet)
> -----------------------------------
> 
> Some findings reflect intentional trade-offs or transitional states rather
> than vulnerabilities.
> 
> Examples:
> 
>  * Basic authentication and optional 2FA are still supported for compatibility
>    with existing clients. Both will be phased out once all clients support the
>    OAuth2 device flow.
>  * Certain features (like documentation hosting) intentionally allow
>    user-provided content and are being isolated rather than restricted.
> 
> These decisions were reviewed jointly by the Hex.pm team and the EEF.

These issues appear to be reported against the hexpm server side, not the client
side that end users & distros are likely to be running:

  - Cross-site scripting (XSS) in OAuth Device Authorization screen (CVE-2026-21618)
    https://github.com/hexpm/hexpm/security/advisories/GHSA-6cw9-5gg4-rhpj

  - Improper Scope Enforcement in OAuth client_credentials Flow Allows Read-Only
    API Key to Escalate to Full Access with Valid 2FA Code (CVE-2026-21621)
    https://github.com/hexpm/hexpm/security/advisories/GHSA-739m-8727-j6w3

  - Password Reset Tokens Do Not Expire (CVE-2026-21622)
    https://github.com/hexpm/hexpm/security/advisories/GHSA-6r94-pvwf-mxqm

  - Path Traversal in Local File Store Backend (Development and Self-Hosted
    Registry Setups) (CVE-2026-23939)
    https://github.com/hexpm/hexpm/security/advisories/GHSA-42mv-r64p-4869

  - Publishing Oversized Package Can Trigger Denial of Service (CVE-2026-23940)
    https://github.com/hexpm/hexpm/security/advisories/GHSA-jp8w-gxf6-8hcr

That leaves one CVE for distros and end users to worry about -
https://github.com/hexpm/hex_core/security/advisories/GHSA-hx9w-f2w9-9g96 reports:
> Unsafe Deserialization of Erlang Terms in hex_core
> --------------------------------------------------
> 
> maennchen published GHSA-hx9w-f2w9-9g96 Feb 27, 2026
> 
> Package:            hex (otp)
> Affected versions:  >= 2.3.0 and <= 2.3.2
> Patched versions:   2.3.2
> 
> Package:            hex_core (Erlang)
> Affected versions:  <= 0.12.1
> Patched versions:   0.12.1
> 
> Package:            rebar3 (otp)
> Affected versions:  >= 3.9.1 and <= 3.27.0
> Patched versions:   3.27.0
> 
> Impact
> ------
> The Hex client (hex_core) deserializes Erlang terms received from the
> Hex API using binary_to_term/1 without sufficient restrictions.
> 
> If an attacker can control the HTTP response body returned by the Hex API,
> this allows denial-of-service attacks such as atom table exhaustion, leading
> to a VM crash. No released versions are known to allow remote code execution.
> 
> Patches
> -------
> https://github.com/hexpm/hex_core/commit/cdf726095bca85ad2549d146df1e831ae93c2b13
> https://github.com/hexpm/hex/commit/636739f3322514e9303ca335fb630696fcbb3c95
> https://github.com/erlang/rebar3/commit/1d4478f527e373de0b225951e53115450e0d9b9d
> 
> Workarounds
> -----------
> Ensure that the Hex API URL (HEX_API_URL) points only to trusted endpoints.
> There is no client-side workaround that fully mitigates this issue without
> applying the patch.
> 
> References
> ----------
> - hex_core Module: https://github.com/hexpm/hex_core/blob/main/src/hex_api.erl
> - Hex Vendored Module: https://github.com/hexpm/hex/blob/main/src/mix_hex_api.erl
> - Rebar3 Vendored Module: https://github.com/erlang/rebar3/blob/main/apps/rebar/src/vendored/r3_hex_api.erl
> - hex_core Patch: cdf7260
> - Hex Vendored Patch: hexpm/hex@636739f
> - Rebar3 Vendored Patch: erlang/rebar3@1d4478f
> 
> Severity: Low - 2.0 / 10
> CVSS:4.0/AV:N/AC:L/AT:P/PR:L/UI:A/VC:N/VI:N/VA:L/SC:N/SI:N/SA:N
> CVE ID: CVE-2026-21619
> Weaknesses:
> - CWE-400: Uncontrolled Resource Consumption
> - CWE-502: Deserialization of Untrusted Data


