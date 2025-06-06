Received: (qmail 9574 invoked by uid 550); 6 Jun 2025 01:21:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1528 invoked from network); 6 Jun 2025 00:59:24 -0000
From: Sam James <sam@gentoo.org>
To: Timothy Legge <timlegge@cpansec.org>
Cc: oss-security@lists.openwall.com
In-Reply-To: <af08b59edaa5fd29007603e146a3a43e@cpansec.org>
Organization: Gentoo
References: <af08b59edaa5fd29007603e146a3a43e@cpansec.org>
User-Agent: mu4e 1.12.9; emacs 31.0.50
Date: Fri, 06 Jun 2025 01:59:11 +0100
Message-ID: <87frgdfzxc.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] CVE-2011-10007: File::Find::Rule through 0.34
 for Perl is vulnerable to Arbitrary Code Execution when `grep()`
 encounters a crafted file name

Timothy Legge <timlegge@cpansec.org> writes:

> [...]
> File::Find::Rule through 0.34 for Perl is vulnerable to Arbitrary Code
> Execution when `grep()` encounters a crafted filename.
>
> A file handle is opened with the 2 argument form of `open()` allowing
> an attacker controlled filename to provide the MODE parameter to
> `open()`, turning the filename into a command to be executed.
>

FWIW, I've started a broader discussion on the future of 2-arg open on
p5p at https://www.nntp.perl.org/group/perl.perl5.porters/2025/06/msg269996.html.
