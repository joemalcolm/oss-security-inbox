X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1862" "Wednesday" "14" "September" "2016" "15:37:29" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20160914223729.GL25324@hunt>" "46" "Re: [oss-security] Re: ADOdb PDO driver: incorrect quoting may allow SQL injection" "^Date:" nil nil "9" "2016091422:37:29" "[oss-security] Re: ADOdb PDO driver: incorrect quoting may allow SQL injection" (number mark "        seth.arnold@ Sep 14   46/1862  " thread-indent "\"Re: [oss-security] Re: ADOdb PDO driver: incorrect quoting may allow SQL injection\"\n") "<CANO=Ty3Ru9FEkXs93PY5KgQbT2Gru6S0HHGfciUgZwuXVLy=aA@mail.gmail.com>" ("<nqpirj$fvm$1@blaine.gmane.org>" "<nraqt1$a2m$1@blaine.gmane.org>" "<8b02b17e-cc12-5145-9957-381c583aa76c-IBi9RG/b67k@public.gmane.org>" "<1797555053.495533413.810249.dregad-mantisbt.org@news.gmane.org>" "<20160914092135.GA16607@inutil.org>" "<CANO=Ty3Ru9FEkXs93PY5KgQbT2Gru6S0HHGfciUgZwuXVLy=aA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25758 invoked by uid 550); 14 Sep 2016 22:37:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25739 invoked from network); 14 Sep 2016 22:37:43 -0000
Message-ID: <20160914223729.GL25324@hunt>
Mail-Followup-To: oss-security@lists.openwall.com
References: <nqpirj$fvm$1@blaine.gmane.org>
 <nraqt1$a2m$1@blaine.gmane.org>
 <8b02b17e-cc12-5145-9957-381c583aa76c-IBi9RG/b67k@public.gmane.org>
 <1797555053.495533413.810249.dregad-mantisbt.org@news.gmane.org>
 <20160914092135.GA16607@inutil.org>
 <CANO=Ty3Ru9FEkXs93PY5KgQbT2Gru6S0HHGfciUgZwuXVLy=aA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ai3I8gwHc37+ASRI"
Content-Disposition: inline
In-Reply-To: <CANO=Ty3Ru9FEkXs93PY5KgQbT2Gru6S0HHGfciUgZwuXVLy=aA@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Wed, 14 Sep 2016 15:37:29 -0700
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: ADOdb PDO driver: incorrect quoting may allow
 SQL injection
To: oss-security@lists.openwall.com

--ai3I8gwHc37+ASRI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Sep 14, 2016 at 10:22:58AM -0600, Kurt Seifried wrote:
> Ideally people should get CVEs and then post to oss-security with the
> information and the CVE. A lot of people consume the list data and the
> current method means that people end up searching their DBs, making sure
> it's new, then entering it, then updating it with a CVE. If people got CVEs
> first this would vastly simplify things.

I don't like the idea of waiting on CVE assignment before posting
information here:

- MITRE's team does impressive work, but some assignments take
  significantly longer than others; a request here, publicly, allows users
  to mitigate or fix before a number is known.

- In cases when there are no fixes yet, or incomplete fixes, it may not be
  known how many CVEs are even needed -- making the issues widely known
  earlier increases the chances of someone preparing patches, to clarify
  how many issues existed.

- With MITRE's reduced scope of CVE coverage, there's the risk that
  software that's important to list members or the wider computing public
  may not get a number at all. Not getting a number assigned may give the
  impression that the issue isn't important.

Thanks

--ai3I8gwHc37+ASRI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJX2dEpAAoJEPMhclmdjS6XWskIAL0qTPpf3ig2Clm1qJHp8WhI
yPNWEuPU7u4T7kKs084DQg6NKGIGaTCP5dLSDXTQ323uAm/S/wnd7hpPhZnPvDoV
4KDntO9R92GpwhpHWC9T6v5Uqmvl/vQcw+IZebRxWlSjgNwxkatwVGkJOR/KQ9VV
iO96Uxw7+pRNyVPCSEbq6VkRRNhmq+2j0csaWySC/kAeKY/jhlxHbFYzc3U5I3ZK
9qQA7kYB+I4e5wyGMlL1y9X6aoJywu99mZ/9TQEu7gqOETpv2cDc/1J3SYoICw0f
BuoOj6rLXSmFyeugflmhXyck9s4/onUAJlE2K3abZNU/Sc8GadVBEt4X6zI3Xn4=
=deoz
-----END PGP SIGNATURE-----

--ai3I8gwHc37+ASRI--
