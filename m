X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1080" "Tuesday" "24" "March" "2015" "15:10:38" "+1100" "Garth Mollett" "gmollett@redhat.com" "<5510E3BE.8030204@redhat.com>" "35" "[oss-security] CVE request for OpenStack Compute (nova)" nil nil nil "3" "2015032404:10:38" "[oss-security] CVE request for OpenStack Compute (nova)" (number mark "        gmollett@red Mar 24   35/1080  " thread-indent "\"[oss-security] CVE request for OpenStack Compute (nova)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30047 invoked by uid 550); 24 Mar 2015 04:11:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30018 invoked from network); 24 Mar 2015 04:11:23 -0000
Message-ID: <5510E3BE.8030204@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="wUGW8rXGhWd2Mwu9exRV2sK3I7LXshKcm"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Date: Tue, 24 Mar 2015 15:10:38 +1100
From: Garth Mollett <gmollett@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request for OpenStack Compute (nova)
To: oss-security@lists.openwall.com

--wUGW8rXGhWd2Mwu9exRV2sK3I7LXshKcm
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I think the bug described here:

https://bugs.launchpad.net/nova/+bug/1419577

May need a CVE assignment. At least for the Havana release of OpenStack
where live-migrate failures are common.


--=20
Garth Mollett / Red Hat Product Security



--wUGW8rXGhWd2Mwu9exRV2sK3I7LXshKcm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJVEOO/AAoJEPjpLwZKQ8GpTlIIAMDij6e3fthDVvUJtbWYdIO1
PuX8F9IMGPruKH8+RMyC0k9thon51zDbpxh2JZiq5KMz99syzX1o1vAQzykmQo7v
ii7ShF57fOpLBLQGRJg5Pu6+3+yvDhmXQe8ZALNlGUri1JjwNS1pFKMY0yS9rz95
juj38Z6Avz7hzXTaWd2xLk82fDU4FXhqztGze0gycVC2tHc9fl31jPYsZbzT9I9x
/rWCpyIGJ8+5XBpYa8sDntvvG7JOwhppkvkfkRxSx62rmKZ8+x3H6NMC1vkMZ8XD
mdfwngpH8OF21NLn+kiN4GFNFy7i+C0EU05QRYJY4tUsZtX7xSO/ImqSmKD/fDA=
=ZV3O
-----END PGP SIGNATURE-----

--wUGW8rXGhWd2Mwu9exRV2sK3I7LXshKcm--
