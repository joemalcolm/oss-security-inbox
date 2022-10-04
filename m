Received: (qmail 24223 invoked by uid 550); 4 Oct 2022 13:26:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5134 invoked from network); 4 Oct 2022 08:04:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date;
        bh=l4Q1wSHEPWl+hKNFWOWZu2uuYiP7cyNLS2A8CbTupVc=;
        b=XECRTWLXV/Cm0eFZ6TB2Wjbp5GigI7B9ilKYPSz4+p5CscdlxdGTE8ZFLCIWJMsuxj
         m0mlEiZxkoFxPxFeutDMaX9t0BCM97qfS7izJoOkRf3ExJGvh9bgw9OZ5qMwKv6yYSyc
         IpJUbNJnuS0DiG6fIC8YQMlsvOmNlGOJyhn9EPxk0xWp5M4hM315XDkpicOhpGs10ptp
         s3rQjIOqeJeZTM1fai8R0vXfwk7Yu/9SHfo9MrLjA7GFQ1LjOsh4UimorMQ5QyxlzxIq
         4ZEOQsIhK9lhrtFqYqUyw+r7OYT3dBMdBtl0kIRzYby3MKBZOIy7xCODQ21Rzh46XU9u
         /S5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date;
        bh=l4Q1wSHEPWl+hKNFWOWZu2uuYiP7cyNLS2A8CbTupVc=;
        b=0FhZzDrQN8PUgYXG6twBFZznfXFYlZdGmP1RTm3RD9UtizYXq7ijICQKyHhfKOKT8C
         V5U91B+3M+tjk59axiDyfRfuOjrSpGvl2i2XA+IpvwK4Zibb0izmNKV/kjUX1oqdDXUF
         Uxien0zeM/xQ6b+h/hSmu0J6xK/vMJzOCzwBk09Tq3lLIsm28o+p0JVm+bRj3MIXIzvN
         LyZSh9bqsSbrdD+cNR8VlD48HkoSvIUxP39hW2J0bFDbuM5+hjQW3yiaD3uWeMEzB4Mb
         tEFlbNTKQyRbq1MmfJLXheALsfwaxkqz9zO+sIIe8IU0/asrINr7yWVlAzN+6Lo76zqD
         id6g==
X-Gm-Message-State: ACrzQf1xLKNXyX2UvQ7Mbr6A9I2QuwqxIyR5dXuBfoHYs/1MPQI0BUXA
	f2fO8envD+f5jH/Ahi2lhKd/kO7WA+pLf8DPTGkVVLI74oQ=
X-Google-Smtp-Source: AMsMyM71/oYGtV8AFwz0/Ubl7uYEbtIieqsr2XSSQSBai/ng6A6OqSCWgkzqW865Y+CKpXDPJrNC0ZJAqb2myO4HXoo=
X-Received: by 2002:a05:6a00:1a44:b0:528:6af7:ff4a with SMTP id
 h4-20020a056a001a4400b005286af7ff4amr26759403pfv.78.1664870648017; Tue, 04
 Oct 2022 01:04:08 -0700 (PDT)
MIME-Version: 1.0
From: Carlton Gibson <carlton.gibson@gmail.com>
Date: Tue, 4 Oct 2022 10:03:56 +0200
Message-ID: <CAJwKpyQDJVgvZGUXWVpx5dUCoajAyx8R-8qZEQ7CWMgXi+gv5g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000009276be05ea30e7d1"
Subject: [oss-security] Django CVE-2022-41323: Potential denial-of-service vulnerability in
 internationalized URLs

--0000000000009276be05ea30e7d1
Content-Type: text/plain; charset="UTF-8"

Django security releases issued: 4.1.2, 4.0.8, and 3.2.16
https://www.djangoproject.com/weblog/2022/oct/04/security-releases/

In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the Django
team
is issuing
`Django 4.1.2 <https://docs.djangoproject.com/en/dev/releases/4.1.2/>`_,
`Django 4.0.8 <https://docs.djangoproject.com/en/dev/releases/4.0.8/>`_, and
`Django 3.2.16 <https://docs.djangoproject.com/en/dev/releases/3.2.16/>`_.
These releases addresses the security issue detailed below. We encourage all
users of Django to upgrade as soon as possible.

CVE-2022-41323: Potential denial-of-service vulnerability in
internationalized URLs
===================================================================================

Internationalized URLs were subject to potential denial of service attack
via
the locale parameter. This is now escaped to avoid this possibility.

This issue has medium severity, according to the Django security policy.

Thanks to Benjamin Balder Bach for the report.

Affected supported versions
===========================

* Django main branch
* Django 4.1
* Django 4.0
* Django 3.2

Resolution
==========

Patches to resolve the issue have been applied to Django's main branch and
the
4.1, 4.0, and 3.2 release branches. The patches may be obtained from the
following changesets:

* On the `main branch <
https://github.com/django/django/commit/e5ea2842941967f06cefa10865f303b39c95279f
>`__
* On the `4.1 release branch <
https://github.com/django/django/commit/9d656ea51d9ea7105c0c0785783ac29d426a7d25
>`__
* On the `4.0 release branch <
https://github.com/django/django/commit/23f0093125ac2e553da6c1b2f9988eb6a3dd2ea1
>`__
* On the `3.2 release branch <
https://github.com/django/django/commit/5b6b257fa7ec37ff27965358800c67e2dd11c924
>`__

The following releases have been issued:

* Django 4.1.2 (`download Django 4.1.2 <
https://www.djangoproject.com/m/releases/4.1/Django-4.1.2.tar.gz>`_ |
`4.1.2 checksums <
https://www.djangoproject.com/m/pgp/Django-4.1.2.checksum.txt>`_)
* Django 4.0.8 (`download Django 4.0.8 <
https://www.djangoproject.com/m/releases/4.0/Django-4.0.8.tar.gz>`_ |
`4.0.8 checksums <
https://www.djangoproject.com/m/pgp/Django-4.0.8.checksum.txt>`_)
* Django 3.2.16 (`download Django 3.2.16 <
https://www.djangoproject.com/m/releases/3.2/Django-3.2.16.tar.gz>`_ |
`3.2.16 checksums <
https://www.djangoproject.com/m/pgp/Django-3.2.16.checksum.txt>`_)

The PGP key ID used for this release is Carlton Gibson: `E17DF5C82B4F9D00 <
https://github.com/carltongibson.gpg>`_.

General notes regarding security reporting
==========================================

As always, we ask that potential security issues be reported via
private email to ``security@djangoproject.com``, and not via Django's
Trac instance or the django-developers list. Please see `our security
policies <https://www.djangoproject.com/security/>`_ for further
information.

--0000000000009276be05ea30e7d1--
