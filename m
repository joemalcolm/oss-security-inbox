X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/07/10
Message-ID: <CAL4K_NYZgC6nGrgTtQRvchAzYu0cTL8AkE1OGMzQqkdtGtFx3Q@mail.gmail.com>
Date: Tue, 7 Jul 2026 10:14:56 -0400
From: Jacob Walls <jwalls@...ngoproject.com>
To: oss-security@...ts.openwall.com
Cc: Django Security Team <security@...ngoproject.com>
Subject: Django CVE-2026-48588, CVE-2026-53877, and CVE-2026-53878
Content-Type: text/plain; charset=utf-8

* Announce:
https://www.djangoproject.com/weblog/2026/jul/07/security-releases/

* CVE JSON Record for CVE-2026-48588:
https://www.cve.org/CVERecord?id=CVE-2026-48588

* CVE JSON Record for CVE-2026-53877:
https://www.cve.org/CVERecord?id=CVE-2026-53877

* CVE JSON Record for CVE-2026-53878:
https://www.cve.org/CVERecord?id=CVE-2026-53878

In accordance with [our security release policy](
https://docs.djangoproject.com/en/dev/internals/security/),
the Django team is issuing releases for
[Django 6.0.7](https://docs.djangoproject.com/en/dev/releases/6.0.7/) and
[Django 5.2.16](https://docs.djangoproject.com/en/dev/releases/5.2.16/).
These releases address the security issues detailed below. We encourage all
users of Django to upgrade as soon as possible.

## CVE-2026-48588: Potential exposure of private data via cached
`Set-Cookie` response

`django.middleware.cache.UpdateCacheMiddleware` and
`django.views.decorators.cache.cache_page` avoided caching responses that
set a cookie while varying on `Cookie` only when the incoming request
contained no cookies at all. When the request already carried an unrelated
cookie (such as a language or theme preference cookie), the protection did
not apply, allowing a response that sets a session or other sensitive
cookie to be stored in Django's shared cache.

This issue has severity "low" according to the [Django security policy](
https://docs.djangoproject.com/en/dev/internals/security/#security-issue-severity-levels
).

Thanks to Chris Whyland for the report.


## CVE-2026-53877: Heap buffer over-read in `GDALRaster`

When `django.contrib.gis.gdal.GDALRaster` was instantiated with a bytes
object representing a raster file, the `vsi_buffer` property could
over-read the allocated buffer by approximately 32 bytes. This could result
in information disclosure of adjacent heap memory or, in rare cases, a
segmentation fault. Only rasters stored in GDAL's virtual filesystem were
affected.

This issue has severity "low" according to the [Django security policy](
https://docs.djangoproject.com/en/dev/internals/security/#security-issue-severity-levels
).

Thanks to Bence Nagy for the report.


## CVE-2026-53878: Header injection possibility since `DomainNameValidator`
accepted newlines in input

`django.core.validators.DomainNameValidator` accepted newlines in domain
names. If such values were included in HTTP responses, header injection
attacks were possible. Django itself wasn't vulnerable because
`HttpResponse` prohibits newlines in HTTP headers.

The vulnerability only affected uses of `DomainNameValidator` outside
Django form fields, as `CharField` strips newlines by default.

This issue has severity "low" according to the [Django security policy](
https://docs.djangoproject.com/en/dev/internals/security/#security-issue-severity-levels
).

Thanks to Bence Nagy for the report.


## Affected supported versions

* Django main
* Django 6.1 (currently at beta status)
* Django 6.0
* Django 5.2


## Resolution

Patches to resolve the issue have been applied to Django's
main, 6.1 (currently at beta status), 6.0, and 5.2 branches.
The patches may be obtained from the following changesets.

### CVE-2026-48588: Potential exposure of private data via cached
`Set-Cookie` response

* On the [main branch](
https://github.com/django/django/commit/6e365f8d01f2ba0bbd90968d76a42600fb8bc4b1
)
* On the [6.1 branch](
https://github.com/django/django/commit/c2a936ab7d6048acfc341dd61e6094c2dc84782f
)
* On the [6.0 branch](
https://github.com/django/django/commit/64f9a2b2283fde3ec69fb0dfe441cf0f6f411ba3
)
* On the [5.2 branch](
https://github.com/django/django/commit/721685aa7799cc9327bd202cd1f70bd012ca95a7
)

### CVE-2026-53877: Heap buffer over-read in `GDALRaster`

* On the [main branch](
https://github.com/django/django/commit/6ca2bbe2efce21010eff48f1f36a3f621d698ed8
)
* On the [6.1 branch](
https://github.com/django/django/commit/a46b417d9e441379e7f86933ec1b2fb05f63d492
)
* On the [6.0 branch](
https://github.com/django/django/commit/38dfbd27d7d4f4e6eaa087d7a90f2613fbf55b3a
)
* On the [5.2 branch](
https://github.com/django/django/commit/6c66eb8cec52b303af85c2c6e4dd00aa37654dbc
)

### CVE-2026-53878: Header injection possibility since
`DomainNameValidator` accepted newlines in input

* On the [main branch](
https://github.com/django/django/commit/3a720d0d8bf2529253b98968f10ca73daf6d693c
)
* On the [6.1 branch](
https://github.com/django/django/commit/fe3e8a0de7fad7897fa4917013d8abd507e4d756
)
* On the [6.0 branch](
https://github.com/django/django/commit/a5de13f1491f1dbf2bb0ad9b91570524ebbc8acd
)
* On the [5.2 branch](
https://github.com/django/django/commit/d5d60ed0323cddaa0ce0237a26a3d49ac21ee05e
)


## The following releases have been issued

* Django 6.0.7 ([tarball](
https://www.djangoproject.com/download/6.0.7/tarball/) | [checksums](
https://www.djangoproject.com/download/6.0.7/checksum/))
* Django 5.2.16 ([tarball](
https://www.djangoproject.com/download/5.2.16/tarball/) | [checksums](
https://www.djangoproject.com/download/5.2.16/checksum/))

The PGP key ID used for this release is Jacob Walls: [131403F4D16D8DC7](
https://github.com/jacobtylerwalls.gpg)


## General notes regarding security reporting

As always, we ask that potential security issues be reported via private
email
to `security@...ngoproject.com`, and not via Django's Trac instance, nor via
the Django Forum. Please see
[our security policies](https://www.djangoproject.com/security/) for further
information.

