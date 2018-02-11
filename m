X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1297" "Sunday" "11" "February" "2018" "09:59:05" "+0100" "Philippe Mouawad" "pmouawad@apache.org" "<CAH9fUpaNzk5am8oFe07RQ-kynCsQv54yB-uYs9bEnz7tbX-O7g@mail.gmail.com>" "46" "[oss-security] CVE-2018-1297: Apache JMeter uses an unsecure RMI connection in Distributed mode" "^Date:" nil nil "2" "2018021108:59:05" "[oss-security] CVE-2018-1297: Apache JMeter uses an unsecure RMI connection in Distributed mode" (number mark "        pmouawad@apa Feb 11   46/1297  " thread-indent "\"[oss-security] CVE-2018-1297: Apache JMeter uses an unsecure RMI connection in Distributed mode\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17788 invoked by uid 550); 11 Feb 2018 09:01:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15555 invoked from network); 11 Feb 2018 08:59:21 -0000
X-Gm-Message-State: APf1xPBdxeWJq+EuI5bTSp67WhJeZ3kgP2zHHB78tXnB0/hlU2Ehn4xH
	Ohf7ENalcE7pxzQei/uuDYf4wmXgZCTH4DxzdE8=
X-Google-Smtp-Source: AH8x225aN+Dw0ll6diFNKJfhRgSV3dmY+tObOVibw2jPFypH58e7mCJPF8tM8/GdcrfeczS/BVDNCtdHufmPMkXGaRU=
X-Received: by 10.55.92.133 with SMTP id q127mr12022535qkb.225.1518339546326;
 Sun, 11 Feb 2018 00:59:06 -0800 (PST)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CAH9fUpaNzk5am8oFe07RQ-kynCsQv54yB-uYs9bEnz7tbX-O7g@mail.gmail.com>
Message-ID: <CAH9fUpaNzk5am8oFe07RQ-kynCsQv54yB-uYs9bEnz7tbX-O7g@mail.gmail.com>
Content-Type: multipart/alternative; boundary="001a114e3d724eacd60564ebf96f"
Date: Sun, 11 Feb 2018 09:59:05 +0100
From: Philippe Mouawad <pmouawad@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2018-1297: Apache JMeter uses an unsecure RMI connection in
 Distributed mode
To: JMeter Users List <user@jmeter.apache.org>, dev@jmeter.apache.org, announce@apache.org, 
	asf-security <security@apache.org>, oss-security@lists.openwall.com, 
	Brenden Meeder <fishing.for.jormungandr@gmail.com>

--001a114e3d724eacd60564ebf96f
Content-Type: text/plain; charset="UTF-8"

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected: JMeter 2.X, 3.X

Description [0]:

When using Distributed Test only (RMI based), jmeter uses an unsecured RMI
connection.
This could allow an attacker to get Access to JMeterEngine and send
unauthorized code.
This only affect tests running in Distributed mode.

Mitigation:
  * Users must use last version of Java 8 or Java 9
  * Users must upgrade to last JMeter 4.0 version and use the default /
enabled authenticated SSL RMI connection.

Besides, we remind users that in distributed mode, JMeter makes an
Architectural assumption
that it is operating on a 'safe' network. i.e. everyone with access to the
network is considered trusted.

This typically means a dedicated VPN or similar is being used.


Example:
  * Start JMeter server using either jmeter-server or jmeter -s
  * If JMeter listens on unsecure rmi connection (ie you can connect to it
using a JMeter client), you are vulnerable

Credit:
This issue was reported responsibly to the Apache Tomcat Security Team
by Brenden Meeder.

- Philippe Mouawad

on behalf of the Apache JMeter PMC

[0] https://bz.apache.org/bugzilla/show_bug.cgi?id=62039

--001a114e3d724eacd60564ebf96f--
