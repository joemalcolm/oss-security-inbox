Received: (qmail 16202 invoked by uid 550); 11 Apr 2022 10:51:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15684 invoked from network); 11 Apr 2022 08:04:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:content-language:to:from
         :subject:content-transfer-encoding;
        bh=brC2sUKoZCBHDehqzZO+MqF9TiFsbv6vUTLZbzj01jQ=;
        b=ddpEjo8OYyctzs4dtcO+9CPVfpCRK7XttlbagZSM7AFeYcDyqUYWAN0Piu6RbGoyhd
         WNArfxz1Ozurt2WWNrrmAIX/ENxNJFEvzjTGioa90hgOC2ABNIPNau9oZZnvoRiXDVAA
         RZcTVGmZNeCXnduxGAQlDvdHhnIEJpSXkIt/DJLDW7VP8pl33GfjwjgQvGw3wXRFAYrU
         K/3EuLjMpdWVQoHGjuYngYQMjBrwr6HaYtyRvsELGu8y3/vphfO7I9m7dXr5+PigG8zZ
         QcDyaW2pmLr4yN+giE0cWv4aGGXLLCm24l+ZxdJZJpsOiOgyNRiDGD28SfxHpMKb3ee/
         Vn7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:to:from:subject:content-transfer-encoding;
        bh=brC2sUKoZCBHDehqzZO+MqF9TiFsbv6vUTLZbzj01jQ=;
        b=bOUe4MpVyKqpIa5qzwE3xgJINcGm7VDcq3QZhXWSR3G71uRUKseTh791LAl+J/Mt1w
         G4pY4JsLkdNZwADgBdg8LKeOHLSuwFhfvEt/kmWJ0SZ+IDPXbGg4izGMoHjszyExBmzk
         g6MC2zi6yzPWxQQifAO4L349MCvs9gbYh4zrKlnTWg69DK023vQoAwq23HGBMNLIowAj
         fyhasA5MRU9O45ud3+DvOdqz6sTTE+GWVI8zonqkYBTzmw6zF8R0GZBUOHe16zMdilTB
         u9qZNmcf1AfsrDg7Nj3U1oYOHz7/hdqb1kImNCnIgJzIoZG4XJjOsxBD+E/INXM5WSR+
         n84A==
X-Gm-Message-State: AOAM533NME/4LLY0ZaAf7IgKXhgN96OXFM7/U4ezdpgy5ukHMla5vZu5
	QZB7GjLvo6OeWxKvdwO4C6XbAR+zeUo=
X-Google-Smtp-Source: ABdhPJwtdtagEcrXX4fzjRsxBVbmj6Nx6t8ufSnSjy0tB5RJeEbRsPTnz2lmakC6h/iYZ9dtfssGdw==
X-Received: by 2002:a2e:860e:0:b0:24b:68ff:6284 with SMTP id a14-20020a2e860e000000b0024b68ff6284mr356290lji.198.1649664265172;
        Mon, 11 Apr 2022 01:04:25 -0700 (PDT)
Message-ID: <011d90a3-078b-ca82-0eee-d7ae3f5b8e13@gmail.com>
Date: Mon, 11 Apr 2022 10:04:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Mariusz Felisiak <felisiak.mariusz@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Django: CVE-2022-28347: Potential SQL injection via
 QuerySet.explain(**options) on PostgreSQL

https://www.djangoproject.com/weblog/2022/apr/11/security-releases/

In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the 
Django team
is issuing
`Django 4.0.4 <https://docs.djangoproject.com/en/dev/releases/4.0.4/>`_,
`Django 3.2.13 
<https://docs.djangoproject.com/en/dev/releases/3.2.13/>`_, and
`Django 2.2.28 <https://docs.djangoproject.com/en/dev/releases/2.2.28/>`_.
These release addresses the security issues detailed below. We encourage all
users of Django to upgrade as soon as possible.

CVE-2022-28347: Potential SQL injection via 
``QuerySet.explain(**options)`` on PostgreSQL
=========================================================================================

``QuerySet.explain()`` method was subject to SQL injection in option 
names, using a suitably crafted dictionary, with dictionary expansion, 
as the ``**options`` argument.

This issue has severity "high" according to the Django security policy.

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
<https://github.com/django/django/commit/6723a26e59b0b5429a0c5873941e01a2e1bdbb81>`__
* On the `4.0 release branch 
<https://github.com/django/django/commit/00b0fc50e1738c7174c495464a5ef069408a4402>`__
* On the `3.2 release branch 
<https://github.com/django/django/commit/9e19accb6e0a00ba77d5a95a91675bf18877c72d>`__
* On the `2.2 release branch 
<https://github.com/django/django/commit/29a6c98b4c13af82064f993f0acc6e8fafa4d3f5>`__

The following releases have been issued:

* Django 4.0.4 (`download Django 4.0.4 
<https://www.djangoproject.com/m/releases/4.0/Django-4.0.4.tar.gz>`_ | 
`4.0.4 checksums 
<https://www.djangoproject.com/m/pgp/Django-4.0.4.checksum.txt>`_)
* Django 3.2.13 (`download Django 3.2.13 
<https://www.djangoproject.com/m/releases/3.2/Django-3.2.13.tar.gz>`_ | 
`3.2.13 checksums 
<https://www.djangoproject.com/m/pgp/Django-3.2.13.checksum.txt>`_)
* Django 2.2.28 (`download Django 2.2.28 
<https://www.djangoproject.com/m/releases/2.2/Django-2.2.28.tar.gz>`_ | 
`2.2.28 checksums 
<https://www.djangoproject.com/m/pgp/Django-2.2.28.checksum.txt>`_)

The PGP key ID used for this release is Mariusz Felisiak: 
`2EF56372BA48CD1B <https://github.com/felixxm.gpg>`_.

General notes regarding security reporting
==========================================

As always, we ask that potential security issues be reported via
private email to ``security@djangoproject.com``, and not via Django's
Trac instance or the django-developers list. Please see `our security
policies <https://www.djangoproject.com/security/>`_ for further
information.

