X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3981" "Thursday" "1" "October" "2020" "08:21:46" "-0700" "Andy LoPresto" "alopresto@apache.org" "<E492E0E3-8DFC-42F6-8CC4-93A914082B35@apache.org>" "110" "[oss-security] [ANNOUNCE] Apache NiFi CVE-2020-9486, CVE-2020-9487, CVE-2020-9491, CVE-2020-13940" nil nil nil "10" "2020100115:21:46" "[oss-security] [ANNOUNCE] Apache NiFi CVE-2020-9486, CVE-2020-9487, CVE-2020-9491, CVE-2020-13940" (number mark "U       alopresto@ap Oct  1  110/3981  " thread-indent "\"[oss-security] [ANNOUNCE] Apache NiFi CVE-2020-9486, CVE-2020-9487, CVE-2020-9491, CVE-2020-13940\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [ANNOUNCE] Apache NiFi CVE-2020-9486, CVE-2020-9487, CVE-2020-9491, CVE-2020-13940" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23685 invoked by uid 550); 1 Oct 2020 16:23:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26508 invoked from network); 1 Oct 2020 15:22:01 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:reply-to:mime-version:subject:message-id
         :date:to;
        bh=8VrMigHuLIls1AVa2ejCcD/Xf0LwRI17oJHohD75BFM=;
        b=fGJY5Kpz4H/O83lXENts9cTI510xYGAkaZppmvvWmODni3soqp2D5ER9GAjUE20GW2
         KfCQOx5uRBH/WSUUjo4t4w+FwWhSxzE/h8s3qeDYv1MKK8v+32hPt3O6nY9eQcd3YCv7
         bb9BxfXgvLdNY79JRU00opIA/IngX/4WTGJQjIlze3gGtJ5hxPjXc4OhU705On/XWKTY
         PzguEZmItvCaTyd/A6KcYaFQ8CQ/Gu+N4t6M9/KuNv0nr2g4C/xr+IkIRP570D4Ox0x6
         Xu47f/hSlgDmdw0tdT09ZfqVRz4RlB0Ku04iMxU5+Rs0zCBnHCMmjBA4+Qsuogls2T5X
         jH4A==
X-Gm-Message-State: AOAM530z0irEIuNmSXmcaNsLsXwRM7F4E59g6uT65cgV4fBikDBKl0kD
	ZAW8R50nzwugihqSnUG3rH8=
X-Google-Smtp-Source: ABdhPJyINCh6qvIuaIS4fOlzP1107Vr0zQ5pwJXCBFJy9ARddZvRRfh7OkozgTB4T/zI+kqsHIQAog==
X-Received: by 2002:a9d:69ce:: with SMTP id v14mr5289914oto.11.1601565709260;
        Thu, 01 Oct 2020 08:21:49 -0700 (PDT)
From: Andy LoPresto <alopresto@apache.org>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_D540FD4E-ABA2-48D9-BA9C-39E90BE2C5B1"
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.1\))
Message-Id: <E492E0E3-8DFC-42F6-8CC4-93A914082B35@apache.org>
Date: Thu, 1 Oct 2020 08:21:46 -0700
To: security@nifi.apache.org,
 dev@nifi.apache.org,
 users@nifi.apache.org,
 oss-security@lists.openwall.com,
 announce@apache.org
X-Mailer: Apple Mail (2.3608.120.23.2.1)
Subject: [oss-security] [ANNOUNCE] Apache NiFi CVE-2020-9486, CVE-2020-9487, CVE-2020-9491,
 CVE-2020-13940

--Apple-Mail=_D540FD4E-ABA2-48D9-BA9C-39E90BE2C5B1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Apache NiFi PMC would like to announce the discovery and resolution of CVE-=
2020-9486, CVE-2020-9487, CVE-2020-9491, and CVE-2020-13940. These issues h=
ave been resolved and a new version of the Apache NiFi project was released=
 in accordance with the Apache Release Process.=20

Apache NiFi is an easy to use, powerful, and reliable system to process and=
 distribute data. It supports powerful and scalable directed graphs of data=
 routing, transformation, and system mediation logic.

Fixed in Apache NiFi 1.12.0 (Released: August 18, 2020)



CVE-2020-9486: Apache NiFi information disclosure in logs

Severity: Important

Versions Affected: Apache NiFi 1.10.0 - 1.11.4

Description: The NiFi stateless execution engine produced log output which =
included sensitive property values. When a flow was triggered, the flow def=
inition configuration JSON was printed, potentially containing sensitive va=
lues in plaintext.

Mitigation: Implemented Argon2 secure hashing to provide a deterministic lo=
ggable value which does not reveal the sensitive value. Users running any p=
revious NiFi release should upgrade to the latest release.

Credit: This issue was discovered by Andy LoPresto and Pierre Villard.



CVE-2020-9487: Apache NiFi denial of service

Severity: Important

Versions Affected: Apache NiFi 1.0.0 - 1.11.4

Description: The NiFi download token (one-time password) mechanism used a f=
ixed cache size and did not authenticate a request to create a download tok=
en, only when attempting to use the token to access the content. An unauthe=
nticated user could repeatedly request download tokens, preventing legitima=
te users from requesting download tokens.

Mitigation: Disabled anonymous authentication, implemented a multi-indexed =
cache, and limited token creation requests to one concurrent request per us=
er. Users running any previous NiFi release should upgrade to the latest re=
lease.

Credit: This issue was discovered by Dennis Detering (IT Security Consultan=
t at Spike Reply).



CVE-2020-9491: Apache NiFi use of weak TLS protocols

Severity: Critical

Versions Affected: Apache NiFi 1.2.0 - 1.11.4

Description: The NiFi UI and API were protected by mandating TLS v1.2, as w=
ell as listening connections established by processors like ListenHTTP, Han=
dleHttpRequest, etc. However intracluster communication such as cluster req=
uest replication, Site-to-Site, and load balanced queues continued to suppo=
rt TLS v1.0 or v1.1.

Mitigation: Refactored disparate internal SSL and TLS code, reducing exposu=
re for extension and framework developers to low-level primitives. Added su=
pport for TLS v1.3 on supporting JVMs. Restricted all incoming TLS communic=
ations to TLS v1.2+. Users running any previous NiFi release should upgrade=
 to the latest release.

Credit: This issue was discovered by Juan Carlos Sequeiros and Andy LoPrest=
o.



CVE-2020-13940: Apache NiFi information disclosure by XXE

Severity: Low

Versions Affected: Apache NiFi 1.0.0 - 1.11.4

Description: The notification service manager and various policy authorizer=
 and user group provider objects allowed trusted administrators to inadvert=
ently configure a potentially malicious XML file. The XML file has the abil=
ity to make external calls to services (via XXE).

Mitigation: An XML validator was introduced to prevent malicious code from =
being parsed and executed. Users running any previous NiFi release should u=
pgrade to the latest release.

Credit: This issue was discovered by Matt Burgess and Andy LoPresto.

For more information: https://nifi.apache.org/security.html <https://nifi.a=
pache.org/security.html>

Andy LoPresto
alopresto@apache.org
alopresto.apache@gmail.com
He/Him
PGP Fingerprint: 70EC B3E5 98A6 5A3F D3C4  BACE 3C6E F65B 2F7D EF69


--Apple-Mail=_D540FD4E-ABA2-48D9-BA9C-39E90BE2C5B1--
