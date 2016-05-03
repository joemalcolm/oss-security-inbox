X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/05/03/3
Message-ID: <CACn5sdSYYWs41o-5MQNr4LHjV_=MWE_H3=kfnWT8z1X3up=g-g@mail.gmail.com>
Date: Tue, 3 May 2016 15:42:27 +0200
From: Gustavo Grieco <gustavo.grieco@...il.com>
To: cve-assign@...re.org
Cc: oss-security@...ts.openwall.com
Subject: Re: CVE Request: Jansson: stack exhaustion parsing a JSON file
Content-Type: text/plain; charset=utf-8

2016-05-02 14:46 GMT+02:00 <cve-assign@...re.org>:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
> > https://github.com/akheron/jansson/issues/282
>
> > It takes a less than 100kb json file to crash the library, which is
> > bad if you are receiving untrusted inputs.
>
> >> https://github.com/akheron/jansson/blob/master/README.rst
> >> Jansson is a C library for encoding, decoding and manipulating JSON
> data.
>
> Use CVE-2016-4425.
>

It was fixed here: https://github.com/akheron/jansson/pull/284

