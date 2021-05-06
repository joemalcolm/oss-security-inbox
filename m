X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3319" "Thursday" "6" "May" "2021" "09:50:26" "+0200" "Mariusz Felisiak" "felisiak.mariusz@gmail.com" nil "86" "[oss-security] Django: CVE-2021-32052: Header injection possibility since URLValidator accepted newlines in input on Python 3.9.5+" nil nil nil "5" nil nil (number mark "U       felisiak.mar May  6   86/3319  " thread-indent "\"[oss-security] Django: CVE-2021-32052: Header injection possibility since URLValidator accepted newlines in input on Python 3.9.5+\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Django: CVE-2021-32052: Header injection possibility since URLValidator accepted newlines in input on Python 3.9.5+" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30277 invoked by uid 550); 6 May 2021 08:04:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25958 invoked from network); 6 May 2021 07:50:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding:content-language;
        bh=JrTGy6tbnR4FSCgI7KbOi0413l4dgvLuKScBXspVlpQ=;
        b=ZnwNpi7clmrYyTJ9CFuHWzdqzgxJh9kGAFWE6mhUI2cxQ/LXphD0+E4FjdMjh8LZhG
         hITbENAPyhFppc5gozDbJgI1k05paTSzc9EtzYJ5aRbyEaSelxRyERoxRMp8ytpO3bvl
         CtMebqq5GDAdVNJrXSEOl9gxHICmvRKyVEi1C8iKJervST69WHCktPmSXjz6Qwc3UJEP
         EBTdNoRF7YBJ6GS/H6jXgExUQ4XkoloT/tHdqN4O9WVxmdNnAxNkcjDfc7dZhekeb+IL
         pMbquMESJN1g+JSMyvLn6Mck3+YxfVkCwv8eiL5ARMGLqlTWaSYcM4EDe5WcwAT896ir
         BcAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-transfer-encoding:content-language;
        bh=JrTGy6tbnR4FSCgI7KbOi0413l4dgvLuKScBXspVlpQ=;
        b=i8IHa9VrEE7qChzx+izn4Pn7ULVLuYsTQjmpt7TMk0NnUDQBSZ3xKT4wYllWyUOzBi
         UL2uYdMCrysfTEMaN94HpbTN2NUUxyoKhvqAigNNYhgLXNAc7VRs0lV0sXVAP7C+BfeK
         FVz0r6AIBxsrx5GOxtS+kRcwlZGK/VduLhq/y/PMFd+3p8xBk7tl5BjuA42vgdbx2ImD
         xIo8mMTK+j4YAqBzbmwR/BsIK0Qf0KSkxHpmz3awmibYEZ9U47ki2cCT4OeHiAhqjnB7
         +vf6+4bo3TZZrdgyj9Jwz04cErV8soZSc6yq53DyAZXi13NJhai02uXd+2kvdg8u2ql3
         RVVQ==
X-Gm-Message-State: AOAM531Y0/X7eeUINUn76m1OukqxmB5Lw84/RFyeXRnVvAk93ccUbbFs
	5F029HKlsOxBEy9G/d+Kimg0JLaa2mA=
X-Google-Smtp-Source: ABdhPJwmVJmFTtYZ4m8HtKClwM5+2jNghaXu1qB4+9kcRO5IiGh27QKVc+B/gaVf4rkbkNpJA6X/tg==
X-Received: by 2002:a05:651c:33a:: with SMTP id b26mr2344354ljp.220.1620287427511;
        Thu, 06 May 2021 00:50:27 -0700 (PDT)
To: oss-security@lists.openwall.com
From: Mariusz Felisiak <felisiak.mariusz@gmail.com>
Message-ID: <30ef71a2-8d53-f39d-1ba0-3faa6939d136@gmail.com>
Date: Thu, 6 May 2021 09:50:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Subject: [oss-security] Django: CVE-2021-32052: Header injection possibility since
 URLValidator accepted newlines in input on Python 3.9.5+

https://www.djangoproject.com/weblog/2021/may/06/security-releases/

In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the 
Django team
is issuing
`Django 3.2.2 <https://docs.djangoproject.com/en/dev/releases/3.2.2/>`_,
`Django 3.1.10 
<https://docs.djangoproject.com/en/dev/releases/3.1.10/>`_, and
`Django 2.2.22 <https://docs.djangoproject.com/en/dev/releases/2.2.22/>`_.
These releases address the security issue with severity "moderate" 
detailed below. We encourage all users of Django to upgrade as soon as 
possible.

CVE-2021-32052: Header injection possibility since ``URLValidator`` 
accepted newlines in input on Python 3.9.5+
===============================================================================================================

On Python 3.9.5+, ``URLValidator`` didn't prohibit
newlines and tabs. If you used values with newlines in HTTP response, 
you could
suffer from header injection attacks. Django itself wasn't vulnerable 
because
``HttpResponse`` prohibits newlines in HTTP headers.

Moreover, the ``URLField`` form field which uses ``URLValidator`` silently
removes newlines and tabs on Python 3.9.5+, so the possibility of newlines
entering your data only existed if you are using this validator outside 
of the
form fields.

This issue was introduced by the `bpo-43882 
<https://bugs.python.org/issue43882>`_ fix.

Affected supported versions
===========================

* Django main branch
* Django 3.2
* Django 3.1
* Django 2.2

Resolution
==========

Patches to resolve the issue have been applied to Django's main branch 
and to
the 3.2, 3.1, and 2.2 release branches. The patches may be obtained from the
following changesets:

* On the `main branch 
<https://github.com/django/django/commit/e1e81aa1c4427411e3c68facdd761229ffea6f6f>`__
* On the `3.2 release branch 
<https://github.com/django/django/commit/2d2c1d0c97832860fbd6597977e2aae17dd7e5b2>`__
* On the `3.1 release branch 
<https://github.com/django/django/commit/afb23f5929944a407e4990edef1c7806a94c9879>`__
* On the `2.2 release branch 
<https://github.com/django/django/commit/d9594c4ea57b6309d93879805302cec9ae9f23ff>`__

The following releases have been issued:

* Django 3.2.2 (`download Django 3.2.2 
<https://www.djangoproject.com/m/releases/3.2/Django-3.2.2.tar.gz>`_ | 
`3.2.2 checksums 
<https://www.djangoproject.com/m/pgp/Django-3.2.2.checksum.txt>`_)
* Django 3.1.10 (`download Django 3.1.10 
<https://www.djangoproject.com/m/releases/3.1/Django-3.1.10.tar.gz>`_ | 
`3.1.10 checksums 
<https://www.djangoproject.com/m/pgp/Django-3.1.10.checksum.txt>`_)
* Django 2.2.22 (`download Django 2.2.22 
<https://www.djangoproject.com/m/releases/2.2/Django-2.2.22.tar.gz>`_ | 
`2.2.22 checksums 
<https://www.djangoproject.com/m/pgp/Django-2.2.22.checksum.txt>`_)

The PGP key ID used for this release is Mariusz Felisiak: 
`2EF56372BA48CD1B <https://github.com/felixxm.gpg>`_.

General notes regarding security reporting
==========================================

As always, we ask that potential security issues be reported via
private email to ``security@djangoproject.com``, and not via Django's
Trac instance or the django-developers list. Please see `our security
policies <https://www.djangoproject.com/security/>`_ for further
information.

