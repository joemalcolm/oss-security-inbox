Received: (qmail 3679 invoked by uid 550); 3 Apr 2024 13:04:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18292 invoked from network); 3 Apr 2024 02:24:28 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M/duIPmsWqvhQsBk8Epf4z5XNPQvhAr5SAElqVoUGNj+2i7is+61/To8+gTpVXy28qMRQrjVNiILa7g6fqZ5ykVMByvjsAVTOguqyVvcYZHQ66FTXyoboTdaZOwHsRD2v2h+P6k9Ow8OcWLD41DDJPytuq2peDOwq33bLuiwgj/SgrgRpZKUtP+9D2Etm9ym3qNzm2c7iUd1fICZlZjccpWJoRzLmkWHBQEpur4gl3gAN6UcPdrgKnDVwakfIqbdlx7oo2IX7wfTr3H3kCl0XRn18ipDcluLrHNXCJt4Zutvpe4Wk4kag2eHL3TbnyBjTGAlU/A0/BiDJ3IlR3ZRow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tgqPrWuDFw3E9SwGQYOFH9ymrD3WT0GojAdRmrGoPNE=;
 b=FUROZoBx9jSFT8O3Pr7W+a5RybFr6buaJQyaTeGVOjJTs+PUc6TemaGrZqoMJhPjKUWm5b9h3ij4dFc20t0XDq9hvU026z2C3+dZJjEbfBlL3O+1HOxd8Keo/93LEvQGaR39e0NfWfCuqsdfw+Jdpy8NUK10xUz+J/VXm6aRD9OnngFvCs/LXl8hPTGU9KWtApwMoZ4CoEn+9TrT0V5UU/HjFLNmdgpowX6BGZGK88plEuP6Pmv+KIvCey4STNS9u3RZOyz2aFCXFlMbdc8G+yzJsJj2NALruV3fxW+VfJtIMY/36St148IAYidyTQ5FfjPOXTu3MdG4Q4ngg7oblA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bristol.ac.uk; dmarc=pass action=none
 header.from=bristol.ac.uk; dkim=pass header.d=bristol.ac.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bristol.ac.uk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tgqPrWuDFw3E9SwGQYOFH9ymrD3WT0GojAdRmrGoPNE=;
 b=aXq/V4YGHphspsHWZ5jEmsZCocrAH69t1J31gOAfyx7DyHLRMiSPVyOgtfrZobOAPeHFKbZerZ6yWxJM8e/DKxuGBT3ZvbFbp+7S3Phi/EHFHiSESja539TxRz88tTTj88BP1mVYyxNWMFiSldXppapjDif808oVWkw6CCfKBCylCvSwGAp5+JFFa8/wKAkKWjKYSNTko90eqNwRFhaIsgfDa5K9ddSknYirWQBs49l0ujF6w+ixZNNgiF2gEgPNlV/kzaTqvPlxO7XxupYi0AcFopUc1Cx8fwSwwxDo58F93V2n1cWTSqEt+P8jV/GLDz6VuXfne6UPITh8HzB7Dw==
From: Maysara Alhindi <maysara.alhindi@bristol.ac.uk>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: Looking for developers who know how to use Seccomp for a paid
 study
Thread-Index: AQHahW4C1oSLiPyi7UuGqOdqxQytDQ==
Date: Wed, 3 Apr 2024 02:24:20 +0000
Message-ID:
 <HE1PR06MB4137DB91DDCDC96DD46B3F10AE3D2@HE1PR06MB4137.eurprd06.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: HE1PR06MB4137:EE_|GV1PR06MB8404:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 OUIpaUx9wrymR6hR7/PIhIkauK3Cgd9eWCBRvtc30sH9txoHsL27EDsVu+KCPFIJfKLfClZR3bL9Yl6IG5uZ2Njzx7p6ET6oWQCOmpLsb1SrbQcviJVshTxVlT2l6STzQEZ1sZYdo47oX2SmsadlvGTtusCsp/PVufu77kXFq3EppDB/TZBN6y7TrKs2ho5kOzmgcm5yqsjkyKh/ItOZmn4aYQP+17C5Tzg8MTpJtNJ1s01Vll2JEsz8BG7mFS2rv5Ue8bKODZRtI4I/juMBEW8dX9xzDQrpDL9xXrXiRvbjhQ/OVayv5k4gvFuyPvIAjs5buw0gDlnyp8HXcXgnl9uHKLrbPFm40TdhPD7L8ohLBuOczqoE8SJ0XO38nmPHZzCKfvaHHCohh73gFWC3Y1gIqWtz09SoBHiPnpz/51O/q59nMUUCIbIOjEyq2zjyVSUBUopVzxXK+/gaLByOgrk3Lwer3Vi/I7cguIJQHps+JXNHw/z/XKT/InwuawbTStUVOr3jIYvO9aQLP948CzY0AF7eKEvCDjZGXkv34CNF0p4QuPROo1JlecRTnwTov8lJeem8MfX6S+3yGFku3gEUP3Bt4WtwPb1D048VXwmbpZB0X82XiWZhcfUGU7h/uBF5jhqYbFt4zrTdMMzdug87abmRfcRmIAnQMyNMzWk=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HE1PR06MB4137.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(366007)(1800799015);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?VB2Wn+ryefEccqt1L0VQ+KxnQLcWZXY9whwON0StOo4anc9mAiLV+j+oDb?=
 =?iso-8859-1?Q?yCJZmobbSEYl5XcvAyXdlD9AhnSIQDttAF5hEpYX/6vMfWpY0rbmeV1mhy?=
 =?iso-8859-1?Q?k82Exp2F9EtQ1Tjx7bwqJf6akWZtwxjGHTr6f3tyIkQiz3xFO6+g5xAyao?=
 =?iso-8859-1?Q?n/hnwAEshY7bv03BfqO/Tu7vgm2cBb1M24pqlWq+XjV/FUYCSfvIzljokT?=
 =?iso-8859-1?Q?sdSPZKaUtA7ka0fXz9VN9vs+pY6MD5goaaeulNN72gTMsE+nqUFcwuR0bN?=
 =?iso-8859-1?Q?5wO+r7ashe/Ivmcc6zeW4twgqo+bvNmcNRBQt9iaZqzq3D2nNL6O+NQkou?=
 =?iso-8859-1?Q?VtzpeKm59ecs951TpYLRSdHndOUZs1zJVAJufpHO9xwuynnA5ym5csvMLh?=
 =?iso-8859-1?Q?U94iECoakuRa34VzHR2yjqxieWidlkkVtrDkPWfUHYbw8GFxRWkHygUOTT?=
 =?iso-8859-1?Q?Az/NTHQURCG+5fFjx4cRwpiGhFXZ3L0qN0jRmvqN5sLNVDJ8jBZB5w2LgB?=
 =?iso-8859-1?Q?kh6el7Xq4g9RQXSA7d/Mg26m1wzPiKJpLf9cwvG/9S7N5L+IbngqEmHV/9?=
 =?iso-8859-1?Q?LUCCrpqmCAC6qK5DIe59uz+U4B20tp0qBObElTjL+lbOY1LZdgz4ppEkO7?=
 =?iso-8859-1?Q?m2Kq31RIDWZEwfIQwEbAI0aU/KOmeDN7bpX79iYF4NzcRssKOhwZrnPlQp?=
 =?iso-8859-1?Q?dG3eypkkFPn2o/JPP54+NOEidzxU53VLP7RW8rakVZdhH6jtZ8sL7DRzAq?=
 =?iso-8859-1?Q?WvewZAW/NjR4SB7FhxGQqyj017g0m0dAgZ5YL8VxbZpb2K7ZNd5jpbPucG?=
 =?iso-8859-1?Q?/8ULuLYQUSpBGm8GlLhaLYcmDhVuTOxvtP+BaeyHAyhwqM/VpamPtD/VE4?=
 =?iso-8859-1?Q?ob5olhCPjWWVUL//EuSkAEmW34AZ5/uGJop+0GucEw94vc9Vr7mVZVHgD9?=
 =?iso-8859-1?Q?huCecF0ZiZe7RXnLaA+ORTTuuk/jRv+eX2/+o6ljZUK+yTS8VxP9qvHhKn?=
 =?iso-8859-1?Q?KN0n5DRKwF6I6XdLDsjDUXwx4AwjjSD2ADPMTKjt09U51TNbC2sU4EBu8/?=
 =?iso-8859-1?Q?thn5MDIedWftHqeoGCMp+cUXebK2cZlvHiI9G09WwP6dVPyQFY4U88KA6X?=
 =?iso-8859-1?Q?cEFnT6kcdnpxBbSruHYdEzrkELq3nga9uw2W8hixzRo6XGsVahRUe8xLBE?=
 =?iso-8859-1?Q?5F6EJ3aCSaEBd7hV7dd7YOP3KnWR0UqVRXVeeUgbGmY8QnPlPa1UmTHP9d?=
 =?iso-8859-1?Q?ihFOOjajQMoI5hbBTPzm9Al4x85+D4V+5sL3jZg4glbXPkFoAXKu/j3l9B?=
 =?iso-8859-1?Q?2IcymfA3l/Cpr4jnRzmxi7GDUzv1lkS47uhH12Hvtuq++MNXMJQch/ZhYa?=
 =?iso-8859-1?Q?9BF1FQuqGYz5QEHk5ghRHHEhVZfWdLa4V8AlnvS7voKAWtUQotJnPL4QFu?=
 =?iso-8859-1?Q?CVEOVLFkm6C64S+WflmK1ChH5zZ0fYvCAxYKGStFLyNLd6H5UWr/Q4dvei?=
 =?iso-8859-1?Q?mu+EYKzXIjC9PeC1sQ9MbewD2P96udhx8rMDS0fBTpWTnq0wImC5LhyzlV?=
 =?iso-8859-1?Q?NzAFwYsPKFc6FEwdQkzk4tMCveI6dTxP3lrQlKYun9xoTORSPpAPonj3y1?=
 =?iso-8859-1?Q?88qlsceFHoIzo=3D?=
Content-Type: multipart/alternative;
	boundary="_000_HE1PR06MB4137DB91DDCDC96DD46B3F10AE3D2HE1PR06MB4137eurp_"
MIME-Version: 1.0
X-OriginatorOrg: bristol.ac.uk
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: HE1PR06MB4137.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ffc3ed5-028b-4ff1-7da9-08dc53852bb7
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2024 02:24:20.8360
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b2e47f30-cd7d-4a4e-a5da-b18cf1a4151b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0ve42khDAj5thcWDY92FKmSVYfHZAMvHH00Gzg7Mi5qIfrTOCnIVFdTn/OH/bSqmRex34HYfOsqDidI/Y03MTg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR06MB8404
Subject: [oss-security] Looking for developers who know how to use Seccomp for a paid study

--_000_HE1PR06MB4137DB91DDCDC96DD46B3F10AE3D2HE1PR06MB4137eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I am Maysara, a PhD student at the University of Bristol.

I am looking for C developers who have experience with Seccomp for a 1.5-ho=
ur study where you will be asked to use Seccomp to sandbox a simple C progr=
am. You will get  (200=A3 Amazon voucher) as a reimbursement for your time.

This study aims to evaluate the usability of Seccomp and is part of a PhD p=
roject.

If you are interested, feel free to email me at:
dl21421 at bristol.ac.uk

The study has been approved by the ethics committee of the university, and =
I am happy to provide the full details of the study and answer any question=
s.

Appreciate your help,
Maysara.

--_000_HE1PR06MB4137DB91DDCDC96DD46B3F10AE3D2HE1PR06MB4137eurp_--
