Received: (qmail 15905 invoked by uid 550); 30 May 2026 12:18:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9767 invoked from network); 30 May 2026 00:12:16 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1780099928; cv=none;
        d=google.com; s=arc-20240605;
        b=NinmB/8oVEzk9rXW3yLVZh0Zw0PBl9dAZqujbesLaysA92HNTJvmp3LihlfJ7b/S0U
         XZwnrcQgRHOjFoH/2q6+NijZP9/ygbhJadOECP6ZhCVh5hL6iAhgcwb7AlvHMWvuZfR+
         4sbzatH0VY3TTsmsfyUVYgePJp1nNSQemZ0WOnlCJObdnQKDpFWaqJ0mO9niso3V8zhc
         wq+eClX1eJZ7i9EofTuU9bcHcU49G28cxczaAYvCTt56z/YHJLvtziyq4nTnId+7Wzk3
         9S9awFf9yaUINzVa7JJQ2/6GfPRRbxqHNwZ+GZi1zjJOLvK9JrkZ6kvM2tWb3gHg8zc/
         dgeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=c+Rn5xzLwTpcRmXzu8HT7CnvgKwHkL1fqW2YvjnPrK4=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=ZKndMjRCqQMkc8eil3rSseRa+ANIGmhthbglZwcBHyn3if7LdRVjjHoELSZM1fQio3
         oVM2STjrOO2At9az31i0w/0Hx3gJ+1oAPjiAORFtvNRWdKz4RMk1yyF/0RCCX0NW8II+
         IFKNgQP3Y9BMZezHCeS6IA/UktAfYV6pOiejXp4tYSPNSB/mmCX/4S1YsdqdiU7/VG1Z
         fTu4njCm35BkNPufiGB6WKCX6pDLWLPS6smONuz3kcRIQJKRMe5BayPHzXmbOjtZ807I
         Zb5I/OVw3tvJg6M73bK/ej0bRNOvyKWsjg50Bucq7UEBYgzKYW4CJ8LrNDeLImbvHt99
         Ockg==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780099928; x=1780704728; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=c+Rn5xzLwTpcRmXzu8HT7CnvgKwHkL1fqW2YvjnPrK4=;
        b=jxmWTeMaehc/8uTa5RD9YXnwwrkMKJlIehXhoxpB9dKZggHPY49opWSAqeCKYcSNa5
         Jo2zBm87hi1qAXnlW/O1UlXN5CIQMC42yF359sNCLki8Ky8ii3+pHMemNcsdp3jSDkSR
         yNXst71JRkaXvpEOirCHBggWYQxqPhNFYeDA0BTYH+FGs6PS1WjtEeqaWTXODn/BEiAX
         v9/n+utyD8Qxb1YwNlvD/3HuPF/uWeMec8rNgMA9u5O8K40yRiGRQWGtscIONeVdZrBV
         VA7dDN9jhcE/IomJGDWc9ADGwU+JvGzuWGMXACdPpWbxFoFhdmZoL5gGjOLip6PmOlC/
         61bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780099928; x=1780704728;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c+Rn5xzLwTpcRmXzu8HT7CnvgKwHkL1fqW2YvjnPrK4=;
        b=tEiQXZrpmuJgvShe1uQQIggPy0r4vqkSsgQkJCX2dR3vuD2gaq94yQLsLEwB/JHKDY
         K9wYxIrPjyh75vvf8x41deuP36zrjvZGDDaBmVFLTo64B09N2WWM5U2ZFLKqPfeIuAeI
         O/IAVa7/XSAsY5otzamN76YFY26BVFyvKxBPzJaJjHKrZohoDhQYDBWBcSZa1CkqyMrD
         dNmXXsXJfiTfyPnvFXIHlDSrfGICx+M2ayyO4AWeqim9UEeqKfNlHc7307TlVQWEqo2t
         wggvYEdcLybO0ypYhc6+Z8XnqhkybZGLHUjU4Mv52Z3obHSfM4pw1tgQ88wCuuX8Lu4v
         swrA==
X-Gm-Message-State: AOJu0YyvQ9LTpDh87Cp50aWJoJ/zQYAPCnDzq5IxcRU28T84YWkgy50k
	9WipwXVG4EnsTsboIfsSMwKUAGmOpQS4UC4ELuDoZtzEYKsQpTWX5dzBfnynMu44nG8NyGFaa6i
	3nTLNRBD7KX/RQXJMJJBUMiXZjvg3aBKprQ==
X-Gm-Gg: Acq92OHkqCJJ777Lf5C2MYX/g2J1wFXMiLka8zsHd9fTO8iQZ1JSf89wv+lX/TOueW5
	TcbWG/a5P83lenbsQqTIdWL+ozSFCXk+QRv7QC7Yw2yaEJzq78puJbur4XG1ww8ZokTs54WPi6/
	/xXLLMltW9Yp44/QukVEV7WVwxXRYZ84b+hAUmpaD4k//e5Ky172qiz6vtVYR24BCZfA7MSXI3z
	kuXWH3j6rLzz63DMnjzmv18VTZPUQN17bQtodKLjsOLqmKVGb3oVL8/AEUK8WplxbELWt6CnAxr
	8WoZ2SkdxyvszKbjFecu70oFw1R+cTefFTGVBqpnDvHj3VTVvLO8P17yJAzmJjXn79OLHiNiMpH
	GEFG60Q==
X-Received: by 2002:a05:600c:4e8c:b0:490:a171:fc1 with SMTP id
 5b1f17b1804b1-490a292bff9mr11883435e9.5.1780099927951; Fri, 29 May 2026
 17:12:07 -0700 (PDT)
MIME-Version: 1.0
From: Abhinav Agarwal <abhinavagarwal1996@gmail.com>
Date: Fri, 29 May 2026 17:11:41 -0700
X-Gm-Features: AVHnY4I0glDKIQTAvgxtEpT1Ee1wnFBrzJutG-F-RKhtHqHSlLOeZxAXxRItDec
Message-ID: <CAK3hNHZLtF=DE2mPn0S-VfhCW4C4-W5h+K9oB9=2Hzj94dhjHQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000decc3c0652fdcf6d"
Subject: [oss-security] CVE-2026-47187, CVE-2026-48711: sshfs <= 3.7.5 symlink escape (local
 file read/write) and ssh argument injection (local command execution)

--000000000000decc3c0652fdcf6d
Content-Type: text/plain; charset="UTF-8"

Two vulnerabilities in sshfs (FUSE filesystem over SFTP) have been
assigned CVEs and fixed in sshfs 3.7.6.

Affected versions: sshfs <= 3.7.5
Fixed in: sshfs 3.7.6
https://github.com/libfuse/sshfs/releases/tag/sshfs-3.7.6


CVE-2026-47187: Symlink escape - rogue SFTP server -> local file read/write
Severity: Critical (CVSS 9.3, CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:H/I:H/A:N)
CWE: CWE-59 (Improper Link Resolution Before File Access)

A rogue SFTP server can return symlink targets (absolute paths or
relative "../../../" escapes) that sshfs passes to the kernel
unchanged. The kernel resolves them on the client's local filesystem,
so an ordinary "cp" through the mountpoint can read local files back
to the server or write server-controlled bytes to local files.
transform_symlinks does not cover relative targets.

Fixed by a new contain_symlinks option (default on) that rejects
absolute targets and any target containing "..", returning EPERM.

Advisory:
https://github.com/libfuse/sshfs/security/advisories/GHSA-pjv6-2c3f-r357
Credit: Abhinav Agarwal (reporter)


CVE-2026-48711: ssh argument injection via bracketed mount source
Severity: High (CVSS 7.0, CVSS:3.1/AV:L/AC:H/PR:N/UI:R/S:U/C:H/I:H/A:H)
CWE: CWE-88 (Argument Injection)
Confirmed affected: sshfs 1.4 through 3.7.5

A mount source such as "[-oProxyCommand=CMD]:/path" is accepted as a
positional source; find_base_path() strips the brackets as an IPv6
literal, leaving "-oProxyCommand=CMD" as the hostname, which sshfs
passes to ssh as an option. When the caller sets a path-valued
sftp_server, ssh gets a destination argument and runs the injected
ProxyCommand before connecting, giving arbitrary local command
execution as the user running sshfs, with no SSH authentication.
Requires a caller that passes an attacker-controlled mount source and
uses a path-valued sftp_server.

Fixed by rejecting hostnames that begin with "-" after bracket
normalization, and adding an ssh end-of-options marker ("--") before
the hostname.

Advisory:
https://github.com/libfuse/sshfs/security/advisories/GHSA-mm85-q63v-4476
Credit: Abhinav Agarwal (reporter)


Both issues were reported privately to the sshfs maintainer through
GitHub's private vulnerability reporting and fixed in a coordinated
release.

Timeline (UTC):
2026-05-16 CVE-2026-47187 (symlink escape) reported
2026-05-18 CVE-2026-48711 (argument injection) reported
2026-05-29 GHSA advisories published
2026-05-29 sshfs 3.7.6 released with fixes for both

-- Abhinav Agarwal

--000000000000decc3c0652fdcf6d--
