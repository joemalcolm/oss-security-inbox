X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["722" "Wednesday" "10" "July" "2019" "14:25:40" "-0700" "Jason Gustafson" "jason@confluent.io" "<CAJDuW=AhXUDhK4Xo-rZbUT2JhaYkaJDx2-f0N5R-E+KMWjmSpQ@mail.gmail.com>" "27" "[oss-security] CVE-2018-17196: Potential to bypass transaction/idempotent ACL checks in Apache Kafka" nil nil nil "7" "2019071021:25:40" "[oss-security] CVE-2018-17196: Potential to bypass transaction/idempotent ACL checks in Apache Kafka" (number mark "U       jason@conflu Jul 10   27/722   " thread-indent "\"[oss-security] CVE-2018-17196: Potential to bypass transaction/idempotent ACL checks in Apache Kafka\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2018-17196: Potential to bypass transaction/idempotent ACL checks in Apache Kafka" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5988 invoked by uid 550); 11 Jul 2019 10:03:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13920 invoked from network); 10 Jul 2019 21:26:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=confluent.io; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=8nohZ4rLXZt9bezXZ/nqYATyyXM8V9wTU+VL+BTqi3k=;
        b=HuEso4fZbFzLjLrn1TPuFKgoLmOu6j1+9o8JtfBOBkca+mE33AYg/9Vk+CUem5qLiz
         tjIm9+e/57f1xPZEREB4UYTIor45cQBbJ8J9VW/XxleVCEoge7JbZ8JXkmxGO5RFOdSw
         grD1xj4b96MB/rhutV+pwzQ+5Cef9ARxeu/pk80uLP8+mCcn5WJeoycQWWpksB1GGQDy
         Tgr/2Pe/emU7gywovwJ7Ewh8s2P33viLfBdfE+Dyg7yOSVXIrPdSnrb40f7GYp9aqXAE
         yQF5giqTUpln/3dHd0bxFkJ/a1uBAcOoXcAewqGxQYcaSWJN/dxfKOoKoMfuJz0sW4IK
         qt6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=8nohZ4rLXZt9bezXZ/nqYATyyXM8V9wTU+VL+BTqi3k=;
        b=WHLxo1Co/p91juK/aaMgTIJrilZEAKzIps+Xntz0wgTuTMD7vQ7HbYosMLMlgBsj0L
         ey3AHssQqMqL49Ym+KZr6Y5Wil44xiqwCg/HjGijMdu6DF/DauFOVQznsIko8PEdBfuG
         +tVDcM6aFhvshlEQHEnLH8ZnwUTxpwLGPMJUHjHXvMWV0jsjfw+uLDKb6GsZ31g4KTHQ
         tKEoDTYxJlVyfHQ/AudzyzZoIsovCjSRiHIFz/QZWgfWJYva9GWzWCqcIVrzYabxCCUM
         enxKbHMgmBxFTTbaulyECR/ta3I/4TbuhisqG9/JZ7P/zMJIf5IGSnDG0TlQ560aGGgF
         gleg==
X-Gm-Message-State: APjAAAVIBmiuyDAHqT94dHHv5wM7AOuLO7QEMviyTJs839l4nS+d13vP
	7zk/f4yqX1jZiZeLIsbVqG4+e4hV52yTFkFqhSud/w==
X-Google-Smtp-Source: APXvYqwp/5zerUzmJJ+LNLH2j+owf7MxBDTCm/QPPInTl+LN57xU+N4jbr8jdjiz4QPslnVW52Utrr2Xj8KJ/SemqjY=
X-Received: by 2002:aca:55d7:: with SMTP id j206mr285947oib.146.1562793951346;
 Wed, 10 Jul 2019 14:25:51 -0700 (PDT)
MIME-Version: 1.0
From: Jason Gustafson <jason@confluent.io>
Date: Wed, 10 Jul 2019 14:25:40 -0700
Message-ID: <CAJDuW=AhXUDhK4Xo-rZbUT2JhaYkaJDx2-f0N5R-E+KMWjmSpQ@mail.gmail.com>
To: security@kafka.apache.org, oss-security@lists.openwall.com, 
	announce@apache.org, Users <users@kafka.apache.org>, dev <dev@kafka.apache.org>, 
	kafka-clients <kafka-clients@googlegroups.com>
Content-Type: multipart/alternative; boundary="00000000000053dfe0058d5a52e9"
Subject: [oss-security] CVE-2018-17196: Potential to bypass transaction/idempotent ACL checks
 in Apache Kafka

--00000000000053dfe0058d5a52e9
Content-Type: text/plain; charset="UTF-8"

CVE-2018-17196: Potential to bypass transaction/idempotent ACL checks in
Apache Kafka

Severity: Moderate

Vendor: The Apache Software Foundation

Versions Affected: Apache Kafka 0.11.0.0 - 2.1.0

Description: It is possible to manually craft a Produce request which
bypasses transaction/idempotent ACL validation. Only authenticated clients
with Write permission on the respective topics are able to exploit this
vulnerability.

Mitigation: Apache Kafka users should upgrade to 2.1.1 or later where this
vulnerability has been fixed.

Acknowledgements: This issue was reported by Jason Gustafson


Regards,
Jason

--00000000000053dfe0058d5a52e9--
