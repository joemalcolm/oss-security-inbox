X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1971" "Wednesday" "20" "May" "2015" "15:49:34" "+0200" "Vasyl Kaigorodov" "vkaigoro@redhat.com" "<20150520134934.GA29538@mail.corp.redhat.com>" "62" "Re: [oss-security] Re: CVE Request: various issues in PHP" nil nil nil "5" "2015052013:49:34" "[oss-security] Re: CVE Request: various issues in PHP" (number mark "        vkaigoro@red May 20   62/1971  " thread-indent "\"Re: [oss-security] Re: CVE Request: various issues in PHP\"\n") "<CAEsznC72a6SvHxr9-NywXehaOfpXkbgCkjeh8ijVGsyeYAc98A@mail.gmail.com>" ("<CAEsznC6KasPjN9vNLcWgGkcGZee6K=200Wx4yXRrehVS2bUPvg@mail.gmail.com>" "<CAEsznC72a6SvHxr9-NywXehaOfpXkbgCkjeh8ijVGsyeYAc98A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22185 invoked by uid 550); 20 May 2015 13:49:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22164 invoked from network); 20 May 2015 13:49:43 -0000
Message-ID: <20150520134934.GA29538@mail.corp.redhat.com>
References: <CAEsznC6KasPjN9vNLcWgGkcGZee6K=200Wx4yXRrehVS2bUPvg@mail.gmail.com>
 <CAEsznC72a6SvHxr9-NywXehaOfpXkbgCkjeh8ijVGsyeYAc98A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="x+6KMIRAuhnl3hBn"
Content-Disposition: inline
In-Reply-To: <CAEsznC72a6SvHxr9-NywXehaOfpXkbgCkjeh8ijVGsyeYAc98A@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Date: Wed, 20 May 2015 15:49:34 +0200
From: Vasyl Kaigorodov <vkaigoro@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request: various issues in PHP
To: oss-security@lists.openwall.com

--x+6KMIRAuhnl3hBn
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

All those have CVEs assigned as far as I can see in the PHP bug
tracker:

On Mon, 18 May 2015, Lior Kaplan wrote:
> >> https://bugs.php.net/bug.php?id=3D69453 - phar issue, can lead to memo=
ry
> >> read beyond buffer and in some (unlikely) circumstances, 1-byte memory
> >> write

CVE-2015-4021

> >> https://bugs.php.net/bug.php?id=3D69545 - integer overflow on reading =
FTP
> >> server data leading to heap overflow, potential exploit by hostile FTP
> >> server

CVE-2015-4022

> >> https://bugs.php.net/bug.php?id=3D69364 - DoS possibility due to
> >> ineffective parsing of form data

CVE-2015-4024

> >> https://bugs.php.net/bug.php?id=3D69418,
> >> https://bugs.php.net/bug.php?id=3D68598 - various functions allow \0 in
> >> paths where they shouldn't. In theory, that could lead to security
> >> failure for path-based access controls if the user injects string with
> >> \0 in it. It's a bit theoretical, but it's a possibility.

CVE-2015-4025, CVE-2015-4026 respectively.

--=20
Vasyl Kaigorodov | Red Hat Product Security
PGP:  0xABB6E828 A7E0 87FF 5AB5 48EB 47D0 2868 217B F9FC ABB6 E828
Free/Busy status: https://url.corp.redhat.com/vk-free-busy-status

Come talk to Red Hat Product Security at the Summit!
Red Hat Summit 2015 - https://www.redhat.com/summit/

--x+6KMIRAuhnl3hBn
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJVXJDuAAoJECF7+fyrtugoD5wIAJhI6MIC9K/0c+D73c1YyVBj
WcvkQ+U9kWb1nD764ynrFmvyeyQWV/hhli17OBSVwC+ymdSJaBxHMZlaXPzBAsc+
515Qk91hIm2nvJO9ELwWRbVMK8hrqCs4KdC7TW66Be08gi4JdVHD7f4jyIKqclcO
VZFJx7sIkh2ThaRfSR4LcbzBtztLmAtc/IyWE4605/uPu39ZBIcO5cVyIFh/V3Pl
2GDgVlnMGmCsT+zZES6tf55jqx98KzzGgT6pAiZMYVBMlaoaX0GesRS+yEovg3gt
SyayNt7UJiilr023I9XBqZT+s3Lo58W1BH/vd2qRihI3j8NPQiu1VizB7sgJrpE=
=jqiT
-----END PGP SIGNATURE-----

--x+6KMIRAuhnl3hBn--
