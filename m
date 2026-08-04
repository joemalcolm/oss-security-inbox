X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/04/6
Message-ID: <CAJVoTUvcwa=JBJyvcEvhgxmJVQihLFVfJAZLsRUyoXZF5mNjDQ@mail.gmail.com>
Date: Tue, 4 Aug 2026 12:53:46 -0300
From: Natalia Bidart <nataliabidart@...ngoproject.com>
To: oss-security@...ts.openwall.com
Cc: Django Security Team <security@...ngoproject.com>
Subject: Django CVE-2026-15307, CVE-2026-15337, CVE-2026-15830, and CVE-2026-15920
Content-Type: text/plain; charset=utf-8

* Announce:
https://www.djangoproject.com/weblog/2026/aug/04/security-releases/

* CVE JSON Record for CVE-2026-15307:
https://www.cve.org/CVERecord?id=CVE-2026-15307

* CVE JSON Record for CVE-2026-15337:
https://www.cve.org/CVERecord?id=CVE-2026-15337

* CVE JSON Record for CVE-2026-15830:
https://www.cve.org/CVERecord?id=CVE-2026-15830

* CVE JSON Record for CVE-2026-15920:
https://www.cve.org/CVERecord?id=CVE-2026-15920

In accordance with [our security release policy](
https://docs.djangoproject.com/en/dev/internals/security/),
the Django team is issuing releases for
[Django 6.0.8](https://docs.djangoproject.com/en/dev/releases/6.0.8/) and
[Django 5.2.17](https://docs.djangoproject.com/en/dev/releases/5.2.17/).
These releases address the security issues detailed below. We encourage all
users of Django to upgrade as soon as possible.

## CVE-2026-15307: Server-side file-write and request forgery via spatial
lookups

Spatial lookups allowed `str` and `dict` lookup values to be passed to
`GDALRaster` when they represented rasters. Depending on the raster driver,
this could
write a file to disk (in some cases enabling remote code execution) or
issue a
network request as the Django process user. Because the admin changelist
permits filtering via `ModelAdmin.lookup_allowed()`, the flaw was reachable
by
staff users with view permissions on any registered model containing a
spatial
field.

The following types are now disallowed by spatial lookups:

- `dict`
- A `str` that is not a valid `GEOSGeometry`, e.g. a serialized dictionary

This is a backward incompatible change. As a reminder, all untrusted user
input
should be validated before use. For that reason, assignments to model fields
are unaffected and still accept these input types.

For guidance on how to keep using these types in spatial lookups, on
validating
untrusted input, and on further security considerations, see the
[raster security considerations](
https://docs.djangoproject.com/en/dev/ref/contrib/gis/gdal/#raster-security)
documentation.

This issue has severity "high" according to the [Django security policy](
https://docs.djangoproject.com/en/dev/internals/security/#security-issue-severity-levels
).

Thanks to Bence Nagy, localhost-detect, and kimchunbok_ for the report.

## CVE-2026-15337: Potential denial-of-service vulnerability in
`check_for_language()`

`django.utils.translation.check_for_language()` was subject to a potential
denial-of-service
attack when checking many distinct, very long language codes. Each code was
used as a
key in an in-memory cache, consuming process memory.

The `language` value reaches this function through the
`django.views.i18n.set_language()`
view (not active by default) from POST data. Since request data is limited
by
`DATA_UPLOAD_MAX_MEMORY_SIZE` and the cache is configured to store a maximum
number of entries, the memory that could be consumed was bounded.

To mitigate this vulnerability, language codes longer than 500 characters
are now rejected
before the cached lookup.

This issue has severity "low" according to the [Django security policy](
https://docs.djangoproject.com/en/dev/internals/security/#security-issue-severity-levels
).

Thanks to Jaeyoung Jang for the report.

## CVE-2026-15830: Potential denial-of-service vulnerability via nested
geometry collections

`GEOSGeometry` was subject to a potential denial-of-service attack when
provided deeply nested `GEOMETRYCOLLECTION` objects, leading to a
segmentation
fault in GEOS. A maximum depth of 198 `GEOMETRYCOLLECTION`s is now enforced
for
the well-known text (WKT) format, and a maximum number of 198
`GEOMETRYCOLLECTION`s in total (breadth and depth) is enforced for
well-known
binary (WKB).

Lookups against spatial fields and the `GeometryField` form field were also
affected.

The limit can be customized through the new `max_geom_collections` argument,
available on `GEOSGeometry`, the form field, and the model field. The limit
is
not applied to GeoJSON inputs, as they were parsed by GDAL and are not
affected.

This issue has severity "moderate" according to the [Django security
policy](
https://docs.djangoproject.com/en/dev/internals/security/#security-issue-severity-levels
).

Thanks to Andrew MacPherson and kimchunbok_ for the report.

## CVE-2026-15920: Potential cross-site scripting via `URLField` values in
the admin

The admin renders `URLField` values as clickable links on changelist views
and read-only fields.
The link was generated without validating the value as a safe URL, so a
stored value using a
potentially dangerous scheme was rendered as a link.

`URLField` values shown via `display_for_field` are now validated using
`URLValidator`
before a link is rendered, and displayed as plain text if validation is
failed.

This issue has severity "moderate" according to the [Django security
policy](
https://docs.djangoproject.com/en/dev/internals/security/#security-issue-severity-levels
).

Thanks to Egor Saltykov for the report.

## Affected supported versions

* Django main
* Django 6.1 (currently at release candidate status)
* Django 6.0
* Django 5.2

## Resolution

Patches to resolve the issue have been applied to Django's
main, 6.1 (currently at release candidate status), 6.0, and 5.2 branches.
The patches may be obtained from the following changesets.

### CVE-2026-15307: Server-side file-write and request forgery via spatial
lookups

* On the [main branch](
https://github.com/django/django/commit/f1949c1f9758947ade984c895ff16bef46f56520
)
* On the [6.1 branch](
https://github.com/django/django/commit/39b3e2d0c743a338def6c473086ebc06865e86b6
)
* On the [6.0 branch](
https://github.com/django/django/commit/208f80cb682868b584ed0a78f23e4ba6304212aa
)
* On the [5.2 branch](
https://github.com/django/django/commit/115ffd0463a765ab1cc93de18e94b5459b8a300e
)

### CVE-2026-15337: Potential denial-of-service vulnerability in
`check_for_language()`

* On the [main branch](
https://github.com/django/django/commit/27137e655e442e81095f1f8f77ff3870d9fdf169
)
* On the [6.1 branch](
https://github.com/django/django/commit/5b3523d29be25948e1dd90b3863a002f00fc865f
)
* On the [6.0 branch](
https://github.com/django/django/commit/224dbc832586ad5cfb0237c2ff30d14baeaddc6f
)
* On the [5.2 branch](
https://github.com/django/django/commit/c72a5dbb64d0777f3f471f1be94e8b2ca91e0959
)

### CVE-2026-15830: Potential denial-of-service vulnerability via nested
geometry collections

* On the [main branch](
https://github.com/django/django/commit/d2e59b77fe18de318a8272c2a7bbc798d84d1d0d
)
* On the [6.1 branch](
https://github.com/django/django/commit/9e4a3f186b6b07b483bfd9195ea06734663fcd06
)
* On the [6.0 branch](
https://github.com/django/django/commit/6af5da31775417c610dbf9c3f1b5b8333d42daf6
)
* On the [5.2 branch](
https://github.com/django/django/commit/ba80833fa656dd09660b97c4429331067db1b080
)

### CVE-2026-15920: Potential cross-site scripting via `URLField` values in
the admin

* On the [main branch](
https://github.com/django/django/commit/47511a21026cdd721d8fbf8571cc079bc38bb46d
)
* On the [6.1 branch](
https://github.com/django/django/commit/5a260d309a4c8010c2ebda24eb758a5d95e2508a
)
* On the [6.0 branch](
https://github.com/django/django/commit/13debb622a32720bda1bccda7622fd14fbf3931b
)
* On the [5.2 branch](
https://github.com/django/django/commit/b9adb81339cc418f8f56b1050cca6dfec3ab6349
)

## The following releases have been issued

* Django 6.0.8 ([tarball](
https://www.djangoproject.com/download/6.0.8/tarball/) | [checksums](
https://www.djangoproject.com/download/6.0.8/checksum/))
* Django 5.2.17 ([tarball](
https://www.djangoproject.com/download/5.2.17/tarball/) | [checksums](
https://www.djangoproject.com/download/5.2.17/checksum/))

The PGP key ID used for this release is Natalia Bidart: [2EE82A8D9470983E](
https://github.com/nessita.gpg)

## General notes regarding security reporting

As always, we ask that potential security issues be reported via private
email
to `security@...ngoproject.com`, and not via Django's Trac instance, nor via
the Django Forum. Please see
[our security policies](https://www.djangoproject.com/security/) for further
information.

