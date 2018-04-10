X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1089" "Tuesday" "10" "April" "2018" "12:18:11" "+0100" "Mark Cox" "mjc@apache.org" "<CANnUo4JFixDvNxLPLZtEE_TWV3+Aafw5kYGf20xgkFjZRuKuDA@mail.gmail.com>" "25" "[oss-security] Change to ASF httpd vulnerability XML format" nil nil nil "4" "2018041011:18:11" "[oss-security] Change to ASF httpd vulnerability XML format" (number mark "U       mjc@apache.o Apr 10   25/1089  " thread-indent "\"[oss-security] Change to ASF httpd vulnerability XML format\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1603 invoked by uid 550); 10 Apr 2018 12:12:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15418 invoked from network); 10 Apr 2018 11:18:25 -0000
X-Gm-Message-State: ALQs6tCPIHJ1jjKeIlQEgdeTursd13EH8gvD79WWS5GEYBdNumAhDrRE
	Hcj1NCWbASCbaLvt65zUrHHg6oz2ei2I70iKn9Q=
X-Google-Smtp-Source: AIpwx4+88tF6kVhoZrOO6SGtmH8+S/iiRQPNzAHsg/3RhZwf0fJc4M1+81UHKVw1aebckRqncVUSkRPqednEOyggMYU=
X-Received: by 2002:a24:7855:: with SMTP id p82-v6mr1681356itc.11.1523359091816;
 Tue, 10 Apr 2018 04:18:11 -0700 (PDT)
MIME-Version: 1.0
From: Mark Cox <mjc@apache.org>
Date: Tue, 10 Apr 2018 12:18:11 +0100
X-Gmail-Original-Message-ID: <CANnUo4JFixDvNxLPLZtEE_TWV3+Aafw5kYGf20xgkFjZRuKuDA@mail.gmail.com>
Message-ID: <CANnUo4JFixDvNxLPLZtEE_TWV3+Aafw5kYGf20xgkFjZRuKuDA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000887d2605697cad4a"
Subject: [oss-security] Change to ASF httpd vulnerability XML format

--000000000000887d2605697cad4a
Content-Type: text/plain; charset="UTF-8"

Various OSS projects I've been involved with use a master vulnerability
database in XML used for various internal functions such as generating web
pages.  I know some folks monitor or use/convert these XML feeds too even
though we've not really publicised them or given them a schema.

Later today I will be performing a major update to the Apache HTTP Server
XML file[1] so that each CVE has a unique entry (rather than currently
where the issues are repeated for each major version affected).  This
brings it more into line with the OpenSSL XML file[2] and allows us to
automate more of our release process (i.e. generating the required JSON for
Mitre CVE submissions).

Some entries will have other minor updates to their text and to fix link
locations so if you are monitoring the html pages you will see some minor
changes at that time.

Regards, Mark J Cox

[1] https://httpd.apache.org/security/vulnerabilities-httpd.xml
[2] https://www.openssl.org/news/vulnerabilities.xml

--000000000000887d2605697cad4a--
