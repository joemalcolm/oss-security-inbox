X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2575" "Wednesday" "18" "March" "2015" "14:22:52" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<5509C27C.5010208@gmail.com>" "57" "Re: [oss-security] CVE Request: Linux kernel execution in the early microcode loader." nil nil nil "3" "2015031818:22:52" "[oss-security] CVE Request: Linux kernel execution in the early microcode loader." (number mark "        danielmicay@ Mar 18   57/2575  " thread-indent "\"Re: [oss-security] CVE Request: Linux kernel execution in the early microcode loader.\"\n") "<55097324.1070606@redhat.com>" ("<20150318122502.GA24063@chrystal.uk.oracle.com>" "<55097324.1070606@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7619 invoked by uid 550); 18 Mar 2015 18:23:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7584 invoked from network); 18 Mar 2015 18:23:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type;
        bh=VdkLVmUyMR60r5kTB6SIMtTwMrqA1WX9b13Z/p5tMEQ=;
        b=mIVcyxuqG56SXFA65peJzLLTCstfK4Tuj47/O/tG0mqpX/ajqvDXWYmS9bPmsBfyvu
         45nOk4HL3GXx2Yv8ikqNgI5RmOzzRjq3iEZ7QWfI3LlShApjOL+FyznQCotBiBOIy3dk
         Mye/noVlRLaPKb7u5jzc/i7d96MQoskpDroWiXlVagvnKvY4bRSuTHzlo5oS52rUqfdv
         yDi7/7g1PBarxp4XXsKYvz5Oq3nIFmdspSyvHCxwpLTN4tlRfwxUP+fqrWBVC0WMfL6f
         ua+MinpYGnKj4LXHapwUTf9Aq3X/5MTK3OgIPjLK5+xrzJPqo2ny9iQJXt0eAXb3ruwH
         40BQ==
X-Received: by 10.43.16.196 with SMTP id pz4mr97527871icb.69.1426702980994;
        Wed, 18 Mar 2015 11:23:00 -0700 (PDT)
Message-ID: <5509C27C.5010208@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
References: <20150318122502.GA24063@chrystal.uk.oracle.com> <55097324.1070606@redhat.com>
In-Reply-To: <55097324.1070606@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="RW9mLHIqtXAooTmqbHPSewE1R08GUm0gN"
Date: Wed, 18 Mar 2015 14:22:52 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: Linux kernel execution in the early
 microcode loader.
To: oss-security@lists.openwall.com

--RW9mLHIqtXAooTmqbHPSewE1R08GUm0gN
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On 18/03/15 08:44 AM, Florian Weimer wrote:
> On 03/18/2015 01:25 PM, Quentin Casasnovas wrote:
>> The attack vector could be from anyone between Intel and people
>> shipping/packaging the microcode, or could potentially be used to get a
>> resilient backdoor on system already compromised by sticking a tampered
>> microcode on the initrd.  It would also allow root to get kernel executi=
on
>> by recreating the initrd.  I admit these are overly paranoid scenarios, =
but
>> I _think_ there's still a privilege crossing from root to kernel exec wh=
ich
>> could make sense on certain security model.
>=20
> Yes, Secure Boot separates root privileges from code execution in ring 0
> (according to some interpretations of Secure Boot, in practice,
> signatures on binaries allowing ring 0 code execution are not revoked,
> so this new vulnerability does not alter the general picture).

Vanilla kernels don't have this separation even without vulnerabilities
though, at without without using an LSM. Even with an LSM, I'm pretty
sure there are ways around it unless you use seccomp too...

Signed modules and kexec are a step towards that but are still just a
pointless formality from a security perspective until the known holes in
the CAP_SYS_RAWIO bucket and elsewhere are closed. You can search for
CONFIG_GRKERNSEC_KMEM in the grsecurity patch for a list of the known
culprits.


--RW9mLHIqtXAooTmqbHPSewE1R08GUm0gN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJVCcKDAAoJEPnnEuWa9fIqSBkQAIv6k213IGKO7HCPvJnKxjGU
r5d25W5PBaRLLRbTsXB/jTTetVg+RTszHPZeV69cE9/8al5m/A7vgpUvAi6jeeyU
XS43zcbzoYMk/D/DNGWXSp4MmVS11eNVjfMnwA4IqheYBpJ6UhR9a2GZA3UrZ7At
MVqViZCPH+/5kN6TPQ3FMc9ZUDaHXzKQ71oaA9dLwXc0EgfLN1ON+0OA52Gz6adx
ZwXgmyAkqvNT1M/apGD/1jRLljTf0t6YR3bjfKoN37tz6mwPqvUUOZYwzM3KWHWX
5oxJ3UgiqwkqJToa6EO5ZY0t83BB7BUiyWPIpUqwPZvaJfGsPgTGwj0iEF3V1KoG
bfa16IBhyrjRe8RE5JCvshQH8EetIxJZEbv3KicSIbHrZ4rea+hXWex60sS/N3TQ
QJ3FcOy1F8Gz/WhZuRcQMCBH0fBsj+lWTZF2Z9nDn0vx5ke3281IABBmuquOF7jk
j+qIX7jRG4DQE7rbH1NMOeAv327ZUxqhUEg6CQ6x7t9yVwuVssNxSNVuBjz5/qUI
cfppW26fDI0zIfGQxRzlzKKwNulnYgtCKJtKlYMC11Movpyx/MsYr+rGOdOFw8RY
gK1b+KaIefDjlGFYw6PLmDfqClb/jzEX0N7JxyCFt4yjQVWoCXQwr4KHMvDk4zOW
5PRlZ6MeaN6V6H+s8AVG
=dWiI
-----END PGP SIGNATURE-----

--RW9mLHIqtXAooTmqbHPSewE1R08GUm0gN--
