X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/02/5
Message-ID: <b14f010a-285f-490a-8e4b-b72bc2f21504@oracle.com>
Date: Wed, 2 Sep 2026 12:12:32 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Fwd: Vulnerabilities in golang.org/x/crypto
Content-Type: text/plain; charset=utf-8




-------- Forwarded Message --------
Subject: 	[security] Vulnerabilities in golang.org/x/crypto
Date: 	Wed, 2 Sep 2026 11:46:32 -0700 (PDT)
From: 	Neal Patel <neal@...ang.org>
To: 	golang-announce <golang-announce@...glegroups.com>

Howdy gophers,

We have tagged version v0.56.0 of golang.org/x/crypto
<https://pkg.go.dev/golang.org/x/crypto> in
order to address the following security issues:

          ssh: prevent DoS on deadlocked established channel

          Previously, after a channel has been established, a
          malicious peer could send crafted messages that would
          deadlock the entire connection.

          Now, we handle all RFC 4254 channel messages; global
          requests are handled explicitly. Then, treat all other
          messages as a protocol error and tear the connection
          down instead of buffering and blocking.

          Thanks to Will Mortensen for reporting this issue.
          This is CVE-2026-56855 and Go issue <https://go.dev/issue/81317>.


          ssh: prevent DoS on deadlocked undecided channel

          Previously, a channel registered in the mux's chanList is
          not usable until it is established. A malicious peer was
          able flood the channel's incomingRequests, deadlocking the
          entire connection.

          Now, we add an atomic established state, set when a channel
          becomes usable. Until such a time, handlePacket drops every
          packet other than the open confirmation/failure, without
          blocking and without tearing down the connection.

          Thanks to Will Mortensen for reporting this issue.
          This is CVE-2026-78662 and Go issue <https://go.dev/issue/81316>.


Cheers,
Go Security Team

-- 
You received this message because you are subscribed to the Google Groups "golang-announce" group.
To view this discussion visit https://groups.google.com/d/msgid/golang-announce/ba9b2628-b882-4ce5-85d6-bcbc6dbccdcan%40googlegroups.com
