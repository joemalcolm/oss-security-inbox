X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2662" "Saturday" "4" "June" "2016" "18:40:21" "+0200" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdTTwpjgFduGLqa+eK3YtL4wVdUrN=rk5pGA+91LiB8-hw@mail.gmail.com>" "58" "[oss-security] Re: CVE request: DoS in phantomjs 2.1.1 rasterizing websites" nil nil nil "6" "2016060416:40:21" "[oss-security] Re: CVE request: DoS in phantomjs 2.1.1 rasterizing websites" (number mark "U       gustavo.grie Jun  4   58/2662  " thread-indent "\"[oss-security] Re: CVE request: DoS in phantomjs 2.1.1 rasterizing websites\"\n") "<20160602161814.9F65C42E023@smtpvbsrv1.mitre.org>" ("<CACn5sdRoP9Aek2NFS84gCQjiNA-cK0udHRZaZxsJ4mq2ivR81Q@mail.gmail.com>" "<20160602161814.9F65C42E023@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16027 invoked by uid 550); 4 Jun 2016 16:40:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16008 invoked from network); 4 Jun 2016 16:40:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=52aqBl6GayMqU8I0TY1I88kqnPJawyRPtZ3D7iIYO8A=;
        b=ml2TUMIRh+fG/Ie+m4So4CVVFkJcBO7p1ApJaTgdDo8XDOHfl3ch8FSXNRnRonurEK
         NowMvHTLPmQUR/32hb1IDYiNXRR4DFlZCeiKo4shCz7ykxNUtG62M2BWRgS2HNjIhqf8
         YG41X7ySjOnu8bNrmcnd8ZoNHnTh/QMLS438VQ7FKtbBlZBg3zrN+zwbErI9BHCGWFbT
         7U37WvsChpMG9QnBnYaLVtvDDBP5fRuL8DY6obBzrEM8E12/sFqfMvzDUp59/BvpIJqT
         Coz95XVGS1TDy5k9/PIvbo6wyjNGVL9aeuOrguxJEKZavFoF1Unbt1pFMwqd0z1DPSOz
         JSNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=52aqBl6GayMqU8I0TY1I88kqnPJawyRPtZ3D7iIYO8A=;
        b=WDlt2kQrbkONZk3VjHqZfolwS+tYuaDsn8Y1VWGo4wjwECD8UCOEoocDKJWcNrVcTj
         hLniCqsm7EpPsDZFtSiKpv8/kDWPpXQ/TfhJu5QmQgg+gU9VQ9OZ9Bj+09zxDq95Oxzu
         nEXd4Uh9XUXuzUhkiMS6gB+az4HkrpmarZ1USycRYHRiyCqGpZi43X32+ZQ4fd9mnkqQ
         h3EBYh7AHOCfpIFtcwJsToTEsleL60Ge4ndm1xiclByA0l3Ppoqy+PyJSzI1w1D6ev4L
         pDpCMK5TOienTDyaHtHh6SuFBSpsVM3k/lVxkIVF1Pu6Epj+aka2NCkotOXobfG0d8a5
         XaMA==
X-Gm-Message-State: ALyK8tJT5ujhN4zylQqBwPJkerFa1eDJwwp7p1Jx4hM6+BTKNGRbC5hnHLuix6LhZCq0qdcNd9pau0QKe9ktGQ==
X-Received: by 10.36.71.8 with SMTP id t8mr7064913itb.47.1465058421837; Sat,
 04 Jun 2016 09:40:21 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160602161814.9F65C42E023@smtpvbsrv1.mitre.org>
References: <CACn5sdRoP9Aek2NFS84gCQjiNA-cK0udHRZaZxsJ4mq2ivR81Q@mail.gmail.com>
 <20160602161814.9F65C42E023@smtpvbsrv1.mitre.org>
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Date: Sat, 4 Jun 2016 18:40:21 +0200
Message-ID: <CACn5sdTTwpjgFduGLqa+eK3YtL4wVdUrN=rk5pGA+91LiB8-hw@mail.gmail.com>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] Re: CVE request: DoS in phantomjs 2.1.1 rasterizing websites

2016-06-02 18:18 GMT+02:00  <cve-assign@mitre.org>:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
>> A denegation of service vulnerability was found in phantomjs when it
>> is processing a particular svg file. This crash caused by a null
>> pointer dereference can be easily used by a malicious website to
>> avoid rasterizing when it is crawled using phantomjs 2.1.1. Previous
>> versions like 1.9.x are not affected. A reproducer is available here:
>>
>> https://github.com/ariya/phantomjs/issues/14244
>
> Please provide more information about the threat model. Do you mean
> that a single PhantomJS process is commonly used to access a series of
> independently operated web sites, and the operator of any one web site
> could disrupt this use case by placing the crafted SVG file on their
> site? Or, do you mean that the only known impact is that one web-site
> operator could prevent PhantomJS access (e.g., screenshotting) of
> their own web site by using the crafted SVG file -- in other words,
> the crash would not realistically disrupt any use of PhantomJS by the
> same client to access other web sites?

For sure, a malicious website can use it to avoid screenshoting and
other automatic operations just including such image.

>
> Is ongoing use of PhantomJS disrupted only in the
> http://phantomjs.org/api/webserver/ case? In other words, any one
> web-site operator could crash the web server within PhantomJS, and
> there would be an outage until the web server within PhantomJS is
> manually restarted?

I'm not sure about this. I was hopping someone from oss-security can
comment on this.

>
> - --
> CVE Assignment Team
> M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
> [ A PGP key is available for encrypted communications at
>   http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1
>
> iQIcBAEBCAAGBQJXUFvYAAoJEHb/MwWLVhi2qSAP/ieu7bSO3I9bPOqkc5+5YkI3
> /rjZASGY/nV5BCoDv0F7uv3AAKQYd+EzKoa9Nu6soOo2LCnhE4TdFL9VhdJQcSLk
> UwGcx+Iqk/s44igsWML2GnTOsSldxzLHKP9a1IDYj+lU+kZ07yYXytUlx1bbKJNZ
> w2nzT2+sn4V0pHkRMx0a8YkugzTJzD2MGkYxDsLUh0aTDvbA/U53S20obYe7wJjq
> xwinllQRW8cE/Rf0yglxbJpBeV3/dsdOcKC/lnNYbvGMDYWe3t8DIpqVdDXM7nlg
> NfqfDU7pl9q31FpEmxnSzTi7MmnWimgQbxAT/Jpi59sGIx0+XE9KqNdwPpj4YQYT
> FCUujyJBNNdU0+yLHi5NHb6fsT65Wq3AaTK/10220siLAfFfNU11bT/nIUv572Aa
> j81M04BwotyzuQE76MRrXZKswncHyYJZPY5LCvr4KfBntwBfxwJx/xxdSPOtQA59
> mkV1gvVBbL+ANJUZOPuiRNTi95UCTi4z9CEfNgIONCMxtLIvCJZ65QGDGvL+kV8o
> ko8+W5/7FWR2j53AhxGYICoiXlLc/v3OVektEx5LwFxp6Mc6IFqhbsnIy6m+p8NU
> JQVoDfj1NLy+oRzh+7aysYFOUxqAMU20fQLReZNfBmvjRz9DPiYnsZcmd8igYP6K
> 4QzOCYC0rF1y6PbhjAd0
> =2USQ
> -----END PGP SIGNATURE-----
