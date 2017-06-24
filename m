X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4293" "Friday" "23" "June" "2017" "20:50:03" "-0400" "Brad Spengler" "spender@grsecurity.net" "<20170624005003.GB27479@grsecurity.net>" "91" "[oss-security] More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method" "^Cc:" nil nil "6" "2017062400:50:03" "[oss-security] More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method" (number mark "        spender@grse Jun 23   91/4293  " thread-indent "\"[oss-security] More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9521 invoked by uid 550); 24 Jun 2017 01:41:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 4013 invoked from network); 24 Jun 2017 00:50:16 -0000
Message-ID: <20170624005003.GB27479@grsecurity.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eRtJSFbw+EEWtPj3"
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: torvalds@linux-foundation.org, pageexec@freemail.hu
Date: Fri, 23 Jun 2017 20:50:03 -0400
From: Brad Spengler <spender@grsecurity.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an
 ignored Secure Boot bypass / rootkit method
To: oss-security@lists.openwall.com

--eRtJSFbw+EEWtPj3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

I know this is no longer the place to request CVEs, but CVEs should be
allocated for the following issues (this is in addition to the two dozen
or so already allocated for CONFIG_VMAP_STACK):

https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git/commit/?id=3D=
b05c73bd1e3ec60357580eb042ee932a5ed754d5
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?=
id=3D942a48730faf149ccbf3e12ac718aee120bb3529
https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git/commit/?id=3D=
942a48730faf149ccbf3e12ac718aee120bb3529
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?=
id=3D0bd193d62b4270a2a7a09da43ad1034c7ca5b3d3
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?=
id=3D628c2893d44876ddd11602400c70606ade62e129
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?=
id=3D5165da5923d6c7df6f2927b0113b2e4d9288661e
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?=
id=3De9ff56ac352446f55141aaef1553cee662b2e310

Given my recent blog post mentioning CONFIG_VMAP_STACK:
https://grsecurity.net/an_ancient_kernel_hole_is_not_closed.php
I believe a CVE should also be allocated to it due to failing to handle
VLAs (which as I've noted have been exploited in the past in the kernel)
and is being marketed as a stack overflow prevention equivalent to what's
present in grsecurity (which it is not).

Here's a fix for a UAF introduced by upstream's refcount_t work (aka introd=
ucing
the vulns the defense is supposed to prevent, and it won't be the last):
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?=
id=3D92347cfd62c174ab91ad97dd4bfbaa1d4aa28e67

Also, over two months ago I mentioned a CONFIG_STRICT_DEVMEM bypass that
still required fixes to the mmap side:
http://seclists.org/oss-sec/2017/q2/76
As predicted, everyone ignored the comment about the mmap side and fixes
were only committed and backported to stable kernels for the read/write
side.  Thus the Secure Boot bypass still exists today, over two months later
in all upstream kernels -- a CVE should be allocated for this separate issue
as well.

Also a shout out to Linus for his recent trade disparagement:
https://www.spinics.net/lists/kernel/msg2540934.html
It's big talk coming from a guy who hasn't protected his users for the past
16 years, who authored the broken stack gap patch that crashed machines and
broke apps in 2010 and introduced the userland ABI changes that are now cau=
sing
problems with the proper fix (that oh, surprise, looks a lot like PaX's fix
from 2010).  We've heard these kinds of nonsense claims from Linus before,
like here:
https://lkml.org/lkml/2011/6/6/306
Maybe someone pointed him to it and the embarrassment from realizing he was
completely wrong was too much that he's decided to lash out?

Yes Linus, our patches are such garbage the KSPP can't manage to do anything
other than copy+paste from them, and you're slowly merging them (along
with our registered copyrights).  How do our table scraps taste?

BTW, we're happy to go toe-to-toe with you here in public on actual facts
instead of pathetic ad hominems.

-Brad

--eRtJSFbw+EEWtPj3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAEBCgAGBQJZTbczAAoJEETRwPglJf5JU7UP/1M+qgkwKnJi6kCwxRO3oVAd
Ys3NIjmH/k1f/k9lZMi9CerGB7+E389xJL64KRCMj52hCsJo848exwOjhD62z+Mw
jNaV/fnNDyH5tng6MVUn66i8sI467C4e7jqjHK/pVO3XO7+W7GWD4iBuIlXuFHWz
2YZvVCLacbmE4XL7thmjwAKLiwm7t9SmsMhcvmhBo2iLCoWFEAhNxfHgnvHr9t0x
Tky7hx4jIrgbVmk9hmfGx7Twyt2dvJ2LksiaGgOs+XWtrBCQ9JJasU9l+ASJ+DaT
k6UPTaaT2nsrCzurMl0Mt2B3FlaXNhX7fuQj9AFk+iCJPbvWmFfq1WzeWaFtNm4x
JG7Cax+GHyAzoMkQwHfXcGxhEdcEle/fyJRo3ZrfofkyqK3qw0Wmx414yxFSLbOB
QREQq02JcQxk7KIipRS3ShVcxNwUtsTCvg7KQdFDY94/rqfdN3WVEFbY4Nv3wwe0
VukJVNrH7QBEObnHKo2XI1PTq/VXkoNHjfYAhhmmpAY2eXp3RPLl8Y2AtnRORchu
scXkFJzv6C4BOicS5huSUbtV45KurlaNBpaMrRqEl0sVdCbhwXDT8O6gmKTBb01k
JBlkRJUx/SWd7Ns1DNnq9fX44/pdennPWCyHzoLDDABkR0cfVxs8pfWUQZcSA0rQ
U4xT1lMigZSfWb4wrbjO
=7Y7S
-----END PGP SIGNATURE-----

--eRtJSFbw+EEWtPj3--
