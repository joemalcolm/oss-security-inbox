X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3099" "Wednesday" "28" "August" "2019" "15:27:48" "+0000" "Alexandros Toptsoglou" "atoptsoglou@suse.com" nil "92" nil "^Date:" nil nil "8" nil nil (number mark "U       atoptsoglou@ Aug 28   92/3099  " thread-indent "\"[oss-security] CVE-2019-10222: ceph: unauthenticated clients can crash RGW\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-10222: ceph: unauthenticated clients can crash RGW" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3183 invoked by uid 550); 28 Aug 2019 16:49:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28568 invoked from network); 28 Aug 2019 15:31:43 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ndBZfRcEYpahQnwwavRV2Om4MGN/55NugYsjWJ+S9JXvEWcWappIO9XBU2st/FTV4i0QEiHcxE4Tqw7eiWHOtZ7IodMv2h1G9hXFPYVPqdicfL+x80RtdljgB/Uw7RpiY6cNrzNiIKh/58el4ZIwLvi3xPTkRoXRMKb23aZ/Gte35Kurv1q6WtCz3f9owrYvycpF+HiGfb67S8OSYX68Gh9tZF5XKkiIYDF5UvW+jFMPQSuAIV64ZOhJvGTaPWmqgRGibzMWgeykiUFT8ZtoGCP0F4Lev5FujK+66q5Pb7o5Md0pnsNRpabNTlbvYmElp8lXbvJb9h5H0AsdC4R2RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SJlu7WKH1lmOfopvMERgkY5OfWq85Z6QSrVhmMG2f7w=;
 b=fIntAJnrB7M8w2AMFndZx+dwqonyAjqs25Yz9sYpRh4SszzAKDqWihV8BUJq3R5l5B5GoCwiUTJYhyRoWHeQXyIxAGYJa5jzvUK+HPJ7LzJ8QovivSO+yFnfW9uga9X49BaLjwVRoBAK8DHq3nbZtn55MO8ebK4Y7y571erHJq1uYqOtzHLS/6dUADiWJwEmKeFKSxy/ktlt1uXevMakf38Zxr4B8yfBpCgTyR7pxl4CtNPH/qYyVHXpnTEj0VJCBPlYApVvHCumYtVx+8frA/dpZ9y/20jOx3r8hDzN0W8NJxqFZwS0Sc0jW2OjAo8NRlhZW4d3/G7jb02LVtuupA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Thread-Topic: CVE-2019-10222: ceph: unauthenticated clients can crash RGW
Thread-Index: AQHVXbUmOAOG8Lt/Ekmx1nRHed0WUA==
Message-ID: <7ade7a65-f829-c4f6-66b5-ee334eaebf68@suse.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-clientproxiedby: DB6P18901CA0006.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:4:16::16) To BY5PR18MB3218.namprd18.prod.outlook.com
 (2603:10b6:a03:1a8::33)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=atoptsoglou@suse.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2620:113:80c0:5::2222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 11fcd837-89a1-432d-1209-08d72bcc4855
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(49563074)(7193020);SRVR:BY5PR18MB3090;
x-ms-traffictypediagnostic: BY5PR18MB3090:
x-microsoft-antispam-prvs: <BY5PR18MB3090777DA3190E2D00262B3BD6A30@BY5PR18MB3090.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 014304E855
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(4636009)(39860400002)(366004)(396003)(136003)(376002)(346002)(53754006)(189003)(199004)(478600001)(14444005)(102836004)(386003)(256004)(2501003)(31686004)(99286004)(52116002)(31696002)(71200400001)(186003)(71190400001)(6916009)(86362001)(6506007)(305945005)(99936001)(81166006)(81156014)(8936002)(486006)(6116002)(66476007)(8676002)(6486002)(316002)(66946007)(66574012)(966005)(6436002)(476003)(2616005)(14454004)(36756003)(6306002)(46003)(7736002)(5660300002)(25786009)(66446008)(2906002)(64756008)(66616009)(66556008)(2351001)(53936002)(5640700003)(6512007);DIR:OUT;SFP:1102;SCL:1;SRVR:BY5PR18MB3090;H:BY5PR18MB3218.namprd18.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: suse.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: XU+03EeyybwSLSRdCkAmsWqBN6djG2CT4yBkP/Wcf+vowRqbb84CNP/1FzMoDcv1bNLxwvE/EUC98y/e2omr6rZHurnVBoXtQzMFGA073pscSVQRrCELuRexcg582s/pnchIlhxBtCbSYyz5otd+y0BuelYVTpTtU7Yu3Dwy4ffIZWg5VNSF3qay8omik8cYZodTPvBrijPRxLOytFQH5bQ6gcrAKeXL4BOIt68BVqhSgdRHr1m0VrBZ3gY3ZqPFUNH0bC5DRzLIJSRk6dqb6amTDXGrTp7x0JKLAud814+ollSyfhUYE5FZ9xiUclUqc3zORyZ85de/RNYISdxRVXuhWo+K5mgbdtDf5qtwdx6xcQJnl53PcSfA2bKwhLZ0JlFZ38KBHOXK1qJZrIS4/xxFu856YxO4XDohy83eIK4=
x-ms-exchange-transport-forked: True
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="ABv1jSDkfRD8l1uDDVrpbd7LOk5A0cvKh"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 11fcd837-89a1-432d-1209-08d72bcc4855
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2019 15:27:48.9038
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 856b813c-16e5-49a5-85ec-6f081e13b527
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: doojJOMyRBOJ8uFdvp6TQYDMqtMYfV+C7acj5UBA5vjv6TJXAhez6wIRctWQcGZGp5lyHBT3IGpdyGIXGriHgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR18MB3090
X-OriginatorOrg: suse.com
Date: Wed, 28 Aug 2019 15:27:48 +0000
From: Alexandros Toptsoglou <atoptsoglou@suse.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2019-10222: ceph: unauthenticated clients can crash RGW
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--ABv1jSDkfRD8l1uDDVrpbd7LOk5A0cvKh
Content-Type: multipart/mixed; boundary="rFLp2HJEa3qcguy1wzUTNjRwjjC7ANfnn";
 protected-headers="v1"
From: Alexandros Toptsoglou <atoptsoglou@suse.com>
To: oss-security@lists.openwall.com
Message-ID: <7ade7a65-f829-c4f6-66b5-ee334eaebf68@suse.com>
Subject: CVE-2019-10222: ceph: unauthenticated clients can crash RGW

--rFLp2HJEa3qcguy1wzUTNjRwjjC7ANfnn
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi all,

an improper exception handling was found in RGW component of Ceph.
Please find the details below.

CVE-2019-10222: ceph: unauthenticated clients can crash RGW

Affected versions:
Nautilus (version 14.2.X)
Mimic (version 13.2.X)
Luminous (version 12.2.X) only if an experimental feature is enabled in
ceph.conf:
  enable_experimental_unrecoverable_data_corrupting_features=3Dtrue
  enable experimental unrecoverable data corrupting features =3D
rgw-beast-frontend


Description:
An improper exception condition handling in Ceph allows to any single
unauthenticated
client to crash RGW component of Ceph by sending a special crafted HTTP
request which lead
to denial of service.
The vulnerability affects the RGW component of Ceph, specifically the
ceph-radosgw.

Mitigation:
Apply the fix of pull request in https://github.com/ceph/ceph/pull/29967

Timeline:
- 2019-08-07: Issue discovered.
- 2019-08-08: Issue reported to security@ceph.io
- 2019-08-16: Coordinated release date set on 28th
- 2019-08-28: Disclosure

Reference:
https://bugzilla.suse.com/show_bug.cgi?id=3D1145093

Credit:
This vulnerability was discovered by Abhishek Lekshmanan of SUSE
Software Solutions Germany GmbH
--=20
Alexandros Toptsoglou <atoptsoglou@suse.com>
Security Engineer
OpenPGP fingerprint: C270 3848 AA4A 783A 9848  BB06 56A3 3D9C B652 1869

SUSE Software Solutions Germany GmbH
Maxfeldstr. 5
90409 Nuremberg
Germany
(HRB 247165, AG M=C3=BCnchen)
Managing Director: Felix Imend=C3=B6rffer


--rFLp2HJEa3qcguy1wzUTNjRwjjC7ANfnn--

--ABv1jSDkfRD8l1uDDVrpbd7LOk5A0cvKh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEwnA4SKpKeDqYSLsGVqM9nLZSGGkFAl1mnW4ACgkQVqM9nLZS
GGmz7g/+MBPfNT1Lliim+qaPajjfoXQXwnIqpCsBWW+jzaLQuVZAHfrFzIaieyZw
/UWZJX7LxV0M9OXFiUEeV4oJA9eXmIvVSzEkqdqlH87PBtDcEEqgIYK7kisLLiO4
8LF3/EDePrwXxQ+LGZDSIKi+2EKJ4xQLYPN8uLyFbzKbcDw1LFAORZELD7MyiR2R
4gZnvkktqgUsU80m1eikTRq5zaGmgDFSARArn+6YBjNwzMLxDHdor/b8Ik5M1z0u
uM7tcXZqOeWf8fLpQCY6XEUABVErf1mlnquJGQjeuyhw/vc+szNX3QVaGMnSdPeo
ohkt7YUs2UeiFxM7P6+/78DVpruEMVOht5viU9RBd1DphqxhnAt2Pawdp3Lzlg8T
Owk67PLySp1iBlczuGbmwjW0+H6Jmt6BchKVLCpPBIi0LupZWm8Rk65JbxozwTYW
cV7T5vNKPVeYOboJLz4iqtsa8YAv9sRCZyusKUPsxXij2Ee5xLy0576R9xA7ms3p
U5G20lcDoP+y2X459Rz82X0eAaggprQFiegUqMPIQR+fDnXu3L4HwoRYUUED/LdY
O0seNVLchw3Afd29iW/wJk/iJufhB4iKykMuGQjm98FQJqQkvFXtjcjWaifGzvsn
hoficBnZr1EwBE0iB1SY8YDrQEgJWmPMyjzKFOEhNw4ZAIjlWOE=
=FZJZ
-----END PGP SIGNATURE-----

--ABv1jSDkfRD8l1uDDVrpbd7LOk5A0cvKh--
