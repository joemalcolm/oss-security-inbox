Received: (qmail 3310 invoked by uid 550); 15 Mar 2023 09:34:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19951 invoked from network); 15 Mar 2023 09:26:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : to : subject :
 date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2022-7-12;
 bh=yWzTT0NilF9GhrdxO0/5B+kLNr/nNIrkcDcuEYp6gF0=;
 b=U7ZLLa/5FzaDUu3olgUzhZf7AWqvywqRrwvI/jSyt62f35M0VXDCo4tnsqpNL1SpTpJG
 icIeCsFSxYr/HvqxJt/v4KpFSle6cHrJDtVc5rhEC/k4BZcrdNlTYRrla6UL8UaYzryJ
 t8yfMJQkstkxnqqqo1griabLKZ2Fw5PZ7G5uJ64gJ9N7vhy9jcK931TyIA963bDpicCH
 8IGPgsr9UjPJC+7zzqwqxmoyU56WDUJbNfhh/7F9XRvBUNeK1YlE8JoyKxF3xpYlrVZu
 U3fhdyRULdO4K3PitZDlkWxciU71ChtrnOhNLgiVK0xJjwZ4cVZU9Zahz2CLID4JK6L+ Iw== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VXBRWE0RYBJRIqUcKL1XKZ5f2aYM5XIkmO4FTfE5D3RiCBl+4UZHUilSqC1qxpPA8+gOUTQ/64D6Z8oji34qpEPg/1X0gsYvMUFdUUmC7a7NoLHE/L0DfVqfOf673AdJhunj+T063HFAKrTmR9h5qDmgK4TXylHQNC36+SZ+MyASHEwg1Uo3Z3GMoUs1JbHPtgnZehffrGcVTkzlXdSZApYdVxrulUAXdCSbrLLAAxg784rj4iNHBu0SypiwrBMQ7THNbYlQo0sUXBc0LyFa/rKXmB/bqSS23893dvjsQQpTrTxAJOkvvm6SSiztnkx4Ig6JBnnKCBsxtUxVjrjTvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yWzTT0NilF9GhrdxO0/5B+kLNr/nNIrkcDcuEYp6gF0=;
 b=doFkMuoGIjInLmXXWWQ2vMrtbobTc363u0M7Bm161fMd64qSsf0gypXAtYObb9uDN45VcaXdL0P4F3cDxVGG6YQnSoaqSUsQHLhYwTRXyiZeHz4GlCpdLHF6vlzAczGQvJKYJ2H+yErZxIKvZMu2CHuCA0v+hAx3m8QQ9C09wyEQnntOb0B2qEYoHDNbk1R5dmsLYQ7HCsavkwCm3I/oI5ahJeiKWZSTSdDReSlmUufAdNSumzY7x9lyU9h1M18f8hQPxnJevlVeRa0fKJBxCpS3tnuca1Tx4LSUvGy9mwJI7EwTntqVVM6ltqOpvkK0ZmAbwo8lLwY+CngM9TyTOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yWzTT0NilF9GhrdxO0/5B+kLNr/nNIrkcDcuEYp6gF0=;
 b=lNMAlWikE8fpZMqAebSt0Ugtq2DDEMVo53CHap2KMtp2JUO9eRFrvklXpSv70/iX0KzU2JtRlhUOcTrtHvwSrXB7ncmtwrNtcG/pjuIanAMEKkTBz34v3horjjRGS5fTRbddgh51t+s9mYmbxIeOgeHuGe0mEJzZgnxMo5ee4TM=
From: Casper Dik <casper.dik@oracle.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [External] : Re: [oss-security] TTY pushback vulnerabilities /
 TIOCSTI
Thread-Index: AQHZVsY9VeYO0QZgIUeP4rfAooF9wa77hf4AgAAGZICAAAQkJw==
Date: Wed, 15 Mar 2023 09:26:24 +0000
Message-ID: 
 <DS7PR10MB5358E5511783501575C5C133FDBF9@DS7PR10MB5358.namprd10.prod.outlook.com>
References: <20230314095103.1ed76cc0.hanno@hboeck.de>
 <20230314205725.oqr3um7kkkyq7zr3@mutt-hbsd>
 <20230315094018.27d65aae@fabiankeil.de>
 <alpine.BSF.2.21.9999.2303152001170.67613@aneurin.horsfall.org>
In-Reply-To: <alpine.BSF.2.21.9999.2303152001170.67613@aneurin.horsfall.org>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BLAPR10MB5347:EE_|IA1PR10MB6243:EE_
x-ms-office365-filtering-correlation-id: 06fefc25-d2fc-4fff-0994-08db253758c0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 5Ut9UIn5jbK0y2TmB/Dy/1Wd5UWDyAgsGBqfDiMtNNdVaDnPW1NTy6MfhtnlWhPkAT3ilkCaQxssYxh00KllA8awtCoftrFbk195IEw1LEg1s/6O7l8hJDNFxDAaR94sxb7X4VZsw5VfLCw46MUbaqG+7hely7LtzDFxl748aL3iHVeGXamxzQ2lZPlJEWqLruAFyWOpyvy1UZDTNhl2mc6EDSzpRTw7YYSBQM537guDoR7FlKbluou9I1zwZ422p3WpMi7Xgo4FcBKM98QRtHLCob0s+lkYHE8Y12QvqSuxUp8aJDD1P4UCd8HqtYtEHKK9/nZZVhg6J+iVffwLH4k1MeGvngAng2y1Cj6cPgNMEzGUJzZOwvhiwOnHDMkAt0KjyumJnsXE0cMfZeo8vDgceBVtgcGCwlZFou4nMJ9IO5tdMFSDDx2YlwUZYFme6xukADLHwgYQYGd6hbQ+wmL4Fr1cpkm1D68v+yCLaVs2KwwbAZFwSh9P2bT6VQS7dZveDMpzXw+YrGXR76OkyzPcvHuvpRKn4gFnWv8ivvZN1mOTyDrZWSniSK1RDof6J+WsQZQtxf//jogatYNMWFgj8H0K29fZIGuMIizOq5mZ1qBeJEjZsb94aYa4TdDlZLa/FoAlM5o87pjfvTF7fk5jS0Zlh02bNUfJTtoy2vxOrijfVwXQxupBCBGa4PeQ9jhmgMrBFkRCM9XGobOJDQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BLAPR10MB5347.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(376002)(136003)(346002)(39860400002)(366004)(396003)(451199018)(33656002)(4744005)(44832011)(5660300002)(83380400001)(8676002)(186003)(71200400001)(6506007)(6486002)(9686003)(6512007)(76116006)(66446008)(38070700005)(91956017)(66946007)(66556008)(316002)(41300700001)(64756008)(8936002)(66476007)(6916009)(478600001)(86362001)(52536014)(38100700002)(15650500001)(2906002)(122000001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?RM7S51vPn1b7YY3q7bz9NQI03E0O0gRfllq+qD6uOQ2JIUTuKosuEUNft4tI?=
 =?us-ascii?Q?CjEnAenye6Ky1k+TcPIpuaVokUU+2aLunUBWXX8iQr4y7jiq1lFBToKTpGq1?=
 =?us-ascii?Q?xUgmH+285xKXoY1+Il1fzB52vkmGjcbQYhgYZsi9UzdtekhQtu4Sq0TR12v7?=
 =?us-ascii?Q?xlZHytFIW9DpjksE0LFh/3P0gbA498kl1j6jcJR0ok8TFfqF8IOoAxNfOjg5?=
 =?us-ascii?Q?kW9cOtyuzYThVJAldLIFVLieX4ZwN0MziFstV89WSEb+8h2CCCdoKdHpKysj?=
 =?us-ascii?Q?5MSEuEeuBQ4mw+Onv9/knBOtyXrVXt08pV/QzLXm87ckkTsYQqo+RNtLNsbB?=
 =?us-ascii?Q?Bzy/6pzYxXim4fiu2CO/VhITSMaLP/J0zqScdKVxuGexlYQX91fFO17ed9/A?=
 =?us-ascii?Q?8LmuaTmPYvxJx/aS6uH5q0+k9PhjBw9T+L/BcmP+MQIzy9NwoR9CggIRHUYH?=
 =?us-ascii?Q?REXJ5BXCBr8CQjKAW40n1hK39PChheadNlNwzmSyYYWMylb4HoLva1VcyE9v?=
 =?us-ascii?Q?soqGQZdjcIlx/Kw1F6nLfajHkIaZ0nCoRXcq5ZVvvXs1HZ9V86yQ/bo/YJR1?=
 =?us-ascii?Q?IoTG0FGJElnENNFMavZMbVk2avZPODWvJ00DYzhjiXoyllX9+N5/bAIPhBxz?=
 =?us-ascii?Q?Dq22jgNvkJvmPyvcg99ZjM2d1Xo398SM3hhRJMrmWXzgKRfqSdexT4ruVILa?=
 =?us-ascii?Q?fK0nrci0JyQl0FW2PEo5l7GCNNIFmVCjmfz/LOFbHABKnzZAGY0K9jGpNJYs?=
 =?us-ascii?Q?USbMKPKC4nZ6oP4bc3SJmjqPB5LW0hCNV08PB2IG/HoEHMas3Cayrr51ja3d?=
 =?us-ascii?Q?Hw0oOO2juAhgUcE79I5hMGj7im5RPbSSQXj1mT/f3Ur2rhuSiYUP0RAvm3wx?=
 =?us-ascii?Q?RGMDa1brAMx0b97F+0hBmrNGfTvao0Bk7bHGcxH3XQf5EG49u+wOz+Q7UScD?=
 =?us-ascii?Q?JUJQCdElMh5gtUZGTye1aGEtaeN04p9YmNrDgufZp40v84bbCRSY/ANwzU6O?=
 =?us-ascii?Q?WwhPp1otW1OFmE9SYNUVrDKAXP7LqTbqYOYPqqAGH5nuMLTZwA0gqwZp9Gw/?=
 =?us-ascii?Q?RGZeSOA+WeTN+VH79ynw5ZjeBoOROja5Ntmy8qFu1Coas7eTSxWNH0+t/ZBk?=
 =?us-ascii?Q?Z5d64aswhDLlQVYtd1WV/nbKQOdCC3Xd8zh0+eie8Jax/mjqLWW+TtmLMWbd?=
 =?us-ascii?Q?B0KH/8TnL/YfhJPS6WQaiDV2GGLawhu2A7i5wpkvUY/S7F6htNOQlwNqgMLl?=
 =?us-ascii?Q?klE4fBXU34Wji/0YUFzGBWtxXQPtz+HsGn4vEQIa3D7ZCMvGHXPoIMJd1Egr?=
 =?us-ascii?Q?mpaImjo8GKeG0u3aWoqbJXJVQljMrRzu97klGKLISp4tDstB0zw+3r8BIGSY?=
 =?us-ascii?Q?J4C0rBZRMxj5A7pgCmvWfH5iU6M8JluiyNnWivXHShQ6DVWQcN/V6JE7qHUJ?=
 =?us-ascii?Q?Ljs37E/8wW2FnlD6HVGxmaxL5mp/ctRbmrqJGHV34VxUy8svEXzSL/k7hSEH?=
 =?us-ascii?Q?zoIj+mrv5URgZ23IUog8j3/L2QbT7wwQZiZeW+adnoHrgdi3R++AvdJjCOUf?=
 =?us-ascii?Q?fyPcvCNLB6tJSXbo+aovJaK+S6XEl1kXAgtSXW0Sc4ZsBVORLwwG9uCrV8EI?=
 =?us-ascii?Q?opYHMrE6CUQxljzkhmla7Ek=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	4NGFUjwupTcZRbuce3VGlmOgZwQ0gPV8iGmFI425NEw3ncOUvwN3Io68rboejR48LbXMJ5ftI3ZtX/94C10lWfXA8sCs6TE5QCVOeYz+G8JvAcxXpyPBcQOG0aWYonYopMCguDRFGQiyJRY7RidMGRn1MTwzBeoyJC5YeStBZmHo7JI2jH4fBy41U6oKp1+m1fFr2y7YfHi2p4sxnbpHbr5A4FHp+UlRqkVVV879C6gkFp5/3PIPPMg7MWtgMQMnQxWBR1Ukq5gMKL2s8+X6MjxVtL4f5eLWpRTXWQZUTaBOrhsyA5Hr43jAa7uthU4UadOY37Lwqxd3/9R+V93b5VxVr9Wl87SAvvxrXa34SPfJpSHsUNpuGONl5+A4ybIGs9L6BlzRsGenvx4I+Tai5Tb9VDqinFh6T93PX0YygZF90jqh+YpLQS1BjKoK3MEuQ8Lj+/m6N7LTr+LwspjFX4V9lbekeI9fGvdtcbzbrhBRVWfTbh1fZ5DUQUNKTBRiyT6Q1mlKKqx9ClV3eP9pI6W5+MV7THrhEWdG9mPhe7tbBVSMBNRgXz1imdJcEzNn0dUHfrdmtgguSQWB1PiuACbvI8E1+gDB+EsQ+65FCksTnYDbc447hLsVR2ukjO+1+htO4ul35LSEfEKUMNj6+EvIDx7CofD2a4z2/t2lN1hrbmiGsdGSUgpoYp2ZCw/C+TgLh8qRLO9iQB+ufLWIF3nwc0wzQ1zB24nUcu8sXwvqV9kkdF1DldyJu3TG81R4/cAkiLZTPd/inIYF+FSU9A==
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BLAPR10MB5347.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06fefc25-d2fc-4fff-0994-08db253758c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2023 09:26:24.5154
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /KzOzIqo2Kg0PUh9VmNOPfzTkZ+vOctA1vBfRa5WhSpsxij3fxrJc8b3dzzgnktbwnUJZLD5h15TmWmrMyPgmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB6243
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-15_04,2023-03-14_02,2023-02-09_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=694 phishscore=0
 malwarescore=0 adultscore=0 suspectscore=0 spamscore=0 mlxscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2302240000 definitions=main-2303150079
X-Proofpoint-GUID: 3u1XqiY4lsKVjBb2mqxVAxsJonto2alb
X-Proofpoint-ORIG-GUID: 3u1XqiY4lsKVjBb2mqxVAxsJonto2alb
Subject: Re: [oss-security] TTY pushback vulnerabilities / TIOCSTI

>On Wed, 15 Mar 2023, Fabian Keil wrote:

>> In ElectroBSD I removed TIOCSTI support in 2017 [0] and haven't noticed
>> any problems.

>I hate tossing out functionality; would you not make it a privileged
>operation instead?

>-- Dave


I think it makes it mostly useless.

In Solaris we've changed how TIOCSTI works; when a process reads the
packet with the stuffed input, it then checks the credential of the
sender.   So while the stuffed input is still echoed but ignored:

# su nobody -c tiocsti
exit
echo Payload as `whoami`
#

But when having root calling tciosti, you get:

# su root -c tiocsti
exit
echo Payload as `whoami`
# exit
Payload as root

(The exit here is not needed)

Casper=
