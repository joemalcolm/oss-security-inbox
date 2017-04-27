X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3436" "Thursday" "27" "April" "2017" "20:58:10" "+0200" "Jakub Jirutka" "jakub@jirutka.cz" "<416E8C5A-A926-4C7E-94F3-AFBB169C383A@jirutka.cz>" "94" "[oss-security] CVE-2017-8301: TLS verification vulnerability in LibreSSL 2.5.1 - 2.5.3" "^Date:" nil nil "4" "2017042718:58:10" "[oss-security] CVE-2017-8301: TLS verification vulnerability in LibreSSL 2.5.1 - 2.5.3" (number mark "        jakub@jirutk Apr 27   94/3436  " thread-indent "\"[oss-security] CVE-2017-8301: TLS verification vulnerability in LibreSSL 2.5.1 - 2.5.3\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30002 invoked by uid 550); 27 Apr 2017 19:14:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5812 invoked from network); 27 Apr 2017 18:58:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jirutka.cz; s=mail;
	t=1493319490; bh=PqalMvmn+Sdqz4Dph1z+YDZgSPuDaReMu6rZXA0rz18=;
	h=From:Subject:Date:To;
	b=jzlCPLXVcRL1T60/J4wLfZZs7H+WQJTLhfvCrPgnQ2IyFJ5NDN+HeiVna5OLufsty
	 61OAif2oUkRLrz6c5pVbaB6F9CuDsQVufLLRCsbZiQKef+khjuvwNfXHCvgXWk3xhm
	 uOwEGuk3AEBow4L1Pb6v26mDcwCuCqp7qSNjKpEA=
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Message-Id: <416E8C5A-A926-4C7E-94F3-AFBB169C383A@jirutka.cz>
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Date: Thu, 27 Apr 2017 20:58:10 +0200
From: Jakub Jirutka <jakub@jirutka.cz>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-8301: TLS verification vulnerability in LibreSSL 2.5.1 - 2.5.3
To: oss-security@lists.openwall.com

Vulnerability Type: Missing TLS Certificate Validation
Affected Product Code Base: LibreSSL - 2.5.1 - 2.5.3
Vendor of Product: OpenBSD
Affected Component: SSL_set_verify, SSL_CTX_set_verify, SSL_get_verify_resu=
lt


## Summary

LibreSSL 2.5.1 to 2.5.3 lacks TLS certificate verification if
SSL_get_verify_result is relied upon for a later check of a
verification result, in a use case where a user-provided verification
callback returns 1, as demonstrated by acceptance of invalid
certificates by nginx.


## Additional Information

LibreSSL versions from 2.5.1 until 2.5.3 suffer from a lack of TLS certific=
ate
verification if the user-provided callback for verification returns 1.
This bug was introduced in commit ddd98f8ea741a122952185a36c1396c14c2fda74 =
[1]
(libcrypto/x509/x509_vfy.c, version 1.58) and has not been fixed upstream y=
et.

If the user verification callback returns 1, LibreSSL will force the
verification result to X509_V_OK resulting in, contrary to the documentatio=
n,
any later checks by the API user through SSL_get_verify_result() to be usel=
ess,
as it will always return X509_V_OK instead of any earlier error that occurr=
ed
in the verification process.

As such, any API user that matches the following prerequisites:

* Installs a verification callback that always returns 1, or returns 1 even
  when the first parameter (preverify_ok) is 0;
* Intends to check the verification result later using SSL_get_verify_resul=
t()
  in order to abort the connection at that point;

will be lead into thinking that the verification succeeded and thus possibly
allow connections to peers with invalid certificates, despite this clearly
not being the intention and in violation of the documentation of the origin=
al
OpenSSL API:

> If verify_callback always returns 1, the TLS/SSL handshake will not be
> terminated with respect to verification failures and the connection will =
be
> established. The calling process can however retrieve the error code of t=
he
> last verification error using SSL_get_verify_result(3) or by maintaining
> its own error storage managed by verify_callback. -- [2]

An example of real-world software affected by this is nginx [3], bypassing
certificate verification entirely and InspIRCd [4], bypassing the option
of requiring trusted clients upon connect (<connect requiressl=3D"trusted">=
).

This issue was discovered by Jakub Jirutka <jakub@jirutka.cz> from Alpine L=
inux
using the nginx automated test suite [5] and further investigated by
Duncan Overbruck <duncaen@voidlinux.eu> from Void Linux and Shiz <hi@shiz.m=
e>
from Alpine Linux.

Not fixed upstream yet, verified by vendor here [6].

This issue got assigned CVE-2017-8301 [7].


## Attack Vectors

Connect to an affected service over TLS using an arbitrary client
certificate, or an affected client connecting to a service that
presents an arbitrary server certificate.


## References

[1]: https://github.com/libressl-portable/openbsd/commit/ddd98f8ea741a12295=
2185a36c1396c14c2fda74
[2]: https://wiki.openssl.org/index.php/Manual:SSL_CTX_set_verify(3)
[3]: https://trac.nginx.org/nginx/ticket/1257
[4]: https://github.com/inspircd/inspircd/blob/5366dd2abd8fdeecf4a6ff173faf=
1f241d185628/src/modules/extra/m_ssl_openssl.cpp#L536
[5]: http://hg.nginx.org/nginx-tests/
[6]: https://github.com/libressl-portable/portable/issues/307#issuecomment-=
297469867
[7]: https://nvd.nist.gov/vuln/detail/CVE-2017-8301

