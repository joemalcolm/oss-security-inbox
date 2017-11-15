X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1384" "Wednesday" "15" "November" "2017" "08:34:51" "+0000" "Andrea Cosentino" "ancosen1985@yahoo.com" "<201650652.439065.1510734891717@mail.yahoo.com>" "42" "[oss-security] [SECURITY] New security advisory CVE-2017-12634 released for Apache Camel" nil nil nil "11" "2017111508:34:51" "[oss-security] [SECURITY] New security advisory CVE-2017-12634 released for Apache Camel" (number mark "U       ancosen1985@ Nov 15   42/1384  " thread-indent "\"[oss-security] [SECURITY] New security advisory CVE-2017-12634 released for Apache Camel\"\n") "<201650652.439065.1510734891717.ref@mail.yahoo.com>" ("<201650652.439065.1510734891717.ref@mail.yahoo.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12152 invoked by uid 550); 15 Nov 2017 13:07:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24129 invoked from network); 15 Nov 2017 08:35:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1510734892; bh=7JQJvR4wu0pZKIYg3SW0D4VyAwZWcF7o4ml0td6FS6I=; h=Date:From:Reply-To:To:Subject:References:From:Subject; b=fLs5xSMmIQKPhbH7pxdQhohkoj3MgdJpkvQQwMNlLGyfvoi77NuHXTeb0QZXMzjigDtzFwNWTIVX/K0OnvFOOZcV+FtrtJfY28+oRlklX7m7yPxjx2wOO+4wORW3qf7J3dfXmySH/qQWgp0tfzCN4laGwXk4RyDd9hU2t+KpIWbSOa2s11726Yj8FSd1uTeJV/FOWiGnkeEQlFIEV/fuofUIf6zMjQjGYQBP6fmjpYnHkWUNgVvunV3IFRuuUJ23DM67AepuT3g11Axbp9t1TATcF7/GVcXgmigLOuNCnZsBOKadj+rrjO6lRDorOo3YvNd5MuetVLwe6ecx53Z16Q==
X-YMail-OSG: 05deR7gVM1kMhyrObdBHk8VDoWU.5lO3LDx7xcr33GGkPQW3_PzDa1aI7xO7kEu
 nuDOhg8m5p4NuJY13iIOunYqzNrFYH_HsSV.3Zi4YjOH2RCkY2JiELWRoKx8BKxtTT_gzIVPtpE.
 8vXLAxbc7up9EURkyxdH._U6FUniDX5H0Iu4cBuVJ3azaGIURad_r._Olhj1WIQAZADGpIpMdQDp
 9f2_azuS3HdpOsmMusAasit.kAGJJQzvetrn8tT6i9lpgSZJkNbkyXTyhkN8VH30GeqQU5DlG2Nw
 Z.b2V9F0wz2bwiqdEnIRNQ2UboltjachXtxsFrxCZ54_v5DQAiDrNO.wU9uQV8hGUIB2bwBiBtRL
 ya22_.wuF_XLMVT.UgQi10GP50i9kJsbPbEa8dpTm6ffrYq7edcsIImBjL0ONsiKgcTbXWrcNcAf
 _zGj0hloVmbk6Z6OdHfFDLW0vf6oanfcwhBkj8fmiLVH6YfzvtDDJxAtSjhmUVNhmonyvq4J7K6R
 Y8cBWZ8hbnsyPVMXzs_tDrqlx
Date: Wed, 15 Nov 2017 08:34:51 +0000 (UTC)
From: Andrea Cosentino <ancosen1985@yahoo.com>
To: Dev <dev@camel.apache.org>, Users <users@camel.apache.org>, 
	Man Yue Mo <mmo@semmle.com>, 
	"security@apache.org" <security@apache.org>, 
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <201650652.439065.1510734891717@mail.yahoo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
References: <201650652.439065.1510734891717.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.10942 YMailNorrin Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.75 Safari/537.36
Subject: [oss-security] [SECURITY] New security advisory CVE-2017-12634 released for Apache
 Camel

A new security advisory has been released for Apache Camel, that is fixed in
the recent 2.19.4 and 2.20.1 releases:

 CVE-2017-12634: Apache Camel's Castor unmarshalling operation is vulnerabl=
eto Remote Code Execution attacks

The full text of the advisory is the following:

CVE-2017-12634: Apache Camel's Castor unmarshalling operation is vulnerable=
 to Remote Code Execution attacks=C2=A0

Severity: MEDIUM

Vendor: The Apache Software Foundation

Versions Affected: Camel 2.19.0 to 2.19.3 and Camel 2.20.0. The unsupported=
 Camel 2.x (2.18 and earlier) versions may be also affected.

Description: Apache Camel's camel-castor component is vulnerable to Java ob=
jectde-serialisation vulnerability. De-serializing untrusted data can lead =
to security flaws.

Mitigation: 2.19.x users should upgrade to 2.19.4, 2.20.0 users should upgr=
ade to 2.20.1.=C2=A0

The JIRA ticket: https://issues.apache.org/jira/browse/CAMEL-11929=C2=A0ref=
ers to the various commits that resovoled the issue, and have more details.

Credit: This issue was discovered by Man Yue Mo <mmo at semmle dot com> fro=
m Semmle/lgtm.com.On behalf of the Apache Camel PMC

On behalf of the Apache Camel PMC

--
Andrea Cosentino=C2=A0
----------------------------------
Apache Camel PMC Member
Apache Karaf Committer
Apache Servicemix PMC Member
Email: ancosen1985@yahoo.com
Twitter: @oscerd2
Github: oscerd
