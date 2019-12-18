X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3487" "Wednesday" "18" "December" "2019" "10:28:40" "+0100" "Mariusz Felisiak" "felisiak.mariusz@gmail.com" nil "85" nil nil nil nil "12" nil nil (number mark "U       felisiak.mar Dec 18   85/3487  " thread-indent "\"[oss-security] Django: CVE-2019-19844: Potential account hijack via password reset form\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Django: CVE-2019-19844: Potential account hijack via password reset form" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27847 invoked by uid 550); 18 Dec 2019 09:36:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25696 invoked from network); 18 Dec 2019 09:28:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding:content-language;
        bh=Qw6Ukg8TUgWPYnV28eJwgsCWdCQwK/M3t8Pe5fMSMb4=;
        b=CIYCPYtdnrdsQfs4NUuzAlsjrTi/BIU6px8ztpR2YJTqUzQlds3B/CcDHRn1Ht2JeL
         VL1fxCOv0tpOp9RiNrfwOQV1h4bUrd38e5i/xgW07xEjgHzr1ETcbiNX3fTJ0DrTHRt5
         5Jn91PABzEjfQqiFeKnQfJYOEm3fQwMyA5EaRFZw/wsAROloj3FQc0swP4/9ALn/hRa8
         XdzcDyGPVgkykobzA5kvFr+Yjuc+xvoYUFedo/h3Oyd5dbEDXQKQm7rl8DA4cTSlli/e
         karCpPuT4dfPPC1y01EUzlGiupoaxpTARjyZ3veV5DmEMfUvCW/g9XDD0wnN9x5UJsaY
         i7SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-transfer-encoding:content-language;
        bh=Qw6Ukg8TUgWPYnV28eJwgsCWdCQwK/M3t8Pe5fMSMb4=;
        b=EFgFtcQFq4F9k3S8d9qYXjcQEn1u/QjxPKXN0cPkT/Q9VcyK9nzlJ/Xp2HuAOmJmmK
         qAj/dlPJHbz4Eqrce4pQ822NimshI9c5uVyHFhvUtrWyOYtnXvtCw4hbsB1hWPwU3lwC
         Zj1OsQ9TqqR40vI9TFlRFSIu1gPeooumkwaCG+T1fASBCOnbf/0Ni0FXf4ptDLUkhDED
         sKASgi5UyioLX1DXbEA8Oe5/d7nZITni5u8HuPXcfZcD3X7Hlks7o2QPo/AKpzrrJl6l
         BAORVT/Sss2h+Oqprtj9taR4iYmzz2HozKRWhJ7hFNW/zMvofWlyyOEBrUra6T2bf9A4
         1JQg==
X-Gm-Message-State: APjAAAXYvMpRGRaYWWxNcjA+fpE9N6uKiKHiNTQoseMHyIT8/aed3Cag
	ap42/Pr5SxyFMzwZNPdlm5bmJA4gt/8=
X-Google-Smtp-Source: APXvYqy/Ce8XQKJ0Zgj15W4L0rzH+6WJ5Ti2Ka4zwbRI0qpd8zQ9DjotkkFvf6orZVP5wj4tasgGKA==
X-Received: by 2002:a05:651c:1110:: with SMTP id d16mr1059682ljo.86.1576661321274;
        Wed, 18 Dec 2019 01:28:41 -0800 (PST)
To: oss-security@lists.openwall.com
From: Mariusz Felisiak <felisiak.mariusz@gmail.com>
Message-ID: <3b8c3615-e62f-01e9-bcec-9dc4414dc886@gmail.com>
Date: Wed, 18 Dec 2019 10:28:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Subject: [oss-security] Django: CVE-2019-19844: Potential account hijack via password reset
 form

https://www.djangoproject.com/weblog/2019/dec/18/security-releases/

In accordance with `our security release policy 
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the 
Django team is issuing `Django 3.0.1 
<https://docs.djangoproject.com/en/dev/releases/3.0.1/>`_, `Django 2.2.9 
<https://docs.djangoproject.com/en/dev/releases/2.2.9/>`_ and `Django 
1.11.27 <https://docs.djangoproject.com/en/dev/releases/1.11.27/>`_. 
These release addresses the security issue detailed below. We encourage 
all users of Django to upgrade as soon as possible.

CVE-2019-19844: Potential account hijack via password reset form
================================================================

By submitting a suitably crafted email address making use of Unicode
characters, that compared equal to an existing user email when 
lower-cased for
comparison, an attacker could be sent a password reset token for the matched
account.

In order to avoid this vulnerability, password reset requests now 
compare the
submitted email using the stricter, recommended algorithm for 
case-insensitive
comparison of two identifiers from `Unicode Technical Report 36, section
2.11.2(B)(2)`__. Upon a match, the email containing the reset token will be
sent to the email address on record rather than the submitted address.

.. __: https://www.unicode.org/reports/tr36/#Recommendations_General

Affected supported versions
===========================

* Django master branch
* Django 3.0
* Django 2.2
* Django 2.1

Resolution
==========

Patches to resolve the issue have been applied to Django's master branch and
the 3.0, 2.2, and 1.11 release branches. The patches may be obtained 
from the following changesets:

* On the `master branch 
<https://github.com/django/django/commit/5b1fbcef7a8bec991ebe7b2a18b5d5a95d72cb70>`__
* On the `3.0 release branch 
<https://github.com/django/django/commit/302a4ff1e8b1c798aab97673909c7a3dfda42c26>`__
* On the `2.2 release branch 
<https://github.com/django/django/commit/4d334bea06cac63dc1272abcec545b85136cca0e>`__
* On the `1.11 release branch 
<https://github.com/django/django/commit/f4cff43bf921fcea6a29b726eb66767f67753fa2>`__

The following releases have been issued:

* Django 3.0.1 (`download Django 3.0.1 
<https://www.djangoproject.com/m/releases/3.0/Django-3.0.1.tar.gz>`_ | 
`3.0.1 checksums 
<https://www.djangoproject.com/m/pgp/Django-3.0.1.checksum.txt>`_)
* Django 2.2.9 (`download Django 2.2.9 
<https://www.djangoproject.com/m/releases/2.2/Django-2.2.9.tar.gz>`_ | 
`2.2.9 checksums 
<https://www.djangoproject.com/m/pgp/Django-2.2.9.checksum.txt>`_)
* Django 1.11.27 (`download Django 1.11.27 
<https://www.djangoproject.com/m/releases/1.11/Django-1.11.27.tar.gz>`_ 
| `1.11.27 checksums 
<https://www.djangoproject.com/m/pgp/Django-1.11.27.checksum.txt>`_)

The PGP key ID used for these releases is Mariusz Felisiak: 
2EF56372BA48CD1B.

General notes regarding security reporting
==========================================

As always, we ask that potential security issues be reported via
private email to ``security@djangoproject.com``, and not via Django's
Trac instance or the django-developers list. Please see `our security
policies <https://www.djangoproject.com/security/>`_ for further
information.

This issue was known publicly, therefore we fixed the issue as soon as 
possible without the usual `prenotification process 
<https://docs.djangoproject.com/en/dev/internals/security/#how-django-discloses-security-issues>`_.

