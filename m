X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/04/18/8
Message-ID: <20140418011605.5524ce40.reed@reedloden.com>
Date: Fri, 18 Apr 2014 01:16:05 -0700
From: Reed Loden <reed@...dloden.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request: Nagios Remote Plugin Executor <= 2.15 Remote Command Execution
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On Fri, 18 Apr 2014 09:03:17 +0100
John Haxby <john.haxby@...cle.com> wrote:

> And ‘$’   you have ` but you don’t guard against $(do something unpleasant).

See the original advisory
(http://seclists.org/fulldisclosure/2014/Apr/240), which calls bash
command substitutions out as being handled already.

Specifically:

""""
The code is also making sure that arguments do not contain bash command
substitution i.e. $(ps aux)

if(strstr(macro_argv[x],"$(")) {
        syslog(LOG_ERR,"Error: Request contained a bash command
substitution!"); return ERROR;
""""

~reed
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iKYEARECAGYFAlNQ30xfFIAAAAAALgAoaXNzdWVyLWZwckBub3RhdGlvbnMub3Bl
bnBncC5maWZ0aGhvcnNlbWFuLm5ldDZCNTZGOUFDMDdCNjg1RDdEQzQ1NjBEQTZC
QTIyMjI2RjNDMzNENUEACgkQa6IiJvPDPVojoQCfanlDh9kJQi2iZB4JX55fGoL6
hqsAoNhC4WFK/R3CqUdu6XfZObfnyWFY
=KpWS
-----END PGP SIGNATURE-----
