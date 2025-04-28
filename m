Received: (qmail 4072 invoked by uid 550); 28 Apr 2025 13:21:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21623 invoked from network); 28 Apr 2025 09:37:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=gnupg.org;
	s=20181017; h=Content-Type:MIME-Version:Message-ID:In-Reply-To:Date:
	References:Subject:Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=fGgotoWYsSPdzRpExurOjjVVXGnKqPQXvcuWJ9gr3ZE=; b=D9dGqOKGJ6YUUVDCIIMprMkcch
	XIadLmpwhwxhBkDPgTDahDJENX/Raqp8KQA2SzpI0ru3mmkUAaGgsBPcJunYboA2SANQvftwlyiY2
	SgeGxfa9G9LuZAISHaZ8xGJLMFwnInRGmDKhLZnqKWxGNb4Tw5TPX0yOnJa4h5XkibHE=;
From: Werner Koch <wk@gnupg.org>
To: Jan Engelhardt <ej@inai.de>
Cc: Florian Westphal <fw@strlen.de>,  oss-security@lists.openwall.com,
  Sunny73Cr <Sunny73Cr@protonmail.com>,  "netfilter-devel@vger.kernel.org"
 <netfilter-devel@vger.kernel.org>
References: <1EYtBL_6T4QRNdyaUOoY2OO_FLzCtCfv4Q7gBf28RHR_k_LB-t0IN5R7v12bgaOOSKputo826H9PZ-2EmksldVLnGVoXyMQVemTy3tMra10=@protonmail.com>
	<20250425062231.GA7332@breakpoint.cc>
	<sqo7nqpr-151q-4sr4-1o40-r95r62179s29@vanv.qr>
X-message-flag: Mails containing HTML will not be read!
	 Please send only plain text.
Jabber-ID: wk@jabber.gnupg.org
Date: Mon, 28 Apr 2025 11:38:51 +0200
In-Reply-To: <sqo7nqpr-151q-4sr4-1o40-r95r62179s29@vanv.qr> (Jan Engelhardt's
	message of "Fri, 25 Apr 2025 09:46:15 +0200 (CEST)")
Message-ID: <87sels7hhw.fsf@jacob.g10code.de>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=Plume_Standoff_Security_Evaluation_H5N1_UT/RUS_computer_terrorism_ID";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: Re: [oss-security] Re: Trailing dot in Cygwin filenames [was:
 failed to clone iptables,ipset,nftables]

--=Plume_Standoff_Security_Evaluation_H5N1_UT/RUS_computer_terrorism_ID
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Hi!

> But Cygwin does something unusual, it *actually* creates a file with
> the 2-char sequence "y.", through whatever means. Explorer *shows* it

  C:\Users\dd9jn\test>echo foo >x.
=20=20
  C:\Users\dd9jn\test>dir
  [...]
  28.04.2025  11:30                 6 x
                 1 Datei(en),              6 Bytes
=20=20
  C:\Users\dd9jn\test>echo foo >\\?\\c:\users\dd9jn\test\x.
=20=20
  C:\Users\dd9jn\test>dir
  [...]
  28.04.2025  11:30                 6 x
  28.04.2025  11:30                 6 x.
                 2 Datei(en),             12 Bytes
=20=20
Thus you can create such a file using the Extended Path Length Prefix
which bypasses the mapping used by CreateFile.  For detailed info see
also

https://googleprojectzero.blogspot.com/2016/02/the-definitive-guide-on-win3=
2-to-nt.html



Salam-Shalom,

   Werner

--=20
The pioneers of a warless world are the youth that
refuse military service.             - A. Einstein

--=Plume_Standoff_Security_Evaluation_H5N1_UT/RUS_computer_terrorism_ID
Content-Type: application/pgp-signature; name="openpgp-digital-signature.asc"

-----BEGIN PGP SIGNATURE-----

iIMEARYKACsWIQSHd0YfKgdOvEgNNZQZzByeCFsQegUCaA9Mqw0cd2tAZ251cGcu
b3JnAAoJEBnMHJ4IWxB6GrMA/1ErZrryPW9I5PzDBEP7qnTm6CmvHb1XTGpPCYY3
GzkiAQCspnhUjJls8OtNEQQGp8EQBS5QK658mrVqCDJk+3XACw==
=L7uo
-----END PGP SIGNATURE-----
--=Plume_Standoff_Security_Evaluation_H5N1_UT/RUS_computer_terrorism_ID--

