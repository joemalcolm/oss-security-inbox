X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["609" "Tuesday" "26" "June" "2018" "10:11:50" "+1200" "Nate McCall" "zznate@apache.org" "<CABsaHTOiWdPU_ycw14=1Z0N47+BHL-WiiwZEeFSxbzzo+u1ZFw@mail.gmail.com>" "13" "[oss-security] CVE-2018-8016 on Apache Cassandra" nil nil nil "6" "2018062522:11:50" "[oss-security] CVE-2018-8016 on Apache Cassandra" (number mark "U       zznate@apach Jun 26   13/609   " thread-indent "\"[oss-security] CVE-2018-8016 on Apache Cassandra\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27850 invoked by uid 550); 26 Jun 2018 00:19:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12270 invoked from network); 25 Jun 2018 22:12:05 -0000
X-Gm-Message-State: APt69E1wH81kvr5QwZ8T2GCy+yd9tPQCnGE2Ya3HSXY/J3/hYrGqq6Ho
	/mOtNmaLzwfRqIbIbuq87zWpMOCR0BC52RI7R/U=
X-Google-Smtp-Source: ADUXVKISY40u22WjlLlolgV2/qcHSyuPSs6sOaGVdMSJgKrPmiF4ycfi1mZhwr5lKZ5pya992H+0s/qyhK+EygtP1og=
X-Received: by 2002:a37:ae83:: with SMTP id x125-v6mr12439901qke.130.1529964711097;
 Mon, 25 Jun 2018 15:11:51 -0700 (PDT)
MIME-Version: 1.0
From: Nate McCall <zznate@apache.org>
Date: Tue, 26 Jun 2018 10:11:50 +1200
X-Gmail-Original-Message-ID: <CABsaHTOiWdPU_ycw14=1Z0N47+BHL-WiiwZEeFSxbzzo+u1ZFw@mail.gmail.com>
Message-ID: <CABsaHTOiWdPU_ycw14=1Z0N47+BHL-WiiwZEeFSxbzzo+u1ZFw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2018-8016 on Apache Cassandra

CVE-2018-8016 describes an issue with the default configuration of
Apache Cassandra releases 3.8 through 3.11.1 which binds an
unauthenticated JMX/RMI interface to all network interfaces allowing
attackers to execute arbitrary Java code via an RMI request. This
issue is a regression of the previously disclosed CVE-2015-0225.

The regression was introduced in
https://issues.apache.org/jira/browse/CASSANDRA-12109. The fix for the
regression is implemented in
https://issues.apache.org/jira/browse/CASSANDRA-14173. This fix is
contained in the 3.11.2 release of Apache Cassandra.

- The Apache Cassandra PMC
