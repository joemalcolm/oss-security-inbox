X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3488" "Tuesday" "2" "June" "2015" "18:01:34" "+1200" "Matthew Daley" "mattd@bugfuzz.com" "<CAD3CandbSkBH-MZwPH2uKpYR9SMBcT68Si5ZMPLhiDsu9WyDpA@mail.gmail.com>" "86" "[oss-security] Re: CVE requests / Advisory: phpMyBackupPro" nil nil nil "6" "2015060206:01:34" "[oss-security] Re: CVE requests / Advisory: phpMyBackupPro" (number mark "        mattd@bugfuz Jun  2   86/3488  " thread-indent "\"[oss-security] Re: CVE requests / Advisory: phpMyBackupPro\"\n") "<CAD3CanfvEFLMpKbLaqfAX7b-q76yS63c95t+=J5hcNFjNdwYcA@mail.gmail.com>" ("<CAD3Canczf0QMBQUJdP_BdbN0nFE-ZgzSwBGXyJJZ4qES=y5_cA@mail.gmail.com>" "<20150504061430.6B87013A562@smtpvmsrv1.mitre.org>" "<CAD3CanfvEFLMpKbLaqfAX7b-q76yS63c95t+=J5hcNFjNdwYcA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15632 invoked by uid 550); 2 Jun 2015 06:01:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15613 invoked from network); 2 Jun 2015 06:01:45 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=hRs1z8Bcx1cMbn3rKK3VLkSl+yXxqOTTPAHeuz3kmMY=;
        b=DMWKFyGlC8Fuzx9xob8livJizRNmubDCg22hhWsG8vgNKeX/sXHVb0D8auoOF4hShV
         iVNdw2Jdtn6NZ3HM6g9TMQKKFccLf6cF8jpUo+0ELcmYSBGGH/Nnd37qg1lVKIHruYrb
         MwtYu1SlgNxxk1pAaSWESvLIsw8yNCAA8EIZ+BdXIBH5908JoE+LHw51meY34S9mWDHU
         z8QDSeaflt2H0DewmWEriO1SHiGqWWVztqylXjtcqoY4rNgNfRrtP3/kYAzbK7tkDam1
         mAtVgfq+kIrelA2fE6bJxnZSydClKGUfHrf9pWdepESq7SPkbBSwVIIEE1vikRVDQjOQ
         cprQ==
X-Gm-Message-State: ALoCoQnLkULfj7QQFfEqTl/xFKvoRn7qptFz015401v1muocps+Dj21Og8IDD+A1cz3cKY6ySz6+
MIME-Version: 1.0
X-Received: by 10.194.110.100 with SMTP id hz4mr48347001wjb.6.1433224894161;
 Mon, 01 Jun 2015 23:01:34 -0700 (PDT)
In-Reply-To: <CAD3CanfvEFLMpKbLaqfAX7b-q76yS63c95t+=J5hcNFjNdwYcA@mail.gmail.com>
References: <CAD3Canczf0QMBQUJdP_BdbN0nFE-ZgzSwBGXyJJZ4qES=y5_cA@mail.gmail.com>
	<20150504061430.6B87013A562@smtpvmsrv1.mitre.org>
	<CAD3CanfvEFLMpKbLaqfAX7b-q76yS63c95t+=J5hcNFjNdwYcA@mail.gmail.com>
Message-ID: <CAD3CandbSkBH-MZwPH2uKpYR9SMBcT68Si5ZMPLhiDsu9WyDpA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: oss-security@lists.openwall.com
Date: Tue, 2 Jun 2015 18:01:34 +1200
From: Matthew Daley <mattd@bugfuzz.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE requests / Advisory: phpMyBackupPro
To: cve-assign@mitre.org

Ping.

On 4 May 2015 at 21:24, Matthew Daley <mattd@bugfuzz.com> wrote:
> On 4 May 2015 at 18:14,  <cve-assign@mitre.org> wrote:
>> The final concern is Issue #3. We believe it's valuable to search for
>> duplicate CVEs, but there was no comment about whether CVE-2009-4050
>> is the same issue. If that 2009 issue was fixed and then reintroduced
>> between versions 2.1 and 2.5, then there can be two new CVE IDs for
>> the 2015 report.
>
> Huh, didn't stumble across that CVE.
>
>> If that 2009 issue was never fixed, then there was a duplicate
>> discovery. We believe that CVE-2009-4050 applies to the larger
>> problem: an attacker could use any number of "../" sequences after the
>> "get_file.php?view=" part of the URI, including zero "../" sequences.
>> There would then be one additional CVE ID for the behavior in 2.5,
>> because that behavior represents an incomplete fix for CVE-2009-4050.
>>
>> By default, we would use the second interpretation for Issue #3. In
>> other words, unless someone can establish that CVE-2009-4050 was fixed
>> in 2.2, 2.3, or 2.4, we'll conclude that Issue #3 is a duplicate
>> discovery, and we'll send the one ID for the "incomplete fix" CVE.
>
> So, a disclosure for CVE-2009-4050 is at
> <https://www.exploit-db.com/exploits/10169/>. Looking at it, there's a
> relevant snippet of (presumably) 2.1's code:
>
> --- 8< ---
> // show the requested file
> if (isset($_GET['view']) && file_exists($_GET['view'])) {
>         if (isset($_GET['download'])) {
>                 header("Content-Type: application/octet-stream");
>                 header("Content-Disposition: attachment;
> filename=".basename($_GET['view']));
>                 readfile($_GET['view']);
>         } else {
>                 ...
>         }
> --- 8< ---
>
> The equivalent code in 2.4 is:
>
> --- 8< ---
> // show the requested file
> if (isset ($_GET['view']) && file_exists($_GET['view'])) {
>
>         $ext4 = substr($_GET['view'],-4);
>         $ext5 = substr($_GET['view'],-5);
>         $ext7 = substr($_GET['view'],-7);
>         $ext8 = substr($_GET['view'],-8);
>         if ($ext4 != ".php" && $ext5 != ".html" && $ext4 != ".htm" &&
> $ext5 != ".php3" && $ext4 != ".sql" && $ext8 != ".sql.zip" && $ext7 !=
> ".sql.gz") {
>                 echo GF_INVALID_EXT . "!";
>         } else {
>                 if (isset ($_GET['download'])) {
>                         header("Content-Type: application/octet-stream");
>                         header("Content-Disposition: attachment;
> filename=" . basename($_GET['view']));
>                         readfile($_GET['view']);
>                 } else {
>                         ...
>                 }
>         }
> --- 8< ---
>
> So it appears that the attempted fix to CVE-2009-4050 was to add a
> file extension whitelist (.php, .html, .php3, ...). However, directory
> traversal was still possible after this fix, and the whitelisted file
> extensions still allow "interesting" files to be retrieved, namely the
> config PHP file.
>
> In response to my bug report, in 2.5 a filename suffix blacklist was
> added to attempt to fix the latter issue, but it can still be bypassed
> (by adding a /x/../ sequence to the last part of the path).
>
> So, I would suggest:
>
> * CVE-2009-4050 = original fully-arbitrary file download
> * New 2009 CVE = incomplete fix in 2.2(?) (adding a file extension whitelist)
> * New 2015 CVE = incomplete fix in 2.5 (adding a filename suffix blacklist)
>
> HTH,
>
> - Matthew
