X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["303" "Monday" "1" "November" "2021" "09:08:24" "+0000" "Calvin Kirs" "kirs@apache.org" nil "13" "[oss-security] CVE-2021-27644: Apache DolphinScheduler: DolphinScheduler mysql jdbc connector parameters deserialize remote code execution " nil nil nil "11" nil nil (number mark "U       kirs@apache. Nov  1   13/303   " thread-indent "\"[oss-security] CVE-2021-27644: Apache DolphinScheduler: DolphinScheduler mysql jdbc connector parameters deserialize remote code execution \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-27644: Apache DolphinScheduler: DolphinScheduler mysql jdbc connector parameters deserialize remote code execution " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27833 invoked by uid 550); 1 Nov 2021 11:48:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25670 invoked from network); 1 Nov 2021 09:08:38 -0000
Content-Type: text/plain; charset=utf-8
From: Calvin Kirs <kirs@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7c81caa1-0079-eaf0-73f1-b4d176c0b569@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 01 Nov 2021 09:08:24 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-27644: Apache DolphinScheduler: DolphinScheduler mysql
 jdbc connector parameters deserialize remote code execution 

Severity: low

Description:

In Apache DolphinScheduler before 1.3.6 versions, authorized users can use =
SQL injection in the data source center. (Only applicable to MySQL data sou=
rce with internal login account password)


Credit:

This issue was discovered by Jinchen Sheng of Ant FG Security Lab

