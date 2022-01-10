X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3550" "Monday" "10" "January" "2022" "18:08:29" "+0000" "Qualys Security Advisory" "qsa@qualys.com" nil "83" "[oss-security] CVE-2021-3997: Uncontrolled recursion in systemd's systemd-tmpfiles" nil nil nil "1" nil nil (number mark "U       qsa@qualys.c Jan 10   83/3550  " thread-indent "\"[oss-security] CVE-2021-3997: Uncontrolled recursion in systemd's systemd-tmpfiles\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-3997: Uncontrolled recursion in systemd's systemd-tmpfiles" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13695 invoked by uid 550); 10 Jan 2022 18:08:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13669 invoked from network); 10 Jan 2022 18:08:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=from : to : subject :
 date : message-id : content-type : content-id : content-transfer-encoding
 : mime-version; s=qualyscom;
 bh=9FrS7vovfJ1Md2UG/WuX+XiMfLpMap9PS3gRI2AaR9Q=;
 b=JyOGP+s5il+II1jKwcg7ftpktaoNaZB4iNzox7v+uJKzdoXKbxoagYVqFT3cqMCKS2Da
 pVpdtwowD+QCuH+EyuufXGOYuGvvglG1GDbioEqRTAIGy4uG9I4sDfhgyo4fi7JOWG8o
 LFnCjFf4yJ7dlzmdUfu2HyMEj+KLKe4sPjXNGzNdXOOgNc5Gg25L38TPVEnaq6az0428
 HDvhYQPWRkfR/uovB36fwNNQRKUw6WGmk2cpbiX+6Ti/kyqlpWUBH7Lu5Hj2ZsnSbS+7
 TSmmgtkIN+h0eeLg+EXoVX51nf6MeYzXkodeC0mPUD1vm/xqw+KaGxy+pFOFHOT6d2CG kw== 
Authentication-Results: ppops.net;
	spf=pass smtp.mailfrom=qsa@qualys.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kJ0zKzTac23edn8rQmc6ykQF4Wgu8Ilb8h8aA3loy9P7bfpAPZ6pfJR+rr1O+gVmsUKspq1coc/cYPGGeRGD7cs6G1uL/CGbGDEkXBdlc2faFtiqGZnG4owKGXgtYWmKWmlcMY3XARnKV/U5P7AxTX6tgQHGLhkorCC4JFv0WKnQshrbxHq2zuKCfXupcWjraLifEPlaehujoV0LV7QONQFWskVTyd0uJdnfB1evD/eSWXhhznYfxWYe0dJw4GzNen0QyIvljX/UYCSnRoK8OjLLZRFW+WQV54IeuOYcdA0RAHeS8ft1XoCF5g9+4zJPSy50qYUFtlJfbBFH0Du7yA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9FrS7vovfJ1Md2UG/WuX+XiMfLpMap9PS3gRI2AaR9Q=;
 b=boPoPHoqxe8MNNbrM0w5yK4SRv4bjoTQ9pylVcV4QEOehnf8C/oDWj+EGkn4jRibblJ2uqRTEq5OONpfWiyWsZQ9xbqASl51wiPyKZkj8jUk3rHy2bPcistmBkC1aZPx7fjomNSa2cEKHif71w30f2TFRvwhDPnn1xs5XhFxE/OF6blgKhLkyjSs70jvxH8ezEG8mou0TAbeMJmhrgMM2oC3kG2Uh95vtzybYay351lfdQ+92FMo6r2H3NkRnZYui43lS10AeIOLp37YpdumNfwjTyc5iLCYGozOcqbSzxXO1YTJ4BZo4+XNz49tndJHQ2cCGoWXQMmOyLcP/Km7YA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9FrS7vovfJ1Md2UG/WuX+XiMfLpMap9PS3gRI2AaR9Q=;
 b=Z3trKtHXfiYCTyc2FBPDcLMuCIn4Rg/oLwkwTjYM0FCmxRMQ/sw05Wbvk3HgVVicxKlHk+ldifW/krLoB3XX8L8R7a7djYARQHJ36TgWKhB7WN9nQLT0QwHYvJ8W9hnjNnRJrZ5AVDZKb7D8gOctIDFhMOlDPFMf1DJxIpSIXz1CPAOWjaIZy86L9mm71kdopAnqqQnkwPgHOjoahOQR5Spxr7z27K00XmgiNiif1qivliAOIXifTYJxm0hRUjtdayMqjFumT1NY+U3CNSK77+9M4FvrE4ZA7rp1bPxrEzUL6q8k2DLwazwn/6nEGgWIefLfBDg1+60dEEBJgWzAfw==
From: Qualys Security Advisory <qsa@qualys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE-2021-3997: Uncontrolled recursion in systemd's
 systemd-tmpfiles
Thread-Index: AQHYBk0R9HndvFzFF0GjFvvt60ZKqQ==
Date: Mon, 10 Jan 2022 18:08:29 +0000
Message-ID: <20220110180746.GA3527@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: babb3eab-5c1f-43bc-c1f3-08d9d46434bc
x-ms-traffictypediagnostic: BY5PR06MB6530:EE_
x-microsoft-antispam-prvs: 
 <BY5PR06MB653026126328EBAFD246D671D5509@BY5PR06MB6530.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 JcHq5kAtq9kwcdsZJn6IlO7c9y2fP7eupJwz+dWu9Pso09tBrRllp/9K/iHIitH1KdyJg3IlWjB+3fzfRm/WUtUruzoVgiC1wYOK1trtblyl0+25GbH8+nBdX+fXT+jrawyCRQr+5MlTBEWJmv7jiI04COsJrEj9JOoTNrhMaLH96nQsnjNu42trRJ9iad8t3LbyoWHAQLl4HKKz2ny4N+qnxHS+DP0wsBKHybro1rJKWxwuc7HowdzbWhh1Neyb95/QVrdp7b3wcB0j/JIUkLOGL+EeFGRigRaHnzyBEixjNzDnN4T6ika5rEa2yAVmatJgLQWoefqjOSWJO5QErM4PQu3poYvdcaFCAyiaCSq5QvYMzZ3jbjpa8jhAAbgZU8JzHLhqpqp2mUDbQHaStUWsP7VTXfsVNXNEk+rPew4r8c+drWV8C7VOWV5qoYNaVadf/YsvWbJhZ5VTKM1MYoT8YsSRJMA5oEcZkmJXk+341dqu7z5RS1b5xCxXyMQo9wokKKx1Lk1SXkF4E46OBZ6qUFZR6jqZdkqf/kpH/7ZVA+mumsQsuhyQjrE5ZHIkLCalykg2OjeCqAW742MdUGLl9jMbCzfMWe28DHsBHb6vW0KGatIaZr7pdghoiGSMo79i0q6P2Yn9KJHVQQTl0T2GXQEoR41kLdygnfyXndns7H7jWjTSPycD0IBkNtc8flUJMGkfSdLp3pBn7WNSjDUXjxaqxA2EHiYBtYtrXBldIKMPZMl1rgAGailXJgQTrnpxV+JACB8l+j3FzOZ5sRvWaVZJX1+N8JMFE+9OeEg=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(1076003)(508600001)(2906002)(6506007)(5660300002)(83380400001)(71200400001)(316002)(6916009)(86362001)(66556008)(66476007)(66946007)(186003)(38070700005)(9686003)(76116006)(6512007)(33656002)(8936002)(122000001)(6486002)(66446008)(64756008)(8676002)(38100700002)(966005)(26005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?4mBKxvkM+zDa9i1q0BX1iH1DEpYFrmogVnre2ZaNO+JUuf4Mxq0nyYhkT+l8?=
 =?us-ascii?Q?Oht+di90OLLfEcrCN45IN69474Py0Tb0HsrT4fxTDegeRUCSReHIVW+xrVfZ?=
 =?us-ascii?Q?8fpbh2aehpE5hgze+r0bS82lZynGKI1mISr5iTbO34n46cO1MDznuWJk24Z2?=
 =?us-ascii?Q?1X1mRrb6hycSAPzodev82TRD3DNjbtbdlHOQUm+xzWrR1b2fsriwgBfFRtfJ?=
 =?us-ascii?Q?fcGKaksMus4D74nF7v2EgTsrWUfGEUg/QN3o6GQsr2YX4Dw6mAfEPTB22dw6?=
 =?us-ascii?Q?c+fszBNWNsChN41yXN06k0fPb0Yu7JYImUvbLtzyJqswK1fCJqtGYJJ1CxUa?=
 =?us-ascii?Q?AyEwi2lDaPFNycqFV7jCzoCfGRetJGR2y8evTzorcJF+gQeVnRMr+LFanKum?=
 =?us-ascii?Q?suzErqxeHWssc/kj4hpjA1uu2n8FiHil7YIour+fMS2fMPJjqb5xc0j7/sia?=
 =?us-ascii?Q?Bk5yvejnh7R/MU9zbDXzK+G2r/HoFHfGAW0vNu04XnsE7MeG61rL615piG8a?=
 =?us-ascii?Q?SYE5rEFF1G7ZXRiVmYzImdEODk+2Xp3sNEpoB54XVX/rf6zejK89myX7peEo?=
 =?us-ascii?Q?y4LPppgDdFqLRUFHH1X3OiQkUlnWzp8oBaW51IEczR9QmER09CSz0f/plNIO?=
 =?us-ascii?Q?pOl44bYzh0//1yjGLp2Ez+i8389U25hVzoG964kbj7Bvs4elfbj3B9j1MbZk?=
 =?us-ascii?Q?ntTKgkiYUllzF0y259fzK/b3T1edIVPpDJNvv9yy4ZdvT4jg4u+l/lnTdR7C?=
 =?us-ascii?Q?52gcRLVDPsNXsmx2IGkGX7j0MmqVjyR0WLKv1BmyuUp2h2d6UAXi1zEPOLFm?=
 =?us-ascii?Q?M7XPjIY1o6tBXtq7zoopwFHubRQlqxx71HgQo2aPt4iiwEfnobasWCcqKbIg?=
 =?us-ascii?Q?fIMJ2+TXY2mvM+DLvow3yj2hj9uoR8D8wPcV14WQJymnKMZoHz/j2/tZ9AEJ?=
 =?us-ascii?Q?HrLTPQcRklBrGbOzYIlGFrqXGh9VVwoveeqNmbOlnUsS/r2njHAavLQ7CuC1?=
 =?us-ascii?Q?DJPQrqlugv3QvnfeED4gFkOonAAmdCOA0dqiqjaffGJDpgc+ECD/O0NEzTyF?=
 =?us-ascii?Q?CMIKXgbrWEhCjcc+/oyilOFFfYQ+Gf0fBptJLDDhdOdsfx0QlwSfd5FHFxsi?=
 =?us-ascii?Q?6tvZV3pFJe2IK5GkQNfogYxXg0+Uv9EH97fJEpgp4KK2BfhJy2wHPLsXEEjp?=
 =?us-ascii?Q?I6zxUmRWWkjbm9D1ROMTeWCZa7bsq5T8uqGNk2t67AQl+CjS4cCosvihuUAn?=
 =?us-ascii?Q?N/gFNrkSRhGCVx7WZZ+f/+6ZHj+65+sQ6XkLOk1Hm6z+/mLIppumK21iRNO2?=
 =?us-ascii?Q?9I0a4qFIfV+ccNzr7XOgKS8u7r/265qAuBJPTmRUUYHbEhhfruKqKaZdHTDd?=
 =?us-ascii?Q?WUOiImt9/70dTWx3GoK0pPOXVWZ/21NgucBnKQGuu+XJsaDeQXYXyoWjkFAO?=
 =?us-ascii?Q?N7ecFrl1X8IDONmpIwUTwvzs6JbEDPgagAA1SSjBfDLNaG5SmElXWHa5b84A?=
 =?us-ascii?Q?vtcZ9YYbSgopuVrdMUq8tyFS8NEqxK1fOLTZIUPk4N1sZQOu7VYiT3JxcNHg?=
 =?us-ascii?Q?01qCHQVh2HS8rSaDvAygdmY8hCgqN5QIZCAV3np3sxOucUnqnaSY8TD1fMTC?=
 =?us-ascii?Q?xUNyKMloo5qhxlWijJHwSn1NUz3lvGlunLPlG6yvHLcowhowUkvG4lq8GKI8?=
 =?us-ascii?Q?DLTxWwt6NuKI0FL4R33XespnR8k=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <A13C0EAF9F3F994ABE0AE6B30952641C@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: babb3eab-5c1f-43bc-c1f3-08d9d46434bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2022 18:08:29.4766
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3zoHjSpFdivWVar8+ZISIfOJ4y0Ppj05eOhGv567hCtsLYelLUIH3w1LXH0iEv+Panmzdttr9uy/pubExAENAedfqq7KzCtitWRF/FNlynY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR06MB6530
X-Proofpoint-GUID: GurqxlYZstvAmRAWow1hu2QIW7vLg6OB
X-Proofpoint-ORIG-GUID: GurqxlYZstvAmRAWow1hu2QIW7vLg6OB
X-Proofpoint-SPF-Result: pass
X-Proofpoint-SPF-Record: v=spf1 include:_spf.qualys.com include:spf.protection.outlook.com
 include:spf-001ca501.pphosted.com include:stspg-customer.com
 include:_spf.salesforce.com include:mktomail.com
 include:emailus.freshservice.com a:sendgrid.avolio.tech ~all
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-01-10_07,2022-01-10_02,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 adultscore=0
 mlxlogscore=769 mlxscore=0 phishscore=0 bulkscore=0 priorityscore=1501
 lowpriorityscore=0 spamscore=0 clxscore=1034 malwarescore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2201100124
Subject: [oss-security] CVE-2021-3997: Uncontrolled recursion in systemd's systemd-tmpfiles

Hi all,

We discovered a minor denial of service (an uncontrolled recursion) in
systemd-tmpfiles, CVE-2021-3997; the Coordinated Release Date is today
(January 10, 2022), and a patch is now available at (many thanks to
Zbigniew Jedrzejewski-Szmek for working on this):

https://github.com/systemd/systemd/commit/55a89ea1b4088a6d84ba0bd3cd8e648bd=
51f1ebf

Below is a short write-up (which is part of a longer advisory that is
mostly unrelated to systemd and that we will publish at a later date):

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2021-3997: Uncontrolled recursion in systemd's systemd-tmpfiles
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[...]

We therefore looked into systemd-tmpfiles (which "creates, deletes, and
cleans up volatile and temporary files and directories") and discovered
a denial of service (an uncontrolled recursion): if we create thousands
of nested directories in /tmp, then "systemd-tmpfiles --remove" (when
executed as root at boot time) will call its rm_rf_children() function
recursively (on each nested directory) and will exhaust its stack and
crash. For example, on Ubuntu 21.04:

------------------------------------------------------------------------
$ cd /tmp
$ perl -e 'use strict;
for (my $i =3D 0; $i < (1<<15); $i++) {
mkdir "A", 0700 or die;
chdir "A" or die; }'
------------------------------------------------------------------------

Then, as root (warning: this command may delete important files and
directories in /tmp; it is normally executed at boot time only):

------------------------------------------------------------------------
# systemd-tmpfiles --remove
Segmentation fault (core dumped)
------------------------------------------------------------------------

We have not fully explored the implications of this vulnerability;
however, we noticed that:

- at boot time, systemd executes "systemd-tmpfiles --create --remove
  --boot --exclude-prefix=3D/dev";

- systemd-tmpfiles first enters the "remove" phase, and subsequently
  enters the "create" phase;

- but if systemd-tmpfiles crashes during the "remove" phase, then it
  never enters the "create" phase;

- and it fails to create the files and directories (specified in
  /usr/lib/tmpfiles.d/*.conf) that it should create at boot time;

- for example, on Ubuntu 21.04, systemd-tmpfiles fails to create the
  directory /run/lock/subsys; but because /run/lock is world-writable,
  attackers can create their own /run/lock/subsys; and because various
  legacy packages and daemons write into /run/lock/subsys as root, the
  attackers may create arbitrary files via symlinks in /run/lock/subsys.

Last-minute note: it seems impossible to trigger this vulnerability in
systemd-tmpfiles versions before commit e535840 ("tmpfiles: let's bump
RLIMIT_NOFILE for tmpfiles") from February 2019.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Thank you very much! We are at your disposal for questions, comments,
and further discussions.

With best regards,

--=20
the Qualys Security Advisory team=
