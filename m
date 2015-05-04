X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3279" "Monday" "4" "May" "2015" "21:24:06" "+1200" "Matthew Daley" "mattd@bugfuzz.com" "<CAD3CanfvEFLMpKbLaqfAX7b-q76yS63c95t+=J5hcNFjNdwYcA@mail.gmail.com>" "83" "[oss-security] Re: CVE requests / Advisory: phpMyBackupPro" nil nil nil "5" "2015050409:24:06" "[oss-security] Re: CVE requests / Advisory: phpMyBackupPro" (number mark "        mattd@bugfuz May  4   83/3279  " thread-indent "\"[oss-security] Re: CVE requests / Advisory: phpMyBackupPro\"\n") "<20150504061430.6B87013A562@smtpvmsrv1.mitre.org>" ("<CAD3Canczf0QMBQUJdP_BdbN0nFE-ZgzSwBGXyJJZ4qES=y5_cA@mail.gmail.com>" "<20150504061430.6B87013A562@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11374 invoked by uid 550); 4 May 2015 09:24:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11346 invoked from network); 4 May 2015 09:24:17 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=P5On13a1fIq0P2OETptMeFO5JUaG95O6Sml78bXqczU=;
        b=OWClWPBKg+WM8ekFI2rp/QHDSk4zm9PxWgqX6jV337idZzp52L2U/BYjnWgogfbboM
         DGKiOVHw5UyIQBgc9FOJVzHdxO/0rx1bsB4A/yoj5zDHwITYH8LQE93C7NjgcH+Jo0M3
         CVEiUbR2EY+jrA7YhJnHw6MWFjipwFu2zZJxFj5oofPt22J6Bgoqq1oYLoMmunlQXVLE
         QgyKD4fCQYitw73MCNVj9AMYJmxxiZ+mpfNwOIWsnQTcjZNU1uRVYs8yHJWi8d4y82Xl
         4xOTsWlHGOpLtbTBV8pFYQobEUz4V/DtALMdfwRjZIlhOLAPjcBNS6lv0MB3kaxsrxcA
         QYig==
X-Gm-Message-State: ALoCoQknhI/FDVvB6gk11StBo9cM4SQT5OyiUOWtPwwRH+DuQMvGxMnrznhKiSM6b6aFqknxleyp
MIME-Version: 1.0
X-Received: by 10.194.88.71 with SMTP id be7mr39723780wjb.139.1430731446377;
 Mon, 04 May 2015 02:24:06 -0700 (PDT)
In-Reply-To: <20150504061430.6B87013A562@smtpvmsrv1.mitre.org>
References: <CAD3Canczf0QMBQUJdP_BdbN0nFE-ZgzSwBGXyJJZ4qES=y5_cA@mail.gmail.com>
	<20150504061430.6B87013A562@smtpvmsrv1.mitre.org>
Message-ID: <CAD3CanfvEFLMpKbLaqfAX7b-q76yS63c95t+=J5hcNFjNdwYcA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: oss-security@lists.openwall.com
Date: Mon, 4 May 2015 21:24:06 +1200
From: Matthew Daley <mattd@bugfuzz.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE requests / Advisory: phpMyBackupPro
To: cve-assign@mitre.org

On 4 May 2015 at 18:14,  <cve-assign@mitre.org> wrote:
> The final concern is Issue #3. We believe it's valuable to search for
> duplicate CVEs, but there was no comment about whether CVE-2009-4050
> is the same issue. If that 2009 issue was fixed and then reintroduced
> between versions 2.1 and 2.5, then there can be two new CVE IDs for
> the 2015 report.

Huh, didn't stumble across that CVE.

> If that 2009 issue was never fixed, then there was a duplicate
> discovery. We believe that CVE-2009-4050 applies to the larger
> problem: an attacker could use any number of "../" sequences after the
> "get_file.php?view=" part of the URI, including zero "../" sequences.
> There would then be one additional CVE ID for the behavior in 2.5,
> because that behavior represents an incomplete fix for CVE-2009-4050.
>
> By default, we would use the second interpretation for Issue #3. In
> other words, unless someone can establish that CVE-2009-4050 was fixed
> in 2.2, 2.3, or 2.4, we'll conclude that Issue #3 is a duplicate
> discovery, and we'll send the one ID for the "incomplete fix" CVE.

So, a disclosure for CVE-2009-4050 is at
<https://www.exploit-db.com/exploits/10169/>. Looking at it, there's a
relevant snippet of (presumably) 2.1's code:

--- 8< ---
// show the requested file
if (isset($_GET['view']) && file_exists($_GET['view'])) {
        if (isset($_GET['download'])) {
                header("Content-Type: application/octet-stream");
                header("Content-Disposition: attachment;
filename=".basename($_GET['view']));
                readfile($_GET['view']);
        } else {
                ...
        }
--- 8< ---

The equivalent code in 2.4 is:

--- 8< ---
// show the requested file
if (isset ($_GET['view']) && file_exists($_GET['view'])) {

        $ext4 = substr($_GET['view'],-4);
        $ext5 = substr($_GET['view'],-5);
        $ext7 = substr($_GET['view'],-7);
        $ext8 = substr($_GET['view'],-8);
        if ($ext4 != ".php" && $ext5 != ".html" && $ext4 != ".htm" &&
$ext5 != ".php3" && $ext4 != ".sql" && $ext8 != ".sql.zip" && $ext7 !=
".sql.gz") {
                echo GF_INVALID_EXT . "!";
        } else {
                if (isset ($_GET['download'])) {
                        header("Content-Type: application/octet-stream");
                        header("Content-Disposition: attachment;
filename=" . basename($_GET['view']));
                        readfile($_GET['view']);
                } else {
                        ...
                }
        }
--- 8< ---

So it appears that the attempted fix to CVE-2009-4050 was to add a
file extension whitelist (.php, .html, .php3, ...). However, directory
traversal was still possible after this fix, and the whitelisted file
extensions still allow "interesting" files to be retrieved, namely the
config PHP file.

In response to my bug report, in 2.5 a filename suffix blacklist was
added to attempt to fix the latter issue, but it can still be bypassed
(by adding a /x/../ sequence to the last part of the path).

So, I would suggest:

* CVE-2009-4050 = original fully-arbitrary file download
* New 2009 CVE = incomplete fix in 2.2(?) (adding a file extension whitelist)
* New 2015 CVE = incomplete fix in 2.5 (adding a filename suffix blacklist)

HTH,

- Matthew
