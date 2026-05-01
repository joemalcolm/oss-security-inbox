Received: (qmail 5211 invoked by uid 550); 1 May 2026 18:04:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26437 invoked from network); 1 May 2026 17:54:58 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Richard Zowalla <rzo1@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <63337271-fd08-3825-faed-85b85474f4fc@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 01 May 2026 17:54:46 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-40682: Apache OpenNLP: XXE via Dictionary Parsing in
 DictionaryEntryPersistor 

Severity: moderate=20

Affected versions:

- Apache OpenNLP (org.apache.opennlp:opennlp-tools) before 2.5.9
- Apache OpenNLP (org.apache.opennlp:opennlp-tools) 3.0 before 3.0.0-M3

Description:

XML External Entity (XXE) via Unsanitized Dictionary Parsing in Apache Open=
NLP DictionaryEntryPersistor


Versions Affected: before 2.5.9, before 3.0.0-M3


Description: The DictionaryEntryPersistor class initializes a static SAXPar=
serFactory at class-load time without enabling FEATURE_SECURE_PROCESSING or=
 disabling DTD processing. When create(InputStream, EntryInserter) is invok=
ed, the only feature set on the XMLReader is namespace support =E2=80=94 ex=
ternal entity resolution and DOCTYPE declarations remain fully enabled. An =
attacker who can supply a crafted dictionary file (e.g., a stop-word list o=
r domain dictionary) containing a malicious DOCTYPE declaration can trigger=
 local file disclosure via file:// entity references or server-side request=
 forgery via http:// entity references during SAX parsing, before the appli=
cation processes a single dictionary entry. This is inconsistent with the p=
roject's own XmlUtil.createSaxParser() helper, which correctly sets FEATURE=
_SECURE_PROCESSING and disallow-doctype-decl and is used by all other XML p=
arsing paths in the codebase. The public Dictionary(InputStream) constructo=
r delegates directly to this method and is the documented API for loading u=
ser-supplied dictionaries, making untrusted input a realistic scenario.


Mitigation: 2.x users should upgrade to 2.5.9. 3.x users should upgrade to =
3.0.0-M3. Users who cannot upgrade immediately should ensure that all dicti=
onary files are sourced from trusted origins and should consider wrapping t=
he Dictionary(InputStream) constructor with input validation that rejects a=
ny XML containing a DOCTYPE declaration before it reaches the parser.

Credit:

Subramanian S (finder)

References:

https://opennlp.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-40682

