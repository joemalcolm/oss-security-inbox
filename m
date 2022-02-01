X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3042" "Tuesday" "1" "February" "2022" "09:05:38" "+0100" "Mariusz Felisiak" "felisiak.mariusz@gmail.com" nil "80" "[oss-security] Django: CVE-2022-22818: Possible XSS via {% debug %} template tag" nil nil nil "2" nil nil (number mark "U       felisiak.mar Feb  1   80/3042  " thread-indent "\"[oss-security] Django: CVE-2022-22818: Possible XSS via {% debug %} template tag\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Django: CVE-2022-22818: Possible XSS via {% debug %} template tag" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5859 invoked by uid 550); 1 Feb 2022 08:17:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32193 invoked from network); 1 Feb 2022 08:05:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:content-language:to:from
         :subject:content-transfer-encoding;
        bh=ufHg3EQgBUf1ezNVYj/1uR6fjyOw+MIVd/b8uV0yReY=;
        b=mJ/nz5BpOegNH7BmfoGNcqdLj/3koEiwF6ffGiPUkmtJvEtUdVo1u7Qhbrnvb6CFKR
         q6t7o8NggJPWWHVe8KoI65G59+K9x1pF8303lixklFhZ5CWeuSaJKhmx25D35VvjWtDW
         /2W/8wOlQ3g4hXCOACiAvGyQ84gta86Mdn+ONkw7pw8gZmZFep6olWbKyrMvcNfeAxLg
         K2D6TG0FsBap3WZYEapTthalz3UeWZrI0+TW7+wYJx2MCnqlbgxH0/n9JHbwHrI9kxCf
         6udm5/n8270HJFEXABCnxm4Ke+Ws6/jNrgxm70UTSqc3S/5RAuWwOUc+kbVscyDmBpwm
         y78Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:to:from:subject:content-transfer-encoding;
        bh=ufHg3EQgBUf1ezNVYj/1uR6fjyOw+MIVd/b8uV0yReY=;
        b=mtrI6MVBDBOOeuMgpQrmE5oi1o1R9mIh3Dkfu/zteINq4Ci748vvB07d7RF8lyHQDj
         7pdIYHI6lvjwkxWvtYaHnzcMtNn9WA0caBHpKTPQAt5gBmTw4ovOVLZAlOtM2hMZlQFo
         ODmj/Dv6vWNH7seG6abAx8rQd2Cqms0FShKwu5Qr2Rkk7A/iifzvfmiavTfIg6MWVI+1
         jZX1/0160+WFaFWqI1TOW9u77JwNLMnu70bYN4PTVrMapgXOAsbgnz77Tv1gKXbCloDZ
         h43zL7bbOQB6h42zcq+sOififAsl9s9jOG1UlZwExQYSBsYQXw2ZlZZ+Yy0VqzDabnDp
         e0sw==
X-Gm-Message-State: AOAM531+YQ06axsZHpU3C/locUu7/a/ytlJWXd3AlPW0kbxCmTDTJpl+
	kVRHRJR5JwoaiNYWTdOn8BAy5oWO7Qw=
X-Google-Smtp-Source: ABdhPJzQ3C68ns+j3iln49SxqMzHxv4n/fgBz+LSzA3L80vDRM8F8rKks0Z+g7AUn80KS3KOVjq/qw==
X-Received: by 2002:a2e:9d0a:: with SMTP id t10mr15701069lji.219.1643702739461;
        Tue, 01 Feb 2022 00:05:39 -0800 (PST)
Message-ID: <74dc4a2c-8165-6ec6-5498-c41841a74bd6@gmail.com>
Date: Tue, 1 Feb 2022 09:05:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Mariusz Felisiak <felisiak.mariusz@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Django: CVE-2022-22818: Possible XSS via {% debug %} template tag

https://www.djangoproject.com/weblog/2022/feb/01/security-releases/

In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the 
Django team
is issuing
`Django 4.0.2 <https://docs.djangoproject.com/en/dev/releases/4.0.2/>`_,
`Django 3.2.12 
<https://docs.djangoproject.com/en/dev/releases/3.2.12/>`_, and
`Django 2.2.27 <https://docs.djangoproject.com/en/dev/releases/2.2.27/>`_.
These release addresses the security issues detailed below. We encourage all
users of Django to upgrade as soon as possible.

CVE-2022-22818: Possible XSS via ``{% debug %}`` template tag
=============================================================

The ``{% debug %}`` template tag didn't properly encode the current context,
posing an XSS attack vector.

In order to avoid this vulnerability, ``{% debug %}`` no longer outputs an
information when the ``DEBUG`` setting is ``False``, and it ensures all 
context
variables are correctly escaped when the ``DEBUG`` setting is ``True``.

Thanks Keryn Knight for the report.

This issue has severity "medium" according to the Django security policy.

Affected supported versions
===========================

* Django main branch
* Django 4.0
* Django 3.2
* Django 2.2

Resolution
==========

Patches to resolve the issue have been applied to Django's main branch 
and to
the 4.0, 3.2, and 2.2 release branches. The patches may be obtained from the
following changesets.

* On the `main branch 
<https://github.com/django/django/commit/394517f07886495efcf79f95c7ee402a9437bd68>`__
* On the `4.0 release branch 
<https://github.com/django/django/commit/01422046065d2b51f8f613409cad2c81b39487e5>`__
* On the `3.2 release branch 
<https://github.com/django/django/commit/1a1e8278c46418bde24c86a65443b0674bae65e2>`__
* On the `2.2 release branch 
<https://github.com/django/django/commit/c27a7eb9f40b64990398978152e62b6ff839c2e6>`__

The following releases have been issued:

* Django 4.0.2 (`download Django 4.0.2 
<https://www.djangoproject.com/m/releases/4.0/Django-4.0.2.tar.gz>`_ | 
`4.0.2 checksums 
<https://www.djangoproject.com/m/pgp/Django-4.0.2.checksum.txt>`_)
* Django 3.2.12 (`download Django 3.2.12 
<https://www.djangoproject.com/m/releases/3.2/Django-3.2.12.tar.gz>`_ | 
`3.2.12 checksums 
<https://www.djangoproject.com/m/pgp/Django-3.2.12.checksum.txt>`_)
* Django 2.2.27 (`download Django 2.2.27 
<https://www.djangoproject.com/m/releases/2.2/Django-2.2.27.tar.gz>`_ | 
`2.2.27 checksums 
<https://www.djangoproject.com/m/pgp/Django-2.2.27.checksum.txt>`_)

The PGP key ID used for this release is Mariusz Felisiak: 
`2EF56372BA48CD1B <https://github.com/felixxm.gpg>`_.

General notes regarding security reporting
==========================================

As always, we ask that potential security issues be reported via
private email to ``security@djangoproject.com``, and not via Django's
Trac instance or the django-developers list. Please see `our security
policies <https://www.djangoproject.com/security/>`_ for further
information.

