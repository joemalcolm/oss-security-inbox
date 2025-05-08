Received: (qmail 3510 invoked by uid 550); 8 May 2025 18:43:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20064 invoked from network); 8 May 2025 15:18:52 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Oau7Jt+FQIamzVwLGJ+Dbg8/ju7/+wq+nLfZ0DlBhmM+m1xTv8Vg9FvyCKLVhG6Zrc9qZ4trtLqwezDdV8zURv9CXSAKTi1prJjYElhtnqUWEhVU+NZ5yNycNQ56aJqU9tJUJCwIF2Ms61ZeYguXQOozbJCjeziLS1o5/lVd97db/RzR1KBNDeJqjXkABwIV3BNe+qr8cf1nmKIkckrDWZGN0E1MjuuKJ08rsiIdIyfoBZIuEptBI/V8Yb8+ludCN6BGjRqBH+bfnA/PeKaNqJ8cJUglisyAScj/1GivV5Ku511tFMzjBjso5Ja3M6Dqx9NVYf3epU2D4O1YV2Auhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N8D7z2KbiHvASCRvnRHCikbPquZZDfCEhrKqr9XAw2M=;
 b=gcBz4EHCRtOtqY9dBWz41lXR9SnTIWW7FCxWBc72nqU1auYQgafSRJ8sZ5K90ltBD47ggFmrHZL5PwE/LQii8m0y5hUF9r7vs73xx+ds8DGRsLPqlVrnYpPRycJB99nib2KgJxNyDdiWl4ZNm3QZWzrCkh8tsVElL/OjfWPWaPDoqUSt84GFrsATZse0GhInW2nfI8mTgRx+H4Hga33Yi2jNLnpb1paVc09xyv2Kq8Dl1VIDpFHufwBFkF38b9pt9/QwCFHJhAjCLcMzlkF4zeajovsUE1Ikm7JRsjjhPCUArI+Hjlv6vp60TjUBVG6o772nLDDjzRHM7fdDN7T02w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=jvf.cc; dmarc=pass action=none header.from=jvf.cc; dkim=pass
 header.d=jvf.cc; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jvf.onmicrosoft.com;
 s=selector2-jvf-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N8D7z2KbiHvASCRvnRHCikbPquZZDfCEhrKqr9XAw2M=;
 b=K6RDb9qVC6Vz5+fIFeIFo9dVUIM7TgGoOaBt5/BN6lhNp11hxYDC8jvIetg1q9d/CVUSYSCyQP6gFo2xvW0Kofvvo3LlZAvBBxrEK+erAyre58575HblSGpZU6juCEIrkrgEutgKlX+VOzE/ilnHJlCl1VDNZK8lIG/TdCsNxTM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=jvf.cc;
Message-ID: <cd27d6ad-d290-4eb4-b911-5a9161b708c6@jvf.cc>
Date: Thu, 8 May 2025 08:18:32 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Jay Faulkner <jay@jvf.cc>
Autocrypt: addr=jay@jvf.cc; keydata=
 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
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ZvR0wEXoMgJrRrbg0i0zkSik"
X-ClientProxiedBy: MW4PR03CA0181.namprd03.prod.outlook.com
 (2603:10b6:303:b8::6) To CO6PR19MB5340.namprd19.prod.outlook.com
 (2603:10b6:303:137::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR19MB5340:EE_|CH4PR19MB8610:EE_
X-MS-Office365-Filtering-Correlation-Id: 3d92e422-a3b2-4fa3-5c42-08dd8e4398c0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|1800799024|376014|13003099007|4053099003|8096899003;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?MUhoZ2x4NTc2TXd2MFRLUGF3ZkxXc2F6VWJPMmV2dUdPcWFxT0s1WHJqVVJz?=
 =?utf-8?B?dDgwa09Fa0Z6aUdiU2NxcVdSRXhvOXRpaC9uY3lIUWM4cTc1cHdhRnpVdytN?=
 =?utf-8?B?emxTV0ZRMVRFeCtxdHB1SnpkSXVHaGNMbUp5R25jNGc5RnZ6TmZoQXNZVnU0?=
 =?utf-8?B?TDQxQi84Tzk2TCtPbjVPdGZJVVBzc1Z0V05SRVk1aU1mU1dtakhORmVEamRo?=
 =?utf-8?B?QWtJcnJXVWdJQXJlV0NqdDhNd25FMElpOTBLTndrRXBHSVlaSHJzNVV6YW5i?=
 =?utf-8?B?Q1RZYUtybFFjeGdaSXVGM3hQRk5GaVZ5VG9hTFUwWlhBUXIvSzRYbk5IV0xV?=
 =?utf-8?B?bXlrajRSeUpMbUNPanRvRjdxSDJuVTFoclpjc2svT2FGWlZWT29aMXpXL3B1?=
 =?utf-8?B?UEs4dEhPUysyWk5RVWdjNXdJQnNESWQ5NFEvYXdTU29uVWU5VVJkOURtalpT?=
 =?utf-8?B?dmY3eTFCSmtHVTkvcUFHRmRsSStheGp4VGpSQlEzUWZCeUlSY0x5a1JLVWZR?=
 =?utf-8?B?QnNCZ0VNZ1E3RDdMR001QlJGYTdSbkk4OVJ3bjlmcjRlQTA0YzdTUDB0dDky?=
 =?utf-8?B?cFZDaEhBRm45SlpVUWlYVVF1cjVWSzk1ZlVteklESUpMWkFjT0ZBSnc4TmR5?=
 =?utf-8?B?T1djQ0QzbEJKWTdmNHh2SDlJblRJc3hDWUJJanFZMW9ETVFCSmJaRTYvK00w?=
 =?utf-8?B?WVhxQk5jcDJxOFQ3cnZ5NGJQSE1oZ096TVdGT0F5ZVJETFpFL21zWWErVGN6?=
 =?utf-8?B?WGt4ZXM4Q09oREVvK1FEODhMVm9vcVJ2NFpqdmRURG1oTDI5OVR3WFJueHBD?=
 =?utf-8?B?cGRueGtjQjZDaTZ5NHVZUW9OOE1Idjhyd1MrM0FLdTFWYlZmWWtvTDJneWFH?=
 =?utf-8?B?eCtuYm5XdHhaR2JRdmo3TmQ1NjJiZWFUU2Q2S3hZd0k3QStwTHNkY2RUdVJW?=
 =?utf-8?B?NVRtdWk2MDFndk1rMHFRSmx0NFVZRjZwZjZmaW5PdDRwYTNEeEtFQXpzSExy?=
 =?utf-8?B?bjVNeExqL3ROU3BHUGRNMFo1Uk1jTDVhMjBTOS9nWGlYdHJ1WjNGMTc3YWVR?=
 =?utf-8?B?TEUrR2J6Qy93enhTRys1dFphN3JMS3pKRHVFOUxSRXhseE5xVGRDcnZEUUEx?=
 =?utf-8?B?WW93c2ZiMmxPcnFKOWZ4VXJsemRPQ3hTOHhyVVl5ay9tYitxckxIQlJGZVZJ?=
 =?utf-8?B?TmMvaXAvK3oyU2RuS1lQQVVOM2ZWSS9sOUlqd0JXYWY4ekpScEhQUjByODNl?=
 =?utf-8?B?WUUycTU5Nm1XUVlTMzVKNFFGZTBiN0RhNmVuWlNqRXV1NHdFUlVpSnZvMC9B?=
 =?utf-8?B?YmhSV1p2MW9kT00xZkxPbVUrdVBWL3VlVmFhc3oxNzVXZ296UHZSYjlNQ21x?=
 =?utf-8?B?c0dtNVBSM25zSldIQ3BzQXNDNm1zbU1wdXRzaUZtVVNuUnhneUhIY2RjTkJR?=
 =?utf-8?B?YTJRV1A0bXpLd3ZYa25mMFVjSCtFVzVmUzhjMFdEVENwUnMzSkZUWXhiS1dU?=
 =?utf-8?B?enNLalFrN1oyZUVLQmphSnV1ekNUcko0aE1vY2Zvb0JFTE83L3hIZG5oYlJy?=
 =?utf-8?B?UVJmNlRqSXdxTTFKWnV0aWJHeW14NitFYnJWTVBIVmdJY2ZrQjJXajZVOFd6?=
 =?utf-8?B?ZTZrR2ZyNnVFVENCZjJERzl2dVljRm1tSVpmM1hsZEZBREwrRXFwYVlYc1NH?=
 =?utf-8?B?ZFQwK1VaWWw1dHRjT1ZsSXh4ai9pemVMRXJERlN2VXpNZWlWbGlSNlNoaW0v?=
 =?utf-8?B?dFBlOFQ0dXltM2hVWWtwZDZzNWtTQlBGK0hTeEFNQ2MvZG9Td1lMY0F6Njgv?=
 =?utf-8?B?U2lXMjVhVU9PVElYOU9VWWg2VXFKKzRzL011RVhJVVVYcWpvTjhJTHRWZ0NR?=
 =?utf-8?Q?yQYY+fvOXjJQz?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR19MB5340.namprd19.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(13003099007)(4053099003)(8096899003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?THVnckt0V3V5dXkxY0VWanV0Vnd6VGJGYld4andSdWJoM00yb0REK3NhaDls?=
 =?utf-8?B?SldPMTkwRXU4QmttWXpNOGRONEx6K3h2UUFRVGxZSkxXa0FIT3dmWWxjNGdW?=
 =?utf-8?B?TEkzZVduaWtleXNTNE9EbGhRVEdVc3djL1ZOVURVN0R1aEp3T1hoM3RNRk1m?=
 =?utf-8?B?QjA1Q1VIZmt2TTZRR3FPdDhHOEJBQTFyZ3dDZEdoU0ZkZmEyMm1DMUliSE5O?=
 =?utf-8?B?VmpGQlBxby8zY0tjcEZBeGd1UWZNYzNYTXZiMW5ybjkvczdPeEJBMEtJS1Vs?=
 =?utf-8?B?VUhGYThkdjZUZHpnUGxQZytUdFgyZ3VnaVQ5N2ZuZXk4NnV2aUhQa2xKM1lp?=
 =?utf-8?B?L2RUOHpYSHpkY2ZmSzZkTHBaY0c4NnB4eDkxYkluOVpBYldTRi85dVAxUkdQ?=
 =?utf-8?B?ZVpjWlJ1ekwxYzlEbWt6TzBBZFdDeUJTVUs4SzJjZEFXSU8zZ1BrbXliYTRE?=
 =?utf-8?B?cGFjWjZGV1FCQWh4MHFSaFp1bnQveldOcEQ0Yi8xa3lFTWk1Yk8wVmNwcUNu?=
 =?utf-8?B?SGtsODBRajNGNUZoOFp3azdYdG5SeTlsaVVkK0hjODhUUWUrNy9SZ1ArTEh0?=
 =?utf-8?B?eTNHWDV3aWJFZG1mRmoyaGxQalVDZlZEMGZIcjFNSHhoYkRRNGhpRnR3Qm9z?=
 =?utf-8?B?SDlDRGYzWExvM2pBbnhTUFkxdXY2cnEvY0tKd2JhTGxuY0tTdTJ0dit1dHFP?=
 =?utf-8?B?Vkt3ejBlUlpsK1kwbVpKcnkzOHcrK3hVS2RGbkhsVVhTUjdvcitWREM3THh1?=
 =?utf-8?B?YkFTN3VtTllxT3Y3cm5hSi9jNmxYcnBjMmRuRU03NkZXUDc0OHJtWmRiMkE3?=
 =?utf-8?B?QldPNkR4UDkwNTlXQVdMeGZxSDNwL3ZMbjRTdUlpNWpHSlVKUGZWNXMyMUdS?=
 =?utf-8?B?bCtkalgwb2QrWGdLdVAyVFI3Q002em1lVkZvNXdUVFFYMTFTdEJZYXhlOGhL?=
 =?utf-8?B?WlRhWmZpbFQ4dU1NTDRLY000VG93Kzh0TmtRUXYyVmU0Z1R6L1JJZ05oa0pS?=
 =?utf-8?B?ZGxjZnFOTCtFbU43RE9LQ21Bdks3dHlIVytpdUpVbDBWNHl5M1BpQVd1Mmh5?=
 =?utf-8?B?K3lTbjBZVnFmNUNyelVKVUFFUXdZSmxvNzRSaUwxdEFvRi9iVU5mbzMrS2JB?=
 =?utf-8?B?anJrckcyazlEK2Q2SEs1bG1yc0V0THhDSFl4QzdDVnZ3TVFpZmN3T3hUUjlk?=
 =?utf-8?B?amVoYmpRVDFsWjZEa2E3Sjc0RzJsa0tLdnM0MXpKV1BUZzY5cE5Ca3J5NDlH?=
 =?utf-8?B?UEpwRUVCMERUU0RaZG0vZGpqaFljdStSR0lJMmN4OFFtRFNpNzM3dHVDVDIw?=
 =?utf-8?B?UFlXU0MxaXdrWkNxYmR5b21DNTEzRVBpeEJQcWViNmFoQkZFQjZJcEZxeG5Q?=
 =?utf-8?B?dnRhVnRMMXZFck5uQ2Z3QVl6dzg5YVNlSlpabEdRUDFXc0d6NERiaDBXMXBH?=
 =?utf-8?B?WTVXNkxiSWtjWnNjOWFCeEZrUnQzTjFCR2lWVmdjeTF2OVpiUzI4SWN3YU93?=
 =?utf-8?B?c1B5RDAyeGNJODJ3eENMNGYrMEFGOVhwZkFqbTR4NnFHSlpHMkN0WGNYT1Uw?=
 =?utf-8?B?bVNuNXNoM1djOUxxYStxYUU3cEJ6Z1dINVF5cjJ6TW84US9lVG5QMTVEeEtp?=
 =?utf-8?B?NDZ3MldTQmV2bkFqQkVZZEpab2JSUSttSjFsZDZsZ0xDVlpuZURBd3NPWmhM?=
 =?utf-8?B?cDA0SGRvTEYwbnJZN3BvUGI5eE1nbFdWRWJ0YnpXRHh2TDRVaHgvUlFScEM2?=
 =?utf-8?B?R2dhK20rTTFLa2FqVVNpQ1R1RzRIaEFhNkx5akhGa2hHZ2hmdGp2bFBnUDRR?=
 =?utf-8?B?NG8xN2QzaFY5eUFkOTAveHZkQXV5TmhsYW43V3k0bGdrSmdpNDF6UmNMU0Ju?=
 =?utf-8?B?cVZYUEw0TzNzU0xQK3lvb0FBMTYwRTgvRU1mVWhKYnZBZ3RWNFdBczE3MUhu?=
 =?utf-8?B?cWZXY2dJNE1ZZDkxWExMOTNjeWlpSytRMnpCVDhjbjY5eFdMaGFqYld6MStt?=
 =?utf-8?B?dmlVSDNwdHc1UDBMZ0FNblVNUXN1RDBqbW5VMTJqbnJDWEtHOSt6Wk5ZZnZi?=
 =?utf-8?B?bVlvWGdaenV6S3VaOHNCdXZlUkJrZm82Si9GZEFoeHhzZ1haeEt5YS94YWp3?=
 =?utf-8?Q?UZPE=3D?=
X-OriginatorOrg: jvf.cc
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d92e422-a3b2-4fa3-5c42-08dd8e4398c0
X-MS-Exchange-CrossTenant-AuthSource: CO6PR19MB5340.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2025 15:18:33.4575
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3268b97a-2d09-45a8-9816-8dea1f44039e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ECtFUFPe1/G4PcW2w1sFADJOR/PsXvJGX1bQTzyvu1hE8IbiLA0/C1EUMRixdLbm
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH4PR19MB8610
Subject: [oss-security] OSSA-2025-001 / CVE-2025-44021: OpenStack Ironic fails to restrict paths used for file:// image URLs

--------------ZvR0wEXoMgJrRrbg0i0zkSik
Content-Type: multipart/mixed; boundary="------------YmopZWxtiJN7gofg4OD0kW0R";
 protected-headers="v1"
From: Jay Faulkner <jay@jvf.cc>
To: oss-security@lists.openwall.com
Message-ID: <cd27d6ad-d290-4eb4-b911-5a9161b708c6@jvf.cc>
Subject: [OSSA-2025-001] Ironic fails to restrict paths used for file:// image
 URLs (CVE-2025-44021)

--------------YmopZWxtiJN7gofg4OD0kW0R
Content-Type: multipart/mixed; boundary="------------SqkiOxzdIPKN6koP46WIGrcO"

--------------SqkiOxzdIPKN6koP46WIGrcO
Content-Type: multipart/alternative;
 boundary="------------bVsY6wEwpXGg0bdBqYHq50nV"

--------------bVsY6wEwpXGg0bdBqYHq50nV
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PQ0KT1NTQS0yMDI1LTAwMTogSXJvbmljIGZhaWxzIHRvIHJlc3RyaWN0
IHBhdGhzIHVzZWQgZm9yZmlsZTovLyBpbWFnZSBVUkxzDQo9PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09DQoNCjpE
YXRlOiBNYXkgMDgsIDIwMjQNCjpDVkU6IENWRS0yMDI1LTQ0MDIxDQoNCg0KQWZmZWN0cw0Kfn5+
fn5+fg0KLSBJcm9uaWM6IDwyNC4xLjMsID49MjUuMC4wIDwyNi4xLjEsID49MjcuMC4wLCA8Mjku
MC4xDQoNCg0KRGVzY3JpcHRpb24NCn5+fn5+fn5+fn5+DQpKdWxpYSBLcmVnZXIgb2YgUmVkIEhh
dCBub3RpY2VkIGEgdnVsbmVyYWJpbGl0eSBpbiBpbWFnZSBoYW5kbGluZyBmb3INCklyb25pYy4g
QSBtYWxpY2lvdXMgcHJvamVjdCBhc3NpZ25lZCBhcyBhIG5vZGUgb3duZXIgY2FuIHByb3ZpZGUg
YSBwYXRoIHRvDQphbnkgbG9jYWwgZmlsZSByZWFkYWJsZSBieSB0aGUgaXJvbmljLWNvbmR1Y3Rv
ciB3aGljaCBtYXkgdGhlbiBiZSB3cml0dGVuDQp0byB0aGUgdGFyZ2V0IG5vZGUgZGlzay4gVGhp
cyBpcyBvbmx5IHBvc3NpYmxlIHZpYSBkZXBsb3ltZW50cw0KcGVyZm9ybWVkIGRpcmVjdGx5IHZp
YSBJcm9uaWMncyBBUEkgYW5kIGNhbm5vdCBiZSB0cmlnZ2VyZWQgdmlhIE5vdmEncyB2aXJ0DQpk
cml2ZXIuDQoNClRoaXMgaXMgZGlmZmljdWx0IHRvIGV4cGxvaXQgaW4gcHJhY3RpY2UsIGFzIGEg
bm9kZSBkZXBsb3llZCBpbiB0aGlzIG1hbm5lcg0Kc2hvdWxkIG5vdCBldmVyIHJlYWNoIEFDVElW
RSBzdGF0ZSwgYnV0IGl0IHN0aWxsIHJlcHJlc2VudHMgYSBkYW5nZXIgaW4NCmVudmlyb25tZW50
cyBydW5uaW5nIHdpdGggbm9uLWRlZmF1bHQsIGluc2VjdXJlIGNvbmZpZ3VyYXRpb25zIHN1Y2gg
YXMgd2l0aA0KYXV0b21hdGVkIGNsZWFuaW5nIGRpc2FibGVkLg0KDQoNClBhdGNoZXMNCn5+fn5+
fn4NCi1odHRwczovL3Jldmlldy5vcGVuZGV2Lm9yZy9jL29wZW5zdGFjay9pcm9uaWMvKy85NDkx
NzUgKDIwMjQuMS9jYXJhY2FsKQ0KLWh0dHBzOi8vcmV2aWV3Lm9wZW5kZXYub3JnL2Mvb3BlbnN0
YWNrL2lyb25pYy8rLzk0OTE3NCAoMjAyNC4yL2RhbG1hdGlhbikNCi1odHRwczovL3Jldmlldy5v
cGVuZGV2Lm9yZy9jL29wZW5zdGFjay9pcm9uaWMvKy85NDkxNzMgKDIwMjUuMS9lcG94eSkNCi0g
UGF0Y2ggYXR0YWNoZWQgdG9odHRwczovL2J1Z3MubGF1bmNocGFkLm5ldC9pcm9uaWMvK2J1Zy8y
MTA3ODQ3L2NvbW1lbnRzLzQ3IChCb2JjYXQvMjAyMy4yLWVvbCkNCi1odHRwczovL3Jldmlldy5v
cGVuZGV2Lm9yZy9jL29wZW5zdGFjay9pcm9uaWMvKy85NDkxODYgKEJ1Z2ZpeC8yNi4wKQ0KLWh0
dHBzOi8vcmV2aWV3Lm9wZW5kZXYub3JnL2Mvb3BlbnN0YWNrL2lyb25pYy8rLzk0OTE4NSAoQnVn
Zml4LzI3LjApDQotaHR0cHM6Ly9yZXZpZXcub3BlbmRldi5vcmcvYy9vcGVuc3RhY2svaXJvbmlj
LysvOTQ5MTg0IChCdWdmaXgvMjguMCkNCi1odHRwczovL3Jldmlldy5vcGVuZGV2Lm9yZy9jL29w
ZW5zdGFjay9pcm9uaWMvKy85NDkxNzIgKE1hc3RlcikNCi1odHRwczovL3Jldmlldy5vcGVuZGV2
Lm9yZy9jL29wZW5zdGFjay9pcm9uaWMvKy85NDkxODIgKFVubWFpbnRhaW5lZC8yMDIzLjEgYW50
ZWxvcGUpDQotaHR0cHM6Ly9yZXZpZXcub3BlbmRldi5vcmcvYy9vcGVuc3RhY2svaXJvbmljLysv
OTQ5MTc5IChVbm1haW50YWluZWQveGVuYSkNCi1odHRwczovL3Jldmlldy5vcGVuZGV2Lm9yZy9j
L29wZW5zdGFjay9pcm9uaWMvKy85NDkxNzcgKFVubWFpbnRhaW5lZC95b2dhKQ0KLWh0dHBzOi8v
cmV2aWV3Lm9wZW5kZXYub3JnL2Mvb3BlbnN0YWNrL2lyb25pYy8rLzk0OTE3NiAoVW5tYWludGFp
bmVkL3plZCkNCg0KDQpDcmVkaXRzDQp+fn5+fn5+DQotIEp1bGlhIEtyZWdlciBmcm9tIFJlZCBI
YXQgKENWRS0yMDI1LTQ0MDIxKQ0KDQoNClJlZmVyZW5jZXMNCn5+fn5+fn5+fn4NCi1odHRwczov
L2xhdW5jaHBhZC5uZXQvYnVncy8yMTA3ODQ3DQotaHR0cDovL2N2ZS5taXRyZS5vcmcvY2dpLWJp
bi9jdmVuYW1lLmNnaT9uYW1lPUNWRS0yMDI1LTQ0MDIxDQoNCg0KTm90ZXMNCn5+fn5+DQotIFBh
dGNoZXMgaGF2ZSBiZWVuIHByb3ZpZGVkIGZvciBhbGwgc3VwcG9ydGVkIElyb25pYyBicmFuY2hl
cy4gQXMgYQ0KICAgY291cnRlc3ksIHdlIGhhdmUgYWxzbyBwcm92aWRlZCBwYXRjaGVzIGZvciBz
b21lIHVubWFpbnRhaW5lZCBicmFuY2hlcw0KICAgYW5kIHRoZSByZWNlbnRseSBlbmQtb2YtbGlm
ZSAyMDIzLjIvYm9iY2F0IHJlbGVhc2UuIEFzIHVzdWFsLCB3ZSB3aWxsDQogICBwcm92aWRlIHVw
ZGF0ZWQgcmVsZWFzZXMgb2ZmIG1haW50YWluZWQgYnJhbmNoZXMsIGJ1dCB3aWxsIG5vdCBjcmVh
dGUNCiAgIG5ldyByZWxlYXNlcyBvZmYgYnVnZml4IG9yIHVubWFpbnRhaW5lZCBicmFuY2hlcy4N
Cg0K

--------------bVsY6wEwpXGg0bdBqYHq50nV
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
    <pre>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
OSSA-2025-001: Ironic fails to restrict paths used for <a class=3D"moz-txt-=
link-freetext" href=3D"file://">file://</a> image URLs
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: May 08, 2024
:CVE: CVE-2025-44021


Affects
~~~~~~~
- Ironic: &lt;24.1.3, &gt;=3D25.0.0 &lt;26.1.1, &gt;=3D27.0.0, &lt;29.0.1


Description
~~~~~~~~~~~
Julia Kreger of Red Hat noticed a vulnerability in image handling for
Ironic. A malicious project assigned as a node owner can provide a path to
any local file readable by the ironic-conductor which may then be written
to the target node disk. This is only possible via deployments
performed directly via Ironic's API and cannot be triggered via Nova's virt
driver.

This is difficult to exploit in practice, as a node deployed in this manner
should not ever reach ACTIVE state, but it still represents a danger in
environments running with non-default, insecure configurations such as with
automated cleaning disabled.


Patches
~~~~~~~
- <a class=3D"moz-txt-link-freetext" href=3D"https://review.opendev.org/c/o=
penstack/ironic/+/949175">https://review.opendev.org/c/openstack/ironic/+/9=
49175</a> (2024.1/caracal)
- <a class=3D"moz-txt-link-freetext" href=3D"https://review.opendev.org/c/o=
penstack/ironic/+/949174">https://review.opendev.org/c/openstack/ironic/+/9=
49174</a> (2024.2/dalmatian)
- <a class=3D"moz-txt-link-freetext" href=3D"https://review.opendev.org/c/o=
penstack/ironic/+/949173">https://review.opendev.org/c/openstack/ironic/+/9=
49173</a> (2025.1/epoxy)
- Patch attached to <a class=3D"moz-txt-link-freetext" href=3D"https://bugs=
.launchpad.net/ironic/+bug/2107847/comments/47">https://bugs.launchpad.net/=
ironic/+bug/2107847/comments/47</a> (Bobcat/2023.2-eol)
- <a class=3D"moz-txt-link-freetext" href=3D"https://review.opendev.org/c/o=
penstack/ironic/+/949186">https://review.opendev.org/c/openstack/ironic/+/9=
49186</a> (Bugfix/26.0)
- <a class=3D"moz-txt-link-freetext" href=3D"https://review.opendev.org/c/o=
penstack/ironic/+/949185">https://review.opendev.org/c/openstack/ironic/+/9=
49185</a> (Bugfix/27.0)
- <a class=3D"moz-txt-link-freetext" href=3D"https://review.opendev.org/c/o=
penstack/ironic/+/949184">https://review.opendev.org/c/openstack/ironic/+/9=
49184</a> (Bugfix/28.0)
- <a class=3D"moz-txt-link-freetext" href=3D"https://review.opendev.org/c/o=
penstack/ironic/+/949172">https://review.opendev.org/c/openstack/ironic/+/9=
49172</a> (Master)
- <a class=3D"moz-txt-link-freetext" href=3D"https://review.opendev.org/c/o=
penstack/ironic/+/949182">https://review.opendev.org/c/openstack/ironic/+/9=
49182</a> (Unmaintained/2023.1 antelope)
- <a class=3D"moz-txt-link-freetext" href=3D"https://review.opendev.org/c/o=
penstack/ironic/+/949179">https://review.opendev.org/c/openstack/ironic/+/9=
49179</a> (Unmaintained/xena)
- <a class=3D"moz-txt-link-freetext" href=3D"https://review.opendev.org/c/o=
penstack/ironic/+/949177">https://review.opendev.org/c/openstack/ironic/+/9=
49177</a> (Unmaintained/yoga)
- <a class=3D"moz-txt-link-freetext" href=3D"https://review.opendev.org/c/o=
penstack/ironic/+/949176">https://review.opendev.org/c/openstack/ironic/+/9=
49176</a> (Unmaintained/zed)


Credits
~~~~~~~
- Julia Kreger from Red Hat (CVE-2025-44021)


References
~~~~~~~~~~
- <a class=3D"moz-txt-link-freetext" href=3D"https://launchpad.net/bugs/210=
7847">https://launchpad.net/bugs/2107847</a>
- <a class=3D"moz-txt-link-freetext" href=3D"http://cve.mitre.org/cgi-bin/c=
vename.cgi?name=3DCVE-2025-44021">http://cve.mitre.org/cgi-bin/cvename.cgi?=
name=3DCVE-2025-44021</a>


Notes
~~~~~
- Patches have been provided for all supported Ironic branches. As a
  courtesy, we have also provided patches for some unmaintained branches
  and the recently end-of-life 2023.2/bobcat release. As usual, we will
  provide updated releases off maintained branches, but will not create
  new releases off bugfix or unmaintained branches.
</pre>
    <p></p>
  </body>
</html>

--------------bVsY6wEwpXGg0bdBqYHq50nV--

--------------SqkiOxzdIPKN6koP46WIGrcO
Content-Type: application/pgp-keys; name="OpenPGP_0x6B75D939B424C6D4.asc"
Content-Disposition: attachment; filename="OpenPGP_0x6B75D939B424C6D4.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----=0A=
=0A=
xsFNBGFpBPQBEACaRxGb+O+Ypgxi2gg3bfkxuejyTGUYJ3dwXkoFnZvaSeq7Nx6X=0A=
4+vEd20x/9vjuwdbXB5w3Tb4N9oIAGUpukjzVX3rBZ9TqkvOiY5KpJf8lJVCJupp=0A=
lfUkxurWEvwdcCv9KU7HyFSKcMdmFIOGPzbg4N/d2gF52HIKTQBorI0dMAoKsBXu=0A=
Wfb1/rK+C8wcY3gecqLgrjEdOFsQETFFSUs8Egn3Z81DMoNucBVZWnz+p7R6nhlr=0A=
Mt9gXNBEZWPFZihteE6EovP6BXSotdyBRmmxAOBCaZZsA4CIzZoK9cb84N6y1PQH=0A=
AAl4W7wCoakiKByF9/0gCIIbYWgauJ5oD0kQTNgwNDcygQnTdrs7UQ6GUlaT4Cgf=0A=
eRWydLmmv8LvJyZOqFQs+3DOUTagTYZqsarfBBQO9PaeZvKbz3s5Dsr5QCeOMIVy=0A=
4Te4tNRNExut48cp+n31ZUARCAlQHAoKiswELCkOgnKzSEVJ8PEeIYP8Up5zoWfK=0A=
4/SaqeVrY3ziKl8RdOGW2zW7WikfgWODIp5L6erTnT2xRGGcikDbShkGzOQCIkfm=0A=
XPzp8HmSHumIEO002KzCMsRX8jQphEPtC1QXsAwDpyYMTPjxPIvVtTQbrtoJoYCV=0A=
uzDiETsB9VWvNRXn687uvVaFL96aui0hLO79basRPiekRp33IlXuEaxVdQARAQAB=0A=
zRlKYXkgRmF1bGtuZXIgPGpheUBqdmYuY2M+wsGUBBMBCAA+FiEEvF1YmsGLSYuW=0A=
qE+ta3XZObQkxtQFAmFpBPQCGwMFCQeEzgAFCwkIBwIGFQoJCAsCBBYCAwECHgEC=0A=
F4AACgkQa3XZObQkxtSXQQ//VwFbzIE2x79AhX3wHReYH+6UR0qe+QuTl0zd3vp1=0A=
sKukkbU+i3J4eVHmVXdTI2rFE1WH9TbTaEBM3qZJgXsQEQ5+im+eyZFfZbGgZLJW=0A=
yig3uKOogS0OrxOjRwjlDLN9Orcl4de/HA1zAVrLRV3zfg8ZMj6zXrv84L54lZ5e=0A=
9C7mD5oS8Ge5enFrU9kEdHNjqzt1PCXCeA37/HRJoR+nzHmcSzJyMMxQdo0cgiaR=0A=
HYyu7LOJFL5qR0jLEmZwEulmd6fMeU4Tx5eMx4o6O3diTmGyeFs/UDGWn0qcMDkh=0A=
9T00Qw1bLOv/yFrpCMjEyryR7hJ53HYtLqEkvn/7lClrp2BUsV8XjYqexnB6unr3=0A=
0/RduC6koXXUHAZpk/+mD0WEdShFNuiFlOn8BDjBvk5k6j2VlEO3uH0BhWUBfY+b=0A=
ahWiLgWUhupK2Wd8qLYbE9VDj5jvcKVt7qonBuguDY43aXyf7gnm3u1pprGuqTcW=0A=
yRijHeLXLHNZg2fCUjQ0tdto/YblvNexrEDxjK7nzgmHR7KDTVFcjG91yrTrO2/h=0A=
mREQSN5WWk50q6n5NLBSMWyDuzOxG0baOuKZrSCnMamFNjMPvAnCdqe1HoNq4b7H=0A=
b9FheqJulqQFLEhGN33KIummGYTjJBYnz4L7c1F0iqlvEVO7MEir+a63lMWh6wIa=0A=
rg3NHkpheSBGYXVsa25lciA8amF5ZkBnZW50b28ub3JnPsLBlwQTAQgAQRYhBLxd=0A=
WJrBi0mLlqhPrWt12Tm0JMbUBQJnx8ovAhsDBQkHhM4ABQsJCAcCAiICBhUKCQgL=0A=
AgQWAgMBAh4HAheAAAoJEGt12Tm0JMbUtcEP/0EwQm/UlJBI5TrKdaIYm2ho42zp=0A=
kKLl+cuB/x+YEryl5V1y6oVYRwiDpkPWrfbEhnF4GDBS96KNAyk45eOnsjr+76yM=0A=
wYv5NC+5RuhqDA3KpqlIfU9DaRNIbQ4C8kYLa2qmli7lv+hV35jEV+SFR8QVh8wC=0A=
6XhM2LF7ZU0vBUbPaVj3Va8Gy1HlSf1APeNv8ICQfJMDvcBewOspQhtfdMHl3WKz=0A=
BDFEQMrbnWdPUz224Fs7BLJH83ckQqdrwOJHZYS1M2WMvKT2oDgn8uuDSbwHBfjU=0A=
u5EbsDx8rv6P2Pj+OI6gnayWNFXsZDE4Z5qz48+tgxCoaM3qG3ermjFHp6VC81fs=0A=
kMnSwNCYJnhe44VkYttoV8AzAyFOHubn92OhUyWiQo9OhDPtXyIm/NJLqh95Q1Vs=0A=
oOTUAXxoQJbJ/QwIK5YSXXL+0KYUQVFUi2QYVMET9FaJ4zthp8k/ODt98Ne/p/zn=0A=
EpihIxI6T6gypD6ooEmVcIdwyEkg6BYMETYjbl6TsZnUzLmwmU+KDW+6qR0oEvbE=0A=
Il695LbRri0nahBYUgTGo70aMy2aRHDVo6CUlVBJSLPOsbR38aiGrh8DtM4OZQa/=0A=
ayU/vog/F2nS5C3ylKAVBfaSISSJiv2uL0dHudcDqinauXkwy8JB+KgMxOaNxyVF=0A=
F/CVY5IDWJJdgeqHzsFNBGFpBPQBEACx3J18BFp+Vhd8uO75JeAElIrJdUB0pWK7=0A=
NapbAZqnW0M6OUzrbqbhlZPRu46qNSdSLvnoyPrmAnFNYz2B+R/jyfQCuanDOjBp=0A=
4sCTWqKR5r1IBEcJVHMT/fSB+Cxktp6Z10sSK0mH2AV7g1Fu721tirI+V315QTHf=0A=
+jxOG+ZJYzgAQfUlhcN3lybp2le4drS53sKhVP7G2Ry4Q5ABEe78JV8kzA65D0ws=0A=
jqn8HhWXJ9okQ+dvy7KC+IZaXBmc/5klf7ECQaIjOaKftzViintFeEZCfpYAAkBu=0A=
I8wuY8jeFzpOPLUBeGR6sst9jvh0R+MUV6TgJsYmc71yz1KkpiPrjZ48jubcxcvC=0A=
v4cy/92LV0MsVRhWLZrSC0p0DkTv2t+6K3m+UUJvI776u0fiHdvwZnXpBnMUJ+Ze=0A=
oJ+Pg1cqeRFv5+8Fys+W3be+DhZOkUGn29uER7DWyXoSB1g7itjzuRUuk90+Utop=0A=
dpIRoNsLusYeb18lrQd3ltbJHTlsLfzPxxYp3rGgpLx01CcEypOgZ0FM6Sh8mXBk=0A=
bkPqZ0/+cSbpougM7bF1NvcH8mqGStaOn6EUZPKI6SFWSFGcke3FdgV83sMCsr/R=0A=
4oRmvj+GrXIzzLBoVYenCV8SktcSnX5/IgQ+54EtSyDoQys40K0Q+z8/0NEscGIG=0A=
K8+dQHR+7QARAQABwsF8BBgBCAAmFiEEvF1YmsGLSYuWqE+ta3XZObQkxtQFAmFp=0A=
BPQCGwwFCQeEzgAACgkQa3XZObQkxtT8PxAAmWnmujOOCpVWFYluRu6G0nd72rwe=0A=
uCKJSuOVqZBBFn3eZbYRI7WpOdiiMg38u5fyqrrq9f7N2GuCI+Ol1CBfEEbkCwvT=0A=
MP582ZIY/OFg7y6jLRNYtKtU3iP/owkcU0HYb1I868Wvy2hxnwaS3WguzgqC7tTK=0A=
OFKfkrCcj80wnfQfs3htpgx/dbrhPTQvLF4PCo5irFM5tFhnLOVwb0idu3TpvyUk=0A=
SHRPdIoi+o8UtxS3Ms+/fys56rWLDX2SZy+7uf5VuQpK2b/F3Nd6BRkgIXmV8sh9=0A=
7E8hEgfaCy2qZTHSvyFscp06S6V+XAbbiEUPzlZqJ6LddF9j9TLrmuj3xV5AjNjQ=0A=
QM/5AadMprQdMRlsxFf+6c24KBRvow65ZBqcxr3dBD8ronLkME2QEQLeR+bOx6id=0A=
ID6seBS8KC23Y91lFT/MklHcPE9ojLyFUEojRomPtx+gCY+VOKt0JNpCvUCFQSuM=0A=
E9g+VyU5DPkj/89ra9VG63oWdoFGgeqh/5aDPkAiKg0vuxTMpQuYrBz3kE2s4IBf=0A=
Z2jSP7MRXJKIE+RnNfwYP9O9PMY5kWMqPRDkQLwY01YdbuJU762OKW7WCqTIKLfi=0A=
r0qRPe0YelJYsbH9S8tqEX1hQ7zZoJQ/MTy0sENH1Mbxb6mt6QRvU6RTTetksvNg=0A=
qAj60lsPti392/HOwE0EZ8fKUwEIAL804cHG446E2P2PeTAVu+8RqAla79h9VZt+=0A=
pYlNfC1UNeUZILA2b/7C1zfTJlHO/Q2s59E9COEN6aPzInHeJGvvnRVBs2NMpPlc=0A=
qzSRvIm7ZdP2upDSJ86lDx+dshgz1rtPGNWOjQGAwZqO3j6l53GXhnryhbDhrRz1=0A=
fN5kSMMhjzeEDpNod8Tme9mN8CqxnQVCE/q3XrQJ4M0WqnasmZM7yszwes7xA5yT=0A=
qLLdQQ2fRTBAgCfuzJ2smBN2LauZv/tdkW+CFB7FW5ovdeMK7ztiyQjdYUvsghGs=0A=
zIYJFVydH+MDviEmAKBsqwa0WRNQaZRI7WhwevUDAjamDIoe7U0AEQEAAcLCsgQY=0A=
AQgAJhYhBLxdWJrBi0mLlqhPrWt12Tm0JMbUBQJnx8pTAhsCBQkB4TOAAUAJEGt1=0A=
2Tm0JMbUwHQgBBkBCAAdFiEEsPME6RA4TImJXwG+zUVEUikLRWoFAmfHylMACgkQ=0A=
zUVEUikLRWrExAgAidoE3BC3uo+6WsQTXy4d/pHJksAjeX/SfevjQJ3xL00qMC79=0A=
ucca7SZ6Zq3lhk6Gi3sja28qU0dHM9MFX7IrWuFtkfxALBWz/KSxMvyQmFY2b+y9=0A=
dENZi/jMiZPBioH5E9LAB3Z4meSdJrnFj+A6vzwkpnKOVjEgvIL0OntWjSP0ZpeG=0A=
vv3pA4qyingGoR7DgeAiRjb7v1YZvQE58CJbalrQ81/mufq9MB2agcOCl4nK3IU9=0A=
NpTk3Zl2Gr1ziKBRbsfu3cPcz2Sb7XJEKg0zLBVkTWbKm8WHyJs2219/AI3Dht5o=0A=
Z314+Zy7RGh6kbY8EK4nn/Ik6G8oIz3ObBtTccH5EACXawwgSTkBNATxmHm3HrZG=0A=
4sm5NWgSakXMr8mnp2c/cc9pLxlWTGr23ZoAVlCb1GJP543Gkc5hX4baG6yeerKy=0A=
VF3hTbWwqlkRU7c+NgWFdJNSR78j8j6vJ8Ez+qwRMbKAIExfiz+9jyARIwc8v+ci=0A=
GUETRJX86F+ypmSjX20kcZuns2e0oZZrnM9oJPsqedhO5M3jhQA9Exrjf4L/aVSW=0A=
4USMOleOlwP4pQUnxF+/aySZJCSxrWci7clgjeC+f14nX37uWHsk1fXt6WoL7RiR=0A=
TaII0W7Y4lzc8wvfY+O+vslLFuAnbvDW0Pbfg0tglnRejUb7YIxcU8/ogXS8wwAx=0A=
8LZ+6YWHuc6D+skx9COtanEX+9A1eCw5p6wyVJ4D2MwbUw2zZkIDUklp9/OQI1nG=0A=
lYXHkBWrQ0gwqoNg8E1iqp2SvGciNKrzQeEoIlDjx85WUpZsRE0g/dFk+XARHZYw=0A=
5imzKUAfdt+1L3zTqhWaZKXutC76BR3E5ssLVCxDNnhHbGFrth3cQCAn+7gI1e09=0A=
8AqzDybEH1CDdDrddTiggNjdnxd8vqu+JNrFvBvY7XhzbOiyp1Mi36Ln8yyGDaSB=0A=
eJxFUjmxwe6cfRx87fufzbMUFnXyBs4h94CVWtziNqQ4gnznpZRIVJ1q/KYIQeg+=0A=
tix/AMmargnLuC3moH7QsQ=3D=3D=0A=
=3DvCSe=0A=
-----END PGP PUBLIC KEY BLOCK-----=0A=

--------------SqkiOxzdIPKN6koP46WIGrcO--

--------------YmopZWxtiJN7gofg4OD0kW0R--

--------------ZvR0wEXoMgJrRrbg0i0zkSik
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEsPME6RA4TImJXwG+zUVEUikLRWoFAmgcy0gFAwAAAAAACgkQzUVEUikLRWog
9AgAob53y88JsDqkTrxZCEEJFCiW2XU4RJBG912JlM9F6c9uYtqHymzNWMonBdmQawwQNdIv76zQ
/WPEBRZfsdyhV5Qha8pos0vDeUEhquG3Skb3EFV1n2FqDzCwdD1UYLo1fMGk1fkFU4aGhscT1Bjt
ws7Abp5HAguGZLYX/qmkubYvRDg1gzwS+v3g9xP4tKqee+bWiBPAwIhfjhekY9lzCnoVxtY1XocQ
tqlEJ7aWBRCnS/G4vahCTRl9IkiqXN1AvtcyHrAS0DA9KSOWk3GrULWzHBoP+kOMyoo0Tou/5Ohb
fWfs+x8THqZd3KS34H1jhknLbStdF9wUW7BzZfzNtg==
=c9+c
-----END PGP SIGNATURE-----

--------------ZvR0wEXoMgJrRrbg0i0zkSik--
