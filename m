X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["782" "Sunday" "23" "February" "2020" "15:00:27" "+0800" "George Ni" "nic@apache.org" nil "39" nil "^Date:" nil nil "2" nil nil (number mark "U       nic@apache.o Feb 23   39/782   " thread-indent "\"[oss-security] [CVE-2020-1937] Apache Kylin SQL injection vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-1937] Apache Kylin SQL injection vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31951 invoked by uid 550); 23 Feb 2020 07:43:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7999 invoked from network); 23 Feb 2020 07:00:51 -0000
X-Gm-Message-State: APjAAAVAaxxe3+gbT6kTabqLD3BGFNaIAEOuS5Ga5clv6pvRlLtExjIo
	Fc6StyqEcN07RvfdsOIb6L7IVJno3YQvmNdodnM=
X-Google-Smtp-Source: APXvYqzC1s4MHGNCJqAxHNBebMltSXypH6lXs8A5diLdJAq7CKXgP6tPK6EDr8xWGNwJ87MGzJa3kM6D7j1cLQ33Smo=
X-Received: by 2002:a37:93c3:: with SMTP id v186mr9399799qkd.456.1582441238177;
 Sat, 22 Feb 2020 23:00:38 -0800 (PST)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CANUbERwKhzhZnUWrxqBB6tjYqz0yAWTrRbH9j+WhFc9wGwtsMQ@mail.gmail.com>
Message-ID: <CANUbERwKhzhZnUWrxqBB6tjYqz0yAWTrRbH9j+WhFc9wGwtsMQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000e12d2a059f38cf77"
Date: Sun, 23 Feb 2020 15:00:27 +0800
From: George Ni <nic@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [CVE-2020-1937] Apache Kylin SQL injection vulnerability
To: user <user@kylin.apache.org>, dev <dev@kylin.apache.org>, announce@apache.org, 
	Jonathan Leitschuh <jonathan.leitschuh@gmail.com>, Apache Security Team <security@apache.org>, 
	oss-security@lists.openwall.com

--000000000000e12d2a059f38cf77
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
Kylin 2.3.0 to 2.3.2
Kylin 2.4.0 to 2.4.1
Kylin 2.5.0 to 2.5.2
Kylin 2.6.0 to 2.6.4
Kylin 3.0.0-alpha, Kylin 3.0.0-alpha2, Kylin 3.0.0-beta, Kylin 3.0.0

Description:
Kylin has some restful apis which will concatenate SQLs with the user input
string, a user is likely to be able to run malicious database queries.

Mitigation:
Users should upgrade to 3.0.1 or 2.6.5

Credit:
This issue was discovered by =EF=BB=BFJonathan Leitschuh

References:
https://kylin.apache.org/docs/security.html


---------------------

Best regards,



Ni Chunen / George

--000000000000e12d2a059f38cf77--
