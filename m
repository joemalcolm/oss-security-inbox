X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4411" "Sunday" "1" "August" "2021" "18:31:27" "+0000" "John Helmert III" "jchelmert3@posteo.net" nil "89" "Re: [oss-security] Polipo: denial-of-service using range" nil nil nil "8" nil nil (number mark "U       jchelmert3@p Aug  1   89/4411  " thread-indent "\"Re: [oss-security] Polipo: denial-of-service using range\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Polipo: denial-of-service using range" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5783 invoked by uid 550); 1 Aug 2021 20:32:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32701 invoked from network); 1 Aug 2021 18:31:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
	t=1627842692; bh=loPe+pVdRcapaRt1esFhuYladXkOyoKaojZkT8p+6ns=;
	h=Date:From:To:Subject:From;
	b=SX9BT6nrNpyewSZjecLUkLHnrBx30cNEKFjedJ8S0o1aTIik++FtgtN5hKFX3uM2v
	 1/50G9JrFXCQsNHJmYfFLSX24MiT9v8Gz+HkzCysRmSHJjIAwuu7tAczZgkfFOXvkC
	 LnVZjQaNLQ5RxVDS5D/f70P2cu2V1TB0capcV7vG0tpuFmqVijZQLxTsD0yQMS6ked
	 3gwECw6eigS+o0jQA/iEAfBYDKf6QHF3jmxtWwXDTgxQm8m3R2K87Fxl2uN2ZDlVUI
	 IoF7G5kab7/8rXCAjP8IibKOwe1VEElTrHrx8gCdIEBXkskLJlo2R+xKnHfoJ+xvDf
	 8GBULK+nHSx4w==
Date: Sun,  1 Aug 2021 18:31:27 +0000
From: John Helmert III <jchelmert3@posteo.net>
To: oss-security@lists.openwall.com
Message-ID: <YQbnc3DxV6iEaA3B@sol.nexus.lan>
References: <20201118171206.443be0215d1b142b5ce7584e@gmail.com>
 <CAH8yC8nDTF9-aBtuKG+81rEYmf4QigMfwB3EEw8hwYiGHP+AeQ@mail.gmail.com>
 <20210728150151.3eadaae2@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="FNUf+iWh0REszXUg"
Content-Disposition: inline
In-Reply-To: <20210728150151.3eadaae2@gmail.com>
Subject: Re: [oss-security] Polipo: denial-of-service using range

--FNUf+iWh0REszXUg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

How did you produce this? I can't seem to reproduce with the original
PoC script. Running it, polipo outputs:

Empty DNS name.
Host (unknown) lookup failed: empty name (22).

The script outputs:

HTTP/1.1 504 Host (unknown) lookup failed: empty name
Connection: keep-alive
Date: Sun, 01 Aug 2021 18:07:07 GMT
Content-Type: text/html
Content-Length: 515
Expires: 0
Cache-Control: no-cache
Pragma: no-cache

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head>
<title>Proxy error: 504 Host (unknown) lookup failed: empty name.</title>
</head><body>
<h1>504 Host (unknown) lookup failed: empty name</h1>
<p>The following error occurred while trying to access <strong>http://</strong>:<br><br>
<strong>504 Host (unknown) lookup failed: empty name</strong></p>
<hr>Generated Sun, 01 Aug 2021 13:07:07 CDT by Polipo on <em>localhost:8123</em>.
</body></html>


Fixing the script to GET a real website shows a bunch of memory alignment
issues, but no heap overflow as far as I can tell:

dns.c:1467:5: runtime error: store to misaligned address 0x7ffe1de13c69 for type 'short unsigned int', which requires 2 byte alignment
0x7ffe1de13c69: note: pointer points here
 63 6f 6d  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  00 00 00 00 00
              ^
dns.c:1468:5: runtime error: store to misaligned address 0x7ffe1de13c6b for type 'short unsigned int', which requires 2 byte alignment
0x7ffe1de13c6b: note: pointer points here
 6d  00 00 01 00 00 00 00 00  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00
              ^
dns.c:1554:5: runtime error: load of misaligned address 0x7ffe1de13b69 for type 'short unsigned int', which requires 2 byte alignment
0x7ffe1de13b69: note: pointer points here
 63 6f 6d  00 00 01 00 01 c0 0c 00  01 00 01 00 00 fe a7 00  04 5d b8 d8 22 7f 00 00  50 3c e1 1d fe
              ^
dns.c:1555:5: runtime error: load of misaligned address 0x7ffe1de13b6b for type 'short unsigned int', which requires 2 byte alignment
0x7ffe1de13b6b: note: pointer points here
 6d  00 00 01 00 01 c0 0c 00  01 00 01 00 00 fe a7 00  04 5d b8 d8 22 7f 00 00  50 3c e1 1d fe 7f 00
              ^
dns.c:1596:9: runtime error: load of misaligned address 0x7ffe1de13b6f for type 'short unsigned int', which requires 2 byte alignment
0x7ffe1de13b6f: note: pointer points here
 00 01 c0 0c 00  01 00 01 00 00 fe a7 00  04 5d b8 d8 22 7f 00 00  50 3c e1 1d fe 7f 00 00  22 3d 00
             ^
dns.c:1596:9: runtime error: load of misaligned address 0x7ffe1de13b71 for type 'short unsigned int', which requires 2 byte alignment
0x7ffe1de13b71: note: pointer points here
 c0 0c 00  01 00 01 00 00 fe a7 00  04 5d b8 d8 22 7f 00 00  50 3c e1 1d fe 7f 00 00  22 3d 00 00 40
              ^
dns.c:1596:9: runtime error: load of misaligned address 0x7ffe1de13b73 for type 'unsigned int', which requires 4 byte alignment
0x7ffe1de13b73: note: pointer points here
 00  01 00 01 00 00 fe a7 00  04 5d b8 d8 22 7f 00 00  50 3c e1 1d fe 7f 00 00  22 3d 00 00 40 60 00
              ^
dns.c:1596:9: runtime error: load of misaligned address 0x7ffe1de13b77 for type 'short unsigned int', which requires 2 byte alignment
0x7ffe1de13b77: note: pointer points here
 00 00 fe a7 00  04 5d b8 d8 22 7f 00 00  50 3c e1 1d fe 7f 00 00  22 3d 00 00 40 60 00 00  6b 3c e1
             ^

--FNUf+iWh0REszXUg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEElFuPenBj6NvNLoABXP0dAeB+IzgFAmEG6HsACgkQXP0dAeB+
Izjg1Q/+PLHfrc0fwC6uaIbUbV0tchnoiI5O5NN+LMYGOn3cQ62GTF5pdk+0/kDG
/NvoVMtC1CJADJu+a/s0Ah+rsbcH4hAvgQ31WAKiBjzSt2m8Bc7YKh/zsL5LMrF8
6IPUfrhOV0KQmjeOOn62r+sjiSzhIZBKb4fa1tWWTxpQ4XMFPVhW+U/sjzxe5l+L
hkpbe8cMyB4OT1ntycMjpROayuH8iTpCEdaGUZV66Unx89kU1VMU8C39bfYcbkEe
ky5mzMPKo7/KCrgxpU7xeZZlBw50tfFYZZIkkjrz0LWoovc9xL4IBikkcC7srcIF
323JzPV+XmqacW0sHh7ZaoGxUg36sVyxu3wyS4tKm8iHvFH3Co65ND2lApX1GTGD
xGCmmW54dyUE6kPfL3X3i7mLzn+L1LWF+CmaOpFuJXRNn0WaPKWjFa8I91dKqrXj
0njciQUx5rCOiz2OeZ6NC08gZ9Zxec+dTRYVBa0VKBnG+w0WoYxq2lV6yv7epuZd
Myb15cZVFAy5EXtLw/WbUQc0ci0oKVUoSwkDx9eRi8GMJA0wrUX+81xuue+f62cA
NsONGOmXP1FM57sxXKVX8ziW8WMoI4wW1uKVB0JgXabfdn08ztCPpbQEbuQscgRm
Ea1S7cnaq0iznGcQNv9Vsmvd5SH7R4KX3wVuN0wdWhiI5eZ9teE=
=upkR
-----END PGP SIGNATURE-----

--FNUf+iWh0REszXUg--
