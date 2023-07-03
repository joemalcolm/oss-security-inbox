Received: (qmail 3514 invoked by uid 550); 3 Jul 2023 08:46:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5256 invoked from network); 3 Jul 2023 08:06:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688371555; x=1690963555;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bcKz9xCPYX7EoJcXnWj/ZrqmY50bOuLwy+KrvIdYaZE=;
        b=Hk/d5d9N5BBYVi5+2NEPwd+8w52mjN59jDcKk76c/XbQkNO/E2UG4WHMcRFJIvvaNA
         3th0p6c/PzmyOXz0vKPi92FV+sP5aJb71Ry+SG1ZCApGQock8jIz3Wu1sJwGn5AqaM2g
         RghE8jrvTzZ5hZJ/CYzN63JdF/6MHRCu00YftzTWpQ6uRWe388k0IUC4RDdIYN6/3hZ0
         PbaAm5PVvZnYU5eY67lhxGTMTrVYIcjRYfK06SZekg7uFmlATK+6Cf4bSux8EXb/18UM
         ihoYYKJIZwVfJxQc313yI2cAw0B8UJzvliaQVG8sELNDIOV+3ABE+EWw/PbvU/8lud9w
         QFlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688371555; x=1690963555;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bcKz9xCPYX7EoJcXnWj/ZrqmY50bOuLwy+KrvIdYaZE=;
        b=HKSdAZIRLeu6IK2yGgyjl3Ol5/XdmIMiGDhKzChSO5uSK72mIQ4canOlrTlTEDtPqS
         LMbJNb/SilOLCjkuIVHdr3MlYhl6WGnas1+b5n6oaBiJr+qwECYjF+ADSX3GyLyRoJSv
         MHOLc4gOBviDzVyFr5fAJHLp7IoEzStm84fUvhbV/qOk0ftB+Sl2xsQlKidWSlENOx/E
         xpK9F7gBk4QtabuZRiHlbrK7RisD7wTOQUTG09zLQwT7YclU3x9JE8bsxVboYtcnjngZ
         3RIWWtrUwqeWD7t+RuekBLfA5R0jVOi/jrePBoixUC1J2ns7VzFNs9GS3VN0Lkesi6i3
         pSBw==
X-Gm-Message-State: ABy/qLadjiHXbOWeGHD/RcbxrAR49oYHJ4e8dH2CLKZRL9ZF4ugoIwdg
	16KuHkD81mSdosYxqv+8cz9XT5fhw44=
X-Google-Smtp-Source: APBJJlHhCzloSE8rmNalPdpvcPHz/i7qqSjseK+F3h0UJ226RyJN/xggJWwK8seOwVilEUV6L0h0ZQ==
X-Received: by 2002:aa7:c912:0:b0:51a:216e:7df9 with SMTP id b18-20020aa7c912000000b0051a216e7df9mr6924401edt.30.1688371555406;
        Mon, 03 Jul 2023 01:05:55 -0700 (PDT)
Message-ID: <5afa0e5a-8058-469e-6ad7-587cf4e2a0cd@gmail.com>
Date: Mon, 3 Jul 2023 10:05:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Mariusz Felisiak <felisiak.mariusz@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Django: CVE-2023-36053: Potential regular expression denial of
 service vulnerability in EmailValidator/URLValidator

https://www.djangoproject.com/weblog/2023/jul/03/security-releases/

In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the 
Django team
is issuing
`Django 4.2.3 <https://docs.djangoproject.com/en/dev/releases/4.2.3/>`_,
`Django 4.1.10 
<https://docs.djangoproject.com/en/dev/releases/4.1.10/>`_, and
`Django 3.2.20 <https://docs.djangoproject.com/en/dev/releases/3.2.20/>`_.
These releases addresses the security issue detailed below. We encourage all
users of Django to upgrade as soon as possible.

CVE-2023-36053: Potential regular expression denial of service 
vulnerability in ``EmailValidator``/``URLValidator``
===================================================================================================================

``EmailValidator`` and ``URLValidator`` were subject to potential regular
expression denial of service attack via a very large number of domain name
labels of emails and URLs.

Thanks Seokchan Yoon for reports.

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
<https://github.com/django/django/commit/ad0410ec4f458aa39803e5f6b9a3736527062dcd>`__
* On the `4.2 release branch 
<https://github.com/django/django/commit/b7c5feb35a31799de6e582ad6a5a91a9de74e0f9>`__
* On the `4.1 release branch 
<https://github.com/django/django/commit/beb3f3d55940d9aa7198bf9d424ab74e873aec3d>`__
* On the `3.2 release branch 
<https://github.com/django/django/commit/454f2fb93437f98917283336201b4048293f7582>`__

The following releases have been issued:

* Django 4.2.3 (`download Django 4.2.3 
<https://www.djangoproject.com/m/releases/4.2/Django-4.2.3.tar.gz>`_ | 
`4.2.3 checksums 
<https://www.djangoproject.com/m/pgp/Django-4.2.3.checksum.txt>`_)
* Django 4.1.10 (`download Django 4.1.10 
<https://www.djangoproject.com/m/releases/4.1/Django-4.1.10.tar.gz>`_ | 
`4.1.10 checksums 
<https://www.djangoproject.com/m/pgp/Django-4.1.10.checksum.txt>`_)
* Django 3.2.20 (`download Django 3.2.20 
<https://www.djangoproject.com/m/releases/3.2/Django-3.2.20.tar.gz>`_ | 
`3.2.20 checksums 
<https://www.djangoproject.com/m/pgp/Django-3.2.20.checksum.txt>`_)

The PGP key ID used for this release is Mariusz Felisiak: 
`2EF56372BA48CD1B <https://github.com/felixxm.gpg>`_.

General notes regarding security reporting
==========================================

As always, we ask that potential security issues be reported via
private email to ``security@djangoproject.com``, and not via Django's
Trac instance or the django-developers list. Please see `our security
policies <https://www.djangoproject.com/security/>`_ for further
information.

