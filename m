X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/04/21/6
Message-ID: <RrVCUf0UYM4S99v51o8A6lAatx04FP2OR23b5CU8yUASHP5KYo_uzDUGevjvZdhYY8QxFFH190BQOw-r2TG7neN7NOkiAyixvsVOzwCpcs8=@protonmail.com>
Date: Tue, 21 Apr 2020 17:41:42 +0000
From: "jellicent@...tonmail.com" <jellicent@...tonmail.com>
To: "info@...nvakil.com" <info@...nvakil.com>
Cc: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: Re: Pacman package manager - taking untrusted input
Content-Type: text/plain; charset=utf-8

On Tuesday, April 21, 2020 5:21 PM, Amin Vakil <info@...nvakil.com> wrote:
> Although this is something that can be fixed, it's not a critical
> security issue at all, in all scenarios that has been written if
> database is compromised, the best (worst) thing that malicious actor can
> do is stopping user from installing packages, because he can't create a
> verified gpg signed package which is mandatory for pacman to allow
> installation of the package.

This is incorrect. An attacker need only find a bug in how Pacman does
parsing/reading of the database file to potentially get code execution
on the box as root. See Pacman's CVE history for at least one example
of this. The problem happens before any package signatures come into
play.
