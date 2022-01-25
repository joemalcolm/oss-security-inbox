X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["153745" "Tuesday" "25" "January" "2022" "21:02:49" "+0000" "Alejandro Guerrero" "aguerrero@qualys.com" nil "3001" "[oss-security] CVE-2022-0185: Linux kernel slab out-of-bounds write: exploit and writeup" nil nil nil "1" nil nil (number mark "U       aguerrero@qu Jan 25 3001/153745 " thread-indent "\"[oss-security] CVE-2022-0185: Linux kernel slab out-of-bounds write: exploit and writeup\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2022-0185: Linux kernel slab out-of-bounds write: exploit and writeup" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1602 invoked by uid 550); 25 Jan 2022 21:31:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23561 invoked from network); 25 Jan 2022 21:03:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=from : to : subject :
 date : message-id : content-type : mime-version; s=qualyscom;
 bh=VvcQBTGydV7kQ0kqCGWhsYUJGx90aJnTlxGLzbvOVaA=;
 b=dcTqRjHctm0O+e0qHtSAEihiXiVsYSo01NOf4xZP7bgeba46s1i+uqiRj0YR0xt75Zd4
 KE54OBW3fGqeXlOj3K6aNhL7hUrEOo1Ku7Ckc2pyOY5nmA3P0gfhLnpryZDHmJniBaAd
 RJV19sB5Y8hpMccrw6Gcbvn7FoonDgx/P5oVNqbcXmeCDfUbQwp5dE94jBQI7kkgL8Aj
 bv+cV6BsQ/7nmHyEag3KJPeUhGYsAecXro+YgfOyv+DNDruNl1HF0GaHGZyUDGTfjfct
 dpVdoS5VhrmApN/Tf1EKF1ZBKVqOGQzX9XYsCfBaD98qAyquiFP/4dybv1T4gos4TO+Z Mw== 
Authentication-Results: ppops.net;
	spf=pass smtp.mailfrom=aguerrero@qualys.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=flxGNmCbhxfO0wPj8suZxhcUxSEJ6Fa3HJgsyUSpzNQ9cYER4hmz0IiQTIJSndOBFAN2HwARtxt4E2cJkzISXpSOiBDJU9mbnBmEokCn3vbiDUjs3e7iyBXOc6JRvgCNBo+b2WK3EATdp+pC8RHFRTTlK5oij9ya9LwNoz6vw/zB2pH+pfxQMocTKnDLXhN6uo0dpjTSBEE1Jxmgo5gjdC3QdbzumyoOopuaRxNeV3GTKl1H7Qj34ZWwngNu9DYd3imbowhZuMgEMsI0StQIi34mCMLLnffLTJl2LADc6lSLYlJlv9eyiTxe9aT73LaP6fyD6Qb24j7HHfdaOBZ7ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VvcQBTGydV7kQ0kqCGWhsYUJGx90aJnTlxGLzbvOVaA=;
 b=IcXvv1x753jz2bh2wMSVdaKzAJtaq8j7yCMvhRqp/8yq7ByQhKvdqGU/NWoZGVxhhg+pquYdjjhBi5rN3Fn2MlS/tTgJfU8WU+VK8pBbYUvAEuL02XkBetKDPLFF+6TP0ZXCZnaxQUnDi3ZEa7rFEQv4OJYd4LhSMz7K7DPRuLG8K/9sxKt20ZcIhMG0Xi2i8Mf+Hb02XW6RjIxDn5i9DBJP2yO8P0taPVjeFZJqraF3cb8y+yoZ8tucrExI3odjPFCQLPsdpKzFgxvop6otLds9Eimqexeg7MBSQaxDL/zMI54linUSjkIDU6UemNlPRF5zcmzn2A4Y7tHOqMtaug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VvcQBTGydV7kQ0kqCGWhsYUJGx90aJnTlxGLzbvOVaA=;
 b=idBr5mWVO2O2BdcR2Tw/70tM/KSwR6Bf7IDhqOkU1JKPEcSgCu544/8McKe4KuJPcIJDS1AyxvQ35IesGTaVX0wxqzWydYT71b9rS0kdK5fbZQd0VhBeXRVu1EFEig0Wed76LYJ2wi/gXXqTxffsppF6cph5JRtHaqaCbfe6r90ka5cRfyYGuILmidkXqu2VnHJZv17GkkhzBJE7tVm55EHnx1soxFOgBSIjIQaLHCKs/MU6ZKsu2qGHW3sp5CPZnp/VaQ7G/Gb/PTGIB7kMA9T/m8dDoe0U80HcYd+ZdQX8jyzXQo8rQsG/8TTcF7XN8jncog8ZmOkYfHWzrYjVLg==
From: Alejandro Guerrero <aguerrero@qualys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE-2022-0185 exploit and writeup
Thread-Index: AQHYEi31k0fJWQUSsk6yFOrprLS5vg==
Date: Tue, 25 Jan 2022 21:02:49 +0000
Message-ID: 
 <CO1PR06MB8075552C0C54FDE693F5E16CD85F9@CO1PR06MB8075.namprd06.prod.outlook.com>
Accept-Language: es-ES, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f015b652-cb26-423a-783c-08d9e0460bdc
x-ms-traffictypediagnostic: BN6PR06MB2322:EE_
x-microsoft-antispam-prvs: 
 <BN6PR06MB23225EF6A2681833B28AE2E9D85F9@BN6PR06MB2322.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 xEoe/o0pBQplRHJoPeijcm01KA+JMVi2dak0kW8CKx9MlVl7ns+8T09iLkR6VBMf1s+vD1Ka24lVcuqZa9la/O5ASvOfmj4WHnLs7SdYLEfhwPeis4PlT05I6SdfKtYMc51vOZm90Dga0QKBlCbNTFSaKJdlX86KQxoprQG3dYl+9E/vrHxknY6qgrTY9qWlBJW0lpYrGkJqrayAdEss9nU0A9tzq03DbcW43CCRGXhZzGTtcMZlp6pE79jHG8/A6PD/nEamTNdy5zq1XRfm2NH/jCmejAPPKkiuPyRQlrIgB/IyV0MAyMez3iqAE/ftfm7z8VFQ3ztLGr9mEJLwZvu61sLEGGyVXW8zdwMFNWWBCd+/U6WDTLQ1Zfian24z9H/cO7MDOVnGd2wUxeNgNBpZBqqMcGuGYIGVf+6xvv4Pov+gvEwhp4gOP9Ea1GscLtJsT3C02xI9hK+vh7X8ziJ5QXqm1XWmFG44cOQCvG7Lv8EXzPon4Im6bO6zBLvk5wB0L6n0J40kvV3+A1GQFz5V27HEDjGmK3Q+bCQIa5gCQ8jQNFEeNqIevZvTG9BpJQilwVv/MwMuZ6jzeVTJZJs0xYKayJi70xFNx+iyaVcZ7LOxY6s5lid20n82T4A3rf/qVTT/QCU1DKoulzrEKLmiWusL55a4EbYOZLmrX+K3qWyqMGDG0Z9XOYslIOQyUzySthIAjG7qRJ3VXFv6h//vjqlmK5SCaegm47GyBRg9MujNVSHHzEUe6jhQkDZUB0Oj9iySSlPOd92mAWe/9Q==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR06MB8075.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(91956017)(83380400001)(66574015)(316002)(66556008)(52536014)(76116006)(64756008)(66446008)(66946007)(66476007)(71200400001)(8936002)(33656002)(8676002)(508600001)(38070700005)(6506007)(186003)(26005)(2906002)(9686003)(7696005)(99936003)(38100700002)(6916009)(30864003)(122000001)(5660300002)(86362001)(55016003)(559001)(579004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-2?Q?g1CwLEaUqpcEJ16inEQxXquXP9d90AQ4sWN8ik7xFSonN6T+9K8Wa+iFNL?=
 =?iso-8859-2?Q?hZ4YJ2YPHhPBzLy/OROzmwqq3xuKNJfeuMOMMytWF0XzZX+eWwYcL4iCqN?=
 =?iso-8859-2?Q?YI43ftDOoz+LdrvKyNdTiP+a+7CdxMWSXv9//r61EzkvePt7OOH4eXLYBr?=
 =?iso-8859-2?Q?0gBeUDEEIS6We/mkq7G5KaNoLekpbt38nqmuADar+pLJLp3fANl68H+Z4m?=
 =?iso-8859-2?Q?eGVWZrYur6vHN4sss5ioq33TKx0OYQnurQ8WuBEp5OAlwZwm70G33lJ0I4?=
 =?iso-8859-2?Q?J8t/BSGtvHP+zpm+TlUYvRuWeloFKCp1NBB9/ToA10ipn5/MJaLNi1sjAg?=
 =?iso-8859-2?Q?zn3zZMWtvXLCjDWfm2jZyv6e8icrzQ8SFVuFV8GAMBjqeSUKQ9cwwQNwaU?=
 =?iso-8859-2?Q?aM3P4KlkuakN0OMY64cC/kyRMWT8NZ24J8sZF8zsEPCIcv2YE8Or2IMMM9?=
 =?iso-8859-2?Q?ww49wXeGxs8Dr6qCA5i9Gv6/FeqDdzGCpUgi4a0jeGi7Kb82RHllv/BDPm?=
 =?iso-8859-2?Q?nxEFlDVNmcjt4TtFTeg9ZwZbB37gSsExc3z8dNrFydrEote8NGOyFiIUZd?=
 =?iso-8859-2?Q?vMMxtldenGrQKKZIRfK6ms9p3hbVfcHXnuZMkipXkSa4R7wE5nSeL4qGEv?=
 =?iso-8859-2?Q?e7FO1cXBElJyS9KaySeZw6SxSo5S7XkQsy1Mt4acXbrnOKt33qaBEhJzuZ?=
 =?iso-8859-2?Q?NjuanFDtq+l09QpPjRX1h3KUeECsVr/iZRvh0RLfEXCErmzXtYtGLDbo+9?=
 =?iso-8859-2?Q?kXyVjqJPiJVwZAuNUgJyszy7o+N35PUBvjcHO4CNgN0RmoIisQqTzGwkHb?=
 =?iso-8859-2?Q?OxqW+rRUqk6dDVxAoKuepp9OBGqrqrLJ+uUT5lv8WBhoVWh53htT20iqiO?=
 =?iso-8859-2?Q?JN3BIAwmXZs3TwqdGFpURmixiax0Uwx5tyJZWuEwyrDafASB8EZv/Sbvwx?=
 =?iso-8859-2?Q?yYJmrnjVglytcMYzSJ5mka9zkqMyiz3Etew5c8MyXJ7yQqVlADFnKTXlrm?=
 =?iso-8859-2?Q?24dmvlcHdf05Ee5Fp4Pdie5WrtH1az+KNBXy/6MqnAcHF6fSBJdWUK4BKE?=
 =?iso-8859-2?Q?ZaHphyPwr9u+RZHog9uZXKFipoVTw9B9rLwxjxh8YUgvQ8fS6e1ZJ4oRid?=
 =?iso-8859-2?Q?cOJWHYhIwykqahLsMWwVVQmOzsbV9bpX7n/oKA65DbPv43PdUkq0PEuDxo?=
 =?iso-8859-2?Q?W9NP+GQDBJM90ofcbX9mpnijyXVxn05YNpkD6XKIZgXSsGbusCkAByl/XA?=
 =?iso-8859-2?Q?QX3bQVMMMDhycHsATKy/QnM/EUgblonglDQlQgqRqAFlXkrWQdCy/DDedF?=
 =?iso-8859-2?Q?rVk2y76W/KXtwCquEuSyc5DK3h4FMNJKtNT6gn0phEGOg0yw4+lXYGqcLA?=
 =?iso-8859-2?Q?6VSd/djcrLhTrIAuot4ZpCMsJB6GwfhW70QOnYSMt1Pv7Y7NSKDbnvYqMu?=
 =?iso-8859-2?Q?fmWCYCtXfRIHS/VhysOyTPfCIRRHBVFpdx3nWb13i8IVUJotVXmYly1pUT?=
 =?iso-8859-2?Q?LboeJLC68eUeDMg3FpnAXbrKDVk0ekso8jA+xAf7tn3RMSRGEHYOAGm3D6?=
 =?iso-8859-2?Q?w4T53pMlj5f17rPrklNS5YWHp7bAp1zniFqyYQmcyUK6RqJ/U2kszhR4Dc?=
 =?iso-8859-2?Q?Ov5rQsDitG3Hh82nxqApjYEIgDtiqr3F0EwzJxIsTy6vhc20VHnP1+4SLh?=
 =?iso-8859-2?Q?h42BMgX+GMxOG2f+0nkLUUvmxOaGAeAiiFrkRrw5?=
Content-Type: multipart/mixed;
	boundary="_004_CO1PR06MB8075552C0C54FDE693F5E16CD85F9CO1PR06MB8075namp_"
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR06MB8075.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f015b652-cb26-423a-783c-08d9e0460bdc
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jan 2022 21:02:49.9872
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vRZDR9rEyEWYzLMLGvm6asKIN2hCaSBeblLywwDh0TK0n/qss1M/3VzXRa7KB9tOGMMMA4Ku53It5X3VLAmUfA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR06MB2322
X-Proofpoint-GUID: dnlFaxNelTBO8SqHyaML9OAx8SPjn-DG
X-Proofpoint-ORIG-GUID: dnlFaxNelTBO8SqHyaML9OAx8SPjn-DG
X-Proofpoint-SPF-Result: pass
X-Proofpoint-SPF-Record: v=spf1 include:_spf.qualys.com include:spf.protection.outlook.com
 include:spf-001ca501.pphosted.com include:stspg-customer.com
 include:_spf.salesforce.com include:mktomail.com
 include:emailus.freshservice.com a:sendgrid.avolio.tech ~all
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.816,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-01-25_05,2022-01-25_02,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 suspectscore=0 lowpriorityscore=0 adultscore=0 clxscore=1034
 priorityscore=1501 bulkscore=0 mlxscore=0 phishscore=0 impostorscore=0
 spamscore=0 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2201110000 definitions=main-2201250126
Subject: [oss-security] CVE-2022-0185: Linux kernel slab out-of-bounds write: exploit and writeup

--_004_CO1PR06MB8075552C0C54FDE693F5E16CD85F9CO1PR06MB8075namp_
Content-Type: multipart/alternative;
	boundary="_000_CO1PR06MB8075552C0C54FDE693F5E16CD85F9CO1PR06MB8075namp_"

--_000_CO1PR06MB8075552C0C54FDE693F5E16CD85F9CO1PR06MB8075namp_
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable

Hi all,

Now that the discoverers of this bug (CVE-2022-0185) have published their e=
xploit and writeup (https://twitter.com/cor_ctf/status/1486022971034529794)=
, here is the exploit I wrote (attached) and a short writeup:

# Exploiting CVE-2022-0185: A Linux kernel slab out-of-bounds write

Last week, a newly discovered vulnerability was announced on the oss-securi=
ty mailing list (reference \[6\] at the end of this post).

The bug was discovered and reported to Red Hat by Alec Petridis, Hrvoje Mi=
=B9eti=E6, Isaac Badipe, Jamie Hill-Daniel, Philip Papurt, and William Liu:=
 thank you very much for discovering this amazing bug and for the opportuni=
ty to work on it!

This vulnerability is a heap-based overflow in the Linux kernel, that makes=
 it possible to achieve Local Privilege Escalation (LPE), from any unprivil=
eged user to root.

As mentioned in the announcement on oss-security, we need `CAP_SYS_ADMIN` c=
apability to exploit this bug, but we as an unprivileged user can call `uns=
hare(CLONE_NEWNS | CLONE_NEWUSER)` to enter a new namespace where we have t=
his capability.

This short post analyzes the bug, and explains the approach we adopted to e=
xploit it.

(This is my first Linux kernel exploit for a real-world vulnerability, so p=
lease let me know if you have comments or improvements on this post or expl=
oit).

We developed our exploit for Ubuntu 21.04 Hirsute with kernel 5.11.

## Bug analysis

The bug is located in `fs/fs_context.c` in the function `legacy_parse_param=
()`:

```c
static int legacy_parse_param(struct fs_context *fc, struct fs_parameter *p=
aram)
{
           struct legacy_fs_context *ctx =3D fc->fs_private;
           unsigned int size =3D ctx->data_size;
           size_t len =3D 0;

           if (strcmp(param->key, "source") =3D=3D 0) {
                      if (param->type !=3D fs_value_is_string)
                                 return invalf(fc, "VFS: Legacy: Non-string=
 source");
                      if (fc->source)
                                 return invalf(fc, "VFS: Legacy: Multiple s=
ources");
                      fc->source =3D param->string;
                      param->string =3D NULL;
                      return 0;
           }

           if (ctx->param_type =3D=3D LEGACY_FS_MONOLITHIC_PARAMS)
                      return invalf(fc, "VFS: Legacy: Can't mix monolithic =
and individual options");

           switch (param->type) {
           case fs_value_is_string:
                      len =3D 1 + param->size;
                      fallthrough;
           case fs_value_is_flag:
                      len +=3D strlen(param->key);
                      break;
           default:
                      return invalf(fc, "VFS: Legacy: Parameter type for '%=
s' not supported",
                                       param->key);
           }

           if (len > PAGE_SIZE - 2 - size)
                      return invalf(fc, "VFS: Legacy: Cumulative options to=
o large");
           if (strchr(param->key, ',') ||
               (param->type =3D=3D fs_value_is_string &&
                memchr(param->string, ',', param->size)))
                      return invalf(fc, "VFS: Legacy: Option '%s' contained=
 comma",
                                       param->key);
           if (!ctx->legacy_data) {
                      ctx->legacy_data =3D kmalloc(PAGE_SIZE, GFP_KERNEL);
                      if (!ctx->legacy_data)
                                 return -ENOMEM;
           }

           ctx->legacy_data[size++] =3D ',';
           len =3D strlen(param->key);
           memcpy(ctx->legacy_data + size, param->key, len);
           size +=3D len;
           if (param->type =3D=3D fs_value_is_string) {
                      ctx->legacy_data[size++] =3D '=3D';
                      memcpy(ctx->legacy_data + size, param->string, param-=
>size);
                      size +=3D param->size;
           }
           ctx->legacy_data[size] =3D '\0';
           ctx->data_size =3D size;
           ctx->param_type =3D LEGACY_FS_INDIVIDUAL_PARAMS;
           return 0;
}
```

The first time we call `legacy_parse_param()` within a fs context, `ctx->le=
gacy_data` is NULL, so a call to `kmalloc()` is performed, requesting a `PA=
GE_SIZE`-sized chunk and providing `GFP_KERNEL` as flags.

If we provide a `FSCONFIG_SET_STRING` when calling `fsconfig()`, `legacy_pa=
rse_param()` is called to add the parameters to a legacy configuration. Eve=
ry time this function is called, the `ctx->legacy_data` buffer is filled wi=
th the parameters of the legacy configuration. Actually, what is written to=
 the buffer is the key and value for the parameters specified through the `=
fsconfig()` syscall.

For example, if we call `fsconfig()` and provide `AAAA` as the key and `BBB=
B` as the value, here is what would be written to the buffer: `,AAAA=3DBBBB=
`.

If we keep calling `fsconfig()` with the cmd `FSCONFIG_SET_STRING`, the con=
tents of `ctx->legacy_data` will be increasing, as well as the `ctx->data_s=
ize`, which defines the amount of bytes residing in the buffer.

If we can make `size` (`ctx->data_size`) be a value higher than or equal to=
 `PAGE_SIZE - 1`, the result of the subtraction will underflow to a huge va=
lue, thus always making `len` be less than the result of the subtraction. T=
his will make every subsequent calls to `fsconfig()` have the ability to ke=
ep sending strings, which are actually going to be written out-of-bounds (O=
OB).

To reach this OOB condition, we need to call `fsconfig()` a number of times=
 (sending parameter strings) until `ctx->data_size` is higher than or equal=
 to `PAGE_SIZE - 1`, so the following calls to `fsconfig()` will continue t=
he string-writing without limits.

## Exploitation overview

This is a short summary of the exploitation process:

1) Spray the kmalloc-4096 with `ctx->legacy_data` buffers and `msg_msg` str=
uctures.
2) Spray the kmalloc-32 with `shm_file_data` structures.
3) Overflow the next chunk (hopefully a `msg_msg` struct), overwriting the =
size entry with a higher value.
4) Request the message through `msgrcv()` with a size bigger than the one u=
sed for `msgsnd()`, to trigger an out-of-bounds read.
5) Hopefully the out-of-bounds data contains the `init_ipc_ns` address, whi=
ch will allow us to calculate the KASLR base.
6) Spray the heap again in a similar way to step 1.
7) Register userfaultfd or FUSE on `mmap()`'ed pages and pass them to `msgs=
nd()` to block a thread in `copy_from_user()`.
8) Overflow the next chunk (hopefully a `msg_msg struct`), overwriting the =
`msg_msg.next` entry with `modprobe_path` - 8.
9) Release the blocked thread (using userfaultfd or FUSE) and copy data to =
overwrite `modprobe_path` with our own script.
10) Force the kernel to call `call_modprobe()`, which executes our script a=
s root.

## Exploitation details

This overflow happens in the kmalloc-4096 cache, and there are not many wel=
l-known ways to spray kmalloc-4096 with useful chunks.

After reading other vulnerability analyses and exploitation posts (please s=
ee the references at the end of this post), we found out that `msg_msg` is =
the ideal object to use for getting read and write primitives.

### IPC msg operations: a short overview

**Note:** To understand the IPC msg operations better, it is recommended to=
 read the references **[2]** and **[4]** (references at the end of this pos=
t).

As we are going to exploit the `msg_msg` structure in this analysis, let us=
 briefly overview how it behaves, and then explain how to get primitives wi=
th it.

Using the Linux Kernel IPC message operations, we can send and receive mess=
ages to/from a message queue.

This is the main structure that defines it:

```c
struct msg_msg {
           struct list_head m_list;
           long m_type;
           size_t m_ts;           /* message text size */
           struct msg_msgseg *next;
           void *security;
           /* the actual message follows immediately */
};
```

We can send messages to the message queue by using `msgsnd()`, which ends u=
p calling `do_msgsnd()`:

```c
static long do_msgsnd(int msqid, long mtype, void __user *mtext,
                      size_t msgsz, int msgflg)
{
           struct msg_queue *msq;
           struct msg_msg *msg;
           int err;
           struct ipc_namespace *ns;
           DEFINE_WAKE_Q(wake_q);

           ns =3D current->nsproxy->ipc_ns;

           if (msgsz > ns->msg_ctlmax || (long) msgsz < 0 || msqid < 0)
                      return -EINVAL;
           if (mtype < 1)
                      return -EINVAL;

           msg =3D load_msg(mtext, msgsz);
           if (IS_ERR(msg))
                      return PTR_ERR(msg);

           msg->m_type =3D mtype;
           msg->m_ts =3D msgsz;

           rcu_read_lock();
           msq =3D msq_obtain_object_check(ns, msqid);
           if (IS_ERR(msq)) {
                      err =3D PTR_ERR(msq);
                      goto out_unlock1;
           }

           ipc_lock_object(&msq->q_perm);

           for (;;) {
                      struct msg_sender s;

                      err =3D -EACCES;
                      if (ipcperms(ns, &msq->q_perm, S_IWUGO))
                                 goto out_unlock0;

                      /* raced with RMID? */
                      if (!ipc_valid_object(&msq->q_perm)) {
                                 err =3D -EIDRM;
                                 goto out_unlock0;
                      }

                      err =3D security_msg_queue_msgsnd(&msq->q_perm, msg, =
msgflg);
                      if (err)
                                 goto out_unlock0;

                      if (msg_fits_inqueue(msq, msgsz))
                                 break;

                      /* queue full, wait: */
                      if (msgflg & IPC_NOWAIT) {
                                 err =3D -EAGAIN;
                                 goto out_unlock0;
                      }

                      /* enqueue the sender and prepare to block */
                      ss_add(msq, &s, msgsz);

                      if (!ipc_rcu_getref(&msq->q_perm)) {
                                 err =3D -EIDRM;
                                 goto out_unlock0;
                      }

                      ipc_unlock_object(&msq->q_perm);
                      rcu_read_unlock();
                      schedule();

                      rcu_read_lock();
                      ipc_lock_object(&msq->q_perm);

                      ipc_rcu_putref(&msq->q_perm, msg_rcu_free);
                      /* raced with RMID? */
                      if (!ipc_valid_object(&msq->q_perm)) {
                                 err =3D -EIDRM;
                                 goto out_unlock0;
                      }
                      ss_del(&s);

                      if (signal_pending(current)) {
                                 err =3D -ERESTARTNOHAND;
                                 goto out_unlock0;
                      }

           }

           ipc_update_pid(&msq->q_lspid, task_tgid(current));
           msq->q_stime =3D ktime_get_real_seconds();

           if (!pipelined_send(msq, msg, &wake_q)) {
                      /* no one is waiting for this message, enqueue it */
                      list_add_tail(&msg->m_list, &msq->q_messages);
                      msq->q_cbytes +=3D msgsz;
                      msq->q_qnum++;
                      atomic_add(msgsz, &ns->msg_bytes);
                      atomic_inc(&ns->msg_hdrs);
           }

           err =3D 0;
           msg =3D NULL;

out_unlock0:
           ipc_unlock_object(&msq->q_perm);
           wake_up_q(&wake_q);
out_unlock1:
           rcu_read_unlock();
           if (msg !=3D NULL)
                      free_msg(msg);
           return err;
}
```

which ends up calling `load_msg()`:

```c
struct msg_msg *load_msg(const void __user *src, size_t len)
{
           struct msg_msg *msg;
           struct msg_msgseg *seg;
           int err =3D -EFAULT;
           size_t alen;

           msg =3D alloc_msg(len);
           if (msg =3D=3D NULL)
                      return ERR_PTR(-ENOMEM);

           alen =3D min(len, DATALEN_MSG);
           if (copy_from_user(msg + 1, src, alen))
                      goto out_err;

           for (seg =3D msg->next; seg !=3D NULL; seg =3D seg->next) {
                      len -=3D alen;
                      src =3D (char __user *)src + alen;
                      alen =3D min(len, DATALEN_SEG);
                      if (copy_from_user(seg + 1, src, alen))
                                 goto out_err;
           }

           err =3D security_msg_msg_alloc(msg);
           if (err)
                      goto out_err;

           return msg;

out_err:
           free_msg(msg);
           return ERR_PTR(err);
}
```

If the message provided is longer than `DATALEN_MSG`, `alloc_msg()` will al=
locate segments, where the remaining data is stored forming a linked list. =
`DATALEN_MSG` is defined as `PAGE_SIZE - sizeof(struct msg_msg)`, and `DATA=
LEN_SEG` is defined as `PAGE_SIZE - sizeof(struct msg_msgseg)`.

`msg_msgseg`, which is the header for the segments that form the linked lis=
t of remaining data, is defined as:

```c
struct msg_msgseg {
           struct msg_msgseg* next;
           /* the next part of the message follows immediately */
};
```

We can see this just defines the pointer to the next element within the lin=
ked list, or NULL to end it.

On the other hand, when calling `msgrcv()`, `do_msgrcv()` ends up being cal=
led:

```c
static long do_msgrcv(int msqid, void __user *buf, size_t bufsz, long msgty=
p, int msgflg,
                  long (*msg_handler)(void __user *, struct msg_msg *, size=
_t))
{
           int mode;
           struct msg_queue *msq;
           struct ipc_namespace *ns;
           struct msg_msg *msg, *copy =3D NULL;
           DEFINE_WAKE_Q(wake_q);

           ns =3D current->nsproxy->ipc_ns;

           if (msqid < 0 || (long) bufsz < 0)
                      return -EINVAL;

           if (msgflg & MSG_COPY) {
                      if ((msgflg & MSG_EXCEPT) || !(msgflg & IPC_NOWAIT))
                                 return -EINVAL;
                      copy =3D prepare_copy(buf, min_t(size_t, bufsz, ns->m=
sg_ctlmax));
                      if (IS_ERR(copy))
                                 return PTR_ERR(copy);
           }
           mode =3D convert_mode(&msgtyp, msgflg);

           rcu_read_lock();
           msq =3D msq_obtain_object_check(ns, msqid);
           if (IS_ERR(msq)) {
                      rcu_read_unlock();
                      free_copy(copy);
                      return PTR_ERR(msq);
           }

           for (;;) {
                      struct msg_receiver msr_d;

                      msg =3D ERR_PTR(-EACCES);
                      if (ipcperms(ns, &msq->q_perm, S_IRUGO))
                                 goto out_unlock1;

                      ipc_lock_object(&msq->q_perm);

                      /* raced with RMID? */
                      if (!ipc_valid_object(&msq->q_perm)) {
                                 msg =3D ERR_PTR(-EIDRM);
                                 goto out_unlock0;
                      }

                      msg =3D find_msg(msq, &msgtyp, mode);
                      if (!IS_ERR(msg)) {
                                 /*
                                 * Found a suitable message.
                                 * Unlink it from the queue.
                                 */
                                 if ((bufsz < msg->m_ts) && !(msgflg & MSG_=
NOERROR)) {
                                            msg =3D ERR_PTR(-E2BIG);
                                            goto out_unlock0;
                                 }
                                 /*
                                 * If we are copying, then do not unlink me=
ssage and do
                                 * not update queue parameters.
                                 */
                                 if (msgflg & MSG_COPY) {
                                            msg =3D copy_msg(msg, copy);
                                            goto out_unlock0;
                                 }

                                 list_del(&msg->m_list);
                                 msq->q_qnum--;
                                 msq->q_rtime =3D ktime_get_real_seconds();
                                 ipc_update_pid(&msq->q_lrpid, task_tgid(cu=
rrent));
                                 msq->q_cbytes -=3D msg->m_ts;
                                 atomic_sub(msg->m_ts, &ns->msg_bytes);
                                 atomic_dec(&ns->msg_hdrs);
                                 ss_wakeup(msq, &wake_q, false);

                                 goto out_unlock0;
                      }

                      /* No message waiting. Wait for a message */
                      if (msgflg & IPC_NOWAIT) {
                                 msg =3D ERR_PTR(-ENOMSG);
                                 goto out_unlock0;
                      }

                      list_add_tail(&msr_d.r_list, &msq->q_receivers);
                      msr_d.r_tsk =3D current;
                      msr_d.r_msgtype =3D msgtyp;
                      msr_d.r_mode =3D mode;
                      if (msgflg & MSG_NOERROR)
                                 msr_d.r_maxsize =3D INT_MAX;
                      else
                                 msr_d.r_maxsize =3D bufsz;

                      /* memory barrier not require due to ipc_lock_object(=
) */
                      WRITE_ONCE(msr_d.r_msg, ERR_PTR(-EAGAIN));

                      /* memory barrier not required, we own ipc_lock_objec=
t() */
                      __set_current_state(TASK_INTERRUPTIBLE);

                      ipc_unlock_object(&msq->q_perm);
                      rcu_read_unlock();
                      schedule();

                      /*
                      * Lockless receive, part 1:
                      * We don't hold a reference to the queue and getting a
                      * reference would defeat the idea of a lockless opera=
tion,
                      * thus the code relies on rcu to guarantee the existe=
nce of
                      * msq:
                      * Prior to destruction, expunge_all(-EIRDM) changes r=
_msg.
                      * Thus if r_msg is -EAGAIN, then the queue not yet de=
stroyed.
                      */
                      rcu_read_lock();

                      /*
                      * Lockless receive, part 2:
                      * The work in pipelined_send() and expunge_all():
                      * - Set pointer to message
                      * - Queue the receiver task for later wakeup
                      * - Wake up the process after the lock is dropped.
                      *
                      * Should the process wake up before this wakeup (due =
to a
                      * signal) it will either see the message and continue=
 ...
                      */
                      msg =3D READ_ONCE(msr_d.r_msg);
                      if (msg !=3D ERR_PTR(-EAGAIN)) {
                                 /* see MSG_BARRIER for purpose/pairing */
                                 smp_acquire__after_ctrl_dep();

                                 goto out_unlock1;
                      }

                      /*
                        * ... or see -EAGAIN, acquire the lock to check the=
 message
                        * again.
                        */
                      ipc_lock_object(&msq->q_perm);

                      msg =3D READ_ONCE(msr_d.r_msg);
                      if (msg !=3D ERR_PTR(-EAGAIN))
                                 goto out_unlock0;

                      list_del(&msr_d.r_list);
                      if (signal_pending(current)) {
                                 msg =3D ERR_PTR(-ERESTARTNOHAND);
                                 goto out_unlock0;
                      }

                      ipc_unlock_object(&msq->q_perm);
           }

out_unlock0:
           ipc_unlock_object(&msq->q_perm);
           wake_up_q(&wake_q);
out_unlock1:
           rcu_read_unlock();
           if (IS_ERR(msg)) {
                      free_copy(copy);
                      return PTR_ERR(msg);
           }

           bufsz =3D msg_handler(buf, msg, bufsz);
           free_msg(msg);

           return bufsz;
}
```


When `do_msgrcv()` is called, once the data is received, the message is unl=
inked from the queue, unless we provide flag `MSG_COPY`:

```c
/*
* If we are copying, then do not unlink message and do
* not update queue parameters.
*/
if (msgflg & MSG_COPY) {
           msg =3D copy_msg(msg, copy);
           goto out_unlock0;
}

list_del(&msg->m_list);
msq->q_qnum--;
msq->q_rtime =3D ktime_get_real_seconds();
ipc_update_pid(&msq->q_lrpid, task_tgid(current));
msq->q_cbytes -=3D msg->m_ts;
atomic_sub(msg->m_ts, &ns->msg_bytes);
atomic_dec(&ns->msg_hdrs);
ss_wakeup(msq, &wake_q, false);

goto out_unlock0;
```

As we can see, using `MSG_COPY` prevents the use of the `msg_msg.m_list` po=
inters (`msg_msg.mlist.prev` and `msg_msg.m_list.next`), which (as explaine=
d later for both read and write primitives) we need to overwrite to reach e=
ntries that follow, like `msg_msg.m_ts` or `msg_msg.next`, and might contai=
n invalid pointers.

Messages are freed with `free_msg()`:

```c
void free_msg(struct msg_msg *msg)
{
           struct msg_msgseg *seg;

           security_msg_msg_free(msg);

           seg =3D msg->next;
           kfree(msg);
           while (seg !=3D NULL) {
                      struct msg_msgseg *tmp =3D seg->next;

                      cond_resched();
                      kfree(seg);
                      seg =3D tmp;
           }
}
```

which calls `kfree()` to free the `msg_msg` structure chunk, and then trave=
rses the linked list until all the segments are `kfree()`'d

This is the function `copy_msg()`:

```c
struct msg_msg *copy_msg(struct msg_msg *src, struct msg_msg *dst)
{
           struct msg_msgseg *dst_pseg, *src_pseg;
           size_t len =3D src->m_ts;
           size_t alen;

           if (src->m_ts > dst->m_ts)
                      return ERR_PTR(-EINVAL);

           alen =3D min(len, DATALEN_MSG);
           memcpy(dst + 1, src + 1, alen);

           for (dst_pseg =3D dst->next, src_pseg =3D src->next;
                src_pseg !=3D NULL;
                dst_pseg =3D dst_pseg->next, src_pseg =3D src_pseg->next) {

                      len -=3D alen;
                      alen =3D min(len, DATALEN_SEG);
                      memcpy(dst_pseg + 1, src_pseg + 1, alen);
           }

           dst->m_type =3D src->m_type;
           dst->m_ts =3D src->m_ts;

           return dst;
}
```

As we can see, it performs a copy of a `msg_msg` structure contents, to a d=
estination `msg_msg`.

>From `do_msgrcv()`, and through `do_msg_fill()`,  `store_msg()` is called:

```c
int store_msg(void __user *dest, struct msg_msg *msg, size_t len)
{
           size_t alen;
           struct msg_msgseg *seg;

           alen =3D min(len, DATALEN_MSG);
           if (copy_to_user(dest, msg + 1, alen))
                      return -1;

           for (seg =3D msg->next; seg !=3D NULL; seg =3D seg->next) {
                      len -=3D alen;
                      dest =3D (char __user *)dest + alen;
                      alen =3D min(len, DATALEN_SEG);
                      if (copy_to_user(dest, seg + 1, alen))
                                 return -1;
           }
           return 0;
}
```

We can see it uses `copy_to_user()` to copy the data to userspace. It first=
 calls `copy_to_user()` for the data stored after the `msg_msg` struct, and=
 then traverses the linked list to send all the remaining segment data.

### Disclosing memory: out-of-bounds (OOB) read primitive

We want to exploit this bug to achieve LPE, in an environment with default =
hardening mechanisms (SMEP, SMAP, KPTI, KASLR, ...), so if we want predicta=
ble addresses to continue the exploitation we will need to get useful primi=
tives that let us leak pointers.

As mentioned before, if the size of our data surpasses the space within a b=
lock, a segment is created for it. Segments are accessed through the entry =
`msg_msg.next`, which creates a singly linked list to be traversed. We have=
 the ability to overwrite `msg_msg` headers but we have no predictable addr=
esses. The `msg_msg.m_ts` (which corresponds to the size) would allow us (i=
f corrupting it to a higher value), to trigger an out-of-bounds read primit=
ive by requesting more size than the initial one, so it will disclose memor=
y from subsequent allocated chunks.

As detailed in the referenced post **[3]**, if we make msgutil to allocate =
a `msg_msg` structure, and a segment in the kmalloc-32 cache, we will be ab=
le to read out-of-bounds within the kmalloc-32 cache, so spraying with `shm=
_file_data` structures (which also reside in the kmalloc-32) will allow us =
to leak the KASLR base due to the existence of a specific entry that points=
 to `init_ipc_ns`, which resides in the kernel data section.

To first be able to trigger an overflow into one of the `msg_msg` chunks, w=
e need to spray the heap to maximize the probability of hitting one of the =
`msg_msg` sprayed chunks.

To do so, we first spray with `ctx->legacy_data` chunks, to fill the previo=
us holes using `fsopen()` and `fsconfig()`. Then, we spray the kmalloc-4096=
 with `msg_msg` objects using `msgsnd()`.

To achieve the information leak primitive for `init_ipc_ns` we will need to=
 fill the kmalloc-32 cache, spraying with `shm_file_data` structures, using=
 `shmget()` and `shmat()`.

Finally, allocate the chunk from where we are going to overflow using `fsop=
en()` and `fsconfig()` (the first time will allocate the chunk).

Now, we will fill the `ctx->legacy_data` buffer by repeatedly calling `fsco=
nfig()` until the conditions to trigger the integer underflow are met.

Once the check causes an integer underflow, we are ready to overflow the ne=
xt chunk, which is hopefully a `msg_msg` structure. We need to replace the =
`msg_msg.m_list` pointers, both `msg_msg.m_list.prev` and `msg_msg.m_list.n=
ext` with dummy values, as well as `msg_msg.m_type`, and partially overwrit=
e `msg_msg.m_ts` by making it bigger than its original value.

If everything succeeds, we do not know which of the sprayed chunks might be=
 the one we overflowed (if any!), so we call `msgrcv()` on all of these mes=
sages with an increased size, so that if any of them had its size increased=
 as a result of the `msg_msg.m_ts` value corruption, it will return out-of-=
bounds data.

Hopefully, the out-of-bounds data will contain the `init_ipc_ns` pointer, s=
o we have the KASLR base.

Our main target, now that we have the KASLR base, is to craft a write primi=
tive to overwrite `modprobe_path` with our own custom script.

### Write-what-where primitive

Achieving a write-what-where is a bit more difficult because `msgsnd()` act=
ually allocates and sends bytes, so each call to `msgsnd()` will write to a=
 different newly allocated chunk, unlike `msgrcv()` which reads data from a=
lready allocated chunks from previous calls.

However, if we take a look at `load_msg()`:

```c
struct msg_msg *load_msg(const void __user *src, size_t len)
{
           struct msg_msg *msg;
           struct msg_msgseg *seg;
           int err =3D -EFAULT;
           size_t alen;

           msg =3D alloc_msg(len);
           if (msg =3D=3D NULL)
                      return ERR_PTR(-ENOMEM);

           alen =3D min(len, DATALEN_MSG);
           if (copy_from_user(msg + 1, src, alen))
                      goto out_err;

           for (seg =3D msg->next; seg !=3D NULL; seg =3D seg->next) {
                      len -=3D alen;
                      src =3D (char __user *)src + alen;
                      alen =3D min(len, DATALEN_SEG);
                      if (copy_from_user(seg + 1, src, alen))
                                 goto out_err;
           }

           err =3D security_msg_msg_alloc(msg);
           if (err)
                      goto out_err;

           return msg;

out_err:
           free_msg(msg);
           return ERR_PTR(err);
}
```

We can see it calls `alloc_msg()`, which allocates both the `msg_msg` and t=
he segments that form the linked list, but our data has not yet been copied.

```c
static struct msg_msg *alloc_msg(size_t len)
{
           struct msg_msg *msg;
           struct msg_msgseg **pseg;
           size_t alen;

           alen =3D min(len, DATALEN_MSG);
           msg =3D kmalloc(sizeof(*msg) + alen, GFP_KERNEL_ACCOUNT);
           if (msg =3D=3D NULL)
                      return NULL;

           msg->next =3D NULL;
           msg->security =3D NULL;

           len -=3D alen;
           pseg =3D &msg->next;
           while (len > 0) {
                      struct msg_msgseg *seg;

                      cond_resched();

                      alen =3D min(len, DATALEN_SEG);
                      seg =3D kmalloc(sizeof(*seg) + alen, GFP_KERNEL_ACCOU=
NT);
                      if (seg =3D=3D NULL)
                                 goto out_err;
                      *pseg =3D seg;
                      seg->next =3D NULL;
                      pseg =3D &seg->next;
                      len -=3D alen;
           }

           return msg;

out_err:
           free_msg(msg);
           return NULL;
}
```

Looking at the `alloc_msg()` function, we first see there is a `kmalloc()` =
allocation of the main `msg_msg` structure plus the contiguous data, and th=
en, there is a loop that will create the singly linked list by initializing=
 the `msg_msg.next` entries.

Returning to `load_msg()` we can see there is a call to `copy_from_user()` =
once `alloc_msg()` returns, which copies the data from userspace into the s=
pace after the `msg_msg` headers.

Then, the remaining data will be copied into segments, so it reads `msg->ne=
xt` (which was initialized in the `alloc_msg()` function) and performs a `c=
opy_from_user()` for each segment.

The important fact here is that, if we can block the thread in the first `c=
opy_from_user()`, the situation is the following: the objects have already =
been allocated, and are residing in the heap, and the `msg_msg.next` pointe=
r is already initialized, and pending to be used.

This situation is really favorable to us if we can trigger the OOB write wh=
ile the thread is blocked, so the events will happen in this order:

1) `load_msg()` / `alloc_msg()`: Allocate chunks and initialize `msg_msg.ne=
xt` pointers.
2) `load_msg()` / `copy_from_user()`: Thread will hang here due to a blocki=
ng mechanism (like userfaultfd or FUSE).
2) exploit: Overwrite next chunk, which is a `msg_msg` structure already al=
located by `alloc_msg()`, and replace `msg_msg.next` with the address where=
 to write minus 8 (the segment's first value is the pointer to the next val=
ue within the linked list, and we want it to be NULL, to end the linked lis=
t traversal).
3) exploit: Release the blocked thread, and copy the payload (the one that =
overwrites `modprobe_path`, which means the *what* element in the write-wha=
t-where primitive) as part of the thread-blocking handling (this can be don=
e with both userfaultfd handlers and FUSE handlers)
4) `load_msg()`: Retrieve `msg->next` to start traversing the linked list a=
nd copying data from userspace memory to segments, but the pointer has alre=
ady been overwritten previously by our exploit while the thread was blocked.
5) `load_msg()`: Within that loop, as the pointer has been hijacked, eventu=
ally `modprobe_path` will be overwritten by our arbitrary value.

Once we have modified the value of `modprobe_path`, the battle is won! Now =
we need to force the kernel to make a call to `call_modprobe()`. The typica=
l way, and the one we used in our exploit, is executing a dummy script with=
 magic numbers unknown to the kernel, so the kernel will call `call_modprob=
e()` to execute the usermode helper to handle this situation, which means t=
he script that we specified for `modprobe_path` will be executed as root.

## FUSE as a replacement for userfaultfd

Initially, our exploit was developed with userfaultfd as the blocking mecha=
nism to achieve the write primitive. However, since unprivileged userfaultf=
d is now disabled by default after kernel 5.11, the exploit has been rewrit=
ten to use FUSE as the blocking mechanism, and the implementation is quite =
similar to the one applied with userfaultfd.

We can use FUSE's hello.c program as the base for our FUSE handlers: [https=
://github.com/libfuse/libfuse/blob/master/example/hello.c](https://github.c=
om/libfuse/libfuse/blob/master/example/hello.c).

We first need to define the operations for which we need a handler, typical=
ly:

```c
static const struct fuse_operations hello_oper =3D {
           .getattr        =3D hello_getattr,
           .readdir       =3D hello_readdir,
           .open           =3D hello_open,
           .read            =3D hello_read,
           .write           =3D hello_write
};
```

This structure should be passed to `fuse_main()`, as well as the arguments,=
 which can be passed from the hello.c program `main()` argument themselves:

```c
int main(int argc, char *argv[]) {
           return fuse_main(argc, argv, &hello_oper, NULL);
}
```

If we want to handle write accesses to a FUSE-backed mmapped page, we can u=
se the function specified by `.write`. We can do the same with `.read` (for=
 read accesses) or with any operation that we define in the `fuse_operation=
s` structure.

If for example we want to block a thread on `copy_from_user()`, we:

1) `mkdir()` a directory to be used as the FUSE mountpoint.
2) Run the compiled hello.c and provide the path to the directory.
3) The operations applied over that FUSE mount will be handled by our hello=
.c handlers.
4) `open()` a file within the FUSE mount.
5) `mmap()` the fd returned by `open()` to map the file.
6) When read/write accesses are performed from/to this memory space, we wil=
l be able to handle them; for example, we can sleep or synchronize the thre=
ad-blocking/unblocking states with the exploit.

## Conclusion

This post analyzed CVE-2022-0185 and the approach we adopted to exploit thi=
s bug and escalate our privileges to root.

## Mitigating the bug

If you are unable to patch this bug, disabling unprivileged user namespaces=
 will force the exploitation to require the `CAP_SYS_ADMIN` capability, whi=
ch prevents this vulnerability from being exploited by unprivileged users:

```
sysctl -w kernel.unprivileged_userns_clone =3D 0
```


## References

The use of `msg_msg` objects for exploitation to achieve read/write primiti=
ves is really well documented in the following posts:

- \[1\] [https://a13xp0p0v.github.io/2021/02/09/CVE-2021-26708.html](https:=
//a13xp0p0v.github.io/2021/02/09/CVE-2021-26708.html)
- \[2\] [https://www.willsroot.io/2021/08/corctf-2021-fire-of-salvation-wri=
teup.html](https://www.willsroot.io/2021/08/corctf-2021-fire-of-salvation-w=
riteup.html)
- \[3\] [https://syst3mfailure.io/sixpack-slab-out-of-bounds](https://syst3=
mfailure.io/sixpack-slab-out-of-bounds)
- \[4\] [https://syst3mfailure.io/wall-of-perdition](https://syst3mfailure.=
io/wall-of-perdition)

Advisory, disclosure, patch:

- \[5\] [https://access.redhat.com/security/cve/CVE-2022-0185](https://acce=
ss.redhat.com/security/cve/CVE-2022-0185)
- \[6\] [https://www.openwall.com/lists/oss-security/2022/01/18/7](https://=
www.openwall.com/lists/oss-security/2022/01/18/7)
- \[7\] [https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git=
/commit/?id=3D722d94847de2](https://git.kernel.org/pub/scm/linux/kernel/git=
/torvalds/linux.git/commit/?id=3D722d94847de2)

Distribution kernel updates:

- \[8\] [https://ubuntu.com/security/CVE-2022-0185](https://ubuntu.com/secu=
rity/CVE-2022-0185)
- \[9\] [https://security-tracker.debian.org/tracker/CVE-2022-0185](https:/=
/security-tracker.debian.org/tracker/CVE-2022-0185)
- \[10\] [https://www.suse.com/security/cve/CVE-2022-0185.html](https://www=
.suse.com/security/cve/CVE-2022-0185.html)
- \[11\] [https://access.redhat.com/security/cve/cve-2022-0185](https://acc=
ess.redhat.com/security/cve/cve-2022-0185)


--_000_CO1PR06MB8075552C0C54FDE693F5E16CD85F9CO1PR06MB8075namp_
Content-Type: text/html; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
2">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-US" style=3D"word-wrap:break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Now that the discoverers of this bug (CVE-2022-0185)=
 have published their exploit and writeup (https://twitter.com/cor_ctf/stat=
us/1486022971034529794), here is the exploit I wrote (attached) and a short=
 writeup:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"># Exploiting CVE-2022-0185: A Linux kernel slab out-=
of-bounds write</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Last week, a newly discovered vulnerability was anno=
unced on the oss-security mailing list (reference \[6\] at the end of this =
post).</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The bug was discovered and reported to Red Hat by Al=
ec Petridis, Hrvoje Mi=B9eti=E6, Isaac Badipe, Jamie Hill-Daniel, Philip Pa=
purt, and William Liu: thank you very much for discovering this amazing bug=
 and for the opportunity to work on it!</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This vulnerability is a heap-based overflow in the L=
inux kernel, that makes it possible to achieve Local Privilege Escalation (=
LPE), from any unprivileged user to root.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">As mentioned in the announcement on oss-security, we=
 need `CAP_SYS_ADMIN` capability to exploit this bug, but we as an unprivil=
eged user can call `unshare(CLONE_NEWNS | CLONE_NEWUSER)` to enter a new na=
mespace where we have this capability.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This short post analyzes the bug, and explains the a=
pproach we adopted to exploit it.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">(This is my first Linux kernel exploit for a real-wo=
rld vulnerability, so please let me know if you have comments or improvemen=
ts on this post or exploit).</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We developed our exploit for Ubuntu 21.04 Hirsute wi=
th kernel 5.11.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">## Bug analysis</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The bug is located in `fs/fs_context.c` in the funct=
ion `legacy_parse_param()`:</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">```c</p>
<p class=3D"MsoNormal">static int legacy_parse_param(struct fs_context *fc,=
 struct fs_parameter *param)</p>
<p class=3D"MsoNormal">{</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; struct legacy_fs_context *ctx =3D fc-&gt;fs_private;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; unsigned int size =3D ctx-&gt;data_size;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; size_t len =3D 0;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; if (strcmp(param-&gt;key, &quot;source&quot;) =3D=3D 0) {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
if (param-&gt;type !=3D fs_value_is_string)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return in=
valf(fc, &quot;VFS: Legacy: Non-string source&quot;);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
if (fc-&gt;source)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return in=
valf(fc, &quot;VFS: Legacy: Multiple sources&quot;);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
fc-&gt;source =3D param-&gt;string;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
param-&gt;string =3D NULL;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
return 0;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; }</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; if (ctx-&gt;param_type =3D=3D LEGACY_FS_MONOLITHIC_PARAMS)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
return invalf(fc, &quot;VFS: Legacy: Can't mix monolithic and individual op=
tions&quot;);</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; switch (param-&gt;type) {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; case fs_value_is_string:</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
len =3D 1 + param-&gt;size;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
fallthrough;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; case fs_value_is_flag:</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
len +=3D strlen(param-&gt;key);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
break;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; default:</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
return invalf(fc, &quot;VFS: Legacy: Parameter type for '%s' not supported&=
quot;,</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; param-&gt;key);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; }</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; if (len &gt; PAGE_SIZE - 2 - size)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
return invalf(fc, &quot;VFS: Legacy: Cumulative options too large&quot;);</=
p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; if (strchr(param-&gt;key, ',') ||</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; &nbsp;&nbsp;&nbsp; (param-&gt;type =3D=3D fs_value_is_string &amp;=
&amp;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; memchr(param-&gt;string, ',', param-&gt;s=
ize)))</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
return invalf(fc, &quot;VFS: Legacy: Option '%s' contained comma&quot;,</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; param-&gt;key);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; if (!ctx-&gt;legacy_data) {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
ctx-&gt;legacy_data =3D kmalloc(PAGE_SIZE, GFP_KERNEL);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
if (!ctx-&gt;legacy_data)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return -E=
NOMEM;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; }</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; ctx-&gt;legacy_data[size++] =3D ',';</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; len =3D strlen(param-&gt;key);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; memcpy(ctx-&gt;legacy_data + size, param-&gt;key, len);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; size +=3D len;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; if (param-&gt;type =3D=3D fs_value_is_string) {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
ctx-&gt;legacy_data[size++] =3D '=3D';</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
memcpy(ctx-&gt;legacy_data + size, param-&gt;string, param-&gt;size);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
size +=3D param-&gt;size;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; }</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; ctx-&gt;legacy_data[size] =3D '\0';</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; ctx-&gt;data_size =3D size;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; ctx-&gt;param_type =3D LEGACY_FS_INDIVIDUAL_PARAMS;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; return 0;</p>
<p class=3D"MsoNormal">}</p>
<p class=3D"MsoNormal">```</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The first time we call `legacy_parse_param()` within=
 a fs context, `ctx-&gt;legacy_data` is NULL, so a call to `kmalloc()` is p=
erformed, requesting a `PAGE_SIZE`-sized chunk and providing `GFP_KERNEL` a=
s flags.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If we provide a `FSCONFIG_SET_STRING` when calling `=
fsconfig()`, `legacy_parse_param()` is called to add the parameters to a le=
gacy configuration. Every time this function is called, the `ctx-&gt;legacy=
_data` buffer is filled with the parameters
 of the legacy configuration. Actually, what is written to the buffer is th=
e key and value for the parameters specified through the `fsconfig()` sysca=
ll.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">For example, if we call `fsconfig()` and provide `AA=
AA` as the key and `BBBB` as the value, here is what would be written to th=
e buffer: `,AAAA=3DBBBB`.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If we keep calling `fsconfig()` with the cmd `FSCONF=
IG_SET_STRING`, the contents of `ctx-&gt;legacy_data` will be increasing, a=
s well as the `ctx-&gt;data_size`, which defines the amount of bytes residi=
ng in the buffer.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If we can make `size` (`ctx-&gt;data_size`) be a val=
ue higher than or equal to `PAGE_SIZE - 1`, the result of the subtraction w=
ill underflow to a huge value, thus always making `len` be less than the re=
sult of the subtraction. This will make
 every subsequent calls to `fsconfig()` have the ability to keep sending st=
rings, which are actually going to be written out-of-bounds (OOB).</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">To reach this OOB condition, we need to call `fsconf=
ig()` a number of times (sending parameter strings) until `ctx-&gt;data_siz=
e` is higher than or equal to `PAGE_SIZE - 1`, so the following calls to `f=
sconfig()` will continue the string-writing
 without limits.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">## Exploitation overview</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This is a short summary of the exploitation process:=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">1) Spray the kmalloc-4096 with `ctx-&gt;legacy_data`=
 buffers and `msg_msg` structures.</p>
<p class=3D"MsoNormal">2) Spray the kmalloc-32 with `shm_file_data` structu=
res.</p>
<p class=3D"MsoNormal">3) Overflow the next chunk (hopefully a `msg_msg` st=
ruct), overwriting the size entry with a higher value.</p>
<p class=3D"MsoNormal">4) Request the message through `msgrcv()` with a siz=
e bigger than the one used for `msgsnd()`, to trigger an out-of-bounds read=
.</p>
<p class=3D"MsoNormal">5) Hopefully the out-of-bounds data contains the `in=
it_ipc_ns` address, which will allow us to calculate the KASLR base.</p>
<p class=3D"MsoNormal">6) Spray the heap again in a similar way to step 1.<=
/p>
<p class=3D"MsoNormal">7) Register userfaultfd or FUSE on `mmap()`'ed pages=
 and pass them to `msgsnd()` to block a thread in `copy_from_user()`.</p>
<p class=3D"MsoNormal">8) Overflow the next chunk (hopefully a `msg_msg str=
uct`), overwriting the `msg_msg.next` entry with `modprobe_path` - 8.</p>
<p class=3D"MsoNormal">9) Release the blocked thread (using userfaultfd or =
FUSE) and copy data to overwrite `modprobe_path` with our own script.</p>
<p class=3D"MsoNormal">10) Force the kernel to call `call_modprobe()`, whic=
h executes our script as root.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">## Exploitation details</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This overflow happens in the kmalloc-4096 cache, and=
 there are not many well-known ways to spray kmalloc-4096 with useful chunk=
s.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">After reading other vulnerability analyses and explo=
itation posts (please see the references at the end of this post), we found=
 out that `msg_msg` is the ideal object to use for getting read and write p=
rimitives.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">### IPC msg operations: a short overview</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">**Note:** To understand the IPC msg operations bette=
r, it is recommended to read the references **[2]** and **[4]** (references=
 at the end of this post).</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">As we are going to exploit the `msg_msg` structure i=
n this analysis, let us briefly overview how it behaves, and then explain h=
ow to get primitives with it.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Using the Linux Kernel IPC message operations, we ca=
n send and receive messages to/from a message queue.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This is the main structure that defines it:</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">```c</p>
<p class=3D"MsoNormal">struct msg_msg {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; struct list_head m_list;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; long m_type;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; size_t m_ts;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; /* message text size */</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; struct msg_msgseg *next;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; void *security;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; /* the actual message follows immediately */</p>
<p class=3D"MsoNormal">};</p>
<p class=3D"MsoNormal">```</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We can send messages to the message queue by using `=
msgsnd()`, which ends up calling `do_msgsnd()`:</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">```c</p>
<p class=3D"MsoNormal">static long do_msgsnd(int msqid, long mtype, void __=
user *mtext,</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
size_t msgsz, int msgflg)</p>
<p class=3D"MsoNormal">{</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; struct msg_queue *msq;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; struct msg_msg *msg;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; int err;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; struct ipc_namespace *ns;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; DEFINE_WAKE_Q(wake_q);</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; ns =3D current-&gt;nsproxy-&gt;ipc_ns;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; if (msgsz &gt; ns-&gt;msg_ctlmax || (long) msgsz &lt; 0 || msqid &=
lt; 0)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
return -EINVAL;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; if (mtype &lt; 1)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
return -EINVAL;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; msg =3D load_msg(mtext, msgsz);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; if (IS_ERR(msg))</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
return PTR_ERR(msg);</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; msg-&gt;m_type =3D mtype;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; msg-&gt;m_ts =3D msgsz;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; rcu_read_lock();</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; msq =3D msq_obtain_object_check(ns, msqid);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; if (IS_ERR(msq)) {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
err =3D PTR_ERR(msq);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
goto out_unlock1;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; }</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; ipc_lock_object(&amp;msq-&gt;q_perm);</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; for (;;) {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
struct msg_sender s;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
err =3D -EACCES;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
if (ipcperms(ns, &amp;msq-&gt;q_perm, S_IWUGO))</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto out_=
unlock0;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/* raced with RMID? */</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
if (!ipc_valid_object(&amp;msq-&gt;q_perm)) {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; err =3D -=
EIDRM;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto out_=
unlock0;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
}</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
err =3D security_msg_queue_msgsnd(&amp;msq-&gt;q_perm, msg, msgflg);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
if (err)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto out_=
unlock0;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
if (msg_fits_inqueue(msq, msgsz))</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; break;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/* queue full, wait: */</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
if (msgflg &amp; IPC_NOWAIT) {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; err =3D -=
EAGAIN;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto out_=
unlock0;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
}</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/* enqueue the sender and prepare to block */</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
ss_add(msq, &amp;s, msgsz);</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
if (!ipc_rcu_getref(&amp;msq-&gt;q_perm)) {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; err =3D -=
EIDRM;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto out_=
unlock0;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
}</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
ipc_unlock_object(&amp;msq-&gt;q_perm);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
rcu_read_unlock();</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
schedule();</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
rcu_read_lock();</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
ipc_lock_object(&amp;msq-&gt;q_perm);</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
ipc_rcu_putref(&amp;msq-&gt;q_perm, msg_rcu_free);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/* raced with RMID? */</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
if (!ipc_valid_object(&amp;msq-&gt;q_perm)) {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; err =3D -=
EIDRM;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto out_=
unlock0;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
}</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
ss_del(&amp;s);</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
if (signal_pending(current)) {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; err =3D -=
ERESTARTNOHAND;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto out_=
unlock0;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
}</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; }</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; ipc_update_pid(&amp;msq-&gt;q_lspid, task_tgid(current));</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; msq-&gt;q_stime =3D ktime_get_real_seconds();</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; if (!pipelined_send(msq, msg, &amp;wake_q)) {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/* no one is waiting for this message, enqueue it */</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
list_add_tail(&amp;msg-&gt;m_list, &amp;msq-&gt;q_messages);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
msq-&gt;q_cbytes +=3D msgsz;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
msq-&gt;q_qnum++;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
atomic_add(msgsz, &amp;ns-&gt;msg_bytes);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
atomic_inc(&amp;ns-&gt;msg_hdrs);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; }</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; err =3D 0;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; msg =3D NULL;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">out_unlock0:</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; ipc_unlock_object(&amp;msq-&gt;q_perm);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; wake_up_q(&amp;wake_q);</p>
<p class=3D"MsoNormal">out_unlock1:</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; rcu_read_unlock();</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; if (msg !=3D NULL)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
free_msg(msg);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; return err;</p>
<p class=3D"MsoNormal">}</p>
<p class=3D"MsoNormal">```</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">which ends up calling `load_msg()`:</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">```c</p>
<p class=3D"MsoNormal">struct msg_msg *load_msg(const void __user *src, siz=
e_t len)</p>
<p class=3D"MsoNormal">{</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; struct msg_msg *msg;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; struct msg_msgseg *seg;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; int err =3D -EFAULT;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; size_t alen;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; msg =3D alloc_msg(len);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; if (msg =3D=3D NULL)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
return ERR_PTR(-ENOMEM);</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; alen =3D min(len, DATALEN_MSG);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; if (copy_from_user(msg + 1, src, alen))</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
goto out_err;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; for (seg =3D msg-&gt;next; seg !=3D NULL; seg =3D seg-&gt;next) {<=
/p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
len -=3D alen;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
src =3D (char __user *)src + alen;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
alen =3D min(len, DATALEN_SEG);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
if (copy_from_user(seg + 1, src, alen))</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto out_=
err;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; }</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; err =3D security_msg_msg_alloc(msg);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; if (err)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
goto out_err;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; return msg;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">out_err:</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; free_msg(msg);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; return ERR_PTR(err);</p>
<p class=3D"MsoNormal">}</p>
<p class=3D"MsoNormal">```</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If the message provided is longer than `DATALEN_MSG`=
, `alloc_msg()` will allocate segments, where the remaining data is stored =
forming a linked list. `DATALEN_MSG` is defined as `PAGE_SIZE - sizeof(stru=
ct msg_msg)`, and `DATALEN_SEG` is
 defined as `PAGE_SIZE - sizeof(struct msg_msgseg)`.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">`msg_msgseg`, which is the header for the segments t=
hat form the linked list of remaining data, is defined as:</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">```c</p>
<p class=3D"MsoNormal">struct msg_msgseg {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; struct msg_msgseg* next;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; /* the next part of the message follows immediately */</p>
<p class=3D"MsoNormal">};</p>
<p class=3D"MsoNormal">```</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We can see this just defines the pointer to the next=
 element within the linked list, or NULL to end it.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">On the other hand, when calling `msgrcv()`, `do_msgr=
cv()` ends up being called:</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">```c</p>
<p class=3D"MsoNormal">static long do_msgrcv(int msqid, void __user *buf, s=
ize_t bufsz, long msgtyp, int msgflg,</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; long (*msg_handler)(void __us=
er *, struct msg_msg *, size_t))</p>
<p class=3D"MsoNormal">{</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; int mode;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; struct msg_queue *msq;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; struct ipc_namespace *ns;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; struct msg_msg *msg, *copy =3D NULL;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; DEFINE_WAKE_Q(wake_q);</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; ns =3D current-&gt;nsproxy-&gt;ipc_ns;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; if (msqid &lt; 0 || (long) bufsz &lt; 0)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
return -EINVAL;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; if (msgflg &amp; MSG_COPY) {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
if ((msgflg &amp; MSG_EXCEPT) || !(msgflg &amp; IPC_NOWAIT))</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return -E=
INVAL;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
copy =3D prepare_copy(buf, min_t(size_t, bufsz, ns-&gt;msg_ctlmax));</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
if (IS_ERR(copy))</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return PT=
R_ERR(copy);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; }</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; mode =3D convert_mode(&amp;msgtyp, msgflg);</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; rcu_read_lock();</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; msq =3D msq_obtain_object_check(ns, msqid);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; if (IS_ERR(msq)) {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
rcu_read_unlock();</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
free_copy(copy);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
return PTR_ERR(msq);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; }</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; for (;;) {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
struct msg_receiver msr_d;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
msg =3D ERR_PTR(-EACCES);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
if (ipcperms(ns, &amp;msq-&gt;q_perm, S_IRUGO))</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto out_=
unlock1;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
ipc_lock_object(&amp;msq-&gt;q_perm);</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/* raced with RMID? */</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
if (!ipc_valid_object(&amp;msq-&gt;q_perm)) {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; msg =3D E=
RR_PTR(-EIDRM);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto out_=
unlock0;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
}</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
msg =3D find_msg(msq, &amp;msgtyp, mode);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
if (!IS_ERR(msg)) {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /*</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Found a=
 suitable message.</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Unlink =
it from the queue.</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if ((bufs=
z &lt; msg-&gt;m_ts) &amp;&amp; !(msgflg &amp; MSG_NOERROR)) {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; msg =3D ERR_PTR(-E=
2BIG);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto out_unlock0;<=
/p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /*</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * If we a=
re copying, then do not unlink message and do</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * not upd=
ate queue parameters.</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (msgfl=
g &amp; MSG_COPY) {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; msg =3D copy_msg(m=
sg, copy);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto out_unlock0;<=
/p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; list_del(=
&amp;msg-&gt;m_list);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; msq-&gt;q=
_qnum--;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; msq-&gt;q=
_rtime =3D ktime_get_real_seconds();</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ipc_updat=
e_pid(&amp;msq-&gt;q_lrpid, task_tgid(current));</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; msq-&gt;q=
_cbytes -=3D msg-&gt;m_ts;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; atomic_su=
b(msg-&gt;m_ts, &amp;ns-&gt;msg_bytes);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; atomic_de=
c(&amp;ns-&gt;msg_hdrs);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ss_wakeup=
(msq, &amp;wake_q, false);</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto out_=
unlock0;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
}</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/* No message waiting. Wait for a message */</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
if (msgflg &amp; IPC_NOWAIT) {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; msg =3D E=
RR_PTR(-ENOMSG);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto out_=
unlock0;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
}</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
list_add_tail(&amp;msr_d.r_list, &amp;msq-&gt;q_receivers);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
msr_d.r_tsk =3D current;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
msr_d.r_msgtype =3D msgtyp;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
msr_d.r_mode =3D mode;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
if (msgflg &amp; MSG_NOERROR)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; msr_d.r_m=
axsize =3D INT_MAX;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
else</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; msr_d.r_m=
axsize =3D bufsz;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/* memory barrier not require due to ipc_lock_object() */</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
WRITE_ONCE(msr_d.r_msg, ERR_PTR(-EAGAIN));</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/* memory barrier not required, we own ipc_lock_object() */</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
__set_current_state(TASK_INTERRUPTIBLE);</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
ipc_unlock_object(&amp;msq-&gt;q_perm);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
rcu_read_unlock();</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
schedule();</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/*</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
* Lockless receive, part 1:</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
* We don't hold a reference to the queue and getting a</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
* reference would defeat the idea of a lockless operation,</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
* thus the code relies on rcu to guarantee the existence of</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
* msq:</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
* Prior to destruction, expunge_all(-EIRDM) changes r_msg.</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
* Thus if r_msg is -EAGAIN, then the queue not yet destroyed.</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
*/</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
rcu_read_lock();</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/*</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
* Lockless receive, part 2:</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
* The work in pipelined_send() and expunge_all():</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
* - Set pointer to message</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
* - Queue the receiver task for later wakeup</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
* - Wake up the process after the lock is dropped.</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
*</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
* Should the process wake up before this wakeup (due to a</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
* signal) it will either see the message and continue ...</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
*/</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
msg =3D READ_ONCE(msr_d.r_msg);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
if (msg !=3D ERR_PTR(-EAGAIN)) {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* see MS=
G_BARRIER for purpose/pairing */</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; smp_acqui=
re__after_ctrl_dep();</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto out_=
unlock1;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
}</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/*</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&nbsp; * ... or see -EAGAIN, acquire the lock to check the message</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&nbsp; * again.</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&nbsp; */</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
ipc_lock_object(&amp;msq-&gt;q_perm);</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
msg =3D READ_ONCE(msr_d.r_msg);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
if (msg !=3D ERR_PTR(-EAGAIN))</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto out_=
unlock0;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
list_del(&amp;msr_d.r_list);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
if (signal_pending(current)) {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; msg =3D E=
RR_PTR(-ERESTARTNOHAND);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto out_=
unlock0;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
}</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
ipc_unlock_object(&amp;msq-&gt;q_perm);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; }</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">out_unlock0:</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; ipc_unlock_object(&amp;msq-&gt;q_perm);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; wake_up_q(&amp;wake_q);</p>
<p class=3D"MsoNormal">out_unlock1:</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; rcu_read_unlock();</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; if (IS_ERR(msg)) {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
free_copy(copy);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
return PTR_ERR(msg);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; }</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; bufsz =3D msg_handler(buf, msg, bufsz);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; free_msg(msg);</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; return bufsz;</p>
<p class=3D"MsoNormal">}</p>
<p class=3D"MsoNormal">```</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When `do_msgrcv()` is called, once the data is recei=
ved, the message is unlinked from the queue, unless we provide flag `MSG_CO=
PY`:</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">```c</p>
<p class=3D"MsoNormal">/*</p>
<p class=3D"MsoNormal">* If we are copying, then do not unlink message and =
do</p>
<p class=3D"MsoNormal">* not update queue parameters.</p>
<p class=3D"MsoNormal">*/</p>
<p class=3D"MsoNormal">if (msgflg &amp; MSG_COPY) {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; msg =3D copy_msg(msg, copy);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; goto out_unlock0;</p>
<p class=3D"MsoNormal">}</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">list_del(&amp;msg-&gt;m_list);</p>
<p class=3D"MsoNormal">msq-&gt;q_qnum--;</p>
<p class=3D"MsoNormal">msq-&gt;q_rtime =3D ktime_get_real_seconds();</p>
<p class=3D"MsoNormal">ipc_update_pid(&amp;msq-&gt;q_lrpid, task_tgid(curre=
nt));</p>
<p class=3D"MsoNormal">msq-&gt;q_cbytes -=3D msg-&gt;m_ts;</p>
<p class=3D"MsoNormal">atomic_sub(msg-&gt;m_ts, &amp;ns-&gt;msg_bytes);</p>
<p class=3D"MsoNormal">atomic_dec(&amp;ns-&gt;msg_hdrs);</p>
<p class=3D"MsoNormal">ss_wakeup(msq, &amp;wake_q, false);</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">goto out_unlock0;</p>
<p class=3D"MsoNormal">```</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">As we can see, using `MSG_COPY` prevents the use of =
the `msg_msg.m_list` pointers (`msg_msg.mlist.prev` and `msg_msg.m_list.nex=
t`), which (as explained later for both read and write primitives) we need =
to overwrite to reach entries that
 follow, like `msg_msg.m_ts` or `msg_msg.next`, and might contain invalid p=
ointers.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Messages are freed with `free_msg()`:</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">```c</p>
<p class=3D"MsoNormal">void free_msg(struct msg_msg *msg)</p>
<p class=3D"MsoNormal">{</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; struct msg_msgseg *seg;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; security_msg_msg_free(msg);</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; seg =3D msg-&gt;next;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; kfree(msg);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; while (seg !=3D NULL) {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
struct msg_msgseg *tmp =3D seg-&gt;next;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
cond_resched();</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
kfree(seg);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
seg =3D tmp;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; }</p>
<p class=3D"MsoNormal">}</p>
<p class=3D"MsoNormal">```</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">which calls `kfree()` to free the `msg_msg` structur=
e chunk, and then traverses the linked list until all the segments are `kfr=
ee()`'d</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This is the function `copy_msg()`:</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">```c</p>
<p class=3D"MsoNormal">struct msg_msg *copy_msg(struct msg_msg *src, struct=
 msg_msg *dst)</p>
<p class=3D"MsoNormal">{</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; struct msg_msgseg *dst_pseg, *src_pseg;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; size_t len =3D src-&gt;m_ts;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; size_t alen;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; if (src-&gt;m_ts &gt; dst-&gt;m_ts)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
return ERR_PTR(-EINVAL);</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; alen =3D min(len, DATALEN_MSG);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; memcpy(dst + 1, src + 1, alen);</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; for (dst_pseg =3D dst-&gt;next, src_pseg =3D src-&gt;next;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; src_pseg !=3D NULL;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; dst_pseg =3D dst_pseg-&gt;next, src_pseg =
=3D src_pseg-&gt;next) {</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
len -=3D alen;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
alen =3D min(len, DATALEN_SEG);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
memcpy(dst_pseg + 1, src_pseg + 1, alen);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; }</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; dst-&gt;m_type =3D src-&gt;m_type;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; dst-&gt;m_ts =3D src-&gt;m_ts;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; return dst;</p>
<p class=3D"MsoNormal">}</p>
<p class=3D"MsoNormal">```</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">As we can see, it performs a copy of a `msg_msg` str=
ucture contents, to a destination `msg_msg`.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">From `do_msgrcv()`, and through `do_msg_fill()`,&nbs=
p; `store_msg()` is called:</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">```c</p>
<p class=3D"MsoNormal">int store_msg(void __user *dest, struct msg_msg *msg=
, size_t len)</p>
<p class=3D"MsoNormal">{</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; size_t alen;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; struct msg_msgseg *seg;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; alen =3D min(len, DATALEN_MSG);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; if (copy_to_user(dest, msg + 1, alen))</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
return -1;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; for (seg =3D msg-&gt;next; seg !=3D NULL; seg =3D seg-&gt;next) {<=
/p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
len -=3D alen;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
dest =3D (char __user *)dest + alen;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
alen =3D min(len, DATALEN_SEG);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (c=
opy_to_user(dest, seg + 1, alen))</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return -1=
;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; }</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; return 0;</p>
<p class=3D"MsoNormal">}</p>
<p class=3D"MsoNormal">```</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We can see it uses `copy_to_user()` to copy the data=
 to userspace. It first calls `copy_to_user()` for the data stored after th=
e `msg_msg` struct, and then traverses the linked list to send all the rema=
ining segment data.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">### Disclosing memory: out-of-bounds (OOB) read prim=
itive</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We want to exploit this bug to achieve LPE, in an en=
vironment with default hardening mechanisms (SMEP, SMAP, KPTI, KASLR, ...),=
 so if we want predictable addresses to continue the exploitation we will n=
eed to get useful primitives that
 let us leak pointers.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">As mentioned before, if the size of our data surpass=
es the space within a block, a segment is created for it. Segments are acce=
ssed through the entry `msg_msg.next`, which creates a singly linked list t=
o be traversed. We have the ability
 to overwrite `msg_msg` headers but we have no predictable addresses. The `=
msg_msg.m_ts` (which corresponds to the size) would allow us (if corrupting=
 it to a higher value), to trigger an out-of-bounds read primitive by reque=
sting more size than the initial
 one, so it will disclose memory from subsequent allocated chunks.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">As detailed in the referenced post **[3]**, if we ma=
ke msgutil to allocate a `msg_msg` structure, and a segment in the kmalloc-=
32 cache, we will be able to read out-of-bounds within the kmalloc-32 cache=
, so spraying with `shm_file_data`
 structures (which also reside in the kmalloc-32) will allow us to leak the=
 KASLR base due to the existence of a specific entry that points to `init_i=
pc_ns`, which resides in the kernel data section.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">To first be able to trigger an overflow into one of =
the `msg_msg` chunks, we need to spray the heap to maximize the probability=
 of hitting one of the `msg_msg` sprayed chunks.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">To do so, we first spray with `ctx-&gt;legacy_data` =
chunks, to fill the previous holes using `fsopen()` and `fsconfig()`. Then,=
 we spray the kmalloc-4096 with `msg_msg` objects using `msgsnd()`.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">To achieve the information leak primitive for `init_=
ipc_ns` we will need to fill the kmalloc-32 cache, spraying with `shm_file_=
data` structures, using `shmget()` and `shmat()`.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Finally, allocate the chunk from where we are going =
to overflow using `fsopen()` and `fsconfig()` (the first time will allocate=
 the chunk).</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Now, we will fill the `ctx-&gt;legacy_data` buffer b=
y repeatedly calling `fsconfig()` until the conditions to trigger the integ=
er underflow are met.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Once the check causes an integer underflow, we are r=
eady to overflow the next chunk, which is hopefully a `msg_msg` structure. =
We need to replace the `msg_msg.m_list` pointers, both `msg_msg.m_list.prev=
` and `msg_msg.m_list.next` with dummy
 values, as well as `msg_msg.m_type`, and partially overwrite `msg_msg.m_ts=
` by making it bigger than its original value.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If everything succeeds, we do not know which of the =
sprayed chunks might be the one we overflowed (if any!), so we call `msgrcv=
()` on all of these messages with an increased size, so that if any of them=
 had its size increased as a result
 of the `msg_msg.m_ts` value corruption, it will return out-of-bounds data.=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hopefully, the out-of-bounds data will contain the `=
init_ipc_ns` pointer, so we have the KASLR base.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Our main target, now that we have the KASLR base, is=
 to craft a write primitive to overwrite `modprobe_path` with our own custo=
m script.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">### Write-what-where primitive</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Achieving a write-what-where is a bit more difficult=
 because `msgsnd()` actually allocates and sends bytes, so each call to `ms=
gsnd()` will write to a different newly allocated chunk, unlike `msgrcv()` =
which reads data from already allocated
 chunks from previous calls.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">However, if we take a look at `load_msg()`:</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">```c</p>
<p class=3D"MsoNormal">struct msg_msg *load_msg(const void __user *src, siz=
e_t len)</p>
<p class=3D"MsoNormal">{</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; struct msg_msg *msg;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; struct msg_msgseg *seg;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; int err =3D -EFAULT;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; size_t alen;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; msg =3D alloc_msg(len);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; if (msg =3D=3D NULL)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
return ERR_PTR(-ENOMEM);</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; alen =3D min(len, DATALEN_MSG);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; if (copy_from_user(msg + 1, src, alen))</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
goto out_err;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; for (seg =3D msg-&gt;next; seg !=3D NULL; seg =3D seg-&gt;next) {<=
/p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
len -=3D alen;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
src =3D (char __user *)src + alen;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
alen =3D min(len, DATALEN_SEG);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
if (copy_from_user(seg + 1, src, alen))</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto out_=
err;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; }</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; err =3D security_msg_msg_alloc(msg);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; if (err)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
goto out_err;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; return msg;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">out_err:</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; free_msg(msg);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; return ERR_PTR(err);</p>
<p class=3D"MsoNormal">}</p>
<p class=3D"MsoNormal">```</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We can see it calls `alloc_msg()`, which allocates b=
oth the `msg_msg` and the segments that form the linked list, but our data =
has not yet been copied.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">```c</p>
<p class=3D"MsoNormal">static struct msg_msg *alloc_msg(size_t len)</p>
<p class=3D"MsoNormal">{</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; struct msg_msg *msg;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; struct msg_msgseg **pseg;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; size_t alen;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; alen =3D min(len, DATALEN_MSG);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; msg =3D kmalloc(sizeof(*msg) + alen, GFP_KERNEL_ACCOUNT);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; if (msg =3D=3D NULL)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
return NULL;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; msg-&gt;next =3D NULL;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; msg-&gt;security =3D NULL;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; len -=3D alen;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; pseg =3D &amp;msg-&gt;next;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; while (len &gt; 0) {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
struct msg_msgseg *seg;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
cond_resched();</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
alen =3D min(len, DATALEN_SEG);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
seg =3D kmalloc(sizeof(*seg) + alen, GFP_KERNEL_ACCOUNT);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
if (seg =3D=3D NULL)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto out_=
err;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
*pseg =3D seg;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
seg-&gt;next =3D NULL;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
pseg =3D &amp;seg-&gt;next;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
len -=3D alen;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; }</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; return msg;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">out_err:</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; free_msg(msg);</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; return NULL;</p>
<p class=3D"MsoNormal">}</p>
<p class=3D"MsoNormal">```</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Looking at the `alloc_msg()` function, we first see =
there is a `kmalloc()` allocation of the main `msg_msg` structure plus the =
contiguous data, and then, there is a loop that will create the singly link=
ed list by initializing the `msg_msg.next`
 entries.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Returning to `load_msg()` we can see there is a call=
 to `copy_from_user()` once `alloc_msg()` returns, which copies the data fr=
om userspace into the space after the `msg_msg` headers.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Then, the remaining data will be copied into segment=
s, so it reads `msg-&gt;next` (which was initialized in the `alloc_msg()` f=
unction) and performs a `copy_from_user()` for each segment.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The important fact here is that, if we can block the=
 thread in the first `copy_from_user()`, the situation is the following: th=
e objects have already been allocated, and are residing in the heap, and th=
e `msg_msg.next` pointer is already
 initialized, and pending to be used.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This situation is really favorable to us if we can t=
rigger the OOB write while the thread is blocked, so the events will happen=
 in this order:</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">1) `load_msg()` / `alloc_msg()`: Allocate chunks and=
 initialize `msg_msg.next` pointers.</p>
<p class=3D"MsoNormal">2) `load_msg()` / `copy_from_user()`: Thread will ha=
ng here due to a blocking mechanism (like userfaultfd or FUSE).</p>
<p class=3D"MsoNormal">2) exploit: Overwrite next chunk, which is a `msg_ms=
g` structure already allocated by `alloc_msg()`, and replace `msg_msg.next`=
 with the address where to write minus 8 (the segment's first value is the =
pointer to the next value within the
 linked list, and we want it to be NULL, to end the linked list traversal).=
</p>
<p class=3D"MsoNormal">3) exploit: Release the blocked thread, and copy the=
 payload (the one that overwrites `modprobe_path`, which means the *what* e=
lement in the write-what-where primitive) as part of the thread-blocking ha=
ndling (this can be done with both
 userfaultfd handlers and FUSE handlers)</p>
<p class=3D"MsoNormal">4) `load_msg()`: Retrieve `msg-&gt;next` to start tr=
aversing the linked list and copying data from userspace memory to segments=
, but the pointer has already been overwritten previously by our exploit wh=
ile the thread was blocked.</p>
<p class=3D"MsoNormal">5) `load_msg()`: Within that loop, as the pointer ha=
s been hijacked, eventually `modprobe_path` will be overwritten by our arbi=
trary value.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Once we have modified the value of `modprobe_path`, =
the battle is won! Now we need to force the kernel to make a call to `call_=
modprobe()`. The typical way, and the one we used in our exploit, is execut=
ing a dummy script with magic numbers
 unknown to the kernel, so the kernel will call `call_modprobe()` to execut=
e the usermode helper to handle this situation, which means the script that=
 we specified for `modprobe_path` will be executed as root.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">## FUSE as a replacement for userfaultfd</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Initially, our exploit was developed with userfaultf=
d as the blocking mechanism to achieve the write primitive. However, since =
unprivileged userfaultfd is now disabled by default after kernel 5.11, the =
exploit has been rewritten to use
 FUSE as the blocking mechanism, and the implementation is quite similar to=
 the one applied with userfaultfd.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We can use FUSE's hello.c program as the base for ou=
r FUSE handlers: [https://github.com/libfuse/libfuse/blob/master/example/he=
llo.c](https://github.com/libfuse/libfuse/blob/master/example/hello.c).</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We first need to define the operations for which we =
need a handler, typically:</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">```c</p>
<p class=3D"MsoNormal">static const struct fuse_operations hello_oper =3D {=
</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; .getattr&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D hello_getat=
tr,</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; .readdir&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D hello_readdir,</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; .open&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D hello_open,</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; .read&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; =3D hello_read,</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; .write&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 =3D hello_write</p>
<p class=3D"MsoNormal">};</p>
<p class=3D"MsoNormal">```</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This structure should be passed to `fuse_main()`, as=
 well as the arguments, which can be passed from the hello.c program `main(=
)` argument themselves:</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">```c</p>
<p class=3D"MsoNormal">int main(int argc, char *argv[]) {</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; return fuse_main(argc, argv, &amp;hello_oper, NULL);</p>
<p class=3D"MsoNormal">}</p>
<p class=3D"MsoNormal">```</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If we want to handle write accesses to a FUSE-backed=
 mmapped page, we can use the function specified by `.write`. We can do the=
 same with `.read` (for read accesses) or with any operation that we define=
 in the `fuse_operations` structure.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If for example we want to block a thread on `copy_fr=
om_user()`, we:</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">1) `mkdir()` a directory to be used as the FUSE moun=
tpoint.</p>
<p class=3D"MsoNormal">2) Run the compiled hello.c and provide the path to =
the directory.</p>
<p class=3D"MsoNormal">3) The operations applied over that FUSE mount will =
be handled by our hello.c handlers.</p>
<p class=3D"MsoNormal">4) `open()` a file within the FUSE mount.</p>
<p class=3D"MsoNormal">5) `mmap()` the fd returned by `open()` to map the f=
ile.</p>
<p class=3D"MsoNormal">6) When read/write accesses are performed from/to th=
is memory space, we will be able to handle them; for example, we can sleep =
or synchronize the thread-blocking/unblocking states with the exploit.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">## Conclusion</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This post analyzed CVE-2022-0185 and the approach we=
 adopted to exploit this bug and escalate our privileges to root.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">## Mitigating the bug</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If you are unable to patch this bug, disabling unpri=
vileged user namespaces will force the exploitation to require the `CAP_SYS=
_ADMIN` capability, which prevents this vulnerability from being exploited =
by unprivileged users:</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">```</p>
<p class=3D"MsoNormal">sysctl -w kernel.unprivileged_userns_clone =3D 0</p>
<p class=3D"MsoNormal">```</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">## References</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The use of `msg_msg` objects for exploitation to ach=
ieve read/write primitives is really well documented in the following posts=
:</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- \[1\] [https://a13xp0p0v.github.io/2021/02/09/CVE-=
2021-26708.html](https://a13xp0p0v.github.io/2021/02/09/CVE-2021-26708.html=
)</p>
<p class=3D"MsoNormal">- \[2\] [https://www.willsroot.io/2021/08/corctf-202=
1-fire-of-salvation-writeup.html](https://www.willsroot.io/2021/08/corctf-2=
021-fire-of-salvation-writeup.html)</p>
<p class=3D"MsoNormal">- \[3\] [https://syst3mfailure.io/sixpack-slab-out-o=
f-bounds](https://syst3mfailure.io/sixpack-slab-out-of-bounds)</p>
<p class=3D"MsoNormal">- \[4\] [https://syst3mfailure.io/wall-of-perdition]=
(https://syst3mfailure.io/wall-of-perdition)</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Advisory, disclosure, patch:</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- \[5\] [https://access.redhat.com/security/cve/CVE-=
2022-0185](https://access.redhat.com/security/cve/CVE-2022-0185)</p>
<p class=3D"MsoNormal">- \[6\] [https://www.openwall.com/lists/oss-security=
/2022/01/18/7](https://www.openwall.com/lists/oss-security/2022/01/18/7)</p>
<p class=3D"MsoNormal">- \[7\] [https://git.kernel.org/pub/scm/linux/kernel=
/git/torvalds/linux.git/commit/?id=3D722d94847de2](https://git.kernel.org/p=
ub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=3D722d94847de2)</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Distribution kernel updates:</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- \[8\] [https://ubuntu.com/security/CVE-2022-0185](=
https://ubuntu.com/security/CVE-2022-0185)</p>
<p class=3D"MsoNormal">- \[9\] [https://security-tracker.debian.org/tracker=
/CVE-2022-0185](https://security-tracker.debian.org/tracker/CVE-2022-0185)<=
/p>
<p class=3D"MsoNormal">- \[10\] [https://www.suse.com/security/cve/CVE-2022=
-0185.html](https://www.suse.com/security/cve/CVE-2022-0185.html)</p>
<p class=3D"MsoNormal">- \[11\] [https://access.redhat.com/security/cve/cve=
-2022-0185](https://access.redhat.com/security/cve/cve-2022-0185)</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_CO1PR06MB8075552C0C54FDE693F5E16CD85F9CO1PR06MB8075namp_--

--_004_CO1PR06MB8075552C0C54FDE693F5E16CD85F9CO1PR06MB8075namp_
Content-Type: application/x-zip-compressed; name="CVE-2022-0185.zip"
Content-Description: CVE-2022-0185.zip
Content-Disposition: attachment; filename="CVE-2022-0185.zip"; size=11791;
	creation-date="Tue, 25 Jan 2022 20:59:28 GMT";
	modification-date="Tue, 25 Jan 2022 20:59:28 GMT"
Content-Transfer-Encoding: base64

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
AA==

--_004_CO1PR06MB8075552C0C54FDE693F5E16CD85F9CO1PR06MB8075namp_--
