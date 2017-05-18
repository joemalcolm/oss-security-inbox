X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["226" "Thursday" "18" "May" "2017" "06:10:57" "+0000" "=?UTF-8?B?U8OpYmFzdGllbg==?= Delafond" "seb@debian.org" "<20170518080707.635@usenet.piggo.com>" "13" "[oss-security] libytnef: CVE-2017-9058: heap-based buffer overflow in SIZECHECK (ytnef.c)" "^Date:" nil nil "5" "2017051806:10:57" "[oss-security] libytnef: CVE-2017-9058: heap-based buffer overflow in SIZECHECK (ytnef.c)" (number mark "U       seb@debian.o May 18   13/226   " thread-indent "\"[oss-security] libytnef: CVE-2017-9058: heap-based buffer overflow in SIZECHECK (ytnef.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9606 invoked by uid 550); 18 May 2017 10:27:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25831 invoked from network); 18 May 2017 06:11:21 -0000
X-Injected-Via-Gmane: http://gmane.org/
Message-ID: <20170518080707.635@usenet.piggo.com>
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: slrn/1.0.3 (Linux)
Date: Thu, 18 May 2017 06:10:57 +0000 (UTC)
From: =?UTF-8?Q?S=C3=A9bastien?= Delafond <seb@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] libytnef: CVE-2017-9058: heap-based buffer overflow in SIZECHECK
 (ytnef.c)
To: oss-security@lists.openwall.com

Hello,

CVE-2017-9058 has been assigned for the following vulnerability:

  https://bugs.debian.org/862556

This was discovered by bingosxs@qq.com, and leads to a crash because of
an incorrect boundary check.

Cheers,

--Seb

