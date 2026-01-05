Received: (qmail 11627 invoked by uid 550); 5 Jan 2026 11:10:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25690 invoked from network); 5 Jan 2026 10:53:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=gnupg.org;
	s=20181017; h=Content-Type:MIME-Version:Message-ID:In-Reply-To:Date:
	References:Subject:Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=9fR+XbpOqt5hUmuyoLnX73BQeQ9LsVywm+S/uok5r7E=; b=Pxkz+DHJbAv6Docf+6tQchSM8I
	3AVgxisdQFF7Gk/ngn6z6i4tQ+qTnwoVA+x+FO015OYA44NSAdKsHmv3OO4wxIDGDqRrI5UEhh2H1
	+e7VlWlS/zX3LE5Z2aUPOrZ5+cSHH3lx3hkE2MDJTwnxqOWTLcOqwfMgQkgkpme+gHxg=;
From: Werner Koch <wk@gnupg.org>
To: Jacob Bachmeyer <jcb62281@gmail.com>
Cc: oss-security@lists.openwall.com,  Solar Designer <solar@openwall.com>,
  contact@gpg.fail
References: <3318308d-70b1-4ab3-9cca-ab4ea67dd27d@gmail.com>
	<20251228042744.GA629@openwall.com>
	<0009d6cc-143e-41e6-b240-eb526a9cb306@gmail.com>
	<87zf71pqe9.fsf@jacob.g10code.de>
Jabber-ID: wk@jabber.gnupg.org
Date: Mon, 05 Jan 2026 11:56:22 +0100
In-Reply-To: <87zf71pqe9.fsf@jacob.g10code.de> (Werner Koch's message of "Mon,
	29 Dec 2025 10:51:26 +0100")
Message-ID: <87bjj8pbu1.fsf_-_@jacob.g10code.de>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=Marxist_Exercise_Yemen_AUTODIN_Rapid_Reaction_AMW_Cloud_digicash_Hug";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: [oss-security] GnuPG ticket T7900 (was: Many vulnerabilities in GnuPG)

--=Marxist_Exercise_Yemen_AUTODIN_Rapid_Reaction_AMW_Cloud_digicash_Hug
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Hi!

On Mon, 29 Dec 2025 10:51, Werner Koch said:

> https://dev.gnupg.org/T7900 which is the parent ticket for all these

Unfortunately this ticket and some other tickets where only accessible
by registered users or even more restricted.  This is now fixed [1].

FWIW, here is a replyt which I posted on Mastodon:

  Actually there is only one major bug (T7906 - armor parser) which was
  fixed early November. T7901 requires a 2nd pre-image attack on SHA1 -
  which does not yet exist.  T7907 (plaintext recovery) is simply
  untrue; see https://dev.gnupg.org/T7907#210501

  BTW, of course we sign our commits and most of us even use hardware
  tokens.


Shalom-Salam,

   Werner


[1] Phabricator has a two-level permission system and in the web
    interface only the first level is easy to see in the overview.  Some
    of us played it safe and restricted at both levels.
--=20
The pioneers of a warless world are the youth that
refuse military service.             - A. Einstein

--=Marxist_Exercise_Yemen_AUTODIN_Rapid_Reaction_AMW_Cloud_digicash_Hug
Content-Type: application/pgp-signature; name="openpgp-digital-signature.asc"

-----BEGIN PGP SIGNATURE-----

iJ8EARYKAEcWIQSHd0YfKgdOvEgNNZQZzByeCFsQegUCaVuY1hsUgAAAAAAEAA5t
YW51MiwyLjUrMS4xMSwyLDINHHdrQGdudXBnLm9yZwAKCRAZzByeCFsQejPlAP4y
p26zDVpfgtqN9HRUv83B4uapf7AnSkkvPKXUvm4sWwEA76NaX3J4/jhysTe2LWP5
Ud3DaBvL+Xe4MTjohkpZNgs=
=AIld
-----END PGP SIGNATURE-----
--=Marxist_Exercise_Yemen_AUTODIN_Rapid_Reaction_AMW_Cloud_digicash_Hug--

