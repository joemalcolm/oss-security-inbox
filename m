X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1537" "Wednesday" "8" "February" "2017" "23:58:06" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<c71c229030bc42aa80a7bf11d56f215e@imshyb02.MITRE.ORG>" "37" "[oss-security] Re: CVE request virglrenderer: null pointer dereference in vrend_clear" nil nil nil "2" "2017020904:58:06" "[oss-security] Re: CVE request virglrenderer: null pointer dereference in vrend_clear" (number mark "U       cve-assign@m Feb  8   37/1537  " thread-indent "\"[oss-security] Re: CVE request virglrenderer: null pointer dereference in vrend_clear\"\n") "<alpine.LFD.2.20.1702081517590.30512@wniryva>" ("<alpine.LFD.2.20.1702081517590.30512@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20102 invoked by uid 550); 9 Feb 2017 04:58:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20049 invoked from network); 9 Feb 2017 04:58:18 -0000
From: <cve-assign@mitre.org>
To: <ppandit@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<liq3ea@gmail.com>
In-Reply-To: <alpine.LFD.2.20.1702081517590.30512@wniryva>
Message-ID: <c71c229030bc42aa80a7bf11d56f215e@imshyb02.MITRE.ORG>
Date: Wed, 8 Feb 2017 23:58:06 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request virglrenderer: null pointer dereference in vrend_clear

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Virgil 3d project, used by Quick Emulator(Qemu) to implement 3D GPU support
> for the virtio GPU, is vulnerable to a null pointer dereference issue. It
> could occur when a guest invokes a virgl 'VIRGL_CCMD_CLEAR' command.
> 
> A guest user/process could use this flaw to crash Qemu process resulting in
> DoS.
> 
> https://cgit.freedesktop.org/virglrenderer/commit/?id=48f67f60967f963b698ec8df57ec6912a43d6282
> https://bugzilla.redhat.com/show_bug.cgi?id=1420246

Use CVE-2017-5937.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYm/MpAAoJEHb/MwWLVhi2olMP/03Sgb3VBpQscAXgMLt+92R2
KUi+w+uiGtDsbV4s/P+QQmPyLdACf1hkuKeTxN8/LUGkKDuzQAjnYrsjnXl1blL9
F5Xgm0vAtTKJhBvaO56rcO8ZjqT/JxVktJ4aBI1MXtcmvY0ARbvA+7EZcMKZfkJQ
7+THPkMRCWDj+E6SCwGeYM2I4DHlfytQWA+qw3HOMFU8oRoKOCZXkusA+jiuwZ6J
vXcGTbGEwmiFu9+TLx0okr2L+PpA2m2OwlzbfR8wzfRK9em5GQmKMhCf7hSDcm94
PlaYVm5XYwLTisZg+D5RUUW7CVHbg/BPyLagPdDZ/ZIe2YshJoC2Y2LAvU7XLgG4
MhjleujVv8qbKhcG1B6v5nhkOlUrbEPlshsh5Vp8bJAIfG9JBz3R9DvG5kMhGhZm
FFQY6rWDnCAJ5EAd0GjUqN31smIZvVVSgXhikNtQFFT9MBfDxdtzPzbiIQXM/5kJ
C2vjAlUhA/9qrrdQhICH0Lt5WzXU9NuNI+/0dAZRcGN8APF4jHfPCki2Dao+i9M/
n5dyZnocqak9JPS++ACBAxm3h4cvFaKzQMO+somiSpJttqd9li/6HfvZPXHGmUse
p56y/ooUsUaM6kub22o+kGkVM8qGc/ZEHIcVDNhk87BFxxgFxQ6snJPMgHxHe62G
5WnbJ/gEBRGS5w9LAKQR
=aRRv
-----END PGP SIGNATURE-----
