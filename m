X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1176" "Sunday" "11" "February" "2018" "09:59:35" "+0100" "Philippe Mouawad" "pmouawad@apache.org" "<CAH9fUpYsFx1+rwz1A=mc7wAgbDHARyj1VrWNg41y9OySuL1mqw@mail.gmail.com>" "47" "[oss-security] CVE-2018-1287: Apache JMeter binds RMI server to wildcard in distributed mode (based on RMI)" "^Date:" nil nil "2" "2018021108:59:35" "[oss-security] CVE-2018-1287: Apache JMeter binds RMI server to wildcard in distributed mode (based on RMI)" (number mark "        pmouawad@apa Feb 11   47/1176  " thread-indent "\"[oss-security] CVE-2018-1287: Apache JMeter binds RMI server to wildcard in distributed mode (based on RMI)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18355 invoked by uid 550); 11 Feb 2018 09:01:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15883 invoked from network); 11 Feb 2018 08:59:48 -0000
X-Gm-Message-State: APf1xPDZ4Xa+QshIqI2546pt0G6NzIoaM09bz6qMY0CAJRBYGblfQohA
	DxghcEKWxdJiwmUKV8PRnB+WPiDTg6pv69ONDnw=
X-Google-Smtp-Source: AH8x227bqzVlufW7nilOQJEU2OGAoTMyGTgU/dMWX77wZ/7/ZqTNqhDHDw4D840g58ev0Ijz02GRA83V9wgxtbj0/+4=
X-Received: by 10.237.45.129 with SMTP id i1mr13374162qtd.126.1518339575674;
 Sun, 11 Feb 2018 00:59:35 -0800 (PST)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CAH9fUpYsFx1+rwz1A=mc7wAgbDHARyj1VrWNg41y9OySuL1mqw@mail.gmail.com>
Message-ID: <CAH9fUpYsFx1+rwz1A=mc7wAgbDHARyj1VrWNg41y9OySuL1mqw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="94eb2c0c642c0e7c750564ebfb7e"
Date: Sun, 11 Feb 2018 09:59:35 +0100
From: Philippe Mouawad <pmouawad@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2018-1287: Apache JMeter binds RMI server to wildcard in
 distributed mode (based on RMI)
To: JMeter Users List <user@jmeter.apache.org>, dev@jmeter.apache.org, announce@apache.org, 
	asf-security <security@apache.org>, oss-security@lists.openwall.com, 
	Brenden Meeder <fishing.for.jormungandr@gmail.com>

--94eb2c0c642c0e7c750564ebfb7e
Content-Type: text/plain; charset="UTF-8"

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected: JMeter 2.X, 3.X

Description:

When using Distributed Test only (RMI based), jmeter server binds RMI
Registry to wildcard host.
This could allow an attacker to get Access to JMeterEngine and send
unauthorized code.
This only affect tests running in Distributed mode.

Mitigation:

  * Users must use last version of Java 8 or Java 9
  * Users must upgrade to last JMeter 4.0 version

Besides, we remind users that in distributed mode, JMeter makes an
Architectural assumption
that it is operating on a 'safe' network. i.e. everyone with access to the
network is considered trusted.

This typically means a dedicated VPN or similar is being used.


Example:

  * Start JMeter server using either jmeter-server or jmeter -s
  * If JMeter listens on *:1099, you are vulnerable


Credit:
This issue was reported responsibly to the Apache Tomcat Security Team
by Brenden Meeder.

- Philippe Mouawad

on behalf of the Apache JMeter PMC

[0] https://bz.apache.org/bugzilla/show_bug.cgi?id=62039

--94eb2c0c642c0e7c750564ebfb7e--
