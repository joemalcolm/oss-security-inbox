X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3404" "Wednesday" "31" "March" "2021" "08:02:03" "+0200" "Daniel Stenberg" "daniel@haxx.se" nil "108" "[oss-security] [SECURITY ADVISORY] curl: TLS 1.3 session ticket proxy host mixup" nil nil nil "3" nil nil (number mark "U       daniel@haxx. Mar 31  108/3404  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl: TLS 1.3 session ticket proxy host mixup\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY ADVISORY] curl: TLS 1.3 session ticket proxy host mixup" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13330 invoked by uid 550); 31 Mar 2021 06:02:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12231 invoked from network); 31 Mar 2021 06:02:14 -0000
Date: Wed, 31 Mar 2021 08:02:03 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@silly
To: curl security announcements -- curl users <curl-users@cool.haxx.se>, 
    curl-announce@cool.haxx.se, libcurl hacking <curl-library@cool.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <nycvar.QRO.7.76.2103310012180.30524@fvyyl>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: TLS 1.3 session ticket proxy host mixup

TLS 1.3 session ticket proxy host mixup
=======================================

Project curl Security Advisory, March 31st 2021 -
[Permalink](https://curl.se/docs/CVE-2021-22890.html)

VULNERABILITY
-------------

Enabled by default, libcurl supports the use of TLS 1.3 session tickets to
resume previous TLS sessions to speed up subsequent TLS handshakes.

When using a HTTPS proxy and TLS 1.3, libcurl can confuse session tickets
arriving from the HTTPS proxy but work as if they arrived from the remote
server and then wrongly "short-cut" the host handshake. The reason for this
confusion is the modified sequence from TLS 1.2 when the session ids would
provided only during the TLS handshake, while in TLS 1.3 it happens post
hand-shake and the code was not updated to take that changed behavior into
account.

When confusing the tickets, a HTTPS proxy can trick libcurl to use the wrong
session ticket resume for the host and thereby circumvent the server TLS
certificate check and make a MITM attack to be possible to perform unnoticed.

This flaw can allow a malicious HTTPS proxy to MITM the traffic. Such a
malicious HTTPS proxy needs to provide a certificate that curl will accept for
the MITMed server for an attack to work - unless curl has been told to ignore
the server certificate check.

We are not aware of any exploit of this flaw.

INFO
----

This flaw has existed in libcurl since commit
[549310e907e](https://github.com/curl/curl/commit/549310e907e) in libcurl 7.63.0,
released on December 12, 2018.

It can only trigger when TLS 1.3 is used with the HTTPS proxy and not with
earlier TLS versions. It *cannot* trigger with TLS 1.2 or earlier versions.

It might be worth highlighting that an HTTPS proxy is a proxy which libcurl
communicates with over TLS specifically, and then speaks HTTPS through, making
it two layers of TLS. It is different than the more common HTTP proxy setup,
where libcurl just does normal TCP with the proxy.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2021-22890 to this issue.

CWE-290: Authentication Bypass by Spoofing

Severity: Low

AFFECTED VERSIONS
-----------------

This issue only exists when libcurl is built to use OpenSSL or one of its
forks.

- Affected versions: curl 7.63.0 to and including 7.75.0
- Not affected versions: curl < 7.63.0 and curl >= 7.76.0

Also note that libcurl is used by many applications, and not always
advertised as such.

THE SOLUTION
------------

Make sure the proxy/host distinction is done correctly.

A [fix for CVE-2021-22890](https://github.com/curl/curl/commit/b09c8ee15771c614c4bf3ddac893cdb12187c844)

(The patch URL will change in the final published version of this advisory)

RECOMMENDATIONS
--------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade libcurl to version 7.76.0

  B - Apply the patch to your local version

  C - Use another TLS backend

  D - Avoid TLS 1.3 with HTTPS proxies

TIMELINE
--------

This issue was reported to the curl project on March 17, 2021.

This advisory was posted on March 31st 2021.

CREDITS
-------

This issue was reported by Mingtao Yang, Facebook. Patch by Daniel Stenberg.

Thanks a lot!

-- 

  / daniel.haxx.se
  | Commercial curl support up to 24x7 is available!
  | Private help, bug fixes, support, ports, new features
  | https://www.wolfssl.com/contact/
