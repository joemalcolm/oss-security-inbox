X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/24/9
Message-ID: <60550361.2274998.1792871811010@w4>
Date: Sat, 24 Oct 2026 22:56:51 +0300 (EEST)
From: Roman Kuligin <romaka@...ox.lv>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: PHP 5.4.23 (custom 5.4-5.6) backported patch for PHP2Shell OOM vulnerability (CVE-2026-109618)
Content-Type: text/plain; charset=utf-8

Hello, I have developed a backported .patch for EOL versions of PHP (specifically PHP 5.4, 5.5, and 5.6) to mitigate the critical PHP2Shell Out-of-Memory (OOM) vulnerability (CVE-2026-109618 / CVE-2026-109619). Since these legacy versions are no longer supported by the upstream PHP team, this patch updates the internal memory allocation model to prevent memory exhaustion and crashes during file upload progress tracking. The patch and instructions are publicly available on GitHub: https://github.com/akamor2800/php-5.4-cve-2026-php2shell-patch Best regards.
