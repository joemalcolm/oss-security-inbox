Received: (qmail 11691 invoked by uid 550); 26 Oct 2022 11:02:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31753 invoked from network); 26 Oct 2022 08:25:59 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: ACrzQf2RaAfLdA1kSUSe/6qvK8W0AM6+47Q/IYNWWZP8BCfIrxo8B0r3
	gcLc8d4jXs9OlSlcpJeWJ3GHWBff+UdtnxBT1vQ=
X-Google-Smtp-Source: AMsMyM7nH61KE0zg5TsQLyAvr/UzY8Dji+DDvf3OWJTxizoK8AjWyVVOsa70X0Ra/C3EkcRBuncXtaHjgB2Y5u7e6CQ=
X-Received: by 2002:a17:907:7ba8:b0:78e:1b38:6b1b with SMTP id
 ne40-20020a1709077ba800b0078e1b386b1bmr35406368ejc.626.1666772737944; Wed, 26
 Oct 2022 01:25:37 -0700 (PDT)
MIME-Version: 1.0
From: peacewong <peacewong@apache.org>
Date: Wed, 26 Oct 2022 16:25:26 +0800
X-Gmail-Original-Message-ID: <CADVnWin9crnFrztKSCz_WDgxGxmGKHnuqx7YM+QZiEW2vLAL+g@mail.gmail.com>
Message-ID: <CADVnWin9crnFrztKSCz_WDgxGxmGKHnuqx7YM+QZiEW2vLAL+g@mail.gmail.com>
To: oss-security@lists.openwall.com, dev@linkis.apache.org
Content-Type: multipart/alternative; boundary="000000000000f7714905ebebc48a"
Subject: [oss-security] CVE-2022-39944: The Apache Linkis JDBC EngineConn module has a RCE Vulnerability

--000000000000f7714905ebebc48a
Content-Type: text/plain; charset="UTF-8"

Severity: important

Description:

In Apache Linkis <=1.2.0 when used with the MySQL Connector/J, a
deserialization vulnerability with possible remote code execution
impact exists when an attacker has write access to a database and
configures a JDBC EC with a MySQL data source and malicious
parameters. Therefore, the parameters in the jdbc url should be
blacklisted. Versions of Apache Linkis <= 1.2.0 will be affected, We
recommend users to update to 1.3.0.


Mitigation:

 <= 1.2.0 users should upgrade to 1.3.0.
Or upgrade the materials of JDBC EngineConn separately, you can refer
to: https://github.com/apache/incubator-linkis/tree/master/linkis-engineconn-plugins/jdbc

Credit:

This issue was discovered by 4ra1n and zac from ZAC Security Team

--000000000000f7714905ebebc48a--
