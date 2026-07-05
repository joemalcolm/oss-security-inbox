X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/05/18
Message-ID: <12b3decf-a668-f3bc-1cec-3459d41ddab3@apache.org>
Date: Sun, 05 Jul 2026 11:54:21 +0000
From: Andrea Cosentino <acosentino@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-48204: Apache Camel: Camel-MongoDB-GridFS: The gridfs.* control headers used non-Camel-prefixed names that bypass the HTTP header filter, allowing an HTTP client to switch the GridFS operation - including destructive file deletion - in the default configuration 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Camel (org.apache.camel:camel-mongodb-gridfs) 4.0.0 before 4.14.8
- Apache Camel (org.apache.camel:camel-mongodb-gridfs) 4.15.0 before 4.18.3
- Apache Camel (org.apache.camel:camel-mongodb-gridfs) 4.19.0 before 4.21.0

Description:

Improper Input Validation, Improper Access Control vulnerability in Apache Camel in Camel Mongodb Gridfs component.

The camel-mongodb-gridfs producer selects the GridFS operation to perform from the gridfs.operation Exchange header when the endpoint's operation parameter is not set - which is the default. The control-header constants (GridFsConstants.GRIDFS_OPERATION, GRIDFS_OBJECT_ID, GRIDFS_METADATA, GRIDFS_CHUNKSIZE, GRIDFS_FILE_ID_PRODUCED) were the plain strings gridfs.operation, gridfs.objectid, gridfs.metadata, gridfs.chunksize and gridfs.fileid. Because these names do not start with the Camel / camel prefix, HttpHeaderFilterStrategy - which blocks only the Camel header namespace on the HTTP boundary - let them pass from an inbound HTTP request straight into the Exchange. In a route that bridges an HTTP consumer (for example platform-http) into a mongodb-gridfs: producer with no explicit operation, any HTTP client could therefore set the gridfs.operation header to override the route's intended operation - switching, for example, a file upload to remove (deleting a file identified by the attacker-supplied gridfs.objectid), listAll (enumerating every file in the bucket) or findOne (reading a file) - and supply a gridfs.metadata value that is parsed as a MongoDB document, enabling NoSQL operator injection. No credentials are required when the bridging consumer is unauthenticated.
This issue affects Apache Camel: from 4.0.0 before 4.14.8, from 4.15.0 before 4.18.3, from 4.19.0 before 4.21.0.

Users are recommended to upgrade to version 4.21.0, which fixes the issue. If users are on the 4.14.x LTS releases stream, then they are suggested to upgrade to 4.14.8. If users are on the 4.18.x releases stream, then they are suggested to upgrade to 4.18.3. After upgrading, routes that drive GridFS operations or metadata via the raw header names must use CamelGridFsOperation / CamelGridFsObjectId / CamelGridFsMetadata / CamelGridFsChunkSize / CamelGridFsFileId instead of the gridfs.* names. For deployments that cannot upgrade immediately, set an explicit operation on the mongodb-gridfs: endpoint so the operation is not taken from a header, and strip the gridfs.* headers from any untrusted ingress before the producer.

Credit:

Yu Bao from PayPal (finder)
Andrea Cosentino (remediation developer)

References:

https://camel.apache.org/security/CVE-2026-48204.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-48204

