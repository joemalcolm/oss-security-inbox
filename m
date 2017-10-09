X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1298" "Monday" "9" "October" "2017" "10:09:37" "-0700" "Patrick Hunt" "phunt@apache.org" "<CANLc_9KJTmetFt6MrsFQm+adr-1w2VeGYyMJMVVZ281-3UmJKw@mail.gmail.com>" "35" "[oss-security] [SECURITY] CVE-2017-5637: DOS attack on wchp/wchc four letter words (4lw)" nil nil nil "10" "2017100917:09:37" "[oss-security] [SECURITY] CVE-2017-5637: DOS attack on wchp/wchc four letter words (4lw)" (number mark "U       phunt@apache Oct  9   35/1298  " thread-indent "\"[oss-security] [SECURITY] CVE-2017-5637: DOS attack on wchp/wchc four letter words (4lw)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9322 invoked by uid 550); 9 Oct 2017 22:05:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16185 invoked from network); 9 Oct 2017 17:10:35 -0000
X-Gm-Message-State: AMCzsaW20xnJF+M3nSbvMIiqkaAcBIzniC9roYtS/m2d1VdQXRZU0Gmw
	I/QCZen18wQiecj0oyn4zKG9Q40yUAlXFUv3hck=
X-Google-Smtp-Source: AOwi7QB8fUyjj3sr11460y4TJSi5Z7F2omvg5iVz76QjdxwHRZ3P/Rg2BOOOJqrbglYagGrlJNoPvSxI2JkXHVtjhyw=
X-Received: by 10.223.141.139 with SMTP id o11mr9522594wrb.20.1507569017820;
 Mon, 09 Oct 2017 10:10:17 -0700 (PDT)
MIME-Version: 1.0
From: Patrick Hunt <phunt@apache.org>
Date: Mon, 9 Oct 2017 10:09:37 -0700
X-Gmail-Original-Message-ID: <CANLc_9KJTmetFt6MrsFQm+adr-1w2VeGYyMJMVVZ281-3UmJKw@mail.gmail.com>
Message-ID: <CANLc_9KJTmetFt6MrsFQm+adr-1w2VeGYyMJMVVZ281-3UmJKw@mail.gmail.com>
To: DevZooKeeper <dev@zookeeper.apache.org>, UserZooKeeper <user@zookeeper.apache.org>, 
	announce@apache.org, security <security@apache.org>, security@zookeeper.apache.org, 
	oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="f403045f54c8c8a1a4055b20435c"
Subject: [oss-security] [SECURITY] CVE-2017-5637: DOS attack on wchp/wchc four letter words (4lw)

--f403045f54c8c8a1a4055b20435c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

CVE-2017-5637: DOS attack on wchp/wchc four letter words (4lw)

Severity: moderate
Vendor:
The Apache Software Foundation
Versions Affected:
ZooKeeper 3.4.0 to 3.4.9
ZooKeeper 3.5.0 to 3.5.2
The unsupported ZooKeeper 1.x through 3.3.x versions may be also affected
Note: The 3.5 branch is still beta at this time.

Description:
Two four letter word commands =E2=80=9Cwchp/wchc=E2=80=9D are CPU intensive=
 and could cause
spike of CPU utilization on ZooKeeper server if abused,
which leads to the server unable to serve legitimate client requests. There
is no known compromise which takes advantage of this vulnerability.

Mitigation:
This affects ZooKeeper ensembles whose client port is publicly accessible,
so it is recommended to protect ZooKeeper ensemble with firewall.
Documentation has also been updated to clarify on this point. In addition,
a patch (ZOOKEEPER-2693) is provided to disable "wchp/wchc=E2=80=9D commands
by default.
- ZooKeeper 3.4.x users should upgrade to 3.4.10 or apply the patch.
- ZooKeeper 3.5.x users should upgrade to 3.5.3 or apply the patch.

References
[1] https://issues.apache.org/jira/browse/ZOOKEEPER-2693

--f403045f54c8c8a1a4055b20435c--
