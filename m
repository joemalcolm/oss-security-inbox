Received: (qmail 10004 invoked by uid 550); 3 May 2023 13:33:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7599 invoked from network); 3 May 2023 13:27:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683120455; x=1685712455;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SMH+W6817BVzMSVOdEFqjyc0tC5QpJ22//PA2v35ocM=;
        b=Os1vjmKPFYgMhxpz9YtX5JDz4x59si1iklhAenrNM27AIkoHwn62i+BaXBHfEAN0RU
         5hEe+X74tKEphJM20VFNsIHhiUxVJ5lNQ26Y568U+MIiKP6WNMhgVBx6wVzduAJCTmYc
         taMcmHKUJf215cXJCiIoym7jb3ErVI4K2fSNvou2zuHZNjMHzCc5as47LsX6dZ0mqw8R
         H0qjDdh3Eslr5h010yBDXcIqWS0M0zT6MIT8MQB87cK4YgDq+8qiF+h64PYWs4k1TKlb
         jwWIM63fEF3nWsD+UUfcGzDvSolpv2hWkYV1BGDUAmO2CNt6oCeWRkkrBi51D4Zr+NTN
         KEEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683120455; x=1685712455;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SMH+W6817BVzMSVOdEFqjyc0tC5QpJ22//PA2v35ocM=;
        b=CZ+MCDcf4fYccaj+0CxYzp3ShiJIUIgGKPZ69nI8BR0G5rDX2zma9LWUq0tAXIywZ5
         GxuTsVj/wWOR2Yolzwy5PYUPwjaIcq6uX5ncXsVS48rTN20G0oCWyNT2hbL4CRHL9JHE
         IW5o70/I4Ga3kdWOVjo7INw4eXIa/QkpYpkGaqC32dsBXrjX7e3bhds6q3JpkztaDd5q
         +FfASia4TuNPIqyW/aRbe16Uqnhveo4nL2JVZnk+bFgibHJz6krk6S/jH1WeQT07Skog
         24l9yVrv3kYkG2p5+NnzjtoJdzIY8JF1EiZpW9js/OmNKu/WSBIIqU6R6nZPGCK8nrDM
         zHqw==
X-Gm-Message-State: AC+VfDyqXgGMZbjbGYoA1oPCXvgO0CRArrFGpia69zyJFHnnJoNou3Ik
	OfpQEK8Qa7qcWwsWY3Rry5H6ErTibkE=
X-Google-Smtp-Source: ACHHUZ6FEOLAW4sx2bXyScb/k6q0w6HHF2yGawEDJoRgcj1im1USJDPYYhGTEW2ofULrLJ48lRWPvQ==
X-Received: by 2002:ac2:4e63:0:b0:4ed:c64c:37b with SMTP id y3-20020ac24e63000000b004edc64c037bmr876098lfs.62.1683120454648;
        Wed, 03 May 2023 06:27:34 -0700 (PDT)
Message-ID: <7630410f-f813-378f-6bc5-177becdbe56e@gmail.com>
Date: Wed, 3 May 2023 15:27:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Mariusz Felisiak <felisiak.mariusz@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Django: CVE-2023-31047 Potential bypass of validation when uploading
 multiple files using one form field

https://www.djangoproject.com/weblog/2023/may/03/security-releases/

In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the 
Django team
is issuing
`Django 4.2.1 <https://docs.djangoproject.com/en/dev/releases/4.2.1/>`_,
`Django 4.1.9 <https://docs.djangoproject.com/en/dev/releases/4.1.9/>`_, and
`Django 3.2.19 <https://docs.djangoproject.com/en/dev/releases/3.2.19/>`_.
These releases addresses the security issue detailed below. We encourage all
users of Django to upgrade as soon as possible.

CVE-2023-31047: Potential bypass of validation when uploading multiple 
files using one form field
=================================================================================================

Uploading multiple files using one form field has never been supported by
``forms.FileField`` or ``forms.ImageField`` as only the last
uploaded file was validated. Unfortunately, `Uploading multiple files 
<https://docs.djangoproject.com/en/stable/topics/http/file-uploads/#uploading-multiple-files>`__
topic suggested otherwise.

In order to avoid the vulnerability, ``ClearableFileInput``
and `FileInput`` form widgets now raise ``ValueError`` when
the ``multiple`` HTML attribute is set on them. To prevent the exception and
keep the old behavior, set ``allow_multiple_selected`` to ``True``.

For more details on using the new attribute and handling of multiple files
through a single field, see `Uploading multiple files 
<https://docs.djangoproject.com/en/stable/topics/http/file-uploads/#uploading-multiple-files>`__.

Thanks Moataz Al-Sharida and nawaik for reports.

This issue has severity "low" according to the Django security policy.

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
<https://github.com/django/django/commit/fb4c55d9ec4bb812a7fb91fa20510d91645e411b>`__
* On the `4.2 release branch 
<https://github.com/django/django/commit/21b1b1fc03e5f9e9f8c977ee6e35618dd3b353dd>`__
* On the `4.1 release branch 
<https://github.com/django/django/commit/e7c3a2ccc3a562328600be05068ed9149e12ce64>`__
* On the `3.2 release branch 
<https://github.com/django/django/commit/eed53d0011622e70b936e203005f0e6f4ac48965>`__

The following releases have been issued:

* Django 4.2.1 (`download Django 4.2.1 
<https://www.djangoproject.com/m/releases/4.2/Django-4.2.1.tar.gz>`_ | 
`4.2.1 checksums 
<https://www.djangoproject.com/m/pgp/Django-4.2.1.checksum.txt>`_)
* Django 4.1.9 (`download Django 4.1.9 
<https://www.djangoproject.com/m/releases/4.1/Django-4.1.9.tar.gz>`_ | 
`4.1.9 checksums 
<https://www.djangoproject.com/m/pgp/Django-4.1.9.checksum.txt>`_)
* Django 3.2.19 (`download Django 3.2.19 
<https://www.djangoproject.com/m/releases/3.2/Django-3.2.19.tar.gz>`_ | 
`3.2.19 checksums 
<https://www.djangoproject.com/m/pgp/Django-3.2.19.checksum.txt>`_)

The PGP key ID used for this release is Mariusz Felisiak: 
`2EF56372BA48CD1B <https://github.com/felixxm.gpg>`_.

General notes regarding security reporting
==========================================

As always, we ask that potential security issues be reported via
private email to ``security@djangoproject.com``, and not via Django's
Trac instance or the django-developers list. Please see `our security
policies <https://www.djangoproject.com/security/>`_ for further
information.

