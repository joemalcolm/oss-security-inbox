Received: (qmail 17907 invoked by uid 550); 4 Jul 2022 10:04:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30370 invoked from network); 4 Jul 2022 08:13:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:content-language:to:from
         :subject:content-transfer-encoding;
        bh=yblLWs5l8Ze1vVdhRTaqBhtV/KomDJ9B9J2cSDHqm3c=;
        b=CMHyEdEx5Y6NJgzZLqRRqQTolFCHSzD0idStrctA0z+1FrEf7EyrKPhTSeCZcjwrnt
         iaoQe/xhJLoPX03l0eVK6yifVAcvqJz3R9G5K31VPkxOx1daiBP5M4eKJFxCP110+/FT
         kHIbTxTtFJ55/8pIKmmyYZaMbaTguH8e02NZzpkKGWLMnJNahubvpVHSHKhlLjupQOtM
         GR4qF1P0BmS0LtAIHAyIfF6f4CToEIgrNx0V1z8WEZiXl/G3/JnGAwy3Qf7FynGWWD9q
         fIEQzG1/9kgtXSpaeoAjCxVOjyeOjdY4rItAoqX7zsoPZMVBcFZBhqDMK0BjZSLXCFVF
         MklA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:to:from:subject:content-transfer-encoding;
        bh=yblLWs5l8Ze1vVdhRTaqBhtV/KomDJ9B9J2cSDHqm3c=;
        b=5ctk+/Ds5wCZXdTiNEacUb1wz4BS9y1o1LMsTmxUWsGT3H4KeWRzkuG9xZsczfG6Ak
         DoAiM5jSjQbbK0G+jKZ4WCQfZvm02kq+TNudN83k41SgiKRhUDrtbTHavUeli9Hyh2DK
         9HQjXIjwbByhnWYmgcd6RapXf8yV2XASmZwI6V3aZBTYLfXP1nBd2ElBVAllm7Tyyl6r
         2euA9M8ekueibpQJWml9z+StU9pByTKJbZtcr4BB4FC784xxEsbqON4h9XQyEqOwRVcm
         H7+9f1CdT3dGpQpbvx5fJubK18FWjBXi0ZwmmIe17psS3n+hf10giF13IjJq/1/EYrhC
         D02w==
X-Gm-Message-State: AJIora/D+B8KWu1sgUDVS/srrZ977Iis2Yb/FPAuEd0E123NMNmMTPQz
	zETSI7aHKkErGfgxSIRVZ9vUi/ySRjo=
X-Google-Smtp-Source: AGRyM1ucptJ5nrTXkbevz7ybZ/tMeFtT2V5yYCIOphnFPXQcBm13rdgWWn5W+xvHp3VK/k/cbOkCIA==
X-Received: by 2002:a2e:1453:0:b0:25a:725a:db92 with SMTP id 19-20020a2e1453000000b0025a725adb92mr16338235lju.483.1656922414471;
        Mon, 04 Jul 2022 01:13:34 -0700 (PDT)
Message-ID: <e6d51d15-43ea-9b1a-c9a7-8b6a2589c851@gmail.com>
Date: Mon, 4 Jul 2022 10:13:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Mariusz Felisiak <felisiak.mariusz@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Django: CVE-2022-34265: Potential SQL injection via Trunc(kind) and
 Extract(lookup_name) arguments.

https://www.djangoproject.com/weblog/2022/jul/04/security-releases/

In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the 
Django team
is issuing
`Django 4.0.6 <https://docs.djangoproject.com/en/dev/releases/4.0.6/>`_ and
`Django 3.2.14 <https://docs.djangoproject.com/en/dev/releases/3.2.14/>`_.
These release addresses the security issue detailed below. We encourage all
users of Django to upgrade as soon as possible.

CVE-2022-34265: Potential SQL injection via ``Trunc(kind)`` and 
``Extract(lookup_name)`` arguments
==================================================================================================

``Trunc()`` and ``Extract()`` database functions were
subject to SQL injection if untrusted data was used as a
``kind``/``lookup_name`` value.

Applications that constrain the lookup name and kind choice to a known safe
list are unaffected.

This security release mitigates the issue, but we have identified 
improvements
to the Database API methods related to date extract and truncate that 
would be
beneficial to add to Django 4.1 before it's final release. This will 
impact 3rd
party database backends using Django 4.1 release candidate 1 or newer, 
until they
are able to update to the API changes. We apologize for the inconvenience.

Thanks Takuto Yoshikai (Aeye Security Lab) for the report.

This issue has severity "high" according to the Django security policy.

Affected supported versions
===========================

* Django main branch
* Django 4.1 (currently at beta status)
* Django 4.0
* Django 3.2

Resolution
==========

Patches to resolve the issue have been applied to Django's main branch 
and to
the 4.1, 4.0, and 3.2 release branches. The patches may be obtained from the
following changesets:

* On the `main branch 
<https://github.com/django/django/commit/54eb8a374d5d98594b264e8ec22337819b37443c>`__
* On the `4.1 release branch 
<https://github.com/django/django/commit/284b188a4194e8fa5d72a73b09a869d7dd9f0dc5>`__
* On the `4.0 release branch 
<https://github.com/django/django/commit/0dc9c016fadb71a067e5a42be30164e3f96c0492>`__
* On the `3.2 release branch 
<https://github.com/django/django/commit/a9010fe5555e6086a9d9ae50069579400ef0685e>`__

The following releases have been issued:

* Django 4.0.6 (`download Django 4.0.6 
<https://www.djangoproject.com/m/releases/4.0/Django-4.0.6.tar.gz>`_ | 
`4.0.6 checksums 
<https://www.djangoproject.com/m/pgp/Django-4.0.6.checksum.txt>`_)
* Django 3.2.14 (`download Django 3.2.14 
<https://www.djangoproject.com/m/releases/3.2/Django-3.2.14.tar.gz>`_ | 
`3.2.14 checksums 
<https://www.djangoproject.com/m/pgp/Django-3.2.14.checksum.txt>`_)

The PGP key ID used for this release is Mariusz Felisiak: 
`2EF56372BA48CD1B <https://github.com/felixxm.gpg>`_.

General notes regarding security reporting
==========================================

As always, we ask that potential security issues be reported via
private email to ``security@djangoproject.com``, and not via Django's
Trac instance or the django-developers list. Please see `our security
policies <https://www.djangoproject.com/security/>`_ for further
information.

