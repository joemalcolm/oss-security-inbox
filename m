X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/07/22/5
Message-ID: <53CE4864.6070809@redhat.com>
Date: Tue, 22 Jul 2014 13:17:56 +0200
From: Florian Weimer <fweimer@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: Linux peer_cred Mischmasch
Content-Type: text/plain; charset=utf-8

On 07/22/2014 12:15 PM, Sebastian Krahmer wrote:
> While maybe_add_creds() (via SOCK_PASSCRED) and scm_send()
> (via unix_{stream,dgram}_sendmsg()) use the real UID,
>
> cred_to_ucred() (via SO_PEERCRED) passes the EUID (this time
> also kuid_munged()).

There should also be a discrepancy regarding when the credentials are 
captured (time of send for SOCK_PASSCRED, time of socket creation for 
SO_PEERCRED).  The latter is required because privileged processes 
assume that they can safely write to stderr, so picking the current 
process credentials may well introduce vulnerabilities.

-- 
Florian Weimer / Red Hat Product Security
