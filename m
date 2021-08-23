X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["746" "Monday" "23" "August" "2021" "09:35:34" "+0000" "Joe Orton" "jorton@apache.org" nil "20" "[oss-security] CVE-2021-35940: Apache Portable Runtime (APR): Regression of CVE-2017-12613 " nil nil nil "8" nil nil (number mark "U       jorton@apach Aug 23   20/746   " thread-indent "\"[oss-security] CVE-2021-35940: Apache Portable Runtime (APR): Regression of CVE-2017-12613 \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-35940: Apache Portable Runtime (APR): Regression of CVE-2017-12613 " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9574 invoked by uid 550); 23 Aug 2021 10:25:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15680 invoked from network); 23 Aug 2021 09:36:28 -0000
Content-Type: text/plain; charset=utf-8
From: Joe Orton <jorton@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <798669d5-4ba0-a023-3002-d351f72ced5f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 23 Aug 2021 09:35:34 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-35940: Apache Portable Runtime (APR): Regression of
 CVE-2017-12613 

Description:

An out-of-bounds array read in the apr_time_exp*() functions was fixed in t=
he Apache Portable Runtime 1.6.3 release (CVE-2017-12613).  The fix for thi=
s issue was not carried forward to the APR 1.7.x branch, and hence version =
1.7.0 regressed compared to 1.6.3 and is vulnerable to the same issue.

Credit:

The Apache Portable Runtime project would like to thank Iveta Cesalova (Red=
 Hat) for reporting this issue.

References:

http://svn.apache.org/viewvc?view=3Drevision&revision=3D1891198=20
http://mail-archives.apache.org/mod_mbox/www-announce/201710.mbox/%3CCACsi2=
51B8UaLvM-rrH9fv57-zWi0zhyF3275_jPg1a9VEVVoxw@mail.gmail.com%3E
https://dist.apache.org/repos/dist/release/apr/patches/apr-1.7.0-CVE-2021-3=
5940.patch

