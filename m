X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["863" "Wednesday" "13" "April" "2016" "13:27:34" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty0Am2OcAtzS5jH=xsVOP3o6pzCGmwHWm9igWOCpACpBPg@mail.gmail.com>" "35" "[oss-security] CVE for nodejs node-uuid" "^Date:" nil nil "4" "2016041319:27:34" "[oss-security] CVE for nodejs node-uuid" (number mark "        kseifried@re Apr 13   35/863   " thread-indent "\"[oss-security] CVE for nodejs node-uuid\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25775 invoked by uid 550); 13 Apr 2016 19:27:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25757 invoked from network); 13 Apr 2016 19:27:46 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=jqEQExvsNo7ALEICo2Alt3LeNPObK3QaSE2U4nMT2qU=;
        b=D+drpQ6jeC0D3RfXi6FK2N09HF+IHUS8mcuPQKIPCfJ6YA1mWaX+OOTzTrGgsIL7xQ
         tF/2XILHOmyZz20rj0VA4KD2frJNS+pGbWgpgDnU+2qQ2O4PF7rWyT5nPPhVyjLF7eOW
         tEK38C/GAIWf1PNFvCmT+JdsDlXBbJqa13a8esaVhXN7Dl+1wkZlfssW4ml2tS7rsa5H
         qzSOMtQ+Bus5yT3hsDJMKHKUwcPvfONJ4gRDlmWOMiW0w93x0H0lXNFvdJcTlbfwZZwy
         sthVYmxt0bcdRAqyHWnG+pGol1joTNMdXZ6iAdljC7amruLOG2WoZt5DirBBNNHzqYcZ
         DQXw==
X-Gm-Message-State: AOPr4FVkt65XTYuEJsjSQL4N6HD9MhA0tiOaX8AFpIkLNDq1UBpS4T3rKl7VffbXQmkxTTsg6aLEU4EPIatOhw5M
MIME-Version: 1.0
X-Received: by 10.13.202.139 with SMTP id m133mr5792927ywd.106.1460575654781;
 Wed, 13 Apr 2016 12:27:34 -0700 (PDT)
Message-ID: <CANO=Ty0Am2OcAtzS5jH=xsVOP3o6pzCGmwHWm9igWOCpACpBPg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11482f621264f1053062c5aa
Date: Wed, 13 Apr 2016 13:27:34 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE for nodejs node-uuid
To: oss-security <oss-security@lists.openwall.com>, CVE ID Requests <cve-assign@mitre.org>

--001a11482f621264f1053062c5aa
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

https://nodesecurity.io/advisories/93

Insecure Entropy Source - Math.random()

March 28th, 2016
CVE-PENDING =E2=80=A2 Credit: Fedot Praslov
node-uuid
Vulnerable: <1.4.4
Patched: >=3D1.4.4
Overview

node-uuid prior to 1.4.4 contained a bug that caused it to consistently
fall back to using Math.random instead of a more cryptographically sound
source of entropy, the native crypto module.

Remediation

Upgrade to version 1.4.4 or greater

References

https://github.com/broofa/node-uuid/issues/108
https://github.com/broofa/node-uuid/issues/122


--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a11482f621264f1053062c5aa--
