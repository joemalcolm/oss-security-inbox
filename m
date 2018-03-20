X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/03/20/1
Message-Id: <F7427CA5-7D24-4B79-B881-19AAE8FF6305@wonko.com>
Date: Mon, 19 Mar 2018 19:50:42 -0700
From: Ryan Grove <ryan@...ko.com>
To: oss-security@...ts.openwall.com
Subject: Sanitize <= 4.6.2 HTML injection and XSS
Content-Type: text/plain; charset=utf-8

Sanitize is a Ruby library that removes unacceptable HTML and CSS from a string based on a whitelist. Versions 4.6.2 and below contain an HTML injection vulnerability that allows XSS.

Details are included below, and can also be found at:

https://github.com/rgrove/sanitize/issues/176 

====

# Sanitize XSS vulnerability

This is a public disclosure of an HTML injection vulnerability in Sanitize that could allow XSS. I’d like to thank the Shopify Application Security Team for responsibly reporting this vulnerability.

## Description

A specially crafted HTML fragment can cause Sanitize to allow non-whitelisted attributes to be used on a whitelisted HTML element.

## Affected Versions

Sanitize < 4.6.3, but only in combination with libxml2 >= 2.9.2

## Mitigation

Upgrade to Sanitize 4.6.3.

## History of this vulnerability

- 2018-03-19: Reported by Shopify Application Security Team via email
- 2018-03-19: Sanitize 4.6.3 released with a fix
- 2018-03-19: Initial vulnerability report published


