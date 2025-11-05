Received: (qmail 20181 invoked by uid 550); 5 Nov 2025 15:03:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26245 invoked from network); 5 Nov 2025 13:17:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1762348629;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=75tagFQiWpRUnJcNTt1mTep/+np2ElJJhTmv1HeITkg=;
	b=MY6j2nWJ+n8TR43n4xHIg3YfBkiKVJg4PJYBDXJa8sUC22DtKain3a5CAOuMgbDsYfycd4
	I4MSSzhH93OpI/K7x5Wxk5CjbXeQFwliHBhWgkZ2z+O0GnTd6p5E5fggiKtm6Wlna2CJzo
	AWnwP3f2Wgb8kq18uCTAyw/PetciJck=
X-MC-Unique: BDBE8k5NPLGDxG5d45ZlIg-1
X-Mimecast-MFC-AGG-ID: BDBE8k5NPLGDxG5d45ZlIg_1762348624
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762348624; x=1762953424;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=75tagFQiWpRUnJcNTt1mTep/+np2ElJJhTmv1HeITkg=;
        b=WLj1x1bRs3ABmFu3VfBc9ch+bjyDm19F2r8QCNGEDPzZs9XRVUUgANZRVVeTsmhpix
         BDJcP3tW47+6+6HzlnR0ImwO/h5xcxpI5d/2vudaDVtDNHdi+L9rnJfCIiMeLcM9ZRjW
         t89E5HOrAKSQMZNvUVw4z8gn5zr/uczC0U7KdeGuHkzoWpkn1SaQn95ocsVSKYQxAfV5
         dd4mmEagvQVV200MWfnZY7kZ1pZ/T0RHfsidMGG5k2d0sueaMpJulylhXXkz8QZLZTxF
         tj9nkVYSMRp2SDISsRRsDMZfc9jyU7CyKgnNSvbCCzm16MJ9gNiHphnfY1M839/CwSm1
         g5hg==
X-Gm-Message-State: AOJu0YzsNyLbnDXdqQgnr9B3F9jbXjO/hKHKUAjsVKwg+T3jK4gP2S8f
	ZsVex9qyrXMfUvYhzWW4fX09qfo9/BeXJkkhO52OExyz2JVI4rSDiMuJWnfZHs3X6o/0NaKGgBF
	p/vvJdW8TlcLOr0AUfwpCu7mRPysPJBK93dR+cu8+hgzM43yjsG3lHNSNnU6lg/OIyDwnKhAvZh
	6VIRhRSk5FBL/qvIqKgg4WR2vG8QA/xHaz79AzWu81XGLnWiMf2sewrno=
X-Gm-Gg: ASbGncteD71OrPZ5OWjt2aU6cV2/zbdCMbbm5P88AXWuFdNUKvTXYmdjwIFafUrcgZW
	5BJcjLX8QMAD+1eZW7JJpugS0hzhI7qVhe5Rqa7SGsYURwPREdMEP1XVeMtYgmxumD8ZDRzE7N2
	XguE0wFPNfGY+91NgMd+WLIqmKbML+AzMsoeWOYHHrjMNJXPuaRmX5F50=
X-Received: by 2002:a05:690e:8d2:b0:63e:b62:5826 with SMTP id 956f58d0204a3-63fd35b2c65mr1630635d50.67.1762348624326;
        Wed, 05 Nov 2025 05:17:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHepZ9OKiHpd3Zca62dKSPTVeC+0OzXf+9PIvwTXgZmPDcAQDy5f+eX7qTOSpoR11qgo33buX4BnHgaK2DCUTg=
X-Received: by 2002:a05:690e:8d2:b0:63e:b62:5826 with SMTP id
 956f58d0204a3-63fd35b2c65mr1630623d50.67.1762348623880; Wed, 05 Nov 2025
 05:17:03 -0800 (PST)
MIME-Version: 1.0
References: <CAHjsZGZvy3zeN3st9-Ya4Hxu+29My68sXc9WJnZw_Pd2c_AF6Q@mail.gmail.com>
 <2025110538-probation-thickness-0517@gregkh>
In-Reply-To: <2025110538-probation-thickness-0517@gregkh>
From: Yogesh Mittal <ymittal@redhat.com>
Date: Wed, 5 Nov 2025 18:46:52 +0530
X-Gm-Features: AWmQ_bkXSUdf2L80IMy-pJxzlkIfMOT-87L9fMeofr0OAzRkFBu3DIyd3GOYPl0
Message-ID: <CAJvML34KOY2eTkLqe1mF447=QtrGdn5_kUh04D21DcHw9J352g@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Wqt_CtF0JeRAWuP9suPVSq4zE4R47jFEnbTRMaNGhos_1762348624
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000b27aa40642d8c32a"
Subject: Re: [oss-security] Becoming a CVE Naming Authority for your project

--000000000000b27aa40642d8c32a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

That's exactly right, Greg. If by 'smaller' OSS projects you mean those
that are resource-constrained, Red Hat is here to help! As a Root in the
CVE Program, we both onboard new OSS projects to become independent CNAs
and use our CNA-LR function to fully support those smaller projects (provid=
ing
ID assignment, publishing, and general program support). Any
resource-constrained project can reach out to our team by emailing us at
cnalr-coordination@redhat.com

Thanks and regards,

Yogesh Mittal

Manager, Product Security Vulnerability Management

Red Hat Pune <https://www.redhat.com/>

ymittal@redhat.com
M: +91-9637123455


<https://www.redhat.com/>


On Wed, Nov 5, 2025 at 4:54=E2=80=AFAM Greg KH <greg@kroah.com> wrote:

> On Tue, Nov 04, 2025 at 08:47:35AM -0300, Rodrigo Freire wrote:
> > Open Source Project Maintainers,
> >
> > Managing security vulnerabilities is currently a significant pain,
> > especially with the recent increase in dubious CVE reports due to AI
> > assistants. The discussion around questionable CVEs reported against
> > projects like dnsmasq, curl highlights a growing concern within the
> > open source community.
> >
> > One effective way to combat the influx of bogus CVEs and ensure
> > accurate vulnerability reporting is for open source projects to become
> > their own CVE Numbering Authority (CNA). As a CNA, your project gains
> > control over the CVE assignment process.
> >
> > Taking ownership of your project's as a CNA ensures that you are in
> > control of the CVE assignment. There will be some requirements to it,
> > sure thing. Check
> >
> https://openssf.org/blog/2023/11/27/openssf-introduces-guide-to-becoming-=
a-cve-numbering-authority-as-an-open-source-project/
>
> I totally agree that all "major" open source projects should become a
> CNA, and strongly recommend taking back control over stuff like this.
>
> But, for "smaller" open source projects, it would be _great_ if a root
> CNA could become the default for all of open source so that we don't
> have the problem where any CNA can assign CVEs against any random
> software without any repercussions.
>
> thanks,
>
> greg k-h
>
>

--000000000000b27aa40642d8c32a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><font face=3D"verdana, sans-serif">That&#39;s exactly=
 right, Greg. If by &#39;smaller&#39; <span class=3D"gmail_default" style=
=3D"font-family:verdana,sans-serif">OSS=C2=A0</span>projects you mean those=
 that are resource-constrained, Red Hat is here to help! As a Root in the C=
VE Program, we both onboard new OSS projects to become independent CNAs and=
 use our CNA-LR function to fully support those <span class=3D"gmail_defaul=
t" style=3D"font-family:verdana,sans-serif"></span>s<span class=3D"gmail_de=
fault" style=3D"font-family:verdana,sans-serif">maller projects</span>=C2=
=A0(providing ID assignment, publishing, and general program support). Any =
resource-constrained project can reach out to our team by emailing us at <s=
pan class=3D"gmail_default" style=3D"font-style:italic;font-family:verdana,=
sans-serif"></span><a href=3D"mailto:cnalr-coordination@redhat.com">cnalr-c=
oordination@redhat.com</a><span class=3D"gmail_default" style=3D"font-famil=
y:verdana,sans-serif"></span></font></div><div><br></div><div><span style=
=3D"font-family:RedHatText,sans-serif;font-size:13px">Thanks and regards,</=
span></div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr"><p style=3D"color:rgb(34,34,34);font-=
weight:bold;margin:0px;padding:0px;font-size:16px;font-family:RedHatText,sa=
ns-serif">Yogesh=C2=A0Mittal<span style=3D"color:rgb(170,170,170);margin:0p=
x"></span></p><p style=3D"color:rgb(34,34,34);font-size:12px;margin:0px;fon=
t-family:RedHatText,sans-serif">Manager, Product Security Vulnerability Man=
agement</p><p style=3D"color:rgb(34,34,34);margin:0px 0px 4px;font-size:12p=
x;font-family:RedHatText,sans-serif"><a href=3D"https://www.redhat.com/" st=
yle=3D"color:rgb(0,136,206);margin:0px" target=3D"_blank">Red Hat=C2=A0Pune=
</a></p><div style=3D"color:rgb(34,34,34);margin-bottom:4px"></div><p style=
=3D"color:rgb(34,34,34);margin:0px;font-size:12px;font-family:RedHatText,sa=
ns-serif"><span style=3D"margin:0px;padding:0px"><a href=3D"mailto:ymittal@=
redhat.com" style=3D"color:rgb(0,0,0);margin:0px" target=3D"_blank">ymittal=
@redhat.com</a>=C2=A0 =C2=A0</span><br>M:=C2=A0<a href=3D"tel:+91-963712345=
5" style=3D"color:rgb(0,0,0);margin:0px" target=3D"_blank">+91-9637123455</=
a></p><p style=3D"color:rgb(34,34,34);margin:0px;font-size:12px;font-family=
:RedHatText,sans-serif"><br></p><div><div dir=3D"ltr"><div dir=3D"ltr"><div=
 dir=3D"ltr"><div dir=3D"ltr"><table border=3D"0" style=3D"color:rgb(34,34,=
34)"><tbody><tr><td width=3D"100px"><a href=3D"https://www.redhat.com/" sty=
le=3D"color:rgb(17,85,204)" target=3D"_blank"><img src=3D"https://static.re=
dhat.com/libs/redhat/brand-assets/2/corp/logo--200.png" width=3D"90" height=
=3D"auto"></a></td></tr></tbody></table></div></div></div></div></div></div=
></div></div><br></div><br><div class=3D"gmail_quote gmail_quote_container"=
><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 5, 2025 at 4:54=E2=80=AF=
AM Greg KH &lt;<a href=3D"mailto:greg@kroah.com">greg@kroah.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Tue, Nov =
04, 2025 at 08:47:35AM -0300, Rodrigo Freire wrote:<br>
&gt; Open Source Project Maintainers,<br>
&gt; <br>
&gt; Managing security vulnerabilities is currently a significant pain,<br>
&gt; especially with the recent increase in dubious CVE reports due to AI<b=
r>
&gt; assistants. The discussion around questionable CVEs reported against<b=
r>
&gt; projects like dnsmasq, curl highlights a growing concern within the<br>
&gt; open source community.<br>
&gt; <br>
&gt; One effective way to combat the influx of bogus CVEs and ensure<br>
&gt; accurate vulnerability reporting is for open source projects to become=
<br>
&gt; their own CVE Numbering Authority (CNA). As a CNA, your project gains<=
br>
&gt; control over the CVE assignment process.<br>
&gt; <br>
&gt; Taking ownership of your project&#39;s as a CNA ensures that you are i=
n<br>
&gt; control of the CVE assignment. There will be some requirements to it,<=
br>
&gt; sure thing. Check<br>
&gt; <a href=3D"https://openssf.org/blog/2023/11/27/openssf-introduces-guid=
e-to-becoming-a-cve-numbering-authority-as-an-open-source-project/" rel=3D"=
noreferrer" target=3D"_blank">https://openssf.org/blog/2023/11/27/openssf-i=
ntroduces-guide-to-becoming-a-cve-numbering-authority-as-an-open-source-pro=
ject/</a><br>
<br>
I totally agree that all &quot;major&quot; open source projects should beco=
me a<br>
CNA, and strongly recommend taking back control over stuff like this.<br>
<br>
But, for &quot;smaller&quot; open source projects, it would be _great_ if a=
 root<br>
CNA could become the default for all of open source so that we don&#39;t<br>
have the problem where any CNA can assign CVEs against any random<br>
software without any repercussions.<br>
<br>
thanks,<br>
<br>
greg k-h<br>
<br>
</blockquote></div>

--000000000000b27aa40642d8c32a--

