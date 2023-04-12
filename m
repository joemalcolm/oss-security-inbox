Received: (qmail 25770 invoked by uid 550); 12 Apr 2023 15:43:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22477 invoked from network); 12 Apr 2023 15:39:29 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Angela Schreiber <angela@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <13ae48ed-68df-186b-ca74-2b6e1cb56a33@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 12 Apr 2023 15:39:15 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-45064: Apache Sling Engine: Include-based XSS 

Description:

The SlingRequestDispatcher doesn't correctly implement the RequestDispatche=
r API resulting in a generic type of include-based cross-site scripting iss=
ues on the Apache Sling level. The vulnerability is exploitable by an attac=
ker that is able to include a resource with specific content-type and contr=
ol the include path (i.e. writing content). The impact of a successful atta=
ck is privilege escalation to administrative power.




Please update to Apache Sling Engine >=3D 2.14.0 and enable the "Check Cont=
ent-Type overrides" configuration option.

Credit:

Lars Krapf (reporter)

References:

https://sling.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2022-45064

