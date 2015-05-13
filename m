X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["746" "Wednesday" "13" "May" "2015" "19:09:49" "+0300" "DaKnOb" "daknob.mac@gmail.com" "<63E299CE-40BE-4F1D-BFC0-5278B8E51C57@gmail.com>" "20" "[oss-security] Request 2 CVE-IDs for Zeus Voting System" nil nil nil "5" "2015051316:09:49" "[oss-security] Request 2 CVE-IDs for Zeus Voting System" (number mark "        daknob.mac@g May 13   20/746   " thread-indent "\"[oss-security] Request 2 CVE-IDs for Zeus Voting System\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5207 invoked by uid 550); 13 May 2015 16:17:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30657 invoked from network); 13 May 2015 16:10:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:content-type:subject:date:message-id:cc:to:mime-version;
        bh=x5CbCRBInv/6tDemTYQwOuk6zir81TD38T12jmzeznA=;
        b=Lv9ixdqo1CmZLzBaU+B2Jb04ZBZyl8Bm9CEMNUNf9Y26De+TS2Ax0zvqrmBxLhGV6S
         VvllL8ynPlsOFP43YyynO1Tm7bKhlWX1B8UaoeyY+LnJZj+HJ3zXtCsaIlgVq0FkbKGS
         8Cylxjk4Qwf8PGWow85z+gnf/jNzSX99MF73HslwM3qpZakgxcZ8N/M5TswHCrbVKKY8
         NFjxG6bbCtuvxafBiwyqN4oUnS2MKW4aJyIUmjQRMV72u2bsfWwT/Ctvh3IxuFw5DKhG
         iYZ4EMQxTw75na8tRrzkDkw6feBpkaI122a1RkoQNDedleo/WgsOLoRKFja4M7HpKLfl
         +frA==
X-Received: by 10.194.192.72 with SMTP id he8mr42105709wjc.11.1431533391782;
        Wed, 13 May 2015 09:09:51 -0700 (PDT)
Content-Type: multipart/alternative; boundary="Apple-Mail=_FB8597E9-3A95-4D8F-92A3-AB61B48AAA47"
Message-Id: <63E299CE-40BE-4F1D-BFC0-5278B8E51C57@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
X-Mailer: Apple Mail (2.1878.6)
Cc: cve-assign@mitre.org
Date: Wed, 13 May 2015 19:09:49 +0300
From: DaKnOb <daknob.mac@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Request 2 CVE-IDs for Zeus Voting System
To: OSS Security List <oss-security@lists.openwall.com>

--Apple-Mail=_FB8597E9-3A95-4D8F-92A3-AB61B48AAA47
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252

Zeus (https://github.com/grnet/zeus) is a fork of Helios that is actively d=
eveloped by GRNET (http://www.grnet.gr/) and is considered to be used in Gr=
eek Elections (starts with small and rolls out to larger elections).=20

Two XSS vulnerabilities that allow JavaScript Execution have been found, on=
e of which has a PoC running JavaScript / Modifying HTML in the voter=92s b=
rowser during the voting process.

XSS #1 - https://github.com/grnet/zeus/issues/28
XSS #2 - https://github.com/grnet/zeus/issues/29

Thank you,
Antonios A. Chariton=

--Apple-Mail=_FB8597E9-3A95-4D8F-92A3-AB61B48AAA47--
