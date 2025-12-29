Received: (qmail 3643 invoked by uid 550); 29 Dec 2025 17:08:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3999 invoked from network); 29 Dec 2025 13:59:35 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T7nRjxTod/vNVo7q2Aay3nVS2jU/RkeRXapfxe4pH8xWx5OZRhUkOowujOHOZALK120nGbvOVtBnC8LefZc9bHoiTsL4PWRdUEqtNq8RuybOhLg1zThkZyhembzFV9WgPRkcSphgd2zVCFvhYscfMSGb2GD1OayyoYST53GlIhM1uZBjuUzsxsiLcyOE805tQELKr0g6iD1K7lhlxoY4N6ssMAZbvKCmXwRiVV/GkoilFBPh/Qh+EsqwL86Cs8pG8XL1P67pCc7pqWMeYQZX9uY/XlAeH4rZrzNiD9N49YwqjZJI/LBTaaxFAem6mVuYkQCsCSfPx5YZVSuBcE/0bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lOzp8AVbeEQDNbnPDbffGpkbBC1UWL7d/w2ua051mgk=;
 b=S9oO92ZNAdznIPPZnPDSTKrCtSy0FSXuP9GIVPZtiQMcdA8L9YwD6UWqdjC3W6y1asCYz3CE/l8Xsm/wJprvimScQBkY5iPiy5doaMpdK3hC6jShbVlmK3BxSMYOsrXNfNWtoJ0zX45xW9VLeKPwQXr2ZZAl0y7EcMdKHxJq2wITc7QJkKUbURlcZ4C7U6h5+Hq/TzlG8nZ0IQGFyfBQ/Cpc2Aq9QuMAHaMZe5RnQXZzggwV8b912Eh4asoCaZGfywFqjTYHgxVx09y8wsDhu7r8pEvXYaP7OAsLxZbn30lGr70Ow0RFYVYUovkjtKlfC9MlNhsu79WhqBVDW0fPSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=webpros.com; dmarc=pass action=none header.from=webpros.com;
 dkim=pass header.d=webpros.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=webpros.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lOzp8AVbeEQDNbnPDbffGpkbBC1UWL7d/w2ua051mgk=;
 b=ITm6azIKy/U8dMtMqdQGPCjxtt2BB7jn64H1rD9BmvCPowp7EW9Y+lzMgOhPyU0+2q1MhSyVVjOEJmnDYim9LG0Jh44Yc06DxdZqGTMsz3/erIozMaWKh0PztzrmOPw+yjKTGbXOyOgP+V9B0eM+mK9a5a2+mvHdxkqFxVuEBSxedocDBwv/hosCt9hePzvXwhsduc5E2csD98Bvxega7T9dXvuEvlNa/J7oCoUBHemUwfCQLN4ZlvzNlXfZGTGqvXkKTYQLEVYpxBojKytJlx35VYmlg96VcxrO573g7KMYtmfnyYo6j6fBm+aiQG5sokkpJaVdSijW3R4U+UIUhQ==
From: Benjamin McMahon <benjamin.mcmahon@webpros.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Systemd vsock sshd
Thread-Index: AQHcd8Xz2Jq19QNTAUG3RVXECjODd7U4AuWAgACipGM=
Date: Mon, 29 Dec 2025 13:59:21 +0000
Message-ID:
 <SN7PR14MB73782CD825FF151648AB323596BFA@SN7PR14MB7378.namprd14.prod.outlook.com>
References:
 <CAM=PXV50+jaVYFueXFbZpioBX3PMrUG2Ey8WoQ5NT89J9gFwCA@mail.gmail.com>
 <974a2abd-7449-4cf7-bbe6-e329aa4af59e@gmail.com>
In-Reply-To: <974a2abd-7449-4cf7-bbe6-e329aa4af59e@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=webpros.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR14MB7378:EE_|SN7PR14MB5964:EE_
x-ms-office365-filtering-correlation-id: 8b246646-16b0-4a8f-e580-08de46e27782
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|366016|376014|1800799024|7053199007|38070700021;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?0wcJx52fmgPN0XFfNkesJDG1/Sa8q7UL3D9+qv+o/P13vmC+/46zrASV34?=
 =?iso-8859-1?Q?FPt7WR/AO4J8O+5olHnWUsBVCSbwfUaFHL43RQgb5kjiM6d0JftgrEVE5d?=
 =?iso-8859-1?Q?vhRThPVnQc/9V2WxQ02hjMLXkmaEjIWOj9bIVxFhTas4pY15w5ghqRdFXD?=
 =?iso-8859-1?Q?Auc9QpC2r+5I5mJpLyhkwOmoYIG44GfEzIFG2ypfXJNyeAa3bQHa4xqZkU?=
 =?iso-8859-1?Q?9vpQGHTE4A+vdHZWNXs3Vz7Lb24Wifi0k0wbwSpeqRXc5qbqa4pSbGjEQ0?=
 =?iso-8859-1?Q?TFLj4P4FDzXKFXmBkPRT/knVQiuvY2+RBFXk+CH48fYYYNSnkoDYA4wGy2?=
 =?iso-8859-1?Q?hVt3uf56agQz1dPE30vS0OZ8wBe7/g8acpPsbN02XjbMQ7Tiu1CUw5uVhj?=
 =?iso-8859-1?Q?Yj8Xlr0LcNUufps9gvJzQvw9grs5DcafR7+aSf/+OaIKfjbLgg8dIj5YJs?=
 =?iso-8859-1?Q?Qtmmr//RdDjol7RNmtnsjqCSiAtUMNtoeAd3fdmKZHv3c4gCpc6WVbdzbm?=
 =?iso-8859-1?Q?ASvX0707BF8QBN86aB0yUIJKHbK1aOLBgKPM0Ztc2J07MeWFgM7T9HNTvY?=
 =?iso-8859-1?Q?880PRUJ9s8oXDczY5V8f7PyRwR46BPcCqeRQeiu6fW0Q+UFIqckrYHKUQ2?=
 =?iso-8859-1?Q?9G9qezes8fpx584GmHJyX73Hh4C2sG1vKENi7g5uRPqPKcnk/yDtFT5I7K?=
 =?iso-8859-1?Q?QFhwqP1EfMqNYR6B66Ci2ZmPex7pPKeXs8ixHbvfP45BCzA4+5Z+UBcxJ8?=
 =?iso-8859-1?Q?MWW2623fW/sTUgQbKW00vfBR8x49RCt9856DO4H7rfSOvVYQ0AX+KaByP6?=
 =?iso-8859-1?Q?V2aReAQ+I9n4Jkd7L747cj9BVovfdiBJ0x4zw1JB50V7Cx6hZqlQIrqbdo?=
 =?iso-8859-1?Q?TWcU37D9ojAfHfZ1mk9UvEBC6rV4s7MRj4KSJY49BLjkcP4AGt0pkWA1Ku?=
 =?iso-8859-1?Q?e3HvD0SIINu6ZISJHOInCujLIRzP895MG6y5AQ/6XkBOvTDw2m7bSHxalk?=
 =?iso-8859-1?Q?MRcSTfpa/Hp7HOl1O0HNiBtjvmiCzjq4H3YGK/0QuMU4zn1blD+WdsmxFS?=
 =?iso-8859-1?Q?DtFQcU35IVTTbUolrWKNyIaH9aAxCo0BrTx6yqMGDKWkd9oF08kdIiJVcg?=
 =?iso-8859-1?Q?oGdYi/ZXAmuAZTDo8NbmQHGRdPl0yOAqQf/95J24fm59bYaLF8SJ3we840?=
 =?iso-8859-1?Q?BgnhPP4yZRbuPZZYw06IqOMVCAGXBSTcSWMz12yFI2fElbnujfemEPmnqk?=
 =?iso-8859-1?Q?p3tnTJyhEkagDGIsMeOcmnRRpGdupzecNI6QAc6kbFu+qk9Xx/qACyNmQU?=
 =?iso-8859-1?Q?QL6l+trtTMel+55UImzbVTeuu+bkqQtUz34TiH+KGY9+amyhVHc8zyrsyu?=
 =?iso-8859-1?Q?YSIshmub3ZtKPyaQkPz8yJeDv3PMj01Xu3g5qVSLT3OszDQfG54YiGN2u4?=
 =?iso-8859-1?Q?ZtSBo2IDxv7NxSKr6cLKnrWYHCwVIAsVfV1f9QfInkCJcCsl/7sCce/En1?=
 =?iso-8859-1?Q?T7LgL1IWY6Nq1Vt9/CpdW3zZOqMiRz97fQFQHDAv7XiQ=3D=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN7PR14MB7378.namprd14.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?moV6GjIjfNGhAvcOg39JYCXMk9yKuK8LCpEa7A1Aw+bVIhZF9F45OnAF9Q?=
 =?iso-8859-1?Q?p2c90CpwbCniXDSGq5HJXqEv/6X6CN/AatRBzrrd3NCPtNrYALNH6ieBBN?=
 =?iso-8859-1?Q?w8qSOsz7Q10RXmM1oCr+7IvKpTN0ZXHyKtx6k6bW7eiBaKhH8N3Evlvj66?=
 =?iso-8859-1?Q?hjlaQ8lw5cYLZSSxhDHsn5k3fv32i7Yxp7dtOUzxX2f/64X48y1EcfUDwf?=
 =?iso-8859-1?Q?xTgcnL2/iRi8yj5CK2fZAZVhhJy0h4seBWX0riBk8jmh4dCE3NSXS3njqs?=
 =?iso-8859-1?Q?0kOSwQEGLPWOcpME2uuIuBCFFfDlPD5CDvCXbbsRcfLWxgliZPQdfa7EhY?=
 =?iso-8859-1?Q?O++cG8Cndi77jJsAHkGlJJfyuQ/Cpl2oCC90IQL2K3bniLREo5afhGWcpL?=
 =?iso-8859-1?Q?LY0r0nv/2A3rP/A1mSjJ6CuY7oRBUkL0grqdJcSiw1RYww3rC8JItqTI9z?=
 =?iso-8859-1?Q?PifwaxdXMirh4IBnGP3ozyctbRtuE5X8AtDNmjao1sYqpKi+KxXYsl4NHz?=
 =?iso-8859-1?Q?foQt2B3vcaZvwM1zYncxV7udHq3Tlsm4Masp+vyONkEdt9C1FEKR3Z1lWU?=
 =?iso-8859-1?Q?iAboGHfbEzIEa9VgKEIDssv6wnskOQ8lW579T7HOFDkbMzvz4AC3wQzv/H?=
 =?iso-8859-1?Q?GVlQqNE4AwabgUuTO8BVNd59DMPvmS5reY2aUS11bggYc463qgzd2aYScN?=
 =?iso-8859-1?Q?08rQ40HryQDHuoG7LTtY4ClzX9nlKH7WJRgXFk3KCa5ZmSdRUCdPXFp3bO?=
 =?iso-8859-1?Q?VovnQsgcqewaNov4DgP0sMJSTOKFn9FQjH26zZfy1w1/bVeGep0491CDDQ?=
 =?iso-8859-1?Q?SLE5RSZZ9bg2ovH3JiCBnyNqofVTe8uDJkbuAVrB1BTKdQnBCLAhzRjWm4?=
 =?iso-8859-1?Q?LvOtZHFDZeAE0yvIrH4PP2jjuOWa3NGQ3NWAkue2WlOBSskjJpxDm2/tG/?=
 =?iso-8859-1?Q?TNm2AMvXwLY+xvD7d9gBbCOIMBsEopX1bJnj8RGurCUApBKNCY0VhsY460?=
 =?iso-8859-1?Q?52/gyVLFvAKoJYTUgTM1kpzdNw+Qtl7POqpar9rtdkTGFMcZVG7ue3QsKe?=
 =?iso-8859-1?Q?Yee3G1QDRsjUR5eP+C96GT+r+V14idYxWb2xK5/ssFR/cehhfVCXvx95AC?=
 =?iso-8859-1?Q?JeY58C6nd/d2jfHUwYdIVpSWFqXxEOKR1i9UIqIs9bLgznVZL4uS46pyAB?=
 =?iso-8859-1?Q?GgLcdMj9Ftd7h38IKkfvm2cbN4awICfUyWI3WVTGydKHxz+ddk5amfsKGE?=
 =?iso-8859-1?Q?wWiczPXAitNtlvEatOTQpv6rChnNWzR5aVpP+/4W51iIwDWMdg5masUu3e?=
 =?iso-8859-1?Q?UNH4s2QuKY9WeXDx9CtYXhFuOTMCvu0iC4tT1RqLr3dP6u5QPuBL6PiO5i?=
 =?iso-8859-1?Q?O4zk81BJIr9f+ImECTIeIBFy76FPasz6ktC4q0LOtJpTDEoq+GxCCqpo+L?=
 =?iso-8859-1?Q?SC4OCQ7J8nsyVP18Hn9JT9ruIG73IeG62O9zotttbdS6p1K9v2QqD2RXh+?=
 =?iso-8859-1?Q?YcZuF3x4lO+JwjsHk1ptxbsphxbWSmntnACM0WetbkSUTP7vsHpp7hx+dW?=
 =?iso-8859-1?Q?yeeL4d8bELlpO55w5Nso74ECTIXIe1+LOTL1FTKOeq1+fZhId7XBE+N0w8?=
 =?iso-8859-1?Q?L6MFjr9UbyH7ohlqClzyDS67j5TEB3QW2F/Uz0n0W4KZ48ePdk+bNnXBla?=
 =?iso-8859-1?Q?GLJHeuPkPy4jdJmxHMRi6d3NwxVJAtCmYpUsPRgVwoVJPG6JkVTLLvyMIs?=
 =?iso-8859-1?Q?pM6Z6wlUIZ8i2xCbp9+T+untm92YZ3gDcIkZ+2esGcW/HDFu5n6/kf+WlU?=
 =?iso-8859-1?Q?Z2MhgTnAcw=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: webpros.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR14MB7378.namprd14.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b246646-16b0-4a8f-e580-08de46e27782
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Dec 2025 13:59:21.4508
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f8497356-a834-4060-86b6-d4b1d8059ee0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LjMeyvLhvh36zdqyMOA+663rNnWvpP5t3B+PowmsHfdqCdGzB6DvMVY+GvMZVktPmrLP4cjjZN1uWmAtgf5o61dDJ7EtECIS9k0TkwNGjeg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR14MB5964
Subject: Re: [oss-security] Systemd vsock sshd

To prevent the vsock-based sshd from auto-spawning, see https://www.freedes=
ktop.org/software/systemd/man/devel/systemd-ssh-generator.html

In short: `systemd.ssh_auto=3Dno` is the kernel-command-line setting which =
persists after reboots.

~Benjamin

________________________________________
From: Jacob Bachmeyer <jcb62281@gmail.com>
Sent: Sunday, December 28, 2025 10:11 PM
To: oss-security@lists.openwall.com <oss-security@lists.openwall.com>; Greg=
 Dahlman <dahlman@gmail.com>
Subject: Re: [oss-security] Systemd vsock sshd


[You don't often get email from jcb62281@gmail.com. Learn why this is impor=
tant at https://aka.ms/LearnAboutSenderIdentification ]

On 12/27/25 21:46, Greg Dahlman wrote:
> [...]
>
>=A0=A0 **Systemd v256 change** - When the *openssh-server* package is
>=A0=A0 installed on a VM with vsock support, systemd now automatically
>=A0=A0 starts an *sshd* instance that listens on the **af_vsock** socket in
>=A0=A0 the **global network namespace** without any manual configuration.

Obvious question:=A0 what manual configuration is required to kill that
listener?


-- Jacob



