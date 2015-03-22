X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3297" "Saturday" "21" "March" "2015" "23:01:31" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<550E308B.6080808@gmail.com>" "79" "Re: [oss-security] CVE for Kali Linux" nil nil nil "3" "2015032203:01:31" "[oss-security] CVE for Kali Linux" (number mark "        danielmicay@ Mar 21   79/3297  " thread-indent "\"Re: [oss-security] CVE for Kali Linux\"\n") "<550E21FA.6090704@redhat.com>" ("<550E21FA.6090704@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30185 invoked by uid 550); 22 Mar 2015 03:01:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30164 invoked from network); 22 Mar 2015 03:01:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type;
        bh=O2iskhCmqAKBjvkOKj5ZTm14FNATipxEM4qrQgOQ6sM=;
        b=E+teDfX2ZVRxf67CPQhMP0+iAV3/95OHgk18mlOeKNriLE8RtDkTbKCRvVDtHodgzh
         +jHSDyWr0TkMTFPgJrpMb0IENtZcatVrZ1f7LubN95bYpyj/fr5jcQalcrgyIzR4lnWf
         LFkZH9ryroaKdnSjkgweaoc2y1g0B7KzZOtXSb4iGkaYAsVlKLNbZyK9jwF5ncWfel/Q
         TqjhG4Fg3YcDzhNxG6+VP77PwFnSppta6hhh15DPFRRzwVCf9YUv57INlThZmvpgz3O2
         MGVUZj2OFr3GyE4Uq0aHcjj/cYSQNoYDoYRmLoFj0VCmPos0KGyQdIM1A1NRSbL5q3hH
         +CAA==
X-Received: by 10.50.7.1 with SMTP id f1mr6271026iga.8.1426993295678;
        Sat, 21 Mar 2015 20:01:35 -0700 (PDT)
Message-ID: <550E308B.6080808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
References: <550E21FA.6090704@redhat.com>
In-Reply-To: <550E21FA.6090704@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="jEAVPE44lrmBTIn9lSh5QgcLqciwiOtwO"
Date: Sat, 21 Mar 2015 23:01:31 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for Kali Linux
To: oss-security@lists.openwall.com

--jEAVPE44lrmBTIn9lSh5QgcLqciwiOtwO
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 21/03/15 09:59 PM, Kurt Seifried wrote:
> From RISKS, looks like it needs a CVE
>=20
> Date: Tue, 17 Mar 2015 07:37:50 -0700
> From: Henry Baker <hbaker1@pipeline.com>
> Subject: Kali Linux security is a joke!
>=20
> FYI -- Your best chance to hack the hackers...
>=20
>   "Downloading Kali Linux"
>=20
>   "Alert!  Always make certain you are downloading Kali Linux from offici=
al
>   sources, as well as verifying md5sums against official values.  It would
>   be easy for a malicious entity to modify a Kali install to contain
>   malicious code, and host it unofficially."
>   http://docs.kali.org/category/introduction
>=20
> ---
>=20
> No kidding!
>=20
> So how come whenever you do apt-get install in Kali Linux, it accesses
> http://security.kali.org and http://http.kali.org ??
>=20
> Hasn't Kali heard about MITM attacks against http ??

Using HTTPS for package downloads would only make it harder to figure
out which packages are installed on the system. A dedicated attacker
could figure this out based on side channels over time and I'm not at
all convinced that it's valuable information anyway. There are usually
other ways of distinguishing between different client/server software
and it's not like attacking Thunderbird with a mutt imap exploit is
going to trigger any kind of alert...

Community distributions like Debian and Arch rely heavily on completely
untrusted third party mirrors. That's probably even true of many with
commercial support. At some point, someone in the computer science club
at $UNIVERSITY sets up a cron job on a machine that many people probably
have access to anyway. The people who set up most of the mirrors
probably don't even have access to them anymore. Is there really trust
between the client and mirror that's worth securing?

> What's the point of verifying md5 sums against "official values", if Kali
> can't even get the "official values" securely ??

Obtaining the initial ISO is a different issue from the package security
model. They seem to use SHA1 anyway. Perhaps they used MD5 some time ago
and the summary on the main page was never updated.


--jEAVPE44lrmBTIn9lSh5QgcLqciwiOtwO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJVDjCOAAoJEPnnEuWa9fIqJikP/i/5+/BzYV87vGLKBm9ZMYTs
uHgkGehzM6+dj+daWiNFgKfTXrwzfX9Pf2QNvcozQxW2WhpDa3vaoMeGlxlxOYr2
vzUI+wkgA1vFHCWAwbBWulysOM4AYg24Eblt969P8ehnfdTfYi5KCeMFoCh4dZ8s
wpNJME9VTNJGcJ8K75R0YZ6pe44oG/p5TWkuLfPMDpZfaCQt9KutDK+aq98VdbT3
J4MMGLSJASv23p9Egj/yKEK/yyXYvSu7RmcHoHMmO2PhDbKd0TEMinFRXanKYbdP
/Yuhf9xYduXBbDTXZDf1/V+EGJdBh/UILpA7WivMFsduJ9U0vpv65g6SWFgBjAhV
4pJE72boOCZHHxvFlj+0R8BjYLQoCwku9hO2MP+28LIw0KW7cTq9FbAjlByAmdBH
AUba3R5YVf0DyvPTJ11ZftpXJt5CksKMEzhZ8UHJ0DXJsKT4kstPe7REuExdA30q
r8sWnXsEIEQggmezXS+OYxz6xLsKEipW6e9k6G7/Tra/jewb2UKVUtSZcGpS5hQw
c4px80ynI3v4HRAXiuAK45HuPEnPHgdhxV/U2gvWmmlQtm7qrBpnlZxzMNhvmcB5
dvk8oArxYJmMRuPlA9jxmMz6Xz087QMdZNuyS9uLEC9+Ucmzj+SvyJrlRV5QD8h0
fijsv/n9rku1iEv9xW2N
=yPcY
-----END PGP SIGNATURE-----

--jEAVPE44lrmBTIn9lSh5QgcLqciwiOtwO--
