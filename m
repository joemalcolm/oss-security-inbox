X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["10815" "Friday" "4" "March" "2016" "11:24:44" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com>" "232" "[oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" "^Date:" nil nil "3" "2016030418:24:44" "[oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" (number mark "        kseifried@re Mar  4  232/10815 " thread-indent "\"[oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22384 invoked by uid 550); 4 Mar 2016 18:24:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22362 invoked from network); 4 Mar 2016 18:24:56 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=K2DqTmLkFM1VJ634qgEc+nyy8UCRiVwq87f4kl516yg=;
        b=QoThUD5wiYOMMFTLebJdSdECKZ8vwNy61QKL6LxOAd9e8TxtOb27/kvsCJcxLTpMTS
         8+Bo604x/sAdYRWD2/924/OKyNe/kbgWTDbbCdbTCGJIY15Tl4qqkzDtXYznlwtDQNNC
         cBud6l7NNJAgrbAzbZ02h3Clsdw9UnhnHimBLjxG9qbPzUQGcmvPTtu1IwTrH8KGSfi/
         /0txoEUz1lhhFoT7BgjJ/g+uSUQ1kPKdhX1Jjqc4Ok0YyfMzPH6FLBqjn2YDS+fHuzcw
         ElM0ZuKgiVtpj5gCPltkf9ZMJAEthyAilVuQBY59FIuFK8BbBHQYJl9wE7BKkC+zizI2
         fCXg==
X-Gm-Message-State: AD7BkJKRyanNVBKyx+GqrDj/JIL7VhxnWmWvu32JNpuTtni+M17Mb5/Zwsg9iEt+PjIYFbGHYe2TTR92uQLGJJRg
MIME-Version: 1.0
X-Received: by 10.13.235.7 with SMTP id u7mr5495831ywe.97.1457115884441; Fri,
 04 Mar 2016 10:24:44 -0800 (PST)
Message-ID: <CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com>
Content-Type: multipart/mixed; boundary=94eb2c087306b0a4c5052d3d3a16
Date: Fri, 4 Mar 2016 11:24:44 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies
To: cve-editorial-board-list <cve-editorial-board-list@lists.mitre.org>, 
	oss-security <oss-security@lists.openwall.com>

--94eb2c087306b0a4c5052d3d3a16
Content-Type: multipart/alternative; boundary=94eb2c087306b0a4bd052d3d3a14

--94eb2c087306b0a4bd052d3d3a14
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

So I've now heard from several security researchers that they are unable to
get CVEs for issues that need CVEs (e.g. widely used hardware/software with
flaws that have real world impacts and need to be properly tracked. This
has definitely resulted in issues being publicized with no CVE that then
makes it much harder to track and deal with these issues.

I'm also worryingly hearing about people that may have given up asking for
CVEs and publicizing their work at all, but of course cannot easily confirm
this as I don't have any access on insight into what cve-assign@mitre.org
is actually doing/who they are talking to.

I finally was able to get a researcher willing to "go on the record" as it
were, with thanks to Hanno B=C3=B6ck for stepping up.

My main concern is this, if this tiered coverage (
https://cve.mitre.org/cve/data_sources_product_coverage.html) is the new
way forwards we will have significantly less CVE coverage in a time where
security issues are literally exploding and becoming much more of a problem
leading to a situation where I fear that CVE will not be as useful anymore.
As CVE is the cornerstone of our industry for identifying vulnerabilities
and making it much easier to track and search for them I think it's
critical that we re-examine this tier'ed coverage policy that Mitre
arbitrarily decided to enact (there was a brief discussion at
https://cve.mitre.org/data/board/archives/2016-01/msg00015.html with some
concerns raised and not really addressed).


---------- Forwarded message ----------
From: Hanno B=C3=B6ck <hanno@hboeck.de>
Date: Fri, Mar 4, 2016 at 10:35 AM
Subject: Fw: CVE request: nonce reuse in GCM implementation of Radware Load
balancers
To: Kurt Seifried <kseifried@redhat.com>


This was the issue I requested a CVE for:
https://kb.radware.com/Questions/SecurityAdvisory/Public/Security-Advisory-=
Explicit-Initialization-Vector-f

(And currently I'd apprechiate if you don't make a big buzz out of this
issue, because we're preparing a paper on it by the end of march where
we'll disclose a bunch of similar issues)

Begin forwarded message:

Date: Thu, 11 Feb 2016 02:58:06 +0000
From: CVE ID Requests <cve-assign@mitre.org>
To: Hanno B=C3=B6ck <hanno@hboeck.de>
Cc: CVE ID Requests <cve-assign@mitre.org>
Subject: RE: CVE request: nonce reuse in GCM implementation of Radware
Load balancers


Thank you for your request.

Your request is outside the scope of CVE's published priorities. As
such, it will not be assigned a CVE-ID by MITRE or another CVE CNA at
this time.

CVE-ID assignments are made according to the priorities published at
http://cve.mitre.org/cve/data_sources_product_coverage.html. Processing
of CVE-ID requests for non-prioritized products can occur at any time,
but the CVE-ID assignments may be delayed.

If you feel that our assessment is in error, or that the product or
products in question should be included within the CVE published
priorities, please provide MITRE with your justification(s).

--
CVE assignment team, MITRE CVE Numbering Authority M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]


--
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42



--=20

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--94eb2c087306b0a4bd052d3d3a14
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>So I&#39;ve now heard from several security researche=
rs that they are unable to get CVEs for issues that need CVEs (e.g. widely =
used hardware/software with flaws that have real world impacts and need to =
be properly tracked. This has definitely resulted in issues being publicize=
d with no CVE that then makes it much harder to track and deal with these i=
ssues.</div><div><br></div><div>I&#39;m also worryingly hearing about peopl=
e that may have given up asking for CVEs and publicizing their work at all,=
 but of course cannot easily confirm this as I don&#39;t have any access on=
 insight into what <a href=3D"mailto:cve-assign@mitre.org">cve-assign@mitre=
.org</a> is actually doing/who they are talking to.</div><div><br></div><di=
v>I finally was able to get a researcher willing to &quot;go on the record&=
quot; as it were, with thanks to=C2=A0<b class=3D"gmail_sendername">Hanno B=
=C3=B6ck</b>=C2=A0for=C2=A0stepping up.=C2=A0</div><div><br></div><div>My m=
ain concern is this, if this tiered coverage (<a href=3D"https://cve.mitre.=
org/cve/data_sources_product_coverage.html">https://cve.mitre.org/cve/data_=
sources_product_coverage.html</a>) is the new way forwards we will have sig=
nificantly less CVE coverage in a time where security issues are literally =
exploding and becoming much more of a problem leading to a situation where =
I fear that CVE will not be as useful anymore. As CVE is the cornerstone of=
 our industry for identifying vulnerabilities and making it much easier to =
track and search for them I think it&#39;s critical that we re-examine this=
 tier&#39;ed coverage policy that Mitre arbitrarily decided to enact (there=
 was a brief discussion at=C2=A0<a href=3D"https://cve.mitre.org/data/board=
/archives/2016-01/msg00015.html">https://cve.mitre.org/data/board/archives/=
2016-01/msg00015.html</a> with some concerns raised and not really addresse=
d).=C2=A0</div><div><br></div><br><div class=3D"gmail_quote">---------- For=
warded message ----------<br>From: <b class=3D"gmail_sendername">Hanno B=C3=
=B6ck</b> <span dir=3D"ltr">&lt;<a href=3D"mailto:hanno@hboeck.de">hanno@hb=
oeck.de</a>&gt;</span><br>Date: Fri, Mar 4, 2016 at 10:35 AM<br>Subject: Fw=
: CVE request: nonce reuse in GCM implementation of Radware Load balancers<=
br>To: Kurt Seifried &lt;<a href=3D"mailto:kseifried@redhat.com">kseifried@=
redhat.com</a>&gt;<br><br><br>This was the issue I requested a CVE for:<br>
<a href=3D"https://kb.radware.com/Questions/SecurityAdvisory/Public/Securit=
y-Advisory-Explicit-Initialization-Vector-f" rel=3D"noreferrer" target=3D"_=
blank">https://kb.radware.com/Questions/SecurityAdvisory/Public/Security-Ad=
visory-Explicit-Initialization-Vector-f</a><br>
<br>
(And currently I&#39;d apprechiate if you don&#39;t make a big buzz out of =
this<br>
issue, because we&#39;re preparing a paper on it by the end of march where<=
br>
we&#39;ll disclose a bunch of similar issues)<br>
<br>
Begin forwarded message:<br>
<br>
Date: Thu, 11 Feb 2016 02:58:06 +0000<br>
From: CVE ID Requests &lt;<a href=3D"mailto:cve-assign@mitre.org">cve-assig=
n@mitre.org</a>&gt;<br>
To: Hanno B=C3=B6ck &lt;<a href=3D"mailto:hanno@hboeck.de">hanno@hboeck.de<=
/a>&gt;<br>
Cc: CVE ID Requests &lt;<a href=3D"mailto:cve-assign@mitre.org">cve-assign@=
mitre.org</a>&gt;<br>
Subject: RE: CVE request: nonce reuse in GCM implementation of Radware<br>
Load balancers<br>
<br>
<br>
Thank you for your request.<br>
<br>
Your request is outside the scope of CVE&#39;s published priorities. As<br>
such, it will not be assigned a CVE-ID by MITRE or another CVE CNA at<br>
this time.<br>
<br>
CVE-ID assignments are made according to the priorities published at<br>
<a href=3D"http://cve.mitre.org/cve/data_sources_product_coverage.html" rel=
=3D"noreferrer" target=3D"_blank">http://cve.mitre.org/cve/data_sources_pro=
duct_coverage.html</a>. Processing<br>
of CVE-ID requests for non-prioritized products can occur at any time,<br>
but the CVE-ID assignments may be delayed.<br>
<br>
If you feel that our assessment is in error, or that the product or<br>
products in question should be included within the CVE published<br>
priorities, please provide MITRE with your justification(s).<br>
<br>
--<br>
CVE assignment team, MITRE CVE Numbering Authority M/S M300<br>
202 Burlington Road, Bedford, MA 01730 USA<br>
[ PGP key available through <a href=3D"http://cve.mitre.org/cve/request_id.=
html" rel=3D"noreferrer" target=3D"_blank">http://cve.mitre.org/cve/request=
_id.html</a> ]<br>
<span class=3D""><font color=3D"#888888"><br>
<br>
--<br>
Hanno B=C3=B6ck<br>
<a href=3D"https://hboeck.de/" rel=3D"noreferrer" target=3D"_blank">https:/=
/hboeck.de/</a><br>
<br>
mail/jabber: <a href=3D"mailto:hanno@hboeck.de">hanno@hboeck.de</a><br>
GPG: BBB51E42<br>
</font></span></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature"><div dir=3D"ltr"><br><div><span style=3D"color:rgb(136=
,136,136);font-size:12.8px">--</span><br style=3D"color:rgb(136,136,136);fo=
nt-size:12.8px"><span style=3D"color:rgb(136,136,136);font-size:12.8px">Kur=
t Seifried -- Red Hat -- Product Security -- Cloud</span><br style=3D"color=
:rgb(136,136,136);font-size:12.8px"><span style=3D"color:rgb(136,136,136);f=
ont-size:12.8px">PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993</spa=
n><br style=3D"color:rgb(136,136,136);font-size:12.8px"><span style=3D"colo=
r:rgb(136,136,136);font-size:12.8px">Red Hat Product Security contact:=C2=
=A0</span><a href=3D"mailto:secalert@redhat.com" style=3D"color:rgb(17,85,2=
04);font-size:12.8px" target=3D"_blank">secalert@redhat.com</a><br></div></=
div></div>
</div>

--94eb2c087306b0a4bd052d3d3a14--

--94eb2c087306b0a4c5052d3d3a16
Content-Type: application/pgp-signature
Content-Disposition: attachment
Content-Transfer-Encoding: base64
X-Attachment-Id: 5c811947c32f7554_0.1

LS0tLS1CRUdJTiBQR1AgU0lHTkFUVVJFLS0tLS0NClZlcnNpb246IEdudVBH
IHYyDQoNCmlRSWNCQUVCQ2dBR0JRSlcyY2ROQUFvSkVLV0lBSEs3dFI1Q1ZH
TVAvUjh6aElZb2xmQjdFVjdBUE0wWWdDQmgNCmNoUzFHRDBnZWhrOEZKVThS
OVZBY2lvaVViRk1nSUZ5NTM4Qk9wb0dRNzkrYmlORDJZS3htQWNYM3JZNENx
Z2oNCmJzZUVJL2pVQ3NLKzI5djVFUUFXbGpBZWNNb0ZMa2kxUEZLNDVwOU5y
U0ZiY09TWW9Rd3dQYitHMk5zMW53eS8NCk9CVFFzeS9zTFRkSzd5Qnp5UHVZ
ZFpWdjdlRDFxWUpsUjcwQ2lySWNRWWM0OXpaVGswTVk0SUVDK2NBbWZwc08N
ClEwaENDZ0t3WFZ4WllYTmJCV0FNbjNsTWd2eEhmbitmK3d5U2U5WkcxY3dO
ZWxrZWVzMHl1M3A3c00va1JLSjcNCjR1Ym5kdUhUc1lDdEJ6MVEvK0pYbHNu
eWxLa2R1TnJjU3hZMEpibGoyaDJzcmZ4TGIrM3FFVnpiR3ZDWXRQS0oNCitu
RVhuWHZaWE9kSUJEUEtDYWJjdExSWkw1RGtRWjNqNGFoMXBzeENucmhaakdr
UjFGanhFUHZmSXpXTlA4TWQNCk85aTRCRGxydWovQk0zdWZTNTRQeThkNmx1
UCtqdHJibUlJUHNJbGRPbmU0RHdCN0FONFZ4ZGpBTHRzczk2NG8NCkJOQ1Q3
aXpDcU53V0JKWkdFRmdPcCt2NUkrb3prME10YzJwbklWTFBJVEg5ak5xUHFp
U0liUEVRU1ErVTh1RlcNClMxNW0vemtURzNXTkxQdHJpN2d5RHFmbzEwTXNt
Y0w2czNLOVNhaEF2bTBSOVRDUzNMTjJlem1GbTkyaHNpYWoNCkNYUjRRMmNO
Rm1yMGsyazdqRlBSbnVpSDhNaHkybExRc29iY2F5YVJXR0RLcTZsTjFENC9C
NmcxWDhjcFJOeHMNCkMzUzRBdTVoQW1kU3VvU1ZvREtCDQo9ZmptTg0KLS0t
LS1FTkQgUEdQIFNJR05BVFVSRS0tLS0tDQo=

--94eb2c087306b0a4c5052d3d3a16--
