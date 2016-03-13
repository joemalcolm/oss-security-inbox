X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1389" "Sunday" "13" "March" "2016" "11:01:33" "+0200" "Dmitry Kasyanov" "dkasyanov@cloudlinux.com" "<CAC1DjbY5DcefwkS8ba0iJj6sE8EM10PBE9YsyE59U9_MCmP8tg@mail.gmail.com>" "49" "[oss-security] CVE Request: PHP-5.5.33: Out-of-Bound Read in phar_parse_zipfile" nil nil nil "3" "2016031309:01:33" "[oss-security] CVE Request: PHP-5.5.33: Out-of-Bound Read in phar_parse_zipfile" (number mark "U       dkasyanov@cl Mar 13   49/1389  " thread-indent "\"[oss-security] CVE Request: PHP-5.5.33: Out-of-Bound Read in phar_parse_zipfile\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22164 invoked by uid 550); 13 Mar 2016 09:01:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22146 invoked from network); 13 Mar 2016 09:01:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudlinux-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:date:message-id:subject:from:to;
        bh=yLsJ4yXp4IcqyWn1w3r3ElMgs7jKOdLzA8xPl6F/D6E=;
        b=RFaix+HDJf1FpqLwzIFAu5BYVybGy0pavaCuO9VJAuZIWbY6B61/UJMotOfW574Xa2
         SHGJqsPWm6SzfBmUDdESMZ0uHVytW/Y5N1qvu3dHco/SWn3M7di830limlDHTLSZpBQd
         CO+laKlxznMonuSriUEk638fVf/zJrn5XcjQmeajM9ycaqt7jt91FkjC4DWMk8NgTEnv
         sV627tB6GUSzow/yWOFOljQBfNFRdM7cKPmR8YRxR4eEdA+QwJ+I3tO/IdjOakEfSL86
         nS2W3h7B3xr9YREgAHz11wdFEBU57iZsNo8GDwI6PAspoFIYSwRRYsBps7FVQPQ8DueM
         AQ6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=yLsJ4yXp4IcqyWn1w3r3ElMgs7jKOdLzA8xPl6F/D6E=;
        b=I2ajqqyoYajtKWax/bG+41f1AzEtAqCgSQyqjwyHFh/sgI5dq5tY+27E4d2UWNXet+
         LJMWI4srT+xp2KMv3US87TLfuPM7RBNUQABLNAK4thtkduatm+2T1vP4rRTIcsyfCxhL
         4vveuMYm2tKo5dPakBoieG1VCWYv4lywHnio6nqUtZun1JHZ//8HLYZNv0myXsk85Y9T
         SqRaWP5OcgCrhhOW9Yd5/qWD3lebuLHO8pm5LcCpoePtViwt83CkFZViz6Ur8Dfr0lV+
         BRfCpldMvXW1RZP380sr8Qntkxfpb77ISC3rx3K0bp8zPb3fQjO1BM4bV+swQ1WBbGb3
         vPYA==
X-Gm-Message-State: AD7BkJIzsJSU0b0yrasHMd/6m8zhF2PEdKE9Bo3mKA2Bf1nfqSfbvu5giGbxpeNGPEEf0lWReSq5YdvySBSkyA==
MIME-Version: 1.0
X-Received: by 10.31.15.4 with SMTP id 4mr17098371vkp.10.1457859693592; Sun,
 13 Mar 2016 01:01:33 -0800 (PST)
Date: Sun, 13 Mar 2016 11:01:33 +0200
Message-ID: <CAC1DjbY5DcefwkS8ba0iJj6sE8EM10PBE9YsyE59U9_MCmP8tg@mail.gmail.com>
From: Dmitry Kasyanov <dkasyanov@cloudlinux.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE Request: PHP-5.5.33: Out-of-Bound Read in phar_parse_zipfile

An out-of-bounds read vulnerability was found in PHAR's
phar_parse_zipfile() function.

Vulnerable code:

ext/phar/zip.c:

int phar_parse_zipfile(php_stream *fp, char *fname, int fname_len,
char *alias, int alias_len, phar_archive_data** pphar, char **error)
/* {{{ */
{
phar_zip_dir_end locator;
char buf[sizeof(locator) + 65536];
...
while ((p=(char *) memchr(p + 1, 'P', (size_t) (size - (p + 1 -
buf)))) != NULL) {
if (!memcmp(p + 1, "K\5\6", 3)) {
memcpy((void *)&locator, (void *) p, sizeof(locator));
if (PHAR_GET_16(locator.centraldisk) != 0 ||
PHAR_GET_16(locator.disknumber) != 0) {
/* split archives not handled */
php_stream_close(fp);
if (error) {
spprintf(error, 4096, "phar error: split archives spanning multiple
zips cannot be processed in zip-based phar \"%s\"", fname);
}
return FAILURE;
}
...

The above code block tries to determine where in buf is "PK\x05\x06",
which is actually "End of central directory record" structure of zip
file. Then it copies 0x16 bytes from there to `phar_zip_dir_end
locator`. If "PK\x05\x06" signature is located at end of `buf`
variable, it will read out-of-bound `buf` variable and copy to
`locator`.

Details available at PHP bug tracker:

https://bugs.php.net/bug.php?id=71498

Patch:

https://git.php.net/?p=php-src.git;a=commit;h=a6fdc5bb27b20d889de0cd29318b3968aabb57bd


-- 
Dmitry Kasyanov  |  Developer
dkasyanov@cloudlinux.com
