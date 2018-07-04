X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2589" "Wednesday" "4" "July" "2018" "18:56:35" "+0200" "Uwe Schindler" "uschindler@apache.org" "<0cdc01d413b7$f97ba580$ec72f080$@apache.org>" "65" "[oss-security] [SECURITY] CVE-2018-8026: XXE vulnerability due to Apache Solr configset upload (exchange rate provider config / enum field config / TIKA parsecontext)" nil nil nil "7" "2018070416:56:35" "[oss-security] [SECURITY] CVE-2018-8026: XXE vulnerability due to Apache Solr configset upload (exchange rate provider config / enum field config / TIKA parsecontext)" (number mark "U       uschindler@a Jul  4   65/2589  " thread-indent "\"[oss-security] [SECURITY] CVE-2018-8026: XXE vulnerability due to Apache Solr configset upload (exchange rate provider config / enum field config / TIKA parsecontext)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14125 invoked by uid 550); 4 Jul 2018 17:15:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23759 invoked from network); 4 Jul 2018 16:56:52 -0000
From: "Uwe Schindler" <uschindler@apache.org>
To: <announce@apache.org>,
	<general@lucene.apache.org>,
	<dev@lucene.apache.org>,
	<solr-user@lucene.apache.org>
Cc: "'security'" <security@apache.org>,
	<oss-security@lists.openwall.com>
Date: Wed, 4 Jul 2018 18:56:35 +0200
Message-ID: <0cdc01d413b7$f97ba580$ec72f080$@apache.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 16.0
Content-Language: de
Thread-Index: AdQTt7EH63+O1TMZSbOqqFPB4d9m8A==
Subject: [oss-security] [SECURITY] CVE-2018-8026: XXE vulnerability due to Apache Solr configset upload (exchange rate provider config / enum field config / TIKA parsecontext)

CVE-2018-8026: XXE vulnerability due to Apache Solr configset upload
(exchange rate provider config / enum field config / TIKA parsecontext)

Severity: High

Vendor:
The Apache Software Foundation

Versions Affected:
Solr 6.0.0 to 6.6.4
Solr 7.0.0 to 7.3.1

Description:
The details of this vulnerability were reported by mail to the Apache
security mailing list.
This vulnerability relates to an XML external entity expansion (XXE) in Solr
config files (currency.xml, enumsConfig.xml referred from schema.xml,
TIKA parsecontext config file). In addition, Xinclude functionality provided
in these config files is also affected in a similar way. The vulnerability =
can
be used as XXE using file/ftp/http protocols in order to read arbitrary
local files from the Solr server or the internal network. The manipulated
files can be uploaded as configsets using Solr's API, allowing to exploit
that vulnerability. See [1] for more details.

Mitigation:
Users are advised to upgrade to either Solr 6.6.5 or Solr 7.4.0 releases bo=
th
of which address the vulnerability. Once upgrade is complete, no other steps
are required. Those releases only allow external entities and Xincludes that
refer to local files / zookeeper resources below the Solr instance directory
(using Solr's ResourceLoader); usage of absolute URLs is denied. Keep in
mind, that external entities and XInclude are explicitly supported to better
structure config files in large installations. Before Solr 6 this was no
problem, as config files were not accessible through the APIs.

If users are unable to upgrade to Solr 6.6.5 or Solr 7.4.0 then they are
advised to make sure that Solr instances are only used locally without acce=
ss
to public internet, so the vulnerability cannot be exploited. In addition,
reverse proxies should be guarded to not allow end users to reach the
configset APIs. Please refer to [2] on how to correctly secure Solr servers.

Solr 5.x and earlier are not affected by this vulnerability; those versions
do not allow to upload configsets via the API. Nevertheless, users should
upgrade those versions as soon as possible, because there may be other ways
to inject config files through file upload functionality of the old web
interface. Those versions are no longer maintained, so no deep analysis was
done.

Credit:
Yuyang Xiao, Ishan Chattopadhyaya

References:
[1] https://issues.apache.org/jira/browse/SOLR-12450
[2] https://wiki.apache.org/solr/SolrSecurity

-----
Uwe Schindler
uschindler@apache.org=20
ASF Member, Apache Lucene PMC / Committer
Bremen, Germany
http://lucene.apache.org/


