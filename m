X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2333" "Tuesday" "3" "May" "2016" "16:26:37" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20160503232637.GA2319@hunt>" "69" "Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714" "^Cc:" nil nil "5" "2016050323:26:37" "[oss-security] ImageMagick Is On Fire -- CVE-2016-3714" (number mark "        seth.arnold@ May  3   69/2333  " thread-indent "\"Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714\"\n") "<57292879.7050303@gmail.com>" ("<CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com>" "<20160503181505.GA8195@openwall.com>" "<57292879.7050303@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22058 invoked by uid 550); 3 May 2016 23:26:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22037 invoked from network); 3 May 2016 23:26:51 -0000
Message-ID: <20160503232637.GA2319@hunt>
Mail-Followup-To: Karim Valiev <valievkarim@gmail.com>,
	oss-security@lists.openwall.com
References: <CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com>
 <20160503181505.GA8195@openwall.com>
 <57292879.7050303@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="PNTmBPCT7hxwcZjr"
Content-Disposition: inline
In-Reply-To: <57292879.7050303@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: oss-security@lists.openwall.com
Date: Tue, 3 May 2016 16:26:37 -0700
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714
To: Karim Valiev <valievkarim@gmail.com>

--PNTmBPCT7hxwcZjr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 04, 2016 at 01:38:49AM +0300, Karim Valiev wrote:
> The exploit was posted at Hacker News comments thread, so it's time to
> disclose the full story.

Thanks for this; here's the bulk of my reply to the distros@ list yesterday:

========

[...] I see attempts in the source code to apply
whitelists to allowed characters:

http://git.imagemagick.org/repos/ImageMagick/commit/06c41aba39b97203f6b9a0be6a2ccf8888cddc93

"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_- "
".@&;<>()/\\\'\":%=~`";

followed several days later by:

http://git.imagemagick.org/repos/ImageMagick/commit/a347456a1ef3b900c20402f9866992a17eb5d181

"^-ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
"+&@#/%?=~_|!:,.;()";

The ; and | entries make me think they haven't actually thought this
thing through in any real way yet. Shellshock showed that e.g. () may
look harmless enough without the $ but it is also dangerous. I think it's
probably a mistake to try to whitelist filter input in this fashion and
try to continue on in the case of failure. Error out in the case of
oddball inputs.

Another approach is to quote inputs following Florian Weimer's advice:
http://www.openwall.com/lists/oss-security/2014/02/04/7

        return "'" + s.replace("'"', r"'\''")  + "'"

(In Python, but the idea should translate well.)

Or, generate the filenames to contain only safe chars. (See mkstemp(3),
the function already exists.)

Or, replace the strings with arrays and use execve() instead of system().

Or, scrap the entire delegates.xml idea, it seems like a strange thing to
bolt on to the side of the image processing toolkit.

========

Thanks

--PNTmBPCT7hxwcZjr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJXKTOtAAoJEPMhclmdjS6X5dQH/0qqcNMkHCKuGEoBED8oRfoJ
Mz6p8uty/Z7Ooj4h/8xpKdt8oaep/wmLDlbNBVyXdwUIn0yBA6InR+CyjW7Vwwx/
Ou1Ig3W4rRz59fRW+WlCJVv9z+JbQbc9G0MmTrdQrVsf90tKQcCBwJw5m2PPlK/n
LJcMpE0+qPcTurAW6cVSLCjdI4Tvjsa8RSWH15lWzw4ViRPoCi3LwY5uTIDoQyFK
89wmJS+uLCz0k/QiopgzafgSfD34btJYz+IbbNj7tYO9oh1OUYQltoTGJ/cw1fsT
bpa9hnKn1SMOGPBvOi9Xlt3VcD82uyqYqAsSOvXiCoCSAvqbV2Gz+OPW8itJ5wU=
=iFJ1
-----END PGP SIGNATURE-----

--PNTmBPCT7hxwcZjr--
