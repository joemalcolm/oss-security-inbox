X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/03/8
Message-ID: <CAL4K_NaMmkNskxdkJvdG9xzkno6uQmdFHBh0hJNqkq7U9nnDCg@mail.gmail.com>
Date: Tue, 3 Nov 2026 10:48:09 -0500
From: Jacob Walls <jwalls@...ngoproject.com>
To: oss-security@...ts.openwall.com
Cc: Django Security Team <security@...ngoproject.com>
Subject: Django CVE-2026-108147, CVE-2026-111211, CVE-2026-111362, CVE-2026-113593, CVE-2026-113733, and CVE-2026-114582
Content-Type: text/plain; charset=utf-8

* Announce:
https://www.djangoproject.com/weblog/2026/nov/03/security-releases/

* CVE JSON Record for CVE-2026-108147:
https://www.cve.org/CVERecord?id=CVE-2026-108147

* CVE JSON Record for CVE-2026-111211:
https://www.cve.org/CVERecord?id=CVE-2026-111211

* CVE JSON Record for CVE-2026-111362:
https://www.cve.org/CVERecord?id=CVE-2026-111362

* CVE JSON Record for CVE-2026-113593:
https://www.cve.org/CVERecord?id=CVE-2026-113593

* CVE JSON Record for CVE-2026-113733:
https://www.cve.org/CVERecord?id=CVE-2026-113733

* CVE JSON Record for CVE-2026-114582:
https://www.cve.org/CVERecord?id=CVE-2026-114582

In accordance with [our security release policy](
https://docs.djangoproject.com/en/dev/internals/security/),
the Django team is issuing releases for
[Django 6.1.3](https://docs.djangoproject.com/en/dev/releases/6.1.3/),
[Django
6.0.10](https://docs.djangoproject.com/en/dev/releases/6.0.10/), and [Django
5.2.19](https://docs.djangoproject.com/en/dev/releases/5.2.19/).
These releases address the security issues detailed below. We encourage all
users of Django to upgrade as soon as possible.

## CVE-2026-108147: Potential memory exhaustion in `MultiPartParser` via
base64-encoded file upload

When using `django.http.multipartparser.MultiPartParser`, multipart uploads
with `Content-Transfer-Encoding: base64` could be buffered entirely in
memory,
regardless of `FILE_UPLOAD_MAX_MEMORY_SIZE`, before being passed to upload
handlers, potentially consuming excessive memory.

This issue has severity "low" according to the [Django Security Policy](
https://docs.djangoproject.com/en/dev/internals/security/#security-issue-severity-levels
).

Thanks to Ignacy Kujawa for the report.


## CVE-2026-111211: Potential log injection via unescaped geometry form
values

`django.contrib.gis.forms.GeometryField` and its widgets logged invalid
submitted values directly, allowing control characters (e.g. newlines or
ANSI
escape sequences) to be written unescaped into logs. This could enable log
injection or forgery, letting attackers manipulate log appearance or
structure, especially in logs processed by external systems or viewed in
terminals.

This issue has severity "low" according to the [Django Security Policy](
https://docs.djangoproject.com/en/dev/internals/security/#security-issue-severity-levels
).

Thanks to Aaron chen for the report.


## CVE-2026-111362: Server-side request forgery via crs member of GeoJSON
geometries

Earlier versions of the [GeoJSON spec](
https://www.rfc-editor.org/info/rfc7946/#section-4) allowed specifying a
coordinate reference system (CRS) by URL. Since GDAL still resolves these
URLs, any validation, save, or query path where a geometry is instantiated
from
user input allowed an attacker to submit a malicious CRS that would make a
network request as the Django process user, or read a file, or both.

Lookups against spatial fields, the `GeometryField` form field, and
`GEOSGeometry` now reject GeoJSON geometries with CRS references to
external resources. The `DataSource` and
`LayerMapping` utilities for loading trusted data continue to accept these
values.

This issue has severity "moderate" according to the [Django Security
Policy](
https://docs.djangoproject.com/en/dev/internals/security/#security-issue-severity-levels
).

Thanks to Submersion Security Research Team for the report.


## CVE-2026-113593: Potential exposure of private data via empty and
missing `Vary` headers

`UpdateCacheMiddleware` and `cache_page()` generated the same cache key
for a request that omitted a header listed in the response's `Vary` header
and a request that sent that header with an empty value. As a result, a
response cached for one of these requests could be served to the other,
which
could lead to the exposure of private data.

Cache keys now distinguish between absent and empty header values, as
required
by [RFC 9111#section-4.1](
https://datatracker.ietf.org/doc/html/rfc9111.html#section-4.1).

Responses previously cached for requests that omitted a header listed in
`Vary` will no longer be matched, and will be cached again on the next
request.

This issue has severity "low" according to the [Django security policy](
https://docs.djangoproject.com/en/dev/internals/security/#security-issue-severity-levels
).

Thanks to Andrew Gonzalez for the report.


## CVE-2026-113733: Password hash disclosure to "view only" admin users
with custom user models

Admin users with the view (but not change) permission to a user model were
displayed the entire password hash when the model was not `AUTH_USER_MODEL`,
or when `AUTH_USER_MODEL` inherited its `password` field from a concrete
parent model through multi-table inheritance.

This issue has severity "low" according to the [Django Security Policy](
https://docs.djangoproject.com/en/dev/internals/security/#security-issue-severity-levels
).

Thanks to Aaron chen for the report.


## CVE-2026-114582: Server-side request forgery via `SpatialReference`
string input

`SpatialReference` passed string input to GDAL,
which by default resolves URLs and reads files. This behavior was not
documented by Django. Other affected methods included
`GEOSGeometry.transform()`, `OGRGeometry.transform()`,
`GDALRaster.transform()`,
the `srs` setter of `OGRGeometry`, and the `srs` and `srid` setters of
`GDALRaster`.
A URL or file path reaching any of these would issue an outbound request or
read a file as the Django process user. The attack vectors could be
combined to
reveal local file contents by observing outbound requests.

`SpatialReference` now disables network and file access when parsing string
input on GDAL 3.9 and later. As a consequence, file paths and URLs are no
longer accepted as `SpatialReference` inputs. Dictionary references using
the
`DICT:` prefix, including those prefixed with `ESRI::`, are rejected on all
GDAL versions.

Full protection requires GDAL 3.9 or later. Integer SRIDs are looked up
directly in the EPSG database, so prefer them when the input is untrusted.
Or,
if strings must be used on lower GDAL versions, compare to an allow list.
The
new `gis.W001` system check warns when the installed version of GDAL is not
at least 3.9.

This issue has severity "low" according to the [Django security policy](
https://docs.djangoproject.com/en/dev/internals/security/#security-issue-severity-levels
).

Thanks to Adraca for the report.



## Affected supported versions

* Django main
* Django 6.1
* Django 6.0
* Django 5.2

## Resolution

Patches to resolve the issue have been applied to Django's
main, 6.1, 6.0, and 5.2 branches.
The patches may be obtained from the following changesets.

### CVE-2026-108147: Potential memory exhaustion in `MultiPartParser` via
base64-encoded file upload

* On the [main branch](
https://github.com/django/django/commit/5d95d9236fa4ededfb1931c60a65432385ece85f
)
* On the [6.1 branch](
https://github.com/django/django/commit/8b435411f11d69a0dd41a8837654323502e6058e
)
* On the [6.0 branch](
https://github.com/django/django/commit/a29ee4a55acedbe7ba0cb4d2db28c4e4d2848e02
)
* On the [5.2 branch](
https://github.com/django/django/commit/4bd1f59a80adafddbd47527c66d92d6a224244d8
)

### CVE-2026-111211: Potential log injection via unescaped geometry form
values

* On the [main branch](
https://github.com/django/django/commit/af4319f7217e33ad5db747226765f09b49ec07ba
)
* On the [6.1 branch](
https://github.com/django/django/commit/b336d9a4e8a919d2e5f979b663de2b27e245b793
)
* On the [6.0 branch](
https://github.com/django/django/commit/1b747694d6a68a6b5d48cbe81c71053092a5d374
)
* On the [5.2 branch](
https://github.com/django/django/commit/b83bf870ee0006ab0dd84a01d1f3b0391320a51a
)

### CVE-2026-111362: Server-side request forgery via crs member of GeoJSON
geometries

* On the [main branch](
https://github.com/django/django/commit/ecb2b77b49890d6b2120f73fb3d7eb7ac7650143
)
* On the [6.1 branch](
https://github.com/django/django/commit/649fb7985f67d5936dfb8caae6a54c0870dc8eec
)
* On the [6.0 branch](
https://github.com/django/django/commit/e938f676fcca72f41247b0e96d4f0805e1722913
)
* On the [5.2 branch](
https://github.com/django/django/commit/31bef742da017bc71fdce9298c30984aad844102
)

### CVE-2026-113593: Potential exposure of private data via empty and
missing `Vary` headers

* On the [main branch](
https://github.com/django/django/commit/c0b7e5e4e4546e8ddc58262f1945938bb9d9ac2d
)
* On the [6.1 branch](
https://github.com/django/django/commit/55e2e009b4f3996e5c55af7b22a8c41eb826e892
)
* On the [6.0 branch](
https://github.com/django/django/commit/2006a2b068766bf332f1afcc32b7614d8e5759a2
)
* On the [5.2 branch](
https://github.com/django/django/commit/9007fecd3633cfd90b093ebe106af564347c8aee
)

### CVE-2026-113733: Password hash disclosure to "view only" admin users
with custom user models

* On the [main branch](
https://github.com/django/django/commit/f5b039a619b3b5394ea5b966e17c7546fda6f937
)
* On the [6.1 branch](
https://github.com/django/django/commit/7d875c0a49d2a59335c65f6bf57970a5bac03be2
)
* On the [6.0 branch](
https://github.com/django/django/commit/67cce9dcd23ddeec41ccf0abfe3431e3cd724365
)

### CVE-2026-114582: Server-side request forgery via `SpatialReference`
string input

* On the [main branch](
https://github.com/django/django/commit/3a2ec4378b53c7b8ff5283ad7eba624ffa6f2b2f
)
* On the [6.1 branch](
https://github.com/django/django/commit/a658355eb51feccbe90b5ca2e3b7f3543cd99e01
)
* On the [6.0 branch](
https://github.com/django/django/commit/1c980729e53ef119d43a01d32ead30116c46cd36
)
* On the [5.2 branch](
https://github.com/django/django/commit/8bda4d0db15f28828d8db000287562efae5ce063
)


## The following releases have been issued

* Django 6.1.3 ([tarball](
https://www.djangoproject.com/download/6.1.3/tarball/) | [checksums](
https://www.djangoproject.com/download/6.1.3/checksum/))
* Django 6.0.10 ([tarball](
https://www.djangoproject.com/download/6.0.10/tarball/) | [checksums](
https://www.djangoproject.com/download/6.0.10/checksum/))
* Django 5.2.19 ([tarball](
https://www.djangoproject.com/download/5.2.19/tarball/) | [checksums](
https://www.djangoproject.com/download/5.2.19/checksum/))

The PGP key ID used for this release is Jacob Walls: [131403F4D16D8DC7](
https://github.com/jacobtylerwalls.gpg)


## General notes regarding security reporting

As always, we ask that potential security issues be reported via private
email
to `security@...ngoproject.com`, and not via Django's Trac instance, nor via
the Django Forum. Please see
[our security policies](https://www.djangoproject.com/security/) for further
information.

