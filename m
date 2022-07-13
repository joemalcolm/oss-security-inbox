Received: (qmail 1860 invoked by uid 550); 13 Jul 2022 13:57:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27792 invoked from network); 13 Jul 2022 09:27:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=citrix.com; s=securemail; t=1657704470;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=jag+bhiISty7hZB+fsK/uxdv1w8qJWzpYO6bz+oiOVs=;
  b=fxJXgEQPeOZNi98/OOaNzAX9RypJMIfQ9sII/iZo1IuQopdYQcqi3Q5R
   2x49sggyq1d8uw5LF/0QLhGhTSG3ziqB+T2e50wusoAW6HYfuooFmIFLy
   fngfDZbjURlwkGBug+0UoBj5XdkhWQN1U319DXsOKx+BfweclqxSbodYO
   E=;
X-IronPort-RemoteIP: 104.47.70.108
X-IronPort-MID: 75709914
X-IronPort-Reputation: None
X-IronPort-Listener: OutboundMail
X-IronPort-SenderGroup: RELAY_O365
X-IronPort-MailFlowPolicy: $RELAYED
IronPort-Data: A9a23:yBfeTa7mFnqANrvdqNwE4wxRtOXGchMFZxGqfqrLsTDasY5as4F+v
 jAdWW2BaPbYZDGjf91/bdm+pBxX7JOGn4dhSVNuqCowHi5G8cbLO4+Ufxz6V8+wwmwvb67FA
 +E2MISowBUcFyeEzvuVGuG96yE6j8lkf5KkYAL+EnkZqTRMFWFw03qPp8Zj2tQy2YfgWFvU0
 T/Pi5a31GGNimYc3l08s8pvmDs31BglkGpF1rCWTakjUG72zxH5PrpGTU2CByKQrr1vNvy7X
 47+IISRpQs1yfuP5uSNyd4XemVSKlLb0JPnZnB+A8BOiTAazsA+PzpS2FPxpi67hh3Q9+2dx
 umhurTzY1l2B6bvm90yVilAUBN6L4pjpOLYdC3XXcy7lyUqclPK6tA3VAQcG9Jd/ex6R2ZT6
 fYfNTYBKAiZgP67y666Te8qgdk/KM7sP8UUvXQIITPxVK56B8ycBfqSo4YAjF/chegXdRraT
 +MfZSBic1LrZBpXN01MIJk/gP2plj/0dDgwRFe9+vdouzmClVAZPL7FDd7ZI9yqaNRuj22qo
 VjgoXneIkwVHYnKodaC2jf27gPVpgvwUZgUFbmQ+vNggVSVgGsJB3U+UkCg5OK0gVOkWs5OA
 0gV4TY1668q+Uq0R935GRa/pRasrhMaHtNWFeon7gqA4q7V+BqCQHgJSHhGctNOnN87Q3km2
 0GEm/vtBCdzq/uFRHTb8a2bxRuiNC5QMHQPfzQsSQoe/8KlsIw1yBXVQb5LC6O+k8f0BSC13
 z2DqW07irAZgNQQ/7W2+xbAmT3Em3TSZgs85wGSVGT66Ap8Pdahf9bxsQid6utcJoGESFXHp
 GIDh8WV8OEJC9eKiTCJR+IOWrqu4p5pLQHhvLKmJLF5nxzFxpJpVdo4DO1WTKuxDvs5RA==
IronPort-HdrOrdr: A9a23:dGauAKs7/PrtNSiL/4QBbpEx7skC1YMji2hC6mlwRA09TyXGra
 2TdaUgvyMc1gx7ZJh5o6H6BEGBKUmslqKceeEqTPqftXrdyRGVxeZZnMffKlzbamfDH4tmuZ
 uIHJIOb+EYYWIasS++2njBLz9C+qjJzEnLv5a5854Fd2gDBM9dBkVCe3+m+yZNNWt77O8CZf
 6hD7181l+dkBosDviTNz0gZazuttfLnJXpbVotHBg88jSDijuu9frTDwWY9g12aUIP/Z4StU
 z+1yDp7KSqtP+2jjXG0XXI0phQkNz9jvNeGc23jNQPIDmEsHfpWG0hYczAgNkGmpDr1L8Yqq
 iJn/7mBbU115rlRBD2nfIq4Xin7N9h0Q669bbSuwqfnSWwfkNHNyMGv/MWTvKR0TtfgDk3up
 g7oF6xpt5ZCwjNkz/64MWNXxZ2llCsqX5niuILiWdDOLFuIYO5gLZvi3+9Kq1wah7S+cQiCq
 1jHcvc7PFZfReTaG3YpHBmxJipUm4oFhmLT0AesojNugIm10xR3g8d3ogSj30A/JUyR91N4P
 nFKL1hkPVLQtUNZaxwCe8dSY+8C3DLQxjLLGWOSG6XXJ0vKjbIsdr68b817OaldNgBy4Yzgo
 3IVBdCuWs7ayvVeLmzNV1wg2XwqUmGLETQI5tllulEU5XHNcnWGDzGTkwymM29pPhaCtHHWp
 +ISeBrP8M=
X-IronPort-AV: E=Sophos;i="5.92,267,1650945600"; 
   d="scan'208";a="75709914"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l7LNRhgFB5N1TXF80HahWsaOthkts1eNt8asdSl7wjZZD+mKCUG6IpaLlJ2ZohSGW8PZ9G9pCBddoeOIkIWrumHUXJtRWkRw5Ogr1GXuLqAesnqIWAlRJkNSL3PnkFWwJdaiuHF5dSCnGTGNjVvOPh7Fkgco2qPiB6OnB17+YE5ym67jYZCu3gr5NTJhEGK+Fe8x7W8mqHhYrijTPsWu/yGSkptuCSoZDSGJJXQaWnkyn1C/1dNd5P8LD+hyezwaAXiMlg7k4BtL1OHKEctlGhuepUi5ESt/vIO6oaE39I3TJHWQrV4MAxBmrq5njt0RcB+WnxY23b8a1vhtOeMUtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jag+bhiISty7hZB+fsK/uxdv1w8qJWzpYO6bz+oiOVs=;
 b=bOQFThAP+WMP3VOqSF4kNRarSdiLT3Tv2fbc9MABMJpcyOiLomrPBtC/yIW33Cnpg3akK0PlVcHC+wd1BwbSVLRC9Scfg3VCsLplbwjTCZbwQ8g4lbIT7xXrzy57LTEyEVz/YhhKhBbBjIFb4+0rOV8GhQGkwAvuuB714oe0DHunr3E48HpNeNlgkAIGaNOMsB7Cep5xbzPFJqlw8Lr8m/TE/1tbZ8U0gGZNL7JUrGc9CCSmlM/Ce+G7LosswmXb5rzJLyw73cqIF8bK2qhs3EKZIhxrZ1yrorT5sH9kLDliToNotpDRDFwoXy4aYM9gqTSfVE+P5qnDKSpQliEimw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=citrix.com; dmarc=pass action=none header.from=citrix.com;
 dkim=pass header.d=citrix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=citrix.onmicrosoft.com; s=selector2-citrix-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jag+bhiISty7hZB+fsK/uxdv1w8qJWzpYO6bz+oiOVs=;
 b=R1i1ZITVB10HbyzRHJbHQsKWLcSSN/dmFwd/7WnJb8howkCSOXzVzroTTWz18QPTIE6j8+gwFP2XYVTaDaQqeFTmfE3zy5s/RvAklYCGaciykhlVb/pbKtOi7arvRgQ8S4t8j6ssi1sH6COZTWw8a6IMhIwnosbig3/ULauERXE=
From: Andrew Cooper <Andrew.Cooper3@citrix.com>
To: Salvatore Bonaccorso <carnil@debian.org>,
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
CC: "xen-announce@lists.xen.org" <xen-announce@lists.xen.org>,
	"xen-devel@lists.xen.org" <xen-devel@lists.xen.org>,
	"xen-users@lists.xen.org" <xen-users@lists.xen.org>, Xen.org security team
	<security-team-members@xen.org>
Thread-Topic: [oss-security] Xen Security Advisory 407 v1
 (CVE-2022-23816,CVE-2022-23825,CVE-2022-29900) - Retbleed - arbitrary
 speculative code execution with return instructions
Thread-Index: AQHYlg2ccsX8+KDnKEKtDRtooLJ01a17HqSAgAACEACAAOjBAA==
Date: Wed, 13 Jul 2022 09:27:34 +0000
Message-ID: <57b84d81-b689-f05f-d4a8-9967078fdc04@citrix.com>
References: <E1oBIrq-0007mF-D5@xenbits.xenproject.org>
 <Ys3LCx6LmRFF547K@eldamar.lan> <Ys3MxgqixXKIMg/T@eldamar.lan>
In-Reply-To: <Ys3MxgqixXKIMg/T@eldamar.lan>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=citrix.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 40f90482-b21d-4f98-1697-08da64b1eb3e
x-ms-traffictypediagnostic: BL1PR03MB6040:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 VRiHG5EumGCYwOnePtUOYjuej3lAqJ4A9asROr43AiZwMKuNICXTbtkAf2PoSMtR0UihWMLebaZ39gjse5+Hd0UDNDLZpzMd02NXq0jpawkKUQmh6SP7dmp/JuTD2tYrw0vjS9A8l8vkokoGyStsXk09YYXi1APRu20Rck6h03hdDC3EqamPfmgvBONFmrp7vNVd0ezghl1Bgq9JiHmIl76tkdxF2Y3X2tjkWV6ZZBUJntjsi2Nc+JLfppa6Ik0Qgxsg3Bl2KlSPYk44SKOQHYZYK3+PgFen8EC/dted5tOckUqCyqbF4/WrXkQdojWvjilzlE5WSCRHp7eeGpkuhoHPcLG1xp5aZZbOyMYWOYXBUCYM15gTIIsJV+rd9U05hLqz7uHjAFYqOGZ+4ByPjD4emRtLOdnT23IR5PZORDus3AUltwxCONa9R/MPmEjAhGbB4WMjshHnei/S3E2I/KYWjX8fOTxSV4GrgF0Ms3yVBR9hbq+hzd/BzREbLy4PHlB6BHOal/L6Fa/q6XX/MYodvmupJx1FD4I8JgKz5vd7AVtyC2Xzas+2G6WxhiLI0JF9YQHSbpqFaHGkYTkgSy31JsFbqijy17QSeHivSEi5WtfoPD7/2RQKXtOT+O87BuaAJM9HJhjqpBZ6eumdtRKF2DZAEYXTWM3EN+9AR1Vq+UxQ2QWOVWvfIC1Up1d01sBoT3gsMZHnPXTTkn1HAQPll1OYvAoOLtziJ08CEoN06ETT+Ru3bpSaDgTBR9o4jt6qJImAy++qi3eR8L7gSdjOeNd6IaePRdQ06KZa9ebgdqV95AxBcdxV8LLTKs4IkOuNxI8mCmQhBiIFAGHC+59rtHqNZsDGJ17Xs6VW58XmEnh10q0y5wVYpjI2kqV2BwKosKnQ2+ek+n/04bytwTX0r77CbsnSor64ywRV9h8=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR03MB3623.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(136003)(366004)(396003)(39860400002)(376002)(186003)(82960400001)(38100700002)(2616005)(38070700005)(31686004)(15650500001)(2906002)(36756003)(5660300002)(8936002)(66446008)(8676002)(66556008)(66946007)(66476007)(71200400001)(41300700001)(122000001)(966005)(26005)(6486002)(6512007)(6506007)(478600001)(53546011)(4326008)(83380400001)(76116006)(86362001)(91956017)(31696002)(110136005)(54906003)(64756008)(316002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?OWRQRUd0Y2JBNXFDck9ZVGQvV01jVTN2WjdFSEdxcVNac3VFNUtCN1F6WXlO?=
 =?utf-8?B?d3ZZREpjTWFGTnRPblZhTTJZZVVSMldQZkpnL1pSNkE3MWk4NlBPSkt0R1F3?=
 =?utf-8?B?amZlbi93bG9BdzVOYVg2Tkg1b3NuUFJKUlFHc0dZUHdMS1RGOWFEYXRrdGxn?=
 =?utf-8?B?TUFWSXpQVkdoNGxRR3FmUFpRSnl4OCs5eDdWQWJnREwwQ2didzhqSVB0Z3ll?=
 =?utf-8?B?ZnVndC9hWTBmTkZFVkdabmtYd2piZGZ3M0pLWW8wRFB5ZUtrU2pzVzlYRzl0?=
 =?utf-8?B?WmhyeFBQRGhtOWFhcUNEa0hQQkJaYnU3eUJDOHptVG5uZGFtZVJ6ODY1c0pm?=
 =?utf-8?B?ZjlBK2lDbUtpNHFNdnczdWt2eW4zdHpQV21hOWJPbnBMa2R5cUxRVGpYSFc5?=
 =?utf-8?B?M2xoZ1NrRHJySHR3V0RzTU5VUHVuMlp5aTJQK0ZzM1BjeXRIQStrME1GVlp3?=
 =?utf-8?B?T0Rwd1AxYTR3TjQ2Nm9TVnNxNG9NQWZ5MXZ3VUNYdEpTUmJMN0drUVh4TW5q?=
 =?utf-8?B?dnlaVnhVRGpFWjlQeTR4aVFhdFZKc2xHZ0Y2Y0NlV1MzNktWVlBGUmY5SlFx?=
 =?utf-8?B?SUdSeXZ1Y1ZtMU9PaHJHY0JQbUxodVJDNTA1TFRCWmsrLzIwQnFSQUxmSGx4?=
 =?utf-8?B?NHkrM1U4TXRrcE1HWGMrejNSVWtlZFhTME82aHlleHJxT1V3ZzViSjRuMjYr?=
 =?utf-8?B?ZVRnelMydnEzMmVPTzJxeTF3Q3FCUnlqQkNLMHkxczZIZHo2UnNZTG42UWtV?=
 =?utf-8?B?K3NpdzBtbzhKRGJKRldaSWcwYnZiWGNGV3ZiY3o2bW1YektLd3FZd0dUUEp1?=
 =?utf-8?B?OFBrT3JjdXJISzdyWEE0SXVUemc1MDZYdW5HYlV3dVoxZTdOdHBkSUtnc211?=
 =?utf-8?B?NXl4YmwxR1k4a0xweUNkWVpSbnNUNUdkblR2SWZtSEFYR0dUYWFBT1FMMTlr?=
 =?utf-8?B?TTEzNS9JSnJKNS9GR2E3NnZZbnlaWnJLSTVJK3I3bGRzRjR6TG1FbVdwdS9Y?=
 =?utf-8?B?bG1PS2dTMklRQjNSaEVJWnFlNFdaSmZUSzErK0pYdnhPVFoxMU1zcUhhUEZS?=
 =?utf-8?B?cHlpenRRcXdPRmFrYjNpSGd1RjlqUnBIWjZlWGZkRVFNTkNMMW8zd1JHNk51?=
 =?utf-8?B?WmYzRlhTbHhvaDVaT2ZkcVhqTWlTdlAwNjZhRXNIZ1g4TW02WDhxWDFrcGxx?=
 =?utf-8?B?d1BzMzd6SitEOHRCZ3pSQ21mK1hiRWNsRDRha3hCQnEybkNOcDVZQVFTMzJk?=
 =?utf-8?B?VWpUanNpampvR3ZhK0dicm83cHl3OXFCbWtmS2h5b25DNTJVb2U4T0xIbXVi?=
 =?utf-8?B?ZWtGbDFXaFVjTkxReXZjTG9RZlh5S2tpeldJenpLMHJwbXNITWcvTlIrTEdj?=
 =?utf-8?B?NmtRTEZtdUQraHJjZ3EvRUJ6bGRlYVF3aFYzdlgxU1gweWRGd0JLMC8vMkpj?=
 =?utf-8?B?OWdTV3l3WXhpbEtaUTV2ZVo4OU9aSFBXN1FXYmh5cURzc0xZY3J5QktiMy8r?=
 =?utf-8?B?eUgxYVBMYlNMK29uRVd6cFpyaHdqQWFCOEY4REdObmNxM2VxcnBPL21VaEhM?=
 =?utf-8?B?ditRbjJDeDRoVkVvdWdIL0VMN1pab01KbXRRakdObGlWRnBrMlVvRmFZOXhW?=
 =?utf-8?B?NThocnllU2wrQWhiTERYdk9JV3JQTXJRNmNqQk84ak9NMG5JQkQrcUxPK3Y4?=
 =?utf-8?B?VENVLyt2ckl1dXpCTDMrRXNXWHlLS3FRMjlkMElXQ05QUjIvVndtNmhOcExE?=
 =?utf-8?B?Q0JxbGZ3R056N3JTSUt3TUdiUmRXaU9xcjNDbnV4QlU3a3V3eUg2Nlk3ZTZI?=
 =?utf-8?B?YXJ4SHZYQ0lTWFhCcVdMME1JMFUzSWxuRmZEZjkxQnBpdmY3Zi9jdXRKcjBQ?=
 =?utf-8?B?bFZaNHFjeHo2Q1grMGJKS1V2R1F2eXFvaHl0VlUwMWVTSldOcjlmNjlLcGJv?=
 =?utf-8?B?bVBoc2JTYzdXV3dEUFZNajNTblpzRDFLMXNZK2JsY1k2RnNYaWErRDIvbjlJ?=
 =?utf-8?B?TXkvd2QvTUhBSXFHRUltVlJrU1pFdW9LYkx5eUI0TUdLSFNvWjh1bXgra2xX?=
 =?utf-8?B?QXE1QXM0YVNHQzMzdWl1WWZQaW8wZ09oVE84QWQ0Y0hUSTZCcnhLc1g1TWxp?=
 =?utf-8?Q?KvwAZmPfGNty4U+Q+98FwiOrs?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1EA07CD1ECC1734594816B8F3F7D4A64@namprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: citrix.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR03MB3623.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40f90482-b21d-4f98-1697-08da64b1eb3e
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jul 2022 09:27:34.4581
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335836de-42ef-43a2-b145-348c2ee9ca5b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SPV8f463YWgdg4abjKjVpd56vzmgdqnKbAjEGeknYrhGTA5dxADVlmhs0ABeZRFd33y8Bdvkjcdlh+B4S9Y4GJ8GAg7S0kxHPI1FPCYBC08=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR03MB6040
Subject: Re: [oss-security] Xen Security Advisory 407 v1
 (CVE-2022-23816,CVE-2022-23825,CVE-2022-29900) - Retbleed - arbitrary
 speculative code execution with return instructions

T24gMTIvMDcvMjAyMiAyMDozNCwgU2FsdmF0b3JlIEJvbmFjY29yc28gd3Jv
dGU6DQo+IEhpLA0KPg0KPiBPbiBUdWUsIEp1bCAxMiwgMjAyMiBhdCAwOToy
NzowN1BNICswMjAwLCBTYWx2YXRvcmUgQm9uYWNjb3JzbyB3cm90ZToNCj4+
IEhpLA0KPj4NCj4+IE9uIFR1ZSwgSnVsIDEyLCAyMDIyIGF0IDA0OjM2OjEw
UE0gKzAwMDAsIFhlbi5vcmcgc2VjdXJpdHkgdGVhbSB3cm90ZToNCj4+PiAt
LS0tLUJFR0lOIFBHUCBTSUdORUQgTUVTU0FHRS0tLS0tDQo+Pj4gSGFzaDog
U0hBMjU2DQo+Pj4NCj4+PiAgWGVuIFNlY3VyaXR5IEFkdmlzb3J5IENWRS0y
MDIyLTIzODE2LENWRS0yMDIyLTIzODI1LENWRS0yMDIyLTI5OTAwIC8gWFNB
LTQwNw0KPj4+DQo+Pj4gICAgUmV0YmxlZWQgLSBhcmJpdHJhcnkgc3BlY3Vs
YXRpdmUgY29kZSBleGVjdXRpb24gd2l0aCByZXR1cm4gaW5zdHJ1Y3Rpb25z
DQo+Pj4NCj4+PiBJU1NVRSBERVNDUklQVElPTg0KPj4+ID09PT09PT09PT09
PT09PT09DQo+Pj4NCj4+PiBSZXNlYXJjaGVycyBhdCBFVEggWnVyaWNoIGhh
dmUgZGlzY292ZXJlZCBSZXRibGVlZCwgYWxsb3dpbmcgZm9yDQo+Pj4gYXJi
aXRyYXJ5IHNwZWN1bGF0aXZlIGV4ZWN1dGlvbiBpbiBhIHZpY3RpbSBjb250
ZXh0Lg0KPj4+DQo+Pj4gRm9yIG1vcmUgZGV0YWlscywgc2VlOg0KPj4+ICAg
aHR0cHM6Ly9jb21zZWMuZXRoei5jaC9yZXRibGVlZA0KPj4+DQo+Pj4gRVRI
IFp1cmljaCBoYXZlIGFsbG9jYXRlZCBDVkUtMjAyMi0yOTkwMCBmb3IgQU1E
IGFuZCBDVkUtMjAyMi0yOTkwMSBmb3INCj4+PiBJbnRlbC4NCj4+Pg0KPj4+
IERlc3BpdGUgdGhlIHNpbWlsYXIgcHJlY29uZGl0aW9ucywgdGhlc2UgYXJl
IHZlcnkgZGlmZmVyZW50DQo+Pj4gbWljcm9hcmNoaXRlY3R1cmFsIGJlaGF2
aW91cnMgYmV0d2VlbiB2ZW5kb3JzLg0KPj4+DQo+Pj4gT24gQU1EIENQVXMs
IFJldGJsZWVkIGlzIG9uZSBzcGVjaWZpYyBpbnN0YW5jZSBvZiBhIG1vcmUg
Z2VuZXJhbA0KPj4+IG1pY3JvYXJjaGl0ZWN0dXJhbCBiZWhhdmlvdXIgY2Fs
bGVkIEJyYW5jaCBUeXBlIENvbmZ1c2lvbi4gIEFNRCBoYXZlDQo+Pj4gYXNz
aWduZWQgQ1ZFLTIwMjItMjM4MTYgKFJldGJsZWVkKSBhbmQgQ1ZFLTIwMjIt
MjM4MjUgKEJyYW5jaCBUeXBlDQo+Pj4gQ29uZnVzaW9uKS4NCj4+Pg0KPj4+
IEZvciBtb3JlIGRldGFpbHMsIHNlZToNCj4+PiAgIGh0dHBzOi8vd3d3LmFt
ZC5jb20vZW4vY29ycG9yYXRlL3Byb2R1Y3Qtc2VjdXJpdHkvYnVsbGV0aW4v
YW1kLXNiLTEwMzcNCj4+IElzIGl0IGNvbmZpcm1lZCB0aGF0IEFNRCBpcyBu
b3QgdXNpbmcgQ1ZFLTIwMjItMjk5MDA/IFRoZSBhYm92ZQ0KPj4gYW1kLXNi
LTEwMzcgcmVmZXJlbmNlcyBhcyB3ZWxsIGJvdGggQ1ZFLTIwMjItMjM4MjUg
KEJyYW5jaCBUeXBlDQo+PiBDb25mdXNpb24pIGFuZCBDVkUtMjAyMi0yOTkw
MCAoUkVUYmxlZWQpLCBzbyBJIGFzc3VtZSB0aGV5IGFncmVlZCB0bw0KPj4g
dXNlIENWRS0yMDIyLTI5OTAwIGZvciByZXRibGVlZD8NCj4+DQo+PiBTbyBz
aG91bGQgdGhlIFhlbiBhZHZpc29yeSBhcyB3ZWxsIHVzZSBDVkUtMjAyMi0y
MzgyNSxDVkUtMjAyMi0yOTkwMA0KPj4gYW5kIENWRS0yMDIyLTI5OTAxPw0K
PiBOZXZlcm1pbmQsIEkgbWlzc3VuZGVyc3Rvb2QgdGhlIHdvcmRpbmcgYW5k
IHRoZSBhZHZpc29yeSBqdXN0IG1lbnRpb25zDQo+IGFsbCB0aGUgcmVsYXRl
ZCBDVkVzIGNvcnJlY3RseSBhbmQgbWFkZSBhIHRoaW5rby4gSXQgbWlnaHQg
dHVybiBvdXQNCj4gdGhhdCBDVkUtMjAyMi0yMzgxNiB3aWxsIG5vdCBiZSB1
c2VkLCBidXQgdGhlbiB0aGUgdGl0bGUgd291bGQgcmVhZA0KPiBvbmx5IGFz
IA0KPg0KPiBYZW4gU2VjdXJpdHkgQWR2aXNvcnkgQ1ZFLTIwMjItMjM4MjUs
Q1ZFLTIwMjItMjk5MDAgLyBYU0EtNDA3DQo+DQo+IFNvIHBsZWFzZSBkaXNy
ZWdhcmQgdGhlIHF1ZXN0aW9uIGFib3ZlLg0KDQovc2lnaA0KDQpBTUQgY2hh
bmdlZCB0aGUgQ1ZFIGluIHRoZSBidWxsZXRpbiBiZXR3ZWVuIHRoZSBmaW5h
bCBkcmFmdCwgYW5kIHdoYXQNCndlbnQgcHVibGljLg0KDQpDVkUtMjAyMi0y
MzgxNiBoYXMgYmVlbiByZWZlcmVuY2VkIGJ5IG11bHRpcGxlIG90aGVyIHZl
bmRvcnMgdG9vLCBzbyBpcw0KZGVmaW5pdGVseSBvdXQgaW4gdGhlIHdvcmxk
LsKgIEhvcGVmdWxseSBNSVRSRSB3aWxsIGNsb3NlIG91dCBvbmUgb2YNCkNW
RS0yMDIyLTIzODE2IGFuZCBDVkUtMjAyMi0yOTkwMCBhcyBhIGR1cCBvZiB0
aGUgb3RoZXIuDQoNCkZvciBub3csIEkgdGhpbmsgdGhlIGxlYXN0IGNvbmZ1
c2luZyBvcHRpb24gaXMgdG8ga2VlcCBib3RoIHJlZmVyZW5jZWQuDQoNCn5B
bmRyZXcNCg==
