Received: (qmail 7834 invoked by uid 550); 5 Jan 2026 14:59:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15963 invoked from network); 5 Jan 2026 13:18:47 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Martin Desruisseaux <desruisseaux@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <af3ef719-2b0a-b7db-9831-74342941b1e1@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 05 Jan 2026 13:18:35 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-68280: Apache SIS: XML External Entity (XXE)
 vulnerability 

Severity: moderate=20

Affected versions:

- Apache SIS (org.apache.sis.core:sis-metadata) 0.4 through 1.5

Description:

Improper Restriction of XML External Entity Reference vulnerability in Apac=
he SIS.



It is possible to write XML files in such a way that, when parsed by Apache=
 SIS, an XML file reveals to the attacker the content of a local file on th=
e server running Apache SIS. This vulnerability impacts the following SIS s=
ervices:




  *  Reading of GeoTIFF files having the GEO_METADATA tag defined by the De=
fense Geospatial Information Working Group (DGIWG).

  *  Parsing of ISO 19115 metadata in XML format.

  *  Parsing of Coordinate Reference Systems defined in the GML format.

  *  Parsing of files in GPS Exchange Format (GPX).





This issue affects Apache SIS from versions 0.4 through 1.5 inclusive. User=
s are recommended to upgrade to version 1.6, which will fix the issue. In t=
he meantime, the security vulnerability can be avoided by launching Java wi=
th the javax.xml.accessExternalDTD system property sets to a comma-separate=
d list of authorized protocols. For example:



java -Djavax.xml.accessExternalDTD=3D"" ...

Credit:

LEE (finder)

References:

https://sis.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-68280

