Received: (qmail 11869 invoked by uid 550); 20 Dec 2023 08:40:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11851 invoked from network); 20 Dec 2023 08:40:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1703061669; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0OIYkgOXJmZR3RojwugSDHDvygSqVdAQIYQDfpqw83E=;
	b=XuLlPS7HfBiO+EZQS6ZIwwwK/b8hy8kg0W8ToZ3Ckh+FoMoX8Iwy6vEo1mfTB04tuxCcdi
	9jPQVVuB3pgICccryACPmCKQd+mgdNb9SoeeDNyeK1UXxs1BtzsleiDLI3FOFM7d6G6Wxa
	j3yNtWCi+iiis3FXcfOet+cVV/X77uk=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1703061669;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0OIYkgOXJmZR3RojwugSDHDvygSqVdAQIYQDfpqw83E=;
	b=h5Srm/gleKmqZrET31r6XoMoH1RKKH6VIKJQqRURtvYf+nW3uGEp5hnSv2oOix3C3Ab+zo
	uBfKzexGFZhjxNAw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1703061669; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0OIYkgOXJmZR3RojwugSDHDvygSqVdAQIYQDfpqw83E=;
	b=XuLlPS7HfBiO+EZQS6ZIwwwK/b8hy8kg0W8ToZ3Ckh+FoMoX8Iwy6vEo1mfTB04tuxCcdi
	9jPQVVuB3pgICccryACPmCKQd+mgdNb9SoeeDNyeK1UXxs1BtzsleiDLI3FOFM7d6G6Wxa
	j3yNtWCi+iiis3FXcfOet+cVV/X77uk=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1703061669;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0OIYkgOXJmZR3RojwugSDHDvygSqVdAQIYQDfpqw83E=;
	b=h5Srm/gleKmqZrET31r6XoMoH1RKKH6VIKJQqRURtvYf+nW3uGEp5hnSv2oOix3C3Ab+zo
	uBfKzexGFZhjxNAw==
Date: Wed, 20 Dec 2023 09:41:07 +0100
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20231220084053.GD25373@suse.de>
References: <a8637927-82b1-4f95-a7e8-7aa6cbaca455@rub.de>
 <6c354ad9-7d17-4b37-8e54-73cc4088f2b0@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6c354ad9-7d17-4b37-8e54-73cc4088f2b0@oracle.com>
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Frankenstra=DFe_146=2C_90461_Nuernberg=2C_Ger?=
 =?iso-8859-1?Q?many=2C_GF=3A_Ivo_Totev=2C_Andrew_Myers=2C_Andrew_McDonald?=
 =?iso-8859-1?Q?=2C_Martje_Boudien_Moerman=2C_HRB_36809=2C_AG_N=FCrnberg?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Authentication-Results: smtp-out1.suse.de;
	none
Subject: Re: [oss-security] CVE-2023-48795: Prefix Truncation Attacks in SSH
 Specification (Terrapin Attack)

On Tue, Dec 19, 2023 at 01:31:03PM -0800, Alan Coopersmith wrote:
> On 12/18/23 08:08, Fabian Bäumer wrote:
> > ### Mitigations
> > 
> > To mitigate this protocol vulnerability, OpenSSH suggested a so-called
> > "strict kex" which alters the SSH handshake to ensure a
> > Man-in-the-Middle attacker cannot introduce unauthenticated messages as
> > well as convey sequence number manipulation across handshakes. Support
> > for strict key exchange has been added to a variety of SSH
> > implementations, including OpenSSH itself, PuTTY, libssh, and more.
> > 
> > **Warning: To take effect, both the client and server must support this
> > countermeasure.**
> 
> Open source projects I see have implemented this already are:
> 
> - AsyncSSH 2.14.2:
>   https://asyncssh.readthedocs.io/en/latest/changes.html#release-2-14-2-18-dec-2023
> 
> - Dropbear git:
>   https://github.com/mkj/dropbear/commit/6e43be5c7b99dbee49dc72b6f989f29fdd7e9356
> 
> - Erlang ssh 5.1.1:
>   https://www.erlang.org/doc/apps/ssh/notes
> 
> - golang.org/x/crypto 0.17.0:
>   https://groups.google.com/g/golang-announce/c/qA3XtxvMUyg
> 
> - libssh 0.10.6 and 0.9.8:
>   https://www.libssh.org/2023/12/18/libssh-0-10-6-and-libssh-0-9-8-security-releases/
> 
> - libssh2 git:
>   https://github.com/libssh2/libssh2/issues/1290
>   https://github.com/libssh2/libssh2/pull/1291
> 
> - OpenSSH 9.6:
>   https://www.openssh.com/txt/release-9.6
> 
> - Paramiko 3.4.0:
>   https://www.paramiko.org/changelog.html#3.4.0
> 
> - PuTTY 0.80:
>   https://lists.tartarus.org/pipermail/putty-announce/2023/000037.html
> 
> - russh 0.40.2:
>   https://github.com/warp-tech/russh/releases/tag/v0.40.2
> 
> - SFTPGo 2.5.6:
>   https://github.com/drakkan/sftpgo/releases/tag/v2.5.6
> 
> - ssh2 [node.js/npm] 1.15.0:
>   https://github.com/mscdex/ssh2/commits/v1.15.0
> 
> - Tera Term 5.1:
>   https://github.com/TeraTermProject/teraterm/releases/tag/v5.1
> 
> - Thrussh 0.35.1:
>   https://pijul.org/posts/2023-12-18-thrussh-cve/
> 
> There's also some open bugs against these open source projects that are not yet handled:
> 
> - Apache Mina:
>   https://github.com/apache/mina-sshd/issues/445
> 
> - ProFTPD (mod_sftp):
>   https://github.com/proftpd/proftpd/issues/1760
> 
> - SSHJ:
>   https://github.com/hierynomus/sshj/issues/916

some more

Jsch (Java SSH): release 0.2.15 fixes it https://github.com/mwiede/jsch/releases/tag/jsch-0.2.15

Also apache-sshd and trilead-ssh2 as Java SSH implementations are
affected.

tinyssh affected, has a ticket open.

rubygem-net-ssh also affected.

The rust ecosystem has a ssh crate which fixates its used libssh version. "libssh2-sys", so
crates and binaries referencing will need updates.

python Twisted has an SSH stack too, but no chacha or etm macs so far. 

Ciao, Marcus
