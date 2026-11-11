X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/11/6
Message-ID: <CAF1aazArvpVRH2qzv3Ar9XocjiMAZysQRUUCEDXYtjGXubjVZg@mail.gmail.com>
Date: Wed, 11 Nov 2026 08:41:40 -0500
From: Dave <snoopdave@...il.com>
To: oss-security@...ts.openwall.com
Subject: Apache Roller: 15 CVEs fixed in 6.1.7
Content-Type: text/plain; charset=utf-8

On 11 November 2026 the Apache Roller PMC published 15 security advisories.
All of the issues are fixed in Apache Roller 6.1.7, and we recommend that
every installation upgrade. Some changes in 6.1.7 affect existing sites;
please read the release notes before upgrading.

Download: https://roller.apache.org/downloads/downloads.html
Release notes: https://github.com/apache/roller/blob/roller-6.1.7/CHANGES.md

Apache Roller: XML external entity processing in AtomPub entry parsing
CVE-2026-105153 (Important):
https://lists.apache.org/thread/w7dsz19261myrcwx8ssbwr67hc1wfosj
Improper Restriction of XML External Entity Reference in Apache Roller 4.0
through 6.1.6 allows an authenticated user with no weblog permissions to
read files readable by the Roller process and cause the server to issue
outbound HTTP requests to attacker-chosen destinations, by submitting a
crafted Atom entry to the AtomPub endpoint. The entry body is parsed with a
parser configuration that permits external parameter entities and external
DTD subsets, and the parse happens before any per-weblog authorization check
and before any check of whether the AtomPub feature i
endpoint is reachable by any authenticated account on a default
installation. Users are recommended to upgrade to Apa
later, which parses AtomPub entries with a hardened XML configuration and
rejects AtomPub requests while the feature is disable
Fixed in: 6.1.7
Affected: Apache Roller 4.0 through 6.1.6
Credit: Kaya Emre Arikan

Apache Roller: Cross-site request forgery through GET requests to
administrative actions
CVE-2026-118411 (Important):
https://lists.apache.org/thread/q2h1r9v5qqofxh8qds58d
Cross-Site Request Forgery (CSRF) in Apache Roller 5.0.1 through 6.1.6
allows an unauthenticated attacker to create an admin
logged-in Roller administrator opens a link that the attacker controls. The
request-token check applied only to POST requests, an
actions also accepted GET requests. Users are recommended to upgrade to
Apache Roller 6.1.7 or later, which requires POST and
actions that change data.
Fixed in: 6.1.7
Affected: Apache Roller 5.0.1 through 6.1.6
Credit: hataehoon (GitHub: dpfkdlemtp)

Apache Roller: Deserialization of untrusted data in w
responses
CVE-2026-123374 (Important):
https://lists.apache.org/thread/577orljt8673gcvcv6nvwo2tnvykyxmt
Deserialization of Untrusted Data vulnerability in Ap
Roller sends a weblog update ping, its XML-RPC client deserializes Java
object data contained in the ping target's response,
controls that response can run code in the Roller server process. This issue
affects Apache Roller from 4.0 through 6.1.6. Users a
upgrade to version 6.1.7, which removes the unsafe deserialization.
Fixed in: 6.1.7
Affected: Apache Roller 4.0 through 6.1.6
Credit: David Joudelat

Apache Roller: Weblog template access to wrapped obje
user's password hash
CVE-2026-105152 (Moderate):
https://lists.apache.org/thread/v1zondkgmfoh3y83l0l191qthmstcm39
Exposure of Sensitive Information to an Unauthorized
4.0 through 6.1.6 allows a weblog administrator to read another user's
stored password hash by authoring a custom weblog tem
wrapped persistent object behind the template's weblog or entry data, rather
than the reduced set of fields the wrapper is meant t
weblog administrators as untrusted and exposes weblog and entry data to
templates only through wrapper classes, but a public
wrapper classes returned the underlying persistent object directly,
including the stored password hash of the weblog's cr
whose entry renders on the page. No non-default configuration is required;
this affects any weblog whose administrator can autho
recommended to upgrade to Apache Roller 6.1.7 or later, which removes
template access to the underlying wrapped objects.
Fixed in: 6.1.7
Affected: Apache Roller 4.0 through 6.1.6
Credit: TungNQ_BMC-VNCSGlobal

Apache Roller: Cross-site request forgery in Planet administration lets an
attacker make the server fetch arbitrary URLs
CVE-2026-105154 (Moderate):
https://lists.apache.org/thread/kj131jvv6y30o6q89shw6
Cross-Site Request Forgery (CSRF) in the Planet feed aggregator
administration of Apache Roller 4.0 through 6.1.6 all
attacker to make the Roller server fetch a URL the attacker chooses,
including internal addresses, by inducing a logged-in
to open a crafted web page. The action that adds a Planet subscription can
be triggered cross-site; in recent releases it accept
Roller's CSRF token check does not cover. The action fetches the supplied
URL and saves the subscription, and any fetched conte
feed is then published without authentication in the aggregated Planet feed.
The Planet aggregator is enabled by default. Users ar
upgrade to Apache Roller 6.1.7 or later, which requires POST requests with a
valid CSRF token for Planet administration changes an
aggregator off by default.
Fixed in: 6.1.7
Affected: Apache Roller 4.0 through 6.1.6
Credit: dacqu4n

Apache Roller: Stored cross-site scripting through At
CVE-2026-108338 (Moderate):
https://lists.apache.org/thread/xh4kv1zpdzwtpy57hgm7h
Improper Neutralization of Input During Web Page Generation ('Cross-site
Scripting') in Apache Roller 5.0.1 through 6.1.6 allo
user with the Author role on a weblog to store script in entry tags
submitted through AtomPub. Roller's tag filter allowe
tag names, and the bundled gaurav, fauxcoly and frontpage themes and the
showEntryTags macro print tag names without escaping,
the browser of anyone who views the weblog. This matters when weblog authors
are not trusted with script (weblogAdminsUntrusted=tr
6.1.4). AtomPub is disabled by default. Users are recommended to upgrade to
Apache Roller 6.1.7 or later, which removes HTML char
including names stored earlier.
Fixed in: 6.1.7
Affected: Apache Roller 5.0.1 through 6.1.6
Credit: dacqu4n

Apache Roller: Stored cross-site scripting through cu
URLs
CVE-2026-111824 (Moderate):
https://lists.apache.org/thread/q0lbzt39tsosb99l25gqvx24d6fn263x
Improper Neutralization of Input During Web Page Gene
Scripting') in Apache Roller 6.1.6 allows an authenticated user with the
Author role on a weblog that uses a custom theme to s
in the browser of anyone who opens the file's resource URL. The fix for
CVE-2026-82387 serves uploaded media as a download un
audio, video, PDF or plain text, but media files found through a custom
theme were served with the type their path implies, a
the uploader choose that path. Media uploads are disabled by default. Users
are recommended to upgrade to Apache Roller 6.1.7 or
these files under the same rules as other media and no longer accepts the
path from the upload form.
Fixed in: 6.1.7
Affected: Apache Roller 6.1.6
Credit: VNCS-dacqu4n

Apache Roller: Unpublished entries of other weblogs readable through preview
CVE-2026-118408 (Moderate):
https://lists.apache.org/thread/kzm975k5qhdpwztdmbdfwlfwsd6vopw0
Missing Authorization in Apache Roller 4.0 through 6.
in user to read unpublished entries of a weblog they have no role in. The
entry preview checked that the user was logged in, bu
a role in the weblog being previewed. The attacker must know the weblog name
and the entry's link name. Users are recommended to u
6.1.7 or later, which requires a role in the weblog to preview its entries.
Fixed in: 6.1.7
Affected: Apache Roller 4.0 through 6.1.6
Credit: hataehoon (GitHub: dpfkdlemtp)

Apache Roller: Commenter email addresses recoverable
CVE-2026-118409 (Moderate):
https://lists.apache.org/thread/nf6c1qfdclkf61s3h8p8c
Exposure of Sensitive Information to an Unauthorized Actor in Apache Roller
4.0 through 6.1.6 allows an unauthenticated visitor t
addresses of people who left approved comments. The search index stored
commenter email addresses, and the public weblog sear
that field, including wildcard queries that confirm an address one character
at a time. Users are recommended to upgrade to Apache
and rebuild the search index.
Fixed in: 6.1.7
Affected: Apache Roller 4.0 through 6.1.6
Credit: hataehoon (GitHub: dpfkdlemtp)

Apache Roller: Stored cross-site scripting through im
CVE-2026-118413 (Moderate):
https://lists.apache.org/thread/y6cqvqh5sp31kr47347gm
Improper Neutralization of Input During Web Page Generation ('Cross-site
Scripting') in Apache Roller 4.0 through 6.1.6 allows
to store script that runs in the browsers of the weblog's visitors. Blogroll
links imported from an OPML file were not checked, an
printed them without escaping. Users are recommended to upgrade to Apache
Roller 6.1.7 or later, which accepts only web links o
them on output.
Fixed in: 6.1.7
Affected: Apache Roller 4.0 through 6.1.6
Credit: Ivan Iushkevich (Steph)

Apache Roller: Stored cross-site scripting through th
CVE-2026-118414 (Moderate):
https://lists.apache.org/thread/3grnb7pwlqygxlhpxn4dz
Improper Neutralization of Input During Web Page Generation ('Cross-site
Scripting') in Apache Roller 6.1.2 through 6.1.6 allo
administrator to store script that runs in the browsers of the weblog's
members when they open their main menu. The HTML-stri
tag that was not closed, and the main menu printed the weblog description
without escaping. Users are recommended to upgrade to
later.
Fixed in: 6.1.7
Affected: Apache Roller 6.1.2 through 6.1.6
Credit: DT25, VNCS_Global

Apache Roller: Limited weblog members can remove or c
CVE-2026-122300 (Moderate):
https://lists.apache.org/thread/s2rmc53o2rdrnq40rxomp
Missing Authorization vulnerability in Apache Roller 4.0 through 6.1.6
allows a weblog member with the Limited role to remov
that member may only read, including entries published by other members. The
entry editor checked the member's weblog role but not
permits work on the entry. Users are recommended to upgrade to Apache Roller
6.1.7 or later.
Fixed in: 6.1.7
Affected: Apache Roller 4.0 through 6.1.6
Credit: DT25

Apache Roller: Exposure of other users' email addresses through the user
search
CVE-2026-118405 (Low):
https://lists.apache.org/thread/9d4nqgq2ox0g88n9gnng8
Exposure of Sensitive Information to an Unauthorized Actor in Apache Roller
4.0 through 6.1.6 allows any logged-in user to learn
addresses. The user search in the authoring interface shows only user names,
but it also matched the search text against email add
confirm an address one character at a time. Users are recommended to upgrade
to Apache Roller 6.1.7 or later, which matches only u
are not administrators.
Fixed in: 6.1.7
Affected: Apache Roller 4.0 through 6.1.6
Credit: hataehoon (GitHub: dpfkdlemtp)

Apache Roller: Unpublished entries remain readable th
AtomPub unpublish
CVE-2026-118410 (Low):
https://lists.apache.org/thread/oy4wv2d7sy9p9kl9nnvvfsjlgsk8bnco
Exposure of Resource to Wrong Sphere in Apache Roller
allows an unauthenticated visitor to read an entry after its author has
withdrawn it to draft through the AtomPub API. The en
the weblog but stayed in the search index, and public search showed its
content. AtomPub is disabled by default. Users are re
Apache Roller 6.1.7 or later, which shows only published entries in search
results.
Fixed in: 6.1.7
Affected: Apache Roller 4.0 through 6.1.6
Credit: hataehoon (GitHub: dpfkdlemtp)

Apache Roller: Disabled accounts can sign in through OpenID
CVE-2026-118412 (Low):
https://lists.apache.org/thread/lmlcrh06ynr0tfgg2f7vwh3h9gr7b1cs
Improper Authentication in Apache Roller 5.1.0 throug
whose account an administrator has disabled to sign in again through OpenID
and read unpublished entries. The OpenID sign-in path
the account was enabled. Only sites that enable the non-default OpenID
authentication mode are affected; later major version
2.0. Users are recommended to upgrade to Apache Roller 6.1.7 or later.
Fixed in: 6.1.7
Affected: Apache Roller 5.1.0 through 6.1.6
Credit: hataehoon (GitHub: dpfkdlemtp)

Dave Johnson, on behalf of the Apache Roller PMC

