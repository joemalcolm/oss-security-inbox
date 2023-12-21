Received: (qmail 13433 invoked by uid 550); 21 Dec 2023 20:20:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22258 invoked from network); 21 Dec 2023 18:54:29 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=irXOlQ9vOov3mvREe14XJ6JfaSnWDQtKaeyRL1S7BH2D1XaAfltZyaYzjX5nKXJQRUhmmKVITQKwTUvVAz5NDlXqZVBBj8aE0CYerPNFoHUsdkwIUX7TzZihu362hT4ibdnM7jqmkzPVX/ucG5LLw3ptKXSXQ6iwybY1hDD9Kd6yeSaLyIFMuDK+B9arKcubqma4+7FLqiCdI5ym647bNmRhR8gtIactRTV6j3vcj32eLxJvQH87X2sCe7tQv6+5DYlTZESf2N2M1f5ITMgmX+Gths40awS648mDM7gj89eNl3oMAK1WpLx1CI6Hh7zR4AANVOVmyvMT6zNG70fcTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q9YVR2p5+zVk8GyqafETs66GTK3VZC8KB8bbwZBI77E=;
 b=NmBCIOjb5EStuv7dK1ABK0Tl8C8YZTK4yX/UT72Bh6zHlR2ExFAaKzQuuo8poQg7mdF62c0tF/juV2KvPQpDazscAIqnu4WwA8vtH/xrlJreiYu/blTWlsflDZcd9I/s/gNo01+QJdei4Lg8n2PtTX2HuNr4iJGa40JGGN9POXFclkOoxE0mSY0ovJFFz/zdeDrBA2dbwqrIVyocvs5xkuwEux94ik6+IRXfDGHprIsjQOglQHjLY6tublRdsvycMKQLRwFL+Z5c1dAPv/EKsopL+08OXGgIaHVFncpn86V4Xk+zw06BOUZoRvT1ccWKt5koYonUwx9jWrk9uD7Utg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wpi.edu; dmarc=pass action=none header.from=wpi.edu; dkim=pass
 header.d=wpi.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wpi.edu; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q9YVR2p5+zVk8GyqafETs66GTK3VZC8KB8bbwZBI77E=;
 b=G1JX1BsavU75VXNRTwvwtV7WprhkK0/a2p68haRkg2S3mKraXN4U+LKfqrg/DZK7G4vi3GtyhMcpELSDTjNmMOcP7Q78q6y85YTIEtjjqgq417bidME3EBPXrji2xGunVk7cWIT/1Y9YCiVrKPSRab5L7fZzsO1acRgVME4k+nQ=
From: "Tol, Caner" <mtol@wpi.edu>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
CC: "Adiletta, Andrew" <ajadiletta@wpi.edu>, "Sunar, Berk" <sunar@wpi.edu>,
	"Doroz, Yarkin" <ydoroz@wpi.edu>
Thread-Topic: Mayhem: Targeted Corruption of Register and Stack Variables
Thread-Index: AQHaMqtYAXQwtRQZ2USu9lz9L6iD8A==
Date: Thu, 21 Dec 2023 18:54:57 +0000
Message-ID:
 <MN0PR01MB76576CBDD822AEB3A2292F23D497A@MN0PR01MB7657.prod.exchangelabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wpi.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN0PR01MB7657:EE_|MW4PR01MB6369:EE_
x-ms-office365-filtering-correlation-id: 083482f2-ffa2-4709-82ea-08dc025653d5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 rrjfx6jCmpOHirNafnOnjLn1izF4xi3g2I0i7TLZCAvVn9zctnkrNu5dQuVFP6Oy7ZJpqofV97i8kIL/5crqQj97A2pRnovWgr+idrixbKqRhojjWImXtcqi2p+qe9snR97zjLFFswcux34MMn3B7xJ+OiVv1AQlnw22XhL3x+hGyX5B0RbmVQuH4AU3AGigZ7MGpZpxw1gEcTKoTuZlZS8QuxGoowPrTlAopF8A+yp4508V6Fs7QXv/Dy4lr5l6hGfFIADm/iLRnhfsUXGNo7oX4ttc0LgGWuEuYAbJrhbVd0IVYOpLHZViMViE2v10wfGnIFRvSlqjxy6EiluNRAgysxwsBvVL/xmeGwNSpJsbWAS6UHfhXEmKUHQI5zyjBtHjEfKzC8skWFgQ9nIiHBtTFOxAm/KQ7etadyG/01ribi9r0mGVaN6+8hdzDpo+Nz49QCPRoljYRVKzAcoPlqsPeRAO/jy3W1KJ3KVSQeZIYWl/Coh7F2YexNbOgwBBFOIOhKvU3W1n+LKatgE2gSMTolK9v8dztEFXOAvCstLH/wXLSPa3JMLF/bljs4CvWGfsM/dh37pfPEgsS3/58BkzAFBy3scguF4bPTFT5JU=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN0PR01MB7657.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(346002)(376002)(396003)(39860400002)(366004)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(966005)(478600001)(19627405001)(7696005)(26005)(71200400001)(6506007)(9686003)(66446008)(64756008)(66476007)(66556008)(52536014)(66946007)(55016003)(76116006)(6916009)(83380400001)(8936002)(8676002)(4326008)(2906002)(5660300002)(54906003)(786003)(316002)(38100700002)(33656002)(1015004)(122000001)(166002)(41300700001)(38070700009)(75432002)(86362001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?mMdSpsgTgaARNT5/BVZUFg4IerBR0i5bGnXrujbev9EjQwDloZJnUOQEEh?=
 =?iso-8859-1?Q?wIrDs4fGcMSjTMfe6nvmhrgBWevRRlCtftnvWvL+OWFEia+6On8VUJse6J?=
 =?iso-8859-1?Q?3OL1TTJ8ef3ffXRduhdkbiqM+i9O+bjfaJRcs174EnisSBhZs8+OswnTc+?=
 =?iso-8859-1?Q?sBrMwk9Wik9TCg75jtEUGVvo+NxV6gNnTNM6gFw4rPc59c9Uf4PUifnQoU?=
 =?iso-8859-1?Q?RSZTDRNaHDwOVA5Ux3DFu8g/AjcboGARAPcvb6bolbFh3UsL5c42bMptrS?=
 =?iso-8859-1?Q?bh9MRwSZz0XVl8JgLCy/oeq7jSyhlzteMe2IVZE9hQPEb3vlk5qR9jnCO+?=
 =?iso-8859-1?Q?wI2xyjxfzfrh+DTV00sKasFiqP8knNBLocfSWpB+N0gsc+dLzIC34vGlwU?=
 =?iso-8859-1?Q?Ofl1w7u+gqNhX5bPHFrWe4PKSw/5jr8GhfSW+aZwlx3QKP4nR4qf8a7WS4?=
 =?iso-8859-1?Q?tXgTrZ9K3Tr8r+SKEVcC6j21Qp78ZIdJFyrHaTOCzi8N53L1UHWu1/uVrB?=
 =?iso-8859-1?Q?9ENqI2vfV14DETUku0awJz5GVgyooU3REmF/kfPejCpboASMelsYXaiS0Q?=
 =?iso-8859-1?Q?KZIIkETJZDmHTG1LaJW4rG2odkJ0VIkJ0D667CDv0ZXwh8bjDfmVIvGJqA?=
 =?iso-8859-1?Q?7g9AMkc+Xzn4bYy8DhkmauBENpzBOMgzGKRI+AvV8DAh9ysKsDzXimbroG?=
 =?iso-8859-1?Q?OzGe+szYGuL+TDIs8V8PmjiP/O1EhxlbVPVZ2gS+S9MmebrZQu6Pzadafv?=
 =?iso-8859-1?Q?wuxyhqFR5+3DphEj9jyJ1gbStxMGFN3ZPrBqUkcCDyYNG2YUaEX+2KQo8c?=
 =?iso-8859-1?Q?wJMu9r8eeC9bjvR8MFAroR3fqxqpg2k9eC0cXbPxW7fGMgLm1c7wDAgS8p?=
 =?iso-8859-1?Q?9Q4CVAq3tAAKaUeT2VRzE9T57jDmruAgVXLQUQX0LZx0mm8DEIdIYTkd+a?=
 =?iso-8859-1?Q?lidU0NUEtkDNID/xOzozoekKOQfyo2pP9RzSKno/UGVfpJ4ZgAkJI/xipc?=
 =?iso-8859-1?Q?5WglP+a46WFoOwUp69/RPAMouuBKnKL5QnwrNUCPC5AieMH0c4d4khxhbp?=
 =?iso-8859-1?Q?k7NDdHq2vFT1dOi687p9pRvU8/+1OD+GmGtDqMwrYP1Dq7pK+UFPqSlHDw?=
 =?iso-8859-1?Q?UATHGrBU9qcrQyz3KEZLIF6EK2il1kMCQBUaYSFgTmRH7NyOfVLiAxO1fC?=
 =?iso-8859-1?Q?zXdgOkyJZAp8vu5/4CsFnc6AqnrP2M8w45PMYqhz9fzrWMcXs2fMymtuXd?=
 =?iso-8859-1?Q?rjTMkuj64BwyMt3rr3FVW5iRHcpLFMrGB9rHFYXgfft42/ieqEuKZ4q0db?=
 =?iso-8859-1?Q?UotOZ+2bC6GEUTXbmmLDjSna4+cyypLTfGxw9sIlzRGGUXO01a12hpmqwF?=
 =?iso-8859-1?Q?ZgYpbG+41a4URt6SLBLySV9JIBGpm5tpkDBFTEFTinRoAHpQdC3Fa+gNWv?=
 =?iso-8859-1?Q?mKGVZDt8TNKLTQ9KpozX98hzG3x/uJOF/7lF9Qxd2jGSlWyuQHGDOI5r21?=
 =?iso-8859-1?Q?IEtw4Ob17kDQdzazwGPOEMQmnESPk4LBCIk6x8hwIOJ7iw6RJA8E4KvLyr?=
 =?iso-8859-1?Q?4dfGhytrtBc/gG0JvmBLLj0DY3D5mlVpGeqb1XZVHA298LXaN5P6rqOW2N?=
 =?iso-8859-1?Q?28kyV5GqEkyc0=3D?=
Content-Type: multipart/alternative;
	boundary="_000_MN0PR01MB76576CBDD822AEB3A2292F23D497AMN0PR01MB7657prod_"
MIME-Version: 1.0
X-OriginatorOrg: wpi.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN0PR01MB7657.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 083482f2-ffa2-4709-82ea-08dc025653d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Dec 2023 18:54:57.6088
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 589c76f5-ca15-41f9-884b-55ec15a0672a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9z4/iSOk6k48Q/XA+SpDukqV6uMf1yoouYTWC28jzAJ5lo56ig3Ou7vPLWU90Ef+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR01MB6369
Subject: [oss-security] Mayhem: Targeted Corruption of Register and Stack Variables

--_000_MN0PR01MB76576CBDD822AEB3A2292F23D497AMN0PR01MB7657prod_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Our recent paper<https://arxiv.org/pdf/2309.02545.pdf> [AsiaCCS'24] describ=
es a potential vulnerability where stack/register variables can be flipped =
via fault injection, affecting execution flow in security-sensitive code. T=
here are mitigation strategies you may be interested in incorporating into =
your code:

 Take this vulnerable code, for example:

int auth =3D 0;

//password check code that sets auth variable

if(auth !=3D 0)

return AUTH_SUCCESS;

else

return AUTH_FAILURE;

The idea is that any bit can be flipped in auth, and it will result in a mi=
s-authentication. We prove this is a potential vulnerability in OpenSSH, Op=
enSSL, MySQL, and SUDO. To mitigate this, it is important to have tight log=
ic such that a single-bit flip will not result in unintended execution. For=
 example:

int auth =3D 0xbe405d1a;

// password check code that sets auth variable to 0x23ab9701 is successful

If(auth =3D=3D 0x23ab9701)

               return AUTH_SUCCESS;

else

               return AUTH_FAILURE;

In this case, the auth variable must be corrupted into the exact authentica=
tion pattern, which is fairly improbable.



We issued CVE-2023-42465 for SUDO for this vulnerability.

Here is the patch implemented in v1.9.15.

https://github.com/sudo-project/sudo/commit/7873f8334c8d31031f8cfa83bd97ac6=
029309e4f

Paper link: https://arxiv.org/abs/2309.02545



Caner Tol
___________________________
Worcester Polytechnic Institute
https://vernamlab.org<https://vernamlab.org/>

--_000_MN0PR01MB76576CBDD822AEB3A2292F23D497AMN0PR01MB7657prod_--
