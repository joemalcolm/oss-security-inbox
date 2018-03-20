X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1261" "Monday" "19" "March" "2018" "21:13:56" "-0700" "Ryan Grove" "ryan@wonko.com" "<F60A9937-D034-44A8-88C5-93300ADCC012@wonko.com>" "43" "[oss-security] Re: Sanitize <= 4.6.2 HTML injection and XSS" nil nil nil "3" "2018032004:13:56" "[oss-security] Re: Sanitize <= 4.6.2 HTML injection and XSS" (number mark "U       ryan@wonko.c Mar 19   43/1261  " thread-indent "\"[oss-security] Re: Sanitize <= 4.6.2 HTML injection and XSS\"\n") "<F7427CA5-7D24-4B79-B881-19AAE8FF6305@wonko.com>" ("<F7427CA5-7D24-4B79-B881-19AAE8FF6305@wonko.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32227 invoked by uid 550); 20 Mar 2018 11:29:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18191 invoked from network); 20 Mar 2018 04:14:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wonko.com; s=wonko;
        h=from:content-transfer-encoding:mime-version:subject:date:references
         :to:in-reply-to:message-id;
        bh=h++P836t+Ub3pV/PUpzQZcTo09OfBg/Fq/emCjir5k0=;
        b=OdlA+4CnqVIFr2yM00sC/xaF3Kr/OHYJbGdlmec4kfwac1QSBixO/T+ja0nCIIx4jS
         6WkJ3LUuLiQhGYsmhmu1omtFf3rZFNohSLfNQL4h6XBcHNqGaXD9kPCScKNNvNibMziM
         g7C6AEk2Xh48kfZeM4mZKVun0GfWDcRq0Jm5I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:date:references:to:in-reply-to:message-id;
        bh=h++P836t+Ub3pV/PUpzQZcTo09OfBg/Fq/emCjir5k0=;
        b=C5ogWZnG0W85ai1wtV8oh5E60HmSGpp9aa8mStxtcyTkkMfEJbrZde5AxmwasNpDnp
         lkWmr8ZFaSGocCSR6o+whdZxBrM01vw0Gw0IVD7KLtZNitbKL28uv0cMWh8YqyVwQqbu
         aBx8hzXaa8KXCNhVg1wA51hsgKhQgjiCG4DuxPBTMRnlOrqt2O/gzabWtZXDOdElGKKk
         84+sdE3yvFBCW3F5TFfOZsKZpjEd9Ypc6QvFhbmJptd32RhuUIFTCt+UXpk64r1yaasE
         Ifg/jqX6BqlPLTekVmYIcg718NSHCiO4cJTGWXVbX/SAGCZRqia533oBfWlJ9HGZbHUB
         H+8g==
X-Gm-Message-State: AElRT7GnHqLhiqnu7GGQOEUthFU95WtxP/UOjudibQdtAiEyjEKqvg5Z
	B9Tny1+F6cwS7y1oXDzGpWe4lHjrog0=
X-Google-Smtp-Source: AG47ELs8K5Upa74XpFiY/W1WOJzm2rD1XOtjEB1JtMoXS6I06jaKW7kihoX2UbucKPDouyxQkhVqFg==
X-Received: by 2002:a17:902:8492:: with SMTP id c18-v6mr14791181plo.40.1521519238449;
        Mon, 19 Mar 2018 21:13:58 -0700 (PDT)
From: Ryan Grove <ryan@wonko.com>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.2 \(3445.5.20\))
Date: Mon, 19 Mar 2018 21:13:56 -0700
References: <F7427CA5-7D24-4B79-B881-19AAE8FF6305@wonko.com>
To: oss-security@lists.openwall.com
In-Reply-To: <F7427CA5-7D24-4B79-B881-19AAE8FF6305@wonko.com>
Message-Id: <F60A9937-D034-44A8-88C5-93300ADCC012@wonko.com>
X-Mailer: Apple Mail (2.3445.5.20)
Subject: [oss-security] Re: Sanitize <= 4.6.2 HTML injection and XSS

CVE-2018-3740 has been assigned for this issue.

- Ryan

> On Mar 19, 2018, at 7:50 PM, Ryan Grove <ryan@wonko.com> wrote:
>=20
> Sanitize is a Ruby library that removes unacceptable HTML and CSS from a =
string based on a whitelist. Versions 4.6.2 and below contain an HTML injec=
tion vulnerability that allows XSS.
>=20
> Details are included below, and can also be found at:
>=20
> https://github.com/rgrove/sanitize/issues/176=20
>=20
> =3D=3D=3D=3D
>=20
> # Sanitize XSS vulnerability
>=20
> This is a public disclosure of an HTML injection vulnerability in Sanitiz=
e that could allow XSS. I=E2=80=99d like to thank the Shopify Application S=
ecurity Team for responsibly reporting this vulnerability.
>=20
> ## Description
>=20
> A specially crafted HTML fragment can cause Sanitize to allow non-whiteli=
sted attributes to be used on a whitelisted HTML element.
>=20
> ## Affected Versions
>=20
> Sanitize < 4.6.3, but only in combination with libxml2 >=3D 2.9.2
>=20
> ## Mitigation
>=20
> Upgrade to Sanitize 4.6.3.
>=20
> ## History of this vulnerability
>=20
> - 2018-03-19: Reported by Shopify Application Security Team via email
> - 2018-03-19: Sanitize 4.6.3 released with a fix
> - 2018-03-19: Initial vulnerability report published
>=20
>=20

