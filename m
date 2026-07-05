X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/05/6
Message-ID: <f71b4dbc-224c-7a71-93ee-2524b64bacd0@apache.org>
Date: Sun, 05 Jul 2026 12:03:15 +0000
From: Andrea Cosentino <acosentino@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-46453: Apache Camel: Camel-Elasticsearch-Rest-Client: Exchange header constants without the Camel prefix bypass inbound HTTP header filtering, allowing untrusted clients to override the Elasticsearch query and operation 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Camel (org.apache.camel:camel-elasticsearch-rest-client) 4.3.0 before 4.14.8
- Apache Camel (org.apache.camel:camel-elasticsearch-rest-client) 4.15.0 before 4.18.3
- Apache Camel (org.apache.camel:camel-elasticsearch-rest-client) 4.19.0 before 4.21.0

Description:

Improper Input Validation, Authorization Bypass Through User-Controlled Key vulnerability in Apache Camel ElasticSearch Rest Client.

The camel-elasticsearch-rest-client component reads several Exchange headers to control its behaviour - SEARCH_QUERY (an advanced query body), OPERATION (which Elasticsearch operation to run), INDEX_NAME, INDEX_SETTINGS and ID. The string values of these header constants, defined in ElasticSearchRestClientConstant, are plain unprefixed names ('SEARCH_QUERY', 'OPERATION', 'INDEX_NAME', 'INDEX_SETTINGS', 'ID') rather than the 'Camel'-prefixed names used by every other Camel component (for example CamelSqlQuery, CamelMongoDbCriteria, CamelCqlQuery). Camel's inbound HTTP header filter, HttpHeaderFilterStrategy, blocks only header names that begin with 'Camel' or 'camel'. Because the Elasticsearch header names do not carry that prefix, they pass through the inbound filter unchanged. When a Camel route exposes an HTTP entry point (for example platform-http) in front of an elasticsearch-rest-client producer, an untrusted HTTP client can set these headers directly on its request and override the query and operation that the route author configured: reading every document in the index (SEARCH_QUERY with a match_all query), deleting documents (OPERATION set to Delete together with ID), or exfiltrating selected fields. No credentials are required and the producer reads the headers unconditionally.
This issue affects Apache Camel: from 4.3.0 before 4.14.8, from 4.15.0 before 4.18.3, from 4.19.0 before 4.21.0.

Users are recommended to upgrade to version 4.21.0, which fixes the issue. If users are on the 4.14.x LTS releases stream, then they are suggested to upgrade to 4.14.8. If users are on the 4.18.x releases stream, then they are suggested to upgrade to 4.18.3. The fix renames the camel-elasticsearch-rest-client Exchange header constant string values (ID, SEARCH_QUERY, INDEX_SETTINGS, INDEX_NAME, OPERATION) to carry the Camel prefix (CamelElasticsearchId, CamelElasticsearchSearchQuery, CamelElasticsearchIndexSettings, CamelElasticsearchIndexName, CamelElasticsearchOperation) so that they are blocked by the inbound HttpHeaderFilterStrategy; the Java field names are unchanged. For deployments that cannot upgrade immediately, strip the affected headers from untrusted inbound messages before they reach the producer (for example removeHeader('SEARCH_QUERY'), removeHeader('OPERATION'), removeHeader('INDEX_NAME'), removeHeader('INDEX_SETTINGS') and removeHeader('ID') in front of the elasticsearch-rest-client endpoint), or apply a custom HeaderFilterStrategy that blocks these names.

Credit:

Yu Bao from Paypal (finder)

References:

https://camel.apache.org/security/CVE-2026-46453.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-46453

