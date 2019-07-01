X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3589" "Monday" "1" "July" "2019" "09:57:33" "+0200" "Mariusz Felisiak" "felisiak.mariusz@gmail.com" "<c03af74b-c5df-bff4-375f-d9caa0cf9894@gmail.com>" "86" "[oss-security] Django: CVE-2019-12781: Incorrect HTTP detection with reverse-proxy connecting via HTTPS" nil nil nil "7" "2019070107:57:33" "[oss-security] Django: CVE-2019-12781: Incorrect HTTP detection with reverse-proxy connecting via HTTPS" (number mark "U       felisiak.mar Jul  1   86/3589  " thread-indent "\"[oss-security] Django: CVE-2019-12781: Incorrect HTTP detection with reverse-proxy connecting via HTTPS\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Django: CVE-2019-12781: Incorrect HTTP detection with reverse-proxy connecting via HTTPS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7230 invoked by uid 550); 1 Jul 2019 11:27:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20052 invoked from network); 1 Jul 2019 07:57:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding:content-language;
        bh=erl8Lkz2w4BH1k7m3/Zqg5r9wpZToCleDXHAo+SP+c0=;
        b=W74/nc2lk4iShmjv+e2cgZiID+gcXrH3VLgrCGFknxpz2ct2OJAK2hI7XE8EBuQmiK
         Ag+YGFiZ1c2xyTScUXXm3ERaBNfhEafq9m24ThkZg0SyB+2oap4bY7pAYWZE19dmPWcN
         OUg0qiBallH6tqUbsVukPMTlO8WNvNQg3kWUN/9zWUkyXZHACf+8EfUZ1AH55k4SHwxB
         14rjCn41kioBUQkvqZPp8cYImb8nKcFh/BgoLGAJdSP8Q/6xbh65YJ0+CoyAqY4/fvHo
         W2APNbvDvE+vbns3uyltjlHQdqrqep7r8nLRMjZzn0840cnWNQXhuyWz6RDYLEMxvZn9
         a5tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-transfer-encoding:content-language;
        bh=erl8Lkz2w4BH1k7m3/Zqg5r9wpZToCleDXHAo+SP+c0=;
        b=k2AwkkF7jZaL+5+kmQbYOCvEK8VroEkDy8YM8rn8tEja6LqImAcIkB4EbqQbFOsbp6
         LKAJATSLhvkc0h3VptkYkIqYUNfuyp74soQnrCs76e5n+1vIF9zn4HsMRZkGWdNUInd1
         AiBduP8ri3kmnV7NjhsDaXEA4ruGqACzBs0Un4NUoiFT9vGsGqikZd1LYTCa5RQg62YJ
         wkjIYGoCDi9oxoie+tIBWw7qcrsBrNlbUy9eMAOFbU50/MKQAO8F4mTNwXszIouF9/ba
         M2RuMtEUjCxRUJESON27RhxFdF7/eZyePzGII9QsPDVfGFpvhDrMUNJc0mQ/XlkwJrO1
         zetg==
X-Gm-Message-State: APjAAAVxJrKjiCgSrLfIVWnjdQQN1Wg1H/eppzA0JXl775GeovzF7ZF7
	P4gjsNd220/4KAZ27FKis9potOSg
X-Google-Smtp-Source: APXvYqxPlNXcnpCBTcgKc7eui6teLBI62+EMQPqN6p9Osv4aVUjvIdCxVm2udnyw32bVBEI7Bpxl5A==
X-Received: by 2002:ac2:446b:: with SMTP id y11mr10926739lfl.158.1561967854626;
        Mon, 01 Jul 2019 00:57:34 -0700 (PDT)
To: oss-security@lists.openwall.com
From: Mariusz Felisiak <felisiak.mariusz@gmail.com>
Message-ID: <c03af74b-c5df-bff4-375f-d9caa0cf9894@gmail.com>
Date: Mon, 1 Jul 2019 09:57:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Subject: [oss-security] Django: CVE-2019-12781: Incorrect HTTP detection with reverse-proxy
 connecting via HTTPS

https://www.djangoproject.com/weblog/2019/jul/01/security-releases/

In accordance with `our security release policy 
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the 
Django team is issuing `Django 1.11.22 
<https://docs.djangoproject.com/en/dev/releases/1.11.22/>`_, `Django 
2.1.10 <https://docs.djangoproject.com/en/dev/releases/2.1.10/>`_, and 
`Django 2.2.3 <https://docs.djangoproject.com/en/dev/releases/2.2.3/>`_. 
These releases addresses the security issues detailed below. We 
encourage all users of Django to upgrade as soon as possible.

Thanks Gavin Wahl for reporting this issue.

CVE-2019-12781: Incorrect HTTP detection with reverse-proxy connecting 
via HTTPS
================================================================================

When deployed behind a reverse-proxy connecting to Django via HTTPS, 
``django.http.HttpRequest.scheme`` would incorrectly detect client 
requests made via HTTP as using HTTPS. This entails incorrect results 
for ``is_secure()``, and ``build_absolute_uri()``, and that HTTP 
requests would not be redirected to HTTPS in accordance with 
``SECURE_SSL_REDIRECT``.

``HttpRequest.scheme`` now respects ``SECURE_PROXY_SSL_HEADER``, if it 
is configured, and the appropriate header is set on the request, for 
both HTTP and HTTPS requests.

If you deploy Django behind a reverse-proxy that forwards HTTP requests, 
and that connects to Django via HTTPS, be sure to verify that your 
application
correctly handles code paths relying on ``scheme``, ``is_secure()``, 
``build_absolute_uri()``, and ``SECURE_SSL_REDIRECT``.

Affected supported versions
===========================

* Django master development branch
* Django 2.2 before version 2.2.3
* Django 2.1 before version 2.1.10
* Django 1.11 before version 1.11.22

Resolution
==========

Patches to resolve the issue have been applied to Django's master branch 
and the 2.2, 2.1, and 1.11 release branches. The patches may be obtained 
from the following changesets:

* On the `master branch 
<https://github.com/django/django/commit/54d0f5e62f54c29a12dd96f44bacd810cbe03ac8>`__
* On the `2.2 release branch 
<https://github.com/django/django/commit/77706a3e4766da5d5fb75c4db22a0a59a28e6cd6>`__
* On the `2.1 release branch 
<https://github.com/django/django/commit/1e40f427bb8d0fb37cc9f830096a97c36c97af6f>`__
* On the `1.11 release branch 
<https://github.com/django/django/commit/32124fc41e75074141b05f10fc55a4f01ff7f050>`__

The following releases have been issued:

* Django 1.11.22 (`download Django 1.11.22 
<https://www.djangoproject.com/m/releases/1.11/Django-1.11.22.tar.gz>`_ 
| `1.11.22 checksums 
<https://www.djangoproject.com/m/pgp/Django-1.11.22.checksum.txt>`_)
* Django 2.1.10 (`download Django 2.1.10 
<https://www.djangoproject.com/m/releases/2.1/Django-2.1.10.tar.gz>`_ | 
`2.1.10 checksums 
<https://www.djangoproject.com/m/pgp/Django-2.1.10.checksum.txt>`_)
* Django 2.2.3 (`download Django 2.2.3 
<https://www.djangoproject.com/m/releases/2.2/Django-2.2.3.tar.gz>`_ | 
`2.2.3 checksums 
<https://www.djangoproject.com/m/pgp/Django-2.2.3.checksum.txt>`_)

The PGP key ID used for this release is Mariusz Felisiak: 2EF56372BA48CD1B.

General notes regarding security reporting
==========================================

As always, we ask that potential security issues be reported via
private email to ``security@djangoproject.com``, and not via Django's
Trac instance, Django's GitHub repositories, or the django-developers list.
Please see `our security policies 
<https://www.djangoproject.com/security/>`_
for further information.


