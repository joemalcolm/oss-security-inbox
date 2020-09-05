X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4513" "Saturday" "5" "September" "2020" "13:13:24" "+0000" "Jeremy Stanley" "fungi@yuggoth.org" "<20200905131323.pgpkb3spm263ijcg@yuggoth.org>" "91" "[oss-security] Risk and severity vectors (was: Open Source Tool | vPrioritization | Risk Prioritization Framework)" "^Date:" nil nil "9" "2020090513:13:24" "[oss-security] Risk and severity vectors (was: Open Source Tool | vPrioritization | Risk Prioritization Framework)" (number mark "        fungi@yuggot Sep  5   91/4513  " thread-indent "\"[oss-security] Risk and severity vectors (was: Open Source Tool | vPrioritization | Risk Prioritization Framework)\"\n") "<20200905054704.1d90da6a@jabberwock.cb.piermont.com>" ("<CALv8orGS3m5i=WihK7PAfJLwNuCd9bMxcs7UVTYy1s3MSc5PRQ@mail.gmail.com>" "<20200905054704.1d90da6a@jabberwock.cb.piermont.com>") nil nil nil nil nil nil nil "[oss-security] Risk and severity vectors (was: Open Source Tool | vPrioritization | Risk Prioritization Framework)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25632 invoked by uid 550); 5 Sep 2020 13:13:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24573 invoked from network); 5 Sep 2020 13:13:37 -0000
Message-ID: <20200905131323.pgpkb3spm263ijcg@yuggoth.org>
References: <CALv8orGS3m5i=WihK7PAfJLwNuCd9bMxcs7UVTYy1s3MSc5PRQ@mail.gmail.com>
 <20200905054704.1d90da6a@jabberwock.cb.piermont.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sggwvtooe4qapgua"
Content-Disposition: inline
In-Reply-To: <20200905054704.1d90da6a@jabberwock.cb.piermont.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Date: Sat, 5 Sep 2020 13:13:24 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Risk and severity vectors (was: Open Source Tool | vPrioritization |
 Risk Prioritization Framework)
To: oss-security@lists.openwall.com

--sggwvtooe4qapgua
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2020-09-05 05:47:04 -0400 (-0400), Perry E. Metzger wrote:
[...]
> It is not feasible to calculate a probability of exploitation of a
> given vulnerability, and it is not feasible to determine how bad the
> damage from exploitation will be. This is a classic example of "tail
> risk" where probability distributions are simply not calculable by
> normal methods.
>=20
> I keep hearing people in the security industry speak about scientific
> risk assessment as though it were possible. I don't think it's
> possible, and it seems cheaper to simply patch than to do some sort
> of scientific assessment and prioritization of patches.
[...]

Related, software developers have been long pressed by consumers to
assess a risk severity associated with vulnerabilities they
announce. This is itself a challenge (and in many cases an
insurmountable one), since the real-world risk presented by any
given defect is often highly dependent on how and where the software
is used.

Is the software's primary interface a network API? Then pretty much
every vulnerability is "remotely exploitable" if the administrator
exposes it to a network. Is it software as a service (SaaS)? Then
the distinction between pre-authenticated and post-authenticated
vulnerabilities is mostly irrelevant if the administrator adds some
self-service account creation on top of it (attackers have an
endless supply of stolen credit card numbers with which to sign up
for your service). Does the API perform expensive resource-consuming
operations? Then anyone with permission to call those methods can
potentially bring the service down, and the associated risk really
comes down to how broken the rest of your environment will be if
that component can't process subsequent calls in a timely fashion
(or at all). Does the software produce verbose logs, or store lots
of temporary records in a database? It might be possible for users
performing even reasonable operations to fill up your storage and
make the system fall over if your admins aren't attentive or don't
configure additional mitigations against that.

The knee-jerk reaction is to just classify all vulnerabilities as
"high risk" even though they may not be for many, or even most
consumers, since they could be for some subset; developers don't
want to be responsible for someone not patching their systems
because the "severity" was listed as being low. In reality, these
sorts of metrics aren't something the creators and publishers of
software can reasonably score. The frameworks which do exist, such
as CVSS, are entirely arbitrary and unable to take into account
information about the variety of end user deployments. In my
opinion, developers should provide as much detail as they can about
possible exploit scenarios and let end user organizations determine
risk on their own. That is ultimately their responsibility anyway,
especially when the software they're using comes with no paid
support contract.

And of course, if your organization is in doubt about the risk from
a vulnerability, then apply the patch. You're far more likely to get
useful assistance from the producers of the software in dealing with
any negative impacts of that patch than you are in getting
assistance with the impacts of the vulnerability you decided not to
address.
--=20
Jeremy Stanley

--sggwvtooe4qapgua
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAl9Tju1fFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WClK3hAA0oB8IReeUZtPhXc0uwC06NWah4EunATFIxGZXj24Wxsr0npzjvG5Sxmx
deL5JDhfh0AF8RWeF1KVXWnCTjiB54gMNMJOHBsGg2O0in6rJEADRaPnUQLi9/MG
oVOQY0nhwEtOFXjSFX9l60ypEK+wAHYaE/3BpJfzXMTUiTQfB7zxsSq/58mLtkEw
MvRFo6aAYjTFGeorZL0wFvW4n6/eFgP+yxLaQL13nofJY91dBQZPX2l0cgYp+a69
AberTatkkSj2jbVTD2EDYIIAagimV+sL/p6s0/CPzThzXqtv4bfh2GvBiDb5Ew68
aUYyAsYji5ritr3eKb184biit4xALbYLin2qZihOVfJY2JmJC29sE76puzST6xYf
cH+1PXJg0BWUI+lOaFbBJ2sawJqnzk6mNlXM382G5ZZ6K8wZ93xlNX7cWHJ7ZLbZ
nA1J9h3x3+Gc/q5kmNORNA53vhTFYFWNsu+kEpaqWZt6uZ6Z6dkHg0Q3mJfNSKCe
dGvnF9q2d2NQLUHb6iB7CUfKefaWdXb/KOTeMoKpneuf27BxXApE2Y8YNNBDJbnc
V+8cp4fYA9QJz0qeQHCcABUbeSg6OW14RHZ/Y5z4jahtCd7FVkHdkGSsmIo500Ra
epa9Mwtr43FY/fCk7JcqP5RDp4TqpcQaGljujJTvYnCGQg/D3Bc=
=JbeO
-----END PGP SIGNATURE-----

--sggwvtooe4qapgua--
