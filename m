Received: (qmail 3570 invoked by uid 550); 22 Dec 2022 12:55:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18085 invoked from network); 22 Dec 2022 12:48:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hardenedbsd.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WaTqQwR69Xwf9gurQNw1NlmyePu7dkrzpVvP3Kh5bwo=;
        b=FQEMUPWvQ4oOck6NXO9xgVSCJjsrVgvj17dkOtJgm/s4TYqt8CU671a+ms6vWj85ug
         FK+2rnqxw0l9JYEpwaec/LiqbB1VbO6OR21b7QW1e9yz42IEPgy6gwDucy0qg7wSoC2J
         rDvTowq7s5o/VrbLSS9FQaToFxTLh/kSDcKO7vMF2sSErAcmO1j0ELZ4OYhvLXlxwwF1
         JkzjUKcqSSa1n0cx7pnIaUj1KbJ1kK1ABWPmAzCWzTXPqZ8wim80EB0EnjIxJa5XVeVi
         PAgVtZP4xKKDOpDh+ucasJ5qiH7VTyPAeAUM0ir6d7cg872QlUEKZW6eu3tsMZcEjW7c
         9yoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WaTqQwR69Xwf9gurQNw1NlmyePu7dkrzpVvP3Kh5bwo=;
        b=tq/4CBBfgoe8s5qk5lyw9zNNGN/7ANRhfers+Fak2txOTxHAQZGTytnGnqrSKPTwk8
         PFP7XnOQYBAFt55ddhPEVxD2mCq3aKBUTKYg1De1EHI3nLtWIqGoyLHs3DFJ1Ba3WBSv
         LLd4FPtXp1E9FWrqyw8TiYxmhlkZmGeS6RpSPK5CHiJ9NPOqpMtpQi7TbOQeQtkn+BCP
         IaavRx+86JsayKUgjvCitR0QoLc1q1IxgLO/vy7oBIE2cc8QkAE7Uiem1AjRGBv+wGDq
         QYVsJvkUNGt90u/0yl6AJvFdCy4DH+xYO7dhorYrTj5eEH6JW/SkQFUkTqusgAj1nAlX
         f3dA==
X-Gm-Message-State: AFqh2kqauTb1XmO5xsGvZ7HicEAKdUpNNs2EUNuF4gRcJ+8S5R817zFp
	zUsT2UUsTJcdpPPNsOTdI5KC+EQ0Q3UGlDvQO73vA0O94uQUcuQ4Zq0BM/YFPB9cWVu8AdiZm+/
	03M0KBck0uZBDBjMcpIHeBs6XbaM+V9QBbbwbePSotc5DA1HysQ9PLvW1uufLmU7Lj+ppAgUdkK
	RNlJ7rA2xyLK6tqbNwjQ==
X-Google-Smtp-Source: AMrXdXuCuhPmLhVE7HblDbI9sby7BNhgwCI6mUDtiZKB8iyhdP8S0uzCdP6GCpJVhFWiaz5QfX17tw==
X-Received: by 2002:a0c:fc06:0:b0:4c7:5c88:8f54 with SMTP id z6-20020a0cfc06000000b004c75c888f54mr6399782qvo.45.1671713276915;
        Thu, 22 Dec 2022 04:47:56 -0800 (PST)
Date: Thu, 22 Dec 2022 07:47:55 -0500
From: Shawn Webb <shawn.webb@hardenedbsd.org>
To: oss-security@lists.openwall.com
Message-ID: <20221222124755.tyrsrsnib4locz6k@mutt-hbsd>
X-Operating-System: FreeBSD mutt-hbsd 14.0-CURRENT-HBSD FreeBSD
 14.0-CURRENT-HBSD 
X-PGP-Key: https://git.hardenedbsd.org/hardenedbsd/pubkeys/-/blob/master/Shawn_Webb/03A4CBEBB82EA5A67D9F3853FF2E67A277F8E1FA.pub.asc
References: <CACT4Y+aqb9V=WO0gsN1DgqimrjHiY3x+KvKGiz7b95jh9gubhw@mail.gmail.com>
 <20221221191510.3rqbrzu7oiyidlbt@mutt-hbsd>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qvoj3yu2sohzn7ys"
Content-Disposition: inline
In-Reply-To: <20221221191510.3rqbrzu7oiyidlbt@mutt-hbsd>
Subject: Re: [oss-security] [Linux] /proc/pid/stat parsing bugs

--qvoj3yu2sohzn7ys
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 21, 2022 at 02:15:10PM -0500, Shawn Webb wrote:
> On Wed, Dec 21, 2022 at 06:13:17PM +0100, Dmitry Vyukov wrote:
> > Hello,
> >=20
> > This is not a single vulnerability, the list of affected software is
> > large, but it's not a security issue for all of it.
> >=20
> > It occurred to me that most of the Linux procfs /proc/pid/stat and
> > /proc/pid/task/tid/stat parsing code out there is buggy. The fine
> > contains a set of numbers about the task:
> > https://man7.org/linux/man-pages/man5/proc.5.html
> >=20
> > e.g. $ cat /proc/self/stat
> > 1715376 (cat) R 1544883 1715376 1544883 34819 1715376 4194304 106 0 0
> > 0 0 0 0 0 20 0 1 0 42505561 9207808 237 18446744073709551615
> > 93955355631616 93955355651497 140737444557056 0 0 0 0 0 0 0 0 0 17 36
> > 0 0 0 0 0 93955355667504 93955355669120 93955385581568 140737444559745
> > 140737444559765 140737444559765 140737444564971 0
> >=20
> > Most of the code splits it by space and takes an N-th field.
> > The problem is that the process name "(cat)" can contain spaces (and
> > brackets). Potentially some important software (containers/sandboxes)
> > can be tricked into getting wrong data, and I've seen cases close to
> > stack overflows (buffer for a fixed number of fields is allocated on
> > stack).
> >=20
> > Some examples:
> > OpenJDK:
> > https://sourcegraph.com/github.com/openjdk/jdk/-/blob/src/jdk.managemen=
t/unix/native/libmanagement_ext/OperatingSystemImpl.c?L133-139
> > https://sourcegraph.com/github.com/openjdk/jdk8u/-/blob/jdk/src/solaris=
/native/sun/management/OperatingSystemImpl.c?L223-229
> >=20
> > Ansible:
> > https://sourcegraph.com/github.com/ansible/ansible/-/blob/lib/ansible/m=
odules/yum.py?L507-510
> >=20
> > Libuv:
> > https://sourcegraph.com/github.com/libuv/libuv/-/blob/src/unix/linux.c?=
L674-701
> >=20
> > bdwgc:
> > https://sourcegraph.com/github.com/mono/linux-packaging-mono/-/blob/ext=
ernal/bdwgc/os_dep.c?L1138-1155
> >=20
> > But really most of the code that does it:
> > https://sourcegraph.com/search?q=3Dcontext:global+/%5C%22%5C/proc%5C/.*=
%5C/stat%5C%22/
> >=20
> > The only way to parse it is to do strrchr(')') first (fortunately it
> > contains just one unescaped string).
>=20
> What is old is new again. Perhaps it's a good time to reflect on the
> security of relying on VFS-based gadgets for process and system
> instrumentation.
>=20
> Long live sysctl.

At the very least, procfs could be taught to expose machine-readable
formats based on file extension.

For JSON, /proc/<pid>/maps.json
For XML, /proc/<pid>/stat.xml

And the like.

--=20
Shawn Webb
Cofounder / Security Engineer
HardenedBSD

https://git.hardenedbsd.org/hardenedbsd/pubkeys/-/raw/master/Shawn_Webb/03A=
4CBEBB82EA5A67D9F3853FF2E67A277F8E1FA.pub.asc

--qvoj3yu2sohzn7ys
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEA6TL67gupaZ9nzhT/y5nonf44foFAmOkUfQACgkQ/y5nonf4
4frtYRAAnrXUoZrxVRTrAemEd/a/ozZkZgdwoVfN9NNjYzn/kqA6J2bt04WUt4HK
6q+qW1/5i451gmpI3Vrzd03wdmpy05Sd+JAmiQ6eW+0HFJdRMxp58B32mXMNZOZh
14zCMqW6Ay0CnzxjXdWmq8WGK8bYo3RdS+QtMb6cA8EbWYGPkoOuvY/GMOHjHcDJ
u2E16DWr0eD3KftYnQfJI9gW/31IgEPggaBHxHrbfUkG8NYMiRLZ806hgjT4IMk0
32RhqMipty6BveDELXgzsaPFMRjTTJPDHOpmIkmUaST9ucG51dSu5XAp2VDhpbpJ
X1xav7r4YiJjtUOC55lgCexSFaex9tkYHo+a97rnuvyaso4DQ5kKHYwmgAObEUVj
8YEwDIdc2Kltrx5eFVXw02PgHLEifaWqYjdfa3v7PbFYvOjz4LV1GZE//zLjVJR4
RQvHaLYtjMVAcbcLO7QLt37Od27X2H03uTq9SgHLArzcVpd7tszm/w1cQr5rWDwS
p9F3iOu9W/zcN3gVrWwA/8/vcMyprtR3iG7yTUhzViLDPhfUpl7eWA9NBtegLdjg
vLAuhAAyKdbag0htkKVkdVy51fwOl/tXx5dVSTo/AkGSG2e6CJassEFnVEReTdvL
FCMrPGAf2edH2Lb3KPcU7C2+4EN7ANTtq76FUMIi30KZ2xWBrU8=
=ZtE+
-----END PGP SIGNATURE-----

--qvoj3yu2sohzn7ys--
