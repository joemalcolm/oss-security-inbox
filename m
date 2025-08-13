Received: (qmail 25624 invoked by uid 550); 13 Aug 2025 18:12:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23650 invoked from network); 13 Aug 2025 18:12:39 -0000
Date: Wed, 13 Aug 2025 20:12:28 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Sergey Kandaurov <pluknet@nginx.com>
Message-ID: <20250813181228.GA2940@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] CVE-2025-53859: nginx: ngx_mail_smtp_module buffer over-read potentially resulting in sensitive information leak

Changes with nginx 1.29.1 include:

    *) Security: processing of a specially crafted login/password when using
       the "none" authentication method in the ngx_mail_smtp_module might
       cause worker process memory disclosure to the authentication server
       (CVE-2025-53859).

----- Forwarded message from Sergey Kandaurov <pluknet@nginx.com> -----

From: Sergey Kandaurov <pluknet@nginx.com>
Date: Wed, 13 Aug 2025 21:19:56 +0400
To: nginx-announce@nginx.org
Subject: [nginx-announce] nginx security advisory (CVE-2025-53859)

A security issue was identified in ngx_mail_smtp_module,
which might allow an attacker to cause buffer over-read,
potentially resulting in sensitive information leak
in a HTTP request to the authentication server (CVE-2025-53859).

The issue happens during the SMTP authentication process and requires
the attacker to make preparations against the target system to extract
the leaked data.

The issue affects nginx 0.7.22-1.29.0.
The issue is fixed in nginx 1.29.1.

For older versions, any of the following measures can be used
as a temporary workaround:

(1) disable the "none" parameter in the "smtp_auth" directive.
(2) remove the "Auth-Wait" header line in the authentication server response.

Patch for the issue can be found here:

https://nginx.org/download/patch.2025.smtp.txt

-- 
Sergey Kandaurov
_______________________________________________
nginx-announce mailing list
nginx-announce@nginx.org
https://mailman.nginx.org/mailman/listinfo/nginx-announce

----- End forwarded message -----
