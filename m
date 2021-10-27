X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2088" "Wednesday" "27" "October" "2021" "09:02:02" "-0400" "Francis Perron" "francis.perron@shopify.com" nil "56" "Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0006" nil nil nil "10" nil nil (number mark "U       francis.perr Oct 27   56/2088  " thread-indent "\"Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0006\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0006" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18042 invoked by uid 550); 27 Oct 2021 13:10:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13682 invoked from network); 27 Oct 2021 13:02:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shopify.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=ielXzR0AZ8WIUhEGzHWqvhUkSl9QgqwzmITdaaC3nBc=;
        b=ESV1rsiip+1rzfYczj1ynELheHGhp9G0CPOAFCFSnPzqcWbb2eJrb447DPiOUGkSac
         fRi3QOYC/dAbpEaubaelWUWuc+ytqh641g6ScJLkkEDOwd5gTTbXXmhRgWZ0QsKr5irm
         mfMee4jwhSJyuas6/BKyeWq66oYSqvuFlKmvA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=ielXzR0AZ8WIUhEGzHWqvhUkSl9QgqwzmITdaaC3nBc=;
        b=IsWth7/SUWHn8BrvYWuA0QvamF0sPSzdgel2y0v6gZUEF+VX3P9PGzdIBmAlQ1aT1L
         Ar2soMULihckQ97cybqUc3A+IUl3jHq0wY4q+GOh1s86qzxpbQ+WsE6Sfay1GLK3ieW4
         6WURe2JpWJDHPF0fqz2P9K+Leet9cgJARW811qw1wE3g/ffaIltRjNkSL0ZPLJX/h5Pp
         g4VoINM+XYrovtpoY9KHxI7FO4vIayJmoIm5PpP9J2MiSW3IYGGzAtP91pyOzi7PQtlg
         syy/dXtQVNQGzpjXHSMpwzDNrtL/nQdHRSy6hbUQrPOQgwuhKcsz+524gdQzGFD2Mghr
         THQw==
X-Gm-Message-State: AOAM533+oDgHoxZB6yMckJJZL37+cdnZyhr1s2kN9zIl4KVAsSSbty6d
	bEMTv44GSnjEz7/xvA7djhcBxII+Sjgt8R+Y7asM4bb7bdf1jQ==
X-Google-Smtp-Source: ABdhPJyGffIBpxjXZWnkGEsAN/TYeyZ8CUBBmB9gpnXo4tUlc3WQOFc8VU5DeL5+JZBh0uHU9q2m745sBtg2BUHadm0=
X-Received: by 2002:a05:6214:e41:: with SMTP id o1mr11049222qvc.61.1635339732955;
 Wed, 27 Oct 2021 06:02:12 -0700 (PDT)
MIME-Version: 1.0
References: <03eb1900-5593-09ff-8814-008632c46c5c@igalia.com> <YXjQiwOj3gF/phTC@elende.valinor.li>
In-Reply-To: <YXjQiwOj3gF/phTC@elende.valinor.li>
From: Francis Perron <francis.perron@shopify.com>
Date: Wed, 27 Oct 2021 09:02:02 -0400
Message-ID: <CAJAmgfgpTF--5HsAaWrmWaoM5dHswtdNB2==gUdhSCiDYG6X+A@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Carlos Alberto Lopez Perez <clopez@igalia.com>, security@webkit.org, 
	Alberto Garcia <berto@igalia.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0006

On Wed, Oct 27, 2021 at 12:09 AM Salvatore Bonaccorso <carnil@debian.org> w=
rote:
>
> Hi,
>
> [dropping most other recipients]
>
> On Tue, Oct 26, 2021 at 08:05:36PM +0100, Carlos Alberto Lopez Perez wrot=
e:
> > ------------------------------------------------------------------------
> > WebKitGTK and WPE WebKit Security Advisory                 WSA-2021-0006
> > ------------------------------------------------------------------------
> >
> > Date reported           : October 26, 2021
> > Advisory ID             : WSA-2021-0006
> > WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2021-0006.=
html
> > WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2021-0006.=
html
> > CVE identifiers         : CVE-2021-30846, CVE-2021-30848,
> >                           CVE-2021-30849, CVE-2021-30851,
> >                           CVE-2021-30858, CVE-2021-42762.
> >
> > Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.
> [...]
> > CVE-2021-30851
> >     Versions affected: WebKitGTK and WPE WebKit before 2.34.0.
> >     Credit to Samuel Gro=C3=9F of Google Project Zero.
> >     Impact: Processing maliciously crafted web content may lead to code
> >     execution. Description: A memory corruption vulnerability was
> >     addressed with improved locking.
>
> CVE-2021-30851 seems to be REJECTED (cf.
> https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2021-30851). Is
> there a typo in the CVE id for this one or did the CVE got rejected
> later on?

BCC'ing Samuel Gro=C3=9F


Salvatore -
  I think 30851 was not issued, and it may have been a mistake here.
There was no other CVE issued as part of WSA-2021-0006 according to
the GitHub repo for the CVE program:
https://github.com/CVEProject/cvelist/search?q=3Dwsa-2021-0006

if you need a CVE for this, Samuel may be able to sort this out with
the WebKit folks, who also seem to advertise 30851 on their security
advisory site: https://webkitgtk.org/security/WSA-2021-0006.html


Have a good Wednesday,

--=20
Francis Perron
  Engineering Program Manager | Security Incident Response
