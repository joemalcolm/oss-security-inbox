X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3150" "Thursday" "9" "February" "2017" "15:54:09" "+0100" "Peter Bex" "peter@more-magic.net" "<20170209145409.GE2569@scully.more-magic.net>" "70" "Re: [oss-security] MITRE is adding data intake to its CVE ID process" "^Cc:" nil nil "2" "2017020914:54:09" "[oss-security] MITRE is adding data intake to its CVE ID process" (number mark "        peter@more-m Feb  9   70/3150  " thread-indent "\"Re: [oss-security] MITRE is adding data intake to its CVE ID process\"\n") "<20170209142600.GJ12842@openstack.org>" ("<e159bb7e5d3a4352be4cc9c401b0e081@imshyb02.MITRE.ORG>" "<20170209091023.vrhpgjbhbzaqmaez@perpetual.pseudorandom.co.uk>" "<20170209142600.GJ12842@openstack.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7317 invoked by uid 550); 9 Feb 2017 14:54:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7296 invoked from network); 9 Feb 2017 14:54:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=more-magic.net; s=dkim-2016-12;
	h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date; bh=MAIZ2Qj1SxvaHLLAX4+PtN2Kv8A1zJ1yeWdS91db1o4=;
	b=iVcmtawQ61RI+PElG95VPW5qNDfHV7qa0lxUuk8K1H+BdEC92SkC8OLk0PHupS6vxXAffMd01UQBxpzgOLN4+XUuW+nXHlQCwzCrZZJRMBZUftnkHbbPjJ387KTEMBPNMtaTnfxozQKU2x5CkDmLgFvELSjrvL4gcr2yYi1S2ZA=;
Message-ID: <20170209145409.GE2569@scully.more-magic.net>
Mail-Followup-To: oss-security@lists.openwall.com, cve-assign@mitre.org
References: <e159bb7e5d3a4352be4cc9c401b0e081@imshyb02.MITRE.ORG>
 <20170209091023.vrhpgjbhbzaqmaez@perpetual.pseudorandom.co.uk>
 <20170209142600.GJ12842@openstack.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="bFsKbPszpzYNtEU6"
Content-Disposition: inline
In-Reply-To: <20170209142600.GJ12842@openstack.org>
X-PGP-Key: http://www.more-magic.net/peter-bex.asc
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: cve-assign@mitre.org
Date: Thu, 9 Feb 2017 15:54:09 +0100
From: Peter Bex <peter@more-magic.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] MITRE is adding data intake to its CVE ID process
To: oss-security@lists.openwall.com

--bFsKbPszpzYNtEU6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Feb 09, 2017 at 02:26:01PM +0000, Jeremy Stanley wrote:
> Agreed, having tried to figure out the form it seems geared toward
> requesting CVE IDs for vulnerabilities you've found in someone
> else's software, and not for maintainers of software to request CVE
> IDs for vulnerabilities which have been disclosed to them. The
> little detail callout icons for the vendor and product fields link
> to the CNA coverage list[0]

I'm also concerned about this.  Last time I asked a MITRE employee
about this as a result of the automated mail that oss-security
sends out when it detects a CVE request, and I did not receive a
reply.

So far I've only requested CVE IDs for projects that have no
obvious CNA.

> which in turn instructs, "For open
> source software products not listed below, request a CVE ID through
> the Distributed Weakness Filing Project[1] CNA." So I guess that's
> what our project will be using in the future, or maybe just stop
> bothering to obtain CVEs on our own and let the various downstream
> redistributors of our software who are themselves CNAs issue them as
> needed and then fight over whose is the correct one.
> [0] http://cve.mitre.org/cve/request_id.html#cna_coverage
> [1] https://docs.google.com/forms/d/e/1FAIpQLSeiY7ldJAx-fjU6eSnXDaX5TB--L1ujCQpmGAKnqBSJOcBShw/viewform

For me, having to use a Google docs form is unacceptable.  I try to
avoid Google in my life as much as possible.  I'd rather avoid
requesting a CVE ID, or let someone else do it, if that's the only
remaining option for non-listed free software projects.

The oss-security list was a reasonably good solution for me.  The only
disadvantage is that time passes between initial announcement and the
CVE ID, because (AFAIK) a CVE request needs to contain a reference to
the announcement as "proof" that the vulnerability is real and not a
duplicate.  In an ideal world, free software project leaders should be
able to request a CVE ID _before_ announcing a vulnerability to their
user base.  If there were some way to register people as project leaders,
the "proof" should not be necessary, they should be able to request a
CVE ID with authority.

This delay between announcement and getting a CVE ID has always bothered
me about CVE requests via oss-security.  On the other hand, I like the
fact that there's a somewhat centralised place to watch for important
and early(!) free software security information.

Cheers,
Peter Bex

--bFsKbPszpzYNtEU6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJYnIKRAAoJEBEdufnLRYmw4cYH/0WYWRyN7tD4lBrn2wbvnmxL
CPF3dri0wQt2Y/LrVju8IdshSaT+Fe7lIAF1AJfgvoAdYSdTS4Hb85b+WojxPRU8
Ue0hmJ+dV4qs4Nbku5MWfkfFCxJGXdQiamFWPIEWibJ/RK2SpM0PlzPki4YuaEGv
NLiN+jBNHtZycMrWZnT2npRv4Z0wVNYuktLC10D30V8Rhj4x/8Evr1/Z0SawhA0p
ProxOkqNN3KXTXubROdE2doKUdRNpLQTgbcndqXFU79geZ4q6ixDzFKY5LvNWUH9
xjSnc/b7FJFIFlH+PKhpmnsw9P6FP2QIC24P/IAudqI8a2x8kbK6UPDHQrTWaIM=
=OAjO
-----END PGP SIGNATURE-----

--bFsKbPszpzYNtEU6--
