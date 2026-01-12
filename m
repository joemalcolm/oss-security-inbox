Received: (qmail 28128 invoked by uid 550); 12 Jan 2026 11:14:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28109 invoked from network); 12 Jan 2026 11:14:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hboeck.de; s=key1;
	t=1768216435; bh=bgZQCZVHrPJi/Nsu33aW8wea2yFG+Gr4OJswf2GieyA=;
	h=Date:From:To:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=TejgqU3jS9GEdAn4wLPYdNn5ATmizGZEkk084vXUjYCJUSxMvsgdXg8uC5Z02CUh+
	 i/3v5+byCgjsB8fNSZ4gkxd3JkZsAVEUPP16cLfPN1caywsYWVQLDFPeOlwGUBXLl9
	 1LKRYs7qwNnjYEYQ0rLDwTbBHhhm/2wr/bAqzwF8NML9BblpHo+jDklzVCD2fCKMoF
	 uOFT9HmCtSdj6in5nXDjmotcZejA3rdl7u7/JyGOGF5rrkXEyjth/ZqtLJOa7przni
	 t2F+B9XkbxbrnaUEJfD5vGIHVuXlHLWKgaRpfXCSIEgg8k1dr9vGYHU1XfIyGWGBtA
	 thTwI6InYS3Uw==
Original-Subject: Re: [oss-security] CVE-2025-68493: Apache Struts: XXE vulnerability
 in outdated XWork component
Author: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Date: Mon, 12 Jan 2026 12:13:53 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20260112121353.1a1921f1@hboeck.de>
In-Reply-To: <092d7ffa-d71b-22c4-2014-ce6c21cec8e3@apache.org>
References: <092d7ffa-d71b-22c4-2014-ce6c21cec8e3@apache.org>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2025-68493: Apache Struts: XXE vulnerability
 in outdated XWork component

Looking through recent mails on this list with XXE in the toppic, I see:

* XXE in Apache Struts due to insecure defaults in Java's standard
  library: CVE-2025-68493
* XXE in Apache SIS due to insecure defaults in Java's standard
  library: CVE-2025-68280
* XXE in Apache Tika due to insecure defaults in Java's standard
  library: CVE-2025-54988, CVE-2025-66516
* XXE in Apache Jackrabbit due to insecure defaults in Java's standard
  library: CVE-2025-53689
* XXE in Apache Ambari due to insecure defaults in Java's standard
  library: CVE-2025-23195
* XXE in Apache XML Graphics FOP due to insecure defaults in Java's
  standard library: CVE-2024-28168
* XXE in Apache Drill due to insecure defaults in Java's standard
  library: CVE-2023-48362

Also recently: my research on prevalent XXEs in electronic invoicing
software, largely due to insecure defaults in Java and Saxon (which is
based on Java): https://invoice.secvuln.info/

I'm sensing a pattern here. Maybe Apache should audit all their uses of
Apache's XML standard library. And, maybe, having insecure defaults in
Java's standard library is not so great.

--=20
Hanno B=C3=B6ck - Independent security researcher
https://itsec.hboeck.de/
https://badkeys.info/
