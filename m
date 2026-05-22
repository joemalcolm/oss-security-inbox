Received: (qmail 3585 invoked by uid 550); 23 May 2026 00:00:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3546 invoked from network); 23 May 2026 00:00:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=iWUVrxDs25oJWlrt
	CWRBEgGVBxbz1plMBzyPms1cXBo=; b=IG9xMkwcNA4BV2TDE2TNlO9lJJKlf6Ew
	+pQMrgT4J7tNcbwBAcNMPYC136kJWsnz8egevxiiySB+YsK/pS/ncVXoiusfeZbL
	LdH6ZIflw0EdGbfzF+ytD/Myol05Ab2Z0Ov6B07gKgWwpwW+8EhVKe9rPo+Ob2UP
	v9dmXVv2Hwt+wsapB9HlV9n9CXJu/3Ia4OXQevd+twhcn48hSvMFEv+yYH06XLmg
	Bgw+wcBXBk8XPeo9WvoFpVGQN6VxDoY4hLOz3slHz7BiDJB4iyi7mCZfpc2Jso3i
	g01Z7L6sG3hnSHAHGPaCpajmVFpwWjCQYDFR4ZZIpT4FHnB3ChfgLQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kWl4xsQHB16daTUYOM9guyZXmv14DwY2I1E+ksjcklfI0E656kaUgN18b2NchmPybRH78yF0lNwe/8Ko8thjHsfEsVDLmco+ONKYrCqh+X1lhIU/+uySAcwOBtHqQeGtz98W2mrgJXaVxm0wIOjP5CIbUSTgYQhyBnizbUkZPhRZ7UDrYOnT2ZK28pbeyR5XcBiks8S1MqnNCxpnywY2QPo7I5wQCplarXkhA6iPdhuIbj7+VCgxaXJdOo0e902RJInWM1E47NmupR7F6oSY/7fnBhaXm/aD1v5Pg/+W0MW7kEnForQ9Y5VOCb4LalnG41BGPlRIloxao1uKwVIOoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iWUVrxDs25oJWlrtCWRBEgGVBxbz1plMBzyPms1cXBo=;
 b=QABHMe9ycGrKwwEMK05CUy/gVovTGQIJX0I02jWQG9DQR95vJ79oAO4thT6SdWc3cKaI8zJgpiIssB1raUY6JYWQ4SSTXk70mZUf3VtT9ZxN/1GZNGLF7sVzGz6SL2z/4eCT+qFtCW6m5e1WH9a1uTwjLcMAIoW8gslD3A01grfQNCWfxLeg852V6vuX7RjRbLaWI0Q+ed6RkBUAMI4n5l6lKHquZMPBAwe27m0u7yI9diLogEkRWH7QzSt0t4LS6bBbyd9Z5rYWZG2AzDAJY2YH3G/ZK3EUAu1nwAeS/oPmO3HCvWPjya49o+jP1L15d0MAqoyEGWMkCSi+cm0mwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iWUVrxDs25oJWlrtCWRBEgGVBxbz1plMBzyPms1cXBo=;
 b=tSZM/tzxMGP4b3ara9U4DJWSu2ODJLpmytJBPHTul5jlm0krS3c1Iyfk2hRuQarA+nMPgB2n01NAj3/rvFM89GZpKc/oxBrdMMkIeWZ/SD5daCn0n9iMSwbjQZuJTI8OMuaIZ2hEsWpgQhoQXZGVYNszEsSTptLk1b1y2mTLIz0=
Message-ID: <9bedf2d5-ea09-4d23-810e-dca33dce014b@oracle.com>
Date: Fri, 22 May 2026 16:59:53 -0700
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR13CA0114.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::29) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|CH2PR10MB4263:EE_
X-MS-Office365-Filtering-Correlation-Id: 677ebaae-5e12-4b28-b3c6-08deb85e3896
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|366016|376014|18002099003|56012099003|6133799003;
X-Microsoft-Antispam-Message-Info:
	UotuBiD2yEV4Q3xNDBOQwFd981L8JOZjr4VHXbXmKV07iaYBt8vYcvflZCW5E9odTto3hhh7dh+UlVA5gyRJu8/dD86UF5OaVlBCYQCAyOV4kAcuspfWqarnHRz8tjcHwSdulpfwNsjv1yhC3u/sIZGxrTmGHcH6N/KMO94ba8Gu3FR+eJvAIITAx049huZXhkBmdeUEVoJMxJ+ijvGtt73SJ7wza1lbcPLmtk/tU88QKpTLBvMEtbJRTInIsBtS2ovSrHy8rr2etCKAcGdbGDz9ea6+TDK0RZDFm4yc6Ici6OLerPVFlX9xTzblTa0yJV7Y5vmM3CyK/zRj8SIj9FsX2Hd9+Lg2u7FK9H2cFK2QONj2MPdcgjmBNU3Qe+r35OkUsjhK8UoAvivJFaXC+4LW9ueI/UjBoYh4EZBon1S3tZ3tQ/M36U8bPrM2ohxxJ2zMZcnc8gSv6LU2DotW6HFwYBYyJYEgWIIUsdduFMp5fkLmQOqxVgncKcTJNj9v/x6w+4UUZyBdOcoGwcMh8mfId0BLeJK7b1ESb53QXvlHLLVa/MmQNhGsRzl1mcLZSkHHvAIzr1HWIV9ZZ0FGN6Ky6t3YVGRuwqoHEMG1hUbNpSlwOeHMx/o/LFk2gUqmSbyUQgVC64umflRwUi8MHB7qpJGmk16r/BTvBuv7UaIvg1agHnCQWZ+Yz+/7DjRdwIfU8em+blx58vP/YtyBig==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(56012099003)(6133799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?UjEzVWFEVTV2TCs5dW5PM3J6SmdvdVJ5dkhtUkVjd3FsdTdtTkYzN1U1RkFT?=
 =?utf-8?B?MzRYa1BIM2JtTkJSL2s2U1pQdlZOU0V3aE1ra1pQdmtWa1MxWnBPNmlKL1Yy?=
 =?utf-8?B?Uit5a01vSUE5cXhFWXdyQW16NW5tTmxPVTNjZWpOYmZDeTg1WnVXZVJoWHR0?=
 =?utf-8?B?VmlkLzRyNHQzdDVRelNnT3FDUkplNjU5clg3NTdSa2IyVm1BbS9vdWJKY1pF?=
 =?utf-8?B?OG5LQlhENDl2MGZ5ZWpqMlRQWWFrYU9oamhsRlE0SkVtcjZCbXowdWx0cmo3?=
 =?utf-8?B?bFJKYW9YVGhLV2tNNHhUWFdNbk9DMnVTNWEvSEpIRk0wWjlsWVNTbU5XdzJL?=
 =?utf-8?B?a3AxdmZaMnhaLzVyMEs1dStyOGFtR2ZhK3Z1RE1mNDB5c1F4QzhiSkJ2MTkz?=
 =?utf-8?B?bjEzUnNSaW5QbkFLRWs2UktlTXl2ZlR2Ui9jYjRvS2VINnZpWmI5eW1Cb3hl?=
 =?utf-8?B?Y2RQWXV6ZTM4QTJuSWNORmEydTFiRmdtQ0ZsRENZdWlCbDdLenFBTnArcFpK?=
 =?utf-8?B?VVNlOEJ3Z21nczgzeWM4WG5ZMktOTmF2eXlnNkpMMU02Uk16QlZvK2xUZEhj?=
 =?utf-8?B?ZGZKTFkwakNPbi9OZTlnQkhKdm1PK0lpUnFyRGs3WWxtV3Q1c2tNVWZQZmll?=
 =?utf-8?B?OTgzZ0Y2dDZUMEhYTk02M3czZFk0MTVpVkl1ODIrbUh5YmNxR2lqMHV3RjRj?=
 =?utf-8?B?cnNVb0d0eDN1Nys1elIvRWNxSG5PdjBpZENJTURnV0hTTjNmTHF3YXdINFk1?=
 =?utf-8?B?bGcxamdyY2FIaFh6K0dxOThwUzRWUmVTZmNoS3NYQUk5YkxhS003cE5IdVUr?=
 =?utf-8?B?OE9LR2M4VDEydm9NZ094NUI1MEE4Y2Z1SDNQS01NYkJiN1Fvc2ZROUNtemRj?=
 =?utf-8?B?VG9FSHM0enRpOU5yNW5HS1ZZVS9GV1ZDbHZoMm52R1dHdVE2NmxldXNjd3Vh?=
 =?utf-8?B?T0NCdjljcmJOZmNrZVduUmlhK1M5cEY3TWF3RjZ5bGdrTXBXTVdHVUYrZ3pp?=
 =?utf-8?B?NFhFT2dPYnU4U3IxSUlVRElIREs0OUltUnZweTg3NjBoOXdNSlVRL29mV28x?=
 =?utf-8?B?cGRpcXNXYXJ2QVl3ZGpBTE1OQkV2blZTQ0s5Q3haVEs5QjA0ZHpiRmZpMTB5?=
 =?utf-8?B?L0VnY0tzMitTMUxTZzdDQzE2SXdjUWhLODZSK3RUdVZ5aE84bGFBMUNHb003?=
 =?utf-8?B?cVRWWCtza1VrSmExaDIzTzZwbVM4ZDVXMEgrbTV6NGd4KzlXSlpaWitjTmd3?=
 =?utf-8?B?QTJBZW42THJlaEo0U05NNmt0WG01TG10VWlZSFJqaDY5cGxxQ3gveUFlZCs5?=
 =?utf-8?B?L0xhbzJUejhBV3NDckt6SUp0Smo4RzhTVHBsYWVjV2w3blgvVUV3cWQzNEd4?=
 =?utf-8?B?TFBnVTFlUDJEVGJ4bXlZL0FPd3l1ZC9TMXl6VVRDNGVWMXRvNVViT24ySnhr?=
 =?utf-8?B?M3VsRkpXeTVRKzhTRVdwV0ZEU0NwOFptK2I4Y1FUbU1BUi8xUXErWnN6VVlp?=
 =?utf-8?B?VEZ2bkJKUFd0TXFucWNTeTV6YjVSLzJOVE83dHZrNnRGTTgveHpUamNEdVho?=
 =?utf-8?B?K0pLcXREaW5MQjdQZkN4UTJLYzdFYmFJd2Z3R3dJUEc2bGFCVVNFN0Y3bnFn?=
 =?utf-8?B?cEh0eDJ4UjFtVFRzUnFxYVprT2NuV09nQlhKeGRyVEh5eUU0R1FZSlNzVm52?=
 =?utf-8?B?YU15dWV6L1BaYjF1QUI0UWRGeUNsTEI3WUllVjB3VXpLb0d2c1dkYXpUZEZ0?=
 =?utf-8?B?aCt4ZnpQNzc0ZHBnSTZ4SVRzcklWLzNzOXlEQ0ZrV0lwaE1yeHhHdzIyU2xL?=
 =?utf-8?B?L25BS3dnY2hWRTFwNVpsKzBSTkVXbWpveW15TlFRZSs2cVR5L2VhLy9YQmEx?=
 =?utf-8?B?dEhUQnUrMGFjYmV5bUtoYTF5YkRsMkdnOVByMGtyOS85VEExZVk1VWdscVZy?=
 =?utf-8?B?MUhQUU5MVUd1TnVJQnZvczNYZ2NQYmNmallVRkYwOWhSMmZvMWZIUnBJRS9i?=
 =?utf-8?B?MmpwODBPeGhPM0FCOGp0QnhEWTJ4TVV0NzdSY3ozamNFSll0eGVNbTZUR29X?=
 =?utf-8?B?N3A5UlVpMWs3ak9sRFRDU0Z5SmdUNHQyVDMrS2hKdTc4QjVXR2l2cXRJb3Z4?=
 =?utf-8?B?eTN4UTNKd2ZkT3lJL0VLQW9tTFQ3TXg2V2tPa3B0aGNIQW4xUWV1TTNMVjdo?=
 =?utf-8?B?SGsxUGlHQVkyVm1sV2R0UG91aVlNRlR6bmwyT2Jhc2xmWW55QWVCZE9yTXdm?=
 =?utf-8?B?a0xNeEdwUTJETUxDazNDZmpBejVFMkUrTzh6MFRZZEQrZ05McHEzdy91cmwy?=
 =?utf-8?B?TE5JY0pJZ0I0OUdUUVZpUUZmZndOc01icFpWNXl0L0dQbW5Za0hpbzJYUUp1?=
 =?utf-8?Q?GrPpYqjE6sqeAUJE=3D?=
X-Exchange-RoutingPolicyChecked:
	OWCZ3svV/g4Om8Ky0bHfXNBNgCKVw41d00bXfOeX2UfCWwVwvpB4KdAuqlU+sKakGFEq3X/sAM1CmZ7f9l0MzOcgiTIvHj0+v81QVLTvFEOAMnFVSg70bLfZng4IndPKdZSXlEAq7/NW0fLX5N7+WIbwMdROv7RNYYXLgK/lFlAbyMEjbtfBFvgTvBkyljPJ+5WkpWan1l4wqUp3rnOi3fZDBMUj1Ks5+JiQMBlLMrRDcA3+yidcQy+1b5rrk8DAPRra8VsaXYxfY5d9mGbvrTUmDD+tPQ7kx/COlErLhYCQQcYLvdxnTSMcTgv45MouUoKiJLylP8olTLIaes03Vg==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	Bf5arnJdc7KfG0NG90NH6P+Ztbo+Tprb3zjZPCaPh23HfXwNhPt0FXUHcON8/VmZpvLJNoTeScgvwgJk9sqYVNDnE1gDeLrRLa2tiT9c/YQTNy4Jzl0PA8yUz6wqz3gLCvWhf7OusPCfG2yXi2CB711ADqW+Q0I2/LFt01FwW405d6gnrZjVDaIvHI9l6W9K3ioSqL/06J3gMEiIa6Hx/qHhnFqDPnzA4ohrw8fsCP2t695iKFJojC9NCk9zSXtx4fMRZDNhTcO6d550scVnyVoqTydYQs5aCMJluA/vk/YqQ3+DZmRPnMOYTa9yk/w7ARBAggagZEsct4KjRuN8rdRV2h4XTh1V029cRQKhda/PQhvpODsgn8du/Pp540KDRZG1iuemj/0NAcC8KyAmCFxK4LKVpvMFXmOZnkpH9FxiFpNuelmNH1+phxBT7zQm5hgEyhz2HJHxZ6mNTsrK4Xnfsyjugs57Q+C1TsGvT5FnOIsVkst8OaXNAuQWoCwm09CN5Ud457IL3OIETN9cJDAj5LVsDRYa1o0ZEMD4KqeD+L94D2lNZdj6c1Al54GBe+riNMz1duDNwLnsW6oQqCjLmiDVT56K4zpcxov3qL8=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 677ebaae-5e12-4b28-b3c6-08deb85e3896
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2026 23:59:55.1294
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CSNqOew1mq0ghLB/fWLRJbFIekxHLxF7kYEwA3gWDR68RgG6xSNdQaX4R7b05xsVMgz+gGMIxveg5JBeaucB2z+jKxNibwFSqdk11Q3AsSI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR10MB4263
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-22_06,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 bulkscore=0 lowpriorityscore=0 adultscore=0 mlxscore=0 suspectscore=0
 spamscore=0 malwarescore=0 mlxlogscore=999 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.19.0-2605130000 definitions=main-2605220240
X-Authority-Analysis: v=2.4 cv=UOjt2ify c=1 sm=1 tr=0 ts=6a10edff cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=3I1J8UUJPc9JN9BFgKH3:22 a=cH6R9-kdAAAA:8
 a=wzaSFfARvCy-FPF3FCUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: Yql5HEVTJ0150G1368InoCDuoC60lxcS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIyMDI0MCBTYWx0ZWRfX5g4b++YBqsc3
 ukTlxV9qjmr5AyjNRa8Fc24S8EGxkdcnuoWfRkfX00IYqtM1jbHWJgHqHdSY5zb5pUruAhX/0J3
 OrLBNbf4Lf+YuHQIAN3gSqmY+/fHAfQr28dXhOMtLktnqpFZK5XsIm0YkAeQR5Niy0hK3ZJ+bK9
 eZf+PVooHtzFjmTLbgsMY4c/kWwOJVHqbHCrr0U13GWZzWG16ShWPuf3a+ojpqpEA6YT8cKRa41
 H0GfXPI8L0fxKo0Vr8k+qGM3UlZ4zZnPvzPwXq5kRr5X9OaJ5zimos9clJtOOp3mAMNBFHV9eJL
 o1tSb/ooLvY87qETTTxVoQ6j0G3PtGsfNLxxrf7zTKozVX8+jHuGCUR5zXflCS77LESQotWaPu5
 bqfZRzv1lFzLofg5BM10QKJ6PPFOdsUWyJxtGfy+d8g/FPfJ+qovd83bSmURkt5I4uCtBpVrrUT
 Rp6OM2eP9KvO4CMPFYw==
X-Proofpoint-GUID: Yql5HEVTJ0150G1368InoCDuoC60lxcS
Subject: [oss-security] HPLIP: Potential Escalation of Privilege and Arbitrary
 Code Execution

https://support.hp.com/us-en/document/ish_14942099-14942126-16/hpsbpi04118 warns:
> HP Linux Imaging and Printing Software – Potential Escalation of Privilege and
> Arbitrary Code Execution
> 
> Potential security vulnerabilities have been identified in the HP Linux Imaging
> and Printing Software. These potential vulnerabilities may allow escalation of
> privileges and/or arbitrary code execution via command injection or buffer
> overflow.
> 
> Severity:     Critical
> HP Reference: HPSBPI04118 Rev. 1
> Release date: May 20, 2026
> Last updated: May 20, 2026
> Category:     Print Software
> 
> Reported by Mohamed Lemine Ahmed Jidou (AegisSec) (CVE-2026-8631)
> and Aisle Research (CVE-2026-8632).
> 
> List of CVE IDs
> ---------------
> 
> CVE ID:   CVE-2026-8631
> CVSS:     9.3
> Severity: Critical
> Vector:   CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:H/VI:H/VA:H/SC:N/SI:N/SA:N
> 
> 
> CVE ID:   CVE-2026-8632
> CVSS:     8.5
> Severity: High
> Vector:   CVSS:4.0/AV:L/AC:L/AT:N/PR:L/UI:N/VC:H/VI:H/VA:H/SC:N/SI:N/SA:N
> 
> 
> Resolution
> ----------
> 
> HP has identified affected versions and the minimum software version that
> mitigates the potential vulnerabilities. See the affected product list below.
> 
> Newer software versions might become available, and the minimum versions listed
> below might become obsolete. If a link becomes invalid, check the HP Software
> and Drivers Support site to obtain the latest update for your product model.
> 
> HP recommends keeping your system up to date with the latest firmware and
> software.
> 
> Affected products
> -----------------
> 
> Product Name:    HP Linux Imaging and Printing
> Updated Version: 3.26.4
> Download Link:   https://developers.hp.com/hp-linux-imaging-and-printing/gethplip

