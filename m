X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3182" "Friday" "14" "December" "2018" "13:06:44" "-0500" "Dmitri Shuralyov" "dmitshur@golang.org" "<CA+ON-PGqthRuygz5OOxoerrmAXfAH063cF34LGYZ2KhnEvmGhg@mail.gmail.com>" "71" "[oss-security] Go security releases 1.11.3 and 1.10.6" "^Cc:" nil nil "12" "2018121418:06:44" "[oss-security] Go security releases 1.11.3 and 1.10.6" (number mark "U       dmitshur@gol Dec 14   71/3182  " thread-indent "\"[oss-security] Go security releases 1.11.3 and 1.10.6\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30157 invoked by uid 550); 14 Dec 2018 18:07:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28608 invoked from network); 14 Dec 2018 18:07:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=golang-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to:cc
         :content-transfer-encoding;
        bh=0qUp3lWzGw+2nQyChdtJKos/DoyKZERp4LNkfCzFrAw=;
        b=C1n6hW5cLch0vMg4wZjGmzijn3zu/NMOl38KWZg2jk0+i4IkqQ2HMmwcWAo8u32sgE
         6XnJPjxshNBCGlLWwqYpxYIdnjfHBnsR9G+DfF8B+MUuHF7jGdO8qDl3ysjmRemOVbPD
         for16Z6n/etXHBFNjONvFm4ePT2vWTjCkm4xoGpJEbowypUNtOoMojcFqKYBWkVWjME+
         1QLLGyKJwmCbJljywABi4k6oJHP3ReJJudRuEn6tAnlIZu1pw4Dv0RVHpWQZuEOKA9JT
         Fr2D1FbGn5QF2Vkdw01Q478hMPtTaCOvOZTXy5G35x1/dhPVSuK8HuYFNCk6BL7WnGIG
         JN/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :content-transfer-encoding;
        bh=0qUp3lWzGw+2nQyChdtJKos/DoyKZERp4LNkfCzFrAw=;
        b=SNq9xRXY5mS8FHLDEsJB9OYx/qsmXKRVmW3cd0kmut+QuAJO03tOGxYYrE3bMTbbb4
         4R47kB12wVJHCVsaJSsYFb7PT/Zi6Xw42m0nYZbBtFsQmQixyVvJnl+cS4/U570vdsS0
         jbd6TxuU8bqjlvO6WRuF0JBHvilbAxB6vIQ9/n20cvhccFikhttUBKaoxWUepLp+cTl+
         5qtzf99XpSlX/FujWhGZxEEqi+utHCL8NPu64bcvQ6wOyW/MU+c6IFwgHXLy+9xSzrXd
         PdvEPbEG5M0L5AzN8v6kAErl1ZmYBIbS3rssIT1tefI9JBoPRUIwgVm9v1oFLM894dVW
         6nHw==
X-Gm-Message-State: AA+aEWZusdjmVnIARkPLY+fqEP7wScCskzoANO81R4tis5wRA4DLS0qg
	DFOwljjjgU/s+Ovaiyrj29XWXxNYTKrH5BwFcXt+sK0TAFm0og==
X-Google-Smtp-Source: AFSGD/VWyQe3u/JzK1B/5RsTYJQKs15whH0Mprm1BuLpeWA50+tj9bMCJTqJX+ZVbOt1jj5oNfXJOGnMPDFjsRRwjzA=
X-Received: by 2002:a2e:5c86:: with SMTP id q128-v6mr2586318ljb.119.1544810814812;
 Fri, 14 Dec 2018 10:06:54 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CA+ON-PGqthRuygz5OOxoerrmAXfAH063cF34LGYZ2KhnEvmGhg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: Security Officer <security@golang.org>, Filippo Valsorda <filippo@golang.org>
Date: Fri, 14 Dec 2018 13:06:44 -0500
From: Dmitri Shuralyov <dmitshur@golang.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Go security releases 1.11.3 and 1.10.6
To: oss-security@lists.openwall.com

Hello,

We have released Go 1.11.3 and Go 1.10.6 to address three recently
reported security issues. You can see an announcement at
https://groups.google.com/d/msg/golang-announce/Kw31K8G7Fi0/z2olKn-QCAAJ.

We are making this posting to oss-security list now that the security
issues are public to follow the policy described at
https://oss-security.openwall.org/wiki/mailing-lists/distros. We
recommend subscribing to the golang-announce list at
https://groups.google.com/d/forum/golang-announce to guarantee
receiving notifications about future Go security releases.

There are three vulnerabilities being addressed by the security release:

=E2=80=A2 cmd/go: remote command execution during "go get -u"

The "go get" command is vulnerable to remote code execution when
executed with the -u flag and the import path of a malicious Go
package, or a package that imports it directly or indirectly.
Specifically, it is only vulnerable in GOPATH mode, but not in module
mode (the distinction is documented at
https://golang.org/cmd/go/#hdr-Module_aware_go_get). Using custom
domains, it=E2=80=99s possible to arrange things so that a Git repository is
cloned to a folder named .git by using a vanity import path that ends
with "/.git". If the Git repository root contains a HEAD file, a
config file, an objects directory, a refs directory, with some work to
ensure the proper ordering of operations, "go get -u" can be tricked
into considering the parent directory as a repository root, and
running Git commands on it. That will use the config file in the
original Git repository root for its configuration, and if that config
file contains malicious commands, they will execute on the system
running "go get -u".

The issue is CVE-2018-16873 and Go issue https://golang.org/issue/29230.

Thanks to Etienne Stalmans from the Heroku platform security team for
discovering and reporting this issue.

=E2=80=A2 cmd/go: directory traversal in "go get" via curly braces in impor=
t paths

The "go get" command is vulnerable to directory traversal when
executed with the import path of a malicious Go package which contains
curly braces (both '{' and '}' characters). Specifically, it is only
vulnerable in GOPATH mode, but not in module mode (the distinction is
documented at https://golang.org/cmd/go/#hdr-Module_aware_go_get). The
attacker can cause an arbitrary filesystem write, which can lead to
code execution.

The issue is CVE-2018-16874 and Go issue https://golang.org/issue/29231.

Thanks to ztz of Tencent Security Platform for discovering and
reporting this issue.

=E2=80=A2 crypto/x509: CPU denial of service in chain validation

The crypto/x509 package does not limit the amount of work performed
for each chain verification, which might allow attackers to craft
pathological inputs leading to a CPU denial of service. Go TLS servers
accepting client certificates and TLS clients verifying certificates
are affected.

The issue is CVE-2018-16875 and Go issue https://golang.org/issue/29233.

Thanks to Netflix for discovering and reporting this issue.

All three vulnerabilities affect Go before 1.10.6, and 1.11.x before 1.11.3.

Thank you,
Dmitri on behalf of the Go team
