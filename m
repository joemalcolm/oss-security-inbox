X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/01/11/6
Message-ID: <CALKeL-MkfdjgQXwtCBerW_rU=Z4irnMez9nXTEDJA8O8tm2yng@mail.gmail.com>
Date: Tue, 11 Jan 2022 13:21:26 -0800
From: Mike Jumper <mjumper@...che.org>
To: announce@...che.org, announce@...camole.apache.org,  dev@...camole.apache.org, user@...camole.apache.org
Cc: security@...camole.apache.org, oss-security@...ts.openwall.com
Subject: [SECURITY] CVE-2021-41767: Apache Guacamole: Private tunnel identifier may be included in the non-private details of active connections
Content-Type: text/plain; charset=utf-8

Severity: moderate

Description:

Apache Guacamole 1.3.0 and older may incorrectly include a private
tunnel identifier in the non-private details of some REST responses.
This may allow an authenticated user who already has permission to
access a particular connection to read from or interact with another
user's active use of that same connection.

Credit:

We would like to thank Damian Velardo (Australia and New Zealand
Banking Group) for reporting this issue.
