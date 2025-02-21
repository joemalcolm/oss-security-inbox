Received: (qmail 11664 invoked by uid 550); 21 Feb 2025 17:55:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11617 invoked from network); 21 Feb 2025 17:55:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=cc
	:content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	qualyscom; bh=YTkcYXF03EOa4rSBDQt9836gCcQeP+BhUdO6VRj9zXc=; b=No
	P2D4lp+r/U+/tr3fI9Mgi/vCL6KF9Ipk8K1Z1jni4sDDnBgsTBVrth0wYDFhVJB4
	RJAA+sHm3yd6dFsbWf4oJ7mxr4DjnDMc1tujVYVM5dkHGgIGVi9ZLd8g0xZXqhS8
	9Z5PZNgNzrOu9S8WVwh2lztBIKAU64wXUonvjhCr3RZXYN9wDQTRMbTkUmJ0G2kv
	0aOz+gUMbRRF7/LsOriM+o3fR9JcRTus83Dj7+LEwec43nSHlW8QFmMabShHZmaV
	9/wiaJq2vDSz8bezugZmf+V7GY7ahUbn7jK7TEAdKXmOtRt7UzTCfQaGwwfXNs8I
	jwK2LQ5qyYq91a4oNzTQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B58IHPwKcyHpS2CJHfYdrtf+m/XNaXTE8u6Thn9w7pKVavSSidEHtwgNYMUifknDa3f2/HeivaPto2mbj7KRZZqRv2/ZA1nd5ytS0/UiEUabUnuwYsIT6c+84CZwuprFE4vwLzHjgctRRlyQHvkJUkxdsrR10O++IKehWYmH5AuJqI+4wbsVlNWMBx5y7H8RaU22cSAHfyERUlEFeh/VF2eBW6RgEQ5S11HfdOMLWU9eeBjsEuEN/lYhtSzLzYUHHavHLsxJIEOKhxbf35hehmwgme4rMi6C2W0jHhitTAF7uK6hcKq002sfR0nL7coXTEcwPYWEgDfNUtupyTpl6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YTkcYXF03EOa4rSBDQt9836gCcQeP+BhUdO6VRj9zXc=;
 b=esrXx6WxEb4Qic8ziZVhp//k4D0LCeVq2NDZArA1GPfHdCEKPn1KgLPBVNWg1KhSRGghkkXrD6NnjVHN5pN5+VtEZEAzPuis9KSXMY5/pYb8882jVwwoR1eK8Vi32i3YNspNDn/S0F99vM0WXr/Ve21epBPlY5MJkpNy72QFeBoTOzPPwrg5SrxhHpHxiWowYOkO/gPh2tgOcDIsjJioWTdlj0V79EgbHXsbErwxGeWh92IFcVw89eavLPWx3YIGs7McomOaDWJSGsYfRPsiXkagv6CBToZw9InV16KL8cIPFIYjFmYfu/8QDsWn/+TRH3XiI1S7WdoApBisypbEgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YTkcYXF03EOa4rSBDQt9836gCcQeP+BhUdO6VRj9zXc=;
 b=fXPhtrFwgZq9tQiJNKiaEoNYH6kPmhdcWAqQaTFTvYCbKkvd36P7F6C/qeMf8KPAvL+MI+sh6Y3NDEFi+xBlnHfKo5BlAYEN0xUr39i0QgBxMnhtDzL2RnCVKD0S4Bn63eaz1Ig+t88LEV/PbZjF4YLThP28snk6KaH3vz8xRZmOUMb36qX73cS8GR3sJCyRPTX/iZGzFZNkIXFuYcxHNAOnXgnbSyZxmhen4t01GwPq0ILZijECliNe7rBGRdKXUg6Xpn03fUhKyLK5rQblsW6W6FNcAryI0SbT+yYJmqqdTasdVQSSwTUdT3YdhtkC3MqFq+cPJauu5x76Np5JtA==
From: Qualys Security Advisory <qsa@qualys.com>
To: Jordy Zomer <jordy@pwning.systems>
CC: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] MitM attack against OpenSSH's
 VerifyHostKeyDNS-enabled client
Thread-Index: AQHbhFtXVbPRNnZ9ukOo2d2n1ltThbNSCpqA
Date: Fri, 21 Feb 2025 17:54:53 +0000
Message-ID: <20250221175431.GB2391@localhost.localdomain>
References: <1167011785.77274.1740140560949@privateemail.com>
In-Reply-To: <1167011785.77274.1740140560949@privateemail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR06MB6910:EE_|CO1PR06MB10628:EE_
x-ms-office365-filtering-correlation-id: 9f8c141b-e61b-4773-5c0d-08dd52a0d870
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info:
 =?us-ascii?Q?PGGG/jB/Zgt+GCEvnHwhwurESIDniRnLZCpXalBTqg3pjwUden/v0CtQ69Lb?=
 =?us-ascii?Q?EPMCRtDyIS9xmN/d7Bl7gIgo1BAXPuBGqb/gUwjefb07J/KyefhrCDAix5wK?=
 =?us-ascii?Q?cH7n/Q6JX48NQS6zwgb5qcxbFgo9Zls/HJNOgI7lPitZCO2LPC7hzRGm46mH?=
 =?us-ascii?Q?+kkpwzFg+5GEOkFZPwwkv3smaM0R9sgh9sUvYN1juuKIC0NbFB+6m+p8Rmv2?=
 =?us-ascii?Q?QkpIFMGI2bBEvbrfIM3wGif5gq5jL1BM9g9izsDhGkNXg28xvII+liAq54TV?=
 =?us-ascii?Q?KtgNY/+x70DnfeCGSKSQgtos+qNpp3IQtnrejy2dimBxyNS4S+zHTtaeB+la?=
 =?us-ascii?Q?toLxPPAkWtCR20saNrrpNwbRp15NWw+yfUqdxRjUiNwE1JHDmNdcrqv3MV6M?=
 =?us-ascii?Q?b30m6/Yb+FjkBdFK1PKX76cJGdou8kWNIHHKZsVu+EEMiySPdLd4ZOdY/jFC?=
 =?us-ascii?Q?MJoPTFAhVlMmE5/HVHHjNeYMKJJEquA3e6dPYU2cfAiIQCd0OS0zGOm5+ya1?=
 =?us-ascii?Q?KT3Bnk1Pu9247+CT4oGwMgjuFlmFqimUcdiErqN2zcB10QPlM2146S/GMVko?=
 =?us-ascii?Q?cSRHJd5uJ32o7QMnYD58ntPqiC0G9+d8a8Yq8l7uVLkVxkBdLOCNKb0a5H/v?=
 =?us-ascii?Q?23yOEOSinACWBupNrF9IgiiGi4M70xNHdCXync6aKCUPLJQUsFUtCGbdBw/G?=
 =?us-ascii?Q?tjKcoW+RuIRq9PElZWOl/BRPwoVIKlxseTAKx+Kmz+eJJk9TzG6AWOnfMmcO?=
 =?us-ascii?Q?7oqARKFyuw3OncWD14Bs/W/pXDqEiNTzLukHSuLgYj+FxxuzDvtYN2wlfkO5?=
 =?us-ascii?Q?4CTcvCMzg0CRkWgW5xui3qjeP2/xc77HO+t3moWrOOdMAfCEazpuHt8k65Fs?=
 =?us-ascii?Q?jLJOscQynJ2dU5GqdlMTlbrDIqXfQnULNLm1bg2jUExwZo3IYz8PMv6MXwKX?=
 =?us-ascii?Q?4/q+JiTw6ZWuNgkZ685mRs5Rx6CluOg/nOFl/HEmxtTsdKDc8TIeTFYVIc1U?=
 =?us-ascii?Q?OaFjoUpal/xZ0Ql0EWqlamojzqDSBQ6uUie7LyZSzSty0g4UpP4X7U0HY6Ju?=
 =?us-ascii?Q?OrUq4B3wrZS+guFORV8UfzdpkfFER20a6Annif59EarEkLYMGFFGgW7ULiCA?=
 =?us-ascii?Q?nhLLwhjSsotzBE+Sz450c1wtwNMN3vMnS54grXEbrTyDISxrUP1xUP4qMPiV?=
 =?us-ascii?Q?RcHqgK6YRPbAwGVAbaobZoE65PBH3CHKNtOHsPzUcY07vuNvlPW7+A3N5Jq9?=
 =?us-ascii?Q?mc6kg6HcIMkDOiRtTTeVgYEoKX2oN5ynQQfVTqryT3du7vj+AWyzYiOKffiL?=
 =?us-ascii?Q?5TI8n8y/aE3g3yW0jMgB/cqAQwQkusW8PCVXiK3dodUPhWrHwpyTM2EgdN5m?=
 =?us-ascii?Q?bpPp3koQDIS9OXM3j847RWj0sMM2SkCDtIjqWVcemSgTgXaJJ0N3G9crQ/jk?=
 =?us-ascii?Q?iztFt7l4u74goX8uIuIdK+nawwtzI85S?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?AP6RH/FlEOoA6E7yY/O4fG/MR3I1N67WCv8vz31VQWQgb+mJlROXJJfprYRB?=
 =?us-ascii?Q?jKJ909l6pl9Q9GoU1FUf9l/L/ZhEH5tx4DuBqQmpRKzoxH5m/AAd8mUsvWal?=
 =?us-ascii?Q?oMvt8LYyUcl///EB2x7MvaE2Ttgv+RnmOC52pIEUT0spdSj4111YLdBzx7fj?=
 =?us-ascii?Q?2ePPpWMQtRrg5WofRGiRSyVXgHyqlObC5OohjwPyu7GYpE4qWc4HaaTacYAc?=
 =?us-ascii?Q?QQ8mtfbEEjykXxC6ZsKpRmntQq3Ttrmb+eWQ6cVbRs4dKvDSwmb5mYMDJZk8?=
 =?us-ascii?Q?DfLt4M3T7M/fqUfveFaSfXT6Pm8qIkOZ+J17i1MmwmfCQCak+k1UK1vLtoxV?=
 =?us-ascii?Q?2skK0hDx7BykPui5Q1pBg0JUZYbQuiDQjDI6TeyTBusPB7obbVZJhVZVkP/o?=
 =?us-ascii?Q?N0TW+iKgu5jg5sYBT3BsmiQLidb+HFNple1wUcBs0qLd0Z/jrg/ffKNUbsmr?=
 =?us-ascii?Q?G1P376ZDj4eniWaEkBdJ4ky7kftuCWDjz3YQcR/gEIzppzRqfGDg8PcsWneJ?=
 =?us-ascii?Q?Q4Vmo3O643uljgt08dBYWke3AgjoaCFsX3F+u7IlDELrJMHGsplUA/qTJ4Mx?=
 =?us-ascii?Q?F9YJaytLbAWdalhY1qL05m5X7Gp8MSaRsQGFptM4X432Qb4L+/5+hYBRuj3r?=
 =?us-ascii?Q?OmZIzwxKMM7IJphiKuJwIRZoESfHEP7r0CqDDIfNEbkpR9F6CBeAE53piK9J?=
 =?us-ascii?Q?AciMC1G8SXfHip77YRLlhsf2pMPeDH4qHcSoH0z8+E9wqslZ/JeosLtmyR/d?=
 =?us-ascii?Q?SF1VJHWR6e0ySA705vkgcWLtLFRcI/wIFkvhqRiXpsE/V3Z8oeYOID4ZqPXY?=
 =?us-ascii?Q?IUbXglB0NjWCiagQvvVjLa/D3qnk4GxQBi+dLL0KLhJ377YQcg9EoBJPdJrU?=
 =?us-ascii?Q?zk06DYKrXE6dHYwifbCnc0wEafeaSH8Ppggb6gGEeaEuhisfW0JqQEXwr25B?=
 =?us-ascii?Q?YzKDj/zEnkHX1GkQYv2D55Mr5T1lL2FEDn9WpOgKLLcW3NFl9CmGs2TdQsI1?=
 =?us-ascii?Q?JMrdckpd18fBjnyQwM0Jys2T2PLRU/6ZqpREWBMa+aZyHgY0hYkYl+NBQ0YN?=
 =?us-ascii?Q?uh1z72oSs9BlRLRgr4DBvBwVAJlZ5DpVUN5Nbd0LpaT98YolA1M6vDg1yj3L?=
 =?us-ascii?Q?ZoXV115F1Frn+WiFGvDE5t8kYkQn/zCYlfGPLHG/CAJmR0FQFUtA7Zg+Y2NW?=
 =?us-ascii?Q?d1iGxVLd8K24AJ8+XtVDA9FE2k/Lzd93+rWVBauIf5D9XueZHUYcde5zGH5x?=
 =?us-ascii?Q?QWZnTO2REZslxjtawH58c246zvJMMwmQpQToFSjcrWDhgK3ypHatUWbILfPb?=
 =?us-ascii?Q?2vTMfeWbWHTt1CRYHk8BrVUI2nVAHcwy35iv3bieJOduohb61M3lxwBKDk8F?=
 =?us-ascii?Q?KvhMmpJQyQV1JyvzecryT7eVpjzf7Gq5yaiuj8Q1y+iF5I5QmwtILAvOjY13?=
 =?us-ascii?Q?57d6E4uFZVJ/zyHrrKljqJuLp1h8eBiPLgRXUsEEfPD/E9WkQbaVPt8UuJSY?=
 =?us-ascii?Q?iawwlhkrlS/f3o35LIhDtR96j7hbp7LOHovA0Klx3beKJ3rFKkhhpVjRSRut?=
 =?us-ascii?Q?FqUzJwbsUJf1pZdIkCqUm01kDcwZvUhQ6ZkWSTA7tyPVecpJyqbVqkWTkNcv?=
 =?us-ascii?Q?Lz2y2Jdtzwl8vAFn9p6W7e0=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <30A61F58AA094A4189F89809CE0DE0EB@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f8c141b-e61b-4773-5c0d-08dd52a0d870
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2025 17:54:53.5335
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YiuGFir7n1gPFpokdfFkBFGUVIMiphsIIjsBJgH+z+vxaAybbaGpEOotFfge4ZuBEffqLFQgDeFhsP02BFzWcyrahv75GppPZ/ANgAI1nwc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR06MB10628
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-21_05,2025-02-20_02,2024-11-22_01
Subject: Re: [oss-security] MitM attack against OpenSSH's
 VerifyHostKeyDNS-enabled client

Hi Jordy,

On Fri, Feb 21, 2025 at 01:22:40PM +0100, Jordy Zomer wrote:
> Hope that's helpful, please reach out if you have any questions :)

Woo-hoo, awesome work, thank you very much for sharing it! We are
looking into it now (and learning from it).

Thanks again! With best regards,

--=20
the Qualys Security Advisory team=
