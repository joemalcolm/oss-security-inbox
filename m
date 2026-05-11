Received: (qmail 7351 invoked by uid 550); 11 May 2026 18:29:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7277 invoked from network); 11 May 2026 18:29:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=9VGJi0JOSC3vDxMagMYT987shRs0tzfkYT6rBJFD0pU=; b=
	bS4R1a5wiDDL0cUt80EwKYuEcbnJkp04nfjoIJb5HBHO2zGXxpNjIAjr22d46Tlt
	LTEKEqrw1LzwtmF+zMljZYDBIk2+LdhPZ8AzmCRx853AxgZoo6otyx/xAAXBcept
	2x2AHwp3eBugVJLOuu4UxVlZMJiE3ERr5snju64kiU5FFdCL2e/UY+45EqBnDDP2
	E2W17En7dIEAPh+6UqT1k/7A5Zx2Smfag7RAEI7GkK0P1G3Nu7+N03BKpA3pUgza
	HOII9rveImRTOwPfcz3KVo7CqxXGSo5rpprVA8HfkKDLUYblwvtaWUPduB+/vpXh
	QfvkYxvVbRYaXbTuA5eCvQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B3If5wPurqGWTwZqMt57Cqvls68fd/ebzBC6Fj9E+6NL3DLrCLANVfq6C6n8bpgEcS06LDYkd1l+Z+rrG9erc1lykz5IK7W32JOuX1LRrxTIsCXaU8ugz3/GIfZlXqSLbTvXC1TV5vXvYTFr9TJrSzkepQ0B1VziDzUa8lSaUxndUKHk+n78J2mOtx768Rw3IXsB6xBX1AsSDylqTDOTjSIVM4jbky0FbxUWGeVRVUcWOzzz9qoyiESXX576JAaD8nHPIawMw/lyB+F8oI7AKZ1eYMj5jdCfk8K0iwS4CvVV5gUJ5AaBs2AhPrpKtxG6Stoiqw4jMS8HjbcukiRN9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9VGJi0JOSC3vDxMagMYT987shRs0tzfkYT6rBJFD0pU=;
 b=Kq4PN1xWMPwEQlgmQJ1GLLn28sZPddgzmpRWySKqA58lA20ZvKezF5E69TDuZtTAhXFiYSFU31jfY+zTovS0R5p3NxEw3O2sXe0c3GZ24TpLPOhrt2H2jMG54TmfGTUqcWRdydao6D1brQgR9ibFic3kDjXxTOEdhRYJeVx1Lu7wuw0ba7ymZXhZ/SLxDFkhzWnUOR3x9Ywc6ZxNZReg4tQST1pvVHMypin7/GgJO+kb7090CK0tP3kJaXRf1fDob4qbYYKXonrZ747Knn77oOXv/E6+qLmaneFCSHLAOODk8MBYODPYWiVMOzZccGuG0/UleSBXUCKOuQjZLlBWSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9VGJi0JOSC3vDxMagMYT987shRs0tzfkYT6rBJFD0pU=;
 b=m5W5SRO1sVYKiET79yS8Ltq6r6KG0iRvmrw0Wsyx+UZ/xMlIxr1P14D0C3r+eMPchNAj/FmIocvD1hKapEiZQTxFeHShf7BcZZbHNwH3CXJP/jprH6oiDCiS0SM2EDnUBGNcYDX4j5qqFeYjlxrlgzUlWYiKyUlgBYdJ+BQNI+4=
Message-ID: <2f03461f-afa3-4782-beb6-0e0f597cf83a@oracle.com>
Date: Mon, 11 May 2026 11:28:48 -0700
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <124550bc-4540-451a-9c0a-d1d0aa951a2d@oracle.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <124550bc-4540-451a-9c0a-d1d0aa951a2d@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR05CA0107.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::48) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|SJ5PPFEBE40EC96:EE_
X-MS-Office365-Filtering-Correlation-Id: 7b690cb1-6eee-4603-8d18-08deaf8b262c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|366016|1800799024|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	QQ1fI8xAqx7OPGuBBsW6jLIEevkD4VaeKee3VHubTww/80Z4Zyh+oYF9xE/2+EpmBmeNYRnSyInEKuaOVM2OhrhQ8TIX70A88oYBtTZBi2B1L1yM+3BLohWTrlhTHm3GvEoMievzu+kpTmSYNBV6/kqvwPiN2ie0FfRUiOKYD02Ned1z2acpxm2uujx9ZeFX4B44MxbexUHpJsVa2TLgdMqN1PsYQPMEiQ1qA57/iVBhCcvNYcDz8hLQOoDstWx5Mot3iHxyWb0D0wbDjbHBr9iCe7ID8O+KeV6EnFlFu5QnVrTVXOQ5OED96ou66qLE4Ymf21kBA+Q/05zwwP+swlNfowdC34JVKczXCaZdPqCM45oJAHBZcrUqGuOsQTqn8xyCxiFsKkb3zFTuLGiM4dVX+McB+dq2ELrjRpUgM58eV0R4sGcu1Ydsv8T1zW7GrvoqU5gHHUwNqp15yOpYQiqU7R65+DANqxugGDDYKM++1b4QuBK71OHvXGPVDu6k2bYpunEmwbGQZ6Qb8C/p+iXHfdbKhFtsJ57ZYkND1W+jQpNYP8ye1no5uxK586JSxcsPbOa/6Ve2yIluoAj6kMPzg6rJF51U6veE30wfqb44kj/yDMsCfEK8ZwX5du7/bS7/vOUMkxpjehINc3m5bA==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(22082099003)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?dTQ1OWRFc3lZaXhwdDR1YXZ2WXJyb2xtUWxuUGpjNFJ6Q0s2WW5pOGhwNyta?=
 =?utf-8?B?RnBrVi91S2ZWQVVMQ0QrbTFhbHpkUkd1NkZSTjJEWnRwSjN0aVZOdGgvYXgy?=
 =?utf-8?B?a201L3NPMG5JM2R1ZWxJK2FJSW5EQnAwenhvWFQ2TWxiRkVXMUs3d3Nac1BT?=
 =?utf-8?B?SVhsc0ZWYWFwbjRLVlA4QXVoWnUwVE5SeCtKelFpdWpSUm9uZStZeWNUSGVX?=
 =?utf-8?B?VDZmUjZSc0szVEdlYi9HaEJGajZKSjFVV2hxQzZwbnRTWVQxWXAwSmttZEZB?=
 =?utf-8?B?ZCtuT1R4R3ZvbHE2NDJ1NDJWUDBldTlGYnpkbDlmMVNtS2QvN1c2aTFncEpi?=
 =?utf-8?B?anIzd1RYeDRIbTZ4N0hrNkZ3eUtNTnM0SlRVREVSSlFlNGpjRTIvNmZuYzlK?=
 =?utf-8?B?Rm5Ob2l4Y0JTK2ZjcEhGVTdDeSt5UGtsRUJBa09Ec0I0Tkc2aFUrVmZLMEFs?=
 =?utf-8?B?Qm1QcW5NMUliWnZKbnU4M05nOFVlbUVZUjNHekd3bmxzZnQ3b3loMy80VzJY?=
 =?utf-8?B?M1lNek9KTkpKWVBMUHYwMVo4ZVFpQ2ZhVVZvblFhMUplVHNoTFoyVUdacnNS?=
 =?utf-8?B?MFBKMERCVmJ4QStOalk0RFJCVG40VkpBUktIQXQxSFdWaG5GK0pQUEJmL3Nh?=
 =?utf-8?B?STRXZjVkazRMWTl4M25UeUs0bUc1ZGNmOUVIVEpUNStLanFEdVc4NUNTcFZw?=
 =?utf-8?B?Y3dKeWtlR3IxRktXNk1TcFlyVFRPcXl0T0xyR0hGM0tsd0E5OUw5Snp3aUtm?=
 =?utf-8?B?UWZSMGF1blRIUkhtaXgwRG1GS1VvL0FVN3BCUjJwU2tJN20xM0tmYTRaZ0tl?=
 =?utf-8?B?Z3dyb1RuWFdyQmtSd0hLMDc0MUN6VXErZXpRdGJtM1hkM1ErNG5mMGlpdGZW?=
 =?utf-8?B?TW1nZjhBejBHaHdSRUFWOGdHR0tCc28ySlluUlBGbThsM2lNMHBBUEVBcnBn?=
 =?utf-8?B?cTJwSjF4RWx3OTJYUXYrU3hLYnpkMzROM3VLb2FpcVFUdmdPZGNZUTcwMmZE?=
 =?utf-8?B?UVlHSG9mRnh4cTE3bEQxRjd0OW85WDlwb3paUXJSM3k1UG5BdVpGMjdCd3ZU?=
 =?utf-8?B?cis2RUNnNXFNUW5mNXFpQUFNWDBnN0FJd3E5cHBlNmFQeXYzbXhHbUs4ZzQ1?=
 =?utf-8?B?RUR0cmltSzRIaFlaV0J0M2NVTW9CREVzMi9XcXVTNVhLTlFUZy9sajRPUDFz?=
 =?utf-8?B?VHg0d1BpdTYyUjArOTVTeVhpVEM3dG0zek02MDZxcFFXd0E1NUhaOE1aamdJ?=
 =?utf-8?B?LzlwSDRTZ1AzTVoySFBJT3BSVHJocllDbDFsdkZlbG1iWTcyV3JuR2YzTjJI?=
 =?utf-8?B?U0VwK0E1TitoQk5WNS8zWTlmMUxjdEllWnhpM21ZSEdFc20xTFQvOHNIWmFW?=
 =?utf-8?B?NHlSOG1Ob2hsNEpwR283OHlsTGZtejZVLzVDeFgyM2JtZ1ZaZUlYUXArcmdp?=
 =?utf-8?B?ZUExNHYvb1FxbHlSM0xNL0liUTRQY3o2UHJxVFBkZEh0dHR4SGRHTkZGSEZP?=
 =?utf-8?B?NjQyWXBML2wrNVRCWitFUTdFWXhZZWRSQWhnSmFjOFlhb29iVVNlRXVkcWNk?=
 =?utf-8?B?QUdOSnFEdGgramM2NlRYZDFNVGlYT0NIYzNydGVLcHRpRW4rSm5tclVnb2s3?=
 =?utf-8?B?RlJ0OS9XZUUyVDhaWExtZFpDS3BmUlBRZHhBZUMzWTFZM0Y0aWZmSUJvVVlw?=
 =?utf-8?B?aDA4MUNNcHV4UDByZ3gvTHg2d0pxMVNUb1grOWxSQjNXa0c0Z3c5ekJpak43?=
 =?utf-8?B?Sy9xYTVsaGRYOERxNEJEZ0V2VUFTQnFmeS9OYStweGxudDdhcHQyQnpHb2sz?=
 =?utf-8?B?QThwMTltN3JTdTc0S1AwWkRsMWdQdld4R2c3MnVHY2oycENrakgyR0JqZnlq?=
 =?utf-8?B?S2RvblFpWFJqZjBNR3UrUk9rTmdGcFIzWnMzR3kwRlB3bExjZm1XSWFXblpW?=
 =?utf-8?B?QStPSGlRUy96b25hQnQ0QXdMVi9zMm9qcGR1VzUxYkdyNjhHVkZiTkUvT3Va?=
 =?utf-8?B?WU45NDAyc09qTElyUS9FdUJRUmhUa3B6dklNY0N4TmprRm1NMVlRenZ5M05y?=
 =?utf-8?B?cklkU0kyWGhHenNDSG5ZNlVQZHZMeGgwdTByanE0QXNxd1FualBvd0NvUlFY?=
 =?utf-8?B?cUFoNHJ3S2dKeXF6NkQvY1dwZzRwd3M1TVAwQWhFVEhnVUJSTEFXOGl4NG1Y?=
 =?utf-8?B?bU5oZlB4dW45UHlVU29DL293aTd0UFlJNUkvL1FsMWdUcmZIRXFQRjU1azVi?=
 =?utf-8?B?cW5EeGdJLy9qZXo2dmpaSG8yb3FiazVRcGZ0TGdyTjBSdURaVy9wRXlMNnNh?=
 =?utf-8?B?Z01XaTV3S3NHZWdLRFlZNGNTdnVMYU9qdHVJNjhzZ0ZHQU1RNEJCc2F2WVZ0?=
 =?utf-8?Q?8fW2XOeD9B9YCI10=3D?=
X-Exchange-RoutingPolicyChecked:
	CvR7SGJZuDMbRicsBA/8nup6yciPh5mWSygILEVjSE41lByVbN8jX7FcqpL2iGwP69nSYmkaJIVF7F1ghYu95w8krXR62gsgAoUpid3O1quHfNyHrtiW6rG+v4SKv0KGoohFWvOyiHLt3JXaiOr7hJ40vJxSA4jj7uSjPgByd4KCUpZ6ehNyukzHsymyESlhFCHW0Pc5AlP7iUnizfK7rWCgz13iyuaraqlPNbwNcAzzay/Vz0GM82L1E497c2dqGtnHmckUrKot/3ajqm4ddDAaeipeqs4VTwCaB2g8Y7q+yI44S3ziMrppXtZ28XOpyvt/cgGKfKe11A1ULVHy+Q==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	Lua4l/6/q5xah0GFhQKM9e5osDMjhk0goo1L/5ZF293siK4z5YMw2JYrGppFyKuVCX2UwdkWcQeMAqymSsPv5QvWfgSZTfhT7ISziY+bp6GeByQznghPxRmUzZKG+xAnxhOUuifPL/lmYdYEG+sYsO3IRHaAIq52FDx3gk0Oxd8xNtk9nv41ith8J6xa5UUUyLG5Gk4iXc4pXPkbFujrkfr9PG80tiXfnVtOVJCAPR59SSXgbaoRTdWWnoVM8RZtZTerISmzlHbGhEGeMRlUBLYOK7tBCkTLBLlAIzYPyF8Tv+7Nq4DJ2kz0/1pZdDhEZ2r8RNgWb5NKz3ApIGAiRRnDfZH7mdtFbw3FVVBLVozyRGJAKfw6hNyC3aUZ1oPSWyuPKKPUarSm00TJuvexNPn0CLFTViWnIjBJmwvJzv+oWAa+a3nFdsYAZLVVGeQCzDgf5kq+MhQ6DMPN7Vyx2YIFcS4yj/ED+pYmSH1Y51K06XO3BWn5FSYctX0osUYo7vcQl8GSVN7LlWaORopHBNslnvfJP8lbagFqyyNQeMHsEJFK5oYt6l3DEitG0CPuYokGjFlaw1D7e6yI6D+haDLYvbLnDupsE+5174UgZkA=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b690cb1-6eee-4603-8d18-08deaf8b262c
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2026 18:28:51.1366
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HejTqmltn1lykZq4/LF8nYm/pIWrBhmyUqnzD/3SkoDmua+tgKG5pYp4FZB+ENQQ1Pfugn2nERZOsq6BPaouarcyRRMnbT4E6VlFnKdiZPs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFEBE40EC96
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-11_05,2026-05-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 suspectscore=0 phishscore=0 malwarescore=0 spamscore=0 mlxlogscore=999
 adultscore=0 bulkscore=0 lowpriorityscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.19.0-2604200000 definitions=main-2605110195
X-Proofpoint-ORIG-GUID: aLxH20DTAU3EK5aZVW5zihvBePo0NdvE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTExMDE5NiBTYWx0ZWRfX99T/0LSq0rVr
 OEGvxSlzF5vMdWhI0fJ4kLYwtWyT36zb68+yEyMk+31EtNGYHeCCoNSzKy+r69tuNMMaBgoo6UJ
 3tgQpAP4Ouqi/UADuH3NX5dfikxbh/08x+1z+n8rmbLP95p6OZ/8X32kdxUnC3XwWlM+m1gOH7P
 +he1d8uJZI+DSf2ZsKFL0UNNystELGm9zdxH7+kJItxJqFE4eDEA99lI/NZ+FdI8aiQDlMvlQ1r
 zQ0ekg+V9tOHLVq+eLFT/68D/IMTF/KIbEF/42Nhu0fu5vO49bKcf5n0qfGVZE7ZTITVNhWoTzv
 ltoDoYs7mfag81RyDjtdBvmRjfg1+B00ZpMtndvhvcaTfuT9kNU9Ly6oQqWQ7LzdE1D9YrKukx9
 nwBVCe3D4iRjmWzbHw5/aO85AjSjLQg57ujHdQ9G8sBbuVCPS1uE8noDn1IhGBcZWZt9LR3l2UZ
 ZM0qi5ibLoabgxt4Irib5b4iugcejfdD8CVvD2/U=
X-Authority-Analysis: v=2.4 cv=FpA1OWrq c=1 sm=1 tr=0 ts=6a021fe9 b=1 cx=c_pps
 a=zPCbziy225d3KhSqZt3L1A==:117 a=zPCbziy225d3KhSqZt3L1A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=x4eqshVgHu-cdnggieHk:22 a=omqxvBYPAAAA:8
 a=TWq6ZYQzAAAA:8 a=yPCof4ZbAAAA:8 a=ExPwS1rlRNY2hN0-AhAA:9 a=QEXdDO2ut3YA:10
 a=LHRESdT2jHCYgTnjdhDM:22 a=ELI009spOhp4_qEUuRHw:22 a=5yU3S35YU4bGjq-dph-N:22
 a=Bho9c0fBagfJEIQBS7DQ:22 cc=ntf awl=host:12298
X-Proofpoint-GUID: aLxH20DTAU3EK5aZVW5zihvBePo0NdvE
Subject: Re: [oss-security] dnsmasq vulnerabilities, including attacker DNS
 redirect, privilege escalation, and heap manipulation

On 5/11/26 11:11, Alan Coopersmith wrote:
> https://lists.thekelleys.org.uk/pipermail/dnsmasq-discuss/2026q2/018471.html 
> announces:
>> and I have made "2.92rel2" release of the current 2.92 dnsmasq stable release 
>> which is downloadable from the usual place and has had these patches applied.

> https://www.kb.cert.org/vuls/id/471747 provides additional details:
>> dnsmasq has released version 2.93 to fix the above vulnerabilities, and
>> various vendors have published patches to address individual remediations.

CERT has now corrected their advisory to list version 2.92rel2 as well.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
