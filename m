X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1532" "Tuesday" "24" "May" "2016" "14:17:48" "+0200" "Dejan Bosanac" "dejan@nighttale.net" "<CAGeh-pFfPXUX8XpUAJt5n6=qvoAr82ubN97BxE4a44o79tCudg@mail.gmail.com>" "59" "[oss-security] Re: [ANNOUNCE] CVE-2016-3088: ActiveMQ Fileserver web application vulnerabilities" nil nil nil "5" "2016052412:17:48" "[oss-security] Re: [ANNOUNCE] CVE-2016-3088: ActiveMQ Fileserver web application vulnerabilities" (number mark "U       dejan@nightt May 24   59/1532  " thread-indent "\"[oss-security] Re: [ANNOUNCE] CVE-2016-3088: ActiveMQ Fileserver web application vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31932 invoked by uid 550); 24 May 2016 12:18:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31914 invoked from network); 24 May 2016 12:18:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:date:message-id:subject:from:to:cc;
        bh=5EYYrwPBLBWSQgtIfkmd4cpCVpJpbA3JNt6urRuQTvU=;
        b=Ay9L6bgPnRRcXe0ABFZv41JW06Z5e6Ml0ZrC7rMhLXD1q2Vh0CjaOeen72X0RRTPbA
         1tENEFbpuK4weTXuOJAcjysvp+K//87Spn/eK6V8mkZ8/8GXXaxMbnlaI353u8NJc0ME
         9fxWQbSkKEnL98zjOQPoCrGB5jmVY6qOk6TaUTGqnd1oX69PMLrUtNMxIivaVH7sWVhp
         T7o4LoELwAodOZSX8HzmXcNOBDSm8VTEkJ5G0rZfXn9N716B+9RzklJb/puNGrN7HzPX
         9QUJACRnA8ev9GDl+s7xD93MP9aKwGb4WlRt/mu8/y43lPngKftNd9nSzCZGJglM/yvp
         as1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:sender:date:message-id:subject:from
         :to:cc;
        bh=5EYYrwPBLBWSQgtIfkmd4cpCVpJpbA3JNt6urRuQTvU=;
        b=K4+b8XFwxhEaKYQEzq4oBhkhKT2VfpdoOoqic2/dfHoSqoYEsYKfFJ5UBoWQPBDzA1
         JlYpEL4lb6evnaqXGsoT+i1YMCs4RVu84UUyaJ7dT94bcdoSQpwuTkZOz8XptH5mTvS8
         Yqwukeer3hmFqUEZpRi8WW+G2MT4cUI1sOCh93ZuobrXCY0LQ4k1s/bUFC1kwtp7Ygq0
         /E3fI28r8lSOW6+coY+CeYMlGFXm8mEuYOPU08qTRYzRf98/TUEEs2JzDCkpC6uk0YU1
         mdbFlj8pn5+DbLMlmi56orPl8glBKML1k2vSxpj28thYBTqS9P/N5kpO0vGa/JimpvXH
         Xrqw==
X-Gm-Message-State: ALyK8tKZfCi1R6kDwHBkh50k4fW0eUadvwgBmT6Us17Q13kbSIHceWL87c8VC4lvrRB50Xv2LCTFrM+T0fMnrw==
MIME-Version: 1.0
X-Received: by 10.176.64.198 with SMTP id i64mr2249888uad.121.1464092268402;
 Tue, 24 May 2016 05:17:48 -0700 (PDT)
Sender: chubrilo@gmail.com
Date: Tue, 24 May 2016 14:17:48 +0200
X-Google-Sender-Auth: EHkhz2Krr9nhLNP7SZAAMS8NuqA
Message-ID: <CAGeh-pFfPXUX8XpUAJt5n6=qvoAr82ubN97BxE4a44o79tCudg@mail.gmail.com>
From: Dejan Bosanac <dejan@nighttale.net>
To: "users@activemq.apache.org" <users@activemq.apache.org>
Cc: "dev@activemq.apache.org" <dev@activemq.apache.org>, 
	Apache Security Response Team <security@apache.org>, bugtraq@securityfocus.com, 
	oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=94eb2c047c5893a2570533958b9f
Subject: [oss-security] Re: [ANNOUNCE] CVE-2016-3088: ActiveMQ Fileserver web application vulnerabilities

--94eb2c047c5893a2570533958b9f
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Tim,

it=E2=80=99s an omission. The feature will be completely removed with 5.14.=
0 and
it=E2=80=99s been disabled by default since 5.12.0, so 5.13.x broker that h=
aven=E2=80=99t
this feature turn on explicitly are not vulnerable.

I=E2=80=99ll fix the announcement now to say 5.13.x so it=E2=80=99s future =
proof in case of
new 5.13 branch releases

Regards
--
Dejan Bosanac
about.me/dejanb

On Tue, May 24, 2016 at 2:09 PM, Tim Bain <tbain@alumni.duke.edu> wrote:

> Does the range of versions specified mean that the issue is already
> addressed in 5.13.3, or was its omission from the range an oversight?
>
> Tim
> On May 24, 2016 2:41 AM, "Dejan Bosanac" <dejan@nighttale.net> wrote:
>
> > There's a security vulnerability reported against Apache
> > ActiveMQ 5.13.2 and older versions.
> >
> > Please check the following document and see if you=E2=80=99re affected =
by the
> > issue.
> >
> >
> >
> http://activemq.apache.org/security-advisories.data/CVE-2016-3088-announc=
ement.txt
> >
> > Vulnerability is similar to the one reported in CVE-2015-1830 (
> >
> >
> http://activemq.apache.org/security-advisories.data/CVE-2015-1830-announc=
ement.txt
> > ).
> > The fileserver web application will be removed in 5.14.0 release and
> users
> > are advised not to use it and disable it in older versions.
> >
> > Regards
> > --
> > Dejan Bosanac
> > about.me/dejanb
> >
>

--94eb2c047c5893a2570533958b9f--
