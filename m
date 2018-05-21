X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/05/21/6
Message-ID: <CANLc_9LvCcPaG9zZzKH8MFEcaaGgUjLyJrgA+7xVqNK6MJQZKA@mail.gmail.com>
Date: Mon, 21 May 2018 09:51:42 -0700
From: Patrick Hunt <phunt@...che.org>
To: announce@...che.org, DevZooKeeper <dev@...keeper.apache.org>,  UserZooKeeper <user@...keeper.apache.org>, security@...keeper.apache.org,  oss-security@...ts.openwall.com
Subject: [CVE-2018-8012] Apache ZooKeeper Quorum Peer mutual authentication
Content-Type: text/plain; charset=utf-8

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
This issue was identified by Földi Tamás and Eugene Koontz

References:
https://issues.apache.org/jira/browse/ZOOKEEPER-1045
https://cwiki.apache.org/confluence/display/ZOOKEEPER/Server-Server+mutual+authentication
http://zookeeper.apache.org/doc/current/zookeeperAdmin.html

