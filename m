X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["868" "Monday" "2" "May" "2016" "23:04:47" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1605022258410.3059@wniryva>" "25" "Re: [oss-security] CVE Request: Out-of-bands write issue found in qemu" nil nil nil "5" "2016050217:34:47" "[oss-security] CVE Request: Out-of-bands write issue found in qemu" (number mark "U       ppandit@redh May  2   25/868   " thread-indent "\"Re: [oss-security] CVE Request: Out-of-bands write issue found in qemu\"\n") "<alpine.LFD.2.20.1604271151190.13938@wniryva>" ("<143C0AFC63FC204CB0C55BB88F3A8ABBE376A3@EX01.corp.qihoo.net>" "<alpine.LFD.2.20.1604271151190.13938@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22417 invoked by uid 550); 2 May 2016 17:35:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22399 invoked from network); 2 May 2016 17:35:04 -0000
Date: Mon, 2 May 2016 23:04:47 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
cc: "cve-assign@mitre.org" <cve-assign@mitre.org>,
        Peter Maydell <peter.maydell@linaro.org>
In-Reply-To: <alpine.LFD.2.20.1604271151190.13938@wniryva>
Message-ID: <alpine.LFD.2.20.1605022258410.3059@wniryva>
References: <143C0AFC63FC204CB0C55BB88F3A8ABBE376A3@EX01.corp.qihoo.net> <alpine.LFD.2.20.1604271151190.13938@wniryva>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="0-1025921908-1462210269=:3059"
Content-ID: <alpine.LFD.2.20.1605022301360.3059@wniryva>
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Mon, 02 May 2016 17:34:53 +0000 (UTC)
Subject: Re: [oss-security] CVE Request: Out-of-bands write issue found in
 qemu

--0-1025921908-1462210269=:3059
Content-Type: text/plain; CHARSET=GB2312
Content-Transfer-Encoding: 8BIT
Content-ID: <alpine.LFD.2.20.1605022301361.3059@wniryva>

+-- On Wed, 27 Apr 2016, P J P wrote --+
| +-- On Wed, 27 Apr 2016, ¿Ó«ø wrote --+
| | The qemu has an out-of-bands bug in uart_write() function.
| |
| | The patch is here:
| | https://lists.nongnu.org/archive/html/qemu-devel/2016-04/msg02711.html
| 
|   Not sure if this should need a CVE, awaiting upstream confirmation on the 
| same.

  Received confirmation from Qemu upstream, it could not consider this issue 
to be security relevant[*], to require CVE assignment.

[*] http://wiki.qemu.org/SecurityProcess#How_impact_and_severity_of_a_bug_is_decided

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
--0-1025921908-1462210269=:3059--
