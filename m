Received: (qmail 24180 invoked by uid 550); 16 Dec 2025 09:19:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24135 invoked from network); 16 Dec 2025 09:19:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hboeck.de; s=key1;
	t=1765876754; bh=OuEVtZzmxnrYlc4ObTfZy57MGkeruJMf6TFi4EgHguA=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Transfer-Encoding;
	b=dwFRgCOK1flE6UEyEiFW4D9XxokDManCSHZcTN3c5cVWoECc7NqjWXps0Gqlq56U0
	 7z1npPXPo2muYwThKkJdBM25C7RaGOc+SO0lm9ux67p4KqaUQiB2745B80/RkwvzkI
	 6uYeTMb6GVAn3XWi7YthePawImCVe67liKJLVr6dOdi/cVNYcej0mf/zpjQs5ZwAze
	 izOTsmRKgO392qtWkvsx2FwlSOLP1faBNcOQ7kLXpre3yZZ4K0zQpcugE4ZLurBE+l
	 ISnK0oDZ3RlK0tKE+m7/XJ576VX0xSlfc7vZ0ya78tlA5dxsqWuMOJjz8F7v4ZTV7Z
	 0ktfkoo5pWU3g==
Original-Subject: XXE vulnerabilities in electronic invoicing software (Kivitendo,
 peppol-py, ZUV)
Author: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Date: Tue, 16 Dec 2025 10:19:13 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20251216101913.39107597@hboeck.de>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] XXE vulnerabilities in electronic invoicing software (Kivitendo,
 peppol-py, ZUV)

Hi,

I recently analyzed electronic invoicing software, and reported various
XXE vulnerabilities to affected software, including three open source
projects.

Kivitendo is a CRM software written in Perl. By uploading an electronic
invoice in XML format (ZUGFeRD/CII format), one was able to inject an
XXE payload that allows exfiltrating files from the system.
Fixed in Kivitendo 3.9.2, CVE-2025-66370
https://blog.kivitendo.de/?p=3D1415

peppol-py is a Python library and tool that allows validating invoices
and delivering them through the Peppol network.
The validation function was vulnerable to blind XXE, allowing
exfiltration of files (with the restriction that blind XXE only works
for files without newlines or special characters that will break in a
URL).
Fixed in peppol-py 1.1.1, CVE-2025-66371
https://github.com/iterasdev/peppol-py/releases/tag/1.1.1

ZUV is a tool to validate invoices in the ZUGFeRD standard. It is
vulnerable to blind XXE. ZUV is no longer developed, and this will not
be fixed. The ZUV developers recommend using the tool Mustang instead.
Mustang was also vulnerable to XXE in versions before 2.16.3
(CVE-2025-66372, not discovered by me, see GitHub issue):
https://github.com/ZUGFeRD/mustangproject/issues/685
https://github.com/ZUGFeRD/mustangproject/releases/tag/core-2.16.3

The vulnerabilities in ZUV and peppol-py are caused by insecure defaults
in the underlying library Saxon.


Proof of concept files for these vulnerabilities can be found here:
https://github.com/hannob/invoicesec

More info:
https://invoice.secvuln.info/

--=20
Hanno B=C3=B6ck - Independent security researcher
https://itsec.hboeck.de/
https://badkeys.info/
