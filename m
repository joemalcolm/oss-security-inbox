X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4484" "Monday" "20" "April" "2020" "13:47:12" "-0600" "Taylor Blau" "ttaylorr@github.com" "<20200420194712.GA51427@syl.local>" "129" "[oss-security] CVE-2020-11008: Git: Malicious URLs can still cause Git to send a stored credential to the wrong server" nil nil nil "4" "2020042019:47:12" "[oss-security] CVE-2020-11008: Git: Malicious URLs can still cause Git to send a stored credential to the wrong server" (number mark "U       ttaylorr@git Apr 20  129/4484  " thread-indent "\"[oss-security] CVE-2020-11008: Git: Malicious URLs can still cause Git to send a stored credential to the wrong server\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-11008: Git: Malicious URLs can still cause Git to send a stored credential to the wrong server" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18317 invoked by uid 550); 20 Apr 2020 19:52:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13890 invoked from network); 20 Apr 2020 19:47:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=github.com; s=google;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=Mepwz5Yb1LeP3sLR5igOIISnKjpYqBKzY9OvAQjznMI=;
        b=ZdWivy1gByQ0VX5JXqtUXDmyXS9r5sZv7tOFIf6BvAINJuah802GnA/Zxd02Dz7Ai2
         r2TmPd3W14KTcHPIdKCdJJeyOAz13bkUNMPJdG/qHFrO8x+FirI0ylkNPfFDXJKbSlFe
         2U6EKXKrhhLozqL1RbfZRZjuo7IHKzpGePGUM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=Mepwz5Yb1LeP3sLR5igOIISnKjpYqBKzY9OvAQjznMI=;
        b=oeW/uFF+kreb8bHMusG7+1Bz99t58CKZDKepAwWFz6Zz2Xe/OvBpR444yqK1mgt/Tw
         hiRk+uLS1fs/q6YSxZuuhZ3XUnVZBv8iuS0IPd/1B8VjqrAIBBA6RZJCy7eFxbG2N/ul
         uB0n1kJM61ShQiFYSweXjLybKZWkpQPK3HmnZCBpPi/cY/ECWbMwK6E0hdLdbvAK68kP
         GNPaklxwAD91c1LhwEgA2WoJDv8Q40zJvO4D5Ufpm2Qtm4B0ukV7+2d4j2QR+BBBD4ns
         COcuGyK7vOg8WTS5GrW15qh5BNn5+4LHdjY8vhL+/d1qSTDWqDOgeyXvT1DCh2jWqbCn
         QYSw==
X-Gm-Message-State: AGi0PuaI2KBl6EFbtxfFoWa+9zkPWDJSzYq0WTQIRX+LGPL7yU8Ntymq
	jYpvhswLZU3WQXip7CaC+LtSmjA0yhAs4JhwpgWXQsV3bhZ2nvRb5Zcny6JnAvvH+mu+wcfgcpi
	htUm88A/vvmdCF0dV9vRrhDhwiekYrydyo5Em3PhXEkOH8fSbflkSIJBWT232ojCzQpJoVAknos
	Q+wQ==
X-Google-Smtp-Source: APiQypLce7e+OTpkci+GwYjJanHmBdsGvfgsbqGfvf3LTh0zfgKzI6Uye6DEx/V6OsbyZuyh2cDJIg==
X-Received: by 2002:a17:90a:7d16:: with SMTP id g22mr1188730pjl.179.1587412034237;
        Mon, 20 Apr 2020 12:47:14 -0700 (PDT)
Date: Mon, 20 Apr 2020 13:47:12 -0600
From: Taylor Blau <ttaylorr@github.com>
To: oss-security@lists.openwall.com
Message-ID: <20200420194712.GA51427@syl.local>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="cNdxnHkX5QqsyA0e"
Content-Disposition: inline
Subject: [oss-security] CVE-2020-11008: Git: Malicious URLs can still cause Git to send a
 stored credential to the wrong server

--cNdxnHkX5QqsyA0e
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Team,

Today, the Git project released v2.26.2 (and corresponding point
releases as far back as the v2.17.x track) to address the following
issue:

  * CVE-2020-11008:
    With a crafted URL that contains a newline or empty host, or lacks a
    scheme, the credential helper machinery can be fooled into providing
    credential information that is not appropriate for the protocol in
    use and host being contacted.

    Unlike the vulnerability CVE-2020-5260 fixed in v2.17.4, the
    credentials are not for a host of the attacker's choosing; instead,
    they are for some unspecified host (based on how the configured
    credential helper handles an absent "host" parameter).

    The attack has been made impossible by refusing to work with
    under-specified credential patterns.

The distros list has been notified of this release in advance of its
disclosure. This notification serves the same purpose for the
oss-security list, too.

Full details are available at the following link:

  https://github.com/git/git/security/advisories/GHSA-hjc9-x69f-jqj7

Per the list guidelines, I am attaching a plaintext representation of
the above so as to include all essential materials within the mail
itself.


Thanks,
Taylor

--cNdxnHkX5QqsyA0e
Content-Type: text/plain; charset=utf-8
Content-Disposition: attachment; filename="cve-2020-11008.txt"

Malicious URLs can still cause Git to send a stored credential to the wrong server

Affected versions
	<= 2.17.4, 2.18.3, 2.19.4, 2.20.3, 2.21.2, 2.22.3, 2.23.2, 2.24.2, 2.25.3, 2.26.1

Patched versions
	2.17.5, 2.18.4, 2.19.5, 2.20.4, 2.21.3, 2.22.4, 2.23.3, 2.24.3, 2.25.4, 2.26.2

CVE identifier
	CVE-2020-11008

Impact
	Git uses external "credential helper" programs to store and retrieve passwords
	or other credentials from secure storage provided by the operating system.
	Specially-crafted URLs that are considered illegal as of the recently
	published Git versions can cause Git to send a "blank" pattern to helpers,
	missing hostname and protocol fields. Many helpers will interpret this as
	matching any URL, and will return some unspecified stored password, leaking
	the password to an attacker's server.

	The vulnerability can be triggered by feeding a malicious URL to git clone.
	However, the affected URLs look rather suspicious; the likely vector would be
	through systems which automatically clone URLs not visible to the user, such
	as Git submodules, or package systems built around Git.

	This bug is similar to the one mentioned in CVE-2020-5260. The fix for that
	bug still left the door open for an exploit where some credential is leaked
	(but the attacker cannot control which one).

	The root of the problem is in Git itself, which should not be feeding blank
	input to helpers. However, the ability to exploit the vulnerability in
	practice depends on which helpers are in use.

	Credential helpers which are known to trigger the vulnerability:

		* Git's store helper
		* Git's cache helper
		* the osxkeychain helper that ships in Git's contrib directory

	Credential helpers which are known to be safe even with vulnerable versions of
	Git:

		* Git Credential Manager for Windows

	Any helper not in this list should be assumed to trigger the vulnerability.

Patches

	The problem has been patched in the versions published on April 20th, 2020,
	going back to v2.17.x.

Workarounds

	The most complete workaround is to disable credential helpers altogether:

	```
	git config --unset credential.helper
	git config --global --unset credential.helper
	git config --system --unset credential.helper
	```

	An alternative is to avoid malicious URLs:

		* Examine the hostname and username portion of URLs fed to git clone or git
			fetch for the presence of encoded newlines (%0A) or evidence of
			credential-protocol injections (e.g., host=github.com)

		* Avoid using submodules with untrusted repositories (don't use git clone
			--recurse-submodules; use git submodule update only after examining the
			URLs found in .gitmodules).

		* Avoid tools which may run git clone on untrusted URLs under the hood.

		* Avoid using the credential helper by only cloning publicly available
			repositories.

Credits
	Credit for finding the vulnerability goes to Carlo Arenas.

References
	release announcement: ???

	commit introducing fix: https://github.com/git/git/compare/v2.17.4...v2.17.5

--cNdxnHkX5QqsyA0e--
