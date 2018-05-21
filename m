X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1276" "Monday" "21" "May" "2018" "09:51:42" "-0700" "Patrick Hunt" "phunt@apache.org" "<CANLc_9LvCcPaG9zZzKH8MFEcaaGgUjLyJrgA+7xVqNK6MJQZKA@mail.gmail.com>" "40" "[oss-security] [CVE-2018-8012] Apache ZooKeeper Quorum Peer mutual authentication" nil nil nil "5" "2018052116:51:42" "[oss-security] [CVE-2018-8012] Apache ZooKeeper Quorum Peer mutual authentication" (number mark "U       phunt@apache May 21   40/1276  " thread-indent "\"[oss-security] [CVE-2018-8012] Apache ZooKeeper Quorum Peer mutual authentication\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29935 invoked by uid 550); 21 May 2018 16:57:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23584 invoked from network); 21 May 2018 16:52:34 -0000
X-Gm-Message-State: ALKqPwep1TZLJenBPg70VK77YTHUz/0Yu1LMgaNLo9wIykEv7VoVq4YX
	yb9Y3Xbbc1RkkdzJEJJ4Oto1t4k8+Wu10B1gtDg=
X-Google-Smtp-Source: AB8JxZob+v2kFrS/K4VHCELR+WXaWSPxggBWz1oQMtlP9vnQt87u2yr0d8Zhhh2CVxwX71KCIPcoH4Qcs+WYY1Qw05A=
X-Received: by 2002:adf:9814:: with SMTP id v20-v6mr16667624wrb.93.1526921538987;
 Mon, 21 May 2018 09:52:18 -0700 (PDT)
MIME-Version: 1.0
From: Patrick Hunt <phunt@apache.org>
Date: Mon, 21 May 2018 09:51:42 -0700
X-Gmail-Original-Message-ID: <CANLc_9LvCcPaG9zZzKH8MFEcaaGgUjLyJrgA+7xVqNK6MJQZKA@mail.gmail.com>
Message-ID: <CANLc_9LvCcPaG9zZzKH8MFEcaaGgUjLyJrgA+7xVqNK6MJQZKA@mail.gmail.com>
To: announce@apache.org, DevZooKeeper <dev@zookeeper.apache.org>, 
	UserZooKeeper <user@zookeeper.apache.org>, security@zookeeper.apache.org, 
	oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000ee6c9c056cba1f52"
Subject: [oss-security] [CVE-2018-8012] Apache ZooKeeper Quorum Peer mutual authentication

--000000000000ee6c9c056cba1f52
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

CVE-2018-8012: Apache ZooKeeper Quorum Peer mutual authentication

Severity: Critical

Vendor:
The Apache Software Foundation

Versions Affected:
ZooKeeper prior to 3.4.10
ZooKeeper 3.5.0-alpha through 3.5.3-beta
The unsupported ZooKeeper 1.x through 3.3.x versions may be also affected

Description:
No authentication/authorization is enforced when a server attempts to join
a quorum. As a result an arbitrary end point could join the cluster and
begin propagating counterfeit changes to the leader.

Mitigation:
Upgrade to 3.4.10 or later (3.5.4-beta or later if on the 3.5 branch) and
enable Quorum Peer mutual authentication.

Alternately ensure the ensemble election/quorum communication is protected
by a firewall as this will mitigate the issue.

See the documentation for more details on correct cluster administration.

Credit:
This issue was identified by F=C3=B6ldi Tam=C3=A1s and Eugene Koontz

References:
https://issues.apache.org/jira/browse/ZOOKEEPER-1045
https://cwiki.apache.org/confluence/display/ZOOKEEPER/Server-Server+mutual+=
authentication
http://zookeeper.apache.org/doc/current/zookeeperAdmin.html

--000000000000ee6c9c056cba1f52--
