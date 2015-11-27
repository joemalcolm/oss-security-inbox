X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1462" "Saturday" "28" "November" "2015" "09:24:58" "+1000" "Brendan Scarvell" "bscarvell@iix.net" "<CAOJmqsBY+1OxEOE5Z4FCqb+5DPfgxGbAk97XCPoyQFdrgfqaNg@mail.gmail.com>" "38" "[oss-security] CVE request: XSS to RCE in PHP-Fusion 9" nil nil nil "11" "2015112723:24:58" "[oss-security] CVE request: XSS to RCE in PHP-Fusion 9" (number mark "U       bscarvell@ii Nov 28   38/1462  " thread-indent "\"[oss-security] CVE request: XSS to RCE in PHP-Fusion 9\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12234 invoked by uid 550); 28 Nov 2015 00:10:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7825 invoked from network); 27 Nov 2015 23:25:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iix-net.20150623.gappssmtp.com; s=20150623;
        h=mime-version:date:message-id:subject:from:to:cc:content-type;
        bh=P16o5LX+FlenqGXbvnQHjltPECBZd54FHMUqTsb4R/I=;
        b=uRHz5cef8chzcRJcFnxXKQbq5ffaMwRXzpIOWzHGUgVb8YCC+QWSt8gcGyQVq55zr1
         T+22+DP232d9uJWZvDbA3ojimN6xcTEc/X8SPgO2o1iEiwzMLpcqQC9S8chvGS24CiSB
         HN6lW3ohd8yO5uajJ51wCprXH/kIlhGAX4cT2hm6otA0VMiF7EZnVn5qXovUbtOkzbsI
         42a3BZ5R4fTV/5DBqHxP8PQvRE6q4J71aWbrdZeNlCTwTI73nk6K1DXQKC5BQCB2ltWt
         rZDNomVnFeujQy7sVH3T0iVBKZPg03sznaEva9iNHnOhHDZecwYKupufx9vz6W8CXDTI
         9Ikw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc
         :content-type;
        bh=P16o5LX+FlenqGXbvnQHjltPECBZd54FHMUqTsb4R/I=;
        b=DsrJatgTEq4kS2lMRMx/5rqgT91gM4OpZIByfFObf5pw+icsgKigcNv1DYZQ0/Nxux
         lfuvrWmPZs/CPW+jgXfrm9kDE9r0E2hgZK5CMbDjVnyVR1Q6ywFup9AfgS5QYMysTq2S
         7Eo80+r2faiDSZL5RyYK3CD+gOByFiesLFFA2XmxvuGoojcan25aJ746p1oZzVMKiQHC
         wsDdTG3VhaoBMkGPAkqFTw8SyyGs0YpA6IyGrIWy/337lRc0KTTWUDfTMKY/mVDgOTyW
         wWXE9Cu28HNyRdn9B1OP2+XYYa3uL2QZ3TKnzYLJPB51pD79C561GPqY8utVyvWV32G1
         UJuA==
X-Gm-Message-State: ALoCoQlbSn5+OOi0NWnAe9BQhJKZ4X4DkynEdUglWKjFxGGURGAO0jn4yLFvrSYedyWu39q9zr1E
MIME-Version: 1.0
X-Received: by 10.194.6.196 with SMTP id d4mr39399514wja.120.1448666698552;
 Fri, 27 Nov 2015 15:24:58 -0800 (PST)
Date: Sat, 28 Nov 2015 09:24:58 +1000
Message-ID: <CAOJmqsBY+1OxEOE5Z4FCqb+5DPfgxGbAk97XCPoyQFdrgfqaNg@mail.gmail.com>
From: Brendan Scarvell <bscarvell@iix.net>
To: oss-security@lists.openwall.com
Cc: kseifried@redhat.com
Content-Type: multipart/alternative; boundary=047d7b5d4976f7309905258dff1a
Subject: [oss-security] CVE request: XSS to RCE in PHP-Fusion 9

--047d7b5d4976f7309905258dff1a
Content-Type: text/plain; charset=UTF-8

I discovered a stored XSS vulnerability in PHP-Fusion 9 that can result in
RCE. Robots.php is an administration tool that allows an administrator with
access to this feature to modify the robots.txt file.

The robots.txt editor fails to sanitize the robots.txt file content as it
loads the <textarea> content. Someone who has access to this tool, can
submit a malicious payload to the contents of the robots.txt file.

When a higher privileged user browses the robots.txt editor, the XSS
payload does a silent ajax request to /administration/banners.php and pulls
out their hidden CSRF token. It then uses their syphoned CSRF token and
performs an ajax POST request to the banners page with PHP code that is
then executed unbeknownst to the victim, resulting in a reverse TCP shell
to an attackers server.

A working payload can be found here:

https://gist.github.com/bscarvell/57f82000bf823071404e

The issue has been resolved in the following commit:

https://github.com/php-fusion/PHP-Fusion/commit/f1a5fce791e2392d5a23a6d62ab65c481cdd6a66

This breaks a trust boundary as a user with access to only the robots.txt
editor can use this to escalate their privileges, read files or gain a
reverse TCP shell on the server.

Please assign a CVE ID to this issue. A request was sent to MITRE directly
18 days ago with no response.

Thanks,

Brendan Scarvell

--047d7b5d4976f7309905258dff1a--
