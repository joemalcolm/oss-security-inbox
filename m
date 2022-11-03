Received: (qmail 18097 invoked by uid 550); 3 Nov 2022 11:33:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3268 invoked from network); 3 Nov 2022 11:12:42 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Richard Eckart de Castilho <rec@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <39087948-8913-135e-b69d-bf6d1632266b@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 03 Nov 2022 11:12:27 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-32287: Apache UIMA prior to 3.3.1 has a path traversal
 vulnerability when extracting (PEAR) archives 

Severity: low

Description:

A relative path traversal vulnerability in a FileUtil class used by the PEA=
R management component of Apache UIMA allows an attacker to create files ou=
tside the designated target directory using carefully crafted ZIP entry nam=
es. This issue affects Apache UIMA Apache UIMA version 3.3.0 and prior vers=
ions.=20

Note that PEAR files should never be installed into an UIMA installation fr=
om untrusted sources because PEAR archives are executable plugins that will=
 be able to perform any actions with the same privileges as the host Java V=
irtual Machine.

Credit:

Apache UIMA would like to thank Huangzhicong from CodeSafe Team of Legendse=
c at Qi'anxin Group

