X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2800" "Tuesday" "1" "February" "2022" "09:05:56" "+0100" "Mariusz Felisiak" "felisiak.mariusz@gmail.com" nil "76" "[oss-security] Django: CVE-2022-23833: Denial-of-service possibility in file uploads" nil nil nil "2" nil nil (number mark "U       felisiak.mar Feb  1   76/2800  " thread-indent "\"[oss-security] Django: CVE-2022-23833: Denial-of-service possibility in file uploads\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Django: CVE-2022-23833: Denial-of-service possibility in file uploads" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7209 invoked by uid 550); 1 Feb 2022 08:18:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32281 invoked from network); 1 Feb 2022 08:06:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:content-language:to:from
         :subject:content-transfer-encoding;
        bh=p4lUXvPoLVdgxhj5M0DKGCK7/tY7Vy10ai6+8KZznmA=;
        b=IhV5k5oT/Tb24MpS1TR1/j44ovZ3yyDJVOvM6OPYPf/tllE8nwKRlaG2APSkabLuZk
         62eB24ZX6ZGPfRs01A4KgiqOMnkHmn2XyPGjdOvgEkYsbt16chnck3Zti0Gk9vifSWWB
         WWKL1CUN3SRB3HX90LCP70GHXDUwQuNsqymUZbmXXgnDWwZUQC6FnyWIQ2CDqyVKGWnr
         LL68hPJkaVnPGEpKLz894N7wbskZ0gSvpe5mzbs7+gjMrFSpoJ4pG0Q82SSK8UL2a/8F
         NtHChAvNKHcGgveRMrLUCkkEDnyMjnu5wJSf6CdnkUdkxIv7L5bq5FhZkO5xDs1DCiLz
         TTFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:to:from:subject:content-transfer-encoding;
        bh=p4lUXvPoLVdgxhj5M0DKGCK7/tY7Vy10ai6+8KZznmA=;
        b=tkpELIbxLEp8iuH8nDMTCotiuStML1xGQiOHSJ/0bSICPImeXZ6acOqS3Cq7eg1UQG
         3OWQAkUfoKPQSL13Rcv54+yIQU3+bc0rYVXKoEIJ0LVnOGJct1lIONefnNJV73jgKpx5
         3Fag54xKpgakHRVPKxd/xZ2s5e+efEpUnyXP8+WlnySq9xaWsIVYFBlcoz2eb8Zz+ALM
         HkiEF1PeX5DdzfOjG7t5eOwvZIbofyOUA1USbdr5K9tUEj94mAfQB5pLpUiSpFe4YWAp
         JBqYxRTDWHyJAHUNXWsxxvP/vB/8VJtXdXFGwvGfJlY76zge2W/viTEB0VEQSXYSJCwB
         d1bQ==
X-Gm-Message-State: AOAM531LXFpbIGpAxHVD9wmY6KqEQrP0395Kyvewzk0hS3KaK3Q5nemQ
	uLgOxs98oNyuFK6XZmWmq6+H8UqVCAw=
X-Google-Smtp-Source: ABdhPJyvKlK7ZMYHEPgTLBuw1srhgNqFTJQKhvP/nWOieaKbnraKIiXCrT/ijp0N0o2ZzJGDceenuQ==
X-Received: by 2002:ac2:4110:: with SMTP id b16mr18813376lfi.34.1643702757457;
        Tue, 01 Feb 2022 00:05:57 -0800 (PST)
Message-ID: <d825b5d0-6e85-110a-338f-c1063647d557@gmail.com>
Date: Tue, 1 Feb 2022 09:05:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Mariusz Felisiak <felisiak.mariusz@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Django: CVE-2022-23833: Denial-of-service possibility in file uploads

https://www.djangoproject.com/weblog/2022/feb/01/security-releases/

In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the 
Django team
is issuing
`Django 4.0.2 <https://docs.djangoproject.com/en/dev/releases/4.0.2/>`_,
`Django 3.2.12 
<https://docs.djangoproject.com/en/dev/releases/3.2.12/>`_, and
`Django 2.2.27 <https://docs.djangoproject.com/en/dev/releases/2.2.27/>`_.
These release addresses the security issues detailed below. We encourage all
users of Django to upgrade as soon as possible.

CVE-2022-23833: Denial-of-service possibility in file uploads
=============================================================

Passing certain inputs to multipart forms could result in an infinite 
loop when
parsing files.

Thanks Alan Ryan for the report.

This issue has severity "medium" according to the Django security policy.

Affected supported versions
===========================

* Django main branch
* Django 4.0
* Django 3.2
* Django 2.2

Resolution
==========

Patches to resolve the issue have been applied to Django's main branch 
and to
the 4.0, 3.2, and 2.2 release branches. The patches may be obtained from the
following changesets.

* On the `main branch 
<https://github.com/django/django/commit/fc18f36c4ab94399366ca2f2007b3692559a6f23>`__
* On the `4.0 release branch 
<https://github.com/django/django/commit/f9c7d48fdd6f198a6494a9202f90242f176e4fc9>`__
* On the `3.2 release branch 
<https://github.com/django/django/commit/d16133568ef9c9b42cb7a08bdf9ff3feec2e5468>`__
* On the `2.2 release branch 
<https://github.com/django/django/commit/c477b761804984c932704554ad35f78a2e230c6a>`__

The following releases have been issued:

* Django 4.0.2 (`download Django 4.0.2 
<https://www.djangoproject.com/m/releases/4.0/Django-4.0.2.tar.gz>`_ | 
`4.0.2 checksums 
<https://www.djangoproject.com/m/pgp/Django-4.0.2.checksum.txt>`_)
* Django 3.2.12 (`download Django 3.2.12 
<https://www.djangoproject.com/m/releases/3.2/Django-3.2.12.tar.gz>`_ | 
`3.2.12 checksums 
<https://www.djangoproject.com/m/pgp/Django-3.2.12.checksum.txt>`_)
* Django 2.2.27 (`download Django 2.2.27 
<https://www.djangoproject.com/m/releases/2.2/Django-2.2.27.tar.gz>`_ | 
`2.2.27 checksums 
<https://www.djangoproject.com/m/pgp/Django-2.2.27.checksum.txt>`_)

The PGP key ID used for this release is Mariusz Felisiak: 
`2EF56372BA48CD1B <https://github.com/felixxm.gpg>`_.

General notes regarding security reporting
==========================================

As always, we ask that potential security issues be reported via
private email to ``security@djangoproject.com``, and not via Django's
Trac instance or the django-developers list. Please see `our security
policies <https://www.djangoproject.com/security/>`_ for further
information.

