Received: (qmail 22222 invoked by uid 550); 20 Apr 2023 14:57:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18234 invoked from network); 20 Apr 2023 14:50:46 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arnout Engelen <engelen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <fd13634f-8b54-c0f2-295d-f77a9dff65fd@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 20 Apr 2023 14:50:32 +0000
MIME-Version: 1.0
Subject: [oss-security] =?UTF-8?Q?CVE-2023-25601=3A_Apache_DolphinSchedule?=
 =?UTF-8?Q?r_3=2E0=2E0_to_3=2E1=2E1_python_gateway_?=
 =?UTF-8?Q?has=C2=A0improper_authentication=20?=

Severity: important

Description:

On version 3.0.0 through 3.1.1, Apache DolphinScheduler's python gateway su=
ffered from improper authentication: an attacker could use a socket bytes a=
ttack without authentication. This issue has been fixed from version 3.1.2 =
onwards. For users who use version 3.0.0 to 3.1.1, you can turn off the pyt=
hon-gateway function by changing the value `python-gateway.enabled=3Dfalse`=
 in configuration file `application.yaml`. If you are using the python gate=
way, please upgrade to version 3.1.2 or above.

References:

https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-25601

