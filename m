Received: (qmail 3401 invoked by uid 550); 30 May 2024 14:50:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1340 invoked from network); 30 May 2024 14:49:43 -0000
Date: Thu, 30 May 2024 16:49:35 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20240530144935.GA745@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] nginx HTTP/3 security issues/fixes

Hi,

This was on the nginx-announce list yesterday:

https://mailman.nginx.org/pipermail/nginx-announce/2024/GMY32CSHFH6VFTN76HJNX7WNEX4RLHF6.html

---
[nginx-announce] nginx security advisory (CVE-2024-31079, CVE-2024-32760, CVE-2024-34161, CVE-2024-35200)
Sergey Kandaurov pluknet at nginx.com
Wed May 29 15:12:07 UTC 2024

Hello!

Four security issues were identified in nginx HTTP/3 implementation, which
might allow an attacker that uses a specially crafted QUIC session to cause
a worker process crash (CVE-2024-31079, CVE-2024-32760, CVE-2024-35200),
worker process memory disclosure on systems with MTU larger than 4096
bytes (CVE-2024-34161), or might have potential other impact (CVE-2024-31079,
CVE-2024-32760).

The issues affect nginx compiled with the experimental ngx_http_v3_module
(not compiled by default) if the "quic" option of the "listen" directive
is used in a configuration file.

The issues affect nginx 1.25.0-1.25.5, 1.26.0.
The issues are fixed in nginx 1.27.0, 1.26.1.

Thanks to Nils Bars of CISPA.
---

and another one in February:

https://mailman.nginx.org/pipermail/nginx-announce/2024/NW6MNW34VZ6HDIHH5YFBIJYZJN7FGNAV.html

---
[nginx-announce] nginx security advisory (CVE-2024-24989, CVE-2024-24990)
Sergey Kandaurov pluknet at nginx.com
Wed Feb 14 17:00:05 UTC 2024

Two security issues were identified in nginx HTTP/3 implementation,
which might allow an attacker that uses a specially crafted QUIC session
to cause a worker process crash (CVE-2024-24989, CVE-2024-24990) or
might have potential other impact (CVE-2024-24990).

The issues affect nginx compiled with the ngx_http_v3_module (not
compiled by default) if the "quic" option of the "listen" directive
is used in a configuration file.

The issue affects nginx 1.25.0 - 1.25.3.
The issue is fixed in nginx 1.25.4.
---

Alexander
