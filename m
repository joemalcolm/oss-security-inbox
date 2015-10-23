X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1350" "Friday" "23" "October" "2015" "09:00:29" "-0400" "Robert Watson" "robertcwatson1@gmail.com" "<CAOfWR+HjmAHz8oL3r5JyEa+d8wNHy7q6warHAKeRomZ_+CNdNg@mail.gmail.com>" "44" "Re: [oss-security] CVE Request: BusyBox tar directory traversal" nil nil nil "10" "2015102313:00:29" "[oss-security] CVE Request: BusyBox tar directory traversal" (number mark "        robertcwatso Oct 23   44/1350  " thread-indent "\"Re: [oss-security] CVE Request: BusyBox tar directory traversal\"\n") "<1445603081.14394.5.camel@debian.org>" ("<20151021153633.GA2430@boyd>" "<CAOfWR+FbqxJL-PPAnOPoJ4i3eCBjZv87uhpqtnOha1MCE4orbQ@mail.gmail.com>" "<13512806.1ZGcyoO27t@sarpedon>" "<CAOfWR+H7YdPbx2N33=U_35f0uK2irjP2XtfjaUdCYuEwQLx1XA@mail.gmail.com>" "<1445603081.14394.5.camel@debian.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31820 invoked by uid 550); 23 Oct 2015 13:00:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31802 invoked from network); 23 Oct 2015 13:00:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=MmOWKg5Jjm/RCXs6WuBrFVvP6eEYmv1UjcprsZExW0k=;
        b=s5NHw4NFTiRcojOrVr41+gD+CGdjqsepLnXNylwRKMHJkdxpt/61ytYYKER2NMx9Pl
         anqvPwVEYtgT2JV98H8bqb+dKZtORbSldBNM3X2BQXECkNmzO6uYNmd40tG4N5/T7ccV
         DTeTCcZXxDYJM+28F7Yv5CyVSTiwAR4NzZMO++hn4dL5g+UVkAXkkjX6FFJDjjqOQyHV
         tsh3cvsgdIO9HCt3QC24rYm2lBy87jbbKkEY6bNjyJVm63lJnTVMP38HsN33RDEkQraX
         FiIGvxbVYdN0RRO1guoOvcD5M5LCoSZrqvTtUWL/sRPV0bB3WIf6fpwGRL53Bsn2Mtx0
         fbSA==
MIME-Version: 1.0
X-Received: by 10.50.72.108 with SMTP id c12mr3875463igv.63.1445605229283;
 Fri, 23 Oct 2015 06:00:29 -0700 (PDT)
In-Reply-To: <1445603081.14394.5.camel@debian.org>
References: <20151021153633.GA2430@boyd>
	<CAOfWR+FbqxJL-PPAnOPoJ4i3eCBjZv87uhpqtnOha1MCE4orbQ@mail.gmail.com>
	<13512806.1ZGcyoO27t@sarpedon>
	<CAOfWR+H7YdPbx2N33=U_35f0uK2irjP2XtfjaUdCYuEwQLx1XA@mail.gmail.com>
	<1445603081.14394.5.camel@debian.org>
Message-ID: <CAOfWR+HjmAHz8oL3r5JyEa+d8wNHy7q6warHAKeRomZ_+CNdNg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=047d7bdc123c2d500f0522c53268
Date: Fri, 23 Oct 2015 09:00:29 -0400
From: Robert Watson <robertcwatson1@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: BusyBox tar directory traversal
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--047d7bdc123c2d500f0522c53268
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Okay. How then does one install a tar package that put most of its files
under /usr but also needs to put files under /etc to which there are
symlinks?

On Friday, October 23, 2015, Yves-Alexis Perez <corsac@debian.org> wrote:

> On ven., 2015-10-23 at 03:01 -0400, Robert Watson wrote:
> > Remember that tar was created primarily for software distribution
>
> Actually no, it was created to write archives to (magnetic) tapes.
>
> >  and
> > compressed tar files are most often used to this day for that purpose.
> > Software distribution almost always involves writing files to many
> > different directories at all levels of the filesystem. Symlinks between
> > them are quite common as well.
>
> Sure, you just don't want them to escape from CWD. There has been example
> of
> this to bypass =E2=80=9Csafe updates=E2=80=9D procedures for example.
>
> Regards,
> --
> Yves-Alexis
>
>

--=20



*Trust in truth keeps hope aliverobertcwatson1@gmail.com
<robertcwatson1@gmail.com>www.docsalvage.info
<http://www.docsalvage.info>www.CivicChorale.org
<http://www.CivicChorale.org>*
<http://www.wunderground.com/cgi-bin/findweather/getForecast?query=3DTallah=
assee,%20FL>
<https://www.healthcare.gov/>

--047d7bdc123c2d500f0522c53268--
