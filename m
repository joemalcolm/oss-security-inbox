Received: (qmail 16327 invoked by uid 550); 10 Jun 2025 14:46:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23763 invoked from network); 10 Jun 2025 13:28:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=djangoproject-com.20230601.gappssmtp.com; s=20230601; t=1749562125; x=1750166925; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UKPywFF8LUqGb8jsI6Td2ZyhjNUW6a8tWf3H8uwe0Ck=;
        b=pQ8jigVUTFyHWCG6xIu352hMc6/kby/xqo8sfKrIGnUzILWLPioq0NCkhI0+XoUENt
         OeDcL7eRBFHXIgoV629tFgq21+n1M7VGNggpFN9ULbspthzYE8sQLDS3/mJ+CPCymaIg
         vbMEt7/vLomlWMv8lFTKbYa3OzbCoRG6nhfX1IQ378XKevXF8ortZlM0gfTz9p3bRM/f
         OppJLQENnfoH2lLv72I1iqIvH0XFD375nHwyk0i/Ivdwsh+EmNAd33qxSpAOx+UrtO3g
         YwK3qry3qyKd9VGxUul9uIAgvFic5wgvk1+z8cZ8iwRysbY4Wa24RzN4g9zptr7RuRdz
         hQBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749562125; x=1750166925;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UKPywFF8LUqGb8jsI6Td2ZyhjNUW6a8tWf3H8uwe0Ck=;
        b=p1GpBbzhID4/jXqZaqs9SdQ3WzDJxtGMi3+oXrCxtcl1qUqt4iikJph+W81zy6GFIN
         KvVM/TiRYYwh4a69jKaR6z156zGvbR0cuXokaWZAot71b7AeCPJNpDZCpIyV9jUb7mJZ
         Y3bzx4o3hHCjy8QWGKJ/wNl2sbDP/E/TkGc3a8eQYeWZnm4kJgxYZB1fouXwlc6vo8IQ
         YvPq/NNKBFzWQ+Ve2HRxsDXnImkCcpRDTP6/Gy9oxChQUMv5dyMlxi70YL58GqF72Ih/
         4rb6YQTUtcLrvsA6KYCeRYGLldA8zcgn0iaTnHs7ZuI5TcGhW/EFk4mIP+H9x6q/1DWW
         voNA==
X-Gm-Message-State: AOJu0Yzc1YyoPWXrNSuPZg3SDyggxIy4B3CkdEnxriwWrTSDSW/RRE4z
	PLI64qFCpsWEwo1y9yhq6LNKMfJpG0hVhPX/YbafbiWKu28H+Ml6hjiPSmZQux43wdX+Z29boau
	52UzTJ7qJ/NHak9mC5U3WPsjSMOFL7AM7fDDhPP3cRI5cNCYX/Fk6744=
X-Gm-Gg: ASbGnctp6Z4pe2HDwkAlbAiJANbP7E1jhcwqtTZR1UkEM8oaPXrnp4BuarPjQU03zFL
	GYOmttp51gUXpq5JfzHYdW5zs3izYms8oz5PIP9V1LV2y7NYyztq0XX0napRVSNoIuWvVfK2I8R
	SiHZXLkSS0eD9w7D1K+SWNqoZPn+dzA0FW4wy1tzOY3bpN/ktAf5rawkmejJEvn5awkAVm4VIX3
	REBvw==
X-Google-Smtp-Source: AGHT+IF26B2rHsSGrjdlzZAziQwX2pHQf38XKMDXk3XrWq2B2Pp9BQnVxlw1ktPRoJSGEetK9tCWLOouEMCbbW10R7E=
X-Received: by 2002:a17:907:7ba9:b0:ade:4121:8d52 with SMTP id
 a640c23a62f3a-ade7ac5415cmr310472766b.16.1749562125186; Tue, 10 Jun 2025
 06:28:45 -0700 (PDT)
MIME-Version: 1.0
From: Sarah Boyce <sarahboyce@djangoproject.com>
Date: Tue, 10 Jun 2025 15:28:34 +0200
X-Gm-Features: AX0GCFt3OHvBDZEZM-vuObhoFrq7dN0nq9Gbot1P4zVyjsa6-eQZad-hxdBKgFE
Message-ID: <CAN+fQHzDjwHONmFdu17_O-SkiG1i3Z637i-6EsJnnq4rd9HrWg@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Django Security Team <security@djangoproject.com>
Content-Type: multipart/alternative; boundary="000000000000fc0ffc063737ac66"
Subject: [oss-security] Django CVE-2025-48432 (follow-up patch releases)

--000000000000fc0ffc063737ac66
Content-Type: text/plain; charset="UTF-8"

https://www.djangoproject.com/weblog/2025/jun/04/security-releases/

Following the June 4, 2025 security release, the Django team is issuing
releases for
`Django 5.2.3 <https://docs.djangoproject.com/en/dev/releases/5.2.3/>`_,
`Django 5.1.11 <https://docs.djangoproject.com/en/dev/releases/5.1.11/>`_,
and
`Django 4.2.23 <https://docs.djangoproject.com/en/dev/releases/4.2.23/>`_ to
complete mitigation for CVE-2025-48432: Potential log injection via
unescaped
request path (`full description <
https://www.djangoproject.com/weblog/2025/jun/04/security-releases/>`_).

These follow-up releases migrate remaining response logging paths to a safer
logging implementation, ensuring that all untrusted input is properly
escaped
before being written to logs. This update does not introduce a new CVE but
strengthens the original fix.

We encourage all users of Django to upgrade as soon as possible.

Affected supported versions
===========================

* Django main
* Django 5.2
* Django 5.1
* Django 4.2

Resolution
==========

Patches to resolve the issue have been applied to Django's
main, 5.2, 5.1, and 4.2 branches.
The patches may be obtained from the following changesets.

CVE-2025-48432: Potential log injection via unescaped request path
------------------------------------------------------------------

* On the `main branch <
https://github.com/django/django/commit/957951755259b412d5113333b32bf85871d29814/
>`__
* On the `5.2 branch <
https://github.com/django/django/commit/8fcc83953c350e158a484bf1da0aa1b79b69bb07/
>`__
* On the `5.1 branch <
https://github.com/django/django/commit/31f4bd31fa16f7f5302f65b9b8b7a49b69a7c4a6/
>`__
* On the `4.2 branch <
https://github.com/django/django/commit/b597d46bb19c8567615e62029210dab16c70db7d/
>`__


The following releases have been issued
=======================================

* Django 5.2.3 (`download Django 5.2.3
  <https://www.djangoproject.com/download/5.2.3/tarball/>`_ |
  `5.2.3 checksums
  <https://www.djangoproject.com/download/5.2.3/checksum/>`_)
* Django 5.1.11 (`download Django 5.1.11
  <https://www.djangoproject.com/download/5.1.11/tarball/>`_ |
  `5.1.11 checksums
  <https://www.djangoproject.com/download/5.1.11/checksum/>`_)
* Django 4.2.23 (`download Django 4.2.23
  <https://www.djangoproject.com/download/4.2.23/tarball/>`_ |
  `4.2.23 checksums
  <https://www.djangoproject.com/download/4.2.23/checksum/>`_)

The PGP key ID used for this release is : `3955B19851EA96EF <
https://github.com/sarahboyce.gpg>`_

--000000000000fc0ffc063737ac66--
