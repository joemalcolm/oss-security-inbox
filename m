Received: (qmail 3614 invoked by uid 550); 16 Jul 2025 22:27:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12273 invoked from network); 16 Jul 2025 22:18:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cyberark.com; h=
	content-type:date:from:message-id:mime-version:subject:to; s=
	0121pod; bh=lzyNpaqtRFzydmLXz0FKbF29rW1hdoZcVesCn6KFJbo=; b=P9zE
	xVRyj5UieXtdQr9/QoNLR/6LcZP7qQE5iM1co59mI68iEg51AOheL7mhpjYqX7X8
	B5tcsvfiHe1WawoNGPmtiMp0h14+/J2KpQBTnj5R8pqW4zJZYjkZC4sqY1r/VmzX
	H46ScdB4wzbfMU9QE9b77S8egrTloZKU7fUQflodELzDNU031deRFbPKD1QZHJXD
	VpLDdQJU8fYgZo2DeS8oiDfpZuQUc+z6akWGZ2vthLRXc3aR5uwNZNeuN75jHoH5
	L+EgOjZH2fpbaPVjNzSoabZUPV7McU8ausSA0zlcNSGIny1e4J/yVsZDIrPkeCIs
	2ilwhGRjDEEZrwosYg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zVbNmtko3BPCkm0KbxkWUf0/NgpZLA384E2AUNli4m7Awu/59LoYs4qPkv6TRAlF9FMyRYmNqNyjlXC7fQAv8oIxb5ocABqKiVgauNq5z6AtWztGFlxxfLzlNCgciCBMQqXzYMzJB0/yfKnUzTodeBzldi5yBDEKNjWpeAq8rf5LDbkUTuEAdABPKlrZ2pwQC4RWcQx4qxhJSr+KHIp5QgahwJLlFX/62zy6pog/0Nzod12mb5zIexDxvFQt2Lok4xvqMxnX8PPkkFZVuc9Pp+uNTke0rYEjzAMUwqbZk9CKBxRuhRG+g+nxXCHpkrDT20PkS8CuCnEYWWEOX+jMsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lzyNpaqtRFzydmLXz0FKbF29rW1hdoZcVesCn6KFJbo=;
 b=YcCeDQk8jLpmbksTZTM9P5mpvc4rP+k6R6FX98YJpMnJwE3s0/ZkZ7yrTSUCWdrTTS1P6ozZ6GO5hSKEqc57PMAThxyXfAwoKppIQC3sQ+3scnAxsPwvGdPC7sSfvCZApmN8AGDVuLA5UO3y1q1E2zDE53dSmwtXPnTmKWG/JdGcgwy8ZP07nme3stHnN81Ro7sl8Rzv+z9FTWFcJ4wSTxwYrQDIuZpe0fxcBpxt/SUtuutg7aYq+grVn0RpVxCaFsIyJgCV2R0CVsYdXykFw7NeAPl7h0hsO+LuPNcZfpURDggNfe0uJxfDemI/+0RCZTgLyvNQ9lHlcKGmbwzUyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cyberark.com; dmarc=pass action=none header.from=cyberark.com;
 dkim=pass header.d=cyberark.com; arc=none
From: Andy Tinkham <andy.tinkham@cyberark.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: Five new CVEs published for Cyberark Conjur OSS
Thread-Index: AQHb9p0xmnbG6ZZUwEaFMpc83aKw+g==
Date: Wed, 16 Jul 2025 22:16:47 +0000
Message-ID:
 <VI0P193MB248213E5C8E5DAA397A837F6E256A@VI0P193MB2482.EURP193.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-reactions: allow
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: VI0P193MB2482:EE_|AS8P193MB1270:EE_
x-ms-office365-filtering-correlation-id: e6a4d01d-8019-4400-746e-08ddc4b679df
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|1800799024|366016|376014|38070700018|8096899003;
x-microsoft-antispam-message-info:
 =?us-ascii?Q?65xXmJ+2fNLSbZ+bWhp6PFEfRuICoK7hfseWv18IZrlJPSCzmbIUH9VdsoYG?=
 =?us-ascii?Q?iWNzFdfPoEZvGrpw+EfDLwBam0J0V00CQwMFVmoo+sBddK0VGXQu7FKFx85h?=
 =?us-ascii?Q?x59BESMK+L1ok6R/N0aw/FHS3b1kuagLkCrtfJlYfpHVil75KMdMnjlbgRr2?=
 =?us-ascii?Q?6IBDNsGCZm2v2/l24BgBe5KIOluVXG4pvZLeuS6YLizfovaSpuoCEjUVwu2O?=
 =?us-ascii?Q?CKoeM8LbxXe6TeBxIv5gJcdBFqM1+jC64T0Swt7i3KYuo8V/PDFotu4A/sTN?=
 =?us-ascii?Q?adU0AFKHGbF/eXhlx1X9haBVamXHuGhEAZlE9x7pvxOtyoRsVehnHCpNW6AB?=
 =?us-ascii?Q?7UEu7196YIyvgQiDTmeXL3LQYd161p+mLocvLHIYdnS4OLqq+C7YTxlffM46?=
 =?us-ascii?Q?WVI46uj+GA8NR39ILlYJt/10QcHOq0THjsWihxBOqkRAdU12vJsMeip2CZdD?=
 =?us-ascii?Q?AcHwh10AdaClazGq0bLdieFZ3j1t3weERmNb/wRC9wTRXwJnYQuVnHxFMXer?=
 =?us-ascii?Q?zMrLYyK/mce5Xp99KT1hV5A375OtTD28x/bR7zO3gRXs6DgsucMgJtD5dar/?=
 =?us-ascii?Q?FtHIFhwP9XtClatSf2vdGcIGuuFihG1OMDxVCxQDqLNHpVdW7Uv4opBPzhsN?=
 =?us-ascii?Q?oN2u+Kii6CPlLnt9KjnVA57hwyl49LQNHtD8Y3Kn7XarKVD4mkvgQ9YKNRo9?=
 =?us-ascii?Q?0GlRhtM9nZStdTObg15wFlY2QNqI4Nv2LDJYBEPfh/k25slLIDFFgXZG3Pes?=
 =?us-ascii?Q?W4kYTMjlFmlnkWKs8jKSv9Dm3+n1VZ2QxnQfTpaujtuZnzDYJCr8krQHS+EY?=
 =?us-ascii?Q?gY3HXHR2Hj0h9WlUvkOsj6XPfd7ZfTiaWS0K7PqBfk5+rqYe6krD4uTAIg5d?=
 =?us-ascii?Q?Y6vUoqeJTmp/hha/f0KyC411ke2aUoR3wiDGqWLJIN/enCRST1LLAZigcNZu?=
 =?us-ascii?Q?U5hZfZxoAJ4ssuQFgUNvGFhuBS0fwrhifCVFHPfZyUSYQbJEXdT2EgHJDa8b?=
 =?us-ascii?Q?AI198L96vbDKXMOHlTBrelUfx4c28SQE+aN+N822zPM5M8HXAGX0mnXM21jj?=
 =?us-ascii?Q?xcdSHW1TnD5gT5OquRWSkQ/ZPyzNnUCXW60xpDp5PHJkGLUjge22f41GlmF3?=
 =?us-ascii?Q?uLyxUhASsyuNnrrSu7JaTwM0J/guPM30lT5YJQcuD4q/uzvyz/AXMfhMN7lT?=
 =?us-ascii?Q?fLWcKOSFaX9W/336TjBQcu7iMFOqtQvAk3qqMsanR+LoT7Lgvr8Hj036T/IA?=
 =?us-ascii?Q?l2QIwPNQwlUCyH6iw+XPNX5v/hnD9M6DqXcYkQQVwkwn752PNc3Yd7nrM6ut?=
 =?us-ascii?Q?moTwyGil9KlBiBDNUTUNjgFHpwEcL+cCgqnh5KJn7NxDz+txXNcjdCMby9Rs?=
 =?us-ascii?Q?cmcw65kRWBPc6jJ+klY1VVKCC7SgRtZN1QjBrdGurlHEQEfHjBBScSrgjsI8?=
 =?us-ascii?Q?Cvw7x2N3eq4mNp5D5MUzeXo0gsiIhox0gBoaIWRVIq1IIoI8ARIFHXVAe7pY?=
 =?us-ascii?Q?Iy+Oj6/M3o9o8HQ=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI0P193MB2482.EURP193.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(8096899003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?5Pbb4nKEh+c5HrH3+MVpgf0vMHEeZfxnWCJ5LieR0nOasvyLGnA3mrbytEpf?=
 =?us-ascii?Q?/XuBVAsus6Dqgh88lxQi1g/DSO5bAbmYxvRXghGHWJc1YCk/eWXi/3Ys5iAA?=
 =?us-ascii?Q?e8l+sn+xmENpe5yHU0oTisLV7qPfwrRKyQ2pyhoSIGGMxrkjFewDUqqjt5pa?=
 =?us-ascii?Q?23adIlGUskkvrtbP5LtO/ePlbVZRT8WNgIEI5X++YKJ2l8qFmXC5RmEiFsYB?=
 =?us-ascii?Q?u0QS2bBCJ84YcM/LH2p4v01NP/XEhtpLRGTgBJhLnM57/eTV9aFeBUXXSo4v?=
 =?us-ascii?Q?yGzFjHOao+RNgQZkIfZFSCVBe4sk50H8ArPKyqSH+sN8uSqcQZeex98nYp1h?=
 =?us-ascii?Q?tn7ETXs+F0OdKS/AvqkMbJT1pD5YT3hqoEW+7nTrQhAnD3N6AoQUM8vUDjwu?=
 =?us-ascii?Q?EnPC0OR5rj/68yBzOURbU1iT9nZJ0ROkz7K4eBYMuZQavMIwGl01aXK7WJXC?=
 =?us-ascii?Q?0YNAOCWpSdSXIGWYqbjQb4ZXVWkveY7jDV3V9erCfNCJd2j7CbQH8Iyd9f5/?=
 =?us-ascii?Q?FM7YhdA6B6xL8yw05u6PTJFk6+U4wFBjtwBVhtkfZCKBV6hc709f3cDeNrDi?=
 =?us-ascii?Q?C0Zs7ATmf+NktWUoWLz8nV1WIE0DT1r4Al5iE60HIGecRoPzratPaxg1Fl1+?=
 =?us-ascii?Q?vOF9APcetMW6bep2fsTsU5VYFmfIb3R46hLFuh4Y5H0mKBFfBg/PN21yNZRN?=
 =?us-ascii?Q?d/8Hvkf/9K49rF98b+Rtz/0J2dRUxBjDz8H31C2hn4DWyGQcy2MXYVDPTdsh?=
 =?us-ascii?Q?OSeIg5kMHm1SLZtnK5BTZwP0nLozXWlE2eaaoXA2AgHoBDeT9R/fsjb96ytU?=
 =?us-ascii?Q?5qYK5lXAaSfVQ3mDowa09rmQyXI4tlmq4to9DTlkWpY1cRCtogfny/1hT+bu?=
 =?us-ascii?Q?+Z80Na0RgnXyoOtxX5jfA8lTCJ9gKMdUbfqkLR6MyBjU15Ac2NIiV2AWR4sl?=
 =?us-ascii?Q?I5p6jNaxkyz8jcpZuLkPOh2udPSWXihu/H4UUrDQKcot+xca3k8hvLyTpjKM?=
 =?us-ascii?Q?8px/lcYRO0+ZksfsUffkRR5WxrgmHJoue0451wBOkdEM3fmqXnUh2+4B+MHj?=
 =?us-ascii?Q?720B3WqTcm5BEk2UOYmHh/FRPiR6pjuQPe0etEIQJb0a17cagL04ORPQ2kpQ?=
 =?us-ascii?Q?/RQw3yyxA/EutLtzNg3d8D7knhC3IWKlyDcATfUibcuDmmZQd8aI9YTww3lp?=
 =?us-ascii?Q?9EGM4QM6m5gTmbOVrfQPK4mCbdAmzg2uFJxKXcpnFFdaP3IWGon32Bj/R8Fn?=
 =?us-ascii?Q?TGNgXNIJmQngsgbOZdggVU+EAmuAJgF9ogUOcG1/iLSZm72CJP4KlI2ptIj0?=
 =?us-ascii?Q?Q5PqwKZlslTDXDvsKKT6Ho4LTpOK3lUgE4YOyrv1GpVkE9Vsq2IsTffq6VoT?=
 =?us-ascii?Q?riCSobovPR1Klf1MqXUATu2IgoIt4pJtA8DfNLj7Sk9gT4qlm6LurT6C3Xzn?=
 =?us-ascii?Q?Y41O65CD45pm4Peb9Dlz/bvFfjHjXQDY/u0kAfyl50petXruuBrSSms1HUDs?=
 =?us-ascii?Q?EKfBhGojFY2DoOYaT135SPfnrwde6t4bALSYeeSv+cQ72ZArUcoLsvI8sY2d?=
 =?us-ascii?Q?HuELNshE0DpDeE6EEG5hdd++8ImHv0SS2BLY4rtMzUSH/WDUzy0bcWraGvLE?=
 =?us-ascii?Q?rg=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_VI0P193MB248213E5C8E5DAA397A837F6E256AVI0P193MB2482EURP_"
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	LAoIE3++FUs7TxPHZi2b9x7zinSe0oi6uvztDPq5QpqwX9DWc+KWgy0iglFtlOgAXwuzv+XdKIvjS7jpyWoiQ5G4RUcZRL/zyEaBl/MsVHoEer2y5aU1p4/22L8zkONEpt5xAjb/0h5zDgD/X3M/qSuUQg/Cf2NN+mJmLGTxbNE24rC24KG4njgzDAzM2M6d9OkQ7Xx9Oqs9/B3G6lqDUQXYCjTpRmBxukEiYUZ6EqolfIkt6jPwd0CzoSgDpXeO0gdxLu1dwLRSC1mYqBHeu1uapdWVANWqzALE8O6083uAwjexe2vWVLoMrWXCAUzMwllMXVvdYb/mjOdwGnBQ3vQr9XRpMqfienor/hJZuUch8V3mkh/FIIqYMQsKZlLLyalPIA7vDj7P96kGDrPlmU5t/Kxy/J7QvLSuriqDo2CGiAj7WmWUPBPIsstJvIm87zTt8pkqZ2kvKWhUPvLkdq3Hrn1I8cRNKHKy70QizPZfPiTJL0IVuC8MrzmdBaRDqoeuZDW3irlPaEQAwMzEQkoeoGSqQKTootV9vCnrKu0Oru+yYDXQS6clxZM6KJ6vqnMteFE9ICF8Lup0L4M3zC59zlkb5nOMhuNwSuHsE61vcI6A7m5o+Pg9hHYgIJQY
X-OriginatorOrg: cyberark.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI0P193MB2482.EURP193.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: e6a4d01d-8019-4400-746e-08ddc4b679df
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2025 22:16:56.3592
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: dc5c35ed-5102-4908-9a31-244d3e0134c6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N3imMGqHYDkKL5OvsO+crQvjHfisNVE/gowhoGrlMZ4E5+bukQOKtm/Jr4kkypfUlIs1Gt6S/kTcrtV8sK0EH1yc+Rszi0J+cAcRI+bWyBQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P193MB1270
X-MailControl-OutInfo: MTc1MjcwNDI3MDpGUEtleTEucHJpdjpZXpj7YodO5Hb9TVQ4lDv45ZTpPaiAmRxhxohT8MhUfadBJmbbksuK2R6aZTGaHJ9c6WlpivX7WUHEN443XD52JauXjdShE5wtp5/xQMa9x99AjoD70alwmLo3tZRGJtxY7hcZIeNmcyk/Bjh22qUV+3LUbUx+hIMVztt6ShKesBDtKVXXkASSXsixLVKZiOpu+fLBHH3uWnIYDIag3ykn3gip15RrOZKG1SZGgC16NgCipS6l6JZxr5HcNcTPS90rSleLyVY+7WZLI1em8vdugGphXw7JO4K3suxUuDDF+YlGpZBuZc6rkA4x/853AXW1kt07Xj6ToSaYHDtVV3Rr
X-Mailcontrol-Refers-To: 56GMHnVQ043211
X-Proofpoint-ORIG-GUID: QIk6ylYC6N62bjI4KqBXQ9e1nHxjqGQ9
X-Proofpoint-GUID: QIk6ylYC6N62bjI4KqBXQ9e1nHxjqGQ9
X-Authority-Analysis: v=2.4 cv=KbrSsRYD c=1 sm=1 tr=0 ts=6878250f cx=c_pps
 a=70oA38dTMX4DapOgJuEKxw==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=Wb1JkmetP80A:10 a=8r2qhXULAAAA:8 a=NEAV23lmAAAA:8
 a=n6MYwUk4AAAA:8 a=-uYbXFN5AAAA:8 a=d3NVj0I6uscpyS4JWVEA:9 a=CjuIK1q_8ugA:10
 a=Y9EI-UHfUxNnS9fwd8sA:9 a=HKIypzBAVr89hL35:21 a=_W_S_7VecoQA:10
 a=qHUO2j729WpCrxzmEkUI:22 a=8gvLZcY7Nlvl4CGD_6nf:22 a=BgOh09bUvQbaRh_aUNoE:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE2MDIwMiBTYWx0ZWRfX3lk/cHPezjji
 aD5M7jfax1MjEbk+akzy1F3f8XJtUc6bq/fcu/Strk44qgGg2EtyQFYOh8V4iqLGUSf01h0aelQ
 Qdk/yKA3fhjZbc8yyrDJ0JxHBqphZY14EVCyod4PsALo+5MEFV93Dk1xrb+cKhWWirhxqhAmj6i
 EPYzrJPNEwhEox9HtN6Ofr4/hrosi0nzVS2bw+IVgOHo3NLgMHScT0Adc2cYBkp2dZbFsOepHV1
 aqyTBl42Dg1OgdtwafwJ7pBY5qPgtWBQx38JyOaLR1Os1GGpxo1mXYtDWdPmBN3lxsmM9x5DiZM
 F/5JSoXe0eaawJoHqptiSO0XabImnq+obVJXU3Q65T270JwptsPUkm7VZ/VzTLGDpwkAi82PpXe
 h1ZU/76k0a2JRcui+ATBghdpWWWszUru5YHLtsIZdF1b2O2n3ien8Fc3tMW/zHprlPpa5wmM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-16_04,2025-07-16_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=spam_outbound_notspam policy=spam_outbound
 score=0 clxscore=1034 bulkscore=0 malwarescore=0 mlxscore=0
 lowpriorityscore=0 mlxlogscore=999 impostorscore=0 suspectscore=0
 adultscore=0 priorityscore=1501 phishscore=0 spamscore=0 classifier=spam
 authscore=0 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507160202
Subject: [oss-security] Five new CVEs published for Cyberark Conjur OSS

--_000_VI0P193MB248213E5C8E5DAA397A837F6E256AVI0P193MB2482EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

On July 15, 2025, CyberArk disclosed 5 vulnerabilities in our Conjur OSS pr=
oduct.

  *
CVE-2025-49827<https://www.cve.org/CVERecord?id=3DCVE-2025-49827> - Critica=
l - Bypass of IAM Authenticator in Secrets Manager, Self-Hosted (formerly C=
onjur Enterprise) and Conjur OSS (GitHub Advisory<https://github.com/cybera=
rk/conjur/security/advisories/GHSA-gmc5-9mpc-xg75>)
  *
CVE-2025-49828<https://www.cve.org/CVERecord?id=3DCVE-2025-49828> - High - =
Remote Code Execution in Secrets Manager, Self-Hosted (formerly Conjur Ente=
rprise) and Conjur OSS (GitHub Advisory<https://github.com/cyberark/conjur/=
security/advisories/GHSA-93hx-v9pv-qrm4>)
  *
CVE-2025-49829<https://www.cve.org/CVERecord?id=3DCVE-2025-49829> - Medium =
- Missing validations in Secrets Manager, Self-Hosted (formerly Conjur Ente=
rprise) and Conjur OSS (GitHub Advisory<https://github.com/cyberark/conjur/=
security/advisories/GHSA-9w76-m74g-4c2r>)
  *
CVE-2025-49830<https://www.cve.org/CVERecord?id=3DCVE-2025-49830> - High - =
Path traversal and file disclosure in Secrets Manager, Self-Hosted (formerl=
y Conjur Enterprise) and Conjur OSS (GitHub Advisory<https://github.com/cyb=
erark/conjur/security/advisories/GHSA-7m6h-fqrm-m9c5>)
  *
CVE-2025-49831<https://www.cve.org/CVERecord?id=3DCVE-2025-49831> - Critica=
l - IAM Authenticator Bypass via Mis-configured Network Device in Secrets M=
anager, Self-Hosted (formerly Conjur Enterprise) and Conjur OSS (GitHub Adv=
isory<https://github.com/cyberark/conjur/security/advisories/GHSA-952q-mjrf=
-wp5j>)
All users of Conjur OSS are encouraged to update to the 1.22.1 release, ava=
ilable on DockerHub<https://hub.docker.com/layers/cyberark/conjur/1.22.1/im=
ages/sha256-331fecd01c5a8a6179165bedba57b85f7cd1283b6b2a9a4f29fcb1e7a92580b=
3> and at the GitHub.com Conjur 1.22.1 release<https://github.com/cyberark/=
conjur/releases/tag/v1.22.1>.  These issues also affect our Secrets Manager=
, Self-Hosted (formerly Conjur Enterprise) product and have been disclosed =
to our customers in our security bulletin CA25-22<https://www.cyberark.com/=
CA25-22>.
For further information, please see our blog post<https://www.cyberark.com/=
resources/product-insights-blog/addressing-recent-vulnerabilities-and-our-c=
ommitment-to-security>.



--_000_VI0P193MB248213E5C8E5DAA397A837F6E256AVI0P193MB2482EURP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
</head>
<body>
<p class=3D"MsoNormal" style=3D"text-align: left; text-indent: 0px; line-he=
ight: 18.4px; margin: 0in 0in 8pt;">
<span style=3D"font-family: Aptos, sans-serif; font-size: 12pt; color: rgb(=
0, 0, 0);">On July 15, 2025, CyberArk disclosed 5 vulnerabilities in our Co=
njur OSS product.&nbsp;</span></p>
<ul style=3D"text-align: left;">
<li style=3D"font-family: Aptos, Arial, Helvetica, sans-serif; font-size: 1=
2pt; color: rgb(0, 0, 0);">
<div><span style=3D"color: rgb(64, 116, 234);"><a href=3D"https://www.cve.o=
rg/CVERecord?id=3DCVE-2025-49827" target=3D"_blank" id=3D"menur1djg" class=
=3D"fui-Link ___1q1shib f2hkw1w f3rmtva f1ewtqcl fyind8e f1k6fduh f1w7gpdv =
fk6fouc fjoy568 figsok6 f1s184ao f1mk8lai fnbmjn9 f1o700av f13mvf36 f1cmluf=
x f9n3di6 f1ids18y f1tx3yz7 f1deo86v f1eh06m1 f1iescvh fhgqx19 f1olyrje f1p=
93eir f1nev41a f1h8hb77 f1lqvz6u f10aw75t fsle3fq f17ae5zn" title=3D"https:=
//www.cve.org/CVERecord?id=3DCVE-2025-49827" rel=3D"noreferrer noopener" da=
ta-outlook-id=3D"db70e7bd-7320-4925-8a8b-ad0bd7014b39" data-ogsc=3D"" style=
=3D"color: rgb(64, 116, 234);">CVE-2025-49827</a></span>&nbsp;-
 Critical - <span style=3D"font-size: 16px; background-color: rgb(255, 255,=
 255);">
Bypass of IAM Authenticator in Secrets Manager, Self-Hosted (formerly Conju=
r Enterprise) and Conjur OSS</span>&nbsp;(<span style=3D"color: rgb(64, 116=
, 234);"><a href=3D"https://github.com/cyberark/conjur/security/advisories/=
GHSA-gmc5-9mpc-xg75" target=3D"_blank" id=3D"menur1dji" class=3D"fui-Link _=
__1q1shib f2hkw1w f3rmtva f1ewtqcl fyind8e f1k6fduh f1w7gpdv fk6fouc fjoy56=
8 figsok6 f1s184ao f1mk8lai fnbmjn9 f1o700av f13mvf36 f1cmlufx f9n3di6 f1id=
s18y f1tx3yz7 f1deo86v f1eh06m1 f1iescvh fhgqx19 f1olyrje f1p93eir f1nev41a=
 f1h8hb77 f1lqvz6u f10aw75t fsle3fq f17ae5zn" title=3D"https://github.com/c=
yberark/conjur/security/advisories/GHSA-gmc5-9mpc-xg75" rel=3D"noreferrer n=
oopener" data-outlook-id=3D"ead83692-53e0-4c72-b729-9cba304e2b22" data-ogsc=
=3D"" style=3D"color: rgb(64, 116, 234);">GitHub
 Advisory</a></span>)</div>
</li><li style=3D"font-family: Aptos, Arial, Helvetica, sans-serif; font-si=
ze: 12pt; color: rgb(0, 0, 0);">
<div><span style=3D"color: rgb(64, 116, 234);"><a href=3D"https://www.cve.o=
rg/CVERecord?id=3DCVE-2025-49828" target=3D"_blank" id=3D"menur1djk" class=
=3D"fui-Link ___1q1shib f2hkw1w f3rmtva f1ewtqcl fyind8e f1k6fduh f1w7gpdv =
fk6fouc fjoy568 figsok6 f1s184ao f1mk8lai fnbmjn9 f1o700av f13mvf36 f1cmluf=
x f9n3di6 f1ids18y f1tx3yz7 f1deo86v f1eh06m1 f1iescvh fhgqx19 f1olyrje f1p=
93eir f1nev41a f1h8hb77 f1lqvz6u f10aw75t fsle3fq f17ae5zn" title=3D"https:=
//www.cve.org/CVERecord?id=3DCVE-2025-49828" rel=3D"noreferrer noopener" da=
ta-outlook-id=3D"18952e3f-1aa9-4e95-8aed-1c4a6e14e78d" data-ogsc=3D"" style=
=3D"color: rgb(64, 116, 234);">CVE-2025-49828</a></span>&nbsp;-
 High - <span style=3D"font-size: 16px; background-color: rgb(255, 255, 255=
);">Remote Code Execution in Secrets Manager, Self-Hosted (formerly Conjur =
Enterprise) and Conjur OSS</span>&nbsp;(<span style=3D"color: rgb(64, 116, =
234);"><a href=3D"https://github.com/cyberark/conjur/security/advisories/GH=
SA-93hx-v9pv-qrm4" target=3D"_blank" id=3D"menur1djm" class=3D"fui-Link ___=
1q1shib f2hkw1w f3rmtva f1ewtqcl fyind8e f1k6fduh f1w7gpdv fk6fouc fjoy568 =
figsok6 f1s184ao f1mk8lai fnbmjn9 f1o700av f13mvf36 f1cmlufx f9n3di6 f1ids1=
8y f1tx3yz7 f1deo86v f1eh06m1 f1iescvh fhgqx19 f1olyrje f1p93eir f1nev41a f=
1h8hb77 f1lqvz6u f10aw75t fsle3fq f17ae5zn" title=3D"https://github.com/cyb=
erark/conjur/security/advisories/GHSA-93hx-v9pv-qrm4" rel=3D"noreferrer noo=
pener" data-outlook-id=3D"8f21a035-9aa9-48c1-8c14-ba8bc81aea2c" data-ogsc=
=3D"" style=3D"color: rgb(64, 116, 234);">GitHub
 Advisory</a></span>)</div>
</li><li style=3D"font-family: Aptos, Arial, Helvetica, sans-serif; font-si=
ze: 12pt; color: rgb(0, 0, 0);">
<div><span style=3D"color: rgb(64, 116, 234);"><a href=3D"https://www.cve.o=
rg/CVERecord?id=3DCVE-2025-49829" target=3D"_blank" id=3D"menur1djo" class=
=3D"fui-Link ___1q1shib f2hkw1w f3rmtva f1ewtqcl fyind8e f1k6fduh f1w7gpdv =
fk6fouc fjoy568 figsok6 f1s184ao f1mk8lai fnbmjn9 f1o700av f13mvf36 f1cmluf=
x f9n3di6 f1ids18y f1tx3yz7 f1deo86v f1eh06m1 f1iescvh fhgqx19 f1olyrje f1p=
93eir f1nev41a f1h8hb77 f1lqvz6u f10aw75t fsle3fq f17ae5zn" title=3D"https:=
//www.cve.org/CVERecord?id=3DCVE-2025-49829" rel=3D"noreferrer noopener" da=
ta-outlook-id=3D"9aa102e3-81a7-468a-86b0-f79e76767222" data-ogsc=3D"" style=
=3D"color: rgb(64, 116, 234);">CVE-2025-49829</a></span>&nbsp;-
 Medium - <span style=3D"font-size: 16px; background-color: rgb(255, 255, 2=
55);">Missing validations in Secrets Manager, Self-Hosted (formerly Conjur =
Enterprise) and Conjur OSS</span>&nbsp;(<span style=3D"color: rgb(64, 116, =
234);"><a href=3D"https://github.com/cyberark/conjur/security/advisories/GH=
SA-9w76-m74g-4c2r" target=3D"_blank" id=3D"menur1djq" class=3D"fui-Link ___=
1q1shib f2hkw1w f3rmtva f1ewtqcl fyind8e f1k6fduh f1w7gpdv fk6fouc fjoy568 =
figsok6 f1s184ao f1mk8lai fnbmjn9 f1o700av f13mvf36 f1cmlufx f9n3di6 f1ids1=
8y f1tx3yz7 f1deo86v f1eh06m1 f1iescvh fhgqx19 f1olyrje f1p93eir f1nev41a f=
1h8hb77 f1lqvz6u f10aw75t fsle3fq f17ae5zn" title=3D"https://github.com/cyb=
erark/conjur/security/advisories/GHSA-9w76-m74g-4c2r" rel=3D"noreferrer noo=
pener" data-outlook-id=3D"3faab76a-178e-46be-9f97-5650b1b2647d" data-ogsc=
=3D"" style=3D"color: rgb(64, 116, 234);">GitHub
 Advisory</a></span>)</div>
</li><li style=3D"font-family: Aptos, Arial, Helvetica, sans-serif; font-si=
ze: 12pt; color: rgb(0, 0, 0);">
<div><span style=3D"color: rgb(64, 116, 234);"><a href=3D"https://www.cve.o=
rg/CVERecord?id=3DCVE-2025-49830" target=3D"_blank" id=3D"menur1djs" class=
=3D"fui-Link ___1q1shib f2hkw1w f3rmtva f1ewtqcl fyind8e f1k6fduh f1w7gpdv =
fk6fouc fjoy568 figsok6 f1s184ao f1mk8lai fnbmjn9 f1o700av f13mvf36 f1cmluf=
x f9n3di6 f1ids18y f1tx3yz7 f1deo86v f1eh06m1 f1iescvh fhgqx19 f1olyrje f1p=
93eir f1nev41a f1h8hb77 f1lqvz6u f10aw75t fsle3fq f17ae5zn" title=3D"https:=
//www.cve.org/CVERecord?id=3DCVE-2025-49830" rel=3D"noreferrer noopener" da=
ta-outlook-id=3D"d8b70943-4a5f-466a-aac9-73a93af6331c" data-ogsc=3D"" style=
=3D"color: rgb(64, 116, 234);">CVE-2025-49830</a></span>&nbsp;-
 High - <span style=3D"font-size: 16px; background-color: rgb(255, 255, 255=
);">Path traversal and file disclosure in Secrets Manager, Self-Hosted (for=
merly Conjur Enterprise) and Conjur OSS</span>&nbsp;(<span style=3D"color: =
rgb(64, 116, 234);"><a href=3D"https://github.com/cyberark/conjur/security/=
advisories/GHSA-7m6h-fqrm-m9c5" target=3D"_blank" id=3D"menur1dju" class=3D=
"fui-Link ___1q1shib f2hkw1w f3rmtva f1ewtqcl fyind8e f1k6fduh f1w7gpdv fk6=
fouc fjoy568 figsok6 f1s184ao f1mk8lai fnbmjn9 f1o700av f13mvf36 f1cmlufx f=
9n3di6 f1ids18y f1tx3yz7 f1deo86v f1eh06m1 f1iescvh fhgqx19 f1olyrje f1p93e=
ir f1nev41a f1h8hb77 f1lqvz6u f10aw75t fsle3fq f17ae5zn" title=3D"https://g=
ithub.com/cyberark/conjur/security/advisories/GHSA-7m6h-fqrm-m9c5" rel=3D"n=
oreferrer noopener" data-outlook-id=3D"253ae5c2-f935-4ed9-be00-f604ebd2b341=
" data-ogsc=3D"" style=3D"color: rgb(64, 116, 234);">GitHub
 Advisory</a></span>)</div>
</li><li style=3D"font-family: Aptos, Arial, Helvetica, sans-serif; font-si=
ze: 12pt; color: rgb(0, 0, 0);">
<div><span style=3D"color: rgb(64, 116, 234);"><a href=3D"https://www.cve.o=
rg/CVERecord?id=3DCVE-2025-49831" target=3D"_blank" id=3D"menur1dk0" class=
=3D"fui-Link ___1q1shib f2hkw1w f3rmtva f1ewtqcl fyind8e f1k6fduh f1w7gpdv =
fk6fouc fjoy568 figsok6 f1s184ao f1mk8lai fnbmjn9 f1o700av f13mvf36 f1cmluf=
x f9n3di6 f1ids18y f1tx3yz7 f1deo86v f1eh06m1 f1iescvh fhgqx19 f1olyrje f1p=
93eir f1nev41a f1h8hb77 f1lqvz6u f10aw75t fsle3fq f17ae5zn" title=3D"https:=
//www.cve.org/CVERecord?id=3DCVE-2025-49831" rel=3D"noreferrer noopener" da=
ta-outlook-id=3D"1073304b-863f-4289-92e8-812995ac83c5" data-ogsc=3D"" style=
=3D"color: rgb(64, 116, 234);">CVE-2025-49831</a></span>&nbsp;-
 Critical - <span style=3D"font-size: 16px; background-color: rgb(255, 255,=
 255);">
IAM Authenticator Bypass via Mis-configured Network Device in Secrets Manag=
er, Self-Hosted (formerly Conjur Enterprise) and Conjur OSS</span>&nbsp;(<s=
pan style=3D"color: rgb(64, 116, 234);"><a href=3D"https://github.com/cyber=
ark/conjur/security/advisories/GHSA-952q-mjrf-wp5j" target=3D"_blank" id=3D=
"menur1dk2" class=3D"fui-Link ___1q1shib f2hkw1w f3rmtva f1ewtqcl fyind8e f=
1k6fduh f1w7gpdv fk6fouc fjoy568 figsok6 f1s184ao f1mk8lai fnbmjn9 f1o700av=
 f13mvf36 f1cmlufx f9n3di6 f1ids18y f1tx3yz7 f1deo86v f1eh06m1 f1iescvh fhg=
qx19 f1olyrje f1p93eir f1nev41a f1h8hb77 f1lqvz6u f10aw75t fsle3fq f17ae5zn=
" title=3D"https://github.com/cyberark/conjur/security/advisories/GHSA-952q=
-mjrf-wp5j" rel=3D"noreferrer noopener" data-outlook-id=3D"6bd0f6ba-278c-41=
c8-ba50-a798c5b7fc10" data-ogsc=3D"" style=3D"color: rgb(64, 116, 234);">Gi=
tHub
 Advisory</a></span>)</div>
</li></ul>
<p class=3D"MsoNormal" style=3D"text-align: left; text-indent: 0px; line-he=
ight: 18.4px; margin: 0in 0in 8pt;">
<span style=3D"font-family: Aptos, sans-serif; font-size: 12pt; color: rgb(=
0, 0, 0);">All users of Conjur OSS are encouraged to update to the 1.22.1 r=
elease, available on
</span><span style=3D"font-family: Aptos, sans-serif; font-size: 12pt; colo=
r: rgb(150, 96, 125);"><u><a href=3D"https://hub.docker.com/layers/cyberark=
/conjur/1.22.1/images/sha256-331fecd01c5a8a6179165bedba57b85f7cd1283b6b2a9a=
4f29fcb1e7a92580b3" data-outlook-id=3D"1d9c2e27-0270-435f-86a7-e86f13089352=
" style=3D"color: rgb(150, 96, 125); margin-top: 0px; margin-bottom: 0px;">=
DockerHub</a></u></span><span style=3D"font-family: Aptos, sans-serif; font=
-size: 12pt; color: rgb(0, 0, 0);">&nbsp;and
 at the GitHub.com Conjur </span><span style=3D"font-family: Aptos, sans-se=
rif; font-size: 12pt; color: rgb(150, 96, 125);"><u><a href=3D"https://gith=
ub.com/cyberark/conjur/releases/tag/v1.22.1" data-outlook-id=3D"87c07d63-4e=
27-42ad-89ec-86132cc6ce9f" style=3D"color: rgb(150, 96, 125); margin-top: 0=
px; margin-bottom: 0px;">1.22.1
 release</a></u></span><span style=3D"font-family: Aptos, sans-serif; font-=
size: 12pt; color: rgb(0, 0, 0);">. &nbsp;</span><span style=3D"font-family=
: Aptos, sans-serif; font-size: 16px; color: rgb(0, 0, 0); background-color=
: rgb(255, 255, 255);">These issues also
 affect our Secrets Manager, Self-Hosted (formerly Conjur Enterprise) produ=
ct and have been disclosed to our customers in our security bulletin
<a href=3D"https://www.cyberark.com/CA25-22" data-outlook-id=3D"632fde18-6c=
d6-4fc8-b3ca-7df9250bf892" style=3D"margin-top: 0px; margin-bottom: 0px;">
CA25-22</a>.&nbsp;</span></p>
<p class=3D"MsoNormal" style=3D"text-align: left; text-indent: 0px; line-he=
ight: 18.4px; margin: 0in 0in 8pt;">
<span style=3D"font-family: Aptos, sans-serif; font-size: 12pt; color: rgb(=
0, 0, 0);">For further information, please see our
</span><span style=3D"font-family: Aptos, sans-serif; font-size: 12pt; colo=
r: rgb(150, 96, 125);"><u><a href=3D"https://www.cyberark.com/resources/pro=
duct-insights-blog/addressing-recent-vulnerabilities-and-our-commitment-to-=
security" data-outlook-id=3D"97d137a2-c2a7-4f34-bbca-1b96119d7800" style=3D=
"color: rgb(150, 96, 125); margin-top: 0px; margin-bottom: 0px;">blog
 post</a>.</u></span></p>
<div dir=3D"ltr" style=3D"font-family: Aptos, Arial, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div dir=3D"ltr" style=3D"font-family: Aptos, Arial, Helvetica, sans-serif;=
 font-size: 12pt;">
<br>
</div>
</body>
</html>

--_000_VI0P193MB248213E5C8E5DAA397A837F6E256AVI0P193MB2482EURP_--
