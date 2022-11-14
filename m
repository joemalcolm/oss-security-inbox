Received: (qmail 8042 invoked by uid 550); 14 Nov 2022 13:33:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30447 invoked from network); 14 Nov 2022 13:27:54 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arnout Engelen <engelen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <22eef24e-713c-9a69-36f7-06cc2c8df835@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 14 Nov 2022 13:27:39 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-45378: Apache SOAP allows unauthenticated users to
 potentially invoke arbitrary code 

Severity: moderate

Description:

** UNSUPPORTED WHEN ASSIGNED ** In the default configuration of Apache SOAP=
, an RPCRouterServlet is available without authentication. This gives an at=
tacker the possibility to invoke methods on the classpath that meet certain=
 criteria. Depending on what classes are available on the classpath this mi=
ght even lead to arbitrary remote code execution. NOTE: This vulnerability =
only affects products that are no longer supported by the maintainer.

Credit:

  Apache would like to thank TsungShu Chiu (CHT Security) for reporting thi=
s issue

