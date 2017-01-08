X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2486" "Sunday" "8" "January" "2017" "10:23:51" "-0500" "Brad Spengler" "spender@grsecurity.net" "<20170108152351.GA25328@grsecurity.net>" "67" "Re: [oss-security] Re: Firejail local root exploit" "^Date:" nil nil "1" "2017010815:23:51" "[oss-security] Re: Firejail local root exploit" (number mark "        spender@grse Jan  8   67/2486  " thread-indent "\"Re: [oss-security] Re: Firejail local root exploit\"\n") "<1483876318.5179.50.camel@juliet.mcarpenter.org>" ("<730e35dc08384f6f9bef4e403802a871@imshyb02.MITRE.ORG>" "<f47526d9-157e-1600-8f64-d737db07753c@web.de>" "<1483795275.8979.125.camel@juliet.mcarpenter.org>" "<1483876318.5179.50.camel@juliet.mcarpenter.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7951 invoked by uid 550); 8 Jan 2017 15:25:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7396 invoked from network); 8 Jan 2017 15:24:04 -0000
Message-ID: <20170108152351.GA25328@grsecurity.net>
References: <730e35dc08384f6f9bef4e403802a871@imshyb02.MITRE.ORG>
 <f47526d9-157e-1600-8f64-d737db07753c@web.de>
 <1483795275.8979.125.camel@juliet.mcarpenter.org>
 <1483876318.5179.50.camel@juliet.mcarpenter.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="k1lZvvs/B4yU6o8G"
Content-Disposition: inline
In-Reply-To: <1483876318.5179.50.camel@juliet.mcarpenter.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Sun, 8 Jan 2017 10:23:51 -0500
From: Brad Spengler <spender@grsecurity.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Firejail local root exploit
To: oss-security@lists.openwall.com

--k1lZvvs/B4yU6o8G
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> $ ./foo=20
> exit code 2

You're missing an important part here: checking to see whether your binary =
is running
with privilege in the first place.  If you had done that, you would see tha=
t it's
not running suid at all, but rather with your own privilege.  This is enfor=
ced at the
kernel level with the following code in kernel/seccomp.c present since the =
introduction
of seccomp-bpf in 2012:

        /*
         * Installing a seccomp filter requires that the task has
         * CAP_SYS_ADMIN in its namespace or be running with no_new_privs.
         * This avoids scenarios where unprivileged tasks can affect the
         * behavior of privileged children.
         */
        if (!task_no_new_privs(current) &&
            security_capable_noaudit(current_cred(), current_user_ns(),
                                     CAP_SYS_ADMIN) !=3D 0)
                return ERR_PTR(-EACCES);


libseccomp by default enables NNP when creating a filter, as otherwise the =
code allows
you to skip syscalls while still setting the return value to 0, which no su=
id binary
would be able to protect iself against.

Prior discussion of this can be found here:
https://sourceforge.net/p/libseccomp/mailman/message/29127662/
https://sourceforge.net/p/libseccomp/mailman/message/29136181/

Nothing to see here, but thanks for scaring everyone on a Sunday morning.

-Brad

--k1lZvvs/B4yU6o8G
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAEBCgAGBQJYclmAAAoJEETRwPglJf5JT5wP/jP3eASzvBQc44Awi2wd8XOV
ylpEN/fgTR12VdbG/Lh6nKHjPXXCVrl3ZzbyE4Pz9zcvzAkudge6FnT6BrkP8VSp
H9eWEd+4TFLVTPq4hIxcm2oaiN9vFrEX6KAHjsVVTFo8+AJgBUPZ3yfyF1+I7vSA
pdddLH/5kquac5T7Rax/aWmcuklXQj6fIAo7Q2okGmvgNvkPZCQ6yD9rzBdCNYCU
8wLJB57O92T/bnSOpgznX+Kmxu/proxzPfrjXYdkL0ofGcsE3thannjbtrnsFdxi
uyTq6JFtf/uFILl9ttgmNF/+GViDgBCtkxBO1hLoegU+E/VwK9xi6IG30ahY1L8Q
qnsJIgWJqEfax/3Pwwp1jC8mz9CkBVVZbgGLXJlHeqfw203y6V1Cg+c5uI4PJRYo
RUF+cxhIc67c57+6OOs7ILxDIE8J1+Y0fV9o9dbUq5Ht4wHkxzArMwVLIPFXZbfv
lko0KBuvawUdoiQKrtUTXYO5x6T8a0Xrgv47l+vZhE9skToLazAu4chM3Xyd65t5
Js1zdpD5SraQEArlWEYvcjztfYn9bx0an1B3h/71cMz46IsS+lNYwfEA64Db6kOa
PS+GFnzb2yEH3cQcD/M/4F20BapB56MQQ7mA6pwxEFvQwBL6ixNXUks6oR0uHRMe
JgP5hOYAksiSnzMWBEpJ
=9TwN
-----END PGP SIGNATURE-----

--k1lZvvs/B4yU6o8G--
