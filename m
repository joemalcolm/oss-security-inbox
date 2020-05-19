X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["24163" "Tuesday" "19" "May" "2020" "10:05:06" "-0700" "Qualys Security Advisory" "qsa@qualys.com" "<20200519170506.GC22032@localhost.localdomain>" "582" "[oss-security] Remote Code Execution in qmail (CVE-2005-1513)" "^Date:" nil nil "5" "2020051917:05:06" "[oss-security] Remote Code Execution in qmail (CVE-2005-1513)" (number mark "        qsa@qualys.c May 19  582/24163 " thread-indent "\"[oss-security] Remote Code Execution in qmail (CVE-2005-1513)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Remote Code Execution in qmail (CVE-2005-1513)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28349 invoked by uid 550); 19 May 2020 17:16:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28324 invoked from network); 19 May 2020 17:16:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=date : from : to :
 subject : message-id : content-type : mime-version :
 content-transfer-encoding; s=qualyscom;
 bh=GHl/y4lsjWcp+rdat8wv6WwNZy0TpPY7cHVlD0wjfk4=;
 b=GPiXhfWGZvXhB4aLL9fpMXzFgwqKEXV8pvHsmHVqOUYpSQoGIGKtv6QVwoEwozzrRy6D
 3oUObLHBs9S42ee5rgFTM3HVAqghxsy2PSA0qezdQbkBL2avaV7a5ytBofaEHbGtmOQh
 oXFLabxMSnvLN8WmeU5jGmy2NJr9ODcAP+VbWoTKgKuxNk8M6uhvopn5wRq2h0L9XGKy
 1+HdW8YBsD7X8zEloiVneIVXbSvB4+NeQ6gDjPm8n22MdF/ag8qySXM/o9GgKayQwVMy
 KdOxL/5ttQL/Q50yhFLB4U6kYPg7vhxBh2IysTPAlNwnqzZGtMWl6GHZSwWyXkr5j7Ts WA== 
Authentication-Results: ppops.net;
	spf=pass smtp.mailfrom=qsa@qualys.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kgifAUqhco7aYtpd/zEX+rQrcEDU3d4nmxRnv76Sa9rXdNFs7C1JBnq8VI70zS91AycARJ7+2xT7S7qJx1oOvELfW3soAIwEKYJked9/vORC05+64K4l9doO32V+evVT3+vIPvNO4TlKytT+qTG9S1l1mYZtiDsNrx/pyxdAlLrKVvtnWS8nQ2PGnnOwPjVYorsmEgBjEiPBBEPbkONF4Uta8FvwuhcsPdJYORzdnlT+7rafm82XG1EjvswqlCkNdSzNTPBwi3HprxhnFhVdMGNqPgQAcpoOrYtbJ1CA0Ia+XSPbEdzTgXSC0Ij9uBSyWi/iXzEjL0Pg7u0RLTm6RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GHl/y4lsjWcp+rdat8wv6WwNZy0TpPY7cHVlD0wjfk4=;
 b=XvmauCQQrnxFjE6+nFF32XF4G5N/kb436OTpwHI40hwHNlLhOfKKPkJz96G2lU/Z1akRE56CVBtdKyXwSGs6E/qmlF0auw0BTdSAS4bWl/t7MQYprnzFNgcmajTBQWfTy780IPlLgO8brNwIRxpZXRynLKUlzIxv759q0h8zSR82OKMff2dgEz5f3gHVMBbXimAUS3MMrZnHuFdL+IDmENto0ukkJyLFFfDzxm90+nX3AEDIeMpJeTj55Jh2HszsbXvriRbACVkiUF92NOrsIm3M+9T9oumGEzNWTZhZ9xRU5nBFwKFXkjst2mxik15soeXxuVscHExXZqC0znzK5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector2-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GHl/y4lsjWcp+rdat8wv6WwNZy0TpPY7cHVlD0wjfk4=;
 b=j4SUNeawVpllcbpV9u79DH1Nv1CZ5WYvIr5PdApipOshicQ8HqflFWCknzIgCrL6DiTFKRv584FY6XYJ6u48QsIZ3WpZk8cBG68XgdiO/agORZ+p4tYphxsYhoJ+3Eo1QqGBeO8b8iTcgOL0TjFJnkrb3kqAZ8I622pKIi2bs7jfWaxYYfLEo/+6ICJbzQh7xnjNMA/t6NuW91LRDW1oQJ1YScIRUGICRSH2HXG11AZVvPzRZYBcZ4J2b3AbeqhywquRVmiR7Yj10+uPemLXU1maOUXGcMk3dJMiE9uxDKoGYIXEc2aZgk/FEmaE3D/ZifrDsD0t2VcNqa0NPcyBWg==
Authentication-Results: lists.openwall.com; dkim=none (message not signed)
 header.d=none;lists.openwall.com; dmarc=none action=none
 header.from=qualys.com;
Message-ID: <20200519170506.GC22032@localhost.localdomain>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: BY3PR10CA0016.namprd10.prod.outlook.com
 (2603:10b6:a03:255::21) To SN6PR06MB4830.namprd06.prod.outlook.com
 (2603:10b6:805:c8::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-Originating-IP: [165.193.18.162]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 70b071b9-4c16-4af4-1088-08d7fc184498
X-MS-TrafficTypeDiagnostic: SN6PR06MB5133:
X-Microsoft-Antispam-PRVS: 
	<SN6PR06MB51331B4AA0F0D462CF37F880D5B90@SN6PR06MB5133.namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-Forefront-PRVS: 040866B734
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	aBxqiRSMZ3bjncKhVIqTw/ehamS8jMMwIHqeWRyqqNDclue3gbdrd6cdU2BzLEqlXe9ADSd/sw45rHqo/4rFwcMn3v2lHkobu2lG+5C1nIntmT6US0QivX2isxrVyD7GKDzfnc5PI+Er6TrXDBk8Zo5aS4OflQs/W9Da4gRsyXSfAVQVKD6Pa4xO6c8EkKiK02XAWJ2KD0WkZZRGGjPPpB/+epvNIMoLfSEq4AHuUKprSTXihxdjpl3Hp+aiCNx5S550B5mtBxrg1NH79D27b3lRfty/EY1+cQJTxoHu2ytFjY3k4B+O0LkxMW5cJXqIaNZsHIOHZQSTL7cjUWC1/f5N3GgYGPaFcBH6kyduHKCmDqCB1qepAgIeSMVrmu4z38AhgvbfN91KTksg8PhagAxrUer06ZrrVRVUbskeMLsfw/4X5qaBm59dJhfuK7BoFISpyBahmCLtY71OgiEOdVrUnCG4skhMTHP61JV7WOJ7s3rtx4zSlPgfJWp2/vgrrS/VO33F5lAX09JBPYNiVQLmqvk0DFJdFgQ9Qg6tX/5cr65pSJowNY+A3YdWRqrw/uR8gEV4LtXgBU2K8aXoFMv1ZaatUyKvYxrsf5+EHD4p+iByVbr0d9lFVAA6KUkd
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR06MB4830.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(136003)(376002)(366004)(39860400002)(396003)(346002)(2906002)(5660300002)(83080400001)(6916009)(66476007)(86362001)(66946007)(6506007)(8676002)(16526019)(7696005)(9686003)(6666004)(8936002)(30864003)(186003)(1076003)(52116002)(26005)(966005)(316002)(66556008)(33656002)(478600001)(18074004)(956004)(55016002)(13750500001)(21314003)(131040200001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: 
	1WDBdV2uyU4FQFrnt6O7ofxXiwCHDtAwURHCQAktEdQ40DwMcQEOhFfkbp3r204qA7tUrPCEnya+nXb/gOX7QcP2VRZGeQfp2bVtaerzXL+v3JTZK7fhlefbmCy7lq9SY/12LZ22L4Hm0/PNHQZisnWSBfATsElCGRfU6M5BDVl2hip+Ue5XtpFW7M+ThItmLL6nNaPiUaHGIr8ttpf9Bof/8ELobclcIZLjzJauIOl3TBMfQnUwXNV9qorOkpNvF/hounWpaJ2l/dEiTY+gpDMWSak4q6Gp1UZSzq7i9VuBKyhNZTHa958/Iy8OxR9LFsv81V8iWFsLj5qwoZdBBfpPCofFomMJt7kF7xGuzOwmU8nrPacPssIXb3ThqEd7VW+6QHYxneSe+Bx3P+sFxwqaHKe1ej3NudvQI2QgC6nirA5EbnDjf3TyqgfnhRpSp72q7rOEonQGssJo62M1p+DlfU1NCkeYS35qfvdia7JmfbpkXt9vkv2m7G1Ucod7
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 70b071b9-4c16-4af4-1088-08d7fc184498
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2020 17:15:46.1152
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FxAEy0HBkgEhubSODUeQuXjm4ta59uskgmTNxWOQToUEKAyBPHyNQKQ7Up4yDxWZAd9RXHd6U24xQcAmSjJJIpozF4wBSAdSn2aZ32aIWPc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR06MB5133
X-Proofpoint-SPF-Result: pass
X-Proofpoint-SPF-Record: v=spf1 include:_spf.qualys.com include:spf.protection.outlook.com
 include:spf-001ca501.pphosted.com include:stspg-customer.com
 include:spf.salesforce.com include:sendgrid.net include:mktomail.com ~all
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10436:6.0.216,18.0.676
 definitions=2020-05-19_06:2020-05-19,2020-05-19 signatures=0
Date: Tue, 19 May 2020 10:05:06 -0700
From: Qualys Security Advisory <qsa@qualys.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Remote Code Execution in qmail (CVE-2005-1513)
To: oss-security@lists.openwall.com


Qualys Security Advisory

15 years later: Remote Code Execution in qmail (CVE-2005-1513)


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Contents
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Summary
Analysis
Exploitation
qmail-verify
- CVE-2020-3811
- CVE-2020-3812
Mitigations
Acknowledgments
Patches


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Summary
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

TLDR: In 2005, three vulnerabilities were discovered in qmail but were
never fixed because they were believed to be unexploitable in a default
installation. We recently re-discovered these vulnerabilities and were
able to exploit one of them remotely in a default installation.

------------------------------------------------------------------------

In May 2005, Georgi Guninski published "64 bit qmail fun", three
vulnerabilities in qmail (CVE-2005-1513, CVE-2005-1514, CVE-2005-1515):

    http://www.guninski.com/where_do_you_want_billg_to_go_today_4.html

Surprisingly, we re-discovered these vulnerabilities during a recent
qmail audit; they have never been fixed because, as stated by qmail's
author Daniel J. Bernstein (in https://cr.yp.to/qmail/guarantee.html):

    "This claim is denied. Nobody gives gigabytes of memory to each
    qmail-smtpd process, so there is no problem with qmail's assumption
    that allocated array lengths fit comfortably into 32 bits."

Indeed, the memory consumption of each qmail-smtpd process is severely
limited by default (by qmail-smtpd's startup script); for example, on
Debian 10 (the latest stable release), it is limited to roughly 7MB.

Unfortunately, we discovered that these vulnerabilities also affect
qmail-local, which is reachable remotely and is not memory-limited by
default (we investigated many qmail packages, and *all* of them limit
qmail-smtpd's memory, but *none* of them limits qmail-local's memory).

As a proof of concept, we developed a reliable, local and remote exploit
against Debian's qmail package in its default configuration. This proof
of concept requires 4GB of disk space and 8GB of memory, and allows an
attacker to execute arbitrary shell commands as any user, except root
(and a few system users who do not own their home directory). We will
publish our proof-of-concept exploit in the near future.

About our new discovery, Daniel J. Bernstein issues the following
statement:

    "https://cr.yp.to/qmail/guarantee.html has for many years mentioned
    qmail's assumption that allocated array lengths fit comfortably into
    32 bits. I run each qmail service under softlimit -m12345678, and I
    recommend the same for other installations."

Finally, we also discovered two minor vulnerabilities in qmail-verify (a
third-party qmail patch that is included in, for example, Debian's qmail
package): CVE-2020-3811 (a mail-address verification bypass), and
CVE-2020-3812 (a local information disclosure).


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Analysis
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We decided to exploit Georgi Guninski's vulnerability "1. integer
overflow in stralloc_readyplus" (CVE-2005-1513). There are, in fact,
four potential integer overflows in stralloc_readyplus; three in the
GEN_ALLOC_readyplus() macro (which generates the stralloc_readyplus()
function), at line 21 (n +=3D x->len), line 23 (x->a =3D base + n + ...),
and line 24 (x->a * sizeof(type)):

------------------------------------------------------------------------
 17 #define GEN_ALLOC_readyplus(ta,type,field,len,a,i,n,x,base,ta_rplus) \
 18 int ta_rplus(x,n) register ta *x; register unsigned int n; \
 19 { register unsigned int i; \
 20   if (x->field) { \
 21     i =3D x->a; n +=3D x->len; \
 22     if (n > i) { \
 23       x->a =3D base + n + (n >> 3); \
 24       if (alloc_re(&x->field,i * sizeof(type),x->a * sizeof(type))) ret=
urn 1; \
 25       x->a =3D i; return 0; } \
 26     return 1; } \
 27   x->len =3D 0; \
 28   return !!(x->field =3D (type *) alloc((x->a =3D n) * sizeof(type))); }
------------------------------------------------------------------------

and, in theory, one integer overflow in the alloc() function itself
(which is called by the alloc_re() function), at line 18:

------------------------------------------------------------------------
 14 /*@null@*//*@out@*/char *alloc(n)
 15 unsigned int n;
 16 {
 17   char *x;
 18   n =3D ALIGNMENT + n - (n & (ALIGNMENT - 1)); /* XXX: could overflow */
 ..
 20   x =3D malloc(n);
 ..
 22   return x;
 23 }
------------------------------------------------------------------------

In practice, the integer overflows at line 21 (in GEN_ALLOC_readyplus())
and line 18 (in alloc()) are very hard to trigger; and the one at line
24 (in GEN_ALLOC_readyplus()) is irrelevant to stralloc_readyplus's case
(because type is char and sizeof(type) is therefore 1).

On the other hand, the integer overflow at line 23 (in
GEN_ALLOC_readyplus()) is easy to trigger, because the size x->a of the
buffer is increased by one eighth every time it is re-allocated: we send
a very large mail message that contains a very long header line (nearly
4GB), and this line triggers stralloc_readyplus's integer overflow while
in the getln() function, which is called by the bouncexf() function, at
the beginning of the qmail-local program. qmail-local is responsible for
the local delivery of mail messages, and runs with the privileges of the
local recipient (or qmail's "alias" user, if the local recipient is
"root", for example).

After the size of the buffer is overflowed (at line 23), the alloc_re()
function is called (at line 24), but with n < m, where n is the size of
the new buffer y, and m is the size of the old buffer x:

------------------------------------------------------------------------
  4 int alloc_re(x,m,n)
  5 char **x;
  6 unsigned int m;
  7 unsigned int n;
  8 {
  9   char *y;
 10
 11   y =3D alloc(n);
 12   if (!y) return 0;
 13   byte_copy(y,m,*x);
 14   alloc_free(*x);
 15   *x =3D y;
 16   return 1;
 17 }
------------------------------------------------------------------------

In other words, we transformed stralloc_readyplus's integer overflow
into an mmap-based buffer overflow at line 13 (byte_copy() is qmail's
version of memcpy()): m is nearly 4GB (the length of our very long
header line), but n is roughly 512MB (one eighth of m).


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Exploitation
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

To survive this large buffer overflow, we carefully choose the number
and lengths of the very first lines in our mail message (they crucially
influence the sequence of buffer re-allocations that eventually lead to
the integer and buffer overflows), and obtain the following mmap layout:

-------|-------|-------------------------------------------------|------
XXXXXXX|   y   |                        x                        | libc
-------|-------|-------------------------------------------------|------
       | 512MB |                       4GB                       |

Consequently, we safely overflow the new buffer y, and overwrite the
malloc header of the old buffer x, with the contents of our very long
header line. To exploit this malloc-header corruption when free(x) is
called (at line 14), we devised an unusual method that bypasses NX and
ASLR, but does not work against a full-RELRO binary (but the qmail-local
binary on Debian 10 is partial-RELRO only). This does not mean, however,
that a full-RELRO binary is not exploitable: other methods may exist,
the only limit to malloc exploitation is the imagination.

First, we overwrite the prev_size and size fields of x's malloc header,
we set its IS_MMAPPED bit to 1, and therefore enter the munmap_chunk()
function in __libc_free() (where p is a pointer to x's malloc header):

------------------------------------------------------------------------
2810 static void
2811 munmap_chunk (mchunkptr p)
2812 {
2813   INTERNAL_SIZE_T size =3D chunksize (p);
....
2822   uintptr_t block =3D (uintptr_t) p - prev_size (p);
2823   size_t total_size =3D prev_size (p) + size;
....
2838   __munmap ((char *) block, total_size);
2839 }
------------------------------------------------------------------------

Because we completely control the size field (at line 2813) and the
prev_size field (at lines 2822 and 2823), we completely control the
block address (relative to p, and hence x) and the total_size of the
__munmap() call (at line 2838). In other words, we can munmap() an
arbitrary mmap region, without knowing the ASLR; we munmap() roughly
576MB at the end of x, including the first few pages of the libc:

-------|-------|-----------------------------------------|-------+-|----
XXXXXXX|   y   |                        x                |XXXXXXXXX|ibc
-------|-------|-----------------------------------------|-------+-|----

The first pages of the libc do not actually contain executable code:
they contain the ELF .dynsym section, which associates a symbol (for
example, the "open" function) with the address of this symbol (relative
to the start of the libc).

Next, we end our very long header line (with a '\n' character), and
start a new header line of nearly 576MB. This new header line is first
written to the buffer y, but when y is full, stralloc_readyplus()
allocates a new buffer t of roughly 576MB (the size of y plus one
eighth), the exact size of the mmap region that we previously
munmap()ed:

-------|-------|-----------------------------------------|-------+-|----
XXXXXXX|   y   |                        x                |    t    |ibc
-------|-------|-----------------------------------------|-------+-|----

Consequently, we completely control the first pages of the libc (they
contain the end of our new header line): we control the .dynsym section,
and we replace the address of the "open" function with the address of
the "system" function. This method works because Debian's qmail-local
binary is partial-RELRO only, and because the open() function has not
been called yet, and has therefore not been resolved yet.

Last, we end our new header line, and when qmail-local returns from
bouncexf() and calls qmesearch() to open() the ".qmail-extension" file,
system(".qmail-extension") is called instead. Because we control this
"extension" (it is an extension of the local recipient's mail address,
for example localuser-extension@localdomain), we can execute arbitrary
shell commands as any user (except root, and a few system users who do
not own their home directory), by sending our large mail message to
"localuser-;command;@localdomain".

Last-minute note: the exploitation of glibc's free() to munmap()
arbitrary memory regions has been discussed before, in
http://tukan.farm/2016/07/27/munmap-madness/.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
qmail-verify
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

------------------------------------------------------------------------
CVE-2020-3811
------------------------------------------------------------------------

Although the original qmail-smtpd does accept our recipient address
"localuser-;command;@localdomain", Debian's qmail-smtpd should not,
because it validates the recipient address with an external program
qmail-verify (which should reject our recipient address, because the
file "~localuser/.qmail-;command;" does not exist). Unfortunately,
qmail-verify does reject "localuser-;command;@localdomain", but it
accepts the unqualified "localuser-;command;" (without the
@localdomain), because:

- it never calls the control_init() function;

- it therefore initializes its default domain to the hard-coded string
  "envnoathost";

- and accepts any unqualified mail address as valid by default (because
  its default domain "envnoathost" is not one of qmail's local domains,
  and is therefore unverifiable).

------------------------------------------------------------------------
CVE-2020-3812
------------------------------------------------------------------------

We also discovered a minor information disclosure in qmail-verify:
a local attacker can test for the existence of files and directories
anywhere in the filesystem (even in inaccessible directories), because
qmail-verify runs as root and tests for the existence of files in the
attacker's home directory, without dropping its privileges first. For
example (qmail-verify listens on 127.0.0.1:11113 by default):

------------------------------------------------------------------------
$ ls -l /root/.bashrc
ls: cannot access '/root/.bashrc': Permission denied

$ rm -f ~john/.qmail-test
$ ln -s /root/.bashrc ~john/.qmail-test

$ echo -n 'john-test@localdomain' | nc -w 2 -u 127.0.0.1 11113 | hexdump -C
00000000  a0 6a 6f 68 6e 2d 74 65  73 74                    |.john-test|
------------------------------------------------------------------------

The least significant bit of this response's first byte (a0) is 0: the
file "/root/.bashrc" exists.

------------------------------------------------------------------------
$ ls -l /root/.abcdef
ls: cannot access '/root/.abcdef': Permission denied

$ rm -f ~john/.qmail-test
$ ln -s /root/.abcdef ~john/.qmail-test

$ echo -n 'john-test@localdomain' | nc -w 2 -u 127.0.0.1 11113 | hexdump -C
00000000  e1 6a 6f 68 6e 2d 74 65  73 74                    |.john-test|
------------------------------------------------------------------------

The least significant bit of this response's first byte (e1) is 1: the
file "/root/.abcdef" does not exist.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Mitigations
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

As recommended by Daniel J. Bernstein, qmail can be protected against
all three 2005 CVEs by placing a low, configurable memory limit (a
"softlimit") in the startup scripts of all qmail services.

Alternatively:

qmail can be protected against the RCE (Remote Code Execution) by
configuring the file "control/databytes", which contains the maximum
size of a mail message (this file does not exist by default, and qmail
is therefore remotely exploitable in its default configuration).

Unfortunately, this does not protect qmail against the LPE (Local
Privilege Escalation), because the file "control/databytes" is used
exclusively by qmail-smtpd.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Acknowledgments
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We thank Andrew Richards, Alexander Peslyak, the members of
distros@openwall, and the developers of notqmail for their hard work on
this coordinated release. We also thank Daniel J. Bernstein, and Georgi
Guninski. Finally, we thank Julien Barthelemy, Stephane Bellenger, and
Jean-Paul Michel for their inspiring work.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Patches
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We wrote a simple patch for Debian's qmail package (below) that fixes
CVE-2020-3811 and CVE-2020-3812 in qmail-verify, and fixes all three
2005 CVEs in qmail (by hard-coding a safe, upper memory limit in the
alloc() function).

Alternatively:

- an updated version of qmail-verify will be available at
  https://free.acrconsulting.co.uk/email/qmail-verify.html after the
  Coordinated Release Date;

- the developers of notqmail (https://notqmail.org/) have written their
  own patches for the three 2005 CVEs and have started to systematically
  fix all integer overflows and signedness errors in qmail.

------------------------------------------------------------------------

diff -r -u netqmail_1.06-6/alloc.c netqmail_1.06-6+patches/alloc.c
--- netqmail_1.06-6/alloc.c     1998-06-15 03:53:16.000000000 -0700
+++ netqmail_1.06-6+patches/alloc.c     2020-05-04 16:43:32.923310325 -0700
@@ -1,3 +1,4 @@
+#include <limits.h>
 #include "alloc.h"
 #include "error.h"
 extern char *malloc();
@@ -15,6 +16,10 @@
 unsigned int n;
 {
   char *x;
+  if (n >=3D (INT_MAX >> 3)) {
+    errno =3D error_nomem;
+    return 0;
+  }
   n =3D ALIGNMENT + n - (n & (ALIGNMENT - 1)); /* XXX: could overflow */
   if (n <=3D avail) { avail -=3D n; return space + avail; }
   x =3D malloc(n);
diff -r -u netqmail_1.06-6/qmail-verify.c netqmail_1.06-6+patches/qmail-ver=
ify.c
--- netqmail_1.06-6/qmail-verify.c      2020-05-02 09:02:51.954415101 -0700
+++ netqmail_1.06-6+patches/qmail-verify.c      2020-05-08 04:47:27.5555390=
58 -0700
@@ -16,6 +16,8 @@
 #include <sys/types.h>
 #include <sys/stat.h>
 #include <unistd.h>
+#include <limits.h>
+#include <grp.h>
 #include <pwd.h>
 #include <sys/socket.h>
 #include <netinet/in.h>
@@ -38,6 +40,7 @@
 #include "ip.h"
 #include "qmail-verify.h"
 #include "errbits.h"
+#include "scan.h"

 #define enew()  { eout("qmail-verify: "); }
 #define GETPW_USERLEN 32
@@ -71,6 +74,7 @@
 void die_comms()   { enew(); eout("Misc. comms problem: exiting.\n"); eflu=
sh(); _exit(1); }
 void die_inuse()   { enew(); eout("Port already in use: exiting.\n"); eflu=
sh(); _exit(1); }
 void die_socket()  { enew(); eout("Error setting up socket: exiting.\n"); =
eflush(); _exit(1); }
+void die_privs()   { enew(); eout("Unable to drop/restore privileges: exit=
ing.\n"); eflush(); _exit(1); }

 char *posstr(buf,status)
 char *buf; int status;
@@ -207,10 +211,47 @@
   return 0;
 }

+static int stat_as(uid, gid, path, sbuf)
+const uid_t uid;
+const gid_t gid;
+const char * const path;
+struct stat * const sbuf;
+{
+  static gid_t groups[NGROUPS_MAX + 1];
+  int ngroups =3D 0;
+  const gid_t saved_egid =3D getegid();
+  const uid_t saved_euid =3D geteuid();
+  int ret =3D -1;
+
+  if (saved_euid =3D=3D 0) {
+    ngroups =3D getgroups(sizeof(groups) / sizeof(groups[0]), groups);
+    if (ngroups < 0 ||
+        setgroups(1, &gid) !=3D 0 ||
+        setegid(gid) !=3D 0 ||
+        seteuid(uid) !=3D 0) {
+      die_privs();
+    }
+  }
+
+  ret =3D stat(path, sbuf);
+
+  if (saved_euid =3D=3D 0) {
+    if (seteuid(saved_euid) !=3D 0 ||
+        setegid(saved_egid) !=3D 0 ||
+        setgroups(ngroups, groups) !=3D 0) {
+      die_privs();
+    }
+  }
+
+  return ret;
+}
+
 int verifyaddr(addr)
 char *addr;
 {
   char *homedir;
+  uid_t uid =3D -1;
+  gid_t gid =3D -1;
   /* static since they get re-used on each call to verifyaddr(). Note
      that they don't need resetting since initial use is always with
      stralloc_copys() except wildchars (reset with ...len=3D0 below). */
@@ -303,6 +344,7 @@
           if (r =3D=3D 1)
           {
             char *x;
+            unsigned long u;
             if (!stralloc_ready(&nughde,(unsigned int) dlen)) die_nomem();
             nughde.len =3D dlen;
             if (cdb_bread(fd,nughde.s,nughde.len) =3D=3D -1) die_cdb();
@@ -318,10 +360,14 @@
             if (x =3D=3D nughde.s + nughde.len) return allowaddr(addr,ADDR=
_OK|QVPOS3);
             ++x;
             /* skip uid */
+            scan_ulong(x,&u);
+            uid =3D u;
             x +=3D byte_chr(x,nughde.s + nughde.len - x,'\0');
             if (x =3D=3D nughde.s + nughde.len) return allowaddr(addr,ADDR=
_OK|QVPOS4);
             ++x;
             /* skip gid */
+            scan_ulong(x,&u);
+            gid =3D u;
             x +=3D byte_chr(x,nughde.s + nughde.len - x,'\0');
             if (x =3D=3D nughde.s + nughde.len) return allowaddr(addr,ADDR=
_OK|QVPOS5);
             ++x;
@@ -360,6 +406,8 @@
   if (!stralloc_copys(&nughde,pw->pw_dir)) die_nomem();
   if (!stralloc_0(&nughde)) die_nomem();
   homedir=3Dnughde.s;
+  uid =3D pw->pw_uid;
+  gid =3D pw->pw_gid;

   got_nughde:

@@ -380,7 +428,7 @@
     if (!stralloc_cat(&qme,&safeext)) die_nomem();
     if (!stralloc_0(&qme)) die_nomem();
 /* e.g. homedir/.qmail-localpart */
-    if (stat(qme.s,&st) =3D=3D 0) return allowaddr(addr,ADDR_OK|QVPOS10);
+    if (stat_as(uid,gid,qme.s,&st) =3D=3D 0) return allowaddr(addr,ADDR_OK=
|QVPOS10);
     if (errno !=3D error_noent) {
       return stat_error(qme.s,errno, STATERR|QVPOS11); /* Maybe not runnin=
g as root so access denied */
     }
@@ -394,7 +442,7 @@
         if (!stralloc_cats(&qme,"default")) die_nomem();
         if (!stralloc_0(&qme)) die_nomem();
 /* e.g. homedir/.qmail-[xxx-]default */
-        if (stat(qme.s,&st) =3D=3D 0) {
+        if (stat_as(uid,gid,qme.s,&st) =3D=3D 0) {
          /* if it's ~alias/.qmail-default, optionally check aliases.cdb */
           if (!i && (quser =3D=3D auto_usera)) {
             char *s;
@@ -423,6 +471,7 @@
   char *s;

   if (chdir(auto_qmail) =3D=3D -1) die_control();
+  if (control_init() =3D=3D -1) die_control();

   if (control_rldef(&envnoathost,"control/envnoathost",1,"envnoathost") !=
=3D 1)
     die_control();



[https://d1dejaj6dcqv24.cloudfront.net/asset/image/email-banner-384-2x.png]=
<https://www.qualys.com/email-banner>



This message may contain confidential and privileged information. If it has=
 been sent to you in error, please reply to advise the sender of the error =
and then immediately delete it. If you are not the intended recipient, do n=
ot read, copy, disclose or otherwise use this message. The sender disclaims=
 any liability for such unauthorized use. NOTE that all incoming emails sen=
t to Qualys email accounts will be archived and may be scanned by us and/or=
 by external service providers to detect and prevent threats to our systems=
, investigate illegal or inappropriate behavior, and/or eliminate unsolicit=
ed promotional emails (=E2=80=9Cspam=E2=80=9D). If you have any concerns ab=
out this process, please contact us.
