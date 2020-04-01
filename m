X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1418" "Wednesday" "1" "April" "2020" "10:57:20" "+0100" "Colm O hEigeartaigh" "coheigea@apache.org" "<CAB8XdGDCati--2zruoauZNU0Lta66Y3VmYX6EzGyznvRu0irhg@mail.gmail.com>" "46" "[oss-security] CVE-2020-1954: Apache CXF JMX Integration is vulnerable to a MITM attack" nil nil nil "4" "2020040109:57:20" "[oss-security] CVE-2020-1954: Apache CXF JMX Integration is vulnerable to a MITM attack" (number mark "U       coheigea@apa Apr  1   46/1418  " thread-indent "\"[oss-security] CVE-2020-1954: Apache CXF JMX Integration is vulnerable to a MITM attack\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-1954: Apache CXF JMX Integration is vulnerable to a MITM attack" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32692 invoked by uid 550); 1 Apr 2020 11:02:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9746 invoked from network); 1 Apr 2020 09:57:44 -0000
X-Gm-Message-State: ANhLgQ32E6FIDMCP+acJ82ap3DmbiNTNnwuvpvjC9uJTtZqXIPthB4iR
	4sColRTWY6BJ1PwLpR1peEWT6SfZ3mVShPzYwJQ=
X-Google-Smtp-Source: ADFU+vu41654TvX4iNlwtXt4W4ODtBGg753QlJvL/zHZ8xCVIaTss2QAX6BvUnQOuQBf3xRbyIULIbQo4DysxkGIkVo=
X-Received: by 2002:a05:6638:11c5:: with SMTP id g5mr17236500jas.53.1585735051413;
 Wed, 01 Apr 2020 02:57:31 -0700 (PDT)
MIME-Version: 1.0
From: Colm O hEigeartaigh <coheigea@apache.org>
Date: Wed, 1 Apr 2020 10:57:20 +0100
X-Gmail-Original-Message-ID: <CAB8XdGDCati--2zruoauZNU0Lta66Y3VmYX6EzGyznvRu0irhg@mail.gmail.com>
Message-ID: <CAB8XdGDCati--2zruoauZNU0Lta66Y3VmYX6EzGyznvRu0irhg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000072928105a237b679"
Subject: [oss-security] CVE-2020-1954: Apache CXF JMX Integration is vulnerable to a MITM attack

--00000000000072928105a237b679
Content-Type: text/plain; charset="UTF-8"

CVE-2020-1954: Apache CXF JMX Integration is vulnerable to a MITM attack

Severity: Moderate

Vendor: The Apache Software Foundation

Versions Affected:

This vulnerability affects all versions of Apache CXF prior to 3.3.6 and
3.2.13.

Description:

Apache CXF has the ability to integrate with JMX by registering an
InstrumentationManager extension with the CXF bus. If the
"createMBServerConnectorFactory" property of the default
InstrumentationManagerImpl is not disabled, then it is vulnerable to a
man-in-the-middle (MITM) style attack.

An attacker on the same host can connect to the registry and rebind the
entry
to another server, thus acting as a proxy to the original. They are then
able
to gain access to all of the information that is sent and received over JMX.

Mitigation:

Users of Apache CXF that use the InstrumentationManagerImpl should update to
either 3.3.6 or 3.2.13. Alternatively, set the
createMBServerConnectorFactory
property to false and use the default JVM JMX remote capabilities instead.
From
CXF 3.4.0, the createMBServerConnectorFactory property will be removed
altogether.

Credit:

Jonathan Gallimore, Tomitribe and Colm O hEigeartaigh, Talend.

Reference:
http://cxf.apache.org/security-advisories.data/CVE-2020-1954.txt.asc?version=1&modificationDate=1585730169000&api=v2

--00000000000072928105a237b679--
