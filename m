Received: (qmail 29902 invoked by uid 550); 27 Jan 2026 20:01:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29863 invoked from network); 27 Jan 2026 20:01:08 -0000
Date: Tue, 27 Jan 2026 15:00:59 -0500
From: Jan Schaumann <jschauma@netmeister.org>
To: oss-security@lists.openwall.com
Message-ID: <aXkZe4SPTxXKAUGX@netmeister.org>
References: <87343rqa3o.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87343rqa3o.fsf@gentoo.org>
Subject: Re: [oss-security] GnuPG security release

Sam James <sam@gentoo.org> wrote:

> > A crafted CMS (S/MIME) EnvelopedData message carrying an oversized
> > wrapped session key can cause a stack buffer overflow in gpg-agent
> > during the PKDECRYPT--kem=CMS handling. This can easily be used for a
> > DoS but, worse, the memory corruption can very likley also be used to
> > mount a remote code execution attack.
> >
> > A CVE-id has not been assigned. We track this bug as T8044 under
> > https://dev.gnupg.org/T8044. This vulnerability was discovered by:
> > OpenAI Security Research. Their report was received on 2026-01-18;

This vulnerability sounds very similar to the just
announced OpenSSL vulnerability CVE-2025-15467.  That
vulnerability was noted as having been discovered
Stanislav Fort (Aisle Research).

Is it a coincident that these two issues were detected
shortly after one another by different parties?

-Jan
