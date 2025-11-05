Received: (qmail 3423 invoked by uid 550); 5 Nov 2025 18:16:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19946 invoked from network); 5 Nov 2025 18:03:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1762365786;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ZRalGCGur2umIUff4LjWJylLDA/j5u8ffQ/KRKnXlAk=;
	b=gllwvhFnOFeEdou+SlDEMy7XlxmUX01EwxgzQEAXyk4feU7qS6HCJcn3lYNvwuQCPPaucv
	0y+jJ1uidSRWE2EiA5ZORDTmKo0y8TCEYKWatpHYQNOHgXdgUm5rzPzDxDlIkY7guOcTT5
	HZcJNV6IGasPbpv3X5N4ok9ntEhI/AI=
X-MC-Unique: Hg4dOY9cPWerc9xgK4LZVw-1
X-Mimecast-MFC-AGG-ID: Hg4dOY9cPWerc9xgK4LZVw_1762365783
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762365783; x=1762970583;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZRalGCGur2umIUff4LjWJylLDA/j5u8ffQ/KRKnXlAk=;
        b=laBX3/BSDMLYHO3vcW6ZjRDNp8I5MRS/mZVqsEhv0cpLN55pnDHohTpfy01g3UmJoa
         hW0wNiE8uR29AHRNp9Rh4dsnrS22Qf3WPSbmcJ9pINKYbifOO8Am9HmTeEbiqbn0TiYu
         k86OwBkYFXNcue4kf668nKEYUYgjTI0b4d/7WSP/UPQ4M6u3mX4qiGk+bTPvbeDeS0EG
         khhpXCBLZzU7Q0y1MVjw6TAFwnBO/GN5t56RTEc4VlnZbT+maPt241oLhhIpKh/uHIbr
         bu0CB0h19/cH/rkzky2o4zaOsn/j2h5aw/w6ZVWHFt/rgiSSmpd7LiivoNZhm+fo2Khl
         puOg==
X-Gm-Message-State: AOJu0YxK3rrUjmmYn4vW5NkyfqQHEEItJae4UDbpMsRXVVn+wf7mK/On
	VAzue5IE4T13ESHqbh5PPSKLAWptGhEMeGGihPOfS8LgBXv9fG+ESxsD4B52g7ZWqUA8vk9G41t
	i8Lz6pXBBIgAVejwtQqvxjFeKX6gI3iEa3gSwHIlp20b151nxUOy5WC8yX4ioCEVkuCluWPVGaF
	nBKbThALNvr96g3B7kzZdHNc8g7Vctqo5TCcjr9v1PxxrIGw5Ou/bY
X-Gm-Gg: ASbGncuxoxt7rGqkITlCJSkm0qkhQrIKOwqd3SiGDrrV6J0af8R4ZHjTx+6AyvsDH7w
	XGlIODOOcpSJ/s6kErHL0XRxD4hLmC4/2kNJl9hV3PMzOSvnp7onD/gOJzMjNkYse3fKSBE1l2F
	tr6rCHsca1ovNvvHIH14OQ8pEEhTCfFjegmBbUN0+SSDtgX2VzIu88Lf4=
X-Received: by 2002:a05:690e:151c:b0:63f:b590:305 with SMTP id 956f58d0204a3-63fd34bb3d3mr2891350d50.4.1762365782506;
        Wed, 05 Nov 2025 10:03:02 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGhm+qpaaeeyo6BCosX6oSQgNjvPIzxWYANIaGAJnLLDjh/iFy41DYryJ7FPu/LzCvWtj1Kcx+GzWUwFWzUWq4=
X-Received: by 2002:a05:690e:151c:b0:63f:b590:305 with SMTP id
 956f58d0204a3-63fd34bb3d3mr2891303d50.4.1762365781802; Wed, 05 Nov 2025
 10:03:01 -0800 (PST)
MIME-Version: 1.0
References: <aP_msOoiyHJ_M4Yx@mertle> <20251027163220.8c7ede47-6b3a-4190-ad4b-e52761b341de@korelogic.com>
 <20251028014909.GA6430@openwall.com> <76f8e74c-d9cc-4f20-8061-488598f85fe7@protonmail.com>
 <20251101030054.GA3031@openwall.com> <007B59A3-903D-48C6-8295-764499DA5190@edvina.net>
 <aafcc993-868d-4bd7-90da-de0505c24bd8@protonmail.com> <86CF08FC-173D-42AE-B0FD-451FBCA0A724@edvina.net>
 <b72f8f12-623a-4fc5-a7b6-001fa85d965c@protonmail.com> <BA9450C7-C888-41E6-9C49-8BE94CB659E9@edvina.net>
In-Reply-To: <BA9450C7-C888-41E6-9C49-8BE94CB659E9@edvina.net>
From: Pedro Sampaio <psampaio@redhat.com>
Date: Wed, 5 Nov 2025 15:02:44 -0300
X-Gm-Features: AWmQ_bnbxaMtqZQWyRO_sh_g90y8oCgTttjyVJW75dwt30Zfxpa5hPx9PUTk8WQ
Message-ID: <CAEFhzs_s6U2xMwp3jmGK9_pOg6toiSH_4bBcp3GS7t59CUUamg@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 8-wCzwSsD--GIWSL810ZoNrSgfke-_bvpKUWWY2TGEc_1762365783
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000006396190642dcc2e5"
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

--0000000000006396190642dcc2e5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 5, 2025 at 12:13=E2=80=AFPM Olle E. Johansson <oej@edvina.net> =
wrote:

>
>
> > On 4 Nov 2025, at 18:59, Art Manion <zmanion@protonmail.com> wrote:
> >
> > On 2025-11-04 04:03, Olle E. Johansson wrote:
> >
> >>> On 3 Nov 2025, at 19:07, Art Manion <zmanion@protonmail.com> wrote:
> >
> >>>>> CVEs against dnsmasq (CVE-2025-12198, CVE-2025-12199, CVE-2025-1220=
0)
> >>>>> and Kamailio (CVE-2025-12204, CVE-2025-12205, CVE-2025-12206, and
> >>>>> CVE-2025-12207) mentioned in this thread are not yet disputed and
> have
> >>>>> no comments of this sort in their descriptions.
> >>>
> >>> I asked VulDB to mark the dnsmasq CVE IDs as disputed.
> >
> > The VulDB CNA decided to reject the dnsmasq CVE IDs.
> >
> >>>> As part of the Kamailio project I can say that we did just become
> aware
> >>>> of these CVEs in your email. They do not make sense. Trying to get to
> >>>> the report, the config files used to provoke the issue can=E2=80=99t=
 be
> downloaded.
> >
> >> We=E2=80=99ve gone back and this was our core developer=E2=80=99s reac=
tion to the mail
> we got earlier to our security address:
> >>
> >> "This is clearly spam, imo: vague/generic reporting, no explicit naming
> >> of Kamailio ... the email was not sent from the vuldb.com server
> >> but from mc20a2201.dnh.net ([185.46.57.114]) -- I would suggest to not
> >> clink on the links, they might lead to malware, etc...
> >
> > I understand both sides of this problem.  Would it have helped if the
> VulDB
> > notification included details such as these (from CVE-2025-12207)?
> >
> >  https://shimo.im/docs/vVqRMVMlrycMO63y/read
> >
> For us that site is not trustworthy. It could be language/cultural issues.
> One example is that the actual configuration files for some reason can=E2=
=80=99t be
> downloaded and the error message is
> in a language I have no understanding of.
>
> Trust is hard. We have to think about this. We get all kinds of strange
> emails to our
> security reporting email address so we=E2=80=99re very cautious unfortuna=
tely.
>
> How can we create some kind of trust system so that any open source
> developer - from one person projects to large projects with massive fundi=
ng
> - know that a report is worth reacting to?
>
> /O
> > - Art
> >
> >
>
>
It seems to be that there is a hidden stage during the PSIRT function that
may require its own identification inside the CVE Program (which I assume
is the highest source of truth for us at this moment?). And that stage is
when a security issue is deemed not enough to become a full CVE, but it is
still relevant for awareness purposes. Assigning a CVE ID only to have it
disputed or rejected later seems like a process that is confusing and hard
to manage.

Disputes have no nuance and once the word is out, the possible damages are
hard to revert. Oftentimes they stay perpetually open, and resolutions seem
to not give any definitive answer, which adds to the confusion. Most CVE
record consumers do not have a way to clearly differentiate and correctly
prioritize them.

What if a new ID could be created for these cases, like a lower level CVE,
which can help raise awareness, maintain discussion history, and issues
could be elevated or degraded to it without them getting stuck at the never
ending vendor CVE grinder, but still benefiting from the current CVE
infrastructure?

--=20
Pedro Sampaio | Red Hat Product Security
851525C5A98E9DEB7E650ABDFAC8296FBC674B8F

--0000000000006396190642dcc2e5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote gmail_quote_container"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Nov 5, 2025 at 12:13=E2=80=AFPM Olle =
E. Johansson &lt;<a href=3D"mailto:oej@edvina.net">oej@edvina.net</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
&gt; On 4 Nov 2025, at 18:59, Art Manion &lt;<a href=3D"mailto:zmanion@prot=
onmail.com" target=3D"_blank">zmanion@protonmail.com</a>&gt; wrote:<br>
&gt; <br>
&gt; On 2025-11-04 04:03, Olle E. Johansson wrote:<br>
&gt; <br>
&gt;&gt;&gt; On 3 Nov 2025, at 19:07, Art Manion &lt;<a href=3D"mailto:zman=
ion@protonmail.com" target=3D"_blank">zmanion@protonmail.com</a>&gt; wrote:=
<br>
&gt; <br>
&gt;&gt;&gt;&gt;&gt; CVEs against dnsmasq (CVE-2025-12198, CVE-2025-12199, =
CVE-2025-12200)<br>
&gt;&gt;&gt;&gt;&gt; and Kamailio (CVE-2025-12204, CVE-2025-12205, CVE-2025=
-12206, and<br>
&gt;&gt;&gt;&gt;&gt; CVE-2025-12207) mentioned in this thread are not yet d=
isputed and have<br>
&gt;&gt;&gt;&gt;&gt; no comments of this sort in their descriptions.<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; I asked VulDB to mark the dnsmasq CVE IDs as disputed.<br>
&gt; <br>
&gt; The VulDB CNA decided to reject the dnsmasq CVE IDs.<br>
&gt; <br>
&gt;&gt;&gt;&gt; As part of the Kamailio project I can say that we did just=
 become aware<br>
&gt;&gt;&gt;&gt; of these CVEs in your email. They do not make sense. Tryin=
g to get to<br>
&gt;&gt;&gt;&gt; the report, the config files used to provoke the issue can=
=E2=80=99t be downloaded.<br>
&gt; <br>
&gt;&gt; We=E2=80=99ve gone back and this was our core developer=E2=80=99s =
reaction to the mail we got earlier to our security address:<br>
&gt;&gt; <br>
&gt;&gt; &quot;This is clearly spam, imo: vague/generic reporting, no expli=
cit naming<br>
&gt;&gt; of Kamailio ... the email was not sent from the <a href=3D"http://=
vuldb.com" rel=3D"noreferrer" target=3D"_blank">vuldb.com</a> server<br>
&gt;&gt; but from <a href=3D"http://mc20a2201.dnh.net" rel=3D"noreferrer" t=
arget=3D"_blank">mc20a2201.dnh.net</a> ([185.46.57.114]) -- I would suggest=
 to not<br>
&gt;&gt; clink on the links, they might lead to malware, etc...<br>
&gt; <br>
&gt; I understand both sides of this problem.=C2=A0 Would it have helped if=
 the VulDB<br>
&gt; notification included details such as these (from CVE-2025-12207)?<br>
&gt; <br>
&gt;=C2=A0 <a href=3D"https://shimo.im/docs/vVqRMVMlrycMO63y/read" rel=3D"n=
oreferrer" target=3D"_blank">https://shimo.im/docs/vVqRMVMlrycMO63y/read</a=
><br>
&gt; <br>
For us that site is not trustworthy. It could be language/cultural issues. =
One example is that the actual configuration files for some reason can=E2=
=80=99t be downloaded and the error message is<br>
in a language I have no understanding of.<br>
<br>
Trust is hard. We have to think about this. We get all kinds of strange ema=
ils to our<br>
security reporting email address so we=E2=80=99re very cautious unfortunate=
ly. <br>
<br>
How can we create some kind of trust system so that any open source develop=
er - from one person projects to large projects with massive funding - know=
 that a report is worth reacting to?<br>
<br>
/O<br>
&gt; - Art<br>
&gt; <br>
&gt; <br>
<br>
</blockquote></div><div><br></div><div>It seems to be that there is a hidde=
n stage during the PSIRT function that may require its own identification i=
nside the CVE Program (which I assume is the highest=C2=A0source of truth f=
or us at this moment?). And that stage is when a security issue is deemed n=
ot enough to become a full CVE, but it is still relevant for awareness purp=
oses. Assigning a CVE ID only to have it disputed or rejected later seems l=
ike a process that is confusing and hard to manage.=C2=A0</div><div><br></d=
iv><div>Disputes have no nuance and once the word is out, the possible dama=
ges are hard to revert. Oftentimes they stay perpetually open, and resoluti=
ons seem to not give any definitive answer, which adds to the confusion. Mo=
st CVE record consumers do not have a way to clearly differentiate and corr=
ectly prioritize them.</div><div><br></div><div>What if a new ID could be c=
reated for these cases, like a lower level CVE, which can help raise awaren=
ess, maintain discussion history, and issues could be elevated or degraded =
to it without them getting stuck at the never ending vendor CVE grinder, bu=
t still benefiting from the current CVE infrastructure?</div><br><span clas=
s=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_=
signature"><div dir=3D"ltr"><div>Pedro Sampaio | Red Hat Product Security</=
div><div>851525C5A98E9DEB7E650ABDFAC8296FBC674B8F<br></div></div></div></di=
v>

--0000000000006396190642dcc2e5--

