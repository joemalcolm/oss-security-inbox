X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1278" "Monday" "21" "January" "2019" "12:29:47" "+0000" "Craig Young" "cyoung@tripwire.com" "<MW2PR02MB378825576FA4EE8917BAE85CAA9F0@MW2PR02MB3788.namprd02.prod.outlook.com>" "40" "Re: [oss-security] Apache web server use after free bugs (unfixed)" "^Date:" nil nil "1" "2019012112:29:47" "[oss-security] Apache web server use after free bugs (unfixed)" (number mark "        cyoung@tripw Jan 21   40/1278  " thread-indent "\"Re: [oss-security] Apache web server use after free bugs (unfixed)\"\n") "<87sgxmiflx.fsf@oldenburg2.str.redhat.com>" ("<20190121090535.227a1db9@computer>" "<87sgxmiflx.fsf@oldenburg2.str.redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28400 invoked by uid 550); 21 Jan 2019 12:39:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13828 invoked from network); 21 Jan 2019 12:30:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tripwire.onmicrosoft.com; s=selector1-tripwire-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4UNN805yGFSLMbBY24HE3WH1/7bqtgFBO4RSEy1duIs=;
 b=n/4Kb993NuxYrmD2iv5wQ0FW3k2KXN8N2RRhaESulraV7+/eesH3OUB09xTbK2IkDpAs5cCKclYVOwhBgpkjXRHvu8szc9oHkVedbSvmo4qdO0/lt8TOy0tq14PiDYL8L/fGo2MBPDOLgFlP0BuYtp4uv0x+iywf7DQFHz5MTZk=
Thread-Topic: [oss-security] Apache web server use after free bugs (unfixed)
Thread-Index: AQHUsWAl+osSUTSKI0+Vc/pHVLGFOKW5Yn+EgABEKs0=
Message-ID: 
 <MW2PR02MB378825576FA4EE8917BAE85CAA9F0@MW2PR02MB3788.namprd02.prod.outlook.com>
References: 
 <20190121090535.227a1db9@computer>,<87sgxmiflx.fsf@oldenburg2.str.redhat.com>
In-Reply-To: <87sgxmiflx.fsf@oldenburg2.str.redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=cyoung@tripwire.com; 
x-originating-ip: [73.237.101.26]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 
 1;MW2PR02MB3881;6:YoSgmGaz7UeDH4Ko6qAFwnE07dNI1syqGWHe+fcZzW6CrrzxDxSZdCQgV5ILs4MRnBJSsjo3TJQRk+HXM+fAP44pXKHtZ0tIKYmRFfDRCmLftP2yN9dvS9CH/W5y6ybtV0D+Upewf4xlT0+/mfo12jnaYsxuay2SXYzODxVPCbUlXmDrCQ2lcb2z+EW1xdWtiLTSeLAVFuL4nQbH5JVDqmNCXWtQHiyiVIRZIsOAf5UsHw0gKX/o2zuJ248UAneJDiyUZE7SXElndmVE+xF3oHGL2imPPSljAsFl6pnF3otYTgImfeUUGSAVyY0eojzDDt2pqyZnur+Pw3E38AmhpMJKKafxZ/lAzTw9GSOIBgs2UykrHzgCwpYRV0EFWszFBlad5bjnDBXCBoN+1Btesv7mYeyL6+JSCEmkdsNjSsTMDg3SDnFKMevOsz9l3e3Ias8aCULPdkH+9nhynFyupw==;5:I1vhqRKzDCMeRccyV2jeNxlQ9BqYC9rMBJIG+3C4gfE+M0/0rIZ5TGtSEuuGRoKmhzBMLnrcNyenl61z37YpeXvYTCfLuw1w0dlE79qP8t3kCF8b7tSLBRWvPO0JYc8soRrpQuVekhad8mYJIkWQaPljdwwpTO5fMZ8RvBnnrS0vxzvgaQP8vh3/D2CrrpqmQgH67mCIl2gkPSxkTsQZTA==;7:yu0EbMgF83O9f8GfNg4AyMfjef32YJuYXFbtP2LX7nSwdOFjyWqGqhjPA72seqy+ZuYxykAcwtzMYVwSdheNPhNodB5n4242rm9c4GGSXLP/qM9Q/z+23nduwWaJQYoH33oe7bw4ZT33IRMPG/k/5w==
x-ms-office365-filtering-correlation-id: 7f3998bb-b65c-4b00-595a-08d67f9c2197
x-microsoft-antispam: 
 BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600109)(711020)(2017052603328)(7153060)(7193020);SRVR:MW2PR02MB3881;
x-ms-traffictypediagnostic: MW2PR02MB3881:
x-microsoft-antispam-prvs: 
 <MW2PR02MB3881BCF4CE524D881CB5ED61AA9F0@MW2PR02MB3881.namprd02.prod.outlook.com>
x-forefront-prvs: 0924C6A0D5
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10009020)(396003)(136003)(346002)(39850400004)(366004)(376002)(189003)(199004)(66574012)(2501003)(446003)(256004)(14444005)(55016002)(110136005)(316002)(8936002)(81166006)(2906002)(81156014)(9686003)(8676002)(86362001)(14454004)(15650500001)(74316002)(476003)(7696005)(11346002)(478600001)(97736004)(7736002)(4744005)(186003)(33656002)(6506007)(106356001)(26005)(229853002)(76176011)(71200400001)(71190400001)(486006)(53936002)(102836004)(99286004)(3846002)(6436002)(6116002)(54896002)(66066001)(25786009)(68736007)(6246003)(53546011)(105586002);DIR:OUT;SFP:1101;SCL:1;SRVR:MW2PR02MB3881;H:MW2PR02MB3788.namprd02.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: tripwire.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 
 y+5FSBQUsV18jrgm5J/nQ22DCgj/IVcPZzIrnQOlde4e+70uxR5rNfFFnsDqdi2lwmTytapOsG71GkMPvg/i6eANGdSYXGC7jioe9vhw5Y+R5+OMyRE33MDtXvoHk8gIeBd2yqV9kamjvaKYWKC0dLeBzjsBkLR767Z10pXOfQtRVRPhbg+b/DpHqgb27V7O8iTvmC7/Hu5ZBqNWOa5zbJnKNSSsyT1v/BkL5ZPLIPNvL5ieRiDcJHvulofubjYpLlixbZbcIAhl1JIL0+8OrtYMwkR0auVAex9vY/USpRcun5OVM/S3SOo1qP1n7pcN7ryplGWnll3y4rXB+x+0USzx05GuLjxvn7dzr+h5+KZdI4M16jjtKI9pMoBnodDShxQd2JtdauzeycozjFrzBlumfn3uM01lSCc0jAVq8ac=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: multipart/alternative;
	boundary="_000_MW2PR02MB378825576FA4EE8917BAE85CAA9F0MW2PR02MB3788namp_"
MIME-Version: 1.0
X-OriginatorOrg: tripwire.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f3998bb-b65c-4b00-595a-08d67f9c2197
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2019 12:29:47.3915
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c337bf2a-9c18-4772-a0be-2d0457489914
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR02MB3881
X-MS-Exchange-CrossPremises-AuthAs: Internal
X-MS-Exchange-CrossPremises-AuthMechanism: 04
X-MS-Exchange-CrossPremises-AuthSource: MW2PR02MB3788.namprd02.prod.outlook.com
X-MS-Exchange-CrossPremises-TransportTrafficType: Email
X-MS-Exchange-CrossPremises-TransportTrafficSubType: 
X-MS-Exchange-CrossPremises-SCL: 1
X-MS-Exchange-CrossPremises-messagesource: StoreDriver
X-MS-Exchange-CrossPremises-BCC: 
X-MS-Exchange-CrossPremises-originalclientipaddress: 73.237.101.26
X-MS-Exchange-CrossPremises-transporttraffictype: Email
X-MS-Exchange-CrossPremises-transporttrafficsubtype: 
X-MS-Exchange-CrossPremises-antispam-scancontext: DIR:Originating;SFV:NSPM;SKIP:0;
X-MS-Exchange-CrossPremises-processed-by-journaling: Journal Agent
X-OrganizationHeadersPreserved: MW2PR02MB3881.namprd02.prod.outlook.com
Date: Mon, 21 Jan 2019 12:29:47 +0000
From: Craig Young <cyoung@tripwire.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Apache web server use after free bugs (unfixed)
To: =?iso-8859-1?Q?Hanno_B=F6ck?= <hanno@hboeck.de>,
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--_000_MW2PR02MB378825576FA4EE8917BAE85CAA9F0MW2PR02MB3788namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


The tpp.c error and child abort are also logged when testing without pool d=
ebugging or ASAN.

-Craig
________________________________
From: Florian Weimer <fweimer@redhat.com>
Sent: Monday, January 21, 2019 3:23:22 AM
To: Hanno B=F6ck
Cc: oss-security@lists.openwall.com
Subject: Re: [oss-security] Apache web server use after free bugs (unfixed)

* Hanno B=F6ck:

> threading related error
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> In addition to the ASAN use after free reports, httpd logs threading
> related errors:
>
> AH00052: child pid [pid] exit signal Aborted (6)
> apache2: tpp.c:84: __pthread_tpp_change_priority: Assertion `new_prio
> =3D=3D -1 || (new_prio >=3D fifo_min_prio && new_prio <=3D fifo_max_prio)'
> failed.

This can happen if the mutex data is corrupted, so it's possible this
also caused by a use-after-free issue (if the memory is reallocated and
overwritten before the mutex operation that causes the assertion
failure).

Did you observe this with the pool debugger only?

Thanks,
Florian

--_000_MW2PR02MB378825576FA4EE8917BAE85CAA9F0MW2PR02MB3788namp_--
