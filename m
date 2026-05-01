Received: (qmail 7428 invoked by uid 550); 1 May 2026 18:05:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11699 invoked from network); 1 May 2026 17:59:28 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Richard Zowalla <rzo1@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <747b76bf-ed6f-2dd5-fb67-ec0360260318@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 01 May 2026 17:55:17 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-42440: Apache OpenNLP: OOM DoS via Unbounded Array
 Allocation in AbstractModelReader 

Severity: moderate=20

Affected versions:

- Apache OpenNLP (org.apache.opennlp:opennlp-tools) before 2.5.9
- Apache OpenNLP (org.apache.opennlp:opennlp-tools) 3.0 before 3.0.0-M3

Description:

OOM Denial of Service via Unbounded Array Allocation in Apache OpenNLP Abst=
ractModelReader=C2=A0

Versions Affected:=C2=A0

before 2.5.9

before 3.0.0-M3=C2=A0

Description:


The AbstractModelReader methods getOutcomes(), getOutcomePatterns(), and ge=
tPredicates() each read a 32-bit signed integer count field from a binary m=
odel stream and pass that value directly to an array allocation (new String=
[numOutcomes], new int[numOCTypes][], new String[NUM_PREDS]) without valida=
ting that the value is non-negative or within a reasonable bound. The count=
 is therefore fully attacker-controlled when the model file originates from=
 an untrusted source.


A crafted .bin model file in which any of these count fields is set to Inte=
ger.MAX_VALUE (or any value large enough to exhaust the available heap) tri=
ggers an OutOfMemoryError at the array allocation itself, before the corres=
ponding label or pattern data is consumed from the stream. The error occurs=
 very early in deserialization: for a GIS model, getOutcomes() is reached a=
fter only the model-type string, the correction constant, and the correctio=
n parameter have been read; so the attacker pays no meaningful size cost to=
 weaponize a payload, and a single small file can crash a JVM that loads it=
. Any code path that deserializes a .bin model is affected, including direc=
t use of GenericModelReader and any higher-level component that delegates t=
o it during model load.


The practical impact is denial of service against processes that load model=
 files from untrusted or semi-trusted origins.=C2=A0=C2=A0


Mitigation:



  *  2.x users should upgrade to 2.5.9.

  *  3.x users should upgrade to 3.0.0-M3.




Note: The fix introduces an upper bound on each of the three count fields, =
checked before array allocation; counts that are negative or exceed the bou=
nd cause an IllegalArgumentException to be thrown and the read to fail fast=
 with no large allocation. The default bound is 10,000,000, which is well a=
bove the entry counts of legitimate OpenNLP models but far below any value =
that would threaten heap exhaustion. Deployments that legitimately need to =
load models with more entries than the default can raise the limit at JVM s=
tartup by setting the OPENNLP_MAX_ENTRIES system property to the desired po=
sitive integer (e.g. -DOPENNLP_MAX_ENTRIES=3D50000000); invalid or non-posi=
tive values fall back to the default.


Users who cannot upgrade immediately should treat all .bin model files as u=
ntrusted input unless their provenance is verified, and should avoid loadin=
g models supplied by end users or fetched from third-party repositories wit=
hout integrity checks.

This issue is being tracked as OPENNLP-1821=20

Credit:

Subramanian S (finder)

References:

https://opennlp.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-42440
https://issues.apache.org/jira/browse/OPENNLP-1821

