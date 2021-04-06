X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3006" "Tuesday" "6" "April" "2021" "09:54:31" "+0200" "Mariusz Felisiak" "felisiak.mariusz@gmail.com" nil "76" "[oss-security] Django: CVE-2021-28658: Potential directory-traversal via uploaded files" nil nil nil "4" nil nil (number mark "U       felisiak.mar Apr  6   76/3006  " thread-indent "\"[oss-security] Django: CVE-2021-28658: Potential directory-traversal via uploaded files\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Django: CVE-2021-28658: Potential directory-traversal via uploaded files" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13618 invoked by uid 550); 6 Apr 2021 09:09:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9431 invoked from network); 6 Apr 2021 07:54:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding:content-language;
        bh=LCowCPBtWhhCfDLmcMStYg2JOfoWKVEwuvxsW78rB3s=;
        b=sgXGl4EALkHnxLx2C/uleJ+ejnHb3faKuU8Qv/j7z/664C6iKa3C6o+ZKF+InlCljr
         YnN18xiif7tcPUsqaaaCfHkHFQd9Nwav9QR/e69AiY5kDrphVWrY4fXp8CufWgPoJ9YH
         vW54qkiVtp8LwBOVuXcX2Z2eXZsKT0J4kby7lvf63rQFsNz/WEdmAqXkw1sMT0ZMwc/2
         AWL1rX4BhsF9mryFE9XeGmJw2LpjV9caaXkB+BpNiBn0D+Dzwgz3wjGcVlDFf1Co4wl/
         QKS4AH4toKgIMxuuGdUNGn+UM8zODag+SHDnSq6XpDCLVfpC4JIayhumNX+Y2gajlWSX
         L1kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-transfer-encoding:content-language;
        bh=LCowCPBtWhhCfDLmcMStYg2JOfoWKVEwuvxsW78rB3s=;
        b=HEEex/XpplYlxo2gbAqhdSQwbH0JW59Pt394TZmuxGWBLhLqllVWcNQvq82frd1Dq5
         9FzrXhyGhv0osx9S4gHFeBEov3cB89HTkiegqC01x5DS2CFNKxwHuMOjILJA2YjFTsnE
         RXc8PoPh+X8a9IWjCATDtEIAjBd4awmNgBf30WmjpQvdi9b4Itfcec/xR6caleXL3bJz
         5+O84Mr034IO/XLa+WKFhK8saCzZeJygjVIrY6qQtYJYw3PDi2WGZkZOuidUbFvJVB0n
         8g1xBacnXIRbVT96GExslD2CaTCReURb3sFlTuFa7eaF53Za4DVF+hxmBNfJLNZyI3gi
         pqyg==
X-Gm-Message-State: AOAM532RU3Miw4A8HcMs/5IozkxYt1zxUWsUTXSzmQvY3J9AFvenKU8l
	47y75NklPAgdoYA1eAXRFxLShL8vo/Y=
X-Google-Smtp-Source: ABdhPJxxiOYbKYMWG/oV3mdX/kJJRwVw2bmdl/OZxkCAzGkAHEGhC3tIz+ta4hyZyIK5dxd99/U2aA==
X-Received: by 2002:ac2:5a48:: with SMTP id r8mr9896140lfn.656.1617695672007;
        Tue, 06 Apr 2021 00:54:32 -0700 (PDT)
To: oss-security@lists.openwall.com
From: Mariusz Felisiak <felisiak.mariusz@gmail.com>
Message-ID: <9cf42d53-70e3-538d-5c61-c83dff7575cd@gmail.com>
Date: Tue, 6 Apr 2021 09:54:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Subject: [oss-security] Django: CVE-2021-28658: Potential directory-traversal via uploaded
 files

https://www.djangoproject.com/weblog/2021/apr/06/security-releases/

In accordance with `our security release policy 
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the 
Django team is issuing
`Django 3.1.8 <https://docs.djangoproject.com/en/dev/releases/3.1.8/>`_,
`Django 3.0.14 
<https://docs.djangoproject.com/en/dev/releases/3.0.14/>`_ and
`Django 2.2.20 <https://docs.djangoproject.com/en/dev/releases/2.2.20/>`_.
These releases address the security issue with severity "low" detailed 
below. We encourage all users of Django to upgrade as soon as possible.

CVE-2021-28658: Potential directory-traversal via uploaded files
================================================================

``MultiPartParser`` allowed directory-traversal via uploaded files with
suitably crafted file names.

Built-in upload handlers were not affected by this vulnerability.

Thank you to Dennis Brinkrolf for the report.

Affected supported versions
===========================

* Django main branch
* Django 3.2 (currently at release candidate status)
* Django 3.1
* Django 3.0
* Django 2.2

Resolution
==========

Patches to resolve the issue have been applied to Django's main branch and
the 3.2, 3.1, 3.0, and 2.2 release branches. The patches may be obtained 
from the following changesets:

* On the `main branch 
<https://github.com/django/django/commit/d4d800ca1addc4141e03c5440a849bb64d1582cd>`__
* On the `3.2 release branch 
<https://github.com/django/django/commit/2820fd1be5dfccbf1216c3845fad8580502473e1>`__
* On the `3.1 release branch 
<https://github.com/django/django/commit/cca0d98118cccf9ae0c6dcf2d6c57fc50469fbf0>`__
* On the `3.0 release branch 
<https://github.com/django/django/commit/e7fba62248f604c76da4f23dcf1db4a57b0808ea>`__
* On the `2.2 release branch 
<https://github.com/django/django/commit/4036d62bda0e9e9f6172943794b744a454ca49c2>`__

The following releases have been issued:

* Django 3.1.8 (`download Django 3.1.8 
<https://www.djangoproject.com/m/releases/3.1/Django-3.1.8.tar.gz>`_ | 
`3.1.8 checksums 
<https://www.djangoproject.com/m/pgp/Django-3.1.8.checksum.txt>`_)
* Django 3.0.14 (`download Django 3.0.14 
<https://www.djangoproject.com/m/releases/3.0/Django-3.0.14.tar.gz>`_ | 
`3.0.14 checksums 
<https://www.djangoproject.com/m/pgp/Django-3.0.14.checksum.txt>`_)
* Django 2.2.20 (`download Django 2.2.20 
<https://www.djangoproject.com/m/releases/2.2/Django-2.2.20.tar.gz>`_ | 
`2.2.20 checksums 
<https://www.djangoproject.com/m/pgp/Django-2.2.20.checksum.txt>`_)

The PGP key ID used for this release is Mariusz Felisiak: 
`2EF56372BA48CD1B <https://github.com/felixxm.gpg>`_.

General notes regarding security reporting
==========================================

As always, we ask that potential security issues be reported via
private email to ``security@djangoproject.com``, and not via Django's
Trac instance or the django-developers list. Please see `our security
policies <https://www.djangoproject.com/security/>`_ for further
information.

