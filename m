Received: (qmail 20410 invoked by uid 550); 2 May 2026 18:15:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28263 invoked from network); 2 May 2026 16:00:55 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: =?UTF-8?Q?Jean-Baptiste_Onofr=C3=A9?= <jbonofre@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <91977353-de53-5891-fc31-e0702938fc1c@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 02 May 2026 15:59:53 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-42809: Apache Polaris: An authenticated low-privileged
 user can abuse Polaris staged table creation to mint broad temporary
 storage credentials for an attacker-chosen location before Polaris
 validates that location 

Severity: important=20

Affected versions:

- Apache Polaris before 1.4.1

Description:

Apache Polaris can issue broad temporary ("vended") storage credentials dur=
ing
staged
table creation before the effective table location has been validated or
durably reserved.=20
Those temporary credentials are meant to limit the scope
of
accessible table data and metadata, but this scope limitation becomes
attacker-
directed because the attacker can choose a reachable target location.



In the confirmed variant, if the caller supplies a custom `location` during
stage create and requests credential vending, Apache Polaris uses that loca=
tion to
construct delegated storage credentials immediately. The stage-create path
itself neither runs the normal location validation nor the overlap checks
before those credentials are issued.



Closely related to that, the staged-create flow also accepts
`write.data.path` / `write.metadata.path` in the request properties and
feeds
those location overrides into the same effective table location set used for
credential vending. Those fields are secondary to the main custom-`location`
exploit, but they are still attacker-influenced location inputs that should
be
validated before any credentials are issued.

References:

https://polaris.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2026-42809

