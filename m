X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3054" "Monday" "1" "February" "2021" "10:44:09" "+0100" "Mariusz Felisiak" "felisiak.mariusz@gmail.com" "<27226ce7-d477-5cb5-fbf2-050d8096a151@gmail.com>" "77" "[oss-security] Django: CVE-2021-3281: Potential directory-traversal via archive.extract()" nil nil nil "2" "2021020109:44:09" "[oss-security] Django: CVE-2021-3281: Potential directory-traversal via archive.extract()" (number mark "U       felisiak.mar Feb  1   77/3054  " thread-indent "\"[oss-security] Django: CVE-2021-3281: Potential directory-traversal via archive.extract()\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Django: CVE-2021-3281: Potential directory-traversal via archive.extract()" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19608 invoked by uid 550); 1 Feb 2021 11:20:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24512 invoked from network); 1 Feb 2021 09:44:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding:content-language;
        bh=ZtENExhqWD3r1/7csvzVDouY9TeBdc24oek60RQFlq0=;
        b=Au2BreGyDPcoeZBj+V1RcnuopwvPRlf0BUMFzQkjiDM7ddCm9hPO6mS/FIE5jfMEvW
         zRIum6StaliiUPrUnyhVYW0xAdm8lwa1Ve6SN0Ul4Q7bzhSYrzaz0R+QhvRbanQjFLdd
         li5TncG3o2GOKXfeReAQe1g/U96OhwWz9e0MxZoKiWi0vk4kNZYPBOaOWYwTMNBWOYYo
         BrpFfvsdrfpWPiOCAdcHSydzqn+ryhs0W/InUgvhWA0iT2+cBnA7UJCrwigIQfViQgsi
         ti9D4ynIrNJS2+4bVpK/DQyXpD87zrF6Hyb5IJtVQ21ZQ3MO54BU2ruyhQBT57+EJjY8
         XVAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-transfer-encoding:content-language;
        bh=ZtENExhqWD3r1/7csvzVDouY9TeBdc24oek60RQFlq0=;
        b=AhK4RwfsTXAb4pydA5R+M8aZ4nivj4BsTxKPkrlodepBvaCDUG5hkvx79O3oUnKrvc
         arEknhxMqC5pAcyavFawU63ap4asOW9bwfCyw4mkjWnlkiDUkO30x5VR44epcB5unp8E
         2Sq6VN9XdSG45L1c+a3FnAKZFnMiveNk1tqoS0/Uj1JX/8fxkb7E9Abeh0Vd1cXkeqTu
         uakrNFdOiMddtfQn8MgVmW158/xbFCdEDSA5JJlT650PCAPsR6tNrDOuvQb0mmT8GzSO
         G0+GOFOfllKa6tCYMVZjvJ1aHm2iKD2XHf+xwjP7F1TVUuJWJAhhkkHg3MAfaqPdMtAd
         0EFg==
X-Gm-Message-State: AOAM531CIyH8ZwQhCvTxClxwAR7Vhc/a1CWHyEv9uZEqurQws2bV4fS9
	9MnVt753iGB52IxEBNTyi39UL5VcPBU=
X-Google-Smtp-Source: ABdhPJzfqqPbfbf2FRcUNF2vwK/1mQe71mkAlhnR/obwomiGJ0MzvEp9m/Rjprlw2YTtlEHaBoPUhg==
X-Received: by 2002:a05:6512:10c8:: with SMTP id k8mr8230790lfg.299.1612172650601;
        Mon, 01 Feb 2021 01:44:10 -0800 (PST)
To: oss-security@lists.openwall.com
From: Mariusz Felisiak <felisiak.mariusz@gmail.com>
Message-ID: <27226ce7-d477-5cb5-fbf2-050d8096a151@gmail.com>
Date: Mon, 1 Feb 2021 10:44:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Subject: [oss-security] Django: CVE-2021-3281: Potential directory-traversal via
 archive.extract()

https://www.djangoproject.com/weblog/2021/feb/01/security-releases/

In accordance with `our security release policy 
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the 
Django team is issuing
`Django 3.1.6 <https://docs.djangoproject.com/en/dev/releases/3.1.6/>`_,
`Django 3.0.12 
<https://docs.djangoproject.com/en/dev/releases/3.0.12/>`_ and
`Django 2.2.18 <https://docs.djangoproject.com/en/dev/releases/2.2.18/>`_.
These releases address the security issue with severity "low" detailed 
below. We encourage all users of Django to upgrade as soon as possible.

CVE-2021-3281: Potential directory-traversal via ``archive.extract()``
======================================================================

The ``django.utils.archive.extract()`` function, used by
``startapp --template`` and ``startproject --template``, allowed
directory-traversal via an archive with absolute paths or relative paths 
with
dot segments.

Thank you to Wang Baohua for the report.

Affected supported versions
===========================

* Django master branch
* Django 3.2 (currently at alpha status)
* Django 3.1
* Django 3.0
* Django 2.2

Resolution
==========

Patches to resolve the issue have been applied to Django's master branch and
the 3.2, 3.1, 3.0, and 2.2 release branches. The patches may be obtained 
from the following changesets:

* On the `master branch 
<https://github.com/django/django/commit/05413afa8c18cdb978fcdf470e09f7a12b234a23>`__
* On the `3.2 release branch 
<https://github.com/django/django/commit/f944f79e555c91571192022a6bb9ddf2178db7ed>`__
* On the `3.1 release branch 
<https://github.com/django/django/commit/02e6592835b4559909aa3aaaf67988fef435f624>`__
* On the `3.0 release branch 
<https://github.com/django/django/commit/52e409ed17287e9aabda847b6afe58be2fa9f86a>`__
* On the `2.2 release branch 
<https://github.com/django/django/commit/21e7622dec1f8612c85c2fc37fe8efbfd3311e37>`__

The following releases have been issued:

* Django 3.1.6 (`download Django 3.1.6 
<https://www.djangoproject.com/m/releases/3.1/Django-3.1.6.tar.gz>`_ | 
`3.1.6 checksums 
<https://www.djangoproject.com/m/pgp/Django-3.1.6.checksum.txt>`_)
* Django 3.0.12 (`download Django 3.0.12 
<https://www.djangoproject.com/m/releases/3.0/Django-3.0.12.tar.gz>`_ | 
`3.0.12 checksums 
<https://www.djangoproject.com/m/pgp/Django-3.0.12.checksum.txt>`_)
* Django 2.2.18 (`download Django 2.2.18 
<https://www.djangoproject.com/m/releases/2.2/Django-2.2.18.tar.gz>`_ | 
`2.2.18 checksums 
<https://www.djangoproject.com/m/pgp/Django-2.2.18.checksum.txt>`_)

The PGP key ID used for this release is Mariusz Felisiak: 
`2EF56372BA48CD1B <https://github.com/felixxm.gpg>`_.

General notes regarding security reporting
==========================================

As always, we ask that potential security issues be reported via
private email to ``security@djangoproject.com``, and not via Django's
Trac instance or the django-developers list. Please see `our security
policies <https://www.djangoproject.com/security/>`_ for further
information.

