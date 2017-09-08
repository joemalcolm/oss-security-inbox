X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["845" "Friday" "8" "September" "2017" "11:20:23" "+0000" "Sean Owen" "srowen@apache.org" "<CAEccTyz4bbvAf+GAY_86HUzdKMN74DUAV8GQkh2oGy+tO1ic7g@mail.gmail.com>" "28" "[oss-security] CVE-2017-12612 Unsafe deserialization in Apache Spark launcher API" nil nil nil "9" "2017090811:20:23" "[oss-security] CVE-2017-12612 Unsafe deserialization in Apache Spark launcher API" (number mark "U       srowen@apach Sep  8   28/845   " thread-indent "\"[oss-security] CVE-2017-12612 Unsafe deserialization in Apache Spark launcher API\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11272 invoked by uid 550); 8 Sep 2017 11:35:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32332 invoked from network); 8 Sep 2017 11:20:52 -0000
X-Gm-Message-State: AHPjjUimp+XbY22vS+gAQVUTu0juElFj0jF1WRPR38Q17iPXKul2uZgu
	BX5o7ow6vgQrb4gcDQzQHac1oACq5Q==
X-Google-Smtp-Source: ADKCNb6rm6XuCernCVWnaJDT4WraifR+J7Vqvsyn/jgI6Yn/S9d52PQjZJf8HvAs4moupUY5DcgDj1+j0Kr0DmhewUc=
X-Received: by 10.80.190.13 with SMTP id a13mr1894782edi.2.1504869634381; Fri,
 08 Sep 2017 04:20:34 -0700 (PDT)
MIME-Version: 1.0
From: Sean Owen <srowen@apache.org>
Date: Fri, 08 Sep 2017 11:20:23 +0000
X-Gmail-Original-Message-ID: <CAEccTyz4bbvAf+GAY_86HUzdKMN74DUAV8GQkh2oGy+tO1ic7g@mail.gmail.com>
Message-ID: <CAEccTyz4bbvAf+GAY_86HUzdKMN74DUAV8GQkh2oGy+tO1ic7g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="f4030438d710fd9d2f0558abc3ff"
Subject: [oss-security] CVE-2017-12612 Unsafe deserialization in Apache Spark launcher API

--f4030438d710fd9d2f0558abc3ff
Content-Type: text/plain; charset="UTF-8"

Severity: Medium

Vendor: The Apache Software Foundation

Versions Affected:
Versions of Apache Spark from 1.6.0 until 2.1.1

Description:
In Apache Spark 1.6.0 until 2.1.1, the launcher API performs unsafe
deserialization of data received by  its socket. This makes applications
launched programmatically using the launcher API potentially
vulnerable to arbitrary code execution by an attacker with access to any
user
account on the local machine. It does not affect apps run by spark-submit or
spark-shell. The attacker would be able to execute code as the user that ran
the Spark application. Users are encouraged to update to version 2.2.0 or
later.

Mitigation:
Update to Apache Spark 2.2.0 or later.

Credit:
Aditya Sharad, Semmle

--f4030438d710fd9d2f0558abc3ff--
