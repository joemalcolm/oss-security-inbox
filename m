Received: (qmail 27833 invoked by uid 550); 23 Apr 2025 14:34:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12195 invoked from network); 23 Apr 2025 14:11:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=entrust.com; h=
	content-id:content-transfer-encoding:content-type:date:from
	:message-id:mime-version:subject:to; s=mail1; bh=j79j35xo9kAASsu
	yRAFzu/QcN33PudORPCbmrv274sg=; b=RpVkrQbhI2sbt4frcG6GrzV3JstRnIu
	WIAlxvXPvcisfXeZhJ3hkmRtTGqkLjfv+vCQoMU0pG7Crc/bH7a4g/lfqnD0hdKq
	nZDEI4TQxv7cx1foFUMjd12SVyl41+y5hLcnX9mkDvh3zOFK1BuXZzw8FGPRc0q1
	peiLtoGNKfvhp8fmeuSjsySl26OaDuJM90ObWGcBAclAoomS04JC9tanR1hVO9Rg
	lOg7zMei2DnlJGRxiy3IK1duSl5+njKRDeHOt4/IiDVYpiOaWbu6esIMUeelf5LS
	une4/vsG62kpnB+idJiTx2KKrDdODDrRdvoIBcgXF0eUhcunckURLLQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q7qm3xROAUC9YGBwfBpbSfWaAZ5FELpTSVhigSYTtQRZIganQzPn4XMtxykviHu19QF2tcMWUzFi8HhiggTivUs1h6r8IcdCTvhbe8JTaqooRoktI5yDaQC0k7APbXaZrnsY8HFj2BXQseEv+lKtLfxf3HfdSM1+0Zp6UUAlFcb7yLuqrMFybbqtrvQGesH8uDoJG9j+hAZAV8aQFRvZskRpjHnUzilXnBAY+TT1hk4oIg2ED6txvV1L6pFOd3eUVb9bYCXqJPuzL10DzMAAofHc3DCRgOP3S1O+DuAaDxtHpnUtF6KUW+MI1XpiDKnd8PZRUcDidTBdQ94HQD/uOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j79j35xo9kAASsuyRAFzu/QcN33PudORPCbmrv274sg=;
 b=Xcyt/DlDDOxtgsURC9qoScGmOZkG8zbpKMVs1Cjb3bfA5t51R4cqdswy0MsY9l5U8O6uhY3kX8rGhuHuG6DhB+FljNZd1DsdTVMbim2sY8aQJRk6OpZCIx5jjGVhLWm6DI+isYj9gm3kN/tOeocqQlzivDZBmLjXaeo6otGWGf1lkXBbAbBA1Kcbqx91LmMdV90zAQrojNStsIxIa5nUjp0sfwb3np+qHbXmsrwXdMPH43/xAK5HCEuZIS7EBkrZtV0Zt3upmCPQXe742P3PSKxxeNM0jSAhl+bCrnyyxxJeRRgBR+LhhSjKzh7AQUWw350igtKmVmBD6ygSif24cA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=entrust.com; dmarc=pass action=none header.from=entrust.com;
 dkim=pass header.d=entrust.com; arc=none
From: Ian Norton <Ian.Norton@entrust.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: vulnerabilities in busybox tar and cpio tools
Thread-Index: AQHbtFmkl+BdM4wytEmLvMKbRfTJ5g==
Date: Wed, 23 Apr 2025 14:11:44 +0000
Message-ID: <575DB6B1-8A9A-46C6-AA2C-9D0695E1FF85@contoso.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
user-agent: Microsoft-MacOutlook/16.96.25042021
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB6931:EE_|IA1PR11MB6195:EE_
x-ms-office365-filtering-correlation-id: 6d790edf-9943-44b8-149c-08dd8270c742
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info:
 =?utf-8?B?eG54NWxXY0ZWRkR6Y1ZPMlFMZ3dCajdwaVNUNFV6elNVQTZaakdDUHhQWng1?=
 =?utf-8?B?dGFOWjRoK1cwS0RoVzNyeGR0Mkt2WXhhci82b2VOSCttN21JSm5QaEdXazlS?=
 =?utf-8?B?eHRwZjFERXg0ajJEbjBKM2Vhd3RDdEVleXB6clA1RWxmK1lVQ0hRSm55TjE3?=
 =?utf-8?B?L3JPOE1PTXlnTzUyM2VOMmhxenRWQVdseDZGalhSdDRXR3FNa0FzQzJPZlcz?=
 =?utf-8?B?YjhBSksrSWQrNkY1TDVxUUlVbS9xVFRlaTJubTM0M3JsQ0w4QkFjZmJFTXAy?=
 =?utf-8?B?WmN4b3RzQW5SS1pxbTlmZU1QRHU0OHA5b1p6anIxU29neWtpdXVLeURDcnlS?=
 =?utf-8?B?WXdOY2VuZnhGRmdwR1FiY2M0cUlwWGxQRTg5eHdSSGVFa0xEbmNuUC9jOURa?=
 =?utf-8?B?T1BpajRCTkFUbXJnRjlvM0VlNHRXNzRQQzJ6UTZzSkhvQXNJUS9TandXLzhK?=
 =?utf-8?B?dkVlQ2NsVm1hS0gxNW5aUjR2azlhV1JFZWF6ODByc0NnQzE4cVFvRjNpYjcr?=
 =?utf-8?B?N0RNcGN4d2NiMEdYeEl1dGtqaFExaFZwNE5VV244NElkZ0dOTDhmbS9Id0sx?=
 =?utf-8?B?bzhZZE14SDZJcHFuUi9xbVE2VE12UnhUVlZ2WFN6TWxWSktlQ0xkMC9xZzRL?=
 =?utf-8?B?M2QxRXczRkh3N0FoU21Vc3RmTlVlbk9HbXYrWHY0V09qZWV0SzRIY1B0Z21k?=
 =?utf-8?B?K0ZyTllkdGlmdlhwQ1lNMUQwd1pkQ1BNWW1kUW9ON2dMeWJ4anJMTnR5K05r?=
 =?utf-8?B?Rjh3NTEyY2JKL1IzNW9DeDArS3l0cEtTQkNtTWVhcllQWGovcHI1TlE3d3ll?=
 =?utf-8?B?VUJIcldsZEFGanBheWs2U2FhOCtOZHk5Q0FrcTV6QTFwc0hyMXFqdXFkK1A0?=
 =?utf-8?B?TGtNVWZ6bWhzVWJ4dklLQ0ZXTnduRENYMmRGb2JPZEkvTHozY3IyQjFiaEo2?=
 =?utf-8?B?c3h2V1RpZmJZNVpIWHh5WTZ3anpqWTJRZExRMEwxSkZSczc5Sm82akRTQmlM?=
 =?utf-8?B?NHNTQWhKeXJVQjRYcFI1ekxEWWYreVZtc1R1b0VoT002elJNUGVmc29NNHhO?=
 =?utf-8?B?Y2VhZUtBcDZNK1dvRTYzOEI3R3BibmRJeHdaT0J1bWQyRlJjSHpVN2ZTS2sx?=
 =?utf-8?B?NGZ4Nk51Nzh1dndCVmJxVzNuenBqNlBEaUlLNk5td3U5bytPOVhVVTcyZGNa?=
 =?utf-8?B?ZUthNnVUc29GeTZwcVZaalk3ZVNyTGVQdEVsUllZVnRoS0VGRFdyRmp0K2Jl?=
 =?utf-8?B?MnJhOEdsdFFpVUJaRHlQUmR4UWR2MTVmeWlHS1VIVUI0UEYvb2FrVXh1eGVS?=
 =?utf-8?B?VERGU1JkSUkyZGhpOUhjQVpENXFXRlNVRGdYcndGSitYYzk4WWdaK3NONUlJ?=
 =?utf-8?B?RUt1TWpzMGtuVDE2QVhkbG5IL3VuVVBZUENmMUIwcjU4Q2UzUURaRXJvOGdD?=
 =?utf-8?B?cHlYWThTbCtqOTNVWVBJd1h0eFB0T0VYZkxSZ3Y2TG10Z3FNZFczUy9ld0xL?=
 =?utf-8?B?VkM5c1o1TFFrOUhqOGcyU3VVQUszd2JqK0F5VGI1aFVETzVQbllCV2xPQ0F6?=
 =?utf-8?B?TjgvMFNSVGwzM2JrS0hDVitUZEMxOEpadDhQTUd1TS9QeVFQVlhZd052TDJ2?=
 =?utf-8?B?MGtQVHVjd1ZDZkpMRCtXaitUR3RzcDRrem9SemprOWFicDQxd0JNN0hnNmN5?=
 =?utf-8?B?MzlhR2htTVFDd0M1a0pOc2VJeVl1amdwV1hBc25lL1ZOVktiSFcrWDdKYlhZ?=
 =?utf-8?B?ZUExQ29pSk9sY3Y1R0hRbkVNSStlM01DQW5kUFc5ZjF3VGkrL3ZnL28yYzU3?=
 =?utf-8?B?czBSZUVnMldHSFNsYXlXUUJlV1FUOThjRkRzZW9VVm0vbGZvK0RJZjM5MDlk?=
 =?utf-8?B?dmlHRkRzYWUzOU1uNHd2OEczRXoxRFBjaHZQVDlqMTlVSzQrVHVHVEZkRWpR?=
 =?utf-8?Q?MCse5/yqyTk=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR11MB6931.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?R3hiQlQxaWdTc3I4UmRYSkNmcHBSVDZQWEZlRXFkSGV2MVRMRmo1QlEvbUFK?=
 =?utf-8?B?VkQ4K2hNTGxFaXJmdnl4NlVDMTBTTTdodzlNLzBlUGdBd010VURMdGZDVEQ4?=
 =?utf-8?B?NVAxZFhxMXJwR3NqVTZobTlRREhaaUljVGN6c1hPNWFlQTNOUlJCbEdSVFZr?=
 =?utf-8?B?NEZqcC9ONG1WSG5odkMvMVRCY01uRHlGN3dodG8rTXJZNmh2QmRiZUF2ZmJV?=
 =?utf-8?B?U3c2Y1lNK052bVViQ1hkWEd4bzJLU3hBaDZFbFNadEttUDMrcHZkMGFGWjJp?=
 =?utf-8?B?VmdPblFiQnJMRWtHOGYwZWtvWTVjWVR3c1FkNTR5QzduODlPRUQrbHZDamVy?=
 =?utf-8?B?M2hTUk5JcXpmVlZWaDk1MjV3bGo2Mk9UTTc5RE41OUgvUzdIUWlWS2MxdnFh?=
 =?utf-8?B?MzNKVUQ2UHpNOVhZQXlOUGt1T2lEMGt2ZkE1MzNTS21GblR6SjYzTUZhMkNJ?=
 =?utf-8?B?a2tEZjkzcTM4S0VxeHZzVDBVL3RHTkNDLzExRzQxYVMvTjh5Zk1XWWNhWGNl?=
 =?utf-8?B?bWZZaTFmQ2xwSHo5aURxWHBjVjhZdGhzYVcrc0p2UHVJSnBSeHhiVHpkdDVC?=
 =?utf-8?B?bG0xeldMeW5UT1RpR3l3M2VWbUpSOXV1QlowZjNzR1FUQlE5eTl4aXZqa3Bh?=
 =?utf-8?B?bWNoeFk2d0YrSE14aEYxSFlZVjBoZWpjTXNSSXMrOU5QVkZUenRuMVd0dENa?=
 =?utf-8?B?RFRFUCtiRFNhdkNidEhjSjFVREV5YWFHWWZFaTg1RGR4TmpVTjZMQVJ2T29Z?=
 =?utf-8?B?QUZxazQ0eUFpU2drWTJUc2ZGc1pjQXkyT2UwUXlnYldvUzl0MFdiR2p3OEFK?=
 =?utf-8?B?S0lWN1RxMmV6N3BzenhsWXVDVVZaeVJmTFpSY2cvUGlsazQ4d1RhNWdBNVpx?=
 =?utf-8?B?TGY2RERyVFhMV2h5OU9rWFd1NlRDTjk2Vkh5dUt1WGtLamxJRDNvOTdiNXhR?=
 =?utf-8?B?RzM3N1MvNERUcVdudS83K3NLcjdDVElkbG52VFR6QzZmRWhmRUlGbElYNng2?=
 =?utf-8?B?QmhoaGgzWjREWitaZVkzaG9TZVo4N3BKQ3BTa1hIaytIaHRGaEloTitvUVYv?=
 =?utf-8?B?MXVrbk83a0Q1M1NPcXluZUthcE1TNGZXc1R6cS9jM3VUKzF3S0ljd2xyaE1X?=
 =?utf-8?B?NVAzNnYxMVl5SHZLVlF3K1FHVit6R0pyUm4xTXVkNzM5RzdSaHJIYmFVdVlr?=
 =?utf-8?B?VkNOc1ZzOCtxYjUreE5nQXhhMWgxUU04SGlJL2ZnRFdTL0RkVEFaaVlJZXh3?=
 =?utf-8?B?YkkrZkxHdW1tQWZlM0p1QmM4RDhjcWpMUWo1VjhrZ1RNaXJBdGh4L2ZtTFNI?=
 =?utf-8?B?ZjBkNUk1QXFvMUhwYlIzVUV1UENveHk2Mk93SGI3MEd3cDd2VDZFVjZ1bG9o?=
 =?utf-8?B?TzBzZ2o4MWZXUXM1L2VwVHdRelNXSForZm8zT0lCbFk0citOYnZaQWw1SDZF?=
 =?utf-8?B?bFlVV1dVclQ3cDNYZmMyaEovTmp0bnE5R2RFR0hCbXc2U2RmdzNXZkVjMU9K?=
 =?utf-8?B?ZGRDSTJmZytNVDZ5QXlZWldkQ3ZGSnFJKzlsT1dRVXBXZVBXajF4dWJZQVZX?=
 =?utf-8?B?V2hndmErSzJjcTdCamFYd1V5SVR4YUsxQmNEejk3UXI2OFJSRFUvQVNvR25V?=
 =?utf-8?B?R2lwNEZhTFM2OVhvVFJrcUtXRHl5NWZVOXBRK3hTSGpWRmttK0pZTGNnYUg3?=
 =?utf-8?B?Mmg0L25maGRoYTlNN3ArK2lKcVgxSmhtd1g2Q05hZVpJTERPTDJjRlh1d24y?=
 =?utf-8?B?b0g1eGFmSHppRXdjS2RoQU5Ka0VyaHJZSFRXN0lPVnFQS1RHTGltZmovZCth?=
 =?utf-8?B?RWF1TVlOc2c4Vis0bytNUWtVckdqYU8vczdBWXQxQkswV3JXWkYxeXU4enBp?=
 =?utf-8?B?aHJVeXVnZjd1bVZ1WWhIdWM2Nkw1UzE3dTRjK2pUanhyeWczRStLZGh1dWYr?=
 =?utf-8?B?NjlId1ZZTkx2cFl4MTNucXdwR2NSdEQ5aFVCcFhMWWxjcmc2Y3RWbHlIQ3ZN?=
 =?utf-8?B?ejJzZ2puc2hQMEUyMVdhYTRqN3NubGRaQjZaREpNV1ZCQ05JTitxZm14QXR0?=
 =?utf-8?B?UVN2dWQ4VXRyL0FaSEVGT3RrTjdKRmJVSHZIUGppTjJ6SUxqTmxrcDZTa0E4?=
 =?utf-8?B?aFIxWU85emRDSVh0WktGVjV5TDRVTmhDeGpVSmNKcldvcDZ0L0FtTDdPeGpG?=
 =?utf-8?B?QUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <920FC29B3317A54B85D44FE7D6941C41@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: entrust.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6931.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d790edf-9943-44b8-149c-08dd8270c742
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2025 14:11:44.6200
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f46cf439-27ef-4acf-a800-15072bb7ddc1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a3KLf7VFmKkLDcrIuNJvOGjTcW8T02lM/9TvoJIQyDW5pXrXbDKmoBUzwuAOjNWglqRdR3OwS3POTriuQ37x1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6195
X-Proofpoint-GUID: JJY3dw1ITI_XIHhJqXrWcs9_PYPi2P2-
X-Authority-Analysis: v=2.4 cv=d8z1yQjE c=1 sm=1 tr=0 ts=6808f525 cx=c_pps a=yF+kfS/uWKtSACHbTM5LMQ==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=XR8D0OoHHMoA:10 a=FEbzDYiKvWYA:10 a=J0Tn2xNtAAAA:8 a=xNf9USuDAAAA:8 a=x_2bjO5H88iSBYRrssYA:9 a=QEXdDO2ut3YA:10 a=1_rcOv93f9wA:10 a=WnsSiIrTN5sA:10 a=9ZcRxastL33iXWX1AWsW:22
X-Proofpoint-ORIG-GUID: JJY3dw1ITI_XIHhJqXrWcs9_PYPi2P2-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDEwMCBTYWx0ZWRfX6QVSKXTQcSWr i/Ob2xu0rje22ByCoNBYrA4Qp/u62iSok9r1jU6VLJrJsJPsB2FTLwzssVsZpPsJomZpSPJBYxN RnRLRYmHTTaTxBmmPpNp8wCnkEpjsPBHmitJPCCiz07yxBFEEemkyaWzSjgpPgZs4kXHSboSmSZ
 EHA57NJujgPAJHeIvRH2AvF5Pivzo7ah1K5boNWwNyw7HMYos7Q3Xl7S4Ev+a0NuAwnmVkxXOwR 72gsV0UfzN4NLOSBm0CpuT8WYAKMoqokhPkCi5ahgzaAK0ebch3IZXcfnsoxFmMMdCHwwmsfwvQ Cn0Gq4+vo3pXF+s82cSG36Cap3EMYA4sYmzdPAsdBKpjiGCEi/GAafe+oiy5TP86Xy6Ci4HZBsk
 KgAPi+Sgl91ppO9Mohv9wuy3unLBsBB8YmBuMbWgketbGsFdRJz4zc6aF/vWuv9nQLLDHLew
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-23_08,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 phishscore=0 suspectscore=0 spamscore=0 bulkscore=0 malwarescore=0
 adultscore=0 lowpriorityscore=0 mlxlogscore=648 clxscore=1034
 impostorscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.21.0-2504070000
 definitions=main-2504230100
Subject: [oss-security] vulnerabilities in busybox tar and cpio tools

DQpodHRwczovL2J1Z3MuYnVzeWJveC5uZXQvc2hvd19idWcuY2dpP2lkPTE2MDE4ICAoYXdhaXRp
bmcgQ1ZFKQ0KDQpCdXN5Ym94J3MgY3BpbyBhbmQgdGFyIHRvb2xzIHdpbGwgcHJpbnQgdW4tZXNj
YXBlZCBmaWxlbmFtZXMgd2hlbiBsaXN0aW5nIGFuZCB1bnBhY2tpbmcNCmNwaW8gYW5kIHRhciBm
aWxlcy4gTWFsaWNpb3VzIGZpbGVzIGNvbnRhaW5pbmcgZmlsZW5hbWVzIHdpdGggdGVybWluYWwg
ZXNjYXBlcyBjYW4gYmUgdXNlZA0KdG8gbWFzayBvciBtb2RpZnkgZWFybGllciBvciBsYXRlciBm
aWxlcyBpbiB0aGUgYXJjaGl2ZSBmcm9tIGFueW9uZSBydW5uaW5nIGJ1c3lib3ggdGFyIG9yIGNw
aW8NCmZyb20gYSB0ZXJtaW5hbC4NCg0Kc2VlIGFsc28gaHR0cHM6Ly9saXN0cy5idXN5Ym94Lm5l
dC9waXBlcm1haWwvYnVzeWJveC8yMDI0LUp1bHkvMDkwODA2Lmh0bWwNCg0KDQpodHRwczovL3Nl
Y3VyaXR5LXRyYWNrZXIuZGViaWFuLm9yZy90cmFja2VyL0NWRS0yMDIzLTM5ODEwDQoNCkEgdW5w
YWNraW5nIGEgY3BpbyBhcmNoaXZlIGNhbiBlc2NhcGUgdGhlIHdvcmtpbmcgZGlyZWN0b3J5LiBE
dWUgdG8gIzE2MDE4IGl0IGlzIHBvc3NpYmxlIHRvDQptYXNrIHRoZXNlIHRyYXZlcnNhbHMgZnJv
bSBhbnlvbmUgdXNpbmcgY3BpbyB0byBpbnNwZWN0IGEgZmlsZSBiZWZvcmUgdW5wYWNraW5nLg0K
DQpzZWUgYWxzbyBodHRwczovL2xpc3RzLmJ1c3lib3gubmV0L3BpcGVybWFpbC9idXN5Ym94LzIw
MjQtSnVseS8wOTA4NTEuaHRtbA0KDQoNCg0KDQpBbnkgZW1haWwgYW5kIGZpbGVzL2F0dGFjaG1l
bnRzIHRyYW5zbWl0dGVkIHdpdGggaXQgYXJlIGludGVuZGVkIHNvbGVseSBmb3IgdGhlIHVzZSBv
ZiB0aGUgaW5kaXZpZHVhbCBvciBlbnRpdHkgdG8gd2hvbSB0aGV5IGFyZSBhZGRyZXNzZWQuIElm
IHRoaXMgbWVzc2FnZSBoYXMgYmVlbiBzZW50IHRvIHlvdSBpbiBlcnJvciwgeW91IG11c3Qgbm90
IGNvcHksIGRpc3RyaWJ1dGUgb3IgZGlzY2xvc2Ugb2YgdGhlIGluZm9ybWF0aW9uIGl0IGNvbnRh
aW5zLiBQbGVhc2Ugbm90aWZ5IEVudHJ1c3QgaW1tZWRpYXRlbHkgYW5kIGRlbGV0ZSB0aGUgbWVz
c2FnZSBmcm9tIHlvdXIgc3lzdGVtLg0KDQo=
