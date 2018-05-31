X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1366" "Thursday" "31" "May" "2018" "18:05:19" "+0200" "Stefan Kanthak" "stefan.kanthak@nexgo.de" "<77B308CE34E747C3AE00239F60DBAEE4@W340>" "40" "[oss-security] CVE request: rufus" "^Cc:" nil nil "5" "2018053116:05:19" "[oss-security] CVE request: rufus" (number mark "        stefan.kanth May 31   40/1366  " thread-indent "\"[oss-security] CVE request: rufus\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21960 invoked by uid 550); 31 May 2018 16:24:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7848 invoked from network); 31 May 2018 16:09:21 -0000
Message-ID: <77B308CE34E747C3AE00239F60DBAEE4@W340>
Organization: Me, myself & IT
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.5931
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.7474
X-VADE-STATUS: LEGIT
Cc: <pete@akeo.ie>
Date: Thu, 31 May 2018 18:05:19 +0200
From: "Stefan Kanthak" <stefan.kanthak@nexgo.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: rufus
To: <oss-security@lists.openwall.com>

Hi @ll,

like its predecessors, the recently (2018-05-29) published version
3.0 of "Rufus" (<https://rufus.akeo.ie/downloads/rufus-3.0.exe> and
<https://rufus.akeo.ie/downloads/rufus-3.0p.exe>) is riddled with
bloody beginners errors, which allow arbitrary code execution WITH
escalation of privilege.

Vulnerability #1
~~~~~~~~~~~~~~~~

See <https://cwe.mitre.org/data/definitions/426.html>
and <https://cwe.mitre.org/data/definitions/427.html>
plus <https://capec.mitre.org/data/definitions/471.html>.

Additionally see Microsoft's developer guidance
<https://technet.microsoft.com/en-us/library/2269637.aspx>,
<https://msdn.microsoft.com/en-us/library/ff919712.aspx>,
<https://msdn.microsoft.com/en-us/library/ms682586.aspx> und
<http://blogs.technet.com/b/srd/archive/2014/05/13/load-library-safely.aspx>
for avoiding this bloody beginner's error.

Also see
<https://insights.sei.cmu.edu/cert/2008/09/carpet-bombing-and-directory-poisoning.html>
and
<http://blog.acrossecurity.com/2012/02/downloads-folder-binary-planting.html>
plus
<https://insights.sei.cmu.edu/cert/2016/06/bypassing-application-whitelisting.html>
for "prior art".


Vulnerability #2
~~~~~~~~~~~~~~~~

See <https://cwe.mitre.org/data/definitions/377.html>
and <https://cwe.mitre.org/data/definitions/379.html>
plus <https://capec.mitre.org/data/definitions/29.html>

stay tuned
Stefan Kanthak
