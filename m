X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["304" "Tuesday" "1" "February" "2022" "09:09:24" "+0000" "Daniel Gaspar" "dpgaspar@apache.org" nil "14" "[oss-security] CVE-2021-44451: Apache Superset: API sensitive information leak " nil nil nil "2" nil nil (number mark "U       dpgaspar@apa Feb  1   14/304   " thread-indent "\"[oss-security] CVE-2021-44451: Apache Superset: API sensitive information leak \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-44451: Apache Superset: API sensitive information leak " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23619 invoked by uid 550); 1 Feb 2022 09:12:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20176 invoked from network); 1 Feb 2022 09:09:37 -0000
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ad888107-5866-84ef-08ff-d34611afc9e6@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 01 Feb 2022 09:09:24 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-44451: Apache Superset: API sensitive information leak 

Description:

Apache Superset up to and including 1.3.2 allowed for registered database c=
onnections password leak for authenticated users. This information could be=
 accessed in a non-trivial way.

Mitigation:

Upgrade to Apache Superset 1.4.0 or higher.

Credit:

Found and reported by Cesar Santos

