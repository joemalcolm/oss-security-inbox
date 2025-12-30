Received: (qmail 6030 invoked by uid 550); 30 Dec 2025 19:10:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1465 invoked from network); 30 Dec 2025 08:43:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=gnupg.org;
	s=20181017; h=Content-Type:MIME-Version:Message-ID:In-Reply-To:Date:
	References:Subject:Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=u3z8WF7ZiLonU+WBrziy0ff3ED5RKy534K0dqU67bX8=; b=ZCAii11Ahy561FzmjVXIJSNaq1
	KdQ+aBLSRlerhgPV1oXzMjRT2wNVJj2xUPfAI7cS71XmO7VUF5UOHFwefTqjVtXoaBKKG53MtaVcu
	H6TXW8+l16xKRTdIavfZCslTBjXsWLMyG6SVVSERxBl+opmaNuAB/86T9f9GpigozIx0=;
From: Werner Koch <wk@gnupg.org>
To: Jacob Bachmeyer <jcb62281@gmail.com>
Cc: oss-security@lists.openwall.com,  Solar Designer <solar@openwall.com>,
  contact@gpg.fail
References: <3318308d-70b1-4ab3-9cca-ab4ea67dd27d@gmail.com>
	<20251228042744.GA629@openwall.com>
	<0009d6cc-143e-41e6-b240-eb526a9cb306@gmail.com>
	<87zf71pqe9.fsf@jacob.g10code.de>
	<f1811ded-6a8c-4eca-a8fc-4f9c77e4db5a@gmail.com>
Jabber-ID: wk@jabber.gnupg.org
Date: Tue, 30 Dec 2025 09:47:11 +0100
In-Reply-To: <f1811ded-6a8c-4eca-a8fc-4f9c77e4db5a@gmail.com> (Jacob
	Bachmeyer's message of "Tue, 30 Dec 2025 00:34:04 -0600")
Message-ID: <87ms30s6eo.fsf@jacob.g10code.de>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=assassinate_DRA_COCOT_Axis_of_Evil_SAR_jack_genetic_Cable_&_Wireless";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: Re: [oss-security] safe use of cleartext signatures?

--=assassinate_DRA_COCOT_Axis_of_Evil_SAR_jack_genetic_Cable_&_Wireless
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Tue, 30 Dec 2025 00:34, Jacob Bachmeyer said:

> structure, or is this basically an unfixable problem? Could GPG
> perform such validation steps and emit a warning if a clearsigned
> message does not strictly conform?

It does.  The thing here is that you need to known what has been signed.
The only way to do this is to let gpg give you the signed and unescaped)
data (with --output FILE).  Actually we have the same problem with MIME
when forwarding a mail.  Not all MUAs correctly mark which parts are
signed by which signature.


Shalom-Salam,

   Werner

--=20
The pioneers of a warless world are the youth that
refuse military service.             - A. Einstein

--=assassinate_DRA_COCOT_Axis_of_Evil_SAR_jack_genetic_Cable_&_Wireless
Content-Type: application/pgp-signature; name="openpgp-digital-signature.asc"

-----BEGIN PGP SIGNATURE-----

iJ8EARYKAEcWIQSHd0YfKgdOvEgNNZQZzByeCFsQegUCaVORjxsUgAAAAAAEAA5t
YW51MiwyLjUrMS4xMSwyLDINHHdrQGdudXBnLm9yZwAKCRAZzByeCFsQek8AAQDV
SfwofyHz9VZyqaYH2CIDfnZuXbAyuN3fMlpeGnkE2gEAmsTD3uC3jmfNkZ5W2HEX
3/bqHxzJWxHTNBEw1WNjQAE=
=i3/s
-----END PGP SIGNATURE-----
--=assassinate_DRA_COCOT_Axis_of_Evil_SAR_jack_genetic_Cable_&_Wireless--

