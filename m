Received: (qmail 1405 invoked by uid 550); 5 Nov 2025 17:59:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30425 invoked from network); 5 Nov 2025 17:22:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1762363355;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Tg2pNKN0O9iB2yjycTIoV/L6NicE2y8JPwr4aYwolHs=;
	b=FCmryrVG0OUWCyX3HXWUCFkVBkuxQInf9Ci0O7DFaMKOPJf8oDgmJwhG5mva5dLo5+5sQk
	6xcAWzDBb7J5Hu0r2p/iTqrRHAHvv2nSDDLOmQd0HfLOvIWRUBoRsoRQaeTvt1UNDSEOOw
	f0MYOPS2LqI7I7XBc/tBDk6L7PSGleQ=
X-MC-Unique: wNO9VJJxOiOwxt4QyxAsgQ-1
X-Mimecast-MFC-AGG-ID: wNO9VJJxOiOwxt4QyxAsgQ_1762363353
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762363353; x=1762968153;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Tg2pNKN0O9iB2yjycTIoV/L6NicE2y8JPwr4aYwolHs=;
        b=FY8adayN9ExV0HuQPf8dkhjFY2svPC3uKO3/YV/w+RbRZ5xlBvnI5OLHoEUp5boSEO
         V/23Kg5MHm9JFXuv5IhyOB3JpPrLjkX9mcmKBopsSJnXIFde3e2MF7JtgIN/SDa0bNMK
         O1j39vl/8XRRgOaVLIq7MNN49IHIzD6ezb9NSOMElYJeskCGmn5Ha1Ph1RTs063Iokb2
         1pQlD7uXQ1H7neGd1kB9TUJb8RMrqWkC+9anB3M+9ESulMj0vv2/W2gp8dcn3aIv62wB
         nTv1hRhNy9+uw+smy4UM/4Czha6SfbA2+gvUVNsbNm0SBrmGF0yXM3j78n+7RGQx5PJU
         GiTA==
X-Gm-Message-State: AOJu0YyFFfW72mx5IWU2VFwYwf0bxtE6esrAQOZ1OUukKqPzcf5lvXDb
	pBkKRQGMfLkdOwSUqYVe8Sv191X7Cp0UDoRtid7VwYzZNwFxVPA4E2bODtSz2Ot2X7pd+rJSXRy
	ZWTBtsyuSGoRvjdS7e/M3tqTlZrKIHYHrClXDNLxBQfKkcNWc8hbWJWXLgR3BEMgV6CZM31Gc39
	YDRaLM1aCMv/PQNzCM080W7u//n+Dqz5XB7aip5Mp2fOxYiyJpjrt4aYc=
X-Gm-Gg: ASbGncugy2SPWcHfHoKGXd/RrpzSmCTGW3YJ6wkdeTAckAh5pARO1BBkiWu9hdpExbB
	+xoSZeI7BJQ6FT+DscMT8IVjcH3hEWC/RlO4PVeSANouYbVrkq0aR1oB58kKn0wjeaqHj9aHTLV
	/PheFqbtKo3mlIMwt7oCGNE1spfEwZGsUuVg7dK4ZQ9cfzUxnndsRxO+U=
X-Received: by 2002:a05:690e:1614:b0:63f:ab00:1a0d with SMTP id 956f58d0204a3-63fd356f64amr2592240d50.40.1762363353146;
        Wed, 05 Nov 2025 09:22:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG/silTH6Rtc9oUAU1KCMKqdOXO8E/shempiSoPwO+H3bKLRCXFne61QP0J7VQBo93ZDR2pUUjbtPgJje4k4ck=
X-Received: by 2002:a05:690e:1614:b0:63f:ab00:1a0d with SMTP id
 956f58d0204a3-63fd356f64amr2592225d50.40.1762363352617; Wed, 05 Nov 2025
 09:22:32 -0800 (PST)
MIME-Version: 1.0
References: <CAHjsZGZvy3zeN3st9-Ya4Hxu+29My68sXc9WJnZw_Pd2c_AF6Q@mail.gmail.com>
 <2025110538-probation-thickness-0517@gregkh> <5F9CEC1C-62DC-4BF1-96DC-22F62F2935F9@edvina.net>
In-Reply-To: <5F9CEC1C-62DC-4BF1-96DC-22F62F2935F9@edvina.net>
From: Pedro Sampaio <psampaio@redhat.com>
Date: Wed, 5 Nov 2025 14:22:16 -0300
X-Gm-Features: AWmQ_bkAdDe_47HOoPLav2j63hevU-h-2u1XG-06jZ1F_Q-eSRvbUdZQ6jJkgiE
Message-ID: <CAEFhzs9ZffBqT4apo-ZnXakteu_v4P3=h3HgobHRMK-NX0uwtQ@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 9m7Lsr-CXjZ6bbaiUPsYa4mZ1P7V-vd2M9o3iPu2QVs_1762363353
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000992d280642dc3126"
Subject: Re: [oss-security] Becoming a CVE Naming Authority for your project

--000000000000992d280642dc3126
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 5, 2025 at 12:09=E2=80=AFPM Olle E. Johansson <oej@edvina.net> =
wrote:

>
>
> > On 5 Nov 2025, at 00:23, Greg KH <greg@kroah.com> wrote:
> >
> > On Tue, Nov 04, 2025 at 08:47:35AM -0300, Rodrigo Freire wrote:
> >> Open Source Project Maintainers,
> >>
> >> Managing security vulnerabilities is currently a significant pain,
> >> especially with the recent increase in dubious CVE reports due to AI
> >> assistants. The discussion around questionable CVEs reported against
> >> projects like dnsmasq, curl highlights a growing concern within the
> >> open source community.
> >>
> >> One effective way to combat the influx of bogus CVEs and ensure
> >> accurate vulnerability reporting is for open source projects to become
> >> their own CVE Numbering Authority (CNA). As a CNA, your project gains
> >> control over the CVE assignment process.
> >>
> >> Taking ownership of your project's as a CNA ensures that you are in
> >> control of the CVE assignment. There will be some requirements to it,
> >> sure thing. Check
> >>
> https://openssf.org/blog/2023/11/27/openssf-introduces-guide-to-becoming-=
a-cve-numbering-authority-as-an-open-source-project/
> >
> > I totally agree that all "major" open source projects should become a
> > CNA, and strongly recommend taking back control over stuff like this.
> >
> > But, for "smaller" open source projects, it would be _great_ if a root
> > CNA could become the default for all of open source so that we don't
> > have the problem where any CNA can assign CVEs against any random
> > software without any repercussions.
>
> I would be happy if we could assign or =E2=80=9Cscope=E2=80=9D to a CNA t=
hat would help us,
> but also protect our scope without having to become a CNA with all that
> comes with being one. In that case, we have to be in control over our sco=
pe
> if we want to move it to another CNA or at some point have the resources
> needed to register as a CNA ourselves. I am not sure how scope =E2=80=9Co=
wnership=E2=80=9D
> works in the CVE program today.
>
> /O
>
>

The CVE Program has an hierarchical structure[1] which also affects the
scope definition. The higher levels would always have a wider scope that
can encompass the scope of the lower levels. So by becoming a CNA, one
could protect itself from other CNAs at the same level, but not from higher
levels. And I think it is this way so we can have routes to escape any
abuses, while still allowing disputes to happen.

The scope of a CNA is defined during its onboarding, through a simple
statement that describes everything which it is responsible for. Usually
vulnerabilities in whatever software/systems are maintained by the
candidate entity, or if the candidate is a researcher group, whatever is
found by it and is not in another CNA scope.

I believe it is more than proven by now, that the OSS ecosystem has its
particular needs in regards to the CVE/PSIRT functions in relation to
others, and a specific environment/rules needs to be created for it. One
example would be that OSS projects can create their security policies
(could be as simple as a SECURITY.md file), and those should be followed by
all CNAs when making assignment decisions, within reasonable context, even
if the project is not a CNA itself.

So having an overseeing CNA for OSS would also have to be accompanied by
the creation of that environment IMO.

[1] https://www.cve.org/programorganization/Structure

--=20
Pedro Sampaio | Red Hat Product Security
851525C5A98E9DEB7E650ABDFAC8296FBC674B8F

--000000000000992d280642dc3126
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote gmail_quote_container"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Nov 5, 2025 at 12:09=E2=80=AFPM Olle =
E. Johansson &lt;<a href=3D"mailto:oej@edvina.net">oej@edvina.net</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
&gt; On 5 Nov 2025, at 00:23, Greg KH &lt;<a href=3D"mailto:greg@kroah.com"=
 target=3D"_blank">greg@kroah.com</a>&gt; wrote:<br>
&gt; <br>
&gt; On Tue, Nov 04, 2025 at 08:47:35AM -0300, Rodrigo Freire wrote:<br>
&gt;&gt; Open Source Project Maintainers,<br>
&gt;&gt; <br>
&gt;&gt; Managing security vulnerabilities is currently a significant pain,=
<br>
&gt;&gt; especially with the recent increase in dubious CVE reports due to =
AI<br>
&gt;&gt; assistants. The discussion around questionable CVEs reported again=
st<br>
&gt;&gt; projects like dnsmasq, curl highlights a growing concern within th=
e<br>
&gt;&gt; open source community.<br>
&gt;&gt; <br>
&gt;&gt; One effective way to combat the influx of bogus CVEs and ensure<br>
&gt;&gt; accurate vulnerability reporting is for open source projects to be=
come<br>
&gt;&gt; their own CVE Numbering Authority (CNA). As a CNA, your project ga=
ins<br>
&gt;&gt; control over the CVE assignment process.<br>
&gt;&gt; <br>
&gt;&gt; Taking ownership of your project&#39;s as a CNA ensures that you a=
re in<br>
&gt;&gt; control of the CVE assignment. There will be some requirements to =
it,<br>
&gt;&gt; sure thing. Check<br>
&gt;&gt; <a href=3D"https://openssf.org/blog/2023/11/27/openssf-introduces-=
guide-to-becoming-a-cve-numbering-authority-as-an-open-source-project/" rel=
=3D"noreferrer" target=3D"_blank">https://openssf.org/blog/2023/11/27/opens=
sf-introduces-guide-to-becoming-a-cve-numbering-authority-as-an-open-source=
-project/</a><br>
&gt; <br>
&gt; I totally agree that all &quot;major&quot; open source projects should=
 become a<br>
&gt; CNA, and strongly recommend taking back control over stuff like this.<=
br>
&gt; <br>
&gt; But, for &quot;smaller&quot; open source projects, it would be _great_=
 if a root<br>
&gt; CNA could become the default for all of open source so that we don&#39=
;t<br>
&gt; have the problem where any CNA can assign CVEs against any random<br>
&gt; software without any repercussions.<br>
<br>
I would be happy if we could assign or =E2=80=9Cscope=E2=80=9D to a CNA tha=
t would help us,<br>
but also protect our scope without having to become a CNA with all that<br>
comes with being one. In that case, we have to be in control over our scope=
<br>
if we want to move it to another CNA or at some point have the resources<br>
needed to register as a CNA ourselves. I am not sure how scope =E2=80=9Cown=
ership=E2=80=9D<br>
works in the CVE program today.<br>
<br>
/O<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><div><br></div><div>The CVE=
 Program has an hierarchical=C2=A0structure[1] which also affects the scope=
 definition. The higher levels would always have a wider scope that can enc=
ompass the scope of the lower levels. So by becoming a CNA, one could prote=
ct itself from other CNAs at the same level, but not from higher levels. An=
d I think it is this way so we can have routes to escape any abuses, while =
still allowing disputes to happen.</div><div><br></div><div>The scope of a =
CNA is defined during its onboarding, through a simple statement that descr=
ibes everything which it is responsible for. Usually vulnerabilities in wha=
tever software/systems are maintained by the candidate entity, or if the ca=
ndidate is a researcher group, whatever is found by it and is not in anothe=
r CNA scope.</div><div><br></div><div>I believe=C2=A0it is more than proven=
 by now, that the OSS ecosystem has its particular needs in regards to the =
CVE/PSIRT functions in relation to others,=C2=A0and a specific=C2=A0environ=
ment/rules needs to be created for it. One example would be that OSS projec=
ts can create their security policies (could be as simple as a SECURITY.md =
file), and those should be followed by all CNAs when making assignment deci=
sions, within reasonable context, even if the project is not a CNA itself.<=
/div><div><br></div><div>So having an overseeing CNA for OSS would also hav=
e to be accompanied by the creation of that environment IMO.=C2=A0</div><di=
v><br></div><div>[1]=C2=A0<a href=3D"https://www.cve.org/programorganizatio=
n/Structure">https://www.cve.org/programorganization/Structure</a>=C2=A0</d=
iv><div><br></div><span class=3D"gmail_signature_prefix">-- </span><br><div=
 dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div>Pedro Sampaio =
| Red Hat Product Security</div><div>851525C5A98E9DEB7E650ABDFAC8296FBC674B=
8F<br></div></div></div></div>

--000000000000992d280642dc3126--

