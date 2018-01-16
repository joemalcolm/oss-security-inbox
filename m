X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3395" "Tuesday" "16" "January" "2018" "15:12:37" "+0000" "Luke Hinds" "lhinds@redhat.com" "<fd739193-ade8-6f8d-3831-58b8e752eaba@redhat.com>" "96" "[oss-security] opendaylight-advisory: Multiple \"expired\" flows consume the memory resource of CONFIG DS" "^Date:" nil nil "1" "2018011615:12:37" "[oss-security] opendaylight-advisory: Multiple \"expired\" flows consume the memory resource of CONFIG DS" (number mark "U       lhinds@redha Jan 16   96/3395  " thread-indent "\"[oss-security] opendaylight-advisory: Multiple \"expired\" flows consume the memory resource of CONFIG DS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22262 invoked by uid 550); 16 Jan 2018 15:18:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18012 invoked from network); 16 Jan 2018 15:12:55 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version;
        bh=3duJQh5moqot2BZcJHQRys6f2nvpeZcqg51nnBYzN8g=;
        b=OsxbrTtteK2XBvbJ+o/Dgvzcn4OEjBvRfcla6hzJqd4FNf6L+qBqHeg0WoXE+UAUNC
         k/UXI/CHWGPJA0DhTd+ooIhS4/WE/bZTBuZTVCYZuqhnsWr6fEk+X039d3v+3q72oHrt
         KuA19S8+ZuxwiA90ah3hl7IQHXm8RdAbeSgy8PsIhbfit7ZVhxeO2/dd4Xt9P3XyBW+i
         Q/4FfzaTNh8G+WlJeMo6ggDWWHpDNKyk5JDZ/lT3jTPUqjTY623FngFgm+itrMrx/k8S
         fOAd/JxBNW1fjQH5isM6cHr1KGgdZ6W2O8STWMN/4Ss7WS9ZKpBMzvMmxSr7hFBXa3Z1
         lqdA==
X-Gm-Message-State: AKwxyteTQeyzRATegSA+9IlJncEEEkX0np8xHwb+PbqID8P53mA3+fwh
	j0lrpiLIFSqNTF5uW2LNVD1MvNdXGg==
X-Google-Smtp-Source: ACJfBov8Kxg4iYroRFFwwfNVQ5i0p0luFmOZucU/J7YvsjE6sAIrblct0zyGDYDvzfxMbVB4gRUf5g==
X-Received: by 10.223.197.72 with SMTP id s8mr1347242wrf.96.1516115563515;
        Tue, 16 Jan 2018 07:12:43 -0800 (PST)
Message-ID: <fd739193-ade8-6f8d-3831-58b8e752eaba@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.2
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="lol8VOFoD3brl5TJEl15U1TAjmSFK5v2j"
Date: Tue, 16 Jan 2018 15:12:37 +0000
From: Luke Hinds <lhinds@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] opendaylight-advisory: Multiple "expired" flows consume the memory
 resource of CONFIG DS
To: oss-security <oss-security@lists.openwall.com>

--lol8VOFoD3brl5TJEl15U1TAjmSFK5v2j
Content-Type: multipart/mixed; boundary="l1k3rDBgsWvJ6krw6uFWPuHx5uCu33muO";
 protected-headers="v1"
From: Luke Hinds <lhinds@redhat.com>
To: oss-security <oss-security@lists.openwall.com>
Message-ID: <fd739193-ade8-6f8d-3831-58b8e752eaba@redhat.com>
Subject: opendaylight-advisory: Multiple "expired" flows consume the memory
 resource of CONFIG DS

--l1k3rDBgsWvJ6krw6uFWPuHx5uCu33muO
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB-large
Content-Transfer-Encoding: quoted-printable

Issue

Multiple "expired" flows consume memory resources of CONFIG DS which
leads to Controller shutdown.

The following issue was discovered and reported by Vaibhav Hemant Dixit.

Summary

Multiple "expired" flows take up the memory resource of CONFIG DATASTORE
which leads to CONTROLLER shutdown.

Affected Services / Software

OpenFlow Plugin and OpenDayLight Controller.

Versions: Nitrogen, Carbon, Boron   Robert Varga, Anil Vishnoi -< please
verify versions affected (back to depreciated releases).

Discussion

If multiple different flows with "idle-timeout" and "hard-timeout" are
sent to the Openflow Plugin REST API, the expired flows will eventually
crash the controller once its resource allocations set with the JVM size
are exceeded.

Although the installed flows(with timeout set) are removed from network
(an thus also from controller's operations DS), the expired entries are
still present in CONFIG DS.

The attack can originate both from NORTH or SOUTH. The above description
is for a north bound attack. A south bound attack can originate when an
attacker attempts a flow flooding attack and since flows come with
timeouts, the attack is not successful. However, the attacker will now
be successful in CONTROLLER overflow attack (resource consumption).

Although, the network(actual flow tables) and operational DS are only
(~)1% occupied, the controller requests for resource consumption. This
happens because the installed flows get removed from the network upon
timeout.

Proposed patch

No patches have been made available, as this issue is mitigated by means
of a secure architecture (See Recommended Actions below).

Recommended Actions

Management API=E2=80=99s within OpenDayLight should only ever be deployed w=
ithin
a segregated private network and never exposed to public networks, this
includes the OpenFlowPlugin. Further protections can be implemented by
deploying a rate limiting proxy (such as OpenRepose, HAProxy, nginx,
mod_ratelimit etc) or web application firewall.

CVE: CVE-2017-1000411

Regards,

Luke Hinds (OpenDayLight Security Manager)


--l1k3rDBgsWvJ6krw6uFWPuHx5uCu33muO--

--lol8VOFoD3brl5TJEl15U1TAjmSFK5v2j
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEElSwKI1Vlx+dE6h5a8WVWFzwgJhQFAlpeFmkACgkQ8WVWFzwg
JhR8eggAhtj3CcsJWBy45nFjqUou4RxWK0MfDGCGpAyy40PEQ4N1Ya5CkX857FOm
uMctsRzx/VI4RuCOeTVHWT+IFwtfh5XhkRD2piyDKP1kSue+ZJTXCqCh3tcKrIF5
0/5wKAld7p0TTOK7/OodUvi/oYBR2sYCx+F7i6vm8VNZgl0v3BwAvvitGoRfQBaT
w3e1BOWqdjYs+xp3uAHKSCzabG53JcWQqYZlt4gSTLJsZAwhDQQSWhYSXRLaQW3c
jCRTFK4NiODmABOOyI2uOK4VrkvG2s9gNgLJlRz0Uba3u7vPmCkq1f8DRQgdrIP4
1O28YD+cso/l6K+49wXl5EL31yajRw==
=btQe
-----END PGP SIGNATURE-----

--lol8VOFoD3brl5TJEl15U1TAjmSFK5v2j--
