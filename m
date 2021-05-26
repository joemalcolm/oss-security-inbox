X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2846" "Wednesday" "26" "May" "2021" "08:44:02" "+0200" "Daniel Stenberg" "daniel@haxx.se" nil "98" "[oss-security] [SECURITY ADVISORY] curl: TELNET stack contents disclosure" nil nil nil "5" nil nil (number mark "U       daniel@haxx. May 26   98/2846  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl: TELNET stack contents disclosure\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY ADVISORY] curl: TELNET stack contents disclosure" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20467 invoked by uid 550); 26 May 2021 06:44:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20434 invoked from network); 26 May 2021 06:44:14 -0000
Date: Wed, 26 May 2021 08:44:02 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@silly
To: curl security announcements -- curl users <curl-users@cool.haxx.se>, 
    curl-announce@cool.haxx.se, libcurl hacking <curl-library@cool.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <nycvar.QRO.7.76.2105260043330.26381@fvyyl>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: TELNET stack contents disclosure

TELNET stack contents disclosure
================================

Project curl Security Advisory, May 26th 2021 -
[Permalink](https://curl.se/docs/CVE-2021-22898.html)

VULNERABILITY
-------------

curl supports the `-t` command line option, known as `CURLOPT_TELNETOPTIONS`
in libcurl. This rarely used option is used to send variable=content pairs to
TELNET servers.

Due to flaw in the option parser for sending `NEW_ENV` variables, libcurl
could be made to pass on uninitialized data from a stack based buffer to the
server. Therefore potentially revealing sensitive internal information to the
server using a clear-text network protocol.

This could happen because curl did not check the return code from a
`sscanf(command, "%127[^,],%127s")` function invoke correctly, and would leave
the piece of the send buffer uninitialized for the value part if it was
provided longer than 127 bytes. The buffer used for this is 2048 bytes big and
the *variable* part of the *variable=content* pairs would be stored correctly
in the send buffer, making curl sending "interleaved" bytes sequences of stack
contents. A single curl TELNET handshake could then be made to send off a
total of around 1800 bytes of (non-contiguous) stack contents in this style:

     [control byte]name[control byte]
     stack contents
     [control byte]name[control byte]
     stack contents
     ...

An easy proof of concept command line looks like this:

     curl telnet://example.com -tNEW_ENV=a,bbbbbb (256 'b's)

We are not aware of any exploit of this flaw.

INFO
----

This flaw has existed in curl since commit
[a1d6ad2610](https://github.com/curl/curl/commit/a1d6ad2610) in libcurl 7.7,
released on March 22, 2001.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2021-22898 to this issue.

CWE-457: Use of Uninitialized Variable

Severity: Medium

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.7 to and including 7.76.1
- Not affected versions: curl < 7.7 and curl >= 7.77.0

Also note that libcurl is used by many applications, and not always advertised
as such.

THE SOLUTION
------------

Use sscanf() properly and only use properly filled-in buffers.

A [fix for CVE-2021-22898](https://github.com/curl/curl/commit/39ce47f219b09c380b81f89fe54ac586c8db6bde)

RECOMMENDATIONS
--------------

  A - Upgrade curl to version 7.77.0

  B - Apply the patch to your local version

  C - Avoid using `CURLOPT_TELNETOPTIONS`

TIMELINE
--------

This issue was reported to the curl project on April 27, 2021.

This advisory was posted on May 26, 2021.

CREDITS
-------

This issue was reported and patched by Harry Sintonen.

Thanks a lot!

-- 

  / daniel.haxx.se
  | Commercial curl support up to 24x7 is available!
  | Private help, bug fixes, support, ports, new features
  | https://www.wolfssl.com/contact/
