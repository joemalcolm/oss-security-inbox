X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/04/12/4
Message-ID: <CAJRvFdp+WMVa5n5DRT53Ov4h59doeLGOz11A89Oa4ou2k++t_Q@mail.gmail.com>
Date: Mon, 12 Apr 2021 16:09:59 -0500
From: Mike Drob <mdrob@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-27905: Apache Solr: SSRF vulnerability with the Replication handler
Content-Type: text/plain; charset=utf-8

Description:

The ReplicationHandler (normally registered at "/replication" under a
Solr core) has a "masterUrl" (also "leaderUrl" alias) parameter that
is used to designate another ReplicationHandler on another Solr core
to replicate index data into the local core.  To prevent a SSRF
vulnerability, Solr ought to check these parameters against a similar
configuration it uses for the "shards" parameter.  Prior to this bug
getting fixed, it did not.

This problem affects essentially all Solr versions prior to it getting
fixed in 8.8.2.

This issue is being tracked as SOLR-15217

Mitigation:

Ensure that any access to the replication handler is purely internal
to Solr.  Typically, it's only accessed externally for
diagnostic/informational purposes.

Credit:

Reported by Caolinhong(Skay) from QI-ANXIN Cert (QI-ANXIN Technology Group Inc.)

