X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1199" "Wednesday" "25" "August" "2021" "17:39:02" "+0000" "Travis Finkenauer" "tmfink@juniper.net" nil "30" "Re: [oss-security] Possible memory leak on getspnam / getspnam_r" nil nil nil "8" nil nil (number mark "U       tmfink@junip Aug 25   30/1199  " thread-indent "\"Re: [oss-security] Possible memory leak on getspnam / getspnam_r\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Possible memory leak on getspnam / getspnam_r" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3565 invoked by uid 550); 25 Aug 2021 17:57:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28096 invoked from network); 25 Aug 2021 17:39:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=juniper.net; h=from : to : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=PPS1017;
 bh=rJhaLu0OvDH0dLK4yaAviEbelS+7u0wLORfUnUEtrvc=;
 b=EzcbFO3GvyTfb4Wy30JWhNdEIVS6fhb3wViansy3GCtX62o5CP7ap7XzOV1aLmOFxbkW
 V8jc5b0vqP7++8EqxiuO2wTt3dnFTGF+jIKyEcd2WrazoD0qx26qKfAsqH0Fn+muatuf
 /wBfTHjOU9y5VkjuGiqbLmKfrqTbS7WIPA+gOVI4TPQjULgRJ6NK8OsLwyCMhgxzwqQU
 Cr40ISFDNg74yZOk8dNS4pD+9S1LI2u6LxTzcy7mHFRBdZRQiun3GKnHfdvCbV5djkrd
 UveRHEUBmpI8lPHuwFoLFQ0OjqydBRG1kt5kpD3Si0Fy80XJD1Srvcp7+sVMvc1tptHW +g== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UEpwQPTsQ1Bf8hwtik2/5bR3BdzIk41WzX7XjekC+TuSm2DjJ1/2zfGvJxx8+TpTHCifrlRmzAN2/OXNqhGVZHYyLzEaB/ZNtSVkTzyrCJ3TK+Z/cfeb8HDOyNQVzilVmZhejKeNOAG8eMswg6pDGBCxI4h3ni1i0nebSw0ttw5Uv0Hje3Yg9cgZcapkWa4RVBQLfsowEn0fwWwngik8PPN0qSwzt2SoZJBeYcY/T508Cee0y5huZ6E4RrfEd6ttT61Ui4hLZ1IKgYVMk0nBPeNM3peY3hMZKEvNiHNhUgpI7WG/nW54VbTdJCFBy1ag03Tp4cJxnXfo0N3Ddw6xBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rJhaLu0OvDH0dLK4yaAviEbelS+7u0wLORfUnUEtrvc=;
 b=AWMhIHUryGrgZPE1nwLewdxcG36K+Co5ZDvjGeW8xCeI+RXOo99R2QENMBNArxyVIDlv+4kpCngZvHcOtAJTIMmTUQj4eWk03id7xqZ5aGNwZ0tlgmVwt1RJtQUyKf0sjGx855vCfMRcL46XSipz3SKN5RFLhc7s7QUjmhClFaXxz9670gmwwsdIxCnhcji9Pif0gNxJvQP0N0uBu37yi4TFtyYgqOH/Xi6QMRx0Sp2CfyJf5iiqAFNxYsetfp9GMwMuV8tZhbfdBhKArJ82cjvccDdxTaPIOX/zSuSYYmZN7ZqgkSdwt4BseWAdqUt9Pxb2aN+y/VUPvzfvLThVfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=juniper.net; dmarc=pass action=none header.from=juniper.net;
 dkim=pass header.d=juniper.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=juniper.net;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rJhaLu0OvDH0dLK4yaAviEbelS+7u0wLORfUnUEtrvc=;
 b=FNU71ajOyO3jkrkzd5Igqhiw1Vg1OvSd1z8zwOlRV4X/1fe4fRvXmiN0y3XA9EeJ2XNQjq1tpUr01CMwaVxAiJDNsxlCGbr/evv7P3AcNP1FV0GaO5yhfr8f354QiO2opt1e6dfZJjgIC5Hkj9/HE9421C5UkGZv3BZNsBGGd3E=
From: Travis Finkenauer <tmfink@juniper.net>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Possible memory leak on getspnam / getspnam_r
Thread-Index: AQHXmYlRmCLuPw2s+0e9nQHKCmeM0KuEfRwA
Date: Wed, 25 Aug 2021 17:39:02 +0000
Message-ID: <38355066-A140-44A7-8E3D-58339304E77E@juniper.net>
References: 
 <CAKpyPV-Z18FXae0t7vCozupvZ6+_9eeaoAQ=8_1sPM8Xfbn3ZQ@mail.gmail.com>
In-Reply-To: 
 <CAKpyPV-Z18FXae0t7vCozupvZ6+_9eeaoAQ=8_1sPM8Xfbn3ZQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3654.120.0.1.13)
authentication-results: lists.openwall.com; dkim=none (message not signed)
 header.d=none;lists.openwall.com; dmarc=none action=none
 header.from=juniper.net;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0d2cb3ec-6732-4808-c6b0-08d967ef3ac9
x-ms-traffictypediagnostic: BYAPR05MB5477:
x-microsoft-antispam-prvs: 
 <BYAPR05MB547744FDF2A7E8D5B97A6604C7C69@BYAPR05MB5477.namprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 RzP8huMHLSYY6pDlBUEumUx4dm4QAxJCcg2t1Vs466hViA1anwUlMqqnBTicCiP1VAU33cfGF7hM+TR7A6Vo1OGe1dVb5ZSwaIqijfSbd0aNwZu0KfLXQg109eXlURs1vJ6EGzEYmv+0Mo/Jz2BAxrMQvfNigCXW1G49oevdlC6YDyzFcqsvJVXNj/DeupjrUXUjeUmT3sGBw4Ujo/UwiMuc0b4LGWwZx/M30oAJ6abXka4kJovK9uTe5GmdSyqmhtO3qRiX13OAIywlaVM9A/U0S5U74g11Z9HNTj2PLLVY7DNkd3Zto/jJhZjrVDVeqN2gYM4FDSGI18NKz5yL71sl8iiGBIWEjvcXY6Hts/7/cyqFrOc5096h+XuNHWE+kFnJEaJfIDAbwJEX5UaqxEQ8xT3MaGavn8N3kSVlNbLmOVsNZzz6QQ+aXaEiatn6ionHkWU7TY51PCeaY08QNQS2L6ynCUp8Toqs7RdXWWyIGaru/ON5Nep9WWyvvzcloC/4eNnF8jkNGLMOX9TNxhMfG4OMa6rvDqlEYMaE0zzvGHRrP7G8q/qRZaJo2P/x4BtGhEJ/ULM2xlL+pIosZSGKn8fLNpr9gh/uIeFjeNan6+auH6HVQNQ9j7BECEzN2ia1A0Wf2vDvjRADK6qBZQpVkCLqCD88lr1WmO02AB+FLOdnXnjLgW/vdr0BrJ0IPUTJYIesgRsxoF7w5J2qUiteHp37OinqahpNsvj5DyT7C6nrviXKI3epYSLtJie3qGUGuItZ5/hCTFLKh/1iNoKh2qwr9X+XuN7l29P86s6orX93cVRM2nVMox5d6IXI
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR05MB6470.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(376002)(136003)(366004)(396003)(346002)(66476007)(2616005)(66946007)(66446008)(33656002)(6916009)(8676002)(64756008)(66556008)(316002)(186003)(478600001)(122000001)(76116006)(2906002)(6512007)(26005)(36756003)(6486002)(38100700002)(53546011)(6506007)(966005)(91956017)(38070700005)(8936002)(15650500001)(5660300002)(86362001)(83380400001)(71200400001)(45980500001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?oaEMIixEdKNmIuybZ+A4a7QCg/6rqnypbbHXKDBtOOgXSaZzaDU0VfzBmi/m?=
 =?us-ascii?Q?WdmBmcjZXUkC3EyNm7MmlNTANvZVAhZZiluyVSwH+fQSLQcFOTIbfJiAS7x+?=
 =?us-ascii?Q?tm9C+yMRoI9vWpTllHElFnJrUtihCvK8++QuVkLtIRJmSkEu8BGlcOYj2U2z?=
 =?us-ascii?Q?0LB1/h5H/OPBO2tE2HFZjUdVHt8KUcSPbawdAg11/I1Ao/79WWiscJW1BhxJ?=
 =?us-ascii?Q?iYzjLfuL1L4CSgSeWiHBifSCEOkZOWjbBmwu3JKkIGOgqSz7DoDdOxISDDvd?=
 =?us-ascii?Q?wcgk866cu0KUa3x8m+bIkVYdIv3rUj3VWD3DcOEAru6laU8WtOoWGA6eg+z4?=
 =?us-ascii?Q?FLZXaVummkG8SGcPw50If89/BYHmgf4plI8oQyxiune+sjnY1A8Ei0/jlIMu?=
 =?us-ascii?Q?EOPqKjCh90B/iaF36xw8fdtoUL8KppFVuBhbqceDa0zaFNKHgC4eQtiCaCEU?=
 =?us-ascii?Q?LyfnnQWsqBMWZ+OxW2PBBYRUGZLQ6rVO8gT/HKmHAV6brDVSk8wPk6rkvXXO?=
 =?us-ascii?Q?iOUKX99n+thRVDqwTK0mFZzw7GLtTPwcR0kwZ/yoD41JCkBhWsjuZu1Fsaan?=
 =?us-ascii?Q?K//aRPe5MW2qF5GlhnpXB3NXW8FkfH2gt/+AbPLUygHo7Bs8kWy428bQZoeN?=
 =?us-ascii?Q?lsHcOD2+xzTRPtCaaSnxlNJgDAlNJ28fCeoyzE4aSfmeW5zHiaecAivPeOyf?=
 =?us-ascii?Q?wk2wmo8wVx79d89W/Pb8Isz3jMaQmQMlck2yXv+4xPOhS9Eib3vsGyydwk+A?=
 =?us-ascii?Q?Rjv8l1f5ldWJo0pK+beOBK+6Wdd2AXq9N6vtOLq9wc17RCAgE6lrxz0MlsUr?=
 =?us-ascii?Q?nYLPUKC75XPnqtyGKaH7YRJrzG+zLqCNRrystN/H9GTbMf4YxThsiq6mJjkg?=
 =?us-ascii?Q?wLr24nKK6Fv6GNhwQ0ea9orKliPhXo5IrNY03/ZUVwQdckkzD392NykATPTs?=
 =?us-ascii?Q?3LOzYR9176F5nT8LiBZ1AXJp8Cd90zYJ9CgiiKy8KVML/fgN/TcWZyzBzGq2?=
 =?us-ascii?Q?jkbd90SO1siia3tMaj8zmFfPEDFFi1MZYPANIdJW2rkWKe5AN38o0Kj1XaRe?=
 =?us-ascii?Q?h6rTKVKq006VrPVZtiomdmzYve8iS7zu89vgySu/sDJAlfYEZNFcqNMq3jU8?=
 =?us-ascii?Q?4/WAOp5upgDQx3gtQnw8i6m92pgSmDtj0kBEi6SNjhnzxlb0e5GmkkB5TbSx?=
 =?us-ascii?Q?xjhiMkioOQeR1jmxqSxu33ZlH/PJyul0Jjh1FWyo+A7gBGvbfxegstR0nH2Y?=
 =?us-ascii?Q?j6ZRHtJ5lEEGA/aikwp6z7fs+2FmjpVXTEWmpz3SDxLme106pXyLB+mUH8/K?=
 =?us-ascii?Q?09w5SA8A1+KIPvWZTXI0MU0j?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
Content-ID: <6BD7DE824C09AF479AF5F344A56C711A@namprd05.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: juniper.net
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR05MB6470.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d2cb3ec-6732-4808-c6b0-08d967ef3ac9
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Aug 2021 17:39:02.9863
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bea78b3c-4cdb-4130-854a-1d193232e5f4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5UGQ9Ift4dZfonJrd5wrly4I9pBkyMUxzFiIsDhAWumbDT0qOGRrhptA9RMjvR4JRMw3re4Nzgg5lWnLcMRkRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR05MB5477
X-Proofpoint-ORIG-GUID: RyoC8jG8CW8_SFEBJYCcXAezoKGZwysi
X-Proofpoint-GUID: RyoC8jG8CW8_SFEBJYCcXAezoKGZwysi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-25_07,2021-08-25_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_spam_notspam policy=outbound_spam score=0 malwarescore=0
 adultscore=0 spamscore=0 suspectscore=0 phishscore=0 mlxscore=0
 clxscore=1034 impostorscore=0 priorityscore=1501 mlxlogscore=762
 lowpriorityscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2107140000 definitions=main-2108250104
Subject: Re: [oss-security] Possible memory leak on getspnam / getspnam_r


> On Aug 24, 2021, at 4:14 PM, Jean Diogo <j@bsd.com.br> wrote:
>=20
> Thus, although caching is mostly required for performance, maybe this
> (caching) should happen only on getspnam function but not on getspnam_r.
> That's because on getspnam_r the user wants to have control over this
> buffering, then the user has a way to clean up it's memory when this
> caching is not desired.

Per Hyrum's Law [1], there are users who expect this caching behavior. Such
users would hit a performance regression and be upset.

To control the caching behavior, there could be another function like
getspnam_r_with_cache() that takes an additional 'void **cache' parameter.
getspnam_r_with_cache() could update the pointer to point to a cache. If a =
user
wants to avoid caching, then the user could just pass NULL instead.

Alternatively, a new function cleanup_and_zeroize_caches() could added. A u=
ser
could call this after fork().

Of course, introducing a new function complicates the APIs and requires
developers to add them. Also, to support multiple versions of libraries,
developers would need to protect the call with an '#ifdef SUPPORTS_NEW_FUNC=
TION'.

-Travis

[1]: https://www.hyrumslaw.com/=
