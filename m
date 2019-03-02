X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1667" "Saturday" "2" "March" "2019" "18:18:44" "+0100" "Philippe Mouawad" "pmouawad@apache.org" "<CAH9fUpaUQaFbgY1Zh4OvKSL4wdvGAmVt+n4fegibDoAxK5XARw@mail.gmail.com>" "50" "[oss-security] [SECURITY] CVE-2019-0187: Apache JMeter Missing client auth for RMI connection when distributed test is used" nil nil nil "3" "2019030217:18:44" "[oss-security] [SECURITY] CVE-2019-0187: Apache JMeter Missing client auth for RMI connection when distributed test is used" (number mark "U       pmouawad@apa Mar  2   50/1667  " thread-indent "\"[oss-security] [SECURITY] CVE-2019-0187: Apache JMeter Missing client auth for RMI connection when distributed test is used\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7776 invoked by uid 550); 2 Mar 2019 22:44:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20000 invoked from network); 2 Mar 2019 17:19:11 -0000
X-Gm-Message-State: APjAAAUw5MKY6Dwx4AJbuv4g6dKkkKI03tjOWHhPhcxb1EUn7yGUJmPT
	d6b0xEOgOPPqfjH5j/yuB318CjNyxVLq8w9jvOs=
X-Google-Smtp-Source: APXvYqz04xIcBSbxDHvILQJh1/k92Ac6kwjbIaf8GcvQ7lLXgkPpabHJ2APEIlCoFvATpI9RaHaMtrxbYRcEnrCh+/8=
X-Received: by 2002:a17:906:35d8:: with SMTP id p24mr7238937ejb.112.1551547136180;
 Sat, 02 Mar 2019 09:18:56 -0800 (PST)
MIME-Version: 1.0
From: Philippe Mouawad <pmouawad@apache.org>
Date: Sat, 2 Mar 2019 18:18:44 +0100
X-Gmail-Original-Message-ID: <CAH9fUpaUQaFbgY1Zh4OvKSL4wdvGAmVt+n4fegibDoAxK5XARw@mail.gmail.com>
Message-ID: <CAH9fUpaUQaFbgY1Zh4OvKSL4wdvGAmVt+n4fegibDoAxK5XARw@mail.gmail.com>
To: ApacheJMeter dev list <dev@jmeter.apache.org>, JMeter Users List <user@jmeter.apache.org>, announce@apache.org, 
	asf-security <security@apache.org>, oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000e7875305831fb747"
Subject: [oss-security] [SECURITY] CVE-2019-0187: Apache JMeter Missing client auth for RMI
 connection when distributed test is used

--000000000000e7875305831fb747
Content-Type: text/plain; charset="UTF-8"

This is a security notification for Apache JMeter:

CVE-2019-0187
Severity: Important
Vendor: The Apache Software Foundation
Affected Versions : JMeter 4.0, 5.0

Description [0]:

Unauthenticated RCE is possible when JMeter is used in distributed mode (-r
or -R command line options).
Attacker can establish a RMI connection to a jmeter-server using
RemoteJMeterEngine and proceed with an attack using untrusted data
deserialization.
This only affect tests running in Distributed mode.
Note that versions before 4.0 are not able to encrypt traffic between the
nodes, nor authenticate the participating nodes so even for those versions,
upgrade to JMeter 5.1 is
also advised.

Mitigation:
  * Users must use last minor version of Java 8 to Java 11
  * Users must upgrade to last JMeter 5.1 version and use the default /
enabled authenticated SSL RMI connection.

Besides, we remind users that in distributed mode, JMeter makes an
Architectural assumption
that it is operating on a 'safe' network. i.e. everyone with access to the
network is considered trusted.

This typically means a dedicated VPN or similar is being used.

Example:
  * Start JMeter server using either jmeter-server or jmeter -s
  * Using another keystore file, if you're able to connect to first server
instance and you don't get "SSLHandshakeException: Received fatal alert:
bad_certificate", you are vulnerable

Credit:
This issue was reported responsibly to the Apache Security Team by Brenden
Meeder.

- The Apache JMeter Team

[0] https://bz.apache.org/bugzilla/show_bug.cgi?id=62743

--000000000000e7875305831fb747--
