Received: (qmail 31882 invoked by uid 550); 16 Aug 2023 14:04:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32312 invoked from network); 16 Aug 2023 13:23:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm3; t=
	1692192216; x=1692278616; bh=MvQFTYeWmBnuIuBYIiCN1BxeJ3Z0gTYDDnJ
	aWl1GmWQ=; b=a33mUv68YCsuYSZXOmIYAENagqu5+DBJWBKJG7HV6RhmI7JiK/g
	ziwWTTSNWvOKO43NM6u6MWfuHiso53/+X/5MFKK/1hA4piIUr/ZXK3kfsur1t5qT
	DUB9D/RuQZJfIEn1bWnv92/kTThSQCPD0cecEG2rLaF141rdaI+ABLWK/oIGNTYM
	Sw2DGPn/a8e3XgtYBa0BEq/F5puA0A6DY2h4qF6kre0flZW8sMdTyF1OSsbzQUDx
	fde/0cCSBZMgJHlmwkM6Id89gN+7wIPjhDOnckx9ZOzNJkHy4wNPTVK2jgc12Xov
	PeUsjZ0+OuQXKSGolG+2RPkWCXaH7yhNS/Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; t=1692192216; x=1692278616; bh=MvQFTYeWmBnuI
	uBYIiCN1BxeJ3Z0gTYDDnJaWl1GmWQ=; b=NVa39E9fDfWFOUN63RFHX53MfYrul
	gX/njtjzDDOkTFgenVwfyuj7Syo7rMBYQipPYQcxG1E+IxXHEdO2YLCVBE5tV6ye
	g2jYDY+6BIekQ5wNwz8IlMP/e/gbRUHqw0fq0Vkv50FbgQ8iNskm/A1w0yv40mQj
	I/HArRz+zyqdwTaHarK+QMoLRSVBtj685G6M9c9DojK5S6BrRTA4KY7bING7wB9V
	3kVd+ajYn/REWP9sh8omZet4MgTy4CLvq3v/oHE1K0MSLibpzBvw5IH78uyf8XbV
	zLdfMLwP37o+WPMlafyN0/vgoAtRq8uGPhAdN8384cNU4cran1apf5ATQ==
X-ME-Sender: <xms:2M3cZJbs_R7d63uk4ElxZAbp7egrH8GA1xoSx-B58XjR4hLQVbYxrw>
    <xme:2M3cZAac6sqaOKVyVx1vcbM4zAa0CCMCBu6ZM3lygVdelKN40fmcMkoASvwYS9RGF
    JsmH4ren-UJyg4>
X-ME-Received: <xmr:2M3cZL8q-i7fc6sfW7-UkLu6BIxtmWiZQbHza7ZsHqjjRtJ3TWwxdwG0O_PgM1esFfeUimDpwV3iJOnqIFECffFBluqOlZogFdYMDi4abtGH4Bs6>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedruddtledgieehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucgoufhushhpvggtthffohhmrghinhculdegledmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeffvghmihcu
    ofgrrhhivgcuqfgsvghnohhurhcuoeguvghmihesihhnvhhishhisghlvghthhhinhhgsh
    hlrggsrdgtohhmqeenucggtffrrghtthgvrhhnpedthfevleegfeffgedvueeghfekkeeh
    tdfgteeitdettdetjeehgeejheffvddvieenucffohhmrghinhepjhgvnhhkihhnshdrih
    hopdhgohhoghhlvgdrtghomhenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhep
    mhgrihhlfhhrohhmpeguvghmihesihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtoh
    hm
X-ME-Proxy: <xmx:2M3cZHo54xENeY2sAib8CMGLBWWVd7jZkzMATm2EtFHXyNa1UukNtQ>
    <xmx:2M3cZErZHsguhM1k-YmSWou-jnfD7V-5IipMo2kNZNGBBLh44Q1gtA>
    <xmx:2M3cZNSceekJZ52-wPyGkmmffbqrrbr6gqZisuMTQ0BvzdhXU8nEFA>
    <xmx:2M3cZB0Uq5wN7YfiOoBG7XQmDXzzZOCppNU8-NBQBdlpvXK5wiV8Bg>
Feedback-ID: iac594737:Fastmail
Date: Wed, 16 Aug 2023 09:23:33 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <ZNzN1lVfY6z08z+K@itl-email>
References: <12CEE5C7-4E38-4998-BB27-A445F742C6C7@beckweb.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6HQ5VkPHDD6dRzvn"
Content-Disposition: inline
In-Reply-To: <12CEE5C7-4E38-4998-BB27-A445F742C6C7@beckweb.net>
Subject: Re: [oss-security] Multiple vulnerabilities in Jenkins plugins

--6HQ5VkPHDD6dRzvn
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 16 Aug 2023 09:23:33 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Multiple vulnerabilities in Jenkins plugins

On Wed, Aug 16, 2023 at 03:11:18PM +0200, Daniel Beck wrote:
> Jenkins is an open source automation server which enables developers arou=
nd
> the world to reliably build, test, and deploy their software.
>=20
> The following releases contain fixes for security vulnerabilities:
>=20
> * Blue Ocean Plugin 1.27.5.1
> * Config File Provider Plugin 953.v0432a_802e4d2
> * Delphix Plugin 3.0.3
> * Flaky Test Handler Plugin 1.2.3
> * Folders Plugin 6.848.ve3b_fd7839a_81
> * Fortify Plugin 22.2.39
> * NodeJS Plugin 1.6.0.1
> * Shortcut Job Plugin 0.5
> * Tuleap Authentication Plugin 1.1.21
>=20
> Additionally, we announce unresolved security issues in the following
> plugins:
>=20
> * Docker Swarm Plugin
> * Favorite View Plugin
> * Gogs Plugin
> * Maven Artifact ChoiceListProvider (Nexus) Plugin
>=20
> Summaries of the vulnerabilities are below. More details, severity, and
> attribution can be found here:
> https://www.jenkins.io/security/advisory/2023-08-16/
>=20
> We provide advance notification for security updates on this mailing list:
> https://groups.google.com/d/forum/jenkinsci-advisories
>=20
> If you discover security vulnerabilities in Jenkins, please report them as
> described here:
> https://www.jenkins.io/security/#reporting-vulnerabilities
>=20
> ---
>=20
> SECURITY-3106 / CVE-2023-40336
> Folders Plugin 6.846.v23698686f0f6 and earlier does not require POST
> requests for an HTTP endpoint, resulting in a cross-site request forgery
> (CSRF) vulnerability.
>=20
> This vulnerability allows attackers to copy an item, which could
> potentially automatically approve unsandboxed scripts and allow the
> execution of unsafe scripts.
>=20
>=20
> SECURITY-3105 / CVE-2023-40337
> Folders Plugin 6.846.v23698686f0f6 and earlier does not require POST
> requests for an HTTP endpoint, resulting in a cross-site request forgery
> (CSRF) vulnerability.
>=20
> This vulnerability allows attackers to copy a view inside a folder.
>=20
>=20
> SECURITY-3109 / CVE-2023-40338
> Folders Plugin displays an error message when attempting to access the Sc=
an
> Organization Folder Log if no logs are available.
>=20
> In Folders Plugin 6.846.v23698686f0f6 and earlier, this error message
> includes the absolute path of a log file, exposing information about the
> Jenkins controller file system.
>=20
>=20
> SECURITY-3090 / CVE-2023-40339
> Config File Provider Plugin 952.va_544a_6234b_46 and earlier does not mask
> (i.e., replace with asterisks) credentials specified in configuration fil=
es
> when they're written to the build log.
>=20
>=20
> SECURITY-3196 / CVE-2023-40340
> NodeJS Plugin integrates with Config File Provider Plugin to specify cust=
om
> NPM settings, including credentials for authentication, in a Npm config
> file.
>=20
> NodeJS Plugin 1.6.0 and earlier does not properly mask (i.e., replace with
> asterisks) credentials specified in the Npm config file in Pipeline build
> logs.
>=20
>=20
> SECURITY-3116 / CVE-2023-40341
> Blue Ocean Plugin 1.27.5 and earlier does not require POST requests for an
> HTTP endpoint, resulting in a cross-site request forgery (CSRF)
> vulnerability.
>=20
> This vulnerability allows attackers to connect to an attacker-specified
> URL, capturing GitHub credentials associated with an attacker-specified
> job.
>=20
>=20
> SECURITY-3115 / CVE-2023-4301 (CSRF) & CVE-2023-4302 (missing permission =
check)
> Fortify Plugin 22.1.38 and earlier does not perform permission checks in
> several HTTP endpoints.
>=20
> This allows attackers with Overall/Read permission to connect to an
> attacker-specified URL using attacker-specified credentials IDs obtained
> through another method, capturing credentials stored in Jenkins.
>=20
> Additionally, these HTTP endpoints do not require POST requests, resulting
> in a cross-site request forgery (CSRF) vulnerability.
>=20
>=20
> SECURITY-3140 / CVE-2023-4303
> Fortify Plugin 22.1.38 and earlier does not escape the error message for a
> form validation method. This results in an HTML injection vulnerability.
>=20
> NOTE: Since Jenkins 2.275 and LTS 2.263.2, a security hardening for form
> validation responses prevents JavaScript execution, so no scripts can be
> injected.
>=20
>=20
> SECURITY-3223 / CVE-2023-40342
> Flaky Test Handler Plugin 1.2.2 and earlier does not escape JUnit test
> contents when showing them on the Jenkins UI.
>=20
> This results in a stored cross-site scripting (XSS) vulnerability
> exploitable by attackers able to control JUnit report file contents.
>=20
>=20
> SECURITY-3229 / CVE-2023-40343
> Tuleap Authentication Plugin 1.1.20 and earlier does not use a
> constant-time comparison when checking whether two authentication tokens
> are equal.
>=20
> This could potentially allow attackers to use statistical methods to obta=
in
> a valid authentication token.
>=20
>=20
> SECURITY-3214 (1) / CVE-2023-40344
> Delphix Plugin 3.0.2 and earlier does not perform a permission check in an
> HTTP endpoint.
>=20
> This allows attackers with Overall/Read permission to enumerate credentia=
ls
> IDs of credentials stored in Jenkins. Those can be used as part of an
> attack to capture the credentials using another vulnerability.
>=20
>=20
> SECURITY-3214 (2) / CVE-2023-40345
> Delphix Plugin 3.0.2 and earlier does not set the appropriate context for
> credentials lookup, allowing the use of System-scoped credentials otherwi=
se
> reserved for the global configuration.
>=20
> This allows attackers with Overall/Read permission to access and capture
> credentials they are not entitled to.
>=20
>=20
> SECURITY-3071 / CVE-2023-40346
> Shortcut Job Plugin 0.4 and earlier does not escape the shortcut
> redirection URL.
>=20
> This results in a stored cross-site scripting (XSS) vulnerability
> exploitable by attackers able to configure shortcut jobs.
>=20
>=20
> SECURITY-3153 / CVE-2023-40347
> Maven Artifact ChoiceListProvider (Nexus) Plugin 1.14 and earlier does not
> set the appropriate context for credentials lookup, allowing the use of
> System-scoped credentials otherwise reserved for the global configuration.
>=20
> This allows attackers with Item/Configure permission to access and capture
> credentials they are not entitled to.
>=20
> As of publication of this advisory, there is no fix.
>=20
>=20
> SECURITY-2894 / CVE-2023-40348 (information disclosure) & CVE-2023-40349 =
(insecure default)
> Gogs Plugin provides a webhook endpoint at `/gogs-webhook` that can be us=
ed
> to trigger builds of jobs. In Gogs Plugin 1.0.15 and earlier, an option to
> specify a Gogs secret for this webhook is provided, but not enabled by
> default.
>=20
> This allows unauthenticated attackers to trigger builds of jobs
> corresponding to the attacker-specified job name.
>=20
> Additionally, the output of the webhook endpoint includes whether a job
> corresponding to the attacker-specified job name exists, even if the
> attacker has no permission to access it.
>=20
> As of publication of this advisory, there is no fix.
>=20
>=20
> SECURITY-2811 / CVE-2023-40350
> Docker Swarm Plugin processes Docker responses to generate the Docker Swa=
rm
> Dashboard view.
>=20
> Docker Swarm Plugin 1.11 and earlier does not escape values returned from
> Docker before inserting them into the Docker Swarm Dashboard view. This
> results in a stored cross-site scripting (XSS) vulnerability exploitable =
by
> attackers able to control responses from Docker.
>=20
> As of publication of this advisory, there is no fix.
>=20
>=20
> SECURITY-3201 / CVE-2023-40351
> Favorite View Plugin 5.v77a_37f62782d and earlier does not require POST
> requests for an HTTP endpoint, resulting in a cross-site request forgery
> (CSRF) vulnerability.
>=20
> This vulnerability allows attackers to add or remove views from another
> user's favorite views tab bar.
>=20
> As of publication of this advisory, there is no fix.

I strongly recommend that Jenkins add the following:

- Documentation recommending that Jenkins _not_ be exposed to the public
  Internet, due to its very large attack surface.

- A configuration option to disable all plugins with known
  vulnerabilities.

- A process for removing plugins whose maintainers do not resolve
  security vulnerabilities reasonably quickly.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--6HQ5VkPHDD6dRzvn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmTczdUACgkQsoi1X/+c
IsG/ug//U8+78BEx6q/Jm76OR2tiUjT0TGKglEeZQmvvSfUlzRnLDfd1+OhOu85Z
rcRjzQajjoBil9x5vyRpFdYRtuBB6//0reSD9OlxbnBzVnhqPg6uKYq6BGvdjjQx
Xhr2rB+pB1QeQd3YuABxQb5VUdagqo3FWA018N7pwXz8+dqzAwpzESIcFPtG8Ega
CZmJ469PZZscb53kcSedFLeg6YanmMw92NShQN5rLOmiVXiGjIgsIw2LdvSEDGco
GEe42H6DxUstX0z7DqyG3A0AMQ9gWSdiC9iIhK96EVOsMQ46nFFN+hFAp6eiZocT
d6ASm6KHuO1wfwfzX4uSq3aW714uOufdiexy6FVxSagwEI3hTlsHa6fRs82ZAdbF
Fqsx9b4tmwuZHhoSs/Slj6r439Nz1ZjOK2zts/YJMKxyigewaV0COljUdOKF8vNt
YOTXjnB7eFtQn/8F0F0IalRIUP/Ego/kO/zLmZfPqt8HdSE7r9siVK8hUPGtkt7Y
Ijhc8R9TTt8YDbviQx3hO5dZENa0Ro4JcxDSEz5643zOhoTtXDYKAooDjt3wkU93
+GaEJNBMXhJxyUHPtHCcPwGDIhgpYCskXae8izhuZ+zfQeLs/P/yxcLktmwYi8UL
c79ARk4NiTb006wuJOhs1r+WM4xqfPfkFN2j6Uo9W6Jux1vy+Ug=
=19h8
-----END PGP SIGNATURE-----

--6HQ5VkPHDD6dRzvn--
