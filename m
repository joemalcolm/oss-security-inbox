X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1745" "Sunday" "8" "April" "2018" "20:35:18" "+0200" "Uwe Schindler" "uschindler@apache.org" "<000001d3cf68$5ac69af0$1053d0d0$@apache.org>" "55" "[oss-security] [SECURITY] CVE-2018-1308: XXE attack through Apache Solr's DIH's dataConfig request parameter" nil nil nil "4" "2018040818:35:18" "[oss-security] [SECURITY] CVE-2018-1308: XXE attack through Apache Solr's DIH's dataConfig request parameter" (number mark "U       uschindler@a Apr  8   55/1745  " thread-indent "\"[oss-security] [SECURITY] CVE-2018-1308: XXE attack through Apache Solr's DIH's dataConfig request parameter\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30403 invoked by uid 550); 8 Apr 2018 19:09:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12132 invoked from network); 8 Apr 2018 18:35:37 -0000
From: "Uwe Schindler" <uschindler@apache.org>
To: <announce@apache.org>,
	<general@lucene.apache.org>,
	<dev@lucene.apache.org>,
	<solr-user@lucene.apache.org>
Cc: <iemxny@hotmail.com>,
	"'security'" <security@apache.org>,
	<oss-security@lists.openwall.com>
Date: Sun, 8 Apr 2018 20:35:18 +0200
Message-ID: <000001d3cf68$5ac69af0$1053d0d0$@apache.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdPPY8jq6okC7rdzSF2E85d3JdrugA==
Content-Language: de
Subject: [oss-security] [SECURITY] CVE-2018-1308: XXE attack through Apache Solr's DIH's dataConfig request parameter

CVE-2018-1308: XXE attack through Apache Solr's DIH's dataConfig request pa=
rameter

Severity: Major

Vendor:
The Apache Software Foundation

Versions Affected:
Solr 1.2 to 6.6.2
Solr 7.0.0 to 7.2.1

Description:
The details of this vulnerability were reported to the Apache Security mail=
ing list.=20

This vulnerability relates to an XML external entity expansion (XXE) in the
`&dataConfig=3D<inlinexml>` parameter of Solr's DataImportHandler. It can be
used as XXE using file/ftp/http protocols in order to read arbitrary local
files from the Solr server or the internal network. See [1] for more detail=
s.

Mitigation:
Users are advised to upgrade to either Solr 6.6.3 or Solr 7.3.0 releases bo=
th
of which address the vulnerability. Once upgrade is complete, no other steps
are required. Those releases disable external entities in anonymous XML fil=
es
passed through this request parameter.=20

If users are unable to upgrade to Solr 6.6.3 or Solr 7.3.0 then they are
advised to disable data import handler in their solrconfig.xml file and
restart their Solr instances. Alternatively, if Solr instances are only used
locally without access to public internet, the vulnerability cannot be used
directly, so it may not be required to update, and instead reverse proxies =
or
Solr client applications should be guarded to not allow end users to inject
`dataConfig` request parameters. Please refer to [2] on how to correctly
secure Solr servers.

Credit:
=E9=BA=A6 =E9=A6=99=E6=B5=93=E9=83=81

References:
[1] https://issues.apache.org/jira/browse/SOLR-11971
[2] https://wiki.apache.org/solr/SolrSecurity

-----
Uwe Schindler
uschindler@apache.org=20
ASF Member, Apache Lucene PMC / Committer
Bremen, Germany
http://lucene.apache.org/


