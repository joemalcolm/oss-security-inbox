X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/06/27/5
Message-ID: <BANLkTi=khwAhieJwxwRzvQ25qv8Cfhchqg@mail.gmail.com>
Date: Mon, 27 Jun 2011 15:45:06 +0800
From: YGN Ethical Hacker Group <lists@...g.net>
To: oss-security@...ts.openwall.com
Subject: CVE Request: Mambo CMS 4.6.x | Multiple Cross Site Scripting Vulnerabilities
Content-Type: text/plain; charset=utf-8

1. OVERVIEW

Mambo CMS 4.6.5 and lower versions are vulnerable to Cross Site Scripting.


2. BACKGROUND

Mambo is a full-featured, award-winning content management system that
can be used for everything from simple websites to complex corporate
applications. It is used all over the world to power government
portals, corporate intranets and extranets, ecommerce sites, nonprofit
outreach, schools, church, and community sites. Mambo's "power in
simplicity" also makes it the CMS of choice for many small businesses
and personal sites.


3. VULNERABILITY DESCRIPTION

Multiple parameters are not properly sanitized, which allows attacker
to conduct Cross Site Scripting attack.
This may allow an attacker to create a specially crafted URL that
would execute arbitrary script code in a victim's browser.
If a user has already logged in to the application, an XSS attack will
execute promptly.
If not, it will execute after the user's successful logging in.


4. VERSIONS AFFECTED

Tested on Mambo CMS 4.6.5 (current as of 2011-06-27)
