X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3720" "Thursday" "9" "November" "2017" "07:12:21" "-0500" "Robert Watson" "robertcwatson1@gmail.com" "<CAOfWR+ELnVxixsJ3HCLCQWC_wXwQxqNMvpmW=F+P8Nmt_iz1Lw@mail.gmail.com>" "92" "Re: [oss-security] [CVE-2017-14604] .desktop vulnerability again" nil nil nil "11" "2017110912:12:21" "[oss-security] [CVE-2017-14604] .desktop vulnerability again" (number mark "U       robertcwatso Nov  9   92/3720  " thread-indent "\"Re: [oss-security] [CVE-2017-14604] .desktop vulnerability again\"\n") "<1507235866.17141.24.camel@debian.org>" ("<1507235866.17141.24.camel@debian.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32586 invoked by uid 550); 9 Nov 2017 12:21:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20358 invoked from network); 9 Nov 2017 12:13:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=moXdGR3mSUVwKpHfsIL+kP9z2Q5MDnDXbl58iewLKoQ=;
        b=liw041e+vL6iwja4C9jEgt453ywO2baj6AsKwHf52Bost3ymU7DEKmGF7YuhnRdlZT
         Bq3GX8Hc9CaKed3sgW1Pr3NC4fuNQ5PJtV8WG2SAPoprOSJgYehemUYDCRIRDnNhvnA3
         YmxygF2rgeciqs9ksRpRVkr5NapSzHevEmP0ctqwfL3B/LDOIN0IFXfHFvwU9mXRs8XY
         cOWdNh5PVmstl/wiBkg6Bwcg6GGa3+W4SXSRFtGJ4U5vKqkjEvAzBUnN2iXJaS1S/1LZ
         Uaa3XhEG/dGABIbiF1BTBizbea7NDugGboXXdepobqZhDyCR07RJqUZ6xnlnUF0gOLOG
         sL7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=moXdGR3mSUVwKpHfsIL+kP9z2Q5MDnDXbl58iewLKoQ=;
        b=njo+bhM4myYDnigtxowE9g1HHw56MvHl+3r5FVd9ZM41Yia5nhb7kKDUkd/Mb2fYAd
         5C4m2nwXMRT0Nn6sZhuc1VFEMZDDXls/51k7hHy0UXLCEJxX2ValZyxSzO3C4WEDk3uU
         tbj6T/jMjC1RfJ/G2TbArt5Mb4u+S8bQJ56IHekNDaKKznKw2IASaUQdO3LL5tK+lzws
         lpL0sSWpq8kfe+oU6D/V9oullHH+hZmk4P07gp1iJjd0WT/SNRDPrpOu5QfXc23sTMmF
         0kBrrFHnCzWEBYnmjnFl4p9aJt1HCRIZbt9Ew/7K3dbj8RiQXH/ZNGu9JqE1CKLZVFa4
         o2mg==
X-Gm-Message-State: AJaThX7IDV1yNLc5gtBSRzI29K/iG76MTJ+kT0A1Pz/fjuta9xJ3VOE4
	kZI60tv0XpHAq4KYvG2cpyEgYtK5wCP9HUabBOY2bQ==
X-Google-Smtp-Source: ABhQp+SO7LktxQnAvszMxKM0xBAA3ZIFEx8GvnpNFnSS4OlPS4+5bQDQTADJuZAoz6YhVFxYclW6nSaHv2CIywWOS6A=
X-Received: by 10.223.149.5 with SMTP id 5mr238801wrs.135.1510229581736; Thu,
 09 Nov 2017 04:13:01 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1507235866.17141.24.camel@debian.org>
References: <1507235866.17141.24.camel@debian.org>
From: Robert Watson <robertcwatson1@gmail.com>
Date: Thu, 9 Nov 2017 07:12:21 -0500
Message-ID: <CAOfWR+ELnVxixsJ3HCLCQWC_wXwQxqNMvpmW=F+P8Nmt_iz1Lw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] [CVE-2017-14604] .desktop vulnerability again

On Thu, Oct 5, 2017 at 4:37 PM, Yves-Alexis Perez <corsac@debian.org> wrote:
> Last time we had a vulnerability related to the handling of .desktop file, it
> was handled by refusing to run it unless it has the executable bit.
> Unfortunately, this permission bit is maintained when storing inside a
> tarball, for example, so if an attacker wraps an executable .desktop file
> posing (for example) as a PDF inside a tarball, a victim could extract the
> file and double click on the PDF and the system will happily execute the
> command inside the Exec= field of the .desktop file.

Why then can't I find any PDF files on my system with an executable bit set?

Wouldn't it be common for PDFs to be executable in order for this
exploit to work?

Why would a PDF, which is a specially formatted data file, be made executable?

I fear there may be one or more misunderstandings at play here of how
Unix/Linux works.

Some Experiments...

(0)  The Setup

[root@LX03:/] ls -l /usr/share/applications/minimal.desktop
-rw-r--r-- 1 root root 28 2017-11-09 05:02
/usr/share/applications/minimal.desktop

[root@LX03:/] cat /usr/share/applications/minimal.desktop
[Desktop Entry]
Exec=cat $0

(1)  Is .desktop file executed when all is normal?

[root@LX03:/] /usr/share/applications/minimal.desktop
bash: /usr/share/applications/minimal.desktop: Permission denied

[root@LX03:/] bash -c /usr/share/applications/minimal.desktop
bash: /usr/share/applications/minimal.desktop: Permission denied

(2)  Is .desktop file executable when made executable?

[root@LX03:/] chmod 744 /usr/share/applications/minimal.desktop

[root@LX03:/] ls -l /usr/share/applications/minimal.desktop
-rwxr--r-- 1 root root 28 2017-11-09 05:02
/usr/share/applications/minimal.desktop

[root@LX03:/] /usr/share/applications/minimal.desktop
/usr/share/applications/minimal.desktop: line 1: [Desktop: command not found
/usr/share/applications/minimal.desktop: line 1: [Desktop: command not found
    (endless loop. Ctrl-C to abort)

[root@LX03:/] bash -c '/usr/share/applications/minimal.desktop'
/usr/share/applications/minimal.desktop: line 1: [Desktop: command not found
/usr/share/applications/minimal.desktop: line 1: [Desktop: command not found
    (endless loop. Ctrl-C to abort)

(3) Is .desktop file executable by another user?

[root@LX03:/] grep 'chromium' /etc/passwd
chromium:x:1005:1005:Software - chromium:/home/Chromium27:/bin/bash

[root@LX03:/] su chromium -c '/usr/share/applications/minimal.desktop'
bash: /usr/share/applications/minimal.desktop: Permission denied

[root@LX03:/] su - chromium -c '/usr/share/applications/minimal.desktop'
-bash: /usr/share/applications/minimal.desktop: Permission denied

CONCLUSIONS

(1)  File (and directory) ownership and permissions control what can
be executed. Not whether the command appears in a file or script
somewhere.

(2)  Appropriate settings of the standard ownership and permissions in
/etc/passwd and on the .desktop file seem to be working to prevent
unauthorized execution.

(3)  If an unexpected user IS able to execute the command, then the
system is misconfigured (a VERY common situation).

(4)  If misconfigured (incorrect ownership/permissions somewhere),
thinking a user shouldn't be able to do something because there is no
explicit path to doing it is a misunderstanding of how Unix/Linux
works.

(5)  The text following "Exec=" in a .desktop file is "exec'd". That
is, it replaces whatever program is processing the .desktop file. Then
the OUTPUT of the exec'd command is executed. That's not what I
expected. I expected the 'cat' command to display the contents of the
desktop file... not try to execute it recursively. Is that a bug or
just my misunderstanding of something?
