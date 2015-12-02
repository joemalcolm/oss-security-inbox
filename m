X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2465" "Tuesday" "1" "December" "2015" "23:58:11" "-0800" "Seth Arnold" "seth.arnold@canonical.com" "<20151202075811.GL24908@hunt>" "61" "Re: [oss-security] Re: CVE Request: dhcpcd 3.x, potentially other versions too" "^Cc:" nil nil "12" "2015120207:58:11" "[oss-security] Re: CVE Request: dhcpcd 3.x, potentially other versions too" (number mark "        seth.arnold@ Dec  1   61/2465  " thread-indent "\"Re: [oss-security] Re: CVE Request: dhcpcd 3.x, potentially other versions too\"\n") "<20151202045847.129B06C0063@smtpvmsrv1.mitre.org>" ("<20151202015146.GJ24908@hunt>" "<20151202045847.129B06C0063@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5147 invoked by uid 550); 2 Dec 2015 07:58:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5129 invoked from network); 2 Dec 2015 07:58:25 -0000
Message-ID: <20151202075811.GL24908@hunt>
Mail-Followup-To: cve-assign@mitre.org, oss-security@lists.openwall.com,
	guidovranken@gmail.com
References: <20151202015146.GJ24908@hunt>
 <20151202045847.129B06C0063@smtpvmsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="8MZM6zh5Bb05FW+3"
Content-Disposition: inline
In-Reply-To: <20151202045847.129B06C0063@smtpvmsrv1.mitre.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: oss-security@lists.openwall.com, guidovranken@gmail.com
Date: Tue, 1 Dec 2015 23:58:11 -0800
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request: dhcpcd 3.x, potentially other
 versions too
To: cve-assign@mitre.org

--8MZM6zh5Bb05FW+3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Dec 01, 2015 at 11:58:47PM -0500, cve-assign@mitre.org wrote:
> MITRE will assign CVE IDs. Do the above references mean that most of
> the changed code lines in dhcp.c.patch correspond to out-of-bounds
> reads shown in the
> http://roy.marples.name/projects/dhcpcd/fdiff?sbs=1&v1=63689c50411b0920&v2=dad877391ea5b128
> diff,

I had expected this part of the diff to address the out-of-bounds writes:

		if (out && out != start)
			*(out - 1) = ' ';

> the change from "(l = *q++)" to "(l = *q++) && q - p < len"
> corresponds to an out-of-bounds write,

I must confess that I skimmed the protected code block quickly when coming
to the conclusion that this was out-of-bounds reads -- it's intricate and
involved and the q - p < len check looked correct. But the memcpy(out,...)
call does look like it'd also perform out-of-bounds writes.

> the deletion of "free
> (dhcp->dnssearch)" corresponds to a use-after-free, and nothing else
> in the 2012 part of the http://roy.marples.name reference is a new
> vulnerability? (This is just a guess.)

I should point out that it's my summary that it's a use-after-free --
Guido said in his report that it is a double-free.

> The reason we're asking this and not immediately sending three CVE IDs
> is that someone at MITRE will ultimately use, or at least consider
> using, both https://launchpadlibrarian.net/228152582/dhcp.c.patch and
> http://roy.marples.name/projects/dhcpcd/finfo?name=dhcp.c&ci=27a92c6a825d6e74
> to describe what the CVEs mean. If there's already information about
> the equivalences between these references, that will make this process
> easier, and also further confirm that three IDs is the right number.

I'm afraid the MITRE crew has a more difficult task than we do.

Thanks

--8MZM6zh5Bb05FW+3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJWXqSTAAoJEPMhclmdjS6XFaEH/3pfeGMc5GDBNnIKsqbj/xlZ
eBZ3chm7Hv+2oWrLcUhg7vsFT/1ZOV22NOViW15UAjQ3nxsf9cjXQx0pYjmq9gsg
HrlliLn3HwZjYZ6hDpzIzqKvOly+IEIaHq5SklVsNlkmKNHvb20xhqsf6elsdkii
EoHGclMlPky7J1qeohFW24i4jEYROHEjW6UNCDlD07s+yt6IA2JRBMLVzK0i/Bwm
6Ix9B0s4h52L5WKC0zodqGL8D3SAqVm5Fa9B5EnI2qaeAK2Nm3nrFN80ns7/B76D
DVzWwzjBfqO0EnSYd6UU09VJf5bUi7wvf/0FdmFIyU6M+E4Vz/LtbEUDoGtM7S4=
=vUMv
-----END PGP SIGNATURE-----

--8MZM6zh5Bb05FW+3--
