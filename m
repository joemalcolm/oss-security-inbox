Received: (qmail 11344 invoked by uid 550); 23 Oct 2022 21:19:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7981 invoked from network); 23 Oct 2022 15:05:14 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Josh Fischer <joshfischer@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <de7dfa60-f860-951d-5a58-8a60b7341b89@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 23 Oct 2022 15:04:39 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-42010: Apache Heron (Incubating): CRLF log injection 

Severity: low

Description:

Heron versions <=3D 0.20.4-incubating allows CRLF log injection because of =
the lack of escaping in the log statements.  Please update to version 0.20.=
5-incubating which addresses this issue.=20

Credit:

The Apache Heron (Incubating) project would like to thank Bo Yu for bringin=
g this matter to our attention.

