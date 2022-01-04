X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5286" "Tuesday" "4" "January" "2022" "11:06:35" "+0100" "Carlton Gibson" "carlton.gibson@gmail.com" nil "149" "[oss-security] Django security releases issued: 4.0.1, 3.2.11, and 2.2.26 (Multiple CVEs)" nil nil nil "1" nil nil (number mark "U       carlton.gibs Jan  4  149/5286  " thread-indent "\"[oss-security] Django security releases issued: 4.0.1, 3.2.11, and 2.2.26 (Multiple CVEs)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Django security releases issued: 4.0.1, 3.2.11, and 2.2.26 (Multiple CVEs)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9609 invoked by uid 550); 4 Jan 2022 12:53:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3963 invoked from network); 4 Jan 2022 10:06:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=a1U9oBxzHOW3gz12xyT2XAG7WXFvqxeHgTXNt+63WiI=;
        b=S2L/HPDLBrP32hmO/UDi2sTlD4bjdlXiQ7ahhS2KeNHZziDzGSZuYnDwEJ/pBYVs+b
         ZUmxlnOtv7p3AUsWDDvWOdExWEkAVfDLETi230IDLu3PNeNgqZPkxxJuVti2SRrKqsUy
         fZ5Hq0qoYRTUALQ6/3y2MOf/FWAH8xGhSgzcrQtV29a3tS1Gsk7+rAbRZ9ItPqYG2Xvr
         fFXmH1sONUMX3fRoEf4guw6F9HZK41Z2LwXdibKjgLsCoUhSJbBsk48SCIvrkGUk9VLR
         IEPiVpOX380KPeAv+uuDl18RHT0uxTbKd734gKotmhwp16GSP8x77duUlH+4Ybd7FxyL
         IJQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=a1U9oBxzHOW3gz12xyT2XAG7WXFvqxeHgTXNt+63WiI=;
        b=a+fPz25jFN5QBa+D6TVBH1beOHB2KXSwOvhi4mowGT0zb7uvZrAX/MSaG1ZGtoz+Bf
         lNPgPc5j+HHgvC5mN5YjH6k7WC73/p8FqgUMJkhTOlA5ZRK41cNt+3JcYXKaDc1vcirL
         FB4PYDlXTDxGOCzYgwz7zrkqNxKJKIXElZDZtE+YL8jJDn8HkPKPpljwycISh35IHvOz
         gPGo/QsA/AIRRDWuvphu17mAPWseRKL2vkJttwKCCNdy1KRgDhhR4Yb9Hnus60U4+FIv
         g0eIZzmbbmhOEEhcUX37Q49QpTYwfHlxWetr+BCSTHmI27g6RG36wv4RQ0DG6JfFl6CP
         2F5A==
X-Gm-Message-State: AOAM530AVjV6l+0DHx5MKJpM2eMZe4Rx+ePwAhca1kFOTKyUlz7PsYnN
	i7UwVHhMz+mWYGT4l/Z+SLf87V/kEf6Hkb60DGGfpua0JO4=
X-Google-Smtp-Source: ABdhPJyz+xEeUZ467+IOBCsDBWQ7Eu9yDd079RV3APYeNM7Wn0+JNMZMsi52/OXTXtQHt+AMv/F3HGbqvDvhj1O/MtA=
X-Received: by 2002:a05:620a:22ed:: with SMTP id p13mr33128353qki.768.1641290805651;
 Tue, 04 Jan 2022 02:06:45 -0800 (PST)
MIME-Version: 1.0
From: Carlton Gibson <carlton.gibson@gmail.com>
Date: Tue, 4 Jan 2022 11:06:35 +0100
Message-ID: <CAJwKpyQc7O94vcA7LTa6x3i-q08txoeFHzvMQDTOn0Zxwgak5g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000071adb705d4becb39"
Subject: [oss-security] Django security releases issued: 4.0.1, 3.2.11, and 2.2.26 (Multiple CVEs)

--00000000000071adb705d4becb39
Content-Type: text/plain; charset="UTF-8"

Blog post:
https://www.djangoproject.com/weblog/2022/jan/04/security-releases/

Django 4.0.1, 3.2.11, and 2.2.26 fix three security issues.

In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the Django
team
is issuing
`Django 4.0.1 <https://docs.djangoproject.com/en/dev/releases/4.0.1/>`_,
`Django 3.2.11 <https://docs.djangoproject.com/en/dev/releases/3.2.11/>`_,
and
`Django 2.2.26 <https://docs.djangoproject.com/en/dev/releases/2.2.26/>`_.
These release addresses the security issues detailed below. We encourage all
users of Django to upgrade as soon as possible.

CVE-2021-45115: Denial-of-service possibility in
``UserAttributeSimilarityValidator``
=====================================================================================

``UserAttributeSimilarityValidator`` incurred significant overhead
evaluating submitted password that were artificially large in relative to
the
comparison values. On the assumption that access to user registration was
unrestricted this provided a potential vector for a denial-of-service
attack.

In order to mitigate this issue, relatively long values are now ignored by
``UserAttributeSimilarityValidator``.

This issue has severity "medium" according to the Django security policy.

CVE-2021-45116: Potential information disclosure in ``dictsort`` template
filter
================================================================================

Due to leveraging the Django Template Language's variable resolution logic,
the
``dictsort`` template filter was potentially vulnerable to information
disclosure or unintended method calls, if passed a suitably crafted key.

In order to avoid this possibility, ``dictsort`` now works with a restricted
resolution logic, that will not call methods, nor allow indexing on
dictionaries.

As a reminder, all untrusted user input should be validated before use.

This issue has severity "low" according to the Django security policy.

CVE-2021-45452: Potential directory-traversal via ``Storage.save()``
====================================================================

``Storage.save()`` allowed directory-traversal if directly passed suitably
crafted file names.

This issue has severity "low" according to the Django security policy.

Affected supported versions
===========================

* Django main branch
* Django 4.0
* Django 3.2
* Django 2.2

Resolution
==========

Patches to resolve the issue have been applied to Django's main branch and
to
the 4.0, 3.2, and 2.2 release branches. The patches may be obtained from the
following changesets.

CVE-2021-45115:

* On the `main branch <
https://github.com/django/django/commit/968a3d01fa79f055f93a1c3ed1535ecbcbdbb842
>`__
* On the `4.0 release branch <
https://github.com/django/django/commit/df79ef03ac867c93caaa6be56bc69e66abfeef8f
>`__
* On the `3.2 release branch <
https://github.com/django/django/commit/a8b32fe13bcaed1c0b772fdc53de84abc224fb20
>`__
* On the `2.2 release branch <
https://github.com/django/django/commit/2135637fdd5ce994de110affef9e67dffdf77277
>`__

CVE-2021-45116:

* On the `main branch <
https://github.com/django/django/commit/761f449e0daf3de06b0132bd4d6dfcdeef578e26
>`__
* On the `4.0 release branch <
https://github.com/django/django/commit/2a8ec7f546d6d5806e221ec948c5146b55bd7489
>`__
* On the `3.2 release branch <
https://github.com/django/django/commit/c7fe895bca06daf12cc1670b56eaf72a1ef27a16
>`__
* On the `2.2 release branch <
https://github.com/django/django/commit/c9f648ccfac5ab90fb2829a66da4f77e68c7f93a
>`__

CVE-2021-45452:

* On the `main branch <
https://github.com/django/django/commit/6d343d01c57eb03ca1c6826318b652709e58a76e
>`__
* On the `4.0 release branch <
https://github.com/django/django/commit/e1592e0f26302e79856cc7f2218ae848ae19b0f6
>`__
* On the `3.2 release branch <
https://github.com/django/django/commit/8d2f7cff76200cbd2337b2cf1707e383eb1fb54b
>`__
* On the `2.2 release branch <
https://github.com/django/django/commit/4cb35b384ceef52123fc66411a73c36a706825e1
>`__

The following releases have been issued:

* Django 4.0.1 (`download Django 4.0.1 <
https://www.djangoproject.com/m/releases/4.0/Django-4.0.1.tar.gz>`_ |
`4.0.1 checksums <
https://www.djangoproject.com/m/pgp/Django-4.0.1.checksum.txt>`_)
* Django 3.2.11 (`download Django 3.2.11 <
https://www.djangoproject.com/m/releases/3.2/Django-3.2.11.tar.gz>`_ |
`3.2.11 checksums <
https://www.djangoproject.com/m/pgp/Django-3.2.11.checksum.txt>`_)
* Django 2.2.26 (`download Django 2.2.26 <
https://www.djangoproject.com/m/releases/2.2/Django-2.2.26.tar.gz>`_ |
`2.2.26 checksums <
https://www.djangoproject.com/m/pgp/Django-2.2.26.checksum.txt>`_)

The PGP key ID used for these releases is Carlton Gibson: `E17DF5C82B4F9D00
<https://github.com/carltongibson.gpg>`_.

General notes regarding security reporting
==========================================

As always, we ask that potential security issues be reported via
private email to ``security@djangoproject.com``, and not via Django's
Trac instance or the django-developers list. Please see `our security
policies <https://www.djangoproject.com/security/>`_ for further
information.

--00000000000071adb705d4becb39--
