Received: (qmail 9814 invoked by uid 550); 21 Nov 2022 18:35:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1074 invoked from network); 21 Nov 2022 18:12:45 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: ANoB5pnLsvLGjJe4XyBkJhRlA126+p/70mvWnjC/0BlpHyUJmE9KDDxW
	Rt6TaAYK9uwJuaImX4YpwkojbDame34F7Hf/IQ==
X-Google-Smtp-Source: AA0mqf4/pfu/LCM+CP3V3Lmbwr37WS3ljWg67PDSgJu/E3grkb3kcYbskqExtr3p9sYURC4rx8TNprFaejY5ipq/OnE=
X-Received: by 2002:a63:1d03:0:b0:46f:abcc:a793 with SMTP id
 d3-20020a631d03000000b0046fabcca793mr19471153pgd.234.1669054350643; Mon, 21
 Nov 2022 10:12:30 -0800 (PST)
MIME-Version: 1.0
From: David Smiley <dsmiley@apache.org>
Date: Mon, 21 Nov 2022 13:12:19 -0500
X-Gmail-Original-Message-ID: <CABEwPvGVFWS8gNrc4txih+axEh_zwds_aXYGn+PB8xkcABTWvA@mail.gmail.com>
Message-ID: <CABEwPvGVFWS8gNrc4txih+axEh_zwds_aXYGn+PB8xkcABTWvA@mail.gmail.com>
To: security <security@apache.org>, oss-security@lists.openwall.com, 
	Andreas Hubold <andreas.hubold@coremedia.com>, users@solr.apache.org, dev@solr.apache.org
Content-Type: multipart/alternative; boundary="000000000000ae5a8b05edfefff9"
Subject: [oss-security] Apache Solr is vulnerable to CVE-2022-39135 via /sql handler

--000000000000ae5a8b05edfefff9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Vendor:

  The Apache Software Foundation


Versions Affected:

  Solr 6.5 to 8.11.2

  Solr 9.0


Description:

  Apache Calcite has a vulnerability, CVE-2022-39135, that is exploitable
in Apache Solr in SolrCloud mode.  If an untrusted user can supply SQL
queries to Solr=E2=80=99s =E2=80=9C/sql=E2=80=9D handler (even indirectly v=
ia proxies / other
apps), then the user could perform an XML External Entity (XXE) attack.  Th=
is
might have been exposed by some deployers of Solr in order for internal
analysts to use JDBC based tooling, but would have unlikely been granted to
wider audiences.


Impact:

  An XXE attack may lead to the disclosure of confidential data, denial of
service, server side request forgery (SSRF), port scanning from the Solr
node, and other system impacts.


Mitigation:

  Most Solr installations don=E2=80=99t make use of the SQL functionality. =
 For
such users, the standard Solr security advice of using a firewall should be
adequate.  Nonetheless, the functionality can be disabled.  As of Solr 9,
it has been modularized and thus became opt-in, so nothing is needed for
Solr 9 users that don=E2=80=99t use it.  Users *not* using SolrCloud can=E2=
=80=99t use the
functionality at all.  For other users that wish to disable it, you must
register a request handler that masks the underlying functionality in
solrconfig.xml like so:

  <requestHandler name=3D"/sql" class=3D"solr.NotFoundRequestHandler"/>


  Users needing this SQL functionality are forced to upgrade to Solr 9.1.
If Solr 8.11.3 is released, then it will be an option as well.  Simply
replacing Calcite and other JAR files may mostly work but could fail
depending on the particulars of the query.  Users interested in this or in
patching their own versions of Solr should examine SOLR-16421 for a source
patch.


Credit:

  Andreas Hubold at CoreMedia GmbH


References:

https://nvd.nist.gov/vuln/detail/CVE-2022-39135

https://issues.apache.org/jira/browse/SOLR-16421

--000000000000ae5a8b05edfefff9--
