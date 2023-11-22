Received: (qmail 4058 invoked by uid 550); 22 Nov 2023 08:19:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3596 invoked from network); 22 Nov 2023 04:31:41 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Wenjun Ruan <wenjun@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <375127d6-abc0-16b3-af1f-858e248d9657@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 22 Nov 2023 04:31:28 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-45875: Apache DolphinScheduler: Remote command execution
 Vulnerability in script alert plugin 

Severity: low

Affected versions:

- Apache DolphinScheduler 3.0 through 3.0.1
- Apache DolphinScheduler 3.1 through 3.1.0

Description:

Improper validation of script alert plugin parameters in Apache DolphinSche=
duler to avoid remote command execution vulnerability.  This issue affects =
Apache DolphinScheduler version 3.0.1 and prior versions; version 3.1.0 and=
 prior versions.
This attack can be performed only by authenticated users which can login to=
 DS.

Credit:

4ra1n of Chaitin Tech (finder)

References:

https://lists.apache.org/thread/r0wqzkjsoq17j6ww381kmpx3jjp9hb6r
https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2022-45875

