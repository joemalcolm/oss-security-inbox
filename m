X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/09/09/7
Message-ID: <1930913641.1928491284039591379.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Thu, 9 Sep 2010 09:39:51 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security <oss-security@...ts.openwall.com>
Cc: coley <coley@...re.org>
Subject: CVE Assignment: django
Content-Type: text/plain; charset=utf-8

This was just pointed out to me:

http://www.djangoproject.com/weblog/2010/sep/08/security-release/

"""
The provided template tag for inserting the CSRF token into forms -- {% csrf_token %} -- explicitly trusts the cookie value, and displays it as-is. Thus, an attacker who is able to tamper with the value of the CSRF cookie can cause arbitrary content to be inserted, unescaped, into the outgoing HTML of the form, enabling cross-site scripting (XSS) attacks.
"""

Please use CVE-2010-3082

Thanks.

-- 
    JB
