X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2673" "Thursday" "1" "July" "2021" "10:08:07" "+0200" "Mariusz Felisiak" "felisiak.mariusz@gmail.com" nil "71" "[oss-security] Django: CVE-2021-35042: Potential SQL injection via unsanitized QuerySet.order_by() input" nil nil nil "7" nil nil (number mark "U       felisiak.mar Jul  1   71/2673  " thread-indent "\"[oss-security] Django: CVE-2021-35042: Potential SQL injection via unsanitized QuerySet.order_by() input\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Django: CVE-2021-35042: Potential SQL injection via unsanitized QuerySet.order_by() input" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15818 invoked by uid 550); 2 Jul 2021 05:58:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5170 invoked from network); 1 Jul 2021 08:08:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding:content-language;
        bh=AKFSaAQZUh/m4pI7dswC16UKNwpStplA6obY2whJ/gI=;
        b=EuX3HI2TN1lcC/+7Nlcg2fgj+VPmZrf77eIp0vly/BJ3DLAxxYUkRmRB68iMjg/7B2
         cg9nSth5Gu/XQe9e7zzJKFcLjxPIYua3B7UfOop8mzhuC69pb7sD6IriDdYAp1+oGgnc
         Do4OwJzJR2PUwtwHXez/DmKczhHs/aGgOT9lncz5xPzXrWsdKu7Eql4qw1RlHpimzWR+
         XjfWy7GKpcDn5cxIalhQwh//aPUKQwgm0+HUkmd0F/DBugvswhm1RHC0yzruouLcnZWN
         P5AmZJ/xIQZaiQ8Qgl1FFjjMuk093DV3S7WfecZSkewVtBhl+1NCcG5dGp2tEDmaexj3
         4AYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-transfer-encoding:content-language;
        bh=AKFSaAQZUh/m4pI7dswC16UKNwpStplA6obY2whJ/gI=;
        b=FoRt5XNVB68KZt32aC0zu9wYH7aoS/YhxSeTLbvx0wD3N6cCzjclihAc8bzUgGxWL2
         O29XFDAml5a9s2ihbwM98YjQFHMqosLLzZXMohOgQCZZwtLdidHivCffx4qFziO92MUl
         tYuY7entUqt7kev+7J7Km1spNuz08pIbLOxWwIZq9E+byYaGjBJtf0F13n39/6f52jeL
         +22VEX+76iqJjmOxClahojLqbxBPi7/zyrzsuHYjylJ+CdgPRxAkRmxKEcYtg95t7SaO
         wz6D0qDWfOSLUVqGLamOeSRsn818yMsLHwuOgqGsdlCJUY00FCXhJeW1tEjGQIj6Dn7q
         V2pw==
X-Gm-Message-State: AOAM5300Y6Br1kct5oNpDn8tucQDL1nbG8hoqGx+lv9YvPJK8FYi7uHz
	I2E9LPiOFZNF/LfF+w3MDD5qVJrnz40=
X-Google-Smtp-Source: ABdhPJxQojXAAy2pymq9/Pdv3On0ZyT4kqHnfSutZ1cRh0PpIi9vaYlaN8e3Ez4+mcIvFY68ycpwiQ==
X-Received: by 2002:a19:c352:: with SMTP id t79mr3372713lff.537.1625126888731;
        Thu, 01 Jul 2021 01:08:08 -0700 (PDT)
To: oss-security@lists.openwall.com
From: Mariusz Felisiak <felisiak.mariusz@gmail.com>
Message-ID: <f599998d-84c3-8123-a3f9-b14330690367@gmail.com>
Date: Thu, 1 Jul 2021 10:08:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Subject: [oss-security] Django: CVE-2021-35042: Potential SQL injection via unsanitized
 QuerySet.order_by() input

https://www.djangoproject.com/weblog/2021/jul/01/security-releases/

In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the 
Django team
is issuing
`Django 3.2.5 <https://docs.djangoproject.com/en/dev/releases/3.2.5/>`_ and
`Django 3.1.13 <https://docs.djangoproject.com/en/dev/releases/3.1.13/>`_.
These releases address the security issue with severity "high" detailed 
below. We encourage all users of Django to upgrade as soon as possible.

CVE-2021-35042: Potential SQL injection via unsanitized 
``QuerySet.order_by()`` input
=====================================================================================

Unsanitized user input passed to ``QuerySet.order_by()`` could bypass 
intended
column reference validation in path marked for deprecation resulting in a
potential SQL injection even if a deprecation warning is emitted.

As a mitigation the strict column reference validation was restored for the
duration of the deprecation period. This regression appeared in 3.1 as a 
side
effect of fixing `#31426 <https://code.djangoproject.com/ticket/31426>`_.

The issue is not present in the main branch as the deprecated path has been
removed.

Thanks to Joel Saunders for the report.

Affected supported versions
===========================

* Django 3.2
* Django 3.1

Resolution
==========

Patches to resolve the issue have been applied to Django's 3.2 and 3.1
release branches. The patches may be obtained from the
following changesets:

* On the `3.2 release branch 
<https://github.com/django/django/commit/a34a5f724c5d5adb2109374ba3989ebb7b11f81f>`__
* On the `3.1 release branch 
<https://github.com/django/django/commit/0bd57a879a0d54920bb9038a732645fb917040e9>`__

The following releases have been issued:

* Django 3.2.5 (`download Django 3.2.5 
<https://www.djangoproject.com/m/releases/3.2/Django-3.2.5.tar.gz>`_ | 
`3.2.5 checksums 
<https://www.djangoproject.com/m/pgp/Django-3.2.5.checksum.txt>`_)
* Django 3.1.13 (`download Django 3.1.13 
<https://www.djangoproject.com/m/releases/3.1/Django-3.1.13.tar.gz>`_ | 
`3.1.13 checksums 
<https://www.djangoproject.com/m/pgp/Django-3.1.13.checksum.txt>`_)

The PGP key ID used for this release is Mariusz Felisiak: 
`2EF56372BA48CD1B <https://github.com/felixxm.gpg>`_.

General notes regarding security reporting
==========================================

As always, we ask that potential security issues be reported via
private email to ``security@djangoproject.com``, and not via Django's
Trac instance or the django-developers list. Please see `our security
policies <https://www.djangoproject.com/security/>`_ for further
information.

