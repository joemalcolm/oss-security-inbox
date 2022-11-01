Received: (qmail 26413 invoked by uid 550); 1 Nov 2022 15:52:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28104 invoked from network); 1 Nov 2022 15:04:06 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: "Sean R. Owen" <srowen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7f49987d-5eae-7235-eaf2-ba4b9915c44b@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 01 Nov 2022 15:03:50 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-31777: Apache Spark XSS vulnerability in log viewer UI
 Javascript 

Severity: moderate

Description:

A stored cross-site scripting (XSS) vulnerability in Apache Spark 3.2.1 and=
 earlier, and 3.3.0, allows remote attackers to execute arbitrary JavaScrip=
t in the web browser of a user, by including a malicious payload into the l=
ogs which would be returned in logs rendered in the UI.

This issue is being tracked as SPARK-39505

Mitigation:

Upgrade to Apache Spark maintenance releases 3.2.2, or 3.3.1 or later

Credit:

Florian Walter (Veracode)

