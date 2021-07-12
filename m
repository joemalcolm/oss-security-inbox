X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["340" "Monday" "12" "July" "2021" "11:53:55" "+0000" "Guillaume Nodet" "gnodet@apache.org" nil "9" "[oss-security] CVE-2021-30129: DoS/OOM leak vulnerability in Apache Mina SSHD Server " nil nil nil "7" nil nil (number mark "U       gnodet@apach Jul 12    9/340   " thread-indent "\"[oss-security] CVE-2021-30129: DoS/OOM leak vulnerability in Apache Mina SSHD Server \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-30129: DoS/OOM leak vulnerability in Apache Mina SSHD Server " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21597 invoked by uid 550); 12 Jul 2021 12:59:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22442 invoked from network); 12 Jul 2021 11:55:13 -0000
Content-Type: text/plain; charset=utf-8
From: Guillaume Nodet <gnodet@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <97ebb7c1-de23-84d0-b3cb-ea8f22cc851d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 12 Jul 2021 11:53:55 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-30129: DoS/OOM leak vulnerability in Apache Mina SSHD
 Server 

Description:

A vulnerability in sshd-core of Apache Mina SSHD allows an attacker to over=
flow the server causing an OutOfMemory error.  This issue affects the SFTP =
and port forwarding features of Apache Mina SSHD version 2.0.0 and later ve=
rsions.  It was addressed in Apache Mina SSHD 2.7.0

This issue is being tracked as SSHD-1125

