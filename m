X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["915" "Wednesday" "11" "March" "2020" "12:32:54" "+0800" "Chen QingYang" "chenqingyang@apache.org" "<CAMNRR76nvdbR33WNWP-Rag0V7pFs-WFCLWv+=saSX0AsqgPC7w@mail.gmail.com>" "38" "[oss-security] [CVE-2020-1947] Apache ShardingSphere(incubator) deserialization vulnerability" nil nil nil "3" "2020031104:32:54" "[oss-security] [CVE-2020-1947] Apache ShardingSphere(incubator) deserialization vulnerability" (number mark "U       chenqingyang Mar 11   38/915   " thread-indent "\"[oss-security] [CVE-2020-1947] Apache ShardingSphere(incubator) deserialization vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-1947] Apache ShardingSphere(incubator) deserialization vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13802 invoked by uid 550); 11 Mar 2020 09:19:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9253 invoked from network); 11 Mar 2020 04:33:17 -0000
X-Gm-Message-State: ANhLgQ1G83vNtV+onD5gg4tCh0xl5DvMBUiX0yyxWuERL4wBf6lVdqDK
	Og1vIEM/JZlBjQHbpjd6n2Z2Ipya0zrprScwxss=
X-Google-Smtp-Source: ADFU+vu202ZAqVjS0WLnGJQu4L/ctHw/A5rorPlXj5J+BPHTshRpccFxUpIxetg2TdzOQomiEwcwkfYvA/mzpVkXqaI=
X-Received: by 2002:a37:6411:: with SMTP id y17mr1064805qkb.437.1583901185051;
 Tue, 10 Mar 2020 21:33:05 -0700 (PDT)
MIME-Version: 1.0
From: Chen QingYang <chenqingyang@apache.org>
Date: Wed, 11 Mar 2020 12:32:54 +0800
X-Gmail-Original-Message-ID: <CAMNRR76nvdbR33WNWP-Rag0V7pFs-WFCLWv+=saSX0AsqgPC7w@mail.gmail.com>
Message-ID: <CAMNRR76nvdbR33WNWP-Rag0V7pFs-WFCLWv+=saSX0AsqgPC7w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000007e91fb05a08cbb01"
Subject: [oss-security] [CVE-2020-1947] Apache ShardingSphere(incubator) deserialization vulnerability

--0000000000007e91fb05a08cbb01
Content-Type: text/plain; charset="UTF-8"

CVE-2020-1947: Apache ShardingSphere(incubator) deserialization
vulnerability

Severity: low

Vendor:
The Apache Software Foundation

Versions Affected:
ShardingSphere 4.0.0-RC3, 4.0.0

Description:
Apache ShardingSphere's web console uses the SnakeYAML library for parsing
YAML inputs to load datasource configuration. SnakeYAML allows to unmarshal
data to a Java type By using the YAML tag. Unmarshalling untrusted data can
lead to security flaws of RCE.

Mitigation:
4.0.0-RC3 and 4.0.0 users should upgrade to 4.0.1

Example:
An attacker can use untrusted data to fill in the DataSource Config after
login the sharding-ui.

Credit:
This issue was discovered by WuXiong of QI`ANXIN YUNYING Labs.

References:
https://shardingsphere.apache.org/community/en/security/


Chen QingYang
Apache ShardingSphere

--0000000000007e91fb05a08cbb01--
