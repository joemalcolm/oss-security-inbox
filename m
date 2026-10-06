X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/06/3
Message-ID: <CAN+fQHyG9O-QgKjaRAGaJ678OWB5KH2aQQHKYnYka9qmH+sjpw@mail.gmail.com>
Date: Tue, 6 Oct 2026 15:38:18 +0200
From: Sarah Boyce <sarahboyce@...ngoproject.com>
To: oss-security@...ts.openwall.com
Cc: Django Security Team <security@...ngoproject.com>
Subject: Django CVE-2026-77050, CVE-2026-84429, CVE-2026-87890, and CVE-2026-87975
Content-Type: text/plain; charset=utf-8

* Announce:
https://www.djangoproject.com/weblog/2026/oct/06/security-releases/

* CVE JSON Record for CVE-2026-77050:
https://www.cve.org/CVERecord?id=CVE-2026-77050

* CVE JSON Record for CVE-2026-84429:
https://www.cve.org/CVERecord?id=CVE-2026-84429

* CVE JSON Record for CVE-2026-87890:
https://www.cve.org/CVERecord?id=CVE-2026-87890

* CVE JSON Record for CVE-2026-87975:
https://www.cve.org/CVERecord?id=CVE-2026-87975

In accordance with [our security release policy](
https://docs.djangoproject.com/en/dev/internals/security/),
the Django team is issuing releases for
[Django 6.1.2](https://docs.djangoproject.com/en/dev/releases/6.1.2/),
[Django
6.0.9](https://docs.djangoproject.com/en/dev/releases/6.0.9/), and [Django
5.2.18](https://docs.djangoproject.com/en/dev/releases/5.2.18/).
These releases address the security issues detailed below. We encourage all
users of Django to upgrade as soon as possible.

## CVE-2026-77050: Potential denial-of-service vulnerability in
`get_supported_language_variant()`

`django.utils.translation.get_supported_language_variant()` was subject to
a potential denial-of-service attack when processing many distinct, very
long
language codes. Language codes were used as keys in an in-memory cache
before
their length was limited, potentially consuming excessive process memory.

To mitigate this vulnerability, language codes longer than 500 characters
are
now rejected or truncated before the cached lookup.

This issue has severity "low" according to the [Django security policy](
https://docs.djangoproject.com/en/dev/internals/security/#security-issue-severity-levels
).

Thanks to Gleb Lizunov for the report.


## CVE-2026-84429: Potential denial-of-service vulnerability in HTTP header
parsing

`django.utils.http.parse_header_parameters()` was subject to a potential
denial-of-service attack due to quadratic time complexity when parsing a
value with many separators inside a quoted parameter. An unauthenticated
request could reach this parsing through headers such as `Accept` or
`Content-Type`, for instance via the content negotiation performed by
`HttpRequest.accepts()`. The per-call length limit does not bound the
combined size of repeated headers.

The undocumented `django.utils.http.parse_header_parameters()` function now
uses Python's `email.message.Message` for parsing. As a result, parsing of
some malformed or unusual header values may differ, for example, RFC 2231
values with a missing encoding are now decoded.

This issue has severity "moderate" according to the [Django security
policy](
https://docs.djangoproject.com/en/stable/internals/security/#severity-levels
).

Thanks to Jisung Chae for the report.


## CVE-2026-87890: Potential request forgery via spatial lookup byte values

Spatial lookups accepted raster values provided as `bytes` without requiring
them to be explicitly wrapped in `django.contrib.gis.gdal.GDALRaster`.
Although these values were opened through GDAL's in-memory virtual
filesystem,
they could contain a VRT document referencing an external raster source.
This
could cause GDAL to issue network requests as the Django process user while
preparing the lookup.

This issue could be exploited by applications that passed
attacker-controlled
bytes directly to a spatial lookup. It was overlooked in the fix for
CVE-2026-15307.

To mitigate this issue, raster values provided as `bytes` must now be
wrapped
in `GDALRaster` before being used in spatial lookups. Byte values
representing
valid hexadecimal geometries remain accepted.

This is a backward incompatible change. As a reminder, all untrusted user
input
should be validated before use.

This issue has severity "moderate" according to the [Django security
policy](
https://docs.djangoproject.com/en/dev/internals/security/#security-issue-severity-levels
).

Thanks to sicksec for the report.


## CVE-2026-87975: Privilege abuse in model formsets with editable primary
keys

Model formsets incorrectly allowed forged `POST` data to either delete
instances outside the limiting queryset or create instances via `edit-only`
formsets when the model's primary key could be set through the form,
such as with: a `OneToOneField` (or parent link used as the primary key
of an inline formset's model), or a natural or UUID primary key included
in the form's fields. Models using the default `BigAutoField` primary key
were not affected.

This issue has severity "moderate" according to the [Django security
policy](
https://docs.djangoproject.com/en/stable/internals/security/#severity-levels
).

Thanks to Seonggwon Yoon for the report.



## Affected supported versions

* Django main
* Django 6.1
* Django 6.0
* Django 5.2

## Resolution

Patches to resolve the issue have been applied to Django's
main, 6.1, 6.0, and 5.2 branches.
The patches may be obtained from the following changesets.

### CVE-2026-77050: Potential denial-of-service vulnerability in
`get_supported_language_variant()`

* On the [main branch](
https://github.com/django/django/commit/c88b304cc2d90fc37d3bd1f5f3829706fa6c13bc
)
* On the [6.1 branch](
https://github.com/django/django/commit/7e878b0f8bd42260903e6a0d38996a93b0474a0b
)
* On the [6.0 branch](
https://github.com/django/django/commit/3d32ee80ae52745d686bf94d3555000ddf073267
)
* On the [5.2 branch](
https://github.com/django/django/commit/02a69e3791e3df23d45ea4ea7e7fc489f0eef2be
)

### CVE-2026-84429: Potential denial-of-service vulnerability in HTTP
header parsing

* On the [main branch](
https://github.com/django/django/commit/7ff7fcc0508864a4bc39693128ace38b1e95a890
)
* On the [6.1 branch](
https://github.com/django/django/commit/de56deeabd4c48dfb5193f0001469d80102fb367
)
* On the [6.0 branch](
https://github.com/django/django/commit/3d8f121695c21234aff3071de0d38b6bd38c3f52
)
* On the [5.2 branch](
https://github.com/django/django/commit/6ecd66e09a383be004a78a3a738ea9727ff07b0e
)

### CVE-2026-87890: Potential request forgery via spatial lookup byte values

* On the [main branch](
https://github.com/django/django/commit/ebcb13b327301f28cbc6cd5e4988a719f00575aa
)
* On the [6.1 branch](
https://github.com/django/django/commit/4e77ef1e69c94780006b82795aa7db101996c3af
)
* On the [6.0 branch](
https://github.com/django/django/commit/a2347fe8234a1831d56c875acc0ea51e0742957c
)
* On the [5.2 branch](
https://github.com/django/django/commit/dd0558d1617619e0d66163675ef02135d0f54e5f
)

### CVE-2026-87975: Privilege abuse in model formsets with editable primary
keys

* On the [main branch](
https://github.com/django/django/commit/83cbd21be57483e6b3eb6e4688a561c841aff75e
)
* On the [6.1 branch](
https://github.com/django/django/commit/cce6c57ed30ea83725f9d6abb2fe5ee932bab107
)
* On the [6.0 branch](
https://github.com/django/django/commit/b83ab92bc5474558b083a840ea4628b3261b2cfe
)
* On the [5.2 branch](
https://github.com/django/django/commit/ff27883ca055aa9ab23015b50674a5b10dfe5a41
)


## The following releases have been issued

* Django 6.1.2 ([tarball](
https://www.djangoproject.com/download/6.1.2/tarball/) | [checksums](
https://www.djangoproject.com/download/6.1.2/checksum/))
* Django 6.0.9 ([tarball](
https://www.djangoproject.com/download/6.0.9/tarball/) | [checksums](
https://www.djangoproject.com/download/6.0.9/checksum/))
* Django 5.2.18 ([tarball](
https://www.djangoproject.com/download/5.2.18/tarball/) | [checksums](
https://www.djangoproject.com/download/5.2.18/checksum/))

The PGP key ID used for this release is Sarah Boyce: [3955B19851EA96EF](
https://github.com/sarahboyce.gpg)


## General notes regarding security reporting

As always, we ask that potential security issues be reported via private
email
to `security@...ngoproject.com`, and not via Django's Trac instance, nor via
the Django Forum. Please see
[our security policies](https://www.djangoproject.com/security/) for further
information.

