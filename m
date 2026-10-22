X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/22/32
Message-ID: <bb65954e-994c-4f9a-b4c2-ef00ed787371@plone.org>
Date: Thu, 22 Oct 2026 23:31:07 +0200
From: "Maurits van Rees (Plone)" <maurits@...ne.org>
To: oss-security@...ts.openwall.com
Subject: Plone security fix 20261022: information disclosure
Content-Type: text/plain; charset=utf-8

On behalf of the Plone/Zope Security Team I announce an information 
disclosure vulnerability in `plone.app.content`. See the vulnerability 
advisory:
https://github.com/plone/plone.app.content/security/advisories/GHSA-vhwp-qc29-j4xp
Summary: the users and groups of a Plone site can be listed by an 
unauthenticated user. The results include the user id and full name of 
the users.

This impacts Plone sites that have the Plone REST API enabled but do not 
have the "many users?" and "many groups?" settings enabled. So a 
workaround is to enable those settings.

Fixes are available for the supported Plone versions:

* for Plone 6.0 and 6.1: use `plone.app.content` 4.2.1
* for Plone 6.2: use `plone.app.content` 5.0.1

Additionally, you should upgrade `pip`, and `certifi` to versions that 
fix this' weeks certificate security incident:
https://discuss.python.org/t/information-for-python-users-regarding-emudhra-emsign-ca-certificate-security-incident/109576

Also, if you are on Python 3.11 or higher, and you use Plone 6.2, you 
should upgrade to Pillow 13.0.0 for lots of security fixes. On earlier 
Plone versions this may work as well, but there we currently use Pillow 
11, so that would be a big version jump, so you may want to test this 
some more.

You should update your Plone sites to the following versions (formatted 
as pip constraints here):

For Plone 6.2:

```
plone.app.content==5.0.1
pip==26.2.2
certifi==2026.10.19
Pillow==13.0.0; python_version > "3.10"
Pillow==12.3.0; python_version == "3.10"
```

For Plone 6.0 and 6.1:

```
plone.app.content==4.2.1
pip==26.2.2
certifi==2026.10.19
```

Meanwhile Plone 6.2.2.1 has been released with all the above fixes. The 
Plone 6.2.2.1 Docker images have newer base OS images that have related 
fixes, for example a newer `ca-certificates` package.

Official announcement (same text):
https://plone.org/security/announcements/plone-security-advisory-20261022

Maurits van Rees
Plone Release Manager
Plone/Zope Security Team


