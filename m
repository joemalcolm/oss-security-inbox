X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1642" "Thursday" "16" "January" "2020" "14:05:19" "+0000" "Colm O hEigeartaigh" "coheigea@apache.org" "<CAB8XdGDKLrUT5+TUT5c6Bsk2zr3ODLO1yYENMLGY5ctkgw_zPQ@mail.gmail.com>" "50" "[oss-security] [CVE-2019-12423] Apache CXF OpenId Connect JWK Keys service returns private/secret credentials if configured with a jwk keystore" nil nil nil "1" "2020011614:05:19" "[oss-security] [CVE-2019-12423] Apache CXF OpenId Connect JWK Keys service returns private/secret credentials if configured with a jwk keystore" (number mark "U       coheigea@apa Jan 16   50/1642  " thread-indent "\"[oss-security] [CVE-2019-12423] Apache CXF OpenId Connect JWK Keys service returns private/secret credentials if configured with a jwk keystore\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-12423] Apache CXF OpenId Connect JWK Keys service returns private/secret credentials if configured with a jwk keystore" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11529 invoked by uid 550); 16 Jan 2020 14:17:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7719 invoked from network); 16 Jan 2020 14:05:42 -0000
X-Gm-Message-State: APjAAAWVuEXOK1maqG0J6tcdsl5CByC9C6LRJHXKMjhjYBOu9hMCkzll
	I4DD0VfB5ysWrRvrgOa2TdVZb3U3AOG7QwAeXd4=
X-Google-Smtp-Source: APXvYqw571ikBCwkPBdTdhdp2K2mJxlJeo8I1NvUurAC+AFt8uYRVG47h80p7b2vcMJJW/fFnHmdnFONMZ+mxy4QX/s=
X-Received: by 2002:a6b:6c0f:: with SMTP id a15mr27642463ioh.13.1579183529866;
 Thu, 16 Jan 2020 06:05:29 -0800 (PST)
MIME-Version: 1.0
From: Colm O hEigeartaigh <coheigea@apache.org>
Date: Thu, 16 Jan 2020 14:05:19 +0000
X-Gmail-Original-Message-ID: <CAB8XdGDKLrUT5+TUT5c6Bsk2zr3ODLO1yYENMLGY5ctkgw_zPQ@mail.gmail.com>
Message-ID: <CAB8XdGDKLrUT5+TUT5c6Bsk2zr3ODLO1yYENMLGY5ctkgw_zPQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000555b62059c425135"
Subject: [oss-security] [CVE-2019-12423] Apache CXF OpenId Connect JWK Keys service returns
 private/secret credentials if configured with a jwk keystore

--000000000000555b62059c425135
Content-Type: text/plain; charset="UTF-8"

CVE-2019-12423: Apache CXF OpenId Connect JWK Keys service returns
private/secret credentials if configured with a jwk keystore

Severity: Moderate

Vendor: The Apache Software Foundation

Versions Affected:

This vulnerability affects all versions of Apache CXF prior to 3.3.5 and
3.2.12.

Description:

Apache CXF ships with a OpenId Connect JWK Keys service, which allows a
client
to obtain the public keys in JWK format, which can then be used to verify
the
signature of tokens issued by the service.

Typically, the service obtains the public key from a local keystore
(JKS/PKCS12) by specifing the path of the keystore and the alias of the
keystore entry. This case is not vulnerable.

However it is also possible to obtain the keys from a JWK keystore file, by
setting the configuration parameter "rs.security.keystore.type" to "jwk".
For
this case all keys are returned in this file "as is", including all private
key and secret key credentials.

This is an obvious security risk if the user has configured the signature
keystore file with private or secret key credentials.

- From CXF 3.3.5 and 3.2.12, it is mandatory to specify an alias
corresponding
to the id of the key in the JWK file, and only this key is returned. In
addition, any private key information is omitted by default. "oct" keys,
which
contain secret keys, are not returned at all.

Mitigation:

Users of Apache CXF that user the OpenId Connect JWK keys service as part of
their OpenId Connect service should update to either the 3.3.5 or 3.2.12
releases.

--000000000000555b62059c425135--
