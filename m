Received: (qmail 29705 invoked by uid 550); 16 Nov 2022 00:13:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24016 invoked from network); 15 Nov 2022 23:08:32 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Thomas Wolf <twolf@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <9de91c88-8c85-77d2-8846-07244ed4630e@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 15 Nov 2022 23:08:17 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-45047: Apache MINA SSHD: Java unsafe deserialization
 vulnerability 

Severity: important

Description:

Class org.apache.sshd.server.keyprovider.SimpleGeneratorHostKeyProvider in =
Apache MINA SSHD <=3D 2.9.1 uses Java deserialization to load a serialized =
java.security.PrivateKey. The class is one of several implementations that =
an implementor using Apache MINA SSHD can choose for loading the host keys =
of an SSH server.

Mitigation:

For Apache MINA SSHD <=3D 2.9.1, do not use org.apache.sshd.server.keyprovi=
der.SimpleGeneratorHostKeyProvider to generate and later load your server's=
 host key. Use separately generated host key files, for instance in OpenSSH=
 format, and load them via a org.apache.sshd.common.keyprovider.FileKeyPair=
Provider instead. Or use a custom implementation instead of SimpleGenerator=
HostKeyProvider that uses the OpenSSH format for storing and loading the ho=
st key (via classes OpenSSHKeyPairResourceWriter and OpenSSHKeyPairResource=
Parser).

The issue was fixed in Apache MINA SSHD 2.9.2.=20

Credit:

The Apache MINA SSHD team would like to thank Zhang Zewei, NOFOCUS, for rep=
orting this issue.

