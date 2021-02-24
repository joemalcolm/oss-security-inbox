X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["665" "Wednesday" "24" "February" "2021" "12:02:49" "-0000" "Simon Steiner" "simonsteiner1984@gmail.com" nil "31" "[oss-security] [CVE-2020-11988] Apache XML Graphics Commons SSRF vulnerability" nil nil nil "2" nil nil (number mark "U       simonsteiner Feb 24   31/665   " thread-indent "\"[oss-security] [CVE-2020-11988] Apache XML Graphics Commons SSRF vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-11988] Apache XML Graphics Commons SSRF vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8144 invoked by uid 550); 24 Feb 2021 14:02:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9712 invoked from network); 24 Feb 2021 12:03:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding:content-language:thread-index;
        bh=cGQGD/Kl2zt0Uo2GqscCZfyVBaC5u0aTXRO+FkxR1sI=;
        b=esavPTPH5+003ZtAkASOShSVpNUGE1/DtZnlB7x3cMNVSvufX9DMLMeQmijsmdFcPa
         kyi4jSIPXPqoIn51rBiGeY52jNUayUUCsSeNjkKY9tDk+7g4VmOpVy/7TsGwMnX0aabV
         90h0e2sf0KerQJi/iAUYBqGLqAwWznfu/aZWzEW4s7GK3EWqyGiAVWkSD+fOTBMZPR1i
         hJevKPWn4rMnJnb7F0KekIT+WkzjjCtv+Kn1Io/byrebvwwy7W+OQyAvry8ouvMHu1Az
         aRnmwFI8pKjWeaf3Gg3D/Ljq34QxuJC0nCaUCPQCjSUSq/XwjhwR0+5VpKYAGEXZhjyu
         mfQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding:content-language:thread-index;
        bh=cGQGD/Kl2zt0Uo2GqscCZfyVBaC5u0aTXRO+FkxR1sI=;
        b=qohJaCqrXeF56J3H8YJCPTRwZN3/kVbj3JNAzl448zkK/UxkpJgybmtn7lWoZe6yV5
         Frc0vvjx7/hi0Bv/couCQf4MdxEeyqNb1OhLwwX0hWAMzRSDurLqVkfblZjqLd2YaKGo
         aGwPFJfGT8BD0imRpa8GgATzmmoUl9+rD9JSZZ8Vi9wUhPXROJ+RwhrZjfdHJaXfo6Vb
         mMSdLAP8nK1ZlFH+gkJPFG6MZyzXl2u7xhSVdn4uOJmMyWjdgdw0F+NdVD4GBxPcdn7E
         78OF+eSaMZzEOOCJiacZPgj2B0WFaTeAuhHbc51hq86LgtxwsvVR2KW9FDUvTAwhN7L/
         1idg==
X-Gm-Message-State: AOAM532YhlbteAVMkp3oLDjWlLRABeiqk2cjBZWIPfSExxJFemWOa2cD
	Y8QZCTeUhiaUhdCz3UmboRLvG6icYMXt6g==
X-Google-Smtp-Source: ABdhPJxXjvCNbN3CPRs0G6mYQS1rn5+/IyWuBYbQ8b5g623IpHjzHFRhFhRa/6TXz7oVif4h434IuA==
X-Received: by 2002:a17:906:f8c4:: with SMTP id lh4mr22660504ejb.14.1614168170892;
        Wed, 24 Feb 2021 04:02:50 -0800 (PST)
From: "Simon Steiner" <simonsteiner1984@gmail.com>
To: <oss-security@lists.openwall.com>
Date: Wed, 24 Feb 2021 12:02:49 -0000
Message-ID: <000901d70aa4$f97e3070$ec7a9150$@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-gb
Thread-Index: AdcKpNYyqToCLQL0QsSSvuVv9hpxtw==
Subject: [oss-security] [CVE-2020-11988] Apache XML Graphics Commons SSRF vulnerability

CVE-2020-11988:
        Apache XML Graphics Commons SSRF vulnerability

Severity:
        Medium

Vendor:
        The Apache Software Foundation

Versions Affected:
        XML Graphics Commons 2.4 and earlier

Description:
        The Apache XML Graphics Commons library is vulnerable to SSRF via t=
he XMPParser that allow an
attacker to cause the underlying server to make arbitrary GET requests.

Mitigation:
        Users should upgrade to XML Graphics Commons 2.6 or later

Credit:
        This issue was independently reported by =E5=BC=A0=E7=9B=B8=E6=B5=A9

References:
        http://xmlgraphics.apache.org/security.html

The Apache XML Graphics team.




