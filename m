Received: (qmail 15468 invoked by uid 550); 1 Feb 2023 11:30:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24486 invoked from network); 1 Feb 2023 11:01:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3V1dOGF7a9Qh2VkMFcJCgk5BHeiA3tIjv3VGBtEEYPU=;
        b=Ht8xLJBIyQhTMl9EE1jTi1UfGeiItrkJBrlt/PMFc+DfAG+lLj7/4rp3In1rmT6RQY
         fJQmYQsYKGatLg0vhxBtnZP6BGvJes8JTji0Tc/S001xv3vP/M1JrNbkWt9k+A2IJ5o6
         cXs4/KuaR/UAEEABpzFvjssEA17TlQ586m2fe78hCQvze/FPllwTK7U3dqglhvm3QfDl
         oU9d1e8xV2PntXd+nP/+gxknAeS8mJ9TEE/9LFKT7TsGrn6o8PJ4GXMsFgU4RPOwu43J
         BZlR2tw3EuN6/s+vZxsGKUhnbkdR9HkU2kK3FbhwxAnzXiI+Cm8vIRsY+jmnGRE5MuEK
         RoGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3V1dOGF7a9Qh2VkMFcJCgk5BHeiA3tIjv3VGBtEEYPU=;
        b=cgZI+zkR+NLgw3AZ57qf/U1KKKlrx5ml4XPaDHmRLO19TQcEAMZ0FqaAGzq+u5xiUM
         WvgVAvokmD6lS8vqClujfHrGpynAeSre0W50zOV5akhtx1iDchAIR2Tx+GDc/zy2THsv
         s9ypBF5EQQqZCuv/YnTunCqPDLzDy2ou+hObbNo3+5dczmw1ESO5iOpQV1aQupAExQEx
         76PLgm18Nhi31jrWCfVWVv6RNym9+lCyvST2dYyxTxHc5Y4dvvdOEaARe+sjZo1kDFiF
         pJpcAOxVE7ZVpCBZKnNeW2IqeTy8E0i+jfOe7p+bBAiiI0lOk5bOl6fgGqa8QKyAvQWw
         H/HA==
X-Gm-Message-State: AO0yUKVkV0CqELEC55GIoY4AcKIm3rnuqp6rXe+8ER9hgMfLTHr7hds3
	H252TwNBqA1fEdW/Vuj8dlFI1bfIMRI=
X-Google-Smtp-Source: AK7set/78rwIFIUNTVpvTA9h/zJZ9q4oAqgVJd36GkaF2yBI3G2sDcSHrtiEYSS1LNcbM3FrM7FqMQ==
X-Received: by 2002:a05:6e02:1566:b0:310:b39f:1d11 with SMTP id k6-20020a056e02156600b00310b39f1d11mr1708299ilu.12.1675249250128;
        Wed, 01 Feb 2023 03:00:50 -0800 (PST)
Message-ID: <bfeb845f-4e9a-69fa-3c09-a97eed9d3247@gmail.com>
Date: Wed, 1 Feb 2023 12:00:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Mariusz Felisiak <felisiak.mariusz@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Django: CVE-2023-23969: Potential denial-of-service via
 Accept-Language headers.

https://www.djangoproject.com/weblog/2023/feb/01/security-releases/

In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the 
Django team
is issuing
`Django 4.1.6 <https://docs.djangoproject.com/en/dev/releases/4.1.6/>`_,
`Django 4.0.9 <https://docs.djangoproject.com/en/dev/releases/4.0.9/>`_, and
`Django 3.2.17 <https://docs.djangoproject.com/en/dev/releases/3.2.17/>`_.
These releases addresses the security issue detailed below. We encourage all
users of Django to upgrade as soon as possible.

CVE-2023-23969: Potential denial-of-service via ``Accept-Language`` headers
===========================================================================

The parsed values of ``Accept-Language`` headers are cached in order to 
avoid
repetitive parsing. This leads to a potential denial-of-service vector via
excessive memory usage if large header values are sent.

In order to avoid this vulnerability, the ``Accept-Language`` header is now
parsed up to a maximum length.

Thanks to Nick Pope for the report and patch.

This issue has severity "moderate" according to the Django security policy.

Affected supported versions
===========================

* Django main branch
* Django 4.2 (currently at pre-release alpha status)
* Django 4.1
* Django 4.0
* Django 3.2

Resolution
==========

Patches to resolve the issue have been applied to Django's main branch 
and the
4.2, 4.1, 4.0, and 3.2 release branches. The patches may be obtained 
from the
following changesets:

* On the `main branch 
<https://github.com/django/django/commit/8c660fb59239828583f17cdede3b64f208b8752c>`__
* On the `4.2 release branch 
<https://github.com/django/django/commit/8a7b22d4a623bcd95190d2f5a958472fb41e576d>`__
* On the `4.1 release branch 
<https://github.com/django/django/commit/9d7bd5a56b1ce0576e8e07a8001373576d277942>`__
* On the `4.0 release branch 
<https://github.com/django/django/commit/4452642f193533e288a52c02efb5bbc766a68f95>`__
* On the `3.2 release branch 
<https://github.com/django/django/commit/c7e0151fdf33e1b11d488b6f67b94fdf3a30614a>`__

The following releases have been issued:

* Django 4.1.6 (`download Django 4.1.6 
<https://www.djangoproject.com/m/releases/4.1/Django-4.1.6.tar.gz>`_ | 
`4.1.6 checksums 
<https://www.djangoproject.com/m/pgp/Django-4.1.6.checksum.txt>`_)
* Django 4.0.9 (`download Django 4.0.9 
<https://www.djangoproject.com/m/releases/4.0/Django-4.0.9.tar.gz>`_ | 
`4.0.9 checksums 
<https://www.djangoproject.com/m/pgp/Django-4.0.9.checksum.txt>`_)
* Django 3.2.17 (`download Django 3.2.17 
<https://www.djangoproject.com/m/releases/3.2/Django-3.2.17.tar.gz>`_ | 
`3.2.17 checksums 
<https://www.djangoproject.com/m/pgp/Django-3.2.17.checksum.txt>`_)

The PGP key ID used for this release is Mariusz Felisiak: 
`2EF56372BA48CD1B <https://github.com/felixxm.gpg>`_.

General notes regarding security reporting
==========================================

As always, we ask that potential security issues be reported via
private email to ``security@djangoproject.com``, and not via Django's
Trac instance or the django-developers list. Please see `our security
policies <https://www.djangoproject.com/security/>`_ for further
information.

