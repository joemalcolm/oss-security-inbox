X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3330" "Tuesday" "26" "May" "2015" "10:41:11" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<5564A227.3030608@redhat.com>" "87" "[oss-security] Question about tmp flaws in non-default build options (e.g. Kerberos DEBUG_ASN1)" nil nil nil "5" "2015052616:41:11" "[oss-security] Question about tmp flaws in non-default build options (e.g. Kerberos DEBUG_ASN1)" (number mark "        kseifried@re May 26   87/3330  " thread-indent "\"[oss-security] Question about tmp flaws in non-default build options (e.g. Kerberos DEBUG_ASN1)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 6058 invoked by uid 550); 26 May 2015 16:41:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6024 invoked from network); 26 May 2015 16:41:25 -0000
Message-ID: <5564A227.3030608@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="jfV7UpvLhNJ71AFKnTlLgRWb4FQ4bSTSB"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Date: Tue, 26 May 2015 10:41:11 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Question about tmp flaws in non-default build options (e.g. Kerberos
 DEBUG_ASN1)
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
        CVE ID Change <cve-id-change@mitre.org>

--jfV7UpvLhNJ71AFKnTlLgRWb4FQ4bSTSB
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

So I found some obvious tmp vulns in Kerberos, but they only exist if
you build with DEBUG_ASN1 on (and if you're in that situation you got
some not fun problems).

However based on the fact that CVE-2014-1692 (the OpenSSH J-PAKE
protocol) it seems that even if the code is not enabled by default, the
fact that it exists is enough to qualify it for a CVE. So with this in
mind I'm sending a CVE request in.

First example from each of the 3 files affected by the DEBUG_ASN1 tmp
file issues (note: print_buffer_bin doesn't do anything clever to be safe):

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
./src/plugins/preauth/pkinit/pkinit_crypto_openssl.c
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
#ifdef DEBUG_ASN1
    if (cms_msg_type =3D=3D CMS_SIGN_CLIENT) {
        print_buffer_bin(*signed_data, *signed_data_len,
                         "/tmp/client_pkcs7_signeddata");
    } else {
--


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
./src/plugins/preauth/pkinit/pkinit_srv.c
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
#ifdef DEBUG_ASN1
    print_buffer_bin(data->contents, data->length, "/tmp/kdc_as_req");
#endif
--

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
./src/plugins/preauth/pkinit/pkinit_clnt.c
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
#ifdef DEBUG_ASN1
    print_buffer_bin((unsigned char *)coded_auth_pack->data,
                     coded_auth_pack->length,
                     "/tmp/client_auth_pack");
#endif
--




--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993


--jfV7UpvLhNJ71AFKnTlLgRWb4FQ4bSTSB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVZKInAAoJEBYNRVNeJnmTy6YP/Rp5Y0n2djrHezchKs1be2FZ
GyNAsvxIZoGgd0kYZSDeGdV8lqEzBYDr8fUKrDRVPrkbPsuEYdlkhEjHfqTW45gc
eDsB04t6HeKB4USdgkD0BOobpLVjP1kqbT5Poncf2wzVkrE09cuj+Mi2vjukvRfY
vDfAnLlOJKEDCffOrrgKwMT0uvOUGDcI7wWYPWWzZ4sfQoD9vbyegacspIb9eJgA
UuWaNuJEnuqXXyxUla1x0uwkwRrlmjwJ5qpTgFmqD0HejFtmFHYJuq87Dg8eUUJp
gM/98GpxBLQtPigusvL567mYgNa46pfa4+PwJHPWRoOcjZOSitQyq6IjQHl/Bjn8
1cgjoDi+KDgd/9MGl8mZwMXsZ5rUvkgcfM+/w2jbWn+SJX8jG3DI+M7nZLtdHRFN
7CONfs/+pbw7+W+8Ppd3rEiczEG3cNBeeA6rJ2vm1v9ONHSnqmF9E436MbXH5iMJ
R2yJFvNJ9h3TH/xYMYFqVtaFlkt0V1/53KDSs7zDi46kKTOsDAWMOAMkZvmR76Sa
hR34jVfkDJPNQIIgM3pycYOJaiU66IgXFCbTqMOG3ZAYq4AgGVrDq2txZlAI/N7D
RlyEsVLzB+RIJHswLCojog0ZeDB/x+rSX1ce8sfHftWRH/Hq47RkWzr9Z7DUtioV
DITlsDKbX5zNt6WpXRjK
=YEsr
-----END PGP SIGNATURE-----

--jfV7UpvLhNJ71AFKnTlLgRWb4FQ4bSTSB--
