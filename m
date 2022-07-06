Received: (qmail 28049 invoked by uid 550); 6 Jul 2022 13:08:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22070 invoked from network); 6 Jul 2022 12:52:02 -0000
Content-Type: text/plain; charset=utf-8
From: Matt Juntunen <mattjuntunen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <9d586031-2bef-83a8-e50c-04eec1ea4755@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 06 Jul 2022 12:51:49 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-33980: Apache Commons Configuration insecure
 interpolation defaults 

Severity: Moderate

Description:

Apache Commons Configuration performs variable interpolation, allowing prop=
erties to be dynamically evaluated and expanded. The standard format for in=
terpolation is "${prefix:name}", where "prefix" is used to locate an instan=
ce of org.apache.commons.configuration2.interpol.Lookup that performs the i=
nterpolation. Starting with version 2.4 and continuing through 2.7, the set=
 of default Lookup instances included interpolators that could result in ar=
bitrary code execution or contact with remote servers. These lookups are:
- "script" - execute expressions using the JVM script execution engine (jav=
ax.script)
- "dns" - resolve dns records
- "url" - load values from urls, including from remote servers

Applications using the interpolation defaults in the affected versions may =
be vulnerable to remote code execution or unintentional contact with remote=
 servers if untrusted configuration values are used.

Users are recommended to upgrade to Apache Commons Configuration 2.8.0, whi=
ch disables the problematic interpolators by default.

Mitigation:

Upgrade to version Apache Commons Configuration 2.8.0

