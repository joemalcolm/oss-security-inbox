X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1270" "Wednesday" "4" "April" "2018" "15:04:17" "-0700" "Daniel Dai" "daijy@apache.org" "<CABDpyCjSKaT9bVNajr0L52b_abuxHL0xWLB=5++ytUzD_JyCRg@mail.gmail.com>" "31" "[oss-security] [SECURITY] CVE-2018-1282 JDBC driver is susceptible to SQL injection attack if the input parameters are not properly cleaned" nil nil nil "4" "2018040422:04:17" "[oss-security] [SECURITY] CVE-2018-1282 JDBC driver is susceptible to SQL injection attack if the input parameters are not properly cleaned" (number mark "U       daijy@apache Apr  4   31/1270  " thread-indent "\"[oss-security] [SECURITY] CVE-2018-1282 JDBC driver is susceptible to SQL injection attack if the input parameters are not properly cleaned\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27831 invoked by uid 550); 4 Apr 2018 23:50:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28131 invoked from network); 4 Apr 2018 22:04:32 -0000
X-Gm-Message-State: AElRT7GVaj21XKd2oMtUvCdgCcxCGy7Sc0ep4AHwJo8JTpFuSVEeMCfM
	ZisiaS7AUCawxEpvwmjJ2Zms2duc4JVwYH8l4wk=
X-Google-Smtp-Source: AIpwx4+LX/EzLtYLpyA/3XN4R56RZuTZ+y1IUA1QDQtTUkFZAIu80h2Y3wBsauGaSzO1no+8Y+2G0vzF1JKcjVhJguk=
X-Received: by 10.107.183.65 with SMTP id h62mr17958954iof.204.1522879458526;
 Wed, 04 Apr 2018 15:04:18 -0700 (PDT)
MIME-Version: 1.0
From: Daniel Dai <daijy@apache.org>
Date: Wed, 4 Apr 2018 15:04:17 -0700
X-Gmail-Original-Message-ID: <CABDpyCjSKaT9bVNajr0L52b_abuxHL0xWLB=5++ytUzD_JyCRg@mail.gmail.com>
Message-ID: <CABDpyCjSKaT9bVNajr0L52b_abuxHL0xWLB=5++ytUzD_JyCRg@mail.gmail.com>
To: user@hive.apache.org, dev@hive.apache.org, announce@apache.org, 
	security <security@hive.apache.org>, oss-security@lists.openwall.com, 
	The bear in Boulder <bgiles@coyotesong.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [SECURITY] CVE-2018-1282 JDBC driver is susceptible to SQL injection
 attack if the input parameters are not properly cleaned

CVE-2018-1282: JDBC driver is susceptible to SQL injection attack if
the input parameters are not properly cleaned

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected: This vulnerability affects all versions of Hive
JDBC driver from 0.7.1

Description: This vulnerability in Hive allows carefully crafted arguments to be
used to bypass the argument escaping/cleanup that JDBC driver does in
PreparedStatement implementation.

Mitigation: It is recommended to upgrade prior version of Hive JDBC
driver to 2.3.3.
Note Hive JDBC driver is not backward compatible with HiveServer2,
which means newer version of Hive JDBC driver may not talk to older version
of HiveServer2. In particular, Hive JDBC driver 2.3.3 won't talk
to HiveServer2 2.1.1 or prior. If user is using Hive code 2.1.1 or below
they might need to upgrade all the Hive instances to 2.3.3.


Alternative to the upgrade, is to take the follow two actions in your
Hive JDBC client code/application when dealing with user provided
input in PreparedStatement:
1. Avoid passing user input PreparedStatement.setBinaryStream
2. Sanitize the user input for PreparedStatement.setString, by
replacing all occurrences of \' to '

Credit: This issue was discovered by Bear Giles of SnapLogic
