X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1914" "Tuesday" "31" "October" "2017" "12:44:38" "-0700" "Jesus Camacho Rodriguez" "jcamacho@apache.org" "<3791103E-80D5-4E75-AF23-6F8ED54DDEBE@apache.org>" "59" "[oss-security] [CVE-2017-12625] Apache Hive information disclosure vulnerability for column masking" nil nil nil "10" "2017103119:44:38" "[oss-security] [CVE-2017-12625] Apache Hive information disclosure vulnerability for column masking" (number mark "U       jcamacho@apa Oct 31   59/1914  " thread-indent "\"[oss-security] [CVE-2017-12625] Apache Hive information disclosure vulnerability for column masking\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23953 invoked by uid 550); 31 Oct 2017 19:45:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23598 invoked from network); 31 Oct 2017 19:44:55 -0000
User-Agent: Microsoft-MacOutlook/0.0.0.151105
Date: Tue, 31 Oct 2017 12:44:38 -0700
From: Jesus Camacho Rodriguez <jcamacho@apache.org>
To: "user@hive.apache.org" <user@hive.apache.org>,
	<dev@hive.apache.org>,
	"security@hive.apache.org" <security@hive.apache.org>,
	<announce@apache.org>,
	<oss-security@lists.openwall.com>
Message-ID: <3791103E-80D5-4E75-AF23-6F8ED54DDEBE@apache.org>
Thread-Topic: [CVE-2017-12625] Apache Hive information disclosure
 vulnerability for column masking
Mime-version: 1.0
Content-type: text/plain;
	charset="UTF-8"
Content-transfer-encoding: quoted-printable
Subject: [oss-security] [CVE-2017-12625] Apache Hive information disclosure vulnerability for
 column masking

CVE-2017-12625: Apache Hive information disclosure vulnerability for column=
 masking

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected: Hive 2.1.0 to 2.3.0

Description:
Hive exposes an interface through which masking policies can be defined on =
tables or
views, e.g., using Apache Ranger. When a view is created over a given table=
, the
policy enforcement does not happen correctly on the table for masked column=
s.

Mitigation:
2.3.0 users should upgrade to 2.3.1
2.2.0 users should upgrade to 2.3.1, obtain the latest source from git for =
branch-2.2
or apply this patch which will be included from 2.2.1
https://git1-us-west.apache.org/repos/asf?p=3Dhive.git;a=3Dcommit;h=3D0e795=
debddf261b0ac6ace90e2d774f9a99b7f4b
2.1.x users should upgrade to 2.3.1, obtain the latest source from git for =
branch-2.1
or apply this patch which will be included from 2.1.2
https://git1-us-west.apache.org/repos/asf?p=3Dhive.git;a=3Dcommit;h=3D6db9f=
d6e43f6eef3c9d1ca8e324b2edaa54fb0d3

To mitigate this vulnerability until Hive is upgraded to a new version, the=
re are two
possible options. These steps need to be done manually in Ranger / Hive.
1) Restrict users from creating views on tables with column masking rules d=
efined. For
this in Ranger Hive Policy:
 - Users should not have SELECT permission for those Table columns with mas=
king rules
defined.
 - Give SELECT permission only for those columns without masking rules defi=
ned.
2) Review the Hive Column Masking Policies maintained in Ranger for the tab=
les. Then
check in Hive if views that read those tables have been defined.
If present, either change the view definition so those columns are not sele=
cted or
directly drop those views.

Credit:
This issue was reported by =EF=BB=BFSuja Santhosh of Hortonworks.


If you have any question, please reach out to us in the Hive dev list.

Regards,

The Apache Hive Team


