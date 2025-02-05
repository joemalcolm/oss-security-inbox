Received: (qmail 3619 invoked by uid 550); 5 Feb 2025 17:36:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1559 invoked from network); 5 Feb 2025 17:35:50 -0000
Date: Wed, 5 Feb 2025 18:35:29 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Sergey Kandaurov <pluknet@nginx.com>
Message-ID: <20250205173529.GA31344@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] CVE-2025-23419: nginx: Client certificate authentication bypass with TLSv1.3 and session resumption

----- Forwarded message from F5SIRT via nginx-announce <nginx-announce@nginx.org> -----

To: "nginx-announce@nginx.org" <nginx-announce@nginx.org>
Date: Wed, 5 Feb 2025 17:23:12 +0000
Subject: [nginx-announce] nginx security advisory (CVE-2025-23419)
From: F5SIRT via nginx-announce <nginx-announce@nginx.org>
Reply-To: F5SIRT <f5sirt@F5.com>

A problem with SSL session resumption in nginx was identified.
It was possible to reuse SSL sessions in named-based
virtual hosts in unrelated contexts, allowing to bypass client
certificate authentication in some configurations (CVE-2025-23419).

The problem affects nginx 1.11.4 and newer built with OpenSSL if the
TLSv1.3 protocol and session resumption are enabled either with
ssl_session_cache or ssl_session_tickets.

The problem is fixed in 1.26.3 and 1.27.4.
_______________________________________________
nginx-announce mailing list
nginx-announce@nginx.org
https://mailman.nginx.org/mailman/listinfo/nginx-announce

----- End forwarded message -----
