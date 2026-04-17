Received: (qmail 9750 invoked by uid 550); 17 Apr 2026 16:53:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9702 invoked from network); 17 Apr 2026 16:53:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=kbvB/1sWRlLtj10K
	1JgboX6iHt1+KpRzLzA73vf4q+c=; b=Ha9xpWHmCQuwP5eLuHjB5mGq6Q4J1NPG
	Tbg7mGJzUTrhB/0XbLDfwJmGBH4QExZs8pR+4m9eBz3jawdwU6wK/C63LwevZjYC
	mMUAwYlbL/rFcDcflwUIbLmBp+aeQZgc+QzcggaphwXVArYtoesMEmgaeRtnmHxy
	f8UmcQYJBkyiG/WyQzs8zx//uPegPRfZ8bYDlhVqthGGFDTZQ2g+jNZnbXoQWTq4
	j7Qx7t3zr20sq5Y7O0HOAjL/bsVoUq+1KUtboBtrs85I1afCpBx3NlD5z7csbA2f
	A0DAe9XNjaCzimixNLbIUQVoYp6s3Zma3751JaPgZQEKAIxnyy/7nw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LjyEF4lpog+LGidKHmlVkhGfHjlhHWnI/Q28UkpUVA7weOEpO2Gs7mYNBARjLDgtv6kFAhCGDgdcUlrLCRbhfZPf1GsqEi3ymudXnXNaBInxr98t3QqM6tSYmXPl3vMbNItdUAzfMr6cQAk369NTAP1jCdDiJYF8wfKUfVorTogvKcslNsWkxAcA4mMBsaicr7vy5CBRiDfWp3JTZjrilGUDmbxM+j64Hs3ySdyGUMqnVqhaaiCrGzUtg059WvOiscrw2cm+tnGr31QYgG3RGImRzH+PtvEh9Zk48yOByEy8TGpl3lXD6EH3vgj0V9X0PTkhJqQ7UW3u3PNIzoLY0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kbvB/1sWRlLtj10K1JgboX6iHt1+KpRzLzA73vf4q+c=;
 b=v7oiyIRsml39s4ij7BDAwc7terhsuA/1FTbhThdgqX3jzYNDm7YCzOTRX9J1X58m8HCz3uVxJ0WsjqNJFbZU96ACAolHfuBUvXlpP0Cx5qGPn5qJX0EcxP9c/7mfEgRs2+z0pB4w5u9S1UOwgIE4wOv/yu/PsGU2Xgi6/cxrDy6NFGDT+ChjKOiqOz6G9nFCH0YsPFiydospt2nUCesaVDb1e4OTX0GMT6gOdhrrWNwcR4uQU+WU7JAPctINp12CUNYNy7yHu58ZZaptVwlpWnLtBaZ4mfoftDLmWilOcaSqIvVWJFE0wI2/qA8n/Qv6IcdFdhRAejqpCPJP8M6mvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kbvB/1sWRlLtj10K1JgboX6iHt1+KpRzLzA73vf4q+c=;
 b=rPqDAQ6pCzSu5f9UkUjzGGOKilH/VEzRYY6idDA8pLBqVmU9QXwdmKbTTrJ8OUviwOPEVRrAiF4hF0QiVt8mp926mQHzfYCsWyeyDlyieZ0MSHQ4MtDmlW6GFP7SSlcMEM06mtn7f/WzHZeBWuX+hqTgL6LlF663U1u+qve48gA=
Message-ID: <d5ecc559-50d3-46b1-a0ce-ddb2a9e96969@oracle.com>
Date: Fri, 17 Apr 2026 09:53:26 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DS7PR03CA0147.namprd03.prod.outlook.com
 (2603:10b6:5:3b4::32) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|PH0PR10MB4680:EE_
X-MS-Office365-Filtering-Correlation-Id: fa762c1b-0345-4b03-0d6e-08de9ca1d935
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|366016|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	Kx384lHLwygvS5Bzc7028VXYualUwBlkUWAEe0so+qi0LOFFNyg2PCMrwbP1foyJ/I7vtOGBGhSOv1EO5Yi8z+8IMctFEoihU1J4q9WKizSvTw0GrQByQLpKJk47XBruaCl/IYD0ywMnAiwwKaET3fCm+bQ24+5RBxXWCneVhnWeSU366fafI7Q0AgrcxnIFDQ9Gdabr41761ApMdcZAWaFWmngzDizUbqbLRmXky8Y1DIenp+vDmMy4i3zEvJPwzTT7wflb1k/NaKQeuzNqMbzSf/KiXI/OVmb9m6Enc6zie4C0w3YxXT9GJUKFeqfK4QEVPva+e5O5HRvXoDt17WCBwQcu5kiftuGBors9cZGE+v2GDMxSpXIFoG0DDvHQa1iihiEBLtW92SE5+ZExWTYYf9cv6PU9Ae04OTKYVaRwafYdBaAtNOciLaL2VTZ3JYjsbvzSjXRnjUFdgryeZOhebVKXo4VbVR0wuKj7vDWWd6aOzVA8hy96ZPpn6dVE711QAxKwii5DEYrkn27Kzqvduo5ysr4IepgwiZnKUvcDI9+PIj4GNbDtmCJct73bk8su1hHgD/UPSvX9KbUEHYKbWIcl/1s6iUQl5U1qY4djHA05VeW9m//g/WEvt2Kwk7EKgnbfg562ZEK8XkOYf3kgV0bJEKsc2WZccAzPvV0YNhz4CtEtg4RgusXOIm9QKOZSHt+fqBoFcK5FrDL+RY1pbSKGOimOXBuJuz4TsclmuZdk6rz6y22141BnFaYt
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(56012099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?NUQ0ekhJZDlPYUV1OHJiMW1rZDJlejR1S2xwRE8wR0FIVGFNakd0NUYrSUMy?=
 =?utf-8?B?RVNCb05sTkI3NHppNmRsZG9qUEhBR2xHS2N2RmVZZHI1RUJNNWtJeGtPS21B?=
 =?utf-8?B?U2J4bEtGbURHWFlZV2xnOW84WTN6aVNlbmhDcU5JRlcxRlRDY2NIemdNSlhZ?=
 =?utf-8?B?Z1IvYjFsQTFEM3JmTndwZ0xSM2dtK05CbVF4d1dDdWY0ZGZmdU9MZyt0ZDcx?=
 =?utf-8?B?Ujlya0RkbW9jMjhmZW9EdjNCQXJYTHV4QXRPTU1JQi9uOUI1Z0R6UW5XQi9t?=
 =?utf-8?B?S3FaU0VHTGorSHE5UFNpYW9aa21POW1tSnJpN0NZVUVuYTFmRzIzcVBUQ0tm?=
 =?utf-8?B?ZXdob1E1Q0IyU202VnU1WWcvTG1FNzcrYVV6cU9pWm53cFRFQXd5WDVYZVUv?=
 =?utf-8?B?anZmZFFLbmw2akNIQU0yYUVjWUFJRU1Ba080R09wTFpxalRIalY5dU4wTlBS?=
 =?utf-8?B?a2ZZcmdYeHI2TW5qVUgvWFVvazgvYm1ZZnJnVVVWNm01RGliZUhPNmwyaDVE?=
 =?utf-8?B?SDdrWTFDWXh2NTIzbDM4SnpRZzlOVVNKS2ZNYmJrcnpZVVZLbU5LYUtQUml6?=
 =?utf-8?B?Zlk4NlB4d2RPNzBnT04xdklLMlY0VEpaOFRJQnV0cHZWakkreDB3U1M5b1ZI?=
 =?utf-8?B?ck56LzhlSmhHT2xBY01iTHUxeHNxYytNL3lrYjN1KzJRenVKZEF3V0ZiQW1z?=
 =?utf-8?B?UDA2ZHFLcy83NmlYcVEwZ0RXQjZVN0RRaCtKQm1ERVJwaEdUakFWdEZhNlI3?=
 =?utf-8?B?QVF0UzQwOVd5TjY2TlFNbWhncW11c0p4QmRjRlNKUS81Q2lsZFRYOXhqZytP?=
 =?utf-8?B?ME5CbVlLeWh1R3JNemRhUmZMZGFvQ2tqTU5ld0JTMUJkSFRJbEdpNThSOU14?=
 =?utf-8?B?cVBYZzNCSUxIOTNURE5EUzRtalBQNjdYdExMbWZITGpjNmdTeDVxRUFnZUxD?=
 =?utf-8?B?aUV5SlYvcmJ5a1BHYXJyUTlMKzJJU3JmOVBBRUg4b3lYMWJKOWo1V24wTW9Q?=
 =?utf-8?B?VER3QmZnYzVubWVEVmRLRkZRUi84SGp0Z0hkUTJZRTgzb011cUhEZFRDN0sr?=
 =?utf-8?B?SEE3d2VYUEhFU1RKTG5aQjB4UmVGUnl6YnFTMjRodGZ4VENxRksyd1RhNWNy?=
 =?utf-8?B?Q3Y0U2M5eXo0MzdrQlBLeTdySyttU3lOREpqdmNBeUZIVjFrK3I1T2YwL29q?=
 =?utf-8?B?UlFCV1JFVXF3QW5tc1NNQm9kY2RoQXlBMVBhS0xkekVEY2FoV0ZHVjNxTHlm?=
 =?utf-8?B?ZkpPa011cjNBN2xuMzJSeG1DS0ZNV1pUYklxazhZbXNIU0pJdjNnVndxR0hY?=
 =?utf-8?B?TFhscGJKZWtxZDRESTR3clJyNkp6OHdFTGF6WE5vWmpWRUxJZ2k3VXFOb3cy?=
 =?utf-8?B?V084ZjlJc005RnhmcS81YkFSRGIxKzg5TjNXM2dJQjlKOUxNYjF5Wmd2Ykg1?=
 =?utf-8?B?emdGa2lvc3hhMFNtVit4c2xUV1l0QzBvdmVMbVVoMDBzSXJoT1Z5WkVzaHR1?=
 =?utf-8?B?N0Z1ZVp0OXdhY1JvNGp2UlVIcHVUQ2JHTmNFWmRMQk1yVkJYd2NWT0NGWC9h?=
 =?utf-8?B?eHFwY2M2cm5RVWNWWEpIVkw0ZmF6bVBrc3I0aS9JYU56N0ZJTmFudkd4VC9V?=
 =?utf-8?B?UDFmdG1DTjdkYW05NjZvRGFhVFN0WUlJcXVpMCtacVgzRytGd1pFR2hnOWtw?=
 =?utf-8?B?R1pRU09vb2RCdVovVjRvUk5CbE5hdTE4Q3YvN0RRcGpOL1MvVkdQUG5ERGxv?=
 =?utf-8?B?UFZtd0o0djdiZ1phOEs2ZHF6djZzODQ5dVE2U1RxbGFUNTF6RUlpKy95UHZD?=
 =?utf-8?B?eFNuVjhwRGlHSGlHVElKalgvTFBzTzNkMFpNTmY2RUVuSzBYRXpVYkpyZWZL?=
 =?utf-8?B?WDNDZDVvT0pCYys2OTZBS2E0K1FZc0huT1lZSmE3UCtxUWVkbksxa3hVNUE5?=
 =?utf-8?B?MGZmdWc2L0J0ZmIwZlVHWnZEd0pHVVN2NUdDSHgraGl2bTBZcXBQWWRaVWJl?=
 =?utf-8?B?UTdVbGFBcWxFNUlvTWtUVk11cWV3WVB4d0lUandLbDFnVlZCaHNabi9UeUln?=
 =?utf-8?B?aUtDRk5YWXZTclhuM0JRU1ZsYnFNZmduTkZpQzhrOE83dUYwN3g5SHROQlB1?=
 =?utf-8?B?TFR5MXhEVTd2bTk0alA0NnV4Nk9FTHk1RjFqVkpqMmNTdE05dEpUOU1UVk1a?=
 =?utf-8?B?dU9KSmpsS2VVNDlGaUpJMVdxelJXZS9PVVlYR2pNT0pGVmNYUlRHK3JGZFFl?=
 =?utf-8?B?N29meHdYM3JXMjNSNXBkYmMySDhlbmtUcmhqODJiU0lIQ1VrV3FmMjRFSWd5?=
 =?utf-8?B?dGVyQ0ZTNktRN3dTaXVpYnlYckg0VzhXMzlqcXMxOHRKM1FzRlNqRVozNTlP?=
 =?utf-8?Q?YnlB8a8NlMyXMVzg=3D?=
X-Exchange-RoutingPolicyChecked:
	oFf8mNM9QQe+lfoY8cfXqkOTJ69CzLTUipGETEOBsbDgWylhgWO/TVOLs3i9kF+hozNpv/FKc6u3NEI94OTY9600liXEzqupGz1ubLIdb13+QajZ3+EJWW2yr0AO644EfYl9xpPPr6Ij312L1hsk2gwr005Pl1vzg13OgdhwqhE3bPLAxTRVKx8LCj3jxdbBlWIbPqchG56P41V2OdaF2/+jVyt/NkdK12V2D8SoZhZHv1s+9u/npAHh+jWy+uKOW6b+OiLikiH01wjPrfgEqAqACm6xCYB5OeK/Xddnu4/GXMn4c91YlVFLFtAo6Rkn2X7YUDqtYvs504MkzI9/bA==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	1p7nlLFabBD3s6MVD4bOppM8l83kk0FR+TJlOUOyFvf8Mnczvr0x9yXoaIN7TgcmI0gTuK7mckKMFgez5+3AiwcMCwZfG+2pMzIr8H/UfEi4uHPNvo2DWoa8i32JkV8/wQrnEecNcsi1JwWBjUlNOTR1tW9vO5D/N/LRmVJP06rsbH9z9d0QfT5XTxm66tRULXX3mxGU9tplmBzM7abbAM6JjEGu4L+a+URTvlUS8wo9t7VHaikTK1NN8HZaLLj05uJlz4SKhM/JdYdQhw68KAg8at5ZmDlwqxOHmHT+fUfinXIlkhYC+lo9iqbnHuizSnvqzRWsoyjLFd8HKeqfFnRCN0ttwuKkFhXhy9Vdrm3N0YLnI5/isN/d7pEDf5x9fra5ekOl99ccsxqdSTjnJ3pkmSTcpTxgJn9hIsmGKsmxMZDC/8lkjLkicFFVbSbSks92XYaPLDc33lo38Z6trCqNH4so4AxpyPR+wjqaa5fkLZ81sOsfmwOLxL2WvcF5SzvR+XlerSPR1N8in16AxWjqcBU2Lnj3QfuS68XmYA+OR2toz0yv8zaGU1z6zZnHG6EEoRqUACpvX0M0vUUSZWOUHo6peUVkdD3qvDegz/E=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa762c1b-0345-4b03-0d6e-08de9ca1d935
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Apr 2026 16:53:28.2615
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JbH2dmz6lHonElu3G2BoQlNf5AVR9a5gOCH7QmbzjvL4mnkM25ByNe+mp3gOiwxDjIeXmgHGZ2L7w/qsbpBNnlMcXuHfd+SuwaMmZlsCJpI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB4680
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-17_01,2026-04-17_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 phishscore=0 mlxlogscore=999 bulkscore=0 spamscore=0
 malwarescore=0 suspectscore=0 mlxscore=0 adultscore=0 classifier=spam
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2604070000
 definitions=main-2604170169
X-Authority-Analysis: v=2.4 cv=eJUjSnp1 c=1 sm=1 tr=0 ts=69e2658e b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=EIcjfB9IiI4px24ztqRk:22 a=NEAV23lmAAAA:8
 a=Chg1YFL0F6ZicnMH5ncA:9 a=QEXdDO2ut3YA:10 cc=ntf awl=host:13825
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDE3MDE3MCBTYWx0ZWRfX9xhnN7bcRSjM
 fUyWlI+E47SGG0PRgpL6vDtyLw1gSNrsnvfjurhHa6cL8TXlDmzB3rAuD5afPZPCc7wSde6GeIp
 cQ7hWXjzT+IxKBxgBajWBzizh/RAbrnwperjypvx5E31neVnvC08HXPgRIaij4TxgUbeyvq7QFe
 7UjlL7HyJbceUYUbbUy/KdrBf/JTlwrmZbxYdDA7LhS/QobeZ6PXEf4EBN+WIYcwhSxmnR4uIzP
 no7fAgyucjiRlwAuTbiugpqFmNDnl6tg7Xr9R8rIMxZHpk0OVH94GcJJiurbJnemN2M7Zic1VD/
 /0OtACMwSvLLNeelJvFbgafYlYNw0lzaY4X1Iz+UJMoaB0Ihk22IFUGUXE30M1W0vj941yuromF
 nxeKryKBT0xIJYWdDOh7J9oQfj8RgnlMK7PJ9qGrVqoCOHCLw3Ti9JzJ0qfw4blWs0hz9+XMVKd
 T+Yb78v11U/NSNdj/Rqo5LRknaibxzN6vTP7b8cw=
X-Proofpoint-ORIG-GUID: pG1mAFW1INy0zaOQUa0yvLiiObvNGh0L
X-Proofpoint-GUID: pG1mAFW1INy0zaOQUa0yvLiiObvNGh0L
Subject: [oss-security] ngtcp2:
 qlog_parameters_set_transport_params_stack_overflow [CVE-2026-40170]

https://github.com/ngtcp2/ngtcp2/security/advisories/GHSA-f523-465f-8c8f advises:
> qlog_parameters_set_transport_params_stack_overflow
> 
> tatsuhiro-t published GHSA-f523-465f-8c8f Apr 16, 2026
> 
> Package:           ngtcp2
> Affected versions: <= 1.22.0
> Patched versions:  1.22.1
> 
> Summary
> -------
> ngtcp2_qlog_parameters_set_transport_params() serializes transport parameters
> into a fixed stack buffer (uint8_t buf[1024]) without complete bounds checks.
> 
> When qlog is enabled and peer-controlled transport parameters are large enough,
> this causes a stack buffer overflow (ASAN confirmed).
> 
> Details
> -------
> 1. The trigger starts in normal handshake processing.
> 
>    ngtcp2_conn_set_remote_transport_params sends peer transport parameters to
>    qlog serialization at lib/ngtcp2_conn.c#L11670:
> 
> ngtcp2_qlog_parameters_set_transport_params(&conn->qlog, params, conn->server,
>                                             NGTCP2_QLOG_SIDE_REMOTE);
> 
> 2. Inside ngtcp2_qlog_parameters_set_transport_params, JSON is built in a fixed
>    stack buffer (buf[1024]) and a moving pointer p (lib/ngtcp2_qlog.c#L902,
>    lib/ngtcp2_qlog.c#L905):
> 
> void ngtcp2_qlog_parameters_set_transport_params(...) {
>   uint8_t buf[1024];
>   uint8_t *p = buf;
>   ...
> }
> 
> 3. The function then appends many peer-influenced fields
>    (CID/token/preferred-address data/limits).
> 
>    Representative writes are visible at lib/ngtcp2_qlog.c#L1004 and
>    lib/ngtcp2_qlog.c#L1006:
> 
> p = write_pair_cid(p, "initial_source_connection_id", &params->initial_scid);
> ...
> p = write_pair_hex(p, "data", paddr->stateless_reset_token,
>                    sizeof(paddr->stateless_reset_token));
> 
> 4. There is no end-to-end guard that guarantees the full serialized output fits
>    into buf.
> 
>    With sufficiently large combined field output, p advances beyond buf + 1024,
>    and later helper writes become stack out-of-bounds writes.
> 
> 5. The final write that actually crosses the boundary happens in the
>    hex-encoding path used by qlog helpers.
> 
>    In write_hex (lib/ngtcp2_qlog.c#L58), the pointer is passed through to
>    ngtcp2_encode_hex:
> 
> static uint8_t *write_hex(uint8_t *p, const uint8_t *data, size_t datalen) {
>   *p++ = '"';
>   p = ngtcp2_encode_hex(p, data, datalen);
>   *p++ = '"';
>   return p;
> }
> 
>    Then ngtcp2_encode_hex (lib/ngtcp2_str.c#L51) writes bytes sequentially to
>    dest:
> 
> uint8_t *ngtcp2_encode_hex(uint8_t *dest, const uint8_t *data, size_t len) {
>   for (; len--;) {
>     *dest++ = low[(size_t)(*data >> 4)];
>     *dest++ = low[(size_t)(*data++ & 0x0f)];
>   }
>   return dest;
> }
> 
>    Once p has already moved beyond buf + 1024, these writes become stack
>    out-of-bounds writes. ASAN reports this as AddressSanitizer:
>    stack-buffer-overflow and identifies buf in
>    ngtcp2_qlog_parameters_set_transport_params as the overflowing object.
> 
[See GHSA link for PoC]
> 
> Impact
> ------
> 
> Vulnerability type:
> 
>     Stack-based out-of-bounds write (CWE-121 / CWE-787)
> 
> Who is impacted:
> 
>     Deployments that enable qlog callback (qlog->write != NULL) and process
>     untrusted peer transport parameters.
> 
> Patches
> -------
> ngtcp2 v1.22.1 fixes this vulnerability.
> 
> The following commit mitigates this vulnerability:
> 
> https://github.com/ngtcp2/ngtcp2/commit/708a7640c1f48fb8ffb540c4b8ea5b4c1dfb8ee5
> 
> Workarounds
> -----------
> Do not turn on qlog on client.
> 
> Severity:   High - 7.5 / 10
>             CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H
> CVE ID:     CVE-2026-40170
> Weaknesses: CWE-121 Stack-based Buffer Overflow
> Credits:    @Kherrisan Reporter

