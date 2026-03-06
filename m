Received: (qmail 26620 invoked by uid 550); 6 Mar 2026 19:59:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26594 invoked from network); 6 Mar 2026 19:59:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=t7n4tE6pKP+RvC3W
	h+DDN5sHW1MQGoV3hcm0oaPw9xk=; b=Xoh1VCXmfFC+evSyEBSSGCMAOlCCJPQv
	qwXe556XQayEuWEjTgTmdyqGyttAIqYFH/07/5WeJg0hllyiJQhh/YJJQB1cuZ76
	8jeHMcFffE41roG4s7jBmC2yfr2kdPlsLxu/FBNIWvfcb620MIjYhnNnRuujKvZ5
	5ChMSokcoJLIZF6XURsesLQKp+uI7F6qdPhEpPgdBA3df3arY6OFUeLzWXmCEcVm
	9FCE3Ixx/BmVmckvirQq2NZDLnmiyThOPxWswPKsdDQntxZgl44aUy7G/h72+qys
	3kpW64W9p0fQrouM2mIASneYriB6gdUJFdB18crlS6qkm0GZtRx6FA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g7R86pDNHAyaFAIUvvA65NwGj++EPUSfrGTz9BHW1Fy4G7pY6DnE4HB6b3eoFeWRqEWaVS4G2+FtBHM6468EibvzFmnIr8zNtAV1vIEidNe+09hcLT02U6c3J5xzKeJtGU1yeRZz/mnxHwoxxaNtgEx280qPPfhWDA502lmIFvAbwpFQyEmwIP3/cqVjv5bPKO/yxCNRb0K24v1ZZae84eVy2deHKUG1GGByrx3j/C1Qw6cI2VQgtCs3bW4k/0NPvRKKgBtWk4LiO1VrhZ1h6KMoultF/DhBNqTdt3gZ9ZmhSpjgT0Ccu1bUxXwk0yNT/IU6c+aHBvPmsbqRbOf6LA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t7n4tE6pKP+RvC3Wh+DDN5sHW1MQGoV3hcm0oaPw9xk=;
 b=OQVwU6WZ37NNH3Va3ndoy4TCJc8HbiiggALc1TF6wZB+g+hLo/7+3nWGBh6LzNmKxcm04pdlB0upVNrGeGdKwibdYcwKohEvZNStyYIYxLz/6cOKl6dsQCEiW+omxcrpISgyeoQPm49Ca3p1Ea1HjBNLJhD41B06GN8DknpM1bUmh+lOi96kguYnTjNiXOF+8gMQ/gYW1SpkSep1t0vW1NRFM3hDVtUysdHmGCa7E2Dooo6/WDxrKoGyJ1c/no0djn8KiIrwr7rd5BNolBq9sLO5aYkIpyM3rGcexe/JyGddA3eWuKpsdaqGII0obugDV6SEwAITK1egP/jTCmXx/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t7n4tE6pKP+RvC3Wh+DDN5sHW1MQGoV3hcm0oaPw9xk=;
 b=pGcG2AhUstFwWVm6fY6+5OwqwH4flucD89bg9EP2SZdd15y0kPxpvUvhJReiubVsRWgpf66sYrAAW+5HZ2mJk6YXZFhEArU+Mwmp2rgIEZiiOOHlPxht8uQEBGForqUfjQ68sl9n03wa8PAqFNFifEoYuKnVfbCE7ZeXFrWqynI=
Message-ID: <a258948b-5ebf-4b4e-9f43-9dd1a9ce75f7@oracle.com>
Date: Fri, 6 Mar 2026 11:47:40 -0800
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH1PEPF000132E8.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:518:1::28) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|SA1PR10MB997676:EE_
X-MS-Office365-Filtering-Correlation-Id: 70e07a5c-22c0-44b9-eb90-08de7bb93aec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	UUlPv0VuHoFbEcfj6Q2n995rmEFQZCnQfZvTiJ7z05UB9Z1JfnxUd23o1CQkEgtTUP87K2XHFqTyNO+lb1lVtxkXC3xwdZ6Re8RgysSy4uu7AWfO+dqU692yP94/uo5FMkvtK4Ks9t00wqzdPabqGKZlAkuM0bwBLXZJ4rwsxnny9M8Yr/1w6lqrBVTkw2BwZCPOAc1XBt6EMFNd0XlgSt8TWzW8UolR90oREP7z8f1ElyhYvcS9nML71WXQoGjQlAp0dwD3klj9yObI7ywNUGIrib+JmuzMQldDg2RsoTdXze3f0DOoShY2qyW4YXrPFjWkVp4+TbG/Vf5onC+qao115SOLcMM4fSkOKs8H+aBKB2AafG0cc3JOnI5eqDskladTHXpJ/Yx3QFmhS1BrFmGS8cKDNK5FqGfGqGetHCJZeq/fVwKBX4w19MR3aEsTs0ZwwjOfz0wXioolJTk8PIjyA/Jh7BmCg7y0kVrH8PuK+FB37xTww/W/V4aHnOipsaIktDSWYGgn93q0P37vyVST55CL/FBOr4Un2R0qfPlCz8G5BAP1eKWAlBJk2LtLIOprwl9NH0Nw85mA6KOfPVcNGDPt5o/4LFxcp9PdWJ2HTcv39dluDtMaP9zBfJQea+eyBITGscHnDxlPtHdwqZhmihJF52OxGhi7Zn6Odq6fpiTZzoPEEcqoUK+6cAlULh2azA9oydioBSA0GVdw4gMnV/G0Haz7OwIHXiEW8VcgvQ6K66Ari/7C992OOrry
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?UldGK0xtNlVCY2hsU2QvcDRKNzFLRG1FckRqMU5yYTZlQzRXMVJETUxWekU4?=
 =?utf-8?B?czVPRCtpSXRISloyVGh0ZkVRdE1MZzgwVEtZcVBzS2RNZkc1ai9kbkRHNWlL?=
 =?utf-8?B?Tk1USHdvSE1HUGg3VTgrNTk3all2RG1mQUNNaWVVUExJa2pPRndYQXRoRlNV?=
 =?utf-8?B?RlRPY3o2bnA3M1p6dy9OV1FLZFhzR3h6cmtBajJqZmpOQSt5ZkI2Qy9kMDdI?=
 =?utf-8?B?UmNCcWlFVlEweHYvMUlFbFVjU2FralczL0ZrQ2FIUERXZmRYYVNnN0I5aHda?=
 =?utf-8?B?b0krMGdTcnJZbnh0aDBLSFk0MWUrUGJrWXZ6M2xwbEtYa1RSelI5QTNZUlBy?=
 =?utf-8?B?b2ZLejZMYWdHaERwcUxJcUhpZjVYYVdGL0Z0UkZhK0RWMW02VHd3bkJhMkFY?=
 =?utf-8?B?QW9NWHlwN3lxOGFoNU9UT3hoY2lkRUFCb050MlBhaFV3SW14bHVwSE9YY3p4?=
 =?utf-8?B?WjUrWmVXVGplNlZBaE4rZDRxL3RDM20vMXN2NjZkSmY4andYWFE3bEtIS3hR?=
 =?utf-8?B?cExIVnlRdlI3Szl5MlhnSXNkK0FFdVE4MGxlS1hmR1RYcHRiZnJZRXBMVjQ1?=
 =?utf-8?B?S1E0bnhoNmI1Nk5ER1JmbkZTVFM5SWlGUEt2cnB0UVREeUZ5TnpLUTFScVdW?=
 =?utf-8?B?MC9lMitSNXNyYXJ4Tm1xTlBtbll4a3BmT3U0MWpiKy95ck1LOTA2YzU0a3hM?=
 =?utf-8?B?R05HLzdWR29zclhRNzYrTkMwbkNxWGxZREJDU3duZzdXT3p0dEVjb0JJVHFJ?=
 =?utf-8?B?WFRkVnc2NjhFVVhlN0xhMXdIN2tpVXBSZVNBV1labGF3NjhIbVh4U2E0Q0dm?=
 =?utf-8?B?OHlnby93R0lwNUZ0aHNkRXRoR2NTc0k4bE1jNlRpcjFDajhWTXprbXZLV0Jl?=
 =?utf-8?B?azJ3eXJ5Rk9XTkxyd1RMbEVYS0FDcno5MGxTMmUzcEVtZWJKenZsSWlOa3dr?=
 =?utf-8?B?dksydThKL2REY2JCemJSUmF2a0k1bTFIYzdmOFFiSkZLbXFrR0w5dVc3cHc1?=
 =?utf-8?B?aVcvejlsUXIyeGwrTmhPSkpKcFgyS3hReHB0UWpYamZZa240TGR2NzY5NFZr?=
 =?utf-8?B?eGlNUWppSjdvTSttK0J4WFFjeHRNNnJXb2JmYWVOT2psTWxJS0tHb2hVdHpW?=
 =?utf-8?B?UHd6bzR0eEkxZ3l5T0pxd0FRSjRCbkdvakRiR3laRlV0ZSs4MjlUdlVQKzFI?=
 =?utf-8?B?bTJXM3YxNFJodU9BeDJRclVGQnpDWE44QVFxaUJTQ2lnRStlUXN0cnpueFh6?=
 =?utf-8?B?d3Npa3FzU1ZRbkpPakNLUkJBYXhGcEhTOVQ1cUJOYXlBYjZ6RTY3SVlIQlZH?=
 =?utf-8?B?bFB1Q2tYTmxCU1R2Q2hFSkMzbFNoM1BZZ0t3UER5b1VqK3hnU2VQOFBQandP?=
 =?utf-8?B?dTRyUDNkd0xLdUwvc1hKOHAxWTgzUVV3NkIyaVI2N29iZVdrTHVSZHgyczBW?=
 =?utf-8?B?RlduaUhNYkJCVHU1ZDBlZ0NRbXZwdStjT1pDbUhKWmVMUlViZmJwRGRBeTdm?=
 =?utf-8?B?SWpoTTdvN1ZUaFpYS04zcUQxUWdxNVg0aFV6aFF4akozOEl5V2JnYUwwajU3?=
 =?utf-8?B?NGlQUG0yWC9LVE5ITDlaOVR2TGVzS3FaRTk0OXN4V090QTBtZWpMb04zemFr?=
 =?utf-8?B?bmZQbktobzRVZE1HNllXb3l3QjVFVkNEWFRwRm1jUWErRmhOakJ2THhESS9U?=
 =?utf-8?B?bmpycTllalBBZlhBMWZlcVRhQnRnNWk2OEVGRXBLN1pHdDNHVlhqa0ZpWTBO?=
 =?utf-8?B?UXIrOXEvNk1qTy9SOVd1MVFzZElocEhSUXd3b1hjbi84YmgxdFZKNWhZL0lS?=
 =?utf-8?B?azZwbU1hTXc4K1M1MStZbFdVS2pYWFppOWNad0YzbkJ3VUZNNTduVlJGbmhS?=
 =?utf-8?B?S01HcnE4MVRvQUVueG11akxDVXFhU2pTTU9mTHloWnVqY01mc2lXQjJQTm45?=
 =?utf-8?B?cTN6d0JtU0lZUnZXeVRYZ1JsekZZbDZoaEpaNi9VTzdGNDVON3JsTWl2ZU5y?=
 =?utf-8?B?NU1BbkpUL0x1TzlHNGpGS2FER0ZSQVE3bGFuZGcvQWV4dVF4ZGtpYkVDc0dY?=
 =?utf-8?B?TU00d21kS2tnUVNBZUV4MXY0NzVmNXJJcEtkMEJPbEd2d25Kbys5Vjl3WUl1?=
 =?utf-8?B?aGEwZS9vbmIvY29nL2g1NjlBS0JWVmZ5NXpSU2FTUFhCbUNzWldILzRLSjha?=
 =?utf-8?B?YUVJMER2cFN5c0lPaWFNUng1TGM4dDg2dkN1WGphVnNteUlCRXBmcTBCS1ZQ?=
 =?utf-8?B?V1FiR2NXWUJJRGpDMGVaVTZvU3I3cU1vUWVRdzQ2c1kwRjU2T0NRRjRNSTFh?=
 =?utf-8?B?V28yUmlZWHZXcjFLQmtOTnZzSlFVb0JIZ1pFMVFwMGkyWU00V1pPZVFDMGJk?=
 =?utf-8?Q?0gsDGnn1QuV/XVdE=3D?=
X-Exchange-RoutingPolicyChecked:
	pK20E2KCNnL1jpBW/ATLHPjj49XSEeYt+yYB6M1CenPyaz24v5sktKEBpCJMc+E1pIzKTk7i/J2oY3tObDaeZMvBgXDN1Wo+Akim9lrlBoGC/M+8joqNO+OdLE47mD4zkTKEszS3OFNLnj7Wjka6srbBt4jtTn+leKt1xz19vWRZIZ3L6BNQnhNB1boXjPO+6VCVFRIX7bj3gjrfWosmlTFj1tsLAjEl06gSNEIEj35RVmnobXlh/470udhJ3MLqANAae+qs8SIGCgzu6yz70rnvA4CAEFLHgYaoTHB4CFVOvgMOBf0N2Mm8qDELesNiJhdg73MwembDdU+PounAYg==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	4ew1b9qRcu1B5HcY3Gm0I0cxy8PZ4F6xBB0XzXlTeIreQhK3EWuO6IKxElJCJZpVYGnC2qWI026zEjpaPBqApGMsez2aBWg5jsDAxiOBP+zZU3nqznT3JuuJwba/SrY62nn7mf5e0VVj2CRggpYUpNSae/0Jq58eYNeC9UmseuIDitxKtwrehRX3HHb3M63ACeU6QlRqw/3t7HfOGN8qMuDITMy2F3n/QAz9RzLdpL3PwhXYQC8JIqnzv+1mqDz91fbYXXA8t1HLjQX6L3LadFmcRqU/o9cVG7pg0RxYLRqI9R5iS4WEzGekA7/RmNsD83jnUckrhrcAW7Onv0m2vUUsSMsAfsF2B7FG2Y92+7MwGdu5QUID1GJo5vZMyu9OviYmYiflTq42sXiPPMcxAbILmOhleWcMVOFH6Vmk8Ic8ic8HUzj7+ttoOYh8lKedszlGHICDSRWYET9qLmCP+aov3WLINd8Axo3ZJ4XPqB06lnDRIDfffDY1dRy2ERSXwvvJTPgWfPb0riw4rTYsavKPla0UAu9qxwdCPnqHuVPF4XTmW9DxA4n41bceEo62ZVjPlzZITdkVevgX2/zHN5cAUIBlrGPVoF/eWZ3n/1E=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 70e07a5c-22c0-44b9-eb90-08de7bb93aec
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2026 19:47:42.3278
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aYsSlc6TN0wGmYE1/QNUT1xxpSpaVzr0kJcDC3rw5Vd16c+Tc3SLSo2KHe9GyzN2X1OC0u70xS+I4ZFAzZR99KXZm+W5VHxwohwF1krbF2c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB997676
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_05,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 mlxlogscore=999
 phishscore=0 bulkscore=0 mlxscore=0 adultscore=0 spamscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2602130000 definitions=main-2603060187
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDE4OSBTYWx0ZWRfXyc9y1hCt5Y8s
 2ZsXrQSq0Om9YyqUf7/Hx5le+ZxlOtQiFEd/KZP2mh+MHJ3zTyYVKUF18tt7xqx+JJBxT6QY0px
 v3ETuLd69cCHEk5yiFRj43Az2b6NxyiH8kfuoqRTLT6RQvuecH7P3vOBTB8mQabmy7mCSFJxn60
 ZoGGDS4BcH7WVuUEmV8XIEWK9wxz9PrvSeD7u/KsTFOjl+ZdIxKFGmPl7o+bQtFFjIhuyzqLF4c
 Ze8pQRDLX9ZryMO+VQe8FbD75+zQvB3XHEdPnwiXNieHFmkQdEgPGFEhGhvaCbCD3VKZWykYjQL
 1GaaPtt9jESYxxzd41pcqAc3VoQoqffCtdreeqo3nHmeogs6XDb57nJ9V+A9s8yNmsuFi3PqEhu
 uTOpHSzChBnRQPHc8nLHulY5jNu4LSAa8i99nQVzcyA2EuiIvddQ5qrs6s7uzC2xwBxWLU2+XH3
 bXQmBR1lhjCoSpGpuEA==
X-Authority-Analysis: v=2.4 cv=Ea/FgfmC c=1 sm=1 tr=0 ts=69ab3211 b=1 cx=c_pps
 a=WeWmnZmh0fydH62SvGsd2A==:117 a=WeWmnZmh0fydH62SvGsd2A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=BqU2WV_vvsyTyxaotp0D:22 a=8r2qhXULAAAA:8
 a=NEAV23lmAAAA:8 a=yPCof4ZbAAAA:8 a=Xi6uLIG23A470CwZmL4A:9 a=QEXdDO2ut3YA:10
 a=8gvLZcY7Nlvl4CGD_6nf:22
X-Proofpoint-GUID: sr52lf_oiqCSj3A5ZZ0arOKOKgz_yveN
X-Proofpoint-ORIG-GUID: sr52lf_oiqCSj3A5ZZ0arOKOKgz_yveN
Subject: [oss-security] CVE-2025-69534 in Python-Markdown

https://www.cve.org/CVERecord?id=CVE-2025-69534 reports:

> CVE-2025-69534
> Published: 2026-03-05
> Updated: 2026-03-05
> 
> Description
> -----------
> 
> Python-Markdown version 3.8 contain a vulnerability where malformed
> HTML-like sequences can cause html.parser.HTMLParser to raise an
> unhandled AssertionError during Markdown parsing. Because
> Python-Markdown does not catch this exception, any application that
> processes attacker-controlled Markdown may crash. This enables remote,
> unauthenticated Denial of Service in web applications, documentation
> systems, CI/CD pipelines, and any service that renders untrusted
> Markdown. The issue was acknowledged by the vendor and fixed in
> version 3.8.1. This issue causes a remote Denial of Service in any
> application parsing untrusted Markdown, and can lead to Information
> Disclosure through uncaught exceptions.
> 
> References
> ----------
> 
>     https://github.com/Python-Markdown/markdown/issues/1534
>     https://github.com/Python-Markdown/markdown
>     https://github.com/Python-Markdown/markdown/actions/runs/15736122892

The comments in the linked GitHub issue though note that the root cause is
"a bug in the standard lib's HTMLParser which was just fixed last month (see
  cpython#77057)." and that they are just providing a workaround for older
Python versions without that fix yet.

https://github.com/python/cpython/issues/77057 appears to be fixed in
3.13.4 & 3.14.0b2, but doesn't have a security advisory that I've found.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

