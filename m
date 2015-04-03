X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2112" "Friday" "3" "April" "2015" "12:58:02" "+0200" "Jann Horn" "jann@thejh.net" "<20150403105802.GA21110@pc.thejh.net>" "50" "[oss-security] Linux namespaces: It is possible to escape from bind mounts" nil nil nil "4" "2015040310:58:02" "[oss-security] Linux namespaces: It is possible to escape from bind mounts" (number mark "        jann@thejh.n Apr  3   50/2112  " thread-indent "\"[oss-security] Linux namespaces: It is possible to escape from bind mounts\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26179 invoked by uid 550); 3 Apr 2015 10:58:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26135 invoked from network); 3 Apr 2015 10:58:15 -0000
Message-ID: <20150403105802.GA21110@pc.thejh.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="9amGYk9869ThD9tj"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Fri, 3 Apr 2015 12:58:02 +0200
From: Jann Horn <jann@thejh.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Linux namespaces: It is possible to escape from bind mounts
To: oss-security@lists.openwall.com

--9amGYk9869ThD9tj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

See here for the corresponding patches:
<http://permalink.gmane.org/gmane.linux.kernel.containers/29173>
<http://permalink.gmane.org/gmane.linux.kernel.containers/29177>

Given that it went over a public mailinglist now, I guess there's
not much sense in keeping it secret anymore.

Containers on Linux normally use bind mounts to restrict how much
of the filesystem is visible for processes inside the container.
However, if an attacker can gain capabilities within such a
container or can create another user and mount namespace within
the existing container, he can do something similar to a
double-chroot attack to break out of the bind mount and gain
access to the full filesystem to which the bind mount refers:

Create folders /A, /A/B, /C, /D inside the namespace.
Bind-mount the /A inside the namespace to /D.
Let a process chdir to /D/B.
Move /D/B over into /C.
The process which chdir'ed to /D/B is now in /C/B, but at the
same time it is in a bind mount with /D as root. It can then
traverse upwards, past what looks like / inside the namespace.

--9amGYk9869ThD9tj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJVHnI6AAoJED4KNFJOeCOoQNIQANnjlua+rSKrn6C/65ujv2wd
NOjOw+aQxmqa81hWwcUuViGRteSqg6pqrMa7PWNMLAJmHgEAL/QmvHWeDuNSZIjS
fVglK80MNFkAOtCIkj35eN1gYppx5oDPAq1ckR2P1a9tT/wYMwBTKO2d04WgJuI1
rWHBHyimroBtU3kjd6KdnLyOzmqXYoujniVqsfyJIWbXC+NJ5s2MXRdvue18YNrH
Fs4KqCLP6HLqC4/+dHlfSerdmkQzlNY7MZrEkGQUFsB5pEjv5o6d9gVb6a2W47/x
nVFhIAg1xRCK+O+1JXY5Cd/SDm6AbAGMmXXwYCHzLZwKUqO9N0hpicipOWQzCo24
m9F9XbZqaXLgjXSru/OJQLZd6Hrx87zKIl+wzbKxkSu46naii/WAbpnr+0LiRfBV
HuG/mtqABFHqKX9M/K523zDSN6IF7/jQ+IIzFWXmih3UCauC66vqgBA0rU7Qa+23
g9CxQztNgOh76ucHfKYT9Xaj2CQ59Ydev751OWRFNjDt07NhBWbtjQr4lqYCkoB+
d56DC35ff970phwFVEezGvLrXSvhC/THhratH2DrIpBbLTWQVX6OMA4XHWbUUSng
aCCM8ltqbFV455PS7U09UUGDCB57JSVsIRpaO6H/E1SV/eN0l13JXY9CfhEGGit9
pVFdnPcHsnzXY7oX4jOr
=jj5D
-----END PGP SIGNATURE-----

--9amGYk9869ThD9tj--
