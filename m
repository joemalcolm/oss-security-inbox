X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3120" "Wednesday" "17" "March" "2021" "09:05:14" "-0400" "Brad Spengler" "spender@grsecurity.net" nil "70" "Re: [oss-security] CVE-2021-3428 Linux kernel: integer overflow in ext4_es_cache_extent" nil nil nil "3" nil nil (number mark "U       spender@grse Mar 17   70/3120  " thread-indent "\"Re: [oss-security] CVE-2021-3428 Linux kernel: integer overflow in ext4_es_cache_extent\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-3428 Linux kernel: integer overflow in ext4_es_cache_extent" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19584 invoked by uid 550); 17 Mar 2021 13:15:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10218 invoked from network); 17 Mar 2021 13:05:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=grsecurity.net;
	s=mail; t=1615986314;
	bh=N6tRr+jpCxjYmrNWYX/k8vAGCYeMvBUbvqHROXGJV7I=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=JRivFVRj8GXJ2ZBxkiAkw00LLuOqfRbm98BDtnVL6lAiqpVjk4JdVNY5zOx9tk3no
	 JPcRjh1pIecyPbWTYuwrX0bTu2COay61Yo7scnfMourvz3fNeAH3sIXMsHQ2ZnT8Dk
	 /jpS8kFxbPoVSisShNrDIRR7KtBRQ6hIaL20ZXbw=
Date: Wed, 17 Mar 2021 09:05:14 -0400
From: Brad Spengler <spender@grsecurity.net>
To: oss-security@lists.openwall.com
Message-ID: <20210317130514.GA1279@grsecurity.net>
References: <CAKx+4-oZ3YabEpWXYSs8LccRc8PcC_o2fbg7V5FpLT+nVBn66w@mail.gmail.com>
 <YFHVuDKj+oMwxBZX@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0F1p//8PRICkK4MW"
Content-Disposition: inline
In-Reply-To: <YFHVuDKj+oMwxBZX@kroah.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: [oss-security] CVE-2021-3428 Linux kernel: integer overflow in
 ext4_es_cache_extent

--0F1p//8PRICkK4MW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Greg,

> Please include what kernel version things like this were "found in" and
> when it was fixed, otherwise you force everyone to go scramble just to
> find that this was reported in July of 2020 and fixed then in the 5.9
> kernel release and has already been backported to all relevant stable
> kernel releases in August of last year.

Those are a lot of assumptions there.  I do wonder how you feel you can
ignore the CVE process the rest of the world is engaged in, while at the
same time boss around those engaged in it.  But setting aside the irony
of someone telling the world "if you want to know what was fixed or not,
we publish the source, figure it out for yourself" being irate at being
handed the same terms, I went ahead and did the investigation for you.

The fix (part of the patch series https://www.spinics.net/lists/linux-ext4/msg73471.html):
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=ce9f24cccdc019229b70a5c15e2b09ad9c0ab5d1
was included in 5.9, and was backported through to 5.7.  However, you'll
note the fixes tag points to a commit first appearing in 5.2.  That commit
commit itself was backported to some earlier stable kernels, like 4.14.

Why wasn't the fix for this CVE backported to kernels older than 5.7? For
the same reason many other bugs/vulnerabilities don't get backported: small,
often trivial conflicts.

In this instance, it becomes clear the reason why it wasn't backported any
further than 5.7 is because 5.7 contained the following commit:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=54d3adbc29f0c7c53890da1683e629cd220d7201

without which there is a small conflict in fs/ext4/block_validity.c:
<<<<<<< HEAD
                else {
                        sbi->s_es->s_last_error_block = cpu_to_le64(start_blk);
                        return 0;
                }
=======
                else
                        return entry->ino == ino;
>>>>>>> ce9f24cccdc0... ext4: check journal inode extents more carefully

Thanks,
-Brad

--0F1p//8PRICkK4MW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAEBCgAGBQJgUf6DAAoJEETRwPglJf5JOlsQAIz5CIg84sUNuJJ3x8oOnI5K
YUT4ojrG9h0ZsqEAvZdPm9ywIrwWTh/3M7VYmoaHMBvCzkJP22X0oo6W8R5H7i/w
C0D51tXn0LCghHp08lQfU6atUQDMs2K4XlmvmiA6RkvVf7bPr8NgSpJSYNZmgvC/
/iymB1SVQu/senVd386G0obsWjd0rsR4IYJ/3vamS62x5VO/Nlm6s5f89WHSVNmZ
t8jrnrJ/R8Vv6+9twMMzserxUO+lFC/5XMf9BCloc7bocv1vL4FCh4UGiYQ+BvbO
ruxZr+ui31mIjq+EBViLyTSdibvDlIBvSeLxzAQWK+5GlVfaayjHKGrc86c4YhcR
FJ26IVaaHOLMnOv6f0f8YW7SauhVN/tq7Xphxk0ySr1S6F0WbpLYtknKcKGJsTHy
Ys8/Txwshv12BpStyCLm6FfMRN9gjwXlhLR85Aefw3kg52lppcE6zuNflA4n98ID
VASpW41wxJnHTGY5jgOxsfo60CHn7Je7B4wLkrx+n7z7wm0mPZva6EB5LRjJyen8
LgfZKeZzbgWxqs1OY/npFG2AG1BbhaV8EsNrwzfDqy2mJZwfuKA1HYBSp+fKSp/f
NepaJfT8Mf6teg9nOGLqQZPA3x7VnHYJAEFz8uAeDjZT8YgtiTHDPVTAtEMOIko6
qBVeVGpMtjNkusGKtbSt
=k8a/
-----END PGP SIGNATURE-----

--0F1p//8PRICkK4MW--
