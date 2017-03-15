X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1277" "Wednesday" "15" "March" "2017" "23:47:49" "+0100" "Peter Bex" "peter@more-magic.net" "<20170315224749.GG759@scully.more-magic.net>" "38" "[oss-security] CVE request for unchecked size argument in malloc() in CHICKEN Scheme" nil nil nil "3" "2017031522:47:49" "[oss-security] CVE request for unchecked size argument in malloc() in CHICKEN Scheme" (number mark "U       peter@more-m Mar 15   38/1277  " thread-indent "\"[oss-security] CVE request for unchecked size argument in malloc() in CHICKEN Scheme\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23987 invoked by uid 550); 15 Mar 2017 22:48:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23963 invoked from network); 15 Mar 2017 22:48:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=more-magic.net; s=dkim-2016-12;
	h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date; bh=a/5eDKFwTPd+Ql0XKLEcOVDMxb6OaB66XE2Dhw4/jdU=;
	b=d++uSGH3/9G1Of20XgKKUya8kSRZhF9ziEuA8yvupTiY1Fh3ED+fLeNxu7XjBCBHl83gl4PCD4J0ErVEp5JrGsupoTpJvxxE7d/sK/ZU1mEqX/rLFFGRZmxhhLqZfpXc0e96q/Vf5FTOy2sLPRUSmOO3efWyFF4zC+ZWLfDalw8=;
Date: Wed, 15 Mar 2017 23:47:49 +0100
From: Peter Bex <peter@more-magic.net>
To: Open Source Security <oss-security@lists.openwall.com>
Message-ID: <20170315224749.GG759@scully.more-magic.net>
Mail-Followup-To: Open Source Security <oss-security@lists.openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="U3s59FfKcByyGl+j"
Content-Disposition: inline
X-PGP-Key: http://www.more-magic.net/peter-bex.asc
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] CVE request for unchecked size argument in malloc() in CHICKEN Scheme

--U3s59FfKcByyGl+j
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello all,

I'd like to request a CVE for an unchecked malloc() argument in
CHICKEN Scheme's SRFI-4 vector constructors, when allocating the
vector in unmanaged memory.  Due to the missing range check, this
could result in negative or too small size allocations, which would
result in a crash or a buffer overrun, depending on the size.

This issue affects all current releases of CHICKEN Scheme, including
the latest release, 4.12.0.

The official announcement was made here:
http://lists.gnu.org/archive/html/chicken-announce/2017-03/msg00000.html

Cheers,
Peter Bex

--U3s59FfKcByyGl+j
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJYycSVAAoJEBEdufnLRYmwdcYH/RSZnyoOEv8jjhdFi0hy5udT
zV2Sn08UbKdIbJDZeTFU5r22DJUo69KS23VO/uRG5RQuJXOU/S2TnEFWQFEHD879
C68MPpGhzDgB0I0UBZy/dCbl4PydZBDGfHa8KFeTM/EaMRjUuHTrXk5OBmMspB/U
Is7xqpr7c8WJBpxEG9l5fGWnEcNZHodemt9cAdGTuTjLGY+3J9zxe1Dhxt9tuJQy
bKpzK1Smysp90RyJ46GhItir+cf4Whc4YqBfSHJVucf5ZRvTPFjNuIdKYy9q7LlV
7xD+dXQDFiEC2bD9nDBF1/lA7J3+eQvqKBnn/ltIxpQw9jpI5e5n7WDcrfsu80c=
=U8I3
-----END PGP SIGNATURE-----

--U3s59FfKcByyGl+j--
