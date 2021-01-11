X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2377" "Monday" "11" "January" "2021" "23:15:54" "+0000" "Brendan Burns" "bburns@microsoft.com" "<MW4PR21MB18574AC1AC607174551A3519DBAB9@MW4PR21MB1857.namprd21.prod.outlook.com>" "70" "[oss-security] [Security Advisory] CVE-2020-8570: Path Traversal bug in the Java Kubernetes Client" nil nil nil "1" "2021011123:15:54" "[oss-security] [Security Advisory] CVE-2020-8570: Path Traversal bug in the Java Kubernetes Client" (number mark "U       bburns@micro Jan 11   70/2377  " thread-indent "\"[oss-security] [Security Advisory] CVE-2020-8570: Path Traversal bug in the Java Kubernetes Client\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [Security Advisory] CVE-2020-8570: Path Traversal bug in the Java Kubernetes Client" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32688 invoked by uid 550); 11 Jan 2021 23:20:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32085 invoked from network); 11 Jan 2021 23:16:07 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZR+vmx3YAKuYcSYymDmG1fGnjrQ/bcfWEyU+GD9ehjueTt1v+7RfiMLJYueW3aCWI/9Y+/mg2gRxbpdZRkvUCTwbKWcxZa/+nMFH51mei90OPxhGskzeI5rLKWAZnvTDHKH8a+KOmOYU8P9JCmCmqAfRdnXiyPnAvIYVIixgXYB7fLooenPVlAmb6BMsHAb6NyK8/G2UX7H3nbgczjIPZtUQmQcKHhSeoIH7ZixCQhfImucahTGSQ8jwi8MseNqFlpILlja/OJbvnUb/T1iWhVmSbRjdJFpHFYQcp1ASup6xNg2/CN2psCeVaRf2sdpTFUgmdoWu2G1n4SS5Xp0ueg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gjfNEVIonI732LmkgqPET0yPh7KHGCgHrh1QEUfazT4=;
 b=djKj1NlNKFu2QvYhu9eRRovWZ6f54WiUWTMzw4IwQPBs/vB0zhGfcgUTNgjE5NywfoMndqKu7AjDrinkvGSaLA4rtyeNbVIekvgb9Er4Y//LWc/nzhQA4SZMtlCsgL171yhJlf9hvMJZvUGnfe0xNVwEtQOA4Lp1/rst/aO1CieF1A0sekG+vVZRnlprGjVGnq2GfvppujzNTCqQC5Nxsmlt/83YDDUFfpxqO9ytO1Da62noE3781iZ4xZ24hfXP0Rfhx4dLv3GHdmFKEuwlvrTtlgQivqO6oGup8wD/6O9sPtCVVChAnetDN97gt+ab71P5vvI8LHGVhHUA5jFA+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gjfNEVIonI732LmkgqPET0yPh7KHGCgHrh1QEUfazT4=;
 b=fjD+JcX4103u3k260mrooUtPPazMjSqpzsEb+qK3QsVwzrZjVoF5zgPjyBlRCsBcxOJQrbqo3CmNg4G/TH+kR1sNrAfXfl/0ru3PpMktqkvc+DesRKKUcBsDHTqOdJ51Uu+VWc+udh1lk2gB8v89Nj7rOcWGCpTXLOP4yTyHw88=
From: Brendan Burns <bburns@microsoft.com>
To: kubernetes-announce <kubernetes-announce@googlegroups.com>, Kubernetes
 developer/contributor discussion <kubernetes-dev@googlegroups.com>,
	"kubernetes-security-announce@googlegroups.com"
	<kubernetes-security-announce@googlegroups.com>,
	"kubernetes-security-discuss@googlegroups.com"
	<kubernetes-security-discuss@googlegroups.com>,
	"distributors-announce@kubernetes.io" <distributors-announce@kubernetes.io>,
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
	"kubernetes+announcements@discoursemail.com"
	<kubernetes+announcements@discoursemail.com>
CC: Min Kim <yue9944882@gmail.com>
Thread-Topic: [Security Advisory] CVE-2020-8570: Path Traversal bug in the
 Java Kubernetes Client
Thread-Index: AQHW6G5cR0MYcmw+KkWeHd52TEVDTA==
Date: Mon, 11 Jan 2021 23:15:54 +0000
Message-ID: 
 <MW4PR21MB18574AC1AC607174551A3519DBAB9@MW4PR21MB1857.namprd21.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2021-01-11T23:15:54.099Z;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ContentBits=0;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Method=Standard;
authentication-results: googlegroups.com; dkim=none (message not signed)
 header.d=none;googlegroups.com; dmarc=none action=none
 header.from=microsoft.com;
x-originating-ip: [97.126.59.183]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 71f7c5ea-7c01-40fd-667d-08d8b686d845
x-ms-traffictypediagnostic: MW2PR2101MB0970:
x-microsoft-antispam-prvs: 
 <MW2PR2101MB0970AD268B0CF4E47DEFB394DBAB9@MW2PR2101MB0970.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 b6f8kfN7pphp2E8IvbX0A1UGoa1NhhwVs9U+y9ei+K67LF1s/AwtWToiHUgeXkqfdS/1l483qwAcIPxaBeh1OWMA7m63L0ffBNtAaNTgGH3WTED8NsibXQbnHRKAFr4UvP8qperC8kK63+nZwjh9qia+PTrXjDyHO31Jz6XxfoqRbGNpK11JgnUdw8oASPQcGZr7UkIzaYGK8e4dfk0qARH++W026Ue47rkv0giSCBs2/LQdkHokiciduW3C4vlMyy0d75NKvIiyYnxvNdpXR1PnKdKKL6KqAM/Z9ZfvkPyO5ymirNjq/CVQpupyuoEWhXzmhqi2kt653MKN6zNncD4eW/Vn+lbOhP7CFO9kX/vMM0KMGmGAue4jWucld47QteBHnhnp1JkGV+KI38Qx78nJ2U8f4zjSO4aWn8PTDZOVzbsLbMe2tdVYoIxPePXl0LpbRQwKsFMeYObIlIjxWLlBSByWf9e7pBR2GtFHLdM3AAqFFPZRjhFIExBUWaNawoZHYchX2OCNAn0cSlmjmw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW4PR21MB1857.namprd21.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(396003)(376002)(346002)(136003)(366004)(19627405001)(8990500004)(4326008)(33656002)(64756008)(76116006)(26005)(478600001)(66556008)(8936002)(5660300002)(52536014)(2906002)(966005)(66446008)(82950400001)(166002)(6506007)(9686003)(55016002)(82960400001)(86362001)(66946007)(10290500003)(71200400001)(110136005)(186003)(66476007)(8676002)(15650500001)(7696005)(83380400001)(316002)(574254001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 =?iso-8859-1?Q?rXIqRFDwgZA7QVrkzsibf9yST8E5JADVgwVSXMdTcEK5mCfnICcTkyzIzI?=
 =?iso-8859-1?Q?BhWMF6jRzdSA8wzCb/lteNHH+a5BXsWIzyA9ZtnD0+rxBjqIe44cFuPqSk?=
 =?iso-8859-1?Q?L2D7lDqU7CQHY/it9NMFuX4biTiwNYaJDlHaaqi6Gw0eL4uVLrmys1NL0Y?=
 =?iso-8859-1?Q?oNxtUDvNqQIZCgXhCwUnVqsROsyTwdrg7Ho5V4E/Lvk7i6Ox7y8zOkCUIC?=
 =?iso-8859-1?Q?/Sl50AeIFmV2DAjBv2sI4Ho6qrilMO/q+irj+poWtjBASlO7MJMQQAUAn1?=
 =?iso-8859-1?Q?4pyoNWNK1oyXidstQ/U0/Oj94zlRWYsDerT1fy/L1Qfztoj2WyMWuEG3VV?=
 =?iso-8859-1?Q?6Dio21aTK4Tjq4MWN0aLZYpbolzRgRJeL4YMbgfvt0RcvjZRudU4YYmdeW?=
 =?iso-8859-1?Q?3OyAYe/YjJSumgmxwRfK0gnCEtsePEwuPAuqXFzos+j3t0gdUR0wgbae6Y?=
 =?iso-8859-1?Q?4T9oJgVK4CRurhP71sLuLk0Y4/2vErCVGCapoo7qeLBAjB89LkX70nKhgl?=
 =?iso-8859-1?Q?mdiaTFZo5vuNVayXbvdX2+sNLbkfg5dZ4OBBpeG4LHW3oPwCCqnfT0DiXp?=
 =?iso-8859-1?Q?lX6JNokI+cBJpOWA2RUV+ibLCpCwIpN2OqAHvI26WG5l3TwFdjt86Rk1CU?=
 =?iso-8859-1?Q?mE30NXfNEiXv+GAJV+6fZdy9YelWwQ1HyUIMiVnwR3foEZ8S/VUOk/Pe+I?=
 =?iso-8859-1?Q?n7Dul8gqTn7NjgmQ7LRHl1d9A6Rmw85moHsbRLSlPCzdoCVZNZORAIdGtN?=
 =?iso-8859-1?Q?F5XrLuhoZkECEgbBz6/agzq1clOaxYr2clw8QdRymjvNqacRDzkXO3SGNI?=
 =?iso-8859-1?Q?8Zy7WZfeTe/5VFZ0g+qARMjCjYW3X2vI0CMynJjbppBsPShal7+0CJiDtG?=
 =?iso-8859-1?Q?i/KVthhKAVpyyeisa+SG/iVVcpzQWGCIlgEkmcbtPJxrNxLrrznmbv9mHk?=
 =?iso-8859-1?Q?jyoDELLvhCOH7swXeA3P8N3x74mTYlusqKHLAEgXRGzMQaaNmh9h3Z52kf?=
 =?iso-8859-1?Q?GA40zr6HXUEi+mzvA=3D?=
x-ms-exchange-transport-forked: True
Content-Type: multipart/alternative;
	boundary="_000_MW4PR21MB18574AC1AC607174551A3519DBAB9MW4PR21MB1857namp_"
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR21MB1857.namprd21.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71f7c5ea-7c01-40fd-667d-08d8b686d845
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2021 23:15:54.2129
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oOvtqHPoHVaLar+b77TohlFD2h3h6eCQ8lzynbj5g0enWDLm+rQqZ5CGGb3qImH3ILijWpizOWYCG3Vra75VBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR2101MB0970
Subject: [oss-security] [Security Advisory] CVE-2020-8570: Path Traversal bug in the Java
 Kubernetes Client

--_000_MW4PR21MB18574AC1AC607174551A3519DBAB9MW4PR21MB1857namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Kubernetes Community,

A security issue was discovered in Kubernetes Java Client that could overwr=
ite files outside of the current directory when copying files from a Pod.

This issue has assigned CVE-2020-8570.

<https://github.com/kubernetes/security/blob/master/comms-templates/vulnera=
bility-announcement-email.md#am-i-vulnerable>Am I vulnerable?

If you are not using the Java client for Kubernetes, you are not impacted.

If you are not using Copy in the Java client for Kubernetes, you are not im=
pacted.

If you are using Copy and you have upgraded to 9.0.2, 10.0.1 or 11.0.0 you =
are not impacted.

Otherwise, if you are using Copy with an older version of the Java client a=
nd you are copying from untrusted Pods you may be impacted.

<https://github.com/kubernetes/security/blob/master/comms-templates/vulnera=
bility-announcement-email.md#affected-versions>Affected Versions

  *   All versions prior to 9.0.2
  *   Version 10.0.0

<https://github.com/kubernetes/security/blob/master/comms-templates/vulnera=
bility-announcement-email.md#how-do-i-mitigate-this-vulnerability>How do I =
mitigate this vulnerability?

ACTION REQUIRED: Upgrade to 9.0.2, 10.0.1 or 11.0.0

Prior to upgrading, this vulnerability can be mitigated by not Copying file=
s from untrusted Pods

<https://github.com/kubernetes/security/blob/master/comms-templates/vulnera=
bility-announcement-email.md#fixed-versions>Fixed Versions

  *   9.0.2
  *   10.0.1
  *   11.0.0

Detection

If you find evidence that this vulnerability has been exploited, please con=
tact security@kubernetes.io<mailto:security@kubernetes.io>

<https://github.com/kubernetes/security/blob/master/comms-templates/vulnera=
bility-announcement-email.md#additional-details>Additional Details

See the GitHub issue for more details: https://github.com/kubernetes-client=
/java/issues/1491

<https://github.com/kubernetes/security/blob/master/comms-templates/vulnera=
bility-announcement-email.md#acknowledgements>Acknowledgements

This vulnerability was reported by CodeQL Automated scanning by GitHub

Thank You,

Brendan Burns on behalf of the Kubernetes Product Security Committee



--_000_MW4PR21MB18574AC1AC607174551A3519DBAB9MW4PR21MB1857namp_--
