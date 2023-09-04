Received: (qmail 11444 invoked by uid 550); 4 Sep 2023 11:23:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26356 invoked from network); 4 Sep 2023 11:05:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693825533; x=1694430333; darn=lists.openwall.com;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K+Eeuz4oW6PbGUM7nsy6f+n6RTRhr/Yg0gM9KPI0h/Q=;
        b=m7yriS4gJZgYaZhbMQzo98ZH0yhZmFVRErzdtQZ2q5aBGp6KHntL70JW9sqr2JgysQ
         FtaPC/rWsJikPZhoBQUzPfw2ibJ82EmWvQUjd5oLxJ0f7UcL9WkVgljI3VSFU7PrRXkD
         apZ+dNQdP17KQ7TjSS0UelZ3WTtvDCK4ZfbYrzC46XVRbKDzRXCckxGhjxc5+510BEWo
         qEiiHWBR/qi7chZqDtJ4ARCIHkrAMnJV4HyZX5MekkYa50oQJDwHSr7jg7pxsD76I400
         KAxZhO/PTIE9COsTnPd7OEDqQ9WIJ6GMKpZY1I6p4PHIaEF2VlruNl+kM7B9kggBC5AW
         /ZOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693825533; x=1694430333;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=K+Eeuz4oW6PbGUM7nsy6f+n6RTRhr/Yg0gM9KPI0h/Q=;
        b=JAiXF8zfsuJii8nKqADwGgos562qT3DIS20oGjO5AB/TObE97Fx5GPvvifaNn2uVbe
         CYNekCkO9jX6z9M+h7zzIfgNLeqztUa6KQFG8UOp0pz8l5iFcMDTTc1rdRgPIBii+Aqf
         Uh4udXQF2w8Hos6wPJMiSpQ2ehdKLq9LO80vDh3HxYJq8/pVp+/F0os5v+lyjl6M/8JI
         H6zAYsmoT5kYxZZyF/DRGwSF9Lsdkh8RQy/X+n0MgPrwgHmoUQRO+qAuFnSC9x8hRkye
         x7XrXO5srDpvkFlhhBXjqWQtxnY41vfxD6EBHbSNWL4rF9d4OKHMUdtSULkvWdv/hX4C
         kzXw==
X-Gm-Message-State: AOJu0YyNzW7lH790B8MmxdWDdaMpZ8ayTdUq6QrWMI0CGJlxEkX/hPhu
	ePB4dTiXFIWGdn94UGwq14oQQMhaT5A=
X-Google-Smtp-Source: AGHT+IFpOHYepWS5/Z+hDFraSj8+6p7W1HIBOb+fdTbO81KjLqXJQ0ALIRCCg0tfNjp6JKhbL6RLYg==
X-Received: by 2002:a19:5055:0:b0:500:b286:3cf4 with SMTP id z21-20020a195055000000b00500b2863cf4mr5731222lfj.2.1693825532659;
        Mon, 04 Sep 2023 04:05:32 -0700 (PDT)
Message-ID: <890273bb-7f8c-fce1-d13d-6cffb10f3df7@gmail.com>
Date: Mon, 4 Sep 2023 13:05:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Mariusz Felisiak <felisiak.mariusz@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Django: CVE-2023-41164: Potential denial of service vulnerability in
 django.utils.encoding.uri_to_iri()

https://www.djangoproject.com/weblog/2023/sep/04/security-releases/

In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the 
Django team
is issuing
`Django 4.2.5 <https://docs.djangoproject.com/en/dev/releases/4.2.5/>`_,
`Django 4.1.11 
<https://docs.djangoproject.com/en/dev/releases/4.1.11/>`_, and
`Django 3.2.21 <https://docs.djangoproject.com/en/dev/releases/3.2.21/>`_.
These releases addresses the security issue detailed below. We encourage all
users of Django to upgrade as soon as possible.

CVE-2023-41164: Potential denial of service vulnerability in 
``django.utils.encoding.uri_to_iri()``
===================================================================================================

``django.utils.encoding.uri_to_iri()`` was subject to potential denial 
of service attack via certain inputs with a very large number of Unicode 
characters.

Thanks `MProgrammer <https://hackerone.com/mprogrammer>`_ for the report.

This issue has severity "moderate" according to the Django security policy.

Affected supported versions
===========================

* Django main branch
* Django 4.2
* Django 4.1
* Django 3.2

Resolution
==========

Patches to resolve the issue have been applied to Django's main branch 
and the
4.2, 4.1, and 3.2 release branches. The patches may be obtained from the
following changesets:

* On the `main branch 
<https://github.com/django/django/commit/3f41d6d62929dfe53eda8109b3b836f26645bdce>`__
* On the `4.2 release branch 
<https://github.com/django/django/commit/9c51b4dcfa0cefcb48231f4d71cafa80821f87b9>`__
* On the `4.1 release branch 
<https://github.com/django/django/commit/ba00bc5ec6a7eff5e08be438f7b5b0e9574e8ff0>`__
* On the `3.2 release branch 
<https://github.com/django/django/commit/6f030b1149bd8fa4ba90452e77cb3edc095ce54e>`__

The following releases have been issued:

* Django 4.2.5 (`download Django 4.2.5 
<https://www.djangoproject.com/m/releases/4.2/Django-4.2.5.tar.gz>`_ | 
`4.2.5 checksums 
<https://www.djangoproject.com/m/pgp/Django-4.2.5.checksum.txt>`_)
* Django 4.1.11 (`download Django 4.1.11 
<https://www.djangoproject.com/m/releases/4.1/Django-4.1.11.tar.gz>`_ | 
`4.1.11 checksums 
<https://www.djangoproject.com/m/pgp/Django-4.1.11.checksum.txt>`_)
* Django 3.2.21 (`download Django 3.2.21 
<https://www.djangoproject.com/m/releases/3.2/Django-3.2.21.tar.gz>`_ | 
`3.2.21 checksums 
<https://www.djangoproject.com/m/pgp/Django-3.2.21.checksum.txt>`_)

The PGP key ID used for this release is Mariusz Felisiak: 
`2EF56372BA48CD1B <https://github.com/felixxm.gpg>`_.

General notes regarding security reporting
==========================================

As always, we ask that potential security issues be reported via
private email to ``security@djangoproject.com``, and not via Django's
Trac instance or the django-developers list. Please see `our security
policies <https://www.djangoproject.com/security/>`_ for further
information.

