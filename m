X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2639" "Thursday" "23" "November" "2017" "21:05:31" "+0000" "Luke Hinds" "lhinds@redhat.com" "<301dd43f-a9b8-0e08-d7f6-de7c1ceb2a31@redhat.com>" "72" "[oss-security] OpenDayLight: Password change doesn't result in Karaf clearing cache, allowing old password to still be used (CVE-2017-1000406)" nil nil nil "11" "2017112321:05:31" "[oss-security] OpenDayLight: Password change doesn't result in Karaf clearing cache, allowing old password to still be used (CVE-2017-1000406)" (number mark "U       lhinds@redha Nov 23   72/2639  " thread-indent "\"[oss-security] OpenDayLight: Password change doesn't result in Karaf clearing cache, allowing old password to still be used (CVE-2017-1000406)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11304 invoked by uid 550); 23 Nov 2017 21:12:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7588 invoked from network); 23 Nov 2017 21:05:52 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:message-id:date:user-agent
         :mime-version;
        bh=tjv7xcSmlVtbSo53IytXCNP5n+/7aF8X8OOgiqT6qAw=;
        b=gCtomTtxvJOwhprX4qBHrFvl6aig8nLGOc/owomKfRrN+N3IKQjqxvsF9/6aDxQmMQ
         l6a1MnHFQVaA1FPbNThB3cXvtTFIzVoFPlM5oC7P1knrzWfZymtGqdhG2ZD5Amie73Y3
         x2NH7SpY312+WKYERB6dtnZ+7tvGeyH1KGXIFgWtTNc8ZBCVZScON84geKadMtP/WtLR
         LUeGs0FcXh6ult5b/ZYl8MI1Bw0lR9D+qjUqgbwowIkhboq2CYW/18wNalIanADDUs4+
         mzRBrdcI5NHgcLBqRGI5L8rvGs59aC0NRYuf2Swo52qTyAXRpmVYDadsWi2TTM6gR53Y
         As3A==
X-Gm-Message-State: AJaThX6I02luLuuvJZ2NhmnL4L824x3s/9pgJ2QI4iJ5Sdp5tEhqbsrC
	YuBSeD3YaKaPgiC/QJ2M+spplKJvQg==
X-Google-Smtp-Source: AGs4zMbuQvKa39fJzVw4qoiHyIyaBOF8pDuH1rg80bphnE2s/G2vZKE3vuuHnRnjcSWghtWJ5e1meQ==
X-Received: by 10.28.131.203 with SMTP id f194mr8602253wmd.39.1511471140530;
        Thu, 23 Nov 2017 13:05:40 -0800 (PST)
From: Luke Hinds <lhinds@redhat.com>
To: oss-security <oss-security@lists.openwall.com>
Message-ID: <301dd43f-a9b8-0e08-d7f6-de7c1ceb2a31@redhat.com>
Date: Thu, 23 Nov 2017 21:05:31 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.4.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="qhcuSr1uhBlbS9t2ImVejdrJSMUIRlQqL"
Subject: [oss-security] OpenDayLight: Password change doesn't result in Karaf clearing cache,
 allowing old password to still be used (CVE-2017-1000406)

--qhcuSr1uhBlbS9t2ImVejdrJSMUIRlQqL
Content-Type: multipart/mixed; boundary="UGEs0vIWHBmgqFF8lDLuPnAln54QjmBcT";
 protected-headers="v1"
From: Luke Hinds <lhinds@redhat.com>
To: oss-security <oss-security@lists.openwall.com>
Message-ID: <301dd43f-a9b8-0e08-d7f6-de7c1ceb2a31@redhat.com>
Subject: OpenDayLight: Password change doesn't result in Karaf clearing cache,
 allowing old password to still be used (CVE-2017-1000406)

--UGEs0vIWHBmgqFF8lDLuPnAln54QjmBcT
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB-large
Content-Transfer-Encoding: quoted-printable

This email is a notification of a vulnerability discovered in
OpenDayLights AAA module. The current status of the vulnerability is
open / public, so no embargo is currently active.

opendaylight-advisory: Password change doesn't result in Karaf clearing
cache, allowing old password to still be used)

cve: CVE-2017-1000406

Vaibhav Hemant Dixit from Arizona State University reported a
vulnerability in OpenDayLight AAA, whereby should a user update a
password, the login is still successful with both OLD and NEW passwords.

This is a result of how claimCache is flushed in AAA IDM when using the
Karaf CLI.

The issue is not present when using the AAA IDM REST API, as the
handlers already invoke the clearing of the IdmLightProxy claimCache
upon user update.

A flush can be made by performing a reboot of Karaf or by applying the
patches referenced in this advisory, as the patches enable the Karaf CLI
to call IdmLightProxy claimCache and perform a flush every time a user
changes a password.

branch: master, nitrogen, carbon
review: https://git.opendaylight.org/gerrit/#/q/topic:AAA-151
jira: https://jira.opendaylight.org/browse/AAA-151

release-notes:
The fixes will be be available in the coming Nitrogen-SR1 and Carbon-SR3
releases.

--=20
Luke Hinds
OpenDaylight Security Team


--UGEs0vIWHBmgqFF8lDLuPnAln54QjmBcT--

--qhcuSr1uhBlbS9t2ImVejdrJSMUIRlQqL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEElSwKI1Vlx+dE6h5a8WVWFzwgJhQFAloXOCIACgkQ8WVWFzwg
JhSacAgAwhovr6UDutYkgjBkzZdA9T/STrc920vMpYFORouYHrvE0/+EQPT9GqMR
LTcPPQ5kYqODOKmJJEZgL5m5JCY2+ceUJrKLOcdhzy4sqB0YxTRiFsUv7xuPBwz3
quIlWJ/sub7TJmnBuCqlUZyP2a8mZfcq5+abRmfCx5waQv0CSbgcmlIgwPALXOui
jjbjS2HUScFPpPH84g5nK+RDs8mjgwijhLmOFdp/yftwkhYj/rxjhsz/hUXv89YP
UfqCmM7IQDwUsjQe9fFQ3awYHHGsL9vZgJQgGJxmpcQttITbvrEFThdK3zGGwx+4
Obl7cq7ZXio31/73OMYCC8HrVloLFg==
=YBVa
-----END PGP SIGNATURE-----

--qhcuSr1uhBlbS9t2ImVejdrJSMUIRlQqL--
