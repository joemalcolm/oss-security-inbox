Received: (qmail 14200 invoked by uid 550); 7 Apr 2024 19:35:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30567 invoked from network); 7 Apr 2024 12:48:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stig.io;
	s=protonmail2; t=1712494079; x=1712753279;
	bh=aa32zd9cQLiHUsqEt0z9050/k1YK00IZLu/u62HAIxA=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=LJ4Rcs5W958C21vSc4ocdqEOqg/YhiEUebW9JadydR6JN5fKX3k22SdBSK7hEKmzo
	 UZnk8fZJf3N/B+Sw5zgnrrvCAhzYjEarRKW80agKro/5UioFaSU9dFuNoIAWV5/QSE
	 5F6zJJk4SxxLbPeLSzb9/sdHQLxaoQgVJ4dKqytZNMSoNMVyqw61F40g7dx1ds1nqC
	 X4HCuIufe+iYuWqRDJFQwuO9An3Uy8DM0g4wDU9YrgIz5l1JbI3pIN9pCv2aTHnCf8
	 sh9Oi+xITFf1Uy2znSdnvAYt/sKScmS77e5RhD4/ymleEIJa3Bt9WQ2rWl+cs56hxK
	 mHcHmJBEcOx7Q==
Date: Sun, 07 Apr 2024 12:47:55 +0000
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
From: Stig Palmquist <stig@stig.io>
Cc: "cpan-security@perl.org" <cpan-security@perl.org>
Message-ID: <OemxxePJ-gumPKcYmWkLFw4F3Jm0eGZ8gci1OL3Olbi-BWQE2k6vIBZ7NRs0HcoEuG3WPnxN1WiZCL2A5jbhDHcN8yQVS6JkhVMUfGI6qAo=@stig.io>
Feedback-ID: 79171626:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] HTTP::Body before 1.23 for Perl is still vulnerable to CVE-2013-4407

HTTP::Body after 1.07 and before 1.23 for Perl handles multipart file uploa=
ds as
temporary files while retaining file extensions. An attacker can provide cr=
afted
filenames containing for example shell metacharacters, affecting programs t=
hat
expect these temporary filenames to be well formed.

Version 1.23 of HTTP::Body has been fixed upstream to set a static ".upload"
extension, overriding user provided extensions by default.

Users are recommended to update to version 1.23 or later.


NOTE: Currently, the CVE description incorrectly indicate that this was fix=
ed
in versions after 1.17.

Version 1.18 provided:
- A global variable to set the regex used to validate extensions
- A code comment containing a stricter regex
- No change to the default behavior

Debian and other distributions are carrying a patch for CVE-2013-4407 inclu=
ding
the stricter regex for versions before 1.23.

References:

https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2013-4407
https://metacpan.org/release/GETTY/HTTP-Body-1.23/view/lib/HTTP/Body.pm#NOT=
ES
https://metacpan.org/release/GETTY/HTTP-Body-1.18/source/lib/HTTP/Body/Mult=
iPart.pm#L262
https://salsa.debian.org/perl-team/modules/packages/libhttp-body-perl/-/blo=
b/8645c1b4b6a39f6d82b7a05869d567ae4e8f0e24/debian/patches/CVE-2013-4407.pat=
ch


