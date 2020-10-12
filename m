X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1557" "Monday" "12" "October" "2020" "11:39:50" "-0700" "Tomas Fernandez Lobbe" "tflobbe@apache.org" "<CAECwjAVeHJV6_L+S-eTkw66RS+vMGngU0ztVgmee6zfJbT7ETQ@mail.gmail.com>" "46" "[oss-security] [CVE-2020-13957] The checks added to unauthenticated configset uploads in Apache Solr can be circumvented" nil nil nil "10" "2020101218:39:50" "[oss-security] [CVE-2020-13957] The checks added to unauthenticated configset uploads in Apache Solr can be circumvented" (number mark "U       tflobbe@apac Oct 12   46/1557  " thread-indent "\"[oss-security] [CVE-2020-13957] The checks added to unauthenticated configset uploads in Apache Solr can be circumvented\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-13957] The checks added to unauthenticated configset uploads in Apache Solr can be circumvented" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22401 invoked by uid 550); 12 Oct 2020 19:05:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19490 invoked from network); 12 Oct 2020 18:40:14 -0000
X-Gm-Message-State: AOAM5307Msz767b01HwpRf5tfeJmF8sC3JgxX3XgezOib2QC+r/SlXGm
	jiEkZpnXet1Y4/Dsg5hyqCbxfcJwEd8nPErHKag=
X-Google-Smtp-Source: ABdhPJy0vEKzDysIaMKGQtR7i2kUxYpnJvKqoM8z03M/o4ciL/rYo0lBfHCExOysl/VF+a0AjkFB4oToA9O9vZpQHgU=
X-Received: by 2002:a05:6402:21e9:: with SMTP id ce9mr16047624edb.125.1602528001541;
 Mon, 12 Oct 2020 11:40:01 -0700 (PDT)
MIME-Version: 1.0
From: Tomas Fernandez Lobbe <tflobbe@apache.org>
Date: Mon, 12 Oct 2020 11:39:50 -0700
X-Gmail-Original-Message-ID: <CAECwjAVeHJV6_L+S-eTkw66RS+vMGngU0ztVgmee6zfJbT7ETQ@mail.gmail.com>
Message-ID: <CAECwjAVeHJV6_L+S-eTkw66RS+vMGngU0ztVgmee6zfJbT7ETQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: private@lucene.apache.org
Content-Type: multipart/alternative; boundary="000000000000464a2d05b17da0f4"
Subject: [oss-security] [CVE-2020-13957] The checks added to unauthenticated configset
 uploads in Apache Solr can be circumvented

--000000000000464a2d05b17da0f4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Severity: High

Vendor: The Apache Software Foundation

Versions Affected:
6.6.0 to 6.6.5
7.0.0 to 7.7.3
8.0.0 to 8.6.2

Description:
Solr prevents some features considered dangerous (which could be used for
remote code execution) to be configured in a ConfigSet that's uploaded via
API without authentication/authorization. The checks in place to prevent
such features can be circumvented by using a combination of UPLOAD/CREATE
actions.

Mitigation:
Any of the following are enough to prevent this vulnerability:
* Disable UPLOAD command in ConfigSets API if not used by setting the
system property: "configset.upload.enabled" to "false" [1]
* Use Authentication/Authorization and make sure unknown requests aren't
allowed [2]
* Upgrade to Solr 8.6.3 or greater.
* If upgrading is not an option, consider applying the patch in SOLR-14663
([3])
* No Solr API, including the Admin UI, is designed to be exposed to
non-trusted parties. Tune your firewall so that only trusted computers and
people are allowed access

Credit:
Tom=C3=A1s Fern=C3=A1ndez L=C3=B6bbe, Andr=C3=A1s Salamon

References:
[1] https://lucene.apache.org/solr/guide/8_6/configsets-api.html
[2]
https://lucene.apache.org/solr/guide/8_6/authentication-and-authorization-p=
lugins.html
[3] https://issues.apache.org/jira/browse/SOLR-14663
[4] https://issues.apache.org/jira/browse/SOLR-14925
[5] https://wiki.apache.org/solr/SolrSecurity

--000000000000464a2d05b17da0f4--
