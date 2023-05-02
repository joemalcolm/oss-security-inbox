Received: (qmail 32212 invoked by uid 550); 2 May 2023 17:14:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28278 invoked from network); 2 May 2023 17:07:40 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Nick Vatamaniuc <vatamane@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <b2afc378-2836-f3b2-710e-2720cc6253f1@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 02 May 2023 17:06:49 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-26268: Apache CouchDB, IBM Cloudant: Information sharing
 via couchjs processes 

Affected versions:

- Apache CouchDB through 3.3.1
- IBM Cloudant through 8349

Description:

Design documents with matching document IDs, from databases on the same clu=
ster, may share a mutable Javascript environment when using these design do=
cument functions:
  *  validate_doc_update

  *  list

  *  filter

  *  filter views (using view functions as filters)

  *  rewrite

  *  update



This doesn't affect map/reduce or search (Dreyfus) index functions.

Work Arounds:

Avoid using design documents from untrusted sources which may attempt to ca=
che or store data in the Javascript environment.

Credit:

Nick Vatamaniuc vatamane@apache.org (finder)

References:

https://couchdb.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-26268

