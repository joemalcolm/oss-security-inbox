X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2524" "Tuesday" "29" "September" "2015" "17:44:23" "+0200" "Tyler Hicks" "tyhicks@canonical.com" "<20150929154422.GA21009@boyd>" "57" "[oss-security] Security issue in LXC (CVE-2015-1335)" nil nil nil "9" "2015092915:44:23" "[oss-security] Security issue in LXC (CVE-2015-1335)" (number mark "        tyhicks@cano Sep 29   57/2524  " thread-indent "\"[oss-security] Security issue in LXC (CVE-2015-1335)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17717 invoked by uid 550); 29 Sep 2015 15:44:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17676 invoked from network); 29 Sep 2015 15:44:36 -0000
Message-ID: <20150929154422.GA21009@boyd>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vkogqOf2sHV7VnPd"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Roman Fiedler <roman.fiedler@ait.ac.at>,
	Serge Hallyn <serge.hallyn@ubuntu.com>,
	=?iso-8859-1?Q?St=E9phane?= Graber <stgraber@ubuntu.com>
Date: Tue, 29 Sep 2015 17:44:23 +0200
From: Tyler Hicks <tyhicks@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Security issue in LXC (CVE-2015-1335)
To: oss-security@lists.openwall.com

--vkogqOf2sHV7VnPd
Content-Type: text/plain; charset=us-ascii; name="msg-7466-1.txt"
Content-Disposition: inline; filename="msg-7466-1.txt"

Roman Fiedler discovered a directory traversal flaw that can occur while
lxc-start is initially setting up the mounts for a container.

If an attacker constructs a malicious symlink in the target path of a
container mount point, the symlink could be mishandled the next time the
container is started and the mount operation may be performed at an
undesired target location.

Additionally, if the source path of the mount is a malicious symlink
relative to the container, the symlink could be mishandled to bind mount
an undesired file or directory into the container.

Direct modification of the host's mount table is not possible since a
slave copy of the mount table is used.

An example of an attack that is made possible by this flaw is a user
inside of the container could leave behind a malicious symlink, at a
mount point target under their control, that would cause /proc/self/attr
to be mounted over. lxc-start would then unknowingly write to a "fake"
/proc/self/attr/current file, prior to launching the container init, to
perform an AppArmor profile transition. The profile transition would not
occur and the container init would run under incorrect confinement.

CVE-2015-1335
Bug: https://launchpad.net/bugs/1476662
Fix: https://github.com/lxc/lxc/commit/592fd47a6245508b79fe6ac819fe6d3b2c1289be
Upstream announcement: https://lists.linuxcontainers.org/pipermail/lxc-devel/2015-September/012434.html

Tyler

--vkogqOf2sHV7VnPd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJWCrHWAAoJENaSAD2qAscK+hYQANGVo9bKLwXMIzPozImj88Gr
o1JMAqNscCJ5i/HboN8drG7JReC+BBGn6jFp9iKHezjzwWhrFaMJhTmjXFo0wCO6
gGCMYCTwTNRSI3DALum/myNWyJLMA8yJGGCAaG9cw5fys+YyiVp4DCOUI59jgrg+
hgcBNpdfMekHH/pu3A8ovg3tbi6yR+rlCBWbuQTvxXqmxj8gPeDu3V3W55Vdb/8x
NfgYQOIj0KbOENJV7qW8UBUz47mJI6GpBWr+w0sgg5cbYYX/wyTtXJ3bQtQgDNxw
cQQYp24nE3hJmUe5qsgaclskWtozIdrjCZ7qvTPh9qpAwy0ij87pSfXSZWAkLkzC
FCduiGWGcvkgDDwIMZCPGoTUpScPwDcS2bXV/HAL0qE41WfOOJn3k9QCg/+lHqTr
PeEP3bfsHclm+jjUImTLDEpM1O6J7ya9jiEOUIqViPu6ZXGyeTEpLUu6x7m3+hga
f09gCmRa9mof6erLIoYyhpxgJCUaKYdyxq+bHV94pBFDIultfNaWcGdyQZ9JstT7
avsiMJeqk7eHBGaFsh9nvv+iBhlHW4lQp10YAtRCpVHADRKPePjjAVgO/w5Vq+nK
9DQ937WMABK9Nwz7RZ/QsUSLl2iGuIUYyVZERbGXQ+A3ntNciiiJkMO/qJ+n5u1d
cZVMBIA8cC1A/ke4vrhA
=7jig
-----END PGP SIGNATURE-----

--vkogqOf2sHV7VnPd--
