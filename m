Received: (qmail 3389 invoked by uid 550); 18 Jan 2024 10:54:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29902 invoked from network); 18 Jan 2024 10:49:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stig.io;
	s=protonmail2; t=1705575086; x=1705834286;
	bh=7Vy3iw/zQvyuLzHHWLU2uJbD0C7y17hJbExNVNR0U3I=;
	h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=VhPizfSSQB7fGN3zPna35+M32wIzq0uHdeJ0sheOFdeItgpVz/v9bJCvV0b6UbseI
	 GlzzC5NEc+460Xb8DKBwdjZ+zhXhj5/uplOXZTO5KnJuSYe9Z2XjTnqhHdhZxQpGig
	 JdkBcnEzkdUtN4vB1Nm2yoDHX6tg8HsxNbXLk0YNbhQOLbLJ6VebGYMuWkHzYIHU5e
	 yFW76WMqBH/lMuYGrjz4iuVIn1mdVR4GISPRKJhtGKL3aWbB9m3b5ckBPkU6i69FKb
	 qoqrloXXyyrW2bspuQBe2O4p29R6sIlvo+AIW7n21irb5gnvZC3unezdbajsnD52is
	 x0YZJvRyR4cJg==
Date: Thu, 18 Jan 2024 10:51:20 +0000
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>, "cpan-security@perl.org" <cpan-security@perl.org>
From: Stig Palmquist <stig@stig.io>
Message-ID: <Jow5T4lKgO6TptrCIiRpcvsoKYUGdg16lHrxA98cJwN884BlJADaYGNRq-6LQiZECjGeANl6yiI6VuvFFey7l0Uo8Acs7hK6eJUrVk5ani0=@stig.io>
Feedback-ID: 79171626:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE-2024-23525: Spreadsheet::ParseXLSX for Perl is vulnerable to XXE attacks

Hi,

An Pham discovered that the Perl module Spreadsheet::ParseXLSX 0.29 (and ea=
rlier) is vulnerable to XML external entity injection attacks when parsing =
a crafted XLSX file.

Users should upgrade to version 0.30 or later.

Fixed Version:
https://metacpan.org/release/NUDDLEGG/Spreadsheet-ParseXLSX-0.30

References:
https://nvd.nist.gov/vuln/detail/CVE-2024-23525
https://gist.github.com/phvietan/d1c95a88ab6e17047b0248d6bf9eac4a
https://github.com/MichaelDaum/spreadsheet-parsexlsx/issues/10

Best,
Stig.
