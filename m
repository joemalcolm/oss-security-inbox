Received: (qmail 1062 invoked by uid 550); 27 Jan 2025 16:18:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19968 invoked from network); 27 Jan 2025 15:26:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2023-11-20; bh=mzuCv9hlAN2r8OUvY5IwuW5xn87bGFqWy9gsS86FVTk=; b=
	Nhn3hwO1u8iBlauwp/TdffqvLA4AUR5BB7/buIW0Bl0CXhtPdzXy7ZUtYu7ULmr6
	2AUm29RaOH89E2cGiiBn76JTZ5HMyp8401J7lYVH8Ci/I6qkvY3ZXb1TthA7gN6K
	O4c3VPiDvelCrheRy2qtue4RP+0Xh8hrX8M2cY/oFkfEvTsNawbPN6vb6jWaFcGC
	E/9GtmozaH6hAUfsT+ij7Nv0QRy/b02p1O3SEq5Wj4WQciGnE+54XpjmVJ5AY3aT
	VIxgFB1fTt6ZiWfydi0hRwsUWi2APuomgCNZKKHsfZFp8rtKMQgTsnQYOfe1bZmI
	dX0K10s1R94fUj7k+Sd17A==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AeP6cyT/LbpMAPK7IK2dGIWylUmT8k7rlcaYKGVprf9kta9tACkcZ3GEvWgr7PQcu2/999a7tcgCuaa2s36pNnpmtCepUhbioiJu/q8iTWe9C7zaq4DzEWLYJlZepaAVpFiN4lmtl1TTytltsV3gB5FIHdSyXh5FUp0IgTEMwB5zQbq4EpYVVatAHk6nKW5jcEjijoHtrRzCa62Udo959mVXk45mtXs9yX8fgZUdfwpy9TwZ9y4SW14Mc1M+83usCVKEsl9n8KlyPaA27fq3GhRcstzq/AZ85EhhRrnwfuJp0+XqlXYBmZxgblxUeugG9PwQc144e+quNMnjFYJu7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mzuCv9hlAN2r8OUvY5IwuW5xn87bGFqWy9gsS86FVTk=;
 b=UAtfv/KS0Ai0uSsGHAQPxSdBK/Eas4BokYVlk6ncIExvjRYDZRHzSsY59a7i2+FBCwCc6cp9KkgIGPlGCuW02vEp6+CvMtQb043+ekiilxtocGHmDYYrPUJuYAQCJNYZx0QO9yzQshpnT/3XbT3L+d4pNUOldshNUFyLtXqX0IaKSor/OWV7ACjr29OMqEfKWpj8JQ49evkzEy/TU/yxi+wtvT+bbWXkPjCcO+jQTVW5W8VASeZh4H3dtBDViv5Jb4CyQKktLVXYCriaSNqHRdc9i8zula7yGp00XiDF++vEATZ4KMYKueifiqDI1bymMQcs0t5UYVri2iTxg62wrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mzuCv9hlAN2r8OUvY5IwuW5xn87bGFqWy9gsS86FVTk=;
 b=TYBMVz4UEZKyDW4DtNTqkOpPEQjc2vW+ikSbXqnk1pj9a1wUScz561plshhVmLlN4DQ73etba3WumU0+fRR3oOpFmNSxhfy+XeiNiHtUT+G/HPKg032aARpRVzieRyLvawoydh/3rmGygFT07ACJjmc6Di96i1h8xPjWkkpAKYc=
Message-ID: <8c93d016-0325-41b7-86b6-1cfd7a8e7c18@oracle.com>
Date: Mon, 27 Jan 2025 07:26:37 -0800
User-Agent: Mozilla Thunderbird
To: Solar Designer <solar@openwall.com>, oss-security@lists.openwall.com
References: <20250123024222.GA16803@openwall.com>
 <31A9EE0D-3415-46F5-BDC0-8AF758D9A0AC@edvina.net>
 <5c74b424-0c6d-49e8-b53e-bd637a1f9ebb@oracle.com>
 <20250123235736.GA22781@openwall.com>
 <e6c0aa51-2e58-40ed-965d-3e0328ef6fa9@linuxfromscratch.org>
 <20250125021738.GA28804@openwall.com>
Content-Language: en-US
From: Bruce Lowenthal <bruce.lowenthal@oracle.com>
Autocrypt: addr=bruce.lowenthal@oracle.com; keydata=
 xsBNBF2uGv0BCAC5vvtU2WmgMRCGDUkN47AsQ67VFIytonNoFpKrBrdFwhT/nVz+XurKi07r
 5Ib55dg+5r/lYlAE2GAE0FGipK1t9Iw9SB5rF0kgsPpjxvDAsdV4Fr3wVplQj5hQverHMKYp
 O/VSAF3JMjXIb2xn/Nms98Kjbb3RG9okJCCJzfqa5cHwMH8/td05MNeQLVG7qAnYheilgU86
 P1xrkAn/2o35Llsqv6qQg8/P6+HglC+thZv+mVzKzShTGfE/GgRnCY7CMQfeU2iUkRvevEZ4
 mvQZNoRTYbP7I478p/NC0QqlcxIUy9kYTUz6lTNi4i1rRipQraGB4Gb2bQNpczJ9v/XtABEB
 AAHNLEJydWNlIExvd2VudGhhbCA8YnJ1Y2UubG93ZW50aGFsQG9yYWNsZS5jb20+wsCUBBMB
 CAA+FiEERSaMsMd3fb9vyjrf2NN4zmGSE0UFAmZCZqACGwMFCQxWBnMFCwkIBwIGFQoJCAsC
 BBYCAwECHgECF4AACgkQ2NN4zmGSE0Wiswf9Eg/YgqwpfXqxPAI47JcYRlimZMmXVNYS2xuD
 NhJi90a4slEUCMl7tqrj+4YaLdBKxDzWi5uU403x5bd3IdlyLBfkFiam4CDqAhJoivSa8DQc
 ew8spHm/ctpLs3ZngwgcLxinVnhezEE3ewZrKPVR7QV/EUFPhRYjd5Sy7p50lXHuJnx+nh43
 3BmnlMQ/ulAFSgJC5OATFrBI3jBT8DQLar/dK/xLF3VVylnRBBKIN9NIWm+ZCIoMxkcaCJwr
 FwPoeD1YGSXqJxls7Rtasl5lOINZvrduzyPvw0OW2fqfGqDyqI3LrZ94VpD3KrBDo6qMUV0a
 7pweOPjpcRA600ZJ387ATQRdrhr9AQgA2wIaVrIYNgJooDeSeq6ltMmRMcrnZ5FQhmtsuNKs
 puvN83qDXWDOuUetaAUIx1Hp7gKXpGMSffdbczLDV9GIM4if7OHEp2bC64IjV4uy/gIOZ/QE
 HStRiJoMp8Zg/TgZppv70756YNxTnn2CjSO1crj2ccbc+hmL88hEh3seoPw0b4QEq8exV9Oo
 PlD/8/64VD2LD5zE9COSgf18cDU7OrWR0MOw7237nbOzK8JEgE2LRUvyPhv0UDLX5jlW3F7Z
 PHme7a3lEGyTrh0yUqVRid3fU2LITnehVrVgO2wLf/dTx4k7/L/C04XoHmknOB/DjChXjILl
 BJRfyX5KzAafoQARAQABwsB8BBgBCAAmFiEERSaMsMd3fb9vyjrf2NN4zmGSE0UFAmZCZqAC
 GwwFCQxWBnMACgkQ2NN4zmGSE0WK5gf+ItfJz8Od3E48Vt9q5fCAnRQG24Lcm7lDXcwnQqaP
 gMyST4IWbxZ+wBOs+6t57paoYobOmPTId4urzSiCoENC79B2KXABpi6OL3p2/ht/Khf+3GtB
 j+BYknm+Ryn5e2Z/BcYosXyEc16L5nVPNsgL5oFKOLHbcqLxElw+JgdGx2MkYBll0o0u0R2l
 WDymUH+OAkz12qcs9lAuHLyIH7laXhXAgBxzuk9v8/CQtAgsyfag4K1lf0b9o3xAdOXN9gM7
 S2SRhcwVuRY2s9oQJUClPjLwRKLvHH4KgcsLETxA/PbyRZrBRj0MMr8XHnzVBIxRlg3DKdQ9
 fLV6nH0VIlZpFA==
In-Reply-To: <20250125021738.GA28804@openwall.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0201.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::26) To PH0PR10MB4744.namprd10.prod.outlook.com
 (2603:10b6:510:3c::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR10MB4744:EE_|PH7PR10MB5831:EE_
X-MS-Office365-Filtering-Correlation-Id: e63f9a24-a0e1-48eb-533b-08dd3ee6fe54
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|10070799003|366016|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?c2czZlVQMlhNQ0g1SGpyemp3NTZMdHlaZzRsck42Y3JOclRGak5USFZyRXdo?=
 =?utf-8?B?MDlvem1HTEFGaFE0dFQvT0N0aHNRa1F0ajJQeUR1QTJKMEdIdUh3ODhaMTk4?=
 =?utf-8?B?d2Y1Zmt6WW1qbkh3MlEzZ3FUcS9BZm41SW1yVVdjN1RuTU5SSWc5MXBVV0FF?=
 =?utf-8?B?QU5TczJDTENrL3JNRkdYdk13bTFHUXZMOTBFcVBudm9CUWNaOWYrWHlnbWtj?=
 =?utf-8?B?Tkp0L21TeldhSDFKbW9YRmJ2a1NmbGZIckpzaFFXWFZLcXlrbjNqdU5lOVZZ?=
 =?utf-8?B?cDY3MlRwWVNURFI5SDFKQ0NzUXZFcGxRTlByUHczV0Rna3NFbTU2ZjJDNTFy?=
 =?utf-8?B?YnY5cnVIS2paVzBPRDROWmViMWhWMUdZUDdHdEhUeStva2ZsbGkrUFF6K3d6?=
 =?utf-8?B?dTNZMTlqWW9BNUVEa3dQUHdHZWxWaVpVVytRZEZESjhDUkpDNDZDVmplajNW?=
 =?utf-8?B?YWZsazhlblYxV0RjM3o2cWNYMXhsRUdRZ3dsT0J2Y1BmSVdIb25PRVpqM1Fl?=
 =?utf-8?B?aFZQeHllM0UrYUZmRmtuN3Vkc05URHpOREYvWlhqdGt3d21nZVdBYSs4cWg2?=
 =?utf-8?B?UFJBTWVvWEQzdS9XZ0c2azJqQkVDSWlSRk4wSU1Vck1rQ21id3JnVURvUzJr?=
 =?utf-8?B?cDVpbTAza3RCbkFNNVhVRVRCUy9xeVFKd1RJM0dPdTdyVGVaS2hPTEJTZ21U?=
 =?utf-8?B?cjV0ODdCeU9VZlFTeE1kRjhBYnRwTXNhdHZqNS9hejJ3WFlwTE1mTTk1QUtj?=
 =?utf-8?B?RXEwbCszNjNjR2ROOXRsSWR1d00xUWNYWlY3N1JBQkt2eFh6eGQvdGpPTWRH?=
 =?utf-8?B?UWxzUXZIRWh5aDNYRU5oNHVhY2FMb0VVSEVocHRKNTgvWW9ZUEZRM0VQL3hH?=
 =?utf-8?B?dGRxVU9FOVdtcHMvclI4YWsrb3MwWVArNHQzbHNOYVRWM0ExOHBjSWNQUEpx?=
 =?utf-8?B?UmlMd20yOW9tblFkR2Y2SGlrQnJyRk1YSlFHdFhiNnBsL1V5V0g2eXV2T0RI?=
 =?utf-8?B?RzY0dUxpek02UUFjOEhqbm40dWREQ3lFajNLcndPMDJoZGFQQ1IrcnhDU244?=
 =?utf-8?B?RHJpckhNdHRzcmFJbTROejQvUDZObkdhQTd6TTZRZ3hSeFFiYlBIWWtRWU1r?=
 =?utf-8?B?dk9NdXJVdFZVVXl1TEJkNzZPQ2daQ2FNYStQNVNDUUJrWEZudlE2NVhicThL?=
 =?utf-8?B?S3VGS1l3RGVmc09NV3ZRdEZ6QmdpTzNMMXNOWkVma0JocW5EbjZtM3FUWGVM?=
 =?utf-8?B?QzVPb29CbjBrUGhLbU9qdERBbmlyQzV3cjhEY0NoYlVPUkZSWGMrZjcyOUMx?=
 =?utf-8?B?eTIwckF2d3dqYW1scWJBcEhNdTJlTy9wRjhVU0M4MndqSERDVmgxazVMcS9D?=
 =?utf-8?B?R3ZDNjN0a2xnaWJIdGhPZWRLejFidUQ5d2ZGQm03dWlRbGk4R3FOaFdkcXhI?=
 =?utf-8?B?UCt1REdJaVVaLzJ3ZTQ4eUFOdUdaSndMS05WTjdWY3NuaWpQajJiMFNSSUI0?=
 =?utf-8?B?ajFEZ3FneXp6b3pKVW52KzEwcElLU2FienMzK1pmUGpzN0ozaGFqMnpqNFhP?=
 =?utf-8?B?VFk2d2FGRXkydFNrYVdKdTlTaTFsZWQ5Uzk0VFNQREozRmxKTFpELzE2TTdC?=
 =?utf-8?B?b1QvUEFEaEFmWndMci9ZK1RjZHNoK0ZaajdaYUZPc2orTDdvcjNncEpEdzBp?=
 =?utf-8?B?N2tGQ2NHOUtDYm1DQXVsWFFoZzhJQTlIc3BrZEt3Mjk3N0dxZGtoeUZVSjQw?=
 =?utf-8?B?c0tJcVVOdFRTZGRKRlNBWXoxZk5vbStQMythSnBqUjJhaVFCbnRadlFpOUhy?=
 =?utf-8?B?dnNzcy9DVHlYbS9uZDhJQTY5SWtRU3JlVXhmNUdMQ3hoUnptMEcvdkhUb3pp?=
 =?utf-8?Q?LX8lP3ua/cBKL?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB4744.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(10070799003)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?WWg0Sk1GbDhOWGpSVUhrOEtFQ0xHSDNKQ1F5ZzlWV0NwaWIyMjFkSG5iOEJT?=
 =?utf-8?B?QUZTODV5Tjc4RWExNHRjMU9nUjlNejkxc0R0MXFaSnpNTlhhN3p5UkZueU10?=
 =?utf-8?B?QWc5YWNwOWhUR003UE5aWGJUWHd5Z3VEUFRyNzA2T2ZLdDkrTHVhM3VOWHVt?=
 =?utf-8?B?N3B2dTVBMHlHU2d3d0JvdXBKRFFoSmF2bGNCVnRLN3N0ZWpHUzZDU1ZoWEZY?=
 =?utf-8?B?TFlRNDJNcGpkakpQTHRiT251UXp1TzZzbnJhU0F5Rmlzb1dybVVKSXJRQTVR?=
 =?utf-8?B?RDM0MldVYjhtajFwcHkyWlYvZTNIYzV5OVJRS1l1czdnc1NSdVp5Yk9DeEpk?=
 =?utf-8?B?ZVdDbmI5L2RkQUFwUkhBd1FtUnR1VkRhSkl0azNoZHBpeTJ4WVpuSGo5RXZY?=
 =?utf-8?B?MEJjeGxnVkx2dERBSGZRWFVrOVA2L3lqVUY3UnJoNVdGYUxuTzdDRkwxWFJt?=
 =?utf-8?B?WHd3b0hNM3dlMzJnWlJxUkFKOWxHZlNSb0ZBTFhEdUpuWHBsd3Y2aWtsQmtO?=
 =?utf-8?B?WkttQ29QMHlwYXpvRWZMbkJJS1JoMUdOMjZsNjB2S2JpT3gyVGhlOWJXaUth?=
 =?utf-8?B?aENaR3MzZE5tNGpBUkVzM1FFYmxuUCtBY2pqOFI5QUJ5S2lJdGF5bWRxcjJ4?=
 =?utf-8?B?U2VWKzZ5UkxYS2hxeDVtcXdRMWpWL3pZMEljdjlpT3lEM2JXQ2FlSVR5aVRu?=
 =?utf-8?B?ZWthMlloL0JVOC9kTHo1UG95dVMwT0tjWHZFcXlwZXF4RWVUUjNzelVTSEp6?=
 =?utf-8?B?V0JiUWxpSHZScDVHZE5NUC9sSTBRckl5YU9TTXFGOXh2WFVSeHVOMjE3TTZn?=
 =?utf-8?B?KzhHTGV2WjJGYWZITk95UXI3NEhtWngyR0xEVnZLTlR4VVRNZ3pJNERKcnRs?=
 =?utf-8?B?YlZHNGliMzkyZ0hueTc2T2IrMHZUbXF0eG9kM0Y2djVFOHhhYkNMeHo4bm9V?=
 =?utf-8?B?aUJIY2pRcTFNd0M4d2FPRmpIcTFZSWFXbG9zbjV6MXZwU3Jwbll5R2xscFdN?=
 =?utf-8?B?YVFSVGMzc09EN0Vpb1RUclkybTNQN1FRam55SlpRZ0FncGJZeWZRZG5PODBa?=
 =?utf-8?B?YjBuLzdUaWdFWVFQSS9oQTFZUEVBTUNJQ0xxR044VzFQSnRhSkVWNjgwNG5h?=
 =?utf-8?B?TXZsVmFmSXpsT0prRGNpZXlRekFRLzZ1bWw1UFZTOHJRTjBTNGlnRjdObjBG?=
 =?utf-8?B?aFJWd3gvWUNvdnZpMWk4MFFXQWFseDZicU5hT3plaVlRRWlPSUF3eWRIYlM1?=
 =?utf-8?B?UTlwQUQ2YzJBclltVlJJa0VvcnoreloyVE1jZzU2b2JlcVd6aWFqWkE1a3ZG?=
 =?utf-8?B?T1dtVVdJYXc2SzV1WGZPVmwxM0xuQk1lTTlreC9iWVg4NVozYytZMGhjalFP?=
 =?utf-8?B?eG40M1VYRWRteTgzTllBKy93SkpIbmpSQXpyN1JFRi95UEVldWk1akRJNXF6?=
 =?utf-8?B?c3Jyc214Q1Z0bFI4USttNWRlUGRSeU5NcUpwL0l5ZUx1SFRSQVhOSCtrYXZJ?=
 =?utf-8?B?VTF4Z1U5Z1F1NXIvMWFON0Y3Ny9tOWJZVkJvRVZLd0pFYzY5U0ZRVklTNlpT?=
 =?utf-8?B?bU1RUmwrazFXMldQbjY3ZDdRcmJGWmFJTTc5WlBUVmdPelo2d0VsaDFEZzNa?=
 =?utf-8?B?M2UxV1h1ZXlmQlFUSjlIOVVaUkZGVlVDMDdianliRVJmNVU2N1BqbDQzZks5?=
 =?utf-8?B?Vk12QUhscGFaUlZzMkpjZzRoTjFab0FCbGUvQ21jbGFLZzhzWmpRZ3pRYWR5?=
 =?utf-8?B?a2FneHg3dWpWd3l2TnFIeDViRDZ2VzM4bUNzYjRhZzBoVnBpR3FodThlVjlL?=
 =?utf-8?B?dFAyMng2bTJGeUhaZTAwWk1ORVFMS3Y1NHlwTXR6ZnNWZk1WMU9qQmFFS3Nk?=
 =?utf-8?B?cUFTa0w1bHhFd251Ty9YM2x1OUtJQ3JYd1QzOUVkSFA3amw4bjBVU0ppMHhS?=
 =?utf-8?B?S2dObHh1OFU4V3dHSkVjVy8rai90N09vQmV2S3Z5MmhPUGwwc3lxUEJjVktZ?=
 =?utf-8?B?UnNJZVh4bHRSSGU4T3FsWE9PS1pYeFJKVXZmQTFITzhXWVlLRk5CNWl5RVQ0?=
 =?utf-8?B?SlNubFZrY2FONTNncTIvS0JmaVh6cldaK1ROVDlLSWJaZnFvNGtXbVo0ejdx?=
 =?utf-8?B?L3JQRUxGUG9NN0FwaWlyaDM4NG1xU1dtZXo0dW9pZktqOVRTcWhXMjVvM1lE?=
 =?utf-8?Q?fDhC6YBTuuaFFA2eJy7kKto=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	TeVZAPsRZ5Z8l4ghzYuPsR+ULZ+LFv3xuVAhtXrsEgWIMdLauMSVBcqdJ4A+hhO1+sLbeP6lGN7Ce+er/U10bhF+aNu/hdm3GDisAEVq1XIW/FQWUrpxFM8g0UmjRPErPs93zpWLBmC1KbynNPScjB+Iczmf/xpWHyQXPoaEdTdXhCQ31CYf5QfEZNxi6tsGy9RwHurkqaQfp59ERXyUGr4qbVYR1ACSU2+NcWPB15MPLSTmu75J0rV85lEmEGYgx0JJ+1Yb53PQhW+mSAtpy2dvdxeHe6bybHVnPHmTNFxuATcYZtMYopTGRjGJBnPqhLOjgDtAirx/J06xuDZVHqFKhvCErrD+xmF96YBfUKDxhocv5b7pQpeHUPVkuivUcL7a+8hTrUzggNjO8E6Ro2UglNrox4pgnkzOFQcl92G6C6rYVX4qqiWxl5IwcGXXKCoBxllbNq0U2Zd728/HWcWF5p53Ur2R7Q4AOiquZbMLgKQIPfNNn7SDWUtTVt0aKAyQn6O1zqkhMtDVLlBKG6MrNUipFEgBMltakbtMm1WwlpHxR7SD3NYCSWObMJ3iHuW45yIfsYByaOCr9QfBdcEQWxO++8J3mniphXuDyak=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e63f9a24-a0e1-48eb-533b-08dd3ee6fe54
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB4744.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2025 15:26:38.8404
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b92LfsgjUKIe/kG6gXBhyEtkM3fOC9FtFdz7g/gAi62RE9lfnGudZhnUnQXR96fuAxzZ5zqyD1LizP51TQYe3htZBlcooO8xG5nOotD/hjk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR10MB5831
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-27_07,2025-01-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 bulkscore=0 suspectscore=0
 mlxlogscore=999 phishscore=0 adultscore=0 mlxscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2411120000
 definitions=main-2501270123
X-Proofpoint-ORIG-GUID: ityDK7i-kYPDiXulF-h_z1OETgvfAQVe
X-Proofpoint-GUID: ityDK7i-kYPDiXulF-h_z1OETgvfAQVe
Subject: Re: [oss-security] Re: [External] : Fwd: [oss-security] Oracle
 January 2025 Critical Patch Update

This is fine but it is much better if oss-security can process our CSAF 
machine readable documents.

I'd be willing to have emails sent to you with a CSAF attachment or CSAF 
attachments sent via some other agreed mechanism if you like.

Bruce
-----

On 1/24/25 6:17 PM, Solar Designer wrote:
> On Thu, Jan 23, 2025 at 06:08:18PM -0600, Douglas R. Reno wrote:
>> As a maintainer of Linux From Scratch and the person in charge of
>> security there, I monitor this list
>> as well as a few others. Every quarter we also check the Oracle Critical
>> Product Update pages
>> for vulnerabilities pertaining to MySQL and Java SE (which also impact
>> OpenJDK).
>>
>> I'd like to volunteer to bring these to oss-security quarterly since I
>> already check these
>> every quarter, I could do it after my initial reading!
> Yes, please do.  Can you also include VirtualBox while you're at it?
>
> Thank you very much, Douglas!
>
> Alexander
