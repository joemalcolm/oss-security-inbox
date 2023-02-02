Received: (qmail 5680 invoked by uid 550); 2 Feb 2023 22:38:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5659 invoked from network); 2 Feb 2023 22:38:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=qualyscom;
 bh=p6fizB+lDP1ezIO1JIQ9a9AYxAvhmOvbBuhD9FuVXRU=;
 b=QYcyARbJ59uIWf627gjO9rJ0c5gsJPHzZqyDT3QCenp8VEVdVeaMyZAmQTxGAo7B0xCp
 kbiyaNrSfA22aEX3g5dlCatUqDrBRgd4QGGzNUsBuzPPe1RmF/6AgjS16Y7madn7Xbe9
 KmONIi6epdaB/KeQFwgzDsFsVoFDXpkbKxpK9+n4fzzkAX3wkpYLtjg8e00uK4OOdV7I
 8ineWu737NfXQlDaDjk+fZaK46krQ4NNanQzRnQUytgAl6aGoaO7zXo+rahXreNGwO8e
 6tBOMgL6dys9NVg1rArqNUkuLTY9qs80PNTPeip9AV7JJ9v1BCpCmdKiwtaAU2Xt5Oxt sg== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eT76jySKF7R52j9jn6VTizs4phNCCpr530D8w60UJeRl1dnOU9SVAyy+vUf7rOhSAEFsthSosEJZaf1vsrnHTqHb/MLbDkbw7twN+ZTEENtHdNB9iY/rJQzxF/d7gF4KIQlnkwTYgMf9QvpmDMxjDF6x9LCNjHowFK4qGnbVPu7wbs4rruUQoRVVVrHn9jtZwdh8hHmqeS/W52ol2zF4TJY6nc+RakhD42paHX4YJHXbZSvZiM6lCoeTwasZYS1AVTLNfVEBfvkUzxTL2BTYztQUXhRq8vVDvyWtJXcSPAQ/XrrF3bcaCxJdxOL9It+K6aXDJHAR1Xldv/5bi2dC7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p6fizB+lDP1ezIO1JIQ9a9AYxAvhmOvbBuhD9FuVXRU=;
 b=LrgE62AMMxxNHLhuL9SZj6X2ss6A5Za7AnVZpzKy3wnEUiaRuSaqNY+UTg9vNSJzRQbqNLqCui1kiQ06LKr149QHqxVjnBOjMpWjjrGlN+zGVNcWN90dPlYtIQn2pOdg+zRyRU6HX7qkGyX0izPRiyAag0tm2Hln2T7ChFg9mTLpOHv/YYO9Fy7u1khRkNgkXrEZ+3Q05Zu06JNQ5dbs1ezdDST0ofa6pPcJWfLH234rrCCbxsUJnbsgjm3pBpn1UNEYffVZtb1bBEEdxmYyxHVnnu6oOACqcBrFTNqfu2RRqu2tz/evd+ORreeg7zXNc2hmw0M4fqhOPfAd27NgOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p6fizB+lDP1ezIO1JIQ9a9AYxAvhmOvbBuhD9FuVXRU=;
 b=IxyjOgXLgGclgUT9FmfnMVuIaTdPEmBAl3DUH49ripz6io2GT169/wAdhSge+VIzBdf2ABRYI4pWHmVRrso5FJ+o+FCe230RvZbQmn/SaMa0da4vVMHNvrBCR/MVWvJ4M3zniNUsIrn1ElT1ms3MLguZLJ5mWDhcGT+iPin/h5zKuDXoDI8I4r81XCXVes6k77/AUkqV8B3LUCd1vn3yC4rb/8lcTaEYWMXvzsEFEzWoof8geRepuZ78yjL7j14c4aagwmqpwqgeOuhcuzJO5iJLk0bbcc+GOyfhcY0LNXq8hWX/TTctxT4QK+GVmMRI2A97dzMvaFYwKAN128lzzw==
From: Qualys Security Advisory <qsa@qualys.com>
To: Georgi Guninski <gguninski@gmail.com>
CC: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] double-free vulnerability in OpenSSH server 9.1
Thread-Index: AQHZNwaM3H4tU8wi1kuZnlZK7gqcT668BM+AgAA7SQA=
Date: Thu, 2 Feb 2023 22:38:23 +0000
Message-ID: <20230202223830.GA1002@localhost.localdomain>
References: <20230202130212.GA15689@localhost.localdomain>
 <CAGUWgD92EyHBNQLt3eGoEq2mBkaoWS2AGLN1dFE2JFw+6kMv8w@mail.gmail.com>
In-Reply-To: 
 <CAGUWgD92EyHBNQLt3eGoEq2mBkaoWS2AGLN1dFE2JFw+6kMv8w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR06MB6910:EE_|BN7PR06MB3892:EE_
x-ms-office365-filtering-correlation-id: 0115e5b0-b360-4c86-bb50-08db056e31b0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 cjh/ZOci1ZzIWcCwL+7fN7FdGr6irsjcRLZPg8SI8BwdoC44F67qRfQjqAosKMWCsGjgwW1ntsVlB9sZjQrvaq+AZ2mIQBOnIK+bsSaLP1V4vFcITipOGUYKaKc1jLuXZyiA9R4UAJSEK4IlrJBpvSthJrUy8zF91nk/R6Dp7vq1XIpypcSfyLihtEqvSrfsRqAy/ZSOXHYktiP6+TbVCvvs6JPYcI7UKhqFMXpqO8+0JnqUFrLSvobucK+lEGRrTmPUfXBj6F9lvhJW7INUev71KumFfYFnOmnJGUD+RFXTtHzHBNj5E7dBfcarlQv1YS63VkKxu4VUrUSHSooL5rncE5d7KIF5jSBNM7S+ZpjBRbo4PmY1Nf7ufXfYpU6Ckho0UbjIWlZayvEB8V3qI/j01kZq32DNg8EIHmyoQLw7dUm0NRfGIGOdE1clKxJWG9FJybmo7T2D4+OC6UkV5mv+W0jDfknR2Mz97Pq7yQUhFeMd3MlN4ShAR+2OyT/0XihctErkgcWRym/J2EnZZgfnVphjg6++BXZu9aS5FkxOCQqIBGevvWYlZ72iScJarudebURIh3aeOLkL6FyJPNl7onquoJN6F4VhggOTCfZYtORJznOcLzLOQBeIO2qCjTgPcMQ1thGRnwB9S0BNECPEYAXezvku4pl0FS9XipM2CMIHN4voh8tcm78I1PstzaEShiEh24P6qqDAz1IogA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(346002)(396003)(136003)(376002)(366004)(39860400002)(451199018)(8936002)(4744005)(41300700001)(1076003)(6506007)(83380400001)(2906002)(71200400001)(4326008)(33656002)(66946007)(8676002)(66556008)(66446008)(91956017)(76116006)(64756008)(66476007)(6916009)(5660300002)(122000001)(66899018)(478600001)(186003)(6486002)(9686003)(6512007)(55236004)(15650500001)(26005)(316002)(38100700002)(86362001)(38070700005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?OssMhqNAlSFSMjLy9zVDNmXaEV6bSfawsYleCYDQf8fws0ApSg0ZzZJnC+xe?=
 =?us-ascii?Q?RFQI6FtFl8mf4TLMRIvxcKsIBEqh3o9kbhG/hlKLlopijFp8Wn/aL+s7liJw?=
 =?us-ascii?Q?1WFuDoRF2ZpUJnum+mdWsTz4ud6eH0ahZO7Iomh9I221MHY9CG9HaBuyaAfz?=
 =?us-ascii?Q?mW9BP7V0f4amlKybUMBibhg4SPEK1w2GgxmSkK8rI9e7jrjxYPtEwUcKvuxm?=
 =?us-ascii?Q?PLq28OYl7bp7Wc8ogqpZ/9oOry1kQa4DLvctDpFPLnsDKEGk4UQeX1OoLplz?=
 =?us-ascii?Q?kKVmeVThI/dfKc2DBU2dTU+ulszdyIHwo1w6hsNIiES31CQmY0Q8jqyKxrnt?=
 =?us-ascii?Q?8kkXMWtgPsRrnDt8JWbU4ZGpk/T1RxG631+dVDxLnj4+hKnKEs//tM9XPfKD?=
 =?us-ascii?Q?2Yd2Hl1wP1haXmjb1wF8EnBRC5KtX3Cr+GIUZMliELNkHNOGgbNc+G4nNyCH?=
 =?us-ascii?Q?jcAFMCLjwxkDCiihSxQtCpLs9bjm0uT++GvX4b0EL/tpZeHP6vJQ3pwsvk+k?=
 =?us-ascii?Q?xugIVEdtobLRcDQlITElLrEA3yicM5ntGkVn2hZQ9LkomrHdWpwkgy+AT2z2?=
 =?us-ascii?Q?a/BdsODu4MVUfQnZPy3WPj/JEFvX0iSTGrerU13XCOaPXdrCQa73MbawDup0?=
 =?us-ascii?Q?i+1eBVlbej6HY7JGa13h/+McR5hu+o0/Pf6ETUGXpaYBNVzKKzAAVKHTXMiJ?=
 =?us-ascii?Q?rZGPsMLPEMDiU+/+TudrSCnUfq/15S1qrUZ3SMGdqKDW/0dyW66DbJLLNLwx?=
 =?us-ascii?Q?Rvc0uttr6Ra4oSaVLMX5es+uj23M+gkwi1xwV79lir6pkl7EHsS4wwPlCTjK?=
 =?us-ascii?Q?xB1Uzd5BMl/s69nOskD/20Zvr434XosGdoqCL6gJHtMgvJX/AWq/e/sE7+NH?=
 =?us-ascii?Q?tPJo6d5yRFM/NV1GbxLMfFVKTHx78FibHsJoh6DekkYILaoPJl4lwAyi3sGs?=
 =?us-ascii?Q?3Ojidpv0WHUX6TF3fLRyQkQzBAg+qTSI6LRq6FX9YOEVgqZRHl1LfEyB0xQZ?=
 =?us-ascii?Q?8/r8dWY4/sy/IQ/tmVBH8wUDlsqU1ZmeRHo9LTpCMSn7NO5m1woXqaa9DndG?=
 =?us-ascii?Q?YHcM8qHiQCT3b7TvoE/RbSJWQZOVvwfn1I2zsN9QU9Q6R+qgsU+kKLE4Pht9?=
 =?us-ascii?Q?GAAF0/Jpp4zY7JBhN51gd/MuDBobg0XaqV3AHZMajKSE/3CBxteFhCisSSyw?=
 =?us-ascii?Q?4dU3+qPjGZ48LZW8mHGNKj9cjL/57tYnU1VlrH5iQUq9bkmdO8EWZTK8R49A?=
 =?us-ascii?Q?NQiEZ3yIOGnpDrD6H+BIDdNToJs2t/ywuI8q1yTQrfaQ47T9iNkwiaqKHmJ6?=
 =?us-ascii?Q?M8MRO9aEKhm4A3qmezRGp7KYxgVwP4qTITwV2KGIMPEaaSk1NY9HnPbvjiXI?=
 =?us-ascii?Q?HR3e8ggwG8foyil2VuUOMkdwZEu1ErCiLRxYOUU9vOvzxmsri1sOAEQUkP6y?=
 =?us-ascii?Q?dQLJtqes0S2krB+hukyKaaDbfwz6sMPwyZf+/KymxfEmnDPB2lF20dkkfSGM?=
 =?us-ascii?Q?ZBLWlEMmFijH6Bx31YZkjZeemUZ/XC5cf8v4Zg17T7LFD/Kg3oIv9rNnl5XC?=
 =?us-ascii?Q?qybgpNWaXsUBxkFH1Umhs8wgNlhTRbPvghvbeHE84KcfFkmldIihhuuL+uwY?=
 =?us-ascii?Q?j6r0jzlsieBojpDQqYsnvK4=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <FC411BA525C0B34FA8D0945C7926D62A@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0115e5b0-b360-4c86-bb50-08db056e31b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2023 22:38:24.0795
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oSj0IDzDU6OKrn+LAglgR/h05LC2WgBy/J7V387iaNnnIwlTyTGuvHJz3mrKoQqxR2aHFC7UtyapzCadqfirtbtcWS4d0ADvUft1uYzBVVA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR06MB3892
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.122.1
 definitions=2023-02-02_14,2023-02-02_01,2022-06-22_01
Subject: Re: [oss-security] double-free vulnerability in OpenSSH server 9.1

Hi Georgi, all,

On Thu, Feb 02, 2023 at 09:06:19PM +0200, Georgi Guninski wrote:
> Nice find :)
> This is very complicated codepath, did a human found it "manually"
> or some analysis program found it?

Good question! Technically, we did not find the double free: we found
the underlying bug in compat_kex_proposal() (the "unintended" free of
options.kex_algorithms) during a manual code review, and reported it to
the OpenSSH developers in July 2022.

Unfortunately, back then we (Qualys) mistakenly believed that "this does
not seem to lead to a use-after-free or double-free, but the dangling
pointer in options.kex_algorithms is probably not ideal."

Then, in January 2023, Mantas Mikulenas reported a double free in sshd
to the OpenSSH bugzilla, and we immediately realized that this was a
direct consequence of the bug in compat_kex_proposal().

Thank you very much for your mail! With best regards,

--=20
the Qualys Security Advisory team=
