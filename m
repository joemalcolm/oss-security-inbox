Received: (qmail 3817 invoked by uid 550); 22 Jan 2025 15:04:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9427 invoked from network); 22 Jan 2025 14:18:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1737555491; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=v/UUUGE5w5+UQsfikXoyDio2Kd7clxzGGNyXbkYfMpU=;
	b=0dPZFbFNm2kSbxioQpuOodZKKxKdvjxcO2NNfqkXFC9J31mDUbFeX8JPuzStZFm/h5zVhc
	iCfSfo3xwaHpmDpT7eLK65PCOHcvnqL8j90KACkBehFaXay5X3XTwRrkLMM7XfII/zt9vy
	Ac0BdpmTkaomLF96viTgKQP+aqhR13g=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1737555491;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=v/UUUGE5w5+UQsfikXoyDio2Kd7clxzGGNyXbkYfMpU=;
	b=N1gNIj+82AzU+uwn7SpMR56hAYPN09dP4ZyF0Ay5QKrw24AMFMJkiQC9UiyiTd2U5JUn3a
	8so592Q61/qbfvAw==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1737555491; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=v/UUUGE5w5+UQsfikXoyDio2Kd7clxzGGNyXbkYfMpU=;
	b=0dPZFbFNm2kSbxioQpuOodZKKxKdvjxcO2NNfqkXFC9J31mDUbFeX8JPuzStZFm/h5zVhc
	iCfSfo3xwaHpmDpT7eLK65PCOHcvnqL8j90KACkBehFaXay5X3XTwRrkLMM7XfII/zt9vy
	Ac0BdpmTkaomLF96viTgKQP+aqhR13g=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1737555491;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=v/UUUGE5w5+UQsfikXoyDio2Kd7clxzGGNyXbkYfMpU=;
	b=N1gNIj+82AzU+uwn7SpMR56hAYPN09dP4ZyF0Ay5QKrw24AMFMJkiQC9UiyiTd2U5JUn3a
	8so592Q61/qbfvAw==
Date: Wed, 22 Jan 2025 15:18:10 +0100
From: Johannes Segitz <jsegitz@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <Z5D-Io-ch6YXKAAn@imap.suse.de>
References: <Z5DF00lM-3Q36mhh@kasco.suse.de>
 <2025012206-remember-glare-da7d@gregkh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="U5pQb2DYxpH+DX6Y"
Content-Disposition: inline
In-Reply-To: <2025012206-remember-glare-da7d@gregkh>
Subject: Re: [oss-security] issue with stuck Mitre CVE requests

--U5pQb2DYxpH+DX6Y
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 22, 2025 at 12:50:21PM +0100, Greg KH wrote:
> But this topic has come up recently in talking with other open source
> CNA groups.  The "real" solution for it is to talk to a different root
> CNA (i.e. anyone other than MITRE).  For open source projects, that
> _should_ be Red Hat, but I don't know if they yet have a simple way to
> ask for stuff like this, other than the back-channel you probably used
> last time.  I think RH is working to codify this somehow, but I can't
> speak for them.

We considered this and might go this route, but this is mostly for embargoed
issues. For more important vulnerabilities we share them via (linux-)
distros, but it would be IMHO kind of weird to request CVEs for non-public
vulnerabilities from RH.

> Or, better yet, as SUSE is a CNA, why not just assign CVE ids yourself,
> as part of the "open source projects affected in a SUSE product that are
> not covered by any other CNA" rules.  Doesn't your CNA charter allow you
> to do this now?

We're not empowered to do this. We are a CNA for code that we own (e.g.
zypper), but not for arbitrary open source projects.

Johannes
--
GPG Key E7C81FA0       EE16 6BCE AD56 E034 BFB3  3ADD 7BF7 29D5 E7C8 1FA0
Subkey fingerprint:    250F 43F5 F7CE 6F1E 9C59  4F95 BC27 DD9D 2CC4 FD66
SUSE Software Solutions Germany GmbH, Maxfeldstr. 5, 90409 Nuernberg
Gesch=E4ftsf=FChrer: Felix Imend=F6rffer (HRB 36809, AG N=FCrnberg)

--U5pQb2DYxpH+DX6Y
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE7hZrzq1W4DS/szrde/cp1efIH6AFAmeQ/hwACgkQe/cp1efI
H6DMvhAAlmp01X3STNxOjCTxYtU5dJ8rOSZ9ZV1hojgbPytd7KoTGxG7xXZsdepc
RZRjb0Gcb5ekCgNp9KymZ9B4NBq8w9EA0dCebixb4MzOlpuIKDwu+s1YspYufATG
Gf+iZ4/pk/qBFmI/M98uIpyiwqh+zI+yuF1+PVKq8RlSMnyFQquthtYK9NERNLBE
gjDqyGFPL4GeIR+e5k75iLbphqJtlAxbjUrftBUB8+0x4skY8s+cgpVkbMtglzZa
Klf59m+/U8B8Uv11xDti+fgGQZVDthYZA4UeMzKWXIdiA1ymBhpf4QuujoBDeu0V
d3+8dXvVUFGQqbfzd0cc4rjOqcNuFd91QBda4gfnauR7oxwE+mZqigB6Ze+m3G9e
d2+SfMAdbuXt2j4VNt8ynqbAs52Wyfg6hjcB1iW8B6liVNPm778KWAKDeiNqIjTC
qkeRxsE29UlpzaxH7ms31qVkB/Pw50VVB42h5gC/wei6XmLTn6LyISllTNnz/J//
BtKh9MuZPwoXMp54Gu7rnBFCZKL9CyVD30HVeDH0TWO6kUWNV5/hI0c85ntRAAQl
UpePaJJ6aR7DVtbRtkRGk1utLhddz6+WPvYBDrNGeRszNQ6TPa2Jp6AmrXzi++RS
UaNsVnJZsZRKeMw49XZn7fw+0yduGyoewiJ/v0QyqIONuepaQpM=
=cxMz
-----END PGP SIGNATURE-----

--U5pQb2DYxpH+DX6Y--
