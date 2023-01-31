Received: (qmail 31764 invoked by uid 550); 31 Jan 2023 17:37:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32064 invoked from network); 31 Jan 2023 15:13:41 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <5056c1f3-fe9f-7a08-fdf6-9f90f12505d9@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 31 Jan 2023 15:13:23 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-28331: Apache Portable Runtime (APR):  Windows
 out-of-bounds write in apr_socket_sendv function 

Severity: moderate

Description:

On Windows, Apache Portable Runtime 1.7.0 and earlier may write beyond the =
end of a stack based buffer in apr_socket_sendv(). This is a result of inte=
ger overflow.

Credit:

Ronald Crane (Zippenhop LLC) (finder)

References:

https://apr.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2022-28331

