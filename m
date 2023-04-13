Received: (qmail 20372 invoked by uid 550); 13 Apr 2023 18:31:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17551 invoked from network); 13 Apr 2023 17:36:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm2; t=
	1681407381; x=1681493781; bh=2XfRibQAYyJ2znCiV+LRr1UGexblcnz5O2w
	Dfc+pYiE=; b=jblRC71WQoHVs+/5RnqEcaLQ5eOq6HQorKQldoDSSyIh7ubbkYn
	5nE/wSa0MaOqxAVLZ7ZKIQ44HBeOX8KR7MW4NqtVLuhwOU+W8VbVaBHfpHsCqyY6
	EJ19lt1r1pM0g2W53TWpAFJdGGUJyFa7iJbteN1o/bYTZQtOdvJuMxweevyDaaim
	0XqrsM0395BeJlFI5LEbW+YB/v27ZLUTOQd4Ocs/Ap4Z/lBmmX+OKy+Wo32R9L7z
	gikaKxGXwrmAiDb9Bt/vEcNVCimbIMxyOG8VgMwGyDH2QliVmGoFeIycqDGwgrNZ
	81/PdECtUaYESp4JKWCFP9TVvAPfarxFuuw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; t=1681407381; x=1681493781; bh=2XfRibQAYyJ2z
	nCiV+LRr1UGexblcnz5O2wDfc+pYiE=; b=SijKwGGsHCoE/yYHk8qufVtqIWHXU
	+gxXZ3HfXEQOLL/UbeQi3S9bQWyMZtaG9amh6tufckpUaoSp8LT+JdiqoFABBdtc
	UThTrT4u3zo2dpxZLW3lOGbRr34gEmPtS8wZoFTejdVSlvZ+xVoDg0UyChifzjMV
	HkjMXBKgB+JzIe0gRoFt4nM7lnbHzFjH6SwkzFOhf8HjW4t9Gm8pE0c4vDz8a3hL
	ImqbfBpZFiXHmCRQs0AXTwhNmGIK+kpkeQ+XdUBnRxbmoWahkbfPCqzzGFUiqEts
	kS6xjWS5/ut5enz4xwOMoJqgvucueb4owjwZJWWn3okqqDDPAsh28kjig==
X-ME-Sender: <xms:lD04ZPR7WsUrnEyVSoV06FW8HCadkq1g7iyAtWLR0LYg1yI9fCs7Kw>
    <xme:lD04ZAwbyndcTK7fFNlSb-oJj3Ju29NkK3TQ_wPLvw8KHF3MbADdyjuK-BuO-rmca
    eF46QE6fDwO4I4>
X-ME-Received: <xmr:lD04ZE2kyuObdSwKQO9jXhkDxWP2zAkPYxm8YC3LrQ2Tmlf6vhZ0aI8S3KM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrvdekkedgudduiecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecuogfuuhhsphgvtghtffhomhgrihhnucdlgeelmd
    enucfjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepffgvmhhi
    ucforghrihgvucfqsggvnhhouhhruceouggvmhhisehinhhvihhsihgslhgvthhhihhngh
    hslhgrsgdrtghomheqnecuggftrfgrthhtvghrnheptdfhveelgeefffegvdeugefhkeek
    hedtgfetiedttedtteejheegjeehffdvvdeinecuffhomhgrihhnpehjvghnkhhinhhsrd
    hiohdpghhoohhglhgvrdgtohhmnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghm
    pehmrghilhhfrhhomhepuggvmhhisehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtg
    homh
X-ME-Proxy: <xmx:lD04ZPCOxI5E8v9KEww-DKZOkX9Af_TOLCD2PViYAc2BbXhe-Tsz2g>
    <xmx:lD04ZIhAoIPbYVH8ZNrG8a4Wk8KAfrJxaalmGiZOunLiMGvTR4hNcQ>
    <xmx:lD04ZDpGfPMK5OyGCyvjeBY0BKQcRM3tm43tzoKX5q2DzRXDgrP1ww>
    <xmx:lT04ZDvxOqZGRgx80qyUYTU3gj5VBiox8iywNP9kaMbwWM7NxZ9BJg>
Feedback-ID: iac594737:Fastmail
Date: Thu, 13 Apr 2023 13:36:14 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <ZDg9kq+QJz7beBQ+@itl-email>
References: <18477145-F7AD-455D-A0AB-77B3E402A7B7@beckweb.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ioCrDYweSTUQPLjj"
Content-Disposition: inline
In-Reply-To: <18477145-F7AD-455D-A0AB-77B3E402A7B7@beckweb.net>
Subject: Re: [oss-security] Multiple vulnerabilities in Jenkins plugins

--ioCrDYweSTUQPLjj
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 13 Apr 2023 13:36:14 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Multiple vulnerabilities in Jenkins plugins

On Wed, Apr 12, 2023 at 06:14:15PM +0200, Daniel Beck wrote:
> Jenkins is an open source automation server which enables developers arou=
nd
> the world to reliably build, test, and deploy their software.
>=20
> The following releases contain fixes for security vulnerabilities:
>=20
> * Azure Key Vault Plugin 188.vf46b_7fa_846a_1
> * Kubernetes Plugin 3910.ve59cec5e33ea_
>=20
> Additionally, we announce unresolved security issues in the following
> plugins:
>=20
> * Assembla merge request builder Plugin
> * Consul KV Builder Plugin
> * Fogbugz Plugin
> * Image Tag Parameter Plugin
> * Lucene-Search Plugin
> * NeuVector Vulnerability Scanner Plugin
> * Quay.io trigger Plugin
> * Report Portal Plugin
> * Thycotic DevOps Secrets Vault Plugin
> * Thycotic Secret Server Plugin
> * TurboScript Plugin
> * WSO2 Oauth Plugin
>=20
> Summaries of the vulnerabilities are below. More details, severity, and
> attribution can be found here:
> https://www.jenkins.io/security/advisory/2023-04-12/
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
> SECURITY-3075 / CVE-2023-30513 (Kubernetes) & CVE-2023-30514 (Azure Key V=
ault)
>   & CVE-2023-30515 (Thycotic DevOps Secrets Vault)
> Multiple plugins do not properly mask (i.e., replace with asterisks)
> credentials printed in the build log from Pipeline steps like `sh` and
> `bat`, when both of the following conditions are met:
>=20
> * The credentials are printed in build steps executing on an agent
>   (typically inside a `node` block).
> * Push mode for durable task logging is enabled. This is a hidden option
>   in Pipeline: Nodes and Processes that can be enabled through the Java=20
>   system property `org.jenkinsci.plugins.workflow.steps.durable_task.Dura=
bleTaskStep.USE_WATCHING`.
>   It is also automatically enabled by some plugins, e.g., OpenTelemetry
>   and Pipeline Logging over CloudWatch.
>=20
> The following plugins are affected by this vulnerability:
>=20
> * Kubernetes 3909.v1f2c633e8590 and earlier (SECURITY-3079 /
>   CVE-2023-30513)
> * Azure Key Vault 187.va_cd5fecd198a_ and earlier (SECURITY-3051 /
>   CVE-2023-30514)
> * Thycotic DevOps Secrets Vault 1.0.0 (SECURITY-3078 / CVE-2023-30515)
>=20
>=20
> SECURITY-2840 / CVE-2023-30516
> Image Tag Parameter Plugin 2.0 improperly introduces an option to opt out
> of SSL/TLS certificate validation when connecting to Docker registries.
>=20
> Job configurations using Image Tag Parameters that were created before 2.0
> will have SSL/TLS certificate validation disabled by default.
>=20
> As of publication of this advisory, there is no fix.
>=20
>=20
> SECURITY-2841 / CVE-2023-30517
> NeuVector Vulnerability Scanner Plugin 1.22 and earlier unconditionally
> disables SSL/TLS certificate and hostname validation when connecting to a
> configured NeuVector Vulnerability Scanner server.
>=20
> As of publication of this advisory, there is no fix.
>=20
>=20
> SECURITY-2837 / CVE-2023-30518
> Thycotic Secret Server Plugin 1.0.2 and earlier does not perform a
> permission check in an HTTP endpoint.
>=20
> This allows attackers with Overall/Read permission to enumerate credentia=
ls
> IDs of credentials stored in Jenkins. Those can be used as part of an
> attack to capture the credentials using another vulnerability.
>=20
> As of publication of this advisory, there is no fix.
>=20
>=20
> SECURITY-2849 / CVE-2023-30519
> Quay.io trigger Plugin provides a webhook endpoint at `/quayio-webhook/`
> that can be used to trigger builds of jobs configured to use a specified
> repository.
>=20
> In Quay.io trigger Plugin 0.1 and earlier, this endpoint can be accessed
> without authentication.
>=20
> This allows unauthenticated attackers to trigger builds of jobs
> corresponding to the attacker-specified repository.
>=20
> As of publication of this advisory, there is no fix.
>=20
>=20
> SECURITY-2850 / CVE-2023-30520
> Quay.io trigger Plugin 0.1 and earlier does not limit URL schemes for
> repository homepage URLs submitted via Quay.io trigger webhooks.
>=20
> This results in a stored cross-site scripting (XSS) vulnerability
> exploitable by attackers able to submit crafted Quay.io trigger webhook
> payloads.
>=20
> As of publication of this advisory, there is no fix.
>=20
>=20
> SECURITY-2872 / CVE-2023-30521
> Assembla merge request builder Plugin provides a webhook endpoint at
> `/assembla-webhook/` that can be used to trigger builds of jobs configured
> to use a specified repository.
>=20
> In Assembla merge request builder Plugin 1.1.13 and earlier, this endpoint
> can be accessed without authentication.
>=20
> This allows unauthenticated attackers to trigger builds of jobs
> corresponding to the attacker-specified repository.
>=20
> As of publication of this advisory, there is no fix.
>=20
>=20
> SECURITY-2873 / CVE-2023-30522
> Fogbugz Plugin provides a webhook endpoint at `/fbTrigger/` that can be
> used to trigger builds of any jobs.
>=20
> In Fogbugz Plugin 2.2.17 and earlier, this endpoint can be accessed by
> attackers with Item/Read permission, allowing them to trigger builds of
> jobs specified in a `jobname` request parameter.
>=20
> As of publication of this advisory, there is no fix.
>=20
>=20
> SECURITY-2945 / CVE-2023-30523 (storage) & CVE-2023-30524 (masking)
> Report Portal Plugin 0.5 and earlier stores ReportPortal access tokens
> unencrypted in job `config.xml` files on the Jenkins controller as part of
> its configuration.
>=20
> These tokens can be viewed by users with Item/Extended Read permission or
> access to the Jenkins controller file system.
>=20
> Additionally, the configuration form does not mask these tokens, increasi=
ng
> the potential for attackers to observe and capture them.
>=20
> As of publication of this advisory, there is no fix.
>=20
>=20
> SECURITY-2950 / CVE-2023-30525 (CSRF) & CVE-2023-30526 (missing permissio=
n check)
> Report Portal Plugin 0.5 and earlier does not perform a permission check =
in
> a method implementing form validation.
>=20
> This allows attackers with Overall/Read permission to connect to an
> attacker-specified URL using attacker-specified bearer token
> authentication.
>=20
> Additionally, this form validation method does not require POST requests,
> resulting in a cross-site request forgery (CSRF) vulnerability.
>=20
> As of publication of this advisory, there is no fix.
>=20
>=20
> SECURITY-2992 / CVE-2023-30527 (storage) & CVE-2023-30528 (masking)
> WSO2 Oauth Plugin 1.0 and earlier stores the WSO2 Oauth client secret
> unencrypted in the global `config.xml` file on the Jenkins controller as
> part of its configuration.
>=20
> This client secret can be viewed by users with access to the Jenkins
> controller file system.
>=20
> Additionally, the global configuration form does not mask the WSO2 Oauth
> client secret, increasing the potential for attackers to observe and
> capture it.
>=20
> As of publication of this advisory, there is no fix.
>=20
>=20
> SECURITY-3013 / CVE-2023-30529
> Lucene-Search Plugin 387.v938a_ecb_f7fe9 and earlier does not require POST
> requests for an HTTP endpoint, resulting in a cross-site request forgery
> (CSRF) vulnerability.
>=20
> This vulnerability allows attackers to reindex the database.
>=20
> As of publication of this advisory, there is no fix.
>=20
>=20
> SECURITY-2944 / CVE-2023-30530 (storage) & CVE-2023-30531 (masking)
> Consul KV Builder Plugin 2.0.13 and earlier stores the HashiCorp Consul A=
CL
> Token unencrypted in its global configuration file
> `org.jenkinsci.plugins.consulkv.GlobalConsulConfig.xml` on the Jenkins
> controller as part of its configuration.
>=20
> This token can be viewed by users with access to the Jenkins controller
> file system.
>=20
> Additionally, the global configuration form does not mask the token,
> increasing the potential for attackers to observe and capture it.
>=20
> As of publication of this advisory, there is no fix.
>=20
>=20
> SECURITY-2851 / CVE-2023-30532
> TurboScript Plugin provides a webhook endpoint at `/turbo-webhook/` that
> can be used to trigger builds of jobs configured to use a specified
> repository.
>=20
> In TurboScript Plugin 1.3 and earlier, this endpoint can be accessed by
> attackers with Item/Read permission to trigger builds of jobs correspondi=
ng
> to the attacker-specified repository.
>=20
> As of publication of this advisory, there is no fix.

What is the reason for the large number of unfixed vulnerabilities?
To me, this seems like an argument for not using Jenkins (or at least
its plugins) at all.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--ioCrDYweSTUQPLjj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmQ4PZIACgkQsoi1X/+c
IsECTQ/8Dcw43TJODjCHjZkGe/PlqdqYHivToPn655+iWEvicM5azgubgYiMcsjR
ydv/pe9Hmjo6UrsJ/s97SS8fNTbCU1kh43eBD0cS9UtF6Q3Vbu+h/414ZgVxY/Dq
BSsynyT9jq4CzLBNdswJ2LAseLEGK76RJg6UmoyDv+u14VBp8TcpSldkjOWTSasR
45sksOErds27+lJ8S51SO+vmGlUXNr295zJ9BUQLMbJMx0ZpqQrBX7cGqE3Md5c2
GYmO9KJcyCovfDbR38lhun3rmSGrCsTanIk855P/0AEXhcfNwKSMZfV4xEpPExzj
CL59V3jBQKxrcjGXiD0J5qxsfGaBJeMHoDm4HGq4VlAk6CAN7NsxuNqit/K/xtUS
dr60GscmbIwpYPnAxPGn43IJFzwO2sfCCFzEA27yNmOtdt8IH5dT/EOLbtXy2iAN
h+z5VrmEmyV1Z4pRZ54pIqVilHCf07JnFB9jqO3XKJkXVGt/9c3kFTfiA1bciNLF
3S32nnutlegQbXDpaDxpdoY7euPu0axSlqGi5caP+bkwBDL9LgKZFSNog28VNy5d
AvcUCBs7o9RJHJjb7yVG1vp2YV/AQdkUGWL3rotwnV1COzSn0Bs/NVECEBu2CAP/
3FqiJZhnix1yL+NzgMKyNSU2K4zr1Vy/30Flt22vSIJeatPAFsQ=
=O0qu
-----END PGP SIGNATURE-----

--ioCrDYweSTUQPLjj--
