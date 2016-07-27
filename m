X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["826" "Wednesday" "27" "July" "2016" "14:35:03" "+0200" "Daniel Beck" "ml@beckweb.net" "<6EB473C2-2849-4E3E-99B0-BAF01AFD8718@beckweb.net>" "28" "[oss-security] CVE request: Jenkins plugin 'Cucumber Reports' 1.3.0 to 2.5.1 disabled XSS protection mechanism" nil nil nil "7" "2016072712:35:03" "[oss-security] CVE request: Jenkins plugin 'Cucumber Reports' 1.3.0 to 2.5.1 disabled XSS protection mechanism" (number mark "U       ml@beckweb.n Jul 27   28/826   " thread-indent "\"[oss-security] CVE request: Jenkins plugin 'Cucumber Reports' 1.3.0 to 2.5.1 disabled XSS protection mechanism\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13721 invoked by uid 550); 27 Jul 2016 12:35:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13703 invoked from network); 27 Jul 2016 12:35:15 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Message-Id: <6EB473C2-2849-4E3E-99B0-BAF01AFD8718@beckweb.net>
Date: Wed, 27 Jul 2016 14:35:03 +0200
To: oss-security@lists.openwall.com
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1469622915;410a47d9;
Subject: [oss-security] CVE request: Jenkins plugin 'Cucumber Reports' 1.3.0 to 2.5.1 disabled XSS protection mechanism

Hello,

Please assign a CVE to this issue:

Cucumber Reports Plugin disables Content-Security-Policy for archived and w=
orkspace files

Jenkins 1.641 and 1.625.3 introduced Content-Security-Policy HTTP headers a=
s protection against Cross-Site Scripting attacks using workspace files and=
 archived artifacts served using DirectoryBrowserSupport (SECURITY-95). The=
 Cucumber Reports Plugin disabled this XSS protection until Jenkins was res=
tarted whenever a Cucumber Report was viewed by any user to work around the=
 Content-Security-Policy limitations.

Affected versions
Cucumber Reports Plugin 1.3.0 to 2.5.1 (inclusive).

Fix
Users of Cucumber Reports Plugin should update it to version 2.6.0 or newer.

Advisory:
https://wiki.jenkins-ci.org/display/SECURITY/Jenkins+Security+Advisory+2016=
-07-27

Thanks!

Daniel

