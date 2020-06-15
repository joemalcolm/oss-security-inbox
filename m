X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["871" "Monday" "15" "June" "2020" "13:45:21" "+0100" "Jonathan Gallimore" "jgallimore@apache.org" "<CAGRgoZiPvmkmdrS1JjMCK-qPiJ+zATuv19jTTjz=orE_z-pYBg@mail.gmail.com>" "32" "[oss-security] CVE-2020-11969 Apache TomEE - useJMX attribute on ActiveMQ resource adapter URI causes authenticated JMX port to be open" nil nil nil "6" "2020061512:45:21" "[oss-security] CVE-2020-11969 Apache TomEE - useJMX attribute on ActiveMQ resource adapter URI causes authenticated JMX port to be open" (number mark "U       jgallimore@a Jun 15   32/871   " thread-indent "\"[oss-security] CVE-2020-11969 Apache TomEE - useJMX attribute on ActiveMQ resource adapter URI causes authenticated JMX port to be open\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-11969 Apache TomEE - useJMX attribute on ActiveMQ resource adapter URI causes authenticated JMX port to be open" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3075 invoked by uid 550); 15 Jun 2020 12:52:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31861 invoked from network); 15 Jun 2020 12:45:45 -0000
X-Gm-Message-State: AOAM530VeMFLz7HuoFRJjE0PFZ5jbTAa82sQHQ9sW2ETsJDxLLatWva4
	FvJM6isZLrz5qUdDA+cUiG7MGFebg6b77wckC1g=
X-Google-Smtp-Source: ABdhPJxcEhS5QZgHa4nlH68WZ0GU7rP5hIpDILXp++UUC+CadLK6VJBad8WGE9jxmglbpxqO5pHIJAw7c3Ru5cStwqw=
X-Received: by 2002:a05:651c:200a:: with SMTP id s10mr12887951ljo.19.1592225131782;
 Mon, 15 Jun 2020 05:45:31 -0700 (PDT)
MIME-Version: 1.0
From: Jonathan Gallimore <jgallimore@apache.org>
Date: Mon, 15 Jun 2020 13:45:21 +0100
X-Gmail-Original-Message-ID: <CAGRgoZiPvmkmdrS1JjMCK-qPiJ+zATuv19jTTjz=orE_z-pYBg@mail.gmail.com>
Message-ID: <CAGRgoZiPvmkmdrS1JjMCK-qPiJ+zATuv19jTTjz=orE_z-pYBg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000061e66405a81ecdb7"
Subject: [oss-security] CVE-2020-11969 Apache TomEE - useJMX attribute on ActiveMQ resource
 adapter URI causes authenticated JMX port to be open

--00000000000061e66405a81ecdb7
Content-Type: text/plain; charset="UTF-8"

CVE-2020-11969: Apache TomEE - useJMX attribute on ActiveMQ resource
adapter URI causes authenticated JMX port to be open

Severity: High

Vendor: The Apache Software Foundation

Versions Affected:
Apache TomEE 8.0.0-M1 - 8.0.1
Apache TomEE 7.1.0 - 7.1.2
Apache TomEE 7.0.0-M1 - 7.0.7
Apache TomEE 1.0.0 - 1.7.5

Description:
If Apache TomEE is configured to use the embedded ActiveMQ broker, and the
broker URI includes the useJMX=true parameter, a JMX port is opened on TCP
port 1099, which does not include authentication.

Mitigation:
- Upgrade to TomEE 7.0.8 or later
- Upgrade to TomEE 7.1.3 or later
- Upgrade to TomEE 8.0.2 or later

Alternatively, users may wish to remove the useJMX option from the URI (the
default is false).

- The Apache TomEE team.

--00000000000061e66405a81ecdb7--
