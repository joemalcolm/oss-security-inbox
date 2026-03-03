Received: (qmail 32618 invoked by uid 550); 3 Mar 2026 17:25:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30101 invoked from network); 3 Mar 2026 14:31:41 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1772548292; cv=none;
        d=google.com; s=arc-20240605;
        b=gsEPCU0lKwPEoSECAsFXD3GF+aY4DVdz8paJNfaykTVFnacQi3Ty7pdlrr72liarYM
         UxNRpD4YdvK4qDKkBcK1XDrS6W8iIy/a7oP28Ud80s10ZxO5ktIn1kVEDKr/pPhw95DF
         Wl6wlqPhBIf+vELO+lAUW1jLpXuFrKUQdfbf3EukhksoPZNdiAjcyIlbIxYlfyxCGkrn
         CZ3twDX6q3w9H1vpXL5MD1tpGIDlacGUZBZydydczoNyECHFgx3NWaiTS739/6+IUZG8
         6U7cgVpfq0Ahj1bH2mg8SzfI6bffJlEsjC0FAg4Gvl0sys8AnayiZVPNPWoh11UaMcXa
         xYdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=7ZSk8CmQ39d6fAqrQgFEXtNnJtpsrD42O9cnUmIXz9E=;
        fh=8rp2Mw3EogNhapyIKgUnFY6d3XGPtMxU1NaBJHOY45c=;
        b=IIN9Kfc0T5m5ylIS6Zm+RmakxtN7aV3u1+4L7qIymB2+Rcr/eMe35qo3/fJlngh0a5
         FSI7D7geR59lpTKtFa0P355YfuQ/n1st8u1tV6SedI6waWITusKgfoTQnDXkYostFfSF
         Hn4IlQBfrymRt4dZ0vTV3Ix503IThfFN+YluNOKCQU0ItxyncFaopFP7ipVJKPUzysqL
         6IOIzmmMEuy5NKGkL1qZumaGkk+6dOs3oeoGAt+edlnOtpzdCPYDLdzk66Q92SSi+qeB
         LxEUrHny8sqZS58FkO+Fi78QSOOQPZKGAohwC/mK4ciwllAKp45yRVi1vrZQCoB0U+Aa
         4DKA==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=djangoproject.com; s=google; t=1772548292; x=1773153092; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7ZSk8CmQ39d6fAqrQgFEXtNnJtpsrD42O9cnUmIXz9E=;
        b=Q3ekLrJ2dPEUcrZDl9qWoHUlqq166voO7VJR7UQMNyXT6yUxex1gulCOp0CPwr+mQ8
         AJNpBaALI+4SWK/Jh55/JGnbkh/guETrwxYTdYRHKiLYo5zu0kn2xlFzfwntC5NXwiuF
         RQkKuLGlsr8xEaYm4LixQ0dHOKqoehMhw/+Wg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772548292; x=1773153092;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7ZSk8CmQ39d6fAqrQgFEXtNnJtpsrD42O9cnUmIXz9E=;
        b=VhdGdK972MwA87zPcH/csohdbmR466ClN7oZUSgdPSvgMHDpepk6iwRjTgmsR/Eev9
         Xbn4kO8KpcXwCAPpNFzVWY5hwwx9HpmL97iSzTUnPhg2KHTP9sBpdA6dF4VO9eKItT94
         Q2hFP36354YyM0btrCbQINy5B2/gYaurX4WElElemUSENa14MRENvhNKu+BTkW+8xHYv
         VkHYmJlMPMjsIkSSc+0MhheccoLMs6by2HDHTSui91bvXcP4Fj3adjkOjU2M04XSaN64
         O8CtSfjGGmqcmJvB8x2Jj+xXEfsmJrcH1QPNdyJg4ouNDpd8zsZIP9Q/OjW+jf6dxhcw
         DjEQ==
X-Gm-Message-State: AOJu0YwM2WMk9UOxQXm2in1gyZYCg+HLeWBZpySLdChd9Nvw7prvQGzr
	07JMHZN5UEelqnoye78XraU5jjm29dqOHdIYpYwuIi7GMFyQQ4phd5A7msVhOCDqxtd2l7OOLQD
	MgMko47ntZLTxTIyiwTP1mUSquJO+R7rSKlNvuOOvo5FM+MmbJHP055M=
X-Gm-Gg: ATEYQzwnEaXCfgxyDd1kU1bRXnCluKd9IaeDp4JYK/ebdGdqFn792YcMjYoRJ/GHdpV
	c+mzN0agsCyTT1QU/MDK4LzzjnW5knI+CpaRJJauJRyubIT6j194Pn9CwDwlVWZH8P48qpyIxty
	PlmY6ZhTns96HRrc2ds4BWT2HxKKiothXIPQHNKeQTqKp81OmXHZVgUnjqxjMKQoUOTK0Ued3tT
	1BWEJpueUDGYrWK/B2XdcEP2KhufFBH6fuP9APzbiM5Qfh1DzaIwEeNY8nLrDJrAS4WCTooamKe
	05Gf32fLIT8H2vZI
X-Received: by 2002:a05:651c:2113:b0:38a:195f:34ec with SMTP id
 38308e7fff4ca-38a195f36f6mr31316971fa.38.1772548291470; Tue, 03 Mar 2026
 06:31:31 -0800 (PST)
MIME-Version: 1.0
From: Natalia Bidart <nataliabidart@djangoproject.com>
Date: Tue, 3 Mar 2026 11:31:15 -0300
X-Gm-Features: AaiRm51vdkkB8jM1TrDGMAh51p-HNo_fu_6b5F66UUaLbpcUYmsx0YTwLrxluwE
Message-ID: <CAJVoTUuWioa5xfKUootC9Kkm2zWS0sSbR66jnyVXcRjO2-03sg@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Django Security Team <security@djangoproject.com>
Content-Type: multipart/alternative; boundary="00000000000042b91c064c1f8f2a"
Subject: [oss-security] Django CVE-2026-25673 and CVE-2026-25674

--00000000000042b91c064c1f8f2a
Content-Type: text/plain; charset="UTF-8"

* Announce:
https://www.djangoproject.com/weblog/2026/mar/03/security-releases/

* CVE JSON Record for CVE-2026-25673:
https://www.cve.org/CVERecord?id=CVE-2026-25673

* CVE JSON Record for CVE-2026-25674:
https://www.cve.org/CVERecord?id=CVE-2026-25674

In accordance with `our security release policy
<https://docs.djangoproject.com/en/stable/internals/security/>`_, the
Django team
is issuing releases for
`Django 6.0.3 <https://docs.djangoproject.com/en/stable/releases/6.0.3/>`_,
`Django 5.2.12 <https://docs.djangoproject.com/en/stable/releases/5.2.12/>`_,
and
`Django 4.2.29 <https://docs.djangoproject.com/en/stable/releases/4.2.29/
>`_.
These releases address the security issues detailed below. We encourage all
users of Django to upgrade as soon as possible.

CVE-2026-25673: Potential denial-of-service vulnerability in ``URLField``
via Unicode normalization on Windows
==============================================================================================================

The ``django.forms.URLField`` form field's ``to_python()`` method used
``urllib.parse.urlsplit()`` to determine whether to prepend a URL scheme to
the submitted value. On Windows, ``urlsplit()`` performs
NFKC normalization (``unicodedata.normalize``), which can be
disproportionately slow for large inputs containing certain characters.

``URLField.to_python()`` now uses a simplified scheme detection, avoiding
Unicode normalization entirely and deferring URL validation to the
appropriate
layers. As a result, while leading and trailing whitespace is still
stripped by
default, characters such as newlines, tabs, and other control characters
within
the value are no longer handled by ``URLField.to_python()``. When using the
default ``URLValidator``, these values will continue to raise
``ValidationError``
during validation, but if you rely on custom validators, ensure they do not
depend on the previous behavior of ``URLField.to_python()``.

This issue has severity "moderate" according to the Django Security Policy.

Thanks to Seokchan Yoon for the report.

CVE-2026-25674: Potential incorrect permissions on newly created file
system objects
====================================================================================

Django's file-system storage and file-based cache backends used the process
``umask`` to control permissions when creating directories. In
multi-threaded
environments, one thread's temporary umask change can affect other threads'
file and directory creation, resulting in file system objects being created
with unintended permissions.

Django now applies the requested permissions via ``os.chmod()`` after
``os.mkdir()``, removing the dependency on the process-wide umask.

This issue has severity "low" according to the Django Security Policy.

Thanks to Tarek Nakkouch for the report.

Affected supported versions
===========================

* Django main
* Django 6.0
* Django 5.2
* Django 4.2

Resolution
==========

Patches to resolve the issue have been applied to Django's
main, 6.0, 5.2, and 4.2 branches.
The patches may be obtained from the following changesets.

CVE-2026-25673: Potential denial-of-service vulnerability in ``URLField``
via Unicode normalization on Windows
--------------------------------------------------------------------------------------------------------------

* On the `main branch <
https://github.com/django/django/commit/951ffb3832cd83ba672c1e3deae2bda128eb9cca
>`__
* On the `6.0 branch <
https://github.com/django/django/commit/b1444d9acf43db9de96e0da2b4737ad56af0eb76
>`__
* On the `5.2 branch <
https://github.com/django/django/commit/4d3c184686626d224d9a87451410ecf802b41f7c
>`__
* On the `4.2 branch <
https://github.com/django/django/commit/b3e8ec8cc310489fe80174b14b11edb970d682ea
>`__

CVE-2026-25674: Potential incorrect permissions on newly created file
system objects
------------------------------------------------------------------------------------

* On the `main branch <
https://github.com/django/django/commit/019e44f67a8dace67b786e2818938c8691132988
>`__
* On the `6.0 branch <
https://github.com/django/django/commit/264d5c70ef3281a8869cb2ad45a3a52d5adbe790
>`__
* On the `5.2 branch <
https://github.com/django/django/commit/b07ed2a1e445efde54fc64cb8c37e0f4f7fe53e5
>`__
* On the `4.2 branch <
https://github.com/django/django/commit/54b50bf7d6dcbf02d4c01f853627cc9299d4934d
>`__

The following releases have been issued
=======================================

* Django 6.0.3 (`download Django 6.0.3
  <https://www.djangoproject.com/download/6.0.3/tarball/>`_ |
  `6.0.3 checksums
  <https://www.djangoproject.com/download/6.0.3/checksum/>`_)
* Django 5.2.12 (`download Django 5.2.12
  <https://www.djangoproject.com/download/5.2.12/tarball/>`_ |
  `5.2.12 checksums
  <https://www.djangoproject.com/download/5.2.12/checksum/>`_)
* Django 4.2.29 (`download Django 4.2.29
  <https://www.djangoproject.com/download/4.2.29/tarball/>`_ |
  `4.2.29 checksums
  <https://www.djangoproject.com/download/4.2.29/checksum/>`_)

The PGP key ID used for this release is Natalia Bidart: `2EE82A8D9470983E <
https://github.com/nessita.gpg>`_

General notes regarding security reporting
==========================================

As always, we ask that potential security issues be reported via private
email
to ``security@djangoproject.com``, and not via Django's Trac instance, nor
via
the Django Forum. Please see `our security policies
<https://www.djangoproject.com/security/>`_ for further information.

--00000000000042b91c064c1f8f2a--
