Received: (qmail 13447 invoked by uid 550); 30 Apr 2026 01:30:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13383 invoked from network); 30 Apr 2026 01:30:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=X1+qhmMYt2U/yVqdK6YjJ2xO4z6Ae7FAXP6/1B9T004=; b=
	geuKYGOBYP/unPA1Mqe9hMvqrbgLjx595XsuSwTHbKwFOe/9NyWsxa+rH8xeURFl
	mAl+krtPaUFdpHz0dJQVByxYaItSjeLKi2x3xxSTBaFWgwwiFImBvpQBqxdDgRG3
	EHNwKLsHxYRqlVdq3fAVf09QQbtIj75xYFoDvb75Ar2JX3B1LqG3IyGl1rtbR9cV
	zJ7ymdVVEuw4PTGLmj6AAPtr36gT+BpZVnmHbmoxiUu8GF3tV7rT/iBivVoP6CHv
	1mvGkvj0piOoWAHQeBRD4YjV6YGn6XsGFkxme6gjRXEE5gbSBOjQXdy3IFTIXTfl
	jwSGQH1GrVOOpF6QcEyppA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pbdHmRYDd0zDbVXsTs/Ln+J58Ne1t/L4ANVqm9KMsmKJsFzy8kyJqcBbKgrIXbF2qmOHZ9YO3+F3avjyCc1M2z+OXyYpGc8xsAUcQJh83/KMxNhWzlgNRe+9mFMLRUOAFGZBT6P3ZEEKY7qlBjpcjpmiMJ1/QdP4noI3JwXsgm4L63pfoAgzq7StG4yCnfFw43ssTb3h33ReRmTU9yKn1PwrSRNogy1K0UOeJfHdq8drvCjqrkvKGQWbT5l42IAAKltb/qIJ0nyhkFtppNtvnP+OnFce1KwgfYYB1YKSHPTo8+mX4No6m3V5g1UOg00X6rObfKc5/I2lrt8OcWsk8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X1+qhmMYt2U/yVqdK6YjJ2xO4z6Ae7FAXP6/1B9T004=;
 b=HOQ36S+t8fHcbrld7qmXH6pk9TbV8MWid2k83UjGiKBJD/RDl+aCOC0q6L0hJLzocENuM/8l1o+tXO+n9WYB8cqqeIeiDL3bOBtthj8Fwb+XWwAp8xf3anWJtRn+1ukUDPXrKtqIUg3lCGeKiApfAObv8lzocx7gl1pk7DpxvBIlI7lV7D/AkghfrJib6VWcVL6o5oWu1YXPMYNy3T+iUNWlP3VMV8/Go5CC/pHhF+P+J7xVZPtAABC8HK0TZvzmsrfqmetL4yc9OQMZ0I3+ee5B+z8bmr9EBbPPH8dj525a8YDKn9rt9b9MuuY/Evm6X2ivIrsEi8X2EelR2Yyxeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X1+qhmMYt2U/yVqdK6YjJ2xO4z6Ae7FAXP6/1B9T004=;
 b=zAUw9Nk6DczG+Nxp2IdmhHuOwej7zrqeW0mOeql3gM/Z1S2+yIZLTH+8L+eMegeuTQzGRayovz1s931Jkh5SQ0pNJJ/Aw7P37Vxz7062MAeKutUzA5KX/Acf7QiNQQB2VLAiUr4ZPAP9MlCtportRLyLCy1SCUUcWl5qOB+iaRE=
Message-ID: <59d96a43-d593-42d0-9f0e-a243280eea87@oracle.com>
Date: Wed, 29 Apr 2026 18:30:18 -0700
User-Agent: Mozilla Thunderbird
References: <CABMV8QOCFTQawMTzXVXie2s182nWgRYOMzp4kpOGWG_xGXctoA@mail.gmail.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Organization: Oracle Corporation
In-Reply-To: <CABMV8QOCFTQawMTzXVXie2s182nWgRYOMzp4kpOGWG_xGXctoA@mail.gmail.com>
X-Forwarded-Message-Id: <CABMV8QOCFTQawMTzXVXie2s182nWgRYOMzp4kpOGWG_xGXctoA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH2PR03CA0022.namprd03.prod.outlook.com
 (2603:10b6:610:59::32) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|CH3PR10MB6715:EE_
X-MS-Office365-Filtering-Correlation-Id: 2dad5ba7-d6f1-41e3-94d7-08dea6580aa7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|376014|1800799024|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	UjeI85N004s/7dDF5xUmrqCS+3SyeRP6Udhg5pguEs6Vab4Xb4O+C8jpRUwdAIhXJAku3U3gt637ueQPOaSPSyPolK+5wYXDQCAVycNYF1+ML3fyzb2NFJE/4WDS82zB4LKeuoCa9YytQjXAO2urALHbeed3M4Vmmn+alBU+GFrUhmKAbXDNltSWekgk51Ta1hueOrw7EWpk10zchk96kK0GmW9FDBTaUL2jhX5aatpPEXD0LWW9Q+Rz/hfiFFIvHW3s+B3mXYNug9gQQWIQQfeLzdO9eg5p9cmO2cJGvmzeoErr3C+xP/kovAQBnZ41qtWyZg2J5T+c0S/MzfHyjyK0gWIg5GicA1VoNfS05GkQODWr9bJk0BbNLUw5+Qayok/P2uz1HKUmbYAcc+y5eG86YYLghHKsNoT5PeBHxSWbmhKTc1EAc8eHMduFp/dyy57G8dh9qQeQzRsxjyXOXOd0zm4Zxg/WIf1IVLMQGGORE8Pv03rh9MdzjovJAtnmtW/B7ybnd72bVxq9OQ4hrxlDiElBwuCi/onEKGBurNzkmsCvQZZImQrNU8kOYt+4Mx5Jci7Y8MnHCyrn3qWgzP0s100WSINvqMrGUMUzFHRYrXhGxL281K4L70AzYM850S+rooUHf8f+0BGtlz93b5LhpPAbpxLAL5R/J7uPBkuGm2kL1g4YrSm8SbEXn6Ki
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?V2xjdHdwSC9zQ3J6SHRtS0lyWEM1L0hzSzJpQ1FtOGxGT21YL08vcThjaExB?=
 =?utf-8?B?cjRlY3Npa2tBYWU0enBpaU12M0V2bkZwY0ZYYnBvRUdSd2dHQTVLdi9udVZy?=
 =?utf-8?B?cVJMVXY0R254a2x3SUVSOW9GZUNmcWtvT3pOd0VHbVBVR1FhZXBwaUpSMGJx?=
 =?utf-8?B?Vi92ZlEwME93UGk2ZWU1V1hYU1hmSFl6eGxBYXF6R3dFbXFwYkVKaENrT09O?=
 =?utf-8?B?YW5aMkNvRGlmQ04yTWVLNitiaE9WR0g4QWxRWTBobkhyVDAwcGxFd2YvZkpC?=
 =?utf-8?B?U0dqWVdGcTZwQ0RVNVFTMld6NEJFN1YwQkt2Q2lxY1FHL3I1KzduRzZFSWNz?=
 =?utf-8?B?QWplM2FtVW1xS09weklBTzhaSG81RDgzbTJNNVpDdGlZaVFhV29KaHNUK2tt?=
 =?utf-8?B?dWJzQ21FeVJZLy9MRHlFUUlpczlvMUNYbVAzU0l6RUtyTElsVDhGR0tjaWZi?=
 =?utf-8?B?YU5EKzh1LzJyWjBLRmxSeW5UaU84aEFDUHJzSWN0OUFHdnJlaXJPRDVFa2FF?=
 =?utf-8?B?dG1yRVBPZHEwL1pmMGZ1OUZQQ2h1ZUJpOEVMZ3UyTU0zcUNDNGJ1TVBjd3hY?=
 =?utf-8?B?UHhFZmlnM1ZVb3dzTzUyU0FQcUxsK0hRRTFjYVJpTFA3aUJxdXQ5QlgySGxh?=
 =?utf-8?B?Q0xXMmNxWDVlOUtuanZ2VU1rS3ZSQlVyR0dlL1ViT1NET0liMEhFOWM4WHF4?=
 =?utf-8?B?YllKbkVreUtmSmNFU3RWbHpOL3MzKzlZS25kUTJ4R203Qmd0VURHb0NqRDJj?=
 =?utf-8?B?VEZqYVpiNEN6a1gvelZDdFJ5ZGVuTkgzU1dsUStRY2hleWFmc0R1NHlnSUxB?=
 =?utf-8?B?VXBBSmxtaC9yL0xFVHVMMTNYZnJ4SURKNi83VjZjVTB0UUtRREZhTFg1eEgw?=
 =?utf-8?B?RDB6UWRMTnRYeGlGcHQxQ3E0cXF5bUxZR1J4ejBmUkprWG0xcmQ5Y1RFOWZk?=
 =?utf-8?B?elpSTWlneTNTU08rSjFqajNGeDBxdDdOZVFvTXgraVl6ZTdiRVB6aGxXM2lm?=
 =?utf-8?B?RERZMXZVdjNBQ3N0ZjBueCt2TUZkNUI0OUdiZlkwRGdvdmZiVG4xWUdnUGxl?=
 =?utf-8?B?QjFTcjRKU3RvRlVYRGhNUkpRTGJ5QWhWQkFsZWRJdEM0eGsvK2VnV25sak5Z?=
 =?utf-8?B?MEJBeHk2b1FtSVNNdWo2VlBXVDdNTkYwNi9zcG0xSGdidE1vb2FTWVpLUXB2?=
 =?utf-8?B?eURzUXM2UVAwd2d4Yk53clhYQ1kwVzVLbmFidTVNaU1DNDl6SHdDMi9tUjJW?=
 =?utf-8?B?WCthbWZMR1dpaFNjdHVndTYwSCtqeFdxRjFpbDdUU1huQVhNZXg2R0lsbTRN?=
 =?utf-8?B?RUxtd1BJb2J5Z1daWGRPYnlFeTlPeDhhUUNPRTAwMEc1aG5PNTZBZkUzK1NM?=
 =?utf-8?B?SGNvcmpaZzdoektOV2RUa3IvQ2ZrKzQ3RmNCMVNzbSt3OGFBZi83UVRneThL?=
 =?utf-8?B?cUtYcHBkaTdIWThaM2twYTljM054R3ExcGJCUm16c1AvMVVJSjZHWk14SG0r?=
 =?utf-8?B?bDRMM3cyR2hNQ0dLQXRZVnRiTi83bHFibzVFdld4SDhzMjV1QUZQZk9Dalo5?=
 =?utf-8?B?SURNVkZSNDNMSXpmTXlqN2dvRTg0UG5aWFZwc3dkQXMrYmUyb2xWbzNxK2hV?=
 =?utf-8?B?Qk1yaEhKMDJ4ems0elQxOUdBbmdlVmZoMXRxYTdyQ3ZIdVpWTll6bTBIL2NL?=
 =?utf-8?B?eVhyUFowWDB5bEt3UEpmdjdXVFAvMnh4VUViUlh2Wm5zZ25XLzh4K0QzWC84?=
 =?utf-8?B?MVJoUlpUS0JaVlJhUkpPU1dXWU1yUHM2aXJrK1dkaEYwdXhKM2wrcEZLRGZH?=
 =?utf-8?B?dGN4dzZacG80UXpPUmtIS2t0QmtrQk1Kc0s3T0txb085RDNzb21NdEd2SytS?=
 =?utf-8?B?aEVpa3RaRzUwUUVtMVJ4bnBDU0lZeTcveDRoQ203NlBSRVVoZ3hIeG8weVRX?=
 =?utf-8?B?OGxnSU1MUWIxRkEzb0E3T1VGclNCenRwVEc2VFE0VWV0NEd2ckIvZWRScDl5?=
 =?utf-8?B?MmdFZFd1clNOdG02UkwxeU0ySXpmZTIybE0xVmJwRi9ObDRINU1UZEhsUlUz?=
 =?utf-8?B?SVp1TVo0Rkk4SGorVUNVOS8vU0JUM3hsSFNGaFRtU1BWTWFKNGNrd2MwZUxn?=
 =?utf-8?B?N1lodUZERmlDbkxkSDZHL043RHBZalBtV3FibitXQVpCcFgvTk9TWXRKYUU1?=
 =?utf-8?B?djlsaDF4dGZSZjB3RkVsSU15dVN4WUNWT3dNbHpkVFhZSmZ3dGFkSGM1TGN4?=
 =?utf-8?B?VklNRmU2UkRVdlVXZmxiWUwrZTFmeEhrTXpHQ3M4Mjg4UlF5cy80S1lVTUxI?=
 =?utf-8?B?RlgvTk1VYmp4MkNZQW96bUZIUC9DMDFUaFJIbXl3dkxidnk4dW1ZNzRObTkr?=
 =?utf-8?Q?AGGge+0IXX2ROkx4=3D?=
X-Exchange-RoutingPolicyChecked:
	F8Qa3aeDrZafvSKIvorYOmaL2ZeFti26e/nS+cRamJM8eIz83rxwapxp23axUT6mffmA0WvkPMXBK6B3DYAs58/XY45ybYx+Nlw/45tlrov2gI4fmB4J2wrQap9+9zjGRgUE2Ne4+RKL7bDzwEL05mDBWzfeUGFXCeUsNX7WGhibt/8U4h/6A/xC46YERsS5Rm2KTdQlO7q3MA0O98XyLB5bAc0Z4xQl+NlJTZS4vLPohzWC4O2q0ERETNEztaBO8aTjggTmGSCsdJ1rNPpUT/Ot0zr6yrpEGwRLsNhR/DkiqPerHZFhh4NUUL1MamWDU8pOLMPqS6DrTcSH8XqH0w==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	b+D2qzWeeJpx0obWTYNQ2PSP3lRH+QMQioZzbsLr6WmTD12oUO/0lKGXvw4BX78UEfmdvMroVvdptfByZrJZDAH/zKxOGW8poLmIEpg0IBSetPkZ/yfMYnzsgbpCJSXDSN+7F6eLEMZ/JudGIGVFFPbzwiZmKfaA5ym/fqmUxb1G/1td+RoRWs+kXz14ZqhRdX3TBnXzHtzimcklgx27qXXEe/vyNRx5aNKU3/Qqu0bHxkiyl1bjDarvdBdHHGyh36kCQ/XlC+8LwntUc+ohbgdJVUcbNtL1sjYCeuSYXZ/05Qa8DhbKs1L/vwZbxmlquD3pHNT5iXeKKApDHJcZKK7zs2ptKC7Dzli78azObEpfKdJs4UwkPpFi7aqvEq9emZViDo3Y4ZJm5jzDXmKTQ6ts1WMzKvL17t2QF9iiugtcRuJ1GnDRgM9StK+wrLzME03dS9Flz2L8bUXQNjjW7bePdL+P/10b1ZgfhCVlm+9uGn5UrqVFFSVhkKuH2+Tn/Qz1cDcLZ1sxBfOEusGCKvip8BOxNWdCwDQXvs5+oaHzkWCN36db3sMP49aCZqVlEPhqi0RH2wI7tLfTEkuM9Tt98yjMvwyDez0tdrRbdtY=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2dad5ba7-d6f1-41e3-94d7-08dea6580aa7
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Apr 2026 01:30:20.2724
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cjBB8E9CtL8k6I2qjSSTV/EioDYlbhflumnbLQes9Yvowqd5GUZfOHNYz9JC7MBASF87V9MaLc7hgWpjWZb9Luyrg8lXi7xU/YE5C4oLvG4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR10MB6715
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-29_02,2026-04-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 mlxlogscore=999 bulkscore=0 suspectscore=0 lowpriorityscore=0 malwarescore=0
 spamscore=0 mlxscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2604200000 definitions=main-2604300012
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDMwMDAxMiBTYWx0ZWRfXyLM2dI8E6c6V
 IywM72A3xx5ziB/Or+NZ2/TXFuYkqmt1lU2yvKEtNa+dwpAf19G97woQ3koYY+MkBS7TgRrsKUQ
 NKky442Ahfy7yxwmS0FgQ7CPpgZkWg4StuCPU74VJ2yMboXb16UJJCNGO1sLzw+QqBoAP5V0j/n
 GqBRIIcbFWUoBtL2vAf60pTBTe35g3AjWITq+4FWCmvLh3mljSyLyPFIf0tctOLQ4hUUaPPsn/J
 q7blQ2itp7l7J5XSY9DScTzvhoNfyq8AQ8+9Agpwk22SGE8HjcyxmRj8XIXYXdss6BkNEq0y5TQ
 gYB7MO6BtWzLHgMiAh/ykDOsKcIHht38CHkiYbc0kxKbwEshnlDOpOE6ci+d/K+Jck+E6rmuXdV
 Cl8c8DpxQQWs95UvJ6UwkoPh5Ya13JHfZlehuqQUzZzhnyNw5MOw7PMDjYsnHVcazu8j35+TXwJ
 Ka9IF2Kiq0W8F9yt3VzZ+OLwovErYXdnBNVoRWlk=
X-Proofpoint-ORIG-GUID: JPPetvTn_nXbTjBeCkY8HBI2c_ffjTOD
X-Proofpoint-GUID: JPPetvTn_nXbTjBeCkY8HBI2c_ffjTOD
X-Authority-Analysis: v=2.4 cv=E7v9Y6dl c=1 sm=1 tr=0 ts=69f2b0b2 b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=7Gl3-_t3PgB9XO-mQDs3:22 a=GwUem0DFAAAA:8
 a=gHvrztcjAAAA:8 a=20KFwNOVAAAA:8 a=mDV3o1hIAAAA:8 a=Dia8y3fLAAAA:8
 a=Nv_S3xWATVoszd15idcA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=r0dl5i_q2XGqDZkti5dn:22 a=WxcTniOcZjVTbgxX5Dew:22 a=IMfw9F9M6FCgz0T8TPkg:22
 cc=ntf awl=host:13844
Subject: [oss-security] gnutls 3.8.13 released with 12 CVE fixes and more




-------- Forwarded Message --------
Subject: gnutls 3.8.13
Date: Wed, 29 Apr 2026 12:36:47 -0500
From: Alexander Sosedkin <asosedkin@redhat.com>
To: gnutls-help@lists.gnutls.org
CC: info-gnu@gnu.org

Hello,

We have just released gnutls-3.8.13. This is a bug fix, security and
enhancement release on the 3.8.x branch.

We would like to thank everyone who contributed in this release:
Alexander Sosedkin, Daiki Ueno, David Dudas, Ghadi Elie Rahme,
Guillaume Gardet, Joachim Vandersmissen, Joshua Rogers, Romain Tartière,
Ross Burton, Rudi Heitbaum, Sam James, Zoltán Fridrich.


The detailed list of changes follows:

* Version 3.8.13 (released 2026-04-29)

** libgnutls: Add more checks to DTLS reassembly
    Previously, gnutls didn't check that DTLS fragments claimed
    a consistent message_length value.
    Additionally, a crucial array size check was missing,
    enabling an attacker to cause a heap overwrite.
    Reject fragments with mismatching length and add a missing boundary check.
    Independently reported by
    Haruto Kimura (Stella), Oscar Reparaz and Zou Dikai.
    [GNUTLS-SA-2026-04-29-1, CVSS: high] [CVE-2026-33846]

** libgnutls: Fix qsort comparator in DTLS reassembly
    The comparator function used for ordering DTLS packets
    by sequence numbers did not follow qsort comparator contracts
    in case of packets with duplicate sequence numbers,
    which could lead to unstable ordering or undefined behaviour.
    Return 0 in such cases makes the sorting stable.
    Additionally, discard packets with same sequence numbers
    and differing handshake type,
    so that they don't end up being sorted in the first place.
    Reported by Joshua Rogers of AISLE Research Team.
    [GNUTLS-SA-2026-04-29-2, CVSS: high] [CVE-2026-42009]

** libgnutls: Fix crashing on an underflow with a DTLS datagram
    A remotely triggerable underflow in the DTLS reassembly code led to
    a heap overrun.
    Prevent the underflow from happening.
    Reported by Joshua Rogers of AISLE Research Team.
    [GNUTLS-SA-2026-04-29-3, CVSS: high] [CVE-2026-33845]

** libgnutls: Fix RSA-PSK identity truncation
    Servers configured with RSA-PSK have wrongfully matched usernames with NUL
    character in them to ones truncated to NUL character,
    which could lead to an authentication bypass.
    Fix the check to perform comparison up to the full username length.
    Reported by Joshua Rogers of AISLE Research Team.
    [GNUTLS-SA-2026-04-29-4, CVSS: high] [CVE-2026-42010]

** libgnutls: Fix case-sensitivity of domain name comparison in name constraints
    Domain name comparison during name constraints processing
    was case-sensitive, violating RFC 5280 section 7.2.
    For excluded name constraints, this could lead to
    incorrectly accepting domain names that should've been rejected.
    DNS name comparison and the domain part of email names
    now perform case-insensitive comparison.
    Independently reported by Oleh Konko (1seal) and
    Joshua Rogers of AISLE Research Team.
    [GNUTLS-SA-2026-04-29-5, CVSS: high] [CVE-2026-3833]

** libgnutls: Fix intersecting empty constraints
    Permitted name constraints were wrongfully ignored
    when prior CAs only had excluded name constraints,
    resulting in a name constraint bypass.
    Reported by Haruto Kimura (Stella).
    [GNUTLS-SA-2026-04-29-6, CVSS: medium] [CVE-2026-42011]

** libgnutls: Suppress CN fallback in presence of URI and SRV SAN
    Certificates containing URI or SRV Subject Alternative Names
    no longer fall back to checking DNS hostnames against Common Name
    to avoid potential misuse of such certificates
    beyond their original purpose.
    Reported by Oleh Konko (1seal).
    [GNUTLS-SA-2026-04-27-7, CVSS: medium] [CVE-2026-42012]

** libgnutls: Suppress CN fallback for oversized SAN
    Validation of certificates with oversized Subject Alternative Names
    no longer falls back to checking DNS hostnames against Common Name.
    Independently reported by Haruto Kimura (Stella) and
    Joshua Rogers of AISLE Research Team.
    [GNUTLS-SA-2026-04-27-8, CVSS: medium] [CVE-2026-42013]

** libgnutls: Fix use-after-free in gnutls_pkcs11_token_set_pin
    Changing the Security Officer PIN with gnutls_pkcs11_token_set_pin()
    with oldpin == NULL for a token lacking a protected authentication path
    led to a use-after-free.
    Reported by Luigino Camastra and Joshua Rogers of AISLE Research Team.
    [GNUTLS-SA-2026-04-29-9, CVSS: medium] [CVE-2026-42014]

** libgnutls: Fix overread in RSA key exchange with PKCS#11 keys
    For a server using an RSA key backed by a PKCS#11 token,
    a client sending an extremely short premaster secret
    during an RSA key exchange could trigger a short heap overread.
    Reported by Joshua Rogers of AISLE Research Team.
    [GNUTLS-SA-2026-04-29-10, CVSS: medium] [CVE-2026-5260]

** libgnutls: Fix off-by-one in PKCS#12 bag element bounds check
    Appending to a PKCS#12 bag that already contained 32 elements
    could write past the bag's internal array.
    Reported by Zou Dikai.
    [GNUTLS-SA-2026-04-29-11, CVSS: low] [CVE-2026-42015]

** libgnutls: Fix multi-entry OCSP response revocation bypass
    When validating a certificate against a multi-entry OCSP response,
    the revocation status was always checked for the first entry
    instead of the entry matching the certificate,
    which could lead to accepting revoked certificates.
    Independently reported by Oleh Konko (1seal) and
    Joshua Rogers of AISLE Research Team.
    [GNUTLS-SA-2026-04-29-12, CVSS: low] [CVE-2026-3832]

** libgnutls: Fix timing side-channel in PKCS#7 padding removal
    The PKCS#7 padding check performed during decryption was not constant-time,
    potentially leaking information about the padding bytes
    through timing differences.
    Rewritten to remove padding in a branch-free manner.
    Reported by Doria Tang of Stony Brook University.
    [GNUTLS-SA-2026-04-29-13, CVSS: low] [CVE-2026-5419]

** libgnutls: Fix PSK username comparison during rehandshake
    Rehandshaking to a username with embedded NUL character could theoretically
    allow bypassing the GNUTLS_ALLOW_ID_CHANGE protection (#1808).
    Reported and fixed by Joshua Rogers of AISLE Research Team.

** libgnutls: Fix OID length check for OCSP delegated signer EKU
    The OCSP signing EKU OID was compared without verifying its length,
    allowing a shorter OID that shares the same prefix to match.
    The check now verifies the length as well (#1810).
    Reported by Joshua Rogers of AISLE Research Team.

** libgnutls: Fix AES keys persisting with pkcs11-provider
    When using the pkcs11-provider, AES keys used for cipher operations
    were created as persistent objects and accumulating.
    They are now ephemeral (#1813).

** libgnutls: Fix missing RSA key coprimality check in verify_params
    gnutls_privkey_verify_params overlooked the scenario of p and q
    not being co-prime.
    It now returns GNUTLS_E_PK_INVALID_PRIVKEY in this case (#1818).
    Reported by Kamil Frankowicz.

** libgnutls: Fix overread when parsing OpenSSL PEM private keys
    Insufficient bounds checking on the PEM header length could lead
    to short heap overreads on specially crafted inputs (#1854).
    Independently reported by Kamil Frankowicz and
    Joshua Rogers of AISLE Research Team.

** libgnutls: Fix a theoretical double-free during certificate import
    If gnutls_x509_crt_list_import_pkcs11 failed partway through,
    the trust list cleanup code would try to free already-deinitialized
    certificate entries, leading to a double-free (#1819).
    Reported by Joshua Rogers of AISLE Research Team.

** libgnutls: Fix heap overread in SCT extension parser
    The list-length validation didn't account for the 2-byte length field,
    allowing a specially crafted SCT extension to cause
    a 2-byte overread past the buffer (#1822).
    Reported by Joshua Rogers of AISLE Research Team.

** libgnutls: Zeroize shared secret derived during hybrid key exchange
    The derived shared secret was not zeroized before being freed (#1841).
    Reported by liyue.

** build: Support building with Nettle 4.0
    Nettle 4.0 was released in Feburary 2026, with API incompatibile
    changes from 3.10. The library can now compile with it, while
    Nettle 3.10 is still supported (#1791).

** libgnutls: Support deriving ML-DSA public key from an expanded private key
    RFC 9881 defines 3 private key formats for ML-DSA: "seed",
    "expandedKey" and both. It is now possible to derive a public key
    from a private key in the "expandedKey" format (#1723).

** libgnutls: Fix loading BIT STRING encoded EdDSA key from PKCS#11
    For compatibility reasons, the library supports two formats for
    EdDSA private keys: either ASN.1 BIT STRING (raw) or OCTET STRING
    (DER). Previously, loading a private key in the former format
    resulted in a failure, which is now fixed (#1749).

** libgnutls: HPKE (RFC 9180) is now supported as a technology preview
    The Hybrid Public Key Encryption (HPKE) is a flexible cryptographic
    protocol which enables to encrypt arbitrary data to a recipient, by
    combining key encapsulation mechanism (KEM) and authenticated
    encryption with additional data (AEAD). GnuTLS now includes the
    implementation contributed by David Dudas. Given this is a
    technology preview, the implementation and the API might suffer
    modification in the following period. Use --enable-hpke to turn on
    this feature (#1506).

** libgnutls: Fix TLS 1.3 client certificate selection
    For servers that send a signature_algorithms extension in CertificateRequest
    with new rsa_pss_rsae_* algorithms and without the legacy rsa_pkcs1_* ones,
    the client now properly considers RSA when selecting a certificate to send.
    This fixes TLS 1.3 interoperability with newer Java servers
    when using client certificates.
    Contributed by Romain Tartière (#1842).

** libgnutls: Fix kTLS ChaCha20-Poly1305 IV for TLS 1.2
    When using kTLS with ChaCha20-Poly1305 under TLS 1.2,
    an incorrect value was passed as the IV to the kernel,
    causing connections to fail early.

** libgnutls: Allow fetching object type metadata for PKCS#11 keys
    A new library function, gnutls_pkcs11_obj_get_pk_algorithm,
    has been added to check the public key algorithms of PKCS#11 key objects.
    Object types other than CKO_PRIVATE_KEY are currently not supported.
    Contributed by Ghadi Elie Rahme (!2074).

** API and ABI modifications:
gnutls_hpke_kem_t: New enum
gnutls_hpke_kdf_t: New enum
gnutls_hpke_aead_t: New enum
gnutls_hpke_mode_t: New enum
gnutls_hpke_role_t: New enum
gnutls_hpke_context_st: New context structure
gnutls_hpke_init: New function
gnutls_hpke_deinit: New function
gnutls_hpke_encap: New function
gnutls_hpke_seal: New function
gnutls_hpke_decap: New function
gnutls_hpke_open: New function
gnutls_hpke_derive_keypair: New function
gnutls_hpke_export: New function
gnutls_pkcs11_obj_get_pk_algorithm: New function


Getting the Software
================

GnuTLS may be downloaded directly from
https://www.gnupg.org/ftp/gcrypt/
A list of GnuTLS mirrors can be found at
http://www.gnutls.org/download.html

Here are the XZ compressed sources:
https://www.gnupg.org/ftp/gcrypt/gnutls/v3.8/gnutls-3.8.13.tar.xz

Here are OpenPGP detached signatures signed using keys:
5D46CB0F763405A7053556F47A75A648B3F9220C
and
E987AB7F7E89667776D05B3BB0E9DD20B29F1432
https://www.gnupg.org/ftp/gcrypt/gnutls/v3.8/gnutls-3.8.13.tar.xz.sig

Note that it has been signed with the following openpgp keys:

pub   ed25519 2021-12-23 [SC] [expires: 2027-01-01]
       5D46CB0F763405A7053556F47A75A648B3F9220C
uid           [ultimate] Zoltan Fridrich <zfridric@redhat.com>
sub   cv25519 2021-12-23 [E] [expires: 2027-01-01]

pub   rsa4096 2016-09-27 [SC]
       E987AB7F7E89667776D05B3BB0E9DD20B29F1432
uid           [ultimate] Alexander Sosedkin <monk@unboiled.info>
sub   rsa4096 2016-09-27 [E]
sub   rsa4096 2016-09-27 [S]


Regards,
Alexander Sosedkin

