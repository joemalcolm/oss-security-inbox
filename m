X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2356" "Monday" "21" "May" "2018" "13:50:07" "+0200" "Uwe Schindler" "uschindler@apache.org" "<08a801d3f0f9$df46d300$9dd47900$@apache.org>" "59" "[oss-security] [SECURITY] CVE-2018-8010: XXE vulnerability due to Apache Solr configset upload" nil nil nil "5" "2018052111:50:07" "[oss-security] [SECURITY] CVE-2018-8010: XXE vulnerability due to Apache Solr configset upload" (number mark "U       uschindler@a May 21   59/2356  " thread-indent "\"[oss-security] [SECURITY] CVE-2018-8010: XXE vulnerability due to Apache Solr configset upload\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1710 invoked by uid 550); 21 May 2018 12:04:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18138 invoked from network); 21 May 2018 11:50:26 -0000
From: "Uwe Schindler" <uschindler@apache.org>
To: <announce@apache.org>,
	<general@lucene.apache.org>,
	<dev@lucene.apache.org>,
	<solr-user@lucene.apache.org>
Cc: "'security'" <security@apache.org>,
	<oss-security@lists.openwall.com>
Date: Mon, 21 May 2018 13:50:07 +0200
Message-ID: <08a801d3f0f9$df46d300$9dd47900$@apache.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdPw8PCd/wELt7uNSGilKqm8HcW9wA==
Content-Language: de
Subject: [oss-security] [SECURITY] CVE-2018-8010: XXE vulnerability due to Apache Solr configset upload

CVE-2018-8010: XXE vulnerability due to Apache Solr configset upload

Severity: High

Vendor:
The Apache Software Foundation

Versions Affected:
Solr 6.0.0 to 6.6.3
Solr 7.0.0 to 7.3.0

Description:
The details of this vulnerability were reported internally by one of Apache
Solr's committers.
This vulnerability relates to an XML external entity expansion (XXE) in Solr
config files (solrconfig.xml, schema.xml, managed-schema). In addition,
Xinclude functionality provided in these config files is also affected in a
similar way. The vulnerability can be used as XXE using file/ftp/http
protocols in order to read arbitrary local files from the Solr server or the
internal network. See [1] for more details.

Mitigation:
Users are advised to upgrade to either Solr 6.6.4 or Solr 7.3.1 releases both
of which address the vulnerability. Once upgrade is complete, no other steps
are required. Those releases only allow external entities and Xincludes that
refer to local files / zookeeper resources below the Solr instance directory
(using Solr's ResourceLoader); usage of absolute URLs is denied. Keep in
mind, that external entities and XInclude are explicitly supported to better
structure config files in large installations. Before Solr 6 this was no
problem, as config files were not accessible through the APIs.

If users are unable to upgrade to Solr 6.6.4 or Solr 7.3.1 then they are
advised to make sure that Solr instances are only used locally without access
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
Ananthesh, Ishan Chattopadhyaya

References:
[1] https://issues.apache.org/jira/browse/SOLR-12316
[2] https://wiki.apache.org/solr/SolrSecurity

-----
Uwe Schindler
uschindler@apache.org 
ASF Member, Apache Lucene PMC / Committer
Bremen, Germany
http://lucene.apache.org/


