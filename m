Received: (qmail 15566 invoked by uid 550); 11 Apr 2022 10:51:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13373 invoked from network); 11 Apr 2022 08:03:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:content-language:to:from
         :subject:content-transfer-encoding;
        bh=yUXPTaD318uX5t36K8YSy2e2HDm/aTaTBAVB5QQrC6Y=;
        b=Sc1/hklEpRCzYTtaxx5m+zx+LQ0GldVIVgjwjOy72evxv6tQCcphUQ0ZIDVq5lE3ks
         5YfLJND2MKgZAb/5ascBqISLVfpvBfqVYullzRuR4bx2KlzIQ2dcvlkL8clD5G4VByRC
         P+ZQ/VMHB1lsxpi/b+s5EtNgeACvoJRf82wFuYB33jbzgw9CsVqPeo2UO20BVnQcWzd7
         rrPPz6xFb7ezf87QgS2uXOW37KnHLjCaypGKJ17QgIsVpvty0oes61ykYXVhCXK85WpA
         WZF8mReRMh5KOXH2Yvn8AgXE2sLSdPK/WHV7CGbJcHBG20VEPircy4E3SCxjLdCemXMG
         R01A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:to:from:subject:content-transfer-encoding;
        bh=yUXPTaD318uX5t36K8YSy2e2HDm/aTaTBAVB5QQrC6Y=;
        b=K48p8W06anoOv+6LEAyu7nGfKTxdIe/L/rsyTjNsT3vBX0hCZxVEFlraquviazB/t8
         kdzlGzyRmtQb1Cl4dwzyBIR1ZZ20QvwxF5sWLGQ4TFRY8O1btQNrA/XZ7Tni0sj1yYJ3
         8h/LJGR4qciUt2rGnw5cokAOxvw7KPOOXzgPqWh7Eb9o9hODgL3gTHYq5YpeEkFHf2pV
         SY16odR6tDpkjzTWkspK/bjIrePCdSn6A0gc79lDiHb2I4QwOoXMTf3K3qUREQXlfh2U
         2Sjhe5kcjyMOBc+j6qs3Vmd1UUzwi9gv5Di93r4hy24Ll7OsJixl4Lab9t3r2ceHBc4X
         x63A==
X-Gm-Message-State: AOAM530gBmEr0Y7EvNvSrrg1hxUW8a3N/04TKU0x1dCgVSj5dDhQAWrq
	/Rrc05SBxYeN8Gy2VRHgEF0DbEbUOnw=
X-Google-Smtp-Source: ABdhPJyjwzrRSagiTKaVXHSygLbsbEP/RUyxjJGxzlUTjEgSfSmCCuhWN8MGvdyGEgjkcT78MU51oA==
X-Received: by 2002:a05:6512:3f0b:b0:450:aba7:850b with SMTP id y11-20020a0565123f0b00b00450aba7850bmr20738093lfa.78.1649664178425;
        Mon, 11 Apr 2022 01:02:58 -0700 (PDT)
Message-ID: <5b1f908c-3940-bdf3-9511-e6f843b1f068@gmail.com>
Date: Mon, 11 Apr 2022 10:02:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Mariusz Felisiak <felisiak.mariusz@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Django: CVE-2022-28346: Potential SQL injection in
 ``QuerySet.annotate()``, ``aggregate()``, and ``extra()``

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

CVE-2022-28346: Potential SQL injection in ``QuerySet.annotate()``, 
``aggregate()``, and ``extra()``
====================================================================================================

``QuerySet.annotate()``, ``aggregate()``, and ``extra()`` methods were 
subject to SQL injection in column aliases, using a suitably crafted 
dictionary, with dictionary expansion, as the
``**kwargs`` passed to these methods.

Thanks Splunk team: Preston Elder, Jacob Davis, Jacob Moore, Matt 
Hanson, David Briggs, and a security researcher: Danylo Dmytriiev 
(DDV_UA) for the report.

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
<https://github.com/django/django/commit/93cae5cb2f9a4ef1514cf1a41f714fef08005200>`__
* On the `4.0 release branch 
<https://github.com/django/django/commit/800828887a0509ad1162d6d407e94d8de7eafc60>`__
* On the `3.2 release branch 
<https://github.com/django/django/commit/2044dac5c6968441be6f534c4139bcf48c5c7e48>`__
* On the `2.2 release branch 
<https://github.com/django/django/commit/2c09e68ec911919360d5f8502cefc312f9e03c5d>`__

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

