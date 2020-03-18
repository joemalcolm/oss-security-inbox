X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6602" "Wednesday" "18" "March" "2020" "18:19:25" "+0000" "Janushkevich, Dmitry" "dmitry.janushkevich@f-secure.com" "<AM0PR08MB529780C88B4862081EB674ABC9F70@AM0PR08MB5297.eurprd08.prod.outlook.com>" "225" "[oss-security] U-Boot verified boot improper signature verification" nil nil nil "3" "2020031818:19:25" "[oss-security] U-Boot verified boot improper signature verification" (number mark "U       dmitry.janus Mar 18  225/6602  " thread-indent "\"[oss-security] U-Boot verified boot improper signature verification\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] U-Boot verified boot improper signature verification" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23860 invoked by uid 550); 18 Mar 2020 18:42:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15695 invoked from network); 18 Mar 2020 18:19:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=f-secure.com; h=from : to : subject
 : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=msg2048; bh=/pv/5r2qorIbw4JOpBGIflGemrdUPHpbEZd4tcExsEo=;
 b=cznc9D93z1sZHV65a2Vufivlh2BcclxfvGAgRybSUhQ0NWHqSMxnBJgXPXT4wUAXemss
 h6nNECDb20JFS2PC39FyNgvROMKZ3VobHg3XVo8UFV/MucZ6Ohyq/qHb86YLd5I2gge5
 0AuetH8MS4tWe0PjqZW0w5cDPAzAI/cuTwl7AEFx/k0ZJj8ny7LPGCVmuzXTwFuRj4Ht
 26O5z3SCS+cD5TZRuSQeojzxd910NDp79aogXSI3VtmhNOEBEieqCUCZrip6Iy1Y45l9
 I287pu2ijIGPy1YYlb+fgFUN0W6LL6fSOwqNX78VDB+XsAOavAROzF3hpcrJOkQOvWuK GQ== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FzVfH3eH/mWLmvYiTq7b6QWeA6pYkEQ3eG9XLUeA0U2CeTAiE1YG5R+ELTCA3jY6k2qB/Mo5tN10bznR+68B5SEMNYjEUVtCYN+aecZ8NqD+MQCt/PxEaYIzdPscAowNdcNIUoUmwVYtl7hMI/bZ/FiQjDEqhcOCzv5/GpXLaqqyxWIphBRrWeQE4Hpoyqn7a7on06otoZDSwKvmULlB/3vUdszvwU3w4zJ1fK09bpZDvIEHvHHA7ekRZOk9BNn47DSYxcsyS3wNkyBYJM9JlKmuIEQJjz9HTtiQxO65/Glld8PhUsw2c4B9BzAO8S9ixCYTAwC+D2W9RiiglNf74A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/pv/5r2qorIbw4JOpBGIflGemrdUPHpbEZd4tcExsEo=;
 b=D6EHAO2Ozz4Doek4B2Ye3fVmKLyagm5LOaorAF8OBWmeNbOUWCerlkyPEUgb2XfaYmHGqyF+64FD2fqmg348lxDPMSv+qk+4dw09COxDLXPZteZcydKd4sJABEWnEbAgu554J9YVBoc3ArwHIPSYcEwj7zbFy2/7DEPFsLL7ByrxGnfZO0JzJ8pS2VQQntt1yp0JEDviYT2M34i7toLJYUiPtroOevsTey5pK/9R72J0ChR/REsEPxrIjQ2gSpIwDS0wRt8OcTBUwuf3UFOj9z5Bim3P0vjSEUeVfwQJA20twQ7ISXdUE9LsmMDToeqrXk/aYo/kkH78hNaQnkjLgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=f-secure.com; dmarc=pass action=none header.from=f-secure.com;
 dkim=pass header.d=f-secure.com; arc=none
From: "Janushkevich, Dmitry" <dmitry.janushkevich@f-secure.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: U-Boot verified boot improper signature verification
Thread-Index: AdX9UbQ88p3+nPJdQJaYDoy85m0q1Q==
Date: Wed, 18 Mar 2020 18:19:25 +0000
Message-ID: <AM0PR08MB529780C88B4862081EB674ABC9F70@AM0PR08MB5297.eurprd08.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [193.110.108.35]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9c9de517-93bc-479c-b096-08d7cb68e3a8
x-ms-traffictypediagnostic: AM0PR08MB3554:
x-microsoft-antispam-prvs: <AM0PR08MB3554FA91B2B142619EDDEF8EC9F70@AM0PR08MB3554.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 03468CBA43
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(136003)(39850400004)(396003)(376002)(346002)(366004)(199004)(66476007)(76116006)(66946007)(64756008)(66556008)(2906002)(966005)(71200400001)(6916009)(66446008)(86362001)(52536014)(9686003)(15650500001)(316002)(186003)(26005)(55016002)(478600001)(6506007)(33656002)(81156014)(81166006)(5660300002)(8936002)(7696005)(8676002)(533714002);DIR:OUT;SFP:1101;SCL:1;SRVR:AM0PR08MB3554;H:AM0PR08MB5297.eurprd08.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;
received-spf: None (protection.outlook.com: f-secure.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Cd/cF5Ah7N2UBiXNImBrvIXUXFUyuffBAJre/qilfnbiZgyClyMdgIIZmR2KozPAank5K2/fO0Js6xJ0DNg/yXjcClQBwdJBGLzlb/bs18HsRVL2oOHXSa3drf1L4QVWcoaNof2mwMgX6+7/CRkgmp2MMrczlXUY7Aln7dn9qIRoN6Iv43fXEHle46EsUJ+aWvBEbNOyJ+PlPQa+WjdijWQPPNegBwidE2k5pltVBZSpnMii34+n2IU/oPpaYjEaOrvujFpf2SDL7eumW0QDikbrM8+8UVSYz/PJslFSYDul5P1Y0GaRtiRo2HWBsCbDWFzhwDAq2VI/+80J9FH3eUAv7WJry0ssvmqxg1d4ptFygcfHd1w/6U9HGQ2aec0WFi7ALe3xKnqt4lC4LpNttS/bhSLLyGZpdId55pN5VtPoGfHqUqefdNGMe4cd9sCfbwPrcd4klBl7MmO6gkrIOIAZbGnefeEuoh5hhzGmMWyACsWbzJt0HRxHiPzvDJ171vAIw9gMcx3VBx9yGnHC9ydruQHvaVwrP1JJh0FvWfl+hz/PO1Wx9vA0CpPM2NRSOywRaNAKG0C+9r+VVIGBHg==
x-ms-exchange-antispam-messagedata: VHRRws0cccR/yA4d0ED7/ulcxO6KiRw9f9rAOIW7EkT/3R69gOYpmmh3mgvBrfXH5DYP/zHwy1lZcrQ+MB58hMjQC+usvMYsLMP25oH2FPNcrbDc7sVoyTwPugKUrk7x983buaC7FAfW/1ow+F3hBw==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c9de517-93bc-479c-b096-08d7cb68e3a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2020 18:19:25.1600
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d5bc339e-b691-425e-9d05-4181afc9e065
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hT8Q2RvuRgiCe6J6OJzCd+WuC4yeMF+ESLMpdKZos7Dp/e1Wcaeh985FySB+N5BDVHhdaQuFnHTmi8fbYY+HIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB3554
X-OriginatorOrg: f-secure.com
Subject: [oss-security] U-Boot verified boot improper signature verification

Hello list,

Here is an advisory regarding a recently discovered and patched issue in U-=
Boot.
Permalink:

https://labs.f-secure.com/advisories/das-u-boot-verified-boot-bypass/

(Das) U-Boot typically is employed as a second-stage boot loader responsibl=
e for
loading the Linux operating system's kernel and related images and passing
control further to the OS. The bootloader is also responsible to verify
integrity and authenticity of the loaded images to ensure only authentic
software is allowed to run. U-Boot's verified boot feature [1,2] is used to
achieve this. This method only applies to the flattened image tree (FIT) im=
age
format.

The FIT image is based on previously developed device tree format used in b=
oth
U-Boot and the Linux kernel to store and pass configuration information. An
example image tree source (the text format used to generate FIT images) from
the documentation is reproduced below to illustrate the concept:

```
/ {
	images {
		kernel-1 {
			data =3D <data for kernel1>
			hash-1 {
				algo =3D "sha1";
				value =3D <...kernel hash 1...>
			};
		};
		kernel-2 {
			data =3D <data for kernel2>
			hash-1 {
				algo =3D "sha1";
				value =3D <...kernel hash 2...>
			};
		};
		fdt-1 {
			data =3D <data for fdt1>;
			hash-1 {
				algo =3D "sha1";
				value =3D <...fdt hash 1...>
			};
		};
		fdt-2 {
			data =3D <data for fdt2>;
			hash-1 {
				algo =3D "sha1";
				value =3D <...fdt hash 2...>
			};
		};
	};
	configurations {
		default =3D "conf-1";
		conf-1 {
			kernel =3D "kernel-1";
			fdt =3D "fdt-1";
			signature-1 {
				algo =3D "sha1,rsa2048";
				value =3D <...conf 1 signature...>;
			};
		};
		conf-2 {
			kernel =3D "kernel-2";
			fdt =3D "fdt-2";
			signature-1 {
				algo =3D "sha1,rsa2048";
				value =3D <...conf 1 signature...>;
			};
		};
	};
};
```

This image tree source describes two kernels with two flattened device tree
blobs (FDTs) as well as two configurations denoting which images are to be
used together. The complete configuration may also include other images e.g.
RAM disks. Hash values for individual images are computed during image buil=
d.

When an image is signed using the mkimage tool provided with U-Boot, the im=
age
is modified by adding several properties to corresponding signature nodes,
specifically `hashed-strings`, `hashed-nodes`, `timestamp`, `signer-version=
`,
`signer-name`, and `value`. The `value` property holds the actual signature,
while the `hashed-strings` and `hashed-nodes` properties represent the elem=
ents
that were used to compute the signed hash value. For example:

```
conf@1 {
  description =3D [REMOVED];
  kernel =3D "kernel@1";
  fdt =3D "fdt@1";
  ramdisk =3D "ramdisk@1";
  signature@1 {
    hashed-strings =3D [00 00 00 00 00 00 00 8e];
    hashed-nodes =3D "/", "/configurations/conf@1", "/images/fdt@1", "/imag=
es/fdt@1/hash@1", "/images/kernel@1", "/images/kernel@1/hash@1", "/images/r=
amdisk@1", "/images/ramdisk@1/hash@1";
    timestamp =3D [5d cb 49 dc];
    signer-version =3D "2019.07";
    signer-name =3D "mkimage";
    value =3D [03 d9 d7 e8 5a cf ..];
    algo =3D "sha256,rsa4096";
    key-name-hint =3D [REMOVED];
    sign-images =3D "fdt", "kernel", "ramdisk";
  };
};
```

The string block data starting from offset 0 to offset 0x8E was included in=
 the
hash computation along with enumarated tree nodes, which produces the given=
 RSA
signature.

It was found that U-Boot does not verify the contents of `hashed-nodes`
correlate with the sub-images required to be loaded by the configuration,
specified e.g. in the `kernel`, `fdt`, and `ramdisk` configuration properti=
es.
This allows to craft another configuration with the same signature node but
referencing a different sub-image(s):

```
conf@2 {
  description =3D "Super 1337 Configuration";
  kernel =3D "kernel@2";
  fdt =3D "fdt@1";
  ramdisk =3D "ramdisk@1";
  signature@1 {
    hashed-strings =3D [00 00 00 00 00 00 00 8e];
    hashed-nodes =3D "/", "/configurations/conf@1", "/images/fdt@1", "/imag=
es/fdt@1/hash@1", "/images/kernel@1", "/images/kernel@1/hash@1", "/images/r=
amdisk@1", "/images/ramdisk@1/hash@1";
    timestamp =3D [5d cb 49 dc];
    signer-version =3D "2019.07";
    signer-name =3D "mkimage";
    value =3D [03 d9 d7 e8 5a cf ..];
    algo =3D "sha256,rsa4096";
    key-name-hint =3D [REMOVED];
    sign-images =3D "fdt", "kernel", "ramdisk";
  };
};
```

As by design [3] only certain parts of the FIT image are hashed, it is poss=
ible
to insert arbitrary FIT nodes after configurations have been signed without
invalidating any signatures, adding both arbitrary configurations as well as
arbitrary sub-images. Note that this fact is explicitly documented. It is a=
lso
possible to change the default property of the configurations node to sugge=
st
the crafted configuration to be chosen.

Impact
------

An attacker having a properly signed FIT image is able to craft arbitrary F=
IT
images that would pass signature validation, resulting in booting and
execution of untrusted code.

The exploitation relies on the fact that the crafted configuration will be
chosen to be booted. This may occur, for example, when the attacker is able=
 to
modify the `default` property of the `configurations` node and the setup do=
es
not explicitly choose to boot a specific configuration. Consequently, one w=
ay of
mitigating the issue is to explicitly specify the configuration name as par=
t of
the `bootm` command arguments, for example: `bootm ${loadaddr}#conf@1 - ${f=
dtaddr}`

Affected versions
-----------------

U-Boot versions 2018.03 and 2020.01 were verified to be affected. Versions
prior to 2018.03 may be affected as well.

Solution
--------

Apply patches or update to a fixed version when available.

Preliminary patches have been posted to the mailing list [4] for review.

CVE assignment
--------------

CVE-2020-10648 should be used to track this issue.

Credit
------

Dmitry Janushkevich (@infosecdj) of the Hardware Security team, F-Secure

Timeline
--------

2020-01-22: Discovery of the issue.
2020-01-24: Details sent to maintainers Tom Rini and Simon Glass.
2020-02-26: Patches provided for review by Simon Glass.
2020-03-11: Release date agreed to be March 18.
2020-03-17: CVE assignment.
2020-03-18: Public release.

References
----------

[1] https://github.com/u-boot/u-boot/blob/master/doc/uImage.FIT/verified-bo=
ot.txt
[2] https://github.com/u-boot/u-boot/blob/master/doc/uImage.FIT/signature.t=
xt
[3] See documentation for the fdt_find_regions() function in include/linux/=
libfdt.h
[4] https://lists.denx.de/pipermail/u-boot/2020-March/403409.html

