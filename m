X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1040" "Wednesday" "10" "April" "2019" "19:03:42" "+0100" "Ash Berlin-Taylor" "ash@apache.org" nil "37" nil nil nil nil "4" nil nil (number mark "U       ash@apache.o Apr 10   37/1040  " thread-indent "\"[oss-security] CVE-2019-0216, CVE-2019-0229 vulnerabilities affecting Apache Airflow <= 1.10.2 webserver component\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-0216, CVE-2019-0229 vulnerabilities affecting Apache Airflow <= 1.10.2 webserver component" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20192 invoked by uid 550); 10 Apr 2019 18:08:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15489 invoked from network); 10 Apr 2019 18:03:57 -0000
From: Ash Berlin-Taylor <ash@apache.org>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Wed, 10 Apr 2019 19:03:42 +0100
Cc: Apache Security Team <security@apache.org>
To: dev@airflow.apache.org,
 oss-security@lists.openwall.com
Message-Id: <ADC20BCD-A200-4808-B6D3-6A7C339ED840@apache.org>
X-Mailer: Apple Mail (2.3273)
Subject: [oss-security] CVE-2019-0216, CVE-2019-0229 vulnerabilities affecting  Apache
 Airflow <= 1.10.2  webserver component

There were two vulnerabilities fixed in release of Apache Airflow 1.10.3 af=
fecting the `airflow webserver` service:


CVE-2019-0216: Stored XSS

  Versions Affected: <=3D 1.10.2

  Description:
  A malicious admin user could edit the state of objects in the  Airflow
  metadata database to execute arbitrary javascript on certain page views.

  Credit:
  Thanks to Nicolas Heiniger ( of photochrome.ch), Matt S, and Francesco
  Soncina (of ABN AMRO), and "Media Rest" for all independently reporting
  this vulnerability.

CVE-2019-0229: Improper CSRF validation against various endpoints
=20=20
  Versions Affected: <=3D 1.10.2

  Description:
  A number of HTTP endpoints in the Airflow webserver (both RBAC and classi=
c)
  did not have adequate protection and were vulnerable to cross-site request
  forgery attacks.

  Credit:
  Thanks to Erik Mulder at bol.com for reporting this.


(CVE-2019-0216 is similar to CVE-2018-20244 form 1.10.2. We missed some cas=
es of this in the previous fix)

Thanks,
Ash
Apache Airflow PMC member=
