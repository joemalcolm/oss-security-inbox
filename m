X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1115" "Saturday" "18" "December" "2021" "16:03:14" "+0000" "=?UTF-8?B?SmFuIEjDuHlkYWhs?=" "janhoy@apache.org" nil "36" "[oss-security] CVE-2021-44548: Apache Solr information disclosure vulnerability through DataImportHandler " nil nil nil "12" nil nil (number mark "U       janhoy@apach Dec 18   36/1115  " thread-indent "\"[oss-security] CVE-2021-44548: Apache Solr information disclosure vulnerability through DataImportHandler \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-44548: Apache Solr information disclosure vulnerability through DataImportHandler " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18036 invoked by uid 550); 18 Dec 2021 16:08:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16131 invoked from network); 18 Dec 2021 16:04:02 -0000
Content-Type: text/plain; charset=utf-8
From: =?UTF-8?Q?Jan_H=C3=B8ydahl?= <janhoy@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <1a42c865-2a9b-a8c1-a422-140d180d76f7@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 18 Dec 2021 16:03:14 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-44548: Apache Solr information disclosure vulnerability
 through DataImportHandler 

Severity: moderate

Description:

An Improper Input Validation vulnerability in DataImportHandler of Apache S=
olr allows an attacker to provide a Windows UNC path resulting in an SMB ne=
twork call being made from the Solr host to another host on the network. If=
 the attacker has wider access to the network, this may lead to SMB attacks=
, which may result in:

* The exfiltration of sensitive data such as OS user hashes (NTLM/LM hashes=
),
* In case of misconfigured systems, SMB Relay Attacks which can lead to use=
r impersonation on SMB Shares or, in a worse-case scenario, Remote Code Exe=
cution

This issue affects all Apache Solr versions prior to 8.11.1. This issue onl=
y affects Windows.

This issue is being tracked as SOLR-15826

Mitigation:

Upgrade to Solr 8.11.1, and/or ensure only trusted clients can make request=
s to Solr's DataImport handler.

Credit:

Apache Solr would like to thank LaiHan of Nsfocus security team for reporti=
ng the issue

References:

https://solr.apache.org/security.html#cve-2021-44548-apache-solr-informatio=
n-disclosure-vulnerability-through-dataimporthandler

