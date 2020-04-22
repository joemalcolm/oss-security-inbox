X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2303" "Wednesday" "22" "April" "2020" "08:12:59" "+0100" "Mark J Cox" "mark@openssl.org" "<CABU6YOY2Ttdr9eS2j_bBbwE1Tt8uvVxHfSojXY496Wtg5vJX-Q@mail.gmail.com>" "62" "[oss-security] [CVE-2020-1967] OpenSSL 1.1.1d+ Segmentation fault in SSL_check_chain" nil nil nil "4" "2020042207:12:59" "[oss-security] [CVE-2020-1967] OpenSSL 1.1.1d+ Segmentation fault in SSL_check_chain" (number mark "U       mark@openssl Apr 22   62/2303  " thread-indent "\"[oss-security] [CVE-2020-1967] OpenSSL 1.1.1d+ Segmentation fault in SSL_check_chain\"\n") "<CABU6YOYv53PEmzhpM_9LsqpscC6onzNrexE=q5SnxUNscOkTMA@mail.gmail.com>" ("<20200421132524.GA5046@openssl.org>" "<CABU6YOZ5mgnnVzttpkbD48nCCM_bTUWF_GbNsj7vMfPDY8uy5g@mail.gmail.com>" "<CABU6YOYv53PEmzhpM_9LsqpscC6onzNrexE=q5SnxUNscOkTMA@mail.gmail.com>") nil nil nil nil nil nil nil "[oss-security] [CVE-2020-1967] OpenSSL 1.1.1d+ Segmentation fault in SSL_check_chain" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10116 invoked by uid 550); 22 Apr 2020 07:18:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1170 invoked from network); 22 Apr 2020 07:13:21 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=rHjG/B0tFd/9fadXIhmObOdygJ6/lln3TxKl26yLC/M=;
        b=ja40h00NX2c6ExLRfMgLYSrgxk52f8ZbEbb9578HQ2KlLIWVQE+xc146kHGPLf69Fa
         nRIrwGnTokNaGONZE7EdJ7NXxQQv5gOLJfjwjHkroafNKJJOZeRK7+cH8iydhDBePMOT
         XXF5mPm4/Cpr0feQeA9dGcLqhJOfdO+gOYn8yQXSgfD/8QUd1oJfchUgNmjViQlg6+Oq
         HlR+SgInAXIEDe6KDJRycrb6r/rJEhXUJl/xTEVY54vqHVDHYc1kn3t6NL6Ph2SG3z7s
         Mj43N4MA2SmV3YVY2sgZ0j+6W62jEdKglGiKIA9BQ+p/a8jOYmIpK+Ndk+Na/NhzuAGf
         rwYA==
X-Gm-Message-State: AGi0Pua35YiBIhfRC3/1k28r80EwaIAuW5plgvh5RAAO/aeYz5Xs5UKq
	Ngd6em3zPzejbBtp9WWqOeh1eC023xyIfiNCSlOxdyiA
X-Google-Smtp-Source: APiQypIziA7Tsqcd/chf3RmW0YZQJhBrwA5Hm2mEXXU/8NvwLDCYmrjX4xyTZWrUQQuOcXaPGZ/hq0nOzX68HX8/IE8=
X-Received: by 2002:a5d:944c:: with SMTP id x12mr24149654ior.100.1587539589964;
 Wed, 22 Apr 2020 00:13:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200421132524.GA5046@openssl.org> <CABU6YOZ5mgnnVzttpkbD48nCCM_bTUWF_GbNsj7vMfPDY8uy5g@mail.gmail.com>
 <CABU6YOYv53PEmzhpM_9LsqpscC6onzNrexE=q5SnxUNscOkTMA@mail.gmail.com>
In-Reply-To: <CABU6YOYv53PEmzhpM_9LsqpscC6onzNrexE=q5SnxUNscOkTMA@mail.gmail.com>
From: Mark J Cox <mark@openssl.org>
Date: Wed, 22 Apr 2020 08:12:59 +0100
Message-ID: <CABU6YOY2Ttdr9eS2j_bBbwE1Tt8uvVxHfSojXY496Wtg5vJX-Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [CVE-2020-1967] OpenSSL 1.1.1d+ Segmentation fault in SSL_check_chain

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

OpenSSL Security Advisory [21 April 2020]
=========================================

Segmentation fault in SSL_check_chain (CVE-2020-1967)
=====================================================

Severity: High

Server or client applications that call the SSL_check_chain() function during or
after a TLS 1.3 handshake may crash due to a NULL pointer dereference as a
result of incorrect handling of the "signature_algorithms_cert" TLS extension.
The crash occurs if an invalid or unrecognised signature algorithm is received
from the peer. This could be exploited by a malicious peer in a Denial of
Service attack.

OpenSSL version 1.1.1d, 1.1.1e, and 1.1.1f are affected by this issue.  This
issue did not affect OpenSSL versions prior to 1.1.1d.

Affected OpenSSL 1.1.1 users should upgrade to 1.1.1g

This issue was found by Bernd Edlinger and reported to OpenSSL on 7th April
2020. It was found using the new static analysis pass being implemented in GCC,
- -fanalyzer. Additional analysis was performed by Matt Caswell and Benjamin
Kaduk.

Note
=====

This issue did not affect OpenSSL 1.0.2 however these versions are out of
support and no longer receiving public updates. Extended support is available
for premium support customers: https://www.openssl.org/support/contracts.html

This issue did not affect OpenSSL 1.1.0 however these versions are out of
support and no longer receiving updates.

Users of these versions should upgrade to OpenSSL 1.1.1.

References
==========

URL for this Security Advisory:
https://www.openssl.org/news/secadv/20200421.txt

Note: the online version of the advisory may be updated with additional details
over time.

For details of OpenSSL severity classifications please see:
https://www.openssl.org/policies/secpolicy.html
-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEhlersmDwVrHlGQg52cTSbQ5gRJEFAl6e8uwACgkQ2cTSbQ5g
RJHHRgf+J8iVBuK6EoOvf9xm9geiDgYVFse9ckMXH92gdGbwsW4uhTNk9fCyNC+t
vsf6YGT6nKJarB5+N+LC4QB7VLo/DjlYcN9zP3mubV0eEyKHSoW6tDOWPpJ0gsbt
2Z9iTA4GnofvhBcWLiPGgv4IUHknsOaPkRmEppSF0fDTSKuYOerfNRh9jTKHulis
Ph6dCOXE3kb5HfMwVj3UN2sP92XTig4FzpIQaZ1/2jKZaRXtzJD7pvu1fDCTkUGl
aeta5jHNypYyRKJLuJ1+1DiBtbWTFAWMUCHlkg/kgdU4hIl/lo3vgAyFs/9mQxZQ
vj2rIjoJHRj0EXqXhHoABqBHedilJQ==
=AXyP
-----END PGP SIGNATURE-----
