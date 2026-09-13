X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/13/19
Message-ID: <3259e0fb-f6a7-d61f-247f-4e5a3cc68127@apache.org>
Date: Sun, 13 Sep 2026 05:48:41 +0000
From: Richard Zowalla <rzo1@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82441: Apache Storm Nimbus: Cross-Tenant Blob Deletion and Cluster Denial of Service via Unvalidated Topology Dependency Keys 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Storm Nimbus (org.apache.storm:storm-server) 3.0.0 before 3.1.0

Description:

Description

A submitted topology carries two lists of blobstore keys, `dependency_jars` and `dependency_artifacts`,
which the client fills in after uploading the corresponding blobs. Nimbus performed no validation of their
contents on the submission path, yet acts on them in two places.

During cleanup of a finished topology, Nimbus deletes the keys named in those lists, and the deletion is
performed as the Nimbus subject, for which the blobstore short-circuits its ACL check. A submitter who
listed a key belonging to another topology, such as its `-stormjar.jar`, could therefore cause
that blob to be deleted when their own topology was cleaned up.

Separately, on acquiring leadership a Nimbus compares the dependency keys of all active topologies against
the blobstore contents and surrenders leadership if any is missing. A single key that does not exist, on a
single active topology, therefore causes every Nimbus to acquire leadership, surrender it and requeue
indefinitely, leaving the cluster without a leader and unable to schedule, clean up or accept submissions.

Mitigation

Upgrade to 3.1.0, where a submission is refused unless every entry in both lists is a dependency blob key
and exists in the blobstore.

Note that this validates new submissions only; a topology stored by an affected version with an invalid list
is unaffected by the upgrade. An operator whose cluster is failing to retain a leader should inspect the
Nimbus log for the dependency keys reported as missing and remove or resubmit the topology naming them.

Users who cannot upgrade immediately should restrict topology submission to trusted principals.

Credit

This issue was discovered by rzo1 while investigating an unrelated blobstore defect.

Credit:

rzo1 (finder)

References:

https://storm.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-82441

