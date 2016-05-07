X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2036" "Saturday" "7" "May" "2016" "11:19:35" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160507151935.2B6DA332055@smtpvbsrv1.mitre.org>" "48" "[oss-security] Re: CVE Request: Linux: IB/security: Restrict use of the write() interface'" "^Cc:" nil nil "5" "2016050715:19:35" "[oss-security] Re: CVE Request: Linux: IB/security: Restrict use of the write() interface'" (number mark "        cve-assign@m May  7   48/2036  " thread-indent "\"[oss-security] Re: CVE Request: Linux: IB/security: Restrict use of the write() interface'\"\n") "<20160507042232.GA5286@eldamar.local>" ("<20160507042232.GA5286@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11820 invoked by uid 550); 7 May 2016 15:19:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11802 invoked from network); 7 May 2016 15:19:47 -0000
In-Reply-To: <20160507042232.GA5286@eldamar.local>
Message-Id: <20160507151935.2B6DA332055@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, dledford@redhat.com, secalert@redhat.com, benh@debian.org
Date: Sat,  7 May 2016 11:19:35 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Linux: IB/security: Restrict use of the write() interface'
To: carnil@debian.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://git.kernel.org/linus/e6bd18f57aad1a2d1ef40e646d03ed0f2515c9e3

> The drivers/infiniband stack uses write() as a replacement for
> bi-directional ioctl().  This is not safe. There are ways to
> trigger write calls that result in the return structure that
> is normally written to user space being shunted off to user
> specified kernel memory instead.

Use CVE-2016-4565.


> For long term, update the user space libraries and the kernel API
> to something that doesn't present the same security vulnerabilities
> (likely a structured ioctl() interface).

As far as we can tell, this statement does not imply that there is a
remaining known vulnerability after
e6bd18f57aad1a2d1ef40e646d03ed0f2515c9e3 - instead, this statement
only suggests a possible functionality problem, e.g., there might be
third-party code or in-development code that was attempting to rely on
write calls for a legitimate purpose, and this code has now stopped
working without an immediate workaround.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXLgZZAAoJEHb/MwWLVhi29cEP/0J4S+2R9nVMJlexim783uu+
YdU/ivYcTS6jxj3KuUPRZnmWWJbE4h/73/sa9H2pdu0CzR0LmqICeeP94zGO2Jn7
8zoEBst07RqisgNgZFu+TCgvmwemoPEEE9OkTmurQBh3r5lcmR9I6wJulXJ8n1l2
rXOw796aR5KoYYyl9cjDU9hU1ufvrMi6hDThEb8+THFpoTus/kyOFhnZ74B4kUux
EjqTdrSZIqneCi5EIY5xxCZYo4LlsXx5rlZF6Yqhcg1jC5G/6jtzIZSjws0ZVPY7
Ueen2yV37Ms3d1YdTSo4QBCzMon2sMC0j1Jj0Ov+g2jWbHZh6zU+V5z6Xjf8nH0B
TgKWdG/wYOpcY1si+lfZbtKQwHvM2i1RZP5mH6v/lggCYivA72Q+KPmDSdpIq395
YOFKWRfA8xarcfmeENhFLKjgp/QlZn26TAuMdzSvrcbkqqMUk/XHHcifR4J46gjI
vCu47kmL0hJV6Q0GhX9cZ2A2/8cXSjpxfgQTG3ifjtuxdugXHxXSOoEx9o36NVWH
1dt0L+YISIkh0yUx7lF5qQ1NoTMLnY2RHuKOeJFoRz8xyrbH5c4cizuyXYeFbKRC
C7uxW98W0OxbORLWpjrgcjFBCnIDWIrgGh9fJAECQS3gV6A5k1EmZDtSmMAhjzE+
LY6zu+JLlIGbCDdCOL/o
=Zjzu
-----END PGP SIGNATURE-----
