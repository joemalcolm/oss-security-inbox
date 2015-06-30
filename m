X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1230" "Tuesday" "30" "June" "2015" "11:04:04" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20150630180404.GA13944@hunt>" "33" "Re: [oss-security] Re: Question about world readable config files and commented warnings" nil nil nil "6" "2015063018:04:04" "[oss-security] Re: Question about world readable config files and commented warnings" (number mark "        seth.arnold@ Jun 30   33/1230  " thread-indent "\"Re: [oss-security] Re: Question about world readable config files and commented warnings\"\n") "<5592C4B8.4080803@redhat.com>" ("<20150630155505.7B34152E4F5@smtpvbsrv1.mitre.org>" "<5592C4B8.4080803@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28121 invoked by uid 550); 30 Jun 2015 18:04:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28099 invoked from network); 30 Jun 2015 18:04:18 -0000
Message-ID: <20150630180404.GA13944@hunt>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20150630155505.7B34152E4F5@smtpvbsrv1.mitre.org>
 <5592C4B8.4080803@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ew6BAiZeqk4r7MaW"
Content-Disposition: inline
In-Reply-To: <5592C4B8.4080803@redhat.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Tue, 30 Jun 2015 11:04:04 -0700
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Question about world readable config files
 and commented warnings
To: oss-security@lists.openwall.com

--ew6BAiZeqk4r7MaW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jun 30, 2015 at 10:32:56AM -0600, Kurt Seifried wrote:
> Ok, so does a situation where the author creates the config file with
> that warning, and then a vendor repackages and ships it, still world
> readable, still with the warning, warrant a CVE?

Did the vendor also fill in a password? If so, that's worth a CVE to me.
If not, then it's still on the end user to decide if the hypothetical
database needs a password, and if so, if the configuration file needs to
be closed down to protect the password.

Thanks

--ew6BAiZeqk4r7MaW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJVktoUAAoJEPMhclmdjS6X0BYH/j9ceOUrP9qT5Ob44IyuyPNu
V2rXZk3B3rqhloyVsaiNf0BISKaKmlDTupJZTq0FZeuesi7rlKO09B4xKucQFstI
zuskd41DNWkOUCYTXKGEubIvDL1q9nTySBSpLyZ0RxbPj1iR8t/TUneRZlDAb1+6
ldkWhHJ4lSEf15tD3fxNheiXtSnrQYTkN4K1HTmA0OA3/mp70bWG80u65aPSSGoX
I9YvPIQHjaCIRrEDMrgiQ4bygVv9y76Kwos87oaADU2NMErEzopLn3jF9ncy06uL
JFDXNdIjNAfc3UNzFIyqtjsklFxay8ATFln/RpamTpBJ2/wRSUUr5f/cdEnpijA=
=/5ez
-----END PGP SIGNATURE-----

--ew6BAiZeqk4r7MaW--
