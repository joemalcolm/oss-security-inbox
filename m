X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["236" "Monday" "14" "March" "2022" "10:09:26" "+0000" "Stefan Eissing" "icing@apache.org" nil "13" "[oss-security] CVE-2022-22719: Apache HTTP Server: mod_lua Use of uninitialized value of in r:parsebody " nil nil nil "3" nil nil (number mark "U       icing@apache Mar 14   13/236   " thread-indent "\"[oss-security] CVE-2022-22719: Apache HTTP Server: mod_lua Use of uninitialized value of in r:parsebody \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2022-22719: Apache HTTP Server: mod_lua Use of uninitialized value of in r:parsebody " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6069 invoked by uid 550); 14 Mar 2022 10:46:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5255 invoked from network); 14 Mar 2022 10:10:36 -0000
Content-Type: text/plain; charset=utf-8
From: Stefan Eissing <icing@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <1c308233-7941-7a34-a1b7-5221e48be8e0@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 14 Mar 2022 10:09:26 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-22719: Apache HTTP Server: mod_lua Use of uninitialized
 value of in r:parsebody 

Severity: moderate

Description:

A carefully crafted request body can cause a read to a random memory area w=
hich could cause the process to crash.

This issue affects Apache HTTP Server 2.4.52 and earlier.

Credit:

Chamal De Silva

