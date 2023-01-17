Received: (qmail 5780 invoked by uid 550); 17 Jan 2023 19:16:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32356 invoked from network); 17 Jan 2023 19:11:20 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <1801fa47-41b7-1771-f1fa-d3484c109fd4@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 17 Jan 2023 19:09:35 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-37436: Apache HTTP Server: mod_proxy prior to 2.4.55
 allows a backend to trigger HTTP response splitting 

Severity: moderate

Description:

Prior to Apache HTTP Server 2.4.55, a malicious backend can cause the respo=
nse headers to be truncated early, resulting in some headers being incorpor=
ated into the response body. If the later headers have any security purpose=
, they will not be interpreted by the client.

Credit:

Dimas Fariski Setyawan Putra (@nyxsorcerer) (finder)

References:

https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2022-37436

Timeline:

2022-07-14: Reported to security team

