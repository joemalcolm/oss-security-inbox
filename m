X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2049" "Saturday" "16" "September" "2017" "21:05:18" "+0300" "Alexander Batischev" "eual.jp@gmail.com" "<20170916180518.GB28963@curry>" "55" "[oss-security] Podbeuter podcast fetcher: remote code execution" "^Date:" nil nil "9" "2017091618:05:18" "[oss-security] Podbeuter podcast fetcher: remote code execution" (number mark "        eual.jp@gmai Sep 16   55/2049  " thread-indent "\"[oss-security] Podbeuter podcast fetcher: remote code execution\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7457 invoked by uid 550); 16 Sep 2017 18:48:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9587 invoked from network); 16 Sep 2017 18:05:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=pfJ04BPvZ4NNoNOl5tw1lRxJxXZDoRlSV6mOwDNF4Rc=;
        b=UaK+rRto+6I5vCdvHHBSscw71KO9bZ50mhphdx9mOP2ut5T0+mlx7xctEZZk45V2UQ
         yDPW2EwBYQz621CRlp1GEo6HimmctruVFH0dzSpT7lY01TvF4fjn7BFzA9WFg1epX2HE
         ZwB0jTabirshufd9jWzKrxLnno0hsBOgliBuk41GHLkFCVcPBf/VIS745x5OIPg0oFa7
         lRMtmXY35Y8XqmHylhnFgTctXm22R+F8z5Ss50RvNinT4o7TKQrvtRGDh9UYcZoYbnSi
         lsD+82QBI71IIU/AVOlqODEblEXJVnJPsFDNARpIqITmyxHQcDys6At2L4ZfJGbnqNo+
         T2Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=pfJ04BPvZ4NNoNOl5tw1lRxJxXZDoRlSV6mOwDNF4Rc=;
        b=CCIyg4PwcxTLSWTY8AeNbS28ClEThGDgBH9up51I6HsErlNPlwv8MIZ0YcJXNY0hCp
         eAZQH8wpy12z74aNFyWgpUBzGXW9emb1AXZc75by+PGAryNhhyeSxlvGscM9JOfgBdD7
         oS22w4Gh5xKeaUejB9CDfli4TTipzE7JIXs3rO/k84NWNK5NqqKjOHxgQxVpbM4hmFvm
         4NOFTzq2zeh24TEIm4P845OSb5yHYw5Q9SrYBWi9AHL8b+Af8LdBdmS9rdfhcffJ+u50
         TwEkdWF3aN/bZENCLlP2IB/robZJ61Xu4TYiKPPamkdubgnOK8HEaAqGSOM13GSS1NUv
         kQig==
X-Gm-Message-State: AHPjjUhjGQBXPWe5PtpqHDoE3+yMujNdLKwAnfbyuXKKdmk6TTGmhIX4
	eQiM+iP8Hfl+FgXgFi0=
X-Google-Smtp-Source: AOwi7QCkpMtNzbl0fAZ6r9OZ4MLomrg5V0HT9AVRUI1TE1ojAHmbjB8Sr5Ovk9HuOTV/rW/QzzzPzw==
X-Received: by 10.25.216.85 with SMTP id p82mr2301891lfg.21.1505585120174;
        Sat, 16 Sep 2017 11:05:20 -0700 (PDT)
Message-ID: <20170916180518.GB28963@curry>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Bn2rw/3z4jIqBvZU"
Content-Disposition: inline
User-Agent: Mutt/1.8.3 (2017-05-23)
Date: Sat, 16 Sep 2017 21:05:18 +0300
From: Alexander Batischev <eual.jp@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Podbeuter podcast fetcher: remote code execution
To: oss-security@lists.openwall.com

--Bn2rw/3z4jIqBvZU
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Podbeuter is a podcast fetcher and player that's developed alongside=20
with Newsbeuter, an RSS/Atom feed reader for text consoles.

Versions 0.3 through 2.9 are vulnerable to remote code execution. An=20
attacker can craft an RSS item where the name of media enclosure
(the podcast file) contains shell code. When user plays the file in=20
Podbeuter, the shell code will be executed.

A commit fixing the vulnerability in Git:=20
https://github.com/akrennmair/newsbeuter/commit/c8fea2f60c18ed30bdd1bb6f798=
e994e51a58260

A patch for Podbeuter 2.9:=20
https://github.com/akrennmair/newsbeuter/commit/26f5a4350f3ab5507bb8727051c=
87bb04660f333

Upstream issue: https://github.com/akrennmair/newsbeuter/issues/598

I've requested a CVE from MITRE on August 27th, but haven't heard back=20
yet, so decided to disclose without a number.

--=20
Regards,
Alexander Batischev

PGP key 356961A20C8BFD03
Fingerprint: CE6C 4307 9348 58E3 FD94  A00F 3569 61A2 0C8B FD03


--Bn2rw/3z4jIqBvZU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEzmxDB5NIWOP9lKAPNWlhogyL/QMFAlm9Z94ACgkQNWlhogyL
/QMKtw/9HipZGuTQQTh1pDh5Jc1LnKVcwKh31dn2Zh3X98DcXfzAeAG77onA3roa
a4TaB7LRz/U06Pv/ym45BmNHdYhD7KozRBZS7d8c3sTl3DP4tXBxEAf42ELN2wcA
50j+nHukCFfoNy7NRqRZ7028tr/6yHw6DN1OyUIcU5DitCTWcxcfGmf2filq625y
ko6lp5D3hNCS8AHZ9I4gzj0Pe2IO5rclGzjrOtJw12JIZMh2pFUM+Wd9akvm+Uqf
XmGaxpeHz9bgF7O1pc7hTs4AdSnDuDt2Ho/5mZ9boGY2LEl6ZggZYUAAG9FbA/RS
I7LH9c21imojv+A5uYALBqxcpNXUPtGS4IzPIEQiZjJRGKyz18ZthcWM/NPwLVOG
4FXWCSNdgfi5nWAK9wRTlM3b8cqs70Jzc6of2CNOSXQeQaJDAryB5iP7kk6YqKeq
IeVMEAHkgMXR8CS7B/TuGLlF3JiK8ePoOLMFnMYZSQY09z5glz+jbE/AhlUlCyVZ
lR9MMIqV7pGL48fkgGKpYkH9mB2TzWZ7ODKq1YGVggxNLqQI2trzl+sXT8QINkYz
ZqdZ9tQl8TNd1p1yk56NgVoEtltEcb8HofjeRoiGYg+V8qH+Kes+MU0gpHM7uRv1
gboMblHVRG7CvZyO9AAY48wK1H0y8Xz3vTH2BY54BVUjRcVFBgk=
=+fRa
-----END PGP SIGNATURE-----

--Bn2rw/3z4jIqBvZU--
