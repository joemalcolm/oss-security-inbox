X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/11/9
Message-ID: <828235ec-5343-af7a-2c52-d44f1c3050db@apache.org>
Date: Fri, 11 Sep 2026 17:38:50 +0000
From: Richard Zowalla <rzo1@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-67211: Apache OpenNLP: OOM DoS via Unbounded Array Allocation in SymSpellModelSerializer 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache OpenNLP (org.apache.opennlp:opennlp-symspell) 3.0.0-M4 before 3.0.0-M6

Description:

OOM Denial of Service via Unbounded Map Pre-Sizing in Apache OpenNLP SymSpellModelSerializer

Versions Affected: 

- 3.0.0-M4
- 3.0.0-M5

(The opennlp-spellcheck extension was introduced in 3.0.0-M4. Releases 1.x and 2.x do not contain the affected code.)

Description:

The SymSpellModelSerializer.create() method reads two 32-bit signed integer count fields (unigramCount and bigramCount) from a binary SymSpell model stream and passes each value directly to LinkedHashMap.newLinkedHashMap() after validating only that it is non-negative. No upper bound is applied, so the count is fully attacker-controlled when the model file originates from an untrusted source.

A crafted .bin model file in which either count field is set to Integer.MAX_VALUE (or any value large enough to exhaust the available heap) causes the map to be pre-sized to a capacity of 2^30 entries. The oversized backing array is allocated on the first put() into that map, requesting 4–8 GB depending on whether compressed oops are in effect, and the load fails with an OutOfMemoryError. Because the count fields sit immediately after a fixed-size header (magic, format version, three UTF strings, the configuration fields, and the edit-distance identifier) the attacker pays no meaningful size cost to weaponize a payload: a file of well under 100 bytes plus a single real entry is sufficient to crash a JVM that loads it.

Any code path that deserializes a SymSpell model is affected, including SymSpellModels.deserialize(InputStream), SymSpellModels.fromBytes(byte[]), classpath model loading via SymSpellModelResolver.resolveByLanguage(String), the CorrectTextTool command-line tool, and model-archive loading through the registered ArtifactSerializer. The opennlp-spellcheck extension ships in the official OpenNLP binary distribution.

The practical impact is denial of service against processes that load SymSpell model files from untrusted or semi-trusted origins.

Mitigation:

- 3.x users should upgrade to 3.0.0-M6.

Note: The fix applies an upper bound to both count fields, checked before the map is pre-sized; counts that are negative or exceed the bound cause an IOException to be thrown and the read to fail fast with no large allocation. The bound is the existing AbstractModelReader.MAX_ENTRIES limit introduced earlie, which the current change promotes to public visibility so that serializers implementing their own binary format can share it. The default bound is 10,000,000, which is well above the entry counts of legitimate SymSpell dictionaries but far below any value that would threaten heap exhaustion. Deployments that legitimately need to load larger dictionaries can raise the limit at JVM startup by setting the OPENNLP_MAX_ENTRIES system property to the desired positive integer (e.g. -DOPENNLP_MAX_ENTRIES=50000000); invalid or non-positive values fall back to the default. Note that this property is shared with the model-reader limit and raising it relaxes both.

Users who cannot upgrade immediately should treat all SymSpell .bin model files as untrusted input unless their provenance is verified, and should avoid loading models supplied by end users or fetched from third-party repositories without integrity checks.

This issue is being tracked as OPENNLP-1899 

Credit:

Arpit Jain / arpitjain099 (finder)

References:

https://opennlp.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-67211
https://issues.apache.org/jira/browse/OPENNLP-1899

