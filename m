Received: (qmail 7761 invoked by uid 550); 3 Jun 2026 19:24:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7702 invoked from network); 3 Jun 2026 19:24:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=di1xCNWh1pgTMjiq
	6EbxHUnSib6ak10I1WbVYoBW+kk=; b=GuZqX3WWk5QhlL/jP8eB5ARZx2RKotfk
	G8YrY1uyfigt0zoYCO5C+HIvWAKmZ0LVG5b8kIDeulAtFYJbkDO5gZFukZUM2il6
	8s0sDmoDgXu3Dooufq11QSBvlxgOtBEQjBM3d+4OonqNhGAdmSF2MbRxnmYL3B9M
	bJjwuT6XB90gWLgCblFHWBlQDkI5Dhj3Ejoti9bcN5nHPKkHthhvb3Og/18CWGVf
	WnKmJgXeux6SaV/4E8TgGQOQScDpEulx5r0o47SL54imJMrLZAhUmpBLntrgJgZA
	mbwwJ4UBG+P4+rOh7u7PCiRUwz6Ufk3bCr6ZOAa2sQkltMZXIaTrfw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W7ryyuHg/aMNzg4MVxMbab0qJy7ABh3KeNAsGGlaB+E25zH/ytiZiZx5rT6kviLxjc5FUiAxejLt86jtDgcxZ1ZqVCpg+43R3ojOvMC4TSilV09PabZWnlChLw118L35s1stYBh5PqD46QkvLWgshSbXvURSqifVJVQJMXU5+r76SRGb3KsN9E+mM71iLXFh5t7BZh4pjoikPRMagJamCuaFyb074k3TPuPee+da8Xy4vJS0POX/7+DZReqZHwCiN3H2q/kRcZX0MwuUYYMmyDNjwBm7LENClprLCl4vX7ZWauf+cVZcFTTneUI4WLTJu/aZ0wMnZi84exwxcF1h5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=di1xCNWh1pgTMjiq6EbxHUnSib6ak10I1WbVYoBW+kk=;
 b=pwJCuG5I75ebcc7wBf4ElaQa9D2+b3PfvqwSP+KiSCn7sL9yQZdOEH0IX5WQgrkMI6pt/ccm3bCfUvsPXbHBxW4uxlFHHzGhMi7amTvjxsx7YwflUlTKpYHhQsrTnVIpHXwdRTfD6wSQ8btQCfakzBSgrBRqzLaa9FxKxaDGGRy2Wk+epPtZjzOkM1m7rEGNrcvTuCRQLAGDtlVpJMQBRrAoAvwMDmkzzvVlt9SyQzOoMcFHGOHLUTI1uREU8MalsUX1mHD1j1ar5S8ChyAYjQT89IO8Gnlab2JMVH7bWC74nxIJb7w1k0yY4qq510PvIkCzz7vCJ7XcpkZdFKksew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=di1xCNWh1pgTMjiq6EbxHUnSib6ak10I1WbVYoBW+kk=;
 b=LhkKdbpzpcCz0bHGbvFAX2vExJSieDRRKv0HhdBS3sMu/apSggiZZhHVej4D7Za0VDU4S1LiSTwetZEx/XhUxlUwULGun6Au4KV9yCc74gxYpwlcMT+neIFQs9H+AZYbuc9tJVQFB71VPoD7NG3+xUpkGy+OgL9E888v8/bdV2I=
Message-ID: <50aaff09-7d4b-4bb9-973a-281be4361896@oracle.com>
Date: Wed, 3 Jun 2026 12:24:24 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PH8P221CA0042.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:510:346::15) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|SA6PR10MB8159:EE_
X-MS-Office365-Filtering-Correlation-Id: de713124-b0db-4f89-79d4-08dec1a5ba0d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|366016|376014|6133799003|3023799007|18002099003|56012099006;
X-Microsoft-Antispam-Message-Info:
	wEZvCFhi3q2YWYutlzAFPp9Z7Xq5jDhlaSM15pOIDgSVUvDt7qa2LqZeaKhhrRboroplrxkpiJ0Mo2EiE+p5t1ZYerBQc64A3OPsG7RcQXdPBDQd4g0sTQzti0S2QYkXmks+QQ3FlRzlVTv39QM9vpTBjkKAtLPJEbyznsOFRijHh+bxVcrSCPn441x8tcCf3DvKzn63M8ma76eql0fLzID6WhNjqzZd3hKsZ8oQy9l4At4gLuCa/DBCfE/05ncxiLEGbc5iIeZRy2WxIpSV9t+hYo/Jy63gNTBCCC1OfBNvvCGztFrJ8pnEoYdrByg0mFQX00HwvOs1rCeFGcwevp6rMS4gH3j/bNM/7Z6XiCOu6bmobp82ZnPs22WV5frR/scOm54lFhkes/zoByE4LQimRgUtmSb10qdI+ks5pqL83h80eu4+oRheYopCxj8zJTfHcQZA0wM3v6bGWnzqdKyVt/x2TJDynzflyx/FJd13YmEqu4hHVtF4fZ7VQ72dZaLHP88wyPfTeu1gp/+bc2/s+oGArFlIVupPUSxljjvB2y5LwTGwwTtV/n9yhOT3E2+UFOFPie3G4OkS3svCRx6C5ZNdfXNB91UDES3N1QXpE8JgUWtYYv8LHsvMcjFwDV01JBTSx5U/xMqSMhKQsw==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(6133799003)(3023799007)(18002099003)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?cDNKYnZKMktyUFNETjBvaHh5Wkd1dWFDM3hsZGlBeGpPN1pIMFdGNFAreU5k?=
 =?utf-8?B?OUs0d0lkbm9ZL1NNbUx5bjZ0Tmt3QlFLWEVRNDBOakpSdWF0ZUN3dVBqSmps?=
 =?utf-8?B?K1JhM2JkY3JsMGxiVitVQ2RiSXBuMXQxbDAxczM0RmlhWW1La2IyWXlObVpV?=
 =?utf-8?B?Z0pJTnVPSEpGTHQvRFRhallySExnenR3NEFjeG9oT29vaEdHcFc5UVp6MExk?=
 =?utf-8?B?OTJVTC9YUkVtNEVteERVbXBpdmtNL0RrNmN5K1hJbnpGcWRMb01CRWFKdmt4?=
 =?utf-8?B?V0RycXJBV0JrcTF4MlhaZEp3T2NhV3gyUGRsdjB6S3pjZjNjWDhrQWhOWTJO?=
 =?utf-8?B?R3NKRnZZUkVLc0thSGxZN3JVNTFjUmk5VXhCWjd5RG1zcDZJQTdlUks4NDlJ?=
 =?utf-8?B?R0xrNVhDZGU3SmdyMHo3dENGTkZTSmpBNy9GMTdiRE9mOUNvZUVRekQzd1c0?=
 =?utf-8?B?OUcrbGFHaEh1RXNXbUVVZk1CWFhHMldPZTk0N2Zkblo5OG9KK1hNTmRIQzJ5?=
 =?utf-8?B?djNrbmdHeittTVdUcmNaTHhoeEtGWkRUcnF0UUNPTmdwRk1JSWtZUWJvT0Jy?=
 =?utf-8?B?ekdzTXM2dzNrRGZzQkRiVzdrNm9MQkwvS296Y0J5NjE1VFRqUi82ekNFSGZQ?=
 =?utf-8?B?MFdhYUt0ano4Qng5ZThMZ3Z3MkFYUll5U2JvZkp3Q2M1dC8yR1d0MDVtaTh2?=
 =?utf-8?B?VEVmL3pkeXJSejBJdE9rUUQ5aDFlMDJXK21nV3J0OWU1bGJZemF3MS9nVElQ?=
 =?utf-8?B?REV5V25NMDVjS05DbWpOV2JVSjMwOUhtY1FESWZOWXpDbnJ0dm1QVlBkamVY?=
 =?utf-8?B?byt4STBBanB0N1doc3hibTZwRzUreVlwZFdyMEE3cS82eFhNU1lSbTZTOVdp?=
 =?utf-8?B?SFFxa2pML0hPRTRqZjBPNzZZdkpiZU9sZ012YnZUYzBNeW13cVNORWpTeitR?=
 =?utf-8?B?bUgySE5nT25XT2xsWm5WU2dZOFZLMVd4c29UY3dyaGV2YWVFVXE0Zk8xdDdy?=
 =?utf-8?B?S2JrL0tEUHhjZDBQekQ3TkF6c2F1TFRYeTU4S1VvY2F5QmxZZUxmbld0NUNQ?=
 =?utf-8?B?MEd2K1cySVFQRXREMmwrM1lZMFpHTHRMM3FSTnhCZ0gyZ0tGWE1xSWFlZ1Y2?=
 =?utf-8?B?YkcrUHR5cEhiUlkraEVXUWxYWkN0YWE0UGxZRE1OU21sV2tQdmRrenFWZFpM?=
 =?utf-8?B?MlBsZHE4QjFGUVNHMDh5VzNSWUxnRHFXZEo1Y0FxMHJMblkxaDlkYTlwWUhH?=
 =?utf-8?B?NVExZTF4WHYyd0k0M3I5LzYwMU1sb2o2WUdOWnNmY2QzbzF5ZW9DUE9rSFZm?=
 =?utf-8?B?MHByOTV6ajk4Wi9LSWpPM1h2dy82RFZOVSs1dG9YelgwZUZXVlBZTkQ1OUZD?=
 =?utf-8?B?c3JSRXFmeEpERTNRSHkxS0NicC9rYllxOGVRWGJveFlKU1pCRGlwMU1TQjlo?=
 =?utf-8?B?akxqK2draXNtM0YwSXdSajdCeDBYTzZsMER0Nk5hV1dVOGh3MG03aEFQY2FZ?=
 =?utf-8?B?MkxETEl5enhHR0xvRGtHVS9FY1hhd01NWWVLeEJDKzV2ZUxzS1hucnpuMFR3?=
 =?utf-8?B?R1haZ2g3UnltR204TXQ5a0VmL0NpM1M2eUxxaDdhKzdIOE1sTml6cWl4ZEpO?=
 =?utf-8?B?ZmNacTByNlUyZTNNVG4rbWt6dXV4MmxRRHB2dGtyZmtEVktPZ1dVMXdRQlV1?=
 =?utf-8?B?dFE5VW16Y3M4alNPY0t5eEJqZGFUMDZhZjVWU0FLcmRSWlJCVVR5SkVQcnB1?=
 =?utf-8?B?MG1QM1Zyc0NFcUcwV2doLzB0eWhLdEtZYnhOMFJFc0xFNE5xS0ljTkNTeFcv?=
 =?utf-8?B?bGkwaTdYUDNtRjdMRTVRdE9CZXBzWXBxR0h1dGJqVlk1cUtvdHpCcWVKZjNB?=
 =?utf-8?B?c2Frc2F6aDNhYUtqc0dDUXB2VU9OZENJUHhVNEdOQ3FIbWFmMHVrd3JudGxv?=
 =?utf-8?B?UjNYVE5IRmxCWVZjd2QrVnZ2L2M0dVVqWEd1VnlkanplM0hmQi8zVnBBNysr?=
 =?utf-8?B?MUVVaXNFdUxnMlUyMVdPcU9sa0dld20wTzVXeU42dmN1eVg0RGNiTVBaQzR3?=
 =?utf-8?B?MDFHbkgyUVRIK2lGR1kzMFM0eEFVQURNS3NqSzNRK0x0eEQvSFpMQlZWZXZZ?=
 =?utf-8?B?cmpsakh3b2hJeDFPNjVhRlFwdDVibVp5UmhibStXblN1RVVXbDFON0pSenE4?=
 =?utf-8?B?aWx3SDZvZ2tOOVo2VWZPMzg4UlpCZVdDWXowR3FUd1hqblI1T2trNlJERjBm?=
 =?utf-8?B?TXVsSzVSR2txSVJ1dzJWRFBPSHZsTEQyYnV0cnNNek1CZ2lNRDJGSWozU0pH?=
 =?utf-8?B?S3Z1OHlnSThYeFBSanUrVEkwSkloY1JvUS9JOFhNK21lRTdhR0lzNFRmQlBo?=
 =?utf-8?Q?B7o/h9pS/Kv4bUYw=3D?=
X-Exchange-RoutingPolicyChecked:
	aPQ9NCQgeWq2LOBvnaW2P3NhieoqvyDH2Xb4RNu/aPQypRWe/qfAWqXuOj3lAuA2c11Pe3zsT9tNI3jyUqXAq6b/HyEaQV/eztPgLFz6OPTL5U5ldWktuED1c5SzP/R9oA/ycmE2LfTefu0YqtZspBefpdpBqqeVnvuMQxLh1vY0qs7EfG6bhNYsSsrJhn4RYbvPXbqgUnIsOfle6AVb0ZkhpHCOqvGcEMptvFGfB4T2R3NsIPXk1OqbrKMLCg/LLC57osjaU104LOUH3jamryO2NkBUd9jwfd08b1xIRBXtxeUEWxyWX5p5S/6DLpu6pVtrCImFiUnCsmYIGyGQ1w==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	dvhGWhpiMrLukaQ6xQjydYqkseEB5Rj9jCj1GOlh4gHNmyQ4ABbxSu4DHFq7LNW7Z1/JVn/tqHiikXD3BqRyq5diMk9PNsmJV/MTN0H/Lnvv2lgBNLgLhfyNVON8OjyskZiPoGi6TyvceySdQn1RWLXCL3JD2S+NncF6Oh5/UDU2d+iZA3L9enn7c3hUl4IYY9jVyd9PedixZltytopqPhmHJHXV3gTIPIR1sZIgP0kV7xJ2CV8QBdh4ApoDYvKrdAYhB0ZCM+TNBB//QcWOCU2h88X0FLyyPha2ioXhOZ/gTQeJ/uH5ptIXyHvG4BAVEYe4Cuej/3Ss1a7uWV8tNYFM1XrnaN6BrhHIW+PMBaxJmWB9uQ/pUeS0MqJA323/uwkACauk/38WC/ti/JumVaaDKjPaneqn13BUm6YLEOAnTTRdEd+oRrNUnASo6XWsEmhjPOEnFb+bw+CL/TJDxNwY3cFAu6dNjysVooWKJMhxTTkBgkfOmgADtYLP4pBsQJWWF4RTUbZKr9NQnHWbredUHiqwAOd4XNHacJjUuzudYP7zPRbJWCYx9uqVrwLm0r1FbL5VLIBJV5ZRghwTcbnffPkg0QjWm2MUqoJE9Ms=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de713124-b0db-4f89-79d4-08dec1a5ba0d
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2026 19:24:27.0696
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BZsDo7nD9ZQwynjElWiwlny7tHkgdEl/NrolUSXmBkdqSX573vlvnAGHY0u2+cssap6pZtvnSaRRmaq1gfZmjfqy50F3wNluf3gGdMWrzoY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA6PR10MB8159
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-03_05,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 mlxscore=0 malwarescore=0 bulkscore=0 spamscore=0 adultscore=0 suspectscore=0
 lowpriorityscore=0 phishscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2605130000 definitions=main-2606030188
X-Authority-Analysis: v=2.4 cv=NLnlPU6g c=1 sm=1 tr=0 ts=6a207f6f b=1 cx=c_pps
 a=zPCbziy225d3KhSqZt3L1A==:117 a=zPCbziy225d3KhSqZt3L1A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=FelO9ux0wxsA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=3I1J8UUJPc9JN9BFgKH3:22 a=7UKGVgRVAAAA:8
 a=Wwlq2TXfAAAA:8 a=yPCof4ZbAAAA:8 a=_SZGuTxQV0YwuwoJzX4A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=8Ox4Rr8FuIIqx5qz5MW0:22 a=bxB7pMeBB7WE3AWmYlY3:22
 a=5yU3S35YU4bGjq-dph-N:22 a=Bho9c0fBagfJEIQBS7DQ:22 cc=ntf awl=host:12302
X-Proofpoint-GUID: HeiFpTFSRvK--9lYPnSsv-5y657xp3F1
X-Proofpoint-ORIG-GUID: HeiFpTFSRvK--9lYPnSsv-5y657xp3F1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAzMDE4OCBTYWx0ZWRfX6/7DxuqDyhfp
 SLBpC+CAfOXhs67TcYaJT4/vboj3SEkQXnE/+UK04c/jgcwlsjTKmAYSSSDy8j5qETmmuyNgHaY
 1AuuAXoXpnVe0vamDZ5G0nJfzPe425eFn3cwah2mQtapLoqZYW+2CSePpYyEV+A1YVHLG5J+zuZ
 OI//YpbmQ5oUaMSmLTXva0WYZTfU2DY+vFnhK+vjEyn5rbzWccYrL3MUsqHYIQS5qR/2qjaSF0s
 0x5TpDeXWEAHhlJXHFHXNkMpRQI+LKFEokpnOuSJBN29Bsldo4d5UVj3Q92q/hZHg68g1heg7ae
 uke5cuUKuoLVY+fYtcydSYsXSNt0B10AerkFHwjri3vea/Ov1cmHVbZJlapVm5SBEWpxvIwGksA
 5akaGqshYUxzDBsEaLbiHUcMl33xJAPZkMPwyHZdlQ05KlGzpzWIEQW55VELOBnUvq6Cr89HYCJ
 95wv/Fhpo2BnOyB29om4JjtkEw8UC0ix16SOJ7gs=
Subject: [oss-security] 5 CVEs in Redis

On May 5, Redis published this advisory, which doesn't seem to have
made it to oss-security yet:
https://redis.io/blog/security-advisory-cve202623479-cve202625243-cve-2026-25588-cve202625589-cve-2026-23631/

The portions relating to their open-source releases are as follows:
> What happened?
> --------------
> As part of an ongoing effort by the Redis community and Redis to maintain
> safety, security, and compliance posture, five security vulnerabilities in
> Redis have been proactively identified and remediated in the versions
> indicated below.
> 
> 
> What are the vulnerabilities?
> -----------------------------
>  1. CVE‑2026‑23479 – Use-After-Free in unblock client flow may lead to
>     Remote Code Execution.
>     CVSS Score: 7.7 (High)
> 
>     When a blocked client is evicted while re-executing a blocked command,
>     an authenticated user may trigger a use-after-free and potentially lead
>     to remote code execution. The code doesn't handle the case where processing
>     the command (processCommandAndResetClient) returns an error value.
> 
>  2. CVE‑2026‑25243 – Invalid Memory Access in Redis RESTORE Command May Lead
>     to Remote Code Execution.
>     CVSS Score: 7.7 (High)
> 
>     A vulnerability in the Redis RESTORE command allows an authenticated user
>     to trigger an invalid memory access via a specially crafted serialized
>     payload, potentially resulting in remote code execution.
> 
>     Successful exploitation could allow an attacker with authenticated access
>     to execute arbitrary code in the context of the Redis server, potentially
>     leading to full compromise of the affected system, data exfiltration, or
>     service disruption.
> 
>  3. CVE-2026-25588 - Invalid Memory Access in RESTORE Command When Used with
>     RedisTimeSeries module May Lead to Remote Code Execution.
>     CVSS Score: 7.7 (High)
> 
>     A vulnerability in the RESTORE command, when used with the RedisTimeSeries
>     module, allows an authenticated attacker to trigger invalid memory access
>     via a specially crafted serialized payload, potentially resulting in remote
>     code execution.
> 
>     Successful exploitation could allow an attacker with authenticated access
>     to execute arbitrary code in the context of the Redis server, when used
>     with the RedisTimeSeries module, potentially leading to full compromise
>     of the affected system, data exfiltration, or service disruption.
> 
>  4. CVE‑2026‑25589 – Invalid Memory Access in RESTORE Command When Used
>     with RedisBloom module May Lead to Remote Code Execution.
>     CVSS Score: 7.7 (High)
> 
>     A vulnerability in the RESTORE command, when used with the RedisBloom
>     module, allows an authenticated attacker to trigger invalid memory access
>     via a specially crafted serialized payload, potentially resulting in remote
>     code execution.
> 
>     Successful exploitation could allow an attacker with authenticated access
>     to execute arbitrary code in the context of the Redis server, when used
>     with the RedisBloom module, potentially leading to full compromise of the
>     affected system, data exfiltration, or service disruption.
> 
>  5. CVE-2026-23631 - Lua Use-After-Free may lead to remote code execution.
>     CVSS Score: 6.1 (Medium)
> 
>     An authenticated user may exploit the synchronization mechanism of the
>     master-replica and trigger a use-after-free vulnerability, potentially
>     leading to remote code execution. The bug affects only replicas that
>     are configured, or may be configured with replica-read-only disabled,
>     and exists in all versions of Redis with Lua scripting.
> 
> How can you protect your Redis instance?
> ----------------------------------------
> 
> If you’re self-managing Redis Software, Open Source (OSS), or Community (CE)
> versions, there are several steps you should take to protect your Redis from
> exploitation. Exposure to these vulnerabilities requires an attacker to gain
> authenticated access to your Redis instance, making this a post-authentication
> issue that can lead to remote code execution (RCE).
> 
> To remediate against these vulnerabilities, upgrade your Redis to the latest
> versions, see our table below for full details. To minimize the risk of
> exploitation, it’s important to follow these best practices:
> 
>   * Restrict Network Access: Ensure that only authorized users and systems
>     have access to the Redis database. Use firewalls and network policies to
>     limit access to trusted sources and prevent unauthorized connectivity.
>   * Enforce Strong Authentication: Enforce the use of credentials for all
>     access to Redis instances. Avoid configurations that allow unauthenticated
>     access, and ensure protected-mode is enabled (in CE and OSS) to prevent
>     accidental exposure.
>   * Limit Permissions: Ensure that user identities with access to Redis are
>     granted the minimum permissions necessary. Only allow trusted identities
>     to run potentially risky commands.
>   * Update Regularly: Keep Redis updated to the latest version for the newest
>     security patches.
> 
> For more details on how to securely configure, deploy, and use Redis, visit
> the Community Edition documentation sites.
> 
> Am I impacted and how can I remediate?
> --------------------------------------
> 
> If you’re self-managing Redis, upgrade your Redis to the latest release.
> 
> The versions of Redis OSS/CE listed below and future versions include the
> corrections. Once the upgrades are performed, the vulnerability will be
> remediated in your environment.
> 
> You can download the latest versions here: https://redis.io/downloads/
> 
> Vulnerability    Impacted releases           Fixed releases
> -------------    -----------------           --------------
> CVE-2026-23479   All Redis OSS/CE releases   OSS/CE 6.2.22, 7.2.14, 7.4.9,
>                                               8.2.6, 8.4.3, 8.6.3
> 
> CVE-2026-25243   All Redis OSS/CE releases   OSS/CE 6.2.22, 7.2.14, 7.4.9,
>                                               8.2.6, 8.4.3, 8.6.3
> 
> CVE-2026-25588   All Redis OSS/CE releases   OSS/CE 6.2.22, 7.2.14, 7.4.9,
>                                               8.2.6, 8.4.3, 8.6.3,
>                                              Redistimeseries v1.12.14,
>                                               v1.10.24, v1.8.23
> 
> CVE-2026-25589   All Redis OSS/CE releases   OSS/CE 6.2.22, 7.2.14, 7.4.9,
>                                               8.2.6, 8.4.3, 8.6.3,
>                                              RedisBloom: v2.8.20, v2.6.28, v2.4.23
> 
> CVE-2026-23631   All Redis OSS releases      OSS/CE 6.2.22, 7.2.14, 7.4.9,
>                  where replica-read-only      8.2.6, 8.4.3, 8.6.3
>                  is disabled
> 
> How can I tell if I was already exposed and how can I identify exploitation?
> ----------------------------------------------------------------------------
> 
> Refer to the table above to identify if you are on a vulnerable version.
> 
> As of this publication we have no evidence of exploitation of these
> vulnerabilities at Redis or in customer environments.
> 
> This isn’t a comprehensive guide, but it is a general recommendation you
> can adapt to your needs and operating environment.
> 
> There are a number of technical and behavioral indicators or artifacts that
> may be created if exploitation of the vulnerability occurred. If you search
> for these within your Redis environment, you should be able to detect
> potential exploitation related to your Redis instance.
> 
>   * Access to the Redis database from unauthorized or unknown sources
>   * Unknown or anomalous network ingress traffic to the Redis database
>   * Unexplained Redis server crashes, specifically crashes with a stack trace
>     that originates from the Lua engine
>   * Unknown, unexpected, or anomalous command execution by the redis-server user
>   * Unknown or anomalous network egress traffic (or attempts) from the Redis
>     database
>   * Unknown or anomalous changes to the file system, in particular in
>     directories that host Redis persistent or configuration files
> 
> Who gets the credit?
> --------------------
> 
> We thank the following researchers for their vigilance in reporting these
> vulnerabilities through our published process. We would also like to thank
> Wiz for the partnership and hosting Wiz ZeroDay.Cloud, where a number of
> these vulnerabilities were identified:
> 
>   * CVE‑2026‑23479 reported by independent researchers Team Xint Code
>     (Tim Becker @tjbecker, Jacob Newman, and Juno IM)
>   * CVE‑2026‑25243 the following issues were reported by:
>     - Redis: double-free, discovered by independent researcher Emil Lerner
>       (@emil_lerner)
>     - VectorSets - Integer overflow and Out-Of-Bounds read. discovered by the
>       independent researcher Joseph Surin.
>   * CVE-2026-25588 discovered by independent researchers Team Skateboarding Dog
>     (Joseph Surin, John Stephenson, and Annie Nie)
>   * CVE‑2026‑25589 – the following issues were reported by:
>     - RedisBloom: Out-Of-Bounds read/write, discovered by Daniel Firer
>     - RedisBloom - Integer overflow, heap buffer overflow, and Out-Of-Bounds
>       read/write, discovered by independent researcher Joseph Surin.
>   * CVE-2026-23631 discovered by independent researcher Yoni Sherez (@yoyosh__)

On June 2, Wiz published blogs with detailed reports at:
- https://www.zeroday.cloud/blog/redis-five-cves-overview
- https://www.zeroday.cloud/blog/redis-cve-2026-23479-deep-dive
- https://www.zeroday.cloud/blog/redis-cve-2026-23631-dark-replica
- https://www.zeroday.cloud/blog/redis-cve-2026-25243-deep-dive

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

