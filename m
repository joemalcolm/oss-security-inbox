X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["603" "Wednesday" "30" "October" "2019" "09:06:24" "+0000" "Ash Berlin-Taylor" "ash@apache.org" "<BE259830-444F-44E4-B57E-25CD9D78476F@apache.org>" "19" "[oss-security] [CVE-2019-12417] Apache Airflow stored xss and local file disclosure vulnerability <= 1.10.5 " nil nil nil "10" "2019103009:06:24" "[oss-security] [CVE-2019-12417] Apache Airflow stored xss and local file disclosure vulnerability <= 1.10.5" (number mark "U       ash@apache.o Oct 30   19/603   " thread-indent "\"[oss-security] [CVE-2019-12417] Apache Airflow stored xss and local file disclosure vulnerability <= 1.10.5 \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-12417] Apache Airflow stored xss and local file disclosure vulnerability <= 1.10.5 " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11950 invoked by uid 550); 30 Oct 2019 09:15:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9357 invoked from network); 30 Oct 2019 09:06:39 -0000
From: Ash Berlin-Taylor <ash@apache.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Date: Wed, 30 Oct 2019 09:06:24 +0000
Message-Id: <BE259830-444F-44E4-B57E-25CD9D78476F@apache.org>
Cc: dev@airflow.apache.org,
 Apache Security Team <security@apache.org>,
 Pawel.Kurylowicz@securing.pl,
 Frantisek Uhrecky <frantisek.uhrecky@citadelo.com>,
 Marek Takac <marek.takac@citadelo.com>
To: users@airflow.apache.org,
 oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.104.11)
Subject: [oss-security] [CVE-2019-12417] Apache Airflow stored xss and local file disclosure
 vulnerability <= 1.10.5 

CVE-2019-12417: Stored XSS and Local File Disclosure vulnerability=20

  Versions Affected:
  <=3D 1.10.5

  Description:
    A malicious admin user could edit the state of objects in the Airflow m=
etadata database to execute arbitrary javascript on certain page views. Thi=
s also presented a Local File Disclosure vulnerability to any file readable=
 by the webserver process.

  Credit:
    Thanks to Pawel.Kurylowicz (of securing.pl), and Frantisek Uhrecky and =
Marek Takac (both of citadelo.com) for all independently reporting this vul=
nerability.=20
=20
Thanks,
Ash
Apache Airflow PMC member=
