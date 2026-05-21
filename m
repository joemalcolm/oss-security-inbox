Received: (qmail 15407 invoked by uid 550); 21 May 2026 16:13:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32633 invoked from network); 21 May 2026 11:59:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=free.fr;
	s=smtp-20201208; t=1779364760;
	bh=qNkaOK0H8928ibZypkOlNRW1Fs5VlCOeOfOQYw38LRA=;
	h=Date:From:To:Subject:From;
	b=uu5PEc7jP89BW4Lfn3x1fq0D691PzOSrNuQ6NHkigTy/V1DodPIovJ2rfQ2qMh9Ev
	 ghc5H8yM/NDcMHkRViV6xL4yOrvuzOPSMTNXvgmO1xxQbFUHvhAfwszR4tu3lGVI4G
	 gBb4z+yjiMqDEBeJ0wIU8nH8h12dzZA2Cxfj/D4Jg/sw9sKdma7R5tA5SXaA3sokCg
	 BYcNo/ywpKsfpnHw+c5kHDNDsvsUUMkr6GhU3CRypRb+9n+FUBGgBouVCxhHL6xubF
	 OCg/tY+eb8nhVTCG3alv21f0PTWLpPg3ORd8/ncnsZxgQrS/YGsovpMtLuNiSMxhTN
	 a/QUv9Gj0uewA==
MIME-Version: 1.0
Date: Thu, 21 May 2026 13:59:20 +0200
From: gabriel.corona@free.fr
To: oss-security@lists.openwall.com
User-Agent: Webmail Free/1.6.14
Message-ID: <057cf50f332e77a59bd38bcb459f7104@free.fr>
X-Sender: gabriel.corona@free.fr
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Host ambiguous requests through NGINX $host and Debian's proxy_params

When receiving a HTTP/1.x request, NGINX does not check that the 
authority
coming from the request line (if present) is consistent with the 
authority
from the Host header field. In some deployments (when $http_host is 
used)
an attacker could exploit this ambiguity to bypass security restrictions
configured in NGINX (of have other security impacts).

Example:

    GET http://foo/ HTTP/1.1 <- Used for virtual host routing
    User-Agent: UA
    Host: bar                <- Used for $http_host

Debian's proxy_param file used to use $http_host:

    proxy_set_header Host $http_host;

This has been fixed as part of Debian bug #1126960 [1].

In this case, "foo" is used for virtual host routing but the request is
forwarded as:

    GET / HTTP/1.1
    User-Agent: UA
    Host: bar
    X-Real-IP: ...
    X-Forwarded-For: ...
    X-Forwarded-Proto: ...

If the backend application actually makes use of the Host value, this
might have a security impact. For example,

* if the backend application uses the Host value for tenant dispatching;
* and NGINX is configured with per-tenant configuration (eg. 
authorization,
  logging, etc),

then this might have a security impact.

Example NGINX configuration:

  server {
      listen 443 ssl;
      server_name tenant1;
      ssl_certificate           /etc/nginx/ssl/tenant1.crt;
      ssl_certificate_key       /etc/nginx/ssl/tenant1.key;
      location / {
        proxy_pass http://backend;
        include proxy_params;
      }
  }
  server {
      listen 443 ssl;
      server_name host2;
      ssl_certificate           /etc/nginx/ssl/tenant2.crt;
      ssl_certificate_key       /etc/nginx/ssl/tenant2.key;
      location / {
        allow 10.0.0.0/8;
        allow 192.168.0.0/16;
        allow 127.0.0.1/8;
        deny all;
        proxy_pass http://backend;
        include proxy_params;
      }
  }

In this example, tenant2 is expected to be only available from
private IP addresses. However, an attacker could target tenant2
with:

    GET http://tenant1/ HTTP/1.1 <- Used for virtual host routing
    User-Agent: UA
    Host: tenant2                <- Used for $http_host

Another potential application, would be to send access logs
of an attack to the log files of the wrong tenant.

You might be impacted if:

* NGINX is directly exposed;
* you use $http_host (eg. through Debian's proxy_params).

NGINX's position
----------------

NGINX's position is that the bug is to use $http host. NGINX's
documentation recommends using $host [2]:

    proxy_set_header Host $host;

I would claim that NGINX could (should?):

1. either reject host ambiguous requests altogether
  (because they are attacks right?);
2. or override the HTTP header with the value from the request line.

These behaviors are consistent with what other (open-soruce)
HTTP server do:

1. NGINX when using HTTP/2, HA proxy for solution 1;
2. Traefik, Caddy, Apache HTTPD for solution 2.

At the very least, the security impact of using $host vs
$http_host should be better documented.

Mitigations
-----------

Mitigation 1: always use `$host` instead of `$http_host`:

    proxy_set_header Host             $host;
    proxy_set_header X-Forwarded-Host $host;

Mitigation 1b: always use `$server_name` instead of `$http_host`:

    proxy_set_header Host             $server_name;
    proxy_set_header X-Forwarded-Host $server_name;

Mitigation 1c: always the hardcoded expected hostname instead of 
`$http_host`.

    proxy_set_header Host             "www.example.com";
    proxy_set_header X-Forwarded-Host "www.example.com";

Mitigation 2: use NGINX directive to reject ambiguous (malicious) 
requests.

    # Does not work when using ports:
    if ($host != $http_host) {
        return 421 "Ambiguous host";
    }

    # Since nginx 1.29.3:
    if ($http_host != "$host$is_request_port$request_port") {
        return 421 "Ambiguous host";
    }

Debian info
-----------

Snippet from Debian changelogs:

    nginx (1.26.3-3+deb13u4) trixie; urgency=medium
    
      * d/conf/*_params: use "$host" instead of "$http_host"
        * "$http_host" forwards the Host header exactly as supplied by 
the client
          and may not match the effective request target (e.g. 
absolute-form
          requests with a conflicting Host header)
          this can expose inconsistent or attacker-controlled host 
values to
          backend applications (uwsgi, fastcgi, scgi, proxy)
        * switch to "$host" as a safer, normalized alternative
        * note: this changes behaviour, as "$host" does not preserve the
          client-supplied port; deployments relying on "$http_host" 
including
          a port number may be affected
        * it is workaround for Debian bug #1126960 for stable/oldstable 
release
    
     -- Jan Mojžíš <janmojzis@debian.org>  Mon, 20 Apr 2026 17:52:06 
+0000

New proxy_params file:

    # !!! Security workaround !!!
    # Do not set the `Host` header as "$http_host".
    #
    # "$http_host" is the Host header exactly as supplied by the client.
    # This is unsafe when a client sends an absolute-form request target 
together
    # with a different Host header, for example:
    #
    #     GET https://example.com/ HTTP/1.1
    #     Host: malformedhost
    #
    # In such a case, passing "$http_host" upstream exposes the raw 
client-supplied
    # Host value ("malformedhost") to the backend application, even 
though it does
    # not match the effective request target. Applications often use 
HTTP_HOST for
    # redirects, absolute URL generation, virtual host routing, or 
security checks;
    # forwarding the raw Host header can therefore lead to incorrect or 
unsafe
    # behaviour.
    #
    # Newer nginx versions (since 1.30.0) introduce variables 
"$is_request_port" and
    # "$request_port", allowing `Host` to be constructed as:
    #     $host$is_request_port$request_port
    #
    # In stable/oldstable packages we use "$host" as a security 
workaround.
    # It avoids forwarding an untrusted raw Host header to the backend.
    #
    # Note: this changes behaviour compared to previous versions, 
because "$host"
    # does not preserve the client-supplied port, while "$http_host" 
typically
    # does. Existing deployments that rely on "$http_host" containing a 
port number
    # may therefore break or behave differently after this change.
    
    proxy_set_header Host $host;
    proxy_set_header X-Real-IP $remote_addr;
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_set_header X-Forwarded-Proto $scheme;

[1] https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1126960
[2] https://docs.nginx.com/nginx/admin-guide/web-server/reverse-proxy/
[3] 
https://metadata.ftp-master.debian.org/changelogs//main/n/nginx/nginx_1.26.3-3+deb13u5_changelog

Regard,

-- 
Gabriel Corona
