Received: (qmail 25774 invoked by uid 550); 1 Nov 2023 11:51:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9828 invoked from network); 1 Nov 2023 07:04:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698822278; x=1699427078; darn=lists.openwall.com;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ABLIt+ty3WjN/iipywC23k3h2rMcVtv4IKfhH1i3iSo=;
        b=M/s2dimAukjld508BPY5qnJ4lfI04Bi6Cqs70Cm3VLTVwidyZgRO+ZTM6h8S3i+iPQ
         eoavCLNfxxEil7WIBpASFfuJJjp06rEhhZtt6oJ/Yj1BfyGaU8sIhtWuZTZxsFavay0i
         hjT1FZs8nqlwG/zmSKYc6g1fgu2uj1PlwI/D2jeW+bOamOdi2yU/2Jc/U87pn2I+/TUI
         1kW5Q7/0U5cC3AUTqISMbynj1PPN4sFwiafdUC19QJmZlv5/uiOE8OWSo6MT/rrV6hJM
         6IJ1Wfgw65Pk66RevUiYiv5rxeKv0x0natO9vZnFOFp84JZMqUyWlPmBn3ZFHX6cR37U
         bAZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698822278; x=1699427078;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ABLIt+ty3WjN/iipywC23k3h2rMcVtv4IKfhH1i3iSo=;
        b=vQ8An86BG0qsVjKOEl3rizjeqgn369ogj8X+1aBpReI8F8lXENNTHXSmFsz4TcwTMB
         3wMZ0zFk9EoMWQgC0VSVxk3LQd8SMZNG1/04yYHuQjXR5fZaU9Idlc7ZyNOqwpFYTNPb
         7+ctL8bxxHKSzV3kSsRHrIrYNdbc+b1QgajMONMpcvnKRQKKZWtPFr5vgXVl8nIeIGiq
         yfaPWcgFRdJ0jTEdhag3EXPJBDpMRCd6W4abh0xJ7As67X4dpsWgA1pvlpK8ZzovQmOi
         O526eMzCtDmildAdl+v50QUTU+T3/P7eRdHD40cVRkmpp+kUerlk2UKZNx+95ObFj3cV
         is8A==
X-Gm-Message-State: AOJu0YyZpG7l4SvbBDV9virOdtvtoXwIA6wjyAKQa0mhgrEvOyVrGf+M
	OGZI7veoLx5AuCxz65Z1Wvc51kyoinw=
X-Google-Smtp-Source: AGHT+IEL/3pnTPJlC/kY8/gLIBMB/MzAy9qHyxRc5FsorZ4Ms/8xybYmOyG5BrUx93wWuOxU45NdFA==
X-Received: by 2002:ac2:5456:0:b0:507:bb8e:b644 with SMTP id d22-20020ac25456000000b00507bb8eb644mr9968988lfn.12.1698822278121;
        Wed, 01 Nov 2023 00:04:38 -0700 (PDT)
Message-ID: <ba36d013-359f-4a0c-be68-793370be38de@gmail.com>
Date: Wed, 1 Nov 2023 08:04:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Mariusz Felisiak <felisiak.mariusz@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Django: CVE-2023-46695: Potential denial of service vulnerability in
 UsernameField on Windows

https://www.djangoproject.com/weblog/2023/nov/01/security-releases/

In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the 
Django team
is issuing
`Django 4.2.7 <https://docs.djangoproject.com/en/dev/releases/4.2.7/>`_,
`Django 4.1.13 
<https://docs.djangoproject.com/en/dev/releases/4.1.13/>`_, and
`Django 3.2.23 <https://docs.djangoproject.com/en/dev/releases/3.2.23/>`_.
These releases addresses the security issue detailed below. We encourage all
users of Django to upgrade as soon as possible.

CVE-2023-46695: Potential denial of service vulnerability in 
``UsernameField`` on Windows
=========================================================================================

The NFKC normalization is slow on Windows. As a consequence,
``django.contrib.auth.forms.UsernameField`` was subject to a potential 
denial
of service attack via certain inputs with a very large number of Unicode
characters.

In order to avoid the vulnerability, invalid values longer than
``UsernameField.max_length`` are no longer normalized, since they cannot 
pass
validation anyway.

Thanks `MProgrammer <https://hackerone.com/mprogrammer>`_ for the report.

This issue has severity "moderate" according to the Django security policy.

Affected supported versions
===========================

* Django main branch
* Django 5.0 (currently at beta status)
* Django 4.2
* Django 4.1
* Django 3.2

Resolution
==========

Patches to resolve the issue have been applied to Django's main branch 
and the
5.0, 4.2, 4.1, and 3.2 release branches. The patches may be obtained 
from the
following changesets:

* On the `main branch 
<https://github.com/django/django/commit/05ba4130ee878c4f520b5d34bb11eaad794623be>`__
* On the `5.0 release branch 
<https://github.com/django/django/commit/bb71d34551207b2472c493655d0d7f3b2975d686>`__
* On the `4.2 release branch 
<https://github.com/django/django/commit/048a9ebb6ea468426cb4e57c71572cbbd975517f>`__
* On the `4.1 release branch 
<https://github.com/django/django/commit/4965bfdde2e5a5c883685019e57d123a3368a75e>`__
* On the `3.2 release branch 
<https://github.com/django/django/commit/f9a7fb8466a7ba4857eaf930099b5258f3eafb2b>`__

The following releases have been issued:

* Django 4.2.7 (`download Django 4.2.7 
<https://www.djangoproject.com/m/releases/4.2/Django-4.2.7.tar.gz>`_ | 
`4.2.7 checksums 
<https://www.djangoproject.com/m/pgp/Django-4.2.7.checksum.txt>`_)
* Django 4.1.13 (`download Django 4.1.13 
<https://www.djangoproject.com/m/releases/4.1/Django-4.1.13.tar.gz>`_ | 
`4.1.13 checksums 
<https://www.djangoproject.com/m/pgp/Django-4.1.13.checksum.txt>`_)
* Django 3.2.23 (`download Django 3.2.23 
<https://www.djangoproject.com/m/releases/3.2/Django-3.2.23.tar.gz>`_ | 
`3.2.23 checksums 
<https://www.djangoproject.com/m/pgp/Django-3.2.23.checksum.txt>`_)

The PGP key ID used for this release is Mariusz Felisiak: 
`2EF56372BA48CD1B <https://github.com/felixxm.gpg>`_.

General notes regarding security reporting
==========================================

As always, we ask that potential security issues be reported via
private email to ``security@djangoproject.com``, and not via Django's
Trac instance or the django-developers list. Please see `our security
policies <https://www.djangoproject.com/security/>`_ for further
information.

