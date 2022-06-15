Received: (qmail 18171 invoked by uid 550); 15 Jun 2022 12:44:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9858 invoked from network); 15 Jun 2022 12:24:35 -0000
Content-Type: text/plain; charset=utf-8
From: David Handermann <exceptionfactory@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <3435330c-e8dd-f9b7-6ff1-4a9bb76bb12b@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Jun 2022 12:24:22 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-33140: Apache NiFi, Apache NiFi Registry: Improper
 Neutralization of Command Elements in Shell User Group Provider 

Severity: high

Description:

The optional ShellUserGroupProvider in Apache NiFi 1.10.0 to 1.16.2 and Apa=
che NiFi Registry 0.6.0 to 1.16.2 does not neutralize arguments for group r=
esolution commands, allowing injection of operating system commands on Linu=
x and macOS platforms.

The ShellUserGroupProvider is not included in the default configuration. Co=
mmand injection requires ShellUserGroupProvider to be one of the enabled Us=
er Group Providers in the Authorizers configuration. Command injection also=
 requires an authenticated user with elevated privileges.  Apache NiFi requ=
ires an authenticated user with authorization to modify access policies in =
order to execute the command. Apache NiFi Registry requires an authenticate=
d user with authorization to read user groups in order to execute the comma=
nd.

The resolution removes command formatting based on user-provided arguments.

This issue is being tracked as NIFI-10114

Mitigation:

Disabling the ShellUserGroupProvider mitigates the vulnerability.

