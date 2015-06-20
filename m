X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2112" "Saturday" "20" "June" "2015" "19:18:57" "+0100" "Nick Boyce" "nick.boyce@gmail.com" "<CACqxkW+CoJ-B1fqhkgumusNnnx=ukHxWHKNioOrb4dRQy503AA@mail.gmail.com>" "51" "Re: [oss-security] CVE-2015-3243 rsyslog: some log files are created world-readable" nil nil nil "6" "2015062018:18:57" "[oss-security] CVE-2015-3243 rsyslog: some log files are created world-readable" (number mark "U       nick.boyce@g Jun 20   51/2112  " thread-indent "\"Re: [oss-security] CVE-2015-3243 rsyslog: some log files are created world-readable\"\n") "<55830660.5080405@redhat.com>" ("<55830660.5080405@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3820 invoked by uid 550); 20 Jun 2015 18:19:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3802 invoked from network); 20 Jun 2015 18:19:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=MYGfQWhQ7sKorKOoBDJ8TjVusJpaSVrVLgQ6LlNhHNU=;
        b=Uj0PMccMk/kJUeFIPm4wT6fNtTc+gaz/Dj7OKeUN1UZ8MvzEuJRfnVodO+ZV2VuC2I
         EYsD+KZDqhERlSTqVSU8R8r5jr4EUDCmjw1bmJ9pMJRsOPF958Tc4hDnZzR2KVE/sW5j
         GBlSXcnk7zVnE7SHQT7W0gAM5m++YqzsX4DK6QW5ozWuoT7uR/ELirXsSS++eTDRL8Or
         tnjXbxgHIrh9VLxWPGObMjJ/G4HUNGQ9CAMf/0X/SxcsEfyIF5py/aYc8EVFrchG9aGe
         NWj3UnptdxHoVTPrPCsJOIuLf1EZ/z2YeZNsiaG5ksD0sX7gX+Wt8MGgKHnj7PZkO7+Z
         1y7g==
MIME-Version: 1.0
X-Received: by 10.202.63.212 with SMTP id m203mr17522606oia.35.1434824337611;
 Sat, 20 Jun 2015 11:18:57 -0700 (PDT)
In-Reply-To: <55830660.5080405@redhat.com>
References: <55830660.5080405@redhat.com>
Date: Sat, 20 Jun 2015 19:18:57 +0100
Message-ID: <CACqxkW+CoJ-B1fqhkgumusNnnx=ukHxWHKNioOrb4dRQy503AA@mail.gmail.com>
From: Nick Boyce <nick.boyce@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: Re: [oss-security] CVE-2015-3243 rsyslog: some log files are created world-readable

[hopefully non-OT post of possibly questionable value, coming as it
does from a relatively Un*x-naive refugee from the land of mainframes
[1]]

On 18 June 2015 at 18:56, Kurt Seifried <kseifried@redhat.com> wrote:
>
> So /var/log/cron is world readable in RHEL7
> which means the complete command line is
> logged (so --password=, hostnames, etc.).
>
> In line with this I have made the following
> proposed change for Fedora (and by
> extensions Red Hat products):
[...]
> All configuration files (e.g. files in /etc/) and all
> log files (e.g. files in /var/log/) must not be set
> world-readable unless there is a functional
> reason to do so.

Basically +million ...
I've always been faintly horrified by how much of the Un*x system
configuration detail is readable by just about any user of the system,
though I accept that my opinion is compromised by my industrial
upbringing, and also that security-through-obscurity is, um .....

I queried this situation a long time ago for Debian [2] (locking down
hosts.allow caused problems), and asked similar questions of the
manufacturer's tech support personnel for both Digital Unix and HPUX -
 but in the fluffy world of Un*x, where by default the user was
considered non-adversarial (and in the case of workstations was
usually the owner of the system anyway), nobody was very interested.

Authorisation tokens are not the only relevant sensitive content -
this list knows that all kinds of data can be useful to an attacker,
but Back In The Day paranoia levels were low.

I'd really like to see this situation revisited (perhaps now is a
better moment), but clearly the codebase would need a lot of scrutiny
for potential consequent problems.

[1] No, not IBM mainframes - proper mainframes :-)
https://en.wikipedia.org/wiki/ICL_VME
Here, mandatory access control pervaded the whole system, and user
accounts were only ever given any access to a resource if they
absolutely needed it. This operating system actually achieved Common
Criteria certification (in the early '90s).

[2] https://lists.debian.org/debian-security/2002/08/msg00356.html

Cheers,
Nick
