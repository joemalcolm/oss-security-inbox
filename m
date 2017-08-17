X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3503" "Thursday" "17" "August" "2017" "12:00:29" "+0100" "Luke Hinds" "lhinds@redhat.com" "<f803aa38-d504-38a1-d4e2-edb3d5faff57@redhat.com>" "92" "[oss-security] [OpenStack OSSN 0080] Aodh can be used to launder Keystone trusts" nil nil nil "8" "2017081711:00:29" "[oss-security] [OpenStack OSSN 0080] Aodh can be used to launder Keystone trusts" (number mark "U       lhinds@redha Aug 17   92/3503  " thread-indent "\"[oss-security] [OpenStack OSSN 0080] Aodh can be used to launder Keystone trusts\"\n") "<f06ab30f-8e2c-8fc1-610d-88323390bb57@redhat.com>" ("<f06ab30f-8e2c-8fc1-610d-88323390bb57@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17834 invoked by uid 550); 17 Aug 2017 12:49:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13444 invoked from network); 17 Aug 2017 11:00:43 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:references:to:from:message-id:date
         :user-agent:mime-version:in-reply-to;
        bh=I0w9qvD1nloUZWgen9L8sYDgbTbT+FEB/UptlWevtrw=;
        b=DZ6AV7n3Gb3Vy7KyKlF2m2MwCXDTswb1RaeLXO7FANM5WVPJ6vsM7Dh4sHzUP1+BJD
         VKY4c+z2R1lXUbZWGrVcjqO/wUicNLiogQWPXVzgxYcT6Fh2STHAdv/fZOp66R9bLgt7
         X+3TnJTh5RC2S7L24eLqsHuxrkBBGzqUgMqF6MbYWaemXnIhCRHHVZzQg8E2C+JcdEJ3
         hyFw1NlSv45zPFBa8UXjFz9qM/VV0Z+TmLHDIDb+g4iAtlgeoSBW7FpiMv0JZ4B4DGv4
         4cGLpPz6iTyKDfRVJuCWWjNxL1PCw9PozdWyflmBHyOKFb4PI3tM1XkSyCoxBe3lUem7
         5P1w==
X-Gm-Message-State: AHYfb5j/TGmDC4deILnjYLfVWW/vLtAeZjdfz8aeyXcYEQ/INQTa5A6W
	PuOZVwytuSQHr4/sTa7pJw==
X-Received: by 10.223.174.225 with SMTP id y88mr2943190wrc.264.1502967631758;
        Thu, 17 Aug 2017 04:00:31 -0700 (PDT)
References: <f06ab30f-8e2c-8fc1-610d-88323390bb57@redhat.com>
To: oss-security <oss-security@lists.openwall.com>
From: Luke Hinds <lhinds@redhat.com>
X-Forwarded-Message-Id: <f06ab30f-8e2c-8fc1-610d-88323390bb57@redhat.com>
Message-ID: <f803aa38-d504-38a1-d4e2-edb3d5faff57@redhat.com>
Date: Thu, 17 Aug 2017 12:00:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <f06ab30f-8e2c-8fc1-610d-88323390bb57@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="fgkWKuPW9BaRQcd0iH3h134NSAVCPGr5j"
Subject: [oss-security] [OpenStack OSSN 0080] Aodh can be used to launder Keystone trusts

--fgkWKuPW9BaRQcd0iH3h134NSAVCPGr5j
Content-Type: multipart/mixed; boundary="IEd4QDWJBahaskbT2XTqBcLsejja5bUE6";
 protected-headers="v1"
From: Luke Hinds <lhinds@redhat.com>
To: oss-security <oss-security@lists.openwall.com>
Message-ID: <f803aa38-d504-38a1-d4e2-edb3d5faff57@redhat.com>
Subject: [OpenStack OSSN 0080] Aodh can be used to launder Keystone trusts
References: <f06ab30f-8e2c-8fc1-610d-88323390bb57@redhat.com>
In-Reply-To: <f06ab30f-8e2c-8fc1-610d-88323390bb57@redhat.com>

--IEd4QDWJBahaskbT2XTqBcLsejja5bUE6
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB-large
Content-Transfer-Encoding: quoted-printable

Aodh can be used to launder Keystone trusts
---

### Summary ###

When adding an alarm action with the scheme `trust+http:` Aodh does not
verify that the user creating the alarm is the trustor or has the same
rights as the trustor, nor that the trust is for the same project as the
alarm.

### Affected Services / Software ###

Aodh the alarm engine of the Telemetry project.

Pike, Ocata and Newton

### Discussion ###

When adding an alarm action with the scheme `trust+http:`, Aodh allows
the user to provide a trust ID to acquire a token with which to make a
webhook request. (If no trust ID is provided then Aodh creates a trust
internally, in which case the issue is not present.) However, Aodh makes
no attempt to verify that the user creating the alarm is the trustor or
has the same rights as the trustor - it also does not attempt to check
that the trust is for the same project as the alarm.

The nature of the `trust+http:` alarm notifier is that it allows the
user to obtain a token given the ID of a trust for which Aodh is the
trustee, since the URL is arbitrary and not limited to services in the
Keystone catalog.

### Recommended Actions ###

A patchfile is attached to the launchpad bug referenced below. It will
block use of trust URLs which contain trust ID's and log an error
message of "trust URL cannot contain a trust ID.". Any trust action
without a trust ID will result in Aodh internally creating a trust ID as
before.

You will also need to restart the web server used for Aodh API. This is
typically apache. In cases of eventlet (in older versions) it will
require restart openstack-aodh-api for centos/RHEL/Suse and aodh-api
for ubuntu.

The fix has also been merged to master (Pike), Ocata and Newton.

### Contacts / References ###
Discoverer: Zane Bitter, Red Hat
Author: Luke Hinds, Red Hat
CVE: http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2017-12440
This OSSN : https://wiki.openstack.org/wiki/OSSN/OSSN-0080
Original LaunchPad Bug : https://bugs.launchpad.net/ossn/+bug/1649333
OpenStack Security Project : https://launchpad.net/~openstack-ossg




--IEd4QDWJBahaskbT2XTqBcLsejja5bUE6--

--fgkWKuPW9BaRQcd0iH3h134NSAVCPGr5j
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEElSwKI1Vlx+dE6h5a8WVWFzwgJhQFAlmVd00ACgkQ8WVWFzwg
JhSyUggAjttXSRwTyEB6xWhAM28KEBpnYg5sdcaIFsNYIOS07lXMtf8WPgjR8BJf
iNess6kGrnejJ62d07FSAl3WAC+82Ix1un/iSmRa2TIhUyPPOxAvrUUyBY5zheSq
zknkA2jVhmchgbV1SJZK8mx9WpPWPQP3WAAoHr0B7YXb0Z8XlSaDuM+bgyLdy1wR
4uJCRxCO0NBmQCmNYlDuBozbA9y8X6Ficm4HH1IaLC5mdmlAF90+ZXWUOd9lInll
NCUKBwFDZ+3rvXzl47saaeHmrdPHorunyNwyR0C0Hsyv9DZq5hCxp+OwqX7klwC3
zoETJ2gTdLnhFRnF0B/Od+GQ4B/R4Q==
=4twL
-----END PGP SIGNATURE-----

--fgkWKuPW9BaRQcd0iH3h134NSAVCPGr5j--
