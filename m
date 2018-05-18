X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2715" "Friday" "18" "May" "2018" "14:04:23" "+0100" "Luke Hinds" "lhinds@redhat.com" "<4fada0db-0ec8-087e-e44f-14accbc7ac6a@redhat.com>" "87" "[oss-security] [opendaylight-security-note]: SDNInterfaceapp SQL injection" nil nil nil "5" "2018051813:04:23" "[oss-security] [opendaylight-security-note]: SDNInterfaceapp SQL injection" (number mark "U       lhinds@redha May 18   87/2715  " thread-indent "\"[oss-security] [opendaylight-security-note]: SDNInterfaceapp SQL injection\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22307 invoked by uid 550); 18 May 2018 13:17:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11501 invoked from network); 18 May 2018 13:04:36 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:openpgp:autocrypt:message-id
         :date:user-agent:mime-version;
        bh=zhrgyD4ccTEnsjLNA1k2p2Bprrwpq90FhKek1MapUT8=;
        b=V+aTIeN3hPQ1cg05ENgEpGtx73EQNDQKqZRsA+CmAbSE0mBZtjnwgpo+/Pt81/lXam
         7wtIbufbiqVRnPhwdj4Ppf6ZjEPODF8Or2SqaS12RneLleTolewcnSY1X74S03OIvCup
         cov8bCeSABBHEsbcD8G4UzhUGiFh/bSgm4FTEnlry5KDA9ijJICQA48UohD2uE4UkMqS
         lIbuEsIcHEcRvs1fGaQ+93I2bhKZgJsktKMt88L1Tfis9gpTAhxIY899Gcs2KJ4f/nSd
         MROfA6udkJcizjJCWpMRBw0lr7S5LMbVyPkA18P2v2+74S+/Omcf42PfPue24IFGixz7
         WpvA==
X-Gm-Message-State: ALKqPwcQFQ4efBNrwmT2JgWLjE3rLqyCWUFm7OFDfFtSdyAxiKfdIAtI
	MsxlTzssZEd5y73mtnTPfMcDmSPv3A==
X-Google-Smtp-Source: AB8JxZp98NCVJUri8LgCI2QUbE/LSsxv5N5QmaSRv1VGfy2UvF566pBKkWP6meIqtQNtBBjSV/tI9A==
X-Received: by 2002:adf:e985:: with SMTP id h5-v6mr8064685wrm.137.1526648665013;
        Fri, 18 May 2018 06:04:25 -0700 (PDT)
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
Message-ID: <4fada0db-0ec8-087e-e44f-14accbc7ac6a@redhat.com>
Date: Fri, 18 May 2018 14:04:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="r5w4mnqlYXtZN4A4FkN00JaDkYYDFkqDa"
Subject: [oss-security] [opendaylight-security-note]: SDNInterfaceapp SQL injection

--r5w4mnqlYXtZN4A4FkN00JaDkYYDFkqDa
Content-Type: multipart/mixed; boundary="cOavrHzn6QjPtvcgeD2JK8dDjAZgCJBKB";
 protected-headers="v1"
From: Luke Hinds <lhinds@redhat.com>
To: oss-security <oss-security@lists.openwall.com>
Message-ID: <4fada0db-0ec8-087e-e44f-14accbc7ac6a@redhat.com>
Subject: [opendaylight-security-note]: SDNInterfaceapp SQL injection

--cOavrHzn6QjPtvcgeD2JK8dDjAZgCJBKB
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB-large
Content-Transfer-Encoding: quoted-printable

OpenDayLight Security Note

cve: CVE-2018-1132

jira: https://jira.opendaylight.org/browse/SDNINTRFAC-14

advisory-date: 18/05/18

Summary
-------

SQL injection in the component database(SQLite) without authenticating
to the controller or SDNInterfaceapp.

Discussion
----------

Feng Xiao and Jianwei Huang from Wuhan University discovered a
vulnerability in SDNInterfaceapp (SDNI).

Attackers can SQL inject the component's database(SQLite) without
authenticating to the controller or SDNInterfaceapp.

The bug can be found in
/impl/src/main/java/org/opendaylight/sdninterfaceapp/impl/database/SdniData=
Base.java
(line 373~391)

The SDNI concats port information to build an insert SQL query, and it
executes the query in SQLite.

However, in line 386, the portName is a string that can be customized by
switches. Since SQLite supports multiple sql queries in one run,
attackers can customize the port name to inject another SQL if they
compromise or forge a switch.

For example, set portName as:
");drop table NAME;//

Recommended Actions
-------------------

The SDNI project is no longer maintained nor developed since the Carbon
release of OpenDayLight and as the aforementioned vulnerability was
reported after Carbons last service release (SR4) was shipped, the
decision was made to not release a patch.

The security team instead recommends that users upgrade to a later release.

Luke Hinds
OpenDayLight Security Manager



--cOavrHzn6QjPtvcgeD2JK8dDjAZgCJBKB--

--r5w4mnqlYXtZN4A4FkN00JaDkYYDFkqDa
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEElSwKI1Vlx+dE6h5a8WVWFzwgJhQFAlr+z1cACgkQ8WVWFzwg
JhToGwf9FVjQRxq8rX91ZVCQTJNdqhK38PnNz9iyEtCpikS/6NPUiChQvJ75SeT5
C0Oz7LC6whIEWQIV2zqJhQZNKQqlId2P7kcVFMBcKkT1ZL85Fvu2qcpwWPnfG/Ho
PEtY2isUD2syt24qDKmV4go1Ku3qarLUJIJ3otoJ6xRT5JnYjXqkwjxAadITc9T+
L7vb3l3h6cNxnV06YLxz+h5FE1q5YekVudMsANwJqJl1myUDsglUpuiJ+HubzjW+
BJTKp4c6tDjf1h2Spuz+9PrPzKtVxkT3BciFJ8WP84b7nxi8NsW7gfKkGHZ2JzCK
ZMXtjlG+3jufduzY9x7ty9K/H0JKFQ==
=822k
-----END PGP SIGNATURE-----

--r5w4mnqlYXtZN4A4FkN00JaDkYYDFkqDa--
