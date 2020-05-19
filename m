X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1430" "Tuesday" "19" "May" "2020" "16:05:37" "+0200" "Jan Lehnardt" "jan@apache.org" "<FC2E54FA-15CB-4732-9E1B-FB35F7A01EEB@apache.org>" "42" "[oss-security] [CVE-2020-1955] Apache CouchDB Remote Privilege Escalation" nil nil nil "5" "2020051914:05:37" "[oss-security] [CVE-2020-1955] Apache CouchDB Remote Privilege Escalation" (number mark "U       jan@apache.o May 19   42/1430  " thread-indent "\"[oss-security] [CVE-2020-1955] Apache CouchDB Remote Privilege Escalation\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-1955] Apache CouchDB Remote Privilege Escalation" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14186 invoked by uid 550); 19 May 2020 14:27:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32212 invoked from network); 19 May 2020 14:05:51 -0000
From: Jan Lehnardt <jan@apache.org>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_8E614D16-EC4F-4F9A-9F5C-6ECF3DD563F7"
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.14\))
Message-Id: <FC2E54FA-15CB-4732-9E1B-FB35F7A01EEB@apache.org>
Date: Tue, 19 May 2020 16:05:37 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.104.14)
Subject: [oss-security] [CVE-2020-1955] Apache CouchDB Remote Privilege Escalation

--Apple-Mail=_8E614D16-EC4F-4F9A-9F5C-6ECF3DD563F7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Description
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

CouchDB version 3.0.0 shipped with a new configuration setting that
governs access control to the entire database server called
`require_valid_user_except_for_up`. It was meant as an extension to the
long-standing setting `require_valid_user`, which in turn requires that
any and all requests to CouchDB will have to be made with valid
credentials, effectively forbidding any anonymous requests.

The new `require_valid_user_except_for_up` is an off-by-default setting
that was meant to allow requiring valid credentials for all endpoints
except for the `/_up` endpoint.

However, the implementation of this made an error that lead to not
enforcing credentials on any endpoint, when enabled.

CouchDB versions 3.0.1[1] and 3.1.0[2] fix this issue.

Mitigation
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Users who have not enabled `require_valid_user_except_for_up` are not
affected.

Users who have it enabled can either disable it again, or upgrade to
CouchDB versions 3.0.1[1] and 3.1.0[2].

[1]: https://docs.couchdb.org/en/stable/whatsnew/3.0.html#version-3-0-1
[2]: https://docs.couchdb.org/en/stable/whatsnew/3.1.html#version-3-1-0

On behalf of the CouchDB Security team,
Jan LehnardT
=E2=80=94


--Apple-Mail=_8E614D16-EC4F-4F9A-9F5C-6ECF3DD563F7--
