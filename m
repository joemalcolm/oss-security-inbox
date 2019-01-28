X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["874" "Monday" "28" "January" "2019" "14:23:07" "-0600" "Imran Rashid" "irashid@apache.org" "<CAN_Cyt8SiMcy_JXH=VMGePOFZpu_-9bTWYjMUPSwGW3myy0xCQ@mail.gmail.com>" "31" "[oss-security] CVE-2018-11760: Apache Spark local privilege escalation vulnerability" nil nil nil "1" "2019012820:23:07" "[oss-security] CVE-2018-11760: Apache Spark local privilege escalation vulnerability" (number mark "U       irashid@apac Jan 28   31/874   " thread-indent "\"[oss-security] CVE-2018-11760: Apache Spark local privilege escalation vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20418 invoked by uid 550); 29 Jan 2019 11:15:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21702 invoked from network); 28 Jan 2019 20:23:32 -0000
X-Gm-Message-State: AJcUukclhEsWUaJ7meUv0sswNsAuYmAH8tclYQGaDfpGs33Y9G2B9MOv
	55CtpVVU8u0+Uce//x9EX/iHrWALUf24BGNy6eU=
X-Google-Smtp-Source: ALg8bN6a9ktZeowvJGdkPp7XMD2EO09tNRf88z9qqgTMx78QkwiLJ9dWEkoXwB28l9s7cQ4mbpLTm3zvL65L+z+dOB8=
X-Received: by 2002:a02:c08:: with SMTP id g8mr7715622jad.127.1548706998491;
 Mon, 28 Jan 2019 12:23:18 -0800 (PST)
MIME-Version: 1.0
From: Imran Rashid <irashid@apache.org>
Date: Mon, 28 Jan 2019 14:23:07 -0600
X-Gmail-Original-Message-ID: <CAN_Cyt8SiMcy_JXH=VMGePOFZpu_-9bTWYjMUPSwGW3myy0xCQ@mail.gmail.com>
Message-ID: <CAN_Cyt8SiMcy_JXH=VMGePOFZpu_-9bTWYjMUPSwGW3myy0xCQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000081c37c05808a7273"
Subject: [oss-security] CVE-2018-11760: Apache Spark local privilege escalation vulnerability

--00000000000081c37c05808a7273
Content-Type: text/plain; charset="UTF-8"

Severity: Important

Vendor: The Apache Software Foundation

Versions affected:
All Spark 1.x, Spark 2.0.x, and Spark 2.1.x versions
Spark 2.2.0 to 2.2.2
Spark 2.3.0 to 2.3.1

Description:
When using PySpark , it's possible for a different local user to connect to
the Spark application and impersonate the user running the Spark
application.  This affects versions 1.x, 2.0.x, 2.1.x, 2.2.0 to 2.2.2, and
2.3.0 to 2.3.1.

Mitigation:
1.x, 2.0.x, 2.1.x, and 2.2.x users should upgrade to 2.2.3 or newer
2.3.x users should upgrade to 2.3.2 or newer
Otherwise, affected users should avoid using PySpark in multi-user
environments.

Credit:
This issue was reported by Luca Canali and Jose Carlos Luna Duran from CERN.

References:
https://spark.apache.org/security.html

--00000000000081c37c05808a7273--
