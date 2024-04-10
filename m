Received: (qmail 21841 invoked by uid 550); 10 Apr 2024 15:38:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17883 invoked from network); 10 Apr 2024 15:17:11 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Bryan Call <bcall@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <b3c6a514-fe9d-f6ee-90a4-2d92ccc04a8a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Apr 2024 15:16:21 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-31309: Apache Traffic Server: HTTP/2 CONTINUATION frames
 can be utilized for DoS attack 

Severity: moderate

Affected versions:

- Apache Traffic Server 8.0.0 through 8.1.9
- Apache Traffic Server 9.0.0 through 9.2.3

Description:

HTTP/2 CONTINUATION=C2=A0DoS attack can cause Apache Traffic Server to cons=
ume more resources on the server.=C2=A0 Version from 8.0.0 through 8.1.9, f=
rom 9.0.0 through 9.2.3 are=C2=A0affected.

Users can set a new setting (proxy.config.http2.max_continuation_frames_per=
_minute) to limit the number of CONTINUATION frames per minute. =C2=A0ATS d=
oes have a fixed amount of memory a request can use and ATS adheres to thes=
e limits in previous releases.
Users are recommended to upgrade to versions 8.1.10 or 9.2.4 which fixes th=
e issue.

Credit:

Bartek Nowotarski (reporter)

References:

https://lists.apache.org/thread/f9qh3g3jvy153wh82pz4onrfj1wh13kc
https://trafficserver.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-31309

