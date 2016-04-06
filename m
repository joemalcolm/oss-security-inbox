X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2528" "Wednesday" "6" "April" "2016" "16:54:36" "-0400" "Randy Barlow" "rbarlow@redhat.com" "<20160406205435.GA10611@mail.corp.redhat.com>" "65" "[oss-security] Pulp 2.8.2 release for CVE-2016-3095" nil nil nil "4" "2016040620:54:36" "[oss-security] Pulp 2.8.2 release for CVE-2016-3095" (number mark "U       rbarlow@redh Apr  6   65/2528  " thread-indent "\"[oss-security] Pulp 2.8.2 release for CVE-2016-3095\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9753 invoked by uid 550); 6 Apr 2016 20:54:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9735 invoked from network); 6 Apr 2016 20:54:49 -0000
Date: Wed, 6 Apr 2016 16:54:36 -0400
From: Randy Barlow <rbarlow@redhat.com>
To: OSS Security <oss-security@lists.openwall.com>
Message-ID: <20160406205435.GA10611@mail.corp.redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Nq2Wo0NMKNjxTN9z"
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Subject: [oss-security] Pulp 2.8.2 release for CVE-2016-3095

--Nq2Wo0NMKNjxTN9z
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

CVE-2016-3095 was discovered in Pulp's pulp-gen-ca-certificate script.
This script generates the CA certificate that Pulp uses to sign client
certificates during the /login call. The private key was created in a
world-readable folder in /tmp, and was then moved to its final
destination where a chmod operation would protect it. This created a
brief window where a local attacker could read the CA key before it
was put into use.

This script is run during the installation of Pulp by the RPM post
script,
and can also be run by users any time they wish to regenerate the CA
certificate.

The fix was a single line adjustment that sets the mode on the folder
in /tmp to be 0700 instead of 0755:

https://github.com/pulp/pulp/commit/
9f969b94c4b4f310865455d36db207de6cffebca#diff-
fc698b450b32a4d811f269e108ade790R33

Users are encouraged to upgrade to the 2.8.2 release, and then re-
run the pulp-gen-ca-certificate script to generate a new CA. It is
advised to restart all Pulp processes (and httpd) after the new CA is in
place. After this is done, any existing client certificates will be
invalidated, so users will need to use pulp-admin login to generate
new credentials.

Users who do not use Pulp's client certificate authentication system
are not affected.

Thanks to Adam Mari=C5=A1 for advising the Pulp team through the
disclosure process, and to Sean Myers for a speedy code review and
for performing the release process.

--=20
Randy Barlow
irc:   bowlofeggs

--Nq2Wo0NMKNjxTN9z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJXBXeLAAoJEIyFaKUJtmpiPJUP/1HRKW0CDWAkXH9ogWu3zYtH
pIPRXdPO5YRaATzn75kSTHw1jfW6vMSyBdmg2q6JY2ekH5iznMsw+pl1eJqox+DT
+gLO6iRPi+WhISasabCizOJ2EH9v7/Tl4vBhaBcth/ufEo/4Ss/r1H7pMnFI9GLp
JoKG9h5CRCq5KvvvpNQI2h+vTgi9KmP8mvNwTJaSgTHZWUwWVgJez3nbTBAPC0Jz
IHfbHSad5J1Hl9CzrnXFNScFHCPAjND5neBe3ObWEBTFXWjQxCrROwt/HmTNCOnj
uxks5kTXf/Mryg2alKSCDnH78fVuPZvS49VLJK1UNwek8RMOTMggS1YnZBIdMge2
X15UMJOeF1BwF60vkcUXD72yneEPPMaNNF1WDVTfcLPdo5iPUJEDB87kb3VUjCiV
2AWowI/E1OsWu0uZq0YpaW0rv9VIjcjzShQwDpjGgHwDP3qebHMm6d7qg2nPEtH8
Ivl11FnmdsDtnM3da7BOTPVqCg5dpIT8tHWUQenbsSn1ILr4SL7PWkPVm1TyJWuB
XmD1x3Yp0dw9ZcqU4fHEKy5isblBCfjkDakDwn26GW3uEO0P0e8+4SNW98U65vMr
QPhqkT5nypWE1InZLcOYSc1wQo7cjmT2yubYoihwF0oq0bkRc2gI1+atEezGuLIq
sipB42k5Axin4Rdp71Rp
=sQ9N
-----END PGP SIGNATURE-----

--Nq2Wo0NMKNjxTN9z--
