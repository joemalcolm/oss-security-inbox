Received: (qmail 18343 invoked by uid 550); 29 Jul 2025 14:05:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13809 invoked from network); 29 Jul 2025 13:36:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=python.org; s=google; t=1753796188; x=1754400988; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oKaHD48d5DRFy5PxdefWaGL0ZBsFLRfJzbAD8q8gMf8=;
        b=Nt95mAZLIj9xMO7RI3srTLKRrTkFunpYq/Lqk45f1O5qIdnLrDJ/bp5UaF8yRX8VVv
         TT02vhmQR9tpwOf1RmCLfERsZ9gtwi9yUloJpJVY91n9L/KhimzyPaTjDyKyqkDzIWKQ
         EBqfDhdZ8wklWPXbuaNFpfVvgF9B+u6DfvQ1Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753796188; x=1754400988;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oKaHD48d5DRFy5PxdefWaGL0ZBsFLRfJzbAD8q8gMf8=;
        b=fPkYJEGzQJZ7C+KRlGrlefEX+wCic99ZyjvBYPy5WiwdDYYdMDbrfOGOm+Fujj70dL
         LtS3ejCtigtnh/eTImBTS8MD2WSaVlX1JHayO4LvE15wRTcXCqRMgyXAbWqgRNgkHnPX
         llz68bLZfRDwK8pxiDRttaiHyUt2QwUIuvElwD5TVeuUrMD6pm5JhED5+hhkFeHNX3r9
         uF5lORo+TxxFA0L07P1ZI9pyGXGYRtF7MbFMhr5VVRyxm71ssspySVjpkFwx74jbblcv
         eb/JiYt0+qhc8wZx7v/qBfWfDeDPv+7KIzViETzx9UwQnwX5/pOGugucVS36h3yev9B0
         Ye2g==
X-Gm-Message-State: AOJu0Yx8Hsi/kpCeyEy281KZZzd3mRQ3WyNgk8pTRdKsQ49Fv7GE3LGX
	fs5iVuojyUUMmjf07cuCrGkfHJe2lWxEZ4vudf7Rl3AmE0Ye2Zn+3DcE/4jsPSRPSR3uzdtFpbG
	QxWptJVU5SNl+5iiRKvPRaIJf0AqEobF5OjGmXoTmww==
X-Gm-Gg: ASbGncs4PqtYgpX3PtbDgQKYNeKLeaCLeEvhQFpv0Hr290bLm8hoaGfP8FrWg+Lg4vv
	/5jsQJZswMWcvRn87EK4osbsWuYasY3jfg/ZYo3y2oz/kDgcuEk6u2G3SWbWY29cQt+UgxxTS+I
	HuTVFJwej7XMKZipDCBKvVGswQ5GAfxTvu7s0eaBW3+qy911oDEALlrFN04sVzqv5w/RRdSvWhC
	2Rw5/4=
X-Google-Smtp-Source: AGHT+IGOCDPbdejkxNRDexRD7vMJCvyBv4RsP6vxtjz+7nNwJY2XNcaHcMiPUqzfq3iEXpCEX6uAM1TlS63w7J98OyA=
X-Received: by 2002:a05:6512:39d2:b0:553:2633:8a65 with SMTP id
 2adb3069b0e04-55b5f467004mr4521996e87.30.1753796187513; Tue, 29 Jul 2025
 06:36:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAADqWPT33dBPg2cba1h39veP-_C4bpmsn-On8mEXio0Nz_gcEg@mail.gmail.com>
 <c1d8d50a-9e67-411e-8f1e-cb2de457a637@oracle.com> <94d43c9f-1280-4247-bef2-556190620d84@wichmann.us>
In-Reply-To: <94d43c9f-1280-4247-bef2-556190620d84@wichmann.us>
From: Seth Larson <seth@python.org>
Date: Tue, 29 Jul 2025 13:36:15 +0000
X-Gm-Features: Ac12FXwBMaigsubvO8vI4tIlVk0lmBfWcBdLHN3J1m4129Q52AwHxs2GJd4YC2c
Message-ID: <CAADqWPQEdFXvKV-mgUzrwb=UOF-mC5UUpD51tv=SDpG3rOOQtQ@mail.gmail.com>
To: Mats Wichmann <mats@wichmann.us>
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000c40c22063b117eab"
Subject: Re: [oss-security] Fwd:[CVE-2025-8194] Cpython Tarfile
 infinite loop during parsing with negative member offset
X-Spam: Yes

--000000000000c40c22063b117eab
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello!

Thanks for bringing the formatting issue to our attention, the prose
description renders fine in the Vulnogram UI. Regarding the version range,
I believe that is correct. All Python versions (from 0 to 3.14.0) are
affected by this vulnerability. The patches that have landed in GitHub have
not yet been released. When the patches are included in a release the CVE
will automatically update with the fixed versions.

Hope this helps!

Seth Larson

On Tue, Jul 29, 2025 at 12:50=E2=80=AFPM Mats Wichmann <mats@wichmann.us> w=
rote:

> On 7/28/25 13:55, Alan Coopersmith forwarded a cPython security issue:
>
> some unfortunate glitches here. first, a template failure:
>
> > There is a HIGH severity vulnerability affecting {project}.
>
> second and third:
>
> > Please see the linked CVE ID for the latest information on affected
> > versions:
> >
> > * https://www.cve.org/CVERecord?id=3DCVE-2025-8194
> The CVE contents suggest nothing is broken:
>
>  > affected
>
>  >    affected from 0 before 3.14.0
>
> (3.14 still being unreleased).  But patches for this were backported to
> all supported cPython versions, so the effect must be a bit wider than
> that.
>
>
> And in the cve record itself, the patch suggestion comes out mangled.
> _______________________________________________
> PSRT mailing list -- psrt@python.org
> To unsubscribe send an email to psrt-leave@python.org
> https://mail.python.org/mailman3//lists/psrt.python.org
> Member address: seth.larson@pyfound.org
>

--000000000000c40c22063b117eab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello!</div><div><br></div><div>Thanks for bringing t=
he formatting issue to our attention, the prose description renders fine in=
 the Vulnogram UI. Regarding the version range, I believe that is correct. =
All Python versions (from 0 to 3.14.0) are affected by this vulnerability. =
The patches that have landed in GitHub have not yet been released. When the=
=C2=A0patches are included in a release the CVE will automatically update w=
ith the fixed versions.</div><div><br></div><div>Hope this helps!</div><div=
><br></div><div>Seth Larson</div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 29, 2025 at 12:50=E2=80=AFPM M=
ats Wichmann &lt;<a href=3D"mailto:mats@wichmann.us" target=3D"_blank">mats=
@wichmann.us</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">On 7/28/25 13:55, Alan Coopersmith forwarded a cPython security=
 issue:<br>
<br>
some unfortunate glitches here. first, a template failure:<br>
<br>
&gt; There is a HIGH severity vulnerability affecting {project}.<br>
<br>
second and third:<br>
<br>
&gt; Please see the linked CVE ID for the latest information on affected <b=
r>
&gt; versions:<br>
&gt; <br>
&gt; * <a href=3D"https://www.cve.org/CVERecord?id=3DCVE-2025-8194" rel=3D"=
noreferrer" target=3D"_blank">https://www.cve.org/CVERecord?id=3DCVE-2025-8=
194</a><br>
The CVE contents suggest nothing is broken:<br>
<br>
=C2=A0&gt; affected<br>
<br>
=C2=A0&gt;=C2=A0 =C2=A0 affected from 0 before 3.14.0<br>
<br>
(3.14 still being unreleased).=C2=A0 But patches for this were backported t=
o <br>
all supported cPython versions, so the effect must be a bit wider than that=
.<br>
<br>
<br>
And in the cve record itself, the patch suggestion comes out mangled.<br>
_______________________________________________<br>
PSRT mailing list -- <a href=3D"mailto:psrt@python.org" target=3D"_blank">p=
srt@python.org</a><br>
To unsubscribe send an email to <a href=3D"mailto:psrt-leave@python.org" ta=
rget=3D"_blank">psrt-leave@python.org</a><br>
<a href=3D"https://mail.python.org/mailman3//lists/psrt.python.org" rel=3D"=
noreferrer" target=3D"_blank">https://mail.python.org/mailman3//lists/psrt.=
python.org</a><br>
Member address: <a href=3D"mailto:seth.larson@pyfound.org" target=3D"_blank=
">seth.larson@pyfound.org</a><br>
</blockquote></div>

--000000000000c40c22063b117eab--
