X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["750" "Thursday" "24" "January" "2019" "13:34:21" "+0900" "Akira Ajisaka" "aajisaka@apache.org" "<CAP+3qq7v782VBmeatJTNV5L_wDk1dHsoWFNChAUUvsN7z2Tu1Q@mail.gmail.com>" "22" "[oss-security] CVE-2018-1296: Apache Hadoop HDFS Permissive listXAttr Authorization" nil nil nil "1" "2019012404:34:21" "[oss-security] CVE-2018-1296: Apache Hadoop HDFS Permissive listXAttr Authorization" (number mark "U       aajisaka@apa Jan 24   22/750   " thread-indent "\"[oss-security] CVE-2018-1296: Apache Hadoop HDFS Permissive listXAttr Authorization\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32116 invoked by uid 550); 24 Jan 2019 07:31:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32147 invoked from network); 24 Jan 2019 04:34:48 -0000
X-Gm-Message-State: AJcUukftGZvthUZxxNMN4aOH88CPWkrlwVUGHZzqgw8xKyJ6BDgIFQ3b
	/Jdg6CUCrVYAe+XByHC1R6/tWIqpuEf7Ts8EEls=
X-Google-Smtp-Source: ALg8bN4r/s1z6u7rwzoUZ9K1XH2kvMJUO9ZH4+GBUGMFZ+SB5/qYNY8sdlf4SR3+3or9IgGtn6uW00LNm4OxqgQ/nPo=
X-Received: by 2002:a19:9b50:: with SMTP id d77mr3833064lfe.137.1548304472884;
 Wed, 23 Jan 2019 20:34:32 -0800 (PST)
MIME-Version: 1.0
From: Akira Ajisaka <aajisaka@apache.org>
Date: Thu, 24 Jan 2019 13:34:21 +0900
X-Gmail-Original-Message-ID: <CAP+3qq7v782VBmeatJTNV5L_wDk1dHsoWFNChAUUvsN7z2Tu1Q@mail.gmail.com>
Message-ID: <CAP+3qq7v782VBmeatJTNV5L_wDk1dHsoWFNChAUUvsN7z2Tu1Q@mail.gmail.com>
To: general@hadoop.apache.org, user@hadoop.apache.org, 
	"<security@hadoop.apache.org>" <security@hadoop.apache.org>, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2018-1296: Apache Hadoop HDFS Permissive listXAttr Authorization

CVE-2018-1296: Apache Hadoop HDFS Permissive listXAttr Authorization

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
3.0.0-alpha1 to 3.0.0, 2.9.0, 2.8.0 to 2.8.3, 2.5.0 to 2.7.5

Description:
HDFS exposes extended attribute key/value pairs during listXAttrs,
verifying only path-level search access to the directory rather than
path-level read permission to the referent. This affects features that
store sensitive data in extended attributes, such as HDFS encryption secrets.

Mitigation:
If a file contains sensitive data in extended attributes, users and admins
need to change the permission to prevent others from listing the directory
which contains the file.

Credit:
This issue was discovered by Rushabh Shah.
