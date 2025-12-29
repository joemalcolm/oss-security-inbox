Received: (qmail 32455 invoked by uid 550); 29 Dec 2025 19:15:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32410 invoked from network); 29 Dec 2025 19:15:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=xj4vTNx9QLoVPrkd
	AL3VK6qptisFtmPk3G7kAeFmT6A=; b=ATPyAWbvaqVaBNi0FF0KyWBDaVLS32Gz
	b2qYZK+Gh/e69U8qN7OuvAUNL/L/B8sIGR8eTQ/IPp89xevvkYO60aWEj8ezNOBg
	tdSEYmsBkuJvkNvhMj/Uk/pSWUlfXNv2LNFG+eBvMYxpFb624hWHpED6/+XaaWBI
	AfRBNZVMC2qwRNGDRBKrUi8pvPOOHoBxBH8ZLQ1sFVby7x+PCZx4CfV4q0aVVOkk
	fsKHKyjdW65bqaxmosnAwXlzMNzs7DpCWMvGM8rhGVA0E/EoXN+6MfUeUV0Y1evs
	wQyN57ItaXyIAjB0M+jqPUJkKGIYNX5pxDT38ApoqnsSAOcaAsazVw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p5hvWJVuazVl2bOOZBgk9+p4zpjXdyXSxHLXUVP6gLlEqYX2Yx2F/NnmcKVhNyHPXq8hhU4M841gLI+ZKKbbNNEyLbfdVApsDGy3Cr1eErNqsth6dm1ioXVZmgKw5kaCWbZUbYDDId2B5nCtIGooDimWF55nadgr+rtCy7pK/Dxmtw7NwibMDf3gBZXRq4hcEPVbHQ5bJbpH/icrGHB2F8Fc1JPkls04JzpPoRLqpWBzPJ/Z34iKnzHffF+8CTjTOZEgKZyncCVegkV/Lqd+mKC2m39EJIOS9NCpTyTuECWXKhQNo4Aqb5Ea/QBHe2GXxx6PEe5YZfamM+hlFP8kQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xj4vTNx9QLoVPrkdAL3VK6qptisFtmPk3G7kAeFmT6A=;
 b=jwX8voA+t41MNHC7k7aube6YNX4MwjPHSPirjUMsZVfLiIdvsJfBtZUd8YTxNiRetiamxjM79u93DDoYe9KhlWWRD2QFhPGTEGDhcGNcFxpggJPzsp1wn5JpWSBuRaOYm12CshxwswdHM93Ug9dTm24+0Yrpi1g9/eed1sjSAo9UdID+gMs7Sv5f9K1VqkP5NApLN81uUL8/xJgowLLkFLoy0Ixfxe+xh6VDsJvFb3A3MSOe11FmZll7YMK39NUQlGpLBDV0xECEM6ZHVHpdbxUCGiy6WRgC4LiXALeOkNWdW6dKCByZDDEYdgl0xpfCPo2zCXYpBBbNGvMkqT22uQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xj4vTNx9QLoVPrkdAL3VK6qptisFtmPk3G7kAeFmT6A=;
 b=O89yqHII3Jgbm+lVb9bRpIXztWpYBv5f1rR58Jkj/yB2vHAiVfIqfFIaGk5Rz3Ofa2Yh4UVcJU5DVSgXJYl/zQzlan0D9b7t9revnGfnHFuZI2/hsY6l4/ZdGDz41+//XcblieiYOKf0vgeN9Q+8wqeP2fB5k8Wx1vr/pjbjaDg=
Message-ID: <cfc80d1f-888c-4874-9f58-b41637977ed7@oracle.com>
Date: Mon, 29 Dec 2025 11:15:41 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH7PR03CA0022.namprd03.prod.outlook.com
 (2603:10b6:510:339::6) To BN8PR10MB3396.namprd10.prod.outlook.com
 (2603:10b6:408:c5::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR10MB3396:EE_|PH8PR10MB6622:EE_
X-MS-Office365-Filtering-Correlation-Id: b38f78cb-489d-4b54-9275-08de470ea9af
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?L3VpVjMwaDdReWxRZE5xbTBWcFJlV3pDYmR3aE9XZFRnM1Z4anUxMEtUYmtF?=
 =?utf-8?B?Z2pVWEw4SzVlQzlpL0tkYm1JV28xUkhSZ0pWUGgyWGZkSjVJSmYrYW9YOE9Z?=
 =?utf-8?B?b2dNckp3cDFYOXV4bFlHcGdnelp6VjkycHhFMW03NmdCbHBoQTcrbFhhVmtV?=
 =?utf-8?B?R2RXTGc3NStMR3UyNXYyaEVxQjVHVnQramFZY2Y3TmZDZmcvU3R2RWdIbkM2?=
 =?utf-8?B?NER2MlhoYkIzMU9JR0EwR3ZPaldlNTVydHpnU2MyZjRMUktTMXpjWFRHU2tI?=
 =?utf-8?B?bjQxbUZKUDVmNm1Cck96enR1TDAwWGdHYytKOE9CNHFBS3JmMFVaSG1XWWdm?=
 =?utf-8?B?UW1GN3NXb1l2NXkyc25sU0t4MW1DZ2gxc1RVelZjZWVEbWh0L2x0R000NDN1?=
 =?utf-8?B?RXJDUFc1VXZBWStyaWpmTmlmYUd1VHE1M093aFFOcjJGZ3hBcUJMRFdWZDJv?=
 =?utf-8?B?Vm9CSGVLQVZJamFnMEkwSW5iZk5sS0pBSzA4WnNGQlM2cmtBNmpKOGNTaUFY?=
 =?utf-8?B?UE9RS203U1lDNDNlWHBXczNjcFlRejVLbVNSNitENlVJaFBxM241MkJhcDli?=
 =?utf-8?B?VnBqWE9xdUVhT1RuaXdObHVyNEEyN1RPSDRqMVRvbFozbGcwZnBVYkFKUm9L?=
 =?utf-8?B?Smp6b29IOWVhQjdtWGJhK3lmMHgvZlJqRFJ6YTBDOVdERFR5NmlrajB5MTky?=
 =?utf-8?B?VE1seDhYamFsc1RNMXpKbFNJSkU0bnJjczZDbTd4cUh0bmZQaFg4WUltQWI2?=
 =?utf-8?B?dWsrMW9tTHk3dzhzT3piaXUvTy9aK0srTkFVMnBOUTBJalhQclNNdkVnWVlQ?=
 =?utf-8?B?ak5mU1gycFBlRE1BdkhHNGVRWkdET0xLajJvWTFibVNiQVIxcENBVEF1TWlH?=
 =?utf-8?B?UEdGdFlhRUNZMFQ3TkZTUFVGalp0VEVpZll2c0Zoa3E2ZlFLN0VEbWZCRnd5?=
 =?utf-8?B?eWp5VnFwbmY2Tnd1Tng1VEhaN0Qvdk9LQzA5Y05xbkxTSVZOM1VveUxQS0ZW?=
 =?utf-8?B?MGtLRjFZbktWU2piMW9EZGwwSHhsOHEwOW5jUHdPYUVMaGFKYjFIbVpwMFNT?=
 =?utf-8?B?N1hzS2NwQXkxU1NLdzh4L1RjMm1vY2Jibm1QcVpYNk9xS3BWSHFXVEg2czJy?=
 =?utf-8?B?T21oU1ZrbzRmWGlXOE81Qy9IcWVuTjlvNzVBTWFISVZIQmhBZDE5Zk5iTVRk?=
 =?utf-8?B?TG5Za2pROU1RQUxsQlN0Y3VoWjdyeFdnRE1yWXhVdUlDS1ZBVzJsWUQ1R0V5?=
 =?utf-8?B?ZWlKVE1nOUdrVDlPNmhxQkx6eCs5SjFEN3BaQzIzMjMwdG53aDczeHlZVUpG?=
 =?utf-8?B?cGJnRDl0VGxGbGMyaTRkTTU5NUZaUi9Cd0dSN3VKTTMvVS9FWGtNRUl1dTNI?=
 =?utf-8?B?UjJlUU9QN0VlbWZEdXhxbjNwK0FtOHFuUG5obkxsN3F0V1ZqbHYzbG9KaHEw?=
 =?utf-8?B?aytzVWJRYzF4YjF1Z2VlUCtPVzFhay9pNHVDS0RkeVNSdjVUSWlOYWVia2NH?=
 =?utf-8?B?bFNoVU90bkpmeVMxMDd3VVZ2NndqZkxOc2laYkJLMGpXWlBDOTRmN2gvVjZM?=
 =?utf-8?B?R2U3YjYzc2R1cHVZYUoveHlqNGxkMU96Tm5Fb2FkdlU3VVYramZlaWtKTk1j?=
 =?utf-8?B?MEtRd2pqdVdRbkNhK3IvclZRRHphTURyNDRJa1lxVEhoejBaanB2NU9sbWIx?=
 =?utf-8?B?N0tpMGVVMWcya2dVNDUvR1dYZmE4OEpvTEdGU3VoamZvcWRobzBnSjJCWFM4?=
 =?utf-8?B?c2RLWkVxeGwyTE1qK05TRkJscTg1UHNGZHNNbE8vTXJwbDBpd1RWNGlUOCt2?=
 =?utf-8?B?SkEralJHSDdLSXN1dndQU2hUbzlsTzRjSTdmblplRzdudGVsaWNCMGpaODEv?=
 =?utf-8?B?eXhSYmxjQ3dMTENuY1l5RXRDRHROOU1MaTZ0ckRYbVFqR1ZENHFycldIL0hs?=
 =?utf-8?B?YkNzUy9SRFkzeVZET1F6emdqTElvY3IrZlN0QmZ0SUx3UzdJVUZXMDVSellQ?=
 =?utf-8?B?SmgrRzZQTStBPT0=?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR10MB3396.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?enhBcThFS2RHd1FCVEJ5MEZzeGEvM2QvNGZNcWpZSHAwUUJuYmVudVFzUlVN?=
 =?utf-8?B?cXk4WDJFNXhYdzdwYW5QVi83bVRsbi9reVcxb1pSelkyeWQ4YVREUDd2Rmlj?=
 =?utf-8?B?elNqVHgrWnZKQm14N1pkbXZuYXlRS01LQWNsa0ZMeFphSERLQktiQktmOGZr?=
 =?utf-8?B?QmtMeGMwbldwS0NhYlRhZnNqcjVBNFh1VitjSjFwMHlMZ1N4ZXBudXp6cHVW?=
 =?utf-8?B?b2tRUE4wZ3F6NTM1U0M2bFFsK3NnUURVazk4ditWM3hHdHlrd1g5T3NjVFBy?=
 =?utf-8?B?ZElEczhzRjBZYUZQejZlYno1bEp4NzQ5VTJleElIdkFFbjFtTnlHVXRQMlRT?=
 =?utf-8?B?RkthSyt6bFR5Y3kvVGlxWllYZXVXM3IxYmx4dTFLN3NwSnBFanBjOHZMTFNM?=
 =?utf-8?B?ZC9sU2dGYXZQTTg2U1pFVmd3TnJTWFl2NEZTSzB1dEh3cHNJMFdFaWR0Vk0r?=
 =?utf-8?B?SFNBNWQreC9PSFJGSjg3bEpMSzF4akc1dGlaRk1hQ2FSbjVRSXNxcnFrdDFJ?=
 =?utf-8?B?bGI0OVZQcjVzVUtyRlN5NEpNTy9jMzdRcGVZeUgyWXh0ZmhzZUVMTXRoWlRW?=
 =?utf-8?B?YVVqMk1CcmtQWHJlaUJsU1UxN29NREN6d2NFREg0UmI0UUZHc3RXYmpSNnVp?=
 =?utf-8?B?TFpQR2FxZ0dXbnpxS0VtUVhrYXBkTUF5QWZxVUVsaXlxdDRUK1J5WDdQMjI2?=
 =?utf-8?B?SEFOeml5eTlJajFlQk92bmg1ZmsydDVtaXpJQmdTSlRmL0x6WHYwTi9rSDM3?=
 =?utf-8?B?SUlWaERBaFdQUHArZmNYQ3gxcktNeVM3R09zSkFuREQzNzRDcFA1M01hNUdp?=
 =?utf-8?B?ejdNNkF5UndRRVROTVkvRnRNaGdGS3k5RWJvbCtCOXZ2MDIzT3MzSEdtRldm?=
 =?utf-8?B?ODlRcjRaV2hPT0pqNG5rZnZrZlQveVBHL3E3VVVhTnBiWXlIZjRuT2JMd3Vu?=
 =?utf-8?B?TG1wc3czd3N4TDV3WVdJR3hINEdqVWNCMXo4eFlRUzZPWUV4S3QxSko3U0JC?=
 =?utf-8?B?ZWdpUmZub2VMOVArNVRFcFlCU3l3YnZpUEVWWVNCNVRSdjVGa2ZPMG9jNGta?=
 =?utf-8?B?STAzTGZrVi92YVJjL2VhRE1LNVhiK1FUUzM2SXhselFYaWU1cnY5U3Z5NXk5?=
 =?utf-8?B?ZTFBaVZPaVhWSlRjdHhzajB3bDRXMDUvRG5IYTF3V3pjUDJmcE1KVmF5RzFV?=
 =?utf-8?B?NUVjMkpkS3ZFRjhHRjNXVHB4ZWVMVHU2Mm9vd3JabE12bmUzVlo2MHVqWlJz?=
 =?utf-8?B?ZkRVWnVWdnJTdGtVU1ZpR3ZJVjNiZlV0WElNZHBDZkZOYXU4bEN0SEJTaTh1?=
 =?utf-8?B?ZEYwTmVYKzFWT04xZnJRL3RTdWFJVUd1SmRHQTFiSXdvSFhodXF2SjdsZ1h0?=
 =?utf-8?B?Z2JMck9nbXlKL3Y1cWxPbHRNaXJ2dy9VOE81M0ZYUnBUQnk4dStKYk0zV0pz?=
 =?utf-8?B?MllwejNMMEM4S25oQVg0WXNiU1p5cGg4aWRRR211M0ZZRDJFTGxwbXJtRWdW?=
 =?utf-8?B?dTcrVlZCQ0ptT3libnFxKzk2UHcyRFd4MlQ1ZUpDQnhobmJnZjg3K2ZvWEYx?=
 =?utf-8?B?TTFhbXp1VEpneEVoY2hzRU9ic2xxVDJUSDhVUW50aE5uSVB2WE9YbG5ZZjFZ?=
 =?utf-8?B?M3ErV1RXWGQyRy9iNlZKY0xQSmhhbDYyRWttay9rQmRtd1M0cWFMdG9YVUty?=
 =?utf-8?B?SE92QXFsRmU0RjdyWUdtZUZ0YnNlSmFIZVN5SmVLM1lrakVWOXF0ZlJNUnYv?=
 =?utf-8?B?UFNidzJJRWcrcytqM0daQWdjYWNQSW1EQnJvUWlpU2FnZ0ppaXFJSGZVVzlV?=
 =?utf-8?B?clhSN2hDcXljcHZ0WFRxSzdkTVFGU3NWbEZrZnE0amIvZEU4QjNUdEZocFVx?=
 =?utf-8?B?bjBFd3E3Vm1JdkZDZGI0Rzl5RHVxMnBWZlQ2WTcrZDkrNUhjb0tmZFQvWWN5?=
 =?utf-8?B?OGQwL0Z4RHlEdU5vQXYyaVM5TlhKdFJFTG9GeFVNUFVEeXFnby9Uald2bzFZ?=
 =?utf-8?B?NGpGM1JDeE5scUNMN1ZjZ2orTDRNNENUNk5NVUErRWk0SmNneStnQVYyRzVk?=
 =?utf-8?B?YzNTREtBZXI3Y2EvMFNra3RHWmRuUHRabXJ1RCtWSDFvUEVRU2liUGt5NjYw?=
 =?utf-8?B?U3NJS3dSZkE2Y3RhdDBPamphMElnaXJ1WlZFSWgxYThPQkphVld5dzR5djJV?=
 =?utf-8?B?eG55MXhhcS9aRHZNbzY4eVcyV0ExaFFRYWJHUkorc0VLdnY4amtuYXYzZzEv?=
 =?utf-8?B?NlFNWW51NTZoZVE5S0h6WGdqdThwa1E3SzlpUGZRcTM2M1N0aE1EQlljS28r?=
 =?utf-8?B?NS9iSXE0UzNUN2VxSWlDUVRHMlVzaVZEcXQ0bzk1S3NCRVhTaWY4NG5yZWpV?=
 =?utf-8?Q?yCkR3KaXQeizAqGw=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	+JmKFG0DSxZ3LuKpNAtKe28JVu8JxI0W5JdqoiLEQo81zr40/HkXgb/uIXYgBl06e2RytehRFFzCNhk2+qcAheL84KeoPeBUmZVYJuMJGz1x07kX59hTGkGfbvZGtAJN1jNCLuteZp41GbLBLPXDs7L44p7CVAFWBLDJ3PJOXeZtW4lhIId675OYKVONpsKQ8100aoB5VJOAyPF++wlrHv18iZt8jAXLqc6Cgbbqh0LBK/FPfqmnkQjYVwO0RzUBsUEVhflvZHGEYbXxtCSzrfGRp9ToxVcbmQ40hBoEgXR91p1VrR7lQOzBaVnNsnyuCknsUq2PCRq9wv1vpWl4yvaX9jfOjU6HSLvqDnhEzUgzFsfeRRuER9iv/NdNOLuT+y9uuFdmWwCVwu+6YRljBBSKytbjmlrHsJm2mE1z8BmbLDPxJTZEhsRSeetO7fr47bvF8J/4qcOrSiVzR+xU1Ut3v1ZPGs89u4wJkXEMQKfAoWxv8xIHM0xlOGlyTveZHmUxazDkC657KP2zKRlmnIAByXqWpogtLtp8lTegCNrb1GkTgzawsbJgQoDNkGAAGtwra9e8frJcMDXOQ+hBk2oBxJzLyAYHlLhDrAEsPaQ=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b38f78cb-489d-4b54-9275-08de470ea9af
X-MS-Exchange-CrossTenant-AuthSource: BN8PR10MB3396.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Dec 2025 19:15:43.6467
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Xk1zN4V3y0URNUmR5rJVD0E7e0lc68mX9BoKU+DWdxdGdZ+kCKf5dSJpsUiPiPF0nEek7y7q+kxkz139CbUxNtkc5QWm/uVsq7FhlcjHoX4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR10MB6622
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_06,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 suspectscore=0
 malwarescore=0 bulkscore=0 mlxlogscore=999 phishscore=0 adultscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2512120000 definitions=main-2512290176
X-Proofpoint-ORIG-GUID: gmti-wtVgTd9H0dmbpUbeP8dm9B-Vsji
X-Proofpoint-GUID: gmti-wtVgTd9H0dmbpUbeP8dm9B-Vsji
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDE3NyBTYWx0ZWRfX/hx2sNiMTJPk
 Ki0hhjKsgwtmev0veD2in7Ti0yX5J081DobR8bqcUdQjpTEZ42Ns7SbH0U7ansp9HVP1WgZUG0m
 Qw2QgFLO8rY47diS2ca+XiSWYI64chEAI9FqMz0LkVe5oHDlkgPtqkpDF7dbdtE8Fw8xVMKadUi
 /CJr8oIbDzE/ksu8CAV+d5pVjqwC4FpKDtYGadrrGR7euBormjnGEyiXJkrRx3VTf8SjYDnmbT5
 9YRD7skCHebwJHBw0PPikqE9BF+57GSQS6wLKq9AkfjssoVD0juU3koYfG7uwjtjXGQ1YO/RKVR
 1hru8Lmqykkv2c84VsC9BvJpXvmc0NW3PyMK0psL1y8O/9pQbk6D5TUlBl/0AYIPmVM4ryAl6tw
 Mi6a01MedlK93OwCfNpNT86p3uoFqPdERzxqfXmXEE5GRx1xaiKD9k+2pjqhEzS9/xMkupfpd30
 X4AbrhKsGZvr5xVvqMEeouBUiTGUhXyl353ScdgM=
X-Authority-Analysis: v=2.4 cv=RY2dyltv c=1 sm=1 tr=0 ts=6952d365 b=1 cx=c_pps
 a=zPCbziy225d3KhSqZt3L1A==:117 a=zPCbziy225d3KhSqZt3L1A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=yBR9Qs6oAAAA:8 a=eqivdppWAAAA:8 a=NEAV23lmAAAA:8 a=eyBrbNzcM1HsVpVm4WIA:9
 a=QEXdDO2ut3YA:10 a=7C5qix1daMSKwVux_nGC:22 a=GnWAtOqT4zqNIbndlx-t:22 cc=ntf
 awl=host:12109
Subject: [oss-security] "MongoBleed" CVE-2025-14847 in many versions of
 MongoDB

[While current versions of MongoDB are not under an OSI-approved open source
  license, this bug also affects older versions which were - and there seem to
  be a lot of packages distributed under either license from a quick check of
  https://repology.org/project/mongodb/versions - apologies if anyone thinks
  this should be off-topic for oss-security.  -alan-]


https://jira.mongodb.org/browse/SERVER-115508 says:

> SUMMARY
> 
> This is a critical fix to address CVE-2025-14847.
> Upgrade to 8.2.3, 8.0.17, 7.0.28, 6.0.27, 5.0.32, or 4.4.30.
> 
> ISSUE DESCRIPTION AND IMPACT
> 
> An client-side exploit of the Server's zlib implementation can return
> uninitialized heap memory without authenticating to the server.
> We strongly recommend upgrading to a fixed version as soon as possible.
> 
> This issue affects MongoDB versions:
> 
>     MongoDB 8.2.0 through 8.2.2
>     MongoDB 8.0.0 through 8.0.16
>     MongoDB 7.0.0 through 7.0.26
>     MongoDB 6.0.0 through 6.0.26
>     MongoDB 5.0.0 through 5.0.31
>     MongoDB 4.4.0 through 4.4.29
>     All MongoDB Server v4.2 versions
>     All MongoDB Server v4.0 versions
>     All MongoDB Server v3.6 versions
> 
> WORKAROUND
> 
> We strongly suggest you upgrade immediately.
> 
> If you cannot upgrade immediately, disable zlib compression on the MongoDB
> Server by starting mongod or mongos with a networkMessageCompressors or a
> net.compression.compressors option that explicitly omits zlib.
> Example safe values include snappy,zstd or disabled
> 
> REMEDIATION
> 
> Upgrade to MongoDB 8.2.3, 8.0.17, 7.0.28, 6.0.27, 5.0.32, or 4.4.30.

More information and a proof-of-concept have been posted to:
https://github.com/joe-desimone/mongobleed
