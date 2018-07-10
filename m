X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2774" "Tuesday" "10" "July" "2018" "09:22:25" "+0100" "Luke Hinds" "lhinds@redhat.com" "<a2972f5b-b716-52f2-732f-093081865c65@redhat.com>" "76" "[oss-security] [OSSN-0084] Data retained after deletion of a ScaleIO volume" nil nil nil "7" "2018071008:22:25" "[oss-security] [OSSN-0084] Data retained after deletion of a ScaleIO volume" (number mark "U       lhinds@redha Jul 10   76/2774  " thread-indent "\"[oss-security] [OSSN-0084] Data retained after deletion of a ScaleIO volume\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3135 invoked by uid 550); 10 Jul 2018 09:43:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15660 invoked from network); 10 Jul 2018 08:22:39 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:openpgp:autocrypt:message-id
         :date:user-agent:mime-version;
        bh=LNKg3poe4o82/7L+icUKXwvJYRqQpQEPZq24NrkWIp0=;
        b=dALfEvZylkcyno19hVO4pC6L2Ls5zjo9azTOA1SMQ1TbeG3ZcAgXZK1SDVLsHSA5J/
         oKI81vtVL1UEsTz8uCNN6znDXK+D6tk4yh64zWEyoPF+N+XQ5JCf1LEs+qNqAZdGfUEG
         nbagpNokmEQUfAWqDLIhRjGiP0nR1b57Swb+6A5861FKgAB4t6CnCie9DzwjtG/Y4dPX
         fi6EnhFbO7ZWxN9+NO57CYeW3X+RQ+s1wo60o7n4NPlHEo5l7UzZKmMlMp/lMrGc1O4W
         +3xq8I6Njo0cadbhlVIXEJPzYIq8cS4bxsyGYwKCK00AlBT+pyyO2v3+gZ27jLekhdpV
         9FhA==
X-Gm-Message-State: APt69E19nknwbfrP7ZfVeQiiffQ8sUgNXEyHyOZHyR2dcOWR6uIuCTOd
	FhWjMwBCGbzJcC4RnkfNkZ+Xd12WSw==
X-Google-Smtp-Source: AAOMgpeZc2dwgYjvTkP0cDc/+/g22Z+vU5TH3DYpQMhXvKofkU7sLNpwuZv7eNwpEtPefJrV9nSlTA==
X-Received: by 2002:a5d:6550:: with SMTP id z16-v6mr16221059wrv.194.1531210947141;
        Tue, 10 Jul 2018 01:22:27 -0700 (PDT)
To: oss-security <oss-security@lists.openwall.com>
From: Luke Hinds <lhinds@redhat.com>
Openpgp: preference=signencrypt
Autocrypt: addr=lhinds@redhat.com; prefer-encrypt=mutual; keydata=
 xsBNBFcLyhwBCADSNb8iiJtTiTVyLB9gmIah09wj48CULxqIC8VYogNRwky3CmQefLQgcirI
 lvWFqL39PHHon3AYzpEU1fBB1G0SN2/bFT+qO/vE8fjkCuAxMJkfollN7Nq9y1/bSnXpw0uS
 +avKHClLD5OGX2oY2mDkiExkm8bzONu2+Iu3ZW313KU6Qw//sukJNwVVB8t67xsxiADUcfxU
 YQEZ1CGKPD4KFovrzmRodFE3BtMnsJNzHPMsI1CTBt+8BuQhmoZ5akQSPQfojfVZvqr3DbCc
 FEQaBm5GCz6Rdqch1R7kQ+lgudXqpW92N+qm0kozx34TMFHw6mazuV2XhGpRUbV3r2GpABEB
 AAHNHkx1a2UgSGluZHMgPGxoaW5kc0ByZWRoYXQuY29tPsLAeAQTAQIAIgUCVwvKHAIbAwYL
 CQgHAwIGFQgCCQoLBBYCAwECHgECF4AACgkQ8WVWFzwgJhRnyQf6AnYhPjNfL6pKCQ/Pjmyi
 sgfMIXwHwK3P8Ev2Am1+xipt254NyZbO7P5i7efJ3GZqBc4TR93j8WqKalri+CYYao+PpNqE
 u6nlA3vbL9LA6W7B/hQLSFt2gNmMp24tNBenpqYkNOQA8A/5H0EOiyvhjepxUQ7+1jz1kKhK
 Fua4a6nBSEdtqNGckOTx9T3q5ktQAp3tjhXQTaqNFKme4Wq5axT/aIe1gJRwa9ZPWEMdK1jy
 w88vFrEa4Y/3N29QlpaN9XwU4Wp8Amij2MN+C3BjF30sFXd3Cr6KU3VpcqqfM4s1ryrEJCtC
 pelOs8wK8Hr9xLeZ114PRYm+xSsAacNptM7ATQRXC8ocAQgAuqHCGpL2e3CNLbYFm19la3Z2
 3/zbLZrSZyvhxHDuYlEfdK9qjX7zyYxVyNHyI6jhxDXED6ZObDgZNhST2V+E5h0t5PvLdfzL
 Vffe/2bDa4GP+t63cqxtWPTVkiPHyvDNsBrMmM9n7iiEa01OxKOnAxBxvUJshfzUAiy5Atek
 rFRFTGOeBRiJXJI7N6dGtFBdQ7KfZRbQT3DMhz0nlERilva/+sbJ1sMbwDixMHhGBzVck9dW
 s+rJeMnl6lTeDBXg8kYXkMwdcV4vjaoRs7d7haF4vhlL9VQbM1I/3rhUXjXHX8Ct8XMMYhtI
 mHpbmqueX/lL4Rq71EAKoy4luvQk1QARAQABwsBfBBgBAgAJBQJXC8ocAhsMAAoJEPFlVhc8
 ICYUOnUIAKMnO8bxB1UQRAkpzDq97fWaPSJgSxKRD8fzDg2k0zzuxeQ6D6EtSxmViTqYbjxr
 6Gd/bzuNQOkKy/fQXHbGL/zDurR+Xh+GH7yr+ynFdlWY701OSa1+xAT5igQaKl29ofjH/I5s
 xCTZiCwySFcwhdpGUg1IMn7TlzPT6r/2Pafueqyha0VPUxL91H+2emxu5EALHPaOmwyTlZWU
 mr4KL5BE88RTdZtu851nXSH6/qtGPmoeNrAh2yuKR9EkQYh9XyqC7dHQM4gM12XGTlwIwEg0
 zsE7Ve7ZewmXEKeqo2VTMPAmeC5p/0sWKobjfctTp6nuzolU6Ph6zJxPrHK+EoY=
Message-ID: <a2972f5b-b716-52f2-732f-093081865c65@redhat.com>
Date: Tue, 10 Jul 2018 09:22:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.8.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="85NBK4P8t0QB6eErZ5zC3RItK3JXLmYmw"
Subject: [oss-security] [OSSN-0084] Data retained after deletion of a ScaleIO volume

--85NBK4P8t0QB6eErZ5zC3RItK3JXLmYmw
Content-Type: multipart/mixed; boundary="VYbnCfvd1gGsYQJnC7tNf5wSxUdfhz1Xw";
 protected-headers="v1"
From: Luke Hinds <lhinds@redhat.com>
To: oss-security <oss-security@lists.openwall.com>
Message-ID: <a2972f5b-b716-52f2-732f-093081865c65@redhat.com>
Subject: [OSSN-0084] Data retained after deletion of a ScaleIO volume

--VYbnCfvd1gGsYQJnC7tNf5wSxUdfhz1Xw
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB-large
Content-Transfer-Encoding: quoted-printable

Data retained after deletion of a ScaleIO volume
---

### Summary ###
Certain storage volume configurations allow newly created volumes to
contain previous data. This could lead to leakage of sensitive
information between tenants.

### Affected Services / Software ###
Cinder releases up to and including Queens with ScaleIO volumes
using thin volumes and zero padding.

### Discussion ###
Using both thin volumes and zero padding does not ensure data contained
in a volume is actually deleted. The default volume provisioning rule is
set to thick so most installations are likely not affected. Operators
can check their configuration in `cinder.conf` or check for zero padding
with this command `scli --query_all`.

#### Recommended Actions ####

Operators can use the following two workarounds, until the release of
Rocky (planned 30th August 2018) which resolves the issue.

1. Swap to thin volumes

2. Ensure ScaleIO storage pools use zero-padding with:

`scli --modify_zero_padding_policy
    (((--protection_domain_id <ID> |
    --protection_domain_name <NAME>)
    --storage_pool_name <NAME>) | --storage_pool_id <ID>)
    (--enable_zero_padding | --disable_zero_padding)`

### Contacts / References ###
Author: Nick Tait
This OSSN : https://wiki.openstack.org/wiki/OSSN/OSSN-0084
Original LaunchPad Bug : https://bugs.launchpad.net/ossn/+bug/1699573
Mailing List : [Security] tag on openstack-dev@lists.openstack.org
OpenStack Security Project : https://launchpad.net/~openstack-ossg



--VYbnCfvd1gGsYQJnC7tNf5wSxUdfhz1Xw--

--85NBK4P8t0QB6eErZ5zC3RItK3JXLmYmw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEElSwKI1Vlx+dE6h5a8WVWFzwgJhQFAltEbMEACgkQ8WVWFzwg
JhQH3AgAxpuzge3GNQezVC2oj0Hg3lVl8j/aI02FAm8vf+L3QYqFGvPkn/Zwb73c
TENiHObzpr6R4aZBocRGB2t6Rzhy8o2Ym37Vr36nHjOnkl0tIAuroPvmER0G3VXk
pPjVBIDs7h3LaQjpPa2r1abKPPaq+Hn1n/FicRzhU3bWqsi3CWIBNjj28FUC4TBE
bcZkLVi0/EeaC37dU10naLv19XNKCV1YAuLwhzg0acg57SKJAkwWWtnxTW4O2kAE
HXf8ACWg8ra+k9xOkdxYpt216yrsHHmEcLjjhdzjuEtGP6tUgZD6D3JpYiLQ6Qug
B02JrUV8+iOkltkeRHzyfscBoC/ZRQ==
=2ggl
-----END PGP SIGNATURE-----

--85NBK4P8t0QB6eErZ5zC3RItK3JXLmYmw--
