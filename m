Received: (qmail 7614 invoked by uid 550); 21 Aug 2025 05:51:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7595 invoked from network); 21 Aug 2025 05:51:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hboeck.de; s=key1;
	t=1755755467; bh=GkTQzaOCHsRlKQWp1MMLK/FO6iE+N8Y8SvaShnJC/kE=;
	h=Date:From:To:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=c0J2TQYqaLXN2z7bceW7KX7IXAleNn12KF9vz0IegiFyqm870uoZzYVL3rWsx18/Q
	 2s4ZZStKt/MG8KPOb+nQ2VKDrH061pIWrUq5NG7oLdrYH+lTdSDp0reMBUyEQx4BZy
	 GxH8dsmvyRdxSIp12KH+qQJ2dawIjNy2xWSMD7v3B0vm+kxH+BFpuSKPD4kvjkY75w
	 Kl2b1Z/IMNafKzFOlXz2pHD7mdMQ/HbSDB1Y9REuD1QIMafxG1jSqeO7sq1Hw9PLhG
	 6OyP/gvTRyIPLjkq4J6+5iZwkhZTLHeZixjDxNWx/eBId8ZHs4TCdt9hHUaoddBUGY
	 78fNkjh31gbmg==
Original-Subject: Re: [oss-security] CVE-2025-54988: Apache Tika PDF parser module:
 XXE vulnerability in PDFParser's handling of XFA
Author: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Date: Thu, 21 Aug 2025 07:51:06 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20250821075106.64dd7887@hboeck.de>
In-Reply-To: 
 <CAC1dCwVM3rxqS=KQf3=kWScQE5=NQ5ZvRH=srcF72JZROMb4hA@mail.gmail.com>
References: 
 <CAC1dCwVM3rxqS=KQf3=kWScQE5=NQ5ZvRH=srcF72JZROMb4hA@mail.gmail.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.50; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2025-54988: Apache Tika PDF parser module:
 XXE vulnerability in PDFParser's handling of XFA

On Wed, 20 Aug 2025 15:45:33 -0400
Tim Allison <tallison@apache.org> wrote:

> Critical XXE in Apache Tika (tika-parser-pdf-module) in Apache Tika

Probably this commit:
https://github.com/apache/tika/commit/bfee6d5569fe9197c4ea947a96e212825184c=
a33

I recently looked into XXE vulnerabilities, and I believe this is
primarily a vulnerabiltiy in Java's standard library, not in any
single piece of software. I also consider it to be a flaw in the XML
spec itself.

XXE vulnerabilities are a well-known problem, and overwhelmingly, XML
libraries and APIs have adopted safer defaults, which is the right thing
to address this. Java is the exception, where XML parsing is still
insecure-by-default. (That XXE and other XML security flaws aren't
addressed in the XML spec itself is also a problem.)

The idea that any parsing of an untrusted XML file automatically opens
a can of security vulnerability worms, and expecting that every software
using an XML parsing API has to do something extra to avoid it is an
absurd security footgun.

--=20
Hanno B=C3=B6ck - Independent security researcher
https://itsec.hboeck.de/
https://badkeys.info/
