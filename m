Received: (qmail 17944 invoked by uid 550); 14 Jan 2025 15:07:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22299 invoked from network); 14 Jan 2025 14:47:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=djangoproject-com.20230601.gappssmtp.com; s=20230601; t=1736866060; x=1737470860; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Vp/Oys/FD8qh5zZ9s82F7LdQltAPcPA2U8bC+eKxM6A=;
        b=K3B9HvM5Xe4ST90xNyg/z5l4khq8E5Jd/sgy+3rTjS8y2Ed+t4yoUWjGBCVOLXOLxe
         R6xMGspLqqZD+BeoGxW+aMBpYv2vY9Jck7MjK1o4/1jjD1hKz54rpnaQnl9wqCp0fng2
         NOTv8vl+C1PnSExvyD7ky9Qk0Ly7qBRXiL53l5mt4eQoRdjq0F5kBX/P0vUy+JM/UmcA
         hQQdTwn8JrB/ZVTUzPlwcIhEBqsG0StBIdjD/XlyIRzj25+HRFaEHE7jcK3RZECqiP2r
         oBJ4dZhQD6I5vMs8nVj0mJAAoJAibre0Ws68zq8GN7TSz3PV1aCF0PqkV9CYopdqIDqU
         1kTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736866060; x=1737470860;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Vp/Oys/FD8qh5zZ9s82F7LdQltAPcPA2U8bC+eKxM6A=;
        b=RNrWshaN7L2mR3zkz68IQB3iR4iJWglkkuzSVmoOZbSqt25nlLNt+0N7IjksYdxUfC
         Ry3QtrPsswT8njM6PnHRo8YdJ/Vn1lnvAPduOHb2+rtFlzuu+61wi3fO+rIZ3NLicrEC
         hf3ThuZ2uay6l68j4hQMAsszKFA8gDXAolBllU55xAe7gkMbJrMbLxdZYhsVoqs7OcPP
         mRuzCCNeP4OgbHxsdTRrcnB66/ba0YlJHR+P/WxS+k1mfB1++r0YuKehc8ntD/fqrgHv
         7w44CImYthWAjjn1wdIsNOUWz7jui/9tzXBIuIRhjW/GfKY/uiJ9Iay8yuZiOr4HIuiH
         bk+g==
X-Gm-Message-State: AOJu0YwW4L4br+AIO5qh0kAK2QfA7Y/tAXXN5TQFD1WIl78ZM51kpqw5
	/uKqLnBoDlpSAdXh5Cpf1beANFzR/pWOoL/DTCVx64VYt/MNVsLZzuBcEkqF5JtLWdE30iBTzlA
	VcmheKqZdkaeVdOHoX0kx7TptIFP6MIAxoLZ4Jw2Ie1FoOITv3SM=
X-Gm-Gg: ASbGnctY33YSVbcQ7QaXXB27iQ25VcykWUTVH2nvXUCRWzrm65sZwU6w4UMkF81GuU6
	YZE1QbNgPWu8+swZtRL3nQ0fHmYJOQhiDhOK9WVo=
X-Google-Smtp-Source: AGHT+IGPJGL6XjOgWsL/HiWbPoBZotWoq4QsYgsTMcSEdsyaTkISImrHDrfQZoGjevoXokr9BQ2Dd9KoQQBy0N6SuTA=
X-Received: by 2002:a05:6512:ea8:b0:540:2543:1b19 with SMTP id
 2adb3069b0e04-542845c1e65mr8123603e87.24.1736866060268; Tue, 14 Jan 2025
 06:47:40 -0800 (PST)
MIME-Version: 1.0
From: Natalia Bidart <nataliabidart@djangoproject.com>
Date: Tue, 14 Jan 2025 11:47:24 -0300
X-Gm-Features: AbW1kvaTXCtvWOr0GnuwpMKdYJev4f6wKQ1mBe4V5LAKqp8pVwNVbDjnOcg_BzA
Message-ID: <CAJVoTUsGPMqY1AM4U_46gLZ50VeeaA=5zcpZckvpD8JMhfKm+w@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Django Security Team <security@djangoproject.com>
Content-Type: multipart/alternative; boundary="0000000000008b95ef062baba449"
Subject: [oss-security] CVE-2024-56374: Django: Potential denial-of-service vulnerability in IPv6 validation

--0000000000008b95ef062baba449
Content-Type: text/plain; charset="UTF-8"

https://www.djangoproject.com/weblog/2025/jan/14/security-releases/

In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the Django
team
is issuing releases for
`Django 5.1.5 <https://docs.djangoproject.com/en/dev/releases/5.1.5/>`_,
`Django 5.0.11 <https://docs.djangoproject.com/en/dev/releases/5.0.11/>`_,
and
`Django 4.2.18 <https://docs.djangoproject.com/en/dev/releases/4.2.18/>`_.
These releases address the security issues detailed below. We encourage all
users of Django to upgrade as soon as possible.

CVE-2024-56374: Potential denial-of-service vulnerability in IPv6 validation
============================================================================

Lack of upper bound limit enforcement in strings passed when performing IPv6
validation could lead to a potential denial-of-service attack. The
undocumented
and private functions ``clean_ipv6_address`` and ``is_valid_ipv6_address``
were
vulnerable, as was the ``django.forms.GenericIPAddressField`` form field,
which has now been updated to define a ``max_length`` of 39 characters.

The ``django.db.models.GenericIPAddressField`` model field was not affected.

Thanks to Saravana Kumar for the report.

This issue has severity "moderate" according to the Django security policy.


Affected supported versions
===========================

* Django main
* Django 5.1
* Django 5.0
* Django 4.2

Resolution
==========

Patches to resolve the issue have been applied to Django's
main, 5.1, 5.0, and 4.2 branches.
The patches may be obtained from the following changesets.

CVE-2024-56374: Potential denial-of-service vulnerability in IPv6 validation
----------------------------------------------------------------------------

* On the `main branch <
https://github.com/django/django/commit/ca2be7724e1244a4cb723de40a070f873c6e94bf
>`__
* On the `5.1 branch <
https://github.com/django/django/commit/4806731e58f3e8700a3c802e77899d54ac6021fe
>`__
* On the `5.0 branch <
https://github.com/django/django/commit/e8d4a2005955dcf962193600b53bf461b190b455
>`__
* On the `4.2 branch <
https://github.com/django/django/commit/ad866a1ca3e7d60da888d25d27e46a8adb2ed36e
>`__


The following releases have been issued
=======================================

* Django 5.1.5 (`download Django 5.1.5
  <https://www.djangoproject.com/m/releases/5.1/Django-5.1.5.tar.gz>`_ |
  `5.1.5 checksums
  <https://www.djangoproject.com/m/pgp/Django-5.1.5.checksum.txt>`_)
* Django 5.0.11 (`download Django 5.0.11
  <https://www.djangoproject.com/m/releases/5.0/Django-5.0.11.tar.gz>`_ |
  `5.0.11 checksums
  <https://www.djangoproject.com/m/pgp/Django-5.0.11.checksum.txt>`_)
* Django 4.2.18 (`download Django 4.2.18
  <https://www.djangoproject.com/m/releases/4.2/Django-4.2.18.tar.gz>`_ |
  `4.2.18 checksums
  <https://www.djangoproject.com/m/pgp/Django-4.2.18.checksum.txt>`_)

The PGP key ID used for this release is Natalia Bidart: `2EE82A8D9470983E <
https://github.com/nessita.gpg>`_

General notes regarding security reporting
==========================================

As always, we ask that potential security issues be reported via private
email
to ``security@djangoproject.com``, and not via Django's Trac instance, nor
via
the Django Forum, nor via the django-developers list. Please see `our
security
policies <https://www.djangoproject.com/security/>`_ for further
information.

--0000000000008b95ef062baba449--
