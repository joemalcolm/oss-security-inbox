X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["856" "Friday" "26" "January" "2018" "18:39:26" "+0000" "VMware Security Response Center" "security@vmware.com" "<0B018C16-38A7-467C-BD58-5C810C51FBFE@vmware.com>" "18" "[oss-security] Deserialization Vulnerability in VMware Xenon (CVE-2017-4947) " nil nil nil "1" "2018012618:39:26" "[oss-security] Deserialization Vulnerability in VMware Xenon (CVE-2017-4947)" (number mark "U       security@vmw Jan 26   18/856   " thread-indent "\"[oss-security] Deserialization Vulnerability in VMware Xenon (CVE-2017-4947) \"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28297 invoked by uid 550); 26 Jan 2018 18:42:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26119 invoked from network); 26 Jan 2018 18:39:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=onevmw.onmicrosoft.com; s=selector1-vmware-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=9xusGvQPG54e4ScCPoGAti27I3jaqfPZBLGts08Vh5Q=;
 b=OSv+0knsnw79c9M/9cKQ3Q4c08I2P8guXqf5BbcZa3XrBxWt0Gt3eXSQ9OI4bfkHq7KnUyobVZBkWuwum0l3Obh1vN7aPk9kOXeN3PnIWrS6KXEluaQ/tW+J2BoYkA1S9chKd6wfpf3PcF/OwrWdIjHKAvghk27sTIvYtxvvxrE=
From: VMware Security Response Center <security@vmware.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: Deserialization Vulnerability in VMware Xenon (CVE-2017-4947) 
Thread-Index: AQHTltT+XaujDajElEiAwjvbSoYoNw==
Date: Fri, 26 Jan 2018 18:39:26 +0000
Message-ID: <0B018C16-38A7-467C-BD58-5C810C51FBFE@vmware.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
user-agent: Microsoft-MacOutlook/10.9.0.180116
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=security@vmware.com; 
x-originating-ip: [73.225.153.207]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1;BY2PR0501MB2021;7:ZOX1vAV96JYdi5WfKtS8F/+0JWf6YXhPSVP2PuxU3dvimBvNCKyYYQF7nJR9Pzu4fv5hkHKgnK7j4atyVijEt8DVe88ddCsmw9rcP1+0UkFo/lpO6pM1PEKFF/ylH7M/8biFkMu7kU2zjeMIZIaWQPq2IgmjE4ZaWYp7DDR0t0ftaoKs6XSmiovC1iOli3eqn3CN0AC6LGMdcCwD8JloFp5ZIkrBBdSSWq0hyVKsHE+9nca9chGBAQj6ZgDD5HyT;20:eHkF/5EufjdMOGdKhqphrbIusSMsIpRSBl+6bvJV8+dhMo8JsyJ+2dHVatmIN6qiDMVN6enIc+1ANk8ltEPgUfHOg9yCBnMBeyY7iMnW7+LgR7aq31RqKZY7ivRV4MvxDlMax+NGZ6J69+QYIIWaZbmhd2k8VqC7Oqt0bMVKhv8=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: c7b1f650-cd3e-40ac-0d54-08d564ec2106
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(7020095)(4652020)(4534165)(4627221)(201703031133081)(201702281549075)(5600026)(4604075)(3008032)(2017052603307)(7153060)(7193020);SRVR:BY2PR0501MB2021;
x-ms-traffictypediagnostic: BY2PR0501MB2021:
x-ld-processed: b39138ca-3cee-4b4a-a4d6-cd83d9dd62f0,ExtAddr
x-microsoft-antispam-prvs: <BY2PR0501MB202136C8A94BC7EBD39D49EDB9E00@BY2PR0501MB2021.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(28532068793085)(61668805478150)(166708455590820)(192374486261705)(21748063052155)(211171220733660);
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(6040501)(2401047)(8121501046)(5005006)(3231023)(2400081)(944501161)(3002001)(93006095)(93001095)(10201501046)(6041288)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(20161123562045)(20161123558120)(20161123564045)(6072148)(201708071742011);SRVR:BY2PR0501MB2021;BCL:0;PCL:0;RULEID:;SRVR:BY2PR0501MB2021;
x-forefront-prvs: 05641FD966
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(366004)(39380400002)(376002)(396003)(39860400002)(346002)(199004)(189003)(83506002)(58126008)(82746002)(2906002)(25786009)(68736007)(36756003)(966005)(14454004)(478600001)(53936002)(66066001)(2501003)(4743002)(2900100001)(97736004)(86362001)(186003)(575784001)(83716003)(99286004)(105586002)(2351001)(606006)(6916009)(3280700002)(33656002)(106356001)(3660700001)(59450400001)(6506007)(5660300001)(102836004)(8936002)(6116002)(3846002)(6486002)(6436002)(26005)(230783001)(236005)(54896002)(6306002)(6512007)(316002)(7736002)(5640700003)(8676002)(77096007)(81156014)(81166006);DIR:OUT;SFP:1101;SCL:1;SRVR:BY2PR0501MB2021;H:BY2PR0501MB1686.namprd05.prod.outlook.com;FPR:;SPF:None;PTR:InfoNoRecords;A:1;MX:1;LANG:en;
received-spf: None (protection.outlook.com: vmware.com does not designate
 permitted sender hosts)
x-microsoft-antispam-message-info: nHAil8wfxzqnSi09eIp5+p4FQc2drf4OHx5621sRNgiPHj3AO8g9qvtioiAiQMIbDx0XKiJdRhJjTi+4JKw3QQ==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: multipart/alternative;
	boundary="_000_0B018C1638A7467CBD585C810C51FBFEvmwarecom_"
MIME-Version: 1.0
X-OriginatorOrg: vmware.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7b1f650-cd3e-40ac-0d54-08d564ec2106
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jan 2018 18:39:26.9709
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b39138ca-3cee-4b4a-a4d6-cd83d9dd62f0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2PR0501MB2021
Subject: [oss-security] Deserialization Vulnerability in VMware Xenon (CVE-2017-4947) 

--_000_0B018C1638A7467CBD585C810C51FBFEvmwarecom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Vk13YXJlIFhlbm9uIGNvbnRhaW5zIGEgZGVzZXJpYWxpemF0aW9uIHZ1bG5l
cmFiaWxpdHkgKENWRS0yMDE3LTQ5NDcpIGR1ZSB0byBpbnN1ZmZpY2llbnQg
Y29udGVudC10eXBlIGZpbHRlcmluZyBvZiBpbmJvdW5kIHJlcXVlc3RzLiBT
dWNjZXNzZnVsIGV4cGxvaXRhdGlvbiBvZiB0aGlzIGlzc3VlIG1heSByZXN1
bHQgaW4gcmVtb3RlIGNvZGUgZXhlY3V0aW9uLg0KDQpGaXhlcy9SZWZlcmVu
Y2VzDQotLS0tLS0tLS0tLS0tLQ0KaHR0cHM6Ly9naXRodWIuY29tL3Ztd2Fy
ZS94ZW5vbi9jb21taXQvMDkyZWE5ODEwNTA0MGU2OGM2YmQwYmRmODliODZk
MTQ5ZGZhZDFiMQ0KDQpXZSB3b3VsZCBsaWtlIHRvIHRoYW5rIENocmlzIFRv
ZGQgb2YgVk13YXJlIGZvciByZXBvcnRpbmcgdGhpcyBpc3N1ZS4NCg0KLS0t
LS0tLS0tLS0tLS0NCkVkd2FyZCBIYXdraW5zDQpTZW5pb3IgUHJvZ3JhbSBN
YW5hZ2VyLCBTZWN1cml0eSBSZXNwb25zZQ0Kc2VjdXJpdHlAdm13YXJlLmNv
bQ0K

--_000_0B018C1638A7467CBD585C810C51FBFEvmwarecom_--
