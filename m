Received: (qmail 16016 invoked by uid 550); 23 Jan 2025 16:59:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13470 invoked from network); 23 Jan 2025 14:48:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=corp-2023-11-20; bh=40UEaO0c9gxhLWpi3z
	i2TgErjPpwS5+Lj03NIs2c2ug=; b=LzIw28NjmdvawXw18m7O1QBb/+tqwMXINN
	XXk9SMqmsa6cdlxQjJ2EbgzWFkRGVgjQxzvc5wZ3Yd1LTmlCoZKyCeKL8YQdApcE
	RUor8Yoh8f86unkdr7cwJxGRxOxyFFEca0Q6GarZDP80dJARqc9i+8iiK8kzKuWD
	fQo/H0/1DAcSUVQa5vGS+mzF7dCAXZNGZQtmImp7LZjOVTCLEJ5VhBOEnUNBnfpX
	Q6JgO2ejLtWkt25y/F1s9ZXbOVNWTAluMl6wqUSg7eFMqPAF3JEXLpYKMkviwZeW
	YSt1JnSEfG56fzUf2wwbsYzfb75NfKUTpMxQPT0cLnM0gICOXxYg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y4d6TshT1C6GSpVkPujcQfVEI+yBNiqmkH6lqz+55rWxcDwzpmNLU1MEQDxyJEoU7sRUDh167xSkEpiNh7FqB/Vh4UkJezJHyg8pH0f438X4N7UWKlgkDzP+aSC7PPC8QnNqdle4IDLfPckeelJiQnsCbVqRa9ZRRM3hT1ClJW462UVAEgeiT4DVCSij3+B/ljnqqW38YTzpgR951ExjwuZUhlfFkorHjEP+Jq3BPKL3VEWzH+ZMpFXANbZ4NbiHRwzzXgO7P/RHV11LZbLV+UeMTVOE1QIDOY1RSfemSASkQ/UCi3MrW9IiAy/Hq2ir8tpNIQRCk4p/B5F1SXzpeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=40UEaO0c9gxhLWpi3zi2TgErjPpwS5+Lj03NIs2c2ug=;
 b=p0HqGJU64l3XbVD5+D111si8c7Gok1v/kv0681bV2A/Ei5sLN1eUVcZdS1GCoWnOlUdmcW34wgtcbRabPh+IfSCJOZg5OgA+ChQaw0eK4d+Rn4e06iaAa/sSHEKAfdvBuFwlCW9k7YHfuukD17EmyWp4RgnbsOI7bEN3aBo+mU8HNmxQmfoOFoKwt6eNyQSPUnU6daPi7sFgp/AgLQMDAMy2axbKu7HIKPswwuOCKMKecCts4BWLARbyANfW75dlcQElk/fmuOmkQPmri7lyIrCa3OLzV9oIod7BCg+HRfOJxm9/z/+uan1/d+69x0uFqMUl4zrM6eat4yIIJl4lFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=40UEaO0c9gxhLWpi3zi2TgErjPpwS5+Lj03NIs2c2ug=;
 b=rNRtOWRWQjLuH+HRkRNHyhwsOXC42dejPnwzo01K4coBgKn4QAVboJOMTee2ZkzvKHv55u9JGe/xF+jhQPpr5PGIGwe4mtAzb4w3dQtYuKfgQHgdwOAknt9VM8Lewf3lBkiz1jq+LG7Dr9pcFNKmXjyJwpCCJPxW/Ucuspm9ikA=
Content-Type: multipart/alternative;
 boundary="------------iFBD4tTtJhrtx3hBOTjBL13B"
Message-ID: <5c74b424-0c6d-49e8-b53e-bd637a1f9ebb@oracle.com>
Date: Thu, 23 Jan 2025 06:47:29 -0800
User-Agent: Mozilla Thunderbird
To: "Olle E. Johansson" <oej@edvina.net>
References: <20250123024222.GA16803@openwall.com>
 <31A9EE0D-3415-46F5-BDC0-8AF758D9A0AC@edvina.net>
Content-Language: en-US
Cc: Solar Designer <solar@openwall.com>, oss-security@lists.openwall.com
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
In-Reply-To: <20250123024222.GA16803@openwall.com>
X-ClientProxiedBy: SJ0PR03CA0200.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::25) To SJ0PR10MB4749.namprd10.prod.outlook.com
 (2603:10b6:a03:2da::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR10MB4749:EE_|PH0PR10MB6959:EE_
X-MS-Office365-Filtering-Correlation-Id: 72138418-9235-4265-903a-08dd3bbcdc8e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|366016|10070799003|8096899003|13003099007;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?c3VEdXNnNzhaaGZZcGlITm9Zdzg0K1BSdXh4Q0NsKzlJV1FkL3JjcHBQZUNT?=
 =?utf-8?B?NEN4bmNTWGpKUEI5ZnQ5azlFT0llaXkzb1lsTDZqaG5CMDFFWDVpZzZWZ2F3?=
 =?utf-8?B?UDdraVBlRnduZnBZM0ZNRlRjN1VJZmxFdWViSHZsQ01WZlpTUEo2UWRVdmZR?=
 =?utf-8?B?WCtFUXNXeWlhSUgrbC9zUjdEaFNYVlFiczNZVzF0T2NEdUUzWEpZSmV1MW5Z?=
 =?utf-8?B?ekoxZ1JWZVdSWUpyTGtxU0xocldLaHVkdnladXljVHpnMlpUdGtjMHVWNXZS?=
 =?utf-8?B?Z2R6RUxFTUhVUFVNK01JWFowTDNtZm0weVM3VVp6MktIakZDb2p5b3E3WlpN?=
 =?utf-8?B?UjVEbVN0OHNXQlY1YTV1NDdQUU1PREp4c0hNVmpveSszbUJ6emxmSWloejdx?=
 =?utf-8?B?dTM1c0YrTUNuMkVHc2V1VG9jKy9OZzRteExJbTVpMDZ3WHNJd2VKM2NnV3Ji?=
 =?utf-8?B?Nkcxcis1TEVSampDcHZPamZzTXREUCtkRjc4NDhJZHdRaTdKT2tHRzdwQWpj?=
 =?utf-8?B?L1pFTTJPeGduTnNyS0g2dGhPSFQ0SUloUTlyQWpIQlZIRkpnSkkzU2JWV1pS?=
 =?utf-8?B?WVBLQUZ0S09jcnBOTlpWN3RCeHFHZDgzZ1NROTIwVC82MzMzSVpGSFI4djQv?=
 =?utf-8?B?dHNWbFh2cllwcmhrZTB2dFJRa01RNGptbWF0ODl4cDVUc0FLOFFVTVFaYy9u?=
 =?utf-8?B?Q3FidnQxVSs5U2NCUExUNjdpbDlBalJjc3ZqVWlOZFZtcXJoajFXTkFUbDg3?=
 =?utf-8?B?dkk3c2xZNHp3UDFVZlJGdjJDOWJucUU4TjhNVTBtQ1ZKcnV1cUtXK3BPakh3?=
 =?utf-8?B?SnI4SytCVnhyUDh2MHB6K1BESzdwNXRRTU1jQXpKQmtkcFpjOU5SLzdObVBm?=
 =?utf-8?B?dXFXVEhsNlBQT212dnp5a0pTajlPZHpldklNbHBJQVU0NVQyTTh2a2xSR1RF?=
 =?utf-8?B?dWlRanJIbHE2clFMbXJQUzVNd2FwNDIvalBzdi9pdzROZkdXVFhidGRxbmlh?=
 =?utf-8?B?SFRUYkJCZG9JVlM0SWFTKzY3bmVVQ01nNG1OYzVldURlc0xBazhEY1grVUtX?=
 =?utf-8?B?QTNSbm9DMEpaZ0pCbjdPRUpFaEg4MytQYkNIMU81VG96TEozNXphY3hRdDR0?=
 =?utf-8?B?ZGcwdXIwUVp5b3BqL1pIakxqZXJDcnRicTJFdXNTVW5SRWlsYlZqU2JTNStn?=
 =?utf-8?B?QTh4bFJpRkpBL0o3QjNJaW9YZG5NOTRxU2dzNGF0S1c5U2xxU1JVQktRRU1M?=
 =?utf-8?B?Tkhrbm1VbjY4YlJ6c1FobkxIdWdJVWNmTHpwTUhvRURYQ2I4ZTNEZTJQK3RZ?=
 =?utf-8?B?bmRyc0loMmJjd3ZCbFhrME5qQ0treEZKNGJYbm5sME9MRUFaSXFSbWhJTzF3?=
 =?utf-8?B?ZzBhdUZGRDFOV0NPNkhNV2tEUEJEQko2ZWVjWS9yQXV3WEE2aWt5MHU5aHE0?=
 =?utf-8?B?WkRXb1pPZVd4eU9QbDJ0U01hWXJqL09zM00rc1lPV205Sk9wNmU1YnNvd3V6?=
 =?utf-8?B?MGd5dVlaYUhFT2I3WjhxL0NmZXlQc1NVSjg3SWxTUVMzaFFhUmU3amZBbVJN?=
 =?utf-8?B?R0hTaXpzbWs0OVgrbnlTYVdFK1NKVVIwaFJvVHd6MDN5SnFpVXNjb2F2elo4?=
 =?utf-8?B?NlcrM1hQcXJrWktyNEwyS0V4YW91WG0xQk1VOEg1WW1KZlowZ2g4Y1Y2bHFK?=
 =?utf-8?B?d3ZuWVEyNUM1TzJkQUIrdHVXNUJmbzNzV1VIVEgzRGx6Tk9Idk55b1kwdVUz?=
 =?utf-8?B?Z2xNeWcvdWRzM3BRWHhzd0toK1pzc3oxZmZmQlhiZ25CVnpvWHBSRkxMYUFH?=
 =?utf-8?B?eW11bmMzbm5JZ3FrVDlGQT09?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR10MB4749.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(10070799003)(8096899003)(13003099007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Y091QVNpOHE4dkxQa2J1NzdoVENMczFQVGVwZ0xxNDNEYjN0ZUMwc3FHQWdv?=
 =?utf-8?B?VzNkSHVvQmR5N1Iwd0VpZzQ3Z2tHYVhocEZYcHpYM0lhTUZ3N2lZMTJDaE8z?=
 =?utf-8?B?RjFodSs3WENHT0ZaWVZqbzhlL3VCMzA1cUlCZmlVOEhNUUgwUVdOL1U5bGpK?=
 =?utf-8?B?VG1hS0VOQmZUYXY4VFFsbWdsa0o4K0hyQXlIejV2SEVHNFpvTTNtRnlackhn?=
 =?utf-8?B?V1ZZdXdEa00xMHo0aDFDdVRhN2RHcmljTzNsS0VadGxDMzFRK2QxWkpuZUFP?=
 =?utf-8?B?RTM4MDBPc1J6YXY4K2dCMnA1L2JkS2R3K0hFd2JBdTBEWHZOa3VvV3huZFJh?=
 =?utf-8?B?dXZ0U1BlTStFOFkxWU1FTkpnbUQxd010Wk9LVU9rSGVFaHdQVUxsT09iMTZJ?=
 =?utf-8?B?QjI1WXB3a3FUc3JJQWNwMmVUMGlJbFlVZ0xQQ2pIVkQ2T09OQ0VXYW1ETDBL?=
 =?utf-8?B?Y2JycndkMXdCYStTWGFEUGZIVHd4L0hweWE5clRxZVdXUThRcjhUUG9VRVQ4?=
 =?utf-8?B?VHhzclpmN3ArSjZmTWEyOEJmUG8yZmtNT3ZoN00yc3FCSUd0U0R2SjVVN2FO?=
 =?utf-8?B?VEliWjZxanFWZHZQLzVrczZ5Yk43cFhJWGc4MVlpNHBRRjRvVWJNcUw3WWVH?=
 =?utf-8?B?eXdQTDFqUWdORWRZYk5DWHQ1QnJucVgvVjNkMlFZL3EyM2dNdDlEeVBrTm9i?=
 =?utf-8?B?UjN0WHp6dUYvZEIrcVl1YXF4cnhKZnBhUVZGeTc1ZUE2R3pTUngvUVY2amgw?=
 =?utf-8?B?NVFCaENjTmpXT21LdzI1cGNoYVk2WXUrdjJoY2k0QUNlY1hjMnRxdnBXRXha?=
 =?utf-8?B?bjJLVGVqL3g4TnJhVGxySHN6RlJrL1p6TkEvK09mTXpjSkJ5TmFKbTI5N0Zt?=
 =?utf-8?B?TmxlcHZWaDNLS0t4bmdKOHJNY2ZwMzdMOUVEY3YwK2FoU2kwSGo5bUFRckk1?=
 =?utf-8?B?OUhOWFZsaEtvSHV2ODdobmFiUDdNVkJTaVV2ZE9rUnFMVE4veHUxL0ZsV2pX?=
 =?utf-8?B?SFZIYW1aaFN5d2s3WmpNd0ttaHJ4akNoV2JrL1ZSaGREUGlXSkdiVEVKTVk2?=
 =?utf-8?B?U1IyVjRwbEVwcGxrK3RscEZhd3UyclRhOEdmZitqc0FsQ29OV2JsaldxM0hP?=
 =?utf-8?B?czh6dllzNHd1UGp0UnB2bU9udEc1U0FGSkppbUJ3VWFad0tEZXZIbEV0TEQ5?=
 =?utf-8?B?NkxGRGFkWGNZaUcrVkZhTkxkbmR0alA0akEraUdDbXc0RSswOHh3eFk1RmVi?=
 =?utf-8?B?MWVOaXZZM3dhU1BxN2tzR2ZzaXUza3lJaDRZc3FKOThmamtKV2RwU3VORnVi?=
 =?utf-8?B?cGFyRGFIRzQ2WUhPWWxNZ05RaXhqWlN5RWh2OHJlY1lKRGF4dk4xOFQreVZy?=
 =?utf-8?B?L29GMVBGdnRlZTkxd3VBUC85Q0FHcklOSE5oTVhtNjV1eDUvVWlBcENNbEw0?=
 =?utf-8?B?aUdWakFWSzJpc2wxa0pKbml0SSs0QW5jc2JZYkkrek54NTFGVldQb0ZhN2pl?=
 =?utf-8?B?YThhVzVHMkZINVpLY1Frblord2tLbG1UcHpxRFZDWjJsMldrMEM1ZFhmTjlX?=
 =?utf-8?B?TVI3WWlDL25KanZyWmtvMm8wU0tGNjE4eGZxWDQxYzVvWVFaZEJDeEd2UElO?=
 =?utf-8?B?dGllU3lVNGxkcGUzRGFBVG93NGF0eEthcmNCVHp3UE1jeXA5SGVlbmhHVFZB?=
 =?utf-8?B?bittbmtjamY3bFhHY0ZTZVhPaGNtSFA0bG8zTy9MTXJPWXFUWTJzeEZoSzNE?=
 =?utf-8?B?UlNoc00yYWt3OVFWUFBMRk1sT01OSGRMcnJuNUlFVm44NmJ3N283SVNqOFVt?=
 =?utf-8?B?SEtqV2lRck1iWER1d1JZT3IvMmsrZ2VhMHVWbURpWUI2aUI5bWVSUFdvQ2dD?=
 =?utf-8?B?ZEVQQ25CMEhkY3dnZG1kQ0s5OUg4SkFuZml5VzBUSGZURzNLQitHbGZkMGxG?=
 =?utf-8?B?NXVUOEdhT2FrQW1scjV0NzZSTFg3b2JneEJsUyswZm8vUUdjTlFkOVljdFFn?=
 =?utf-8?B?RlUvZDh1ejBOU3U1SFJMRnRyMVB1UmtKZlcySmNFSG1RNjdrWFNEWFZIZHIr?=
 =?utf-8?B?VWMzVGc2Q2pwZk5sT3N5a2pNYk1wYlZJV1JUbXhGekQ4djZMNHNPb2g2U2Zz?=
 =?utf-8?B?bFRrRGNUY2kzMmZJVFZPZ1ZwMEhib2dTSFBVcnBybmVUVWxBQjByTkZ6WDJl?=
 =?utf-8?Q?vICYw/HX099Okv+B6sXEHIs=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	EEXbLInfnJOft4vgY3HX2CQBxmQSxq+ZbBG8DOQiNexqNlSY0Q4H3QeCw3ERIShNC6acb2sSCGRMYBsBCoqA9K9Ol8USllMUMohvs7xofj3+36RRv67gA278jr600ACE98nTK24cfytzY2T2VuERuGTGv4V93T4N8T4j9p4Qlr2GUqck7/efVYTJfQ/Oj1eBsup4fNkQKjOT41s1ncE9WwEz16KkoDuwtZTGEk5msqvRfhZ0kbqpY50DYG7M1ljlwIg6PTF+CpxtHyftT6tw/2ZyE/d1u26akcy1NJc0NtX4smZTTGOsBT+LoJqiQ5zNEyR1FGFFrJEx+8qJnveauiwcE+MDuVqztTikspjaZHQoiA8KPfEACyCTyPuT9BPjJlbS1nGMYElgI5j6RcJfse1zFLDcpouYgaL/FyotyMCd+q4v+amG3vnlo7FDTGGW6vn/R0hfPcGgalgiXlSWj0x4GMcl4kJaI6rGNC1OZf1v/ghKDnLLcf/x1sfuZqako50EvaOkvtz4t8U/kp8Wd4iYICW38OcvawXryOLjINqR1Rbnfd5zAL8pA3aux/uOFHWiiHv0EapYqWlT1a8ducGcf+Yd56wlSlaR+xIWRwY=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72138418-9235-4265-903a-08dd3bbcdc8e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR10MB4749.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2025 14:47:29.8624
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mS4nwaU7KtZfmedA0nJKgjgtVDzeE0hzKX1EQeoBJtNNhP4GHqCBY+Q8eICBHBn+f/1DMdbBMzmY1yH3b4Xts4ZnAQbYNIYUCM6Yx3u3I3U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB6959
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-23_06,2025-01-23_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 bulkscore=0
 malwarescore=0 mlxscore=0 mlxlogscore=999 adultscore=0 phishscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2411120000 definitions=main-2501230110
X-Proofpoint-ORIG-GUID: UbeKgfQqAW6Li6Dg0uSzT6YBuM805w06
X-Proofpoint-GUID: UbeKgfQqAW6Li6Dg0uSzT6YBuM805w06
Subject: [oss-security] Re: [External] : Fwd: [oss-security] Oracle January 2025 Critical
 Patch Update

--------------iFBD4tTtJhrtx3hBOTjBL13B
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Olle, Solar Designer, oss-security list:

I am responsible for the content and publication of Oracle Critical 
Patch Updates.   These are published quarterly in three formats: Tabular 
format HTML "AKA risk matrix", English Language HTML format and Oasis 
Standard CSAF format via references at Oracle's Critical Patch Updates, 
Security Alerts and Bulletins home page at

  * https://www.oracle.com/security-alerts/

This home page references individual quarterly reports and provides 
other information regarding our security program.   In addition, that 
page provides instructions allowing anyone to sign up to receive eMail 
announcing when Oracle Critical Patch Updates and other security 
advisories are published.    See:

  * Instructions for subscribing to email notifications
    <https://www.oracle.com/security-alerts/securityemail.html>of
    Critical Patch Update Advisories and Security Alerts.

If you have any questions, feel free to contact me directly.

Bruce
-----

On 1/22/25 11:50 PM, Olle E. Johansson wrote:
> Bruce,
> For your information.
>
> /O
>
>> Begin forwarded message:
>>
>> *From: *Solar Designer <solar@openwall.com>
>> *Subject: **[oss-security] Oracle January 2025 Critical Patch Update*
>> *Date: *23 January 2025 at 03:42:22 CET
>> *To: *oss-security@lists.openwall.com
>> *Reply-To: *oss-security@lists.openwall.com
>>
>> Hi,
>>
>> Once in a while, Oracle publishes what they call Critical Patch Update
>> documents, which list many vulnerabilities addressed across many Oracle
>> products, some of them Open Source and some not.  This is great, but it
>> would be even better if Oracle also communicated to oss-security about
>> those vulnerabilities in its Open Source products, perhaps one message
>> per product (e.g., MySQL separately from VirtualBox).  I hope someone
>> from Oracle reads this and will get the wheels moving.  Anyone?
>>
>> Meanwhile, the latest Critical Patch Update is:
>>
>> https://blogs.oracle.com/security/post/january-2025-cpu-released
>> https://www.oracle.com/security-alerts/cpujan2025.html
>>
>> For MySQL, it says:
>>
>> https://www.oracle.com/security-alerts/cpujan2025.html#AppendixMSQL
>>
>> "Oracle MySQL Risk Matrix
>>
>> This Critical Patch Update contains 39 new security patches, plus
>> additional third party patches noted below, for Oracle MySQL.  4 of
>> these vulnerabilities may be remotely exploitable without
>> authentication, i.e., may be exploited over a network without requiring
>> user credentials.  The English text form of this Risk Matrix can be
>> found here."
>>
>> and links to:
>>
>> https://www.oracle.com/security-alerts/cpujan2025verbose.html#MSQL
>>
>> and lists additional information on some CVEs not included in the matrix
>> itself (duplicate or not vulnerable).  With so many CVEs, all of this is
>> rather long, but I imagine someone from Oracle - or someone external -
>> could copy-paste the "English text form of this Risk Matrix" and the
>> extra notes on a few CVEs to a separate message focusing on MySQL.
>>
>> Similarly, there's info on a couple of VirtualBox CVEs here, which would
>> ideally be a separate message with copy-pasted detail:
>>
>> https://www.oracle.com/security-alerts/cpujan2025.html#AppendixOVIR
>> https://www.oracle.com/security-alerts/cpujan2025verbose.html#OVIR
>>
>> Perhaps there's more Open Source software listed in there, which needs
>> similar treatment.  Not only this time, but each time, please.
>>
>> Alexander
>
--------------iFBD4tTtJhrtx3hBOTjBL13B--
