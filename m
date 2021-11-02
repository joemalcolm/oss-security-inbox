X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1928" "Tuesday" "2" "November" "2021" "23:25:54" "+0000" "Seth Arnold" "seth.arnold@canonical.com" nil "52" "Re: [oss-security] Trojan Source Attacks" nil nil nil "11" nil nil (number mark "U       seth.arnold@ Nov  2   52/1928  " thread-indent "\"Re: [oss-security] Trojan Source Attacks\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Trojan Source Attacks" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12135 invoked by uid 550); 2 Nov 2021 23:26:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12114 invoked from network); 2 Nov 2021 23:26:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1635895557;
	bh=cQP021qoikmhy7+fDJAluZ+Ks2OaXRu1MF99Q3OlPKM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=GgOOeTfPCjWjvs/jOLB0H16OyTpIR49NNjl0AzqBFAarw2YsFfR0H3giOeAE2WrVK
	 Y6HadERmby94yTiSbyi3CbD8PDTmaEFm6G8QSTYHEUvmQaj5iApmz3+HvzdMYDRTAm
	 UMaVYc2scT/IKu5BNyXuuedcXd1nHLS0ew3b5mcEh3uwfBHhEjGTM4qUmg9AJMQq+J
	 TG/tsQJRpovg8ZfEiObehzm5IcrlXRoScpPROrtVydhKxP6MY2CwEbG//NfE+gk7TA
	 vEfD43xQJEzqT19jf2gY19gXcRmuT9tKCDM+WE6i9J4y6cT5qfsDL9L7q7+Fws7Ive
	 cD/3rjDr1zB1A==
Date: Tue, 2 Nov 2021 23:25:54 +0000
From: Seth Arnold <seth.arnold@canonical.com>
To: Stuart D Gathman <stuart@gathman.org>
Cc: oss-security@lists.openwall.com
Message-ID: <20211102232554.GA3040970@millbarge>
Mail-Followup-To: Stuart D Gathman <stuart@gathman.org>,
	oss-security@lists.openwall.com
References: <c2d12374-0ed6-d6d4-60ea-799934b6f173@cl.cam.ac.uk>
 <3n67pqq3-9ro6-p138-npo0-n4314s77638n@vanv.qr>
 <58836a21-c9df-41cc-d6ea-edd7b01f2105@piermont.com>
 <CAAHN_R1S7Jf96Y1raEuBrJ5VmTNUJJL8bp2Qbhh_Y-42FWfp2w@mail.gmail.com>
 <2dddaf8c-9220-f776-b0b4-13ad94d17e15@gathman.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="MGYHOYXEY6WxJCY8"
Content-Disposition: inline
In-Reply-To: <2dddaf8c-9220-f776-b0b4-13ad94d17e15@gathman.org>
Subject: Re: [oss-security] Trojan Source Attacks

--MGYHOYXEY6WxJCY8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Nov 02, 2021 at 04:43:48PM -0400, Stuart D Gathman wrote:
> Having some sample source files to test your code editor/viewer on would be
> helpful.

There's examples on https://github.com/nickboucher/trojan-source

GitHub was kind enough to include a banner like this on many of the files:

     This file contains bidirectional Unicode text that may be interpreted
     or compiled differently than what appears below. To review, open
     the file in an editor that reveals hidden Unicode characters. Learn
     more about bidirectional Unicode characters

eg: https://github.com/nickboucher/trojan-source/blob/main/Go/stretched-string.go


But not all of them:

https://github.com/nickboucher/trojan-source/blob/main/Go/homoglyph-function.go
Looks completely normal to me, but mouse hovering over the sayHello
function names shows the difference.

https://github.com/nickboucher/trojan-source/blob/main/Rust/invisible-function.rs
The isAdmin function name is rendered three different ways, but it's
pretty subtle, and the colouring gives no indication which of the two
definitions is actually going to be used (though I've got a guess).

There's otherwise no warnings today from GitHub that these two are out
of the ordinary.

Thanks

--MGYHOYXEY6WxJCY8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEQVAQ8bojyMcg37H18yFyWZ2NLpcFAmGByP8ACgkQ8yFyWZ2N
LpdlpggAs+n5o4sRM3y53Pw1ZneYN/nrCsGXwQHbhXTUT5Ets58YwzuED8AVWSih
C0lPfVdmXMNbAjddIB4AMFa2Ssr03pwnXUijkfJft8Mmb8pZ7szcXM47nZg18SnN
4JcMa6Gb/3oH71QSEb6UD+ROQW1wkxTlq3LplDHTmbBxsgnWR7z4RBhw9mxAmIt7
kkMuGU+D3TyboNPszTOOWysqg4GChkdpCrqoZpu+dqf3DXcFp20RGsHjp2tzNzj9
RQNDjkLvYPqWtY3NQ/2hF6XwFO3nalBh51i8kULT7ojSUxmerhLkDgDWJcGdmh0U
gQ5eGx1iD/HOVzB/xuPpkMRf34r8CA==
=oaUF
-----END PGP SIGNATURE-----

--MGYHOYXEY6WxJCY8--
