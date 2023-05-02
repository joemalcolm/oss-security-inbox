X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/05/02/2
Message-ID: <b2afc378-2836-f3b2-710e-2720cc6253f1@apache.org>
Date: Tue, 02 May 2023 17:06:49 +0000
From: Nick Vatamaniuc <vatamane@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-26268: Apache CouchDB, IBM Cloudant: Information sharing via couchjs processes 
Content-Type: text/plain; charset=utf-8

Affected versions:

- Apache CouchDB through 3.3.1
- IBM Cloudant through 8349

Description:

Design documents with matching document IDs, from databases on the same cluster, may share a mutable Javascript environment when using these design document functions:
  *  validate_doc_update

  *  list

  *  filter

  *  filter views (using view functions as filters)

  *  rewrite

  *  update



This doesn't affect map/reduce or search (Dreyfus) index functions.

Work Arounds:

Avoid using design documents from untrusted sources which may attempt to cache or store data in the Javascript environment.

Credit:

Nick Vatamaniuc vatamane@...che.org (finder)

References:

https://couchdb.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-26268

