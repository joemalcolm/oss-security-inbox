X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/05/14/10
Message-ID: <20140514193755.GA21035@eldamar.local>
Date: Wed, 14 May 2014 21:37:55 +0200
From: Salvatore Bonaccorso <carnil@...ian.org>
To: oss-security@...ts.openwall.com
Cc: cve-assign@...re.org, security@...ngoproject.com
Subject: CVE Reuest: Django: Malformed URLs from user input incorrectly validated
Content-Type: text/plain; charset=utf-8

Hi

The Django project announced a new security release today:

https://www.djangoproject.com/weblog/2014/may/14/security-releases-issued/

It fixes two issues, for which one has already a CVE (CVE-2014-1418).
It also fixes a second issue, for which a CVE is missing, quoting from
the announcement:

> Issue: Malformed URLs from user input incorrectly validated
> The validation for redirects did not correctly validate some malformed
> URLs, which are accepted by some browsers. This allows a user to be
> redirected to an unsafe URL unexpectedly.
> 
> Django relies on user input in some cases (e.g.
> django.contrib.auth.views.login, django.contrib.comments, and i18n) to
> redirect the user to an "on success" URL. The security checks for
> these redirects (namely django.util.http.is_safe_url()) did not
> correctly validate some malformed URLs, such as
> http:\\\djangoproject.com, which are accepted by some browsers with
> more liberal URL parsing.
> 
> To remedy this, the validation in is_safe_url() has been tightened to
> be able to handle and correctly validate these malformed URLs.
> 
> Thanks to Peter Kuma and Gavin Wahl for reporting this issue to us.

Fixes for the various branches are also referenced. Could a CVE also
be assigned for this second issue?

Thanks in advance.

Regards,
Salvatore
