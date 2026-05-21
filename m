Received: (qmail 19945 invoked by uid 550); 21 May 2026 18:27:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11778 invoked from network); 21 May 2026 18:27:06 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GD80ViskyEfrTT7PMRL8y3Km72ryIHbQWP+3XAtRfjZo6ZUtXs6LMJ1IExdBfAnLyTJcY+pBn8oDE7TsF5neBhWrQ5LA23IczJf3rCc9Cs5xnYoPMK/lFgkiTSGDF4PNNR4ftw0RxuM8mIkzpY5NQAwYQ2bb53W/nD3yzxPI5LzYmFhQPzxV1xdjsguasayfr43sHcD8nJ+pbiCzTpnGNsWs8rAp0pwmSrLRjRvKi8/GzJOJlFVoEZZLRFq18xGAtNNaA5kVdW6m4bT+2au7V+Us4rTWyZxaGO66jkdG3XlcoGhaAc2Lfc72EvUuEhpucZrRoOkym2Me50UILJ2SlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OvXOEWG/V1rViqW06CKzkpQr0txKe5HwoMv/IeqpG2Q=;
 b=Zm++GD/caGatnwbnejvlvlKCSBGd/0KKZ6vZPogepPtnhtrJ08fpmLO+zU10jrEuW2b0Gy7SAtMQ2GP9y6u6KScihBo3FZS0lH+UZwTcxI88WMZ9SQSgNeJjVz1Yw6MCZ1Mstx53d/srwSm0gu4ZlyLTRmWOEYMzyw8mtZ+gMFDEy3lA5X9IJHDTh/fiUV/blWcVdM+WVhUsqNxkayEmKS6bW2SJ3Al6ktEi2CPNXFrUQRODcRd+POdOpXJKk560BUcckZqnw8k28NNs4EiN68bEH+xa1Vpbad5XS6zAbhCjCp7otx+nf5b8tfAtt3Ww5WXoB64zksk2G1ONZmPIPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OvXOEWG/V1rViqW06CKzkpQr0txKe5HwoMv/IeqpG2Q=;
 b=Rk7tMGBHgg4xmIBdeqxvFGEa3KlTTISoIxHLEtJjYQlj0UOvcRa7N6gFOhMUqP1pCZ29maYrxnUrI1hlW/2zXJgOLdR+AAOTqfSMo/oN5kvS57d0klUzFWCQJreriyDw99ZDY2c4OyMCow2S44Wefp4eEZ8mZa1EQLs2CHPqxhc=
From: Aurelien Bombo <aurelien.bombo@microsoft.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE-2026-47243: Kata Containers runtime-rs 3.30: virtiofsd
 symlink escape
Thread-Index: AQHc6U9mTTPP0dScNk2ouAtLr083Ig==
Date: Thu, 21 May 2026 18:26:54 +0000
Message-ID:
 <CH9PR21MB57635631DE20DA114CE28C628F0E2@CH9PR21MB5763.namprd21.prod.outlook.com>
References:
 <CH9PR21MB5763F90D453F8C870C4814598F032@CH9PR21MB5763.namprd21.prod.outlook.com>
In-Reply-To:
 <CH9PR21MB5763F90D453F8C870C4814598F032@CH9PR21MB5763.namprd21.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2026-05-21T13:42:02.811Z;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ContentBits=1;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Method=Standard;
undefined: 2275604
composetype: forward
drawingcanvaselements: []
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microsoft.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH9PR21MB5763:EE_|CH9PR21MB5786:EE_
x-ms-office365-filtering-correlation-id: edd96645-e5f9-4d87-9b8f-08deb76688b1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|366016|376014|1800799024|38070700021|11063799006|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info:
 M+vil3XsgyO9ac3QT7i1o+U4JA7IipyUZBghmAWlqhKJM8uJKfU979zLok09uWP2cWSUBDf8GHP2V80OI0TWrmC4rvnv2jr2IHs+x9BybdFCOB/npNFWwqQLbuRmLWbaRb37POKYjv6ZkFTynsIunPF8NH9gliduF/sTDpGs6hT+RR+SqC9+rvfKAQcTjJvYtamVzN5x8rDh4DgHpZp8DYx5yC2vk8pLVVQD8RU2GTisCAizNJbvyK83utQ5jzUQFQT2Fwb+drl8LjQmKVOSc8JeUW8rpNi/HD+IR931LVzJYGqAJmcHuAKLtaBG+l+x2IM6k17bEbGeifIq+YoVYFaYaPvmL/PU9eR64L+SKXjj9nBxXAnEJgmqoTdduR4Q+TINpBSz6l9pWUUefRMbQV61A3Nb6XQN7dUjmm0G02pP4nnRQrGxNGevyh3T4UTCJy9+Tv4o5va6QGRsKIA8WMdJmrlNz7h7se4XjIh82d6AVrLRfNJoW8Lss2RSSqC46SzBE/gicFnEgw06khzWnORQtls3rP2ImfsIDJzyMboHwmakTiD67/bAlJMzYntbqLb72vTVpCitEcOuKh84O0LIfKeZEF30jHy62+RkTogY+cltmsqxkkfsbrbhT73L31qHD4wXs+lzxW/Klcxqb6w78CAAkrlzvetc3OMfBmGfm0ZRRLtRJpDF9GJ7aNCCm+7ioTy295dtqJx/ztc8e3gWkQICA28gy8sxa/eeqDKk3eozEyxog9b8bgD7ESkz
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH9PR21MB5763.namprd21.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(11063799006)(18002099003)(22082099003)(56012099003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?4bHeRbG9GgcNmsdm2rjcZ9kK4drO6J6WfBW72EQ3vfsmwSdUp+oms/Cilu?=
 =?iso-8859-1?Q?urtdl0G0Kz2uc5XeS1V1rDiHJmlQ9WUiass73PxiO7bE920a5j8QwJoFJ6?=
 =?iso-8859-1?Q?XCV3HsNVp8Zx0Q6s9nEL0ZGuOFskFA1UVG6JCuvNTmrbRuixPamgTdxiQt?=
 =?iso-8859-1?Q?YhILUddZliz+MUHHGQWtabCKmEfvKTysL3ADVWpLDN0BWIe7PgcNPyoWen?=
 =?iso-8859-1?Q?GiAQPt1LtmkEl6C2q3vSlu9EHXYVnCZUb0xXS6VfFga+S8SRa/4FonMGto?=
 =?iso-8859-1?Q?6uLsO6NA+zikWwXe16Q0z0XGLwW5ilF+sY+jXJTV2ymzMK59AicyYcQgFk?=
 =?iso-8859-1?Q?9i73UqQWljvkwAh8CTYN5h14jyJHgrKTHCUFpEieWxus8pChss5VHhcJWh?=
 =?iso-8859-1?Q?MCdnSLRoQDa14V5DrC8uDadfFaO49hIEex+Uah1hqwS8uP9f9WDWt5Gdcg?=
 =?iso-8859-1?Q?4NLE+ra3Duypb7PAiqbZWpnWxzOWXXEcPsooHjuj2RUnywYWJd7+OlWOlL?=
 =?iso-8859-1?Q?8tPBxlp63WGbDBelIutqGZfIq/cHcTgwSwsCPdG+PcZdtrs0zNQk7OPOVO?=
 =?iso-8859-1?Q?L2fy+ayJ3v/rd9ccxYZf9GcajiCmLIb6wrzGosgSGjC0smlSMjpQiY1qhM?=
 =?iso-8859-1?Q?OxOcK0i1sDYNWeNE08ICVfOcRftuk4lSH5PgwOBNkx7goE4eYUcNY4ll2l?=
 =?iso-8859-1?Q?glzMiqO4AQKeAMpMRGpO7+au+9xJXbKgppvxKhqwfdWh0lVsJ8M9yqjN2P?=
 =?iso-8859-1?Q?artydaV2Skkpj+WRkAFjZkbb/+qtS4vkadGYzG5Y1AUjjxeH3Ohd2W4/Ea?=
 =?iso-8859-1?Q?c9Dr4OgUNfkkGYLo1Vi7LqKXz2zToWgt4ZHhDTWCtnm43rHDzxIMgruhiI?=
 =?iso-8859-1?Q?SXA/7a+2P2guJI4xAs0x7O+AFy9IUcrQaRzq0C69NwcJl4BKcvoUwgr2KF?=
 =?iso-8859-1?Q?UOMEiFE6aHoshmVISJljwDPnlHaPvW+VI4UogmmHr6sCN3vE7GzjR1MZm3?=
 =?iso-8859-1?Q?ZYyHol113HJ1ENlpTyNwohJCsWqUvxMAUuZpJPH6877I2zV6XOoaxCqp9a?=
 =?iso-8859-1?Q?5UDrBiUAbpv8wSPmfp5nDCh2tfVXMlPbu+lpqv2NMluZTC0rqbNhvlFfQ7?=
 =?iso-8859-1?Q?HZnQr0zPK5xkZcscyu6KKjz0iIIEobLpqitsI5L7dDCbEfBeie5TK9E7/d?=
 =?iso-8859-1?Q?baW1Gu4KpV2ublQ5fWCSj/wty+2ee1LWuNUso0dPs/9o5T3JOBKi1EZ823?=
 =?iso-8859-1?Q?rkQJtoD3zHdgMMWUTNJ6TpQzj6VkaiN2ciqnTItqFJPQpkDM0WnvYizNTu?=
 =?iso-8859-1?Q?OFaAoikXeXm+Nd+FBKO2MB4KWxiREBoKLUXEmx/3VF/aQInS7fOnouUAF2?=
 =?iso-8859-1?Q?Zug8Yqx7adZ8I6mxRaZ694ruyMp7zHcnBBxlR8TEW6GF6BkHibwQPDcw8Z?=
 =?iso-8859-1?Q?Ts+oxXHHD7MZp3F5G0v8iSqI9DqNJHDWpQY649NqBkjLHk6lfVYdjB1pLh?=
 =?iso-8859-1?Q?pqHyN3U3eN5jU+FbtGD6lzDGHtQgMUhJeR8lhlDYP9udDhGSD0OVd9ThY7?=
 =?iso-8859-1?Q?ODLLRgmuWrYyMzBRtA7fdi2hrx2+BGeshOIoh8Q39hj3wKeqdZ0MLJdooP?=
 =?iso-8859-1?Q?kShmqJp44kiqPxMU8Y1/yI0bl3nSeI2o0YZMvotoDbNmScD2aYoJAsvFs3?=
 =?iso-8859-1?Q?bH1wD+1t11t4hpKq8iNo5VYxp+DSwVVtgxu7Ym6/?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH9PR21MB5763.namprd21.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: edd96645-e5f9-4d87-9b8f-08deb76688b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2026 18:26:54.0760
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iKm4mm+Z18f9NU/G3FSiSgVKlbT7cLWjBZSzkFM9K5YXHlZ1UfQMc4an5PbXBawxgiq/BRlTDcLgyJlau3xqfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH9PR21MB5786
Subject: [oss-security] CVE-2026-47243: Kata Containers runtime-rs 3.30: virtiofsd symlink
 escape

This vulnerability was fixed in Kata Containers 3.31.0:

https://github.com/kata-containers/kata-containers/releases/tag/3.31.0
https://github.com/kata-containers/kata-containers/commit/555b7738fe2f699af=
6d57712cf75330f012b4e3b

Description:

In the runtime-rs standalone virtio-fs path, Kata Containers runs virtiofsd
as root with --sandbox none --seccomp none.

If an attacker has root-equivalent execution inside the Kata guest VM,
they can send raw FUSE requests directly to the host virtiofsd.

Then, a raw FUSE_SYMLINK request whose new symlink name is
an absolute host path is honored outside the virtio-fs shared directory.

This lets guest root create host-root-owned symlinks in sensitive host path=
s.

CVE: CVE-2026-47243
GHSA: GHSA-2gv2-cffp-j227

Original report:
https://github.com/kata-containers/kata-containers/security/advisories/GHSA=
-2gv2-cffp-j227

---
Aurelien Bombo
Kata Containers Vulnerability Management Team

