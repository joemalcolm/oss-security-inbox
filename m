Received: (qmail 17672 invoked by uid 550); 3 May 2023 19:55:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17651 invoked from network); 3 May 2023 19:55:00 -0000
From: "David A. Wheeler" <dwheeler@dwheeler.com>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Date: Wed, 3 May 2023 15:54:38 -0400
References: <20230418154630.eoheygqyom3c7ovw@stig.io>
 <20230429100407.3yqdy2vtzokv3t5l@stig.io>
 <6d30fdfb-ad9a-2839-9ad1-93ff478a8459@thirddimension.net>
To: oss-security@lists.openwall.com
In-Reply-To: <6d30fdfb-ad9a-2839-9ad1-93ff478a8459@thirddimension.net>
Message-Id: <30B5E64A-3EEE-4676-979C-A5A39373F46B@dwheeler.com>
X-Mailer: Apple Mail (2.3608.120.23.2.7)
Subject: Re: [oss-security] Perl's HTTP::Tiny has insecure TLS cert default,
 affecting CPAN.pm and other modules



> On May 3, 2023, at 3:15 PM, Reid Sutherland <reid@thirddimension.net> wro=
te:
>=20
> Who actually decides when something receives a CVE?

There's a process for assigning CVEs. Anyone who wants to be able to assign=
 CVEs - that is, to become a CVE Numbering Authority (CNA) - has to follow =
various processes. I'm sure it can be improved, like all things. I'm not di=
rectly involved in this. You might find more information here:
https://www.cve.org/ProgramOrganization/CNAs

>  This can be used to defame projects and products as in this case.


Identifying a vulnerability does not defame a project. If a library has the=
 functionality to retrieve an https URLs, and fails to verify the server ce=
rtificates by default, then I (and many others) would call that a vulnerabi=
lity. After all, the default is what happens. If you request data from <htt=
ps://google.com>, you wouldn't expect it to use the data from <https://godz=
illa.com>. There's a general expectation that https://FPP provides a secure=
 connection to FOO (with confidentiality, integrity, and server authenticat=
ion), unless you specially disable it.

--- David A. Wheeler

