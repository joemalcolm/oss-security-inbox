X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2110" "Friday" "30" "September" "2016" "02:52:02" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160930065202.8889413A978@smtpvmsrv1.mitre.org>" "55" "[oss-security] Re: CVE Request: systemd v209+: local denial-of-service attack" "^Cc:" nil nil "9" "2016093006:52:02" "[oss-security] Re: CVE Request: systemd v209+: local denial-of-service attack" (number mark "U       cve-assign@m Sep 30   55/2110  " thread-indent "\"[oss-security] Re: CVE Request: systemd v209+: local denial-of-service attack\"\n") "<20160928122002.671555ec3ab226712057df54@andrewayer.name>" ("<20160928122002.671555ec3ab226712057df54@andrewayer.name>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10178 invoked by uid 550); 30 Sep 2016 06:52:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10157 invoked from network); 30 Sep 2016 06:52:14 -0000
In-Reply-To: <20160928122002.671555ec3ab226712057df54@andrewayer.name>
Message-Id: <20160930065202.8889413A978@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri, 30 Sep 2016 02:52:02 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: systemd v209+: local denial-of-service attack
To: agwa@andrewayer.name

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://github.com/systemd/systemd/issues/4234
> https://www.agwa.name/blog/post/how_to_crash_systemd_in_one_tweet

> systemd fails an assertion in manager_invoke_notify_message when
> a zero-length message is received over its notification socket.
> After failing the assertion, PID 1 hangs in the pause system call.
> It is no longer possible to start and stop daemons or cleanly reboot
> the system. Inetd-style services managed by systemd no longer accept
> connections.
> 
> Since the notification socket, /run/systemd/notify, is world-writable,
> this allows a local user to perform a denial-of-service attack against
> systemd.
> 
> Proof-of-concept:
> 
>         NOTIFY_SOCKET=/run/systemd/notify systemd-notify ""

Use CVE-2016-7795.


>> https://github.com/systemd/systemd/issues/4234#issuecomment-250441246

>> Older distros are affected differently I think: no assertion is
>> triggered but manager_dispatch_notify_fd() still returns an error
>> which has the bad side effect to disable the notification handler
>> completely

Use CVE-2016-7796.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX7gspAAoJEHb/MwWLVhi2AEYQAI5Dkd5GxOBYhdhVAfMnJ6Xs
wkc8q9UDwm7dotGM4fnDy5noR0NEzi/+1d8v2F+i7WafNc1RCzvYlLL0W89UjAkj
cz3LQ/DWAnF9PxWU8M2uRDmSanjDwESqTXmsTqapeXK+bY70qbVKpTVJLkItaFOj
lW/43C7W6SVHNBhSly9DLUGzVbokd2kaHwnIDg0LGdeBdjd4aT9iKzGuN57JteQT
cAMFVlcMrq+VyuQpisI4nzTdDxTQehdCe5r6L1d/AHn8UQ7rFE1hi6wGQCcZ+e3q
SsIxPmno3oUUEfQiRqjlOy8LSUor7t1t/VlwlZeznGzIrH0YVSOtZ4DCnBiWbzgQ
6AAaVk/L0MnSIRsVXyZLsIWtjOSFSWCP0A8lg5DB7mgabyHk6hWKM1lk/IHkuWOi
ZsQDJuKMQT8ZDQJ+28ouxjCmc8nY9SpDqD2BM5qZEdqs9LWfzB6Jv/cFAcbeEJsi
M8T+4GGb8TobihbyAZjebWPwtQIejObUgNpuVUMqOCYQypzPwYzqiVeAihfPynCY
rG/bbD7LagaU5kUJA9w0w032pitwbA9i4yt4Bxw6BG3TfBAxAIb3GMJrYD2EX4Jv
1jZrHbQ9bsshA01vo+ozm7hVZiL/J9GikM/mc+9vCeaDuwtcfLofKa+MskeFCw3w
E5NYYC+/fcM2fQkTX1jM
=XTWD
-----END PGP SIGNATURE-----
