Received: (qmail 13917 invoked by uid 550); 12 Jul 2022 18:06:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9919 invoked from network); 12 Jul 2022 17:59:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=p0dQCFE+Dh6+pBzBag0cC/2An7CmycX5f58YgEqo8jQ=;
        b=B2lhzkeu9/WfglNzn+qOOmz3xx6j8r3gLpy3/CeUU6iKyHSrdG3w0GLQ7QkOb8+bNv
         QqKJYK5EWwaXBxSS5Y76WKHASQgf+El0kD5fosffabhpIfpxqftgGOTZ8wmnON3BzyLM
         EP/QekY3FmoLI/sT3gdsmBPsiFGyw27r9mNMxOz2NCthNV6z2G/b5n0PZQdLzz5rASDJ
         MUkq1IfwMCy36yF2SprNFMLmrvEACl2/RV2dh4o69/MOvhjVQ0O/mfw5+AG3xdgxcECl
         AdpCepwtuW1btsEOsjQwx/SFfmCzzOpTf//lbAQQLXfBZfuhO++fXwkpE8wbWVnwmxIX
         2ezA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=p0dQCFE+Dh6+pBzBag0cC/2An7CmycX5f58YgEqo8jQ=;
        b=rs4eMQjl28krjvMEl7M2SCYyroGbfUg1uJXpcRckFELn2rCyfAqLS5nVQ6U/4Iq9db
         1A2ulXBA08rom6ZeLoQdWZjHo7NUqO6j2dWJuWEjxSHTSJFM0KN0TlBDr//lZ2oDA55e
         YRrmAzxvcBazJIVroEiuJ/RnI2ZfHpn/9MspZy/4u3Oo8HEXRw4FTu69RnT+TfGMGnqY
         CXz+PAarMsBMZfNMGVasRRaNsGYiQuRNSoXir0BdjUpB7j0Kslg2Sm+3oGhtZbG0i6ud
         iE9WM2vDNcjiBLf5/IdZkxJKq6mgYjNgHKeiIPkoXsZoHGZOY7JaURn9E7Bg417WDluP
         xu7w==
X-Gm-Message-State: AJIora/S7cxRwZunJWbk5vRAcjxMzO92d5TQCvZUmq3c/Siikmn5MML3
	CJ1IlODQVRPCZgC67Mo+yGJ6Y7jX+CBDLRC7ct4=
X-Google-Smtp-Source: AGRyM1twq9LKiblBfaQlw65GHvexVBRYbcBtqBBkD4Y6fd/9wIHE85FZEZqPm+XGDVgymo0IGWOqdKItvG0mFmEMfUQ=
X-Received: by 2002:a05:6808:1182:b0:32d:a9d3:4e0 with SMTP id
 j2-20020a056808118200b0032da9d304e0mr2496605oil.146.1657648739874; Tue, 12
 Jul 2022 10:58:59 -0700 (PDT)
MIME-Version: 1.0
From: "Thiago H. de Paula Figueiredo" <thiagohp@gmail.com>
Date: Tue, 12 Jul 2022 14:58:47 -0300
Message-ID: <CAE_88GZRaZV=nRrOBD2_++u=LxUnX54RD8JY+ssRKWPhs8PW=g@mail.gmail.com>
To: Tapestry users <users@tapestry.apache.org>
Cc: Apache Security Team <security@apache.org>, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [CVE-2022-31781] Apache Tapestry denial of service vulnerability

Regular Expression Denial of Service (ReDoS) in ContentType.java.
(GHSL-2022-022) (CVE-2022-31781)

PRODUCT AFFECTED:

This issue affects Apache Tapestry 5.8.1.

PROBLEM:

Severity: low

Apache Tapestry up to version 5.8.1 is vulnerable to Regular
Expression Denial of Service (ReDoS) in the way it handles Content
Types. Specially crafted Content Types may cause catastrophic
backtracking, taking exponential time to complete.

Specifically, this is about the regular expression used on the
parameter of the org.apache.tapestry5.http.ContentType class.

Apache Tapestry 5.8.2 has a fix for this vulnerability.

Notice the vulnerability cannot be triggered by web requests in
Tapestry code alone. It would only happen if there's some non-Tapestry
codepath passing some outside input to the ContentType class
constructor.

This issue has been assigned CVE-2022-31781.

MODIFICATION HISTORY:

: Initial Publication.

RELATED LINKS:

CVE-2022-31781 at cve.mitre.org

ACKNOWLEDGEMENTS:

CodeQL team members [@atorralba (Tony
Torralba)](https://github.com/atorralba) and [@joefarebrother (Joseph
Farebrother)](https://github.com/joefarebrother).
