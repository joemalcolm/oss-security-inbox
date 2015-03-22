X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2309" "Sunday" "22" "March" "2015" "19:35:21" "+0000" "Jeremy Stanley" "fungi@yuggoth.org" "<20150322193521.GA2456@yuggoth.org>" "53" "Re: [oss-security] CVE for Kali Linux" nil nil nil "3" "2015032219:35:21" "[oss-security] CVE for Kali Linux" (number mark "        fungi@yuggot Mar 22   53/2309  " thread-indent "\"Re: [oss-security] CVE for Kali Linux\"\n") "<550F15A4.8020904@sumptuouscapital.com>" ("<550EE478.70005@redhat.com>" "<E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com>" "<20150322172300.GA21110@openwall.com>" "<550F01FF.1010208@redhat.com>" "<550F15A4.8020904@sumptuouscapital.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5870 invoked by uid 550); 22 Mar 2015 19:35:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5852 invoked from network); 22 Mar 2015 19:35:34 -0000
Message-ID: <20150322193521.GA2456@yuggoth.org>
References: <550EE478.70005@redhat.com>
 <E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com>
 <20150322172300.GA21110@openwall.com>
 <550F01FF.1010208@redhat.com>
 <550F15A4.8020904@sumptuouscapital.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="88pBQ1/6ie/nQzMF"
Content-Disposition: inline
In-Reply-To: <550F15A4.8020904@sumptuouscapital.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Date: Sun, 22 Mar 2015 19:35:21 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for Kali Linux
To: oss-security@lists.openwall.com

--88pBQ1/6ie/nQzMF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2015-03-22 20:19:00 +0100 (+0100), Kristian Fiskerstrand wrote:
[...]
> The package being signing using the same key over
> time signifies that it is coming from authoritative source (unless
> you've been MITMed a long time), the fingerprint of the OpenPGP key
> should be included in email announcements and other documents that are
> being mirrored by multiple sources, reducing the likelihood of a MITM
> if corresponding information is the same in multiple archives over a
> long time.
[...]

And the repository signing key is hopefully also published to a
well-known keyserver network along with signatures from maintainers
of the primary distribution repository, some of whom may be known
(either directly or transitively via other key signatures) to the
end user. And repository signing keys can be gradually replaced by
generating new keys well in advance and signing them with the old
keys as a transition, then adding them to the trust keyring long
enough before the current key is retired that clients already have
it once it starts to get used.
--=20
Jeremy Stanley

--88pBQ1/6ie/nQzMF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQJ8BAEBCgBmBQJVDxl5XxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25zLm9w
ZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQ5N0FFNDk2RkMwMkRFQzlGQzM1M0IyRTc0
OEY5OTYxMTQzNDk1ODI5AAoJEEj5lhFDSVgpUyQQANRz+rqL3Q67KhWDD8GnGj8v
iKy2jnpStrJLkCtGLogr9f0lhI53vwPL6Ab1OVzXA3XHb+92fhhJSp6+4gmtSIYz
LT7zkvfs2qa6RnrsoYVtX3an8JO4ND7VHZ+BZN/6d/En37vq1TygsPT9OwftUj8j
e9zFF2btss6+/Bhm9SjawqGGvQ9Npi4WkHx4+DhhrVXoCYnY7t2voXGrHSAE8609
zvVyW+WQynMoufSzQRP5qryT47UGxqGleCvL9o28aOpzJOe9j2RARdciMZvit5Yu
qpP2+3JzfLzyUcdOS+mUBuJxPzWzML4pIYTDs8D3TfcA1hTQ/Zgb6z0dBEe0Jddh
WVENK+W2F5znWajAJiyU9wEfrP7QW6Ttm34jP3TdFx69R6SqEHauUV5fhGBjuxyf
tiUXSCFW4U6Q9lFc26NXXvenuFfml653dUCb4UfsT0whT/Dygfi1X6UM5jliKrmZ
db6syh4xABAdGnu/deRnvBPLqkQo8IJQVxh35LKz09PVvT6dl0xwQB4G8QR1UBJE
APQ1fSA6cMRTBsxoB3+5Mdxq5+c593G0B/f5tvQ+rwPBztUxcieObn59FmeRS3o3
o6d+ljbrqqzGhUJT1DE7nFUVkxT0PQtLCbTEJuq7yKCo66FyZr2b/VV1XQftp7qg
HRdlZiydjQsanDbaEsgH
=1XLC
-----END PGP SIGNATURE-----

--88pBQ1/6ie/nQzMF--
