X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7092" "Thursday" "28" "October" "2021" "02:23:10" "+0000" "Roxana Bradescu" "roxana.bradescu@oracle.com" nil "148" "Re: [oss-security] CVE-2021-3760: Linux kernel: Use-After-Free vulnerability of ndev->rf_conn_info object" nil nil nil "10" nil nil (number mark "U       roxana.brade Oct 28  148/7092  " thread-indent "\"Re: [oss-security] CVE-2021-3760: Linux kernel: Use-After-Free vulnerability of ndev->rf_conn_info object\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-3760: Linux kernel: Use-After-Free vulnerability of ndev->rf_conn_info object" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22341 invoked by uid 550); 28 Oct 2021 11:35:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28323 invoked from network); 28 Oct 2021 02:23:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 mime-version; s=corp-2021-07-09;
 bh=EKAvcyoDXQUOBo8ZUlM5E25f83GTwarqoeJHGI3vjiM=;
 b=WY5KIiBOCKlpzbtkXSiTY05H230n8iI2uKQIo6y2vd+v91al1aW8qCrZV7pRD0h7K7Ys
 ttkZzBhzL97jjeOMb1Eu9hGVicdr9yhXuQzWPG8zJb5iPmm01SztW+UYPPIXR4+jOcvn
 7DskTClCNwRw/OW0wfAim01+bJ3JFycs2EQTnKoykmuwJPEkl+jnIy8ubFebvTcrWdQB
 fHG3Nlfrr7GkMoWfbLzXlCtXfwSHN82XoqZAXiMmx88f86X51qbPMoHh2jtHJZhQ0YKu
 z8obeK/eeS/77gzOWPFW3Kb5tuheoD/r/eeVIa0L/kmI6NIdTBZHAeFIr/sq1PPYCyD7 0w== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PGTrT/aHn5M5g70LNgJvaGFuA5f0PaT6VOC+XadHMR+or6f5OfUgsh+pXhRltWeUN755zZQjJv+c2VXw/ZVkDhoWofkKSkIpQIW99V9R56yQIrlfnkwmqHRDTe1Mqw+9PpTCKU52r4QghE5Kc0jrqFk5Va0sbr2QjqchuD3fMEJTMJ8hLE21g1BJ5/HHGQgyLOXgoV6AhHXlctAbs63fZgU8yKia+vMxxia8Xcww/EjlYhJnXiUmp6EPLSIYXdTmeQlhiXW3lm91x92Lg70ihxcdlI24IHmmIsjVs6TfGYeHdFUOB/FKQCfG1vARinwxtXcJFjXbT25qOx1pRovfYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EKAvcyoDXQUOBo8ZUlM5E25f83GTwarqoeJHGI3vjiM=;
 b=nl9eIjA8g3yzux8MBOB08Dj7nTyVcOktFwNe6mJwaluPJYOq/NenvhWcEcTOF9vVlQsTumDJceQPTNINBxIpnlBjHD1QoTgdYxEBgBx/eIpSEgMsU2gwcD4swJDA4pZuT7eZ1c6Xqngr7mV5niNhGxM1JNizEd5ZBmTiJIq4SZrIKWZQTtAaBI5CwbXgTXs0m/b6EPfn+cygTkqBlLvzMMeVpwHt9R6pvxILx2/rkbWnNi3QHxnM2s+5ViD8kXswZYMQTNi2X6ThHbT2shvQ+nNLgsWTHBj6Otyn6cQbZrKc1Wi3pEn9NK8SFCsSXgc+XBBxFMVewxE70JyGpkyZmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EKAvcyoDXQUOBo8ZUlM5E25f83GTwarqoeJHGI3vjiM=;
 b=S0vvOQ9IwxHgdZI5qqSXlHGeWfco8Hq9G01mbJLfCe4ygz8htX6sJtPFui/4CejjZPEUcVmSGeiuuLgTBvzAW7tnmqQmg5rguRQIe2+Co90Qc6NaSmL+4Pz8pz5PBr/tQrep82PUCMZ0WxX8SBx9D5bAPWClZWry/PZTQGDQ2ek=
From: Roxana Bradescu <roxana.bradescu@oracle.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
CC: Lin Horse <kylin.formalin@gmail.com>
Thread-Topic: [oss-security] CVE-2021-3760: Linux kernel: Use-After-Free
 vulnerability of ndev->rf_conn_info object
Thread-Index: AQHXylgMeb+I5MeehkeSsDnx2YzZqavlLUGAgAKDjoA=
Date: Thu, 28 Oct 2021 02:23:10 +0000
Message-ID: <E446D456-2566-469A-8252-412E394DDB6B@oracle.com>
References: 
 <CAJjojJsrNyz+ML+Q81JB9iF2-DTKfAEkUP1cSTgyvCL6NebhzQ@mail.gmail.com>
 <20211026115947.GA29482@openwall.com>
In-Reply-To: <20211026115947.GA29482@openwall.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3654.120.0.1.13)
authentication-results: lists.openwall.com; dkim=none (message not signed)
 header.d=none;lists.openwall.com; dmarc=none action=none
 header.from=oracle.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 40cd5650-2eaa-4094-f097-08d999b9e341
x-ms-traffictypediagnostic: BYAPR10MB2917:
x-microsoft-antispam-prvs: 
 <BYAPR10MB29170225760643A776CDE71D93869@BYAPR10MB2917.namprd10.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 M4DeabdE7Gr3MVPCJN1n2qPmncX1DSLfzAAwa02bDN4kFjRU3fmU6lzY0frHxDF2FTq6WUVtBoNofpSdda7XA6h4dbNYqETX4nUrUEdcjxqKBamFdZlNhmB1GnqDQCQRe32YzlIpe8VYsLqHeYgPKbQxqrTYSOEba5XGxjSqcYgIXkl0yPMG+PMyHZC+M1ylPVYw8Kl3LUCe8luUf5CXTfwR7o6Xnar4bssoMte44kBL0Fv9TCgZ60sLWTLRh1dqP7jXWX8qhXhXTq5B+aOz2U8QIAKlq0Vj9lp2g9r7Tif3nWriClFOHFmht+0luIO5Qc3cbfZWWGjuW2SSIsRnN+tMqp30XoFGAdrL6IhGXfzk3AoVfFToThQw8PRuraWLP5YmsOf2+zsfcSGMzC84JJJEICSxaRszmCGtFV5tIch7dryZUo3p70YOROLrSJgORthBFzDrzHMNMUs1EE/GnmGHgSicRra8UPZ1SyGRl72su8ioOn4n5G/4Fk2rQzILsTtIyoAoMtQtgF53NfnCBG911sAvWIvtmZGo4ovSEe91NBCsuWolUuZIwGuRQZpeDQSAlkrpqbPOJQmkiGA+g2iqxdKdnry6OhCBoAmDhLWZ2XfJbWofVzPn/aaZsCKzQwBr/fgDPkuO+gXc5HC8rYOPW3c61IQ7QKFeXkmLWyAje2RYzCkowB1q9uA42ZF1yCj2VWrlROcslsdIWiQyCn+aV8fpREaQZuEokJgxGMAo6jFt9aVKuBpo/XHs23Zh
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR10MB3671.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(6916009)(15650500001)(8676002)(122000001)(86362001)(44832011)(83380400001)(6486002)(8936002)(66476007)(66556008)(38070700005)(508600001)(316002)(33656002)(4001150100001)(36756003)(2906002)(91956017)(76116006)(66446008)(2616005)(64756008)(53546011)(38100700002)(6506007)(66946007)(71200400001)(4326008)(5660300002)(99936003)(6512007)(186003)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?t17+sivJNzv3hVilokvnuqdqBAv5nZhYAl4ZB8EiQ9KRW+H7kOOkmVaGTs56?=
 =?us-ascii?Q?OEQkga/Hy6Re0PkkqWtGm4TbS/DN7hlj+RdFfCTpRhz6JRoYC0ua5o+xJ05j?=
 =?us-ascii?Q?y+1DIDvrLGg75BqQF58D62rfjWFYUvRiLjqNKsqYBnYhDnrvIJ4ZyppsoxUR?=
 =?us-ascii?Q?bBQao9DzLZ2EDZZLrSk10PyFCn3L8WEL0kr7QFEKRS/kIVQypuRVXKZFNQPL?=
 =?us-ascii?Q?PX0gbcESqQCKXi1JNJ47RUTvIi+uCWcexcmXUsEoe2wHl05S2wSNKv0EdOTB?=
 =?us-ascii?Q?Z13ndY6g7K460EECis4vN3YvwNyolequx7yWrUv6BvUf/A15ONumz4T/AAqE?=
 =?us-ascii?Q?BHDG+8K/TpoMFYSmw0YgQt6b+km4N8hFdzbR7+5JrPuszWBZe+kZgudnG2pB?=
 =?us-ascii?Q?APe2u54cuYMyXLwFdAd0ZAm8a+WO2VAb/fArzI+gwYXVeIiKh0IZckRW55D6?=
 =?us-ascii?Q?N7MFex7Otu/gVj610DXhS1u70sTv8vLyB3CxlAT176TT31Otr5fiaTyd343m?=
 =?us-ascii?Q?6tGh6AqB5h7oeP4ZOpN7g1Djf3xEMzy5ryjNXBgQOLehGJbgUxthDdyqQ2qH?=
 =?us-ascii?Q?SD2khejF70YhYTaEqP5JwqSjn2lQtfZRGZW7icVCINkq5NsIFretB8JTBX18?=
 =?us-ascii?Q?Mbf9MWENDVGHG1yCI4vlsc+1DGst+h7bJnGQ1s0Gn0J77cigDd1aQXRvNDrO?=
 =?us-ascii?Q?GSGjEFengSnEUae1eZkVOHDNI94/mPQAYG+GjaaiGxQvDyw8vTMqx3aynZNQ?=
 =?us-ascii?Q?/NKUgKzeB8qJX9Ls0JzC8sHkXCnHhClAYdfXlV0hPuLhaX5MBdlbLr3CTFjy?=
 =?us-ascii?Q?RN4HDv2tngZEPxJleItrVLFz4ESr+R/II2F1F1zRypv9XXaFotjavrNSjoQX?=
 =?us-ascii?Q?evyUYQF9vAc7o/E6ixUIc0fji3D9qx1saGrjYdksCu8pFrpwotUjZsXhSk4K?=
 =?us-ascii?Q?Fqewiirbcbsf6efNSUqd0OHuQ5YEEWLgMRRGYnMi5t1rcbanT1TastA1IcyJ?=
 =?us-ascii?Q?vRTKfXpWuncEOzG1+La/FgRiDl/ZS/TWTPU7IUkBfkpgE4J0oXm+ypa4+1lK?=
 =?us-ascii?Q?bI4VbdjX3fw4cw7TVXYY5aXjEHZ+J15QtlnNdppheQNDydVVtxIN+k8E/jqC?=
 =?us-ascii?Q?wrOcuv8yaA51N9luvM31nF1VUCfnCzT35eyCt+pQFsE+E4a8XEB0lvxOy+oX?=
 =?us-ascii?Q?7u7djnL2ADv8h894HqfcfREHx5Z5JUtc02duKIecFrf0xJ1i0CsHFLx25EI2?=
 =?us-ascii?Q?NplV1NW5WcnscsajDNKKU+Dcb4GpJjSFzH7nvcvUxaH2nbnfY33MW6eFqAAo?=
 =?us-ascii?Q?pTPS0xqHs3Pg7GFhy8FlbdaUh4tkagec3MzADpRxLol9tG09GcwskAIdnMeh?=
 =?us-ascii?Q?QWSFCUqFS3rfa3BZzNbzMqr16DxaIwcmAGoK452CwVV4CVM1rJlkLuqzVbG2?=
 =?us-ascii?Q?P3s936JA/P9+gTgtb1QzdGkAHEAkZK+FRynEoM2E28p0hKBnuH/mMg1IOLeF?=
 =?us-ascii?Q?kIw9awXVrQrTTCXB1tcBJ+ktBUMyigdb4U6bDpqoSLlp0NPjcoGNhuC9Ku/S?=
 =?us-ascii?Q?bQ7m0/AtYn/t/uSSv/R0YzYUkQfKYwxT6/0sj/OR0xgJqGkwRtpFfnCuF1sm?=
 =?us-ascii?Q?nx2Jeg2cAxM32DcY/Ywv5EuHG6ASoEHQC2cDv8aszTbzA/AjaCm+6OH3YDP2?=
 =?us-ascii?Q?rIeD1A6jYNTOHSNH88LX8//ggKEeTnUldYmYIz1VApgcF3kLXrQETG6Z0po+?=
 =?us-ascii?Q?egnDmEfF3SQjAI9Impu+LFI2a7UV+bw=3D?=
Content-Type: multipart/signed;
	boundary="Apple-Mail=_EC6C8FE4-03F6-436D-A23F-73BD499333A5";
	protocol="application/pgp-signature";
	micalg=pgp-sha256
MIME-Version: 1.0
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR10MB3671.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40cd5650-2eaa-4094-f097-08d999b9e341
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2021 02:23:10.8775
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 25nFeCM3CL03bBzsLLi2wQe6Ye9EuElcczFR0fivX8OdqGQjRki+QeHP09K3JRvCz1VdLleUgPpFQr6gjsrDSc8swOaNkDPttWmDEebxFMM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR10MB2917
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10150 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 malwarescore=0
 adultscore=0 suspectscore=0 bulkscore=0 mlxscore=0 spamscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2110280009
X-Proofpoint-ORIG-GUID: XJwAfMRTW6lbKsZwKSwMEMD4eGriaoWV
X-Proofpoint-GUID: XJwAfMRTW6lbKsZwKSwMEMD4eGriaoWV
Subject: Re: [oss-security] CVE-2021-3760: Linux kernel: Use-After-Free
 vulnerability of ndev->rf_conn_info object

--Apple-Mail=_EC6C8FE4-03F6-436D-A23F-73BD499333A5
Content-Transfer-Encoding: 7bit
Content-Type: text/plain;
	charset=us-ascii

> So I think that the distros tasked with reviewing initial notifications
> should insist on the actual date/time being present in there, or add it
> on their own in an immediate follow-up.  Those distros currently are
> Oracle and Wind River.  I'd appreciate them confirming that they accept
> this clarification.

Acknowledged and agreed.

---
Regards, Roxana



> On Oct 26, 2021, at 4:59 AM, Solar Designer <solar@openwall.com> wrote:
> 
> On Tue, Oct 26, 2021 at 02:37:20PM +0800, Lin Horse wrote:
>> 2021-09-01 Report to security and linux-distro
>> 2021-09-01 CVE-2021-3760 assigned
>> 2021-10-26 patch upstream
>> 
>> Sorry for the delay of this report T.T
> 
> Ouch.  Let's use this opportunity to learn from the mishandling of this
> issue and avoid that for other issues.  Many things went wrong here:
> 
> 1. The original notification by Lin to linux-distros did include "I'd
> like to ask for 14 days of the embargo", which is OK'ish, but ideally
> such messages should include the proposed public disclosure date/time -
> and that's what the instructions ask for.  When it's just "N days", I
> guess people think "that's OK'ish" and move on.  When it's a specific
> date/time, it's easier for everyone to notice it approaching - not only
> for people specifically tasked with that.  That's just a psychological
> detail that I guess nevertheless statistically affects the outcomes.
> 
> So I think that the distros tasked with reviewing initial notifications
> should insist on the actual date/time being present in there, or add it
> on their own in an immediate follow-up.  Those distros currently are
> Oracle and Wind River.  I'd appreciate them confirming that they accept
> this clarification.
> 
> "Promptly review new issue reports for meeting the list's requirements
> and confirm receipt of the report and, when necessary, inform the
> reporter of any issues with their report (e.g., obviously not actionable
> by the distros) and request and/or propose any required yet missing
> information (most notably, a tentative public disclosure date/time) -
> primary: Oracle, backup: Wind River"
> 
> 2. While Lin's original message to linux-distros included a "SUGGESTED
> FIX" section (with a patch in it) and "I will do my best to work with
> the developer on fixing this", no further messages on a fix were sent to
> linux-distros.  Lin, if you did in fact work with upstream on this, you
> should have kept linux-distros aware of the progress, and especially of
> the fix getting to public Linux kernel mailing lists or public commits,
> as that ends the embargo.
> 
> Further, distros failed to handle the corresponding "contributing back"
> tasks.  There was no activity by Gentoo lately at all, and while there
> is recent helpful activity by Amazon, they didn't act this time.
> 
> "Stay on top of issues to ensure progress is being made, remind others
> when there's no apparent progress, as well as when the public disclosure
> date for an issue is approaching and when it's finally reached (unless
> the reporter beats you to it by making their mandatory posting to
> oss-security first) - primary: Gentoo, backup: Amazon
> 
> Monitor relevant public channels (mailing lists, code repositories,
> etc.) and inform the reporter and the list in case an issue is made
> public prematurely (that is, leaks or is independently rediscovered) -
> primary: Amazon, backup: SUSE
> 
> Make sure the mandatory oss-security posting is made promptly and is
> sufficiently detailed, and remind the reporter if not - primary: Gentoo,
> backup: Amazon"
> 
> I'd like replies by Gentoo and Amazon on this, please.  They should
> either state that they'd be handling these tasks from this point on, or
> we should reassign the tasks.
> 
> Incidentally, I've already unassigned the statistics task from Gentoo
> and Amazon a while ago, as that one was obviously not handled by them.
> We still need another distro or two to volunteer for this one.  As I had
> mentioned, an important desirable side-effect of keeping the statistics
> up-to-date is that this would catch issues that were not reported to
> oss-security in time or at all.  For example, if someone were updating
> statistics for September on October 15 (by which point nothing from
> September is supposed to still be embargoed), they'd catch this issue
> 10 days earlier.
> 
> 3. The only "contributing back" activity on this issue consisted of 3
> postings to linux-distros: prompt CVE ID assignment by Red Hat, a
> reminder about 14 days having passed by SUSE on September 17 (that is,
> already 3 days past the embargo period end), and another reminder by (a
> different engineer from) SUSE on October 25 (this one worked).
> 
> SUSE isn't formally tasked with this - Gentoo and Amazon are - but SUSE
> happened to do it - thanks!  SUSE is formally a backup for "Monitor
> relevant public channels ...", which I guess could have worked as well,
> but in this case the embargo period was already over by the time SUSE
> first commented, so that aspect was irrelevant by then.
> 
> 4. There's still no (reference to) fix for this issue on oss-security.
> Lin, you write "2021-10-26 patch upstream" - can you please refer to the
> actual upstream commit?  Also, can you please let us all know when the
> patch became public (possibly first on a public mailing list)?
> 
> This issue itself is not that important, which is part of why it almost
> slipped through the cracks, but it's our reminder and opportunity to fix
> things before anything more important is mishandled.
> 
> Alexander
> 
> P.S. The Subject of this message as sent by Lin to oss-security
> contained only the CVE ID and no description.  I took the liberty to
> edit it, adding the Subject string that was used on linux-distros,
> before approving the message as list moderator.


--Apple-Mail=_EC6C8FE4-03F6-436D-A23F-73BD499333A5
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE4uuD6pAMWr/SByuBM2FXl4vOf6MFAmF6CY0ACgkQM2FXl4vO
f6OrhhAApr9anJC+RAtjo5NPOPHFoRib5KB/cWvlkFLWeMT0hNynkY1ZvhWUCXd9
76A9wZClNcJm4IT7l/LFqZ24k7AKXq1v/qAny5MU29p8OqP4Y4SLaGXAAngMXLLJ
FaiEgsDMGkH8/pRs9RFCmYAzxiwzWKgSL9Wup7Fg6ITtjzzx3NarL9KMt/+cjeEV
9zhoppwFB3HO2ePjDquuTFRc/D4DTieYfaD9gzOXCvfW1CrS8aGE0uTIXl/NSj74
XurkcSzmaUQIMZD8a+tUU3QiOAko3KprKMwkRHuBpMSw4n+buGe3bNWlsJsfHsle
OKyGRKgXyfovaz/yAM+yqdHYpd70gYLq9irFUNuL5yE/21wkujsQAfUrDksd5TDV
3TTVowfJZvXLI3PitSUDLSZU3CAU6raYh01PeSZnfQ+xBP51ryPdqveK5sjI/Jt2
6zbrFLkwgjhmYwwkpgZIG5kB5IVFGkf1PekvR+Ajqmhh7TS9vvTN97USh165gGfg
RszCqDSkFVWP99TW8k7sSutCjQssCeZPKR3Gm3InmGga26dyU68a5ZBEvePotZvC
TtKQshwtRY1Q0NHTBBic2FpB4ppPeEtWqofsXqGx8isfE9rwhJBaxgTO5o87e7Fi
x76Sbe/jCnVqEz903ntyw+zdQ6JFTN9A3Ome/NqwNWsM+D5YHB8=
=kNbC
-----END PGP SIGNATURE-----

--Apple-Mail=_EC6C8FE4-03F6-436D-A23F-73BD499333A5--
