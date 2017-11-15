X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1319" "Wednesday" "15" "November" "2017" "08:38:25" "+0000" "Andrea Cosentino" "ancosen1985@yahoo.com" "<1259095909.451943.1510735105798@mail.yahoo.com>" "43" "[oss-security] [SECURITY] New security advisory CVE-2017-12633 released for Apache Camel" nil nil nil "11" "2017111508:38:25" "[oss-security] [SECURITY] New security advisory CVE-2017-12633 released for Apache Camel" (number mark "U       ancosen1985@ Nov 15   43/1319  " thread-indent "\"[oss-security] [SECURITY] New security advisory CVE-2017-12633 released for Apache Camel\"\n") "<1259095909.451943.1510735105798.ref@mail.yahoo.com>" ("<1259095909.451943.1510735105798.ref@mail.yahoo.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13669 invoked by uid 550); 15 Nov 2017 13:07:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26401 invoked from network); 15 Nov 2017 08:38:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1510735127; bh=/ZxzvKcmsEsiaq3SSGyRvLBF163T15G1K8ygtFL2LsE=; h=Date:From:Reply-To:To:Subject:References:From:Subject; b=Lz18Zg+4130k3kRdqYjZEejmfWaQXj1Etm3virYuTr/hdn01n8T37Guc12gwBhO5B9LYSaploZ8xJMRwlQC9LaSPRdpW0y8KSOl/7eO1IcBvjC+TyLRILJ0G3+1/Cj2gTXVuKvDIFd3LkIUVvvqAu4uDObi/2cHb35bXKZPLfoI8bx08znBwhKI7PNI6rcnXstMpiUQuJkCmPSMNFMgwsCuQ5e59DpOXZMbazlJGTff3DhpE/yHtoqZCPHsDXq25YofHcTINgcEzEFXj0aRtPsqr5FsJF24IljllV7it42skOnuUCDBRbua7oQa3xRKruARKS8poVPP5AR+xvr1Hyg==
X-YMail-OSG: PaDMwY8VM1lvSNt.wpiWdwqbNHaCRVevsLlxWdAcVXd0V5o1u.KRh0TIV7SNZ8S
 OfVQpI1fJh_jIfHI_eCdUsZQbBMzmB2UV_6xIVdl8EX_MZfPOYI2Rkn40qCkqP1Jg1_O8rhCJ7ay
 47iwFRs.Np8ZgAxnORp0ADriU18xvO9A4KPDXaAl59sLP0or1dRJpQ6Ty3iUS_q1WkoZ0AOb6HIP
 1RBLOOIt1z6XkUNJgId24Tq2a5nLuezWekkSvjCDNonQ4IXdcQFGRSDo1klWHKFDsIGwJeoRoPEJ
 Hu5x4SSJLWJOesy33oDaKnq412IzBsq6XQnwiZ2mkwbT6923IsNUO8.OKIqJ5wf2_fAQ.hNLT1q5
 dXYmaSAltuCo3iN2jFnnpK5v2ORgzCAHBtRX4miUokj49CWJQMHBHenMMy1atRvJkiZw5o6_yjYT
 PvE14MgZMDIZoyOcanuWJ4J1fM5l4wQIsE5evZiRMjMJVQ_ti1Nt.5qtMK7ZPWSwW
Date: Wed, 15 Nov 2017 08:38:25 +0000 (UTC)
From: Andrea Cosentino <ancosen1985@yahoo.com>
To: Dev <dev@camel.apache.org>, Users <users@camel.apache.org>, 
	Security <security@apache.org>, 
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>, 
	Moritz Bechler <bechler@agno3.eu>
Message-ID: <1259095909.451943.1510735105798@mail.yahoo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
References: <1259095909.451943.1510735105798.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.10942 YMailNorrin Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.75 Safari/537.36
Subject: [oss-security] [SECURITY] New security advisory CVE-2017-12633 released for Apache
 Camel

A new security advisory has been released for Apache Camel, that is fixed in
the recent 2.19.4 and 2.20.1 releases:

CVE-2017-12633: Apache Camel's Hessian unmarshalling operation is vulnerabl=
e to Remote Code Execution attacks

The full text of the advisory is the following:

CVE-2017-12633: Apache Camel's Hessian unmarshalling operation is vulnerabl=
e to Remote Code Execution attacks

Severity: MEDIUM

Vendor: The Apache Software Foundation

Versions Affected: Camel 2.19.0 to 2.19.3 and Camel 2.20.0
The unsupported Camel 2.x (2.18 and earlier) versions may be also affected.

Description: Apache Camel's camel-hessian component is vulnerable to Java o=
bject
de-serialisation vulnerability. De-serializing untrusted data can lead to s=
ecurity flaws.

Mitigation: 2.19.x users should upgrade to 2.19.4, 2.20.0 users should upgr=
ade to 2.20.1.=C2=A0

The JIRA ticket: https://issues.apache.org/jira/browse/CAMEL-11923
refers to the various commits that resovoled the issue, and have more detai=
ls.

Credit: This issue was discovered by Moritz Bechler from AgNO3 GmbH & Co.

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
