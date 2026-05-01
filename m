Received: (qmail 32116 invoked by uid 550); 1 May 2026 15:21:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32060 invoked from network); 1 May 2026 15:21:48 -0000
From: Florian Weimer <fw@deneb.enyo.de>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com,  Bernard Quatermass
 <bernardq@exim.org>,  security@exim.org
In-Reply-To: <20260430182126.GA28748@openwall.com> (Solar Designer's message
	of "Thu, 30 Apr 2026 20:21:26 +0200")
References: <20260430182126.GA28748@openwall.com>
Date: Fri, 01 May 2026 17:21:38 +0200
Message-ID: <87qznvcfzx.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] Exim 4.99.2 fixes 4 CVEs

* Solar Designer:

> From: Bernard Quatermass <bernardq@exim.org>
> Subject: Re: [vs-plain] EXIM-Security-2026-04-24
> To: "Distros @ oss-security openwall" <distros@vs.openwall.org>
> CC: "security@exim.org" <security@exim.org>
> Date: Wed, 29 Apr 2026 13:19:42 +0100 (2 days, 3 hours, 26 seconds ago)
>
> we are pleased to announce the availability of release 4.99.2 of Exim.
>
> This is a security release.
>
> It fixes the following vulnerabilities.
>
> CVE-2026-40684     Possible crash with malicious DNS data when using musl libc
>
>    On systems using musl libc (not glibc) due to an oddity in octal printing
>    it is possible to crash the connection instance when malformed DNS data
>    is present in PTR records.

I sent a note to Rich Felker (musl maintainer) regarding this.
