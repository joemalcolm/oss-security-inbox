Received: (qmail 18033 invoked by uid 550); 17 Jun 2025 20:07:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18005 invoked from network); 17 Jun 2025 20:07:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=
	content-type:date:from:message-id:mime-version:subject:to; s=
	qualyscom; bh=NlmH1TODq8Cc3k6/02cb2qzpLOiJxyOh0SooLD5a+f4=; b=k0
	fvlIZ0VoEtgTNGK/mfykW0Vaoz51oYj5pYcD8BNwpT6qSSakXYwHDyBHh1+j8pV0
	CHvXICdKT+OGyi0+76QZEa5tCQULcwjhmNR9zpeBfjzQfHfhVicMIaaO0EpLbVPd
	HXLkbK3f71slZ9M74aPbhpnVzvhU2wxpQjaAVWylM5phT8ZXlmQZsBovRN1yB0Eo
	38qjV6bQx+G6QDFpS6DG/1s4bhwBWoQOpcjnGZIrD/zEdwjvMvLxrl3riquX0kqt
	v3J27QZNL0kygp47rJ9Ct1fI2Y+9WSxNboLUycWxciSK+j7ql0sCZr8XHs1LIfwY
	L5nDOpj0n6oCScHjkqbg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DvQCBTgZExfx/kaZfl4KSf3U8h80QZyWyhtnC9bgQ5/R6uVB++c1WBKuzHLPxKACVVRWgPUqPPLggcX8qxT74YHnIZHXt4u7aFqMvPeHiDgFhx8q9qe4iIy4VJ18Wse77LrQJWRXXxYWqVitM0UiFpjqeQIREkih44PaM0v9/eM6XlxVsJ3Ag7EAvjJxuNkNZMC6ZEoy1tSBXKDgXNnmODwFcMym/iPBHdnWkpHX1yhFF8qK+M02JQi3lvdpHuS86eDGiRXTfGO0WBmtf/yObva5VVGD0uusEVymZLuS1s6L4YYEdypmwHBoYMif8vKt57H0SV7qq1Lma/MH2sP3AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NlmH1TODq8Cc3k6/02cb2qzpLOiJxyOh0SooLD5a+f4=;
 b=vjSMxyLWC8xi5gx5taU+WnBHCuorR7h2Flo9E6Cigjxijjgel0cF+yOr2bmnJ+858e5+bgdBlVWN6yS0sv2ogI/XM1xf017Q7aaemMFA75m0oD4r16Pk7oZWOV+kKodiTE/R7i4yqF96iKcoNnF0WaXm2cHCrRJYT0hp+fhfKo6qzyoxk8btAmCpRhBNGnJ2+5rppEZHLngkiaUScY7dO+P1wrTTWIHbIicFvhkbbBYJlx/fygZcrRdy7Pk0nwDE8TatGRhxIQuRGD4Ms0ANBTJibBiNjDb+4z3MZvVI2zqIWSL9ZMIvaDa0BVhshTV3rkmrS623Cuo1UTtVGwuW0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NlmH1TODq8Cc3k6/02cb2qzpLOiJxyOh0SooLD5a+f4=;
 b=m+0eqICsanSlB99jAEOHz+6xVb6LUrWdtkjj7cdmogjtDWm5iKV+T6bc1ms0My+UfuWwBBnzllRIeEk5IfycUan6TbfW4Bebq9z9HvHJ8C/JYHDST/pcJFo+5UoFRkMYBTXX3UGy1IsCkkRnMmkbF1LqsuqHLFOKZpqWhIOZpSAj5OMYsgudAJM5YbZ132+TnYC6zhBb3YN5ds7iaGPxticNVOtZag4oX2132S7WxaeAClV8450BpamSWiwExAcQgCRqxh3tHIcZhcwILGi4qcXa5bNwhIeFvjMBllI0okpF2f0F1tzZkesdycosK2dMEAMyYsdSmmFJ63IQaU3/YQ==
From: Qualys Security Advisory <qsa@qualys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE-2025-6019: LPE from allow_active to root in libblockdev via
 udisks
Thread-Index: AQHb38N0T4clDwBgZEyeYk/bLupr6Q==
Date: Tue, 17 Jun 2025 20:07:30 +0000
Message-ID: <20250617200606.GB14637@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR06MB6910:EE_|PH0PR06MB8094:EE_
x-ms-office365-filtering-correlation-id: 086709d6-9bc5-4bac-b48a-08ddadda971c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|376014|366016|1800799024|4053099003|38070700018;
x-microsoft-antispam-message-info:
 =?us-ascii?Q?iqEjS6qPTw3buAteutg65Sy6qiv3zXQ5D/QOX9QWSgPjZ/dEc9DN0JE1WZN0?=
 =?us-ascii?Q?oY2BsEoLSwoR6MYeS2EcvHDzMxIBnodUqFqang2DWEuPF3Oc/8aeDFGM2ky7?=
 =?us-ascii?Q?QIePY+MAtVrNvaFYMl1Y3AQ5heA/whQovgNdeOJaA/wOmaOxZq92rGfcSOZy?=
 =?us-ascii?Q?e3Mxu+HE7GfVVXVtsu/juhVqYWoN9GEG3zLd2vMHJeNMEQd8jtxPc70iDMh2?=
 =?us-ascii?Q?5vK86SwVIXRrGmCBqWwCOCVlCg5eG95fbLtXhgX6Df15zpuQIr+P9AqdaNsa?=
 =?us-ascii?Q?Rp0CgGiXrzDewaEUthZo9z44PGGSgp2JsGCQ/QYKrn3K9+vHAVU8fBmhd/+4?=
 =?us-ascii?Q?IXViBhma3isvqATb7DOdylh7ZRWLv1RjtnulBf9Rg7IybL4xX4oQPTxL/Qxj?=
 =?us-ascii?Q?iHbG3HItoMrIGmSyqsQxrNbT7zEeejHAxBZOYPFgK3N4SNWtP2pe/YWQwQfI?=
 =?us-ascii?Q?HaL9gyC/tuI5rozXgMpbfJVWDVcXJ68ueq/jjZvzpWNKkG7F/sb3LNlj2DjM?=
 =?us-ascii?Q?TrjPJa6RkuEbdl5n4olrnUkCHRObQBhA+jBM1SK/D3uFc7SQvIy6ZG2Sl40X?=
 =?us-ascii?Q?PtSRs51w2tAVK1VMB/Tca7gzEVGAe8Vt5EY5Rm+JcLm1CAX9Ebg2Wck2zCZm?=
 =?us-ascii?Q?iT+2lIg4DiZJXdsBgEiunENlN6GlN+oFSsRnSSnYJ3+R701yvvKoD9IFX0WJ?=
 =?us-ascii?Q?eckVpxhqBx+RueM9s29FlWz0iGWgG6spRYQ6jgL0kgM47qTYFl3DoUarUK11?=
 =?us-ascii?Q?hyhjiRADrxIoDVRYxjfHz7OkZiWV93ytw0oNTleHU3MoVeHnegwYJBQfGK5z?=
 =?us-ascii?Q?UgUtIfwgdliNKIkc7Ewd4F1+nKn1lPrSq0nqBasULwDN8uYdVDQ2NQY2XQ5U?=
 =?us-ascii?Q?yCZypyQXFwOrQxPZeFPUBkgdW+MxWGZH/o8gDqdA2NAM/pTWCdXWTIUVPNd7?=
 =?us-ascii?Q?4JkvJcYba8RJywggGpALrXNBDFDhXA1PkmbMhmrVN/IPdYjQvEdA/Pp/cgyF?=
 =?us-ascii?Q?HpKK+JuHj9eZkmkHVpZyYBXT7Nn7viW/qDHKo8G+fHvZo+CTxKpyj7kUAnVc?=
 =?us-ascii?Q?HdvKIAaD3HMyjMU/WGLFTpn1ElGF6pDzt035miYQSog2yR8e/3aB4zj+G0VJ?=
 =?us-ascii?Q?IQfi6NylvqbIEpfwUcJU+tL2dtz12Zf7wszCdmToIqSM/mb2MF9hOeLfQkI0?=
 =?us-ascii?Q?nNsIaSfsG1XPzMnyTqy/WZybSpbDWWK2Owpzmv7l+Lm8y5PjwRN/OCXfDKfY?=
 =?us-ascii?Q?xSyvlMCCvmW4Re+b8y00QHE0tmuxsDkvjt8mYrtTAU2Q7ndxRQLC60QOvTI5?=
 =?us-ascii?Q?IxjSTlFtxAuDdfTFVt9KR2tBfrCJydN+8XC6CT8WfPIn2F8Vbjs6zLYvIDXA?=
 =?us-ascii?Q?yx4X4vYq68ddJG2XJNxAFXVGe420JWL9efo5+LlT3RktmrHCcITBlMBG1l9m?=
 =?us-ascii?Q?OP7VNXNAdsSeiS0TN3V751HZHDmo8mMGF3a2N/EoelA7wMa6V6mVzHCKA4Mf?=
 =?us-ascii?Q?alS0Du2NVb5e8qc=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(4053099003)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?vaHDuE2OJX1/N87iezlEjhLUoRofz5vrg+Vn7wi0ncvSjvBMhSrY7d7sHw0Q?=
 =?us-ascii?Q?tmyptGZ4LL1RDtey0O/+GO38rpQ86nl/tqiaP0Bu0j8IFrwvXvjhGxyZJ/Gz?=
 =?us-ascii?Q?5P6WpSOqbBE+Xtg1kn3wzw4Ipx6p7mowbEfjk48+lvzvTxjZDh/LGwuzRKDL?=
 =?us-ascii?Q?lBAzsoTlAj7PRKyW0FBziDNuoxULb2y6JLsMjVCyTFHYUAL5iJulvr/gMhDo?=
 =?us-ascii?Q?TjZwjnASUFCnen+iYmOz372i+NppdYpCswK0kPXVWhKwQ2P73wB2lbU8fhgH?=
 =?us-ascii?Q?9eEfvOusANgdVoSesWKY8724+U+0+Xgic9HWULuueh0PdM+BiB4pWdNfAGib?=
 =?us-ascii?Q?5OenwnobtrY1qaCp73TiQ6670i6j8HiDj2DDuCkHS+S6HVFhXJpIjGvzsIVI?=
 =?us-ascii?Q?xEI5FAu0vfWGzFjv0BKAGw2EVDgy96UayudyHUBskn0GrMoFrXOHQrH9vyGj?=
 =?us-ascii?Q?EBEvnYzynC/Qaq1GMeASf75FrGyp17iLNiNe4AgbXdExn8V9DfiJj/ENzv/F?=
 =?us-ascii?Q?0klvAFEeIIm046Yf9+yUvtXsA3bFzgo+QvuLS0LJR8FzLjAOAiQ1TlyHpQr8?=
 =?us-ascii?Q?dSHy4kvdJ1Aue9irnkjf0YCKWr+XZw9ytNqvLsVXE7OKMr3oIo8+9VLnHhGD?=
 =?us-ascii?Q?qw+Z2+EkCj+VcYrjoi4867Ht/Z5k9AIKC3w8/KgvDxxQPcfzj5nFDqmUC0xo?=
 =?us-ascii?Q?cdb6gcRpZzWTpGTu+6anH1r0x7oJbs6Kr79wTRKr3XihtrlRKxYSWVsTAq6Q?=
 =?us-ascii?Q?5KVYtDnch4Qmv+26H17OAztAicGsP2GguUM/WM9TCa66PHeHvh2HAsPdusEf?=
 =?us-ascii?Q?NZ/T83UG3aNAdi6SfTJn8dqVbN0uhT8Ow6oKC5bK5+bL/0om1D00Wq0tqBDU?=
 =?us-ascii?Q?8efVhLgiNdFHmJg+PuvifiB5+ScHSWwJTS701We9WSQ2lXkU2ev6idpE5Tyh?=
 =?us-ascii?Q?uZXU3ls+rCLUCMP/BLneRwq9mnRKlYRiq9lKfgbHynUwc8m+yJVbxvfi3KLQ?=
 =?us-ascii?Q?W9NRrvkxg9ZIeV0/iGgY6TbhOg6kKwN0Zm3KzUBBxz4lNz42IChj/evyKCgb?=
 =?us-ascii?Q?S1bMdyl3+x4M8iT3GiWbfQ4OLgQ1ZfuE8HCPv9GGgINE13bl85IE8Q+a2qMK?=
 =?us-ascii?Q?iEzsDmptv9D//fnvERlacrRPFxkb6kIECW2nOGLaS9IEb+4F7j5uSw4d53k6?=
 =?us-ascii?Q?kNpdKc2L5YDuH2aasxK588YH+AuQRMH1TDKHi7JdSOd0rWfpubxVESVXs9cx?=
 =?us-ascii?Q?U/vlnVxZhwLkOeSgbLiAE5pkMkt/HJc+NlyDIl56DZ8ukbxBM32iEiu6w8W0?=
 =?us-ascii?Q?4790TJu/hG4FYqp29RWPBQFdEU0ym2A0W8Ym2F9CnLaSKoRghGATqMtsXPqV?=
 =?us-ascii?Q?ugQyFV0UMJ0CQiwI9mfS7IzMI71EkGP0Y9j9VsdUK6sbKklwZH2rkuTud/xW?=
 =?us-ascii?Q?mLalK0JHEAeIsq5pTd0B+YjkHsEuwqA41PvM86ATykeWNKn8QQeuNJ5qn9Zi?=
 =?us-ascii?Q?zr7BsVWU9/9VFr8q0QRUL7XuTTWdh88bfwwVqExNNzmcmuoQmQ3/K05iQ7PE?=
 =?us-ascii?Q?jBY7KlFabT+hRS6o5Dd4qETutBmp3oN63QhtpEIXNqOxgi2rDmiWAieaPEos?=
 =?us-ascii?Q?kXeLN5ntWJjR6xT6gxAjlf8=3D?=
Content-Type: multipart/mixed;
	boundary="_003_20250617200606GB14637localhostlocaldomain_"
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 086709d6-9bc5-4bac-b48a-08ddadda971c
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2025 20:07:30.5525
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rkoMkxIqCEfdVoyVgAM60i2CTlk8Z77bIOw923vP0+xMOFqC7+qjz2VZKPtvhkIai8p64RKivGCshtk9SWwgZieePMY8Da01c2TkkHPTfG8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR06MB8094
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-17_09,2025-06-13_01,2025-03-28_01
Subject: [oss-security] Re: CVE-2025-6019: LPE from allow_active to root in libblockdev via
 udisks

--_003_20250617200606GB14637localhostlocaldomain_
Content-Type: text/plain; charset="us-ascii"
Content-ID: <9A01B2B3E9BDAA44959804C4D528F536@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable

Hi all,

Attached to this email are the two libblockdev/udisks patches that we
sent to the linux-distros@openwall last week.

Thank you very much! We are at your disposal for questions, comments,
and further discussions.

With best regards,

--=20
the Qualys Security Advisory team

--_003_20250617200606GB14637localhostlocaldomain_
Content-Type: text/plain;
	name="0001-dont-allow-suid-and-dev-set-on-fs-resize.patch"
Content-Description: 0001-dont-allow-suid-and-dev-set-on-fs-resize.patch
Content-Disposition: attachment;
	filename="0001-dont-allow-suid-and-dev-set-on-fs-resize.patch"; size=1131;
	creation-date="Tue, 17 Jun 2025 20:07:30 GMT";
	modification-date="Tue, 17 Jun 2025 20:07:30 GMT"
Content-ID: <F2DB74626C8A1C448D90F7A0BAE4EDD5@namprd06.prod.outlook.com>
Content-Transfer-Encoding: base64

RnJvbSA4ZTA3MmY3OTQ3NDRiZDE3YzU3Y2NlYWJiMzg4NGQzZjBmNmExNjAyIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQ0KRnJvbTogVGhvbWFzIEJsdW1lIDxUaG9tYXMuQmx1bWVAc3VzZS5jb20+
DQpEYXRlOiBGcmksIDE2IE1heSAyMDI1IDE0OjI3OjEwICswMjAwDQpTdWJqZWN0OiBbUEFUQ0hd
IGRvbnQgYWxsb3cgc3VpZCBhbmQgZGV2IHNldCBvbiBmcyByZXNpemUNCg0KLS0tDQogc3JjL3Bs
dWdpbnMvZnMvZ2VuZXJpYy5jIHwgNCArKystDQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQ0KDQpkaWZmIC0tZ2l0IGEvc3JjL3BsdWdpbnMvZnMvZ2VuZXJp
Yy5jIGIvc3JjL3BsdWdpbnMvZnMvZ2VuZXJpYy5jDQppbmRleCA2OTMzMzk0NC4uMWE2ZGQ5NjAg
MTAwNjQ0DQotLS0gYS9zcmMvcGx1Z2lucy9mcy9nZW5lcmljLmMNCisrKyBiL3NyYy9wbHVnaW5z
L2ZzL2dlbmVyaWMuYw0KQEAgLTY4Myw3ICs2ODMsOSBAQCBzdGF0aWMgZ2NoYXIqIGZzX21vdW50
IChjb25zdCBnY2hhciAqZGV2aWNlLCBnY2hhciAqZnN0eXBlLCBnYm9vbGVhbiByZWFkX29ubHks
DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiRmFpbGVkIHRvIGNyZWF0ZSB0ZW1wb3Jh
cnkgZGlyZWN0b3J5IGZvciBtb3VudGluZyAnJXMnLiIsIGRldmljZSk7DQogICAgICAgICAgICAg
ICAgIHJldHVybiBOVUxMOw0KICAgICAgICAgICAgIH0NCi0gICAgICAgICAgICByZXQgPSBiZF9m
c19tb3VudCAoZGV2aWNlLCBtb3VudHBvaW50LCBmc3R5cGUsIHJlYWRfb25seSA/ICJybyIgOiBO
VUxMLCBOVUxMLCAmbF9lcnJvcik7DQorDQorICAgICAgICAgICAgcmV0ID0gYmRfZnNfbW91bnQg
KGRldmljZSwgbW91bnRwb2ludCwgZnN0eXBlLCByZWFkX29ubHkgPyAibm9zdWlkLG5vZGV2LHJv
IiA6ICJub3N1aWQsbm9kZXYiLCBOVUxMLCAmbF9lcnJvcik7DQorDQogICAgICAgICAgICAgaWYg
KCFyZXQpIHsNCiAgICAgICAgICAgICAgICAgZ19wcm9wYWdhdGVfcHJlZml4ZWRfZXJyb3IgKGVy
cm9yLCBsX2Vycm9yLCAiRmFpbGVkIHRvIG1vdW50ICclcyc6ICIsIGRldmljZSk7DQogICAgICAg
ICAgICAgICAgIGdfcm1kaXIgKG1vdW50cG9pbnQpOw0KLS0gDQoyLjQ4LjENCg0K

--_003_20250617200606GB14637localhostlocaldomain_
Content-Type: text/plain;
	name="0001-udiskslinuxfilesystemhelpers-Mount-private-mounts-wi.patch"
Content-Description:
 0001-udiskslinuxfilesystemhelpers-Mount-private-mounts-wi.patch
Content-Disposition: attachment;
	filename="0001-udiskslinuxfilesystemhelpers-Mount-private-mounts-wi.patch";
	size=1861; creation-date="Tue, 17 Jun 2025 20:07:30 GMT";
	modification-date="Tue, 17 Jun 2025 20:07:30 GMT"
Content-ID: <5F2007534A16FD4482829B64B709908E@namprd06.prod.outlook.com>
Content-Transfer-Encoding: base64

RnJvbSAwMDA3ZDU2MTZmNGRiYzljY2Q2NWI5MDk0ZmZjMThjNmY3NzZkMDZhIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQ0KRnJvbTogVG9tYXMgQnphdGVrIDx0YnphdGVrQHJlZGhhdC5jb20+DQpE
YXRlOiBXZWQsIDQgSnVuIDIwMjUgMTU6MjY6NDYgKzAyMDANClN1YmplY3Q6IFtQQVRDSF0gdWRp
c2tzbGludXhmaWxlc3lzdGVtaGVscGVyczogTW91bnQgcHJpdmF0ZSBtb3VudHMgd2l0aA0KICdu
b2Rldixub3N1aWQnDQoNClRoZSBwcml2YXRlIG1vdW50IGRvbmUgaW4gdGFrZV9maWxlc3lzdGVt
X293bmVyc2hpcCgpIHNob3VsZCBhbHdheXMNCmRlZmF1bHQgdG8gJ25vZGV2LG5vc3VpZCcgZm9y
IHNlY3VyaXR5IGFuZCAnZXJyb3JzPXJlbW91bnQtcm8nIGZvcg0Kc2VsZWN0ZWQgZmlsZXN5c3Rl
bSB0byBoYW5kbGUgY29ycnVwdGVkIGZpbGVzeXN0ZW0uIFRoaXMgaXMgY29uc2lzdGVudA0Kd2l0
aCBtb3VudCBvcHRpb25zIGNhbGN1bGF0aW9uIGZvciByZWd1bGFyIG1vdW50cy4NCi0tLQ0KIHNy
Yy91ZGlza3NsaW51eGZpbGVzeXN0ZW1oZWxwZXJzLmMgfCAxMCArKysrKysrKystDQogMSBmaWxl
IGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KDQpkaWZmIC0tZ2l0IGEv
c3JjL3VkaXNrc2xpbnV4ZmlsZXN5c3RlbWhlbHBlcnMuYyBiL3NyYy91ZGlza3NsaW51eGZpbGVz
eXN0ZW1oZWxwZXJzLmMNCmluZGV4IDdjNWZjMDM3Li45ZWI3NzQyYyAxMDA2NDQNCi0tLSBhL3Ny
Yy91ZGlza3NsaW51eGZpbGVzeXN0ZW1oZWxwZXJzLmMNCisrKyBiL3NyYy91ZGlza3NsaW51eGZp
bGVzeXN0ZW1oZWxwZXJzLmMNCkBAIC0xMjMsNiArMTIzLDcgQEAgdGFrZV9maWxlc3lzdGVtX293
bmVyc2hpcCAoY29uc3QgZ2NoYXIgICpkZXZpY2UsDQogDQogew0KICAgZ2NoYXIgKm1vdW50cG9p
bnQgPSBOVUxMOw0KKyAgY29uc3QgZ2NoYXIgKm1vdW50X29wdHM7DQogICBHRXJyb3IgKmxvY2Fs
X2Vycm9yID0gTlVMTDsNCiAgIGdib29sZWFuIHVubW91bnQgPSBGQUxTRTsNCiAgIGdib29sZWFu
IHN1Y2Nlc3MgPSBUUlVFOw0KQEAgLTE1MSw4ICsxNTIsMTUgQEAgdGFrZV9maWxlc3lzdGVtX293
bmVyc2hpcCAoY29uc3QgZ2NoYXIgICpkZXZpY2UsDQogICAgICAgICAgICAgICBnb3RvIG91dDsN
CiAgICAgICAgICAgICB9DQogDQorICAgICAgICAgIG1vdW50X29wdHMgPSAibm9kZXYsbm9zdWlk
IjsNCisgICAgICAgICAgaWYgKGdfc3RyY21wMCAoZnN0eXBlLCAiZXh0MiIpID09IDAgfHwNCisg
ICAgICAgICAgICAgIGdfc3RyY21wMCAoZnN0eXBlLCAiZXh0MyIpID09IDAgfHwNCisgICAgICAg
ICAgICAgIGdfc3RyY21wMCAoZnN0eXBlLCAiZXh0NCIpID09IDAgfHwNCisgICAgICAgICAgICAg
IGdfc3RyY21wMCAoZnN0eXBlLCAiamZzIikgPT0gMCkNCisgICAgICAgICAgICBtb3VudF9vcHRz
ID0gIm5vZGV2LG5vc3VpZCxlcnJvcnM9cmVtb3VudC1ybyI7DQorDQogICAgICAgICAgIC8qIFRP
RE86IG1vdW50IHRvIGEgcHJpdmF0ZSBtb3VudCBuYW1lc3BhY2UgKi8NCi0gICAgICAgICAgaWYg
KCFiZF9mc19tb3VudCAoZGV2aWNlLCBtb3VudHBvaW50LCBmc3R5cGUsIE5VTEwsIE5VTEwsICZs
b2NhbF9lcnJvcikpDQorICAgICAgICAgIGlmICghYmRfZnNfbW91bnQgKGRldmljZSwgbW91bnRw
b2ludCwgZnN0eXBlLCBtb3VudF9vcHRzLCBOVUxMLCAmbG9jYWxfZXJyb3IpKQ0KICAgICAgICAg
ICAgIHsNCiAgICAgICAgICAgICAgIGdfc2V0X2Vycm9yIChlcnJvciwgVURJU0tTX0VSUk9SLCBV
RElTS1NfRVJST1JfRkFJTEVELA0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICJDYW5ub3Qg
bW91bnQgJXMgYXQgJXM6ICVzIiwNCi0tIA0KMi40OS4wDQoNCg==

--_003_20250617200606GB14637localhostlocaldomain_--
