X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/09/16/4
Message-ID: <CAH5JyZrCbbV0OgZ9A_+3GqiR6YkUX5SYV5oR35N_xEfa4_W0cg@mail.gmail.com>
Date: Wed, 16 Sep 2020 15:09:39 +0100
From: Kaxil Naik <kaxilnaik@...il.com>
To: oss-security@...ts.openwall.com
Cc: dev@...flow.apache.org
Subject: Re: [CVE-2020-13944] Apache Airflow Reflected XSS via Origin Parameter <= 1.10.12
Content-Type: text/plain; charset=utf-8

Correction the issue only affects < 1.10.12 (not <= 1.10.12)

On Wed, Sep 16, 2020, 12:27 Kaxil Naik <kaxilnaik@...il.com> wrote:

> Versions Affected: <= 1.10.12
> Description:
> The "origin" parameter passed to some of the endpoints like '/trigger' was
> vulnerable to XSS exploit.
>
> Credit:
> The issue was independently discovered and reported by Ali Al-Habsi of
> Accellion & Everardo Padilla Saca.
>
> Thanks,
> Kaxil,
> on behalf of Apache Airflow PMC
>

