X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1496" "Friday" "23" "March" "2018" "12:44:09" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty2wT7aX4fi5TAsE0sSkN+4ysqZkdzAjUtDF4tHchK08UQ@mail.gmail.com>" "28" "[oss-security] CVE-2018-1000140 - rsyslog librelp X.509 parsing issue" nil nil nil "3" "2018032318:44:09" "[oss-security] CVE-2018-1000140 - rsyslog librelp X.509 parsing issue" (number mark "U       kseifried@re Mar 23   28/1496  " thread-indent "\"[oss-security] CVE-2018-1000140 - rsyslog librelp X.509 parsing issue\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32476 invoked by uid 550); 23 Mar 2018 18:45:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30660 invoked from network); 23 Mar 2018 18:44:22 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=2dCyqodba3mUwqCoCbz12enGsN+StObbfQOsRhHpCac=;
        b=hf1QtQ+TGjt8Fh3XPgk/KD552pS3KMSjK+KuxAbFLkBD8BN7V4jTvQLretOTsfhqby
         SMfchfW/t0nUSiDai2110T4Hvn+QFR3SHuzu1hW32WaRjfAdGQE/hoE3EG3zLjR9gUws
         mf2nAjFzFfOxwhr8jW8fOVqTMHc3qOxvP5JderTP8Zjm9WxUDsVE17ByHuv0cUmixiFD
         ybtKdANa0/dZBWlxZgaxkJ7LM4GH3SRzvJBOpHmObWVlU6V62+HFQEMYq2XSftRxkgtm
         edtWTxZMdAicVgu6PoMPjMwm6RmX09znUkoJvp+7Y6ZMyIeykHm1F7ssQEbVbaJmqmep
         StGg==
X-Gm-Message-State: AElRT7HdOMs+C8FNbcoGU5BOtmLlZnka28RpiJiKxBFw8VsJaHnGXLM8
	TcItMn86W38Hma4ZbLglPSmMFap+MrIse4MDD9HeMgEt4cA=
X-Google-Smtp-Source: AIpwx4+GYAMfrFBeqppihzaOY/5lLgD3f//5YvEue8QTQRYRZWmCsKd8kCZr6+IGGLZznkn1/1Jx3TG8kLbGzkMTfc0=
X-Received: by 2002:a9d:6258:: with SMTP id i24-v6mr5625149otk.255.1521830650274;
 Fri, 23 Mar 2018 11:44:10 -0700 (PDT)
MIME-Version: 1.0
From: Kurt Seifried <kseifried@redhat.com>
Date: Fri, 23 Mar 2018 12:44:09 -0600
Message-ID: <CANO=Ty2wT7aX4fi5TAsE0sSkN+4ysqZkdzAjUtDF4tHchK08UQ@mail.gmail.com>
To: oss-security <oss-security@lists.openwall.com>
Content-Type: multipart/alternative; boundary="0000000000005182a9056818cf82"
Subject: [oss-security] CVE-2018-1000140 - rsyslog librelp X.509 parsing issue

--0000000000005182a9056818cf82
Content-Type: text/plain; charset="UTF-8"

This was embargoed but then it got sent to the PUBLIC cve request page, so
the cat is out of the bag as it were, so notifying oss-sec.


{"data_version":"4.0","references":{"reference_data":[{"url":"
https://github.com/rsyslog/librelp/blob/532aa362f0f7a8d037505b0a27a1df452f9bac9e/src/tcp.c#L1205
"},{"url":"https://lgtm.com/rules/1505913226124/"}]},"description":{"description_data":[{"lang":"eng","value":"rsyslog
librelp version 1.2.14 and earlier contains a Buffer Overflow vulnerability
in the checking of x509 certificates from a peer that can result in Remote
code execution. This attack appear to be exploitable a remote attacker that
can connect to rsyslog and trigger a stack buffer overflow by sending a
specially crafted x509
certificate."}]},"data_type":"CVE","affects":{"vendor":{"vendor_data":[{"product":{"product_data":[{"version":{"version_data":[{"version_value":"1.2.14
and
earlier"}]},"product_name":"librelp"}]},"vendor_name":"rsyslog"}]}},"CVE_data_meta":{"DATE_ASSIGNED":"3/20/2018
10:38:48","ID":"CVE-2018-1000140","ASSIGNER":"kurt@seifried.org
","REQUESTER":"kev@semmle.com"},"data_format":"MITRE","problemtype":{"problemtype_data":[{"description":[{"lang":"eng","value":"Buffer
Overflow"}]}]}}

-- 
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--0000000000005182a9056818cf82--
