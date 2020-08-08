X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1117" "Saturday" "8" "August" "2020" "10:49:14" "+0200" "Richard Hartmann" "richih.mailinglist@gmail.com" "<CAD77+gR7G5zBc4pwQ86H-UuMk6QOgPcuK8R-hmmHqv8+8_+dbw@mail.gmail.com>" "27" "[oss-security] Voiding CVE-2020-16248" nil nil nil "8" "2020080808:49:14" "[oss-security] Voiding CVE-2020-16248" (number mark "U       richih.maili Aug  8   27/1117  " thread-indent "\"[oss-security] Voiding CVE-2020-16248\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Voiding CVE-2020-16248" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15804 invoked by uid 550); 8 Aug 2020 09:44:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26603 invoked from network); 8 Aug 2020 08:49:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=ZB4ZcMGwRZskDA0UFwG+uv59makJw5ZALQjNA2hNtwg=;
        b=vgdn5DAhKDS0bFg3aEEu0ChZev77tMexwVxLO6lR2QfZNyYSbw2xqxxnLhZpr1zdy9
         oaYHL+oiQde2UtdYtf3xe35WZKQCCzq7LpRswOxlUg4NqddNF3oodkwhaVtJ7a/R4n1N
         M8bmzGOHGC++looFHOTvlgeia9ZzCtMrQYhJCRHq2NW3gkvJ4v47UVhqiBf37G+KQ1bK
         LPZ+W/WZnQTkbMEH7z0Jj+ZMlc7eoAEvw9GIxYh4PCx0h9coWS8W4d0Bae6lOQFFa8Yj
         2E6fNqSBUwbwyljwCQjPeU5NmzlZYgzXi786dmlyt2Xz9MtH9YhM8ghtIs19KNtRaNXW
         UL3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=ZB4ZcMGwRZskDA0UFwG+uv59makJw5ZALQjNA2hNtwg=;
        b=BdCAwQiD1jKDY0K36P4d611P6Pf9SuwDLrBTg9CE5br35lwbqMFRtKaaZ5N7ihHnEE
         jiPBAB3RY3uwr9wer9eUIFK3o4bHKTnQ1pOWO49oLgF93z/4+uNB9fXGJp7fhnE3P6Nd
         Ue4TUo5GfKiDHPhOrSUnQPjSPFw7bk5HLaXxkI2ONIg1LGe47P3zI4wU32oKFFswbgFH
         4O0T2KziaEZyFpgH4gP1RJ3QyXY4EzhkwIKXlILa2k56LhRhKl3s9zX/SICJjTK66VHQ
         OkCgUpfj84Z9RTnsNXUdF+xfbABlV0XiVbDT2STPkp2p79SjlLQNj8DArLnXHuv8VNCZ
         D7EQ==
X-Gm-Message-State: AOAM533ONdDWfFqw+HHX6D9iryRlkUlTgqtdbRFJSjr+Jlsji0lnm1p+
	CfkAIYba3NGyfcZZAtWa/UoWaYEZhA9zSoYtzTDv8pQD
X-Google-Smtp-Source: ABdhPJyZ50ngZWZj8LE1TkQKcwhjKsR/lKGEJ+7wf6+tn9fO6LddPT2s+Xy4tpRRN60IdCIYQo8R7g5o7gQqH/3DqfI=
X-Received: by 2002:aa7:cd08:: with SMTP id b8mr12783916edw.228.1596876565923;
 Sat, 08 Aug 2020 01:49:25 -0700 (PDT)
MIME-Version: 1.0
From: Richard Hartmann <richih.mailinglist@gmail.com>
Date: Sat, 8 Aug 2020 10:49:14 +0200
Message-ID: <CAD77+gR7G5zBc4pwQ86H-UuMk6QOgPcuK8R-hmmHqv8+8_+dbw@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: prometheus-team@googlegroups.com, 
	Prometheus Developers <prometheus-developers@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Voiding CVE-2020-16248

Dear all,

the Prometheus project[1] has received a public "vulnerability"
report[2] against what the reporter called SSRF, but what is the core
functionality of blackbox_exporter[3]: The ability to trigger network
probes over the network to monitor a target's availability. The
reporter stated that CVE-2020-16248 has been assigned. From context,
it seems to be a paid assessment of our software for an unnamed client
which increases motivation to get "results", in particular CVEs for
"zero days" - which are then promptly reported publicly with an
embargoed CVE.

The reporter has not replied to our statement that this behaviour is
core functionality. I could not find out which organization has
reserved CVE-2020-16248 so I decided to send email to this list to
inform the organization, enabling them to update their records.

Sorry for using this list for that purpose, I could not find a less
wrong place to inform the (hopefully) interested parties.


Best,
Richard

[1] https://prometheus.io/
[2] https://github.com/prometheus/blackbox_exporter/issues/669
[3] https://github.com/prometheus/blackbox_exporter
