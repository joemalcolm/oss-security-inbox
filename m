X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1887" "Tuesday" "2" "February" "2016" "17:10:22" "+0100" "=?UTF-8?B?xaB0ZWZhbiDFoGFmw6Fy?=" "stefan.safar@firma.seznam.cz" "<56B0D4EE.8010002@firma.seznam.cz>" "58" "[oss-security] Fwd: PHP-FPM fpm_log.c memory leak and buffer overflow" nil nil nil "2" "2016020216:10:22" "[oss-security] Fwd: PHP-FPM fpm_log.c memory leak and buffer overflow" (number mark "U       stefan.safar Feb  2   58/1887  " thread-indent "\"[oss-security] Fwd: PHP-FPM fpm_log.c memory leak and buffer overflow\"\n") "<56A6444E.50800@search-lab.hu>" ("<56A6444E.50800@search-lab.hu>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26004 invoked by uid 550); 2 Feb 2016 16:24:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16265 invoked from network); 2 Feb 2016 16:10:34 -0000
References: <56A6444E.50800@search-lab.hu>
To: <oss-security@lists.openwall.com>
From: =?UTF-8?B?xaB0ZWZhbiDFoGFmw6Fy?= <stefan.safar@firma.seznam.cz>
X-Forwarded-Message-Id: <56A6444E.50800@search-lab.hu>
Message-ID: <56B0D4EE.8010002@firma.seznam.cz>
Date: Tue, 2 Feb 2016 17:10:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <56A6444E.50800@search-lab.hu>
Content-Type: multipart/alternative;
	boundary="------------050002020102010603020801"
X-Originating-IP: [10.0.1.69]
Subject: [oss-security] Fwd: PHP-FPM fpm_log.c memory leak and buffer overflow

--------------050002020102010603020801
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

Forwarding this email as it seems it wasn't sent here. Perhaps a CVE
should be issued?


-------- Forwarded Message --------
Subject: 	PHP-FPM fpm_log.c memory leak and buffer overflow
Date: 	Mon, 25 Jan 2016 16:50:38 +0100
From: 	Imre RAD <imre.rad@search-lab.hu>
To: 	bugtraq@securityfocus.com



The FastCGI Process Manager (FPM) SAPI of PHP was vulnerable to memory
leak and buffer overflow in the access logging feature.

PHP-FPM offers customization of the access log lines based on format
string variables which can be specified with the access.format option of
the FPM configuration file.
The log lines were compiled in php-fpm.c. The %{something}e fields were
processed at line 237:

len2 = snprintf(b, FPM_LOG_BUFFER - len, "%s", env ? env : "-");
...
len += len2;
...
    if (!test && strlen(buffer) > 0) {
         buffer[len] = '\n';
        write(fpm_log_fd, buffer, len + 1);
    }

In case the string being appended to the access log line buffer was
longer than the remaining space, the len variable became longer than the
buffer (FPM_LOG_BUFFER) size, because snprintf returns the number of
characters (excluding the terminating null byte) which would have been
written to the final string if enough space had been available. Then the
PHP engine performed an out-of-boundaries read and also wrote a \n
character outside of the allocated memory.

The fix is available with the commit
http://git.php.net/?p=php-src.git;a=commit;h=2721a0148649e07ed74468f097a28899741eb58f
The fixed versions of PHP are: 5.5.31, 5.6.17 and 7.0.2.

More information:
http://www.search-lab.hu/about-us/news/111-some-unusual-vulnerabilities-in-the-php-engine

Imre Rad
Search-Lab Ltd.
http://www.search-lab.hu/
http://www.scademy.com/




--------------050002020102010603020801--
