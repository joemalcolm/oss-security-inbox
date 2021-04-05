X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1554" "Monday" "5" "April" "2021" "15:28:35" "-0400" "Leo Famulari" "leo@famulari.name" nil "37" "Re: [oss-security] Risk of local privilege escalation in GNU Guix" nil nil nil "4" nil nil (number mark "U       leo@famulari Apr  5   37/1554  " thread-indent "\"Re: [oss-security] Risk of local privilege escalation in GNU Guix\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Risk of local privilege escalation in GNU Guix" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1244 invoked by uid 550); 5 Apr 2021 20:18:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11774 invoked from network); 5 Apr 2021 19:28:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=famulari.name;
	 h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=mesmtp; bh=VRPjF3cvw9Gnoz9XQZScGTV/
	ZoUFyj1qWwRws1GOYr8=; b=Su9gaa+e8eVOLqvcgXfjdekQpvyhBq+YxnspO0KZ
	Or1blTgN3TgDthbJSHgjc/hjSTuTUg6h+6nFUHREFP+vVqUURbajnWxL4eMVvT7D
	Elaxrwz9laSLvSvAueZwJ6vTgIcmiIvxz8vxw3r7SgeHupKDCcU0R857bFPZJ2PT
	XBI=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=VRPjF3
	cvw9Gnoz9XQZScGTV/ZoUFyj1qWwRws1GOYr8=; b=ivUYVphWJJzmyITV0SUljO
	Y0Zi5rOW5CrMj6OO2vrTgucSKgP8PoOsDXpV0clq06X5GxnOVEVIdgAGoXM3q/sP
	zn8ud6C2euL/7JF3jynpj4WTzng7AKGKJPFlbK6DuXbFn5k+LDboMZmlsYKCmkz6
	vgZKShFdldUzeX9SDpMx1jtb4FPACIK/fPQo5d9oV42vqgIq44l34cUa9qIttD47
	OShiOxQ8COFVfpL++f9RydzBz3gGiQhPs+r81/H2ZN3M6Unw2qroyUISlTgll3TK
	e57kXaIvNw9vRz6LFlgFYAQvTnMBNMU7+4PtFTlZ/TVuGMeBjxmrh4k8SlePxUHA
	==
X-ME-Sender: <xms:5mRrYNqtlw_H5H_DnUcwkdg1u53mWoUmqJ_bNuTKVQVwjSPMuEWKqA>
    <xme:5mRrYJSUUxY6YUMUrawfYvUwraTapV70bs8pc9LP8ACZ4zBfpVImMcvbyKz7IvCuw
    mp4-Gvb76YiGEea3g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudejvddgudeflecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepnfgvohcu
    hfgrmhhulhgrrhhiuceolhgvohesfhgrmhhulhgrrhhirdhnrghmvgeqnecuggftrfgrth
    htvghrnhepudekveegteekleetgfeitdejgfejkeffudethedvhfeukeduleeikeejfeeh
    ffetnecukfhppedutddtrdduuddrudeiledruddukeenucevlhhushhtvghrufhiiigvpe
    dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehlvghosehfrghmuhhlrghrihdrnhgrmhgv
X-ME-Proxy: <xmx:5mRrYKMyVZtJj4I2tXrxB3XrVPz-8A9-6L3Z3WuSftPHaIMhYKhnBg>
    <xmx:5mRrYMMJh-ttiJgV8R1TLoKv611C92uEdts1PXddJutxZmyyJQq4cg>
    <xmx:5mRrYKvd0p3_oDC-txn0yzjvV2jvtiyvkpjyArPWlMShpROcGBFwoA>
    <xmx:52RrYLZuhEtXIy95HXoMaSXns6g_hN428lsfPsga4Jcw7hyHuc8BsA>
Date: Mon, 5 Apr 2021 15:28:35 -0400
From: Leo Famulari <leo@famulari.name>
To: Henri Salo <henri@nerv.fi>
Cc: oss-security@lists.openwall.com
Message-ID: <YGtk43iV9VQNus3i@jasmine.lan>
References: <YFPFrYcJK1e+qedn@jasmine.lan>
 <YGs+I9NUYzddLP9P@jasmine.lan>
 <YGtPL7ZucGDYmkmw@ryzen.bugs.fi>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5EBbX08R9xVbBwms"
Content-Disposition: inline
In-Reply-To: <YGtPL7ZucGDYmkmw@ryzen.bugs.fi>
Subject: Re: [oss-security] Risk of local privilege escalation in GNU Guix

--5EBbX08R9xVbBwms
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Apr 05, 2021 at 08:55:59PM +0300, Henri Salo wrote:
> This is not normal. Please send inquiry to cve-request@mitre.org and
> cve@mitre.org. Include the request ID that you received after submitting CVE
> request. Spam filtering or something might be involved in this case. Feel free
> to contact me off list if you need help. It usually takes 1-2 days to get CVEs
> via cveform.

We did send a followup to <cve-request@mitre.org> a few days after using
the web form. MITRE did not reply.

Our request ID was 1045371.

--5EBbX08R9xVbBwms
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIyBAABCAAdFiEEsFFZSPHn08G5gDigJkb6MLrKfwgFAmBrZN4ACgkQJkb6MLrK
fwjAKQ/4wHkXoTHWc7n3n2aIW7ZkyMvdp1cORDNPS69Rk//uug96U7gzIig9p9tD
kwRr3lAmy6cC7vvOgocfQlin7y37Ysjlm8BKOLvAT140s/7PM5/qsvU2SUxEr5ss
2UiMojyKtdXjkfmdRM+is9jSC3iPfZh6fWEEXQzRINlYEwC2uxhoMKbWCGD0CLuo
yG3vvst3gKbYVQVeyjomiAX1dP7NYxES0HUABgnbiEbA/IkBHKakyVLmNO8TSpEd
8iS3vgC/MtY4i6hYler4Mz4DvCaOoDnfqzIpaBuVy+cwRkOpJT51TwrCrsuOh4P5
pi0q76eVM+9nK5MHk3FW4gbd5CMV6ex5tJOyRRmXSJqYfHxcKrjLJnS7Rz/nZLAn
3DvLPRF/7fp31dnZigOtqVXVIwuR2rVkKi6E7olwxprYTYBZ2cEW8CbjZJ21lyHY
djkOyrU7gyS+68At+0Zl42vnEqr4NvQD9I8NUOb9SIu/W40rOItNZnAKih4cqnX5
fCEfvxFDoWUQZK4l42hhH6RDn/ngcgKgSgDEj1BusDeaVr5Ca+idIpm0neGk8Xtk
I5ahXOFTNn2AtV/6GlQmmUN+pWLdTDlUfjjN+yBwFwcfEm4pvQzi+t6hfPBuV27n
KymBuADQXwz5h3XZy/vVqwpG2kbmotbQe//0HiZBE1xD69CI/g==
=UL7f
-----END PGP SIGNATURE-----

--5EBbX08R9xVbBwms--
