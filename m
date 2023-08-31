Received: (qmail 20273 invoked by uid 550); 31 Aug 2023 13:13:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8082 invoked from network); 31 Aug 2023 09:26:42 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cC+Mw4jtsGskdcaJgbkvwIg5D0/gsPz9lAx9LHgG1zLnchFtfjSnfWGw6tH+iF7HdzP41pPfPK0h4DD0TcrWXvI1RVhdR/ccVpv30NVkKv2b+ZzERokzNk4J0S8kBqiBI1zIPsCFPO40lBN6nUa5vFjmY+vDyT/+LC9cIR1IARZ4f+jcqCPbeugEujbbn4Y0dTD3ZSNPfBWeL5ynqaH7ZsVZwbJACFRio4/8fiD3Ehi/iaFWMJl6BVfzPgzcTig7fYPifoyk4wjPjhaFKyWSBipS6UCY1GgUGRL8szOjyqxNAh6qOo/NmjUJ6tIyUuX4erT6Xay52wnY3dwj1xGDFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IsvKAmx5ELUfrEGKXcBSfiejH0mDzJSXFFMAJ2bv6zU=;
 b=gBEAmvtDIccDnarC5EBWCd4G6fwBSmhGtfYp6z1gkYih7hQysY8HBsAqHhOgYo08bM2pNJTrbfU+xw0IdthUMdKOIkYYowFrF9Hf4V9cpw10HU8NaNC1XL9sDVCjsAGq5iLMvIYY1TV7ASRQKH6xvHnt/xIfhV0VBogkZ2BqvmL/GYSjcjCyJPNG+zPMwHwJAtNqVRHyf0Kcw0OQWQlLOBmrJpL7OPJWjQgQU0/gAz1Hyg+/oePGkb6CZfN3AgzMfCnHhqQ7+X6a4HM7PbMHktuH8AJJpTPflJqia5ETywlML9PxSAy+ZoYKi7v1c8IemNiNdX5D3F3tOmpONzALng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vmware.com; dmarc=pass action=none header.from=vmware.com;
 dkim=pass header.d=vmware.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vmware.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IsvKAmx5ELUfrEGKXcBSfiejH0mDzJSXFFMAJ2bv6zU=;
 b=sUPyJXbkH+BYgFDAbYirbTHQ4nhSgLHrfs9ovRjWIMN7dxBptAU45LUGnr656Hr+WqxHJlTQmGJKUJqkuiFgRXxs4ptDTs3ObGeoVdlviLlp22e47fUwAv8kDpP0yCDWAB58P/c8sxWkbl25zh7TcySJOjxY3X02Z8k+ICouC6I=
From: VMware Security Response Center <security@vmware.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [Security Advisory] open-vm-tools: SAML token signature bypass
 vulnerability (CVE-2023-20900)
Thread-Index: AQHZ2+t5Ulpjp0Nhrk6X0PbTiFvMPg==
Date: Thu, 31 Aug 2023 09:26:26 +0000
Message-ID:
 <CH0PR05MB10203918AA236673B9B9CE00BB9E5A@CH0PR05MB10203.namprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vmware.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR05MB10203:EE_|SN7PR05MB7664:EE_
x-ms-office365-filtering-correlation-id: a8e22320-f100-42c2-405d-08dbaa045994
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 sou9yaGO0Qx1lRbY27igrDUck3t96DpMZnWM432Gx3wCXFwoiDHzoDw8mQju4hUrbshqZohBFySKoHMQi8A54f7yGWuTaTSbje2sSrE6bAH9Upuh7G6AS3/oSA+aGW4Z8Ya7djTjn9SdgWxsSGQwggo3Thqw/1D99W7VH8/ELoH+mT9Mu3E6YqaBgA0aW9SnphWN6eM+tnrRis3xp2FUbt1P/j3AhJM0zP4qutNABIdp8nX9PAWCxwj3i9BvUyx/2pdP4Lc7n3UYduwdRbM8XrHmwJIY0RqicYsNk7IdjGFXR4uGVjvDTe0zGk1yCcLnqmlCnuD+iKKAujykVDagNl0mO0meQPNeVDRBHeEjtYzbVy6ffj8e1dPn15gKi65t6oIM1nkBXDdzGOvJ10Wlbf6ynYscwRJ0KA+mNxYmiV625aDR3A1KVqyXZkEzf2BN6YP32dsV40+hKeyE5IC0frfl7Ekm3+dfWmg4bvEwR0fOtdafR3oWDmbP/H+JAbJP4E3fdr1sqTnGxdtkyVWtY9pXB4cHYekaSIuOV1cK92txqEvK+FMWQflmjyjwM95cRG5+JC2TrJjLDY3pKdyeZlaaGJEBLCcE31oKcyBFHGOixMAavkVPGjJ6gzU14wCJVBusZnXogVAq4M+n8IlpmHbe/8pXDU4eZ6l2t+vVDFROgTnBRLOnMSDmKd5QSeUO7nybr0i7Txy27uswcH15elGFLLCZP5gNqWV5boSivqm33F3ui7tn/olzVwEjT/6o
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH0PR05MB10203.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(136003)(39860400002)(346002)(396003)(376002)(451199024)(1800799009)(186009)(316002)(6916009)(38070700005)(41300700001)(9686003)(38100700002)(33656002)(15650500001)(86362001)(52536014)(83380400001)(2906002)(55016003)(8676002)(5660300002)(8936002)(19627235002)(7696005)(66476007)(966005)(6506007)(64756008)(66446008)(66556008)(66946007)(122000001)(91956017)(76116006)(478600001)(71200400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?r8pcVHsN5muTjolldI6RCs4K9+4F2QTef1doQGfL3M8gZzkSfrua6FYWRK?=
 =?iso-8859-1?Q?b/OB1uuJxd+p4T0CD9WKHJpPdE+VsxjsSEkFFx76gib+n6tBZwlfl2LELZ?=
 =?iso-8859-1?Q?74+w8q5eNe5BcPxDoEvzA6T56r3oQeczr2Df9VRS9KLoGQ1a7KVP+aX+qm?=
 =?iso-8859-1?Q?jtu7CHpZIDbBx7fYM9cXIOUlB3qTpyi7+fRDm6SnxyeqZkS1yYIGUADMJy?=
 =?iso-8859-1?Q?KQmKXPxiijeLsjmuD+iVOAbwaF3KE/wMpFDxJgjh1iH+gYIqAU0esHnWzR?=
 =?iso-8859-1?Q?ehHKUz8G/owegk47T0NAIIPxfvl2i8AKReb3kRp86EWG9d3+IqA/6H58xv?=
 =?iso-8859-1?Q?04XbGlnmjVKcdPD3FQ6JbpcXqdRDJjG/lFZXCFsxdu+6GCPCGSkyfnRvhs?=
 =?iso-8859-1?Q?ECQsTTAmolp5G+My8o/NGPy077KdYlsK1Y0nzDLEB5xGLQVJZiT8ZqAi76?=
 =?iso-8859-1?Q?raar7OwmatOnW4psQ0SoRXt2WqvY6LMmBkp1dOOZpOwV/q8WabJjktXToI?=
 =?iso-8859-1?Q?qxlenwTKtbo2Y/Q368tHvFY94QK2qphgfND3veAKDZMk2DI0pphBTnpVWk?=
 =?iso-8859-1?Q?J+sIwsXsvRrwA81/XnEWx2//anhpE0Ag34scr2rM7C8PfgLDqPDN6mVRvx?=
 =?iso-8859-1?Q?rOCREjJTwmrZQ9Yr7UWAGLRRefnQIDslJv8l4hrglxI1aBt76lcMdq3ESp?=
 =?iso-8859-1?Q?ANCAPt0S+I+MhLzjmSJaIoGI5oTQNV8cbHDAkVfFNxmjeCfX2fqQOoVd+P?=
 =?iso-8859-1?Q?zIHiDw9g6fKaneQqynGQw0aqsuunXiecneW7XUPMqPHcXklw7KAuZC//ZH?=
 =?iso-8859-1?Q?6ffFWe2sC5BgrZ3bRZf+xuxKwdbuWaepCZoIhfCSOS4JJcnnEuVBnaStj0?=
 =?iso-8859-1?Q?uSMSLY/cYC3bF1ccOOs4KVRTrbdh6iOBjB+ej+LfqWwjOSfz15CUI/e4kA?=
 =?iso-8859-1?Q?M8L/G/NMw2PtWsjkoUF3EVga2HZOkNs5lxUotFu20JYg8sj2TcmBu3zO26?=
 =?iso-8859-1?Q?qqbP07X4NLD8TSHCwIH3TREwxPEAlzNulG1/Kq+GzMWgNohlycFfvfwcSm?=
 =?iso-8859-1?Q?uVqX4f1puPFOHtthr2aGaurrKNZyocGVVfuGXedxHrfJprohDQhOJH43PH?=
 =?iso-8859-1?Q?it7A1JqRBwha9de1Nhx7XzXFIICPxkH/jax+HiDroRC4fM09jh2luLWNfi?=
 =?iso-8859-1?Q?QBZ6fS8fvq0UjXE93ZdwsmnfYUP/Lb4FE4CLPWzqBJXujHOGJbOfo18FlQ?=
 =?iso-8859-1?Q?38H+6vPkC+9U2MWBPJTwpCow2KyWnbhOlLRxbVHyN7vJRMiEFjvn7ZH4ve?=
 =?iso-8859-1?Q?Vn5rIMU1+T1S5/m55wU4/MjiGUbuvQu2YgKbQ5DuAXgBlm6vON7lcSUIeg?=
 =?iso-8859-1?Q?pPEab8jycQnXIMhr73ryNbLk9bsCbQ47jDtkvQcQLpiNoc1RnOYVCt91xd?=
 =?iso-8859-1?Q?aejIARd0EOn3EQhJrPlGb7/GLeorpUdJ+nXg8GJ6v9RRVr0lLMxaPG5J71?=
 =?iso-8859-1?Q?nCkEd8NCq5z9YUfCVsEpbiJtLoVI9vEFmdL53TskmyjPIPoF9qltbFzisN?=
 =?iso-8859-1?Q?DkkAnASuVqtx2XVXsPXpYFXs4jZGwbSrqA1RHoY1e7+96nz9UUs2wEd5Zt?=
 =?iso-8859-1?Q?yzGyyNzeiCM/rwhGODgA+RWym1+KmzwKA1D83rvSjZZolhAhGxGka9ved1?=
 =?iso-8859-1?Q?sqe7yoTNjN0gWgBBrtaCxh/uOQY3cGdTjaL8DZTP?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: vmware.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR05MB10203.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a8e22320-f100-42c2-405d-08dbaa045994
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Aug 2023 09:26:26.2332
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b39138ca-3cee-4b4a-a4d6-cd83d9dd62f0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YQaf+oujzUCtnqwbkHSDJcTHfPfi2qoEvX96YbmMHna97XS5F3mdHmbkTHgQRK2GC/mCeWgMkYpPuwwJsAh8lw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR05MB7664
Subject: [oss-security] [Security Advisory] open-vm-tools: SAML token signature bypass
 vulnerability (CVE-2023-20900)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256


Please see the security advisory here: https://www.vmware.com/security/advi=
sories/VMSA-2023-0019.html=20

Description
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2023-20900: VMware Tools contains a SAML token signature bypass vulnera=
bility. VMware has evaluated the severity of this issue to be in the Import=
ant severity range with a maximum CVSSv3.1 base score of 7.5 - CVSS:3.1/AV:=
A/AC:H/PR:N/UI:N/S:U/C:H/I:H/A:H.

Known Attack Vectors
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
A malicious actor with man-in-the-middle (MITM) network positioning between=
 vCenter server and the virtual machine may be able to bypass SAML token si=
gnature verification, to perform VMware Tools Guest Operations.

Upstream fix for CVE-2023-20900
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
https://github.com/vmware/open-vm-tools/blob/CVE-2023-20900.patch/CVE-2023-=
20900.patch
-----BEGIN PGP SIGNATURE-----

iHUEAREIAB0WIQQ950nPZL1VtgrpULuSf/JD335VcQUCZPBa5gAKCRCSf/JD335V
cZZTAP9QYJDWCzECKYakbqu4fui7CditlHnew0qs0KjG9qfC3QEA7wLPBfudDBkj
ivy2KsHabG03funx8dWl/x77TfFbUlI=3D
=3DsAT7
-----END PGP SIGNATURE-----
