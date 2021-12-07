X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3080" "Tuesday" "7" "December" "2021" "08:44:56" "+0100" "Mariusz Felisiak" "felisiak.mariusz@gmail.com" nil "80" "[oss-security] Django: CVE-2021-44420: Potential bypass of an upstream access control based on URL paths" nil nil nil "12" nil nil (number mark "U       felisiak.mar Dec  7   80/3080  " thread-indent "\"[oss-security] Django: CVE-2021-44420: Potential bypass of an upstream access control based on URL paths\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Django: CVE-2021-44420: Potential bypass of an upstream access control based on URL paths" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24140 invoked by uid 550); 7 Dec 2021 08:59:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17435 invoked from network); 7 Dec 2021 07:45:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding:content-language;
        bh=z2zyxBpENdQYQQ2duDKwbeU7p+VoQDpkGO+b69KVp4E=;
        b=J+D0pZw2811gsVXMWdeFtSop0/8hyVSQpNGEtEv808ueULFIDXpnzUPt8rKDZsT0Ov
         aug5c90tkbSjSnPuRJLYp88YycUKik9BZ5Ub+oSzHGF4shej9fnWpGaGi/qlCGJJY6SF
         IWysDzeDVBnNM9NxfcmVqzHwKVkt5xYM4kz5n+hu992025fDR5r6CrI7PK2nZJFccYaZ
         SfGZ+CPEyjnkCAq6/WUQFcGlAXwhooOFw91sLPdpano3p+RpsDp87s9AHoKnzgxeLuVw
         O62qXBQpBV3CDgqDZM06io4PnB/mLv8pszLBBt3ILxRiv5ju/wZoUGvedgmD0ANDpiGr
         VOeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-transfer-encoding:content-language;
        bh=z2zyxBpENdQYQQ2duDKwbeU7p+VoQDpkGO+b69KVp4E=;
        b=2FIpiB5cz6Lm3FA/PxE+UkXkD3vQEY0dM0oPwzOsCCGIun9VGuG0jZ3Iqr6bK/urhc
         kO8fDSmCsLq/n5qdxBM8lL1ZCUC+3NOYdz7oQ6lzsT1c6W8qfq6gaelrTkrPk082LK7A
         d+cGyONsFv2C1lE6S691cIC3ORiI2aFKJlh1uWv4zgnXUO7A/s73EOpBzHONT6BIbUuy
         JzfmY7/PT4b0pNTbhOp9wgV6k32z6c+/RdtG7A5ELJNV1KJx6mKtJPOqgUmWpO9GDlRD
         giv0b2I3YWPljPQBMOqiLmOQXyV9AtyF22CR6PmSdDe/B+Jns5gPgunBrVKxyxzeOnyh
         q4jw==
X-Gm-Message-State: AOAM532tNV3esbAYLqTsUdiwG9D17V/AHEMFAVgUe9nr2mRFLvr1gqg5
	8hczzSCvXEJfnUUhEj1Mlv8GCpREw4c=
X-Google-Smtp-Source: ABdhPJzrycHJUGZxGbbULk5vxE2CI21bpcCzqWv67f59dwVYZwalvP1/dH+08Du3q0RSwhqekALcYw==
X-Received: by 2002:ac2:446a:: with SMTP id y10mr38427758lfl.585.1638863097447;
        Mon, 06 Dec 2021 23:44:57 -0800 (PST)
To: oss-security@lists.openwall.com
From: Mariusz Felisiak <felisiak.mariusz@gmail.com>
Message-ID: <0867be10-5fe2-8040-471b-b2219c29f9e4@gmail.com>
Date: Tue, 7 Dec 2021 08:44:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Subject: [oss-security] Django: CVE-2021-44420: Potential bypass of an upstream access
 control based on URL paths

https://www.djangoproject.com/weblog/2021/dec/07/security-releases/

In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the 
Django team
is issuing
`Django 3.2.10 <https://docs.djangoproject.com/en/dev/releases/3.2.10/>`_,
`Django 3.1.14 
<https://docs.djangoproject.com/en/dev/releases/3.1.14/>`_, and
`Django 2.2.25 <https://docs.djangoproject.com/en/dev/releases/2.2.25/>`_.
These release addresses the security issue detailed below. We encourage all
users of Django to upgrade as soon as possible.

CVE-2021-44420: Potential bypass of an upstream access control based on 
URL paths
=================================================================================

HTTP requests for URLs with trailing newlines could bypass an upstream 
access
control based on URL paths.

This issue has low severity, according to the Django security policy.

Thanks to Sjoerd Job Postmus and TengMA(@te3t123) for the report.

Affected supported versions
===========================

* Django main branch
* Django 4.0 (which will be released in a separate blog post later today)
* Django 3.2
* Django 3.1
* Django 2.2

Resolution
==========

Patches to resolve the issue have been applied to Django's main branch and
the 4.0, 3.2, 3.1, and 2.2 release branches. The patches may be obtained 
from the following changesets:


* On the `main branch 
<https://github.com/django/django/commit/d4dcd5b9dd9e462fec8220e33e3e6c822b7e88a6>`__
* On the `4.0 release branch 
<https://github.com/django/django/commit/20b9ad36ff0558b819659a10a9734262367750be>`__
* On the `3.2 release branch 
<https://github.com/django/django/commit/333c65603032c377e682cdbd7388657a5463a05a>`__
* On the `3.1 release branch 
<https://github.com/django/django/commit/22bd17488159601bf0741b70ae7932bffea8eced>`__
* On the `2.2 release branch 
<https://github.com/django/django/commit/7cf7d74e8a754446eeb85cacf2fef1247e0cb6d7>`__

The following releases have been issued:

* Django 3.2.10 (`download Django 3.2.10 
<https://www.djangoproject.com/m/releases/3.2/Django-3.2.10.tar.gz>`_ | 
`3.2.10 checksums 
<https://www.djangoproject.com/m/pgp/Django-3.2.10.checksum.txt>`_)
* Django 3.1.14 (`download Django 3.1.14 
<https://www.djangoproject.com/m/releases/3.1/Django-3.1.14.tar.gz>`_ | 
`3.1.14 checksums 
<https://www.djangoproject.com/m/pgp/Django-3.1.14.checksum.txt>`_)
* Django 2.2.25 (`download Django 2.2.25 
<https://www.djangoproject.com/m/releases/2.2/Django-2.2.25.tar.gz>`_ | 
`2.2.25 checksums 
<https://www.djangoproject.com/m/pgp/Django-2.2.25.checksum.txt>`_)

The PGP key ID used for this release is Mariusz Felisiak: 
`2EF56372BA48CD1B <https://github.com/felixxm.gpg>`_.

General notes regarding security reporting
==========================================

As always, we ask that potential security issues be reported via
private email to ``security@djangoproject.com``, and not via Django's
Trac instance or the django-developers list. Please see `our security
policies <https://www.djangoproject.com/security/>`_ for further
information.

