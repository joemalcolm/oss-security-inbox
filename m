X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2449" "Thursday" "22" "July" "2021" "22:30:45" "+0000" "Qualys Security Advisory" "qsa@qualys.com" nil "41" "[oss-security] Re: CVE-2021-33909: size_t-to-int vulnerability in Linux's filesystem layer" nil nil nil "7" nil nil (number mark "U       qsa@qualys.c Jul 22   41/2449  " thread-indent "\"[oss-security] Re: CVE-2021-33909: size_t-to-int vulnerability in Linux's filesystem layer\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: CVE-2021-33909: size_t-to-int vulnerability in Linux's filesystem layer" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3319 invoked by uid 550); 22 Jul 2021 22:31:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3295 invoked from network); 22 Jul 2021 22:31:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=from : to : subject :
 date : message-id : content-type : content-id : content-transfer-encoding
 : mime-version; s=qualyscom;
 bh=u/WW28ZQjR8v62RrhImMPamEyMgZvAsYWg3uAFDOGkk=;
 b=ziM9Mux5ae9HpdvTCcf0RfgQ6/ClQei9h9crW0vHmsF50mkbeW9kiw3P9giYfOTW3ZQa
 d3/gRrycjsC1cqxGsuMD4VEISBx+biPezqR57a9GraliBXK+hwqwnmSr4pn7fFmJILF1
 xnRkw8fvxmMaBnu1nW2/3ReSQRvN+eV9+GCBPTv1kXEsE+V8XEUEG1fb17y5wd+SVloB
 kslbHznnQh5ag7kmp/Lgtg397u8JLdbN7jFVtWKyjCWUJvaXBwPiwZTqPP8w6zbh2Ym0
 YCuYChJNIgxE3lqfB8nJ6ewTvtQbo214eE9U2TlOD5aX8f1weJaK7cVumTm3c1QOefbc +Q== 
Authentication-Results: ppops.net;
	spf=pass smtp.mailfrom=qsa@qualys.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CENJ6aLk+QjsaRZwb3v4jbyMemmkxmRy9p7y/zxW06ABCUoFuppPoQN6l929QEo44+q8tfxlyY1m1B7h35Uz3QgPTNAXlBLRGfb6bcJhYvGAyRkmaRosjvLRV0lkLvIn68t72vC8JIURfFhtOHQGAyapEajx7sQ1H5cemooFZELGPj8jlP34xTYdILcBsep1YyKACpo8d4tcDYI6kP+o0hwmlxUb18w7lDzC0FM3IT8SBK5Eqq+VzQoAGI1iE4yzSSlKbxP1XYY28F41oJRSKqosR1OrwngwbzkbUldPerlL9YlHbJQ/KYD132/HU7n5dEgzNlEGaT4beVBxO1wB8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u/WW28ZQjR8v62RrhImMPamEyMgZvAsYWg3uAFDOGkk=;
 b=nHrZng/73yY7Ky3ghgsaCm+JR55vrt2wYoZDMKj4JAKZL1d7rbD/zMn0mLPEsMFcvguqw3q271NhzIBnSpKl8vy/3vx5W63sTqw4NGiRCmB8skvXXp3OAal2kiEF8piB5EiuWgahLbT7ZgqqmJvEkVORLrRXVE15Wm0m8zixUnM+ak1c6SASJDb/7Q4zWyXPoD1NjoPIu1o+84nbQ8j1wZsJ+nIiWlSMQKDW7ym8iLD/yRu97sC8z9+4/6U3y7Wqw8DB6i2hqahbw9N6jx70+18Jp93ddwDus3zNzHqJK1kPiDpMTtGKoxeoVs4jEnOYj28HidpiKA75+dvijUfTLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector2-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u/WW28ZQjR8v62RrhImMPamEyMgZvAsYWg3uAFDOGkk=;
 b=4+FP1fBXO6RdEA0a3PbIpgQsSOPXsrQxCt1HvZR4EUr7gDe6y+XruwHOWisehabU7AxEyAj/v1XUvUqSnj9gjjvtJV2Us6vzOzKDG9s77yggshj+IxtOu3vGhIoX0FKulGaqlwdWUAiFdbWfK+OwejTbUTxaRMYq4PHfQuhMvI7HL5wNsQdeioaxbXXF0xgTjsn7GYhFtr96hqcAiKJGLdFaEvXr+STPpIwLr1GJfzHdkpS6GLD2TL2mL/cta2o6JT1wQJDe+rVppohS8QfAYw/bsRJ8gkn506VLz51y07eSTTDX6xdEqqv3KrHeSqse+VvPr2Aet4z4RdJGFfepWA==
From: Qualys Security Advisory <qsa@qualys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE-2021-33909: size_t-to-int vulnerability in Linux's
 filesystem layer
Thread-Index: AQHXf0k2/PV+ly104UGswb+7AFqQKQ==
Date: Thu, 22 Jul 2021 22:30:45 +0000
Message-ID: <20210722222807.GA23469@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.openwall.com; dkim=none (message not signed)
 header.d=none;lists.openwall.com; dmarc=none action=none
 header.from=qualys.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 65b5fb63-d660-4335-2ff3-08d94d60592b
x-ms-traffictypediagnostic: BYAPR06MB5383:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: 
 <BYAPR06MB5383D8B966E27FA016FAAA7ED5E49@BYAPR06MB5383.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Cn1Qj92w4l8sgSK+vZpjJYV0xy2q6LC3WnmyIvifmS+If+cSkhABSiBsb1zm4tUD30rhMD6fob3UuwVoWj91clkd4IApgN/WzuvOeQSdemZeYg+HtNpzIpFCaq1p4Xbp5hPx8RXDtizU5Y6tmFEC4IlbINmda76lL1Syj9b3tqWJvkfqVgAer7Cp6tgaOfvww1PLE9Rr0Y13jmHSMDGem1oCY7lkcyLe/UXglzakllfk5revABuOukZCqUMjiKprvjgszK1E0D84O1ZbAvx69v/dRonCbc1edSVQ+ZuQrdX13u5HJ90xyG82UdGm4i3lS46fnRSa0VHcWyz783UMYXtWTJVyGh8dyaLayQcd2Qo5m3NX4xJOfbM/SOGhUhSX+1R71HsRbNqQBXax77ede9l+yi6KOu+xL/F+dnsaAXOOmAli0ncV1thPtQmif2qYXo4P5yy/YrHySrDWJJtLkUgh6hrTqM6Y2bsSRa83Es2sauGGsxviTv9RyrIrlNjCXxwUFs9yypN3L1Mwj+wszzqs8APtGmu4xEWwCrs0bHWMyjSpJTaucPpz3/o8diszHcSI/1hDo30laBgSMDq4AqDC74NVpNn7bBSivx9dp7tlsBiIzZ6CYXziB69YgYU2McBGFb4byEc43KonUsthXouMhgfVg+vW0b4ltM/y3YC98Vyd+zdr+Uyg/6tkStusq1E2Y1csR/KMU/NT8TxpxvWnYauwCrS5KFTEEr/RCas=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(39850400004)(376002)(366004)(136003)(396003)(346002)(38100700002)(1076003)(186003)(33656002)(6512007)(9686003)(66446008)(64756008)(76116006)(83380400001)(66476007)(6506007)(316002)(66946007)(66556008)(86362001)(5660300002)(122000001)(8936002)(8676002)(71200400001)(478600001)(2906002)(26005)(6916009)(6486002)(131040200001)(38070700004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?UEhVazBDVXdpK25SN2Qzazg2NExIaU54YXlNdnpZK1VtU2xuNDkrd0I3THM4?=
 =?utf-8?B?c1JJMitBSzhqcU80OU9JSkxXTXRDZlYyc2pQaUpSWEFxZTRPRU0rSEhLM2No?=
 =?utf-8?B?SDVpSXI0bnpLVkIzejB3VDJYZGpzcHBSM01vaVd5NThvLzQ3RXExK3QxeXhu?=
 =?utf-8?B?TW5aTTVmZEFyVGc3NFdERGFQR3NPeG5iNkxQT2lUazVxVG5CRW1XWXpBZFpC?=
 =?utf-8?B?eEMwbVVDWkVTS1piWkEwWGoxeTM0c3NFR3RLVkpYSU42ZWNXZnVOa01reFVx?=
 =?utf-8?B?eklGZTFseHZBYzVVV244QjdrRzYzQ0tRK2dyakdKU2lLSmlLRldNc29LOVBK?=
 =?utf-8?B?bVJOWEh2VjluS2NuTmZ3M3I0RnBXdlQxWHZ1c0hleEpZa0o5WkV1dnBQdEFD?=
 =?utf-8?B?TUtlNjBuZmhRRFlyM0VVa2xsVzRmenJrUnVqSHZ6blcxK0t5dis3Rk44SzIz?=
 =?utf-8?B?d2YvZXpZdkR3UHdkZGVUWTVPZ1VSZGErdzhXUUNTSzI2aTNGOEo3TEg5YU9L?=
 =?utf-8?B?MGZwKzU4NjVBZFFkRERZc01HTHV1SjZPT09Uck54L3lmZUVNWkp0N0tTN3ZS?=
 =?utf-8?B?ZHFKNkZlYXNETXNkNmVERTBUemoyQlliTGFKN0E1QUZmVDJuRFN6SU5scms4?=
 =?utf-8?B?OVFCYzl5WGRqSEJJWWg0YjF5azA0Y2kyd3VXcUdzcyszcW5iQTNTSE9kNy9r?=
 =?utf-8?B?SUxFK3FiU0VYVzRyYjdGZW4vK2ZOSEdLNVBDc2Jhd3dORnZXNXlPdWR6UldV?=
 =?utf-8?B?VmVoSTI5YkZTVWQrenMzeDA3N0UyeWUzUk1NTHFpYWJJbXNBbDVOQUgyQ1I1?=
 =?utf-8?B?NWZkMy9aMllqZlE5L2VpRjVQb3hUY0Q4eTk1azJLSWZHcEROZElsRW1KN0lK?=
 =?utf-8?B?UTVsajQ0TlhWWmw5N1pJdjNMN2pMQTRCVDdqYklKbjFwbkhCZHZVcitPZHAr?=
 =?utf-8?B?YnEwWlk1QnlSWEtGZ3JCR21CVHFWczU2UlFYVTIxamtlVDlrekZnNEQ3SHhu?=
 =?utf-8?B?NjF1WlVnb1poNDlta2JmWDkwVzJZMDBCUm9KZXpNNHF3R3dvMWFJWEQ5Y1VS?=
 =?utf-8?B?Qkw3VGdVVHVpQ2MwWDdYdEZVbENRYzhpVnY5OTZDcE1DTFE1RWJKZHVFUkV3?=
 =?utf-8?B?c2dwNURINk9VeGs3WTRpMkFuaVN4OHZLLzdOTW9wYm1YSzdxcHJHUEtyc3k2?=
 =?utf-8?B?cU5TSk5FWlhCWXI1V21LSDRNdmlhaHFxNURpTGJYMERadjRLSE5YMEJTOUd6?=
 =?utf-8?B?bXlQZnkvc3RIWGhGdVp5Z216UWR4UTQzQWZKWGN4b3NTeXF4YkdlMFF5aUwx?=
 =?utf-8?B?azZXaGd1Qlh2UUNhNHYyUk1GK25jY2h2ZkV3c0dBR3lBUGJSNU1aS0hIRURC?=
 =?utf-8?B?d1lha3MxNCtUQWFRMTY2SGx5dHdBcGJjKzh5UHJlK3BUdXZ4VEJoSm9kOW04?=
 =?utf-8?B?OStTbXpSNUZZNzMxMVpLY3M0N0I0WC9Pd084dzZDOVdWSmp5Wmh3Z0hhUmVr?=
 =?utf-8?B?NmJkcUJrSHd0VTdHQ25xOXZKODFLeDdsOEYrdzBUMlkyMmhDZ3JGZXhYTTVh?=
 =?utf-8?B?VzNMWm42bHd1VVdoYS9GbHV3UkFyeVRKcGpMaG9Uc0hEeDNqbnZ0aS9QaDU2?=
 =?utf-8?B?aDhtNWROajlVZzQ2cjBJeVM2N05SaG5vMGIvbWtBeWJmVEdWNnNRMjZQQWk0?=
 =?utf-8?B?aHlUaGZMc1BVNENFdmZpWU9HZSs0VDVFMGZXT2dYWDFaRGZKNURvYXdycFZM?=
 =?utf-8?B?c1ZCRkxmMGRzWmd6RnllMUdiZCtRNUlJRndHR3VKU29ZSXFYV256OXBXOTZ4?=
 =?utf-8?B?SnNkT0xPZjZ1R3FiVlM5QT09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <17FF0F0659E9C54FB0F8573677FA3C22@namprd06.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65b5fb63-d660-4335-2ff3-08d94d60592b
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2021 22:30:45.6861
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S2r4o5b+70ubD8qNWbHLHyIIaG5UgdHMIAQRiAX5jXks3anyZ07/XsU5Q+6o5nZZ2VZTmREi9EFlLJwIQJzvW1Y7+gB6ki8HdMX1GyQNY5Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR06MB5383
X-Proofpoint-GUID: KjdM863dP6Y4nGxyT6VIbpa8Za6_Mgpw
X-Proofpoint-ORIG-GUID: KjdM863dP6Y4nGxyT6VIbpa8Za6_Mgpw
X-Proofpoint-SPF-Result: pass
X-Proofpoint-SPF-Record: v=spf1 include:_spf.qualys.com include:spf.protection.outlook.com
 include:spf-001ca501.pphosted.com include:stspg-customer.com
 include:_spf.salesforce.com include:emailus.freshservice.com
 include:mktomail.com ~all
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-07-22_16,2021-07-22_03,2020-04-07_01
X-Proofpoint-Spam-Details: rule=inbound_notspam policy=inbound score=0 mlxscore=0 mlxlogscore=519
 adultscore=0 priorityscore=1501 lowpriorityscore=0 suspectscore=0
 phishscore=0 clxscore=1034 impostorscore=0 spamscore=0 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2107220144
Subject: [oss-security] Re: CVE-2021-33909: size_t-to-int vulnerability in Linux's filesystem
 layer

SGkgYWxsLA0KDQpBIGZldyBwZW9wbGUgaGF2ZSBhc2tlZCB1cyBob3cgd2Ug
ZGlzY292ZXJlZCBDVkUtMjAyMS0zMzkwOQ0KKHNpemVfdC10by1pbnQgY29u
dmVyc2lvbiB2dWxuZXJhYmlsaXR5IGluIExpbnV4J3MgZmlsZXN5c3RlbSBs
YXllcik6DQoNCi0gV2Ugd2VyZSByZWFkaW5nIChub3QgYXVkaXRpbmcpIHRo
ZSBrZXJuZWwgY29kZSB0aGF0IGdlbmVyYXRlcyBzb21lIG9mDQogIHRoZSBm
aWxlcyBpbiAvcHJvYy9waWQuIFdlIGV2ZW50dWFsbHkgcmVhY2hlZCBzZXFf
cmVhZF9pdGVyKCkgYW5kDQogIG5vdGljZWQgdGhlICJ3aGlsZSAoMSkgeyAu
Li4gbS0+c2l6ZSA8PD0gMSAuLi4gfSIuDQoNCi0gV2UgaW1tZWRpYXRlbHkg
d29uZGVyZWQgaWYgdGhlcmUgd2FzIGEgbGltaXQgdG8gdGhpcyBleHBvbmVu
dGlhbA0KICBncm93dGg7IHRoZXJlIHdhcyBub25lLiBOZXh0LCB3ZSBzZWFy
Y2hlZCBmb3IgL3Byb2MvcGlkIHNlcV9maWxlcw0KICB3aG9zZSByZWNvcmRz
IGNvdWxkIGJlY29tZSB2ZXJ5IGxhcmdlOyBhbmQgd2Uga25ldyBmcm9tIENW
RS0yMDIwLTI4MDEwDQogIHRoYXQgZGlyZWN0b3J5IHBhdGhzIG9uIExpbnV4
IGNhbiBiZSBtdWNoIGxvbmdlciB0aGFuIFBBVEhfTUFYLg0KDQotIFNvIHdl
IGZvdW5kIHNob3dfbW91bnRpbmZvKCkgKHdoaWNoIGdlbmVyYXRlcyAvcHJv
Yy9waWQvbW91bnRpbmZvKSBhbmQNCiAgdGhlIHNpZ25lZCBpbnQgYnVmbGVu
IGluIHRoZSBzdWJzZXF1ZW50IGRlbnRyeV9wYXRoKCksIHdoaWNoIGxlZCB0
bw0KICB0aGUgb3V0LW9mLWJvdW5kcyB3cml0ZSBvZiB0aGUgIi8vZGVsZXRl
ZCIgc3RyaW5nLg0KDQpXZSBhcmUgYXQgeW91ciBkaXNwb3NhbCBmb3IgcXVl
c3Rpb25zLCBjb21tZW50cywgYW5kIGZ1cnRoZXINCmRpc2N1c3Npb25zLiBU
aGFuayB5b3UgdmVyeSBtdWNoISBXaXRoIGJlc3QgcmVnYXJkcywNCg0KLS0N
CnRoZSBRdWFseXMgU2VjdXJpdHkgQWR2aXNvcnkgdGVhbQ0KDQoNCltodHRw
czovL2QxZGVqYWo2ZGNxdjI0LmNsb3VkZnJvbnQubmV0L2Fzc2V0L2ltYWdl
L2VtYWlsLWJhbm5lci0zODQtMngucG5nXTxodHRwczovL3d3dy5xdWFseXMu
Y29tL2VtYWlsLWJhbm5lcj4NCg0KDQoNClRoaXMgbWVzc2FnZSBtYXkgY29u
dGFpbiBjb25maWRlbnRpYWwgYW5kIHByaXZpbGVnZWQgaW5mb3JtYXRpb24u
IElmIGl0IGhhcyBiZWVuIHNlbnQgdG8geW91IGluIGVycm9yLCBwbGVhc2Ug
cmVwbHkgdG8gYWR2aXNlIHRoZSBzZW5kZXIgb2YgdGhlIGVycm9yIGFuZCB0
aGVuIGltbWVkaWF0ZWx5IGRlbGV0ZSBpdC4gSWYgeW91IGFyZSBub3QgdGhl
IGludGVuZGVkIHJlY2lwaWVudCwgZG8gbm90IHJlYWQsIGNvcHksIGRpc2Ns
b3NlIG9yIG90aGVyd2lzZSB1c2UgdGhpcyBtZXNzYWdlLiBUaGUgc2VuZGVy
IGRpc2NsYWltcyBhbnkgbGlhYmlsaXR5IGZvciBzdWNoIHVuYXV0aG9yaXpl
ZCB1c2UuIE5PVEUgdGhhdCBhbGwgaW5jb21pbmcgZW1haWxzIHNlbnQgdG8g
UXVhbHlzIGVtYWlsIGFjY291bnRzIHdpbGwgYmUgYXJjaGl2ZWQgYW5kIG1h
eSBiZSBzY2FubmVkIGJ5IHVzIGFuZC9vciBieSBleHRlcm5hbCBzZXJ2aWNl
IHByb3ZpZGVycyB0byBkZXRlY3QgYW5kIHByZXZlbnQgdGhyZWF0cyB0byBv
dXIgc3lzdGVtcywgaW52ZXN0aWdhdGUgaWxsZWdhbCBvciBpbmFwcHJvcHJp
YXRlIGJlaGF2aW9yLCBhbmQvb3IgZWxpbWluYXRlIHVuc29saWNpdGVkIHBy
b21vdGlvbmFsIGVtYWlscyAo4oCcc3BhbeKAnSkuIElmIHlvdSBoYXZlIGFu
eSBjb25jZXJucyBhYm91dCB0aGlzIHByb2Nlc3MsIHBsZWFzZSBjb250YWN0
IHVzLg0K
