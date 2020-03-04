X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2828" "Wednesday" "4" "March" "2020" "10:43:59" "+0100" "Mariusz Felisiak" "felisiak.mariusz@gmail.com" "<72f1c624-3e5a-d318-aba9-c11c8d173491@gmail.com>" "72" "[oss-security] Django: CVE-2020-9402: Potential SQL injection via tolerance parameter in GIS functions and aggregates on Oracle" nil nil nil "3" "2020030409:43:59" "[oss-security] Django: CVE-2020-9402: Potential SQL injection via tolerance parameter in GIS functions and aggregates on Oracle" (number mark "U       felisiak.mar Mar  4   72/2828  " thread-indent "\"[oss-security] Django: CVE-2020-9402: Potential SQL injection via tolerance parameter in GIS functions and aggregates on Oracle\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Django: CVE-2020-9402: Potential SQL injection via tolerance parameter in GIS functions and aggregates on Oracle" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32510 invoked by uid 550); 4 Mar 2020 12:16:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11420 invoked from network); 4 Mar 2020 09:44:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding:content-language;
        bh=AFJ0Fj0BUwQ58is/buJj3l6gT9xUhkcqHPQEUGzJgng=;
        b=M2r7wyY5g8RQdxoAV+lEMJOT/pEwu+xdQNuLHT/L/K+6/y2xf9QKkU5hCWJ5zVKzpN
         gS+ypOUkfJl8qY+QWkZDAtH38tiIpoi+B1xeRUtKHhKOym8cMTAcLsewJO0WxgLLKRru
         J3sAUcjZt6SMBrI3AgXpoINz84W+F0qJJezT5cB/F7vReKrRxXPDFZLBp2EU+JBdjCF/
         XhhPmXuqWk1Iaa5Mql2vFe+giFnq4K+R7VFHKLnlU664Wu2h5qQm3PwwLtfZ+m6v5iFm
         Wu/kjO0bvnM0SSjK4KsPsl4Fye6m0u7psC1XC0ha8Cgl3kbp4C8qoV5A5cWAX/fNG3J7
         G3nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-transfer-encoding:content-language;
        bh=AFJ0Fj0BUwQ58is/buJj3l6gT9xUhkcqHPQEUGzJgng=;
        b=Ihpp4f/HQO2D+2TnAiASDqT4fflGibJeyGYwGyKxyD5au2QYKSiNiGh1VVCt0/ha7v
         zA+hgZjUSlIYqTHukwAGN0AWAoWRnEuLSdDvs00OXtHz6sYmMmgvISIwYCuWfyPamHPo
         wkDfnDH36eWCEDDgVLLiQmyCiwD7FBWcOkt1u1q7WwjbMMbnOlWNeaJE+GjBz2fo+zh8
         iB/zEZq8iTWQmyqgqip/KTYJ+BKBH/FV66UCJppRzd8lMtPw9Sg44fCY8m0N3L5/ESF0
         EAvZaYzK5allCthIfoYjRzD4DfOwEd//s/dIhFMruGUGhQP4IqCf8bLKevcUvCWcIKFL
         L5aA==
X-Gm-Message-State: ANhLgQ0GnlCfRRqGzbW6EKsO9JaIvtS72g1oxxMcdsLecny3F4VMdxYj
	w4fCLwoRvNiL5hp5whcctwpsz4+7
X-Google-Smtp-Source: ADFU+vuUMf/Libhmy98milNbg3xFfwix5rGfalRYjxYTR7QaHnsgkbh6vl7Z2Q9qxyi8nzyO+IA5CQ==
X-Received: by 2002:a2e:9e19:: with SMTP id e25mr1510110ljk.179.1583315040990;
        Wed, 04 Mar 2020 01:44:00 -0800 (PST)
To: oss-security@lists.openwall.com
From: Mariusz Felisiak <felisiak.mariusz@gmail.com>
Message-ID: <72f1c624-3e5a-d318-aba9-c11c8d173491@gmail.com>
Date: Wed, 4 Mar 2020 10:43:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Subject: [oss-security] Django: CVE-2020-9402: Potential SQL injection via tolerance
 parameter in GIS functions and aggregates on Oracle

https://www.djangoproject.com/weblog/2020/mar/04/security-releases/

In accordance with `our security release policy 
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the 
Django team is issuing `Django 3.0.4 
<https://docs.djangoproject.com/en/dev/releases/3.0.4/>`_, `Django 
2.2.11 <https://docs.djangoproject.com/en/dev/releases/2.2.11/>`_ and 
`Django 1.11.29 
<https://docs.djangoproject.com/en/dev/releases/1.11.29/>`_. These 
releases address the security issue detailed below. We encourage all 
users of Django to upgrade as soon as possible.

CVE-2020-9402: Potential SQL injection via ``tolerance`` parameter in 
GIS functions and aggregates on Oracle
============================================================================================================

GIS functions and aggregates on Oracle were subject to SQL injection,
using a suitably crafted ``tolerance``.

Thank you to Norbert Szetei for the report.

Affected supported versions
===========================

* Django master branch
* Django 3.0
* Django 2.2
* Django 1.11

Resolution
==========

Patches to resolve the issue have been applied to Django's master branch and
the 3.0, 2.2, and 1.11 release branches. The patches may be obtained 
from the following changesets:

* On the `master branch 
<https://github.com/django/django/commit/6695d29b1c1ce979725816295a26ecc64ae0e927>`__
* On the `3.0 release branch 
<https://github.com/django/django/commit/26a5cf834526e291db00385dd33d319b8271fc4c>`__
* On the `2.2 release branch 
<https://github.com/django/django/commit/fe886a3b58a93cfbe8864b485f93cb6d426cd1f2>`__
* On the `1.11 release branch 
<https://github.com/django/django/commit/02d97f3c9a88adc890047996e5606180bd1c6166>`__

The following releases have been issued:

* Django 3.0.4 (`download Django 3.0.4 
<https://www.djangoproject.com/m/releases/3.0/Django-3.0.4.tar.gz>`_ | 
`3.0.4 checksums 
<https://www.djangoproject.com/m/pgp/Django-3.0.4.checksum.txt>`_)
* Django 2.2.11 (`download Django 2.2.11 
<https://www.djangoproject.com/m/releases/2.2/Django-2.2.11.tar.gz>`_ | 
`2.2.11 checksums 
<https://www.djangoproject.com/m/pgp/Django-2.2.11.checksum.txt>`_)
* Django 1.11.29 (`download Django 1.11.29 
<https://www.djangoproject.com/m/releases/1.11/Django-1.11.29.tar.gz>`_ 
| `1.11.29 checksums 
<https://www.djangoproject.com/m/pgp/Django-1.11.29.checksum.txt>`_)

The PGP key ID used for these releases is Mariusz Felisiak: 
2EF56372BA48CD1B.

General notes regarding security reporting
==========================================

As always, we ask that potential security issues be reported via
private email to ``security@djangoproject.com``, and not via Django's
Trac instance or the django-developers list. Please see `our security
policies <https://www.djangoproject.com/security/>`_ for further
information.

