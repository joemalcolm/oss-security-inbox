X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2049" "Friday" "4" "November" "2016" "17:59:59" "+0100" "Nicolas Braud-Santoni" "nicolas@braud-santoni.eu" "<20161104165959.zifap46bmaxapmda@harbard.iaik.tugraz.at>" "57" "[oss-security] CVE request: Escape Sequence Command Execution vulnerability in Terminology 0.7" nil nil nil "11" "2016110416:59:59" "[oss-security] CVE request: Escape Sequence Command Execution vulnerability in Terminology 0.7" (number mark "U       nicolas@brau Nov  4   57/2049  " thread-indent "\"[oss-security] CVE request: Escape Sequence Command Execution vulnerability in Terminology 0.7\"\n") "<20161104160820.dazfzwdoureewh2v@eldamar.local>" ("<20161104145429.db6u5xid4wc7cyjn@harbard.iaik.tugraz.at>" "<20161104160820.dazfzwdoureewh2v@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21671 invoked by uid 550); 4 Nov 2016 17:01:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20184 invoked from network); 4 Nov 2016 17:00:12 -0000
Date: Fri, 4 Nov 2016 17:59:59 +0100
From: Nicolas Braud-Santoni <nicolas@braud-santoni.eu>
To: oss-security@lists.openwall.com
Cc: security@debian.org, ross@kallisti.us
Message-ID: <20161104165959.zifap46bmaxapmda@harbard.iaik.tugraz.at>
References: <20161104145429.db6u5xid4wc7cyjn@harbard.iaik.tugraz.at>
 <20161104160820.dazfzwdoureewh2v@eldamar.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="22gtpvda3lf64o7f"
Content-Disposition: inline
In-Reply-To: <20161104160820.dazfzwdoureewh2v@eldamar.local>
X-Clacks-Overhead: GNU Terry Pratchett
User-Agent: NeoMutt/20161014 (1.7.1)
Subject: [oss-security] CVE request: Escape Sequence Command Execution vulnerability in
 Terminology 0.7

--22gtpvda3lf64o7f
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Terminology 0.7.0 suffers from a bug similar to CVE-2003-0063, where an
attacker able to print character escape sequences can modify the window
title and then insert it back in the terminal's input buffer, resulting
in arbitrary terminal input, including code execution as a local user.

A concrete attack scenario can work as follows: the attacker gets a
string triggering the vulnerability into a log file (or any other thing
that eventually gets displayed to the user).  When it is, at some later
point, displayed to the user, "echo 'evil'\n" gets written to the user's
terminal's input buffer, resulting in that command being executed by the
user's shell.

For example:

> printf "\e]2;echo 'evil'\n\a\e]2;?\a"


The issue was fixed in Terminology by
commit b80bedc7c21ecffe99d8d142930db696eebdd6a5 :

  https://git.enlightenment.org/apps/terminology.git/commit/?id=b80bedc7c21ecffe99d8d142930db696eebdd6a5

I would like to apply for a CVE number for this issue,
on behalf of the Debian security team.


Best regards,

  Nicolas Braud-Santoni

--22gtpvda3lf64o7f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAABCgAGBQJYHL6MAAoJEJ1PiAEM/hnjgVEP/jHL5JFn7eUcEA2HW8XfsDkI
BDYlOP+0yGktydAm91WFwjTogYbkwXZqWeTo2VjWsvq3jvbOcyREDr4TvHP2y+rp
nIS9KPPLwtb/olctmJvboNlvaZpvuQXVB5264WLaNEtcCABMWD/Fp4XC3K5ZL5Sa
TKDjHXER5MimYR7J61/cMb75RvioTfDnLUhUJ9Pp5vW+SBh03yZvbPZ+w0e9Pzab
XGZnImMPLQPPQYXCTGhZBD+9un6CStRpADKFfSKxMt+/oVUviTps+WE3NpojtAzu
7QrWTDNgKgpfLmHkHu/kiyA7NDpFz6HjhSFVncbFMLSPekHq3Wxj/Bty50GTa/cG
EJvlF0XVrvbopuMqW27pe+KyoqrL3gjTnzdSXzjuY2txTSFhhvcNbzd94mTBpsyg
4lOY3CbkJE85vx+6wCvMch/PPtbSrfnADTwlf7wPzdRiwe8aZLKyt88rAQyJ9gi4
KT1SXZsoH95WN+WNevOKTLBNX6VqAy2evqz6Opuwd4qvEiJ+feiaPa2ds8EBuOBX
vZNyBIA/QUlEaZ0bjSgMCaoJQx5zY3bMj5EDTE/UVJRcwu+UexWP00vLWIeVOy99
TbILA+ugApalpPQ0WxezqSyaly42Mfy8smCZ/lMQyeS508zzOGkWROzxG9qVRr5H
zvJTQ5T92SPnRKw57bKG
=81Qp
-----END PGP SIGNATURE-----

--22gtpvda3lf64o7f--
