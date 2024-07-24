Received: (qmail 3964 invoked by uid 550); 24 Jul 2024 17:24:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3919 invoked from network); 24 Jul 2024 17:24:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	from:to:cc:subject:date:message-id:content-type:mime-version; s=
	corp-2023-11-20; bh=YBxOGOjWsCFxHDmlON6MzrBIoJ0DqB5WILyRrD4aiv4=; b=
	I/dipARdvVI/6pV57DxWQdAIMyZq3YpoDWPmu/5EjQRk7/PRtyUnm/tCHN8azQ8B
	rQWdeuWdDhGbimvIN5/N8MYkj+rXREPTON7KiV8aSrgXfhmkxhJgZPSUONMul/fI
	IIu9sjzJ1Fo1kXnqgTcz33wA545pcHqpMlJWCn9tsXzxeji+RMPSFftGBSx6IEwW
	iAczh+Icq+Z4Z06eLB7mRzwcqg436ooWOEdkVEYwZIXxk03qGaV113Ra1jey1joD
	3SwsF9L016Ine9l2h9C8YvGleKpcr41BJiwZVuPsltH6WuT1t1uvzJ7RWtwZW/2/
	uSJ+1eZ+8nDE2lDDxAss4w==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aixVPpPWijqFDt4n/nMzMtvVsksEjYb6eET8okG6ai2eAwbNXZZ0wkN5KPQx2a3R66rWVP5SDleij7NPhUkEDwMOWZKZ7E/atDMitHGacbINvEOIkMXcHIxcK7yyVK+aeVEFzn+7saVrod03/oddlgDBjdGabP1TCnE5J52bAEuvfzGcBAChwYxveS2xQU9opQ9DFG0X6OGpXglk+05KgbQiMj0zjp4eEolrMGxhvMVYuRsnTG716IfOst07bvrtZqqdY6DcFr+bUO8hwEZbuEjZMc3N/GKg3Oot4DK57VwzRQR4UzzlX4Rtn4+lU4JaUuII0OBtDHX+LTDNRuQA9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YBxOGOjWsCFxHDmlON6MzrBIoJ0DqB5WILyRrD4aiv4=;
 b=JPw0vtu1/GPHSY60CD0/ArVNjn1fzzc2/cOE7nYIAjLgKObtjmVohtrgKjGLjl0kQ+uyfGtZMOdcsW0oXHHGHt60prnbuio4PMhKXvnwNCP8CvaH06lNJDJyyUy0FthKBG75Yqfg64+NUSMT8fkpsis5VEMbvGlfAy8o8HY3fPkxfo/yijWLzhGlIYwFw87G+SKzFv3cAWZmn9ViBtzWFxdNRJUhuh4yXzAb5ycNV+jXuraU4GMBEjLB7DpyKgVM9iYEtfo445mKqu4afofiOTYmRtMsWTTM121UrYGrG4DCVCJ/1dn1V8Q8bd3ErA5lhoICrXOU0IYpM1C4Zpkryw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YBxOGOjWsCFxHDmlON6MzrBIoJ0DqB5WILyRrD4aiv4=;
 b=gXjaMH3LP3tDIHc+inGPXnqlW+ObPMp315Meih3SRGarWTo/5BO2Mj94PEzLgoa6Mx3l2RkiFXymbRIRF/GU1LcKVjGad4EZ0G1GcxhaeAyBAK3EYN9JdfTiU904v4bvg6JfZvr5wPNR3ewTlC5eemcSgEuvPl/XENhk7RxLIZ0=
From: John Haxby <john.haxby@oracle.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
CC: Dongli Zhang <dongli.zhang@oracle.com>
Thread-Topic: inux kernel: virtio-net host dos 
Thread-Index: AQHa3e491vWKg23ijU2Ql8b8fXDDDA==
Date: Wed, 24 Jul 2024 17:23:47 +0000
Message-ID: <9C169F9F-D2C0-40F9-92B2-5FBDEBDD4FDE@oracle.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator:
x-mailer: Apple Mail (2.3774.600.62)
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR10MB6527:EE_|PH0PR10MB5846:EE_
x-ms-office365-filtering-correlation-id: 8a47f847-b739-4d9b-7d33-08dcac05605f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info:
 =?us-ascii?Q?6JGa/mUC1CzeTVtm+vf3lkk1H66kZK+mc5BrM5/5KnnN5mCY2fod0GmeBQ6I?=
 =?us-ascii?Q?WIzgBrJJcfw1JoH58SfrVLp6vQRjmlFMh0+o9xHY6heROWpZylnafbGehd44?=
 =?us-ascii?Q?tMuj803VTWttuvS+CCJyhppBsCVrcoODrBsT3ECrFDycF7Ojey7WFbowFWJC?=
 =?us-ascii?Q?1WBPUteLB8Z2t0HsibtMnFMkwAPqDZ9KPbtzC/trOYExkVRg7aXlwzuoIJNr?=
 =?us-ascii?Q?5geiVVAKVzS3x27EhfrhsybIlmBM/sv2/jfmNke2vJJ7xyn5dbiXOqFYECzN?=
 =?us-ascii?Q?TCHvXDpKqHHHOBV4GiR8z6Pe2VK+8L0Kkw+y1wM1so/QR7iXGTXfbx4e9CPP?=
 =?us-ascii?Q?qseIn0Ft1Mb7+5cRjy/sfqIJRi+05/o95FBxPnklMP5YkMqfYfLwib+Dz1TK?=
 =?us-ascii?Q?u67g0FGcViDZggXWuKE+f4wI49Do0mF9mDJ2XOWeQZttXivrhmXewmN2crw6?=
 =?us-ascii?Q?PI7e0iqXacNnnrtwel6p6ic2xmlPPacoey4QZlZLypXrhR8FixePAhWfmoYK?=
 =?us-ascii?Q?/CS6eJkANMyATQvZbbPQFHbI3YJc6XwQ5yi9OUxYO+0Ru8WCIOrQ4udim189?=
 =?us-ascii?Q?XwJNK0o7l1+TXwJuBL1WNxOJ9xRewT8bxQ/0186OLqsqF7a6yVQ/UrMHyLkK?=
 =?us-ascii?Q?U6wcCOyGahLa7lHfhwR5Cq7+fx4TcnVQvOsEQ4/k+zYOEIjlaiWeireALqEk?=
 =?us-ascii?Q?jnZZ2TUFHHb5wnvioH2XEaQaXP6cN8fS5F3QbsQqi8pj9//JabuadoTebJUi?=
 =?us-ascii?Q?2L/b2xYJPb6YELrV3W/vJrPnAMYG7/qxDaFdnXsBb/sOadHq5oEUvvhp4l1r?=
 =?us-ascii?Q?HPCI9elVhzYPmvzzHSj3yjTH+RiyAyxGiHC5Hh/8Tqq+8pVnFpSW/uwgYhjS?=
 =?us-ascii?Q?VDFEQc2IdE7pX5rSQ08PQXpDWz7TxpkULfHX1WItCTSXSBdVPaNSH05Rf6N8?=
 =?us-ascii?Q?cPQrO6qG8sNrB/csmBka5Sr4w/sl8rZ+4vb7xshTgXS6cYMofpDXJH+zEqes?=
 =?us-ascii?Q?zBVaM85eAk0jPqntF5A00Y/P+FI2949C6UmCQ7PElNePoar8mvAWImhpD9y1?=
 =?us-ascii?Q?GTWoIF6uCRSVtzDjey/KnVbmy0Aq9dBSYi4UzlfMnPwMusRGMuq6FVhjNGD3?=
 =?us-ascii?Q?32+XMJ1phdlVRCctwgDyYi/qW4HX0Wc7qs6/kPkH0eU9RLmNNOI8FHjCktZQ?=
 =?us-ascii?Q?UF3mjrdmkMAwaykROQ9u2VsPaqjwH7rJ3zweO6yKguahtk3p9sFIsz4U6UKp?=
 =?us-ascii?Q?CloEtnRWQCAP9vjl+2GBulxuHpOAzxxYEX9EgvhzF63+Rs8Gvd4BQjh87R6/?=
 =?us-ascii?Q?f10clDtZiK1gGuCCYnz+QfEMx/J7e2VMO1RIGiNXo8kDHGcLG5dKQTdmNw+Q?=
 =?us-ascii?Q?uDLmTGv+2UrnM9LGxBHzbD01b0EcUHyNawhCegJwOrRIBy5YsA=3D=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH8PR10MB6527.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?zdYj+OnMoTYvaYR2nZ6oLR/BF7Hpq6GuTgvXk/LwyNfEDw0uINK8zFvCDOwK?=
 =?us-ascii?Q?oPgWu4EsgqhdvxM0OL3mdpxR0G8Vf3lqj0b0avgHmOiMibixOFgr82+KFBLR?=
 =?us-ascii?Q?9NMA3coR+pyJsN/Iwe2CAyNPgmqzDxbCgKP7H/YwxfOOSoV6xUXS6TDrGceg?=
 =?us-ascii?Q?xgP9EqxmfSYdXMjVN65H+N4eD25JLpYj4PKHpT++5Xns1ZKJe3ADY1emic+h?=
 =?us-ascii?Q?5ALM4NEuI13s8p4OmT0Xt6FLXkZlTUGObw7lQmRC7XL8pIi2O91RD3PDSkqi?=
 =?us-ascii?Q?4ktKANtkLteqTGSMiD72vARIAGIfjpwWsFAMo8uONYF5+JCRpVogovmCv9Ux?=
 =?us-ascii?Q?BVlxs0XqnZBaGhbedAH8oeZDqlnNV6t6qsnHQhjxfxb0hEtDVUTbZrLFv/yv?=
 =?us-ascii?Q?IuYFQPtGNf8P2YMsrSQ9wBlrj0KKNLXB7a8f+Hrxs3aZyVM5sFIQ7vqk6ohB?=
 =?us-ascii?Q?9Z3ubnwYxJRCYTm7sQW5GfCoBh6Zrq4VKR/1cC9CG6hprQyd30AMCsVfkuvf?=
 =?us-ascii?Q?njPnaCFhlIVBgq2n/RmbOnod475F0b4OqT3vL6uDkyuPLaKM9fBafALb9go3?=
 =?us-ascii?Q?3ADLX/vYdqbTn/lpE4xooqQsMbTizjokepr7gOlbZPh2HyzTRgRn4CvYUD/f?=
 =?us-ascii?Q?tDj3sWxgvd+GOUK5N2sM5KlaL15wvvGiEcGqS1cwMT2BsFcgpvlLAWmTMJGY?=
 =?us-ascii?Q?k8BOenydnOkVxDSkgxWX+0CgPoEpaEHsijvyh0cRRzrlRTTUIRrxZ451yvqz?=
 =?us-ascii?Q?KwWc0c2In6Gof6L/pHuRWGxCQ48sWEysyWIaTiyXtSe3JJFCf9dpJnc3eKns?=
 =?us-ascii?Q?SbaMbd/Lr5PUYWl/QZ9oPviodJAgnXOEX6F4Qc85JktAzMOMArNVSAcNCvPk?=
 =?us-ascii?Q?6wo48Yye8pQzJKwKPTPdI33K6TZBRP9m/wCvCZJ29ZYfs04hxzzaVK5GDvgj?=
 =?us-ascii?Q?bZ19Bhc2nPdiMs2GkaTlzut62ptdXQHCcuwqXvuWsGz970KikdptfL/NVbcD?=
 =?us-ascii?Q?DAR93tYhSmRYTC7GREgXnVTKIWOq7FBcWDrAHW0m4hdv1yir+RLk/wO0HQcs?=
 =?us-ascii?Q?ADEQ3Wb7VCHSOcSFDNviPWU8ZxVqShr7PIazq3gGqa15wbcjov//RPRSm6pD?=
 =?us-ascii?Q?w6vh9zbtwqkfxLKyS2zRtm4ZP/GikvZYB8Lf/Y/L/Hq9enjwUi4RFM89WZ+w?=
 =?us-ascii?Q?0vf4WD2Ww8FNVNFK6NBsQjKCqSq7EeyHTbeUtYvP21q8O1MmvDpHcByrrPeL?=
 =?us-ascii?Q?UNPR0qv9OW779aMPc9bECrvScmWfdzNbpj4SduFyf7ay0mR/GhBjEzjD76PP?=
 =?us-ascii?Q?RYI6bRBWFbq+UHTVKkDtcV4M44Tu58DkuctAR5y3yHRh2zfGSwjvrLM0QCTh?=
 =?us-ascii?Q?ocvSfiY4Uyz3WddrERlRetRWhQ08EGZ8jA/66euinWrHQDV0GYdH5utxbSZn?=
 =?us-ascii?Q?7lCAuWwR1E2H3OV2r+kFnWuMTAnRzBO5iYadm766iOCdkd4q15Elwb6I+TZY?=
 =?us-ascii?Q?7JDYTzQBA/bbcnA/f1deN6uLxnxEvKTo4uK/9DSw0vqFNwfpuYBDbmMjUA/L?=
 =?us-ascii?Q?j7JpyYSN0Ygr10EMQQ5fwMn5Ch+SQpF4zMxkvFM6zIu40xHx+tDfEmrEB5va?=
 =?us-ascii?Q?KR+Mmm8Vm49BbbbpzX26BseJWb4huLt93Ip7dy9Fou7wCuHhDNjNPxfp53Cw?=
 =?us-ascii?Q?Ze8yMg=3D=3D?=
Content-Type: multipart/signed;
	boundary="Apple-Mail=_30358D3F-46BD-4C9A-84F8-076C616BF9A3";
	protocol="application/pgp-signature";
	micalg=pgp-sha256
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	aQL6CTj8MqJXALjLw5nhJrjdvo15zQJRACRIGZsifQEeo6ahxkuzdYnnwEhbWtGF4HFjjrP77d9Dex9fxqTl2KqQgjOQVY8nrLKtGNG3NpWEW5ZoJ7IfHUHoXDSht5Dld21dWJ3GzgenWOfw/XkmXubpL/jne53P7Or+G3U/jjyZHHhdf9yHRoDcmusIZeSz23pjXy/zNSLzYHM9XoPS3XjP8kY6hpX28+kJwLrpBj9trdaAQV4+0BfhlIJPkzvHndnCKJPxOSL8PtClIdmoLADBRwq2h6UEEnV80A9cg/+yx+bRxuM+GOEpOcg7sCWtUIXkhmpdwjVdokPWj+V98gNvHQ7Hbmjoa0hx4RojWCH9bNbjMHek5yrKC/H11M4H0/XVmxTYN96I1skBOp9teriJm1HokWphW+0Ih4Q3x7q7SzhR6711ZOAcQ5xMjgbpVksdc4USfxZck8Cb/MPedv77hNRe10wiwZNjcMJK2+Ju883efgUIyKpo+HL0VXSFfSrAEycwgAtKgS1hkX1xGFg56f+gVayIM4NE3EXx+S/BUtRJjNWZdy6d/TQJRS+cQTSx1uYck/FiVnxM5DALn4d95onOkJT8FJpXoOuHlD0=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR10MB6527.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a47f847-b739-4d9b-7d33-08dcac05605f
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2024 17:23:47.1426
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WYSmDhr6/8LG2iFLZNaVPbhqMfjobSLWHfBWl5joE6gTTvun7Lhe6HrQDhpOB/dBVjCPtIr7ZdlGI5/Ue3Jskw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB5846
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-24_18,2024-07-24_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 bulkscore=0 adultscore=0
 suspectscore=0 mlxscore=0 mlxlogscore=999 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2407110000
 definitions=main-2407240126
X-Proofpoint-ORIG-GUID: 7_qtOzo_R4C1A8_22bVpoZALCYsH5Dsc
X-Proofpoint-GUID: 7_qtOzo_R4C1A8_22bVpoZALCYsH5Dsc
Subject: [oss-security] inux kernel: virtio-net host dos 

--Apple-Mail=_30358D3F-46BD-4C9A-84F8-076C616BF9A3
Content-Transfer-Encoding: 7bit
Content-Type: text/plain;
	charset=us-ascii

Hello,

We recently have discovered a Denial-of-Service (DoS) attack issue that 
a KVM guest VM using virtio-net can crash the Linux host by sending a 
short packet (i.e.  size < ETH_HLEN). The packet may traverse through 
vhost-net, macvtap and vlan without any validation/drop. When this 
packet is presented to mlx5 driver on the host side, the host panic 
happens, since mlx5_core assumes the frame size is always >= ETH_HLEN.

Patches have been posted to netdev with the following cover letter.
I'll post the commit IDs when I have them.

jch

~~~

Message-Id: <20240724170452.16837-1-dongli.zhang@oracle.com>
Date: Wed, 24 Jul 2024 10:04:50 -0700
From: Dongli Zhang <dongli.zhang@oracle.com>
To: <netdev@vger.kernel.org>
Subject: [PATCH net 0/2] tap/tun: harden by dropping short frame

This is to harden all of tap/tun to avoid any short frame smaller than the
Ethernet header (ETH_HLEN).

While the xen-netback already rejects short frame smaller than ETH_HLEN ...

 914 static void xenvif_tx_build_gops(struct xenvif_queue *queue,
 915                                      int budget,
 916                                      unsigned *copy_ops,
 917                                      unsigned *map_ops)
 918 {
... ...
1007                 if (unlikely(txreq.size < ETH_HLEN)) {
1008                         netdev_dbg(queue->vif->dev,
1009                                    "Bad packet size: %d\n", txreq.size);
1010                         xenvif_tx_err(queue, &txreq, extra_count, idx);
1011                         break;
1012                 }

... the short frame may not be dropped by vhost-net/tap/tun.

This fixes CVE-2024-41090 and CVE-2024-41091.

Thank you very much!

Dongli Zhang




--Apple-Mail=_30358D3F-46BD-4C9A-84F8-076C616BF9A3
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iHUEAREIAB0WIQT+pxvb11CFWUkNSOVFC7t+lC+jyAUCZqE4mAAKCRBFC7t+lC+j
yK2UAPkB2aEW/80F2UqH+kfsTKVbCnlupfUbw4E4wbmKc3X7jAD+OXp5+cN5pGkG
rGMmZZF+DRRfAsySN5c7tmanfZofl4E=
=28+f
-----END PGP SIGNATURE-----

--Apple-Mail=_30358D3F-46BD-4C9A-84F8-076C616BF9A3--
