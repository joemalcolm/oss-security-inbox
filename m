Received: (qmail 1236 invoked by uid 550); 4 Mar 2024 13:45:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32191 invoked from network); 4 Mar 2024 09:03:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709543211; x=1710148011; darn=lists.openwall.com;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lJpvv/3id3nFjckL4+IPgwBlfH7jUF1cK08WQKkyiLY=;
        b=OSvQoZgySOaKWPhCUqSSPm2W4ND2Hvc6/kMeBFwspPsc83FekmQIX45VhOqL/FQPVn
         RREkPWfVtvSFfSV3dIGzDaaMk6jVUrJ6NgSzHjpyXi295ImTRlSnBli+0/1D/94zM0iP
         d2p82Tt7YPYQs+xbtdaU3EDVtORvTCszDrrxbSsExbtSKG87CeJ37AFZ4IQfyoh4/GKQ
         3g0qLFUTCMKJEI3/ZWWTBl7TNMLnW5oxbfQxupOH75FdY8wOA72ioCNKB+OmPd6u2bso
         h+9ETafcYn3l+tLELiwcfCXpLzh75tQ5TQf7ppT7vRRgR8obGe+1WrzLE7LU53BSzm7w
         QP/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709543211; x=1710148011;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lJpvv/3id3nFjckL4+IPgwBlfH7jUF1cK08WQKkyiLY=;
        b=qclLkzW1GmiHndjb1ur6D8cCsPteSEEsFWrJdjXoQtp0z4l/lZtb6qVnZDQPNTL60R
         InIdNzNDhh20pAXzhewV0YhlEt8cNwCGUbVIul4+/wC2cUxpdC5tSyyeBqGhxVjadAAb
         M5hd+Vbx9mIR9MidZa1PerRm9y/fplE21u5i/Jb5tWwKrOkOdnDhgibEucyX/hdi/u3W
         /1NOVFADvH0EFFuKy5oAWBU2TWYls9lmFPUv8kmWQLFRQZNZ6bSVRvBdJlg9jkPJWQ+h
         KhiB+vJhdePqpW2b3C0kU24rpqDVKF+kakqNurs2eAmP9KSxMUz9H59yhKNP89cPYfYH
         LnWA==
X-Gm-Message-State: AOJu0Yy4Rh/IK5qLf1ROzai3LW3kYpjUsgX4ZJ5T3fstzj0isqpWm6uo
	HekmbIk324SDrj9MilLD8D6SJ32LWtHTdfyhlC9363uJE1zFBMSMSIoLHpXb
X-Google-Smtp-Source: AGHT+IEmkEqY7APjWBj0uM2VKdhOOXojBznoz71v7DTVSCVECaZmrqm9RhMAdj/IKO68BBrPl2wUeQ==
X-Received: by 2002:a05:6512:3e09:b0:513:4afa:a719 with SMTP id i9-20020a0565123e0900b005134afaa719mr746210lfv.59.1709543211237;
        Mon, 04 Mar 2024 01:06:51 -0800 (PST)
Message-ID: <d05ab8bd-fb2e-45de-9bfd-88ae2e373701@gmail.com>
Date: Mon, 4 Mar 2024 10:06:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Mariusz Felisiak <felisiak.mariusz@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Django: CVE-2024-27351: Potential regular expression
 denial-of-service in django.utils.text.Truncator.words()

https://www.djangoproject.com/weblog/2024/mar/04/security-releases/

In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the 
Django team
is issuing
`Django 5.0.3 <https://docs.djangoproject.com/en/dev/releases/5.0.3/>`_,
`Django 4.2.11 
<https://docs.djangoproject.com/en/dev/releases/4.2.11/>`_, and
`Django 3.2.25 <https://docs.djangoproject.com/en/dev/releases/3.2.25/>`_.
These releases addresses the security issue detailed below. We encourage all
users of Django to upgrade as soon as possible.

CVE-2024-27351: Potential regular expression denial-of-service in 
``django.utils.text.Truncator.words()``
=========================================================================================================

``django.utils.text.Truncator.words()`` method (with ``html=True``) and
``truncatewords_html`` template filter were subject to a potential
regular expression denial-of-service attack using a suitably crafted string
(follow up to CVE-2019-14232 and CVE-2023-43665).

Thanks Seokchan Yoon for the report.

This issue has severity "moderate" according to the Django security policy.

Affected supported versions
===========================

* Django 5.0
* Django 4.2
* Django 3.2

Resolution
==========

Patches to resolve the issue have been applied to the 5.0, 4.2, and 3.2
release branches. The patches may be obtained from the following changesets:

* On the `5.0 release branch 
<https://github.com/django/django/commit/3394fc6132436eca89e997083bae9985fb7e761e>`__
* On the `4.2 release branch 
<https://github.com/django/django/commit/3c9a2771cc80821e041b16eb36c1c37af5349d4a>`__
* On the `3.2 release branch 
<https://github.com/django/django/commit/072963e4c4d0b3a7a8c5412bc0c7d27d1a9c3521>`__

The following releases have been issued:

* Django 5.0.3 (`download Django 5.0.3 
<https://www.djangoproject.com/m/releases/5.0/Django-5.0.3.tar.gz>`_ | 
`5.0.3 checksums 
<https://www.djangoproject.com/m/pgp/Django-5.0.3.checksum.txt>`_)
* Django 4.2.11 (`download Django 4.2.11 
<https://www.djangoproject.com/m/releases/4.2/Django-4.2.11.tar.gz>`_ | 
`4.2.11 checksums 
<https://www.djangoproject.com/m/pgp/Django-4.2.11.checksum.txt>`_)
* Django 3.2.25 (`download Django 3.2.25 
<https://www.djangoproject.com/m/releases/3.2/Django-3.2.25.tar.gz>`_ | 
`3.2.25 checksums 
<https://www.djangoproject.com/m/pgp/Django-3.2.25.checksum.txt>`_)

The PGP key ID used for this release is Mariusz Felisiak: 
`2EF56372BA48CD1B <https://github.com/felixxm.gpg>`_.

General notes regarding security reporting
==========================================

As always, we ask that potential security issues be reported via
private email to ``security@djangoproject.com``, and not via Django's
Trac instance or the django-developers list. Please see `our security
policies <https://www.djangoproject.com/security/>`_ for further
information.

