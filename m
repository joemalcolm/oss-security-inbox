X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/10/1
Message-ID: <55328b5d-3e87-4f29-a193-7cd2a76bb1bc@oracle.com>
Date: Fri, 9 Oct 2026 16:07:22 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: 3 Vulnerabilities in GNU Aspell before 0.60.8.3
Content-Type: text/plain; charset=utf-8

https://cert.pl/en/posts/2026/10/CVE-2026-75818/ says:
> CERT Polska has received a report about vulnerabilities in GNU Aspell
> software and participated in coordination of their disclosure.
> 
> The vulnerability CVE-2026-75818: GNU Aspell prezip-bin contains a
> heap-based buffer overflow vulnerability in the decompressor in
> prog/prezip.c. The decompressor does not properly check buffer space,
> so a crafted compressed file can cause out-of-bounds read and write
> operations on the heap. An attacker who convinces a user to process a
> malicious compressed file with prezip-bin can trigger memory
> corruption, leading to a processs crash.
> 
> This issue was fixed in commit 15b188437f9e0192d4ac4472ad66a4e2f62a782f
> which will be released in version 0.60.8.3.
> 
> 
> The vulnerability CVE-2026-75819: GNU Aspell contains an out-of-bounds
> read vulnerability in ReadOnlyDict::load() in readonly_ws.cpp. When
> loading a binary .rws dictionary file, it uses offset fields from the
> file header as byte indices into a heap buffer without validating
> their bounds. An attacker can trigger this by convincing a user to run
> aspell with a crafted dictionary file supplied through --master,
> --dict-dir, or configuration options, leading to heap memory
> disclosure or a denial of service via application crash.
> 
> This issue was fixed in commit 941953b25031bc9104e83f58e138a664b8dedc3f
> which will be released in version 0.60.8.3.
> 
> 
> The vulnerability CVE-2026-75820: GNU Aspell contains an integer
> truncation vulnerability in the WritableDict::add() function in
> modules/speller/default/writable.cpp. When loading a personal
> wordlist, the word length is stored as a single byte, causing
> truncation for words whose length is a multiple of 256. This leads to
> heap corruption. An attacker can exploit this by convincing a user to
> run aspell with a crafted personal wordlist containing such a word,
> resulting in denial of service.
> 
> This issue was fixed in commit 782ce94e4dc71eaec4ee1bd945eb3b9c47c5387d
> which will be released in version 0.60.8.3.
> 
> Credits
> -------
> We thank Michał Majchrowicz and Marcin Wyczechowski from AFINE Team
> for the responsible vulnerability report.



