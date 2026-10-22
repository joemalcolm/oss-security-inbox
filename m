X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/22/34
Message-ID: <CAK3hNHZKh81sGT+Fa3+gZ1np+vneL+8VuO5HuDs_9R_X3XBL7w@mail.gmail.com>
Date: Thu, 22 Oct 2026 15:42:10 -0700
From: Abhinav Agarwal <abhinavagarwal1996@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-113873, CVE-2026-113874, CVE-2026-113875, CVE-2026-113876: HAPI FHIR cross-tenant partition override, authorization bypasses and gzip heap exhaustion
Content-Type: text/plain; charset=utf-8

CISA has published four CVE records and CSAF advisory VA-26-294-01 for
vulnerabilities in HAPI FHIR, an open-source Java implementation of HL7
FHIR. They were coordinated under VINCE case VU#394579. I reproduced all
four on upstream HAPI FHIR 8.10.0, commit 96ac50f89455, using synthetic
data. The worst case is that a caller authorized for one tenant can read
another tenant's data, or create data in another tenant's partition.

Affected: the CVE records list HAPI FHIR (vendor SmileCDR), all versions;
for CVE-2026-113876, versions before "September 2026". I tested 8.10.0.
Source inspection on 2026-10-22 found all four code paths in v8.8.2,
v8.10.1 and v8.12.1, the latest release. On master, three are unchanged and
the CVE-2026-113876 response body is suppressed. The partition extension
handler first shipped in v8.2.0.
Downstream: Smile CDR's changelog states that Smile CDR 2026.05.R01 is
based on HAPI FHIR 8.10.0. I did not test Smile CDR or any other downstream
product.
CVSS: CISA-assigned v3.1 scores, as published in the CVE records.

Findings
--------

1. CVE-2026-113874 - cross-tenant partition override - CWE-863
CVSS v3.1 8.1 High (CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:N).
The affected setup uses RequestHeaderPartitionInterceptor behind a gateway
that authenticates the caller and sets X-Request-Partition-IDs to that
caller's tenant. The caller submits a transaction or batch Bundle to the
FHIR base endpoint, and puts the extension
http://hapifhir.io/fhir/ns/StructureDefinition/request-partition-ids on
Bundle.entry.request with a valueString naming another partition.
BaseTransactionProcessor.setRequestPartitionHeaderIfEntryHasTheExtension()
writes that value over the trusted header for the entry's sub-request, with
no authorization check. An integrator can register a
STORAGE_PARTITION_SELECTED hook that checks the caller's entitlement to the
final partition, but HAPI ships none. Without one, GET Patient/<id> entries
return foreign resources. Over HTTP, one batch with three entries read from
three partitions. A DAO transaction test created a Patient in a foreign
partition. I did not test altering or deleting existing foreign resources.
A control test with an entitlement hook blocked the override.

2. CVE-2026-113873 - unauthenticated heap exhaustion - CWE-409
CVSS v3.1 7.5 High (CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H).
Inbound decompression is on by default. With Content-Encoding: gzip,
ServletRequestDetails.getByteStreamRequestContents() inflates the body into
a byte array with no size or ratio cap. This happens while method
parameters are built, before AuthorizationInterceptor's
SERVER_INCOMING_REQUEST_PRE_HANDLED hook runs. Any operation that reads the
request body can trigger it, unless a gateway or filter in front rejects
gzip or caps the decompressed size. A 65,250-byte body expanded to 64 MiB
(1,028:1). In a forked JVM with a 64 MiB heap, a body of about 255 KB
raised OutOfMemoryError in loadRequestContents(). The test called that
routine directly; I did not measure an outage of a running server.

3. CVE-2026-113876 - conditional-create disclosure - CWE-863
CVSS v3.1 4.3 Medium (CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:L/I:N/A:N).
A caller has Patient CREATE but no READ permission. It sends POST
[base]/Patient with any Patient body, an If-None-Exist predicate matching
exactly one existing Patient, and Prefer: return=representation, which is
also HAPI's default. The test used a unique family-name marker as the
predicate. AuthorizationInterceptor classifies CREATE as inbound, so it
skips its outgoing-resource check on the matched resource. The response is
HTTP 200 with the complete stored Patient, and no new Patient is created.
The same caller's direct GET returned 403. The caller must supply a
predicate that matches; I did not demonstrate enumeration.

4. CVE-2026-113875 - subscription delivery outside the creator's read scope
- CWE-862
CVSS v3.1 3.1 Low (CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:U/C:L/I:N/A:N).
REST-hook subscriptions are off by default. With them enabled, a user
permitted to create Subscriptions registers criteria
Observation?status=final, a callback endpoint it controls, and payload
application/fhir+json. Neither creation-time validation nor delivery
applies the creator's read rules, and delivery reloads the resource as
SystemRequestDetails. In the test, an Observation was created later in
another patient's compartment with a synthetic marker. It arrived in full
at the endpoint, while the subscriber's direct GET of it returned 403. Both
patients were in the same partition: this is a read-scope bypass, not
cross-tenant delivery.

Fix status
----------

No fix for CVE-2026-113873, CVE-2026-113874 and CVE-2026-113875. For
CVE-2026-113876 it reports a fix around September 2026 without naming a
release. Upstream PR #8254 suppresses that response body and merged to
master on 2026-08-19, but as of 2026-10-22 no release tag contains it;
upstream schedules it for 9.0.0 on 2026-11-19. The other three code paths
are unchanged on master.

Proof of concept / writeup
----------------

Seven JUnit classes (23 passing tests on OpenJDK 17.0.19) reproduce the
findings against 96ac50f89455.
https://abhinavagarwal07.github.io/posts/hapi-fhir-authorization-findings/?src=oss

Coordination timeline
---------------------

2026-07-12 11:24 UTC Coordination case VU#394579 opened.
2026-08-13 Conditional-create path independently reported upstream as issue
#8253.
2026-08-19 Upstream PR #8254 merged to master.
2026-10-22 CISA published CSAF advisory VA-26-294-01 and the four CVE
records; public disclosure.

Credit
------

Reported by Abhinav Agarwal.

-- Abhinav Agarwal

