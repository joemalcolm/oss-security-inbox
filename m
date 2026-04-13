Received: (qmail 9290 invoked by uid 550); 13 Apr 2026 17:20:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9266 invoked from network); 13 Apr 2026 17:20:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=xl6R8Tr3PJL+a1pwool7iTfl1Z+SyIJEkR6dmz8UrBU=; b=
	Gpa25FpKaERzB4zpVxQjftEmzoAgdgdFlhT44r+9DqUg02glgqzOhuKuG69bBr1K
	r7D/JQOfLppjkpQM7AFGELJz1GN8jJcy17ZRdQwyYABUetDLDANsUaHFCAFv5QbK
	JwQRrk0mgLBcQsk4U584U9/nSPLMZa1yGP+c+M3i4EFr9A292JXOfpxHNE9mFnle
	F65dffD/kRuG/pp9G0QZHqxOZR/TyYAtXbKYdoFDMYCRFVRBunv3mx8ck4JAxZam
	W+oHig8tDiFWeEUPAxE2LVzZON3ZRo47iX1J12hSvlPC+Vl9pu5IQoOEc7W6b4rT
	H0whl6keX3ayllrl1/B8ew==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xPYjg/eREa0BZp5cBnCSzY8gbK8cx6VG3kojHpB/FxoF3AUJ3PSDma0I3Jl6JTf+7KcinOYlXRlBEDtOkbPqz4CP3SHWm4q2wCsqFoRGAfr+2JBacbQdrgvg9mrm4ezBODHv5tvxiQyFREA3ibrb6koKwW3d+X3a4SlLqH76KFuUmp1173rIflBDzkRp5ZIXgM8J+D2btWfrSyQLj33P9EG2GJ5C/OEoyBYG3vAVN1H+82QxZhna3vnJGPQZueIxoNjWZtAy1SM+W2ScgPvHnhajzhWw65ty7tljXLUhRDXEUr26u9l04idOlnWatkAu3mxcLxrghwb0ID6oP5cCEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xl6R8Tr3PJL+a1pwool7iTfl1Z+SyIJEkR6dmz8UrBU=;
 b=zKPECt0SEwlOCh8xt1h5fdw88ThlddBGNMytxCXQPl1l3+zLkArP7iH2xXRca/uUdm+CExEcE0vu/bsWtLwqxXq63S9JsFN65JNBFnaALyAz8l1Up1KrSUW0DqV2xN4NDzL8lz8nFLmmq+cWTVmt3k65oyVbGpBLn1ZGA1EtG2RHWv5miZR/DqtEQyUblaNehPaaKeNykrNNNkpnpjLO1aYv7OrnB/S+7vLfBsIAIHqyJ1tpj+qY8vg+FenK9pHAd7DjcA5Vv+lQyIlyLjWJads22dpwe2Scv0LAOH80zDiXGHupwKXSB4gedS58BKDRklyRL7SHxKNeyD09QvS8Ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xl6R8Tr3PJL+a1pwool7iTfl1Z+SyIJEkR6dmz8UrBU=;
 b=vRRf+GyUedf2rLM0Jz+x2o79EGwAPaMbzc5E+SlcQiri7oFLISOvL7ZEVEbdFTOyRmBQqwScA9AKqtq1JswfvCwvTOKQ1YjZaXiAfQVMOgbAGcAfqOsRuowScdeDIgI0dlzWt7stzlNnMt2M8FPN9KDGJ7mCCLOo94cTk970Yx8=
Message-ID: <91590bcc-d936-4358-a418-cfecea8983cc@oracle.com>
Date: Mon, 13 Apr 2026 10:20:34 -0700
User-Agent: Mozilla Thunderbird
References: <CAADqWPRQRSwWDrWCQVcmZWVd3BjW5OFaaiAfyu9YR003AprqwA@mail.gmail.com>
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <CAADqWPRQRSwWDrWCQVcmZWVd3BjW5OFaaiAfyu9YR003AprqwA@mail.gmail.com>
X-Forwarded-Message-Id: <CAADqWPRQRSwWDrWCQVcmZWVd3BjW5OFaaiAfyu9YR003AprqwA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0039.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::14) To IA1PR10MB6736.namprd10.prod.outlook.com
 (2603:10b6:208:42c::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR10MB6736:EE_|DS5PR10MB997753:EE_
X-MS-Office365-Filtering-Correlation-Id: 628463f2-46d1-4f0a-25b2-08de9980f9f3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|1800799024|4022899009|376014|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	bcKg0yQ5Qy/uv9jjUtawLd7k6XILLa4Ax7sa/Rpb9gpqElSKjppH7ej0dDUEho6ghZ79PZmJHFJb+gyBFtydsBJXi7rzsycXVBswKrLRPyF7Up/rXTmlsf/Lh4Ntb499Knoc2aD5OmOfo6f6zEJbCyFo7KhLmEN0y3Xgk2ogpa81F/76bFXWSgpJH9pabntBtti8Jjv3AxfIN+PHoiirI+hBdK5ylXl/3FmK8u7BIg5jevKg4HWPr5DvANOYhjOduiAvG13+UWFyf8D8GroLI94jTac2QQbNkE/ys5gqnKa/IPh8yQRl7VdqA3/xN+nEvIAftygINokRuogaEeBD52KpznbmLxiwcV5+AknAUt1IdCOULO3XyhbRYNh10WO+3a3Fsqa79aRyPpH+TJg/0ikUwEvKdn+V7b6cUtfZuWnNT5ZRDDqLe5ZXeERF2I3U1vv26XaBDcsNx3YZYJM60RRuNPdVXhYQxgdG9yfFH23mB9t8PCHcVUaoL2d2rbio1R4P29H2s+Z0+HG2ljgXL9PkMbEFDA8H0QcV1y5Im+uFs/GBEVHm9cRjZH2efHOxYAUcmDNQGFCf6EH4/U+7HummIWqLlu0489WuaR5SJPNR28H1ybJPJTrlRqc8dZ8DS/axY0ouJeSCpojv9XtYqUP0Yyq3FZX3x2swmUXnWoUlQnI6R2ks/XAVCw9bakF7NZDe3qGDZ7VTS5v9oDAya0hKYIsGolKz88Z8uZ/hFWHW8hEYZKthconYVa1GN5xL
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA1PR10MB6736.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(4022899009)(376014)(18002099003)(56012099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?cVFkQ1JLaStPUlJwZFk0cFV1dDhTWjFsQ3BFQ0VqMkNNWW1mUHZIQ1Jub3h6?=
 =?utf-8?B?SVUzSVV4WGpEdnN0MkNzcEt2YmgvRytLZkloZVlZR3NaS2krMms1SjBsamJD?=
 =?utf-8?B?YlV0WWtaNGNHK1pqM3c2enpjcUpQdlNZQW4rb20xSFgwSmRJYkQ1aS9GNWZx?=
 =?utf-8?B?Mnpzdmt1RUxZRkhBZWxMVnJKZWtSRkN1Tjl4VzhnUVRVclRxdEdqNnpiSnB1?=
 =?utf-8?B?Mlk0SHN3N2JMeXJLTTVjaHozNnNOdUYybGZUR3prZExOajBKRFJRZGd2Sk13?=
 =?utf-8?B?VlRFTEY3RnJGdDEwUUszODZXRHh4WUpGbFJuNnp5UGI0TWltSTlsVVdzSG9w?=
 =?utf-8?B?dkxucHJqa21NSmNhMW5hMVYxOU9WOXVZdUh0ZE95MHA3cFMwbG5aWnREdE1q?=
 =?utf-8?B?cTdoRWF0cnNkRGdyUDlYcmxwZ3RqRVJMV0tkK1Y2WUZ0NGVITzZ5NURRZEpM?=
 =?utf-8?B?ZlBWQTE1TThRS0p1QWZKT20xT1kraFVuVFNtSGJ1K2pZRDhHS0xVeDBhdTJm?=
 =?utf-8?B?U2hYR2dIbDB4Y1BNR25EUjE5VndaNG1UWURTYkVJcWt0bzhqM08zSk1YdTFa?=
 =?utf-8?B?WlBUSGFWZDN3K3FEZFZDdjJJRHV3VWZrUVZTeHhhVmdrM0F1TE0relNpTlBU?=
 =?utf-8?B?aWE3c1pmY2Y2ODhsNFY1T1Z2VWtuT3NKb2VvWkdJUk1OSUE0N0RDWFI3cURS?=
 =?utf-8?B?V093YlBBbnQvbS9heGtzdDN0Q0ltejA3QlV3aUZTeEljeDVTVnpLQ3pSOEJh?=
 =?utf-8?B?UzQxdG5sV29NNCszanhueS9rcEppVDZ1WHYycjJpU3dJcFJ6WTN3RmRYbG9z?=
 =?utf-8?B?bzBIZXpHcFdlRmUxenFZbXY0VXYvSXRQTTlOcW44WmF1RVJZVysyckFNcE4r?=
 =?utf-8?B?T0psaXhmUmFDYnRyYWlNMGFXbjZxWlYxWHVjZU8xSFVOUCtQZ0RkQys4WEtV?=
 =?utf-8?B?VTFxKzRRc0E0YXBLcW42M01LVUVWYzQycS9jOUxyYzRpSUZKdFl5OTd4SS9B?=
 =?utf-8?B?bS9xVkNYNGVnajJ3Y3ZldWYrWlVuQmdkUDJOWXhhNkMyKzJEQkdONUx6M1BI?=
 =?utf-8?B?b0Y2QmlEZnRtTU9TcWFvRjBGa3EyQ2Z6aFJwY1hqTDBScHd1UmhIaHlKOXNl?=
 =?utf-8?B?NzhVTG02aUg2elpoVVIvb2xIT1c1NnVXWUlMejZoUE5FNFcrQXBPZnZrOTNX?=
 =?utf-8?B?M0tQdnB4MWRjbHhvUm5kMk5SaXJmOEozZ2I2dFVVUTk3dVNSRVRWSUp6TXk2?=
 =?utf-8?B?dHZGbmVIL1hQZ3B0MkJ6VlBXcHRkazUzZ2QxWStqb0JETUVXTmFVMlA3YUVk?=
 =?utf-8?B?T2Q4emlFUTdRTDROU1V2eUJ6MEtzTlJycERwMnNJOExWSkQ1RUl2Ry9CZU1W?=
 =?utf-8?B?L1RYclJRZTFuaXQ4bXZsdE1tbWJ4YmVKdXA0ZXJQZVpGclMxVmFrOFhsbzBH?=
 =?utf-8?B?aTdiS2hHd2hOc0k0dkdiVWhYYmVjZkF3SHhyaERXT0NNK3pPVWx0cUZpc212?=
 =?utf-8?B?TDhVTDlQUjQ5ZnBMVVRQZzcwYit6WXFMellPSG0vNXdjbjYwTXIxT2phNjNv?=
 =?utf-8?B?L1RZZW96L3FmYkVTczBmR0ZHQWlIU1JKdjRFc2VyWkUzTGM0NUgzVE1QY0l0?=
 =?utf-8?B?NzhMNjhSS1lrQ1kxWHdtYUJuOU54QUk2VTNmUkZTMkZRTXJGdXFLQTcycVpU?=
 =?utf-8?B?clhDY1lwR3FLeGFXOUJoZDBwVktkZkpXNVN2NU11VVJ4STUvT25zVjF2REt3?=
 =?utf-8?B?eVFzMHU0ZDZLaXViMUcvbFN2Z0pnTnhkUUtWaVlVcGRVaWkrYmFveDNJZnJh?=
 =?utf-8?B?cUN3TXF4d2lwcjZVY0tKcVJKOUM5Ukd2R0tZNWZvODRCcE5YdWR3L1dBQlFK?=
 =?utf-8?B?THRscnhFVnJPMTRTVEc1aU9rb1lqZlRDbnhvUGZucXUvVnZ2NlpQVmUvTERh?=
 =?utf-8?B?d29MUkVUb0pqMExKcnNIN01TajluZmw4dTdKQ1NyeStybDA1dXR2OUJ5VzhB?=
 =?utf-8?B?bnNtRFJnaHN0bHphSVN3U1FjV1VRbSs3WGxpS2w3VitqZ2I2R1c1ODlySmVs?=
 =?utf-8?B?anNsYzJDcjVxQWZrVXl1NE1McmttZXJEVDR6VnU3NUptWjhEY21VcFZOUDNB?=
 =?utf-8?B?SVRXQ0pDMVFzcCthNURyOHJmZzUvVGZ3alZTZFJFMXRueEJzU2h2RHo1TEpW?=
 =?utf-8?B?aTJMd1NzOHBWUGNLRnh0amE2Nml2UWZRQnZSZzFSOUkyUms5YUsvNFE1S2ty?=
 =?utf-8?B?UXBud2Jpb0Z3LzA4L3BpZkErQldXMW4vRzVzMk1SV0kraTM3eUo4QmFwT0sx?=
 =?utf-8?B?V1Zxbkc2WG10bnRHR2d1cWhwMUFCc0lWUm00UTlIbDRudFg3eDJLS1FlZUVy?=
 =?utf-8?Q?ED8NPJEXQlqHiv2Q=3D?=
X-Exchange-RoutingPolicyChecked:
	Y0gde9Ni72RMKkA8QIxlB7egwVndiUbV7JQrlxd5IiMHIuYB3hWXL0dHDvPd83PMdpNMh+Civqg6HnuWMOZ/v4KHlEeL0Rzrl65sMIlVrv08cV9RFeZ+lz3EklajJlKp6GBLm4ROI8kOVfs66owlf3Nyzx8KKgoKqJ2jEDXTew5V218gTGIQzd3YLRrO79ZoEEXzz7xn/VH/q6EXbxM75cAU4JpdxxEXEjpuKLM0ztwIKu1ZNNlCn+gyP+sbUTRPoFvuLd+MBWMsZEGLqtsc8Q1hKNbS0ui/5vlpLkPZbt8q6jzLE3Fy8b/IbLnz9xpyfbYX6s6Td+74/mFGlqgsPw==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	nd9X8DsPiNSQ8INc68nIbnl3NMOON0l9IRL65htcyLBZVG/+Jl4MQzLkUxM2zonDBLlPtVDQbLuVEf7ee+2vdpoEKSHq1vUBBmPhm4UqFOuNlV1vWzIbBZUcOzUS3lMWIJtIKASfSY6tdwX3u2ps4lAj/J2VXmzI8srZHSE8SEFUH5XXVsHYkkrDHRTJBhwgXVKv59bXW7z83zsa0LcnKhVLt6tMFrOtInRi3FdWVmIlyOElkJmiAP+kuSKvCfOK7QK1tSb+cZDWkPxQaRg53n9eyRAKc9VkZPP8m9cfXlsggE9B53btc0OwHeTHgP3BY8HHxvGPRGWjr1xYmkRKCP0xwPI2a58CXyJvKk1ED0J/pjDuRUKoQ4AyL7ooFWmJ0IrU0UEc4Dy7Dq/j+1vYxWmzhJeYDRPd5aQcr7UHtGEY0pZK3Quh/N7GV3f27NU9DleQVbNuOwN+OGoKzCKnzqW6o64y95YG7htflv/V02VJCasz7q9rxxHFAvHjvNrt9MzOsCKAv9ttP9FfhrFpiC9LWCPl+VsW4nsuS59DOEz4eNscIowQKJ49lYDF3eRa0yAJgHpScIPmZK+B0U6+d27AP8gGAODrJuSsHkye4oA=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 628463f2-46d1-4f0a-25b2-08de9980f9f3
X-MS-Exchange-CrossTenant-AuthSource: IA1PR10MB6736.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2026 17:20:36.3036
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YYVil/Y5spbL6X127rK+HVt0sTBCmDi67ggw1LtvQVbpUTXYNEXXTd4kNlKu5I0XUPC1R1HEOsX6FV520CAL8Nx4DniGV+fzLlxJu8yFN5k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS5PR10MB997753
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-13_03,2026-04-13_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 bulkscore=0 spamscore=0 mlxscore=0 lowpriorityscore=0 phishscore=0
 adultscore=0 suspectscore=0 malwarescore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.19.0-2604010000 definitions=main-2604130170
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDEzMDE3MCBTYWx0ZWRfXwxZEoLzP20HF
 CqNMSzeE+RMvC3pPojr7yNtWc3IhC56dbeyICD3mUbUdqJu5pcghNnL5+U1JsS09+/vP1gLaRMG
 3Ajp+k2HP/iDnSGKGuclqu4+qdRe9VM/+0CnuJ/Uy3t37ulye5VerItQGQ9D/v7YPHqRpG9OYAL
 H5LSTxLJIRPQPOk8QX8pdFSqudBeBy2oVOqbsK4L+wkvYmUH7ZcLKYf2svvgraytpnqvz1MSwct
 DbFcYyk8US1JhIWvID/3MnG30eaN/GpswLRJwmh6IKjdwhe9etkDckhNQ7gOnyTSRftVX29TdJ7
 25J3kDYA6pdI+tyZK02X+iubSypDJFaCfde8Y1DepnGHSRJ97wLVMvMymCLi0L0mrVmijZD7j55
 joj6G/PA0BUtrS9EkQ5vULZXUjN0WrTS4tE9Y179L1GswZ3ItLfVIN0zKpgQ//w8xuEEQY+J8Z3
 qsGwjEMgDSkiPsyqgkA==
X-Authority-Analysis: v=2.4 cv=PpmjqQM3 c=1 sm=1 tr=0 ts=69dd25ea b=1 cx=c_pps
 a=WeWmnZmh0fydH62SvGsd2A==:117 a=WeWmnZmh0fydH62SvGsd2A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=7Gl3-_t3PgB9XO-mQDs3:22 a=8r2qhXULAAAA:8
 a=NEAV23lmAAAA:8 a=8AHkEIZyAAAA:8 a=6_zO3oIAc42dqy9f_rEA:9 a=QEXdDO2ut3YA:10
 a=8gvLZcY7Nlvl4CGD_6nf:22
X-Proofpoint-ORIG-GUID: 3xwMkO22pLk8Y8aLLCH7fuU_6-WEHxlz
X-Proofpoint-GUID: 3xwMkO22pLk8Y8aLLCH7fuU_6-WEHxlz
Subject: [oss-security][CVE-2026-6100] CPython: Use-after-free in
 lzma.LZMADecompressor, bz2.BZ2Decompressor, and gzip.GzipFile after re-use
 under memory pressure




-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-6100] Use-after-free in lzma.LZMADecompressor, bz2.BZ2Decompressor, and gzip.GzipFile after re-use under memory pressure
Date: 	Mon, 13 Apr 2026 17:13:40 +0000
From: 	Seth Larson <seth@python.org>
Reply-To: 	security-sig@python.org
To: 	security-announce@python.org



There is a CRITICAL severity vulnerability affecting CPython.

Use-after-free (UAF) was possible in the `lzma.LZMADecompressor`, `bz2.BZ2Decompressor`, and `gzip.GzipFile` when a memory allocation fails with a `MemoryError` and the decompression instance is re-used. This scenario can be triggered if the process is under memory pressure. The fix cleans up the dangling pointer in this specific error condition.

The vulnerability is only present if the program re-uses decompressor instances across multiple decompression calls even after a `MemoryError` is raised during decompression. Using the helper functions to one-shot decompress data such as `lzma.decompress()`, `bz2.decompress()`, `gzip.decompress()`, and `zlib.decompress()` are not affected as a new decompressor instance is created for each call. If the decompressor instance is not re-used after an error condition, this usage is similarly not vulnerable.

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2026-6100
* https://github.com/python/cpython/pull/148396

_______________________________________________
Security-announce mailing list -- security-announce@python.org
To unsubscribe send an email to security-announce-leave@python.org
https://mail.python.org/mailman3//lists/security-announce.python.org
