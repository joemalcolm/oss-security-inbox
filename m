Received: (qmail 32353 invoked by uid 550); 4 Dec 2024 09:14:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32335 invoked from network); 4 Dec 2024 09:14:53 -0000
Authentication-Results:garm.ovh; auth=pass (GARM-101G004e9da6f50-5b42-4617-adc3-3d5dd7e79794,
                    C17FDE371EBC8762A4F60DEE2185EA8363F3FB3C) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp:5.172.255.220
Date: Wed, 4 Dec 2024 10:14:39 +0100
From: Jakub Wilk <jwilk@jwilk.net>
To: oss-security@lists.openwall.com
Message-ID: <20241204091439.zagujeidn25nouor@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20241119162429.GA12472@localhost.localdomain>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="jg2l5pwiaqaptgvk"
Content-Disposition: inline
In-Reply-To: <20241119162429.GA12472@localhost.localdomain>
X-Ovh-Tracer-Id: 2126543450590227665
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeefuddrieehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkfhggtggujgesmhdtreertddtvdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepleevuefgleevjeejfefhvdfgheejffelfffhhffgueevffekvddvudejfeefjeeknecukfhppeduvdejrddtrddtrddupdehrddujedvrddvheehrddvvddtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomhdpoffvtefjohhsthepmhhoheefgegmpdhmohguvgepshhmthhpohhuth
DKIM-Signature: a=rsa-sha256; bh=uhfNFSUQuWSYQd0Vy7C24eLavIgpJjemJyYe/0/lR3s=;
 c=relaxed/relaxed; d=jwilk.net; h=From; s=ovhmo917968-selector1;
 t=1733303684; v=1;
 b=FfNRKHXKw+EJRE1uBavD4i84hEagik5gfKU5NHJiP+5n0RgO1AXgjDFqT0IJCF6XtZoUAMkH
 IAeinkD4y4OtwAVUb0YnRKU71qzBZZab13T9jbpprKMFCb2Fi9GhoqJeAwyXfcX+9VVH/2LZjSS
 b3eYOnm+7S3Bjy8282sbuZwJABICuruC0cDbGKjDfKL46SthvCTAHI6Hjqb5PMUI70HuqfClazG
 WrcdOEyhVozQcUNlU7xicodMEfYCtiOaMRAc9NZo/Ab4RdPK5tlx1tqInsCFS8gR8Dne9vsGyRv
 N1lVHBao93zpmXEwiydcnMVhvX9ztbd82Ah8QWVeuaZag==
Subject: Re: [oss-security] Local Privilege Escalations in needrestart

--jg2l5pwiaqaptgvk
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline

* Qualys Security Advisory <qsa@qualys.com>, 2024-11-19 16:25:
>We therefore grepped the ScanDeps module for one of the oldest pitfalls 
>of the Perl programming language: the two-argument form of open(),

When looking for this kind of vulnerabilities a few years ago, I patched 
my Perl interpreter to issue runtime warnings against suspicious 
two-argument open() calls.

The patch still applies cleanly, and apparently even works, so I've 
attached it here. Maybe someone will find it useful.

-- 
Jakub Wilk

--jg2l5pwiaqaptgvk
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="perl-two-arg-open.patch"
Content-Transfer-Encoding: quoted-printable

From: Jakub Wilk <jwilk@jwilk.net>
Date: Sat, 26 Jan 2019 17:48:21 +0100
Subject: [PATCH] Warn against suspicious two-argument open() calls.

$ perl -e 'print <>' /etc/issue
two-argument open(..., "/etc/issue") at -e line 1.
Debian GNU/Linux 9 \n \l

$ perl -e 'print <<>>' /etc/issue
Debian GNU/Linux 9 \n \l
---
 doio.c | 3 +++
 1 file changed, 3 insertions(+)

--- a/doio.c
+++ b/doio.c
@@ -491,6 +491,9 @@
     bool was_fdopen =3D FALSE;
     char *type  =3D NULL;
=20
+    if (num_svs =3D=3D 0 && oname[0] !=3D '<' && oname[0] !=3D '>')
+	Perl_ck_warner_d(aTHX_ packWARN(WARN_DEPRECATED), "two-argument open(...,=
 \"%s\")", oname);
+
     PERL_ARGS_ASSERT_DO_OPEN6;
=20
     /* For ease of blame back to 5.000, keep the existing indenting. */

--jg2l5pwiaqaptgvk--
