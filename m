Received: (qmail 3148 invoked by uid 550); 5 Sep 2022 10:07:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1201 invoked from network); 5 Sep 2022 08:43:09 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Haonan Hou <haonan@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <492c9a55-ddbd-57d7-d6ad-a4a0b7e72cf4@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 05 Sep 2022 08:42:49 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-38370: Apache IoTDB: No authorization of
 DatabaseConnectController in grafana-connector.  

Description:

Apache IoTDB grafana-connector version 0.13.0 contains an interface without=
 authorization, which may expose the internal structure of database. Users =
should upgrade to version 0.13.1 which addresses this issue.

