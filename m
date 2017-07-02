X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["584" "Sunday" "2" "July" "2017" "09:08:48" "+0000" "=?iso-8859-2?Q?Daniel_Skowro=F1ski?=" "daniel@dsinf.net" "<VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>" "18" "[oss-security] systemd fails to parse user that should run service" "^Date:" nil nil "7" "2017070209:08:48" "[oss-security] systemd fails to parse user that should run service" (number mark "        daniel@dsinf Jul  2   18/584   " thread-indent "\"[oss-security] systemd fails to parse user that should run service\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18388 invoked by uid 550); 2 Jul 2017 10:01:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21760 invoked from network); 2 Jul 2017 09:09:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dsinf.net;
 s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=PRaKSMl1WnZ9rI3Kqg9FfSLjjeT2au001b8Senld67k=;
 b=H/mku9pj1b81TQKo4VV+jaognF9NoJTprcIItak243iAx8eqPZW0q3oeppNlQEUc5/sb385u/8F/QYbhuvxLcEHZOL5l3kKb6I7Z6SajoKaRQvZB1iiLW3DW7P4UXIvaApaUV0gEsxvETGU+Cxqgt3f8FxjGqC54c6UHrXCE7Do=
Thread-Topic: systemd fails to parse user that should run service
Thread-Index: AQHS8xHmWU77qB0YOEiXegJmkH+9hg==
Message-ID: <VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>
Accept-Language: pl-PL, en-US
Content-Language: pl-PL
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: openmailbox.org; dkim=none (message not signed)
 header.d=none;openmailbox.org; dmarc=none action=none header.from=dsinf.net;
x-originating-ip: [89.78.109.168]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1;VI1PR04MB3103;7:KsqvybCCvLl91gR3xK1RD+9bgn262cOTTi96DxQZz3fzSekkj8UnX011mIdxzvrA3wfsrUWMEqvVghhx4NRJQHuXs6rdrYwF5MqKvhzdaaKD6yGLgiAsLSm3I2/FeJy8LjoNfe+sbRAf2cpaa/G6mdnLDO37lU7ZqgbIMHCwoin8/ceOs1gTMSH7SbWfabrp2bLfy0Zfu5owQd6KajS1rz4iLeDkPh4R3hTAG4rtxi6OXybpezQAx+n4rGfE4LpNYMuqpkcLlD0znoxDXGIDZ6MTbXifGRQ6XgdNGrP9M3oFfn0GpnZTDQ3h+5aqvQF1VBFHVaE6juCJXOQ4nc3g8EdFhlkUTnnYUcSNXxUFN05Slen6fPnmG32SxgM6gH6bz2A4OIweVq+ZvQcF8F/02VVkiiAZVOKww2z+AwKFpbcdvb92oO9PuzDRsMaSj7Xpi7lg6Ip6EVnt2ogFSZ5wOYno3VG9knEGbSCyAm9JcU7+g5YrWuyBr2+CTQ5T23eFPDZhk+tEb5npf3EdaHZkyoJMV5Cngs/B4K6y6Y/YVmj7H7l+ibos1paahA2EiDUqvxfr6OtHXfpthtUV/xTYkJqClrnyJdlxQeHt/ffFohG3upd+QNkZ7YoWNBHqQLWiT73IITeCBQg2utxNn4xHYF8U3rL7BkUNEi0uomobbpUC1A7mwOkrG1NLe5lW4hagVDPGRs7vCKjTj64T1g6aSV/eHM1qwabxkloPaR60phfNJRvTRlPW+s8l6dMNdEf1PXR82YopfcaRXqD0pxP6RPZdJRR8ck+k3lJ4AR9bZfc=
x-ms-office365-filtering-correlation-id: 9e48a8c0-5a4a-4469-9841-08d4c129f34b
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(2017030254075)(300000503095)(300135400095)(2017052603031)(201703131423075)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);SRVR:VI1PR04MB3103;
x-ms-traffictypediagnostic: VI1PR04MB3103:
x-microsoft-antispam-prvs: <VI1PR04MB31033AF91C14DD5022594B05D6D10@VI1PR04MB3103.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(166708455590820);
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(100000703101)(100105400095)(93006095)(93001095)(6041248)(20161123562025)(20161123560025)(20161123558100)(2016111802025)(20161123564025)(20161123555025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(6043046)(6072148)(100000704101)(100105200095)(100000705101)(100105500095);SRVR:VI1PR04MB3103;BCL:0;PCL:0;RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);SRVR:VI1PR04MB3103;
x-forefront-prvs: 03569407CC
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(6009001)(39450400003)(39830400002)(39410400002)(39400400002)(51694002)(53754006)(2351001)(6306002)(6506006)(7696004)(33656002)(3660700001)(966005)(189998001)(7736002)(25786009)(6116002)(5660300001)(2900100001)(6606003)(86362001)(74316002)(478600001)(3846002)(102836003)(6916009)(38730400002)(66066001)(5640700003)(8676002)(81166006)(6436002)(8936002)(99286003)(9686003)(55016002)(54356999)(54896002)(53936002)(110136004)(50986999)(5250100002)(2501003)(2906002)(19627405001)(14454004)(3280700002);DIR:OUT;SFP:1102;SCL:1;SRVR:VI1PR04MB3103;H:VI1PR04MB3104.eurprd04.prod.outlook.com;FPR:;SPF:None;MLV:sfv;LANG:en;
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: multipart/alternative;
	boundary="_000_VI1PR04MB310470DAAF5F79C8BA8AE789D6D10VI1PR04MB3104eurp_"
MIME-Version: 1.0
X-OriginatorOrg: dsinf.net
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2017 09:08:48.4470
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7ce41057-1b74-4605-a595-c072182c89e1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3103
Date: Sun, 2 Jul 2017 09:08:48 +0000
From: =?iso-8859-2?Q?Daniel_Skowro=F1ski?= <daniel@dsinf.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] systemd fails to parse user that should run service
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--_000_VI1PR04MB310470DAAF5F79C8BA8AE789D6D10VI1PR04MB3104eurp_
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable

Hi all,

Just wanted to bring attention to issue with systemd not doing what is expe=
cted when parsing User that should run service.
When it fails to parse string starting with digit it fails back to root cau=
sing obvious threat to security.

See discussion with developer on github: https://github.com/systemd/systemd=
/issues/6237

Best,
-Daniel Skowronski

--_000_VI1PR04MB310470DAAF5F79C8BA8AE789D6D10VI1PR04MB3104eurp_--
