X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3451" "Friday" "8" "January" "2016" "15:40:14" "+0000" "Matthew Wild" "mwild1@gmail.com" "<CAJt9-x7_03rk-ogT2EVgzs3NeNTF9EZRTbQfaFjn3CJMGDrqgg@mail.gmail.com>" "117" "[oss-security] CVE-2016-1231, CVE-2016-1232: Prosody XMPP server multiple vulnerabilities" nil nil nil "1" "2016010815:40:14" "[oss-security] CVE-2016-1231, CVE-2016-1232: Prosody XMPP server multiple vulnerabilities" (number mark "U       mwild1@gmail Jan  8  117/3451  " thread-indent "\"[oss-security] CVE-2016-1231, CVE-2016-1232: Prosody XMPP server multiple vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18255 invoked by uid 550); 8 Jan 2016 16:08:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32179 invoked from network); 8 Jan 2016 15:40:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=glyfFVOu9JJHz8y1UqEysHgfOSq0e5pwIIv/P4NkN+8=;
        b=t7F/af8BWUy6RBX/1doZCZn/ls1s3cVsROQlPSxkRXJiLt+/w/DCdfeXZ1sf4J71OS
         Lf2dI0WtI7awc3FfK5IZpcPl19+XWqcxuCCtEkaYicDM7KEoTq7sa/55Un6GJIVDWqIY
         4DpKxafyavK25vrsZUyknIAR7DN5fiZkvK3c8E3mNhafcYgbbCXvq1fMo+YatyGNkbD7
         0ulbguVTkfZEAObKZIS0BYoQRo3M56Oe5BWz2KaO1A0r5HivO4kNFCaME8zaHvkFkHUs
         oZuUlkvb+nyZmurCFBOUbR/hy32DuKe9MYW+RxxxCVzH0apon0T0zwaIerhePGuJuDq4
         N4+A==
X-Received: by 10.25.142.136 with SMTP id q130mr37759610lfd.56.1452267633719;
 Fri, 08 Jan 2016 07:40:33 -0800 (PST)
MIME-Version: 1.0
From: Matthew Wild <mwild1@gmail.com>
Date: Fri, 8 Jan 2016 15:40:14 +0000
Message-ID: <CAJt9-x7_03rk-ogT2EVgzs3NeNTF9EZRTbQfaFjn3CJMGDrqgg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE-2016-1231, CVE-2016-1232: Prosody XMPP server multiple vulnerabilities

Two vulnerabilities have been discovered and fixed in the Prosody XMPP
server. Details below.

CVE-2016-1231 prosody: path traversal vulnerability in the built-in
HTTP server's file-serving module
-------------

Project: Prosody XMPP server
URL: https://prosody.im/
Affected versions:
    0.9.x (before 0.9.9), 0.10 (unreleased)
Affected Prosody modules:
    mod_http_files (and community modules that depend on it)
Fixed versions:
    0.9.9, 0.10 nightly build 196, trunk nightly build 608

Description
-----------

A flaw was found in Prosody's HTTP file-serving module (mod_http_files)
that allows it to serve requests outside of the configured public root
directory. This could allow attackers access to private files including
sensitive data.

Affected configurations
-----------------------

The default configuration has mod_http_files disabled, and is not
vulnerable. Additionally, configurations where mod_http_files serves
files at the root URL (e.g. not /files/ prefix, using http_paths) are
not vulnerable.

Temporary mitigation
--------------------

Disable mod_http_files and any community modules that depend on it.

Advice
------

All users should upgrade to 0.9.9, or check their OS distribution for
security updates. Users of development branches (0.10, trunk) should
upgrade to the latest nightly builds.

Credits
-------

The flaw was discovered by Kim Alvefur, a member of the Prosody team.

//////////////////////////

CVE-2016-1232 prosody: using a weak PRNG to generate the
authentication secret used when verifying server-to-server connections
using the dialback method.
-------------

Project: Prosody XMPP server
URL: https://prosody.im/
Affected versions:
    All
Affected Prosody modules:
    mod_dialback
Fixed versions:
    0.9.9, 0.10 nightly build 196, trunk nightly build 608

Description
-----------

It was discovered that Prosody's generation of the secret token for
server-to-server dialback authentication relied upon a weak random
number generator that was not cryptographically secure. This allows an
attacker to guess at probable values of the secret key. A successful
guess allows impersonation of the affected domain to other servers on
the network.

Affected configurations
-----------------------

Configurations with mod_dialback loaded (default configuration) are
affected.

Servers with s2s_secure_auth = true will not be susceptible to incoming
attempts to spoof other domains on the network. However if mod_dialback
is loaded, a server's domain's may still be spoofed by an attacker in
connections to other servers.

Not affected are configurations with a strong custom dialback_secret set
(though periodically regenerating the dialback_secret is still
advisable).

Temporary mitigation
--------------------

Set the 'dialback_secret' option in your configuration file to a long
random string.

A strong dialback_secret can be generated (for example) using the
command:

head -c 32 /dev/urandom | base64

Alternatively disable mod_dialback by adding it to your modules_disabled
option in your configuration file. In this case communication with
servers that only support dialback or have untrusted certificates will
not be possible.

Advice
------

All users should upgrade to 0.9.9, or check their OS distribution for
security updates. Users of development branches (0.10, trunk) should
upgrade to the latest nightly builds.

Credits
-------

The flaw was discovered and reported by Thijs Alkemade.
