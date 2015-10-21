X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1710" "Wednesday" "21" "October" "2015" "14:56:50" "-0500" "Tyler Hicks" "tyhicks@canonical.com" "<20151021195650.GB2430@boyd>" "44" "Re: [oss-security] CVE Request: BusyBox tar directory traversal" nil nil nil "10" "2015102119:56:50" "[oss-security] CVE Request: BusyBox tar directory traversal" (number mark "        tyhicks@cano Oct 21   44/1710  " thread-indent "\"Re: [oss-security] CVE Request: BusyBox tar directory traversal\"\n") "<20151021153633.GA2430@boyd>" ("<20151021153633.GA2430@boyd>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17592 invoked by uid 550); 21 Oct 2015 19:57:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17568 invoked from network); 21 Oct 2015 19:57:05 -0000
Message-ID: <20151021195650.GB2430@boyd>
References: <20151021153633.GA2430@boyd>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="FkmkrVfFsRoUs1wW"
Content-Disposition: inline
In-Reply-To: <20151021153633.GA2430@boyd>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: security@ubuntu.com, Denys Vlasenko <vda.linux@googlemail.com>
Date: Wed, 21 Oct 2015 14:56:50 -0500
From: Tyler Hicks <tyhicks@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: BusyBox tar directory traversal
To: oss-security@lists.openwall.com

--FkmkrVfFsRoUs1wW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 2015-10-21 10:36:33, Tyler Hicks wrote:
> Hello - The BusyBox implementation of tar will extract a symlink that
> points outside of the current working directory and then follow that
> symlink when extracting other files. This allows for a directory
> traversal attack when extracting untrusted tarballs.

I forgot to mention that I took a look at BusyBox's protections against
directory traversal attacks while extracting files with absolute paths
or dot dot ("..") components and it seems to sufficiently protect
against those attacks.

The function can be found here:

  http://git.busybox.net/busybox/tree/archival/libarchive/unsafe_prefix.c

Tyler

--FkmkrVfFsRoUs1wW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJWJ+4CAAoJENaSAD2qAscKXLcQALCVcVCnKitwUyzxr+1d0ncu
mBmlhTcjHE1PebyT2pEJRwAILCJNx/m3498BBtZVdmtt2IxD53F9WAFq6zuuD4e5
QI8/3QQNZWtucu3lc1FaM1JcKYi049gx42p84H9F3GdZBCHig8/nb6pK/bxNTN08
9eWa+7p323pu53pJRAVwfw3oaoMm3qzQWxJFNNAx8naP5cxNygiAO1VfcWJAZhok
tgR46je29uv/B8vpZCPZZfqG1cFHBsMFOay+qqHGQrIAye270UGLgXUd+wOR9ZH2
knFGaZ+bUWxQcKTVkvz/Q8q1I2QeZClVqoQC7cVOvSDiABKB0scKXXdHU54qibSh
e/GImZxgowD/IdwHLjySmbOCvqNvd0tdgalBhO8zNsdKcu3NI4LZuEfxKHDMXgz4
QiiM7/KKAzR/AVFqZQGG75bJvkPmojTptnTpOtIAPrHQy7B9PE4nOxsRDRUdZnb9
+pav00EQH/js35TkbzpTbpmwQTnLWSg87NYI4G66B6SLyNdsoMpjHx6zBYfCUNia
XVTUvXndVXxxR+ZgHqW9imtsNzbE2fLPEW+lDuUCtS2ETmDnwfBL0lRGmH5U98yc
A0wdzkZg6xZIdnosjhGfuFBzgU3e7epiQC+h7g4KE0uW1AQth/Vn8+ezaz5VXvF0
ypGZm5JVO+ngmRiQ+K22
=SpNh
-----END PGP SIGNATURE-----

--FkmkrVfFsRoUs1wW--
